void sub_F1CEA4(void **a1, int32x4_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a2->u32[0];
  if (v9 > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_22AE720[v9];
  }

  v11 = *(a4 + 40);
  *(a4 + 40) = v11 | 0x400;
  *(a4 + 280) = v10;
  *(a4 + 300) = a2[2].i32[2] - 978307200;
  *(a4 + 40) = v11 | 0x18400;
  v12 = &a2->i64[1];
  v13 = a2->i32[2];
  v14 = a2[123].i32[2];
  if ((v14 - 1) >= 5)
  {
    v14 = 0;
  }

  *(a4 + 304) = v14;
  if (v13 == -1)
  {
    goto LABEL_13;
  }

  v15 = a2[2].u8[7];
  if ((v15 & 0x80u) != 0)
  {
    v15 = a2[1].i64[1];
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  sub_F1E134(v12, __p);
  *(a4 + 40) |= 1u;
  v16 = *(a4 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA30((a4 + 200), __p, v17);
  if (SBYTE7(v152) < 0)
  {
    operator delete(__p[0]);
    v18 = a2[118].i64[0];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_13:
    v18 = a2[118].i64[0];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  v19 = v18 / 100;
  v20 = v18 % 100;
  if (v18 < 0)
  {
    v21 = -50;
  }

  else
  {
    v21 = 50;
  }

  *(a4 + 40) |= 0x40000u;
  *(a4 + 312) = v19 + ((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31);
LABEL_18:
  v22 = a2[3].i64[0];
  if (v22 != -1)
  {
    *(a4 + 40) |= 0x800u;
    *(a4 + 284) = v22;
  }

  v23 = a2[3].i64[1];
  if (v23 != -1)
  {
    *(a4 + 40) |= 0x1000u;
    *(a4 + 288) = v23;
  }

  if (a2[49].i8[8] == 1)
  {
    v24 = *(a4 + 64);
    if (v24 && (v25 = *(a4 + 56), v25 < *v24))
    {
      *(a4 + 56) = v25 + 1;
      v26 = *&v24[2 * v25 + 2];
    }

    else
    {
      v27 = sub_1435BB8(*(a4 + 48));
      v12 = sub_19593CC(a4 + 48, v27);
      v26 = v12;
    }

    sub_F1E258(v12, &a2[5].i64[1], v26);
  }

  if (a2[59].i8[8] == 1)
  {
    v28 = *(a4 + 88);
    if (v28 && (v29 = *(a4 + 80), v29 < *v28))
    {
      *(a4 + 80) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
    }

    else
    {
      v31 = sub_1435A28(*(a4 + 72));
      v30 = sub_19593CC(a4 + 72, v31);
    }

    v32 = *(v30 + 40);
    *(v30 + 60) = a2[54].i16[4];
    *(v30 + 40) = v32 | 0x18;
    v33 = a2[53].i32[0];
    v34 = v33 / 10;
    v35 = v33 % 10;
    v36 = v33 < 0 ? -5 : 5;
    *(v30 + 56) = v34 + (((103 * (v36 + v35)) >> 15) & 1) + ((103 * (v36 + v35)) >> 10);
    v37 = a2[54].i64[0];
    *(v30 + 40) = v32 | 0x1E;
    *(v30 + 52) = v37;
    v38 = a2[53].i64[1];
    if (v38 != -1)
    {
      *(v30 + 40) = v32 | 0x1F;
      *(v30 + 48) = v38;
    }
  }

  if (a2[62].i8[8] == 1)
  {
    v59 = *(a4 + 112);
    if (v59 && (v60 = *(a4 + 104), v60 < *v59))
    {
      *(a4 + 104) = v60 + 1;
      v61 = *&v59[2 * v60 + 2];
    }

    else
    {
      v93 = sub_1435A84(*(a4 + 96));
      v61 = sub_19593CC(a4 + 96, v93);
    }

    v94 = a2[60].i32[0];
    v95 = v94 / 10;
    v96 = v94 % 10;
    if (v94 < 0)
    {
      v97 = -5;
    }

    else
    {
      v97 = 5;
    }

    *(v61 + 40) |= 1u;
    *(v61 + 48) = v95 + (((103 * (v97 + v96)) >> 15) & 1) + ((103 * (v97 + v96)) >> 10);
    if (a2[119].i8[12] != 1)
    {
LABEL_40:
      if (a2[52].i8[8] != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_129;
    }
  }

  else if (a2[119].i8[12] != 1)
  {
    goto LABEL_40;
  }

  *(a4 + 40) |= 2u;
  v98 = *(a4 + 208);
  if (!v98)
  {
    v99 = *(a4 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    v98 = sub_1435AE0(v100);
    *(a4 + 208) = v98;
  }

  v101 = a2[119].u32[2];
  if (v101 >= 3)
  {
    v101 = 0;
  }

  *(v98 + 16) |= 1u;
  *(v98 + 24) = v101;
  if (a2[52].i8[8] != 1)
  {
LABEL_41:
    if (a2[139].i64[0] == a2[139].i64[1])
    {
      goto LABEL_42;
    }

    goto LABEL_134;
  }

LABEL_129:
  *(a4 + 40) |= 4u;
  v102 = *(a4 + 216);
  if (!v102)
  {
    v103 = *(a4 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_16F5828(v104);
    *(a4 + 216) = v102;
  }

  sub_EC6D34(a2[50].i32, v102, a5);
  if (a2[139].i64[0] == a2[139].i64[1])
  {
LABEL_42:
    v39 = a2[118].i64[1];
    if (v39 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_134:
  *(a4 + 40) |= 0x100u;
  v105 = *(a4 + 264);
  if (v105)
  {
    sub_F238E8(a2[139].i64, v105);
    v39 = a2[118].i64[1];
    if (v39 == -1)
    {
      goto LABEL_44;
    }

LABEL_43:
    *(a4 + 40) |= 0x20000u;
    *(a4 + 308) = v39;
    goto LABEL_44;
  }

  v106 = *(a4 + 8);
  v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
  if (v106)
  {
    v107 = *v107;
  }

  v108 = sub_143613C(v107);
  *(a4 + 264) = v108;
  sub_F238E8(a2[139].i64, v108);
  v39 = a2[118].i64[1];
  if (v39 != -1)
  {
    goto LABEL_43;
  }

LABEL_44:
  v40 = a2[119].i64[0];
  if (v40 != -1)
  {
    *(a4 + 40) |= 0x100000u;
    *(a4 + 320) = v40;
  }

  if (a2[5].i8[0] == 1)
  {
    v41 = a2[4].i64[0];
    if (v41 != -1)
    {
      *(a4 + 40) |= 0x4000u;
      *(a4 + 296) = v41;
    }
  }

  v42 = sub_9C1704(&a2[63].i64[1]);
  if (v42)
  {
    *(a4 + 40) |= 8u;
    v43 = *(a4 + 224);
    if (!v43)
    {
      v44 = *(a4 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_14BB45C(v45);
      *(a4 + 224) = v43;
    }

    sub_F223CC(&a2[63].i64[1], v43);
  }

  v46 = a2[121].i64[1];
  v47 = a2[122].i64[0];
  if (v46 != v47)
  {
    v48 = (a4 + 120);
    v49 = *(a4 + 120);
    do
    {
      while (1)
      {
        v50 = *v46;
        if (v49 == *(a4 + 124))
        {
          break;
        }

        *(*(a4 + 128) + 4 * v49++) = v50;
        *v48 = v49;
        v46 += 2;
        if (v46 == v47)
        {
          goto LABEL_60;
        }
      }

      sub_1958E5C((a4 + 120), v49 + 1);
      *(*(a4 + 128) + 4 * v49++) = v50;
      *v48 = v49;
      v46 += 2;
    }

    while (v46 != v47);
  }

LABEL_60:
  v51 = a2[120].i64[0];
  v52 = a2[120].i64[1];
  if (v51 != v52)
  {
    v53 = (a4 + 136);
    v54 = *(a4 + 136);
    do
    {
      while (1)
      {
        v55 = *v51;
        if (v54 == *(a4 + 140))
        {
          break;
        }

        *(*(a4 + 144) + 4 * v54++) = v55;
        *v53 = v54;
        v51 += 2;
        if (v51 == v52)
        {
          goto LABEL_65;
        }
      }

      sub_1958E5C((a4 + 136), v54 + 1);
      *(*(a4 + 144) + 4 * v54++) = v55;
      *v53 = v54;
      v51 += 2;
    }

    while (v51 != v52);
  }

LABEL_65:
  v56 = a2[123].i64[0];
  if (v56 != -1)
  {
    *(a4 + 40) |= 0x80000u;
    *(a4 + 316) = v56;
  }

  if (a2[123].i8[12] == 1)
  {
    *(a4 + 40) |= 0x2000u;
    *(a4 + 292) = 1;
  }

  if (*(a1 + 25) > 1u)
  {
    sub_F20908(&a2[218].i64[1], a4);
    goto LABEL_78;
  }

  v57 = a2[285].i64[0];
  v58 = a2[285].i64[1];
  if (v57 != v58)
  {
    while (*(v57 + 488) != 2)
    {
      v57 += 496;
      if (v57 == v58)
      {
        goto LABEL_169;
      }
    }

    v149 = a1;
    v152 = 0u;
    v153 = 0u;
    *__p = 0u;
    v109 = *v57;
    if (*v57 != __p)
    {
      if (*(v109 + 23) < 0)
      {
        sub_13A68(__p, *v109, v109[1]);
      }

      else
      {
        v110 = *v109;
        *&v152 = v109[2];
        *__p = v110;
      }
    }

    v147 = a3;
    v111 = *(v57 + 168);
    v112 = *(v57 + 176);
    while (v111 != v112)
    {
      if (*(v111 + 192) != 3)
      {
        sub_5AF20();
      }

      v114 = *v111;
      v115 = v153;
      if (v153 < *(&v153 + 1))
      {
        *v153 = v114;
        v113 = v115 + 8;
      }

      else
      {
        v116 = *(&v152 + 1);
        v117 = v153 - *(&v152 + 1);
        v118 = (v153 - *(&v152 + 1)) >> 3;
        v119 = v118 + 1;
        if ((v118 + 1) >> 61)
        {
          sub_1794();
        }

        v120 = *(&v153 + 1) - *(&v152 + 1);
        if ((*(&v153 + 1) - *(&v152 + 1)) >> 2 > v119)
        {
          v119 = v120 >> 2;
        }

        if (v120 >= 0x7FFFFFFFFFFFFFF8)
        {
          v121 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v121 = v119;
        }

        if (v121)
        {
          if (!(v121 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v118) = v114;
        v113 = 8 * v118 + 8;
        memcpy(0, v116, v117);
        *(&v152 + 1) = 0;
        v153 = v113;
        if (v116)
        {
          operator delete(v116);
        }
      }

      *&v153 = v113;
      v111 += 100;
    }

    a1 = v149;
    v122 = sub_F1FD84(v149 + 32, __p);
    a3 = v147;
    if (v122)
    {
      v123 = v122[8];
      *(a4 + 40) |= 0x1000000u;
      *(a4 + 336) = v123;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
        goto LABEL_167;
      }
    }

    else
    {
      v128 = v149[38];
      v154 = 0xEF7BDEF7BDEF7BDFLL * ((v128 - v149[37]) >> 4);
      if (v128 >= v149[39])
      {
        v129 = sub_99EF1C(v149 + 37, v57);
      }

      else
      {
        sub_5F4668(v128, v57);
        v129 = (v128 + 62);
        v149[38] = v128 + 62;
      }

      v149[38] = v129;
      sub_F20078(v149 + 32, __p);
      v145 = v154;
      *(a4 + 40) |= 0x1000000u;
      *(a4 + 336) = v145;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
LABEL_167:
        if (SBYTE7(v152) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_169;
      }
    }

    *&v153 = v42;
    operator delete(v42);
    goto LABEL_167;
  }

LABEL_169:
  v124 = a2[353].i64[0];
  v125 = a2[353].i64[1];
  if (v124 != v125)
  {
    while (*(v124 + 488) != 2)
    {
      v124 += 496;
      if (v124 == v125)
      {
        goto LABEL_78;
      }
    }

    v150 = a1;
    v152 = 0u;
    v153 = 0u;
    *__p = 0u;
    v126 = *v124;
    if (*v124 != __p)
    {
      if (*(v126 + 23) < 0)
      {
        sub_13A68(__p, *v126, v126[1]);
      }

      else
      {
        v127 = *v126;
        *&v152 = v126[2];
        *__p = v127;
      }
    }

    v148 = a3;
    v130 = *(v124 + 168);
    v131 = *(v124 + 176);
    while (v130 != v131)
    {
      if (*(v130 + 192) != 3)
      {
        sub_5AF20();
      }

      v133 = *v130;
      v134 = v153;
      if (v153 < *(&v153 + 1))
      {
        *v153 = v133;
        v132 = v134 + 8;
      }

      else
      {
        v135 = *(&v152 + 1);
        v136 = v153 - *(&v152 + 1);
        v137 = (v153 - *(&v152 + 1)) >> 3;
        v138 = v137 + 1;
        if ((v137 + 1) >> 61)
        {
          sub_1794();
        }

        v139 = *(&v153 + 1) - *(&v152 + 1);
        if ((*(&v153 + 1) - *(&v152 + 1)) >> 2 > v138)
        {
          v138 = v139 >> 2;
        }

        if (v139 >= 0x7FFFFFFFFFFFFFF8)
        {
          v140 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          if (!(v140 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v137) = v133;
        v132 = 8 * v137 + 8;
        memcpy(0, v135, v136);
        *(&v152 + 1) = 0;
        v153 = v132;
        if (v135)
        {
          operator delete(v135);
        }
      }

      *&v153 = v132;
      v130 += 100;
    }

    a1 = v150;
    v141 = sub_F1FD84(v150 + 32, __p);
    a3 = v148;
    if (v141)
    {
      v142 = v141[8];
      *(a4 + 40) |= 0x800000u;
      *(a4 + 332) = v142;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
        goto LABEL_199;
      }
    }

    else
    {
      v143 = v150[38];
      v154 = 0xEF7BDEF7BDEF7BDFLL * ((v143 - v150[37]) >> 4);
      if (v143 >= v150[39])
      {
        v144 = sub_99EF1C(v150 + 37, v124);
      }

      else
      {
        sub_5F4668(v143, v124);
        v144 = (v143 + 62);
        v150[38] = v143 + 62;
      }

      v150[38] = v144;
      sub_F20078(v150 + 32, __p);
      v146 = v154;
      *(a4 + 40) |= 0x800000u;
      *(a4 + 332) = v146;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
LABEL_199:
        if (SBYTE7(v152) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_78;
      }
    }

    *&v153 = v42;
    operator delete(v42);
    goto LABEL_199;
  }

LABEL_78:
  if ((a2[131].i8[8] & 1) != 0 || a2[134].i8[0] == 1)
  {
    sub_F1E530(v42, a2, a4);
  }

  sub_F1E700(a1, a2, a3, a4);
  if (a2[134].i64[1] != a2[135].i64[0])
  {
    v63 = sub_3AFC64(*a1);
    *(a4 + 40) |= 0x40u;
    v64 = *(a4 + 248);
    if (!v64)
    {
      v65 = v63;
      v66 = *(a4 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v64 = sub_1435E00(v67);
      *(a4 + 248) = v64;
      v63 = v65;
    }

    v62 = sub_F22924(v63, &a2[134].i64[1], v64);
  }

  v68 = vmovn_s32(vceqq_s32(a2[136], xmmword_22A74C0));
  v68.i16[0] = vmaxv_u16(v68);
  if ((v68.i8[0] & 1) == 0 && a2[137].i64[0] != -1)
  {
    v69 = sub_3AFC64(*a1);
    *(a4 + 40) |= 0x80u;
    v70 = *(a4 + 256);
    if (!v70)
    {
      v71 = v69;
      v72 = *(a4 + 8);
      v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
      if (v72)
      {
        v73 = *v73;
      }

      v70 = sub_1435F28(v73);
      *(a4 + 256) = v70;
      v69 = v71;
    }

    v62 = sub_F229F4(v69, a2[136].i64, v70);
  }

  v74 = a2[116].i64[1];
  v75 = a2[117].i64[0];
  while (v74 != v75)
  {
    v78 = *(a4 + 168);
    if (v78 && (v79 = *(a4 + 160), v79 < *v78))
    {
      *(a4 + 160) = v79 + 1;
      v80 = *&v78[2 * v79 + 2];
      *(v80 + 16) |= 1u;
      v81 = *(v80 + 24);
      if (v81)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v82 = sub_14361DC(*(a4 + 152));
      v80 = sub_19593CC(a4 + 152, v82);
      *(v80 + 16) |= 1u;
      v81 = *(v80 + 24);
      if (v81)
      {
        goto LABEL_106;
      }
    }

    v83 = *(v80 + 8);
    v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
    if (v83)
    {
      v84 = *v84;
    }

    v81 = sub_14BF484(v84);
    *(v80 + 24) = v81;
LABEL_106:
    sub_586C94(v74, v81, v68);
    *(v80 + 16) |= 2u;
    v77 = *(v80 + 32);
    if (!v77)
    {
      v85 = *(v80 + 8);
      v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
      if (v85)
      {
        v86 = *v86;
      }

      sub_14BAE64(v86);
      v77 = v76;
      *(v80 + 32) = v76;
    }

    sub_64D110((v74 + 112), v77);
    v74 += 272;
  }

  v87 = a2[214].i64[0];
  v88 = a2[214].i64[1];
  while (v87 != v88)
  {
    v91 = *(a4 + 192);
    if (v91 && (v92 = *(a4 + 184), v92 < *v91))
    {
      *(a4 + 184) = v92 + 1;
      v90 = *&v91[2 * v92 + 2];
    }

    else
    {
      v89 = sub_1436404(*(a4 + 176));
      v62 = sub_19593CC(a4 + 176, v89);
      v90 = v62;
    }

    sub_F1ECC0(v62, v87, v90);
    v87 += 464;
  }
}

void sub_F1DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v17 + 304) = v16;
  sub_B8580(&__p);
  _Unwind_Resume(a1);
}

void sub_F1DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 16) |= 2u;
  v5 = *(a3 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if (v5)
  {
    v6 = *v6;
  }

  sub_194EA1C((v3 + 56), (a2 + 24), v6);
  *(v3 + 16) |= 1u;
  v7 = *(v3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((v3 + 48), a2, v8);
  v9 = *(a2 + 48);
  v28 = *(a2 + 56);
  if (v9 != v28)
  {
    v27 = v3;
    do
    {
      v10 = *(v3 + 40);
      if (v10 && (v11 = *(v3 + 32), v11 < *v10))
      {
        *(v3 + 32) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
      }

      else
      {
        v13 = sub_14358E4(*(v3 + 24));
        v12 = sub_19593CC(v3 + 24, v13);
      }

      v14 = *v9;
      v15 = v9[1];
      while (v14 != v15)
      {
        v16 = *(v12 + 32);
        if (v16 && (v17 = *(v12 + 24), v17 < *v16))
        {
          *(v12 + 24) = v17 + 1;
          v18 = *&v16[2 * v17 + 2];
        }

        else
        {
          v19 = sub_1435848(*(v12 + 16));
          v18 = sub_19593CC(v12 + 16, v19);
        }

        v20 = sub_A0AF10(*v14);
        *(v18 + 16) |= 1u;
        *(v18 + 40) = v20;
        v22 = v14[1];
        v21 = v14[2];
        while (v22 != v21)
        {
          v24 = sub_A0AF10(*v22);
          v25 = v24;
          v26 = *(v18 + 24);
          if (v26 == *(v18 + 28))
          {
            v23 = v26 + 1;
            sub_1958E5C((v18 + 24), v26 + 1);
            *(*(v18 + 32) + 4 * v26) = v25;
          }

          else
          {
            *(*(v18 + 32) + 4 * v26) = v24;
            v23 = v26 + 1;
          }

          *(v18 + 24) = v23;
          ++v22;
        }

        v14 += 4;
      }

      v9 += 3;
      v3 = v27;
    }

    while (v9 != v28);
  }
}

void sub_F1DEB4()
{
  __chkstk_darwin();
  sub_7E4D94(v4, v0);
  memset(v3, 0, sizeof(v3));
  v1 = v3;
  LOBYTE(v2) = 0;
  operator new();
}

void sub_F1E0AC(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(va);
  sub_785D84(va1);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F1FD08(va);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F1FD08(va);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1758FB8(va);
  _Unwind_Resume(a1);
}

void sub_F1E134(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v13, *a1);
  v4 = std::string::append(&v13, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_F1E20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_F1E258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 664);
  v6 = *(a3 + 40);
  *(a3 + 40) = v6 | 8;
  *(a3 + 96) = v5;
  if (*a2 == 0x7FFFFFFF)
  {
    if (*(a2 + 28) == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a3 + 40) = v6 | 0xA;
    v7 = *(a3 + 80);
    if (!v7)
    {
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1435B5C(v9);
      *(a3 + 80) = v7;
    }

    v10 = *a2 - 978307200;
    *(v7 + 40) |= 1u;
    *(v7 + 48) = v10;
    if (*(a2 + 28) == 0x7FFFFFFF)
    {
LABEL_3:
      if (!sub_B6E0((a2 + 56)))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }
  }

  *(a3 + 40) |= 4u;
  v11 = *(a3 + 88);
  if (!v11)
  {
    v12 = *(a3 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_1435B5C(v13);
    *(a3 + 88) = v11;
  }

  v14 = *(a2 + 28) - 978307200;
  *(v11 + 40) |= 1u;
  *(v11 + 48) = v14;
  if (sub_B6E0((a2 + 56)))
  {
LABEL_15:
    if (*(a2 + 657) == 1)
    {
      v15 = nullsub_1(a2 + 56);
      v16 = *v15 / 10;
      v17 = *v15 % 10;
      if (*v15 < 0)
      {
        v18 = -5;
      }

      else
      {
        v18 = 5;
      }

      *(a3 + 40) |= 0x80u;
      *(a3 + 112) = v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10);
      v19 = sub_B718(a2 + 56);
      v20 = *v19 / 10;
      v21 = *v19 % 10;
      if (*v19 < 0)
      {
        v22 = -5;
      }

      else
      {
        v22 = 5;
      }

      *(a3 + 40) |= 0x20u;
      *(a3 + 104) = v20 + (((103 * (v22 + v21)) >> 15) & 1) + ((103 * (v22 + v21)) >> 10);
    }
  }

LABEL_23:
  v23 = *(a2 + 672);
  if (v23 != -1)
  {
    v24 = nullsub_1(v23);
    *(a3 + 40) |= 0x100u;
    *(a3 + 120) = v24;
  }

  v25 = *(a2 + 68);
  if ((v25 - 1) >= 3)
  {
    v25 = 0;
  }

  if (*(a2 + 69))
  {
    v25 = 100;
  }

  v26 = *(a3 + 40);
  *(a3 + 40) = v26 | 0x40;
  *(a3 + 108) = v25;
  v27 = *(a2 + 624);
  if (v27 != -1)
  {
    *(a3 + 40) = v26 | 0x50;
    *(a3 + 100) = v27;
  }

  v28 = *(a2 + 632);
  v29 = *(a2 + 640);
  if (v28 != v29)
  {
    v30 = (a3 + 48);
    v31 = *(a3 + 48);
    do
    {
      while (1)
      {
        v32 = *v28;
        if (v31 != *(a3 + 52))
        {
          break;
        }

        sub_1958E5C((a3 + 48), v31 + 1);
        *(*(a3 + 56) + 4 * v31++) = v32;
        *v30 = v31;
        v28 += 2;
        if (v28 == v29)
        {
          return;
        }
      }

      *(*(a3 + 56) + 4 * v31++) = v32;
      *v30 = v31;
      v28 += 2;
    }

    while (v28 != v29);
  }
}

void sub_F1E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 2104) == 1)
  {
    *(a3 + 40) |= 0x10u;
    v5 = *(a3 + 232);
    if (!v5)
    {
      v6 = *(a3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_1435C70(v7);
      *(a3 + 232) = v5;
    }

    sub_F1FB1C((a2 + 2024), v5);
  }

  if (*(a2 + 2144) == 1)
  {
    *(a3 + 40) |= 0x20u;
    v8 = *(a3 + 240);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_1435D28(v10);
      *(a3 + 240) = v8;
    }

    v11 = *(a2 + 2140);
    v12 = *(a2 + 2136) == 1;
    *(v8 + 10) |= 3u;
    *(v8 + 18) = v12;
    *(v8 + 19) = v11;
    v13 = *(a2 + 2112);
    for (i = *(a2 + 2120); v13 != i; v13 += 48)
    {
      v15 = v8[8];
      if (v15 && (v16 = *(v8 + 14), v16 < *v15))
      {
        *(v8 + 14) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
        *(v17 + 40) |= 1u;
        v18 = *(v17 + 48);
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v19 = sub_1435CCC(v8[6]);
        v17 = sub_19593CC((v8 + 6), v19);
        *(v17 + 40) |= 1u;
        v18 = *(v17 + 48);
        if (!v18)
        {
LABEL_18:
          v20 = *(v17 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v18 = sub_1435C14(v21);
          *(v17 + 48) = v18;
        }
      }

      v22 = *(v18 + 10);
      *(v18 + 14) = *v13;
      *(v18 + 10) = v22 | 3;
      v23 = v18[1];
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA1C(v18 + 6, (v13 + 8), v24);
      v25 = *(v13 + 32);
      *(v18 + 10) |= 4u;
      *(v18 + 15) = v25;
    }
  }
}

void sub_F1E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 1160) != 0x7FFFFFFF)
  {
    v6 = *(a3 + 1191);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 1176);
    }

    if (v6 && *(a2 + 2104) != 1)
    {
      return;
    }
  }

  if (*(a2 + 2104) == 1)
  {
    v7 = (a2 + 2072);
    v8 = (a2 + 2080);
  }

  else
  {
    v7 = (a2 + 5680);
    v8 = (a2 + 5688);
    if (*(a2 + 5680) != *(a2 + 5688))
    {
      LODWORD(v54.__r_.__value_.__l.__data_) = 0x7FFFFFFF;
      v55 = 0;
      *&v54.__r_.__value_.__r.__words[1] = 0uLL;
      v56 = 100;
      LOBYTE(v57) = 0;
      DWORD1(v57) = 1;
      v58 = 0;
      v59 = 0;
      *(&v57 + 1) = 0;
      v60 = 0;
      *(a4 + 40) |= 0x10u;
      v9 = *(a4 + 232);
      if (!v9)
      {
        v10 = *(a4 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1435C70(v11);
        *(a4 + 232) = v9;
      }

      sub_F1FB1C(&v54, v9);
      if (*(&v57 + 1))
      {
        v58 = *(&v57 + 1);
        operator delete(*(&v57 + 1));
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__size_);
      }
    }
  }

  v12 = *(a1 + 106);
  v53 = 0;
  v13 = 0uLL;
  *v52 = 0u;
  v14 = *v7;
  v15 = *v8;
  if (*v7 != *v8)
  {
    while (1)
    {
      v51 = *v14;
      v16 = sub_446608((a1 + 320), &v51);
      if (v16)
      {
        v17 = v16[3];
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v61 = 0x8E38E38E38E38E39 * ((*(a1 + 368) - *(a1 + 360)) >> 3);
      v24 = v51;
      v25 = sub_3AFEE8(*a1);
      sub_508C3C(v24, v25, &v54);
      v26 = *(a1 + 368);
      if (v26 < *(a1 + 376))
      {
        break;
      }

      v29 = sub_F1A1BC((a1 + 360), &v54);
      v30 = SHIBYTE(v58);
      *(a1 + 368) = v29;
      if ((v30 & 0x80000000) == 0)
      {
        if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      operator delete(v57);
      if (SHIBYTE(v55) < 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      sub_F1A3BC((a1 + 320), &v51);
      v17 = v61;
      if (!v12)
      {
LABEL_37:
        v31 = *(a1 + 360);
        if (0x8E38E38E38E38E39 * ((*(a1 + 368) - v31) >> 3) <= v17)
        {
          sub_6FAB4();
        }

        v32 = v31 + 72 * v17;
        v33 = v52[1];
        if (v52[1] >= v53)
        {
          v52[1] = sub_1CEE8(v52, v32 + 8);
        }

        else
        {
          if (*(v32 + 31) < 0)
          {
            sub_325C(v52[1], *(v32 + 8), *(v32 + 16));
          }

          else
          {
            v34 = *(v32 + 8);
            *(v52[1] + 2) = *(v32 + 24);
            *v33 = v34;
          }

          v52[1] = v33 + 24;
        }

        goto LABEL_20;
      }

LABEL_23:
      *(a4 + 40) |= 0x10u;
      v18 = *(a4 + 232);
      if (!v18)
      {
        v19 = *(a4 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1435C70(v20);
        *(a4 + 232) = v18;
      }

      v21 = sub_2FEF94(v17);
      v22 = v21;
      v23 = *(v18 + 72);
      if (v23 == *(v18 + 76))
      {
        sub_1958E5C((v18 + 72), v23 + 1);
        *(*(v18 + 80) + 4 * v23) = v22;
      }

      else
      {
        *(*(v18 + 80) + 4 * v23) = v21;
      }

      *(v18 + 72) = v23 + 1;
LABEL_20:
      if (++v14 == v15)
      {
        v13 = *v52;
        goto LABEL_47;
      }
    }

    *v26 = v54.__r_.__value_.__r.__words[0];
    v27 = *&v54.__r_.__value_.__r.__words[1];
    *(v26 + 24) = v55;
    *(v26 + 8) = v27;
    v55 = 0;
    *&v54.__r_.__value_.__r.__words[1] = 0uLL;
    *(v26 + 32) = v56;
    v28 = v57;
    *(v26 + 56) = v58;
    *(v26 + 40) = v28;
    v58 = 0;
    v57 = 0uLL;
    *(v26 + 64) = v59;
    *(a1 + 368) = v26 + 72;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    operator delete(v54.__r_.__value_.__l.__size_);
    goto LABEL_36;
  }

LABEL_47:
  v35 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v13 + 1) - v13) >> 3));
  if (*(&v13 + 1) == v13)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  sub_79630(v13, *(&v13 + 1), &v54, v36, 1);
  v37 = v52[0];
  v38 = v52[1];
  if (v52[0] == v52[1])
  {
    goto LABEL_64;
  }

  do
  {
    *(a4 + 40) |= 0x10u;
    v39 = *(a4 + 232);
    if (v39)
    {
      v40 = *(v39 + 64);
      if (!v40)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v41 = *(a4 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v39 = sub_1435C70(v42);
      *(a4 + 232) = v39;
      v40 = *(v39 + 64);
      if (!v40)
      {
        goto LABEL_59;
      }
    }

    v43 = *(v39 + 56);
    if (v43 < *v40)
    {
      *(v39 + 56) = v43 + 1;
      v44 = *&v40[2 * v43 + 2];
      goto LABEL_60;
    }

LABEL_59:
    v45 = sub_141C160(*(v39 + 48));
    v44 = sub_19593CC(v39 + 48, v45);
LABEL_60:
    *(v44 + 40) |= 1u;
    v46 = *(v44 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((v44 + 48), v37, v47);
    v37 = (v37 + 24);
  }

  while (v37 != v38);
  v37 = v52[0];
LABEL_64:
  if (v37)
  {
    v48 = v52[1];
    v49 = v37;
    if (v52[1] != v37)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v37);
      v49 = v52[0];
    }

    v52[1] = v37;
    operator delete(v49);
  }
}

void sub_F1EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_508924(va);
  _Unwind_Resume(a1);
}

void sub_F1EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_300884(va1);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_4D1F6C(a2))
  {
    goto LABEL_51;
  }

  v6 = (a2 + 320);
  v7 = *(a2 + 352);
  if (v7 > 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      goto LABEL_51;
    }

    v8 = *(a2 + 343);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 328);
    }

    if (!v8)
    {
      goto LABEL_51;
    }
  }

  else if (v7 == 1)
  {
    if (*v6 == -1)
    {
      goto LABEL_51;
    }
  }

  else if (v7 != 2 || *(a2 + 324) == -1 && *(a2 + 320) == -1 && *(a2 + 328) == *(a2 + 336))
  {
    goto LABEL_51;
  }

  *(a3 + 16) |= 1u;
  v9 = *(a3 + 48);
  if (v9)
  {
    if (sub_4D1F6C(a2))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *(a3 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_1436388(v12);
    v9 = v13;
    *(a3 + 48) = v13;
    if (sub_4D1F6C(a2))
    {
LABEL_18:
      if (sub_4D1F6C((a2 + 160)))
      {
        goto LABEL_19;
      }

LABEL_34:
      *(v9 + 16) |= 2u;
      v18 = *(v9 + 32);
      if (!v18)
      {
        v19 = *(v9 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        v18 = v21;
        *(v9 + 32) = v21;
      }

      sub_64D110((a2 + 160), v18);
      v10 = *(a2 + 352);
      if (v10 <= 2)
      {
LABEL_20:
        if (v10 == 1)
        {
          if (*v6 == -1)
          {
            goto LABEL_51;
          }
        }

        else if (v10 != 2 || *(a2 + 324) == -1 && *(a2 + 320) == -1 && *(a2 + 328) == *(a2 + 336))
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  *(v9 + 16) |= 1u;
  v14 = *(v9 + 24);
  if (!v14)
  {
    v15 = *(v9 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_14BAE64(v16);
    v14 = v17;
    *(v9 + 24) = v17;
  }

  sub_64D110(a2, v14);
  if (!sub_4D1F6C((a2 + 160)))
  {
    goto LABEL_34;
  }

LABEL_19:
  v10 = *(a2 + 352);
  if (v10 <= 2)
  {
    goto LABEL_20;
  }

LABEL_39:
  if (v10 == 3 || v10 == 4)
  {
    v22 = *(a2 + 343);
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(a2 + 328);
    }

    if (v22)
    {
LABEL_46:
      *(v9 + 16) |= 4u;
      v23 = *(v9 + 40);
      if (!v23)
      {
        v24 = *(v9 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_14BF484(v25);
        *(v9 + 40) = v23;
      }

      sub_586C94(a2 + 320, v23, *&v5);
    }
  }

LABEL_51:
  v26 = *(a2 + 432);
  for (i = *(a2 + 440); v26 != i; v26 += 40)
  {
    v28 = *(a3 + 40);
    if (v28 && (v29 = *(a3 + 32), v29 < *v28))
    {
      *(a3 + 32) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (!v31)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v32 = sub_141C040(*(a3 + 24));
      v30 = sub_19593CC(a3 + 24, v32);
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (!v31)
      {
LABEL_59:
        v33 = *(v30 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v31 = sub_16F5828(v34);
        *(v30 + 24) = v31;
      }
    }

    v5 = sub_EC6D34(v26, v31, v5);
    if (*(v26 + 12) == 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v36 = *(v30 + 16);
    v37 = *(v26 + 32);
    if (v37 == 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = v37 == 1;
    }

    *(v30 + 16) = v36 | 6;
    *(v30 + 32) = v38;
    *(v30 + 36) = v35;
    v39 = *(v26 + 16);
    if (v39 != 0x7FFFFFFF)
    {
      v40 = v39 / 10;
      v41 = v39 % 10;
      if (v39 < 0)
      {
        v42 = -5;
      }

      else
      {
        v42 = 5;
      }

      *(v30 + 16) = v36 | 0xE;
      *(v30 + 40) = v40 + (((103 * (v42 + v41)) >> 15) & 1) + ((103 * (v42 + v41)) >> 10);
    }
  }
}

void sub_F1F080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 176);
  if (v5 && (v6 = *(a3 + 168), v6 < *v5))
  {
    *(a3 + 168) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BCEC(*(a3 + 160));
    v7 = sub_19593CC(a3 + 160, v9);
    v6 = *(a3 + 168) - 1;
  }

  *(v7 + 40) |= 0x40u;
  *(v7 + 116) = v6;
  v10 = nullsub_1(*(a2 + 88));
  v12 = *(v7 + 40);
  *(v7 + 104) = v10;
  *(v7 + 40) = v12 | 0x14;
  v13 = *(v7 + 88);
  if (!v13)
  {
    v14 = *(v7 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_16F5828(v15);
    *(v7 + 88) = v13;
  }

  sub_EC6D34(a2, v13, v11);
  sub_F20C6C((a2 + 112), v7);
  v16 = *(a2 + 104);
  v17 = *(v7 + 40);
  if (v16 != -1)
  {
    v17 |= 0x20u;
    *(v7 + 40) = v17;
    *(v7 + 112) = v16;
  }

  v18 = *(a2 + 63);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 48);
  }

  if (v18)
  {
    *(v7 + 40) = v17 | 2;
    v19 = *(v7 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((v7 + 80), (a2 + 40), v20);
    v17 = *(v7 + 40);
  }

  *(v7 + 40) = v17 | 1;
  v21 = *(v7 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((v7 + 72), (a2 + 136), v22);

  sub_F1FA10(a1, a2, v7);
}

void sub_F1F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  if (v5 && (v6 = *(a3 + 48), v6 < *v5))
  {
    *(a3 + 48) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BB7C(*(a3 + 40));
    v7 = sub_19593CC(a3 + 40, v9);
    v6 = *(a3 + 48) - 1;
  }

  *(v7 + 40) |= 8u;
  *(v7 + 96) = v6;
  v10 = nullsub_1(*(a2 + 88));
  v12 = *(v7 + 40);
  *(v7 + 88) = v10;
  *(v7 + 40) = v12 | 6;
  v13 = *(v7 + 80);
  if (!v13)
  {
    v14 = *(v7 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_16F5828(v15);
    *(v7 + 80) = v13;
  }

  sub_EC6D34(a2, v13, v11);
  v16 = *(a2 + 63);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 48);
  }

  if (v16)
  {
    *(v7 + 40) |= 1u;
    v17 = *(v7 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((v7 + 72), (a2 + 40), v18);
  }

  sub_F1FA10(a1, a2, v7);
  if (((*(a2 + 104) - 1) & 0xFC) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(a2 + 104) - 1) + 1;
  }

  *(v7 + 40) |= 0x10u;
  *(v7 + 100) = v19;
}

void sub_F1F35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 272);
  if (v5 && (v6 = *(a3 + 264), v6 < *v5))
  {
    *(a3 + 264) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BD48(*(a3 + 256));
    v7 = sub_19593CC(a3 + 256, v9);
    v6 = *(a3 + 264) - 1;
  }

  *(v7 + 40) |= 0x20u;
  *(v7 + 108) = v6;
  v10 = nullsub_1(*(a2 + 88));
  *(v7 + 40) |= 8u;
  *(v7 + 96) = v10;
  sub_F20BD8((a2 + 120), v7);
  *(v7 + 40) |= 2u;
  v12 = *(v7 + 80);
  if (!v12)
  {
    v13 = *(v7 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_16F5828(v14);
    *(v7 + 80) = v12;
  }

  sub_EC6D34(a2, v12, v11);
  v15 = *(a2 + 63);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 48);
  }

  if (v15)
  {
    *(v7 + 40) |= 1u;
    v16 = *(v7 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((v7 + 72), (a2 + 40), v17);
  }

  v18 = *(a2 + 104);
  if (v18 != -1)
  {
    *(v7 + 40) |= 0x10u;
    *(v7 + 104) = v18;
  }

  sub_F1FA10(a1, a2, v7);
}

void sub_F1F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 128);
  if (v4 && (v5 = *(a3 + 120), v5 < *v4))
  {
    *(a3 + 120) = v5 + 1;
    v6 = *&v4[2 * v5 + 2];
  }

  else
  {
    v8 = sub_141BC90(*(a3 + 112));
    v6 = sub_19593CC(a3 + 112, v8);
    v5 = *(a3 + 120) - 1;
  }

  *(v6 + 40) |= 0x20u;
  *(v6 + 132) = v5;
  v9 = nullsub_1(*(a2 + 160));
  v11 = *(v6 + 40);
  *(v6 + 120) = v9;
  *(v6 + 40) = v11 | 0xC;
  v12 = *(v6 + 112);
  if (!v12)
  {
    v13 = *(v6 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_16F5828(v14);
    *(v6 + 112) = v12;
  }

  sub_EC6D34(a2, v12, v10);
  v15 = *(a2 + 176);
  if (*(a2 + 168) != v15)
  {
    v16 = *(v15 - 8);
    *(v6 + 40) |= 0x10u;
    *(v6 + 128) = v16;
  }

  v17 = *(a2 + 87);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 72);
  }

  if (v17)
  {
    *(v6 + 40) |= 1u;
    v18 = *(v6 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((v6 + 96), (a2 + 64), v19);
  }

  if (*(a2 + 40) != *(a2 + 48))
  {
    *(v6 + 40) |= 2u;
    v20 = *(v6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((v6 + 104), (a2 + 88), v21);
  }

  v22 = *(a2 + 112);
  for (i = *(a2 + 120); v22 != i; v22 = v31 + 6)
  {
    v24 = *(v6 + 64);
    if (v24 && (v25 = *(v6 + 56), v25 < *v24))
    {
      *(v6 + 56) = v25 + 1;
      v26 = *&v24[2 * v25 + 2];
    }

    else
    {
      v27 = sub_141B9A4(*(v6 + 48));
      v26 = sub_19593CC(v6 + 48, v27);
    }

    v28 = *(v26 + 16);
    *(v26 + 40) = *v22;
    *(v26 + 16) = v28 | 5;
    v29 = *(v26 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v31 = (v22 + 10);
    sub_194EA1C((v26 + 24), v31, v30);
    *(v26 + 16) |= 2u;
    v32 = *(v26 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    sub_194EA1C((v26 + 32), v31 - 2, v33);
  }

  v34 = *(a2 + 136);
  for (j = *(a2 + 144); v34 != j; v34 = v43 + 6)
  {
    while (1)
    {
      v36 = *(v6 + 88);
      if (v36 && (v37 = *(v6 + 80), v37 < *v36))
      {
        *(v6 + 80) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_141B9A4(*(v6 + 72));
        v38 = sub_19593CC(v6 + 72, v39);
      }

      v40 = *(v38 + 16);
      *(v38 + 40) = *v34;
      *(v38 + 16) = v40 | 5;
      v41 = *(v38 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v43 = (v34 + 10);
      sub_194EA1C((v38 + 24), v43, v42);
      *(v38 + 16) |= 2u;
      v44 = *(v38 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        break;
      }

      sub_194EA1C((v38 + 32), v43 - 2, v45);
      v34 = v43 + 6;
      if (v34 == j)
      {
        return;
      }
    }

    sub_194EA1C((v38 + 32), v43 - 2, *v45);
  }
}

void sub_F1F8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_120D5F0(va);
  _Unwind_Resume(a1);
}

void sub_F1F8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 320);
  if (v5 && (v6 = *(a3 + 312), v6 < *v5))
  {
    *(a3 + 312) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v8 = sub_141BDA4(*(a3 + 304));
    v7 = sub_19593CC(a3 + 304, v8);
  }

  v9 = *a2;
  *(v7 + 40) |= 1u;
  v10 = *(v7 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((v7 + 64), v9, v11);
  v12 = *(a2 + 168);
  v13 = *(a2 + 176);
  while (v12 != v13)
  {
    if (v12[192] != 3)
    {
      sub_5AF20();
    }

    v15 = *v12;
    v16 = *(v7 + 48);
    if (v16 == *(v7 + 52))
    {
      v14 = v16 + 1;
      sub_1958E5C((v7 + 48), v16 + 1);
      *(*(v7 + 56) + 4 * v16) = v15;
    }

    else
    {
      *(*(v7 + 56) + 4 * v16) = v15;
      v14 = v16 + 1;
    }

    *(v7 + 48) = v14;
    v12 += 200;
  }

  v17 = *(a3 + 312) - 1;
  *(v7 + 40) |= 2u;
  *(v7 + 72) = v17;
}

void sub_F1FA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 64);
  for (i = *(a2 + 72); v3 != i; v3 = v13 + 6)
  {
    while (1)
    {
      v6 = *(a3 + 64);
      if (v6 && (v7 = *(a3 + 56), v7 < *v6))
      {
        *(a3 + 56) = v7 + 1;
        v8 = *&v6[2 * v7 + 2];
      }

      else
      {
        v9 = sub_141B9A4(*(a3 + 48));
        v8 = sub_19593CC(a3 + 48, v9);
      }

      v10 = *(v8 + 16);
      *(v8 + 40) = *v3;
      *(v8 + 16) = v10 | 5;
      v11 = *(v8 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (v3 + 10);
      sub_194EA1C((v8 + 24), v13, v12);
      *(v8 + 16) |= 2u;
      v14 = *(v8 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        break;
      }

      sub_194EA1C((v8 + 32), v13 - 2, v15);
      v3 = v13 + 6;
      if (v3 == i)
      {
        return;
      }
    }

    sub_194EA1C((v8 + 32), v13 - 2, *v15);
  }
}

std::string *sub_F1FB1C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (LODWORD(result->__r_.__value_.__l.__data_) != 0x7FFFFFFF)
  {
    v4 = result[1].__r_.__value_.__s.__data_[7];
    if ((v4 & 0x80u) != 0)
    {
      v4 = result->__r_.__value_.__r.__words[2];
    }

    if (v4)
    {
      *(a2 + 40) |= 1u;
      v5 = *(a2 + 88);
      if (!v5)
      {
        v6 = *(a2 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_1435C14(v7);
        *(a2 + 88) = v5;
      }

      v8 = *(v5 + 10);
      *(v5 + 14) = v3->__r_.__value_.__l.__data_;
      *(v5 + 10) = v8 | 3;
      v9 = v5[1];
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      result = sub_194EA1C(v5 + 6, &v3->__r_.__value_.__r.__words[1], v10);
      v11 = v3[1].__r_.__value_.__r.__words[1];
      *(v5 + 10) |= 4u;
      *(v5 + 15) = v11;
    }
  }

  v12 = *(a2 + 40);
  *(a2 + 104) = HIDWORD(v3[1].__r_.__value_.__r.__words[2]);
  *(a2 + 100) = v3[3].__r_.__value_.__s.__data_[0];
  v13 = v3[1].__r_.__value_.__s.__data_[16] == 1;
  *(a2 + 40) = v12 | 0xE;
  *(a2 + 96) = v13;
  return result;
}

void sub_F1FC18(uint64_t a1)
{
  *a1 = 256;
  *(a1 + 2) = 1;
  *(a1 + 3) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 256;
  *(a1 + 44) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = xmmword_22AE710;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 11;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  operator new();
}

void sub_F1FCD8(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  sub_21E5430((v1 + 72), (v1 + 8), v1);
  _Unwind_Resume(a1);
}

void ***sub_F1FD08(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_78B5C0(v4 - 7808);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t **sub_F1FD84(void *a1, uint64_t a2)
{
  v4 = sub_F1FF9C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v15 = a2 + 24;
    v14 = *(a2 + 24);
    v16 = *(v15 + 8) - v14;
    if (v7.u32[0] < 2uLL)
    {
      v17 = *&v5 - 1;
      while (1)
      {
        v18 = v10[1];
        if (v18 == v6)
        {
          v19 = *(v10 + 39);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v10[3];
          }

          if (v19 == v12)
          {
            v21 = v20 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v21, v13, v12))
            {
              v23 = v10[5];
              v22 = v10[6];
              if (v22 - v23 == v16)
              {
                if (v23 == v22)
                {
                  return v10;
                }

                for (i = v14; *v23 == *i; ++i)
                {
                  v23 += 8;
                  if (v23 == v22)
                  {
                    return v10;
                  }
                }
              }
            }
          }
        }

        else if ((v18 & v17) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v25 = v10[1];
      if (v25 == v6)
      {
        v26 = *(v10 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v10[3];
        }

        if (v26 == v12)
        {
          v28 = v27 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v28, v13, v12))
          {
            v30 = v10[5];
            v29 = v10[6];
            if (v29 - v30 == v16)
            {
              if (v30 == v29)
              {
                return v10;
              }

              for (j = v14; *v30 == *j; ++j)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v25 >= *&v5)
        {
          v25 %= *&v5;
        }

        if (v25 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t sub_F1FF9C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  if (v11 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v11 >= 0)
  {
    v4 = HIBYTE(v11);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = (sub_AAD8(&v12, v3, v4) + 0x388152A534) ^ 0xDEADBEEF;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); v6 != i; v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v8)
  {
    v8 = *v6++;
  }

  return v5;
}

uint64_t **sub_F20078(void *a1, uint64_t a2)
{
  v4 = sub_F1FF9C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_51;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_51:
    sub_F204BC();
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v15 = a2 + 24;
  v14 = *(a2 + 24);
  v31 = *(v15 + 8) - v14;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v23 = v10[1];
      if (v23 == v5)
      {
        v24 = *(v10 + 39);
        v25 = v24;
        if (v24 < 0)
        {
          v24 = v10[3];
        }

        if (v24 == v12)
        {
          v26 = v25 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v26, v13, v12))
          {
            v28 = v10[5];
            v27 = v10[6];
            if (v27 - v28 == v31)
            {
              if (v28 == v27)
              {
                return v10;
              }

              for (i = v14; *v28 == *i; ++i)
              {
                v28 += 8;
                if (v28 == v27)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else if ((v23 & (*&v6 - 1)) != v8)
      {
        goto LABEL_51;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v16 = v10[1];
    if (v16 == v5)
    {
      break;
    }

    if (v16 >= *&v6)
    {
      v16 %= *&v6;
    }

    if (v16 != v8)
    {
      goto LABEL_51;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_51;
    }
  }

  v17 = *(v10 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v10[3];
  }

  if (v17 != v12)
  {
    goto LABEL_18;
  }

  v19 = v18 >= 0 ? (v10 + 2) : v10[2];
  if (memcmp(v19, v13, v12))
  {
    goto LABEL_18;
  }

  v21 = v10[5];
  v20 = v10[6];
  if (v20 - v21 != v31)
  {
    goto LABEL_18;
  }

  if (v21 != v20)
  {
    for (j = v14; *v21 == *j; ++j)
    {
      v21 += 8;
      if (v21 == v20)
      {
        return v10;
      }
    }

    goto LABEL_18;
  }

  return v10;
}

void sub_F204A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

void sub_F205C8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_2D5CBC(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_2D5CBC(v1);
  _Unwind_Resume(a1);
}

void sub_F20614()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF4B0 = 0u;
  unk_27BF4C0 = 0u;
  dword_27BF4D0 = 1065353216;
  sub_3A9A34(&xmmword_27BF4B0, v0);
  sub_3A9A34(&xmmword_27BF4B0, v3);
  sub_3A9A34(&xmmword_27BF4B0, __p);
  sub_3A9A34(&xmmword_27BF4B0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF488 = 0;
    qword_27BF490 = 0;
    qword_27BF480 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F2085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF498)
  {
    qword_27BF4A0 = qword_27BF498;
    operator delete(qword_27BF498);
  }

  _Unwind_Resume(exception_object);
}

void sub_F20908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1064);
  i = *(a1 + 1072);
  if (v2 == i)
  {
    return;
  }

  *(a2 + 40) |= 0x200u;
  v4 = *(a2 + 272);
  if (v4)
  {
    if (v2 == i)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(a2 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  v4 = sub_14BCF4C(v8);
  *(a2 + 272) = v4;
  v9 = a1;
  v2 = *(a1 + 1064);
  for (i = *(v9 + 1072); v2 != i; v2 += 496)
  {
LABEL_10:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v2, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_F20A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1064);
  i = *(a1 + 1072);
  if (v2 == i)
  {
    return;
  }

  *(a2 + 40) |= 0x10u;
  v4 = *(a2 + 192);
  if (v4)
  {
    if (v2 == i)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(a2 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  v4 = sub_14BCF4C(v8);
  *(a2 + 192) = v4;
  v9 = a1;
  v2 = *(a1 + 1064);
  for (i = *(v9 + 1072); v2 != i; v2 += 496)
  {
LABEL_10:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v2, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void *sub_F20BD8(void *result, uint64_t a2)
{
  if (*result != result[1])
  {
    *(a2 + 40) |= 4u;
    if (*(a2 + 88))
    {
      v3 = *(a2 + 88);
    }

    else
    {
      v4 = result;
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v8 = sub_1551A70(v7);
      *(a2 + 88) = v8;
      result = v4;
      v3 = v8;
    }

    return sub_43735C(result, v3);
  }

  return result;
}

void *sub_F20C6C(void *result, uint64_t a2)
{
  if (*result != result[1])
  {
    *(a2 + 40) |= 8u;
    if (*(a2 + 96))
    {
      v3 = *(a2 + 96);
    }

    else
    {
      v4 = result;
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v8 = sub_1551A70(v7);
      *(a2 + 96) = v8;
      result = v4;
      v3 = v8;
    }

    return sub_43735C(result, v3);
  }

  return result;
}

void sub_F20E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_120D5F0(v8);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20EB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = nullsub_1(*a1);
  v8 = *(a4 + 40);
  *(a4 + 128) = v7;
  *(a4 + 156) = *(a1 + 448);
  v9 = *(a1 + 400) == 1;
  v10 = v8 | 0x2180;
  *(a4 + 40) = v8 | 0x2180;
  *(a4 + 136) = v9;
  v11 = *(a1 + 412);
  if (v11 == 0x7FFFFFFF)
  {
    v12 = *(a1 + 404);
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = v8 | 0x2980;
    *(a4 + 40) = v8 | 0x2980;
    *(a4 + 148) = v11 - 978307200;
    v12 = *(a1 + 404);
    if (v12 == 0x7FFFFFFF)
    {
LABEL_3:
      v13 = *(a1 + 408);
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  v10 |= 0x200u;
  *(a4 + 40) = v10;
  *(a4 + 140) = v12 - 978307200;
  v13 = *(a1 + 408);
  if (v13 == 0x7FFFFFFF)
  {
LABEL_4:
    v14 = *(a1 + 416);
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  v10 |= 0x400u;
  *(a4 + 40) = v10;
  *(a4 + 144) = v13 - 978307200;
  v14 = *(a1 + 416);
  if (v14 != 0x7FFFFFFF)
  {
LABEL_5:
    *(a4 + 40) = v10 | 0x1000;
    *(a4 + 152) = v14 - 978307200;
  }

LABEL_6:
  nullsub_1(&v39);
  v15 = *(a1 + 167);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a1 + 152);
  }

  if (v15)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 176, v35))
    {
      sub_9D6E68(a1 + 144, v35);
      *(a4 + 40) |= 4u;
      v16 = *(a4 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA30((a4 + 88), v35, v17);
      if ((v38 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_28:
        operator delete(v35[0]);
        v21 = *(a1 + 39);
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a1 + 24);
        }

        if (!v21)
        {
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      operator delete(__p);
      if (v36 < 0)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_14:
  v18 = *(a1 + 39);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 24);
  }

  if (!v18)
  {
    goto LABEL_34;
  }

LABEL_17:
  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 48, v35))
  {
    goto LABEL_34;
  }

  sub_9D6E68(a1 + 16, v35);
  *(a4 + 40) |= 1u;
  v19 = *(a4 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA30((a4 + 72), v35, v20);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v35[0]);
LABEL_34:
  v22 = *(a1 + 359);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a1 + 344);
  }

  if (v22)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 368, v35))
    {
      sub_9D6E68(a1 + 336, v35);
      *(a4 + 40) |= 0x20u;
      v23 = *(a4 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA30((a4 + 112), v35, v24);
      if ((v38 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_52:
        operator delete(v35[0]);
        v28 = *(a1 + 231);
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(a1 + 216);
        }

        if (!v28)
        {
          goto LABEL_58;
        }

        goto LABEL_45;
      }

      operator delete(__p);
      if (v36 < 0)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_42:
  v25 = *(a1 + 231);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a1 + 216);
  }

  if (!v25)
  {
    goto LABEL_58;
  }

LABEL_45:
  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 240, v35))
  {
    goto LABEL_58;
  }

  sub_9D6E68(a1 + 208, v35);
  *(a4 + 40) |= 8u;
  v26 = *(a4 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA30((a4 + 96), v35, v27);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v35[0]);
LABEL_58:
  v29 = *(a1 + 103);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a1 + 88);
  }

  if (!v29)
  {
    goto LABEL_66;
  }

  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 112, v35))
  {
    goto LABEL_66;
  }

  sub_9D6E68(a1 + 80, v35);
  *(a4 + 40) |= 2u;
  v30 = *(a4 + 8);
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  sub_194EA30((a4 + 80), v35, v31);
  if (v38 < 0)
  {
    operator delete(__p);
    if (v36 < 0)
    {
      goto LABEL_78;
    }

LABEL_66:
    if (*(a1 + 448) != 1)
    {
      goto LABEL_79;
    }

    goto LABEL_67;
  }

  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_78:
  operator delete(v35[0]);
  if (*(a1 + 448) != 1)
  {
    goto LABEL_79;
  }

