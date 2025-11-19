void sub_19D339F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 128);
  if (v29)
  {
    *(v27 - 120) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t sub_19D33A014(uint64_t a1, int a2, float32x4_t **a3, float32x4_t **a4, float32x4_t **a5, void *a6, uint64_t *a7, uint64_t a8, int a9, int a10, char a11)
{
  if (a2)
  {
    sub_19D41C548(545);
  }

  v15 = (a1 + 552);
  if (!*(a1 + 552))
  {
    operator new[]();
  }

  sub_19D32D178(v15, a6, a7, 3 * a9, a10, 0.0);
  if (!a11)
  {
    if (a9 < 1)
    {
      return result;
    }

    v39 = 0;
    v40 = *v15;
    v41 = *a3;
    if (a9 < 8)
    {
      goto LABEL_24;
    }

    if ((v41 - v40) < 0x20)
    {
      goto LABEL_24;
    }

    v39 = a9 & 0x7FFFFFF8;
    v42 = v40 + 1;
    v43 = v41 + 1;
    v44 = v39;
    do
    {
      result = v42[-1];
      v45 = *v42;
      v43[-1] = result;
      *v43 = v45;
      v42 += 2;
      v43 += 2;
      v44 -= 8;
    }

    while (v44);
    if (v39 != a9)
    {
LABEL_24:
      v46 = a9 - v39;
      v47 = 4 * v39;
      v48 = (v41 + v47);
      v49 = (v40 + v47);
      do
      {
        v50 = *v49++;
        *v48++ = v50;
        --v46;
      }

      while (v46);
    }

    v51 = *a4;
    if (a9 >= 8 && (v52 = (v40 + 4 * a9), (v51 - v52) >= 0x20))
    {
      v53 = a9 & 0x7FFFFFF8;
      v143 = v52 + 1;
      v144 = v51 + 1;
      v145 = v53;
      do
      {
        result = v143[-1];
        v146 = *v143;
        v144[-1] = result;
        *v144 = v146;
        v143 += 2;
        v144 += 2;
        v145 -= 8;
      }

      while (v145);
      if (v53 == a9)
      {
LABEL_31:
        v59 = (2 * a9);
        v60 = *a5;
        if (a9 >= 8 && (v61 = (v40 + 4 * v59), (v60 - v61) >= 0x20))
        {
          v62 = a9 & 0x7FFFFFF8;
          v147 = v61 + 1;
          v148 = v60 + 1;
          v149 = v62;
          do
          {
            result = v147[-1];
            v150 = *v147;
            v148[-1] = result;
            *v148 = v150;
            v147 += 2;
            v148 += 2;
            v149 -= 8;
          }

          while (v149);
          if (v62 == a9)
          {
            return result;
          }
        }

        else
        {
          v62 = 0;
        }

        v63 = a9 - v62;
        v64 = v62;
        v65 = (v60 + v64 * 4);
        v66 = &v40->i32[v59 + v64];
        do
        {
          v67 = *v66++;
          result.i32[0] = v67;
          *v65++ = v67;
          --v63;
        }

        while (v63);
        return result;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = a9 - v53;
    v55 = v53;
    v56 = (v51 + v55 * 4);
    v57 = &v40->i32[a9 + v55];
    do
    {
      v58 = *v57++;
      *v56++ = v58;
      --v54;
    }

    while (v54);
    goto LABEL_31;
  }

  v17 = (a1 + 536);
  if (a9 <= 0)
  {
    sub_19D31ED5C(v17, "outvec0/gzx", a9);
    v37 = 0;
    v30 = -(-a9 >> 3);
    v38 = -8 * (-a9 >> 3);
    if (v38 >= a9)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v18 = 0;
    v19 = *v15;
    v20 = *v17;
    if (a9 < 8)
    {
      goto LABEL_11;
    }

    if ((v20 - v19) < 0x20)
    {
      goto LABEL_11;
    }

    v18 = a9 & 0x7FFFFFF8;
    v21 = &v19[1];
    f32 = v20[1].f32;
    v23 = v18;
    do
    {
      v24 = *v21;
      *(f32 - 1) = *(v21 - 1);
      *f32 = v24;
      v21 += 2;
      f32 += 2;
      v23 -= 8;
    }

    while (v23);
    if (v18 != a9)
    {
LABEL_11:
      v25 = a9 - v18;
      v26 = 4 * v18;
      v27 = (v20 + v26);
      v28 = (v19 + v26);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v25;
      }

      while (v25);
    }

    sub_19D31ED5C(v17, "outvec0/gzx", a9);
    v30 = a9 >> 3;
    if (a9 < 8)
    {
      v37 = 0;
      v38 = 8 * v30;
      if ((8 * v30) >= a9)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v31 = *a3;
      v32 = *v17;
      v33 = a9 >> 3;
      do
      {
        v34 = *v32;
        v35 = v32[1];
        v32 += 2;
        v36 = vaddq_f32(v31[1], v35);
        *v31 = vaddq_f32(*v31, v34);
        v31[1] = v36;
        v31 += 2;
        --v33;
      }

      while (v33);
      v37 = 1;
      v38 = 8 * v30;
      if ((8 * v30) >= a9)
      {
        goto LABEL_48;
      }
    }
  }

  v68 = *v17;
  v69 = *a3;
  v70 = v38;
  v71 = a9 - v38;
  if (v71 <= 7)
  {
    goto LABEL_46;
  }

  v72 = 4 * v38;
  if (v69 + v72 < &v68->f32[a9] && v68 + v72 < &v69->f32[a9])
  {
    goto LABEL_46;
  }

  v73 = v71 - (a9 & 7) + v38;
  v74 = v38 + (a9 & 7) - a9;
  v75 = v72 + 16;
  v76 = (v68 + v72 + 16);
  v77 = (v69 + v75);
  do
  {
    v78 = vaddq_f32(*v77, *v76);
    v77[-1] = vaddq_f32(v77[-1], v76[-1]);
    *v77 = v78;
    v76 += 2;
    v77 += 2;
    v74 += 8;
  }

  while (v74);
  v70 = v73;
  if ((a9 & 7) != 0)
  {
LABEL_46:
    v79 = a9 - v70;
    v80 = &v69->f32[v70];
    v81 = &v68->f32[v70];
    do
    {
      v82 = *v81++;
      *v80 = *v80 + v82;
      ++v80;
      --v79;
    }

    while (v79);
  }

LABEL_48:
  if (a9 < 1)
  {
    goto LABEL_54;
  }

  v83 = *v15;
  v84 = *v17;
  if (a9 < 8 || (v85 = v83->i64 + 4 * a9, v84 - v85 < 0x20))
  {
    v86 = 0;
LABEL_52:
    v87 = a9 - v86;
    v88 = v86;
    v89 = (v84 + v88 * 4);
    v90 = &v83->i32[a9 + v88];
    do
    {
      v91 = *v90++;
      *v89++ = v91;
      --v87;
    }

    while (v87);
    goto LABEL_54;
  }

  v86 = a9 & 0x7FFFFFF8;
  v151 = (v85 + 16);
  v152 = v84[1].f32;
  v153 = v86;
  do
  {
    v154 = *v151;
    *(v152 - 1) = *(v151 - 1);
    *v152 = v154;
    v151 += 2;
    v152 += 2;
    v153 -= 8;
  }

  while (v153);
  if (v86 != a9)
  {
    goto LABEL_52;
  }

LABEL_54:
  sub_19D31ED5C(v17, "outvec1/grx", a9);
  if (v37)
  {
    v92 = *a4;
    v93 = *v17;
    v94 = v30;
    do
    {
      v95 = *v93;
      v96 = v93[1];
      v93 += 2;
      v97 = vaddq_f32(v92[1], v96);
      *v92 = vaddq_f32(*v92, v95);
      v92[1] = v97;
      v92 += 2;
      --v94;
    }

    while (v94);
  }

  if (v38 < a9)
  {
    v98 = *v17;
    v99 = *a4;
    v100 = v38;
    v101 = a9 - v38;
    if (v101 <= 7)
    {
      goto LABEL_64;
    }

    v102 = 4 * v38;
    if (v99 + v102 < &v98->f32[a9] && v98 + v102 < &v99->f32[a9])
    {
      goto LABEL_64;
    }

    v103 = v101 - (a9 & 7) + v38;
    v104 = v38 + (a9 & 7) - a9;
    v105 = v102 + 16;
    v106 = (v98 + v102 + 16);
    v107 = (v99 + v105);
    do
    {
      v108 = vaddq_f32(*v107, *v106);
      v107[-1] = vaddq_f32(v107[-1], v106[-1]);
      *v107 = v108;
      v106 += 2;
      v107 += 2;
      v104 += 8;
    }

    while (v104);
    v100 = v103;
    if ((a9 & 7) != 0)
    {
LABEL_64:
      v109 = a9 - v100;
      v110 = &v99->f32[v100];
      v111 = &v98->f32[v100];
      do
      {
        v112 = *v111++;
        *v110 = *v110 + v112;
        ++v110;
        --v109;
      }

      while (v109);
    }
  }

  if (a9 < 1)
  {
    goto LABEL_72;
  }

  v113 = (2 * a9);
  v114 = *v15;
  v115 = *v17;
  if (a9 >= 8 && (v116 = v114->i64 + 4 * v113, v115 - v116 >= 0x20))
  {
    v117 = a9 & 0x7FFFFFF8;
    v155 = (v116 + 16);
    v156 = v115[1].f32;
    v157 = v117;
    do
    {
      v158 = *v155;
      *(v156 - 1) = *(v155 - 1);
      *v156 = v158;
      v155 += 2;
      v156 += 2;
      v157 -= 8;
    }

    while (v157);
    if (v117 == a9)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v117 = 0;
  }

  v118 = a9 - v117;
  v119 = v117;
  v120 = (v115 + v119 * 4);
  v121 = &v114->i32[v113 + v119];
  do
  {
    v122 = *v121++;
    *v120++ = v122;
    --v118;
  }

  while (v118);
LABEL_72:
  sub_19D31ED5C(v17, "outvec2/gox", a9);
  if (v37)
  {
    v123 = *a5;
    v124 = *v17;
    do
    {
      v125 = *v124;
      v126 = v124[1];
      v124 += 2;
      v127 = vaddq_f32(v123[1], v126);
      result = vaddq_f32(*v123, v125);
      *v123 = result;
      v123[1] = v127;
      v123 += 2;
      --v30;
    }

    while (v30);
  }

  if (v38 < a9)
  {
    v128 = *v17;
    v129 = *a5;
    v130 = v38;
    v131 = a9 - v38;
    if (v131 <= 7)
    {
      goto LABEL_82;
    }

    v132 = 4 * v38;
    if (v129 + v132 < &v128->f32[a9] && v128 + v132 < &v129->f32[a9])
    {
      goto LABEL_82;
    }

    v133 = v131 - (a9 & 7) + v38;
    v134 = v38 + (a9 & 7) - a9;
    v135 = v132 + 16;
    v136 = (v128 + v132 + 16);
    v137 = (v129 + v135);
    do
    {
      result = vaddq_f32(v137[-1], v136[-1]);
      v138 = vaddq_f32(*v137, *v136);
      v137[-1] = result;
      *v137 = v138;
      v136 += 2;
      v137 += 2;
      v134 += 8;
    }

    while (v134);
    v130 = v133;
    if ((a9 & 7) != 0)
    {
LABEL_82:
      v139 = a9 - v130;
      v140 = &v129->f32[v130];
      v141 = &v128->f32[v130];
      do
      {
        v142 = *v141++;
        result.f32[0] = *v140 + v142;
        *v140++ = result.f32[0];
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

void sub_19D33A794(uint64_t a1, int a2, unint64_t *a3, void *a4, uint64_t *a5, void *a6, int a7, int a8, char a9)
{
  if (a9)
  {
    v11 = (a1 + 536);
    if (a2)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v12 = a6[1];
      if (v12 != *a6)
      {
        if (((v12 - *a6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_32;
      }

      sub_19D32E8D8(v11, &__p, a5, a7, a8);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }

      v13 = a7 / 8;
      if (a7 < 8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_19D32D178((a1 + 536), a4, a5, a7, a8, 0.0);
      v13 = a7 / 8;
      if (a7 < 8)
      {
LABEL_19:
        v21 = 8 * v13;
        if (8 * v13 < a7)
        {
          v22 = *v11;
          v23 = *a3;
          v24 = v21;
          if ((a7 - v21) <= 7)
          {
            goto LABEL_26;
          }

          v25 = 4 * v21;
          if (v23 + v25 < v22 + 4 * a7 && v22 + v25 < v23 + 4 * a7)
          {
            goto LABEL_26;
          }

          v26 = v21 + (a7 & 7) - a7;
          v27 = v25 + 16;
          v28 = (v22 + v25 + 16);
          v29 = (v23 + v27);
          do
          {
            v30 = vaddq_f32(*v29, *v28);
            v29[-1] = vaddq_f32(v29[-1], v28[-1]);
            *v29 = v30;
            v28 += 2;
            v29 += 2;
            v26 += 8;
          }

          while (v26);
          v24 = a7 - (a7 & 7);
          if ((a7 & 7) != 0)
          {
LABEL_26:
            v31 = a7 - v24;
            v32 = (v23 + 4 * v24);
            v33 = (v22 + 4 * v24);
            do
            {
              v34 = *v33++;
              *v32 = *v32 + v34;
              ++v32;
              --v31;
            }

            while (v31);
          }
        }

        return;
      }
    }

    v15 = *a3;
    v16 = *v11;
    v17 = v13;
    do
    {
      v18 = *v16;
      v19 = v16[1];
      v16 += 2;
      v20 = vaddq_f32(v15[1], v19);
      *v15 = vaddq_f32(*v15, v18);
      v15[1] = v20;
      v15 += 2;
      --v17;
    }

    while (v17);
    goto LABEL_19;
  }

  if (a2)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v14 = a6[1];
    if (v14 != *a6)
    {
      if (((v14 - *a6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_32:
      sub_19D2AE2B4();
    }

    sub_19D32E8D8(a3, &v38, a5, a7, a8);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }
  }

  else
  {

    sub_19D32D178(a3, a4, a5, a7, a8, 0.0);
  }
}

void sub_19D33AA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D33AAB4(void *a1)
{
  *a1 = &unk_1F10B83E0;
  sub_19D337828(a1);
  v2 = a1[252];
  if (v2)
  {
    a1[253] = v2;
    operator delete(v2);
  }

  v3 = a1[249];
  if (v3)
  {
    a1[250] = v3;
    operator delete(v3);
  }

  sub_19D429384((a1 + 239));
  sub_19D429384((a1 + 230));
  sub_19D429384((a1 + 221));
  sub_19D429384((a1 + 212));
  sub_19D429384((a1 + 203));
  sub_19D429384((a1 + 194));
  sub_19D429384((a1 + 185));
  sub_19D429384((a1 + 176));
  sub_19D429384((a1 + 167));
  sub_19D429384((a1 + 158));
  sub_19D429384((a1 + 149));
  sub_19D308FC0(a1 + 119);
  sub_19D308FC0(a1 + 104);
  sub_19D308FC0(a1 + 89);
  v4 = a1[85];
  if (v4)
  {
    a1[86] = v4;
    operator delete(v4);
  }

  v5 = a1[82];
  if (v5)
  {
    a1[83] = v5;
    operator delete(v5);
  }

  v6 = a1[79];
  if (v6)
  {
    a1[80] = v6;
    operator delete(v6);
  }

  v7 = a1[76];
  if (v7)
  {
    a1[77] = v7;
    operator delete(v7);
  }

  v8 = a1[73];
  if (v8)
  {
    a1[74] = v8;
    operator delete(v8);
  }

  v9 = a1[70];
  if (v9)
  {
    a1[71] = v9;
    operator delete(v9);
  }

  v10 = a1[62];
  if (v10)
  {
    a1[63] = v10;
    operator delete(v10);
  }

  v11 = a1[59];
  if (v11)
  {
    a1[60] = v11;
    operator delete(v11);
  }

  v12 = a1[56];
  if (v12)
  {
    a1[57] = v12;
    operator delete(v12);
  }

  v13 = a1[53];
  if (v13)
  {
    a1[54] = v13;
    operator delete(v13);
  }

  v14 = a1[50];
  if (v14)
  {
    a1[51] = v14;
    operator delete(v14);
  }

  v15 = a1[47];
  if (v15)
  {
    a1[48] = v15;
    operator delete(v15);
  }

  v16 = a1[26];
  if (v16)
  {
    v17 = a1[27];
    v18 = a1[26];
    if (v17 != v16)
    {
      v19 = a1[27];
      do
      {
        v21 = *(v19 - 24);
        v19 -= 24;
        v20 = v21;
        if (v21)
        {
          *(v17 - 16) = v20;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[26];
    }

    a1[27] = v16;
    operator delete(v18);
  }

  v22 = a1[23];
  if (v22)
  {
    a1[24] = v22;
    operator delete(v22);
  }

  v23 = a1[20];
  if (v23)
  {
    a1[21] = v23;
    operator delete(v23);
  }

  v24 = a1[17];
  if (v24)
  {
    a1[18] = v24;
    operator delete(v24);
  }

  v25 = a1[14];
  if (v25)
  {
    a1[15] = v25;
    operator delete(v25);
  }

  v26 = a1[11];
  if (v26)
  {
    a1[12] = v26;
    operator delete(v26);
  }

  v27 = a1[8];
  if (v27)
  {
    a1[9] = v27;
    operator delete(v27);
  }

  *a1 = &unk_1F10B68F8;
  v28 = a1[1];
  if (v28)
  {
    a1[2] = v28;
    operator delete(v28);
  }

  return a1;
}

uint64_t sub_19D33AD28(uint64_t a1, int a2, uint64_t a3, float a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B8580;
  *(a1 + 44) = a2;
  *(a1 + 48) = a4;
  *(a1 + 56) = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a1 + 120) = *(a3 + 64);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 168) = 0u;
  v8 = (a1 + 168);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  sub_19D42933C(a1 + 216);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 41) = 0;
  v9 = dword_1EB0131E8;
  v10 = dword_1EB0131E8;
  v11 = *(a1 + 168);
  v12 = (*(a1 + 176) - v11) >> 3;
  if (dword_1EB0131E8 <= v12)
  {
    if (dword_1EB0131E8 < v12)
    {
      *(a1 + 176) = v11 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0(v8, dword_1EB0131E8 - v12);
    v9 = dword_1EB0131E8;
    v10 = dword_1EB0131E8;
  }

  v13 = *(a1 + 192);
  v14 = (*(a1 + 200) - v13) >> 3;
  if (v10 <= v14)
  {
    if (v10 < v14)
    {
      *(a1 + 200) = v13 + 8 * v10;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 192), v10 - v14);
    v9 = dword_1EB0131E8;
  }

  *(a1 + 160) = *(a1 + 101);
  if (v9 >= 1)
  {
    operator new[]();
  }

  (*(*a1 + 200))(a1);
  return a1;
}

void sub_19D33AF98(_Unwind_Exception *exception_object)
{
  v5 = v1[24];
  if (v5)
  {
    v1[25] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      *v1 = v2;
      v7 = v1[1];
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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

  v1[22] = v6;
  operator delete(v6);
  *v1 = v2;
  v7 = v1[1];
  if (!v7)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_19D33B078(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 72);
  v7 = (*a2 + v6);
  if (v7 <= *a2 + *(a2 + 8) - 4)
  {
    v8 = *v7;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 44) != v8)
  {
    sub_19D41C548(3);
  }

  v9 = *a3;
  v10 = *(a1 + 161);
  v11 = sub_19D41C528();
  sub_19D3090B4((a1 + 128), a2, v9, v10, v11, *(a1 + 44));
  v12 = *a3;
  v13 = *(a1 + 161);
  v14 = sub_19D41C528();
  sub_19D3090B4((a1 + 136), a2, v12, v13, v14, *(a1 + 44));
  v15 = *a3;
  v16 = *(a1 + 161);
  v17 = sub_19D41C528();
  sub_19D3090B4((a1 + 144), a2, v15, v16, v17, *(a1 + 44));
  v18 = *a3;
  v19 = *(a1 + 161);
  v20 = sub_19D41C528();
  v21 = *(a1 + 44);

  return sub_19D3090B4((a1 + 152), a2, v18, v19, v20, v21);
}

uint64_t sub_19D33B1B0(uint64_t a1, FILE *__stream, int *a3, uint64_t a4, unsigned int a5)
{
  sub_19D41C9E8(__stream, a3, *(a1 + 44));
  v9 = sub_19D41C528();
  sub_19D3204D0(a1 + 128, __stream, a3, 3, v9, a5);
  v10 = sub_19D41C528();
  sub_19D3204D0(a1 + 136, __stream, a3, 3, v10, a5);
  v11 = sub_19D41C528();
  sub_19D3204D0(a1 + 144, __stream, a3, 3, v11, a5);
  v12 = sub_19D41C528();

  return sub_19D3204D0(a1 + 152, __stream, a3, 3, v12, a5);
}

void sub_19D33B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D33B398(void *a1)
{
  v2 = a1[36];
  v3 = a1[37];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[36];
        v3 = a1[37];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[37] = v2;
  a1[22] = a1[21];
  a1[25] = a1[24];
}

int *sub_19D33B430(int *result, void *a2, uint64_t a3, int a4)
{
  v4 = a4 & 0xFFFFFF;
  if ((a4 & 0xFFFFFF) != 0)
  {
    v6 = result;
    for (i = 0; i != v4; ++i)
    {
      memmove(*(*(v6 + 21) + 8 * i), *(*a2 + 8 * i), 4 * v6[11]);
      v9 = v6[11];
      v10 = *(*(v6 + 21) + 8 * i);
      if (v9 >= 1)
      {
        v8.i32[0] = v6[12];
        v11 = *(v6 + 16);
        v12 = *(v6 + 17);
        v13 = *(v6 + 18);
        v14 = *(v6 + 19);
        if (v9 >= 8)
        {
          v15 = 0;
          v30 = (v10 + 4 * v9);
          v32 = v10 < &v12->f32[v9] && v12 < v30;
          v34 = v10 < &v13->f32[v9] && v13 < v30;
          v36 = v10 < &v14->f32[v9] && v14 < v30;
          if ((v11 >= v30 || v10 >= &v11->f32[v9]) && !v32 && !v34 && !v36)
          {
            v15 = v9 & 0x7FFFFFF8;
            v38 = v11 + 1;
            v39 = v10 + 1;
            v40 = vdupq_lane_s32(v8, 0);
            v41 = v12 + 1;
            v42 = v14 + 1;
            v43 = v13 + 1;
            v44 = v15;
            do
            {
              v45 = vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(v39[-1], v38[-1]), v43[-1]), vsqrtq_f32(vaddq_f32(v41[-1], v40))), v42[-1]);
              v46 = vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(*v39, *v38), *v43), vsqrtq_f32(vaddq_f32(*v41, v40))), *v42);
              v38 += 2;
              v39[-1] = v45;
              *v39 = v46;
              v39 += 2;
              v41 += 2;
              v42 += 2;
              v43 += 2;
              v44 -= 8;
            }

            while (v44);
            if (v15 == v9)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9 - v15;
        v17 = v15;
        v18 = &v10->f32[v15];
        v19 = &v14->f32[v17];
        v20 = &v13->f32[v17];
        v21 = &v12->f32[v17];
        v22 = &v11->f32[v17];
        do
        {
          v23 = *v22++;
          v24 = v23;
          v25 = *v21++;
          v26 = sqrtf(v25 + *v8.i32);
          v27 = *v20++;
          v28 = v27;
          v29 = *v19++;
          *v18 = (((*v18 - v24) * v28) / v26) + v29;
          ++v18;
          --v16;
        }

        while (v16);
      }

LABEL_3:
      result = memmove(*(*(v6 + 24) + 8 * i), v10, 4 * v9);
    }
  }

  return result;
}

void *sub_19D33B614(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B86F8, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  a1[18] = result[18];
  a1[19] = result[19];
  a1[16] = result[16];
  a1[17] = result[17];
  return result;
}

void sub_19D33B6D4(void *a1)
{
  v1 = sub_19D33B6FC(a1);

  operator delete(v1);
}

void *sub_19D33B6FC(void *a1)
{
  *a1 = &unk_1F10B8580;
  v4 = a1 + 36;
  v2 = a1[36];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        operator delete[](v2[v5]);
        v2 = a1[36];
        v3 = a1[37];
      }

      ++v5;
    }

    while (v5 < v3 - v2);
  }

  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  sub_19D429384((a1 + 27));
  v6 = a1[24];
  if (v6)
  {
    a1[25] = v6;
    operator delete(v6);
  }

  v7 = a1[21];
  if (v7)
  {
    a1[22] = v7;
    operator delete(v7);
  }

  *a1 = &unk_1F10B68F8;
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_19D33B7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 80) = 0u;
  v8 = (a1 + 80);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *a1 = &unk_1F10B8720;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = a4;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 41) = 0;
  *(a1 + 529) = a6;
  *(a1 + 332) = xmmword_19D475330;
  *(a1 + 328) = a5;
  *(a1 + 528) = 0;
  if (v8 != a2)
  {
    sub_19D324128(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  *(a1 + 224) = a3;
  v30 = 16;
  strcpy(__p, "From constructor");
  sub_19D3211E4(a1);
  *(a1 + 264) = *(a1 + 256);
  *(a1 + 240) = *(a1 + 232);
  *(a1 + 360) = *(a1 + 352);
  *__p = 0;
  v9 = *(a1 + 80);
  if (*(a1 + 88) != v9)
  {
    v10 = 0;
    do
    {
      v28 = (*(**(v9 + 8 * v10) + 272))(*(v9 + 8 * v10));
      sub_19D2C7CE4(a1 + 256, &v28);
      v11 = *__p;
      if (*__p >= 1)
      {
        sub_19D2C7CE4(a1 + 352, __p);
        v11 = *__p;
      }

      *__p = v11 + 1;
      v10 = v11 + 1;
      v9 = *(a1 + 80);
    }

    while (v10 < (*(a1 + 88) - v9) >> 3);
  }

  v12 = dword_1EB0131E8;
  v13 = *(a1 + 376);
  v14 = (*(a1 + 384) - v13) >> 2;
  if (dword_1EB0131E8 <= v14)
  {
    if (dword_1EB0131E8 < v14)
    {
      *(a1 + 384) = v13 + 4 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 376, dword_1EB0131E8 - v14);
    v12 = dword_1EB0131E8;
  }

  v15 = *(a1 + 400);
  v16 = (*(a1 + 408) - v15) >> 2;
  if (v12 <= v16)
  {
    if (v12 < v16)
    {
      *(a1 + 408) = v15 + 4 * v12;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 400, v12 - v16);
    v12 = dword_1EB0131E8;
  }

  v17 = *(a1 + 424);
  v18 = (*(a1 + 432) - v17) >> 2;
  if (v12 <= v18)
  {
    if (v12 < v18)
    {
      *(a1 + 432) = v17 + 4 * v12;
    }
  }

  else
  {
    sub_19D2CA0E8(a1 + 424, v12 - v18);
  }

  v19 = (*(a1 + 88) - *(a1 + 80)) >> 3;
  v20 = *(a1 + 544);
  v21 = *(a1 + 536);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      v23 = v21 + 24 * v19;
      if (v20 != v23)
      {
        v24 = *(a1 + 544);
        do
        {
          v26 = *(v24 - 24);
          v24 -= 24;
          v25 = v26;
          if (v26)
          {
            *(v20 - 16) = v25;
            operator delete(v25);
          }

          v20 = v24;
        }

        while (v24 != v23);
      }

      *(a1 + 544) = v23;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 536, v19 - v22);
  }

  return a1;
}

