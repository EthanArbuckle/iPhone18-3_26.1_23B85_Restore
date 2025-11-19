void sub_19D349960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v44 = *(v42 - 152);
  if (v44)
  {
    *(v42 - 144) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3499B8(uint64_t a1, int a2, void **a3, void **a4, void **a5, void **a6, const void **a7, void *a8, uint64_t a9, unsigned int a10, unsigned int a11, int a12, char a13)
{
  if (a2)
  {
    sub_19D41C548(545);
  }

  v18 = 4 * a11;
  if (!*(a1 + 784))
  {
    operator new[]();
  }

  sub_19D34A9D0((a1 + 784), a7, a8, a10, a12, 4 * a11, 111, 0.0);
  v19 = *a3;
  __dst = *a4;
  v20 = *a5;
  v21 = *a6;
  v22 = a11 * a10;
  v23 = (a11 * a10);
  v24 = 4 * v23;
  if (a10 < 1)
  {
    bzero(*(a1 + 752), 4 * v22);
    v36 = *(a1 + 752);
    if ((a13 & 1) == 0)
    {
LABEL_19:
      memmove(v19, v36, v24);
      bzero(*(a1 + 752), v24);
      memmove(__dst, *(a1 + 752), v24);
      bzero(*(a1 + 752), v24);
      memmove(v20, *(a1 + 752), v24);
      bzero(*(a1 + 752), v24);
      v41 = *(a1 + 752);
      v42 = v21;
      return memmove(v42, v41, v24);
    }

LABEL_17:
    MEMORY[0x19EAFB120](v36, 1, v19, 1, v19, 1, v23);
    bzero(*(a1 + 752), v24);
    MEMORY[0x19EAFB120](*(a1 + 752), 1, __dst, 1, __dst, 1, v23);
    bzero(*(a1 + 752), v24);
    MEMORY[0x19EAFB120](*(a1 + 752), 1, v20, 1, v20, 1, v23);
    bzero(*(a1 + 752), v24);
    v37 = *(a1 + 752);
    v38 = v21;
    v39 = v21;
    v40 = (a11 * a10);
    return MEMORY[0x19EAFB120](v37, 1, v38, 1, v39, 1, v40);
  }

  if (a11 < 1)
  {
    bzero(*(a1 + 752), 4 * v22);
    v36 = *(a1 + 752);
    if ((a13 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v137 = v21;
  v138 = v22;
  bzero(*(a1 + 752), 4 * v22);
  v25 = *(a1 + 784);
  v26 = *(a1 + 752);
  v27 = a11 * a10;
  v28 = (a10 + 0x3FFFFFFFFFFFFFFFLL) * v18;
  v29 = a11 & 0x7FFFFFF8;
  v30 = 4 * v18;
  v31 = 4 * a11;
  v140 = v28;
  if (a11 > 7)
  {
    v43 = v26 >= &v25[v28 + a11] || v25 >= &v26[v27];
    v35 = a13;
    if (v43)
    {
      v44 = a11 - v29;
      if (a11 == v29)
      {
        v45 = v26 + 4;
        v46 = (v25 + 4);
        do
        {
          v47 = v46;
          v48 = v45;
          v49 = a11 & 0x7FFFFFF8;
          do
          {
            v50 = *v47;
            *(v48 - 1) = *(v47 - 1);
            *v48 = v50;
            v48 += 2;
            v47 += 2;
            v49 -= 8;
          }

          while (v49);
          ++v44;
          v45 = (v45 + v31);
          v46 = (v46 + v30);
        }

        while (v44 != a10);
      }

      else
      {
        v57 = 0;
        v58 = (v25 + 4);
        v59 = v26 + 4;
        v60 = 8 * ((a11 >> 3) & 0xFFFFFFF);
        v61 = &v26[v60];
        v62 = &v25[v60];
        do
        {
          v63 = a11 & 0x7FFFFFF8;
          v64 = v59;
          v65 = v58;
          do
          {
            v66 = *v65;
            *(v64 - 1) = *(v65 - 1);
            *v64 = v66;
            v65 += 2;
            v64 += 2;
            v63 -= 8;
          }

          while (v63);
          v67 = v62;
          v68 = v61;
          v69 = a11 - v29;
          do
          {
            v70 = *v67++;
            *v68++ = v70;
            --v69;
          }

          while (v69);
          ++v57;
          v58 = (v58 + v30);
          v59 = (v59 + v31);
          v61 = (v61 + v31);
          v62 = (v62 + v30);
        }

        while (v57 != a10);
      }
    }

    else
    {
      v51 = 0;
      v52 = *(a1 + 752);
      do
      {
        v53 = v25;
        v54 = v52;
        v55 = a11;
        do
        {
          v56 = *v53++;
          *v54++ = v56;
          --v55;
        }

        while (v55);
        ++v51;
        v52 = (v52 + v31);
        v25 = (v25 + v30);
      }

      while (v51 != a10);
    }
  }

  else
  {
    v32 = v26 + 3;
    v33 = v25 + 3;
    v34 = a10;
    v35 = a13;
    do
    {
      *(v32 - 3) = *(v33 - 3);
      if (a11 != 1)
      {
        *(v32 - 2) = *(v33 - 2);
        if (a11 != 2)
        {
          *(v32 - 1) = *(v33 - 1);
          if (a11 != 3)
          {
            *v32 = *v33;
            if (a11 != 4)
            {
              v32[1] = v33[1];
              if (a11 != 5)
              {
                v32[2] = v33[2];
                if (a11 != 6)
                {
                  v32[3] = v33[3];
                }
              }
            }
          }
        }
      }

      v32 = (v32 + v31);
      v33 = (v33 + v30);
      --v34;
    }

    while (v34);
  }

  if (v35)
  {
    MEMORY[0x19EAFB120](v26, 1, v19, 1, v19, 1, v138);
  }

  else
  {
    memmove(v19, v26, v24);
  }

  bzero(*(a1 + 752), v24);
  v71 = *(a1 + 784);
  v72 = *(a1 + 752);
  v73 = (v71 + 4 * a11);
  v139 = 4 * v140;
  v75 = v72 < v71 + 4 * v140 + 8 * a11 && v73 < &v72[v27 * 4];
  if (a11 >= 8)
  {
    v83 = 0;
    v84 = v31 + v71 + 16;
    v85 = v72 + 16;
    v86 = *(a1 + 752);
    v78 = a13;
    while (1)
    {
      if (v75)
      {
        v87 = 0;
      }

      else
      {
        v88 = a11 & 0x7FFFFFF8;
        v89 = v85;
        v90 = v84;
        do
        {
          v91 = *v90;
          *(v89 - 1) = *(v90 - 1);
          *v89 = v91;
          v90 += 2;
          v89 += 2;
          v88 -= 8;
        }

        while (v88);
        v87 = a11 & 0x7FFFFFF8;
        if (a11 == v29)
        {
          goto LABEL_58;
        }
      }

      v92 = a11 - v87;
      v93 = 4 * v87;
      v94 = (v86 + 4 * v87);
      v95 = &v73[v93];
      do
      {
        v96 = *v95;
        v95 += 4;
        *v94++ = v96;
        --v92;
      }

      while (v92);
LABEL_58:
      ++v83;
      v84 += v30;
      v85 = (v85 + v31);
      v86 += v31;
      v73 += v30;
      if (v83 == a10)
      {
        goto LABEL_55;
      }
    }
  }

  v76 = 0;
  v77 = *(a1 + 752);
  v78 = a13;
  do
  {
    v79 = v73;
    v80 = v77;
    v81 = a11;
    do
    {
      v82 = *v79;
      v79 += 4;
      *v80++ = v82;
      --v81;
    }

    while (v81);
    ++v76;
    v77 = (v77 + v31);
    v73 += v30;
  }

  while (v76 != a10);
LABEL_55:
  v141 = 4 * a11 * a10;
  if (v78)
  {
    MEMORY[0x19EAFB120](v72, 1, __dst, 1, __dst, 1, v138);
  }

  else
  {
    memmove(__dst, v72, v24);
  }

  bzero(*(a1 + 752), v24);
  v97 = 0;
  v98 = *(a1 + 784);
  v99 = *(a1 + 752);
  v100 = v98 + 8 * a11;
  v102 = v99 < v98 + v139 + 12 * a11 && v100 < &v99[v141];
  v103 = a11 < 8 || v102;
  v104 = (v100 + 16);
  v105 = v99 + 16;
  v106 = *(a1 + 752);
  do
  {
    if (v103)
    {
      v107 = 0;
LABEL_81:
      v112 = a11 - v107;
      v113 = 4 * v107;
      v114 = (v106 + 4 * v107);
      v115 = (v100 + v113);
      do
      {
        v116 = *v115++;
        *v114++ = v116;
        --v112;
      }

      while (v112);
      goto LABEL_75;
    }

    v108 = a11 & 0x7FFFFFF8;
    v109 = v105;
    v110 = v104;
    do
    {
      v111 = *v110;
      *(v109 - 1) = *(v110 - 1);
      *v109 = v111;
      v110 += 2;
      v109 += 2;
      v108 -= 8;
    }

    while (v108);
    v107 = a11 & 0x7FFFFFF8;
    if (a11 != v29)
    {
      goto LABEL_81;
    }

LABEL_75:
    ++v97;
    v104 = (v104 + v30);
    v105 = (v105 + v31);
    v106 += v31;
    v100 += v30;
  }

  while (v97 != a10);
  if (a13)
  {
    MEMORY[0x19EAFB120](v99, 1, v20, 1, v20, 1, v138);
  }

  else
  {
    memmove(v20, v99, v24);
  }

  bzero(*(a1 + 752), v24);
  v117 = 0;
  v118 = *(a1 + 784);
  v41 = *(a1 + 752);
  v119 = v118 + 12 * a11;
  v121 = v41 < v118 + v139 + 16 * a11 && v119 < &v41[v141];
  v122 = a11 < 8 || v121;
  v123 = (v119 + 16);
  v124 = v41 + 16;
  v125 = *(a1 + 752);
  while (2)
  {
    if (v122)
    {
      v126 = 0;
      goto LABEL_100;
    }

    v127 = a11 & 0x7FFFFFF8;
    v128 = v124;
    v129 = v123;
    do
    {
      v130 = *v129;
      *(v128 - 1) = *(v129 - 1);
      *v128 = v130;
      v129 += 2;
      v128 += 2;
      v127 -= 8;
    }

    while (v127);
    v126 = a11 & 0x7FFFFFF8;
    if (a11 != v29)
    {
LABEL_100:
      v131 = a11 - v126;
      v132 = 4 * v126;
      v133 = (v125 + 4 * v126);
      v134 = (v119 + v132);
      do
      {
        v135 = *v134++;
        *v133++ = v135;
        --v131;
      }

      while (v131);
    }

    ++v117;
    v123 = (v123 + v30);
    v124 = (v124 + v31);
    v125 += v31;
    v119 += v30;
    if (v117 != a10)
    {
      continue;
    }

    break;
  }

  if ((a13 & 1) == 0)
  {
    v42 = v137;
    return memmove(v42, v41, v24);
  }

  v37 = v41;
  v38 = v137;
  v39 = v137;
  v40 = v138;
  return MEMORY[0x19EAFB120](v37, 1, v38, 1, v39, 1, v40);
}

void sub_19D34A1D8(uint64_t a1, int a2, void *a3, const void **a4, void *a5, void *a6, int a7, int a8, int a9, char a10)
{
  if (a10)
  {
    if (a2)
    {
      if (a7 != 1)
      {
        sub_19D41C548(502);
      }

      v10 = a6[1];
      if (v10 != *a6)
      {
        if (((v10 - *a6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      if (a8 >= 1)
      {
        bzero(*(a1 + 760), 4 * a8);
      }
    }

    else
    {
      sub_19D34A9D0((a1 + 752), a4, a5, a7, a9, a8, 111, 0.0);
    }

    JUMPOUT(0x19EAFB120);
  }

  if (a2)
  {
    sub_19D41C548(456);
  }

  sub_19D34A9D0(a3, a4, a5, a7, a9, a8, 111, 0.0);
}

char *sub_19D34A4D8(char *result, uint64_t a2, uint64_t *a3, float32x4_t **a4, uint64_t *a5, int a6, int a7)
{
  if (a2)
  {
    if (*(a2 + 384))
    {
      v7 = a6 <= 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return result;
    }
  }

  else if (a6 < 1)
  {
    return result;
  }

  v8 = *(result + 13);
  if (v8 < 8)
  {
    v55 = v8 + 7;
    if (v8 >= 0)
    {
      v55 = *(result + 13);
    }

    v56 = v55 & 0xFFFFFFF8;
    if (v56 < v8)
    {
      v57 = *a3;
      v58 = *a5;
      v59 = v56;
      v60 = *a4;
      v61 = a7;
      v62 = a6;
      v63 = (v8 - v59);
      if ((v8 - v59) > 7)
      {
        v75 = 4 * v59;
        v76 = v57 + 4 * v59;
        v77 = &v60->f32[v59];
        v78 = 4 * (v8 + (a6 - 1) * a7);
        v79 = v57 + v78;
        v39 = v76 >= v58 + v78;
        v80 = (v58 + 4 * v59);
        v82 = !v39 && v80 < v79;
        v83 = v77 >= v79 || v76 >= v60->u64 + 4 * v8;
        if (!v83 || (v82 & 1) != 0 || a7 < 0)
        {
          v110 = 0;
          v111 = 4 * a7;
          do
          {
            v112 = v77;
            v113 = v80;
            v114 = v76;
            result = v63;
            do
            {
              v115 = *v112++;
              v116 = v115;
              v117 = *v113++;
              *v114 = *v114 + (v117 * v116);
              ++v114;
              --result;
            }

            while (result);
            ++v110;
            v76 += v111;
            v80 = (v80 + v111);
          }

          while (v110 != a6);
        }

        else
        {
          v84 = 0;
          v85 = v8 & 7;
          if ((v8 & 7) != 0)
          {
            v86 = v8 - v85;
            v87 = v8 - v85 + 1;
            v88 = 4 * (v8 - v85);
            result = v60 + v88;
            v89 = v8 - v85 + 2;
            v90 = v8 - v85 + 3;
            v91 = v8 - v85 + 4;
            v92 = v8 - v85 + 5;
            v93 = v8 - v85 + 6;
            v94 = v59 + v85 - v8;
            v95 = v75 + 16;
            v96 = (v57 + v75 + 16);
            v97 = 4 * v61;
            v98 = (v60 + v95);
            v99 = (v58 + v95);
            do
            {
              v100 = 4 * v84 * v61;
              v101 = v57 + v100;
              v102 = v58 + v100;
              v103 = v99;
              v104 = v98;
              v105 = v96;
              v106 = v94;
              do
              {
                v107 = vmlaq_f32(*v105, *v103, *v104);
                v105[-1] = vmlaq_f32(v105[-1], v103[-1], v104[-1]);
                *v105 = v107;
                v105 += 2;
                v104 += 2;
                v103 += 2;
                v106 += 8;
              }

              while (v106);
              *(v101 + 4 * v86) = *(v101 + 4 * v86) + (*(v102 + 4 * v86) * v60->f32[v86]);
              if (v87 != v8)
              {
                v108 = (v102 + v88);
                v109 = (v101 + v88);
                v109[1] = v109[1] + (v108[1] * *(result + 1));
                if (v89 != v8)
                {
                  v109[2] = v109[2] + (v108[2] * *(result + 2));
                  if (v90 != v8)
                  {
                    v109[3] = v109[3] + (v108[3] * *(result + 3));
                    if (v91 != v8)
                    {
                      v109[4] = v109[4] + (v108[4] * *(result + 4));
                      if (v92 != v8)
                      {
                        v109[5] = v109[5] + (v108[5] * *(result + 5));
                        if (v93 != v8)
                        {
                          v109[6] = v109[6] + (v108[6] * *(result + 6));
                        }
                      }
                    }
                  }
                }
              }

              ++v84;
              v96 = (v96 + v97);
              v99 = (v99 + v97);
            }

            while (v84 != v62);
          }

          else
          {
            v118 = (v59 - v8);
            v119 = (v60 + v75 + 16);
            v120 = (v57 + v75 + 16);
            v121 = 4 * v61;
            v122 = (v58 + v75 + 16);
            do
            {
              v123 = v122;
              v124 = v120;
              v125 = v119;
              result = v118;
              do
              {
                v126 = vmlaq_f32(*v124, *v123, *v125);
                v124[-1] = vmlaq_f32(v124[-1], v123[-1], v125[-1]);
                *v124 = v126;
                v125 += 2;
                v124 += 2;
                v123 += 2;
                result += 8;
              }

              while (result);
              ++v84;
              v120 = (v120 + v121);
              v122 = (v122 + v121);
            }

            while (v84 != a6);
          }
        }
      }

      else
      {
        v64 = 0;
        v65 = (v57 + 4 * v59);
        v66 = 4 * a7;
        v67 = (v58 + 4 * v59);
        v68 = &v60->f32[v59];
        do
        {
          v69 = v68;
          v70 = v67;
          v71 = v65;
          result = v63;
          do
          {
            v72 = *v69++;
            v73 = v72;
            v74 = *v70++;
            *v71 = *v71 + (v74 * v73);
            ++v71;
            --result;
          }

          while (result);
          ++v64;
          v65 = (v65 + v66);
          v67 = (v67 + v66);
        }

        while (v64 != a6);
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = a7;
    v12 = a6;
    v13 = 4 * a7;
    v14 = 16;
    do
    {
      v15 = *a3;
      v16 = *a5;
      v17 = *(result + 13);
      v18 = v17 / 8;
      if (v17 >= 8)
      {
        v19 = 4 * v10 * v11;
        v20 = (v15 + v19);
        v21 = (v16 + v19);
        v22 = *a4;
        v23 = v17 / 8;
        do
        {
          v25 = *v22;
          v24 = v22[1];
          v22 += 2;
          v27 = *v21;
          v26 = v21[1];
          v21 += 2;
          v28 = vmlaq_f32(v20[1], v26, v24);
          *v20 = vmlaq_f32(*v20, v27, v25);
          v20[1] = v28;
          v20 += 2;
          --v23;
        }

        while (v23);
      }

      v29 = 8 * v18;
      if (8 * v18 < v17)
      {
        v30 = *a4;
        v31 = v29;
        v32 = v17 - v29;
        if (v32 <= 7)
        {
          goto LABEL_32;
        }

        v33 = 4 * v29;
        v34 = v13 * v10 + v33;
        v35 = v15 + v34;
        v36 = v13 * v10 + 4 * v17;
        v37 = v15 + v36;
        v38 = v16 + v34;
        v39 = v35 >= v16 + v36 || v38 >= v37;
        v40 = !v39;
        if (v30->u64 + 4 * v31 < v37 && v35 < v30->u64 + 4 * v17)
        {
          goto LABEL_32;
        }

        if (v40)
        {
          goto LABEL_32;
        }

        v42 = v32 - (v17 & 7) + v31;
        v43 = v31 + (v17 & 7) - v17;
        v44 = (v15 + v14 + v33);
        v45 = (v30 + v33 + 16);
        v46 = (v16 + v9 + v33);
        do
        {
          v47 = *v46;
          v48 = v46[1];
          v46 += 2;
          v49 = vmlaq_f32(*v44, v48, *v45);
          v44[-1] = vmlaq_f32(v44[-1], v47, v45[-1]);
          *v44 = v49;
          v44 += 2;
          v45 += 2;
          v43 += 8;
        }

        while (v43);
        v31 = v42;
        if ((v17 & 7) != 0)
        {
LABEL_32:
          v50 = v17 - v31;
          v51 = v15 + 4 * v31;
          v52 = v16 + 4 * v31;
          v53 = &v30->f32[v31];
          do
          {
            v54 = *v53++;
            *(v51 + v9) = *(v51 + v9) + (*(v52 + v9) * v54);
            v51 += 4;
            v52 += 4;
            --v50;
          }

          while (v50);
        }
      }

      ++v10;
      v14 += v13;
      v9 += v13;
    }

    while (v10 != v12);
  }

  return result;
}

void sub_19D34A9D0(void *a1, const void **a2, void *a3, int a4, int a5, int a6, int a7, float a8)
{
  if (a7 != 111)
  {
    cblas_sgemm_NEWLAPACK();
    return;
  }

  v14 = a6 * a4;
  v15 = (qword_1ED44E368 - qword_1ED44E360) >> 2;
  if (v14 <= v15)
  {
    if (v14 < v15)
    {
      qword_1ED44E368 = qword_1ED44E360 + 4 * v14;
    }
  }

  else
  {
    v16 = a3;
    sub_19D2CA0E8(&qword_1ED44E360, v14 - v15);
    a3 = v16;
  }

  v17 = *a3;
  v29[2] = 0;
  v30[0] = a5;
  v30[1] = 0x3F80000000010020;
  v30[2] = 0;
  v29[0] = a6;
  v29[1] = 0x3F80000000010020;
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = v17;
  v23[3] = 0x3F80000000010020;
  v23[4] = 0;
  v23[5] = 0;
  v24 = xmmword_19D475558;
  v25 = unk_19D475568;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  bzero(v22, 0x20uLL);
  v22[0] = 1;
  v18 = MEMORY[0x19EAF99B0](v30, v29, v23, v22);
  if (!v18)
  {
    sub_19D41C548(1011);
  }

  v19 = v18;
  v20 = BNNSFilterApplyBatch(v18, a4, *a2, a5, qword_1ED44E360, a6);
  v21 = *a1;
  if (a8 != 0.0)
  {
    MEMORY[0x19EAFB120](v21, 1, qword_1ED44E360, 1, *a1, 1, v14);
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_19D41C548(346);
  }

  memcpy(v21, qword_1ED44E360, 4 * v14);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  BNNSFilterDestroy(v19);
}

void sub_19D34ABC0(uint64_t a1, const float **a2, uint64_t a3, _DWORD *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    sub_19D429424(a8);
  }

  if (*(a1 + 56))
  {
    if (a4 && a4[1] * *a4 >= 1)
    {
      (*(*a7 + 8))(a7, a2, a4);
      if (!a8)
      {
        return;
      }
    }

    else
    {
      (**a7)(a7, a2);
      if (!a8)
      {
        return;
      }
    }
  }

  else
  {
    (**a7)(a7, a2);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*a2, 1, &__B, &__C, *a2, 1, a6 * a5);
    if (!a8)
    {
      return;
    }
  }

  sub_19D42942C(a8);
}

void *sub_19D34AD2C(void *a1)
{
  *a1 = &unk_1F10B88C8;
  sub_19D344B20(a1);
  v2 = a1[194];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[194] = 0;
    v3 = a1[195];
    if (v3)
    {
      (*(*v3 + 80))(v3);
    }

    a1[195] = 0;
    v4 = a1[196];
    if (v4)
    {
      (*(*v4 + 80))(v4);
    }

    a1[196] = 0;
    v5 = a1[197];
    if (v5)
    {
      (*(*v5 + 80))(v5);
    }

    a1[197] = 0;
    v6 = a1[198];
    if (v6)
    {
      (*(*v6 + 80))(v6);
    }

    a1[198] = 0;
    v7 = a1[199];
    if (v7)
    {
      (*(*v7 + 80))(v7);
    }

    a1[199] = 0;
    v8 = a1[200];
    if (v8)
    {
      (*(*v8 + 80))(v8);
    }

    a1[200] = 0;
    v9 = a1[201];
    if (v9)
    {
      (*(*v9 + 80))(v9);
    }

    a1[201] = 0;
  }

  v10 = a1[331];
  if (v10)
  {
    a1[332] = v10;
    operator delete(v10);
  }

  v11 = a1[328];
  if (v11)
  {
    a1[329] = v11;
    operator delete(v11);
  }

  sub_19D429384((a1 + 303));
  sub_19D429384((a1 + 294));
  sub_19D429384((a1 + 285));
  sub_19D429384((a1 + 276));
  sub_19D429384((a1 + 267));
  sub_19D429384((a1 + 258));
  sub_19D429384((a1 + 249));
  sub_19D429384((a1 + 240));
  sub_19D429384((a1 + 231));
  sub_19D429384((a1 + 222));
  sub_19D429384((a1 + 213));
  sub_19D308FC0(a1 + 168);
  sub_19D308FC0(a1 + 153);
  sub_19D308FC0(a1 + 138);
  sub_19D308FC0(a1 + 123);
  v12 = a1[120];
  if (v12)
  {
    a1[121] = v12;
    operator delete(v12);
  }

  v13 = a1[117];
  if (v13)
  {
    a1[118] = v13;
    operator delete(v13);
  }

  v14 = a1[114];
  if (v14)
  {
    a1[115] = v14;
    operator delete(v14);
  }

  v15 = a1[111];
  if (v15)
  {
    a1[112] = v15;
    operator delete(v15);
  }

  v16 = a1[108];
  if (v16)
  {
    a1[109] = v16;
    operator delete(v16);
  }

  v17 = a1[105];
  if (v17)
  {
    a1[106] = v17;
    operator delete(v17);
  }

  v18 = a1[102];
  if (v18)
  {
    a1[103] = v18;
    operator delete(v18);
  }

  v19 = a1[99];
  if (v19)
  {
    a1[100] = v19;
    operator delete(v19);
  }

  v20 = a1[89];
  if (v20)
  {
    a1[90] = v20;
    operator delete(v20);
  }

  v21 = a1[86];
  if (v21)
  {
    a1[87] = v21;
    operator delete(v21);
  }

  v22 = a1[83];
  if (v22)
  {
    a1[84] = v22;
    operator delete(v22);
  }

  v23 = a1[80];
  if (v23)
  {
    a1[81] = v23;
    operator delete(v23);
  }

  v24 = a1[77];
  if (v24)
  {
    a1[78] = v24;
    operator delete(v24);
  }

  v25 = a1[74];
  if (v25)
  {
    a1[75] = v25;
    operator delete(v25);
  }

  v26 = a1[71];
  if (v26)
  {
    a1[72] = v26;
    operator delete(v26);
  }

  v27 = a1[68];
  if (v27)
  {
    a1[69] = v27;
    operator delete(v27);
  }

  v28 = a1[65];
  if (v28)
  {
    a1[66] = v28;
    operator delete(v28);
  }

  v29 = a1[62];
  if (v29)
  {
    a1[63] = v29;
    operator delete(v29);
  }

  v30 = a1[59];
  if (v30)
  {
    a1[60] = v30;
    operator delete(v30);
  }

  v31 = a1[56];
  if (v31)
  {
    a1[57] = v31;
    operator delete(v31);
  }

  v32 = a1[53];
  if (v32)
  {
    a1[54] = v32;
    operator delete(v32);
  }

  v33 = a1[50];
  if (v33)
  {
    a1[51] = v33;
    operator delete(v33);
  }

  v34 = a1[47];
  if (v34)
  {
    a1[48] = v34;
    operator delete(v34);
  }

  v35 = a1[44];
  if (v35)
  {
    a1[45] = v35;
    operator delete(v35);
  }

  v36 = a1[26];
  if (v36)
  {
    v37 = a1[27];
    v38 = a1[26];
    if (v37 != v36)
    {
      v39 = a1[27];
      do
      {
        v41 = *(v39 - 24);
        v39 -= 24;
        v40 = v41;
        if (v41)
        {
          *(v37 - 16) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = a1[26];
    }

    a1[27] = v36;
    operator delete(v38);
  }

  v42 = a1[23];
  if (v42)
  {
    a1[24] = v42;
    operator delete(v42);
  }

  v43 = a1[20];
  if (v43)
  {
    a1[21] = v43;
    operator delete(v43);
  }

  v44 = a1[17];
  if (v44)
  {
    a1[18] = v44;
    operator delete(v44);
  }

  v45 = a1[14];
  if (v45)
  {
    a1[15] = v45;
    operator delete(v45);
  }

  v46 = a1[11];
  if (v46)
  {
    a1[12] = v46;
    operator delete(v46);
  }

  v47 = a1[8];
  if (v47)
  {
    a1[9] = v47;
    operator delete(v47);
  }

  *a1 = &unk_1F10B68F8;
  v48 = a1[1];
  if (v48)
  {
    a1[2] = v48;
    operator delete(v48);
  }

  return a1;
}

uint64_t sub_19D34B1E8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B8A50;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a5;
  *(a1 + 112) = a6;
  (*(*a1 + 192))(a1);
  *(a1 + 41) = 0;
  *(a1 + 408) = a4;
  *(a1 + 120) = *(a7 + 68);
  *(a1 + 528) = a9;
  if (a9)
  {
    nullsub_171("FullLayer constructor");
    a8 = *(*(a1 + 528) + 376);
  }

  *(a1 + 40) = a8;
  *(a1 + 520) = 0;
  *(a1 + 116) = *(a7 + 45);
  v18 = 9;
  strcpy(__p, "FullLayer");
  (*(*a1 + 400))(a1, __p, 0, -0.44);
  if (v18 < 0)
  {
    operator delete(__p[0]);
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  v15 = *(a7 + 32);
  switch(v15)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  return a1;
}

void sub_19D34B5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v23);
  sub_19D429384(v20 + 432);
  v26 = *(v20 + 384);
  if (v26)
  {
    *(v20 + 392) = v26;
    operator delete(v26);
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
LABEL_5:
      v28 = *(v20 + 312);
      if (!v28)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 344) = v27;
  operator delete(v27);
  v28 = *(v20 + 312);
  if (!v28)
  {
LABEL_6:
    v29 = *(v20 + 288);
    if (!v29)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v20 + 320) = v28;
  operator delete(v28);
  v29 = *(v20 + 288);
  if (!v29)
  {
LABEL_7:
    v30 = *(v20 + 264);
    if (!v30)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v20 + 296) = v29;
  operator delete(v29);
  v30 = *(v20 + 264);
  if (!v30)
  {
LABEL_8:
    sub_19D308FC0(v22);
    v31 = *(v20 + 72);
    if (!v31)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v20 + 272) = v30;
  operator delete(v30);
  sub_19D308FC0(v22);
  v31 = *(v20 + 72);
  if (!v31)
  {
LABEL_9:
    v32 = *v24;
    if (!*v24)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v20 + 80) = v31;
  operator delete(v31);
  v32 = *v24;
  if (!*v24)
  {
LABEL_10:
    *v20 = v21;
    v33 = *(v20 + 8);
    if (!v33)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v20 + 56) = v32;
  operator delete(v32);
  *v20 = v21;
  v33 = *(v20 + 8);
  if (!v33)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v20 + 16) = v33;
  operator delete(v33);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D34B758(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 408) = v14;
LABEL_12:
  if (*(a1 + 100) != v10 || *(a1 + 104) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 512);
  v16 = *a3;
  v17 = *(a1 + 117);
  v18 = sub_19D41C518();
  v19 = *(a1 + 100);
  v20 = *(a1 + 104);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D34B880(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 104);
  sub_19D41C9E8(__stream, a3, *(a1 + 100));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 408));
  }

  v11 = *(a1 + 512);
  v12 = sub_19D41C518();

  return sub_19D34780C(v11, __stream, a3, 3, v12, a5);
}

float32x4_t sub_19D34B93C(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7120, 0);
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(a1 + 104) * *(a1 + 100));
  if (v7 >= 1)
  {
    v8 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7120, 0);
    v9 = 0;
    v10 = v8[16];
    v11 = v5[16];
    v12 = **(a1 + 512);
    if (v7 < 8)
    {
      goto LABEL_6;
    }

    v9 = 0;
    if ((v12 - v10) < 0x20)
    {
      goto LABEL_6;
    }

    if ((v12 - v11) < 0x20)
    {
      goto LABEL_6;
    }

    v9 = v7 & 0x7FFFFFF8;
    v21 = v10 + 1;
    v22 = v11 + 1;
    v23 = v12 + 1;
    v24 = v9;
    do
    {
      result = vsubq_f32(v21[-1], v22[-1]);
      v25 = vsubq_f32(*v21, *v22);
      v23[-1] = result;
      *v23 = v25;
      v21 += 2;
      v22 += 2;
      v23 += 2;
      v24 -= 8;
    }

    while (v24);
    if (v9 != v7)
    {
LABEL_6:
      v13 = v7 - v9;
      v14 = v9;
      v15 = &v12->i32[v9];
      v16 = &v11->f32[v14];
      v17 = &v10->f32[v14];
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *v16++;
        result.f32[0] = v19 - v20;
        *v15++ = result.i32[0];
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_19D34BB18(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7120, 0);
  v4 = *(a1 + 512);
  v5 = *(a1 + 104) * *(a1 + 100);
  v7 = 1065353216;
  return MEMORY[0x19EAFB1F0](v3[16], 1, &v7, *v4, 1, *v4, 1, v5);
}

void sub_19D34BBBC(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7120, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 424);
  v5 = *(a1 + 512);
  (*(*v4 + 64))(v4);
  (**v4)(v4, v5, v3 + 128);
  v6 = *(a1 + 512);
  v7 = *(a1 + 108);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v6, 1, &__B, &__C, *v6, 1, v7);
}