LABEL_67:
  v32 = *(a1 + 295);
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(a1 + 280);
  }

  if (v32)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 304, v35))
    {
      sub_9D6E68(a1 + 272, v35);
      *(a4 + 40) |= 0x10u;
      v33 = *(a4 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_194EA30((a4 + 104), v35, v34);
      if (v38 < 0)
      {
        operator delete(__p);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }
  }

LABEL_79:
  sub_F21454((a1 + 424), a3, a4);
}

void sub_F21454(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = a3;
    v6 = a2;
    v95 = a1[1];
    while (1)
    {
      v7 = *(v3 + 8);
      v8 = -1;
      if (v7 <= 3)
      {
        break;
      }

      if (v7 > 5)
      {
        if (v7 == 6)
        {
          v18 = sub_3AFC64(v6);
          if (*(v3 + 8) != 6)
          {
            goto LABEL_132;
          }

          v13 = v18;
          v14 = sub_92FC60(v18, *v3, 0, "line");
          v15 = (v14 - *v14);
          if (*v15 < 5u)
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        if (v7 != 7)
        {
          goto LABEL_42;
        }

        v12 = sub_3AFB1C(v6);
        if (*(v3 + 8) != 7)
        {
          goto LABEL_132;
        }

        v13 = v12;
        v14 = sub_503310(v12, *v3, 0, "access point");
        v15 = (v14 - *v14);
        if (*v15 >= 5u)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      if (v7 == 4)
      {
        v17 = sub_3AFEE8(v6);
        if (*(v3 + 8) != 4)
        {
          goto LABEL_132;
        }

        v13 = v17;
        v14 = sub_943960(v17, *v3, 0, "market");
        v15 = (v14 - *v14);
        if (*v15 < 5u)
        {
          goto LABEL_34;
        }

LABEL_31:
        v20 = v15[2];
        if (v20)
        {
          v8 = *(v14 + v20);
          v21 = sub_2C939C(v13, 1u, 0);
          if (!v21)
          {
            goto LABEL_131;
          }

LABEL_35:
          v22 = &v21[-*v21];
          if (*v22 < 0xDu || (v23 = *(v22 + 6)) == 0)
          {
LABEL_131:
            exception = __cxa_allocate_exception(0x40uLL);
            v92 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
          }

          v24 = &v21[v23 + *&v21[v23]];
          v25 = &v24[-*v24];
          if (*v25 < 0xBu)
          {
            goto LABEL_42;
          }

          v26 = *(v25 + 5);
          if (!v26 || !v24[v26])
          {
            goto LABEL_42;
          }

          v10 = nullsub_1(v8);
          goto LABEL_41;
        }

LABEL_34:
        v8 = 0;
        v21 = sub_2C939C(v13, 1u, 0);
        if (!v21)
        {
          goto LABEL_131;
        }

        goto LABEL_35;
      }

      v9 = sub_3AFEE8(v6);
      if (*(v3 + 8) != 5)
      {
        goto LABEL_132;
      }

      v10 = sub_F24388(v9, v3);
LABEL_41:
      v8 = v10;
LABEL_42:
      v27 = *(v5 + 64);
      if (v27 && (v28 = *(v5 + 56), v28 < *v27))
      {
        *(v5 + 56) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_141BEF0(*(v5 + 48));
        v29 = sub_19593CC(v5 + 48, v30);
      }

      v31 = nullsub_1(v8);
      *(v29 + 40) |= 2u;
      *(v29 + 56) = v31;
      if (*(v3 + 8) == 6 && *(v3 + 96) == 1 && *(v3 + 48) != *(v3 + 56))
      {
        *v102 = 0u;
        *__p = 0u;
        v104 = 1065353216;
        sub_6544C(&v107, v102, (v3 + 48));
        v32 = *(v3 + 48);
        for (i = *(v3 + 56); v32 != i; v32 += 16)
        {
          v107 = *(v32 + 8);
          sub_F244B0(v102, &v107);
        }

        *(v29 + 40) |= 1u;
        v34 = *(v29 + 48);
        if (!v34)
        {
          v35 = *(v29 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_141BE5C(v36);
          *(v29 + 48) = v34;
        }

        v96 = v3;
        v37 = sub_3AFB1C(v6);
        v38 = __p[0];
        if (__p[0])
        {
          v39 = v37;
          v40 = (v37 + 592);
          v100 = (v37 + 640);
          v101 = (v37 + 616);
          v98 = v37 + 16;
          v99 = (v37 + 664);
          do
          {
            while (1)
            {
              v41 = v38[2];
              v110 = "stop";
              LODWORD(v105[0]) = v41;
              v111 = 0;
              v107 = &v111;
              v108 = v105;
              v42 = v39[482] + 1;
              v39[482] = v42;
              if (!*v39)
              {
LABEL_121:
                sub_2C9894(&v107);
LABEL_122:
                v84 = __cxa_allocate_exception(0x40uLL);
                v106 = HIDWORD(v41);
                v111 = v41;
                v105[0] = sub_7FCF0(6u);
                v105[1] = v85;
                sub_2C956C("Failed to acquire entity ", &v110, " in quad node ", " at position ", " on layer ", v105, &v107);
                if ((v109 & 0x80u) == 0)
                {
                  v86 = &v107;
                }

                else
                {
                  v86 = v107;
                }

                if ((v109 & 0x80u) == 0)
                {
                  v87 = v109;
                }

                else
                {
                  v87 = v108;
                }

                v88 = sub_2D390(v84, v86, v87);
              }

              v43 = v40;
              if (*v40 == v41 || (v43 = v101, *v101 == v41) || (v43 = v100, *v100 == v41) || (v43 = v99, *v99 == v41))
              {
                ++v39[483];
                *(v43 + 1) = v42;
                v44 = *(v43 + 2);
                if (!v44)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                v65 = v39[81];
                v66 = v39[78];
                v67 = v39[75];
                v97 = v39[84];
                v44 = sub_2D52A4(*v39, 6, v41, 1);
                if (v67 >= v42)
                {
                  v68 = v42;
                }

                else
                {
                  v68 = v67;
                }

                if (v67 >= v42)
                {
                  v69 = 0;
                }

                else
                {
                  v69 = 24;
                }

                if (v66 < v68)
                {
                  v68 = v66;
                  v69 = 25;
                }

                if (v65 < v68)
                {
                  v69 = 26;
                  v68 = v65;
                }

                v70 = v97 >= v68;
                v71 = 27;
                if (v70)
                {
                  v71 = v69;
                }

                v72 = v98 + 24 * v71;
                *v72 = v105[0];
                v42 = v39[482];
                *(v72 + 8) = v42;
                *(v72 + 16) = v44;
                if (!v44)
                {
                  goto LABEL_121;
                }
              }

              v45 = (v44 + *v44);
              v46 = (v45 - *v45);
              if (*v46 < 0x1Du)
              {
                goto LABEL_122;
              }

              v47 = v46[14];
              if (!v47)
              {
                goto LABEL_122;
              }

              v48 = (v45 + v47 + *(v45 + v47));
              if (*v48 <= HIDWORD(v41))
              {
                goto LABEL_122;
              }

              v49 = (&v48[HIDWORD(v41) + 1] + v48[HIDWORD(v41) + 1]);
              v50 = (v49 - *v49);
              if (*v50 >= 5u && (v51 = v50[2]) != 0)
              {
                v52 = *(v49 + v51);
              }

              else
              {
                v52 = 0;
              }

              LODWORD(v105[0]) = 1;
              LODWORD(v110) = 0;
              v107 = &v110;
              v108 = v105;
              v53 = v42 + 1;
              v39[482] = v53;
              if (!*v39)
              {
LABEL_129:
                sub_2C9894(&v107);
LABEL_130:
                v89 = __cxa_allocate_exception(0x40uLL);
                v90 = sub_2D390(v89, "Root quad node of transit network layer does not contain info object", 0x44uLL);
              }

              v54 = v40;
              if (*v40 == 1 || (v54 = v101, *v101 == 1) || (v54 = v100, *v100 == 1) || (v54 = v99, *v99 == 1))
              {
                ++v39[483];
                *(v54 + 1) = v53;
                v55 = *(v54 + 2);
                if (!v55)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                v73 = v39[81];
                v74 = v39[78];
                v75 = v39[75];
                v76 = v39[84];
                v55 = sub_2D52A4(*v39, 6, 1u, 1);
                if (v75 >= v53)
                {
                  v77 = v53;
                }

                else
                {
                  v77 = v75;
                }

                if (v75 >= v53)
                {
                  v78 = 0;
                }

                else
                {
                  v78 = 24;
                }

                if (v74 < v77)
                {
                  v77 = v74;
                  v78 = 25;
                }

                if (v73 < v77)
                {
                  v78 = 26;
                  v77 = v73;
                }

                v70 = v76 >= v77;
                v79 = 27;
                if (v70)
                {
                  v79 = v78;
                }

                v80 = v98 + 24 * v79;
                *v80 = v105[0];
                *(v80 + 8) = v39[482];
                *(v80 + 16) = v55;
                if (!v55)
                {
                  goto LABEL_129;
                }
              }

              v56 = (v55 + *v55);
              v57 = (v56 - *v56);
              if (*v57 < 0xDu)
              {
                goto LABEL_130;
              }

              v58 = v57[6];
              if (!v58)
              {
                goto LABEL_130;
              }

              v59 = (v56 + v58 + *(v56 + v58));
              v60 = (v59 - *v59);
              if (*v60 >= 0xBu)
              {
                v61 = v60[5];
                if (v61)
                {
                  if (*(v59 + v61))
                  {
                    v52 = nullsub_1(v52);
                  }
                }
              }

              v62 = nullsub_1(v52);
              v63 = v62;
              v64 = *(v34 + 16);
              if (v64 == *(v34 + 20))
              {
                break;
              }

              *(*(v34 + 24) + 8 * v64) = v62;
              *(v34 + 16) = v64 + 1;
              v38 = *v38;
              if (!v38)
              {
                goto LABEL_116;
              }
            }

            sub_1959094((v34 + 16), v64 + 1);
            *(*(v34 + 24) + 8 * v64) = v63;
            *(v34 + 16) = v64 + 1;
            v38 = *v38;
          }

          while (v38);
LABEL_116:
          v81 = __p[0];
          v6 = a2;
          v5 = a3;
          if (__p[0])
          {
            do
            {
              v82 = *v81;
              operator delete(v81);
              v81 = v82;
            }

            while (v82);
          }
        }

        v83 = v102[0];
        v102[0] = 0;
        if (v83)
        {
          operator delete(v83);
        }

        v4 = v95;
        v3 = v96;
      }

      v3 += 104;
      if (v3 == v4)
      {
        return;
      }
    }

    switch(v7)
    {
      case 1:
        v16 = sub_3AFB1C(v6);
        if (*(v3 + 8) != 1)
        {
          goto LABEL_132;
        }

        v13 = v16;
        v14 = sub_93D480(v16, *v3, 0, "station");
        v15 = (v14 - *v14);
        if (*v15 >= 5u)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        v19 = sub_3AFB1C(v6);
        if (*(v3 + 8) != 2)
        {
LABEL_132:
          sub_5AF20();
        }

        v13 = v19;
        v14 = sub_93D2F4(v19, *v3, 0, "hall");
        v15 = (v14 - *v14);
        if (*v15 >= 5u)
        {
          goto LABEL_31;
        }

        break;
      case 3:
        v11 = sub_3AFB1C(v6);
        if (*(v3 + 8) != 3)
        {
          goto LABEL_132;
        }

        v10 = sub_502230(v11, v3);
        goto LABEL_41;
      default:
        goto LABEL_42;
    }

    goto LABEL_34;
  }
}

void sub_F21D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_F21D70(__int128 **a1, uint64_t a2)
{
  if (sub_4D1F6C(a1))
  {
    if (sub_4D1F6C(a1 + 20))
    {
      goto LABEL_3;
    }

LABEL_14:
    *(a2 + 16) |= 1u;
    v8 = *(a2 + 48);
    if (v8)
    {
      sub_64D110(a1 + 20, v8);
      if (!sub_4D1F6C(a1 + 40))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      *(a2 + 48) = v11;
      sub_64D110(a1 + 20, v11);
      if (!sub_4D1F6C(a1 + 40))
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if (sub_4D1F6C(a1 + 80))
    {
      goto LABEL_5;
    }

LABEL_26:
    *(a2 + 16) |= 0x20u;
    v16 = *(a2 + 88);
    if (v16)
    {
      sub_64D110(a1 + 80, v16);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      *(a2 + 88) = v19;
      sub_64D110(a1 + 80, v19);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_32;
      }
    }

LABEL_6:
    if (sub_4D1F6C(a1 + 60))
    {
      return;
    }

    goto LABEL_34;
  }

  *(a2 + 16) |= 2u;
  v4 = *(a2 + 56);
  if (v4)
  {
    sub_64D110(a1, v4);
    if (!sub_4D1F6C(a1 + 20))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    *(a2 + 56) = v7;
    sub_64D110(a1, v7);
    if (!sub_4D1F6C(a1 + 20))
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if (sub_4D1F6C(a1 + 40))
  {
    goto LABEL_4;
  }

LABEL_20:
  *(a2 + 16) |= 4u;
  v12 = *(a2 + 64);
  if (v12)
  {
    sub_64D110(a1 + 40, v12);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = *(a2 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BAE64(v14);
    *(a2 + 64) = v15;
    sub_64D110(a1 + 40, v15);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  if (sub_4D1F6C(a1 + 100))
  {
    goto LABEL_6;
  }

LABEL_32:
  *(a2 + 16) |= 0x40u;
  v20 = *(a2 + 96);
  if (v20)
  {
    sub_64D110(a1 + 100, v20);
    if (sub_4D1F6C(a1 + 60))
    {
      return;
    }

    goto LABEL_34;
  }

  v23 = *(a2 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_14BAE64(v24);
  *(a2 + 96) = v25;
  sub_64D110(a1 + 100, v25);
  if (!sub_4D1F6C(a1 + 60))
  {
LABEL_34:
    *(a2 + 16) |= 0x10u;
    v21 = *(a2 + 80);
    if (v21)
    {
      v22 = a1 + 60;
    }

    else
    {
      v26 = *(a2 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_14BAE64(v27);
      v21 = v28;
      *(a2 + 80) = v28;
      v22 = a1 + 60;
    }

    sub_64D110(v22, v21);
  }
}

void sub_F2202C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1064);
  v4 = *(a1 + 1072);
  if (v3 != v4)
  {
    while (1)
    {
      v8 = *(v3 + 488);
      if (v8 != 4 && v8 != 1)
      {
        goto LABEL_5;
      }

      v10 = *(a2 + 40);
      if (v10 && (v11 = *(a2 + 32), v11 < *v10))
      {
        *(a2 + 32) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        *(v12 + 16) |= 1u;
        v7 = *(v12 + 24);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = sub_14353DC(*(a2 + 24));
        v12 = sub_19593CC(a2 + 24, v13);
        *(v12 + 16) |= 1u;
        v7 = *(v12 + 24);
        if (!v7)
        {
LABEL_16:
          v14 = *(v12 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          sub_14BAE64(v15);
          v7 = v6;
          *(v12 + 24) = v6;
        }
      }

      sub_64D110(v3, v7);
LABEL_5:
      v3 += 496;
      if (v3 == v4)
      {
        v3 = *(a1 + 1064);
        v4 = *(a1 + 1072);
        break;
      }
    }
  }

  if (v3 != v4)
  {
    while (*(v3 + 488) != 4)
    {
      v3 += 496;
      if (v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    *(a2 + 16) |= 8u;
    v16 = *(a2 + 72);
    if (!v16)
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      v16 = v19;
      *(a2 + 72) = v19;
    }

    sub_64D110(v3, v16);
  }
}

void sub_F221B4(uint64_t a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1))
  {
    *(a2 + 16) |= 1u;
    v4 = *(a2 + 24);
    if (v4)
    {
      sub_64D110(a1, v4);
      if (*(a1 + 320) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_14BAE64(v8);
    *(a2 + 24) = v9;
    sub_64D110(a1, v9);
    if (*(a1 + 320) == 1)
    {
LABEL_4:
      *(a2 + 16) |= 4u;
      *(a2 + 40) = 1;
    }
  }

LABEL_5:
  if (!sub_4D1F6C((a1 + 160)))
  {
    *(a2 + 16) |= 2u;
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = (a1 + 160);
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      v5 = v12;
      *(a2 + 32) = v12;
      v6 = (a1 + 160);
    }

    sub_64D110(v6, v5);
  }
}

void sub_F222D4(void *a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1 + 32) || !sub_4D1F6C(a1 + 52))
  {
    *(a2 + 40) |= 2u;
    v4 = *(a2 + 176);
    if (!v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_14BB324(v6);
      *(a2 + 176) = v4;
    }

    sub_F221B4((a1 + 32), v4);
  }

  if (!sub_4D1F6C(a1 + 12))
  {
    *(a2 + 40) |= 1u;
    v7 = *(a2 + 168);
    if (v7)
    {
      v8 = (a1 + 12);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v7 = v11;
      *(a2 + 168) = v11;
      v8 = (a1 + 12);
    }

    sub_64D110(v8, v7);
  }
}

void sub_F223CC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a1 + 8) || *(a1 + 24) != *(a1 + 32) || *(a1 + 48) != *(a1 + 56) || *(a1 + 72) != *(a1 + 80) || !sub_4D1F6C((a1 + 96)) || !sub_4D1F6C((a1 + 256)) || !sub_4D1F6C((a1 + 416)))
  {
    *(a2 + 40) |= 2u;
    v4 = *(a2 + 56);
    if (!v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_14BB3A4(v6);
      *(a2 + 56) = v4;
    }

    sub_F225CC(a1, v4);
    *(a2 + 40) |= 2u;
    v7 = *(a2 + 56);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_14BB3A4(v9);
      *(a2 + 56) = v7;
    }

    sub_F222D4(a1, v7);
  }

  if (*(a1 + 584) != *(a1 + 592) || *(a1 + 608) != *(a1 + 616) || *(a1 + 632) != *(a1 + 640) || *(a1 + 656) != *(a1 + 664))
  {
    *(a2 + 40) |= 1u;
    v10 = *(a2 + 48);
    if (!v10)
    {
      v11 = *(a2 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_14BB400(v12);
      *(a2 + 48) = v10;
    }

    sub_F22778((a1 + 584), v10);
  }

  if (!sub_4D1F6C((a1 + 680)))
  {
    *(a2 + 40) |= 8u;
    v13 = *(a2 + 72);
    if (v13)
    {
      sub_64D110((a1 + 680), v13);
      v14 = *(a1 + 840) - 1;
      if (v14 > 2)
      {
        return;
      }

      goto LABEL_29;
    }

    v16 = *(a2 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_14BAE64(v17);
    *(a2 + 72) = v18;
    sub_64D110((a1 + 680), v18);
    v14 = *(a1 + 840) - 1;
    if (v14 <= 2)
    {
LABEL_29:
      v15 = dword_22AE74C[v14];
      *(a2 + 40) |= 0x100u;
      *(a2 + 112) = v15;
    }
  }
}

void sub_F225CC(__int128 ***a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 88);
    if (v8 && (v9 = *(a2 + 80), v9 < *v8))
    {
      *(a2 + 80) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 72));
      v7 = sub_19593CC(a2 + 72, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = a1[3];
  v11 = a1[4];
  while (v10 != v11)
  {
    v14 = *(a2 + 112);
    if (v14 && (v15 = *(a2 + 104), v15 < *v14))
    {
      *(a2 + 104) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 96));
      v13 = sub_19593CC(a2 + 96, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  v16 = a1[6];
  v17 = a1[7];
  while (v16 != v17)
  {
    v20 = *(a2 + 64);
    if (v20 && (v21 = *(a2 + 56), v21 < *v20))
    {
      *(a2 + 56) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 48));
      v19 = sub_19593CC(a2 + 48, v18);
    }

    sub_64D110(v16, v19);
    v16 += 20;
  }

  v23 = a1[9];
  v22 = a1[10];
  while (v23 != v22)
  {
    v26 = *(a2 + 136);
    if (v26 && (v27 = *(a2 + 128), v27 < *v26))
    {
      *(a2 + 128) = v27 + 1;
      v25 = *&v26[2 * v27 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 120));
      v25 = sub_19593CC(a2 + 120, v24);
    }

    sub_64D110(v23, v25);
    v23 += 20;
  }
}