void sub_19D33BAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_19D2B2DD8(v17);
    v21 = *v19;
    if (!*v19)
    {
LABEL_3:
      sub_19D2B2DD8((v16 + 472));
      v22 = *(v16 + 448);
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_19D2B2DD8(v17);
    v21 = *v19;
    if (!*v19)
    {
      goto LABEL_3;
    }
  }

  *(v16 + 512) = v21;
  operator delete(v21);
  sub_19D2B2DD8((v16 + 472));
  v22 = *(v16 + 448);
  if (!v22)
  {
LABEL_4:
    v23 = *(v16 + 424);
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v16 + 456) = v22;
  operator delete(v22);
  v23 = *(v16 + 424);
  if (!v23)
  {
LABEL_5:
    v24 = *(v16 + 400);
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v16 + 432) = v23;
  operator delete(v23);
  v24 = *(v16 + 400);
  if (!v24)
  {
LABEL_6:
    v25 = *(v16 + 376);
    if (!v25)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v16 + 408) = v24;
  operator delete(v24);
  v25 = *(v16 + 376);
  if (!v25)
  {
LABEL_7:
    v26 = *(v16 + 352);
    if (!v26)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v16 + 384) = v25;
  operator delete(v25);
  v26 = *(v16 + 352);
  if (!v26)
  {
LABEL_8:
    v27 = *(v16 + 304);
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v16 + 360) = v26;
  operator delete(v26);
  v27 = *(v16 + 304);
  if (!v27)
  {
LABEL_9:
    v28 = *v18;
    if (!*v18)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v16 + 312) = v27;
  operator delete(v27);
  v28 = *v18;
  if (!*v18)
  {
LABEL_10:
    sub_19D30FE34(v16);
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v16 + 288) = v28;
  operator delete(v28);
  sub_19D30FE34(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19D33BC28(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (*(a1 + 88) == v1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    result = (*(**(v1 + 8 * v3) + 56))(*(v1 + 8 * v3));
    if (result)
    {
      break;
    }

    ++v3;
    v1 = *(a1 + 80);
  }

  while (v3 < (*(a1 + 88) - v1) >> 3);
  return result;
}

uint64_t sub_19D33BCA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 80);
  if (*(result + 88) != v4)
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = (*(**(v4 + 8 * v9) + 64))(*(v4 + 8 * v9), a2, a3, a4);
      ++v9;
      v4 = *(v8 + 80);
    }

    while (v9 < (*(v8 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t sub_19D33BD3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 80);
  if (*(result + 88) != v5)
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = (*(**(v5 + 8 * v11) + 72))(*(v5 + 8 * v11), a2, a3, a4, a5);
      ++v11;
      v5 = *(v10 + 80);
    }

    while (v11 < (*(v10 + 88) - v5) >> 3);
  }

  return result;
}

void *sub_19D33BDDC(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v5 = result;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v3 = result;
  }

LABEL_4:
  v6 = *(v4 + 80);
  if (*(v4 + 88) != v6)
  {
    v7 = 0;
    do
    {
      result = (*(**(v6 + 8 * v7) + 80))(*(v6 + 8 * v7), *(*(v5 + 80) + 8 * v7), *(v3[10] + 8 * v7));
      ++v7;
      v6 = *(v4 + 80);
    }

    while (v7 < (*(v4 + 88) - v6) >> 3);
  }

  return result;
}

void *sub_19D33BF0C(void *result, void *lpsrc, void *a3)
{
  v3 = a3;
  v4 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v5 = result;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    result = __dynamic_cast(v3, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v3 = result;
  }

LABEL_4:
  v6 = *(v4 + 80);
  if (*(v4 + 88) != v6)
  {
    v7 = 0;
    do
    {
      result = (*(**(v6 + 8 * v7) + 88))(*(v6 + 8 * v7), *(*(v5 + 80) + 8 * v7), *(v3[10] + 8 * v7));
      ++v7;
      v6 = *(v4 + 80);
    }

    while (v7 < (*(v4 + 88) - v6) >> 3);
  }

  return result;
}

void *sub_19D33C03C(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v3 = result;
    v4 = v2[10];
    if (v2[11] == v4)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = result[10];
    if (result[11] == v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    result = (*(**(v4 + 8 * v5) + 96))(*(v4 + 8 * v5), *(v3[10] + 8 * v5));
    ++v5;
    v4 = v2[10];
  }

  while (v5 < (v2[11] - v4) >> 3);
  return result;
}

void *sub_19D33C11C(void *result, void *lpsrc)
{
  v2 = result;
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B88A0, 0);
    v3 = result;
    v4 = v2[10];
    if (v2[11] == v4)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = result[10];
    if (result[11] == v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    result = (*(**(v4 + 8 * v5) + 104))(*(v4 + 8 * v5), *(v3[10] + 8 * v5));
    ++v5;
    v4 = v2[10];
  }

  while (v5 < (v2[11] - v4) >> 3);
  return result;
}

uint64_t sub_19D33C1FC(uint64_t result, float a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 112))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D33C27C(uint64_t result, float a2)
{
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 120))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

uint64_t sub_19D33C30C(uint64_t result)
{
  v1 = *(result + 80);
  if (*(result + 88) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = (*(**(v1 + 8 * v3) + 160))(*(v1 + 8 * v3));
      ++v3;
      v1 = *(v2 + 80);
    }

    while (v3 < (*(v2 + 88) - v1) >> 3);
  }

  return result;
}

void sub_19D33C37C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (*(a1 + 88) != v2)
  {
    v3 = 0;
    do
    {
      (*(**(v2 + 8 * v3) + 200))(*(v2 + 8 * v3));
      ++v3;
      v2 = *(a1 + 80);
    }

    while (v3 < (*(a1 + 88) - v2) >> 3);
  }

  strcpy(__p, "From allocAllBuffers");
  sub_19D3211E4(a1);
}

void sub_19D33C444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D33C460(void *a1)
{
  v2 = a1[35];
  v3 = a1[36];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*v5)
      {
        operator delete[](*v5);
        *v5 = 0;
        v2 = a1[35];
        v3 = a1[36];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[36] = v2;
  v6 = a1[10];
  if (a1[11] != v6)
  {
    v7 = 0;
    do
    {
      (*(**(v6 + 8 * v7) + 208))(*(v6 + 8 * v7));
      ++v7;
      v6 = a1[10];
    }

    while (v7 < (a1[11] - v6) >> 3);
  }

  a1[14] = a1[13];
  a1[57] = a1[56];
  a1[64] = a1[63];
  v9 = a1[25];
  v8 = a1[26];
  if (v8 != v9)
  {
    v10 = a1[26];
    do
    {
      v12 = *(v10 - 24);
      v10 -= 24;
      v11 = v12;
      if (v12)
      {
        *(v8 - 16) = v11;
        operator delete(v11);
      }

      v8 = v10;
    }

    while (v10 != v9);
  }

  a1[26] = v9;
  v14 = a1[59];
  v13 = a1[60];
  if (v13 != v14)
  {
    v15 = a1[60];
    do
    {
      v17 = *(v15 - 24);
      v15 -= 24;
      v16 = v17;
      if (v17)
      {
        *(v13 - 16) = v16;
        operator delete(v16);
      }

      v13 = v15;
    }

    while (v15 != v14);
  }

  a1[60] = v14;
  a1[39] = a1[38];
}

void sub_19D33C5A8(uint64_t a1, void *a2, void *a3, int a4, char a5)
{
  v9 = (*(*a1 + 272))(a1);
  if (a4 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9;
    while ((a5 & 1) != 0)
    {
      if (a3[1] == *a3)
      {
        if (v10 >= 1)
        {
          v20 = 0;
          v27 = 0;
          v28 = 1.1755e-38;
          do
          {
            v29 = *(*(*a2 + 8 * v11) + 4 * v27);
            if (v29 > v28)
            {
              v20 = v27;
            }

            v28 = fmaxf(v29, v28);
            ++v27;
          }

          while (v12 != v27);
          goto LABEL_21;
        }

LABEL_26:
        v20 = 0;
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = 0;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }

      if (v11 >= (a4 - 1))
      {
        v20 = 2;
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = 2;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
LABEL_22:
          v30 = (v23 + 8 * v20 + 4);
          goto LABEL_23;
        }
      }

      else
      {
        v20 = **(*a3 + 24 * v11 + 24);
        v21 = *(a1 + 376);
        *(v21 + 4 * v11) = v20;
        v22 = *(a1 + 496);
        v23 = v22[8];
        if (v23)
        {
          goto LABEL_22;
        }
      }

LABEL_27:
      v34 = v22[6];
      if (v34)
      {
        v35 = v22 + 6;
        do
        {
          if (*(v34 + 28) >= v20)
          {
            v35 = v34;
          }

          v34 = *(v34 + 8 * (*(v34 + 28) < v20));
        }

        while (v34);
        if (v35 != v22 + 6 && *(v35 + 7) <= v20)
        {
          v30 = v35 + 4;
LABEL_23:
          *(*(a1 + 400) + 4 * v11) = *v30 + 1;
          v31 = *(v21 + 4 * v11);
          v32 = v22[13];
          if (v32)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

      *(*(a1 + 400) + 4 * v11) = 0;
      v31 = *(v21 + 4 * v11);
      v32 = v22[13];
      if (v32)
      {
LABEL_24:
        v33 = (v32 + 8 * v31 + 4);
LABEL_25:
        v13 = *v33;
        goto LABEL_4;
      }

LABEL_35:
      v38 = v22[11];
      v36 = v22 + 11;
      v37 = v38;
      if (v38)
      {
        v39 = v36;
        do
        {
          if (*(v37 + 28) >= v31)
          {
            v39 = v37;
          }

          v37 = *(v37 + 8 * (*(v37 + 28) < v31));
        }

        while (v37);
        if (v39 != v36 && *(v39 + 7) <= v31)
        {
          v33 = (v39 + 4);
          goto LABEL_25;
        }
      }

      v13 = -1;
LABEL_4:
      *(*(a1 + 424) + 4 * v11) = v13;
      v14 = **(a1 + 200);
      v15 = (*(***(a1 + 80) + 272))(**(a1 + 80));
      bzero(*(v14 + 8 * v11), 4 * v15);
      v16 = *(a1 + 200);
      v17 = *(*(a1 + 400) + 4 * v11);
      *(*(*v16 + 8 * v11) + 4 * v17 - 4) = 1065353216;
      v18 = v16[3 * v17];
      v19 = (*(**(*(a1 + 80) + 8 * v17) + 272))();
      bzero(*(v18 + 8 * v11), 4 * v19);
      *(*(*(*(a1 + 200) + 24 * *(*(a1 + 400) + 4 * v11)) + 8 * v11) + 4 * *(*(a1 + 424) + 4 * v11)) = 1065353216;
      if (++v11 == a4)
      {
        return;
      }
    }

    if (v10 >= 1)
    {
      v20 = 0;
      v24 = 0;
      v25 = 1.1755e-38;
      do
      {
        v26 = *(*(*a2 + 8 * v11) + 4 * v24);
        if (v26 > v25)
        {
          v20 = v24;
        }

        v25 = fmaxf(v26, v25);
        ++v24;
      }

      while (v12 != v24);
LABEL_21:
      v21 = *(a1 + 376);
      *(v21 + 4 * v11) = v20;
      v22 = *(a1 + 496);
      v23 = v22[8];
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }
}

uint64_t sub_19D33C930(uint64_t a1)
{
  v1 = *(a1 + 80);
  if ((*(a1 + 88) - v1) < 9)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = 1;
  do
  {
    v3 = (*(**(v1 + 8 * v4) + 272))(*(v1 + 8 * v4)) + v3;
    ++v4;
    v1 = *(a1 + 80);
  }

  while (v4 < (*(a1 + 88) - v1) >> 3);
  return v3;
}

uint64_t sub_19D33C9D4(uint64_t result, uint64_t a2)
{
  *(result + 528) = a2;
  v2 = *(result + 80);
  if (*(result + 88) != v2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 280))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 80);
    }

    while (v5 < (*(v4 + 88) - v2) >> 3);
  }

  return result;
}

void sub_19D33CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = 8 * a5;
    v9 = a5;
    do
    {
      v10 = *(a1 + 504);
      v11 = (*(***(a1 + 80) + 264))(**(a1 + 80));
      bzero(*(v10 + v7), 4 * v11);
      v7 += 8;
    }

    while (v8 != v7);
    for (i = 0; i != v9; ++i)
    {
      v13 = *(a1 + 332);
      v14 = *(*(a1 + 80) + 8 * v13);
      (*(*v14 + 248))(v14, *(a1 + 472) + 24 * v13, a3, i, *(*(a1 + 256) + 4 * v13), *(*(a1 + 256) + 4 * v13));
      v15 = *(*(a1 + 80) + 8 * v13);
      v16 = (*(*v15 + 48))(v15);
      v17 = v16[1];
      if (v17 != *v16)
      {
        if (((v17 - *v16) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v18 = *(a1 + 504);
      v19 = *(*(a1 + 80) + 8 * v13);
      v20 = (*(*v19 + 264))(v19);
      v21 = v20 / 8;
      if (v20 >= 8)
      {
        v22 = *(v18 + 8 * i);
        v23 = *(8 * i);
        v24 = v20 / 8;
        do
        {
          v25 = *v23;
          v26 = v23[1];
          v23 += 2;
          v27 = vaddq_f32(v22[1], v26);
          *v22 = vaddq_f32(*v22, v25);
          v22[1] = v27;
          v22 += 2;
          --v24;
        }

        while (v24);
      }

      v28 = 8 * v21;
      if (8 * v21 < v20)
      {
        v29 = *(8 * i);
        v30 = *(v18 + 8 * i);
        v31 = v28;
        if ((v20 - v28) <= 7)
        {
          goto LABEL_19;
        }

        v32 = v30 + 4 * v28;
        v33 = v29 + 4 * v28;
        if (v32 < v29 + 4 * v20 && v33 < v30 + 4 * v20)
        {
          goto LABEL_19;
        }

        v34 = v28 + (v20 & 7) - v20;
        v35 = (v33 + 16);
        v36 = (v32 + 16);
        do
        {
          v37 = vaddq_f32(*v36, *v35);
          v36[-1] = vaddq_f32(v36[-1], v35[-1]);
          *v36 = v37;
          v35 += 2;
          v36 += 2;
          v34 += 8;
        }

        while (v34);
        v31 = v20 - (v20 & 7);
        if ((v20 & 7) != 0)
        {
LABEL_19:
          v38 = v20 - v31;
          v39 = (v30 + 4 * v31);
          v40 = (v29 + 4 * v31);
          do
          {
            v41 = *v40++;
            *v39 = *v39 + v41;
            ++v39;
            --v38;
          }

          while (v38);
        }
      }

      v42 = *(*(a1 + 400) + 4 * i);
      v43 = *(*(a1 + 80) + 8 * v42);
      (*(*v43 + 248))(v43, *(a1 + 472) + 24 * *(a1 + 336), a3, i, *(a1 + 344), *(*(a1 + 256) + 4 * v42));
      v44 = *(*(a1 + 80) + 8 * v42);
      v45 = (*(*v44 + 48))(v44);
      v46 = v45[1];
      if (v46 != *v45)
      {
        if (((v46 - *v45) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v47 = *(a1 + 504);
      v48 = *(*(a1 + 80) + 8 * v42);
      v49 = (*(*v48 + 264))(v48);
      v50 = v49 / 8;
      if (v49 >= 8)
      {
        v51 = *(v47 + 8 * i);
        v52 = *(8 * i);
        v53 = v49 / 8;
        do
        {
          v54 = *v52;
          v55 = v52[1];
          v52 += 2;
          v56 = vaddq_f32(v51[1], v55);
          *v51 = vaddq_f32(*v51, v54);
          v51[1] = v56;
          v51 += 2;
          --v53;
        }

        while (v53);
      }

      v57 = 8 * v50;
      if (8 * v50 < v49)
      {
        v58 = *(8 * i);
        v59 = *(v47 + 8 * i);
        v60 = v57;
        if ((v49 - v57) <= 7)
        {
          goto LABEL_34;
        }

        v61 = v59 + 4 * v57;
        v62 = v58 + 4 * v57;
        if (v61 < v58 + 4 * v49 && v62 < v59 + 4 * v49)
        {
          goto LABEL_34;
        }

        v63 = v57 + (v49 & 7) - v49;
        v64 = (v62 + 16);
        v65 = (v61 + 16);
        do
        {
          v66 = vaddq_f32(*v65, *v64);
          v65[-1] = vaddq_f32(v65[-1], v64[-1]);
          *v65 = v66;
          v64 += 2;
          v65 += 2;
          v63 += 8;
        }

        while (v63);
        v60 = v49 - (v49 & 7);
        if ((v49 & 7) != 0)
        {
LABEL_34:
          v67 = v49 - v60;
          v68 = (v59 + 4 * v60);
          v69 = (v58 + 4 * v60);
          do
          {
            v70 = *v69++;
            *v68 = *v68 + v70;
            ++v68;
            --v67;
          }

          while (v67);
        }
      }
    }
  }
}

void sub_19D33CF48(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D33CFA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v94 = 0;
  v95 = 0;
  v96 = 0;
  if ((*(a1 + 340) & 0x80000000) == 0)
  {
    v13 = *(a1 + 304);
    v14 = -1;
    do
    {
      *v13++ = 0;
      ++v14;
    }

    while (v14 < *(a1 + 340));
  }

  v15 = *(a1 + 224);
  if (v15)
  {
    a2 = (*(*v15 + 32))(v15);
  }

  v16 = a4 & 0xFFFFFF;
  if (v16 > (a5 != 0))
  {
    v17 = a5 != 0;
    v85 = a3;
    v86 = a4 & 0xFFFFFF;
    do
    {
      v18 = *(a1 + 332);
      v19 = *(*(a1 + 80) + 8 * v18);
      (*(*v19 + 272))(v19);
      v20 = *(*(a1 + 80) + 8 * v18);
      (*(*v20 + 264))(v20);
      v21 = *(a1 + 304);
      if (!*(v21 + 4 * v18))
      {
        *(v21 + 4 * v18) = 1;
        v22 = *(*(a1 + 80) + 8 * v18);
        (*(*v22 + 256))(v22, v16);
      }

      v91 = 0;
      v92 = 0;
      v93 = 0;
      v23 = *(*(a1 + 80) + 8 * v18);
      (*(*v23 + 224))(v23, a2, a3, v17, &v91);
      v24 = *(*(a1 + 80) + 8 * v18);
      v87 = (*(*v24 + 32))(v24);
      __p = 0;
      v89 = 0;
      v90 = 0;
      v25 = *(a1 + 328);
      if (v25 == 1)
      {
        operator new();
      }

      if (v25 == 2)
      {
        v32 = *v87;
        v33 = *(*(a1 + 80) + 8 * *(a1 + 332));
        v34 = (*(*v33 + 272))(v33);
        if (v34 < 1)
        {
          v39 = 1;
          v41 = v89;
          v40 = v90;
          if (v89 < v90)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 1.1755e-38;
          do
          {
            v38 = *(*(v32 + 8 * v17) + 4 * v36);
            if (v38 > v37)
            {
              v35 = v36;
            }

            v37 = fmaxf(v38, v37);
            ++v36;
          }

          while (v34 != v36);
          v39 = v35 + 1;
          v41 = v89;
          v40 = v90;
          if (v89 < v90)
          {
LABEL_26:
            *v41 = v39;
            v42 = v41 + 1;
LABEL_52:
            v89 = v42;
            goto LABEL_53;
          }
        }

        v44 = __p;
        v45 = v41 - __p;
        v46 = (v41 - __p) >> 2;
        v47 = v46 + 1;
        if ((v46 + 1) >> 62)
        {
          sub_19D2AE2B4();
        }

        v48 = v40 - __p;
        if (v48 >> 1 > v47)
        {
          v47 = v48 >> 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 62))
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v56 = (v41 - __p) >> 2;
        v57 = (4 * v46);
        v58 = (4 * v46 - 4 * v56);
        *v57 = v39;
        v42 = v57 + 1;
        memcpy(v58, v44, v45);
        __p = v58;
        v89 = v42;
        v90 = 0;
        if (v44)
        {
          operator delete(v44);
        }

        a3 = v85;
        goto LABEL_52;
      }

      if (v25 != 4)
      {
        p_p = &__p;
        sub_19D324284(*v87 + 8 * v17, *v87 + 8 * v17, *(a1 + 340), &__p, *(*(a1 + 496) + 8), 1u);
        goto LABEL_54;
      }

      v26 = v94;
      v95 = v94;
      v27 = *(a1 + 536);
      v28 = *(a1 + 544) - v27;
      if (v28)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        }

        if (v29 > 1)
        {
          v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
          v50 = (v27 + 24);
          v51 = v30 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v52 = *v50;
            *(v50 - 2) = *(v50 - 3);
            v50[1] = v52;
            v50 += 6;
            v51 -= 2;
          }

          while (v51);
          if (v29 == v31)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v31 = 0;
        }

        v53 = (v27 + 24 * v31 + 8);
        v54 = v30 - v31;
        do
        {
          *v53 = *(v53 - 1);
          v53 += 3;
          --v54;
        }

        while (v54);
      }

LABEL_44:
      p_p = (a1 + 352);
      v55 = a7[1] - *a7;
      if (!v55)
      {
        goto LABEL_54;
      }

      if (v55 >= 5)
      {
        operator new();
      }

      v95 = v26;
      if (v55 == 4)
      {
        operator new();
      }

LABEL_53:
      p_p = &__p;
LABEL_54:
      bzero(*(*(a1 + 104) + 8 * v17), 4 * *(a1 + 348));
      v59 = *p_p;
      v16 = v86;
      if (p_p[1] != *p_p)
      {
        v60 = 0;
        while (1)
        {
          v61 = v59[v60];
          v62 = *(a1 + 304);
          if (!*(v62 + 4 * v61))
          {
            *(v62 + 4 * v61) = 1;
            v63 = *(*(a1 + 80) + 8 * v61);
            (*(*v63 + 256))(v63, v86);
          }

          v64 = a7[1] != *a7 && **a7 == -1 ? (*(a1 + 536) + 24 * v61 - 24) : &v94;
          v65 = *(*(a1 + 80) + 8 * v61);
          (*(*v65 + 224))(v65, a2, a3, v17, v64);
          v66 = *(*(a1 + 80) + 8 * v61);
          v67 = (*(*v66 + 32))(v66);
          v68 = *(a1 + 256);
          if ((*(a1 + 328) - 3) >= 2)
          {
            break;
          }

          v69 = *(v68 + 4 * v61);
          if (v69 >= 1)
          {
            v70 = *(*(*v87 + 8 * v17) + 4 * v61 - 4);
            v71 = *(*v67 + 8 * v17);
            if (v69 < 8)
            {
              v72 = 0;
              goto LABEL_71;
            }

            v72 = v69 & 0x7FFFFFF8;
            v73 = v71 + 1;
            v74 = v72;
            do
            {
              v75 = vmulq_n_f32(*v73, v70);
              v73[-1] = vmulq_n_f32(v73[-1], v70);
              *v73 = v75;
              v73 += 2;
              v74 -= 8;
            }

            while (v74);
            if (v72 != v69)
            {
LABEL_71:
              v76 = v69 - v72;
              v77 = &v71->f32[v72];
              do
              {
                *v77 = *v77 * v70;
                ++v77;
                --v76;
              }

              while (v76);
            }

LABEL_73:
            if (v69 >= 1)
            {
              v78 = *(*(*(a1 + 496) + 120) + 24 * v61 - 24);
              v79 = *(*v67 + 8 * v17);
              v80 = *(*(a1 + 104) + 8 * v17);
              do
              {
                v82 = *v78++;
                v81 = v82;
                LODWORD(v82) = *v79++;
                *(v80 + 4 * v81) = v82;
                --v69;
              }

              while (v69);
            }
          }

          ++v60;
          v59 = *p_p;
          if (v60 >= (p_p[1] - *p_p) >> 2)
          {
            goto LABEL_77;
          }
        }

        v69 = *(v68 + 4 * v61);
        goto LABEL_73;
      }

LABEL_77:
      v83 = *(a1 + 104);
      v84 = *(a1 + 348);
      __C = 0.0;
      vDSP_sve(*(v83 + 8 * v17), 1, &__C, v84);
      if (__p)
      {
        v89 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      ++v17;
    }

    while (v17 != v86);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_19D33DC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  operator delete(__p);
  if (a15)
  {
    operator delete(a15);
    v23 = a18;
    if (!a18)
    {
LABEL_3:
      v24 = a21;
      if (!a21)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v23 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  v24 = a21;
  if (!a21)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v24);
  _Unwind_Resume(a1);
}

void *sub_19D33DD14(uint64_t a1, void *lpsrc, uint64_t a3, float a4, float a5)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B88A0, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  v10 = *(a1 + 340);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = result;
    v12 = 0;
    do
    {
      if (*(*(v11 + 304) + 4 * v12) >= 1)
      {
        v14 = *(*(a1 + 80) + 8 * v12);
        result = (*(*v14 + 336))(v14, *(*(v11 + 80) + 8 * v12), a3, a4, a5);
        v10 = *(a1 + 340);
      }
    }

    while (v12++ < v10);
  }

  return result;
}

uint64_t sub_19D33DE20(uint64_t result, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v19 = v6;
    v20 = v7;
    v10 = result;
    v11 = 0;
    v12 = a4;
    do
    {
      v18 = 0;
      v13 = *(v10 + 332);
      v14 = *(*(v10 + 80) + 8 * v13);
      (*(*v14 + 240))(v14, *(v10 + 200) + 24 * v13, *(v10 + 472) + 24 * v13, v11, &v18, a6);
      v17 = 0;
      v15 = *(*(v10 + 400) + 4 * v11);
      v16 = *(*(v10 + 80) + 8 * v15);
      result = (*(*v16 + 240))(v16, *(v10 + 200) + 24 * v15, *(v10 + 472) + 24 * *(v10 + 336), v11, &v17, a6);
      if (v18 == 1 || v17 == 1)
      {
        ++*a5;
      }

      ++v11;
    }

    while (v12 != v11);
  }

  return result;
}

float sub_19D33DF60(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 0;
  if (a3 < 1)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = a3;
  v6 = 0.0;
  do
  {
    v7 = *(a1 + 332);
    v8 = *(*(a1 + 80) + 8 * v7);
    (*(*v8 + 232))(v8, *(a1 + 200) + 24 * v7, &v13 + 4, v4);
    v9 = *(*(a1 + 400) + 4 * v4);
    v10 = *(*(a1 + 80) + 8 * v9);
    (*(*v10 + 232))(v10, *(a1 + 200) + 24 * v9, &v13, v4);
    v11 = *&v13;
    if ((*(a1 + 328) - 3) >= 2)
    {
      v11 = *(&v13 + 1) + *&v13;
    }

    v6 = v11 + v6;
    ++v4;
  }

  while (v5 != v4);
  return v6;
}

void sub_19D33E070(void *a1)
{
  v1 = sub_19D33E098(a1);

  operator delete(v1);
}