void sub_19D34BCD4(uint64_t a1, float a2)
{
  v2 = *(a1 + 512);
  v3 = *(a1 + 108);
  __B = -a2;
  __C = a2;
  vDSP_vclip(*v2, 1, &__B, &__C, *v2, 1, v3);
}

uint64_t sub_19D34BD20(uint64_t result, float a2)
{
  v2 = *(result + 108);
  if (v2 >= 1)
  {
    v3 = **(result + 512);
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
      return result;
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
  }

  return result;
}

void sub_19D34BDCC(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 512);
  v2[1] = *(a1 + 100);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D34BE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 128) = v3;
  result = a1 + 128;
  *(result + 384) = result;
  return result;
}

void sub_19D34BF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D34BF30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = *(a1 + 48);
        v3 = *(a1 + 56);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = *(a1 + 72);
        v7 = *(a1 + 80);
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = *(a1 + 48);
  }

  *(a1 + 56) = v2;
  *(a1 + 80) = v6;
  v10 = *(a1 + 240);
  v11 = *(a1 + 248);
  if (v11 != v10)
  {
    v12 = 0;
    do
    {
      v13 = *(v10 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = *(a1 + 240);
        v11 = *(a1 + 248);
      }

      ++v12;
    }

    while (v12 < (v11 - v10) >> 3);
  }

  *(a1 + 248) = v10;
  v14 = *(a1 + 224);
  if (v14)
  {
    operator delete(v14);
    *(a1 + 224) = 0;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    operator delete(v15);
    *(a1 + 216) = 0;
  }

  *(a1 + 272) = *(a1 + 264);
  *(a1 + 296) = *(a1 + 288);
  *(a1 + 392) = *(a1 + 384);
  v17 = *(a1 + 360);
  v16 = *(a1 + 368);
  if (v16 != v17)
  {
    v18 = *(a1 + 368);
    do
    {
      v20 = *(v18 - 24);
      v18 -= 24;
      v19 = v20;
      if (v20)
      {
        *(v16 - 16) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 368) = v17;
  if ((*(a1 + 116) & 1) == 0)
  {
    *(a1 + 320) = *(a1 + 312);
    *(a1 + 344) = *(a1 + 336);
  }
}

float sub_19D34C098(uint64_t a1, void *a2, float *a3, int a4)
{
  v5 = *(a1 + 100);
  if (v5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 1.1755e-38;
    do
    {
      v9 = *(*(*a2 + 8 * a4) + 4 * v7);
      if (v9 > v8)
      {
        v6 = v7;
      }

      v8 = fmaxf(v9, v8);
      ++v7;
    }

    while (v5 != v7);
    v10 = v6;
  }

  v11 = *(*(*(a1 + 288) + 8 * a4) + 4 * v10);
  if (v11 <= 1.0e-10)
  {
    result = 99.0;
    *a3 = 99.0;
  }

  else
  {
    result = -log2f(v11);
    *a3 = result;
  }

  return result;
}

float32x4_t sub_19D34C148(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, _DWORD *a5, float32x4_t result)
{
  v6 = *(a1 + 288);
  v7 = *(a1 + 100);
  if (v7 <= 0)
  {
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1.1755e-38;
    do
    {
      v11 = *(*(v6 + 8 * a4) + 4 * v9);
      if (v11 > v10)
      {
        v8 = v9;
      }

      v10 = fmaxf(v11, v10);
      ++v9;
    }

    while (v7 != v9);
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    result.i32[0] = 0x800000;
    do
    {
      v16 = (*v15)->f32[v13];
      if (v16 > result.f32[0])
      {
        v12 = v13;
      }

      result.f32[0] = fmaxf(v16, result.f32[0]);
      ++v13;
    }

    while (v7 != v13);
    if (v8 != v12)
    {
      ++*a5;
    }

    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  if (a4 < ((a2[1] - v14) >> 3) && a4 < ((*(a1 + 296) - v6) >> 3))
  {
    v18 = *(a1 + 100);
    if (v18 >= 1)
    {
      v19 = *v15;
      v20 = *(v6 + 8 * a4);
      v21 = *(v17 + 8 * a4);
      if (v18 >= 8)
      {
        v22 = 0;
        if ((v21 - v19) >= 0x20 && (v21 - v20) >= 0x20)
        {
          v22 = v18 & 0x7FFFFFF8;
          v30 = v19 + 1;
          v31 = v20 + 1;
          v32 = v21 + 1;
          v33 = v22;
          do
          {
            result = vsubq_f32(v30[-1], v31[-1]);
            v34 = vsubq_f32(*v30, *v31);
            v32[-1] = result;
            *v32 = v34;
            v30 += 2;
            v31 += 2;
            v32 += 2;
            v33 -= 8;
          }

          while (v33);
          if (v22 == v18)
          {
            return result;
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21->i32[v22];
      v24 = &v20->f32[v22];
      v25 = &v19->f32[v22];
      v26 = v18 - v22;
      do
      {
        v27 = *v25++;
        v28 = v27;
        v29 = *v24++;
        result.f32[0] = v28 - v29;
        *v23++ = result.i32[0];
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_19D34C2DC(uint64_t a1, void *a2, void *a3, int a4)
{
  if (((**a1)(a1) & 1) == 0)
  {
    sub_19D3128E0((a1 + 416), (*(a1 + 384) + 8 * a4), (*a2 + 8 * a4), *(a1 + 100), *(a1 + 408), v8);
    cblas_sgemv_NEWLAPACK();
    v9 = *(a1 + 312);
    v10 = *(a1 + 104);
    __C = 50.0;
    LODWORD(__B[0]) = -1035468800;
    vDSP_vclip(*(v9 + 8 * a4), 1, __B, &__C, *(v9 + 8 * a4), 1, v10);
  }

  if (a3[1] == *a3 || *(a1 + 112) < 1 || !(**a1)(a1))
  {
    v14 = *(a1 + 264) + 8 * a4;
    v15 = a1 + 416;
    v16 = *(a1 + 104);
    v17 = *(a1 + 100);
    v18 = *(a1 + 136);
    global_queue = dispatch_get_global_queue(0, 0);
    __B[0] = MEMORY[0x1E69E9820];
    __B[1] = 0x40000000;
    __B[2] = sub_19D30AD54;
    __B[3] = &unk_1E7626958;
    v37 = v16;
    __B[4] = v18;
    __B[5] = v15;
    __B[6] = v14;
    dispatch_apply(v17, global_queue, __B);
  }

  else
  {
    v11 = (*(a1 + 360) + 24 * a4);
    v13 = *v11;
    v12 = v11[1];
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v20 = *(a1 + 100);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = *(*a2 + 8 * a4);
      v23 = *(*(a1 + 168) + 8 * *(a1 + 160));
      if (v20 < 8)
      {
        goto LABEL_16;
      }

      if ((v23 - v22) < 0x20)
      {
        goto LABEL_16;
      }

      v21 = v20 & 0x7FFFFFF8;
      v24 = (v22 + 16);
      v25 = (v23 + 16);
      v26 = v21;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 8;
      }

      while (v26);
      if (v21 != v20)
      {
LABEL_16:
        v28 = v20 - v21;
        v29 = 4 * v21;
        v30 = (v23 + 4 * v21);
        v31 = (v22 + v29);
        do
        {
          v32 = *v31++;
          *v30++ = v32;
          --v28;
        }

        while (v28);
      }
    }

    if (*(a1 + 156) < 1)
    {
      ++*(a1 + 160);
    }

    else
    {
      v33 = 0;
      v34 = *(a1 + 192);
      do
      {
        *(*(v34 + 24 * *(a1 + 160)) + 4 * v33) = *(4 * v33);
        ++v33;
      }

      while (v33 < *(a1 + 156));
      ++*(a1 + 160);
      operator delete(0);
    }
  }
}

void sub_19D34C604(uint64_t a1, int a2)
{
  if ((*(a1 + 116) & 1) == 0)
  {
    if (!*(a1 + 112))
    {
      bzero(*(a1 + 136), 4 * *(a1 + 108));
      v4 = *(a1 + 264);
      if (*(a1 + 272) == v4)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    *(a1 + 160) = 0;
  }

  v4 = *(a1 + 264);
  if (*(a1 + 272) == v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v5 = 0;
  do
  {
    bzero(*(v4 + 8 * v5++), 4 * *(a1 + 104));
    v4 = *(a1 + 264);
  }

  while (v5 < (*(a1 + 272) - v4) >> 3);
LABEL_7:
  v6 = *(a1 + 288);
  if (*(a1 + 296) != v6)
  {
    v7 = 0;
    do
    {
      bzero(*(v6 + 8 * v7++), 4 * *(a1 + 100));
      v6 = *(a1 + 288);
    }

    while (v7 < (*(a1 + 296) - v6) >> 3);
  }

  if (a2 >= 1 && (*(a1 + 116) & 1) == 0)
  {
    v8 = 0;
    v9 = 8 * a2;
    do
    {
      if ((*(a1 + 116) & 1) == 0)
      {
        bzero(*(*(a1 + 312) + v8), 4 * *(a1 + 104));
        bzero(*(*(a1 + 336) + v8), 4 * *(a1 + 100));
      }

      v8 += 8;
    }

    while (v9 != v8);
  }
}

uint64_t sub_19D34C73C(uint64_t a1)
{
  if (*(a1 + 112) < 1)
  {
    return (***(a1 + 424))();
  }

  else
  {
    return (*(**(a1 + 424) + 8))();
  }
}

void sub_19D34C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 112) < 1)
  {
    bzero(*(a1 + 136), 4 * *(a1 + 108));
    v10 = __OFSUB__(a5, 1);
    v9 = a5 - 1;
    if (v9 < 0 != v10)
    {
      return;
    }
  }

  else
  {
    *(a1 + 160) = 0;
    v9 = a5 - 1;
    if (a5 < 1)
    {
      return;
    }
  }

  v11 = 0;
  do
  {
    if (*(a1 + 520))
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    (*(*a1 + 248))(a1, a4, a3, v12, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
    --v9;
    ++v11;
  }

  while (v9 != -1);
}

void sub_19D34C86C(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v7 = a3;
  if (a3[1] == *a3 || *(a1 + 112) < 1)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = (**a1)(a1);
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 520))
  {
    sub_19D41C548(34);
  }

LABEL_7:
  v10 = a4 & 0xFFFFFF;
  v11 = a5 != 0;
  if (v10 > v11)
  {
    v26 = v7;
    v25 = v10;
    while (1)
    {
      v15 = *(a1 + 520) ? v10 + ~v11 : v11;
      v16 = v15;
      v17 = (*(a1 + 42) & v9) != 0 ? 1 : v15;
      v18 = *(a1 + 42) ? 1 : v15;
      v19 = *(a1 + 264);
      if (v9)
      {
        break;
      }

      memmove(*(v19 + 8 * v17), *(*a2 + 8 * v17), 4 * *(a1 + 96));
      v20 = *(a1 + 40);
      if (v20 == 1)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v9)
      {
        v21 = (*(a1 + 360) + 24 * v16);
        v22 = *v21;
        **v21 = **(*v7 + 24 * v16);
        if (v20)
        {
          *(v22 + 1) = *(a1 + 104) - 1;
        }

        v23 = v21[1];
        if (v23 != v22)
        {
          if (((v23 - v22) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v12 = v18;
        v24 = *(a1 + 100);
        if (v24 >= 1)
        {
          bzero(*(*(a1 + 384) + 8 * v18), 4 * v24);
        }

        v7 = v26;
        v10 = v25;
      }

      else
      {
        v12 = v18;
        cblas_sgemv_NEWLAPACK();
      }

      v13 = *(a1 + 384);
      v14 = *(a1 + 100);
      __C = 50.0;
      __B = -50.0;
      vDSP_vclip(*(v13 + 8 * v12), 1, &__B, &__C, *(v13 + 8 * v12), 1, v14);
      sub_19D30A3C0((*(a1 + 288) + 8 * v16), (*(a1 + 384) + 8 * v12), *(a1 + 100), *(a1 + 408));
      if (++v11 == v10)
      {
        return;
      }
    }

    bzero(*(v19 + 8 * v17), 4 * *(a1 + 104));
    *(*(*(a1 + 264) + 8 * v17) + 4 * **(*v7 + 24 * v16)) = 1065353216;
    v20 = *(a1 + 40);
    if (v20 != 1)
    {
      goto LABEL_25;
    }

LABEL_24:
    *(*(*(a1 + 264) + 8 * v17) + 4 * *(a1 + 104) - 4) = 1065353216;
    goto LABEL_25;
  }
}

uint64_t sub_19D34CCB8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[520] = 1;
  if ((atomic_load_explicit(&qword_1EB013980, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D454534();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013968);
  a1[520] = 0;
  return result;
}

uint64_t sub_19D34CD60(_BYTE *a1)
{
  a1[520] = 1;
  result = (*(*a1 + 296))(a1);
  a1[520] = 0;
  return result;
}

char *sub_19D34CDB8(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 504) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7120, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 512) = result + 128;
  return result;
}

uint64_t sub_19D34CE44(uint64_t a1, void *lpsrc, float a3)
{
  if (*(a1 + 504))
  {
    sub_19D41C548(1);
  }

  if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7120, 0))
  {
    __cxa_bad_cast();
  }

  sub_19D429424(a1 + 432);
  v5 = **(a1 + 424);
  if (*(a1 + 112))
  {
    v5[1](a3);
  }

  else
  {
    (*v5)(a3);
    v6 = *(a1 + 512);
    v7 = *(a1 + 108);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*v6, 1, &__B, &__C, *v6, 1, v7);
  }

  return sub_19D42942C(a1 + 432);
}

_DWORD *sub_19D34CF88(_DWORD *result)
{
  if (!result[30])
  {
    return (*(*result + 392))();
  }

  return result;
}

float sub_19D34CFC0(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 100);
  v4 = *(a1 + 288);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D34D104(void *a1)
{
  v1 = sub_19D34D9D0(a1);

  operator delete(v1);
}

uint64_t sub_19D34D144(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 100);
    if (v6 >= 1)
    {
      v7 = *(result + 288);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 100);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

void sub_19D34D2C0(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    v3 = *(v2 + 376) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  v4 = *(a1 + 96) + v3;
  v5 = *(a1 + 100) * v4;
  *(a1 + 104) = v4;
  *(a1 + 108) = v5;
  if (*(a1 + 504))
  {
    v6 = &OBJC_IVAR___MontrealNNModelNetwork__outputs;
    if (*(a1 + 116))
    {
      goto LABEL_8;
    }

LABEL_16:
    operator new[]();
  }

  if ((*(a1 + 117) & 1) == 0)
  {
    if (!v2 || *(v2 + 40) != 1)
    {
      operator new[]();
    }

    *(a1 + 128) = *(v2 + 112);
  }

  *(a1 + 512) = a1 + 128;
  v6 = &OBJC_IVAR___MontrealNNModelNetwork__outputs;
  if ((*(a1 + 116) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*(a1 + 112) < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (**a1)(a1);
  }

  if ((*(a1 + 42) & v7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6[122];
  }

  if (*(a1 + 42))
  {
    v9 = 2;
  }

  else
  {
    v9 = v6[122];
  }

  v10 = v8;
  v11 = *(a1 + 264);
  v12 = (*(a1 + 272) - v11) >> 3;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      *(a1 + 272) = v11 + 8 * v8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 264), v8 - v12);
  }

  v13 = *(a1 + 384);
  v14 = (*(a1 + 392) - v13) >> 3;
  if (v9 <= v14)
  {
    if (v9 < v14)
    {
      *(a1 + 392) = v13 + 8 * v9;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 384), v9 - v14);
  }

  v15 = v6[122];
  v16 = *(a1 + 288);
  v17 = (*(a1 + 296) - v16) >> 3;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      *(a1 + 296) = v16 + 8 * v15;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 288), v15 - v17);
    v15 = v6[122];
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    v18 = v15;
    v19 = *(a1 + 312);
    v20 = (*(a1 + 320) - v19) >> 3;
    if (v15 <= v20)
    {
      if (v15 < v20)
      {
        *(a1 + 320) = v19 + 8 * v15;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 312), v15 - v20);
      v15 = v6[122];
      v18 = v15;
    }

    v21 = *(a1 + 336);
    v22 = (*(a1 + 344) - v21) >> 3;
    if (v18 <= v22)
    {
      if (v18 < v22)
      {
        *(a1 + 344) = v21 + 8 * v18;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 336), v18 - v22);
      v15 = v6[122];
    }
  }

  v23 = v15;
  v25 = *(a1 + 360);
  v24 = *(a1 + 368);
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
  if (v23 <= v26)
  {
    if (v23 < v26)
    {
      v27 = v25 + 24 * v23;
      if (v24 != v27)
      {
        v28 = *(a1 + 368);
        do
        {
          v30 = *(v28 - 24);
          v28 -= 24;
          v29 = v30;
          if (v30)
          {
            *(v24 - 16) = v29;
            operator delete(v29);
          }

          v24 = v28;
        }

        while (v28 != v27);
      }

      *(a1 + 368) = v27;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 360, v23 - v26);
  }

  if (v10 >= 1)
  {
    operator new[]();
  }

  if (v9 >= 1)
  {
    operator new[]();
  }

  if (v6[122] >= 1)
  {
    if ((*(a1 + 116) & 1) == 0)
    {
      operator new[]();
    }

    operator new[]();
  }
}