void sub_F22778(__int128 ***a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 80);
    if (v8 && (v9 = *(a2 + 72), v9 < *v8))
    {
      *(a2 + 72) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 64));
      v7 = sub_19593CC(a2 + 64, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = a1[3];
  v11 = a1[4];
  while (v10 != v11)
  {
    v14 = *(a2 + 104);
    if (v14 && (v15 = *(a2 + 96), v15 < *v14))
    {
      *(a2 + 96) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 88));
      v13 = sub_19593CC(a2 + 88, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  v16 = a1[6];
  v17 = a1[7];
  while (v16 != v17)
  {
    v20 = *(a2 + 56);
    if (v20 && (v21 = *(a2 + 48), v21 < *v20))
    {
      *(a2 + 48) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 40));
      v19 = sub_19593CC(a2 + 40, v18);
    }

    sub_64D110(v16, v19);
    v16 += 20;
  }

  v23 = a1[9];
  v22 = a1[10];
  while (v23 != v22)
  {
    v26 = *(a2 + 128);
    if (v26 && (v27 = *(a2 + 120), v27 < *v26))
    {
      *(a2 + 120) = v27 + 1;
      v25 = *&v26[2 * v27 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 112));
      v25 = sub_19593CC(a2 + 112, v24);
    }

    sub_64D110(v23, v25);
    v23 += 20;
  }
}