void *sub_19D33E098(void *a1)
{
  *a1 = &unk_1F10B8720;
  v2 = a1[35];
  v3 = a1[36];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*v5)
      {
        operator delete[](*v5);
        *v5 = 0;
        v2 = a1[35];
        v3 = a1[36];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[36] = v2;
  v6 = a1[67];
  if (v6)
  {
    v7 = a1[68];
    v8 = a1[67];
    if (v7 != v6)
    {
      v9 = a1[68];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = a1[67];
    }

    a1[68] = v6;
    operator delete(v8);
  }

  v12 = a1[63];
  if (v12)
  {
    a1[64] = v12;
    operator delete(v12);
  }

  v13 = a1[59];
  if (v13)
  {
    v14 = a1[60];
    v15 = a1[59];
    if (v14 != v13)
    {
      v16 = a1[60];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = a1[59];
    }

    a1[60] = v13;
    operator delete(v15);
  }

  v19 = a1[56];
  if (v19)
  {
    a1[57] = v19;
    operator delete(v19);
  }

  v20 = a1[53];
  if (v20)
  {
    a1[54] = v20;
    operator delete(v20);
  }

  v21 = a1[50];
  if (v21)
  {
    a1[51] = v21;
    operator delete(v21);
  }

  v22 = a1[47];
  if (v22)
  {
    a1[48] = v22;
    operator delete(v22);
  }

  v23 = a1[44];
  if (v23)
  {
    a1[45] = v23;
    operator delete(v23);
  }

  v24 = a1[38];
  if (v24)
  {
    a1[39] = v24;
    operator delete(v24);
  }

  v25 = a1[35];
  if (v25)
  {
    a1[36] = v25;
    operator delete(v25);
  }

  return sub_19D30FE34(a1);
}

void sub_19D33E24C(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B88C8;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  v15 = a1 + 752;
  v16 = (a1 + 1080);
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  v17 = a1 + 1200;
  *(a1 + 1192) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  v18 = (a1 + 1320);
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  v19 = (a1 + 1640);
  *(a1 + 1432) = 0;
  bzero((a1 + 64), 0x2A0uLL);
  *(v15 + 236) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  *(v16 + 28) = 0u;
  *(v17 + 28) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  *(v18 + 28) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *(a1 + 1688) = 0;
  sub_19D42933C(a1 + 1704);
  sub_19D42933C(a1 + 1776);
  sub_19D42933C(a1 + 1848);
  sub_19D42933C(a1 + 1920);
  sub_19D42933C(a1 + 1992);
  sub_19D42933C(a1 + 2064);
  sub_19D42933C(a1 + 2136);
  sub_19D42933C(a1 + 2208);
  sub_19D42933C(a1 + 2280);
  sub_19D42933C(a1 + 2352);
  sub_19D42933C(a1 + 2424);
  *(a1 + 2496) = a5;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  (*(*a1 + 192))(a1);
  v20 = *(a7 + 45);
  *(a1 + 2692) = v20 ^ 1;
  *(a1 + 2672) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2680) = a9;
  if (a9)
  {
    v21 = *(a9 + 376);
    *(a1 + 2688) = *(a9 + 28);
    nullsub_171("LSTM constructor");
    v22 = v21 ^ 1;
    a8 = *(*(a1 + 2680) + 376);
    *(a1 + 40) = a8;
    v20 = *(a7 + 45);
  }

  else
  {
    v22 = 1;
    *(a1 + 2688) = 1;
    *(a1 + 40) = a8;
  }

  *(a1 + 1696) = v20;
  *(a1 + 1697) = *(a7 + 46);
  v23 = *a4;
  *(a1 + 736) = **a4;
  *(a1 + 740) = v23[1];
  *(a1 + 744) = v23[2];
  if ((a8 & 1) == 0)
  {
    v22 = 0;
  }

  *(a1 + 48) = v22 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2672) = 1;
    v20 = *(a1 + 1696);
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  if ((v20 & 1) == 0)
  {
    v24 = *(a7 + 32);
    switch(v24)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  operator new();
}

void sub_19D33F020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v53);
  v87 = (v52 + 2624);
  v88 = *(v52 + 2648);
  if (v88)
  {
    *(v52 + 2656) = v88;
    operator delete(v88);
    v55 = *v87;
    if (!*v87)
    {
LABEL_6:
      sub_19D429384(v52 + 2424);
      sub_19D429384(v52 + 2352);
      sub_19D429384(v52 + 2280);
      sub_19D429384(v52 + 2208);
      sub_19D429384(v52 + 2136);
      sub_19D429384(v52 + 2064);
      sub_19D429384(v52 + 1992);
      sub_19D429384(v52 + 1920);
      sub_19D429384(v52 + 1848);
      sub_19D429384(v52 + 1776);
      sub_19D429384(v52 + 1704);
      sub_19D308FC0((v52 + 1344));
      sub_19D308FC0((v52 + 1224));
      sub_19D308FC0((v52 + 1104));
      sub_19D308FC0((v52 + 984));
      v56 = *(v52 + 960);
      if (v56)
      {
        *(v52 + 968) = v56;
        operator delete(v56);
        v57 = *(v52 + 936);
        if (!v57)
        {
LABEL_8:
          v58 = *(v52 + 912);
          if (!v58)
          {
            goto LABEL_9;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v57 = *(v52 + 936);
        if (!v57)
        {
          goto LABEL_8;
        }
      }

      *(v52 + 944) = v57;
      operator delete(v57);
      v58 = *(v52 + 912);
      if (!v58)
      {
LABEL_9:
        v59 = *(v52 + 888);
        if (!v59)
        {
          goto LABEL_10;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(v52 + 920) = v58;
      operator delete(v58);
      v59 = *(v52 + 888);
      if (!v59)
      {
LABEL_10:
        v60 = *(v52 + 864);
        if (!v60)
        {
          goto LABEL_11;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(v52 + 896) = v59;
      operator delete(v59);
      v60 = *(v52 + 864);
      if (!v60)
      {
LABEL_11:
        v61 = *(v52 + 840);
        if (!v61)
        {
          goto LABEL_12;
        }

        goto LABEL_43;
      }

LABEL_42:
      *(v52 + 872) = v60;
      operator delete(v60);
      v61 = *(v52 + 840);
      if (!v61)
      {
LABEL_12:
        v62 = *(v52 + 816);
        if (!v62)
        {
          goto LABEL_13;
        }

        goto LABEL_44;
      }

LABEL_43:
      *(v52 + 848) = v61;
      operator delete(v61);
      v62 = *(v52 + 816);
      if (!v62)
      {
LABEL_13:
        v63 = *(v52 + 792);
        if (!v63)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

LABEL_44:
      *(v52 + 824) = v62;
      operator delete(v62);
      v63 = *(v52 + 792);
      if (!v63)
      {
LABEL_14:
        v64 = *(v52 + 712);
        if (!v64)
        {
          goto LABEL_15;
        }

        goto LABEL_46;
      }

LABEL_45:
      *(v52 + 800) = v63;
      operator delete(v63);
      v64 = *(v52 + 712);
      if (!v64)
      {
LABEL_15:
        v65 = *(v52 + 688);
        if (!v65)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }

LABEL_46:
      *(v52 + 720) = v64;
      operator delete(v64);
      v65 = *(v52 + 688);
      if (!v65)
      {
LABEL_16:
        v66 = *(v52 + 664);
        if (!v66)
        {
          goto LABEL_17;
        }

        goto LABEL_48;
      }

LABEL_47:
      *(v52 + 696) = v65;
      operator delete(v65);
      v66 = *(v52 + 664);
      if (!v66)
      {
LABEL_17:
        v67 = *(v52 + 640);
        if (!v67)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }

LABEL_48:
      *(v52 + 672) = v66;
      operator delete(v66);
      v67 = *(v52 + 640);
      if (!v67)
      {
LABEL_18:
        v68 = *(v52 + 616);
        if (!v68)
        {
          goto LABEL_19;
        }

        goto LABEL_50;
      }

LABEL_49:
      *(v52 + 648) = v67;
      operator delete(v67);
      v68 = *(v52 + 616);
      if (!v68)
      {
LABEL_19:
        v69 = *(v52 + 592);
        if (!v69)
        {
          goto LABEL_20;
        }

        goto LABEL_51;
      }

LABEL_50:
      *(v52 + 624) = v68;
      operator delete(v68);
      v69 = *(v52 + 592);
      if (!v69)
      {
LABEL_20:
        v70 = *(v52 + 568);
        if (!v70)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

LABEL_51:
      *(v52 + 600) = v69;
      operator delete(v69);
      v70 = *(v52 + 568);
      if (!v70)
      {
LABEL_21:
        v71 = *(v52 + 544);
        if (!v71)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

LABEL_52:
      *(v52 + 576) = v70;
      operator delete(v70);
      v71 = *(v52 + 544);
      if (!v71)
      {
LABEL_22:
        v72 = *(v52 + 520);
        if (!v72)
        {
          goto LABEL_23;
        }

        goto LABEL_54;
      }

LABEL_53:
      *(v52 + 552) = v71;
      operator delete(v71);
      v72 = *(v52 + 520);
      if (!v72)
      {
LABEL_23:
        v73 = *(v52 + 496);
        if (!v73)
        {
          goto LABEL_24;
        }

        goto LABEL_55;
      }

LABEL_54:
      *(v52 + 528) = v72;
      operator delete(v72);
      v73 = *(v52 + 496);
      if (!v73)
      {
LABEL_24:
        v74 = *(v52 + 472);
        if (!v74)
        {
          goto LABEL_25;
        }

        goto LABEL_56;
      }

LABEL_55:
      *(v52 + 504) = v73;
      operator delete(v73);
      v74 = *(v52 + 472);
      if (!v74)
      {
LABEL_25:
        v75 = *(v52 + 448);
        if (!v75)
        {
          goto LABEL_26;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(v52 + 480) = v74;
      operator delete(v74);
      v75 = *(v52 + 448);
      if (!v75)
      {
LABEL_26:
        v76 = *(v52 + 424);
        if (!v76)
        {
          goto LABEL_27;
        }

        goto LABEL_58;
      }

LABEL_57:
      *(v52 + 456) = v75;
      operator delete(v75);
      v76 = *(v52 + 424);
      if (!v76)
      {
LABEL_27:
        v77 = *(v52 + 400);
        if (!v77)
        {
          goto LABEL_28;
        }

        goto LABEL_59;
      }

LABEL_58:
      *(v52 + 432) = v76;
      operator delete(v76);
      v77 = *(v52 + 400);
      if (!v77)
      {
LABEL_28:
        v78 = *(v52 + 376);
        if (!v78)
        {
          goto LABEL_29;
        }

        goto LABEL_60;
      }

LABEL_59:
      *(v52 + 408) = v77;
      operator delete(v77);
      v78 = *(v52 + 376);
      if (!v78)
      {
LABEL_29:
        v79 = *(v52 + 352);
        if (!v79)
        {
          goto LABEL_30;
        }

        goto LABEL_61;
      }

LABEL_60:
      *(v52 + 384) = v78;
      operator delete(v78);
      v79 = *(v52 + 352);
      if (!v79)
      {
LABEL_30:
        sub_19D2B2DD8((v52 + 208));
        v80 = *(v52 + 184);
        if (!v80)
        {
          goto LABEL_31;
        }

        goto LABEL_62;
      }

LABEL_61:
      *(v52 + 360) = v79;
      operator delete(v79);
      sub_19D2B2DD8((v52 + 208));
      v80 = *(v52 + 184);
      if (!v80)
      {
LABEL_31:
        v81 = *(v52 + 160);
        if (!v81)
        {
          goto LABEL_32;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(v52 + 192) = v80;
      operator delete(v80);
      v81 = *(v52 + 160);
      if (!v81)
      {
LABEL_32:
        v82 = *(v52 + 136);
        if (!v82)
        {
          goto LABEL_33;
        }

        goto LABEL_64;
      }

LABEL_63:
      *(v52 + 168) = v81;
      operator delete(v81);
      v82 = *(v52 + 136);
      if (!v82)
      {
LABEL_33:
        v83 = *(v52 + 112);
        if (!v83)
        {
          goto LABEL_34;
        }

        goto LABEL_65;
      }

LABEL_64:
      *(v52 + 144) = v82;
      operator delete(v82);
      v83 = *(v52 + 112);
      if (!v83)
      {
LABEL_34:
        v84 = *(v52 + 88);
        if (!v84)
        {
          goto LABEL_35;
        }

        goto LABEL_66;
      }

LABEL_65:
      *(v52 + 120) = v83;
      operator delete(v83);
      v84 = *(v52 + 88);
      if (!v84)
      {
LABEL_35:
        v85 = *(v52 + 64);
        if (!v85)
        {
          goto LABEL_36;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v52 + 96) = v84;
      operator delete(v84);
      v85 = *(v52 + 64);
      if (!v85)
      {
LABEL_36:
        *v52 = a10;
        v86 = *(v52 + 8);
        if (!v86)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v52 + 72) = v85;
      operator delete(v85);
      *v52 = a10;
      v86 = *(v52 + 8);
      if (!v86)
      {
LABEL_37:
        _Unwind_Resume(a1);
      }

LABEL_68:
      *(v52 + 16) = v86;
      operator delete(v86);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v55 = *v87;
    if (!*v87)
    {
      goto LABEL_6;
    }
  }

  *(v52 + 2632) = v55;
  operator delete(v55);
  goto LABEL_6;
}

void sub_19D3416D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D3416EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D34179C(void *a1)
{
  v2 = a1 + 99;
  v3 = a1[20];
  v4 = a1[21];
  v5 = (v4 - v3) >> 3;
  v6 = a1[99];
  v7 = (a1[100] - v6) >> 3;
  if (v5 <= v7)
  {
    if (v5 < v7)
    {
      a1[100] = v6 + v4 - v3;
    }
  }

  else
  {
    sub_19D308DD0(a1 + 99, v5 - v7);
    v3 = a1[20];
    v4 = a1[21];
    v5 = (v4 - v3) >> 3;
  }

  if (v4 != v3)
  {
    v8 = *v2;
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    if (v5 <= 3)
    {
      v10 = 0;
LABEL_14:
      v15 = (v8 + 8 * v10);
      v16 = (v3 + 8 * v10);
      v17 = v9 - v10;
      do
      {
        v18 = *v16++;
        *v15++ = v18;
        --v17;
      }

      while (v17);
      return v2;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (v3 + 16);
    v12 = (v8 + 16);
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v5 != v10)
    {
      goto LABEL_14;
    }
  }

  return v2;
}

_BYTE *sub_19D3418A4(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_21:
    sub_19D41C548(3);
  }

  v7 = *(a2 + 72);
  v8 = *a2;
  v9 = (*a2 + v7);
  v10 = *a2 + *(a2 + 8) - 4;
  if (v9 <= v10)
  {
    v11 = *v9;
    v7 += 4;
    *(a2 + 72) = v7;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
LABEL_4:
      v13 = *v12;
      v7 += 4;
      *(a2 + 72) = v7;
      if (a4 < 1)
      {
        goto LABEL_16;
      }

LABEL_8:
      v14 = v7;
      v15 = (v8 + v7);
      if (v15 <= v10)
      {
        v19 = *v15;
        v7 += 4;
        *(a2 + 72) = v7;
        v14 = v7;
        *(a1 + 736) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 740) = v16;
          v17 = (v8 + v7);
          if (v17 > v10)
          {
LABEL_14:
            v18 = 0;
            goto LABEL_15;
          }

LABEL_11:
          v18 = *v17;
          *(a2 + 72) = v7 + 4;
LABEL_15:
          *(a1 + 744) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 736) = 0;
      }

      *(a1 + 740) = 0;
      v17 = (v8 + v14);
      if (v17 > v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a4 >= 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (*(a1 + 52) != v11 || *(a1 + 48) != v13)
  {
    goto LABEL_21;
  }

  v21 = *(a1 + 2568);
  v22 = *a3;
  v23 = *(a1 + 1697);
  v24 = sub_19D41C518();
  sub_19D3090B4(v21, a2, v22, v23, v24, *(a1 + 52));
  v25 = *(a1 + 2576);
  v26 = *a3;
  v27 = *(a1 + 1697);
  v28 = sub_19D41C518();
  sub_19D3090B4(v25, a2, v26, v27, v28, *(a1 + 52));
  v29 = *(a1 + 2584);
  v30 = *a3;
  v31 = *(a1 + 1697);
  v32 = sub_19D41C518();
  sub_19D3090B4(v29, a2, v30, v31, v32, *(a1 + 52));
  v33 = *(a1 + 2504);
  v34 = *a3;
  v35 = *(a1 + 1697);
  v36 = sub_19D41C518();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 48));
  v37 = *(a1 + 2512);
  v38 = *a3;
  v39 = *(a1 + 1697);
  v40 = sub_19D41C518();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 48));
  v41 = *(a1 + 2520);
  v42 = *a3;
  v43 = *(a1 + 1697);
  v44 = sub_19D41C518();
  sub_19D3092B8(v41, a2, v42, v43, v44, *(a1 + 52), *(a1 + 48));
  v45 = *(a1 + 2528);
  v46 = *a3;
  v47 = *(a1 + 1697);
  v48 = sub_19D41C518();
  sub_19D3092B8(v45, a2, v46, v47, v48, *(a1 + 52), *(a1 + 48));
  v49 = *(a1 + 2536);
  v50 = *a3;
  v51 = *(a1 + 1697);
  v52 = sub_19D41C518();
  sub_19D3092B8(v49, a2, v50, v51, v52, *(a1 + 52), *(a1 + 52));
  v53 = *(a1 + 2544);
  v54 = *a3;
  v55 = *(a1 + 1697);
  v56 = sub_19D41C518();
  sub_19D3092B8(v53, a2, v54, v55, v56, *(a1 + 52), *(a1 + 52));
  v57 = *(a1 + 2552);
  v58 = *a3;
  v59 = *(a1 + 1697);
  v60 = sub_19D41C518();
  sub_19D3092B8(v57, a2, v58, v59, v60, *(a1 + 52), *(a1 + 52));
  v61 = *(a1 + 2560);
  v62 = *a3;
  v63 = *(a1 + 1697);
  v64 = sub_19D41C518();
  v65 = *(a1 + 52);

  return sub_19D3092B8(v61, a2, v62, v63, v64, v65, v65);
}

uint64_t sub_19D341C2C(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 48);
  sub_19D41C9E8(__stream, a3, *(a1 + 52));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    __ptr = *(a1 + 736);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 740);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 744);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 2568);
  v12 = sub_19D41C518();
  sub_19D3204D0(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 2576);
  v14 = sub_19D41C518();
  sub_19D3204D0(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 2584);
  v16 = sub_19D41C518();
  sub_19D3204D0(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 2504);
  v18 = sub_19D41C518();
  sub_19D34780C(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 2512);
  v20 = sub_19D41C518();
  sub_19D34780C(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 2520);
  v22 = sub_19D41C518();
  sub_19D34780C(v21, __stream, a3, 3, v22, a5);
  v23 = *(a1 + 2528);
  v24 = sub_19D41C518();
  sub_19D34780C(v23, __stream, a3, 3, v24, a5);
  v25 = *(a1 + 2536);
  v26 = sub_19D41C518();
  sub_19D34780C(v25, __stream, a3, 3, v26, a5);
  v27 = *(a1 + 2544);
  v28 = sub_19D41C518();
  sub_19D34780C(v27, __stream, a3, 3, v28, a5);
  v29 = *(a1 + 2552);
  v30 = sub_19D41C518();
  sub_19D34780C(v29, __stream, a3, 3, v30, a5);
  v31 = *(a1 + 2560);
  v32 = sub_19D41C518();
  return sub_19D34780C(v31, __stream, a3, 3, v32, a5);
}

float32x4_t sub_19D341EFC(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = *(a1 + 52);
    if (v8 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  v8 = *(a1 + 52);
  if (v8 < 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v9 = *v7[321];
  v10 = *v5[321];
  v11 = **(a1 + 2568);
  if (v8 < 8)
  {
    v12 = 0;
LABEL_9:
    v13 = v8 - v12;
    v14 = v12;
    v15 = &v11->f32[v14];
    v16 = &v10->f32[v14];
    v17 = &v9->f32[v14];
    do
    {
      v18 = *v17++;
      v19 = v18;
      v20 = *v16++;
      *v15++ = v19 - v20;
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v12 = 0;
  if ((v11 - v9) < 0x20)
  {
    goto LABEL_9;
  }

  if ((v11 - v10) < 0x20)
  {
    goto LABEL_9;
  }

  v12 = v8 & 0x7FFFFFF8;
  v143 = v9 + 1;
  v144 = v10 + 1;
  v145 = v11 + 1;
  v146 = v12;
  do
  {
    result = vsubq_f32(v143[-1], v144[-1]);
    v147 = vsubq_f32(*v143, *v144);
    v145[-1] = result;
    *v145 = v147;
    v143 += 2;
    v144 += 2;
    v145 += 2;
    v146 -= 8;
  }

  while (v146);
  if (v12 != v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  v21 = *v7[322];
  v22 = *v5[322];
  v23 = **(a1 + 2576);
  if (v8 < 8)
  {
    v24 = 0;
LABEL_13:
    v25 = v8 - v24;
    v26 = v24;
    v27 = &v23->f32[v26];
    v28 = &v22->f32[v26];
    v29 = &v21->f32[v26];
    do
    {
      v30 = *v29++;
      v31 = v30;
      v32 = *v28++;
      *v27++ = v31 - v32;
      --v25;
    }

    while (v25);
    goto LABEL_15;
  }

  v24 = 0;
  if ((v23 - v21) < 0x20)
  {
    goto LABEL_13;
  }

  if ((v23 - v22) < 0x20)
  {
    goto LABEL_13;
  }

  v24 = v8 & 0x7FFFFFF8;
  v148 = v21 + 1;
  v149 = v22 + 1;
  v150 = v23 + 1;
  v151 = v24;
  do
  {
    result = vsubq_f32(v148[-1], v149[-1]);
    v152 = vsubq_f32(*v148, *v149);
    v150[-1] = result;
    *v150 = v152;
    v148 += 2;
    v149 += 2;
    v150 += 2;
    v151 -= 8;
  }

  while (v151);
  if (v24 != v8)
  {
    goto LABEL_13;
  }

LABEL_15:
  v33 = *v7[323];
  v34 = *v5[323];
  v35 = **(a1 + 2584);
  if (v8 < 8)
  {
    v36 = 0;
LABEL_17:
    v37 = v8 - v36;
    v38 = v36;
    v39 = (v35 + v38 * 4);
    v40 = &v34->f32[v38];
    v41 = &v33->f32[v38];
    do
    {
      v42 = *v41++;
      v43 = v42;
      v44 = *v40++;
      result.f32[0] = v43 - v44;
      *v39++ = result.i32[0];
      --v37;
    }

    while (v37);
    goto LABEL_19;
  }

  v36 = 0;
  if ((v35 - v33) < 0x20)
  {
    goto LABEL_17;
  }

  if ((v35 - v34) < 0x20)
  {
    goto LABEL_17;
  }

  v36 = v8 & 0x7FFFFFF8;
  v153 = v33 + 1;
  v154 = v34 + 1;
  v155 = v35 + 1;
  v156 = v36;
  do
  {
    result = vsubq_f32(v153[-1], v154[-1]);
    v157 = vsubq_f32(*v153, *v154);
    v155[-1] = result;
    *v155 = v157;
    v153 += 2;
    v154 += 2;
    v155 += 2;
    v156 -= 8;
  }

  while (v156);
  if (v36 != v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v45 = (*(a1 + 48) * v8);
  if (v45 < 1)
  {
    goto LABEL_36;
  }

  v46 = *v7[313];
  v47 = *v5[313];
  v48 = **(a1 + 2504);
  if (v45 < 8)
  {
    v49 = 0;
LABEL_22:
    v50 = v45 - v49;
    v51 = v49;
    v52 = &v48->f32[v51];
    v53 = &v47->f32[v51];
    v54 = &v46->f32[v51];
    do
    {
      v55 = *v54++;
      v56 = v55;
      v57 = *v53++;
      *v52++ = v56 - v57;
      --v50;
    }

    while (v50);
    goto LABEL_24;
  }

  v49 = 0;
  if ((v48 - v46) < 0x20)
  {
    goto LABEL_22;
  }

  if ((v48 - v47) < 0x20)
  {
    goto LABEL_22;
  }

  v49 = v45 & 0x7FFFFFF8;
  v158 = v46 + 1;
  v159 = v47 + 1;
  v160 = v48 + 1;
  v161 = v49;
  do
  {
    result = vsubq_f32(v158[-1], v159[-1]);
    v162 = vsubq_f32(*v158, *v159);
    v160[-1] = result;
    *v160 = v162;
    v158 += 2;
    v159 += 2;
    v160 += 2;
    v161 -= 8;
  }

  while (v161);
  if (v49 != v45)
  {
    goto LABEL_22;
  }

LABEL_24:
  v58 = *v7[315];
  v59 = *v5[315];
  v60 = **(a1 + 2520);
  if (v45 < 8)
  {
    v61 = 0;
LABEL_26:
    v62 = v45 - v61;
    v63 = v61;
    v64 = &v60->f32[v63];
    v65 = &v59->f32[v63];
    v66 = &v58->f32[v63];
    do
    {
      v67 = *v66++;
      v68 = v67;
      v69 = *v65++;
      *v64++ = v68 - v69;
      --v62;
    }

    while (v62);
    goto LABEL_28;
  }

  v61 = 0;
  if ((v60 - v58) < 0x20)
  {
    goto LABEL_26;
  }

  if ((v60 - v59) < 0x20)
  {
    goto LABEL_26;
  }

  v61 = v45 & 0x7FFFFFF8;
  v163 = v58 + 1;
  v164 = v59 + 1;
  v165 = v60 + 1;
  v166 = v61;
  do
  {
    result = vsubq_f32(v163[-1], v164[-1]);
    v167 = vsubq_f32(*v163, *v164);
    v165[-1] = result;
    *v165 = v167;
    v163 += 2;
    v164 += 2;
    v165 += 2;
    v166 -= 8;
  }

  while (v166);
  if (v61 != v45)
  {
    goto LABEL_26;
  }

LABEL_28:
  v70 = *v7[314];
  v71 = *v5[314];
  v72 = **(a1 + 2512);
  if (v45 < 8)
  {
    v73 = 0;
LABEL_30:
    v74 = v45 - v73;
    v75 = v73;
    v76 = &v72->f32[v75];
    v77 = &v71->f32[v75];
    v78 = &v70->f32[v75];
    do
    {
      v79 = *v78++;
      v80 = v79;
      v81 = *v77++;
      *v76++ = v80 - v81;
      --v74;
    }

    while (v74);
    goto LABEL_32;
  }

  v73 = 0;
  if ((v72 - v70) < 0x20)
  {
    goto LABEL_30;
  }

  if ((v72 - v71) < 0x20)
  {
    goto LABEL_30;
  }

  v73 = v45 & 0x7FFFFFF8;
  v168 = v70 + 1;
  v169 = v71 + 1;
  v170 = v72 + 1;
  v171 = v73;
  do
  {
    result = vsubq_f32(v168[-1], v169[-1]);
    v172 = vsubq_f32(*v168, *v169);
    v170[-1] = result;
    *v170 = v172;
    v168 += 2;
    v169 += 2;
    v170 += 2;
    v171 -= 8;
  }

  while (v171);
  if (v73 != v45)
  {
    goto LABEL_30;
  }

LABEL_32:
  v82 = *v7[316];
  v83 = *v5[316];
  v84 = **(a1 + 2528);
  if (v45 < 8)
  {
    v85 = 0;
LABEL_34:
    v86 = v45 - v85;
    v87 = v85;
    v88 = (v84 + v87 * 4);
    v89 = &v83->f32[v87];
    v90 = &v82->f32[v87];
    do
    {
      v91 = *v90++;
      v92 = v91;
      v93 = *v89++;
      result.f32[0] = v92 - v93;
      *v88++ = result.i32[0];
      --v86;
    }

    while (v86);
    goto LABEL_36;
  }

  v85 = 0;
  if ((v84 - v82) < 0x20)
  {
    goto LABEL_34;
  }

  if ((v84 - v83) < 0x20)
  {
    goto LABEL_34;
  }

  v85 = v45 & 0x7FFFFFF8;
  v173 = v82 + 1;
  v174 = v83 + 1;
  v175 = v84 + 1;
  v176 = v85;
  do
  {
    result = vsubq_f32(v173[-1], v174[-1]);
    v177 = vsubq_f32(*v173, *v174);
    v175[-1] = result;
    *v175 = v177;
    v173 += 2;
    v174 += 2;
    v175 += 2;
    v176 -= 8;
  }

  while (v176);
  if (v85 != v45)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (!v8)
  {
    return result;
  }

  v94 = (v8 * v8);
  v95 = *v7[317];
  v96 = *v5[317];
  v97 = **(a1 + 2536);
  if (v94 < 8)
  {
    v98 = 0;
LABEL_39:
    v99 = v94 - v98;
    v100 = v98;
    v101 = &v97->f32[v100];
    v102 = &v96->f32[v100];
    v103 = &v95->f32[v100];
    do
    {
      v104 = *v103++;
      v105 = v104;
      v106 = *v102++;
      *v101++ = v105 - v106;
      --v99;
    }

    while (v99);
    goto LABEL_41;
  }

  v98 = 0;
  if ((v97 - v95) < 0x20)
  {
    goto LABEL_39;
  }

  if ((v97 - v96) < 0x20)
  {
    goto LABEL_39;
  }

  v98 = v94 & 0x7FFFFFF8;
  v178 = v95 + 1;
  v179 = v96 + 1;
  v180 = v97 + 1;
  v181 = v98;
  do
  {
    result = vsubq_f32(v178[-1], v179[-1]);
    v182 = vsubq_f32(*v178, *v179);
    v180[-1] = result;
    *v180 = v182;
    v178 += 2;
    v179 += 2;
    v180 += 2;
    v181 -= 8;
  }

  while (v181);
  if (v98 != v94)
  {
    goto LABEL_39;
  }

LABEL_41:
  v107 = *v7[319];
  v108 = *v5[319];
  v109 = **(a1 + 2552);
  if (v94 < 8)
  {
    v110 = 0;
LABEL_43:
    v111 = v94 - v110;
    v112 = v110;
    v113 = &v109->f32[v112];
    v114 = &v108->f32[v112];
    v115 = &v107->f32[v112];
    do
    {
      v116 = *v115++;
      v117 = v116;
      v118 = *v114++;
      *v113++ = v117 - v118;
      --v111;
    }

    while (v111);
    goto LABEL_45;
  }

  v110 = 0;
  if ((v109 - v107) < 0x20)
  {
    goto LABEL_43;
  }

  if ((v109 - v108) < 0x20)
  {
    goto LABEL_43;
  }

  v110 = v94 & 0x7FFFFFF8;
  v183 = v107 + 1;
  v184 = v108 + 1;
  v185 = v109 + 1;
  v186 = v110;
  do
  {
    result = vsubq_f32(v183[-1], v184[-1]);
    v187 = vsubq_f32(*v183, *v184);
    v185[-1] = result;
    *v185 = v187;
    v183 += 2;
    v184 += 2;
    v185 += 2;
    v186 -= 8;
  }

  while (v186);
  if (v110 != v94)
  {
    goto LABEL_43;
  }

LABEL_45:
  v119 = *v7[318];
  v120 = *v5[318];
  v121 = **(a1 + 2544);
  if (v94 < 8)
  {
    v122 = 0;
LABEL_47:
    v123 = v94 - v122;
    v124 = v122;
    v125 = &v121->f32[v124];
    v126 = &v120->f32[v124];
    v127 = &v119->f32[v124];
    do
    {
      v128 = *v127++;
      v129 = v128;
      v130 = *v126++;
      *v125++ = v129 - v130;
      --v123;
    }

    while (v123);
    goto LABEL_49;
  }

  v122 = 0;
  if ((v121 - v119) < 0x20)
  {
    goto LABEL_47;
  }

  if ((v121 - v120) < 0x20)
  {
    goto LABEL_47;
  }

  v122 = v94 & 0x7FFFFFF8;
  v188 = v119 + 1;
  v189 = v120 + 1;
  v190 = v121 + 1;
  v191 = v122;
  do
  {
    result = vsubq_f32(v188[-1], v189[-1]);
    v192 = vsubq_f32(*v188, *v189);
    v190[-1] = result;
    *v190 = v192;
    v188 += 2;
    v189 += 2;
    v190 += 2;
    v191 -= 8;
  }

  while (v191);
  if (v122 != v94)
  {
    goto LABEL_47;
  }

LABEL_49:
  v131 = *v7[320];
  v132 = *v5[320];
  v133 = **(a1 + 2560);
  if (v94 < 8)
  {
    v134 = 0;
LABEL_51:
    v135 = v94 - v134;
    v136 = v134;
    v137 = (v133 + v136 * 4);
    v138 = &v132->f32[v136];
    v139 = &v131->f32[v136];
    do
    {
      v140 = *v139++;
      v141 = v140;
      v142 = *v138++;
      result.f32[0] = v141 - v142;
      *v137++ = result.i32[0];
      --v135;
    }

    while (v135);
    return result;
  }

  v134 = 0;
  if ((v133 - v131) < 0x20)
  {
    goto LABEL_51;
  }

  if ((v133 - v132) < 0x20)
  {
    goto LABEL_51;
  }

  v134 = v94 & 0x7FFFFFF8;
  v193 = v131 + 1;
  v194 = v132 + 1;
  v195 = v133 + 1;
  v196 = v134;
  do
  {
    result = vsubq_f32(v193[-1], v194[-1]);
    v197 = vsubq_f32(*v193, *v194);
    v195[-1] = result;
    *v195 = v197;
    v193 += 2;
    v194 += 2;
    v195 += 2;
    v196 -= 8;
  }

  while (v196);
  if (v134 != v94)
  {
    goto LABEL_51;
  }

  return result;
}

void sub_19D3427BC(int a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
LABEL_4:
    operator new();
  }

  __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  goto LABEL_4;
}

uint64_t sub_19D342934(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 2568);
  v5 = v3[321];
  v6 = *(a1 + 52);
  if (v6 >= 8)
  {
    v7 = *v4;
    v8 = *v5;
    v9 = v6 / 8;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      v8 += 2;
      v12 = vaddq_f32(v7[1], v11);
      *v7 = vaddq_f32(*v7, v10);
      v7[1] = v12;
      v7 += 2;
      --v9;
    }

    while (v9);
  }

  v13 = 8 * (v6 / 8);
  if (v13 < v6)
  {
    v14 = *v5;
    v15 = *v4;
    v16 = v13;
    v17 = v6 - v13;
    if (v17 <= 7)
    {
      goto LABEL_14;
    }

    v18 = 4 * v13;
    if (v15 + v18 < &v14->f32[v6] && v14 + v18 < &v15->f32[v6])
    {
      goto LABEL_14;
    }

    v19 = v17 - (v6 & 7) + v13;
    v20 = v13 + (v6 & 7) - v6;
    v21 = v18 + 16;
    v22 = (v14 + v18 + 16);
    v23 = (v15 + v21);
    do
    {
      v24 = vaddq_f32(*v23, *v22);
      v23[-1] = vaddq_f32(v23[-1], v22[-1]);
      *v23 = v24;
      v22 += 2;
      v23 += 2;
      v20 += 8;
    }

    while (v20);
    v16 = v19;
    if ((v6 & 7) != 0)
    {
LABEL_14:
      v25 = v6 - v16;
      v26 = &v15->f32[v16];
      v27 = &v14->f32[v16];
      do
      {
        v28 = *v27++;
        *v26 = *v26 + v28;
        ++v26;
        --v25;
      }

      while (v25);
    }
  }

  v29 = *(a1 + 2576);
  v30 = v3[322];
  v31 = *(a1 + 52);
  if (v31 >= 8)
  {
    v32 = *v29;
    v33 = *v30;
    v34 = v31 / 8;
    do
    {
      v35 = *v33;
      v36 = v33[1];
      v33 += 2;
      v37 = vaddq_f32(v32[1], v36);
      *v32 = vaddq_f32(*v32, v35);
      v32[1] = v37;
      v32 += 2;
      --v34;
    }

    while (v34);
  }

  v38 = 8 * (v31 / 8);
  if (v38 < v31)
  {
    v39 = *v30;
    v40 = *v29;
    v41 = v38;
    v42 = v31 - v38;
    if (v42 <= 7)
    {
      goto LABEL_26;
    }

    v43 = 4 * v38;
    if (v40 + v43 < &v39->f32[v31] && v39 + v43 < &v40->f32[v31])
    {
      goto LABEL_26;
    }

    v44 = v42 - (v31 & 7) + v38;
    v45 = v38 + (v31 & 7) - v31;
    v46 = v43 + 16;
    v47 = (v39 + v43 + 16);
    v48 = (v40 + v46);
    do
    {
      v49 = vaddq_f32(*v48, *v47);
      v48[-1] = vaddq_f32(v48[-1], v47[-1]);
      *v48 = v49;
      v47 += 2;
      v48 += 2;
      v45 += 8;
    }

    while (v45);
    v41 = v44;
    if ((v31 & 7) != 0)
    {
LABEL_26:
      v50 = v31 - v41;
      v51 = &v40->f32[v41];
      v52 = &v39->f32[v41];
      do
      {
        v53 = *v52++;
        *v51 = *v51 + v53;
        ++v51;
        --v50;
      }

      while (v50);
    }
  }

  v54 = *(a1 + 2584);
  v55 = v3[323];
  v56 = *(a1 + 52);
  if (v56 >= 8)
  {
    v57 = *v54;
    v58 = *v55;
    v59 = v56 / 8;
    do
    {
      v60 = *v58;
      v61 = v58[1];
      v58 += 2;
      v62 = vaddq_f32(v57[1], v61);
      *v57 = vaddq_f32(*v57, v60);
      v57[1] = v62;
      v57 += 2;
      --v59;
    }

    while (v59);
  }

  v63 = 8 * (v56 / 8);
  if (v63 < v56)
  {
    v64 = *v55;
    v65 = *v54;
    v66 = v63;
    v67 = v56 - v63;
    if (v67 <= 7)
    {
      goto LABEL_38;
    }

    v68 = 4 * v63;
    if (v65 + v68 < &v64->f32[v56] && v64 + v68 < &v65->f32[v56])
    {
      goto LABEL_38;
    }

    v69 = v67 - (v56 & 7) + v63;
    v70 = v63 + (v56 & 7) - v56;
    v71 = v68 + 16;
    v72 = (v64 + v68 + 16);
    v73 = (v65 + v71);
    do
    {
      v74 = vaddq_f32(*v73, *v72);
      v73[-1] = vaddq_f32(v73[-1], v72[-1]);
      *v73 = v74;
      v72 += 2;
      v73 += 2;
      v70 += 8;
    }

    while (v70);
    v66 = v69;
    if ((v56 & 7) != 0)
    {
LABEL_38:
      v75 = v56 - v66;
      v76 = &v65->f32[v66];
      v77 = &v64->f32[v66];
      do
      {
        v78 = *v77++;
        *v76 = *v76 + v78;
        ++v76;
        --v75;
      }

      while (v75);
    }
  }

  v79 = *(a1 + 2504);
  v80 = v3[313];
  v81 = *(a1 + 48) * *(a1 + 52);
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v80, 1, &v104, *v79, 1, *v79, 1, v81);
  v82 = *(a1 + 2512);
  v83 = v3[314];
  v84 = *(a1 + 48) * *(a1 + 52);
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v83, 1, &v104, *v82, 1, *v82, 1, v84);
  v85 = *(a1 + 2520);
  v86 = v3[315];
  v87 = *(a1 + 48) * *(a1 + 52);
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v86, 1, &v104, *v85, 1, *v85, 1, v87);
  v88 = *(a1 + 2528);
  v89 = v3[316];
  v90 = *(a1 + 48) * *(a1 + 52);
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v89, 1, &v104, *v88, 1, *v88, 1, v90);
  v91 = *(a1 + 2536);
  v92 = v3[317];
  v93 = (*(a1 + 52) * *(a1 + 52));
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v92, 1, &v104, *v91, 1, *v91, 1, v93);
  v94 = *(a1 + 2544);
  v95 = v3[318];
  v96 = (*(a1 + 52) * *(a1 + 52));
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v95, 1, &v104, *v94, 1, *v94, 1, v96);
  v97 = *(a1 + 2552);
  v98 = v3[319];
  v99 = (*(a1 + 52) * *(a1 + 52));
  v104 = 1065353216;
  MEMORY[0x19EAFB1F0](*v98, 1, &v104, *v97, 1, *v97, 1, v99);
  v100 = *(a1 + 2560);
  v101 = v3[320];
  v102 = (*(a1 + 52) * *(a1 + 52));
  v104 = 1065353216;
  return MEMORY[0x19EAFB1F0](*v101, 1, &v104, *v100, 1, *v100, 1, v102);
}

void sub_19D342E84(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  v5 = (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  v69 = *&v5;
  (***(a1 + 1552))(v4);
  (***(a1 + 1560))(v4);
  (***(a1 + 1568))(v4);
  (***(a1 + 1576))(v4);
  (***(a1 + 1584))(v4);
  (***(a1 + 1592))(v4);
  (***(a1 + 1600))(v4);
  (***(a1 + 1608))(v4);
  v6 = *(a1 + 2568);
  v7 = *(a1 + 52);
  v8 = v7;
  if (v7 <= 0)
  {
    v10 = *v6;
    goto LABEL_42;
  }

  v9 = *v3[321];
  v10 = *v6;
  v11 = 4 * v7;
  if (v7 >= 8)
  {
    v13 = v69;
    if (v10 >= &v9->f32[v11 / 4] || v9 >= &v10[v11 / 4])
    {
      v12 = v7 & 0x7FFFFFF8;
      v14 = v9 + 1;
      v15 = (v10 + 4);
      v16 = v12;
      do
      {
        v17 = vmlaq_n_f32(*v15, *v14, v69);
        v15[-1] = vmlaq_n_f32(v15[-1], v14[-1], v69);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v12 == v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = v69;
  }

  v18 = v7 - v12;
  v19 = v12;
  v20 = &v10[v12];
  v21 = &v9->f32[v19];
  do
  {
    v22 = *v21++;
    *v20 = *v20 + (v22 * v13);
    ++v20;
    --v18;
  }

  while (v18);
LABEL_16:
  v23 = *v3[322];
  v24 = **(a1 + 2576);
  if (v7 >= 8 && (v24 < (v23 + v11) ? (v25 = v23 >= (v24 + v11)) : (v25 = 1), v25))
  {
    v26 = v7 & 0x7FFFFFF8;
    v27 = v23 + 1;
    v28 = v24 + 1;
    v29 = v26;
    do
    {
      v30 = vmlaq_n_f32(*v28, *v27, v13);
      v28[-1] = vmlaq_n_f32(v28[-1], v27[-1], v13);
      *v28 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 8;
    }

    while (v29);
    if (v26 == v7)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v26 = 0;
  }

  v31 = v7 - v26;
  v32 = v26;
  v33 = &v24->f32[v32];
  v34 = &v23->f32[v32];
  do
  {
    v35 = *v34++;
    *v33 = *v33 + (v35 * v13);
    ++v33;
    --v31;
  }

  while (v31);
LABEL_29:
  v36 = *v3[323];
  v37 = **(a1 + 2584);
  if (v7 < 8 || (v37 < (v36 + v11) ? (v38 = v36 >= (v37 + v11)) : (v38 = 1), !v38))
  {
    v39 = 0;
LABEL_40:
    v44 = v7 - v39;
    v45 = v39;
    v46 = &v37->f32[v39];
    v47 = &v36->f32[v45];
    do
    {
      v48 = *v47++;
      *v46 = *v46 + (v48 * v13);
      ++v46;
      --v44;
    }

    while (v44);
    goto LABEL_42;
  }

  v39 = v7 & 0x7FFFFFF8;
  v40 = v36 + 1;
  v41 = v37 + 1;
  v42 = v39;
  do
  {
    v43 = vmlaq_n_f32(*v41, *v40, v13);
    v41[-1] = vmlaq_n_f32(v41[-1], v40[-1], v13);
    *v41 = v43;
    v40 += 2;
    v41 += 2;
    v42 -= 8;
  }

  while (v42);
  if (v39 != v7)
  {
    goto LABEL_40;
  }

LABEL_42:
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(v10, 1, &__B, &__C, v10, 1, v8);
  v49 = *(a1 + 2576);
  v50 = *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v49, 1, &__B, &__C, *v49, 1, v50);
  v51 = *(a1 + 2584);
  v52 = *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v51, 1, &__B, &__C, *v51, 1, v52);
  v53 = *(a1 + 2504);
  v54 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v53, 1, &__B, &__C, *v53, 1, v54);
  v55 = *(a1 + 2512);
  v56 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v55, 1, &__B, &__C, *v55, 1, v56);
  v57 = *(a1 + 2520);
  v58 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v57, 1, &__B, &__C, *v57, 1, v58);
  v59 = *(a1 + 2528);
  v60 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v59, 1, &__B, &__C, *v59, 1, v60);
  v61 = *(a1 + 2536);
  v62 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v61, 1, &__B, &__C, *v61, 1, v62);
  v63 = *(a1 + 2544);
  v64 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v63, 1, &__B, &__C, *v63, 1, v64);
  v65 = *(a1 + 2552);
  v66 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v65, 1, &__B, &__C, *v65, 1, v66);
  v67 = *(a1 + 2560);
  v68 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v67, 1, &__B, &__C, *v67, 1, v68);
}