void sub_19D34D970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D34D984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
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

void *sub_19D34D9D0(void *a1)
{
  *a1 = &unk_1F10B8A50;
  sub_19D34BF30(a1);
  v2 = a1[53];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[53] = 0;
  }

  sub_19D429384((a1 + 54));
  v3 = a1[48];
  if (v3)
  {
    a1[49] = v3;
    operator delete(v3);
  }

  v4 = a1[45];
  if (v4)
  {
    v5 = a1[46];
    v6 = a1[45];
    if (v5 != v4)
    {
      v7 = a1[46];
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[45];
    }

    a1[46] = v4;
    operator delete(v6);
  }

  v10 = a1[42];
  if (v10)
  {
    a1[43] = v10;
    operator delete(v10);
  }

  v11 = a1[39];
  if (v11)
  {
    a1[40] = v11;
    operator delete(v11);
  }

  v12 = a1[36];
  if (v12)
  {
    a1[37] = v12;
    operator delete(v12);
  }

  v13 = a1[33];
  if (v13)
  {
    a1[34] = v13;
    operator delete(v13);
  }

  sub_19D308FC0(a1 + 18);
  v14 = a1[9];
  if (v14)
  {
    a1[10] = v14;
    operator delete(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    a1[7] = v15;
    operator delete(v15);
  }

  *a1 = &unk_1F10B68F8;
  v16 = a1[1];
  if (v16)
  {
    a1[2] = v16;
    operator delete(v16);
  }

  return a1;
}

void sub_19D34DB44(uint64_t a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B8BF8;
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  sub_19D42933C(a1 + 296);
  *(a1 + 368) = a5;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  (*(*a1 + 192))(a1);
  *(a1 + 232) = 0;
  *(a1 + 41) = 0;
  *(a1 + 208) = a4;
  *(a1 + 240) = a9;
  *(a1 + 40) = a8;
  *(a1 + 60) = a6;
  *(a1 + 61) = a7;
  operator new();
}

void sub_19D34DCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_19D429384((v15 + 37));
  v19 = v15[34];
  if (v19)
  {
    v15[35] = v19;
    operator delete(v19);
    v20 = *v17;
    if (!*v17)
    {
LABEL_5:
      v21 = v15[23];
      if (!v21)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = *v17;
    if (!*v17)
    {
      goto LABEL_5;
    }
  }

  v15[32] = v20;
  operator delete(v20);
  v21 = v15[23];
  if (!v21)
  {
LABEL_6:
    v22 = v15[20];
    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15[24] = v21;
  operator delete(v21);
  v22 = v15[20];
  if (!v22)
  {
LABEL_7:
    v23 = v15[17];
    if (!v23)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15[21] = v22;
  operator delete(v22);
  v23 = v15[17];
  if (!v23)
  {
LABEL_8:
    v24 = v15[14];
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15[18] = v23;
  operator delete(v23);
  v24 = v15[14];
  if (!v24)
  {
LABEL_9:
    v25 = v15[11];
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v15[15] = v24;
  operator delete(v24);
  v25 = v15[11];
  if (!v25)
  {
LABEL_10:
    *v15 = v16;
    v26 = v15[1];
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15[12] = v25;
  operator delete(v25);
  *v15 = v16;
  v26 = v15[1];
  if (!v26)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  v15[2] = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D34DE5C(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 208) = v14;
LABEL_12:
  if (*(a1 + 48) != v10 || *(a1 + 52) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 376);
  v16 = *a3;
  v17 = *(a1 + 61);
  v18 = sub_19D41C518();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D34DF84(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 52);
  sub_19D41C9E8(__stream, a3, *(a1 + 48));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 208));
  }

  v11 = *(a1 + 376);
  v12 = sub_19D41C518();

  return sub_19D34780C(v11, __stream, a3, 3, v12, a5);
}

float32x4_t sub_19D34E040(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8D88, 0);
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(a1 + 52) * *(a1 + 48));
  if (v7 >= 1)
  {
    v8 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B8D88, 0);
    v9 = 0;
    v10 = v8[8];
    v11 = v5[8];
    v12 = **(a1 + 376);
    if (v7 < 8)
    {
      goto LABEL_6;
    }

    v9 = 0;
    if ((v12 - v10) < 0x20)
    {
      goto LABEL_6;
    }

    if ((v12 - v11) < 0x20)
    {
      goto LABEL_6;
    }

    v9 = v7 & 0x7FFFFFF8;
    v21 = v10 + 1;
    v22 = v11 + 1;
    v23 = v12 + 1;
    v24 = v9;
    do
    {
      result = vsubq_f32(v21[-1], v22[-1]);
      v25 = vsubq_f32(*v21, *v22);
      v23[-1] = result;
      *v23 = v25;
      v21 += 2;
      v22 += 2;
      v23 += 2;
      v24 -= 8;
    }

    while (v24);
    if (v9 != v7)
    {
LABEL_6:
      v13 = v7 - v9;
      v14 = v9;
      v15 = &v12->i32[v9];
      v16 = &v11->f32[v14];
      v17 = &v10->f32[v14];
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *v16++;
        result.f32[0] = v19 - v20;
        *v15++ = result.i32[0];
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_19D34E21C(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8D88, 0);
  v4 = *(a1 + 376);
  v5 = *(a1 + 52) * *(a1 + 48);
  v7 = 1065353216;
  return MEMORY[0x19EAFB1F0](v3[8], 1, &v7, *v4, 1, *v4, 1, v5);
}

void *sub_19D34E394(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 16 * *a4) = v5;
  result = memmove(**(v6 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v5);
  ++*a4;
  return result;
}

void *sub_19D34E3F8(uint64_t a1, void *a2, int a3, int *a4)
{
  v4 = *(a1 + 112);
  v5 = *a4;
  *a4 = v5 + 1;
  return memmove(*(v4 + 8 * a3), **(*a2 + 16 * v5 + 8), 4 * *(a1 + 48));
}

void sub_19D34E42C(uint64_t a1, void *a2, int *a3)
{
  v4 = (*a2 + 16 * *a3);
  bzero(**(v4 + 1), 4 * *v4);
  ++*a3;
}

void sub_19D34E47C(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 376);
  v2[1] = *(a1 + 48);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D34E4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 64) = v3;
  result = a1 + 64;
  *(result + 312) = result;
  return result;
}

void sub_19D34E5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D34E5E0(void *a1)
{
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
}

uint64_t sub_19D34E698(uint64_t a1, float a2)
{
  v2 = *(a1 + 56);
  v4 = a2;
  return MEMORY[0x19EAFB1F0](*(a1 + 80), 1, &v4, *(a1 + 64), 1, *(a1 + 64), 1, v2);
}

void sub_19D34E6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v8 = (**a1)(a1);
  v10 = a5 - 1;
  if (a5 >= 1 && (v8 & 1) == 0)
  {
    v11 = 0;
    do
    {
      if (*(a1 + 232))
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = 8 * v12;
      sub_19D3128E0((a1 + 216), (*(a1 + 184) + v13), (*a4 + v13), *(a1 + 48), *(a1 + 208), v9);
      cblas_sgemv_NEWLAPACK();
      v14 = *(a1 + 136);
      v15 = *(a1 + 52);
      __C = 50.0;
      LODWORD(__B[0]) = -1035468800;
      vDSP_vclip(*(v14 + v13), 1, __B, &__C, *(v14 + v13), 1, v15);
      --v10;
      ++v11;
    }

    while (v10 != -1);
  }

  bzero(*(a1 + 80), 4 * *(a1 + 56));
  if (a5 >= 1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v17 = 0;
    v18 = MEMORY[0x1E69E9820];
    do
    {
      --a5;
      if (*(a1 + 232))
      {
        v19 = v17;
      }

      else
      {
        v19 = a5;
      }

      v20 = 8 * v19;
      v21 = *(a1 + 80);
      v22 = *(a1 + 88) + v20;
      v23 = *a4 + v20;
      v24 = *(a1 + 52);
      v25 = *(a1 + 48);
      __B[0] = v18;
      __B[1] = 0x40000000;
      __B[2] = sub_19D30AD54;
      __B[3] = &unk_1E7626958;
      v28 = v24;
      __B[4] = v21;
      __B[5] = v23;
      __B[6] = v22;
      dispatch_apply(v25, global_queue, __B);
      if (*(a1 + 40) == 1)
      {
        *(*(*(a1 + 136) + 8 * v19) + 4 * *(a1 + 52) - 4) = 1065353216;
      }

      ++v17;
    }

    while (a5 > 0);
  }
}

void sub_19D34E910(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *(a1 + 240);
  if (v6)
  {
    if (*(v6 + 468) <= 0.0)
    {
      v7 = 50.0;
    }

    else
    {
      v7 = *(v6 + 468);
    }

    if ((*(v6 + 20) & 1) != 0 || *(v6 + 40) != 1)
    {
      v8 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = *(v6 + 44) == 1;
      if (!a5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = 1;
    v7 = 50.0;
    if (!a5)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 232))
  {
    sub_19D41C548(34);
  }

LABEL_13:
  v9 = a4 & 0xFFFFFF;
  v10 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v10)
  {
    do
    {
      if (*(a1 + 232))
      {
        v12 = v9 + ~v10;
      }

      else
      {
        v12 = v10;
      }

      if (*(a1 + 232))
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (*(a1 + 232))
      {
        v14 = v12 >= v9 - 1;
      }

      else
      {
        v14 = v12 < 1;
      }

      v15 = v12;
      bzero(*(*(a1 + 88) + 8 * v12), 4 * *(a1 + 52));
      v16 = *(a1 + 88);
      v17 = *(a1 + 44);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *(*a2 + 8 * v12);
        v20 = *(v16 + 8 * v12);
        if (v17 < 8)
        {
          goto LABEL_31;
        }

        if ((v20 - v19) < 0x20)
        {
          goto LABEL_31;
        }

        v18 = v17 & 0x7FFFFFF8;
        v21 = (v19 + 16);
        v22 = (v20 + 16);
        v23 = v18;
        do
        {
          v24 = *v21;
          *(v22 - 1) = *(v21 - 1);
          *v22 = v24;
          v21 += 2;
          v22 += 2;
          v23 -= 8;
        }

        while (v23);
        if (v18 != v17)
        {
LABEL_31:
          v25 = v17 - v18;
          v26 = 4 * v18;
          v27 = (v20 + 4 * v18);
          v28 = (v19 + v26);
          do
          {
            v29 = *v28++;
            *v27++ = v29;
            --v25;
          }

          while (v25);
        }
      }

      v30 = v12 + v13;
      if (!v8 || v14)
      {
        v31 = *(v16 + 8 * v15);
      }

      else
      {
        v32 = *(a1 + 48);
        v31 = *(v16 + 8 * v15);
        if (v32 >= 1)
        {
          v33 = *(*(a1 + 112) + 8 * v30);
          if (v32 >= 8 && (4 * v17 + v31 - v33) >= 0x20)
          {
            v34 = v32 & 0x7FFFFFF8;
            v66 = (v33 + 16);
            v67 = (v31 + 4 * v17 + 16);
            v68 = v34;
            do
            {
              v69 = *v66;
              *(v67 - 1) = *(v66 - 1);
              *v67 = v69;
              v66 += 2;
              v67 += 2;
              v68 -= 8;
            }

            while (v68);
            if (v34 == v32)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = v32 - v34;
          v36 = 4 * v34;
          v37 = v36 + 4 * v17;
          v38 = (v33 + v36);
          do
          {
            v39 = *v38++;
            *(v31 + v37) = v39;
            v37 += 4;
            --v35;
          }

          while (v35);
        }
      }

LABEL_41:
      if (*(a1 + 40) == 1)
      {
        *(v31 + 4 * *(a1 + 52) - 4) = 1065353216;
      }

      cblas_sgemv_NEWLAPACK();
      if (!v8 && !v14)
      {
        cblas_sgemv_NEWLAPACK();
      }

      v40 = *(a1 + 240);
      if (v40 && *(v40 + 244) == 1)
      {
        v41 = *(a1 + 392);
        v42 = *(a1 + 48);
        v43 = v42 / 8;
        if (v42 >= 8)
        {
          v44 = *(a1 + 216);
          v45 = *v41;
          v46 = v42 / 8;
          do
          {
            v47 = *v45;
            v48 = v45[1];
            v45 += 2;
            v49 = vaddq_f32(v44[1], v48);
            *v44 = vaddq_f32(*v44, v47);
            v44[1] = v49;
            v44 += 2;
            --v46;
          }

          while (v46);
        }

        v50 = 8 * v43;
        if (8 * v43 < v42)
        {
          v51 = *v41;
          v52 = *(a1 + 216);
          v53 = v50;
          v54 = v42 - v50;
          if (v54 <= 7)
          {
            goto LABEL_57;
          }

          v55 = v52 + 4 * v50;
          v56 = &v51[v50 / 4u];
          if (v55 < v51->u64 + 4 * v42 && v56 < v52 + 4 * v42)
          {
            goto LABEL_57;
          }

          v57 = v54 - (v42 & 7) + v50;
          v58 = v50 + (v42 & 7) - v42;
          v59 = (v56 + 16);
          v60 = (v55 + 16);
          do
          {
            v61 = vaddq_f32(*v60, *v59);
            v60[-1] = vaddq_f32(v60[-1], v59[-1]);
            *v60 = v61;
            v59 += 2;
            v60 += 2;
            v58 += 8;
          }

          while (v58);
          v53 = v57;
          if ((v42 & 7) != 0)
          {
LABEL_57:
            v62 = v42 - v53;
            v63 = (v52 + 4 * v53);
            v64 = &v51->f32[v53];
            do
            {
              v65 = *v64++;
              *v63 = *v63 + v65;
              ++v63;
              --v62;
            }

            while (v62);
          }
        }
      }

      v11 = *(a1 + 48);
      __C = v7;
      __B = -v7;
      vDSP_vclip(*(a1 + 216), 1, &__B, &__C, *(a1 + 216), 1, v11);
      memmove(*(*(a1 + 184) + 8 * v15), *(a1 + 216), 4 * *(a1 + 48));
      sub_19D30A3C0((*(a1 + 112) + 8 * v15), (a1 + 216), *(a1 + 48), *(a1 + 208));
      ++v10;
    }

    while (v10 != v9);
  }
}