uint64_t sub_F22924(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      v12 = *(a3 + 32);
      if (v12 && (v13 = *(a3 + 24), v13 < *v12))
      {
        *(a3 + 24) = v13 + 1;
        v8 = *&v12[2 * v13 + 2];
      }

      else
      {
        v7 = sub_1435D84(*(a3 + 16));
        v8 = sub_19593CC(a3 + 16, v7);
      }

      v9 = sub_9F957C(v6, v3);
      result = nullsub_1(v9);
      v10 = *(v8 + 16);
      *(v8 + 16) = v10 | 1;
      *(v8 + 24) = result;
      v11 = *(v3 + 8) - 978307200;
      *(v8 + 16) = v10 | 3;
      *(v8 + 32) = v11;
      v3 += 12;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_F229F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v5 = *(a3 + 24);
  if (!v5)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v5 = sub_1435EA0(v8);
    *(a3 + 24) = v5;
  }

  v9 = sub_9F957C(a1, a2);
  v10 = nullsub_1(v9);
  *(v5 + 4) |= 2u;
  v5[4] = v10;
  v11 = sub_3A25A8(a1, *a2, 0, "trip");
  v12 = sub_92FC60(a1, *(v11 + *(v11 - *v11 + 6)), 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(v12 + v14);
    v16 = sub_2C939C(a1, 1u, 0);
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = 0;
    v16 = sub_2C939C(a1, 1u, 0);
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  v17 = &v16[-*v16];
  if (*v17 < 0xDu || (v18 = *(v17 + 6)) == 0)
  {
LABEL_24:
    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v19 = &v16[v18 + *&v16[v18]];
  v20 = &v19[-*v19];
  if (*v20 >= 0xBu)
  {
    v21 = *(v20 + 5);
    if (v21)
    {
      if (v19[v21])
      {
        v15 = nullsub_1(v15);
      }
    }
  }

  v22 = nullsub_1(v15);
  v23 = *(v5 + 4);
  *(v5 + 4) = v23 | 4;
  v5[5] = v22;
  v24 = *(a2 + 8) - 978307200;
  *(v5 + 4) = v23 | 0xC;
  *(v5 + 12) = v24;
  v25 = *(a2 + 12) - 978307200;
  *(v5 + 4) = v23 | 0x1C;
  *(v5 + 13) = v25;
  sub_1202298(v37, 0, 0);
  v26 = nullsub_1(*(a2 + 16));
  v27 = v26;
  v28 = v38[0];
  if (v38[0] == v38[1])
  {
    v29 = v38[0] + 1;
    sub_1959094(v38, v38[0] + 1);
    *(v39 + 8 * v28) = v27;
  }

  else
  {
    *(v39 + 8 * v38[0]) = v26;
    v29 = v28 + 1;
  }

  v38[0] = v29;
  sub_1957E24(v37, __p);
  *(v5 + 4) |= 1u;
  v30 = v5[1];
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  sub_194EA30(v5 + 3, __p, v31);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_120236C(v37);
}

void sub_F22C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_120236C(&a15);
    _Unwind_Resume(a1);
  }

  sub_120236C(&a15);
  _Unwind_Resume(a1);
}