void sub_19D343578(uint64_t a1, float a2)
{
  v4 = *(a1 + 2568);
  v5 = -a2;
  v6 = *(a1 + 52);
  __C = a2;
  __B = -a2;
  vDSP_vclip(*v4, 1, &__B, &__C, *v4, 1, v6);
  v7 = *(a1 + 2576);
  v8 = *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v7, 1, &__B, &__C, *v7, 1, v8);
  v9 = *(a1 + 2584);
  v10 = *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v9, 1, &__B, &__C, *v9, 1, v10);
  v11 = *(a1 + 2504);
  v12 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v11, 1, &__B, &__C, *v11, 1, v12);
  v13 = *(a1 + 2512);
  v14 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v13, 1, &__B, &__C, *v13, 1, v14);
  v15 = *(a1 + 2520);
  v16 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v15, 1, &__B, &__C, *v15, 1, v16);
  v17 = *(a1 + 2528);
  v18 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v17, 1, &__B, &__C, *v17, 1, v18);
  v19 = *(a1 + 2536);
  v20 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v19, 1, &__B, &__C, *v19, 1, v20);
  v21 = *(a1 + 2544);
  v22 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v21, 1, &__B, &__C, *v21, 1, v22);
  v23 = *(a1 + 2552);
  v24 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v23, 1, &__B, &__C, *v23, 1, v24);
  v25 = *(a1 + 2560);
  v26 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v25, 1, &__B, &__C, *v25, 1, v26);
}

uint64_t sub_19D343788(uint64_t result, float a2)
{
  v2 = *(result + 52);
  if (v2 < 1)
  {
    goto LABEL_23;
  }

  v3 = **(result + 2568);
  if (v2 < 8)
  {
    v4 = 0;
LABEL_7:
    v8 = v2 - v4;
    v9 = &v3->f32[v4];
    do
    {
      *v9 = *v9 * a2;
      ++v9;
      --v8;
    }

    while (v8);
    goto LABEL_9;
  }

  v4 = v2 & 0x7FFFFFF8;
  v5 = v3 + 1;
  v6 = v4;
  do
  {
    v7 = vmulq_n_f32(*v5, a2);
    v5[-1] = vmulq_n_f32(v5[-1], a2);
    *v5 = v7;
    v5 += 2;
    v6 -= 8;
  }

  while (v6);
  if (v4 != v2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v10 = **(result + 2576);
  if (v2 >= 8)
  {
    v11 = v2 & 0x7FFFFFF8;
    v12 = v10 + 1;
    v13 = v11;
    do
    {
      v14 = vmulq_n_f32(*v12, a2);
      v12[-1] = vmulq_n_f32(v12[-1], a2);
      *v12 = v14;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
    if (v11 == v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v2 - v11;
  v16 = &v10->f32[v11];
  do
  {
    *v16 = *v16 * a2;
    ++v16;
    --v15;
  }

  while (v15);
LABEL_16:
  v17 = **(result + 2584);
  if (v2 < 8)
  {
    v18 = 0;
LABEL_21:
    v22 = v2 - v18;
    v23 = &v17->f32[v18];
    do
    {
      *v23 = *v23 * a2;
      ++v23;
      --v22;
    }

    while (v22);
    goto LABEL_23;
  }

  v18 = v2 & 0x7FFFFFF8;
  v19 = v17 + 1;
  v20 = v18;
  do
  {
    v21 = vmulq_n_f32(*v19, a2);
    v19[-1] = vmulq_n_f32(v19[-1], a2);
    *v19 = v21;
    v19 += 2;
    v20 -= 8;
  }

  while (v20);
  if (v18 != v2)
  {
    goto LABEL_21;
  }

LABEL_23:
  v24 = (*(result + 48) * v2);
  if (v24 < 1)
  {
    goto LABEL_52;
  }

  v25 = **(result + 2504);
  if (v24 < 8)
  {
    v26 = 0;
LABEL_29:
    v30 = v24 - v26;
    v31 = &v25->f32[v26];
    do
    {
      *v31 = *v31 * a2;
      ++v31;
      --v30;
    }

    while (v30);
    goto LABEL_31;
  }

  v26 = v24 & 0x7FFFFFF8;
  v27 = v25 + 1;
  v28 = v26;
  do
  {
    v29 = vmulq_n_f32(*v27, a2);
    v27[-1] = vmulq_n_f32(v27[-1], a2);
    *v27 = v29;
    v27 += 2;
    v28 -= 8;
  }

  while (v28);
  if (v26 != v24)
  {
    goto LABEL_29;
  }

LABEL_31:
  v32 = **(result + 2512);
  if (v24 < 8)
  {
    v33 = 0;
LABEL_36:
    v37 = v24 - v33;
    v38 = &v32->f32[v33];
    do
    {
      *v38 = *v38 * a2;
      ++v38;
      --v37;
    }

    while (v37);
    goto LABEL_38;
  }

  v33 = v24 & 0x7FFFFFF8;
  v34 = v32 + 1;
  v35 = v33;
  do
  {
    v36 = vmulq_n_f32(*v34, a2);
    v34[-1] = vmulq_n_f32(v34[-1], a2);
    *v34 = v36;
    v34 += 2;
    v35 -= 8;
  }

  while (v35);
  if (v33 != v24)
  {
    goto LABEL_36;
  }

LABEL_38:
  v39 = **(result + 2520);
  if (v24 < 8)
  {
    v40 = 0;
LABEL_43:
    v44 = v24 - v40;
    v45 = &v39->f32[v40];
    do
    {
      *v45 = *v45 * a2;
      ++v45;
      --v44;
    }

    while (v44);
    goto LABEL_45;
  }

  v40 = v24 & 0x7FFFFFF8;
  v41 = v39 + 1;
  v42 = v40;
  do
  {
    v43 = vmulq_n_f32(*v41, a2);
    v41[-1] = vmulq_n_f32(v41[-1], a2);
    *v41 = v43;
    v41 += 2;
    v42 -= 8;
  }

  while (v42);
  if (v40 != v24)
  {
    goto LABEL_43;
  }

LABEL_45:
  v46 = **(result + 2528);
  if (v24 < 8)
  {
    v47 = 0;
LABEL_50:
    v51 = v24 - v47;
    v52 = &v46->f32[v47];
    do
    {
      *v52 = *v52 * a2;
      ++v52;
      --v51;
    }

    while (v51);
    goto LABEL_52;
  }

  v47 = v24 & 0x7FFFFFF8;
  v48 = v46 + 1;
  v49 = v47;
  do
  {
    v50 = vmulq_n_f32(*v48, a2);
    v48[-1] = vmulq_n_f32(v48[-1], a2);
    *v48 = v50;
    v48 += 2;
    v49 -= 8;
  }

  while (v49);
  if (v47 != v24)
  {
    goto LABEL_50;
  }

LABEL_52:
  if (!v2)
  {
    return result;
  }

  v53 = (v2 * v2);
  v54 = **(result + 2536);
  if (v53 < 8)
  {
    v55 = 0;
LABEL_58:
    v59 = v53 - v55;
    v60 = &v54->f32[v55];
    do
    {
      *v60 = *v60 * a2;
      ++v60;
      --v59;
    }

    while (v59);
    goto LABEL_60;
  }

  v55 = v53 & 0x7FFFFFF8;
  v56 = v54 + 1;
  v57 = v55;
  do
  {
    v58 = vmulq_n_f32(*v56, a2);
    v56[-1] = vmulq_n_f32(v56[-1], a2);
    *v56 = v58;
    v56 += 2;
    v57 -= 8;
  }

  while (v57);
  if (v55 != v53)
  {
    goto LABEL_58;
  }

LABEL_60:
  v61 = **(result + 2544);
  if (v53 < 8)
  {
    v62 = 0;
LABEL_65:
    v66 = v53 - v62;
    v67 = &v61->f32[v62];
    do
    {
      *v67 = *v67 * a2;
      ++v67;
      --v66;
    }

    while (v66);
    goto LABEL_67;
  }

  v62 = v53 & 0x7FFFFFF8;
  v63 = v61 + 1;
  v64 = v62;
  do
  {
    v65 = vmulq_n_f32(*v63, a2);
    v63[-1] = vmulq_n_f32(v63[-1], a2);
    *v63 = v65;
    v63 += 2;
    v64 -= 8;
  }

  while (v64);
  if (v62 != v53)
  {
    goto LABEL_65;
  }

LABEL_67:
  v68 = **(result + 2552);
  if (v53 < 8)
  {
    v69 = 0;
LABEL_72:
    v73 = v53 - v69;
    v74 = &v68->f32[v69];
    do
    {
      *v74 = *v74 * a2;
      ++v74;
      --v73;
    }

    while (v73);
    goto LABEL_74;
  }

  v69 = v53 & 0x7FFFFFF8;
  v70 = v68 + 1;
  v71 = v69;
  do
  {
    v72 = vmulq_n_f32(*v70, a2);
    v70[-1] = vmulq_n_f32(v70[-1], a2);
    *v70 = v72;
    v70 += 2;
    v71 -= 8;
  }

  while (v71);
  if (v69 != v53)
  {
    goto LABEL_72;
  }

LABEL_74:
  v75 = **(result + 2560);
  if (v53 < 8)
  {
    v76 = 0;
LABEL_79:
    v80 = v53 - v76;
    v81 = &v75->f32[v76];
    do
    {
      *v81 = *v81 * a2;
      ++v81;
      --v80;
    }

    while (v80);
    return result;
  }

  v76 = v53 & 0x7FFFFFF8;
  v77 = v75 + 1;
  v78 = v76;
  do
  {
    v79 = vmulq_n_f32(*v77, a2);
    v77[-1] = vmulq_n_f32(v77[-1], a2);
    *v77 = v79;
    v77 += 2;
    v78 -= 8;
  }

  while (v78);
  if (v76 != v53)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t sub_19D343BFC(uint64_t result)
{
  if (*(result + 2688) >= 1)
  {
    operator new();
  }

  return result;
}

int *sub_19D343D80(int *result, uint64_t *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *a4;
    do
    {
      v10 = v7[13];
      v11 = *(*(v7 + 20) + 8 * a3);
      v12 = *a2;
      *(v12 + 16 * v9) = v10;
      v13 = 4 * v10 * v8;
      memmove(**(v12 + 16 * *a4 + 8), (v11 + v13), 4 * v10);
      v14 = *a4;
      *a4 = v14 + 1;
      v15 = *(*(v7 + 23) + 8 * a3);
      v16 = v7[13];
      v17 = *a2;
      *(*a2 + 16 * v14 + 16) = v16;
      result = memmove(**(v17 + 16 * *a4 + 8), (v15 + v13), 4 * v16);
      v9 = *a4 + 1;
      *a4 = v9;
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

int *sub_19D343E6C(int *result, void *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(*(v7 + 20) + 8 * a3);
      v10 = 4 * v7[13] * v8;
      v11 = *(*(v7 + 23) + 8 * a3);
      v12 = *a4;
      *a4 = v12 + 1;
      memmove((v9 + v10), **(*a2 + 16 * v12 + 8), 4 * v7[13]);
      v13 = *a4;
      *a4 = v13 + 1;
      result = memmove((v11 + v10), **(*a2 + 16 * v13 + 8), 4 * v7[13]);
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

void sub_19D343F48(uint64_t a1, void *a2, int *a3)
{
  if (*(a1 + 2688) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      bzero(**(*a2 + 16 * v7 + 8), 4 * *(*a2 + 16 * v7));
      v8 = *a3;
      *a3 = v8 + 1;
      bzero(**(*a2 + 16 * v8 + 24), 4 * *(*a2 + 16 * v8 + 16));
      v7 = *a3 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 2688));
  }
}

void sub_19D343FF0(uint64_t a1)
{
  if (*(a1 + 2692) == 1)
  {
    v2 = *(a1 + 1552);
    BYTE7(v18[2]) = 18;
    strcpy(v18, "LSTM before reseLSTM before reset ");
    (*(*v2 + 40))(v2, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v3 = *(a1 + 1560);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v3 + 40))(v3, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v4 = *(a1 + 1568);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v4 + 40))(v4, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v5 = *(a1 + 1576);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v5 + 40))(v5, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v6 = *(a1 + 1584);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v6 + 40))(v6, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v7 = *(a1 + 1592);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v7 + 40))(v7, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v8 = *(a1 + 1600);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v8 + 40))(v8, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v9 = *(a1 + 1608);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v9 + 40))(v9, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    (*(**(a1 + 1552) + 16))(*(a1 + 1552));
    (*(**(a1 + 1560) + 16))(*(a1 + 1560));
    (*(**(a1 + 1568) + 16))(*(a1 + 1568));
    (*(**(a1 + 1576) + 16))(*(a1 + 1576));
    (*(**(a1 + 1584) + 16))(*(a1 + 1584));
    (*(**(a1 + 1592) + 16))(*(a1 + 1592));
    (*(**(a1 + 1600) + 16))(*(a1 + 1600));
    (*(**(a1 + 1608) + 16))(*(a1 + 1608));
    v10 = *(a1 + 1552);
    BYTE7(v18[2]) = 17;
    strcpy(v18, "LSTM AFTER resetLSTM AFTER reset ");
    (*(*v10 + 40))(v10, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v11 = *(a1 + 1560);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v11 + 40))(v11, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v12 = *(a1 + 1568);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v12 + 40))(v12, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v13 = *(a1 + 1576);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v13 + 40))(v13, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v14 = *(a1 + 1584);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v14 + 40))(v14, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v15 = *(a1 + 1592);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v15 + 40))(v15, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v16 = *(a1 + 1600);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v16 + 40))(v16, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v17 = *(a1 + 1608);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v17 + 40))(v17, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }
  }
}