char *sub_19D34ED98(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 368) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8D88, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 376) = result + 64;
  return result;
}

uint64_t sub_19D34EE24(uint64_t a1, void *lpsrc, float a3)
{
  if (*(a1 + 368))
  {
    sub_19D41C548(1);
  }

  v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8D88, 0);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  sub_19D429424(a1 + 296);
  v7 = *(a1 + 56);
  v9 = a3;
  MEMORY[0x19EAFB1F0](v6[10], 1, &v9, *(a1 + 64), 1, *(a1 + 64), 1, v7);
  return sub_19D42942C(a1 + 296);
}

uint64_t sub_19D34EEF4(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 48);
    if (v6 >= 1)
    {
      v7 = *(result + 112);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 48);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

float sub_19D34F070(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 112);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D34F1B4(void *a1)
{
  v1 = sub_19D34F7AC(a1);

  operator delete(v1);
}

void sub_19D34F1F4(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    if ((*(v1 + 20) & 1) != 0 || *(v1 + 40) != 1)
    {
      v2 = 0;
      if ((*(a1 + 42) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = *(v1 + 44) == 1;
      if ((*(a1 + 42) & 1) == 0)
      {
LABEL_11:
        v3 = *(a1 + 48);
        v4 = *(a1 + 44) + *(a1 + 40);
        *(a1 + 52) = v4;
        if (!v2)
        {
LABEL_9:
          *(a1 + 56) = v3 * v4;
          operator new[]();
        }

LABEL_8:
        v4 += v3;
        *(a1 + 52) = v4;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v2 = 1;
    if ((*(a1 + 42) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 44) + *(a1 + 40);
  *(a1 + 52) = v4;
  if (!v2)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_19D34F7AC(void *a1)
{
  *a1 = &unk_1F10B8BF8;
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
  sub_19D429384((a1 + 37));
  v10 = a1[34];
  if (v10)
  {
    a1[35] = v10;
    operator delete(v10);
  }

  v11 = a1[31];
  if (v11)
  {
    a1[32] = v11;
    operator delete(v11);
  }

  v12 = a1[23];
  if (v12)
  {
    a1[24] = v12;
    operator delete(v12);
  }

  v13 = a1[20];
  if (v13)
  {
    a1[21] = v13;
    operator delete(v13);
  }

  v14 = a1[17];
  if (v14)
  {
    a1[18] = v14;
    operator delete(v14);
  }

  v15 = a1[14];
  if (v15)
  {
    a1[15] = v15;
    operator delete(v15);
  }

  v16 = a1[11];
  if (v16)
  {
    a1[12] = v16;
    operator delete(v16);
  }

  *a1 = &unk_1F10B68F8;
  v17 = a1[1];
  if (v17)
  {
    a1[2] = v17;
    operator delete(v17);
  }

  return a1;
}

uint64_t sub_19D34F90C(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v15 = sub_19D34FC80(a1, a5);
  *v15 = &unk_1F10B8DB0;
  *(v15 + 41) = 0;
  *(v15 + 112) = 0;
  *(v15 + 408) = a4;
  *(v15 + 528) = a8;
  *(v15 + 120) = *(a6 + 68);
  if (a8)
  {
    a7 = *(a8 + 376);
  }

  *(a1 + 40) = a7;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 104) = 0;
  *(a1 + 116) = *(a6 + 45);
  *(a1 + 424) = 0;
  *(a1 + 528) = a8;
  if (a2 < 1 || a3 <= 0)
  {
    sub_19D41C548(34);
  }

  v19 = 7;
  strcpy(__p, "SoftMax");
  sub_19D34D2C0(a1);
  *(a1 + 32) = *(a6 + 16);
  *(a1 + 424) = 0;
  if ((*(a1 + 116) & 1) == 0)
  {
    v16 = *(a6 + 32);
    switch(v16)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  return a1;
}

void sub_19D34FC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  sub_19D34D9D0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D34FC80(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B8A50;
  *(a1 + 48) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 400) = 0;
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a2;
  *(a1 + 40) = 0;
  *(a1 + 424) = 0;
  *(a1 + 520) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 110) = 0;
  *(a1 + 408) = 1;
  *(a1 + 528) = 0;
  (*(*a1 + 192))(a1);
  return a1;
}

void sub_19D34FD9C(_Unwind_Exception *a1)
{
  sub_19D429384(v1 + 432);
  v6 = *(v1 + 384);
  if (v6)
  {
    *(v1 + 392) = v6;
    operator delete(v6);
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
LABEL_3:
      v8 = *(v1 + 312);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 344) = v7;
  operator delete(v7);
  v8 = *(v1 + 312);
  if (!v8)
  {
LABEL_4:
    v9 = *(v1 + 288);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 320) = v8;
  operator delete(v8);
  v9 = *(v1 + 288);
  if (!v9)
  {
LABEL_5:
    v10 = *(v1 + 264);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 296) = v9;
  operator delete(v9);
  v10 = *(v1 + 264);
  if (!v10)
  {
LABEL_6:
    sub_19D308FC0(v3);
    v11 = *(v1 + 72);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 272) = v10;
  operator delete(v10);
  sub_19D308FC0(v3);
  v11 = *(v1 + 72);
  if (!v11)
  {
LABEL_7:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 80) = v11;
  operator delete(v11);
  v12 = *v4;
  if (!*v4)
  {
LABEL_8:
    *v1 = v2;
    v13 = *(v1 + 8);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 56) = v12;
  operator delete(v12);
  *v1 = v2;
  v13 = *(v1 + 8);
  if (!v13)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_17:
  *(v1 + 16) = v13;
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_19D34FF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D34FF5C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v9 = *(a1 + 42);
  v10 = a4;
  v11 = *(a1 + 100);
  v12 = *(a1 + 96);
  v13 = *(a1 + 512);
  v14 = *(a1 + 104);
  v15 = (*(*a1 + 24))(a1);
  memmove(*(*v15 + 8 * a4), *(*a2 + 8 * a4), 4 * v12);
  if (*(a1 + 40) == 1)
  {
    *(*(*(*(*a1 + 24))(a1) + 8 * v10) + 4 * v14 - 4) = 1065353216;
  }

  v31 = v11;
  __N = v11;
  v17 = *a5;
  v16 = a5[1];
  if (v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10;
  }

  v19 = *(a1 + 384);
  v20 = *(*(*a1 + 24))(a1);
  if (v16 == v17)
  {
    cblas_sgemv_NEWLAPACK();
    v26 = *(a1 + 384);
    __C = 50.0;
    __B = -1035468800;
    vDSP_vclip(*(v26 + 8 * v18), 1, &__B, &__C, *(v26 + 8 * v18), 1, __N);
    v27 = *(*(*a1 + 32))(a1);
    v28 = *(a1 + 384);
    __C = 0.0;
    __B = v31;
    vvexpf(*(v27 + 8 * v10), *(v28 + 8 * v18), &__B);
    vDSP_sve(*(v27 + 8 * v10), 1, &__C, __B);
    if (__C <= 0.0)
    {
      v29 = 0.001;
    }

    else
    {
      v29 = __C + 0.001;
    }

    v33 = v29;
    vDSP_vsdiv(*(v27 + 8 * v10), 1, &v33, *(v27 + 8 * v10), 1, __B);
    v30 = *(*(*a1 + 32))(a1);
    __C = 5.0;
    __B = -1063256064;
    vDSP_vclip(*(v30 + 8 * v10), 1, &__B, &__C, *(v30 + 8 * v10), 1, __N);
  }

  else
  {
    bzero(*(v19 + 8 * v18), 4 * __N);
    v21 = *a5;
    if (a5[1] != *a5)
    {
      v22 = 0;
      do
      {
        vDSP_dotpr(*(v20 + 8 * v10), 1, (*v13 + 4 * *(v21 + 4 * v22) * v14), 1, (*(v19 + 8 * v18) + 4 * *(v21 + 4 * v22)), v14);
        ++v22;
        v21 = *a5;
      }

      while (v22 < (a5[1] - *a5) >> 2);
    }

    v23 = *(a1 + 384);
    __C = 50.0;
    __B = -1035468800;
    vDSP_vclip(*(v23 + 8 * v18), 1, &__B, &__C, *(v23 + 8 * v18), 1, __N);
    v24 = *(*(*a1 + 32))(a1);
    v25 = a5[1];
    if (v25 != *a5)
    {
      if (((v25 - *a5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    bzero(*(v24 + 8 * v10), 4 * __N);
  }
}

uint64_t sub_19D3503AC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = result;
  if (a5 && (*(result + 520) & 1) != 0)
  {
    sub_19D41C548(34);
  }

  v11 = a4 & 0xFFFFFF;
  v12 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v12)
  {
    do
    {
      result = (*(*v10 + 224))(v10, a2, a3, v12, a7);
      v12 = (v12 + 1);
    }

    while (v11 != v12);
  }

  return result;
}

void sub_19D350458(void *a1)
{
  v1 = sub_19D34D9D0(a1);

  operator delete(v1);
}

void sub_19D350480(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F10B8F70;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 920) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 956) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 1112) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  sub_19D42933C(a1 + 1192);
  sub_19D42933C(a1 + 1264);
  sub_19D42933C(a1 + 1336);
  sub_19D42933C(a1 + 1408);
  sub_19D42933C(a1 + 1480);
  sub_19D42933C(a1 + 1552);
  sub_19D42933C(a1 + 1624);
  sub_19D42933C(a1 + 1696);
  sub_19D42933C(a1 + 1768);
  sub_19D42933C(a1 + 1840);
  sub_19D42933C(a1 + 1912);
  *(a1 + 1988) = a5;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  (*(*a1 + 192))(a1);
  *(a1 + 2040) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2048) = a9;
  if (a9)
  {
    v15 = *(a9 + 376);
    nullsub_171("GRU constructor");
    v16 = v15 ^ 1;
    a8 = *(*(a1 + 2048) + 376);
    *(a1 + 40) = a8;
  }

  else
  {
    *(a1 + 40) = a8;
    v16 = 1;
  }

  *(a1 + 1984) = *(a7 + 45);
  v17 = *a4;
  *(a1 + 520) = **a4;
  *(a1 + 524) = v17[1];
  *(a1 + 528) = v17[2];
  if ((a8 & 1) == 0)
  {
    v16 = 0;
  }

  *(a1 + 48) = v16 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2040) = 1;
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  operator new();
}

void sub_19D3507A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v22 = v15[252];
    if (!v22)
    {
LABEL_3:
      v23 = *v18;
      if (!*v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v22 = v15[252];
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  v15[253] = v22;
  operator delete(v22);
  v23 = *v18;
  if (!*v18)
  {
LABEL_5:
    sub_19D429384((v15 + 239));
    sub_19D429384((v15 + 230));
    sub_19D429384((v15 + 221));
    sub_19D429384((v15 + 212));
    sub_19D429384((v15 + 203));
    sub_19D429384((v15 + 194));
    sub_19D429384((v15 + 185));
    sub_19D429384((v15 + 176));
    sub_19D429384((v15 + 167));
    sub_19D429384((v15 + 158));
    sub_19D429384((v15 + 149));
    sub_19D308FC0(v15 + 119);
    sub_19D308FC0(v15 + 104);
    sub_19D308FC0(v15 + 89);
    v24 = v15[85];
    if (v24)
    {
      v15[86] = v24;
      operator delete(v24);
      v25 = v15[82];
      if (!v25)
      {
LABEL_7:
        v26 = v15[79];
        if (!v26)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v25 = v15[82];
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    v15[83] = v25;
    operator delete(v25);
    v26 = v15[79];
    if (!v26)
    {
LABEL_8:
      v27 = v15[76];
      if (!v27)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v15[80] = v26;
    operator delete(v26);
    v27 = v15[76];
    if (!v27)
    {
LABEL_9:
      v28 = v15[73];
      if (!v28)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v15[77] = v27;
    operator delete(v27);
    v28 = v15[73];
    if (!v28)
    {
LABEL_10:
      v29 = v15[70];
      if (!v29)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    v15[74] = v28;
    operator delete(v28);
    v29 = v15[70];
    if (!v29)
    {
LABEL_11:
      v30 = v15[62];
      if (!v30)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v15[71] = v29;
    operator delete(v29);
    v30 = v15[62];
    if (!v30)
    {
LABEL_12:
      v31 = v15[59];
      if (!v31)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    v15[63] = v30;
    operator delete(v30);
    v31 = v15[59];
    if (!v31)
    {
LABEL_13:
      v32 = v15[56];
      if (!v32)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    v15[60] = v31;
    operator delete(v31);
    v32 = v15[56];
    if (!v32)
    {
LABEL_14:
      v33 = v15[53];
      if (!v33)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    v15[57] = v32;
    operator delete(v32);
    v33 = v15[53];
    if (!v33)
    {
LABEL_15:
      v34 = v15[50];
      if (!v34)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    v15[54] = v33;
    operator delete(v33);
    v34 = v15[50];
    if (!v34)
    {
LABEL_16:
      v35 = *v20;
      if (!*v20)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    v15[51] = v34;
    operator delete(v34);
    v35 = *v20;
    if (!*v20)
    {
LABEL_17:
      sub_19D2B2DD8(v17);
      v36 = v15[23];
      if (!v36)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    v15[48] = v35;
    operator delete(v35);
    sub_19D2B2DD8(v17);
    v36 = v15[23];
    if (!v36)
    {
LABEL_18:
      v37 = v15[20];
      if (!v37)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_37:
    v15[24] = v36;
    operator delete(v36);
    v37 = v15[20];
    if (!v37)
    {
LABEL_19:
      v38 = v15[17];
      if (!v38)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    v15[21] = v37;
    operator delete(v37);
    v38 = v15[17];
    if (!v38)
    {
LABEL_20:
      v39 = v15[14];
      if (!v39)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

LABEL_39:
    v15[18] = v38;
    operator delete(v38);
    v39 = v15[14];
    if (!v39)
    {
LABEL_21:
      v40 = v15[11];
      if (!v40)
      {
        goto LABEL_22;
      }

      goto LABEL_41;
    }

LABEL_40:
    v15[15] = v39;
    operator delete(v39);
    v40 = v15[11];
    if (!v40)
    {
LABEL_22:
      v41 = *v19;
      if (!*v19)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

LABEL_41:
    v15[12] = v40;
    operator delete(v40);
    v41 = *v19;
    if (!*v19)
    {
LABEL_23:
      *v15 = v16;
      v42 = v15[1];
      if (!v42)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

LABEL_42:
    v15[9] = v41;
    operator delete(v41);
    *v15 = v16;
    v42 = v15[1];
    if (!v42)
    {
LABEL_24:
      _Unwind_Resume(a1);
    }

LABEL_43:
    v15[2] = v42;
    operator delete(v42);
    _Unwind_Resume(a1);
  }

LABEL_4:
  v15[250] = v23;
  operator delete(v23);
  goto LABEL_5;
}

void sub_19D350AC8(uint64_t a1)
{
  v1 = 3;
  v2 = 6;
  if ((*(a1 + 42) & 1) == 0)
  {
    if (*(a1 + 2040))
    {
      v2 = 6;
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 2040))
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
    }
  }

  if (!*(a1 + 1988))
  {
    v3 = *(a1 + 2048);
    if (v3 && (v4 = *(v3 + 40), v4 >= 1))
    {
      v5 = (v3 + 8 * v2);
      if (v4 == 4)
      {
        v6 = 232;
      }

      else
      {
        if (v4 != 6)
        {
          sub_19D41C548(45);
        }

        *(a1 + 232) = v5[14];
        *(a1 + 240) = v5[15];
        v2 += 2;
        v6 = 248;
      }

      *(a1 + v6) = *(v3 + 8 * v2 + 112);
      *(a1 + 256) = v5[17];
      *(a1 + 264) = v5[18];
      *(a1 + 272) = v5[19];
      if ((*(a1 + 1985) & 1) == 0)
      {
        v7 = *(a1 + 2048);
        if (v7)
        {
          if (*(v7 + 244) != 1)
          {
            operator new[]();
          }

          v8 = (v7 + 8 * v1);
          *(a1 + 280) = v8[31];
          *(a1 + 288) = v8[32];
          *(a1 + 296) = v8[33];
        }
      }
    }

    else if ((*(a1 + 1985) & 1) == 0)
    {
      operator new[]();
    }

    *(a1 + 304) = a1 + 232;
    *(a1 + 312) = a1 + 240;
    *(a1 + 320) = a1 + 248;
    *(a1 + 328) = a1 + 256;
    *(a1 + 336) = a1 + 264;
    *(a1 + 344) = a1 + 272;
    *(a1 + 352) = a1 + 280;
    *(a1 + 360) = a1 + 288;
    *(a1 + 368) = a1 + 296;
  }

  operator new[]();
}

_BYTE *sub_19D351690(uint64_t a1, uint64_t a2, int *a3, int a4)
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
        *(a1 + 520) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 524) = v16;
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
          *(a1 + 528) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 520) = 0;
      }

      *(a1 + 524) = 0;
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

  v21 = *(a1 + 312);
  v22 = *a3;
  v23 = *(a1 + 1985);
  v24 = sub_19D41C518();
  sub_19D3092B8(v21, a2, v22, v23, v24, *(a1 + 52), *(a1 + 48));
  v25 = *(a1 + 304);
  v26 = *a3;
  v27 = *(a1 + 1985);
  v28 = sub_19D41C518();
  sub_19D3092B8(v25, a2, v26, v27, v28, *(a1 + 52), *(a1 + 48));
  v29 = *(a1 + 320);
  v30 = *a3;
  v31 = *(a1 + 1985);
  v32 = sub_19D41C518();
  sub_19D3092B8(v29, a2, v30, v31, v32, *(a1 + 52), *(a1 + 48));
  v33 = *(a1 + 336);
  v34 = *a3;
  v35 = *(a1 + 1985);
  v36 = sub_19D41C518();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 52));
  v37 = *(a1 + 328);
  v38 = *a3;
  v39 = *(a1 + 1985);
  v40 = sub_19D41C518();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 52));
  v41 = *(a1 + 344);
  v42 = *a3;
  v43 = *(a1 + 1985);
  v44 = sub_19D41C518();
  v45 = *(a1 + 52);

  return sub_19D3092B8(v41, a2, v42, v43, v44, v45, v45);
}

uint64_t sub_19D351924(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
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
    __ptr = *(a1 + 520);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 524);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 528);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 312);
  v12 = sub_19D41C518();
  sub_19D34780C(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 304);
  v14 = sub_19D41C518();
  sub_19D34780C(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 320);
  v16 = sub_19D41C518();
  sub_19D34780C(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 336);
  v18 = sub_19D41C518();
  sub_19D34780C(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 328);
  v20 = sub_19D41C518();
  sub_19D34780C(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 344);
  v22 = sub_19D41C518();
  return sub_19D34780C(v21, __stream, a3, 3, v22, a5);
}

float32x4_t sub_19D351B14(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7998, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = *(a1 + 52);
    v9 = (*(a1 + 48) * v8);
    if (v9 < 1)
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
  v7 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B7998, 0);
  v8 = *(a1 + 52);
  v9 = (*(a1 + 48) * v8);
  if (v9 < 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v10 = *v7[39];
  v11 = *v5[39];
  v12 = **(a1 + 312);
  if (v9 < 8)
  {
    v13 = 0;
LABEL_9:
    v14 = v9 - v13;
    v15 = v13;
    v16 = &v12->f32[v15];
    v17 = &v11->f32[v15];
    v18 = &v10->f32[v15];
    do
    {
      v19 = *v18++;
      v20 = v19;
      v21 = *v17++;
      *v16++ = v20 - v21;
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v13 = 0;
  if ((v12 - v10) < 0x20)
  {
    goto LABEL_9;
  }

  if ((v12 - v11) < 0x20)
  {
    goto LABEL_9;
  }

  v13 = v9 & 0x7FFFFFF8;
  v83 = v10 + 1;
  v84 = v11 + 1;
  v85 = v12 + 1;
  v86 = v13;
  do
  {
    result = vsubq_f32(v83[-1], v84[-1]);
    v87 = vsubq_f32(*v83, *v84);
    v85[-1] = result;
    *v85 = v87;
    v83 += 2;
    v84 += 2;
    v85 += 2;
    v86 -= 8;
  }

  while (v86);
  if (v13 != v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v22 = *v7[40];
  v23 = *v5[40];
  v24 = **(a1 + 320);
  if (v9 < 8)
  {
    v25 = 0;
LABEL_13:
    v26 = v9 - v25;
    v27 = v25;
    v28 = &v24->f32[v27];
    v29 = &v23->f32[v27];
    v30 = &v22->f32[v27];
    do
    {
      v31 = *v30++;
      v32 = v31;
      v33 = *v29++;
      *v28++ = v32 - v33;
      --v26;
    }

    while (v26);
    goto LABEL_15;
  }

  v25 = 0;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_13;
  }

  if ((v24 - v23) < 0x20)
  {
    goto LABEL_13;
  }

  v25 = v9 & 0x7FFFFFF8;
  v88 = v22 + 1;
  v89 = v23 + 1;
  v90 = v24 + 1;
  v91 = v25;
  do
  {
    result = vsubq_f32(v88[-1], v89[-1]);
    v92 = vsubq_f32(*v88, *v89);
    v90[-1] = result;
    *v90 = v92;
    v88 += 2;
    v89 += 2;
    v90 += 2;
    v91 -= 8;
  }

  while (v91);
  if (v25 != v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  v34 = *v7[38];
  v35 = *v5[38];
  v36 = **(a1 + 304);
  if (v9 < 8)
  {
    v37 = 0;
LABEL_17:
    v38 = v9 - v37;
    v39 = v37;
    v40 = (v36 + v39 * 4);
    v41 = &v35->f32[v39];
    v42 = &v34->f32[v39];
    do
    {
      v43 = *v42++;
      v44 = v43;
      v45 = *v41++;
      result.f32[0] = v44 - v45;
      *v40++ = result.i32[0];
      --v38;
    }

    while (v38);
    goto LABEL_19;
  }

  v37 = 0;
  if ((v36 - v34) < 0x20)
  {
    goto LABEL_17;
  }

  if ((v36 - v35) < 0x20)
  {
    goto LABEL_17;
  }

  v37 = v9 & 0x7FFFFFF8;
  v93 = v34 + 1;
  v94 = v35 + 1;
  v95 = v36 + 1;
  v96 = v37;
  do
  {
    result = vsubq_f32(v93[-1], v94[-1]);
    v97 = vsubq_f32(*v93, *v94);
    v95[-1] = result;
    *v95 = v97;
    v93 += 2;
    v94 += 2;
    v95 += 2;
    v96 -= 8;
  }

  while (v96);
  if (v37 != v9)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (!v8)
  {
    return result;
  }

  v46 = (v8 * v8);
  v47 = *v7[42];
  v48 = *v5[42];
  v49 = **(a1 + 336);
  if (v46 < 8)
  {
    v50 = 0;
LABEL_22:
    v51 = v46 - v50;
    v52 = v50;
    v53 = &v49->f32[v52];
    v54 = &v48->f32[v52];
    v55 = &v47->f32[v52];
    do
    {
      v56 = *v55++;
      v57 = v56;
      v58 = *v54++;
      *v53++ = v57 - v58;
      --v51;
    }

    while (v51);
    goto LABEL_24;
  }

  v50 = 0;
  if ((v49 - v47) < 0x20)
  {
    goto LABEL_22;
  }

  if ((v49 - v48) < 0x20)
  {
    goto LABEL_22;
  }

  v50 = v46 & 0x7FFFFFF8;
  v98 = v47 + 1;
  v99 = v48 + 1;
  v100 = v49 + 1;
  v101 = v50;
  do
  {
    result = vsubq_f32(v98[-1], v99[-1]);
    v102 = vsubq_f32(*v98, *v99);
    v100[-1] = result;
    *v100 = v102;
    v98 += 2;
    v99 += 2;
    v100 += 2;
    v101 -= 8;
  }

  while (v101);
  if (v50 != v46)
  {
    goto LABEL_22;
  }

LABEL_24:
  v59 = *v7[43];
  v60 = *v5[43];
  v61 = **(a1 + 344);
  if (v46 < 8)
  {
    v62 = 0;
LABEL_26:
    v63 = v46 - v62;
    v64 = v62;
    v65 = &v61->f32[v64];
    v66 = &v60->f32[v64];
    v67 = &v59->f32[v64];
    do
    {
      v68 = *v67++;
      v69 = v68;
      v70 = *v66++;
      *v65++ = v69 - v70;
      --v63;
    }

    while (v63);
    goto LABEL_28;
  }

  v62 = 0;
  if ((v61 - v59) < 0x20)
  {
    goto LABEL_26;
  }

  if ((v61 - v60) < 0x20)
  {
    goto LABEL_26;
  }

  v62 = v46 & 0x7FFFFFF8;
  v103 = v59 + 1;
  v104 = v60 + 1;
  v105 = v61 + 1;
  v106 = v62;
  do
  {
    result = vsubq_f32(v103[-1], v104[-1]);
    v107 = vsubq_f32(*v103, *v104);
    v105[-1] = result;
    *v105 = v107;
    v103 += 2;
    v104 += 2;
    v105 += 2;
    v106 -= 8;
  }

  while (v106);
  if (v62 != v46)
  {
    goto LABEL_26;
  }

LABEL_28:
  v71 = *v7[41];
  v72 = *v5[41];
  v73 = **(a1 + 328);
  if (v46 < 8)
  {
    v74 = 0;
LABEL_30:
    v75 = v46 - v74;
    v76 = v74;
    v77 = (v73 + v76 * 4);
    v78 = &v72->f32[v76];
    v79 = &v71->f32[v76];
    do
    {
      v80 = *v79++;
      v81 = v80;
      v82 = *v78++;
      result.f32[0] = v81 - v82;
      *v77++ = result.i32[0];
      --v75;
    }

    while (v75);
    return result;
  }

  v74 = 0;
  if ((v73 - v71) < 0x20)
  {
    goto LABEL_30;
  }

  if ((v73 - v72) < 0x20)
  {
    goto LABEL_30;
  }

  v74 = v46 & 0x7FFFFFF8;
  v108 = v71 + 1;
  v109 = v72 + 1;
  v110 = v73 + 1;
  v111 = v74;
  do
  {
    result = vsubq_f32(v108[-1], v109[-1]);
    v112 = vsubq_f32(*v108, *v109);
    v110[-1] = result;
    *v110 = v112;
    v108 += 2;
    v109 += 2;
    v110 += 2;
    v111 -= 8;
  }

  while (v111);
  if (v74 != v46)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_19D3520DC(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7998, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 312);
  v5 = v3[39];
  v6 = *(a1 + 48) * *(a1 + 52);
  v23 = 1065353216;
  MEMORY[0x19EAFB1F0](*v5, 1, &v23, *v4, 1, *v4, 1, v6);
  v7 = *(a1 + 304);
  v8 = v3[38];
  v9 = *(a1 + 48) * *(a1 + 52);
  v23 = 1065353216;
  MEMORY[0x19EAFB1F0](*v8, 1, &v23, *v7, 1, *v7, 1, v9);
  v10 = *(a1 + 320);
  v11 = v3[40];
  v12 = *(a1 + 48) * *(a1 + 52);
  v23 = 1065353216;
  MEMORY[0x19EAFB1F0](*v11, 1, &v23, *v10, 1, *v10, 1, v12);
  v13 = *(a1 + 336);
  v14 = v3[42];
  v15 = (*(a1 + 52) * *(a1 + 52));
  v23 = 1065353216;
  MEMORY[0x19EAFB1F0](*v14, 1, &v23, *v13, 1, *v13, 1, v15);
  v16 = *(a1 + 328);
  v17 = v3[41];
  v18 = (*(a1 + 52) * *(a1 + 52));
  v23 = 1065353216;
  MEMORY[0x19EAFB1F0](*v17, 1, &v23, *v16, 1, *v16, 1, v18);
  v19 = *(a1 + 344);
  v20 = v3[43];
  v21 = (*(a1 + 52) * *(a1 + 52));
  v23 = 1065353216;
  return MEMORY[0x19EAFB1F0](*v20, 1, &v23, *v19, 1, *v19, 1, v21);
}

void sub_19D3522A0(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7998, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(**(a1 + 1128) + 64))(*(a1 + 1128));
  (***(a1 + 1128))(*(a1 + 1128), *(a1 + 304), v3 + 232);
  (***(a1 + 1120))(v4);
  (***(a1 + 1136))(v4);
  (***(a1 + 1152))(v4);
  (***(a1 + 1144))(v4);
  (***(a1 + 1160))(v4);
  v5 = *(a1 + 304);
  v6 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v5, 1, &__B, &__C, *v5, 1, v6);
  v7 = *(a1 + 312);
  v8 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v7, 1, &__B, &__C, *v7, 1, v8);
  v9 = *(a1 + 320);
  v10 = *(a1 + 48) * *(a1 + 52);
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v9, 1, &__B, &__C, *v9, 1, v10);
  v11 = *(a1 + 328);
  v12 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v11, 1, &__B, &__C, *v11, 1, v12);
  v13 = *(a1 + 336);
  v14 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v13, 1, &__B, &__C, *v13, 1, v14);
  v15 = *(a1 + 344);
  v16 = (*(a1 + 52) * *(a1 + 52));
  __C = 2.0;
  __B = -2.0;
  vDSP_vclip(*v15, 1, &__B, &__C, *v15, 1, v16);
}

void sub_19D352604(uint64_t a1, float a2)
{
  v4 = *(a1 + 312);
  v5 = -a2;
  v6 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = -a2;
  vDSP_vclip(*v4, 1, &__B, &__C, *v4, 1, v6);
  v7 = *(a1 + 304);
  v8 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v7, 1, &__B, &__C, *v7, 1, v8);
  v9 = *(a1 + 320);
  v10 = *(a1 + 48) * *(a1 + 52);
  __C = a2;
  __B = v5;
  vDSP_vclip(*v9, 1, &__B, &__C, *v9, 1, v10);
  v11 = *(a1 + 336);
  v12 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v11, 1, &__B, &__C, *v11, 1, v12);
  v13 = *(a1 + 328);
  v14 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v13, 1, &__B, &__C, *v13, 1, v14);
  v15 = *(a1 + 344);
  v16 = (*(a1 + 52) * *(a1 + 52));
  __C = a2;
  __B = v5;
  vDSP_vclip(*v15, 1, &__B, &__C, *v15, 1, v16);
}