std::string *sub_F22CE0(__int128 **a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = *(a2 + 32);
  if (!v4)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    *(a2 + 32) = v7;
  }

  sub_64D110(a1, v4);
  *(a2 + 16) |= 4u;
  v8 = *(a2 + 40);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_14BAE64(v10);
    v8 = v11;
    *(a2 + 40) = v11;
  }

  sub_64D110(a1 + 20, v8);
  *(a2 + 16) |= 1u;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
    v14 = (a2 + 24);
    v15 = (a1 + 40);
  }

  else
  {
    v14 = (a2 + 24);
    v15 = (a1 + 40);
  }

  return sub_194EA1C(v14, v15, v13);
}

uint64_t *sub_F22DD4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v2;
  return result;
}

void sub_F22DEC(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(*(a1 + 48));
  *(a2 + 40) |= 0x100u;
  *(a2 + 136) = v4;
  sub_58719C((a1 + 96), &__p);
  *(a2 + 40) |= 1u;
  v5 = *(a2 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if (v5)
  {
    v6 = *v6;
  }

  sub_194EA30((a2 + 72), &__p, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 72) != *(a1 + 80))
  {
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_1551A70(v10);
      *(a2 + 104) = v8;
    }

    sub_43735C(a1 + 72, v8);
  }

  v11 = *(a1 + 47);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 32);
  }

  if (v11)
  {
    *(a2 + 40) |= 2u;
    v12 = *(a2 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_194EA1C((a2 + 80), (a1 + 24), v13);
  }

  v14 = *(a1 + 64);
  if (v14 != -1)
  {
    *(a2 + 40) |= 0x400u;
    *(a2 + 148) = v14;
  }

  v15 = *(a1 + 136);
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      if (*(a1 + 104) == -1)
      {
        goto LABEL_31;
      }
    }

    else if (v15 != 2 || *(a1 + 108) == -1 && *(a1 + 104) == -1 && *(a1 + 112) == *(a1 + 120))
    {
      goto LABEL_31;
    }

LABEL_39:
    *(a2 + 40) |= 4u;
    v18 = *(a2 + 88);
    if (v18)
    {
      sub_586C94(a1 + 104, v18, v7);
      v17 = *(a1 + 248);
      if (v17 > 2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_14BF484(v23);
      *(a2 + 88) = v24;
      sub_586C94(a1 + 104, v24, v25);
      v17 = *(a1 + 248);
      if (v17 > 2)
      {
        goto LABEL_41;
      }
    }

LABEL_32:
    if (v17 == 1)
    {
      if (*(a1 + 216) == -1)
      {
        goto LABEL_46;
      }
    }

    else if (v17 != 2 || *(a1 + 220) == -1 && *(a1 + 216) == -1 && *(a1 + 224) == *(a1 + 232))
    {
      goto LABEL_46;
    }

    goto LABEL_58;
  }

  if (v15 == 3 || v15 == 4)
  {
    v16 = *(a1 + 127);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a1 + 112);
    }

    if (v16)
    {
      goto LABEL_39;
    }
  }

LABEL_31:
  v17 = *(a1 + 248);
  if (v17 <= 2)
  {
    goto LABEL_32;
  }

LABEL_41:
  if (v17 != 3 && v17 != 4)
  {
    goto LABEL_46;
  }

  v19 = *(a1 + 239);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a1 + 224);
  }

  if (!v19)
  {
LABEL_46:
    v20 = (a1 + 328);
    v21 = *(a1 + 360);
    if (v21 <= 2)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_58:
  *(a2 + 40) |= 8u;
  v26 = *(a2 + 96);
  if (!v26)
  {
    v27 = *(a2 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_14BF484(v28);
    *(a2 + 96) = v26;
  }

  sub_586C94(a1 + 216, v26, v7);
  v20 = (a1 + 328);
  v21 = *(a1 + 360);
  if (v21 <= 2)
  {
LABEL_47:
    if (v21 == 1)
    {
      if (*v20 == -1)
      {
        goto LABEL_68;
      }
    }

    else if (v21 != 2 || *(a1 + 332) == -1 && *(a1 + 328) == -1 && *(a1 + 336) == *(a1 + 344))
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_63:
  if (v21 != 3 && v21 != 4)
  {
    goto LABEL_68;
  }

  v29 = *(a1 + 351);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a1 + 336);
  }

  if (!v29)
  {
LABEL_68:
    v30 = (a1 + 440);
    v31 = *(a1 + 472);
    if (v31 <= 2)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(a2 + 40) |= 0x40u;
  v32 = *(a2 + 120);
  if (!v32)
  {
    v33 = *(a2 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_14BF484(v34);
    *(a2 + 120) = v32;
  }

  sub_586C94(v20, v32, v7);
  v30 = (a1 + 440);
  v31 = *(a1 + 472);
  if (v31 <= 2)
  {
LABEL_69:
    if (v31 == 1)
    {
      if (*v30 == -1)
      {
        goto LABEL_93;
      }
    }

    else if (v31 != 2 || *(a1 + 444) == -1 && *(a1 + 440) == -1 && *(a1 + 448) == *(a1 + 456))
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

LABEL_81:
  if (v31 == 3 || v31 == 4)
  {
    v35 = *(a1 + 463);
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(a1 + 448);
    }

    if (v35)
    {
LABEL_88:
      *(a2 + 40) |= 0x80u;
      v36 = *(a2 + 128);
      if (!v36)
      {
        v37 = *(a2 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v36 = sub_14BF484(v38);
        *(a2 + 128) = v36;
      }

      sub_586C94(v30, v36, v7);
    }
  }

LABEL_93:
  v39 = *(a1 + 552);
  if (v39 != 0x7FFF)
  {
    *(a2 + 40) |= 0x800u;
    *(a2 + 152) = v39;
  }

  if (*(a1 + 554) - 1 > 4)
  {
    v40 = 0;
  }

  else
  {
    v40 = dword_22AE758[(*(a1 + 554) - 1)];
  }

  v41 = *(a1 + 555);
  if (v41 == 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41 == 1;
  }

  v43 = *(a2 + 40);
  *(a2 + 144) = v42;
  v44 = *(a1 + 558);
  *(a2 + 40) = v43 | 0x3200;
  if (v44 == 2)
  {
    v45 = 2;
  }

  else
  {
    v45 = v44 == 1;
  }

  *(a2 + 156) = v40;
  *(a2 + 160) = v45;
}

void sub_F232D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F232F0(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(*(a1 + 48));
  v6 = *(a2 + 40);
  *(a2 + 40) = v6 | 0x10;
  *(a2 + 80) = v4;
  if (*(a1 + 64) != *(a1 + 72))
  {
    *(a2 + 40) = v6 | 0x14;
    v7 = *(a2 + 64);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1551A70(v9);
      *(a2 + 64) = v7;
    }

    sub_43735C(a1 + 64, v7);
  }

  v10 = *(a1 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 32);
  }

  if (v10)
  {
    *(a2 + 40) |= 2u;
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a2 + 56), (a1 + 24), v12);
  }

  v13 = *(a1 + 120);
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      if (*(a1 + 88) == -1)
      {
        return;
      }
    }

    else if (v13 != 2 || *(a1 + 92) == -1 && *(a1 + 88) == -1 && *(a1 + 96) == *(a1 + 104))
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 == 3 || v13 == 4)
  {
    v14 = *(a1 + 111);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 96);
    }

    if (v14)
    {
LABEL_25:
      *(a2 + 40) |= 8u;
      v15 = *(a2 + 72);
      if (v15)
      {
        v16 = a1 + 88;
      }

      else
      {
        v17 = *(a2 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v15 = sub_14BF484(v18);
        *(a2 + 72) = v15;
        v16 = a1 + 88;
      }

      sub_586C94(v16, v15, v5);
    }
  }
}

void sub_F234B8(int *a1, uint64_t a2, uint8x8_t a3)
{
  v5 = *a1;
  v6 = *(a2 + 40);
  *(a2 + 40) = v6 | 4;
  *(a2 + 64) = v5;
  v7 = a1[10];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (a1[2] == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v8 = a1[3] == -1 && a1[2] == -1;
      if (v8 && *(a1 + 2) == *(a1 + 3))
      {
        goto LABEL_16;
      }
    }

LABEL_24:
    *(a2 + 40) = v6 | 6;
    v15 = *(a2 + 56);
    if (!v15)
    {
      v16 = *(a2 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_14BF484(v17);
      *(a2 + 56) = v15;
    }

    sub_586C94((a1 + 2), v15, a3);
    v18 = *(a1 + 143);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a1 + 16);
    }

    if (v18)
    {
      goto LABEL_19;
    }

    return;
  }

  if (v7 == 3 || v7 == 4)
  {
    v9 = *(a1 + 31);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 2);
    }

    if (v9)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v10 = *(a1 + 143);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 16);
  }

  if (v10)
  {
LABEL_19:
    *(a2 + 40) |= 1u;
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
      v13 = (a2 + 48);
      v14 = (a1 + 30);
    }

    else
    {
      v13 = (a2 + 48);
      v14 = (a1 + 30);
    }

    sub_194EA1C(v13, v14, v12);
  }
}

void sub_F2362C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = *(a1 + 8);
  *(a2 + 48) = *a1;
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    v6 = (a2 + 24);
    v7 = *(a2 + 24);
    do
    {
      while (1)
      {
        v8 = *v4;
        if (v7 != *(a2 + 28))
        {
          break;
        }

        sub_1958E5C((a2 + 24), v7 + 1);
        *(*(a2 + 32) + 4 * v7++) = v8;
        *v6 = v7;
        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_6;
        }
      }

      *(*(a2 + 32) + 4 * v7++) = v8;
      *v6 = v7;
      v4 += 2;
    }

    while (v4 != v5);
  }

LABEL_6:
  if (!sub_4D1F6C((a1 + 32)))
  {
    *(a2 + 16) |= 1u;
    v9 = *(a2 + 40);
    if (!v9)
    {
      v10 = *(a2 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      v9 = v12;
      *(a2 + 40) = v12;
    }

    sub_64D110((a1 + 32), v9);
  }
}

void sub_F23758(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4 * (*(a1 + 4) != 0x7FFFFFFF)) - 978307200;
  v5 = *(a2 + 16);
  *(a2 + 16) = v5 | 0x40;
  *(a2 + 72) = v4;
  v6 = *(a1 + 688);
  if (v6)
  {
    *(a2 + 16) = v5 | 0x44;
    v7 = *(a2 + 40);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1435FA0(v9);
      *(a2 + 40) = v7;
      v6 = *(a1 + 688);
    }

    v10 = v6 - 1;
    if ((v10 & 0xFC) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 + 1;
    }

    *(v7 + 16) |= 1u;
    *(v7 + 24) = v11;
  }

  if (!sub_4D1F6C((a1 + 32)) || !sub_4D1F6C((a1 + 192)))
  {
    *(a2 + 16) |= 0x10u;
    v12 = *(a2 + 56);
    if (!v12)
    {
      v13 = *(a2 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_14BB324(v14);
      *(a2 + 56) = v12;
    }

    sub_F221B4(a1 + 32, v12);
  }

  if (!sub_4D1F6C((a1 + 360)) || !sub_4D1F6C((a1 + 520)))
  {
    *(a2 + 16) |= 0x20u;
    v15 = *(a2 + 64);
    if (v15)
    {
      v16 = a1 + 360;
    }

    else
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v15 = sub_14BB324(v18);
      *(a2 + 64) = v15;
      v16 = a1 + 360;
    }

    sub_F221B4(v16, v15);
  }
}

void sub_F238E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 40);
    if (v8 && (v9 = *(a2 + 32), v9 < *v8))
    {
      *(a2 + 32) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14360B8(*(a2 + 24));
      v7 = sub_19593CC(a2 + 24, v6);
    }

    sub_F23758(v4, v7);
    v4 += 696;
  }

  v10 = a1[4] == a1[5] || a1[3] == 0;
  if (!v10 && !sub_4D1F6C(a1 + 7))
  {
    *(a2 + 16) |= 1u;
    v11 = *(a2 + 48);
    if (!v11)
    {
      v12 = *(a2 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_143601C(v13);
      *(a2 + 48) = v11;
    }

    sub_F2362C((a1 + 3), v11);
  }

  if (!sub_4D1F6C(a1 + 27) || !sub_4D1F6C(a1 + 47))
  {
    *(a2 + 16) |= 2u;
    v14 = *(a2 + 56);
    if (!v14)
    {
      v15 = *(a2 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BB324(v16);
      *(a2 + 56) = v14;
    }

    sub_F221B4((a1 + 27), v14);
  }

  if (!sub_4D1F6C(a1 + 68) || !sub_4D1F6C(a1 + 88))
  {
    *(a2 + 16) |= 4u;
    v17 = *(a2 + 64);
    if (!v17)
    {
      v18 = *(a2 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_14BB324(v19);
      *(a2 + 64) = v17;
    }

    sub_F221B4((a1 + 68), v17);
  }

  if (!sub_4D1F6C(a1 + 109) || !sub_4D1F6C(a1 + 129))
  {
    *(a2 + 16) |= 8u;
    v20 = *(a2 + 72);
    if (v20)
    {
      v21 = (a1 + 109);
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v20 = sub_14BB324(v23);
      *(a2 + 72) = v20;
      v21 = (a1 + 109);
    }

    sub_F221B4(v21, v20);
  }
}

std::string *sub_F23B10(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (result != -1)
  {
    result = nullsub_1(result);
    *(a2 + 40) |= 4u;
    *(a2 + 64) = result;
  }

  v5 = *(a1 + 31);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    *(a2 + 40) |= 1u;
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    result = sub_194EA1C((a2 + 48), (a1 + 8), v7);
  }

  v8 = *(a1 + 32);
  if (v8 <= 1)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_18;
    }

    v9 = v8 == 1;
    v8 = 1;
    goto LABEL_15;
  }

  if (v8 != 2 && v8 != 3)
  {
    v9 = v8 == 4;
    v8 = 4;
LABEL_15:
    if (!v9)
    {
      v8 = 0;
    }
  }

  *(a2 + 40) |= 8u;
  *(a2 + 72) = v8;
LABEL_18:
  if (*(a1 + 64) - 1 < 3)
  {
    v10 = (*(a1 + 64) - 1) + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 40);
  *(a2 + 40) = v11 | 0x10;
  *(a2 + 76) = v10;
  v12 = *(a1 + 63);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 48);
  }

  if (v12)
  {
    *(a2 + 40) = v11 | 0x12;
    v13 = *(a2 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
      v15 = (a2 + 56);
      v16 = (a1 + 40);
    }

    else
    {
      v15 = (a2 + 56);
      v16 = (a1 + 40);
    }

    return sub_194EA1C(v15, v16, v14);
  }

  return result;
}