void sub_19D3446E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D34473C(uint64_t a1, uint64_t a2)
{
  v11 = **(a1 + 2504);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2512);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2528);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2520);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v4 = *(a1 + 52);
  v11 = **(a1 + 2536);
  v12.i32[0] = v4;
  v12.i32[1] = v4;
  sub_19D309FB0(a2, &v11);
  v5 = *(a1 + 52);
  v11 = **(a1 + 2544);
  v12.i32[0] = v5;
  v12.i32[1] = v5;
  sub_19D309FB0(a2, &v11);
  v6 = *(a1 + 52);
  v11 = **(a1 + 2560);
  v12.i32[0] = v6;
  v12.i32[1] = v6;
  sub_19D309FB0(a2, &v11);
  v7 = *(a1 + 52);
  v11 = **(a1 + 2552);
  v12.i32[0] = v7;
  v12.i32[1] = v7;
  sub_19D309FB0(a2, &v11);
  v8 = *(a1 + 52);
  v11 = **(a1 + 2568);
  v12 = v8;
  sub_19D309FB0(a2, &v11);
  v9 = *(a1 + 52);
  v11 = **(a1 + 2576);
  v12 = v9;
  sub_19D309FB0(a2, &v11);
  v10 = *(a1 + 52);
  v11 = **(a1 + 2584);
  v12 = v10;
  sub_19D309FB0(a2, &v11);
}

__n128 sub_19D3448D8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2-- - 2);
  a1[29] = v3;
  a1[313] = a1 + 29;
  *(a2 + 8) = v2;
  *v2 = *(v2 - 1);
  a1[30] = *v2;
  a1[314] = a1 + 30;
  v4 = *(a2 + 8);
  *(a2 + 8) = v4 - 16;
  *v2 = *(v4 - 32);
  a1[32] = *v2;
  a1[316] = a1 + 32;
  v5 = *(a2 + 8);
  *(a2 + 8) = v5 - 16;
  *v2 = *(v5 - 32);
  a1[31] = *v2;
  v6 = a1 + 31;
  v6[284] = v6;
  v7 = *(a2 + 8);
  *(a2 + 8) = v7 - 16;
  *v2 = *(v7 - 32);
  v6[2] = *v2;
  v6[286] = v6 + 2;
  v8 = *(a2 + 8);
  *(a2 + 8) = v8 - 16;
  *v2 = *(v8 - 32);
  v6[3] = *v2;
  v6[287] = v6 + 3;
  v9 = *(a2 + 8);
  *(a2 + 8) = v9 - 16;
  *v2 = *(v9 - 32);
  v6[5] = *v2;
  v6[289] = v6 + 5;
  v10 = *(a2 + 8);
  *(a2 + 8) = v10 - 16;
  *v2 = *(v10 - 32);
  v6[4] = *v2;
  v6[288] = v6 + 4;
  v11 = *(a2 + 8);
  *(a2 + 8) = v11 - 16;
  *v2 = *(v11 - 32);
  v6[6] = *v2;
  v6[290] = v6 + 6;
  v12 = *(a2 + 8);
  *(a2 + 8) = v12 - 16;
  *v2 = *(v12 - 32);
  v6[7] = *v2;
  v6[291] = v6 + 7;
  v13 = *(a2 + 8);
  *(a2 + 8) = v13 - 16;
  result = *(v13 - 32);
  *v2 = result;
  v6[8] = *v2;
  v6[292] = v6 + 8;
  *(a2 + 8) -= 16;
  return result;
}

void sub_19D344B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D344B20(void *a1)
{
  v2 = a1[329];
  v3 = a1[328];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[329];
        v3 = a1[328];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[332];
  v7 = a1[331];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[332];
        v7 = a1[331];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[328];
  }

  a1[329] = v3;
  a1[332] = v7;
  v10 = a1[136];
  v11 = a1[135];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[136];
        v11 = a1[135];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[136] = v11;
  v14 = a1[133];
  if (v14)
  {
    operator delete(v14);
    a1[133] = 0;
  }

  v15 = a1[132];
  if (v15)
  {
    operator delete(v15);
    a1[132] = 0;
  }

  v16 = a1[166];
  v17 = a1[165];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[166];
        v17 = a1[165];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[166] = v17;
  v20 = a1[163];
  if (v20)
  {
    operator delete(v20);
    a1[163] = 0;
  }

  v21 = a1[162];
  if (v21)
  {
    operator delete(v21);
    a1[162] = 0;
  }

  v22 = a1[151];
  v23 = a1[150];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[151];
        v23 = a1[150];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[151] = v23;
  v26 = a1[148];
  if (v26)
  {
    operator delete(v26);
    a1[148] = 0;
  }

  v27 = a1[147];
  if (v27)
  {
    operator delete(v27);
    a1[147] = 0;
  }

  v28 = a1[181];
  v29 = a1[180];
  if (v28 != v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v29 + 8 * v30);
      if (v31)
      {
        operator delete[](v31);
        v28 = a1[181];
        v29 = a1[180];
      }

      ++v30;
    }

    while (v30 < (v28 - v29) >> 3);
  }

  a1[181] = v29;
  v32 = a1[178];
  if (v32)
  {
    operator delete(v32);
    a1[178] = 0;
  }

  v33 = a1[177];
  if (v33)
  {
    operator delete(v33);
    a1[177] = 0;
  }
}

float32_t sub_19D344D70(uint64_t a1, float a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  if (*(a1 + 56) < 1)
  {
    v50 = a2;
    v5 = (v4 * v3);
    MEMORY[0x19EAFB1F0](*(a1 + 1464), 1, &v50, *(a1 + 232), 1, *(a1 + 232), 1, v5);
    v50 = a2;
    MEMORY[0x19EAFB1F0](*(a1 + 1480), 1, &v50, *(a1 + 248), 1, *(a1 + 248), 1, v5);
    v50 = a2;
    MEMORY[0x19EAFB1F0](*(a1 + 1472), 1, &v50, *(a1 + 240), 1, *(a1 + 240), 1, v5);
    v50 = a2;
    MEMORY[0x19EAFB1F0](*(a1 + 1488), 1, &v50, *(a1 + 256), 1, *(a1 + 256), 1, v5);
  }

  else
  {
    sub_19D347C9C(a1 + 984, a2, a1 + 232, v4);
    sub_19D347C9C(a1 + 1224, a2, a1 + 248, *(a1 + 52));
    sub_19D347C9C(a1 + 1104, a2, a1 + 240, *(a1 + 52));
    sub_19D347C9C(a1 + 1344, a2, a1 + 256, *(a1 + 52));
  }

  v6 = v4 * v4;
  v50 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1496), 1, &v50, *(a1 + 264), 1, *(a1 + 264), 1, v6);
  v50 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1512), 1, &v50, *(a1 + 280), 1, *(a1 + 280), 1, v6);
  v50 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1504), 1, &v50, *(a1 + 272), 1, *(a1 + 272), 1, v6);
  v50 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1520), 1, &v50, *(a1 + 288), 1, *(a1 + 288), 1, v6);
  v8 = *(a1 + 52);
  if (v8 < 1)
  {
    return v7.f32[0];
  }

  v9 = *(a1 + 1528);
  v10 = *(a1 + 296);
  v11 = 4 * v8;
  if (v8 >= 8 && (v10 >= (v9 + v11) || v9 >= (v10 + v11)))
  {
    v12 = v8 & 0x7FFFFFF8;
    v44 = v9 + 1;
    v45 = v10 + 1;
    v46 = v12;
    do
    {
      v47 = vmlaq_n_f32(*v45, *v44, a2);
      v45[-1] = vmlaq_n_f32(v45[-1], v44[-1], a2);
      *v45 = v47;
      v44 += 2;
      v45 += 2;
      v46 -= 8;
    }

    while (v46);
    if (v12 == v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v8 - v12;
  v14 = v12;
  v15 = &v10->f32[v14];
  v16 = &v9->f32[v14];
  do
  {
    v17 = *v16++;
    *v15 = *v15 + (v17 * a2);
    ++v15;
    --v13;
  }

  while (v13);
LABEL_11:
  v18 = *(a1 + 1544);
  v19 = *(a1 + 312);
  if (v8 < 8 || (v19 < (v18 + v11) ? (v20 = v18 >= (v19 + v11)) : (v20 = 1), !v20))
  {
    v21 = 0;
LABEL_22:
    v26 = v8 - v21;
    v27 = v21;
    v28 = &v19->f32[v27];
    v29 = &v18->f32[v27];
    do
    {
      v30 = *v29++;
      *v28 = *v28 + (v30 * a2);
      ++v28;
      --v26;
    }

    while (v26);
    goto LABEL_24;
  }

  v21 = v8 & 0x7FFFFFF8;
  v22 = v18 + 1;
  v23 = v19 + 1;
  v24 = v21;
  do
  {
    v25 = vmlaq_n_f32(*v23, *v22, a2);
    v23[-1] = vmlaq_n_f32(v23[-1], v22[-1], a2);
    *v23 = v25;
    v22 += 2;
    v23 += 2;
    v24 -= 8;
  }

  while (v24);
  if (v21 != v8)
  {
    goto LABEL_22;
  }

LABEL_24:
  v31 = *(a1 + 1536);
  v32 = *(a1 + 304);
  if (v8 < 8 || (v32 < (v31 + v11) ? (v33 = v31 >= (v32 + v11)) : (v33 = 1), !v33))
  {
    v34 = 0;
LABEL_35:
    v39 = v8 - v34;
    v40 = v34;
    v41 = &v32->f32[v34];
    v42 = &v31->f32[v40];
    do
    {
      v43 = *v42++;
      v7.f32[0] = *v41 + (v43 * a2);
      *v41++ = v7.f32[0];
      --v39;
    }

    while (v39);
    return v7.f32[0];
  }

  v34 = v8 & 0x7FFFFFF8;
  v35 = v31 + 1;
  v36 = v32 + 1;
  v37 = v34;
  do
  {
    v7 = v35[-1];
    v38 = vmlaq_n_f32(*v36, *v35, a2);
    v36[-1] = vmlaq_n_f32(v36[-1], v7, a2);
    *v36 = v38;
    v35 += 2;
    v36 += 2;
    v37 -= 8;
  }

  while (v37);
  if (v34 != v8)
  {
    goto LABEL_35;
  }

  return v7.f32[0];
}

void sub_19D345134(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v6 = a5 - 1;
  v629 = a5 - 1;
  if (a5 >= 1)
  {
    v627 = (a1 + 1648);
    v7 = (a1 + 1656);
    v636 = (a1 + 1672);
    v637 = (a1 + 1640);
    v634 = (a1 + 1680);
    v635 = (a1 + 1664);
    v633 = (a1 + 1688);
    v8 = a5 - 1;
    do
    {
      v9 = v6 - v8;
      v632 = v8;
      if (*(a1 + 2672))
      {
        v10 = v9 < v6;
      }

      else
      {
        v9 = v8;
        v10 = v8 > 0;
      }

      v631 = v10;
      if (*(a1 + 2672))
      {
        v11 = v9 > 0;
      }

      else
      {
        v11 = v9 < v6;
      }

      if (*(a1 + 2672))
      {
        v12 = v9 - 1;
      }

      else
      {
        v12 = v9 + 1;
      }

      if (*(a1 + 2672))
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v9 - 1;
      }

      v626 = v13;
      v14 = v9;
      memmove(*(*(a1 + 840) + 8 * v9), *(*a4 + 8 * v9), 4 * *(a1 + 52));
      if (v11)
      {
        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
      }

      v15 = *(*(a1 + 352) + 8 * v14);
      v641 = *(*(a1 + 376) + 8 * v14);
      v642 = v15;
      v640 = *(*(a1 + 424) + 8 * v14);
      v630 = *(*(a1 + 448) + 8 * v14);
      v639 = *(*(a1 + 400) + 8 * v14);
      v16 = *(*(a1 + 496) + 8 * v14);
      sub_19D30A0F8(v637, &v639, *(a1 + 52), *(a1 + 736));
      sub_19D30A0F8(v627, &v641, *(a1 + 52), *(a1 + 736));
      v17 = v7;
      sub_19D30A0F8(v7, &v642, *(a1 + 52), *(a1 + 736));
      sub_19D30A3C0(v636, &v640, *(a1 + 52), *(a1 + 740));
      sub_19D30A0F8(v635, &v640, *(a1 + 52), *(a1 + 740));
      sub_19D30A3C0(v634, (*(a1 + 88) + 8 * v14), *(a1 + 52), *(a1 + 744));
      sub_19D30A0F8(v633, (*(a1 + 88) + 8 * v14), *(a1 + 52), *(a1 + 744));
      v18 = *(a1 + 864);
      v19 = *(a1 + 840);
      v20 = *(a1 + 52);
      v21 = 4 * v20;
      bzero(*(v18 + 8 * v14), 4 * v20);
      v22 = v20 / 8;
      if (v20 >= 8)
      {
        v23 = *(v18 + 8 * v14);
        v24 = *(v19 + 8 * v14);
        v25 = *v634;
        v26 = v20 / 8;
        v27 = *v637;
        do
        {
          v28 = *v27;
          v29 = v27[1];
          v27 += 2;
          v30 = *v25;
          v31 = *(v25 + 4);
          v25 += 8;
          v32 = vmulq_f32(v31, v29);
          v33 = vmulq_f32(v30, v28);
          v35 = *v24;
          v34 = v24[1];
          v24 += 2;
          v36 = vmlaq_f32(v23[1], v32, v34);
          *v23 = vmlaq_f32(*v23, v33, v35);
          v23[1] = v36;
          v23 += 2;
          --v26;
        }

        while (v26);
      }

      v37 = 8 * v22;
      if (8 * v22 < v20)
      {
        v38 = *v637;
        v39 = *(v19 + 8 * v14);
        v40 = *v634;
        v41 = *(v18 + 8 * v14);
        v42 = v37;
        v43 = v20 - v37;
        if (v43 <= 7)
        {
          goto LABEL_46;
        }

        v44 = 4 * v37;
        v45 = v41 + v44;
        v46 = v41 + v21;
        v47 = v41 + v44 >= &v40[v21 / 4] || &v40[v44 / 4] >= v46;
        v48 = !v47;
        v49 = v45 >= v39 + v21 || v39 + 4 * v42 >= v46;
        v50 = !v49;
        if (v38 + v44 < v46 && v45 < v38 + v21)
        {
          goto LABEL_46;
        }

        if (v48)
        {
          goto LABEL_46;
        }

        if (v50)
        {
          goto LABEL_46;
        }

        v52 = v43 - (v20 & 7) + v42;
        v53 = v42 + (v20 & 7) - v20;
        v54 = (v41 + v44 + 16);
        v55 = (v38 + v44 + 16);
        v56 = (v39 + v44 + 16);
        v57 = &v40[v44 / 4 + 4];
        do
        {
          v58 = vmlaq_f32(*v54, vmulq_f32(*v57, *v55), *v56);
          v54[-1] = vmlaq_f32(v54[-1], vmulq_f32(v57[-1], v55[-1]), v56[-1]);
          *v54 = v58;
          v54 += 2;
          v55 += 2;
          v56 += 2;
          v57 += 2;
          v53 += 8;
        }

        while (v53);
        v42 = v52;
        if ((v20 & 7) != 0)
        {
LABEL_46:
          v59 = v20 - v42;
          v60 = (v41 + 4 * v42);
          v61 = (v39 + 4 * v42);
          v62 = &v40[v42];
          v63 = &v38->f32[v42];
          do
          {
            v64 = *v63++;
            v65 = v64;
            v66 = *v62++;
            v67 = v66;
            v68 = *v61++;
            *v60 = *v60 + ((v67 * v65) * v68);
            ++v60;
            --v59;
          }

          while (v59);
        }
      }

      v69 = *(a1 + 960);
      v70 = *(a1 + 840);
      v71 = *(a1 + 52);
      v72 = 4 * v71;
      bzero(*(v69 + 8 * v14), 4 * v71);
      v73 = v71 / 8;
      if (v71 >= 8)
      {
        v74 = *(v69 + 8 * v14);
        v75 = *(v70 + 8 * v14);
        v76 = v71 / 8;
        v77 = v16;
        v78 = *v633;
        do
        {
          v79 = *v78;
          v80 = v78[1];
          v78 += 2;
          v81 = *v77;
          v82 = v77[1];
          v77 += 2;
          v83 = vmulq_f32(v82, v80);
          v84 = vmulq_f32(v81, v79);
          v86 = *v75;
          v85 = v75[1];
          v75 += 2;
          v87 = vmlaq_f32(v74[1], v83, v85);
          *v74 = vmlaq_f32(*v74, v84, v86);
          v74[1] = v87;
          v74 += 2;
          --v76;
        }

        while (v76);
      }

      v88 = 8 * v73;
      if (8 * v73 < v71)
      {
        v89 = *(v70 + 8 * v14);
        v90 = *v633;
        v91 = *(v69 + 8 * v14);
        v92 = v88;
        v93 = v71 - v88;
        if (v93 <= 7)
        {
          goto LABEL_75;
        }

        v94 = 4 * v88;
        v95 = v91 + v94;
        v96 = v91 + v72;
        v97 = v91 + v94 >= v16 + v72 || v16 + v94 >= v96;
        v98 = !v97;
        v99 = v95 >= v89 + v72 || v89 + 4 * v92 >= v96;
        v100 = !v99;
        if (v90 + v94 < v96 && v95 < v90 + v72)
        {
          goto LABEL_75;
        }

        if (v98)
        {
          goto LABEL_75;
        }

        if (v100)
        {
          goto LABEL_75;
        }

        v102 = v93 - (v71 & 7) + v92;
        v103 = v92 + (v71 & 7) - v71;
        v104 = (v91 + v94 + 16);
        v105 = (v90 + v94 + 16);
        v106 = (v89 + v94 + 16);
        v107 = (v16 + v94 + 16);
        do
        {
          v108 = vmlaq_f32(*v104, vmulq_f32(*v107, *v105), *v106);
          v104[-1] = vmlaq_f32(v104[-1], vmulq_f32(v107[-1], v105[-1]), v106[-1]);
          *v104 = v108;
          v104 += 2;
          v105 += 2;
          v106 += 2;
          v107 += 2;
          v103 += 8;
        }

        while (v103);
        v92 = v102;
        if ((v71 & 7) != 0)
        {
LABEL_75:
          v109 = v71 - v92;
          v110 = v92;
          v111 = (v91 + v110 * 4);
          v112 = (v89 + v110 * 4);
          v113 = &v16->f32[v110];
          v114 = &v90->f32[v110];
          do
          {
            v115 = *v114++;
            v116 = v115;
            v117 = *v113++;
            v118 = v117;
            v119 = *v112++;
            *v111 = *v111 + ((v118 * v116) * v119);
            ++v111;
            --v109;
          }

          while (v109);
        }
      }

      v120 = *(a1 + 960);
      v121 = *(a1 + 864);
      v122 = *(a1 + 2584);
      v123 = *(a1 + 52);
      if (v123 >= 8)
      {
        v124 = *(v120 + 8 * v14);
        v125 = *v122;
        v126 = v123 / 8;
        v127 = *(v121 + 8 * v14);
        do
        {
          v129 = *v127;
          v128 = v127[1];
          v127 += 2;
          v131 = *v125;
          v130 = v125[1];
          v125 += 2;
          v132 = vmlaq_f32(v124[1], v130, v128);
          *v124 = vmlaq_f32(*v124, v131, v129);
          v124[1] = v132;
          v124 += 2;
          --v126;
        }

        while (v126);
      }

      v133 = 8 * (v123 / 8);
      v7 = v17;
      if (v133 < v123)
      {
        v134 = *(v121 + 8 * v14);
        v135 = *v122;
        v136 = *(v120 + 8 * v14);
        v137 = v133;
        v138 = v123 - v133;
        if (v138 <= 7)
        {
          goto LABEL_97;
        }

        v139 = 4 * v133;
        v140 = v136 + 4 * v123;
        v141 = v136 + v139 >= v135->u64 + 4 * v123 || &v135[v133 / 4u] >= v140;
        v142 = !v141;
        if (v134 + v139 < v140 && v136 + v139 < (v134 + 4 * v123))
        {
          goto LABEL_97;
        }

        if (v142)
        {
          goto LABEL_97;
        }

        v144 = v138 - (v123 & 7) + v137;
        v145 = v137 + (v123 & 7) - v123;
        v146 = (v136 + v139 + 16);
        v147 = (v134 + v139 + 16);
        v148 = (v135 + v139 + 16);
        do
        {
          v149 = vmlaq_f32(*v146, *v148, *v147);
          v146[-1] = vmlaq_f32(v146[-1], v148[-1], v147[-1]);
          *v146 = v149;
          v146 += 2;
          v147 += 2;
          v148 += 2;
          v145 += 8;
        }

        while (v145);
        v137 = v144;
        if ((v123 & 7) != 0)
        {
LABEL_97:
          v150 = v123 - v137;
          v151 = (v136 + 4 * v137);
          v152 = &v135->f32[v137];
          v153 = (v134 + 4 * v137);
          do
          {
            v154 = *v153++;
            v155 = v154;
            v156 = *v152++;
            *v151 = *v151 + (v156 * v155);
            ++v151;
            --v150;
          }

          while (v150);
        }
      }

      if (v11)
      {
        v157 = *(*(a1 + 472) + 8 * v12);
        v158 = *(a1 + 960);
        v159 = *(a1 + 888);
        v160 = *(a1 + 2576);
        v161 = *(a1 + 52);
        if (v161 >= 8)
        {
          v162 = *(v158 + 8 * v14);
          v163 = *v160;
          v164 = v161 / 8;
          v165 = *(v159 + 8 * v12);
          do
          {
            v167 = *v165;
            v166 = v165[1];
            v165 += 2;
            v169 = *v163;
            v168 = v163[1];
            v163 += 2;
            v170 = vmlaq_f32(v162[1], v168, v166);
            *v162 = vmlaq_f32(*v162, v169, v167);
            v162[1] = v170;
            v162 += 2;
            --v164;
          }

          while (v164);
        }

        v171 = 8 * (v161 / 8);
        if (v171 < v161)
        {
          v172 = *(v159 + 8 * v12);
          v173 = *v160;
          v174 = *(v158 + 8 * v14);
          v175 = v171;
          v176 = v161 - v171;
          if (v176 <= 7)
          {
            goto LABEL_120;
          }

          v177 = 4 * v171;
          v178 = v174 + 4 * v161;
          v179 = v174 + v177 >= v173->u64 + 4 * v161 || &v173[v171 / 4u] >= v178;
          v180 = !v179;
          if (v172 + v177 < v178 && v174 + v177 < (v172 + 4 * v161))
          {
            goto LABEL_120;
          }

          if (v180)
          {
            goto LABEL_120;
          }

          v182 = v176 - (v161 & 7) + v175;
          v183 = v175 + (v161 & 7) - v161;
          v184 = (v174 + v177 + 16);
          v185 = (v172 + v177 + 16);
          v186 = (v173 + v177 + 16);
          do
          {
            v187 = vmlaq_f32(*v184, *v186, *v185);
            v184[-1] = vmlaq_f32(v184[-1], v186[-1], v185[-1]);
            *v184 = v187;
            v184 += 2;
            v185 += 2;
            v186 += 2;
            v183 += 8;
          }

          while (v183);
          v175 = v182;
          if ((v161 & 7) != 0)
          {
LABEL_120:
            v188 = v161 - v175;
            v189 = (v174 + 4 * v175);
            v190 = &v173->f32[v175];
            v191 = (v172 + 4 * v175);
            do
            {
              v192 = *v191++;
              v193 = v192;
              v194 = *v190++;
              *v189 = *v189 + (v194 * v193);
              ++v189;
              --v188;
            }

            while (v188);
          }
        }

        v195 = *(a1 + 960);
        v196 = *(a1 + 912);
        v197 = *(a1 + 2568);
        v198 = *(a1 + 52);
        if (v198 >= 8)
        {
          v199 = *(v195 + 8 * v14);
          v200 = *v197;
          v201 = v198 / 8;
          v202 = *(v196 + 8 * v12);
          do
          {
            v204 = *v202;
            v203 = v202[1];
            v202 += 2;
            v206 = *v200;
            v205 = v200[1];
            v200 += 2;
            v207 = vmlaq_f32(v199[1], v205, v203);
            *v199 = vmlaq_f32(*v199, v206, v204);
            v199[1] = v207;
            v199 += 2;
            --v201;
          }

          while (v201);
        }

        v208 = 8 * (v198 / 8);
        if (v208 < v198)
        {
          v209 = *(v196 + 8 * v12);
          v210 = *v197;
          v211 = *(v195 + 8 * v14);
          v212 = v208;
          v213 = v198 - v208;
          if (v213 <= 7)
          {
            goto LABEL_142;
          }

          v214 = 4 * v208;
          v215 = v211 + 4 * v198;
          v216 = v211 + v214 >= v210->u64 + 4 * v198 || &v210[v208 / 4u] >= v215;
          v217 = !v216;
          if (v209 + v214 < v215 && v211 + v214 < (v209 + 4 * v198))
          {
            goto LABEL_142;
          }

          if (v217)
          {
            goto LABEL_142;
          }

          v219 = v213 - (v198 & 7) + v212;
          v220 = v212 + (v198 & 7) - v198;
          v221 = (v211 + v214 + 16);
          v222 = (v209 + v214 + 16);
          v223 = (v210 + v214 + 16);
          do
          {
            v224 = vmlaq_f32(*v221, *v223, *v222);
            v221[-1] = vmlaq_f32(v221[-1], v223[-1], v222[-1]);
            *v221 = v224;
            v221 += 2;
            v222 += 2;
            v223 += 2;
            v220 += 8;
          }

          while (v220);
          v212 = v219;
          if ((v198 & 7) != 0)
          {
LABEL_142:
            v225 = v198 - v212;
            v226 = (v211 + 4 * v212);
            v227 = &v210->f32[v212];
            v228 = (v209 + 4 * v212);
            do
            {
              v229 = *v228++;
              v230 = v229;
              v231 = *v227++;
              *v226 = *v226 + (v231 * v230);
              ++v226;
              --v225;
            }

            while (v225);
          }
        }

        v232 = *(a1 + 960);
        v233 = *(a1 + 52);
        v234 = v233 / 8;
        if (v233 >= 8)
        {
          v235 = *(v232 + 8 * v14);
          v236 = *(v232 + 8 * v12);
          v237 = v233 / 8;
          v238 = v157;
          do
          {
            v240 = *v236;
            v239 = v236[1];
            v236 += 2;
            v242 = *v238;
            v241 = v238[1];
            v238 += 2;
            v243 = vmlaq_f32(v235[1], v241, v239);
            *v235 = vmlaq_f32(*v235, v242, v240);
            v235[1] = v243;
            v235 += 2;
            --v237;
          }

          while (v237);
        }

        v244 = 8 * v234;
        if (8 * v234 < v233)
        {
          v245 = *(v232 + 8 * v12);
          v246 = *(v232 + 8 * v14);
          v247 = v244;
          v248 = v233 - v244;
          if (v248 <= 7)
          {
            goto LABEL_164;
          }

          v249 = 4 * v244;
          v250 = v246 + 4 * v233;
          v251 = v246 + v249 >= v157->u64 + 4 * v233 || &v157[v244 / 4u] >= v250;
          v252 = !v251;
          if (v245 + v249 < v250 && v246 + v249 < (v245 + 4 * v233))
          {
            goto LABEL_164;
          }

          if (v252)
          {
            goto LABEL_164;
          }

          v254 = v248 - (v233 & 7) + v247;
          v255 = v247 + (v233 & 7) - v233;
          v256 = (v246 + v249 + 16);
          v257 = (v245 + v249 + 16);
          v258 = (v157 + v249 + 16);
          do
          {
            v259 = vmlaq_f32(*v256, *v258, *v257);
            v256[-1] = vmlaq_f32(v256[-1], v258[-1], v257[-1]);
            *v256 = v259;
            v256 += 2;
            v257 += 2;
            v258 += 2;
            v255 += 8;
          }

          while (v255);
          v247 = v254;
          if ((v233 & 7) != 0)
          {
LABEL_164:
            v260 = v233 - v247;
            v261 = (v246 + 4 * v247);
            v262 = &v157->f32[v247];
            v263 = (v245 + 4 * v247);
            do
            {
              v264 = *v263++;
              v265 = v264;
              v266 = *v262++;
              *v261 = *v261 + (v266 * v265);
              ++v261;
              --v260;
            }

            while (v260);
          }
        }
      }

      v267 = *(a1 + 936);
      v268 = *(a1 + 960);
      v269 = *(a1 + 52);
      v270 = 4 * v269;
      bzero(*(v267 + 8 * v14), 4 * v269);
      v271 = v269 / 8;
      if (v269 >= 8)
      {
        v272 = *(v267 + 8 * v14);
        v273 = *(v268 + 8 * v14);
        v274 = v269 / 8;
        v275 = v630;
        v276 = *v635;
        do
        {
          v277 = *v276;
          v278 = v276[1];
          v276 += 2;
          v279 = *v273;
          v280 = v273[1];
          v273 += 2;
          v281 = vmulq_f32(v280, v278);
          v282 = vmulq_f32(v279, v277);
          v284 = *v275;
          v283 = v275[1];
          v275 += 2;
          v285 = vmlaq_f32(v272[1], v281, v283);
          *v272 = vmlaq_f32(*v272, v282, v284);
          v272[1] = v285;
          v272 += 2;
          --v274;
        }

        while (v274);
      }

      v286 = 8 * v271;
      if (8 * v271 < v269)
      {
        v287 = *(v268 + 8 * v14);
        v288 = *v635;
        v289 = *(v267 + 8 * v14);
        v290 = v286;
        v291 = v269 - v286;
        if (v291 <= 7)
        {
          goto LABEL_193;
        }

        v292 = 4 * v286;
        v293 = v289 + v292;
        v294 = v289 + v270;
        v295 = v289 + v292 >= (v287 + v270) || v287 + v292 >= v294;
        v296 = !v295;
        v297 = v293 >= v630 + v270 || v630->u64 + 4 * v290 >= v294;
        v298 = !v297;
        if (v288 + v292 < v294 && v293 < v288 + v270)
        {
          goto LABEL_193;
        }

        if (v296)
        {
          goto LABEL_193;
        }

        if (v298)
        {
          goto LABEL_193;
        }

        v300 = v291 - (v269 & 7) + v290;
        v301 = v290 + (v269 & 7) - v269;
        v302 = (v289 + v292 + 16);
        v303 = (v288 + v292 + 16);
        v304 = (v630 + v292 + 16);
        v305 = (v287 + v292 + 16);
        do
        {
          v306 = vmlaq_f32(*v302, vmulq_f32(*v305, *v303), *v304);
          v302[-1] = vmlaq_f32(v302[-1], vmulq_f32(v305[-1], v303[-1]), v304[-1]);
          *v302 = v306;
          v302 += 2;
          v303 += 2;
          v304 += 2;
          v305 += 2;
          v301 += 8;
        }

        while (v301);
        v290 = v300;
        if ((v269 & 7) != 0)
        {
LABEL_193:
          v307 = v269 - v290;
          v308 = v290;
          v309 = (v289 + v308 * 4);
          v310 = &v630->f32[v308];
          v311 = (v287 + v308 * 4);
          v312 = &v288->f32[v308];
          do
          {
            v313 = *v312++;
            v314 = v313;
            v315 = *v311++;
            v316 = v315;
            v317 = *v310++;
            *v309 = *v309 + ((v316 * v314) * v317);
            ++v309;
            --v307;
          }

          while (v307);
        }
      }

      if (v631)
      {
        v318 = *(a1 + 888);
        v319 = *(a1 + 960);
        v320 = *(a1 + 88);
        v321 = *(a1 + 52);
        v322 = 4 * v321;
        bzero(*(v318 + 8 * v14), 4 * v321);
        v323 = v321 / 8;
        if (v321 >= 8)
        {
          v324 = *(v318 + 8 * v14);
          v325 = *(v320 + 8 * v626);
          v326 = v321 / 8;
          v327 = *(v319 + 8 * v14);
          v328 = *v627;
          do
          {
            v329 = *v328;
            v330 = v328[1];
            v328 += 2;
            v331 = *v327;
            v332 = v327[1];
            v327 += 2;
            v333 = vmulq_f32(v332, v330);
            v334 = vmulq_f32(v331, v329);
            v336 = *v325;
            v335 = v325[1];
            v325 += 2;
            v337 = vmlaq_f32(v324[1], v333, v335);
            *v324 = vmlaq_f32(*v324, v334, v336);
            v324[1] = v337;
            v324 += 2;
            --v326;
          }

          while (v326);
        }

        v338 = 8 * v323;
        if (8 * v323 < v321)
        {
          v339 = *(v319 + 8 * v14);
          v340 = *(v320 + 8 * v626);
          v341 = *v627;
          v342 = *(v318 + 8 * v14);
          v343 = v338;
          v344 = v321 - v338;
          if (v344 <= 7)
          {
            goto LABEL_223;
          }

          v345 = 4 * v338;
          v346 = v342 + v345;
          v347 = v342 + v322;
          v348 = v342 + v345 >= (v339 + v322) || v339 + v345 >= v347;
          v349 = !v348;
          v350 = v346 >= v340 + v322 || v340 + 4 * v343 >= v347;
          v351 = !v350;
          if (v341 + v345 < v347 && v346 < v341 + v322)
          {
            goto LABEL_223;
          }

          if (v349)
          {
            goto LABEL_223;
          }

          if (v351)
          {
            goto LABEL_223;
          }

          v353 = v344 - (v321 & 7) + v343;
          v354 = v343 + (v321 & 7) - v321;
          v355 = (v342 + v345 + 16);
          v356 = (v341 + v345 + 16);
          v357 = (v340 + v345 + 16);
          v358 = (v339 + v345 + 16);
          do
          {
            v359 = vmlaq_f32(*v355, vmulq_f32(*v358, *v356), *v357);
            v355[-1] = vmlaq_f32(v355[-1], vmulq_f32(v358[-1], v356[-1]), v357[-1]);
            *v355 = v359;
            v355 += 2;
            v356 += 2;
            v357 += 2;
            v358 += 2;
            v354 += 8;
          }

          while (v354);
          v343 = v353;
          if ((v321 & 7) != 0)
          {
LABEL_223:
            v360 = v321 - v343;
            v361 = (v342 + 4 * v343);
            v362 = (v340 + 4 * v343);
            v363 = (v339 + 4 * v343);
            v364 = &v341->f32[v343];
            do
            {
              v365 = *v364++;
              v366 = v365;
              v367 = *v363++;
              v368 = v367;
              v369 = *v362++;
              *v361 = *v361 + ((v368 * v366) * v369);
              ++v361;
              --v360;
            }

            while (v360);
          }
        }
      }

      v370 = *(a1 + 912);
      v371 = *(a1 + 960);
      v372 = *(a1 + 52);
      v373 = 4 * v372;
      bzero(*(v370 + 8 * v14), 4 * v372);
      v374 = v372 / 8;
      if (v372 >= 8)
      {
        v375 = *(v370 + 8 * v14);
        v376 = *v636;
        v377 = *(v371 + 8 * v14);
        v378 = v372 / 8;
        v379 = *v17;
        do
        {
          v380 = *v379;
          v381 = v379[1];
          v379 += 2;
          v382 = *v377;
          v383 = v377[1];
          v377 += 2;
          v384 = vmulq_f32(v383, v381);
          v385 = vmulq_f32(v382, v380);
          v387 = *v376;
          v386 = *(v376 + 4);
          v376 += 8;
          v388 = vmlaq_f32(v375[1], v384, v386);
          *v375 = vmlaq_f32(*v375, v385, v387);
          v375[1] = v388;
          v375 += 2;
          --v378;
        }

        while (v378);
      }

      v389 = 8 * v374;
      v6 = v629;
      if (8 * v374 < v372)
      {
        v390 = *v17;
        v391 = *(v371 + 8 * v14);
        v392 = *v636;
        v393 = *(v370 + 8 * v14);
        v394 = v389;
        v395 = v372 - v389;
        if (v395 <= 7)
        {
          goto LABEL_252;
        }

        v396 = 4 * v389;
        v397 = v393 + v396;
        v398 = v393 + v373;
        v399 = v393 + v396 >= (v391 + v373) || v391 + v396 >= v398;
        v400 = !v399;
        v401 = v397 >= &v392[v373 / 4] || &v392[v394] >= v398;
        v402 = !v401;
        if (v390 + v396 < v398 && v397 < v390 + v373)
        {
          goto LABEL_252;
        }

        if (v400)
        {
          goto LABEL_252;
        }

        if (v402)
        {
          goto LABEL_252;
        }

        v404 = v395 - (v372 & 7) + v394;
        v405 = v394 + (v372 & 7) - v372;
        v406 = (v393 + v396 + 16);
        v407 = (v390 + v396 + 16);
        v408 = &v392[v396 / 4 + 4];
        v409 = (v391 + v396 + 16);
        do
        {
          v410 = vmlaq_f32(*v406, vmulq_f32(*v409, *v407), *v408);
          v406[-1] = vmlaq_f32(v406[-1], vmulq_f32(v409[-1], v407[-1]), v408[-1]);
          *v406 = v410;
          v406 += 2;
          v407 += 2;
          v408 += 2;
          v409 += 2;
          v405 += 8;
        }

        while (v405);
        v394 = v404;
        if ((v372 & 7) != 0)
        {
LABEL_252:
          v411 = v372 - v394;
          v412 = (v393 + 4 * v394);
          v413 = &v392[v394];
          v414 = (v391 + 4 * v394);
          v415 = &v390->f32[v394];
          do
          {
            v416 = *v415++;
            v417 = v416;
            v418 = *v414++;
            v419 = v418;
            v420 = *v413++;
            *v412 = *v412 + ((v419 * v417) * v420);
            ++v412;
            --v411;
          }

          while (v411);
        }
      }

      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 816) + 8 * v14), 4 * *(a1 + 48));
        cblas_sgemv_NEWLAPACK();
        if (v631)
        {
          cblas_sgemv_NEWLAPACK();
        }

        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
      }

      v8 = v632 - 1;
    }

    while (v632 > 0);
  }

  v421 = *(a1 + 52);
  if (v421 > 0)
  {
    v422 = 4 * v421;
    bzero(*(a1 + 1528), 4 * v421);
    v423 = (a1 + 1536);
    bzero(*(a1 + 1536), v422);
    v424 = (a1 + 1544);
    bzero(*(a1 + 1544), v422);
    if (*(a1 + 56) <= 0)
    {
      goto LABEL_260;
    }

    goto LABEL_259;
  }

  v423 = (a1 + 1536);
  v424 = (a1 + 1544);
  if (*(a1 + 56) > 0)
  {
LABEL_259:
    *(a1 + 1000) = 0;
    *(a1 + 1240) = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1360) = 0;
  }