uint64_t sub_19D352744(uint64_t result, float a2)
{
  v2 = *(result + 52);
  v3 = (*(result + 48) * v2);
  if (v3 < 1)
  {
    goto LABEL_23;
  }

  v4 = **(result + 312);
  if (v3 < 8)
  {
    v5 = 0;
LABEL_7:
    v9 = v3 - v5;
    v10 = &v4->f32[v5];
    do
    {
      *v10 = *v10 * a2;
      ++v10;
      --v9;
    }

    while (v9);
    goto LABEL_9;
  }

  v5 = v3 & 0x7FFFFFF8;
  v6 = v4 + 1;
  v7 = v5;
  do
  {
    v8 = vmulq_n_f32(*v6, a2);
    v6[-1] = vmulq_n_f32(v6[-1], a2);
    *v6 = v8;
    v6 += 2;
    v7 -= 8;
  }

  while (v7);
  if (v5 != v3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v3 >= 8)
  {
    v11 = v3 & 0x7FFFFFF8;
    v12 = v4 + 1;
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
    if (v11 == v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v3 - v11;
  v16 = &v4->f32[v11];
  do
  {
    *v16 = *v16 * a2;
    ++v16;
    --v15;
  }

  while (v15);
LABEL_16:
  v17 = **(result + 320);
  if (v3 < 8)
  {
    v18 = 0;
LABEL_21:
    v22 = v3 - v18;
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

  v18 = v3 & 0x7FFFFFF8;
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
  if (v18 != v3)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (!v2)
  {
    return result;
  }

  v24 = (v2 * v2);
  v25 = **(result + 336);
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
  v32 = **(result + 328);
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
  v39 = **(result + 344);
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
    return result;
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

  return result;
}

void *sub_19D352B0C(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v8 = *(a1 + 52);
  v9 = *a2;
  *(v9 + 16 * *a4) = v8;
  memmove(**(v9 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v8);
  v10 = *a4;
  *a4 = v10 + 1;
  v11 = *(a1 + 52);
  v12 = *a2;
  *(*a2 + 16 * v10 + 16) = v11;
  result = memmove(**(v12 + 16 * *a4 + 8), *(*(a1 + 88) + 8 * a3), 4 * v11);
  ++*a4;
  return result;
}

void *sub_19D352BBC(uint64_t a1, void *a2, int a3, int *a4)
{
  v8 = *(a1 + 112);
  v9 = *a4;
  *a4 = v9 + 1;
  memmove(*(v8 + 8 * a3), **(*a2 + 16 * v9 + 8), 4 * *(a1 + 52));
  v10 = *(a1 + 88);
  v11 = *a4;
  *a4 = v11 + 1;
  v12 = 4 * *(a1 + 52);
  v13 = *(v10 + 8 * a3);
  v14 = **(*a2 + 16 * v11 + 8);

  return memmove(v13, v14, v12);
}

void sub_19D352C5C(uint64_t a1, void *a2, int *a3)
{
  v5 = (*a2 + 16 * *a3);
  bzero(**(v5 + 1), 4 * *v5);
  v6 = *a3;
  *a3 = v6 + 1;
  bzero(**(*a2 + 16 * v6 + 24), 4 * *(*a2 + 16 * v6 + 16));
  ++*a3;
}

void sub_19D352CD4(void *a1)
{
  v2 = a1[140];
  BYTE7(v14[2]) = 17;
  strcpy(v14, "GRU before resetGRU before reset ");
  (*(*v2 + 40))(v2, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v3 = a1[141];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v3 + 40))(v3, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v4 = a1[142];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v4 + 40))(v4, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v5 = a1[143];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v5 + 40))(v5, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v6 = a1[144];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v6 + 40))(v6, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v7 = a1[145];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v7 + 40))(v7, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  (*(*a1[140] + 16))(a1[140]);
  (*(*a1[141] + 16))(a1[141]);
  (*(*a1[142] + 16))(a1[142]);
  (*(*a1[143] + 16))(a1[143]);
  (*(*a1[144] + 16))(a1[144]);
  (*(*a1[145] + 16))(a1[145]);
  v8 = a1[140];
  BYTE7(v14[2]) = 16;
  strcpy(v14, "GRU AFTER reset GRU AFTER reset ");
  (*(*v8 + 40))(v8, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v9 = a1[141];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v9 + 40))(v9, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v10 = a1[142];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v10 + 40))(v10, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v11 = a1[143];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v11 + 40))(v11, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v12 = a1[144];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v12 + 40))(v12, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v13 = a1[145];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v13 + 40))(v13, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }
}

void sub_19D3531E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D35322C(uint64_t a1, uint64_t a2)
{
  v7 = **(a1 + 304);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 312);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 320);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v4 = *(a1 + 52);
  v7 = **(a1 + 328);
  v8.i32[0] = v4;
  v8.i32[1] = v4;
  sub_19D309FB0(a2, &v7);
  v5 = *(a1 + 52);
  v7 = **(a1 + 336);
  v8.i32[0] = v5;
  v8.i32[1] = v5;
  sub_19D309FB0(a2, &v7);
  v6 = *(a1 + 52);
  v7 = **(a1 + 344);
  v8.i32[0] = v6;
  v8.i32[1] = v6;
  sub_19D309FB0(a2, &v7);
}

void sub_19D3533D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3533EC(void *a1)
{
  v2 = a1[250];
  v3 = a1[249];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[250];
        v3 = a1[249];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[253];
  v7 = a1[252];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[253];
        v7 = a1[252];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[249];
  }

  a1[250] = v3;
  a1[253] = v7;
  v10 = a1[102];
  v11 = a1[101];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[102];
        v11 = a1[101];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[102] = v11;
  v14 = a1[99];
  if (v14)
  {
    operator delete(v14);
    a1[99] = 0;
  }

  v15 = a1[98];
  if (v15)
  {
    operator delete(v15);
    a1[98] = 0;
  }

  v16 = a1[132];
  v17 = a1[131];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[132];
        v17 = a1[131];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[132] = v17;
  v20 = a1[129];
  if (v20)
  {
    operator delete(v20);
    a1[129] = 0;
  }

  v21 = a1[128];
  if (v21)
  {
    operator delete(v21);
    a1[128] = 0;
  }

  v22 = a1[117];
  v23 = a1[116];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[117];
        v23 = a1[116];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[117] = v23;
  v26 = a1[114];
  if (v26)
  {
    operator delete(v26);
    a1[114] = 0;
  }

  v27 = a1[113];
  if (v27)
  {
    operator delete(v27);
    a1[113] = 0;
  }
}

uint64_t sub_19D3535D8(uint64_t a1, float a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  if (*(a1 + 56) < 1)
  {
    v9 = a2;
    v6 = (v5 * v4);
    MEMORY[0x19EAFB1F0](*(a1 + 1072), 1, &v9, *(a1 + 240), 1, *(a1 + 240), 1, v6);
    v9 = a2;
    MEMORY[0x19EAFB1F0](*(a1 + 1088), 1, &v9, *(a1 + 248), 1, *(a1 + 248), 1, v6);
    v9 = a2;
    MEMORY[0x19EAFB1F0](*(a1 + 1080), 1, &v9, *(a1 + 232), 1, *(a1 + 232), 1, v6);
  }

  else
  {
    sub_19D347C9C(a1 + 712, a2, a1 + 240, v5);
    sub_19D347C9C(a1 + 952, a2, a1 + 248, *(a1 + 52));
    sub_19D347C9C(a1 + 832, a2, a1 + 232, *(a1 + 52));
  }

  v7 = v5 * v5;
  v9 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1096), 1, &v9, *(a1 + 264), 1, *(a1 + 264), 1, v7);
  v9 = a2;
  MEMORY[0x19EAFB1F0](*(a1 + 1112), 1, &v9, *(a1 + 272), 1, *(a1 + 272), 1, v7);
  v9 = a2;
  return MEMORY[0x19EAFB1F0](*(a1 + 1104), 1, &v9, *(a1 + 256), 1, *(a1 + 256), 1, v7);
}