void sub_F23C80(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = (a3 + 24);
    v8 = *(a3 + 24);
    do
    {
      while (1)
      {
        v9 = *v5;
        if (v8 == *(a3 + 28))
        {
          break;
        }

        *(*(a3 + 32) + 4 * v8++) = v9;
        *v7 = v8;
        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      sub_1958E5C((a3 + 24), v8 + 1);
      *(*(a3 + 32) + 4 * v8++) = v9;
      *v7 = v8;
      v5 += 2;
    }

    while (v5 != v6);
  }

LABEL_6:
  v10 = *(a1 + 560);
  if (*(a1 + 560))
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 1;
    }

    *(a3 + 16) |= 2u;
    *(a3 + 48) = v11;
  }

  v12 = 0;
  v13 = *(a1 + 564);
  if (v13 > 1)
  {
    v14 = v13 == 2 || v13 == 3;
    if (!v14 && v13 != 4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *(a1 + 564);
LABEL_18:
    *(a3 + 16) |= 4u;
    *(a3 + 52) = v12;
    goto LABEL_19;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  if (*(a1 + 24) != -1)
  {
    *(a3 + 16) |= 1u;
    v15 = *(a3 + 40);
    if (!v15)
    {
      v16 = *(a3 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_141C1BC(v17);
      v15 = v18;
      *(a3 + 40) = v18;
    }

    v19 = nullsub_1(*(a1 + 24));
    *(v15 + 16) |= 8u;
    *(v15 + 96) = v19;
  }

  if (sub_4D1F6C((a1 + 216)))
  {
    if (sub_4D1F6C((a1 + 376)))
    {
      goto LABEL_27;
    }

LABEL_42:
    *(a3 + 16) |= 1u;
    v28 = *(a3 + 40);
    if (v28)
    {
      *(v28 + 16) |= 4u;
      v29 = *(v28 + 88);
      if (v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v30 = *(a3 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_141C1BC(v31);
      v28 = v32;
      *(a3 + 40) = v32;
      *(v32 + 16) |= 4u;
      v29 = *(v32 + 88);
      if (v29)
      {
LABEL_44:
        sub_64D110((a1 + 376), v29);
        if (sub_4D1F6C((a1 + 32)))
        {
          goto LABEL_62;
        }

        goto LABEL_52;
      }
    }

    v33 = *(v28 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_14BAE64(v34);
    *(v28 + 88) = v35;
    sub_64D110((a1 + 376), v35);
    if (sub_4D1F6C((a1 + 32)))
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  *(a3 + 16) |= 1u;
  v20 = *(a3 + 40);
  if (v20)
  {
    *(v20 + 16) |= 2u;
    v21 = *(v20 + 80);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = *(a3 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_141C1BC(v23);
    v20 = v24;
    *(a3 + 40) = v24;
    *(v24 + 16) |= 2u;
    v21 = *(v24 + 80);
    if (v21)
    {
LABEL_31:
      sub_64D110((a1 + 216), v21);
      if (!sub_4D1F6C((a1 + 376)))
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }
  }

  v25 = *(v20 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_14BAE64(v26);
  *(v20 + 80) = v27;
  sub_64D110((a1 + 216), v27);
  if (!sub_4D1F6C((a1 + 376)))
  {
    goto LABEL_42;
  }

LABEL_27:
  if (sub_4D1F6C((a1 + 32)))
  {
    goto LABEL_62;
  }

LABEL_52:
  *(a3 + 16) |= 1u;
  v36 = *(a3 + 40);
  if (!v36)
  {
    v38 = *(a3 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    sub_141C1BC(v39);
    v36 = v40;
    *(a3 + 40) = v40;
    *(v40 + 16) |= 1u;
    v37 = *(v40 + 72);
    if (v37)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  *(v36 + 16) |= 1u;
  v37 = *(v36 + 72);
  if (!v37)
  {
LABEL_58:
    v41 = *(v36 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_14BAE64(v42);
    v37 = v43;
    *(v36 + 72) = v43;
  }

LABEL_61:
  sub_64D110((a1 + 32), v37);
LABEL_62:
  v44 = *(a1 + 192);
  v45 = *(a1 + 200);
  while (v44 != v45)
  {
    *(a3 + 16) |= 1u;
    v48 = *(a3 + 40);
    if (v48)
    {
      v49 = *(v48 + 40);
      if (!v49)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v50 = *(a3 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        sub_141C1BC(*v51);
        v48 = v54;
        *(a3 + 40) = v54;
        v49 = *(v54 + 40);
        if (!v49)
        {
LABEL_63:
          sub_14BAE64(*(v48 + 24));
          v47 = sub_19593CC(v48 + 24, v46);
          goto LABEL_64;
        }
      }

      else
      {
        sub_141C1BC(v51);
        v48 = v52;
        *(a3 + 40) = v52;
        v49 = *(v52 + 40);
        if (!v49)
        {
          goto LABEL_63;
        }
      }
    }

    v53 = *(v48 + 32);
    if (v53 >= *v49)
    {
      goto LABEL_63;
    }

    *(v48 + 32) = v53 + 1;
    v47 = *&v49[2 * v53 + 2];
LABEL_64:
    sub_64D110(v44, v47);
    v44 += 20;
  }

  v55 = *(a1 + 536);
  for (i = *(a1 + 544); v55 != i; v55 += 32)
  {
    *(a3 + 16) |= 1u;
    v59 = *(a3 + 40);
    if (v59)
    {
      v60 = *(v59 + 64);
      if (!v60)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v61 = *(a3 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        sub_141C1BC(*v62);
        v59 = v67;
        *(a3 + 40) = v67;
        v60 = *(v67 + 64);
        if (!v60)
        {
LABEL_96:
          v68 = sub_155282C(*(v59 + 48));
          v65 = sub_19593CC(v59 + 48, v68);
          v69 = *(v55 + 23);
          if ((v69 & 0x80u) != 0)
          {
            v69 = *(v55 + 8);
          }

          if (v69)
          {
            goto LABEL_99;
          }

          goto LABEL_102;
        }
      }

      else
      {
        sub_141C1BC(v62);
        v59 = v63;
        *(a3 + 40) = v63;
        v60 = *(v63 + 64);
        if (!v60)
        {
          goto LABEL_96;
        }
      }
    }

    v64 = *(v59 + 56);
    if (v64 >= *v60)
    {
      goto LABEL_96;
    }

    *(v59 + 56) = v64 + 1;
    v65 = *&v60[2 * v64 + 2];
    v66 = *(v55 + 23);
    if ((v66 & 0x80u) != 0)
    {
      v66 = *(v55 + 8);
    }

    if (v66)
    {
LABEL_99:
      *(v65 + 16) |= 1u;
      v70 = *(v65 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      sub_194EA1C((v65 + 24), v55, v71);
    }

LABEL_102:
    v72 = *(v55 + 24);
    if (v72 > 1)
    {
      if (v72 == 3)
      {
        v57 = 3;
      }

      else
      {
        v57 = 0;
      }

      if (v72 == 2)
      {
        v58 = 2;
      }

      else
      {
        v58 = v57;
      }
    }

    else
    {
      if (!*(v55 + 24))
      {
        continue;
      }

      v58 = v72 == 1;
    }

    *(v65 + 16) |= 2u;
    *(v65 + 32) = v58;
  }
}

void sub_F24200(uint64_t a1, _DWORD *a2, uint64_t a3, double a4)
{
  *(a3 + 40) |= 1u;
  v5 = *(a3 + 48);
  if (!v5)
  {
    v7 = a1;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    a4 = sub_191B9D8(v9);
    v5 = v10;
    *(a3 + 48) = v10;
    a1 = v7;
  }

  v11 = *(v5 + 16);
  *(v5 + 60) = 1;
  v12 = v11 | 0x48;
  *(v5 + 16) = v12;
  *(v5 + 48) = 9902;
  if (a1 != -1)
  {
    v13 = nullsub_1(a1);
    v12 = *(v5 + 16) | 2;
    *(v5 + 16) = v12;
    *(v5 + 32) = v13;
  }

  if (*a2 != -1 || a2[1] != -1)
  {
    *(v5 + 16) = v12 | 1;
    v15 = *(v5 + 24);
    if (!v15)
    {
      v16 = *(v5 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5828(v17);
      *(v5 + 24) = v15;
    }

    LODWORD(a4) = a2[1];
    v18 = exp(*&a4 * -6.28318531 / 4294967300.0 + 3.14159265);
    v19 = atan((v18 + -1.0 / v18) * 0.5);
    HIDWORD(v20) = 1078765020;
    v21 = *(v15 + 40);
    *(v15 + 40) = v21 | 1;
    LODWORD(v20) = *a2;
    *(v15 + 40) = v21 | 3;
    *(v15 + 48) = v19 * 57.2957795;
    *(v15 + 56) = v20 * 360.0 / 4294967300.0 + -180.0;
  }
}

uint64_t sub_F24388(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93E04C(a1, *a2, 0, "system");
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

uint64_t *sub_F244B0(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_F24828()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF508 = 0u;
  unk_27BF518 = 0u;
  dword_27BF528 = 1065353216;
  sub_3A9A34(&xmmword_27BF508, v0);
  sub_3A9A34(&xmmword_27BF508, v3);
  sub_3A9A34(&xmmword_27BF508, __p);
  sub_3A9A34(&xmmword_27BF508, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF4E0 = 0;
    qword_27BF4E8 = 0;
    qword_27BF4D8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F24A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF4F0)
  {
    qword_27BF4F8 = qword_27BF4F0;
    operator delete(qword_27BF4F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_F24B1C(uint64_t a1)
{
  *(a1 + 40) |= 0x200000u;
  i = *(a1 + 544);
  if (!i)
  {
    v2 = a1;
    v3 = *(a1 + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      v4 = *v4;
    }

    i = sub_14362B4(v4);
    a1 = v2;
    *(v2 + 544) = i;
  }

  v5 = *(a1 + 368);
  v6 = (v5 + 8);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(a1 + 360);
  if (v7)
  {
    v49 = &v6[v7];
    v50 = i;
    do
    {
      v51 = v6;
      v8 = *v6;
      v9 = *(*v6 + 88);
      if (v9)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v8 + 80);
      if (v11)
      {
        v52 = &v10[v11];
        do
        {
          v12 = *v10;
          v13 = *(*v10 + 48);
          if (v13)
          {
            v14 = v13 + 8;
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v12 + 40);
          if (v15)
          {
            v16 = v14 + 8 * v15;
            do
            {
              v17 = *(*v14 + 16);
              if (v17)
              {
                v18 = *(*v14 + 24);
                v19 = *(v12 + 16);
                v20 = 4 * v17;
                do
                {
                  while (1)
                  {
                    v21 = *v18;
                    if (v19 == *(v12 + 20))
                    {
                      break;
                    }

                    *(*(v12 + 24) + 4 * v19++) = v21;
                    *(v12 + 16) = v19;
                    ++v18;
                    v20 -= 4;
                    if (!v20)
                    {
                      goto LABEL_21;
                    }
                  }

                  sub_1958E5C((v12 + 16), v19 + 1);
                  *(*(v12 + 24) + 4 * v19++) = v21;
                  *(v12 + 16) = v19;
                  ++v18;
                  v20 -= 4;
                }

                while (v20);
              }

LABEL_21:
              v14 += 8;
            }

            while (v14 != v16);
          }

          ++v10;
        }

        while (v10 != v52);
      }

      v22 = *(*(v8 + 128) + 8);
      for (i = v50; v22; v22 = *(*(v8 + 128) + 8 * *(v23 + 156) + 8))
      {
        v23 = *(*(v8 + 152) + 8 * *(*(v22 + 56) + 4 * *(v22 + 68)) + 8);
        v24 = *(v23 + 48);
        if (v24)
        {
          v25 = *(v23 + 56);
          v26 = 4 * v24;
          do
          {
            v29 = *v25;
            v30 = *(v8 + 64);
            if (v30 && (v31 = *(v8 + 56), v31 < *v30))
            {
              *(v8 + 56) = v31 + 1;
              v28 = *&v30[2 * v31 + 2];
            }

            else
            {
              v27 = sub_1436258(*(v8 + 48));
              v28 = sub_19593CC(v8 + 48, v27);
            }

            sub_14312CC(v28, *(*(v50 + 344) + 8 * v29 + 8));
            ++v25;
            v26 -= 4;
          }

          while (v26);
        }

        if ((*(v23 + 40) & 4) == 0)
        {
          break;
        }
      }

      v32 = *(v8 + 144);
      if (v32 >= 1)
      {
        v33 = (*(v8 + 152) + 8);
        do
        {
          v34 = *v33++;
          sub_14201A8(v34);
          --v32;
        }

        while (v32);
        *(v8 + 144) = 0;
      }

      v35 = *(v8 + 120);
      if (v35 >= 1)
      {
        v36 = (*(v8 + 128) + 8);
        do
        {
          v37 = *v36++;
          sub_141F96C(v37);
          --v35;
        }

        while (v35);
        *(v8 + 120) = 0;
      }

      v38 = *(v8 + 64);
      if (v38)
      {
        v39 = (v38 + 8);
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v8 + 56);
      if (v40)
      {
        v41 = 0;
        v42 = 8 * v40;
        do
        {
          v43 = *v39;
          v44 = *(*v39 + 280);
          if (v44 == 8)
          {
            if (v41 && (*(v43 + 42) & 8) != 0)
            {
              v45 = *(v43 + 316);
              *(v41 + 40) |= 0x80000u;
              *(v41 + 316) = v45;
            }
          }

          else if (v44 != 6)
          {
            v41 = *v39;
            if (v44 != 5)
            {
              v41 = 0;
            }
          }

          ++v39;
          v42 -= 8;
        }

        while (v42);
      }

      v6 = v51 + 1;
    }

    while (v51 + 1 != v49);
  }

  v46 = *(i + 336);
  if (v46 >= 1)
  {
    v47 = (*(i + 344) + 8);
    do
    {
      v48 = *v47++;
      sub_142E37C(v48);
      --v46;
    }

    while (v46);
    *(i + 336) = 0;
  }
}

void sub_F24E68(void **a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_143ACEC(a3, 0, 0);
  *(a3 + 40) |= 0x20u;
  *(a3 + 112) = 0;
  sub_F256DC(a2[1], (a2 + 2), a3);
  v6 = *a2;
  *(a3 + 40) |= 0x10u;
  v7 = *(a3 + 104);
  if (!v7)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    v7 = sub_1436310(v9);
    *(a3 + 104) = v7;
  }

  sub_F22DD4(v6 + 3, v7);
  v10 = *a2;
  v11 = **a2;
  for (i = v10[1]; v11 != i; v11 += 1064)
  {
    v13 = *(a3 + 64);
    if (v13 && (v14 = *(a3 + 56), v14 < *v13))
    {
      *(a3 + 56) = v14 + 1;
      v15 = *&v13[2 * v14 + 2];
    }

    else
    {
      v16 = sub_143C118(*(a3 + 48));
      v15 = sub_19593CC(a3 + 48, v16);
    }

    sub_F24F9C(a1, v11, v15);
  }
}

void sub_F24F9C(void **a1, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a3 + 40);
  *(a3 + 112) = v6;
  *(a3 + 40) = v7 | 5;
  v8 = *(a3 + 96);
  if (!v8)
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_143BFD8(v10);
    *(a3 + 96) = v8;
  }

  *(v8 + 10) |= 1u;
  v11 = v8[1];
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA1C(v8 + 6, (a2 + 8), v12);
  *(v8 + 10) |= 2u;
  v13 = v8[1];
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    sub_194EA1C(v8 + 7, (a2 + 32), *v14);
    if (sub_4D1F6C((a2 + 56)))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_194EA1C(v8 + 7, (a2 + 32), v14);
    if (sub_4D1F6C((a2 + 56)))
    {
LABEL_12:
      if (sub_4D1F6C((a2 + 216)) && sub_4D1F6C((a2 + 376)) && sub_4D1F6C((a2 + 536)) && sub_4D1F6C((a2 + 696)) && sub_4D1F6C((a2 + 856)))
      {
        goto LABEL_22;
      }
    }
  }

  *(a3 + 40) |= 2u;
  v15 = *(a3 + 104);
  if (!v15)
  {
    v16 = *(a3 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_1435454(v17);
    *(a3 + 104) = v15;
  }

  sub_F21D70((a2 + 56), v15);
LABEL_22:
  v18 = *(a2 + 1016);
  v19 = *(a2 + 1024);
  while (v18 != v19)
  {
    v22 = *(a3 + 64);
    if (v22 && (v23 = *(a3 + 56), v23 < *v22))
    {
      *(a3 + 56) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      v20 = sub_143C0BC(*(a3 + 48));
      v21 = sub_19593CC(a3 + 48, v20);
    }

    sub_F251E0(a1, v18, v21);
    v18 += 2128;
  }

  v24 = *(a2 + 1040);
  v25 = *(a2 + 1048);
  while (v24 != v25)
  {
    v28 = *(a3 + 88);
    if (v28 && (v29 = *(a3 + 80), v29 < *v28))
    {
      *(a3 + 80) = v29 + 1;
      v27 = *&v28[2 * v29 + 2];
    }

    else
    {
      v26 = sub_143C034(*(a3 + 72));
      v27 = sub_19593CC(a3 + 72, v26);
    }

    sub_F22CE0(v24, v27);
    v24 += 43;
  }
}

void sub_F251E0(void **a1, uint64_t a2, uint64_t a3)
{
  sub_F1E134(a2, &__p);
  *(a3 + 40) |= 1u;
  v6 = *(a3 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA30((a3 + 48), &__p, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 880) != *(a2 + 888))
  {
    v8 = sub_3AFC64(*a1);
    *(a3 + 40) |= 4u;
    v9 = *(a3 + 64);
    if (!v9)
    {
      v10 = v8;
      v11 = *(a3 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v9 = sub_1435E00(v12);
      *(a3 + 64) = v9;
      v8 = v10;
    }

    sub_F22924(v8, (a2 + 880), v9);
  }

  if (sub_9C1704((a2 + 32)))
  {
    *(a3 + 40) |= 2u;
    v13 = *(a3 + 56);
    if (!v13)
    {
      v14 = *(a3 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BB45C(v15);
      *(a3 + 56) = v13;
    }

    sub_F223CC(a2 + 32, v13);
  }

  if ((vmaxv_u16(vmovn_s32(vceqq_s32(*(a2 + 904), xmmword_22A74C0))) & 1) == 0 && *(a2 + 920) != -1)
  {
    v16 = sub_3AFC64(*a1);
    *(a3 + 40) |= 8u;
    v17 = *(a3 + 72);
    if (!v17)
    {
      v18 = v16;
      v19 = *(a3 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v17 = sub_1435F28(v20);
      *(a3 + 72) = v17;
      v16 = v18;
    }

    sub_F229F4(v16, a2 + 904, v17);
  }

  if (*(a2 + 928) != *(a2 + 936))
  {
    *(a3 + 40) |= 0x10u;
    v21 = *(a3 + 80);
    if (!v21)
    {
      v22 = *(a3 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_143613C(v23);
      *(a3 + 80) = v21;
    }

    sub_F238E8((a2 + 928), v21);
  }
}

void sub_F253CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F253E8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF560 = 0u;
  *algn_27BF570 = 0u;
  dword_27BF580 = 1065353216;
  sub_3A9A34(&xmmword_27BF560, v0);
  sub_3A9A34(&xmmword_27BF560, v3);
  sub_3A9A34(&xmmword_27BF560, __p);
  sub_3A9A34(&xmmword_27BF560, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF538 = 0;
    qword_27BF540 = 0;
    qword_27BF530 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F25630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF548)
  {
    qword_27BF550 = qword_27BF548;
    operator delete(qword_27BF548);
  }

  _Unwind_Resume(exception_object);
}

void sub_F256DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3AFEE8(a1);
  v7 = sub_2C939C(v6, 1u, 0);
  if (!v7 || (v8 = &v7[-*v7], *v8 < 0xDu) || (v9 = *(v8 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v30 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 >= 5u && (v12 = *(v11 + 2)) != 0)
  {
    v13 = &v10[v12];
    v14 = *v13;
    v15 = *&v13[v14];
    if (v15 >= 0x17)
    {
      operator new();
    }

    v33 = *&v13[v14];
    if (v15)
    {
      memcpy(&__dst, &v13[v14 + 4], v15);
    }

    p_dst = (&__dst + v15);
  }

  else
  {
    v33 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  *(a3 + 40) |= 2u;
  v17 = *(a3 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA30((a3 + 80), &__dst, v18);
  if (v33 < 0)
  {
    operator delete(__dst);
  }

  v19 = sub_3B6890(a1);
  *(a3 + 40) |= 8u;
  v20 = *(a3 + 96);
  if (!v20)
  {
    v21 = v19;
    v22 = *(a3 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v20 = sub_14BD794(v23);
    *(a3 + 96) = v20;
    v19 = v21;
  }

  sub_EC8164(v19, &__dst);
  sub_1491894(v20, &__dst);
  sub_14913C4(&__dst);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  if (v24)
  {
    *(a3 + 40) |= 1u;
    v25 = *(a3 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a3 + 72), a2, v26);
  }

  else
  {
    sub_58568(v31);
    sub_585EC(v31, &__dst);
    *(a3 + 40) |= 1u;
    v27 = *(a3 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA30((a3 + 72), &__dst, v28);
    if (v33 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_F25968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2599C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BF588 = 0u;
  unk_27BF598 = 0u;
  dword_27BF5A8 = 1065353216;
  sub_3A9A34(&xmmword_27BF588, v0);
  sub_3A9A34(&xmmword_27BF588, v3);
  sub_3A9A34(&xmmword_27BF588, __p);
  sub_3A9A34(&xmmword_27BF588, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_F25B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BF588);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_F25BE4(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  v5 = v4[1];
  *(a1 + 96) = *v4;
  *(a1 + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v4 + 2, 0xF18uLL);
  v6 = v4[485];
  *(a1 + 3976) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = sub_3B2794(a2);
  v8 = v7[1];
  *(a1 + 3984) = *v7;
  *(a1 + 3992) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v7 + 2, 0xF18uLL);
  v9 = v7[485];
  *(a1 + 7864) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v7[486];
  v10 = v7[487];
  *(a1 + 7880) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v7 + 488, 0xF10uLL);
  operator new();
}

void sub_F25E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void *sub_F25F04(void *result)
{
  v1 = result[487];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[485];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

uint64_t sub_F26020(uint64_t a1)
{
  sub_528AB4(a1 + 11976);
  v2 = *(a1 + 7880);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 7864);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 3992);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 3976);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 104);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    do
    {
      v12 = *v7;
      v13 = v7[4];
      if (v13)
      {
        v7[5] = v13;
        operator delete(v13);
      }

      operator delete(v7);
      v7 = v12;
    }

    while (v12);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

void sub_F26224(uint64_t *a1, void *a2)
{
  memset(v27, 0, 24);
  v3 = a1[1] - *a1;
  if (v3)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v3 >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a1;
  v5 = a1[1];
  for (i = v27; v4 != v5; v4 += 24)
  {
    v6 = *(v4 + 8);
    v7.i64[0] = v6;
    v7.i64[1] = HIDWORD(v6);
    *v23 = vcvtq_f64_u64(v7);
    sub_3AB74(&i, v23);
  }

  v26 = 1;
  i = 0;
  v25 = 0uLL;
  v8 = a2[1] - *a2;
  if (v8)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v8 >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = v25;
    do
    {
      v12.i64[0] = *v9;
      v12.i64[1] = HIDWORD(*v9);
      v13 = vcvtq_f64_u64(v12);
      if (v11 < *(&v25 + 1))
      {
        *v11++ = v13;
      }

      else
      {
        v14 = i;
        v15 = v11 - i;
        v16 = (v11 - i) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          sub_1794();
        }

        v18 = *(&v25 + 1) - i;
        if ((*(&v25 + 1) - i) >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v20 = (v11 - i) >> 4;
        v21 = (16 * v16);
        v22 = (16 * v16 - 16 * v20);
        *v21 = v13;
        v11 = v21 + 1;
        memcpy(v22, v14, v15);
        i = v22;
        v25 = v11;
        if (v14)
        {
          operator delete(v14);
        }
      }

      *&v25 = v11;
      v9 = (v9 + 12);
    }

    while (v9 != v10);
  }

  sub_3C188(v23, v27);
}

void sub_F26B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F26BF0(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_F26D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_F27EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F27F68(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 4);
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

  return *a1 + 16 * a2;
}

void sub_F28084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_F28164(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  v5 = v4[1];
  *(a1 + 96) = *v4;
  *(a1 + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v4 + 2, 0xF18uLL);
  v6 = v4[485];
  *(a1 + 3976) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = sub_3B2794(a2);
  v8 = v7[1];
  *(a1 + 3984) = *v7;
  *(a1 + 3992) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v7 + 2, 0xF18uLL);
  v9 = v7[485];
  *(a1 + 7864) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v7[486];
  v10 = v7[487];
  *(a1 + 7880) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v7 + 488, 0xF10uLL);
  operator new();
}

void sub_F283E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t *sub_F28488(uint64_t *a1, void *a2)
{
  if (*a1 == a1[1])
  {
    v4 = a2;
    v59 = sub_F28978(a1, a2);
    v58 = sub_4D1DC0(v4);
    if (v58)
    {
      v5 = 0;
      v57 = v4;
      do
      {
        v6 = sub_4D1F50(v4, v5);
        sub_2B7A20(a1[11], *(v6 + 32) & 0xFFFFFFFFFFFFFFLL, v61);
        sub_31BF20(v61, &__dst);
        if (__p)
        {
          v63 = __p;
          operator delete(__p);
        }

        if (!v5)
        {
          v7 = sub_4A7FF4(&__dst, 0, -1 - 0x5555555555555555 * ((v65 - __dst) >> 2), *v59 + 2, 1, 0x7FFFFFFFFFFFFFFFLL, 1);
          v8 = __dst;
          if (v7)
          {
            v9 = __dst + 12 * v7;
            v10 = v65 - v9;
            if (v65 != v9)
            {
              memmove(__dst, v9, v65 - v9);
            }

            v65 = v8 + v10;
            v8 = __dst;
          }

          v11 = *(v8 + 3);
          v12.i64[0] = *v8;
          v12.i64[1] = HIDWORD(*v8);
          v13 = vcvtq_f64_u64(v12);
          v12.i64[0] = v11;
          v12.i64[1] = HIDWORD(v11);
          v14 = vsubq_f64(vcvtq_f64_u64(v12), v13);
          v15 = vmulq_f64(v14, v14);
          v16 = vaddvq_f64(v15);
          if (v16 == 0.0)
          {
            goto LABEL_17;
          }

          if (v16 <= 0.0)
          {
            v16 = -v16;
          }

          if (v16 < 2.22044605e-16)
          {
LABEL_17:
            v17 = 0.0;
          }

          else
          {
            v54 = *(*v59 + 1);
            v55.i64[0] = v54;
            v55.i64[1] = HIDWORD(v54);
            v56 = vmulq_f64(v14, vsubq_f64(vcvtq_f64_u64(v55), v13));
            *&v17 = *&vdivq_f64(vaddq_f64(v56, vdupq_laneq_s64(v56, 1)), vaddq_f64(v15, vdupq_laneq_s64(v15, 1)));
          }

          if (v17 <= 1.0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 1.0;
          }

          if (v17 >= 0.0)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0.0;
          }

          v20 = sub_6EFC0(v8, v8 + 3, v19);
          v21 = __dst;
          *__dst = v20;
          v21[2] = v22;
        }

        if (v5 + 1 == sub_4D1DC0(v4))
        {
          v23 = sub_4A7FF4(&__dst, 0, -1 - 0x5555555555555555 * ((v65 - __dst) >> 2), v59[1] - 4, 1, 0x7FFFFFFFFFFFFFFFLL, 1);
          if (__dst + 12 * v23 + 24 != v65)
          {
            v65 = __dst + 12 * v23 + 24;
          }

          v24 = (__dst + 12 * v23);
          v25 = *(v24 + 3);
          v26.i64[0] = *v24;
          v26.i64[1] = HIDWORD(*v24);
          v27 = vcvtq_f64_u64(v26);
          v26.i64[0] = v25;
          v26.i64[1] = HIDWORD(v25);
          v28 = vsubq_f64(vcvtq_f64_u64(v26), v27);
          v29 = vmulq_f64(v28, v28);
          v30 = vaddvq_f64(v29);
          if (v30 == 0.0)
          {
            goto LABEL_32;
          }

          if (v30 <= 0.0)
          {
            v30 = -v30;
          }

          if (v30 < 2.22044605e-16)
          {
LABEL_32:
            v31 = 0.0;
          }

          else
          {
            v51 = *(v59[1] - 2);
            v52.i64[0] = v51;
            v52.i64[1] = HIDWORD(v51);
            v53 = vmulq_f64(v28, vsubq_f64(vcvtq_f64_u64(v52), v27));
            *&v31 = *&vdivq_f64(vaddq_f64(v53, vdupq_laneq_s64(v53, 1)), vaddq_f64(v29, vdupq_laneq_s64(v29, 1)));
          }

          if (v31 <= 1.0)
          {
            v32 = v31;
          }

          else
          {
            v32 = 1.0;
          }

          if (v31 >= 0.0)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          v34 = sub_6EFC0(v24, v24 + 3, v33);
          v35 = __dst + 12 * v23 + 12;
          *v35 = v34;
          *(v35 + 2) = v36;
        }

        v60 = v5 + 1;
        v38 = __dst;
        v37 = v65;
        if (__dst != v65)
        {
          v39 = a1[1];
          do
          {
            v41 = a1[2];
            if (v39 < v41)
            {
              *v39 = v5;
              v40 = *v38;
              *(v39 + 16) = *(v38 + 2);
              *(v39 + 8) = v40;
              v39 += 24;
            }

            else
            {
              v42 = *a1;
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a1) >> 3);
              v44 = v43 + 1;
              if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 3);
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0x555555555555555)
              {
                v46 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                if (v46 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v47 = v39;
              v48 = 8 * ((v39 - *a1) >> 3);
              *v48 = v5;
              v49 = *v38;
              *(v48 + 16) = *(v38 + 2);
              *(v48 + 8) = v49;
              v39 = 24 * v43 + 24;
              v50 = 24 * v43 - (v47 - v42);
              memcpy((v48 - (v47 - v42)), v42, v47 - v42);
              *a1 = v50;
              a1[1] = v39;
              a1[2] = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            a1[1] = v39;
            v38 += 12;
          }

          while (v38 != v37);
          v38 = __dst;
          v4 = v57;
        }

        if (v38)
        {
          v65 = v38;
          operator delete(v38);
        }

        ++v5;
      }

      while (v60 != v58);
    }
  }

  return a1;
}

void sub_F2892C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    v21 = a1;
    operator delete(__p);
    a1 = v21;
  }

  _Unwind_Resume(a1);
}

void **sub_F28978(void *a1, void *a2)
{
  v21 = (a1 + 3);
  if (a1[3] == a1[4])
  {
    v19 = sub_4D1DC0(a2);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        sub_69D1C4(a2, i, __p);
        sub_7495D4(__p, a1[11], &v23);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v6 = v23;
        v5 = v24;
        if (v23 != v24)
        {
          v7 = a1[4];
          do
          {
            while (1)
            {
              v9 = a1[5];
              if (v7 >= v9)
              {
                break;
              }

              *v7 = i;
              v8 = *v6;
              *(v7 + 16) = v6[2];
              *(v7 + 8) = v8;
              v7 += 24;
              a1[4] = v7;
              v6 += 3;
              if (v6 == v5)
              {
                goto LABEL_24;
              }
            }

            v10 = *v21;
            v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v21) >> 3);
            v12 = v11 + 1;
            if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x555555555555555)
            {
              v14 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              if (v14 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v15 = v7;
            v16 = 8 * ((v7 - *v21) >> 3);
            *v16 = i;
            v17 = *v6;
            *(v16 + 16) = v6[2];
            *(v16 + 8) = v17;
            v7 = 24 * v11 + 24;
            v18 = 24 * v11 - (v15 - v10);
            memcpy((v16 - (v15 - v10)), v10, v15 - v10);
            a1[3] = v18;
            a1[4] = v7;
            a1[5] = 0;
            if (v10)
            {
              operator delete(v10);
            }

            a1[4] = v7;
            v6 += 3;
          }

          while (v6 != v5);
LABEL_24:
          v6 = v23;
        }

        if (v6)
        {
          v24 = v6;
          operator delete(v6);
        }
      }
    }
  }

  return v21;
}

void sub_F28B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F28BD0()
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F29860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  v63 = *(v61 - 184);
  if (v63)
  {
    *(v61 - 176) = v63;
    operator delete(v63);
  }

  _Unwind_Resume(exception_object);
}

void sub_F29A88(uint64_t *a1, void *a2)
{
  v4 = sub_F28488(a1, a2);
  memset(v51, 0, sizeof(v51));
  v44 = a2;
  v5 = sub_4D1DC0(a2);
  if (v5)
  {
    sub_F3205C(v51, v5);
  }

  v6 = sub_F28978(a1, a2);
  v7 = v6[1];
  v8 = *v6 + 24;
  if (*v6 != v7 && v8 != v7)
  {
    do
    {
      v39 = *(v8 - 24);
      if (v39 != *v8)
      {
        v40 = v51[0] + 24 * v39;
        v41 = *(v8 - 16);
        *(v40 + 20) = *(v8 - 8);
        *(v40 + 12) = v41;
        v42 = *(v8 + 8);
        v43 = v51[0] + 24 * *v8;
        *(v43 + 8) = *(v8 + 16);
        *v43 = v42;
      }

      v8 += 24;
    }

    while (v8 != v7);
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  *v45 = 0u;
  *v46 = 0u;
  v47 = 1065353216;
  v10 = sub_F28978(a1, a2);
  v11 = v10[1];
  if (*v10 != v11)
  {
    v12 = (*v10 + 8);
    do
    {
      v16 = v48;
      v15 = v49;
      if (v48 == v49 || *(v49 - 12) != *v12 || *(v49 - 8) != v12[1])
      {
        if (v49 >= v50)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 2);
          v20 = v19 + 1;
          if (v19 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v50 - v48) >> 2) > v20)
          {
            v20 = 0x5555555555555556 * ((v50 - v48) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v50 - v48) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v21 = 0x1555555555555555;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (v21 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v22 = 4 * ((v49 - v48) >> 2);
          v23 = *v12;
          *(v22 + 8) = v12[2];
          *v22 = v23;
          v18 = 12 * v19 + 12;
          v24 = 12 * v19 - (v15 - v16);
          memcpy((v22 - (v15 - v16)), v16, v15 - v16);
          v48 = v24;
          v49 = v18;
          v50 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          v17 = *v12;
          *(v49 + 8) = v12[2];
          *v15 = v17;
          v18 = (v15 + 12);
        }

        v49 = v18;
      }

      v25 = *(v12 - 1);
      v26 = (v51[0] + 24 * v25);
      if (!v25 || (v27 = v26[1], v28 = v12[1], v29 = exp(((v28 >> 1) + (v27 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265), v30 = atan((v29 - 1.0 / v29) * 0.5), v31 = cos(v30 * 57.2957795 / 180.0 * 3.14159265), v32 = *v26 - *v12, sqrt(((v27 - v28) * (v27 - v28) + v32 * v32)) / 100.0 * 100.0 * (v31 * 0.00932288077) >= 1.0))
      {
        if (v25 + 1 >= sub_4D1DC0(v44) || (v33 = v12[1], v34 = v26[4], v35 = exp(((v34 >> 1) + (v33 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265), v36 = atan((v35 - 1.0 / v35) * 0.5), v37 = cos(v36 * 57.2957795 / 180.0 * 3.14159265), v38 = *v12 - v26[3], sqrt(((v33 - v34) * (v33 - v34) + v38 * v38)) / 100.0 * 100.0 * (v37 * 0.00932288077) >= 1.0))
        {
          v13 = *(v12 - 1);
          sub_F3354C(v45, v12)[4] = v13;
        }
      }

      v14 = v12 + 4;
      v12 += 6;
    }

    while (v14 != v11);
  }

  sub_F26224(v4, &v48);
}

void sub_F2A3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_39AFC(&a21);
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
    sub_11BD8(&a29);
    v31 = *(v29 - 192);
    if (!v31)
    {
LABEL_5:
      v32 = *(v29 - 168);
      if (!v32)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_11BD8(&a29);
    v31 = *(v29 - 192);
    if (!v31)
    {
      goto LABEL_5;
    }
  }

  *(v29 - 184) = v31;
  operator delete(v31);
  v32 = *(v29 - 168);
  if (!v32)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v29 - 160) = v32;
  operator delete(v32);
  _Unwind_Resume(a1);
}

void sub_F2A53C()
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F2AC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2ACC0(void *a1, void *a2)
{
  *v209 = 0u;
  *v210 = 0u;
  v211 = 1065353216;
  *v206 = 0u;
  *v207 = 0u;
  v208 = 1065353216;
  v189 = sub_4D1DC0(a2);
  if (v189)
  {
    v2 = 0;
    while (1)
    {
      v192 = v2;
      v3 = sub_4D1F50(a2, v2);
      v4 = *(v3 + 32);
      LODWORD(v194) = v4;
      BYTE6(v194) = BYTE6(v4);
      WORD2(v194) = WORD2(v4);
      if (sub_4727F8(v206, &v194))
      {
        break;
      }

      LODWORD(v213) = v194;
      WORD2(v213) = WORD2(v194);
      BYTE6(v213) = (v194 & 0xFF000000000000) == 0;
      if (sub_4727F8(v206, &v213))
      {
        break;
      }

LABEL_132:
      sub_30D080(v206, &v194);
      v2 = v192 + 1;
      if (v192 + 1 == v189)
      {
        goto LABEL_133;
      }
    }

    sub_2B7A20(a1[11], *(v3 + 32) & 0xFFFFFFFFFFFFFFLL, &v203);
    sub_31C60C(&v203, &v213);
    v5 = *__p;
    if (v205)
    {
      if (*__p == *&__p[8])
      {
        v6 = 0;
      }

      else
      {
        v6 = -1;
      }

      v193 = v6;
      LODWORD(v7) = v6;
      v8 = v221;
      if (v220 != v6)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v8 == v193)
      {
        goto LABEL_130;
      }

      goto LABEL_16;
    }

    if (*__p == *&__p[8])
    {
      v193 = 0;
      LODWORD(v7) = 0;
      v8 = v221;
      if (!v220)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = *(*&__p[8] - 8);
      v10 = sub_2B4D24(v203, v9, 0);
      v11 = &v10[*&v10[-*v10 + 4]];
      v12 = &v11[4 * HIDWORD(v9) + *v11];
      v13 = (v12 + 4 + *(v12 + 4));
      v5 = *__p;
      v7 = (*&__p[8] - *__p) >> 3;
      v14 = (v13 + *(v13 - *v13 + 6));
      v193 = *(v14 + *v14);
      v8 = v221;
      if (v220 == v7)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v15 = v216;
    while (1)
    {
      while (1)
      {
        v16 = &v15[v8];
        v17 = *(v16 + 2);
        v18 = *(v16 + 3);
        v19 = sub_57A90(v218);
        v20 = v218 & ~(-1 << (v19 & 0xFE));
        v21 = sub_581D8(v20);
        v22 = sub_581D8(v20 >> 1);
        v23 = 1 << -(v19 >> 1);
        if (v19 < 2)
        {
          v23 = -2;
        }

        LODWORD(v24) = v22 * v23 + 4 * v18;
        v24 = v24 >= 0xFFFFFFFE ? 4294967294 : v24;
        v201 = (v21 * v23 + 4 * v17) | (v24 << 32);
        *v202 = 0x7FFFFFFF;
        sub_C2DBE8(v209, &v201);
        v25 = v221;
        if (!v222)
        {
          break;
        }

        v8 = --v221;
        v15 = v216;
        if ((v25 - 1) >= *v216)
        {
          v28 = *v214;
          v36 = v214[1] - *v214;
          v30 = --v220;
          if (v220 < (v36 >> 3))
          {
            goto LABEL_40;
          }

          goto LABEL_17;
        }

        v26 = &v216[v25 + 1];
        v27 = &v216[v8 + 1];
        if (*v26 == *v27 && v26[1] == v27[1])
        {
          v28 = *v214;
          v29 = v214[1] - *v214;
          if (*v216 != 2 || v29 != 8)
          {
            v8 = v25 - 2;
            v30 = --v220;
            v221 = v8;
            if (v220 < (v29 >> 3))
            {
              while (1)
              {
LABEL_40:
                v37 = *(v28 + 8 * v30);
                v218 = v37;
                v38 = v213;
                LODWORD(v195) = v37;
                v212 = 0;
                v197 = &v212;
                *v198 = &v195;
                v39 = *(v213 + 3856) + 1;
                *(v213 + 3856) = v39;
                if (!*v38)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v199 = sub_7FCF0(1u);
                  *v200 = v169;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
                  if (v202[15] >= 0)
                  {
                    v170 = &v201;
                  }

                  else
                  {
                    v170 = v201;
                  }

                  if (v202[15] >= 0)
                  {
                    v171 = v202[15];
                  }

                  else
                  {
                    v171 = *v202;
                  }

                  v172 = sub_2D390(exception, v170, v171);
                }

                if (*(v38 + 112) == v37)
                {
                  ++*(v38 + 3864);
                  *(v38 + 120) = v39;
                  v40 = *(v38 + 128);
                  if (!v40)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_63;
                }

                v41 = v38 + 136;
                if (*(v38 + 136) == v37)
                {
                  goto LABEL_45;
                }

                if (*(v38 + 160) == v37)
                {
                  break;
                }

                v41 = v38 + 184;
                if (*(v38 + 184) == v37)
                {
LABEL_45:
                  ++*(v38 + 3864);
                  *(v41 + 8) = v39;
                  v40 = *(v41 + 16);
                  if (!v40)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_63;
                }

                v42 = *(v38 + 168);
                v43 = *(v38 + 144);
                v44 = *(v38 + 120);
                v45 = *(v38 + 192);
                v40 = sub_2D52A4(*v38, 1, v37, 1);
                if (v44 >= v39)
                {
                  v46 = v39;
                }

                else
                {
                  v46 = v44;
                }

                v47 = v43 >= v46;
                if (v43 < v46)
                {
                  v46 = v43;
                }

                v48 = 4 * (v44 < v39);
                if (!v47)
                {
                  v48 = 5;
                }

                if (v42 < v46)
                {
                  v48 = 6;
                  v46 = v42;
                }

                if (v45 < v46)
                {
                  v48 = 7;
                }

                v49 = v38 + 16 + 24 * v48;
                *v49 = v195;
                *(v49 + 8) = *(v38 + 3856);
                *(v49 + 16) = v40;
                if (v40)
                {
                  goto LABEL_63;
                }

                sub_2B572C(&v197);
                v50 = 0;
                v51 = (&loc_1120530 + 1);
                if (*(&loc_1120530 + 1) < 7u)
                {
LABEL_69:
                  v219 = 0;
                  v53 = (v50 - *v50);
                  if (*v53 < 5u)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

LABEL_64:
                v52 = v51[3];
                if (v52)
                {
                  LODWORD(v52) = *(v50 + v52);
                }

                v219 = v52;
                v53 = (v50 - *v50);
                if (*v53 < 5u)
                {
LABEL_72:
                  v55 = 0;
                  goto LABEL_73;
                }

LABEL_70:
                v54 = v53[2];
                if (!v54)
                {
                  goto LABEL_72;
                }

                v55 = v50 + v54 + *(v50 + v54);
LABEL_73:
                v56 = &v55[4 * HIDWORD(v37) + 4 + *&v55[4 * HIDWORD(v37) + 4]];
                v215 = v56;
                v57 = &v56[-*v56];
                v58 = *v57;
                v15 = *(v57 + 3);
                if (*(v57 + 3))
                {
                  v15 = (v15 + v56 + *(v15 + v56));
                }

                v216 = v15;
                if (v58 >= 0xB && (v59 = *(v57 + 5)) != 0)
                {
                  v60 = &v56[v59 + *&v56[v59]];
                }

                else
                {
                  v60 = 0;
                }

                v217 = v60;
                v61 = *v15;
                v8 = *v15 - 2;
                v221 = v8;
                v62 = &v15[v61 - 1 + 1];
                v63 = &v15[v8 + 1];
                if (*v62 == *v63 && v62[1] == v63[1])
                {
                  v8 = v61 - 3;
                  v30 = --v220;
                  v221 = v8;
                  v28 = *v214;
                  if (v220 < ((v214[1] - *v214) >> 3))
                  {
                    continue;
                  }
                }

                goto LABEL_17;
              }

              ++*(v38 + 3864);
              *(v38 + 168) = v39;
              v40 = *(v38 + 176);
              if (!v40)
              {
LABEL_234:
                v173 = __cxa_allocate_exception(0x40uLL);
                v199 = sub_7FCF0(1u);
                *v200 = v174;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
                if (v202[15] >= 0)
                {
                  v175 = &v201;
                }

                else
                {
                  v175 = v201;
                }

                if (v202[15] >= 0)
                {
                  v176 = v202[15];
                }

                else
                {
                  v176 = *v202;
                }

                v177 = sub_2D390(v173, v175, v176);
              }

LABEL_63:
              v50 = (v40 + *v40);
              v51 = (v50 - *v50);
              if (*v51 < 7u)
              {
                goto LABEL_69;
              }

              goto LABEL_64;
            }
          }
        }

LABEL_17:
        if (v220 == v7)
        {
LABEL_18:
          if (v8 == v193)
          {
            v5 = *__p;
LABEL_130:
            if (v5)
            {
              *&__p[8] = v5;
              operator delete(v5);
            }

            goto LABEL_132;
          }
        }
      }

      v8 = ++v221;
      v15 = v216;
      if ((v25 + 1) >= *v216)
      {
        v33 = *v214;
        v64 = v214[1] - *v214;
        v35 = ++v220;
        if (v220 < (v64 >> 3))
        {
          goto LABEL_84;
        }

        goto LABEL_17;
      }

      v31 = &v216[v25 + 1];
      v32 = &v216[v8 + 1];
      if (*v31 != *v32)
      {
        goto LABEL_17;
      }

      if (v31[1] != v32[1])
      {
        goto LABEL_17;
      }

      v33 = *v214;
      v34 = v214[1] - *v214;
      if (*v216 == 2 && v34 == 8)
      {
        goto LABEL_17;
      }

      v8 = v25 + 2;
      v35 = ++v220;
      v221 = v8;
      if (v220 >= (v34 >> 3))
      {
        goto LABEL_17;
      }

      while (1)
      {
LABEL_84:
        v65 = *(v33 + 8 * v35);
        v218 = v65;
        v66 = v213;
        LODWORD(v195) = v65;
        v212 = 0;
        v197 = &v212;
        *v198 = &v195;
        v67 = *(v213 + 3856) + 1;
        *(v213 + 3856) = v67;
        if (!*v66)
        {
          v178 = __cxa_allocate_exception(0x40uLL);
          v199 = sub_7FCF0(1u);
          *v200 = v179;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
          if (v202[15] >= 0)
          {
            v180 = &v201;
          }

          else
          {
            v180 = v201;
          }

          if (v202[15] >= 0)
          {
            v181 = v202[15];
          }

          else
          {
            v181 = *v202;
          }

          v182 = sub_2D390(v178, v180, v181);
        }

        if (*(v66 + 112) == v65)
        {
          ++*(v66 + 3864);
          *(v66 + 120) = v67;
          v68 = *(v66 + 128);
          if (!v68)
          {
            goto LABEL_248;
          }

          goto LABEL_107;
        }

        v69 = v66 + 136;
        if (*(v66 + 136) == v65)
        {
          goto LABEL_89;
        }

        if (*(v66 + 160) == v65)
        {
          ++*(v66 + 3864);
          *(v66 + 168) = v67;
          v68 = *(v66 + 176);
          if (!v68)
          {
LABEL_248:
            v183 = __cxa_allocate_exception(0x40uLL);
            v199 = sub_7FCF0(1u);
            *v200 = v184;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
            if (v202[15] >= 0)
            {
              v185 = &v201;
            }

            else
            {
              v185 = v201;
            }

            if (v202[15] >= 0)
            {
              v186 = v202[15];
            }

            else
            {
              v186 = *v202;
            }

            v187 = sub_2D390(v183, v185, v186);
          }

LABEL_107:
          v78 = (v68 + *v68);
          v79 = (v78 - *v78);
          if (*v79 < 7u)
          {
            goto LABEL_113;
          }

          goto LABEL_108;
        }

        v69 = v66 + 184;
        if (*(v66 + 184) == v65)
        {
LABEL_89:
          ++*(v66 + 3864);
          *(v69 + 8) = v67;
          v68 = *(v69 + 16);
          if (!v68)
          {
            goto LABEL_248;
          }

          goto LABEL_107;
        }

        v70 = *(v66 + 168);
        v71 = *(v66 + 144);
        v72 = *(v66 + 120);
        v73 = *(v66 + 192);
        v68 = sub_2D52A4(*v66, 1, v65, 1);
        if (v72 >= v67)
        {
          v74 = v67;
        }

        else
        {
          v74 = v72;
        }

        v75 = v71 >= v74;
        if (v71 < v74)
        {
          v74 = v71;
        }

        v76 = 4 * (v72 < v67);
        if (!v75)
        {
          v76 = 5;
        }

        if (v70 < v74)
        {
          v76 = 6;
          v74 = v70;
        }

        if (v73 < v74)
        {
          v76 = 7;
        }

        v77 = v66 + 16 + 24 * v76;
        *v77 = v195;
        *(v77 + 8) = *(v66 + 3856);
        *(v77 + 16) = v68;
        if (v68)
        {
          goto LABEL_107;
        }

        sub_2B572C(&v197);
        v78 = 0;
        v79 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_113:
          v219 = 0;
          v81 = (v78 - *v78);
          if (*v81 < 5u)
          {
            goto LABEL_116;
          }

          goto LABEL_114;
        }

LABEL_108:
        v80 = v79[3];
        if (v80)
        {
          LODWORD(v80) = *(v78 + v80);
        }

        v219 = v80;
        v81 = (v78 - *v78);
        if (*v81 < 5u)
        {
          goto LABEL_116;
        }

LABEL_114:
        v82 = v81[2];
        if (v82)
        {
          v83 = v78 + v82 + *(v78 + v82);
          goto LABEL_117;
        }

LABEL_116:
        v83 = 0;
LABEL_117:
        v84 = &v83[4 * HIDWORD(v65) + 4 + *&v83[4 * HIDWORD(v65) + 4]];
        v215 = v84;
        v85 = &v84[-*v84];
        v86 = *v85;
        v15 = *(v85 + 3);
        if (*(v85 + 3))
        {
          v15 = (v15 + v84 + *(v15 + v84));
        }

        v216 = v15;
        if (v86 >= 0xB && (v87 = *(v85 + 5)) != 0)
        {
          v88 = &v84[v87 + *&v84[v87]];
        }

        else
        {
          v88 = 0;
        }

        v217 = v88;
        v8 = 1;
        v221 = 1;
        if (*(v15 + 2) != *(v15 + 4))
        {
          goto LABEL_17;
        }

        if (*(v15 + 3) != *(v15 + 5))
        {
          break;
        }

        v8 = 2;
        v35 = ++v220;
        v221 = 2;
        v33 = *v214;
        if (v220 >= ((v214[1] - *v214) >> 3))
        {
          goto LABEL_17;
        }
      }

      v8 = 1;
      if (v220 == v7)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_133:
  v89 = sub_F28978(a1, a2);
  v90 = *v89;
  v91 = v89[1];
  v203 = v90;
  __p[4] = 0;
  __p[16] = 0;
  if (v90 != v91)
  {
    v92 = 0.5;
    while (1)
    {
      v93 = (v90 + 24);
      v201 = v90 + 24;
      *&v202[4] = *&__p[4];
      v94 = a1[1469] / 100.0;
      v199 = (v90 + 24);
      *&v200[4] = *&__p[4];
      if (v94 > 0.0 && v91 != v93)
      {
        break;
      }

LABEL_136:
      v90 += 24;
      v203 = v90;
      if (v90 == v91)
      {
        goto LABEL_218;
      }
    }

    v96 = 0.0;
    while (1)
    {
      v197 = (v93 + 24);
      *&v198[4] = *&v200[4];
      if (v91 != v93 + 24)
      {
        break;
      }

LABEL_143:
      v93 += 24;
      v199 = v93;
      if (v96 >= v94 || v93 == v91)
      {
        v90 = v203;
        goto LABEL_136;
      }
    }

    v98 = *(v93 + 1);
    v99 = *(v93 + 4);
    v100 = v200[16];
    *&v200[4] = v98;
    *&v200[12] = v99;
    if ((v200[16] & 1) == 0)
    {
      v100 = 1;
      v200[16] = 1;
    }

    v101 = *(v93 + 4);
    v102 = *(v93 + 10);
    v103 = v198[16];
    *&v198[4] = v101;
    *&v198[12] = v102;
    if ((v198[16] & 1) == 0)
    {
      v103 = 1;
      v198[16] = 1;
    }

    v104 = exp(((v101 >> 33) + (v98 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v105 = atan((v104 + -1.0 / v104) * v92);
    v106 = cos(v105 * 57.2957795 / 180.0 * 3.14159265);
    v195 = -1;
    v196 = 0x7FFFFFFF;
    v107 = *(v203 + 16);
    *&__p[4] = *(v203 + 8);
    *&__p[12] = v107;
    if ((__p[16] & 1) == 0)
    {
      __p[16] = 1;
    }

    v108 = *(v201 + 16);
    *&v202[4] = *(v201 + 8);
    *&v202[12] = v108;
    if (v202[16])
    {
      v109 = *(v93 + 4);
      *&v200[4] = *(v93 + 1);
      *&v200[12] = v109;
      if (v100)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v202[16] = 1;
      v148 = *(v93 + 4);
      *&v200[4] = *(v93 + 1);
      *&v200[12] = v148;
      if (v100)
      {
LABEL_156:
        v110 = *(v93 + 10);
        *&v198[4] = *(v93 + 4);
        *&v198[12] = v110;
        if (v103)
        {
          goto LABEL_158;
        }

        goto LABEL_157;
      }
    }

    v200[16] = 1;
    v149 = *(v93 + 10);
    *&v198[4] = *(v93 + 4);
    *&v198[12] = v149;
    if (v103)
    {
LABEL_158:
      if (sub_3B988(&__p[4], &v202[4], &v200[4], &v198[4], &v195))
      {
        v111 = *(v203 + 8);
        v112 = *(v203 + 16);
        *&__p[4] = v111;
        *&__p[12] = v112;
        if ((__p[16] & 1) == 0)
        {
          __p[16] = 1;
        }

        if (v195 != v111)
        {
          v113 = *(v201 + 8);
          v114 = *(v201 + 16);
          *&v202[4] = v113;
          *&v202[12] = v114;
          if ((v202[16] & 1) == 0)
          {
            v202[16] = 1;
          }

          if (v195 != v113)
          {
            v115 = *(v199 + 1);
            v116 = *(v199 + 4);
            *&v200[4] = v115;
            *&v200[12] = v116;
            if ((v200[16] & 1) == 0)
            {
              v200[16] = 1;
            }

            if (v195 != v115)
            {
              v117 = *(v197 + 1);
              v118 = v197[4];
              *&v198[4] = v117;
              *&v198[12] = v118;
              if ((v198[16] & 1) == 0)
              {
                v198[16] = 1;
              }

              if (v195 != v117)
              {
                v119 = HIDWORD(v195) >= 0xFFFFFFFE ? 4294967294 : HIDWORD(v195);
                v213 = v195 | (v119 << 32);
                LODWORD(v214) = 0x7FFFFFFF;
                if (!sub_48240(v209, &v213))
                {
                  v120 = *(v203 + 16);
                  v121 = __p[16];
                  *&__p[4] = *(v203 + 8);
                  *&__p[12] = v120;
                  if ((__p[16] & 1) == 0)
                  {
                    v121 = 1;
                    __p[16] = 1;
                  }

                  v122 = v201;
                  v123 = v202[16];
                  if (v120 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v124 = *(v201 + 16);
                  *&v202[4] = *(v201 + 8);
                  *&v202[12] = v124;
                  if ((v202[16] & 1) == 0)
                  {
                    v123 = 1;
                    v202[16] = 1;
                  }

                  if (v124 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v125 = *(v199 + 4);
                  v126 = v200[16];
                  *&v200[4] = *(v199 + 1);
                  *&v200[12] = v125;
                  if ((v200[16] & 1) == 0)
                  {
                    v126 = 1;
                    v200[16] = 1;
                  }

                  if (v125 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v127 = v197[4];
                  v128 = v198[16];
                  *&v198[4] = *(v197 + 1);
                  *&v198[12] = v127;
                  if ((v198[16] & 1) == 0)
                  {
                    v128 = 1;
                    v198[16] = 1;
                  }

                  if (v127 == 0x7FFFFFFF)
                  {
LABEL_187:
                    v129 = *(v201 + 8);
                    v130 = *(v201 + 16);
                    *&v202[4] = v129;
                    *&v202[12] = v130;
                    if ((v123 & 1) == 0)
                    {
                      v202[16] = 1;
                    }

LABEL_189:
                    v131 = HIDWORD(v195);
                    v188 = HIDWORD(v195) >> 1;
                    v132 = exp(((HIDWORD(v195) >> 1) + (v129 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                    v133 = atan((v132 + -1.0 / v132) * 0.5);
                    v134 = cos(v133 * 57.2957795 / 180.0 * 3.14159265);
                    v135 = sqrt(((v131 - HIDWORD(v129)) * (v131 - HIDWORD(v129)) + (v195 - v129) * (v195 - v129))) / 100.0 * 100.0 * (v134 * 0.00932288077) + 0.0;
                    v136 = v199;
                    if (v199 != v122)
                    {
                      do
                      {
                        v137 = *(v122 + 8);
                        v138 = HIDWORD(v137);
                        v139 = v137;
                        v140 = (v122 + 24);
                        v141 = *(v122 + 32);
                        v142 = exp(((v141 >> 33) + (v137 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                        v143 = atan((v142 + -1.0 / v142) * 0.5);
                        v135 = v135 + sqrt(((v138 - HIDWORD(v141)) * (v138 - HIDWORD(v141)) + (v139 - v141) * (v139 - v141))) / 100.0 * 100.0 * (cos(v143 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077);
                        v122 = v140;
                      }

                      while (v140 != v136);
                    }

                    v144 = *(v136 + 1);
                    v145 = *(v136 + 4);
                    *&v200[4] = v144;
                    *&v200[12] = v145;
                    if ((v200[16] & 1) == 0)
                    {
                      v200[16] = 1;
                    }

                    v146 = exp((v188 + (v144 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                    v147 = atan((v146 - 1.0 / v146) * 0.5);
                    cos(v147 * 57.2957795 / 180.0 * 3.14159265);
                    sub_685C24(4, 1.0);
                    sub_685C24(0, 0.0);
                    v213 = 0;
                    v214 = 0;
                    v215 = 0;
                    operator new();
                  }

                  v150 = *(v203 + 16);
                  *&__p[4] = *(v203 + 8);
                  *&__p[12] = v150;
                  if ((v121 & 1) == 0)
                  {
                    __p[16] = 1;
                  }

                  v151 = *(v201 + 16);
                  *&v202[4] = *(v201 + 8);
                  *&v202[12] = v151;
                  if ((v123 & 1) == 0)
                  {
                    v202[16] = 1;
                  }

                  v152 = v150 / 100.0;
                  v153 = v151 / 100.0;
                  if (v152 >= v153)
                  {
                    v154 = v151 / 100.0;
                  }

                  else
                  {
                    v154 = v150 / 100.0;
                  }

                  v155 = *(v199 + 4);
                  if (v152 < v153)
                  {
                    v152 = v151 / 100.0;
                  }

                  *&v200[4] = *(v199 + 1);
                  *&v200[12] = v155;
                  if ((v126 & 1) == 0)
                  {
                    v200[16] = 1;
                  }

                  v156 = v197[4];
                  *&v198[4] = *(v197 + 1);
                  *&v198[12] = v156;
                  if ((v128 & 1) == 0)
                  {
                    v198[16] = 1;
                  }

                  v157 = v155 / 100.0;
                  v158 = v156 / 100.0;
                  if (v157 >= v158)
                  {
                    v159 = v156 / 100.0;
                  }

                  else
                  {
                    v159 = v155 / 100.0;
                  }

                  if (v157 < v158)
                  {
                    v157 = v156 / 100.0;
                  }

                  v160 = a1[1470] / 100.0;
                  if (v152 + v160 >= v159 && v160 + v157 >= v154)
                  {
                    v129 = *(v201 + 8);
                    v161 = *(v201 + 16);
                    *&v202[4] = v129;
                    *&v202[12] = v161;
                    goto LABEL_189;
                  }
                }
              }
            }
          }
        }
      }

      v96 = v96 + sqrt(((HIDWORD(v98) - HIDWORD(v101)) * (HIDWORD(v98) - HIDWORD(v101)) + (v98 - v101) * (v98 - v101))) / 100.0 * 100.0 * (v106 * 0.00932288077);
      v93 = v199;
      v92 = 0.5;
      goto LABEL_143;
    }

LABEL_157:
    v198[16] = 1;
    goto LABEL_158;
  }

LABEL_218:
  v162 = v207[0];
  if (v207[0])
  {
    do
    {
      v163 = *v162;
      operator delete(v162);
      v162 = v163;
    }

    while (v163);
  }

  v164 = v206[0];
  v206[0] = 0;
  if (v164)
  {
    operator delete(v164);
  }

  v165 = v210[0];
  if (v210[0])
  {
    do
    {
      v166 = *v165;
      operator delete(v165);
      v165 = v166;
    }

    while (v166);
  }

  v167 = v209[0];
  v209[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }
}