LABEL_260:
  if (a5 > 1)
  {
    v425 = 1;
    do
    {
      v429 = v6 - v425;
      if (*(a1 + 2672))
      {
        v430 = a5 - 2;
      }

      else
      {
        v429 = v425;
        v430 = 1;
      }

      if (*(a1 + 2672))
      {
        v431 = v429 + 1;
      }

      else
      {
        v431 = v429 - 1;
      }

      v432 = *(a1 + 912);
      v433 = *(a1 + 88);
      v434 = *(a1 + 52);
      v435 = v434 / 8;
      if (v434 >= 8)
      {
        v436 = *(a1 + 1528);
        v437 = *(v433 + 8 * v431);
        v438 = v434 / 8;
        v439 = *(v432 + 8 * v429);
        do
        {
          v441 = *v439;
          v440 = v439[1];
          v439 += 2;
          v443 = *v437;
          v442 = v437[1];
          v437 += 2;
          v444 = vmlaq_f32(v436[1], v442, v440);
          *v436 = vmlaq_f32(*v436, v443, v441);
          v436[1] = v444;
          v436 += 2;
          --v438;
        }

        while (v438);
      }

      v445 = 8 * v435;
      if (8 * v435 < v434)
      {
        v446 = *(v432 + 8 * v429);
        v447 = *(v433 + 8 * v431);
        v448 = *(a1 + 1528);
        v449 = v445;
        v450 = v434 - v445;
        if (v450 <= 7)
        {
          goto LABEL_289;
        }

        v451 = 4 * v445;
        v452 = v448 + 4 * v434;
        v453 = v448 + v451 >= (v447 + 4 * v434) || v447 + 4 * v445 >= v452;
        v454 = !v453;
        if (v446 + v451 < v452 && v448 + v451 < (v446 + 4 * v434))
        {
          goto LABEL_289;
        }

        if (v454)
        {
          goto LABEL_289;
        }

        v456 = v450 - (v434 & 7) + v449;
        v457 = v449 + (v434 & 7) - v434;
        v458 = (v448 + v451 + 16);
        v459 = (v446 + v451 + 16);
        v460 = (v447 + v451 + 16);
        do
        {
          v461 = vmlaq_f32(*v458, *v460, *v459);
          v458[-1] = vmlaq_f32(v458[-1], v460[-1], v459[-1]);
          *v458 = v461;
          v458 += 2;
          v459 += 2;
          v460 += 2;
          v457 += 8;
        }

        while (v457);
        v449 = v456;
        if ((v434 & 7) != 0)
        {
LABEL_289:
          v462 = v434 - v449;
          v463 = (v448 + 4 * v449);
          v464 = (v447 + 4 * v449);
          v465 = (v446 + 4 * v449);
          do
          {
            v466 = *v465++;
            v467 = v466;
            v468 = *v464++;
            *v463 = *v463 + (v468 * v467);
            ++v463;
            --v462;
          }

          while (v462);
        }
      }

      v469 = *(a1 + 888);
      v470 = *(a1 + 88);
      v471 = *(a1 + 52);
      v472 = v471 / 8;
      if (v471 >= 8)
      {
        v473 = *v423;
        v474 = *(v470 + 8 * v431);
        v475 = v471 / 8;
        v476 = *(v469 + 8 * v429);
        do
        {
          v478 = *v476;
          v477 = v476[1];
          v476 += 2;
          v480 = *v474;
          v479 = v474[1];
          v474 += 2;
          v481 = vmlaq_f32(v473[1], v479, v477);
          *v473 = vmlaq_f32(*v473, v480, v478);
          v473[1] = v481;
          v473 += 2;
          --v475;
        }

        while (v475);
      }

      v482 = 8 * v472;
      if (8 * v472 < v471)
      {
        v483 = *(v469 + 8 * v429);
        v484 = *(v470 + 8 * v431);
        v485 = *v423;
        v486 = v482;
        v487 = v471 - v482;
        if (v487 <= 7)
        {
          goto LABEL_311;
        }

        v488 = 4 * v482;
        v489 = v485->u64 + 4 * v471;
        v490 = v485 + v488 >= v484 + 4 * v471 || v484 + 4 * v482 >= v489;
        v491 = !v490;
        if (v483 + v488 < v489 && v485 + v488 < v483 + 4 * v471)
        {
          goto LABEL_311;
        }

        if (v491)
        {
          goto LABEL_311;
        }

        v493 = v487 - (v471 & 7) + v486;
        v494 = v486 + (v471 & 7) - v471;
        v495 = (v485 + v488 + 16);
        v496 = (v483 + v488 + 16);
        v497 = (v484 + v488 + 16);
        do
        {
          v498 = vmlaq_f32(*v495, *v497, *v496);
          v495[-1] = vmlaq_f32(v495[-1], v497[-1], v496[-1]);
          *v495 = v498;
          v495 += 2;
          v496 += 2;
          v497 += 2;
          v494 += 8;
        }

        while (v494);
        v486 = v493;
        if ((v471 & 7) != 0)
        {
LABEL_311:
          v499 = v471 - v486;
          v500 = &v485->f32[v486];
          v501 = (v484 + 4 * v486);
          v502 = (v483 + 4 * v486);
          do
          {
            v503 = *v502++;
            v504 = v503;
            v505 = *v501++;
            *v500 = *v500 + (v505 * v504);
            ++v500;
            --v499;
          }

          while (v499);
        }
      }

      v426 = v429 == v430;
      v427 = 8 * v429;
      v428 = 8 * v431;
      sub_19D30A868(*(a1 + 64) + v427, *(a1 + 912) + v427, *(a1 + 112) + 8 * v431, (a1 + 1496), *(a1 + 52), *(a1 + 52), v426);
      sub_19D30A868(*(a1 + 64) + v427, *(a1 + 888) + v427, *(a1 + 112) + v428, (a1 + 1504), *(a1 + 52), *(a1 + 52), v426);
      sub_19D30A868(*(a1 + 64) + v427, *(a1 + 864) + v427, *(a1 + 112) + v428, (a1 + 1512), *(a1 + 52), *(a1 + 52), v426);
      sub_19D30A868(*(a1 + 64) + v427, *(a1 + 936) + v427, *(a1 + 112) + v428, (a1 + 1520), *(a1 + 52), *(a1 + 52), v426);
      ++v425;
    }

    while (v425 != a5);
    v506 = 1;
    do
    {
      if (*(a1 + 2672))
      {
        v507 = v6 - v506;
      }

      else
      {
        v507 = v506;
      }

      if (*(a1 + 2672))
      {
        v508 = a5 - 2;
      }

      else
      {
        v508 = 1;
      }

      if (a3[1] == *a3 || *(a1 + 56) < 1 || !(**a1)(a1))
      {
        sub_19D30A868(*(a1 + 64) + 8 * v507, *(a1 + 888) + 8 * v507, *(a1 + 64) + 8 * v507, (a1 + 1472), *(a1 + 52), *(a1 + 48), v507 == v508);
        v6 = v629;
      }

      else
      {
        v509 = (*(a1 + 208) + 24 * v507);
        v511 = *v509;
        v510 = v509[1];
        if (v510 != v511)
        {
          if (((v510 - v511) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_425;
        }

        v512 = *(a1 + 52);
        if (v512 >= 1)
        {
          v513 = 0;
          v514 = *(*(a1 + 888) + 8 * v507);
          v515 = *(*(a1 + 1128) + 8 * *(a1 + 1120));
          if (v512 < 8)
          {
            goto LABEL_335;
          }

          if ((v515 - v514) < 0x20)
          {
            goto LABEL_335;
          }

          v513 = v512 & 0x7FFFFFF8;
          v516 = (v514 + 16);
          v517 = (v515 + 16);
          v518 = v513;
          do
          {
            v519 = *v516;
            *(v517 - 1) = *(v516 - 1);
            *v517 = v519;
            v516 += 2;
            v517 += 2;
            v518 -= 8;
          }

          while (v518);
          if (v513 != v512)
          {
LABEL_335:
            v520 = v512 - v513;
            v521 = 4 * v513;
            v522 = (v515 + 4 * v513);
            v523 = (v514 + v521);
            do
            {
              v524 = *v523++;
              *v522++ = v524;
              --v520;
            }

            while (v520);
          }
        }

        if (*(a1 + 1116) < 1)
        {
          ++*(a1 + 1120);
          v6 = v629;
        }

        else
        {
          v525 = 0;
          v526 = *(a1 + 1152);
          v6 = v629;
          do
          {
            *(*(v526 + 24 * *(a1 + 1120)) + 4 * v525) = *(4 * v525);
            ++v525;
          }

          while (v525 < *(a1 + 1116));
          ++*(a1 + 1120);
          operator delete(0);
        }
      }

      ++v506;
    }

    while (v506 != a5);
  }

  if (a5 >= 1)
  {
    v527 = 0;
    while (1)
    {
      v531 = v6 - v527;
      if (*(a1 + 2672))
      {
        v532 = v6;
      }

      else
      {
        v531 = v527;
        v532 = 0;
      }

      v533 = v531;
      v534 = *(a1 + 864);
      v535 = *(a1 + 88);
      v536 = *(a1 + 52);
      v537 = v536 / 8;
      if (v536 >= 8)
      {
        v538 = *v424;
        v539 = *(v535 + 8 * v533);
        v540 = v536 / 8;
        v541 = *(v534 + 8 * v533);
        do
        {
          v543 = *v541;
          v542 = v541[1];
          v541 += 2;
          v545 = *v539;
          v544 = v539[1];
          v539 += 2;
          v546 = vmlaq_f32(v538[1], v544, v542);
          *v538 = vmlaq_f32(*v538, v545, v543);
          v538[1] = v546;
          v538 += 2;
          --v540;
        }

        while (v540);
      }

      v547 = 8 * v537;
      if (8 * v537 < v536)
      {
        v548 = *(v534 + 8 * v533);
        v549 = *(v535 + 8 * v533);
        v550 = *v424;
        v551 = v547;
        v552 = v536 - v547;
        if (v552 <= 7)
        {
          goto LABEL_370;
        }

        v553 = 4 * v547;
        v554 = v550->u64 + 4 * v536;
        v555 = v550 + v553 >= v549 + 4 * v536 || v549 + 4 * v547 >= v554;
        v556 = !v555;
        if (v548 + v553 < v554 && v550 + v553 < v548 + 4 * v536)
        {
          goto LABEL_370;
        }

        if (v556)
        {
          goto LABEL_370;
        }

        v558 = v552 - (v536 & 7) + v551;
        v559 = v551 + (v536 & 7) - v536;
        v560 = (v550 + v553 + 16);
        v561 = (v548 + v553 + 16);
        v562 = (v549 + v553 + 16);
        do
        {
          v563 = vmlaq_f32(*v560, *v562, *v561);
          v560[-1] = vmlaq_f32(v560[-1], v562[-1], v561[-1]);
          *v560 = v563;
          v560 += 2;
          v561 += 2;
          v562 += 2;
          v559 += 8;
        }

        while (v559);
        v551 = v558;
        if ((v536 & 7) != 0)
        {
LABEL_370:
          v564 = v536 - v551;
          v565 = &v550->f32[v551];
          v566 = (v549 + 4 * v551);
          v567 = (v548 + 4 * v551);
          do
          {
            v568 = *v567++;
            v569 = v568;
            v570 = *v566++;
            *v565 = *v565 + (v570 * v569);
            ++v565;
            --v564;
          }

          while (v564);
        }
      }

      if (a3[1] == *a3)
      {
        break;
      }

      v528 = *(a1 + 912);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_345;
      }

      v571 = (*(a1 + 208) + 24 * v533);
      v573 = *v571;
      v572 = v571[1];
      if (v572 != v573)
      {
        if (((v572 - v573) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_425;
      }

      v574 = *(a1 + 52);
      if (v574 >= 1)
      {
        v575 = 0;
        v576 = *(v528 + 8 * v533);
        v577 = *(*(a1 + 1008) + 8 * *(a1 + 1000));
        if (v574 < 8)
        {
          goto LABEL_383;
        }

        if ((v577 - v576) < 0x20)
        {
          goto LABEL_383;
        }

        v575 = v574 & 0x7FFFFFF8;
        v578 = (v576 + 16);
        v579 = (v577 + 16);
        v580 = v575;
        do
        {
          v581 = *v578;
          *(v579 - 1) = *(v578 - 1);
          *v579 = v581;
          v578 += 2;
          v579 += 2;
          v580 -= 8;
        }

        while (v580);
        if (v575 != v574)
        {
LABEL_383:
          v582 = v574 - v575;
          v583 = 4 * v575;
          v584 = (v577 + 4 * v575);
          v585 = (v576 + v583);
          do
          {
            v586 = *v585++;
            *v584++ = v586;
            --v582;
          }

          while (v582);
        }
      }

      if (*(a1 + 996) < 1)
      {
        ++*(a1 + 1000);
      }

      else
      {
        v587 = 0;
        v588 = *(a1 + 1032);
        do
        {
          *(*(v588 + 24 * *(a1 + 1000)) + 4 * v587) = *(4 * v587);
          ++v587;
        }

        while (v587 < *(a1 + 996));
        ++*(a1 + 1000);
        operator delete(0);
      }

      v589 = (*(a1 + 208) + 24 * v533);
      v591 = *v589;
      v590 = v589[1];
      if (v590 != v591)
      {
        if (((v590 - v591) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_425;
      }

      v592 = *(a1 + 52);
      if (v592 >= 1)
      {
        v593 = 0;
        v594 = *(*(a1 + 864) + 8 * v533);
        v595 = *(*(a1 + 1248) + 8 * *(a1 + 1240));
        if (v592 < 8)
        {
          goto LABEL_399;
        }

        if ((v595 - v594) < 0x20)
        {
          goto LABEL_399;
        }

        v593 = v592 & 0x7FFFFFF8;
        v596 = (v594 + 16);
        v597 = (v595 + 16);
        v598 = v593;
        do
        {
          v599 = *v596;
          *(v597 - 1) = *(v596 - 1);
          *v597 = v599;
          v596 += 2;
          v597 += 2;
          v598 -= 8;
        }

        while (v598);
        if (v593 != v592)
        {
LABEL_399:
          v600 = v592 - v593;
          v601 = 4 * v593;
          v602 = (v595 + 4 * v593);
          v603 = (v594 + v601);
          do
          {
            v604 = *v603++;
            *v602++ = v604;
            --v600;
          }

          while (v600);
        }
      }

      if (*(a1 + 1236) < 1)
      {
        ++*(a1 + 1240);
      }

      else
      {
        v605 = 0;
        v606 = *(a1 + 1272);
        do
        {
          *(*(v606 + 24 * *(a1 + 1240)) + 4 * v605) = *(4 * v605);
          ++v605;
        }

        while (v605 < *(a1 + 1236));
        ++*(a1 + 1240);
        operator delete(0);
      }

      v607 = (*(a1 + 208) + 24 * v533);
      v609 = *v607;
      v608 = v607[1];
      if (v608 != v609)
      {
        if (((v608 - v609) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_425:
        sub_19D2AE2B4();
      }

      v610 = *(a1 + 52);
      if (v610 >= 1)
      {
        v611 = 0;
        v612 = *(*(a1 + 936) + 8 * v533);
        v613 = *(*(a1 + 1368) + 8 * *(a1 + 1360));
        if (v610 < 8)
        {
          goto LABEL_415;
        }

        if ((v613 - v612) < 0x20)
        {
          goto LABEL_415;
        }

        v611 = v610 & 0x7FFFFFF8;
        v614 = (v612 + 16);
        v615 = (v613 + 16);
        v616 = v611;
        do
        {
          v617 = *v614;
          *(v615 - 1) = *(v614 - 1);
          *v615 = v617;
          v614 += 2;
          v615 += 2;
          v616 -= 8;
        }

        while (v616);
        if (v611 != v610)
        {
LABEL_415:
          v618 = v610 - v611;
          v619 = 4 * v611;
          v620 = (v613 + 4 * v611);
          v621 = (v612 + v619);
          do
          {
            v622 = *v621++;
            *v620++ = v622;
            --v618;
          }

          while (v618);
        }
      }

      if (*(a1 + 1356) < 1)
      {
        ++*(a1 + 1360);
      }

      else
      {
        v623 = 0;
        v624 = *(a1 + 1392);
        do
        {
          *(*(v624 + 24 * *(a1 + 1360)) + 4 * v623) = *(4 * v623);
          ++v623;
        }

        while (v623 < *(a1 + 1356));
        ++*(a1 + 1360);
        operator delete(0);
      }

LABEL_346:
      if (++v527 == a5)
      {
        return;
      }
    }

    v528 = *(a1 + 912);
LABEL_345:
    v529 = v533 == v532;
    v530 = 8 * v533;
    sub_19D30A868(*(a1 + 64) + v530, v528 + v530, *(a1 + 64) + v530, (a1 + 1464), *(a1 + 52), *(a1 + 48), v529);
    sub_19D30A868(*(a1 + 64) + v530, *(a1 + 864) + v530, *(a1 + 64) + v530, (a1 + 1480), *(a1 + 52), *(a1 + 48), v529);
    sub_19D30A868(*(a1 + 64) + v530, *(a1 + 936) + v530, *(a1 + 64) + v530, (a1 + 1488), *(a1 + 52), *(a1 + 48), v529);
    goto LABEL_346;
  }
}

uint64_t sub_19D346F0C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2672] = 1;
  if ((atomic_load_explicit(&qword_1EB0131E0, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D4544D8();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013950);
  a1[2672] = 0;
  return result;
}

uint64_t sub_19D346FB4(_BYTE *a1)
{
  a1[2672] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2672] = 0;
  return result;
}

char *sub_19D34700C(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 2496) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 2504) = result + 232;
  *(a1 + 2520) = result + 248;
  *(a1 + 2512) = result + 240;
  *(a1 + 2528) = result + 256;
  *(a1 + 2536) = result + 264;
  *(a1 + 2552) = result + 280;
  *(a1 + 2544) = result + 272;
  *(a1 + 2560) = result + 288;
  *(a1 + 2568) = result + 296;
  *(a1 + 2576) = result + 304;
  *(a1 + 2584) = result + 312;
  *(a1 + 2592) = result + 320;
  *(a1 + 2600) = result + 328;
  *(a1 + 2608) = result + 336;
  *(a1 + 2616) = result + 344;
  return result;
}

uint64_t sub_19D347108(uint64_t a1, void *lpsrc, __n128 a3)
{
  if (*(a1 + 2496))
  {
    sub_19D41C548(1);
  }

  v4 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B6C00, 0);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  sub_19D34ABC0(a1, (a1 + 232), (v4 + 366), v4 + 246, *(a1 + 52), *(a1 + 48), *(a1 + 1552), a1 + 1704);
  sub_19D34ABC0(a1, (a1 + 248), (v5 + 370), v5 + 306, *(a1 + 52), *(a1 + 48), *(a1 + 1568), a1 + 1776);
  sub_19D34ABC0(a1, (a1 + 240), (v5 + 368), v5 + 276, *(a1 + 52), *(a1 + 48), *(a1 + 1560), a1 + 1848);
  sub_19D34ABC0(a1, (a1 + 256), (v5 + 372), v5 + 336, *(a1 + 52), *(a1 + 48), *(a1 + 1576), a1 + 1920);
  v6 = *(a1 + 52);
  v7 = *(a1 + 1584);
  sub_19D429424(a1 + 1992);
  if (*(a1 + 56))
  {
    (**v7)(v7, a1 + 264, (v5 + 374), a3);
  }

  else
  {
    (**v7)(v7, a1 + 264, (v5 + 374), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 264), 1, &__B, &__C, *(a1 + 264), 1, (v6 * v6));
  }

  sub_19D42942C(a1 + 1992);
  v8 = *(a1 + 52);
  v9 = *(a1 + 1600);
  sub_19D429424(a1 + 2064);
  if (*(a1 + 56))
  {
    (**v9)(v9, a1 + 280, (v5 + 378), a3);
  }

  else
  {
    (**v9)(v9, a1 + 280, (v5 + 378), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 280), 1, &__B, &__C, *(a1 + 280), 1, (v8 * v8));
  }

  sub_19D42942C(a1 + 2064);
  v10 = *(a1 + 52);
  v11 = *(a1 + 1592);
  sub_19D429424(a1 + 2136);
  if (*(a1 + 56))
  {
    (**v11)(v11, a1 + 272, (v5 + 376), a3);
  }

  else
  {
    (**v11)(v11, a1 + 272, (v5 + 376), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 272), 1, &__B, &__C, *(a1 + 272), 1, (v10 * v10));
  }

  sub_19D42942C(a1 + 2136);
  v12 = *(a1 + 52);
  v13 = *(a1 + 1608);
  sub_19D429424(a1 + 2208);
  if (*(a1 + 56))
  {
    (**v13)(v13, a1 + 288, (v5 + 380), a3);
  }

  else
  {
    (**v13)(v13, a1 + 288, (v5 + 380), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 288), 1, &__B, &__C, *(a1 + 288), 1, (v12 * v12));
  }

  sub_19D42942C(a1 + 2208);
  sub_19D429424(a1 + 2280);
  v14 = *(a1 + 52);
  v15 = v14;
  v16 = *(a1 + 296);
  if (v14 >= 1)
  {
    v17 = *(v5 + 191);
    if (v14 < 8 || v16 < v17 + 4 * v14 && v17 < &v16[v14])
    {
      v18 = 0;
LABEL_20:
      v19 = v14 - v18;
      v20 = 4 * v18;
      v21 = &v16[v18];
      v22 = (v17 + v20);
      do
      {
        v23 = *v22++;
        *v21 = *v21 + (v23 * a3.n128_f32[0]);
        ++v21;
        --v19;
      }

      while (v19);
      goto LABEL_22;
    }

    v18 = v14 & 0x7FFFFFF8;
    v45 = (v17 + 16);
    v46 = (v16 + 4);
    v47 = v18;
    do
    {
      v48 = vmlaq_n_f32(*v46, *v45, a3.n128_f32[0]);
      v46[-1] = vmlaq_n_f32(v46[-1], v45[-1], a3.n128_f32[0]);
      *v46 = v48;
      v45 += 2;
      v46 += 2;
      v47 -= 8;
    }

    while (v47);
    if (v18 != v14)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(v16, 1, &__B, &__C, v16, 1, v15);
  sub_19D42942C(a1 + 2280);
  sub_19D429424(a1 + 2352);
  v24 = *(a1 + 52);
  v25 = v24;
  v26 = *(a1 + 312);
  if (v24 < 1)
  {
    goto LABEL_29;
  }

  v27 = *(v5 + 193);
  if (v24 < 8 || v26 < v27 + 4 * v24 && v27 < &v26[v24])
  {
    v28 = 0;
LABEL_27:
    v29 = v24 - v28;
    v30 = 4 * v28;
    v31 = &v26[v28];
    v32 = (v27 + v30);
    do
    {
      v33 = *v32++;
      *v31 = *v31 + (v33 * a3.n128_f32[0]);
      ++v31;
      --v29;
    }

    while (v29);
    goto LABEL_29;
  }

  v28 = v24 & 0x7FFFFFF8;
  v49 = (v27 + 16);
  v50 = (v26 + 4);
  v51 = v28;
  do
  {
    v52 = vmlaq_n_f32(*v50, *v49, a3.n128_f32[0]);
    v50[-1] = vmlaq_n_f32(v50[-1], v49[-1], a3.n128_f32[0]);
    *v50 = v52;
    v49 += 2;
    v50 += 2;
    v51 -= 8;
  }

  while (v51);
  if (v28 != v24)
  {
    goto LABEL_27;
  }

LABEL_29:
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(v26, 1, &__B, &__C, v26, 1, v25);
  sub_19D42942C(a1 + 2352);
  sub_19D429424(a1 + 2424);
  v34 = *(a1 + 52);
  v35 = v34;
  v36 = *(a1 + 304);
  if (v34 < 1)
  {
    goto LABEL_36;
  }

  v37 = *(v5 + 192);
  if (v34 < 8 || v36 < v37 + 4 * v34 && v37 < &v36[v34])
  {
    v38 = 0;
LABEL_34:
    v39 = v34 - v38;
    v40 = 4 * v38;
    v41 = &v36[v38];
    v42 = (v37 + v40);
    do
    {
      v43 = *v42++;
      *v41 = *v41 + (v43 * a3.n128_f32[0]);
      ++v41;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  v38 = v34 & 0x7FFFFFF8;
  v53 = (v37 + 16);
  v54 = (v36 + 4);
  v55 = v38;
  do
  {
    v56 = vmlaq_n_f32(*v54, *v53, a3.n128_f32[0]);
    v54[-1] = vmlaq_n_f32(v54[-1], v53[-1], a3.n128_f32[0]);
    *v54 = v56;
    v53 += 2;
    v54 += 2;
    v55 -= 8;
  }

  while (v55);
  if (v38 != v34)
  {
    goto LABEL_34;
  }

LABEL_36:
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(v36, 1, &__B, &__C, v36, 1, v35);
  return sub_19D42942C(a1 + 2424);
}

void sub_19D3477E4(void *a1)
{
  v1 = sub_19D34AD2C(a1);

  operator delete(v1);
}

uint64_t sub_19D34780C(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D347938(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D347B80(result, a2, a3, a4);
        case 0x10u:

          sub_19D347A5C(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

void sub_19D347938(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(18);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D347A5C(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(18);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D347B80(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(18);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

uint64_t sub_19D347C9C(uint64_t result, float a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 16);
  if (v4 >= 1)
  {
    v5 = result;
    if (a4 <= 0)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(v5 + 48) + v9);
        v13 = *v11;
        v12 = v11[1];
        result = v12 - v13;
        if (v12 != v13)
        {
          break;
        }

        ++v10;
        v9 += 24;
        if (v10 >= v4)
        {
          return result;
        }
      }

      if ((result & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v6 = *(result + 24);
      if (a4 > 7)
      {
        v14 = a4 - (a4 & 0x7FFFFFF8);
        if (a4 == (a4 & 0x7FFFFFF8))
        {
          do
          {
            v15 = (v6[v14] + 4);
            v16 = a4 & 0x7FFFFFF8;
            do
            {
              v17 = vmulq_n_f32(*v15, a2);
              v15[-1] = vmulq_n_f32(v15[-1], a2);
              *v15 = v17;
              v15 += 2;
              v16 -= 8;
            }

            while (v16);
            ++v14;
          }

          while (v14 != v4);
        }

        else
        {
          for (i = 0; i != v4; ++i)
          {
            v19 = v6[i];
            v20 = v19 + 1;
            v21 = a4 & 0x7FFFFFF8;
            do
            {
              v22 = vmulq_n_f32(*v20, a2);
              v20[-1] = vmulq_n_f32(v20[-1], a2);
              *v20 = v22;
              v20 += 2;
              v21 -= 8;
            }

            while (v21);
            f32 = v19[2 * ((a4 >> 3) & 0xFFFFFFF)].f32;
            v24 = a4 - (a4 & 0x7FFFFFF8);
            do
            {
              *f32 = *f32 * a2;
              ++f32;
              --v24;
            }

            while (v24);
          }
        }
      }

      else
      {
        v7 = *(result + 16);
        do
        {
          v8 = *v6;
          **v6 = **v6 * a2;
          if (a4 != 1)
          {
            v8[1] = v8[1] * a2;
            if (a4 != 2)
            {
              v8[2] = v8[2] * a2;
              if (a4 != 3)
              {
                v8[3] = v8[3] * a2;
                if (a4 != 4)
                {
                  v8[4] = v8[4] * a2;
                  if (a4 != 5)
                  {
                    v8[5] = v8[5] * a2;
                    if (a4 != 6)
                    {
                      v8[6] = v8[6] * a2;
                    }
                  }
                }
              }
            }
          }

          ++v6;
          --v7;
        }

        while (v7);
      }

      v25 = 0;
      while (1)
      {
        v26 = (*(result + 48) + 24 * v25);
        v28 = *v26;
        v27 = v26[1];
        if (v27 != v28)
        {
          break;
        }

        if (++v25 >= v4)
        {
          return result;
        }
      }

      if (((v27 - v28) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D347F90(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v446 = a4 >> 24;
  if (a4 >> 24 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a4 >> 24);
  }

  v9 = *(a1 + 2680);
  if (v9)
  {
    v442 = *(v9 + 464);
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v442 = 0;
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 56) >= 1)
  {
    v452 = (**a1)(a1);
    v9 = *(a1 + 2680);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v452 = 0;
  if (!v9)
  {
LABEL_13:
    v10 = 50.0;
    goto LABEL_14;
  }

LABEL_12:
  v10 = *(v9 + 468);
  if (v10 <= 0.0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a5 && (*(a1 + 2672) & 1) != 0)
  {
    sub_19D41C548(34);
  }

  v11 = a4 & 0xFFFFFF;
  v12 = (a5 != 0) & (*(a1 + 42) ^ 1);
  if ((a4 & 0xFFFFFFu) > v12)
  {
    v444 = a4 & 0xFFFFFF;
    v445 = v11 - 1;
    v441 = 4 * v8;
    __asm { FMOV            V2.4S, #1.0 }

    v443 = (a1 + 752);
    v440 = _Q2;
    while (1)
    {
      v17 = v11 + ~v12;
      if (!*(a1 + 2672))
      {
        v17 = v12;
      }

      v18 = v17;
      v19 = *(a1 + 2672) ? v17 < v445 : v17 > 0;
      v20 = *(a1 + 2672) ? v17 + 1 : v17 - 1;
      v451 = v20;
      v21 = *(a1 + 42);
      v22 = (v21 & v452) != 0 ? 1 : v17;
      v23 = *(a1 + 64);
      if (v452)
      {
        break;
      }

      memmove(*(v23 + 8 * v22), *(*a2 + 8 * v22), 4 * *(a1 + 44));
      v24 = *(a1 + 40);
      if (v24 == 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v452)
      {
        v25 = *(a1 + 48);
        v26 = *(*(a1 + 208) + 24 * v18);
        *v26 = **(*a3 + 24 * v18);
        if (v24)
        {
          v26[1] = v25 - 1;
        }
      }

      v27 = *(a1 + 136);
      if (v446 > 1)
      {
        memmove(*(v27 + 8 * v22), *(*a2 + 8 * v22), 4 * *(a1 + 44) * v8);
      }

      else
      {
        memcpy(*(v27 + 8 * v22), *(*(a1 + 64) + 8 * v22), 4 * *(a1 + 48));
      }

      if (v8 > *(a1 + 2688))
      {
        sub_19D41C548(83724);
      }

      if (v21)
      {
        v28 = 1;
      }

      else
      {
        v28 = v18;
      }

      if (*(a1 + 2692) == 1)
      {
        bzero(*(*(a1 + 544) + 8 * v28), 4 * *(a1 + 52));
        bzero(*(*(a1 + 568) + 8 * v28), 4 * *(a1 + 52));
        bzero(*(*(a1 + 616) + 8 * v28), 4 * *(a1 + 52));
        bzero(*(*(a1 + 592) + 8 * v28), 4 * *(a1 + 52));
      }

      bzero(*(*(a1 + 352) + 8 * v28), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 376) + 8 * v28), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 400) + 8 * v28), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 424) + 8 * v28), 4 * *(a1 + 52) * v8);
      v29 = *(a1 + 2680);
      v30 = 8 * v28;
      if (!v29)
      {
LABEL_68:
        v450 = 0;
        v33 = !v19;
LABEL_69:
        sub_19D34A1D8(a1, v452, (*(a1 + 424) + 8 * v28), (*(a1 + 136) + 8 * v22), *(a1 + 2528), (*(a1 + 208) + 24 * v18), v8, *(a1 + 52), *(a1 + 48), 1);
        v453 = 0;
LABEL_70:
        v36 = 1;
        if (!v33 && !v450)
        {
          sub_19D34A9D0((*(a1 + 424) + 8 * v28), (*(a1 + 160) + 8 * v451), *(a1 + 2560), v8, *(a1 + 52), *(a1 + 52), 111, 1.0);
          v36 = 0;
        }

        goto LABEL_73;
      }

      v31 = *(v29 + 40);
      if ((*(v29 + 20) & 1) == 0 && (v31 == 5 || v31 == 2))
      {
        v32 = *(v29 + 44) == 6;
        if (v31 == 5)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v32 = 0;
        if (v31 == 5)
        {
          goto LABEL_55;
        }
      }

      if (v31 != 2)
      {
        if (!v32)
        {
          goto LABEL_68;
        }

        v450 = 0;
LABEL_63:
        v35 = 1;
        sub_19D3499B8(a1, 0, (*(a1 + 352) + v30), (*(a1 + 376) + v30), (*(a1 + 424) + v30), (*(a1 + 400) + v30), (*(a1 + 136) + 8 * v22), *(a1 + 2504), *(a1 + 208) + 24 * v18, v8, *(a1 + 52), *(a1 + 48), 1);
        v33 = !v19;
        v453 = 1;
        if (!v19 || !v450)
        {
          goto LABEL_70;
        }

        goto LABEL_64;
      }

LABEL_55:
      v450 = *(v29 + 60) == 22;
      if (v32)
      {
        goto LABEL_63;
      }

      v33 = !v19;
      if (*(v29 + 60) != 22 || !v19)
      {
        goto LABEL_69;
      }

      v35 = 0;
LABEL_64:
      __B = 0;
      v455 = 0;
      v456 = 0;
      sub_19D3499B8(a1, 0, (*(a1 + 352) + v30), (*(a1 + 376) + v30), (*(a1 + 424) + v30), (*(a1 + 400) + v30), (*(a1 + 160) + 8 * v451), *(a1 + 2536), &__B, v8, *(a1 + 52), *(a1 + 52), 1);
      if (__B)
      {
        v455 = __B;
        operator delete(__B);
      }

      v36 = 1;
      v450 = 1;
      v453 = 1;
      if ((v35 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_73:
      v449 = v36;
      v37 = *(a1 + 2680);
      if (v37 && *(v37 + 244) == 1)
      {
        v38 = *(a1 + 424);
        v39 = *(a1 + 2608);
        v40 = *(a1 + 52);
        if (v40 >= 0)
        {
          v41 = *(a1 + 52);
        }

        else
        {
          v41 = v40 + 7;
        }

        v42 = (v41 & 0xFFFFFFF8);
        if (v40 < 8)
        {
          if (v42 < v40)
          {
            v71 = 0;
            v72 = *(v38 + 8 * v28);
            v73 = *v39;
            v74 = v72 + 4 * v42;
            v75 = 4 * v40;
            v76 = v73->u64 + 4 * v42;
            v79 = v74 < v73->u64 + 4 * v40 && v76 < v72 + v441 * v40 || v40 < 0;
            v80 = (v40 - v42) < 8 || v79;
            v81 = (v76 + 16);
            v82 = (v74 + 16);
            do
            {
              v83 = v42;
              if (v80)
              {
                goto LABEL_112;
              }

              v84 = v82;
              v85 = v81;
              v86 = v42 + (v40 & 7) - v40;
              do
              {
                v87 = vaddq_f32(*v84, *v85);
                v84[-1] = vaddq_f32(v84[-1], v85[-1]);
                *v84 = v87;
                v85 += 2;
                v84 += 2;
                v86 += 8;
              }

              while (v86);
              v83 = v40 - (v40 & 7);
              if ((v40 & 7) != 0)
              {
LABEL_112:
                v88 = v40 - v83;
                v89 = v83;
                v90 = (v72 + 4 * v83);
                v91 = &v73->f32[v89];
                do
                {
                  v92 = *v91++;
                  *v90 = *v90 + v92;
                  ++v90;
                  --v88;
                }

                while (v88);
              }

              ++v71;
              v82 = (v82 + v75);
              v72 += v75;
            }

            while (v71 != v8);
          }
        }

        else
        {
          v43 = v41 >> 3;
          if (v42 >= v40)
          {
            v93 = 0;
            do
            {
              v94 = (*(v38 + 8 * v28) + 4 * v93 * v40);
              v95 = *v39;
              v96 = v43;
              do
              {
                v97 = *v95;
                v98 = v95[1];
                v95 += 2;
                v99 = vaddq_f32(v94[1], v98);
                *v94 = vaddq_f32(*v94, v97);
                v94[1] = v99;
                v94 += 2;
                --v96;
              }

              while (v96);
              ++v93;
            }

            while (v93 != v8);
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = *v39;
            v47 = 4 * v42;
            v48 = 4 * v40;
            v49 = 4 * v42 + 16;
            do
            {
              v50 = v48 * v45;
              v51 = *(v38 + 8 * v28);
              v52 = (v51 + 4 * v45 * v40);
              v53 = v43;
              do
              {
                v54 = *v46;
                v55 = v46[1];
                v46 += 2;
                v56 = vaddq_f32(v52[1], v55);
                *v52 = vaddq_f32(*v52, v54);
                v52[1] = v56;
                v52 += 2;
                --v53;
              }

              while (v53);
              v46 = *v39;
              v57 = v42;
              if ((v40 - v42) <= 7)
              {
                goto LABEL_92;
              }

              v58 = v51 + v47 + v50;
              v59 = v51 + v48 + v50;
              v60 = (v46 + v47);
              _CF = v58 >= v46 + v48 || v60 >= v59;
              v57 = v42;
              if (!_CF)
              {
                goto LABEL_92;
              }

              v62 = v60 + 1;
              v63 = (v51 + v49);
              v64 = v42 + (v40 & 7) - v40;
              do
              {
                v65 = vaddq_f32(*v63, *v62);
                v63[-1] = vaddq_f32(v63[-1], v62[-1]);
                *v63 = v65;
                v62 += 2;
                v63 += 2;
                v64 += 8;
              }

              while (v64);
              v57 = v40 - (v40 & 7);
              if ((v40 & 7) != 0)
              {
LABEL_92:
                v66 = v40 - v57;
                v67 = v57;
                v68 = (v51 + v44 + v67 * 4);
                v69 = &v46->f32[v67];
                do
                {
                  v70 = *v69++;
                  *v68 = *v68 + v70;
                  ++v68;
                  --v66;
                }

                while (v66);
              }

              ++v45;
              v49 += v48;
              v44 += v48;
            }

            while (v45 != v8);
          }
        }
      }

      v100 = *(*(a1 + 424) + 8 * v28);
      v101 = *(a1 + 52) * v8;
      LODWORD(__B) = -1035468800;
      __C[0] = 50.0;
      vDSP_vclip(v100, 1, &__B, __C, v100, 1, v101);
      sub_19D2CA3F8((*(a1 + 520) + v30), (*(a1 + 424) + v30), v8, *(a1 + 52), *(a1 + 740));
      if ((v453 & 1) == 0)
      {
        sub_19D34A1D8(a1, v452, (*(a1 + 352) + 8 * v28), (*(a1 + 136) + 8 * v22), *(a1 + 2504), (*(a1 + 208) + 24 * v18), v8, *(a1 + 52), *(a1 + 48), 1);
      }

      v102 = *(a1 + 2680);
      if (v102 && *(v102 + 244) == 1)
      {
        v103 = *(a1 + 352);
        v104 = *(a1 + 2592);
        v105 = *(a1 + 52);
        if (v105 >= 0)
        {
          v106 = *(a1 + 52);
        }

        else
        {
          v106 = v105 + 7;
        }

        v107 = (v106 & 0xFFFFFFF8);
        if (v105 < 8)
        {
          if (v107 < v105)
          {
            v136 = 0;
            v137 = *(v103 + 8 * v28);
            v138 = *v104;
            v139 = v137 + 4 * v107;
            v140 = 4 * v105;
            v141 = v138->u64 + 4 * v107;
            v144 = v139 < v138->u64 + 4 * v105 && v141 < v137 + v441 * v105 || v105 < 0;
            v145 = (v105 - v107) < 8 || v144;
            v146 = (v141 + 16);
            v147 = (v139 + 16);
            do
            {
              v148 = v107;
              if (v145)
              {
                goto LABEL_160;
              }

              v149 = v147;
              v150 = v146;
              v151 = v107 + (v105 & 7) - v105;
              do
              {
                v152 = vaddq_f32(*v149, *v150);
                v149[-1] = vaddq_f32(v149[-1], v150[-1]);
                *v149 = v152;
                v150 += 2;
                v149 += 2;
                v151 += 8;
              }

              while (v151);
              v148 = v105 - (v105 & 7);
              if ((v105 & 7) != 0)
              {
LABEL_160:
                v153 = v105 - v148;
                v154 = v148;
                v155 = (v137 + 4 * v148);
                v156 = &v138->f32[v154];
                do
                {
                  v157 = *v156++;
                  *v155 = *v155 + v157;
                  ++v155;
                  --v153;
                }

                while (v153);
              }

              ++v136;
              v147 = (v147 + v140);
              v137 += v140;
            }

            while (v136 != v8);
          }
        }

        else
        {
          v108 = v106 >> 3;
          if (v107 >= v105)
          {
            v158 = 0;
            do
            {
              v159 = (*(v103 + 8 * v28) + 4 * v158 * v105);
              v160 = *v104;
              v161 = v108;
              do
              {
                v162 = *v160;
                v163 = v160[1];
                v160 += 2;
                v164 = vaddq_f32(v159[1], v163);
                *v159 = vaddq_f32(*v159, v162);
                v159[1] = v164;
                v159 += 2;
                --v161;
              }

              while (v161);
              ++v158;
            }

            while (v158 != v8);
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = *v104;
            v112 = 4 * v107;
            v113 = 4 * v105;
            v114 = 4 * v107 + 16;
            do
            {
              v115 = v113 * v110;
              v116 = *(v103 + 8 * v28);
              v117 = (v116 + 4 * v110 * v105);
              v118 = v108;
              do
              {
                v119 = *v111;
                v120 = v111[1];
                v111 += 2;
                v121 = vaddq_f32(v117[1], v120);
                *v117 = vaddq_f32(*v117, v119);
                v117[1] = v121;
                v117 += 2;
                --v118;
              }

              while (v118);
              v111 = *v104;
              v122 = v107;
              if ((v105 - v107) <= 7)
              {
                goto LABEL_140;
              }

              v123 = v116 + v112 + v115;
              v124 = v116 + v113 + v115;
              v125 = (v111 + v112);
              v126 = v123 >= v111 + v113 || v125 >= v124;
              v122 = v107;
              if (!v126)
              {
                goto LABEL_140;
              }

              v127 = v125 + 1;
              v128 = (v116 + v114);
              v129 = v107 + (v105 & 7) - v105;
              do
              {
                v130 = vaddq_f32(*v128, *v127);
                v128[-1] = vaddq_f32(v128[-1], v127[-1]);
                *v128 = v130;
                v127 += 2;
                v128 += 2;
                v129 += 8;
              }

              while (v129);
              v122 = v105 - (v105 & 7);
              if ((v105 & 7) != 0)
              {
LABEL_140:
                v131 = v105 - v122;
                v132 = v122;
                v133 = (v116 + v109 + v132 * 4);
                v134 = &v111->f32[v132];
                do
                {
                  v135 = *v134++;
                  *v133 = *v133 + v135;
                  ++v133;
                  --v131;
                }

                while (v131);
              }

              ++v110;
              v114 += v113;
              v109 += v113;
            }

            while (v110 != v8);
          }
        }
      }

      if (v19)
      {
        v165 = *(a1 + 352);
        v166 = *(a1 + 52);
        if (v450)
        {
          v167 = v451;
        }

        else
        {
          sub_19D34A9D0((v165 + 8 * v28), (*(a1 + 160) + 8 * v451), *(a1 + 2536), v8, v166, v166, 111, 1.0);
          v165 = *(a1 + 352);
          v166 = *(a1 + 52);
          v167 = v451;
        }

        sub_19D34A4D8(a1, *(a1 + 2680), (v165 + 8 * v28), *(a1 + 2568), (*(a1 + 184) + 8 * v167), v8, v166);
      }

      v168 = *(a1 + 352);
      v169 = *(a1 + 52) * v8;
      LODWORD(__B) = -1035468800;
      __C[0] = 50.0;
      vDSP_vclip(*(v168 + 8 * v28), 1, &__B, __C, *(v168 + 8 * v28), 1, v169);
      sub_19D2CA3F8((*(a1 + 448) + v30), (*(a1 + 352) + v30), v8, *(a1 + 52), *(a1 + 736));
      if ((v453 & 1) == 0)
      {
        sub_19D34A1D8(a1, v452, (*(a1 + 376) + 8 * v28), (*(a1 + 136) + 8 * v22), *(a1 + 2512), (*(a1 + 208) + 24 * v18), v8, *(a1 + 52), *(a1 + 48), 1);
      }

      v170 = *(a1 + 2680);
      if (v170 && *(v170 + 244) == 1)
      {
        v171 = *(a1 + 376);
        v172 = *(a1 + 2600);
        v173 = *(a1 + 52);
        if (v173 >= 0)
        {
          v174 = *(a1 + 52);
        }

        else
        {
          v174 = v173 + 7;
        }

        v175 = (v174 & 0xFFFFFFF8);
        if (v173 < 8)
        {
          if (v175 < v173)
          {
            v204 = 0;
            v205 = *(v171 + 8 * v28);
            v206 = *v172;
            v207 = v205 + 4 * v175;
            v208 = 4 * v173;
            v209 = v206->u64 + 4 * v175;
            v212 = v207 < v206->u64 + 4 * v173 && v209 < v205 + v441 * v173 || v173 < 0;
            v213 = (v173 - v175) < 8 || v212;
            v214 = (v209 + 16);
            v215 = (v207 + 16);
            do
            {
              v216 = v175;
              if (v213)
              {
                goto LABEL_213;
              }

              v217 = v215;
              v218 = v214;
              v219 = v175 + (v173 & 7) - v173;
              do
              {
                v220 = vaddq_f32(*v217, *v218);
                v217[-1] = vaddq_f32(v217[-1], v218[-1]);
                *v217 = v220;
                v218 += 2;
                v217 += 2;
                v219 += 8;
              }

              while (v219);
              v216 = v173 - (v173 & 7);
              if ((v173 & 7) != 0)
              {
LABEL_213:
                v221 = v173 - v216;
                v222 = v216;
                v223 = (v205 + 4 * v216);
                v224 = &v206->f32[v222];
                do
                {
                  v225 = *v224++;
                  *v223 = *v223 + v225;
                  ++v223;
                  --v221;
                }

                while (v221);
              }

              ++v204;
              v215 = (v215 + v208);
              v205 += v208;
            }

            while (v204 != v8);
          }
        }

        else
        {
          v176 = v174 >> 3;
          if (v175 >= v173)
          {
            v226 = 0;
            do
            {
              v227 = (*(v171 + 8 * v28) + 4 * v226 * v173);
              v228 = *v172;
              v229 = v176;
              do
              {
                v230 = *v228;
                v231 = v228[1];
                v228 += 2;
                v232 = vaddq_f32(v227[1], v231);
                *v227 = vaddq_f32(*v227, v230);
                v227[1] = v232;
                v227 += 2;
                --v229;
              }

              while (v229);
              ++v226;
            }

            while (v226 != v8);
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = *v172;
            v180 = 4 * v175;
            v181 = 4 * v173;
            v182 = 4 * v175 + 16;
            do
            {
              v183 = v181 * v178;
              v184 = *(v171 + 8 * v28);
              v185 = (v184 + 4 * v178 * v173);
              v186 = v176;
              do
              {
                v187 = *v179;
                v188 = v179[1];
                v179 += 2;
                v189 = vaddq_f32(v185[1], v188);
                *v185 = vaddq_f32(*v185, v187);
                v185[1] = v189;
                v185 += 2;
                --v186;
              }

              while (v186);
              v179 = *v172;
              v190 = v175;
              if ((v173 - v175) <= 7)
              {
                goto LABEL_194;
              }

              v191 = v184 + v180 + v183;
              v192 = v184 + v181 + v183;
              v193 = (v179 + v180);
              v194 = v191 >= v179 + v181 || v193 >= v192;
              v190 = v175;
              if (!v194)
              {
                goto LABEL_194;
              }

              v195 = v193 + 1;
              v196 = (v184 + v182);
              v197 = v175 + (v173 & 7) - v173;
              do
              {
                v198 = vaddq_f32(*v196, *v195);
                v196[-1] = vaddq_f32(v196[-1], v195[-1]);
                *v196 = v198;
                v195 += 2;
                v196 += 2;
                v197 += 8;
              }

              while (v197);
              v190 = v173 - (v173 & 7);
              if ((v173 & 7) != 0)
              {
LABEL_194:
                v199 = v173 - v190;
                v200 = v190;
                v201 = (v184 + v177 + v200 * 4);
                v202 = &v179->f32[v200];
                do
                {
                  v203 = *v202++;
                  *v201 = *v201 + v203;
                  ++v201;
                  --v199;
                }

                while (v199);
              }

              ++v178;
              v182 += v181;
              v177 += v181;
            }

            while (v178 != v8);
          }
        }
      }

      if (v19)
      {
        v233 = *(a1 + 376);
        v234 = *(a1 + 52);
        if (!v450)
        {
          sub_19D34A9D0((v233 + 8 * v28), (*(a1 + 160) + 8 * v451), *(a1 + 2544), v8, v234, v234, 111, 1.0);
          v233 = *(a1 + 376);
          v234 = *(a1 + 52);
        }

        sub_19D34A4D8(a1, *(a1 + 2680), (v233 + 8 * v28), *(a1 + 2576), (*(a1 + 184) + 8 * v451), v8, v234);
      }

      v235 = *(a1 + 2680);
      if (!v235)
      {
        v237 = *(a1 + 52);
        goto LABEL_237;
      }

      v236 = *(v235 + 465);
      v237 = *(a1 + 52);
      _ZF = v236 == 1;
      v238 = (v237 * v8);
      if (_ZF && v238 >= 1)
      {
        v240 = *(*(a1 + 376) + 8 * v28);
        if (v238 < 8)
        {
          v241 = 0;
LABEL_235:
          v245 = v238 - v241;
          v246 = &v240->f32[v241];
          do
          {
            *v246 = *v246 + 1.0;
            ++v246;
            --v245;
          }

          while (v245);
          goto LABEL_237;
        }

        v241 = v238 & 0x7FFFFFF8;
        v242 = v240 + 1;
        v243 = v241;
        do
        {
          v244 = vaddq_f32(*v242, v440);
          v242[-1] = vaddq_f32(v242[-1], v440);
          *v242 = v244;
          v242 += 2;
          v243 -= 8;
        }

        while (v243);
        if (v241 != v238)
        {
          goto LABEL_235;
        }
      }

LABEL_237:
      v247 = *(a1 + 376);
      LODWORD(__B) = -1035468800;
      __C[0] = 50.0;
      vDSP_vclip(*(v247 + 8 * v28), 1, &__B, __C, *(v247 + 8 * v28), 1, v237 * v8);
      sub_19D2CA3F8((*(a1 + 472) + v30), (*(a1 + 376) + v30), v8, *(a1 + 52), *(a1 + 736));
      v248 = *(a1 + 184);
      v249 = *(a1 + 520);
      v250 = *(a1 + 448);
      v251 = *(a1 + 52) * v8;
      if (v251 >= 8)
      {
        v252 = *(v248 + 8 * v18);
        v253 = *(v250 + 8 * v28);
        v254 = v251 / 8;
        v255 = *(v249 + 8 * v28);
        do
        {
          v257 = *v255;
          v256 = v255[1];
          v255 += 2;
          v259 = *v253;
          v258 = v253[1];
          v253 += 2;
          *v252 = vmulq_f32(v259, v257);
          v252[1] = vmulq_f32(v258, v256);
          v252 += 2;
          --v254;
        }

        while (v254);
      }

      v260 = 8 * (v251 / 8);
      if (v260 < v251)
      {
        v261 = *(v249 + 8 * v28);
        v262 = *(v250 + 8 * v28);
        v263 = *(v248 + 8 * v18);
        v264 = v260;
        v265 = v251 - v260;
        if (v265 <= 7)
        {
          goto LABEL_247;
        }

        if ((v263 - v261) < 0x20)
        {
          goto LABEL_247;
        }

        if ((v263 - v262) < 0x20)
        {
          goto LABEL_247;
        }

        v266 = v265 - (v251 & 7) + v260;
        v267 = v260 + (v251 & 7) - v251;
        v268 = 4 * v260;
        v269 = (v263 + v268 + 16);
        v270 = (v261 + v268 + 16);
        v271 = (v262 + v268 + 16);
        do
        {
          v272 = vmulq_f32(*v271, *v270);
          v269[-1] = vmulq_f32(v271[-1], v270[-1]);
          *v269 = v272;
          v269 += 2;
          v270 += 2;
          v271 += 2;
          v267 += 8;
        }

        while (v267);
        v264 = v266;
        if ((v251 & 7) != 0)
        {
LABEL_247:
          v273 = v251 - v264;
          v274 = (v263 + 4 * v264);
          v275 = (v262 + 4 * v264);
          v276 = (v261 + 4 * v264);
          do
          {
            v277 = *v276++;
            v278 = v277;
            v279 = *v275++;
            *v274++ = v279 * v278;
            --v273;
          }

          while (v273);
        }
      }

      if (!v19)
      {
        goto LABEL_279;
      }

      if ((v442 & 1) == 0)
      {
        v294 = *(a1 + 184);
        v295 = *(a1 + 472);
        v296 = *(a1 + 52) * v8;
        if (v296 >= 8)
        {
          v297 = *(v294 + 8 * v18);
          v298 = *(v294 + 8 * v451);
          v299 = v296 / 8;
          v300 = *(v295 + 8 * v28);
          do
          {
            v302 = *v300;
            v301 = v300[1];
            v300 += 2;
            v304 = *v298;
            v303 = v298[1];
            v298 += 2;
            v305 = vmlaq_f32(v297[1], v303, v301);
            *v297 = vmlaq_f32(*v297, v304, v302);
            v297[1] = v305;
            v297 += 2;
            --v299;
          }

          while (v299);
        }

        v306 = 8 * (v296 / 8);
        if (v306 < v296)
        {
          v307 = *(v295 + 8 * v28);
          v308 = *(v294 + 8 * v451);
          v309 = *(v294 + 8 * v18);
          v310 = v306;
          v311 = v296 - v306;
          if (v311 <= 7)
          {
            goto LABEL_277;
          }

          v312 = 4 * v306;
          v313 = v309 + 4 * v296;
          v314 = v309 + v312 >= (v308 + 4 * v296) || v308 + 4 * v306 >= v313;
          v315 = !v314;
          if (v307 + v312 < v313 && v309 + v312 < (v307 + 4 * v296))
          {
            goto LABEL_277;
          }

          if (v315)
          {
            goto LABEL_277;
          }

          v317 = v311 - (v296 & 7) + v310;
          v318 = v310 + (v296 & 7) - v296;
          v319 = (v309 + v312 + 16);
          v320 = (v307 + v312 + 16);
          v321 = (v308 + v312 + 16);
          do
          {
            v322 = vmlaq_f32(*v319, *v321, *v320);
            v319[-1] = vmlaq_f32(v319[-1], v321[-1], v320[-1]);
            *v319 = v322;
            v319 += 2;
            v320 += 2;
            v321 += 2;
            v318 += 8;
          }

          while (v318);
          v310 = v317;
          if ((v296 & 7) != 0)
          {
LABEL_277:
            v323 = v296 - v310;
            v324 = (v309 + 4 * v310);
            v325 = (v308 + 4 * v310);
            v326 = (v307 + 4 * v310);
            do
            {
              v327 = *v326++;
              v328 = v327;
              v329 = *v325++;
              *v324 = *v324 + (v329 * v328);
              ++v324;
              --v323;
            }

            while (v323);
          }
        }

        goto LABEL_279;
      }

      v280 = (*(a1 + 52) * v8);
      if (v280 >= 1)
      {
        v281 = *(a1 + 184);
        v282 = *(v281 + 8 * v451);
        v283 = *(*(a1 + 448) + 8 * v28);
        v284 = *(v281 + 8 * v18);
        if (v280 >= 8)
        {
          v285 = 0;
          v388 = v284 + 4 * v280;
          v390 = v284 < v283->u64 + 4 * v280 && v283 < v388;
          if ((v282 >= v388 || v284 >= v282->u64 + 4 * v280) && !v390)
          {
            v285 = v280 & 0x7FFFFFF8;
            v392 = v282 + 1;
            v393 = v283 + 1;
            v394 = (v284 + 16);
            v395 = v285;
            do
            {
              v396 = vaddq_f32(vmlsq_f32(*v392, *v392, *v393), *v394);
              v394[-1] = vaddq_f32(vmlsq_f32(v392[-1], v392[-1], v393[-1]), v394[-1]);
              *v394 = v396;
              v392 += 2;
              v393 += 2;
              v394 += 2;
              v395 -= 8;
            }

            while (v395);
            if (v285 == v280)
            {
              goto LABEL_279;
            }
          }
        }

        else
        {
          v285 = 0;
        }

        v286 = v280 - v285;
        v287 = v285;
        v288 = (v284 + v287 * 4);
        v289 = &v283->f32[v287];
        v290 = &v282->f32[v287];
        do
        {
          v291 = *v290++;
          v292 = v291;
          v293 = *v289++;
          *v288 = (v292 - (v293 * v292)) + *v288;
          ++v288;
          --v286;
        }

        while (v286);
      }

LABEL_279:
      v330 = *(a1 + 184);
      v331 = *(a1 + 52) * v8;
      *&__B = -v10;
      __C[0] = v10;
      vDSP_vclip(*(v330 + 8 * v18), 1, &__B, __C, *(v330 + 8 * v18), 1, v331);
      if ((v453 & 1) == 0)
      {
        sub_19D34A1D8(a1, v452, (*(a1 + 400) + 8 * v28), (*(a1 + 136) + 8 * v22), *(a1 + 2520), (*(a1 + 208) + 24 * v18), v8, *(a1 + 52), *(a1 + 48), 1);
      }

      v332 = *(a1 + 2680);
      if (v332 && *(v332 + 244) == 1)
      {
        v333 = *(a1 + 400);
        v334 = *(a1 + 2616);
        v335 = *(a1 + 52);
        if (v335 >= 0)
        {
          v336 = *(a1 + 52);
        }

        else
        {
          v336 = v335 + 7;
        }

        v337 = (v336 & 0xFFFFFFF8);
        if (v335 < 8)
        {
          if (v337 < v335)
          {
            v366 = 0;
            v367 = *(v333 + 8 * v28);
            v368 = *v334;
            v369 = v367 + 4 * v337;
            v370 = 4 * v335;
            v371 = v368->u64 + 4 * v337;
            v374 = v369 < v368->u64 + 4 * v335 && v371 < v367 + v441 * v335 || v335 < 0;
            v375 = (v335 - v337) < 8 || v374;
            v376 = (v371 + 16);
            v377 = (v369 + 16);
            do
            {
              v378 = v337;
              if (v375)
              {
                goto LABEL_320;
              }

              v379 = v377;
              v380 = v376;
              v381 = v337 + (v335 & 7) - v335;
              do
              {
                v382 = vaddq_f32(*v379, *v380);
                v379[-1] = vaddq_f32(v379[-1], v380[-1]);
                *v379 = v382;
                v380 += 2;
                v379 += 2;
                v381 += 8;
              }

              while (v381);
              v378 = v335 - (v335 & 7);
              if ((v335 & 7) != 0)
              {
LABEL_320:
                v383 = v335 - v378;
                v384 = v378;
                v385 = (v367 + 4 * v378);
                v386 = &v368->f32[v384];
                do
                {
                  v387 = *v386++;
                  *v385 = *v385 + v387;
                  ++v385;
                  --v383;
                }

                while (v383);
              }

              ++v366;
              v377 = (v377 + v370);
              v367 += v370;
            }

            while (v366 != v8);
          }
        }

        else
        {
          v338 = v336 >> 3;
          if (v337 >= v335)
          {
            v397 = 0;
            do
            {
              v398 = (*(v333 + 8 * v28) + 4 * v397 * v335);
              v399 = *v334;
              v400 = v338;
              do
              {
                v401 = *v399;
                v402 = v399[1];
                v399 += 2;
                v403 = vaddq_f32(v398[1], v402);
                *v398 = vaddq_f32(*v398, v401);
                v398[1] = v403;
                v398 += 2;
                --v400;
              }

              while (v400);
              ++v397;
            }

            while (v397 != v8);
          }

          else
          {
            v339 = 0;
            v340 = 0;
            v341 = *v334;
            v342 = 4 * v337;
            v343 = 4 * v335;
            v344 = 4 * v337 + 16;
            do
            {
              v345 = v343 * v340;
              v346 = *(v333 + 8 * v28);
              v347 = (v346 + 4 * v340 * v335);
              v348 = v338;
              do
              {
                v349 = *v341;
                v350 = v341[1];
                v341 += 2;
                v351 = vaddq_f32(v347[1], v350);
                *v347 = vaddq_f32(*v347, v349);
                v347[1] = v351;
                v347 += 2;
                --v348;
              }

              while (v348);
              v341 = *v334;
              v352 = v337;
              if ((v335 - v337) <= 7)
              {
                goto LABEL_300;
              }

              v353 = v346 + v342 + v345;
              v354 = v346 + v343 + v345;
              v355 = (v341 + v342);
              v356 = v353 >= v341 + v343 || v355 >= v354;
              v352 = v337;
              if (!v356)
              {
                goto LABEL_300;
              }

              v357 = v355 + 1;
              v358 = (v346 + v344);
              v359 = v337 + (v335 & 7) - v335;
              do
              {
                v360 = vaddq_f32(*v358, *v357);
                v358[-1] = vaddq_f32(v358[-1], v357[-1]);
                *v358 = v360;
                v357 += 2;
                v358 += 2;
                v359 += 8;
              }

              while (v359);
              v352 = v335 - (v335 & 7);
              if ((v335 & 7) != 0)
              {
LABEL_300:
                v361 = v335 - v352;
                v362 = v352;
                v363 = (v346 + v339 + v362 * 4);
                v364 = &v341->f32[v362];
                do
                {
                  v365 = *v364++;
                  *v363 = *v363 + v365;
                  ++v363;
                  --v361;
                }

                while (v361);
              }

              ++v340;
              v344 += v343;
              v339 += v343;
            }

            while (v340 != v8);
          }
        }
      }

      v404 = *(a1 + 400);
      v405 = *(a1 + 52);
      if ((v449 & 1) == 0)
      {
        sub_19D34A9D0((v404 + 8 * v28), (*(a1 + 160) + 8 * v451), *(a1 + 2552), v8, *(a1 + 52), *(a1 + 52), 111, 1.0);
        v404 = *(a1 + 400);
        v405 = *(a1 + 52);
      }

      sub_19D34A4D8(a1, *(a1 + 2680), (v404 + 8 * v28), *(a1 + 2584), (*(a1 + 184) + 8 * v18), v8, v405);
      v406 = *(a1 + 400);
      v407 = *(a1 + 52) * v8;
      LODWORD(__B) = -1035468800;
      __C[0] = 50.0;
      vDSP_vclip(*(v406 + 8 * v28), 1, &__B, __C, *(v406 + 8 * v28), 1, v407);
      sub_19D2CA3F8((*(a1 + 496) + v30), (*(a1 + 400) + v30), v8, *(a1 + 52), *(a1 + 736));
      sub_19D2CA3F8(v443, (*(a1 + 184) + 8 * v18), v8, *(a1 + 52), *(a1 + 744));
      v408 = *(a1 + 160);
      v409 = *(a1 + 496);
      v410 = *(a1 + 52) * v8;
      v411 = v410 / 8;
      if (v410 >= 8)
      {
        v412 = *(v408 + 8 * v18);
        v413 = *(v409 + 8 * v28);
        v414 = v410 / 8;
        v415 = *v443;
        do
        {
          v417 = *v415;
          v416 = v415[1];
          v415 += 2;
          v419 = *v413;
          v418 = v413[1];
          v413 += 2;
          *v412 = vmulq_f32(v419, v417);
          v412[1] = vmulq_f32(v418, v416);
          v412 += 2;
          --v414;
        }

        while (v414);
      }

      v420 = 8 * v411;
      if (8 * v411 < v410)
      {
        v421 = *(v409 + 8 * v28);
        v422 = *v443;
        v423 = *(v408 + 8 * v18);
        v424 = v420;
        v425 = v410 - v420;
        if (v425 <= 7)
        {
          goto LABEL_355;
        }

        if ((v423 - v422) < 0x20)
        {
          goto LABEL_355;
        }

        if ((v423 - v421) < 0x20)
        {
          goto LABEL_355;
        }

        v426 = v425 - (v410 & 7) + v420;
        v427 = v420 + (v410 & 7) - v410;
        v428 = 4 * v420;
        v429 = (v423 + v428 + 16);
        v430 = (v422 + v428 + 16);
        v431 = (v421 + v428 + 16);
        do
        {
          v432 = vmulq_f32(*v431, *v430);
          v429[-1] = vmulq_f32(v431[-1], v430[-1]);
          *v429 = v432;
          v429 += 2;
          v430 += 2;
          v431 += 2;
          v427 += 8;
        }

        while (v427);
        v424 = v426;
        if ((v410 & 7) != 0)
        {
LABEL_355:
          v433 = v410 - v424;
          v434 = (v423 + 4 * v424);
          v435 = (v421 + 4 * v424);
          v436 = (v422 + 4 * v424);
          do
          {
            v437 = *v436++;
            v438 = v437;
            v439 = *v435++;
            *v434++ = v439 * v438;
            --v433;
          }

          while (v433);
        }
      }

      if (*(a1 + 2692) == 1)
      {
        memcpy(*(*(a1 + 112) + 8 * v18), *(*(a1 + 160) + 8 * v18), 4 * *(a1 + 52));
        memcpy(*(*(a1 + 88) + 8 * v18), *(*(a1 + 184) + 8 * v18), 4 * *(a1 + 52));
      }

      ++v12;
      v11 = v444;
      if (v12 == v444)
      {
        return;
      }
    }

    bzero(*(v23 + 8 * v22), 4 * *(a1 + 48));
    *(*(*(a1 + 64) + 8 * v22) + 4 * **(*a3 + 24 * v18)) = 1065353216;
    v24 = *(a1 + 40);
    if (v24 != 1)
    {
      goto LABEL_35;
    }

LABEL_34:
    *(*(*(a1 + 64) + 8 * v22) + 4 * *(a1 + 48) - 4) = 1065353216;
    goto LABEL_35;
  }
}