void sub_19D353760(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v6 = a5 - 1;
  if (a5 >= 1)
  {
    v357 = (a1 + 1168);
    v355 = (a1 + 1184);
    v7 = (a1 + 1176);
    v8 = a5 - 1;
    while (1)
    {
      v10 = *(a1 + 2040);
      if (*(a1 + 2040))
      {
        v11 = v6 - v8;
      }

      else
      {
        v11 = v8;
      }

      if (*(a1 + 2040))
      {
        v12 = v11 < v6;
      }

      else
      {
        v12 = v11 > 0;
      }

      if (*(a1 + 2040))
      {
        v13 = v11 > 0;
      }

      else
      {
        v13 = v11 < v6;
      }

      if (*(a1 + 2040))
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11 - 1;
      }

      v356 = v14;
      memmove(*(*(a1 + 584) + 8 * v11), *(*a4 + 8 * v11), 4 * *(a1 + 52));
      if (v13)
      {
        if (v10)
        {
          v15 = v11 - 1;
        }

        else
        {
          v15 = v11 + 1;
        }

        bzero(*(a1 + 704), 4 * *(a1 + 52));
        cblas_sgemv_NEWLAPACK();
        v16 = *(a1 + 584);
        v17 = *(a1 + 472);
        v18 = *(a1 + 52);
        v19 = v18 / 8;
        if (v18 >= 8)
        {
          v20 = *(v16 + 8 * v11);
          v21 = *(v17 + 8 * v15);
          v22 = v18 / 8;
          v23 = *(a1 + 704);
          do
          {
            v25 = *v23;
            v24 = v23[1];
            v23 += 2;
            v27 = *v21;
            v26 = v21[1];
            v21 += 2;
            v28 = vmlaq_f32(v20[1], v26, v24);
            *v20 = vmlaq_f32(*v20, v27, v25);
            v20[1] = v28;
            v20 += 2;
            --v22;
          }

          while (v22);
        }

        v29 = 8 * v19;
        if (8 * v19 < v18)
        {
          v30 = *(v17 + 8 * v15);
          v31 = *(a1 + 704);
          v32 = *(v16 + 8 * v11);
          v33 = v29;
          v34 = v18 - v29;
          if (v34 <= 7)
          {
            goto LABEL_40;
          }

          v35 = 4 * v29;
          v36 = v32 + 4 * v18;
          v37 = v32 + v35 >= (v30 + 4 * v18) || v30 + 4 * v29 >= v36;
          v38 = !v37;
          if (v31 + v35 < v36 && v32 + v35 < (v31 + 4 * v18))
          {
            goto LABEL_40;
          }

          if (v38)
          {
            goto LABEL_40;
          }

          v40 = v34 - (v18 & 7) + v33;
          v41 = v33 + (v18 & 7) - v18;
          v42 = (v32 + v35 + 16);
          v43 = (v31 + v35 + 16);
          v44 = (v30 + v35 + 16);
          do
          {
            v45 = vmlaq_f32(*v42, *v44, *v43);
            v42[-1] = vmlaq_f32(v42[-1], v44[-1], v43[-1]);
            *v42 = v45;
            v42 += 2;
            v43 += 2;
            v44 += 2;
            v41 += 8;
          }

          while (v41);
          v33 = v40;
          if ((v18 & 7) != 0)
          {
LABEL_40:
            v46 = v18 - v33;
            v47 = (v32 + 4 * v33);
            v48 = (v30 + 4 * v33);
            v49 = (v31 + 4 * v33);
            do
            {
              v50 = *v49++;
              v51 = v50;
              v52 = *v48++;
              *v47 = *v47 + (v52 * v51);
              ++v47;
              --v46;
            }

            while (v46);
          }
        }

        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
      }

      v53 = 8 * v11;
      sub_19D30A0F8(v357, (*(a1 + 424) + v53), *(a1 + 52), *(a1 + 528));
      sub_19D30A0F8(v355, (*(a1 + 400) + v53), *(a1 + 52), *(a1 + 524));
      sub_19D30A0F8((a1 + 1176), (*(a1 + 376) + v53), *(a1 + 52), *(a1 + 520));
      bzero(*(*(a1 + 608) + v53), 4 * *(a1 + 52));
      v54 = *(a1 + 608);
      v55 = *(a1 + 52);
      v56 = v55;
      if (v55 <= 0)
      {
        v75 = -8 * (-v55 >> 3);
        if (v75 >= v56)
        {
          goto LABEL_65;
        }

LABEL_54:
        v76 = *(v54 + 8 * v11);
        v77 = *v357;
        v78 = v75;
        v79 = v56 - v75;
        if (v79 <= 7)
        {
          goto LABEL_63;
        }

        v80 = v76 + 4 * v75;
        v81 = &v77[v75 / 4u];
        if (v80 < v77->u64 + 4 * v56 && v81 < v76 + 4 * v56)
        {
          goto LABEL_63;
        }

        v83 = v79 - (v56 & 7) + v75;
        v84 = v75 + (v56 & 7) - v56;
        v85 = (v80 + 16);
        v86 = (v81 + 16);
        do
        {
          v87 = vmulq_f32(*v86, *v85);
          v85[-1] = vmulq_f32(v86[-1], v85[-1]);
          *v85 = v87;
          v85 += 2;
          v86 += 2;
          v84 += 8;
        }

        while (v84);
        v78 = v83;
        if ((v56 & 7) != 0)
        {
LABEL_63:
          v88 = v56 - v78;
          v89 = &v77->f32[v78];
          v90 = (v76 + 4 * v78);
          do
          {
            v91 = *v89++;
            *v90 = v91 * *v90;
            ++v90;
            --v88;
          }

          while (v88);
        }

        goto LABEL_65;
      }

      v57 = *(*(a1 + 584) + 8 * v11);
      v58 = *(*(a1 + 448) + 8 * v11);
      v59 = *(v54 + 8 * v11);
      if (v55 < 8)
      {
        break;
      }

      v60 = 0;
      v120 = (v59 + 4 * v55);
      v122 = v59 < &v58->f32[v55] && v58 < v120;
      if (v57 < v120 && v59 < &v57->f32[v55])
      {
        goto LABEL_46;
      }

      if (v122)
      {
        goto LABEL_46;
      }

      v60 = v55 & 0x7FFFFFF8;
      v124 = v57 + 1;
      v125 = v58 + 1;
      v126 = v59 + 1;
      v127 = v60;
      do
      {
        v128 = vaddq_f32(vmlsq_f32(*v124, *v124, *v125), *v126);
        v126[-1] = vaddq_f32(vmlsq_f32(v124[-1], v124[-1], v125[-1]), v126[-1]);
        *v126 = v128;
        v124 += 2;
        v125 += 2;
        v126 += 2;
        v127 -= 8;
      }

      while (v127);
      if (v60 != v55)
      {
        goto LABEL_46;
      }

LABEL_48:
      v69 = v55 >> 3;
      if (v55 >= 8)
      {
        v70 = *v357;
        v71 = v55 >> 3;
        do
        {
          v72 = *v70;
          v73 = v70[1];
          v70 += 2;
          v74 = vmulq_f32(v73, v59[1]);
          *v59 = vmulq_f32(v72, *v59);
          v59[1] = v74;
          v59 += 2;
          --v71;
        }

        while (v71);
      }

      v75 = 8 * v69;
      if ((8 * v69) < v56)
      {
        goto LABEL_54;
      }

LABEL_65:
      v92 = *(a1 + 632);
      if (!v12)
      {
        memmove(*(v92 + 8 * v11), *(*(a1 + 496) + 8 * v11), 4 * *(a1 + 52));
        v115 = *(a1 + 632);
        v116 = *(a1 + 52);
        v117 = v116;
        if (v116 <= 0)
        {
          v171 = (*(a1 + 584) + 8 * v11);
          v172 = -(-v116 >> 3);
        }

        else
        {
          v118 = *(v115 + 8 * v11);
          if (v116 < 8)
          {
            v119 = 0;
            goto LABEL_133;
          }

          v119 = v116 & 0x7FFFFFF8;
          v178 = v118 + 1;
          v179 = v119;
          do
          {
            v180 = vnegq_f32(*v178);
            v178[-1] = vnegq_f32(v178[-1]);
            *v178 = v180;
            v178 += 2;
            v179 -= 8;
          }

          while (v179);
          if (v119 != v116)
          {
LABEL_133:
            v181 = v116 - v119;
            v182 = &v118->f32[v119];
            do
            {
              *v182 = -*v182;
              ++v182;
              --v181;
            }

            while (v181);
          }

          v171 = (*(a1 + 584) + 8 * v11);
          v172 = v116 >> 3;
          if (v116 >= 8)
          {
            v183 = *v171;
            v184 = v116 >> 3;
            do
            {
              v185 = *v183;
              v186 = v183[1];
              v183 += 2;
              v187 = vmulq_f32(v118[1], v186);
              *v118 = vmulq_f32(*v118, v185);
              v118[1] = v187;
              v118 += 2;
              --v184;
            }

            while (v184);
          }
        }

        v188 = 8 * v172;
        if ((8 * v172) < v117)
        {
          v189 = *v171;
          v190 = *(v115 + 8 * v11);
          v191 = v188;
          v192 = v117 - v188;
          if (v192 <= 7)
          {
            goto LABEL_148;
          }

          v193 = v190 + 4 * v188;
          v194 = &v189[v188 / 4u];
          if (v193 < v189->u64 + 4 * v117 && v194 < v190 + 4 * v117)
          {
            goto LABEL_148;
          }

          v196 = v192 - (v117 & 7) + v188;
          v197 = v188 + (v117 & 7) - v117;
          v198 = (v194 + 16);
          v199 = (v193 + 16);
          do
          {
            v200 = vmulq_f32(*v199, *v198);
            v199[-1] = vmulq_f32(v199[-1], v198[-1]);
            *v199 = v200;
            v198 += 2;
            v199 += 2;
            v197 += 8;
          }

          while (v197);
          v191 = v196;
          if ((v117 & 7) != 0)
          {
LABEL_148:
            v201 = v117 - v191;
            v202 = (v190 + 4 * v191);
            v203 = &v189->f32[v191];
            do
            {
              v204 = *v203++;
              *v202 = *v202 * v204;
              ++v202;
              --v201;
            }

            while (v201);
          }
        }

        v205 = *(a1 + 632);
        v206 = *(a1 + 52);
        v207 = v206 / 8;
        if (v206 >= 8)
        {
          v208 = *(v205 + 8 * v11);
          v209 = *v7;
          v210 = v206 / 8;
          do
          {
            v211 = *v209;
            v212 = v209[1];
            v209 += 2;
            v213 = vmulq_f32(v212, v208[1]);
            *v208 = vmulq_f32(v211, *v208);
            v208[1] = v213;
            v208 += 2;
            --v210;
          }

          while (v210);
        }

        v214 = 8 * v207;
        if (8 * v207 < v206)
        {
          v215 = *(v205 + 8 * v11);
          v216 = *v7;
          v217 = v214;
          v218 = v206 - v214;
          if (v218 <= 7)
          {
            goto LABEL_163;
          }

          v219 = v215 + 4 * v214;
          v220 = &v216[v214 / 4u];
          if (v219 < v216->u64 + 4 * v206 && v220 < v215 + 4 * v206)
          {
            goto LABEL_163;
          }

          v222 = v218 - (v206 & 7) + v214;
          v223 = v214 + (v206 & 7) - v206;
          v224 = (v219 + 16);
          v225 = (v220 + 16);
          do
          {
            v226 = vmulq_f32(*v225, *v224);
            v224[-1] = vmulq_f32(v225[-1], v224[-1]);
            *v224 = v226;
            v224 += 2;
            v225 += 2;
            v223 += 8;
          }

          while (v223);
          v217 = v222;
          if ((v206 & 7) != 0)
          {
LABEL_163:
            v227 = v206 - v217;
            v228 = &v216->f32[v217];
            v229 = (v215 + 4 * v217);
            do
            {
              v230 = *v228++;
              *v229 = v230 * *v229;
              ++v229;
              --v227;
            }

            while (v227);
          }
        }

        goto LABEL_165;
      }

      v93 = *(a1 + 52);
      v94 = v93;
      if (v93 > 0)
      {
        v95 = *(*(a1 + 112) + 8 * v356);
        v96 = *(*(a1 + 496) + 8 * v11);
        v97 = *(v92 + 8 * v11);
        if (v93 < 8)
        {
          v98 = 0;
          goto LABEL_69;
        }

        v98 = 0;
        if ((v97 - v95) < 0x20)
        {
          goto LABEL_69;
        }

        if ((v97 - v96) < 0x20)
        {
          goto LABEL_69;
        }

        v98 = v93 & 0x7FFFFFF8;
        v173 = v95 + 1;
        v174 = v96 + 1;
        v175 = v97 + 1;
        v176 = v98;
        do
        {
          v177 = vsubq_f32(*v173, *v174);
          v175[-1] = vsubq_f32(v173[-1], v174[-1]);
          *v175 = v177;
          v173 += 2;
          v174 += 2;
          v175 += 2;
          v176 -= 8;
        }

        while (v176);
        if (v98 != v93)
        {
LABEL_69:
          v99 = v93 - v98;
          v100 = v98;
          v101 = &v97->f32[v98];
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
        }

        v107 = (*(a1 + 584) + 8 * v11);
        v108 = v93 >> 3;
        if (v93 >= 8)
        {
          v109 = *v107;
          v110 = v93 >> 3;
          do
          {
            v111 = *v109;
            v112 = v109[1];
            v109 += 2;
            v113 = vmulq_f32(v97[1], v112);
            *v97 = vmulq_f32(*v97, v111);
            v97[1] = v113;
            v97 += 2;
            --v110;
          }

          while (v110);
        }

        v114 = 8 * v108;
        if ((8 * v108) >= v94)
        {
          goto LABEL_107;
        }

LABEL_96:
        v129 = *v107;
        v130 = *(v92 + 8 * v11);
        v131 = v114;
        v132 = v94 - v114;
        if (v132 <= 7)
        {
          goto LABEL_105;
        }

        v133 = v130 + 4 * v114;
        v134 = &v129[v114 / 4u];
        if (v133 < v129->u64 + 4 * v94 && v134 < v130 + 4 * v94)
        {
          goto LABEL_105;
        }

        v136 = v132 - (v94 & 7) + v114;
        v137 = v114 + (v94 & 7) - v94;
        v138 = (v134 + 16);
        v139 = (v133 + 16);
        do
        {
          v140 = vmulq_f32(*v139, *v138);
          v139[-1] = vmulq_f32(v139[-1], v138[-1]);
          *v139 = v140;
          v138 += 2;
          v139 += 2;
          v137 += 8;
        }

        while (v137);
        v131 = v136;
        if ((v94 & 7) != 0)
        {
LABEL_105:
          v141 = v94 - v131;
          v142 = (v130 + 4 * v131);
          v143 = &v129->f32[v131];
          do
          {
            v144 = *v143++;
            *v142 = *v142 * v144;
            ++v142;
            --v141;
          }

          while (v141);
        }

        goto LABEL_107;
      }

      v107 = (*(a1 + 584) + 8 * v11);
      v114 = -8 * (-v93 >> 3);
      if (v114 < v94)
      {
        goto LABEL_96;
      }

LABEL_107:
      v145 = *(a1 + 632);
      v146 = *(a1 + 52);
      v147 = v146 / 8;
      if (v146 >= 8)
      {
        v148 = *(v145 + 8 * v11);
        v149 = *v7;
        v150 = v146 / 8;
        do
        {
          v151 = *v149;
          v152 = v149[1];
          v149 += 2;
          v153 = vmulq_f32(v152, v148[1]);
          *v148 = vmulq_f32(v151, *v148);
          v148[1] = v153;
          v148 += 2;
          --v150;
        }

        while (v150);
      }

      v154 = 8 * v147;
      if (8 * v147 < v146)
      {
        v155 = *(v145 + 8 * v11);
        v156 = *v7;
        v157 = v154;
        v158 = v146 - v154;
        if (v158 <= 7)
        {
          goto LABEL_120;
        }

        v159 = v155 + 4 * v154;
        v160 = &v156[v154 / 4u];
        if (v159 < v156->u64 + 4 * v146 && v160 < v155 + 4 * v146)
        {
          goto LABEL_120;
        }

        v162 = v158 - (v146 & 7) + v154;
        v163 = v154 + (v146 & 7) - v146;
        v164 = (v159 + 16);
        v165 = (v160 + 16);
        do
        {
          v166 = vmulq_f32(*v165, *v164);
          v164[-1] = vmulq_f32(v165[-1], v164[-1]);
          *v164 = v166;
          v164 += 2;
          v165 += 2;
          v163 += 8;
        }

        while (v163);
        v157 = v162;
        if ((v146 & 7) != 0)
        {
LABEL_120:
          v167 = v146 - v157;
          v168 = &v156->f32[v157];
          v169 = (v155 + 4 * v157);
          do
          {
            v170 = *v168++;
            *v169 = v170 * *v169;
            ++v169;
            --v167;
          }

          while (v167);
        }
      }

LABEL_165:
      if (v12)
      {
        cblas_sgemv_NEWLAPACK();
        v231 = *(a1 + 656);
        v232 = *(a1 + 112);
        v233 = *(a1 + 52);
        if (v233 >= 8)
        {
          v234 = *(v231 + 8 * v11);
          v235 = *(v232 + 8 * v356);
          v236 = v233 / 8;
          do
          {
            v237 = *v235;
            v238 = v235[1];
            v235 += 2;
            v239 = vmulq_f32(v238, v234[1]);
            *v234 = vmulq_f32(v237, *v234);
            v234[1] = v239;
            v234 += 2;
            --v236;
          }

          while (v236);
        }

        v240 = 8 * (v233 / 8);
        if (v240 < v233)
        {
          v241 = *(v231 + 8 * v11);
          v242 = *(v232 + 8 * v356);
          v243 = v240;
          v244 = v233 - v240;
          if (v244 <= 7)
          {
            goto LABEL_179;
          }

          v245 = v241 + 4 * v240;
          v246 = v242 + 4 * v240;
          if (v245 < v242 + 4 * v233 && v246 < v241 + 4 * v233)
          {
            goto LABEL_179;
          }

          v248 = v244 - (v233 & 7) + v240;
          v249 = v240 + (v233 & 7) - v233;
          v250 = (v245 + 16);
          v251 = (v246 + 16);
          do
          {
            v252 = vmulq_f32(*v251, *v250);
            v250[-1] = vmulq_f32(v251[-1], v250[-1]);
            *v250 = v252;
            v250 += 2;
            v251 += 2;
            v249 += 8;
          }

          while (v249);
          v243 = v248;
          if ((v233 & 7) != 0)
          {
LABEL_179:
            v253 = v233 - v243;
            v254 = (v242 + 4 * v243);
            v255 = (v241 + 4 * v243);
            do
            {
              v256 = *v254++;
              *v255 = v256 * *v255;
              ++v255;
              --v253;
            }

            while (v253);
          }
        }

        v257 = *(a1 + 656);
        v258 = *(a1 + 52);
        v259 = v258 / 8;
        if (v258 >= 8)
        {
          v260 = *(v257 + 8 * v11);
          v261 = *v355;
          v262 = v258 / 8;
          do
          {
            v263 = *v261;
            v264 = v261[1];
            v261 += 2;
            v265 = vmulq_f32(v264, v260[1]);
            *v260 = vmulq_f32(v263, *v260);
            v260[1] = v265;
            v260 += 2;
            --v262;
          }

          while (v262);
        }

        v266 = 8 * v259;
        if (8 * v259 < v258)
        {
          v267 = *(v257 + 8 * v11);
          v268 = *v355;
          v269 = v266;
          v270 = v258 - v266;
          if (v270 <= 7)
          {
            goto LABEL_194;
          }

          v271 = v267 + 4 * v266;
          v272 = &v268[v266 / 4u];
          if (v271 < v268->u64 + 4 * v258 && v272 < v267 + 4 * v258)
          {
            goto LABEL_194;
          }

          v274 = v270 - (v258 & 7) + v266;
          v275 = v266 + (v258 & 7) - v258;
          v276 = (v271 + 16);
          v277 = (v272 + 16);
          do
          {
            v278 = vmulq_f32(*v277, *v276);
            v276[-1] = vmulq_f32(v277[-1], v276[-1]);
            *v276 = v278;
            v276 += 2;
            v277 += 2;
            v275 += 8;
          }

          while (v275);
          v269 = v274;
          if ((v258 & 7) != 0)
          {
LABEL_194:
            v279 = v258 - v269;
            v280 = &v268->f32[v269];
            v281 = (v267 + 4 * v269);
            do
            {
              v282 = *v280++;
              *v281 = v282 * *v281;
              ++v281;
              --v279;
            }

            while (v279);
          }
        }
      }

      else
      {
        bzero(*(*(a1 + 656) + 8 * v11), 4 * *(a1 + 52));
      }

      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 560) + 8 * v11), 4 * *(a1 + 48));
        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
        cblas_sgemv_NEWLAPACK();
      }

      if (v8-- <= 0)
      {
        goto LABEL_200;
      }
    }

    v60 = 0;
LABEL_46:
    v61 = v55 - v60;
    v62 = v60;
    v63 = &v59->f32[v60];
    v64 = &v58->f32[v62];
    v65 = &v57->f32[v62];
    do
    {
      v66 = *v65++;
      v67 = v66;
      v68 = *v64++;
      *v63 = (v67 - (v68 * v67)) + *v63;
      ++v63;
      --v61;
    }

    while (v61);
    goto LABEL_48;
  }

LABEL_200:
  if (*(a1 + 56) > 0)
  {
    *(a1 + 728) = 0;
    *(a1 + 968) = 0;
    *(a1 + 848) = 0;
  }

  if (a5 > 1)
  {
    v283 = 1;
    v284 = a5 - 2;
    do
    {
      if (*(a1 + 2040))
      {
        v285 = v284;
      }

      else
      {
        v285 = v283;
      }

      if (*(a1 + 2040))
      {
        v286 = 1;
      }

      else
      {
        v286 = -1;
      }

      v287 = v285 + v286;
      if (*(a1 + 2040))
      {
        v288 = a5 - 2;
      }

      else
      {
        v288 = 1;
      }

      v289 = v285 == v288;
      v290 = 8 * v285;
      v291 = 8 * v287;
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 632) + v290, *(a1 + 112) + v291, (a1 + 1104), *(a1 + 52), *(a1 + 52), v289);
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 656) + v290, *(a1 + 112) + v291, (a1 + 1096), *(a1 + 52), *(a1 + 52), v289);
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 608) + v290, *(a1 + 112) + v291, (a1 + 1112), *(a1 + 52), *(a1 + 52), v289);
      ++v283;
      --v284;
    }

    while (v284 != -1);
  }

  if (a5 >= 1)
  {
    v292 = 0;
    while (1)
    {
      v296 = *(a1 + 2040) ? v6 - v292 : v292;
      v297 = *(a1 + 2040) ? v6 : 0;
      if (a3[1] == *a3)
      {
        break;
      }

      v293 = *(a1 + 656);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_217;
      }

      v298 = (*(a1 + 208) + 24 * v296);
      v300 = *v298;
      v299 = v298[1];
      if (v299 != v300)
      {
        if (((v299 - v300) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_276;
      }

      v301 = *(a1 + 52);
      if (v301 >= 1)
      {
        v302 = 0;
        v303 = *(v293 + 8 * v296);
        v304 = *(*(a1 + 736) + 8 * *(a1 + 728));
        if (v301 < 8)
        {
          goto LABEL_236;
        }

        if ((v304 - v303) < 0x20)
        {
          goto LABEL_236;
        }

        v302 = v301 & 0x7FFFFFF8;
        v305 = (v303 + 16);
        v306 = (v304 + 16);
        v307 = v302;
        do
        {
          v308 = *v305;
          *(v306 - 1) = *(v305 - 1);
          *v306 = v308;
          v305 += 2;
          v306 += 2;
          v307 -= 8;
        }

        while (v307);
        if (v302 != v301)
        {
LABEL_236:
          v309 = v301 - v302;
          v310 = 4 * v302;
          v311 = (v304 + 4 * v302);
          v312 = (v303 + v310);
          do
          {
            v313 = *v312++;
            *v311++ = v313;
            --v309;
          }

          while (v309);
        }
      }

      if (*(a1 + 724) < 1)
      {
        ++*(a1 + 728);
      }

      else
      {
        v314 = 0;
        v315 = *(a1 + 760);
        do
        {
          *(*(v315 + 24 * *(a1 + 728)) + 4 * v314) = *(4 * v314);
          ++v314;
        }

        while (v314 < *(a1 + 724));
        ++*(a1 + 728);
        operator delete(0);
      }

      v316 = (*(a1 + 208) + 24 * v296);
      v318 = *v316;
      v317 = v316[1];
      if (v317 != v318)
      {
        if (((v317 - v318) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_276;
      }

      v319 = *(a1 + 52);
      if (v319 >= 1)
      {
        v320 = 0;
        v321 = *(*(a1 + 632) + 8 * v296);
        v322 = *(*(a1 + 856) + 8 * *(a1 + 848));
        if (v319 < 8)
        {
          goto LABEL_252;
        }

        if ((v322 - v321) < 0x20)
        {
          goto LABEL_252;
        }

        v320 = v319 & 0x7FFFFFF8;
        v323 = (v321 + 16);
        v324 = (v322 + 16);
        v325 = v320;
        do
        {
          v326 = *v323;
          *(v324 - 1) = *(v323 - 1);
          *v324 = v326;
          v323 += 2;
          v324 += 2;
          v325 -= 8;
        }

        while (v325);
        if (v320 != v319)
        {
LABEL_252:
          v327 = v319 - v320;
          v328 = 4 * v320;
          v329 = (v322 + 4 * v320);
          v330 = (v321 + v328);
          do
          {
            v331 = *v330++;
            *v329++ = v331;
            --v327;
          }

          while (v327);
        }
      }

      if (*(a1 + 844) < 1)
      {
        ++*(a1 + 848);
      }

      else
      {
        v332 = 0;
        v333 = *(a1 + 880);
        do
        {
          *(*(v333 + 24 * *(a1 + 848)) + 4 * v332) = *(4 * v332);
          ++v332;
        }

        while (v332 < *(a1 + 844));
        ++*(a1 + 848);
        operator delete(0);
      }

      v334 = (*(a1 + 208) + 24 * v296);
      v336 = *v334;
      v335 = v334[1];
      if (v335 != v336)
      {
        if (((v335 - v336) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_276:
        sub_19D2AE2B4();
      }

      v337 = *(a1 + 52);
      if (v337 >= 1)
      {
        v338 = 0;
        v339 = *(*(a1 + 608) + 8 * v296);
        v340 = *(*(a1 + 976) + 8 * *(a1 + 968));
        if (v337 < 8)
        {
          goto LABEL_268;
        }

        if ((v340 - v339) < 0x20)
        {
          goto LABEL_268;
        }

        v338 = v337 & 0x7FFFFFF8;
        v341 = (v339 + 16);
        v342 = (v340 + 16);
        v343 = v338;
        do
        {
          v344 = *v341;
          *(v342 - 1) = *(v341 - 1);
          *v342 = v344;
          v341 += 2;
          v342 += 2;
          v343 -= 8;
        }

        while (v343);
        if (v338 != v337)
        {
LABEL_268:
          v345 = v337 - v338;
          v346 = 4 * v338;
          v347 = (v340 + 4 * v338);
          v348 = (v339 + v346);
          do
          {
            v349 = *v348++;
            *v347++ = v349;
            --v345;
          }

          while (v345);
        }
      }

      if (*(a1 + 964) < 1)
      {
        ++*(a1 + 968);
      }

      else
      {
        v350 = 0;
        v351 = *(a1 + 1000);
        do
        {
          *(*(v351 + 24 * *(a1 + 968)) + 4 * v350) = *(4 * v350);
          ++v350;
        }

        while (v350 < *(a1 + 964));
        ++*(a1 + 968);
        operator delete(0);
      }

LABEL_218:
      if (++v292 == a5)
      {
        return;
      }
    }

    v293 = *(a1 + 656);
LABEL_217:
    v294 = v296 == v297;
    v295 = 8 * v296;
    sub_19D30A868(*(a1 + 64) + v295, v293 + v295, *(a1 + 64) + v295, (a1 + 1072), *(a1 + 52), *(a1 + 48), v294);
    sub_19D30A868(*(a1 + 64) + v295, *(a1 + 632) + v295, *(a1 + 64) + v295, (a1 + 1080), *(a1 + 52), *(a1 + 48), v294);
    sub_19D30A868(*(a1 + 64) + v295, *(a1 + 608) + v295, *(a1 + 64) + v295, (a1 + 1088), *(a1 + 52), *(a1 + 48), v294);
    goto LABEL_218;
  }
}

uint64_t sub_19D354B2C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2040] = 1;
  if ((atomic_load_explicit(&qword_1EB0139A0, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D454590();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013988);
  a1[2040] = 0;
  return result;
}

uint64_t sub_19D354BD4(_BYTE *a1)
{
  a1[2040] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2040] = 0;
  return result;
}

char *sub_19D354C2C(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 1988) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7998, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 304) = result + 232;
  *(a1 + 312) = result + 240;
  *(a1 + 320) = result + 248;
  *(a1 + 328) = result + 256;
  *(a1 + 336) = result + 264;
  *(a1 + 344) = result + 272;
  *(a1 + 352) = result + 280;
  *(a1 + 360) = result + 288;
  *(a1 + 368) = result + 296;
  return result;
}

uint64_t sub_19D354CE8(uint64_t a1, void *lpsrc, float a3)
{
  if (*(a1 + 1988))
  {
    sub_19D41C548(1);
  }

  v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7998, 0);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  sub_19D34ABC0(a1, (a1 + 240), (v5 + 268), v5 + 178, *(a1 + 52), *(a1 + 48), *(a1 + 1120), a1 + 1192);
  sub_19D34ABC0(a1, (a1 + 248), (v6 + 272), v6 + 238, *(a1 + 52), *(a1 + 48), *(a1 + 1136), a1 + 1264);
  sub_19D34ABC0(a1, (a1 + 232), (v6 + 270), v6 + 208, *(a1 + 52), *(a1 + 48), *(a1 + 1128), a1 + 1336);
  v7 = *(a1 + 52);
  v8 = *(a1 + 1144);
  sub_19D429424(a1 + 1408);
  if (*(a1 + 56))
  {
    (**v8)(v8, a1 + 264, (v6 + 274), a3);
  }

  else
  {
    (**v8)(v8, a1 + 264, (v6 + 274), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 264), 1, &__B, &__C, *(a1 + 264), 1, (v7 * v7));
  }

  sub_19D42942C(a1 + 1408);
  v9 = *(a1 + 52);
  v10 = *(a1 + 1160);
  sub_19D429424(a1 + 1480);
  if (*(a1 + 56))
  {
    (**v10)(v10, a1 + 272, (v6 + 278), a3);
  }

  else
  {
    (**v10)(v10, a1 + 272, (v6 + 278), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 272), 1, &__B, &__C, *(a1 + 272), 1, (v9 * v9));
  }

  sub_19D42942C(a1 + 1480);
  v11 = *(a1 + 52);
  v12 = *(a1 + 1152);
  sub_19D429424(a1 + 1552);
  if (*(a1 + 56))
  {
    (**v12)(v12, a1 + 256, (v6 + 276), a3);
  }

  else
  {
    (**v12)(v12, a1 + 256, (v6 + 276), a3);
    __C = 2.0;
    __B = -2.0;
    vDSP_vclip(*(a1 + 256), 1, &__B, &__C, *(a1 + 256), 1, (v11 * v11));
  }

  return sub_19D42942C(a1 + 1552);
}

void sub_19D355054(void *a1)
{
  v1 = sub_19D356CB0(a1);

  operator delete(v1);
}

void sub_19D35507C(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a3[1] != *a3 && *(a1 + 56) >= 1)
  {
    v8 = (**a1)(a1);
    v9 = a4 & 0xFFFFFF;
    v10 = *(a1 + 2048);
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = *(v10 + 468);
    if (v11 > 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v9 = a4 & 0xFFFFFF;
  v10 = *(a1 + 2048);
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = 50.0;
LABEL_8:
  v12 = a5 != 0;
  if (v9 > v12)
  {
    v239 = v9;
    v240 = v9 - 1;
    do
    {
      if (*(a1 + 2040))
      {
        v13 = v9 + ~v12;
      }

      else
      {
        v13 = v12;
      }

      if (*(a1 + 2040))
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (*(a1 + 2040))
      {
        v15 = v13 < v240;
      }

      else
      {
        v15 = v13 > 0;
      }

      v246 = v12;
      v247 = v15;
      v16 = v13;
      memmove(*(*(a1 + 64) + 8 * v13), *(*a2 + 8 * v13), 4 * *(a1 + 44));
      v17 = *(a1 + 40);
      if (v17 == 1)
      {
        *(*(*(a1 + 64) + 8 * v13) + 4 * *(a1 + 48) - 4) = 1065353216;
      }

      if (v8)
      {
        v18 = *(a1 + 48);
        v19 = *(*(a1 + 208) + 24 * v13);
        *v19 = **(*a3 + 24 * v13);
        if (v17)
        {
          v19[1] = v18 - 1;
        }
      }

      bzero(*(*(a1 + 376) + 8 * v13), 4 * *(a1 + 52));
      bzero(*(*(a1 + 400) + 8 * v13), 4 * *(a1 + 52));
      bzero(*(*(a1 + 424) + 8 * v13), 4 * *(a1 + 52));
      v20 = *(a1 + 2048);
      v21 = 8 * v13;
      if (v20 && (*(v20 + 20) & 1) == 0 && ((v230 = *(v20 + 40), v230 == 4) || v230 == 2) && *(v20 + 44) == 3)
      {
        v231 = *(a1 + 376);
        v232 = *(a1 + 400);
        v236 = *(a1 + 64);
        v237 = *(a1 + 424);
        v245 = *(a1 + 304);
        v233 = (*(a1 + 208) + 24 * v13);
        v258 = 0;
        v259 = 0;
        v257 = 0;
        v235 = *v233;
        v234 = v233[1];
        if (v234 != v235)
        {
          if (((v234 - v235) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D355F58(a1, 0, (v231 + v21), (v232 + v21), (v237 + v21), v236 + v21, v245, &v257, *(a1 + 52), *(a1 + 48), 1);
        v26 = v13;
        if (v257)
        {
          v258 = v257;
          v30 = 1;
          operator delete(v257);
          v31 = *(a1 + 2048);
          if (!v31)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v30 = 1;
          v31 = *(a1 + 2048);
          if (!v31)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v242 = v13;
        v22 = v14;
        v23 = *(a1 + 376);
        v24 = *(a1 + 64);
        v25 = *(a1 + 304);
        v26 = v16;
        v27 = (*(a1 + 208) + 24 * v16);
        v255 = 0;
        v256 = 0;
        __p = 0;
        v29 = *v27;
        v28 = v27[1];
        if (v28 != v29)
        {
          if (((v28 - v29) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D3566EC(a1, v8, (v23 + v21), v24 + v21, v25, &__p, *(a1 + 52), *(a1 + 48), 1);
        v14 = v22;
        v30 = 0;
        if (__p)
        {
          v255 = __p;
          v13 = v242;
          operator delete(__p);
          v31 = *(a1 + 2048);
          if (!v31)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v13 = v242;
          v31 = *(a1 + 2048);
          if (!v31)
          {
            goto LABEL_50;
          }
        }
      }

      if (*(v31 + 244) == 1)
      {
        v32 = *(a1 + 376);
        v33 = *(a1 + 352);
        v34 = *(a1 + 52);
        if (v34 >= 8)
        {
          v35 = *(v32 + 8 * v26);
          v36 = *v33;
          v37 = v34 / 8;
          do
          {
            v38 = *v36;
            v39 = v36[1];
            v36 += 2;
            v40 = vaddq_f32(v35[1], v39);
            *v35 = vaddq_f32(*v35, v38);
            v35[1] = v40;
            v35 += 2;
            --v37;
          }

          while (v37);
        }

        v41 = 8 * (v34 / 8);
        if (v41 < v34)
        {
          v42 = *v33;
          v43 = *(v32 + 8 * v26);
          v44 = v41;
          v45 = v34 - v41;
          if (v45 <= 7)
          {
            goto LABEL_48;
          }

          v46 = v43 + 4 * v41;
          v47 = &v42[v41 / 4u];
          if (v46 < v42->u64 + 4 * v34 && v47 < v43 + 4 * v34)
          {
            goto LABEL_48;
          }

          v49 = v45 - (v34 & 7) + v41;
          v50 = v41 + (v34 & 7) - v34;
          v51 = (v47 + 16);
          v52 = (v46 + 16);
          do
          {
            v53 = vaddq_f32(*v52, *v51);
            v52[-1] = vaddq_f32(v52[-1], v51[-1]);
            *v52 = v53;
            v51 += 2;
            v52 += 2;
            v50 += 8;
          }

          while (v50);
          v44 = v49;
          if ((v34 & 7) != 0)
          {
LABEL_48:
            v54 = v34 - v44;
            v55 = (v43 + 4 * v44);
            v56 = &v42->f32[v44];
            do
            {
              v57 = *v56++;
              *v55 = *v55 + v57;
              ++v55;
              --v54;
            }

            while (v54);
          }
        }
      }

LABEL_50:
      v58 = v13 + v14;
      v59 = *(a1 + 376);
      v60 = *(a1 + 52);
      v61 = v247;
      if (v247)
      {
        cblas_sgemv_NEWLAPACK();
        v59 = *(a1 + 376);
        v60 = *(a1 + 52);
      }

      __C = v11;
      __B[0] = -v11;
      vDSP_vclip(*(v59 + v21), 1, __B, &__C, *(v59 + v21), 1, v60);
      sub_19D30A3C0((*(a1 + 448) + v21), (*(a1 + 376) + v21), *(a1 + 52), *(a1 + 520));
      if ((v30 & 1) == 0)
      {
        v243 = v30;
        v62 = v58;
        v63 = *(a1 + 400);
        v64 = *(a1 + 64);
        v65 = *(a1 + 312);
        v66 = (*(a1 + 208) + 24 * v26);
        v252 = 0;
        v253 = 0;
        v251 = 0;
        v68 = *v66;
        v67 = v66[1];
        if (v67 != v68)
        {
          if (((v67 - v68) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D3566EC(a1, v8, (v63 + v21), v64 + v21, v65, &v251, *(a1 + 52), *(a1 + 48), 1);
        v61 = v247;
        v58 = v62;
        v30 = v243;
        if (v251)
        {
          v252 = v251;
          operator delete(v251);
        }
      }

      v69 = *(a1 + 2048);
      if (v69 && *(v69 + 244) == 1)
      {
        v70 = *(a1 + 400);
        v71 = *(a1 + 360);
        v72 = *(a1 + 52);
        if (v72 >= 8)
        {
          v73 = *(v70 + 8 * v26);
          v74 = *v71;
          v75 = v72 / 8;
          do
          {
            v76 = *v74;
            v77 = v74[1];
            v74 += 2;
            v78 = vaddq_f32(v73[1], v77);
            *v73 = vaddq_f32(*v73, v76);
            v73[1] = v78;
            v73 += 2;
            --v75;
          }

          while (v75);
        }

        v79 = 8 * (v72 / 8);
        if (v79 < v72)
        {
          v80 = *v71;
          v81 = *(v70 + 8 * v26);
          v82 = v79;
          v83 = v72 - v79;
          if (v83 <= 7)
          {
            goto LABEL_73;
          }

          v84 = v81 + 4 * v79;
          v85 = &v80[v79 / 4u];
          if (v84 < v80->u64 + 4 * v72 && v85 < v81 + 4 * v72)
          {
            goto LABEL_73;
          }

          v87 = v83 - (v72 & 7) + v79;
          v88 = v79 + (v72 & 7) - v72;
          v89 = (v85 + 16);
          v90 = (v84 + 16);
          do
          {
            v91 = vaddq_f32(*v90, *v89);
            v90[-1] = vaddq_f32(v90[-1], v89[-1]);
            *v90 = v91;
            v89 += 2;
            v90 += 2;
            v88 += 8;
          }

          while (v88);
          v82 = v87;
          if ((v72 & 7) != 0)
          {
LABEL_73:
            v92 = v72 - v82;
            v93 = (v81 + 4 * v82);
            v94 = &v80->f32[v82];
            do
            {
              v95 = *v94++;
              *v93 = *v93 + v95;
              ++v93;
              --v92;
            }

            while (v92);
          }
        }
      }

      v96 = *(a1 + 400);
      v97 = *(a1 + 52);
      if (v61)
      {
        cblas_sgemv_NEWLAPACK();
        v96 = *(a1 + 400);
        v97 = *(a1 + 52);
      }

      __C = v11;
      __B[0] = -v11;
      vDSP_vclip(*(v96 + v21), 1, __B, &__C, *(v96 + v21), 1, v97);
      sub_19D30A3C0((*(a1 + 472) + v21), (*(a1 + 400) + v21), *(a1 + 52), *(a1 + 524));
      bzero(*(*(a1 + 88) + v21), 4 * *(a1 + 52));
      if (v61)
      {
        v98 = *(a1 + 88);
        v99 = *(a1 + 112);
        v100 = *(a1 + 472);
        v101 = *(a1 + 52);
        if (v101 >= 8)
        {
          v102 = *(v98 + 8 * v26);
          v103 = *(v100 + 8 * v26);
          v104 = v101 / 8;
          v105 = *(v99 + 8 * v58);
          do
          {
            v107 = *v105;
            v106 = v105[1];
            v105 += 2;
            v109 = *v103;
            v108 = v103[1];
            v103 += 2;
            v110 = vmlaq_f32(v102[1], v108, v106);
            *v102 = vmlaq_f32(*v102, v109, v107);
            v102[1] = v110;
            v102 += 2;
            --v104;
          }

          while (v104);
        }

        v111 = 8 * (v101 / 8);
        if (v111 < v101)
        {
          v112 = *(v99 + 8 * v58);
          v113 = *(v100 + 8 * v26);
          v114 = *(v98 + 8 * v26);
          v115 = v111;
          v116 = v101 - v111;
          if (v116 <= 7)
          {
            goto LABEL_98;
          }

          v117 = 4 * v111;
          v118 = v114 + 4 * v101;
          v119 = v114 + v117 >= (v113 + 4 * v101) || v113 + 4 * v111 >= v118;
          v120 = !v119;
          if (v112 + v117 < v118 && v114 + v117 < (v112 + 4 * v101))
          {
            goto LABEL_98;
          }

          if (v120)
          {
            goto LABEL_98;
          }

          v122 = v116 - (v101 & 7) + v115;
          v123 = v115 + (v101 & 7) - v101;
          v124 = (v114 + v117 + 16);
          v125 = (v112 + v117 + 16);
          v126 = (v113 + v117 + 16);
          do
          {
            v127 = vmlaq_f32(*v124, *v126, *v125);
            v124[-1] = vmlaq_f32(v124[-1], v126[-1], v125[-1]);
            *v124 = v127;
            v124 += 2;
            v125 += 2;
            v126 += 2;
            v123 += 8;
          }

          while (v123);
          v115 = v122;
          if ((v101 & 7) != 0)
          {
LABEL_98:
            v128 = v101 - v115;
            v129 = (v114 + 4 * v115);
            v130 = (v113 + 4 * v115);
            v131 = (v112 + 4 * v115);
            do
            {
              v132 = *v131++;
              v133 = v132;
              v134 = *v130++;
              *v129 = *v129 + (v134 * v133);
              ++v129;
              --v128;
            }

            while (v128);
          }
        }
      }

      v135 = *(a1 + 88);
      v136 = *(a1 + 52);
      __C = v11;
      __B[0] = -v11;
      vDSP_vclip(*(v135 + 8 * v26), 1, __B, &__C, *(v135 + 8 * v26), 1, v136);
      if ((v30 & 1) == 0)
      {
        v244 = v58;
        v137 = *(a1 + 424);
        v138 = *(a1 + 64);
        v139 = *(a1 + 320);
        v140 = (*(a1 + 208) + 24 * v26);
        v249 = 0;
        v250 = 0;
        v248 = 0;
        v142 = *v140;
        v141 = v140[1];
        if (v141 != v142)
        {
          if (((v141 - v142) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D3566EC(a1, v8, (v137 + v21), v138 + v21, v139, &v248, *(a1 + 52), *(a1 + 48), 1);
        v58 = v244;
        if (v248)
        {
          v249 = v248;
          operator delete(v248);
        }
      }

      v143 = *(a1 + 2048);
      if (v143 && *(v143 + 244) == 1)
      {
        v144 = *(a1 + 424);
        v145 = *(a1 + 368);
        v146 = *(a1 + 52);
        if (v146 >= 8)
        {
          v147 = *(v144 + 8 * v26);
          v148 = *v145;
          v149 = v146 / 8;
          do
          {
            v150 = *v148;
            v151 = v148[1];
            v148 += 2;
            v152 = vaddq_f32(v147[1], v151);
            *v147 = vaddq_f32(*v147, v150);
            v147[1] = v152;
            v147 += 2;
            --v149;
          }

          while (v149);
        }

        v153 = 8 * (v146 / 8);
        if (v153 < v146)
        {
          v154 = *v145;
          v155 = *(v144 + 8 * v26);
          v156 = v153;
          v157 = v146 - v153;
          if (v157 <= 7)
          {
            goto LABEL_121;
          }

          v158 = v155 + 4 * v153;
          v159 = &v154[v153 / 4u];
          if (v158 < v154->u64 + 4 * v146 && v159 < v155 + 4 * v146)
          {
            goto LABEL_121;
          }

          v161 = v157 - (v146 & 7) + v153;
          v162 = v153 + (v146 & 7) - v146;
          v163 = (v159 + 16);
          v164 = (v158 + 16);
          do
          {
            v165 = vaddq_f32(*v164, *v163);
            v164[-1] = vaddq_f32(v164[-1], v163[-1]);
            *v164 = v165;
            v163 += 2;
            v164 += 2;
            v162 += 8;
          }

          while (v162);
          v156 = v161;
          if ((v146 & 7) != 0)
          {
LABEL_121:
            v166 = v146 - v156;
            v167 = (v155 + 4 * v156);
            v168 = &v154->f32[v156];
            do
            {
              v169 = *v168++;
              *v167 = *v167 + v169;
              ++v167;
              --v166;
            }

            while (v166);
          }
        }
      }

      cblas_sgemv_NEWLAPACK();
      v170 = *(a1 + 424);
      v171 = *(a1 + 52);
      __C = v11;
      __B[0] = -v11;
      vDSP_vclip(*(v170 + v21), 1, __B, &__C, *(v170 + v21), 1, v171);
      sub_19D30A3C0((*(a1 + 496) + v21), (*(a1 + 424) + v21), *(a1 + 52), *(a1 + 528));
      bzero(*(*(a1 + 112) + v21), 4 * *(a1 + 52));
      v172 = *(a1 + 112);
      v173 = *(a1 + 448);
      v174 = *(a1 + 52);
      if (v174 < 1)
      {
        goto LABEL_128;
      }

      v175 = *(*(a1 + 496) + 8 * v26);
      v176 = *(v173 + 8 * v26);
      v177 = *(v172 + 8 * v26);
      if (v174 >= 8)
      {
        v178 = 0;
        v221 = v177 + 4 * v174;
        v223 = v177 < v176->u64 + 4 * v174 && v176 < v221;
        if ((v175 >= v221 || v177 >= v175->u64 + 4 * v174) && !v223)
        {
          v178 = v174 & 0x7FFFFFF8;
          v225 = v175 + 1;
          v226 = v176 + 1;
          v227 = (v177 + 16);
          v228 = v178;
          do
          {
            v229 = vaddq_f32(vmlsq_f32(*v225, *v225, *v226), *v227);
            v227[-1] = vaddq_f32(vmlsq_f32(v225[-1], v225[-1], v226[-1]), v227[-1]);
            *v227 = v229;
            v225 += 2;
            v226 += 2;
            v227 += 2;
            v228 -= 8;
          }

          while (v228);
          if (v178 == v174)
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
        v178 = 0;
      }

      v179 = v174 - v178;
      v180 = v178;
      v181 = (v177 + v180 * 4);
      v182 = &v176->f32[v180];
      v183 = &v175->f32[v180];
      do
      {
        v184 = *v183++;
        v185 = v184;
        v186 = *v182++;
        *v181 = (v185 - (v186 * v185)) + *v181;
        ++v181;
        --v179;
      }

      while (v179);
LABEL_128:
      if (v61)
      {
        v187 = v174;
        if (v174 >= 8)
        {
          v188 = *(v172 + 8 * v26);
          v189 = *(v172 + 8 * v58);
          v190 = v174 / 8;
          v191 = *(v173 + 8 * v26);
          do
          {
            v193 = *v191;
            v192 = v191[1];
            v191 += 2;
            v195 = *v189;
            v194 = v189[1];
            v189 += 2;
            v196 = vmlaq_f32(v188[1], v194, v192);
            *v188 = vmlaq_f32(*v188, v195, v193);
            v188[1] = v196;
            v188 += 2;
            --v190;
          }

          while (v190);
        }

        v197 = 8 * (v174 / 8);
        if (v197 < v174)
        {
          v198 = *(v173 + 8 * v26);
          v199 = *(v172 + 8 * v58);
          v200 = *(v172 + 8 * v26);
          v201 = v197;
          v202 = v187 - v197;
          if (v202 <= 7)
          {
            goto LABEL_149;
          }

          v203 = 4 * v197;
          v204 = v200 + 4 * v187;
          v205 = v200 + v203 >= (v199 + 4 * v187) || v199 + 4 * v197 >= v204;
          v206 = !v205;
          if (v198 + v203 < v204 && v200 + v203 < (v198 + 4 * v187))
          {
            goto LABEL_149;
          }

          if (v206)
          {
            goto LABEL_149;
          }

          v208 = v202 - (v187 & 7) + v201;
          v209 = v201 + (v187 & 7) - v187;
          v210 = (v200 + v203 + 16);
          v211 = (v198 + v203 + 16);
          v212 = (v199 + v203 + 16);
          do
          {
            v213 = vmlaq_f32(*v210, *v212, *v211);
            v210[-1] = vmlaq_f32(v210[-1], v212[-1], v211[-1]);
            *v210 = v213;
            v210 += 2;
            v211 += 2;
            v212 += 2;
            v209 += 8;
          }

          while (v209);
          v201 = v208;
          if ((v187 & 7) != 0)
          {
LABEL_149:
            v214 = v187 - v201;
            v215 = (v200 + 4 * v201);
            v216 = (v199 + 4 * v201);
            v217 = (v198 + 4 * v201);
            do
            {
              v218 = *v217++;
              v219 = v218;
              v220 = *v216++;
              *v215 = *v215 + (v220 * v219);
              ++v215;
              --v214;
            }

            while (v214);
          }
        }
      }

      v12 = v246 + 1;
      v9 = v239;
    }

    while (v246 + 1 != v239);
  }
}

void sub_19D355EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 136);
  if (v30)
  {
    *(v28 - 128) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t sub_19D355F58(uint64_t a1, int a2, float32x4_t **a3, float32x4_t **a4, float32x4_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, char a11)
{
  if (a2)
  {
    sub_19D41C548(545);
  }

  if (!*(a1 + 552))
  {
    operator new[]();
  }

  cblas_sgemv_NEWLAPACK();
  if (!a11)
  {
    if (a9 < 1)
    {
      return result;
    }

    v38 = 0;
    v39 = *(a1 + 552);
    v40 = *a3;
    if (a9 < 8)
    {
      goto LABEL_24;
    }

    if ((v40 - v39) < 0x20)
    {
      goto LABEL_24;
    }

    v38 = a9 & 0x7FFFFFF8;
    v41 = v39 + 1;
    v42 = v40 + 1;
    v43 = v38;
    do
    {
      result = v41[-1];
      v44 = *v41;
      v42[-1] = result;
      *v42 = v44;
      v41 += 2;
      v42 += 2;
      v43 -= 8;
    }

    while (v43);
    if (v38 != a9)
    {
LABEL_24:
      v45 = a9 - v38;
      v46 = 4 * v38;
      v47 = (v40 + v46);
      v48 = (v39 + v46);
      do
      {
        v49 = *v48++;
        *v47++ = v49;
        --v45;
      }

      while (v45);
    }

    v50 = *a4;
    if (a9 >= 8 && (v51 = (v39 + 4 * a9), (v50 - v51) >= 0x20))
    {
      v52 = a9 & 0x7FFFFFF8;
      v142 = v51 + 1;
      v143 = v50 + 1;
      v144 = v52;
      do
      {
        result = v142[-1];
        v145 = *v142;
        v143[-1] = result;
        *v143 = v145;
        v142 += 2;
        v143 += 2;
        v144 -= 8;
      }

      while (v144);
      if (v52 == a9)
      {
LABEL_31:
        v58 = (2 * a9);
        v59 = *a5;
        if (a9 >= 8 && (v60 = (v39 + 4 * v58), (v59 - v60) >= 0x20))
        {
          v61 = a9 & 0x7FFFFFF8;
          v146 = v60 + 1;
          v147 = v59 + 1;
          v148 = v61;
          do
          {
            result = v146[-1];
            v149 = *v146;
            v147[-1] = result;
            *v147 = v149;
            v146 += 2;
            v147 += 2;
            v148 -= 8;
          }

          while (v148);
          if (v61 == a9)
          {
            return result;
          }
        }

        else
        {
          v61 = 0;
        }

        v62 = a9 - v61;
        v63 = v61;
        v64 = (v59 + v63 * 4);
        v65 = &v39->i32[v58 + v63];
        do
        {
          v66 = *v65++;
          result.i32[0] = v66;
          *v64++ = v66;
          --v62;
        }

        while (v62);
        return result;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = a9 - v52;
    v54 = v52;
    v55 = (v50 + v54 * 4);
    v56 = &v39->i32[a9 + v54];
    do
    {
      v57 = *v56++;
      *v55++ = v57;
      --v53;
    }

    while (v53);
    goto LABEL_31;
  }

  v16 = (a1 + 536);
  if (a9 <= 0)
  {
    sub_19D31ED5C((a1 + 536), "outvec0/gzx", a9);
    v36 = 0;
    v29 = -(-a9 >> 3);
    v37 = -8 * (-a9 >> 3);
    if (v37 >= a9)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v17 = 0;
    v18 = *(a1 + 552);
    v19 = *(a1 + 536);
    if (a9 < 8)
    {
      goto LABEL_11;
    }

    if ((v19 - v18) < 0x20)
    {
      goto LABEL_11;
    }

    v17 = a9 & 0x7FFFFFF8;
    v20 = (v18 + 16);
    v21 = (v19 + 16);
    v22 = v17;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 8;
    }

    while (v22);
    if (v17 != a9)
    {
LABEL_11:
      v24 = a9 - v17;
      v25 = 4 * v17;
      v26 = (v19 + v25);
      v27 = (v18 + v25);
      do
      {
        v28 = *v27++;
        *v26++ = v28;
        --v24;
      }

      while (v24);
    }

    sub_19D31ED5C((a1 + 536), "outvec0/gzx", a9);
    v29 = a9 >> 3;
    if (a9 < 8)
    {
      v36 = 0;
      v37 = 8 * v29;
      if ((8 * v29) >= a9)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v30 = *a3;
      v31 = *v16;
      v32 = a9 >> 3;
      do
      {
        v33 = *v31;
        v34 = v31[1];
        v31 += 2;
        v35 = vaddq_f32(v30[1], v34);
        *v30 = vaddq_f32(*v30, v33);
        v30[1] = v35;
        v30 += 2;
        --v32;
      }

      while (v32);
      v36 = 1;
      v37 = 8 * v29;
      if ((8 * v29) >= a9)
      {
        goto LABEL_48;
      }
    }
  }

  v67 = *v16;
  v68 = *a3;
  v69 = v37;
  v70 = a9 - v37;
  if (v70 <= 7)
  {
    goto LABEL_46;
  }

  v71 = 4 * v37;
  if (v68 + v71 < &v67->f32[a9] && v67 + v71 < &v68->f32[a9])
  {
    goto LABEL_46;
  }

  v72 = v70 - (a9 & 7) + v37;
  v73 = v37 + (a9 & 7) - a9;
  v74 = v71 + 16;
  v75 = (v67 + v71 + 16);
  v76 = (v68 + v74);
  do
  {
    v77 = vaddq_f32(*v76, *v75);
    v76[-1] = vaddq_f32(v76[-1], v75[-1]);
    *v76 = v77;
    v75 += 2;
    v76 += 2;
    v73 += 8;
  }

  while (v73);
  v69 = v72;
  if ((a9 & 7) != 0)
  {
LABEL_46:
    v78 = a9 - v69;
    v79 = &v68->f32[v69];
    v80 = &v67->f32[v69];
    do
    {
      v81 = *v80++;
      *v79 = *v79 + v81;
      ++v79;
      --v78;
    }

    while (v78);
  }

LABEL_48:
  if (a9 < 1)
  {
    goto LABEL_54;
  }

  v82 = *(a1 + 552);
  v83 = *(a1 + 536);
  if (a9 < 8 || (v84 = 4 * a9 + v82, (v83 - v84) < 0x20))
  {
    v85 = 0;
LABEL_52:
    v86 = a9 - v85;
    v87 = 4 * v85;
    v88 = (v83 + v87);
    v89 = (v82 + v87 + 4 * a9);
    do
    {
      v90 = *v89++;
      *v88++ = v90;
      --v86;
    }

    while (v86);
    goto LABEL_54;
  }

  v85 = a9 & 0x7FFFFFF8;
  v150 = (v84 + 16);
  v151 = (v83 + 16);
  v152 = v85;
  do
  {
    v153 = *v150;
    *(v151 - 1) = *(v150 - 1);
    *v151 = v153;
    v150 += 2;
    v151 += 2;
    v152 -= 8;
  }

  while (v152);
  if (v85 != a9)
  {
    goto LABEL_52;
  }

LABEL_54:
  sub_19D31ED5C((a1 + 536), "outvec1/grx", a9);
  if (v36)
  {
    v91 = *a4;
    v92 = *v16;
    v93 = v29;
    do
    {
      v94 = *v92;
      v95 = v92[1];
      v92 += 2;
      v96 = vaddq_f32(v91[1], v95);
      *v91 = vaddq_f32(*v91, v94);
      v91[1] = v96;
      v91 += 2;
      --v93;
    }

    while (v93);
  }

  if (v37 < a9)
  {
    v97 = *v16;
    v98 = *a4;
    v99 = v37;
    v100 = a9 - v37;
    if (v100 <= 7)
    {
      goto LABEL_64;
    }

    v101 = 4 * v37;
    if (v98 + v101 < &v97->f32[a9] && v97 + v101 < &v98->f32[a9])
    {
      goto LABEL_64;
    }

    v102 = v100 - (a9 & 7) + v37;
    v103 = v37 + (a9 & 7) - a9;
    v104 = v101 + 16;
    v105 = (v97 + v101 + 16);
    v106 = (v98 + v104);
    do
    {
      v107 = vaddq_f32(*v106, *v105);
      v106[-1] = vaddq_f32(v106[-1], v105[-1]);
      *v106 = v107;
      v105 += 2;
      v106 += 2;
      v103 += 8;
    }

    while (v103);
    v99 = v102;
    if ((a9 & 7) != 0)
    {
LABEL_64:
      v108 = a9 - v99;
      v109 = &v98->f32[v99];
      v110 = &v97->f32[v99];
      do
      {
        v111 = *v110++;
        *v109 = *v109 + v111;
        ++v109;
        --v108;
      }

      while (v108);
    }
  }

  if (a9 < 1)
  {
    goto LABEL_72;
  }

  v112 = (2 * a9);
  v113 = *(a1 + 552);
  v114 = *(a1 + 536);
  if (a9 >= 8 && (v115 = 4 * v112 + v113, (v114 - v115) >= 0x20))
  {
    v116 = a9 & 0x7FFFFFF8;
    v154 = (v115 + 16);
    v155 = (v114 + 16);
    v156 = v116;
    do
    {
      v157 = *v154;
      *(v155 - 1) = *(v154 - 1);
      *v155 = v157;
      v154 += 2;
      v155 += 2;
      v156 -= 8;
    }

    while (v156);
    if (v116 == a9)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v116 = 0;
  }

  v117 = a9 - v116;
  v118 = 4 * v116;
  v119 = (v114 + v118);
  v120 = (v113 + v118 + 4 * v112);
  do
  {
    v121 = *v120++;
    *v119++ = v121;
    --v117;
  }

  while (v117);
LABEL_72:
  sub_19D31ED5C((a1 + 536), "outvec2/gox", a9);
  if (v36)
  {
    v122 = *a5;
    v123 = *v16;
    do
    {
      v124 = *v123;
      v125 = v123[1];
      v123 += 2;
      v126 = vaddq_f32(v122[1], v125);
      result = vaddq_f32(*v122, v124);
      *v122 = result;
      v122[1] = v126;
      v122 += 2;
      --v29;
    }

    while (v29);
  }

  if (v37 < a9)
  {
    v127 = *v16;
    v128 = *a5;
    v129 = v37;
    v130 = a9 - v37;
    if (v130 <= 7)
    {
      goto LABEL_82;
    }

    v131 = 4 * v37;
    if (v128 + v131 < &v127->f32[a9] && v127 + v131 < &v128->f32[a9])
    {
      goto LABEL_82;
    }

    v132 = v130 - (a9 & 7) + v37;
    v133 = v37 + (a9 & 7) - a9;
    v134 = v131 + 16;
    v135 = (v127 + v131 + 16);
    v136 = (v128 + v134);
    do
    {
      result = vaddq_f32(v136[-1], v135[-1]);
      v137 = vaddq_f32(*v136, *v135);
      v136[-1] = result;
      *v136 = v137;
      v135 += 2;
      v136 += 2;
      v133 += 8;
    }

    while (v133);
    v129 = v132;
    if ((a9 & 7) != 0)
    {
LABEL_82:
      v138 = a9 - v129;
      v139 = &v128->f32[v129];
      v140 = &v127->f32[v129];
      do
      {
        v141 = *v140++;
        result.f32[0] = *v139 + v141;
        *v139++ = result.f32[0];
        --v138;
      }

      while (v138);
    }
  }

  return result;
}

void sub_19D3566EC(uint64_t a1, int a2, void **a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, char a9)
{
  if (a9)
  {
    if (a2)
    {
      v12 = a6[1];
      if (v12 != *a6)
      {
        if (((v12 - *a6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_31;
      }

      if (a7 >= 1)
      {
        bzero(*(a1 + 536), 4 * a7);
      }
    }

    else
    {
      cblas_sgemv_NEWLAPACK();
    }

    v14 = a7 / 8;
    if (a7 >= 8)
    {
      v15 = *a3;
      v16 = *(a1 + 536);
      v17 = a7 / 8;
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
    }

    v21 = 8 * v14;
    if (8 * v14 < a7)
    {
      v22 = *(a1 + 536);
      v23 = *a3;
      v24 = v21;
      if ((a7 - v21) <= 7)
      {
        goto LABEL_26;
      }

      v25 = 4 * v21;
      if (&v23[v25] < v22 + 4 * a7 && v22 + v25 < &v23[4 * a7])
      {
        goto LABEL_26;
      }

      v26 = v21 + (a7 & 7) - a7;
      v27 = v25 + 16;
      v28 = (v22 + v25 + 16);
      v29 = &v23[v27];
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
        v32 = &v23[4 * v24];
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
  }

  else if (a2)
  {
    v13 = a6[1];
    if (v13 != *a6)
    {
      if (((v13 - *a6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_31:
      sub_19D2AE2B4();
    }

    if (a7 >= 1)
    {
      bzero(*a3, 4 * a7);
    }
  }

  else
  {
    cblas_sgemv_NEWLAPACK();
  }
}

void *sub_19D356CB0(void *a1)
{
  *a1 = &unk_1F10B8F70;
  sub_19D3533EC(a1);
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