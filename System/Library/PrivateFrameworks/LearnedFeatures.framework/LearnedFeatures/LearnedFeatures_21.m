void sub_255BF46B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_255BF46D4(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v46 = *a2;
    v47 = *(a2 + 1);
    v48 = *(a2 + 2);
    v49 = *(a2 + 6);
    sub_255BE9608(v50, (a2 + 14));
    *a1 = v46;
    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v4 = v50[0];
    *(a1 + 48) = v49;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v50[2];
    *(a1 + 64) = v50[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = a2[4];
    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (v11)
      {
        v18 = 0;
        v19 = v3 + 2;
        v20 = v14 + 2;
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v11;
          do
          {
            *(v22 - 2) = *(v21 - 2);
            *(v22 - 1) = *(v21 - 1);
            *v22 = *v21;
            v22 += v13;
            v21 += v12;
            --v23;
          }

          while (v23);
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v14 += v17;
          v3 += v16;
          ++v18;
          v19 += v16;
          v20 += v17;
        }

        while (v18 != v15);
        goto LABEL_24;
      }

      do
      {
        *v3 = *v14;
        v3[1] = v14[1];
        v3[2] = v14[2];
        v14 += v17;
        v3 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v11)
    {
LABEL_25:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      return a1;
    }

    do
    {
LABEL_24:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v14 += v12;
      v3 += v13;
      --v11;
    }

    while (v11);
    goto LABEL_25;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 != v25 || v24 != v26)
  {
    if (!v26)
    {
      return a1;
    }

    v31 = a2[1];
    if (!v31)
    {
      return a1;
    }

    v32 = a2[2];
    if (!v32)
    {
      return a1;
    }

    v33 = v31 - 1;
    v34 = *(a2 + 8);
    v35 = v32 - 1;
    if (v32 != 1)
    {
      v36 = *(a1 + 20);
      v45 = a2[5];
      if (v31 == 1)
      {
        do
        {
          memmove(v3, v34, v26);
          v34 += v45;
          v3 += v36;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = 0;
        v43 = v32 - 1;
        v44 = v31 - 1;
        v42 = *(a1 + 20);
        do
        {
          v38 = v34;
          v39 = v3;
          do
          {
            memmove(v39, v38, v26);
            v38 += v24;
            v39 += v25;
            --v33;
          }

          while (v33);
          memmove(v39, v38, v26);
          v34 += v45;
          v3 += v42;
          ++v37;
          v33 = v44;
        }

        while (v37 != v43);
      }
    }

    for (; v33; --v33)
    {
      memmove(v3, v34, v26);
      v34 += v24;
      v3 += v25;
    }

LABEL_53:
    memmove(v3, v34, v26);
    return a1;
  }

  v27 = a2[5];
  v28 = *(a1 + 20);
  v29 = a2[1];
  v26 = v29 * v24;
  if (v27 != v28 || v27 != v26)
  {
    if (!v24)
    {
      return a1;
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[2];
    if (!v40)
    {
      return a1;
    }

    v34 = *(a2 + 8);
    v41 = v40 - 1;
    if (v40 != 1)
    {
      if (!v26)
      {
        return a1;
      }

      do
      {
        memmove(v3, v34, v26);
        v34 += v27;
        v3 += v28;
        --v41;
      }

      while (v41);
    }

    if (!v26)
    {
      return a1;
    }

    goto LABEL_53;
  }

  v30 = a2[2] * v27;
  if (v30)
  {
    memmove(*(a1 + 64), *(a2 + 8), v30);
  }

  return a1;
}

uint64_t sub_255BF4A7C(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_255BE9CD0(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 2 * a2[4];
    v14 = 2 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 2 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 2 * v27;
            v49 = 2 * v28;
            do
            {
              memmove(v3, v46, 2 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 2 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 2 * v26;
        v37 = 2 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 2 * v40;
            v51 = 2 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 2 * v24;
            v54 = 2 * v39;
            v55 = 2 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 2 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_255BF4E80(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v200 = *a2;
    v201 = *(a2 + 1);
    v202 = *(a2 + 2);
    v203 = *(a2 + 6);
    sub_255BEA5D4(v204, (a2 + 14));
    *a1 = v200;
    *(a1 + 16) = v201;
    *(a1 + 32) = v202;
    *(a1 + 48) = v203;
    *(a1 + 80) = v205;
    *(a1 + 96) = v206;
    v4 = *(a1 + 64);
    if (!v4)
    {
      *(a1 + 56) = v204[0];
      goto LABEL_22;
    }

    if (*(a1 + 84))
    {
      v5 = *(a1 + 80) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 88);
    if (v5)
    {
      v6 = 0;
    }

    if (v6 * (*(a1 + 100) >> 1) != -1)
    {
      *(a1 + 56) = v204[0];
LABEL_21:
      free(v4);
      goto LABEL_22;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_20;
      }

      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_214;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
LABEL_20:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v4 = *(a1 + 64);
      *(a1 + 56) = v204[0];
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 = v204[2];
      *(a1 + 64) = v204[1];
      *(a1 + 72) = v9;
      return a1;
    }

LABEL_214:
    abort();
  }

  if (a2[3] == 1 && *(a1 + 12) == 1)
  {
    v27 = a2[4];
    v28 = *(a1 + 16);
    v29 = *a2;
    if (v27 == v28 && v27 == v29)
    {
      v30 = a2[5];
      v31 = *(a1 + 20);
      v32 = a2[1];
      v33 = v32 * v27;
      if (v30 == v31 && v30 == v33)
      {
        v34 = a2[2] * v30;
        if (!v34)
        {
          return a1;
        }

        v35 = *(a2 + 8);
        v36 = (v34 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v36 < 3)
        {
          v37 = *(a2 + 8);
          goto LABEL_209;
        }

        v37 = *(a2 + 8);
        if (v3 - v35 < 0x20)
        {
          goto LABEL_209;
        }

        v38 = v36 + 1;
        if (v36 >= 0xF)
        {
          v39 = v38 & 0xFFFFFFFFFFFFFFF0;
          v166 = (v35 + 16);
          v167 = v3 + 8;
          v168 = v38 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v169 = *v166;
            *(v167 - 1) = *(v166 - 1);
            *v167 = v169;
            v166 += 2;
            v167 += 2;
            v168 -= 16;
          }

          while (v168);
          if (v38 == v39)
          {
            return a1;
          }

          if ((v38 & 0xC) == 0)
          {
            v189 = 2 * v39;
            v37 = (v35 + v189);
            v3 = (v3 + v189);
            goto LABEL_209;
          }
        }

        else
        {
          v39 = 0;
        }

        v170 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        v171 = &v3[v170];
        v37 = (v35 + v170 * 2);
        v172 = (v35 + 2 * v39);
        v173 = &v3[v39];
        v174 = v39 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v175 = *v172++;
          *v173++ = v175;
          v174 += 4;
        }

        while (v174);
        v3 = v171;
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_209:
          v190 = *v37++;
          *v3++ = v190;
        }

        while (v37 != (v35 + 2 * v34));
        return a1;
      }

      if (!v27)
      {
        return a1;
      }

      if (!v32)
      {
        return a1;
      }

      v86 = a2[2];
      if (!v86)
      {
        return a1;
      }

      v87 = *(a2 + 8);
      if (v86 == 1)
      {
LABEL_96:
        if (!v33)
        {
          return a1;
        }

        v88 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v88 < 3 || v3 - v87 < 0x20)
        {
          v176 = v3;
          v177 = v87;
          goto LABEL_212;
        }

        v89 = v88 + 1;
        if (v88 >= 0xF)
        {
          v90 = v89 & 0xFFFFFFFFFFFFFFF0;
          v178 = (v87 + 16);
          v179 = v3 + 8;
          v180 = v89 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v181 = *v178;
            *(v179 - 1) = *(v178 - 1);
            *v179 = v181;
            v178 += 2;
            v179 += 2;
            v180 -= 16;
          }

          while (v180);
          if (v89 == v90)
          {
            return a1;
          }

          if ((v89 & 0xC) == 0)
          {
            v191 = v90;
            v177 = (v87 + v191 * 2);
            v176 = &v3[v191];
            goto LABEL_212;
          }
        }

        else
        {
          v90 = 0;
        }

        v182 = v89 & 0xFFFFFFFFFFFFFFFCLL;
        v176 = &v3[v182];
        v177 = (v87 + v182 * 2);
        v183 = (v87 + 2 * v90);
        v184 = &v3[v90];
        v185 = v90 - (v89 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v186 = *v183++;
          *v184++ = v186;
          v185 += 4;
        }

        while (v185);
        if (v89 == (v89 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_212:
          v192 = *v177++;
          *v176++ = v192;
        }

        while (v177 != (v87 + 2 * v33));
        return a1;
      }

      if (!v33)
      {
        return a1;
      }

      v92 = 0;
      v93 = v86 - 2;
      v94 = &v3[v33 + v31 * (v86 - 2)];
      v95 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v96 = v95 + 1;
      v97 = v3 >= v87 + 2 * (v33 + v30 * v93) || v87 >= v94;
      v98 = v96 & 0xFFFFFFFFFFFFFFF0;
      v99 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v100 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v101 = !v97;
      v102 = 2 * v30;
      v103 = 2 * v31;
      while (1)
      {
        v104 = v3;
        v105 = v87;
        if (!((v95 < 3) | v101 & 1))
        {
          if (v95 < 0xF)
          {
            v106 = 0;
LABEL_122:
            v104 = &v3[v100];
            v105 = (v87 + v100 * 2);
            v111 = v106;
            v112 = v106 - v99;
            do
            {
              *&v3[v111] = *(v87 + v111 * 2);
              v111 += 4;
              v112 += 4;
            }

            while (v112);
            if (v96 == v99)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          v107 = 0;
          v108 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v109 = &v3[v107];
            v110 = *(v87 + v107 * 2 + 16);
            *v109 = *(v87 + v107 * 2);
            v109[1] = v110;
            v107 += 16;
            v108 -= 16;
          }

          while (v108);
          if (v96 == (v96 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_114;
          }

          v106 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) != 0)
          {
            goto LABEL_122;
          }

          v105 = (v87 + v98 * 2);
          v104 = &v3[v98];
        }

        do
        {
LABEL_127:
          v113 = *v105++;
          *v104++ = v113;
        }

        while (v105 != (v87 + 2 * v33));
LABEL_114:
        v87 += v102;
        v3 = (v3 + v103);
        v5 = v92++ == v93;
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[1];
    if (!v40)
    {
      return a1;
    }

    v41 = a2[2];
    if (!v41)
    {
      return a1;
    }

    v42 = v40 - 1;
    v43 = *(a2 + 8);
    v44 = 2 * v28;
    v45 = v41 - 1;
    v194 = *(a1 + 16);
    v195 = a2[4];
    v193 = a2[1];
    if (v41 != 1)
    {
      v46 = *(a1 + 20);
      v47 = a2[5];
      if (v40 != 1)
      {
        v48 = 0;
        v49 = 2 * v27;
        v199 = &v3[v44 / 2] - v43 + -2 * v27;
        v198 = 2 * (v46 - v47);
        v196 = v44 - 2 * v27;
        v50 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v51 = v50 + 1;
        v52 = 2 * v46;
        v53 = 2 * v47;
        v197 = &v3[v29 + v28 * (v40 - 2)];
        v54 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
        v55 = v54;
        v56 = (v50 + 1) & 0xC;
        v57 = (v50 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v58 = v57;
        v59 = v43 + 2 * (v29 + v27 * (v40 - 2));
        while (1)
        {
          v60 = 0;
          v62 = v3 < v59 + v53 * v48 && v43 < v197 + v52 * v48;
          v63 = v3;
          v64 = v43;
          do
          {
            v65 = v60;
            v66 = v63;
            v67 = v64;
            if (v50 < 3 || v62)
            {
              goto LABEL_74;
            }

            if (v50 >= 0xF)
            {
              v69 = 0;
              v70 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v71 = &v63[v69];
                v72 = *&v64[v69 + 8];
                *v71 = *&v64[v69];
                v71[1] = v72;
                v69 += 16;
                v70 -= 16;
              }

              while (v70);
              if (v51 == v54)
              {
                goto LABEL_61;
              }

              v68 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v67 = &v64[v55];
                v66 = &v63[v55];
                do
                {
LABEL_74:
                  v75 = *v67++;
                  *v66++ = v75;
                }

                while (v67 != &v64[v29]);
                goto LABEL_61;
              }
            }

            else
            {
              v68 = 0;
            }

            v66 = &v63[v58];
            v67 = &v64[v58];
            v73 = v68;
            v74 = v68 - v57;
            do
            {
              *&v63[v73] = *&v64[v73];
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            if (v51 != v57)
            {
              goto LABEL_74;
            }

LABEL_61:
            v64 = (v64 + v49);
            v63 = (v63 + v44);
            v60 = v65 + 1;
          }

          while (v65 + 1 != v42);
          if (v50 < 3 || (v199 + v198 * v48 + v196 * v65) < 0x20)
          {
            v76 = v63;
            v77 = v64;
            goto LABEL_79;
          }

          if (v50 >= 0xF)
          {
            v80 = 0;
            v81 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v82 = &v63[v80];
              v83 = *&v64[v80 + 8];
              *v82 = *&v64[v80];
              v82[1] = v83;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            if (v51 != v54)
            {
              v79 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v77 = &v64[v55];
                v76 = &v63[v55];
                goto LABEL_79;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v79 = 0;
LABEL_87:
            v76 = &v63[v58];
            v77 = &v64[v58];
            v84 = v79;
            v85 = v79 - v57;
            do
            {
              *&v63[v84] = *&v64[v84];
              v84 += 4;
              v85 += 4;
            }

            while (v85);
            if (v51 != v57)
            {
              do
              {
LABEL_79:
                v78 = *v77++;
                *v76++ = v78;
              }

              while (v77 != &v64[v29]);
            }
          }

          v43 += v53;
          v3 = (v3 + v52);
          if (++v48 == v45)
          {
            goto LABEL_151;
          }
        }
      }

      v114 = 0;
      v115 = v41 - 2;
      v116 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v117 = v116 + 1;
      v118 = v3 >= v43 + 2 * (v29 + v47 * v115) || v43 >= &v3[v29 + v46 * v115];
      v119 = v117 & 0xFFFFFFFFFFFFFFF0;
      v120 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v121 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v122 = !v118;
      v123 = 2 * v47;
      v124 = 2 * v46;
      do
      {
        v125 = v3;
        v126 = v43;
        if (!((v116 < 3) | v122 & 1))
        {
          if (v116 < 0xF)
          {
            v127 = 0;
LABEL_144:
            v125 = &v3[v121];
            v126 = (v43 + v121 * 2);
            v132 = v127;
            v133 = v127 - v120;
            do
            {
              *&v3[v132] = *(v43 + v132 * 2);
              v132 += 4;
              v133 += 4;
            }

            while (v133);
            if (v117 == v120)
            {
              goto LABEL_136;
            }

            goto LABEL_149;
          }

          v128 = 0;
          v129 = v117 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v130 = &v3[v128];
            v131 = *(v43 + v128 * 2 + 16);
            *v130 = *(v43 + v128 * 2);
            v130[1] = v131;
            v128 += 16;
            v129 -= 16;
          }

          while (v129);
          if (v117 == (v117 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_136;
          }

          v127 = v117 & 0xFFFFFFFFFFFFFFF0;
          if ((v117 & 0xC) != 0)
          {
            goto LABEL_144;
          }

          v126 = (v43 + v119 * 2);
          v125 = &v3[v119];
        }

        do
        {
LABEL_149:
          v134 = *v126++;
          *v125++ = v134;
        }

        while (v126 != (v43 + 2 * v29));
LABEL_136:
        v43 += v123;
        v3 = (v3 + v124);
        ++v114;
      }

      while (v114 != v45);
    }

LABEL_151:
    if (v42)
    {
      v135 = 0;
      v136 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v137 = v136 + 1;
      v139 = v3 < v43 + 2 * (v29 + v195 * (v193 - 2)) && v43 < &v3[v29 + v194 * (v193 - 2)];
      v140 = v137 & 0xFFFFFFFFFFFFFFF0;
      v141 = v137 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v142 = v3;
        v143 = v43;
        if (v136 >= 3 && !v139)
        {
          if (v136 < 0xF)
          {
            v144 = 0;
LABEL_167:
            v142 = &v3[v141];
            v143 = (v43 + v141 * 2);
            v149 = v144;
            v150 = v144 - (v137 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v3[v149] = *(v43 + v149 * 2);
              v149 += 4;
              v150 += 4;
            }

            while (v150);
            if (v137 == (v137 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          v145 = 0;
          v146 = v137 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v147 = &v3[v145];
            v148 = *(v43 + v145 * 2 + 16);
            *v147 = *(v43 + v145 * 2);
            v147[1] = v148;
            v145 += 16;
            v146 -= 16;
          }

          while (v146);
          if (v137 == (v137 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_159;
          }

          v144 = v137 & 0xFFFFFFFFFFFFFFF0;
          if ((v137 & 0xC) != 0)
          {
            goto LABEL_167;
          }

          v143 = (v43 + v140 * 2);
          v142 = &v3[v140];
        }

        do
        {
LABEL_172:
          v151 = *v143++;
          *v142++ = v151;
        }

        while (v143 != (v43 + 2 * v29));
LABEL_159:
        v43 += 2 * v195;
        v3 = (v3 + v44);
        ++v135;
      }

      while (v135 != v42);
    }

    v152 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v152 < 3 || v3 - v43 < 0x20)
    {
      v155 = v3;
      v156 = v43;
      goto LABEL_206;
    }

    v153 = v152 + 1;
    if (v152 >= 0xF)
    {
      v154 = v153 & 0xFFFFFFFFFFFFFFF0;
      v157 = (v43 + 16);
      v158 = v3 + 8;
      v159 = v153 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v160 = *v157;
        *(v158 - 1) = *(v157 - 1);
        *v158 = v160;
        v157 += 2;
        v158 += 2;
        v159 -= 16;
      }

      while (v159);
      if (v153 == v154)
      {
        return a1;
      }

      if ((v153 & 0xC) == 0)
      {
        v187 = v154;
        v156 = (v43 + v187 * 2);
        v155 = &v3[v187];
        goto LABEL_206;
      }
    }

    else
    {
      v154 = 0;
    }

    v161 = v153 & 0xFFFFFFFFFFFFFFFCLL;
    v155 = &v3[v161];
    v156 = (v43 + v161 * 2);
    v162 = (v43 + 2 * v154);
    v163 = &v3[v154];
    v164 = v154 - (v153 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    if (v153 == (v153 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

    do
    {
LABEL_206:
      v188 = *v156++;
      *v155++ = v188;
    }

    while (v156 != (v43 + 2 * v29));
    return a1;
  }

  if (*a2)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2[2];
      if (v13)
      {
        v14 = v12 - 1;
        v15 = *(a2 + 8);
        v16 = 2 * a2[4];
        v17 = 2 * *(a1 + 16);
        v18 = v13 - 1;
        if (v13 != 1)
        {
          v19 = *(a1 + 20);
          v20 = a2[5];
          if (v14)
          {
            v21 = 0;
            v22 = v3 + 2;
            v23 = v15 + 2;
            do
            {
              v24 = v23;
              v25 = v22;
              v26 = v14;
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25 = (v25 + v17);
                v24 = (v24 + v16);
                --v26;
              }

              while (v26);
              *(v25 - 2) = *(v24 - 2);
              *(v25 - 1) = *(v24 - 1);
              *v25 = *v24;
              v15 += v20;
              v3 += v19;
              ++v21;
              v22 += v19;
              v23 += v20;
            }

            while (v21 != v18);
            goto LABEL_104;
          }

          v91 = 2 * v19;
          do
          {
            *v3 = *v15;
            v3[1] = v15[1];
            v3[2] = v15[2];
            v15 += v20;
            v3 = (v3 + v91);
            --v18;
          }

          while (v18);
        }

        if (!v14)
        {
LABEL_105:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          return a1;
        }

        do
        {
LABEL_104:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v15 = (v15 + v16);
          v3 = (v3 + v17);
          --v14;
        }

        while (v14);
        goto LABEL_105;
      }
    }
  }

  return a1;
}

void sub_255BF5A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BD21A8(va);
  _Unwind_Resume(a1);
}

void sub_255BF5AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BD21A8(va);
  _Unwind_Resume(a1);
}

__int16 sub_255BF5AB4@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a1 + 20) == 1 && *(a2 + 20) == 1;
  if (v2)
  {
    v21 = *(a1 + 24);
    v22 = *(a2 + 24);
    v23 = *(a1 + 8);
    if (v21 != v22 || v21 != v23)
    {
      v25 = *(a1 + 12);
      v26 = *(a1 + 16);
      if (v23)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v26 == 0)
      {
        return v97;
      }

      v29 = v25 - 1;
      v30 = *a1;
      v31 = *a2;
      v32 = 2 * v22;
      v33 = v26 - 1;
      v201 = *(a2 + 24);
      v202 = *(a1 + 24);
      v200 = *(a1 + 12);
      if (v26 != 1)
      {
        v34 = *(a2 + 28);
        v35 = *(a1 + 28);
        if (v25 != 1)
        {
          v36 = 0;
          v37 = 2 * v21;
          v205 = &v31[v32 / 2] - v30 - 2 * v21;
          v204 = 2 * (v34 - v35);
          v203 = v32 - 2 * v21;
          v38 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v39 = v38 + 1;
          v40 = 2 * v34;
          v41 = 2 * v35;
          v42 = &v31[v23 + v22 * (v25 - 2)];
          v43 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
          v44 = v43;
          v45 = (v38 + 1) & 0xC;
          v46 = (v38 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v47 = v46;
          v48 = &v30[v23 + v21 * (v25 - 2)];
          while (1)
          {
            v49 = 0;
            v51 = v31 < (v48 + v41 * v36) && v30 < (v42 + v40 * v36);
            v52 = v31;
            v53 = v30;
            do
            {
              v54 = v49;
              v55 = v52;
              v56 = v53;
              if (v38 < 3 || v51)
              {
                goto LABEL_54;
              }

              if (v38 >= 0xF)
              {
                v58 = 0;
                v59 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v60 = &v52[v58];
                  v61 = *&v53[v58 + 8];
                  *v60 = *&v53[v58];
                  *(v60 + 1) = v61;
                  v58 += 16;
                  v59 -= 16;
                }

                while (v59);
                if (v39 == v43)
                {
                  goto LABEL_41;
                }

                v57 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v56 = &v53[v44];
                  v55 = &v52[v44];
                  do
                  {
LABEL_54:
                    v64 = *v56++;
                    *v55++ = v64;
                  }

                  while (v56 != &v53[v23]);
                  goto LABEL_41;
                }
              }

              else
              {
                v57 = 0;
              }

              v55 = &v52[v47];
              v56 = &v53[v47];
              v62 = v57;
              v63 = v57 - v46;
              do
              {
                *&v52[v62] = *&v53[v62];
                v62 += 4;
                v63 += 4;
              }

              while (v63);
              if (v39 != v46)
              {
                goto LABEL_54;
              }

LABEL_41:
              v53 = (v53 + v37);
              v52 = (v52 + v32);
              v49 = v54 + 1;
            }

            while (v54 + 1 != v29);
            if (v38 < 3 || (v205 + v204 * v36 + v203 * v54) < 0x20)
            {
              v65 = v52;
              v66 = v53;
              goto LABEL_59;
            }

            if (v38 >= 0xF)
            {
              v70 = 0;
              v71 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v72 = &v52[v70];
                v73 = *&v53[v70 + 8];
                *v72 = *&v53[v70];
                *(v72 + 1) = v73;
                v70 += 16;
                v71 -= 16;
              }

              while (v71);
              if (v39 != v43)
              {
                v69 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v66 = &v53[v44];
                  v65 = &v52[v44];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v69 = 0;
LABEL_68:
              v65 = &v52[v47];
              v66 = &v53[v47];
              v74 = v69;
              v75 = v69 - v46;
              do
              {
                *&v52[v74] = *&v53[v74];
                v74 += 4;
                v75 += 4;
              }

              while (v75);
              if (v39 != v46)
              {
LABEL_59:
                v67 = &v53[v23];
                do
                {
                  v68 = *v66++;
                  *v65++ = v68;
                }

                while (v66 != v67);
              }
            }

            v30 = (v30 + v41);
            v31 = (v31 + v40);
            if (++v36 == v33)
            {
              goto LABEL_143;
            }
          }
        }

        v119 = 0;
        v120 = v26 - 2;
        v121 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v122 = v121 + 1;
        v123 = v31 >= &v30[v23 + v35 * v120] || v30 >= &v31[v23 + v34 * v120];
        v124 = v122 & 0xFFFFFFFFFFFFFFF0;
        v125 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v126 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v127 = !v123;
        v128 = 2 * v35;
        v129 = 2 * v34;
        do
        {
          v130 = v31;
          v131 = v30;
          if (!((v121 < 3) | v127 & 1))
          {
            if (v121 < 0xF)
            {
              v132 = 0;
LABEL_136:
              v130 = &v31[v126];
              v131 = &v30[v126];
              v137 = v132;
              v138 = v132 - v125;
              do
              {
                *&v31[v137] = *&v30[v137];
                v137 += 4;
                v138 += 4;
              }

              while (v138);
              if (v122 == v125)
              {
                goto LABEL_128;
              }

              goto LABEL_141;
            }

            v133 = 0;
            v134 = v122 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v135 = &v31[v133];
              v136 = *&v30[v133 + 8];
              *v135 = *&v30[v133];
              *(v135 + 1) = v136;
              v133 += 16;
              v134 -= 16;
            }

            while (v134);
            if (v122 == (v122 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_128;
            }

            v132 = v122 & 0xFFFFFFFFFFFFFFF0;
            if ((v122 & 0xC) != 0)
            {
              goto LABEL_136;
            }

            v131 = &v30[v124];
            v130 = &v31[v124];
          }

          do
          {
LABEL_141:
            v139 = *v131++;
            *v130++ = v139;
          }

          while (v131 != &v30[v23]);
LABEL_128:
          v30 = (v30 + v128);
          v31 = (v31 + v129);
          ++v119;
        }

        while (v119 != v33);
      }

LABEL_143:
      if (v29)
      {
        v140 = 0;
        v141 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v142 = v141 + 1;
        v144 = v31 < &v30[v23 + v202 * (v200 - 2)] && v30 < &v31[v23 + v201 * (v200 - 2)];
        v145 = v142 & 0xFFFFFFFFFFFFFFF0;
        v146 = v142 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v147 = v31;
          v148 = v30;
          if (v141 >= 3 && !v144)
          {
            if (v141 < 0xF)
            {
              v149 = 0;
LABEL_159:
              v147 = &v31[v146];
              v148 = &v30[v146];
              v154 = v149;
              v155 = v149 - (v142 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v31[v154] = *&v30[v154];
                v154 += 4;
                v155 += 4;
              }

              while (v155);
              if (v142 == (v142 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_151;
              }

              goto LABEL_164;
            }

            v150 = 0;
            v151 = v142 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v152 = &v31[v150];
              v153 = *&v30[v150 + 8];
              *v152 = *&v30[v150];
              *(v152 + 1) = v153;
              v150 += 16;
              v151 -= 16;
            }

            while (v151);
            if (v142 == (v142 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_151;
            }

            v149 = v142 & 0xFFFFFFFFFFFFFFF0;
            if ((v142 & 0xC) != 0)
            {
              goto LABEL_159;
            }

            v148 = &v30[v145];
            v147 = &v31[v145];
          }

          do
          {
LABEL_164:
            v156 = *v148++;
            *v147++ = v156;
          }

          while (v148 != &v30[v23]);
LABEL_151:
          v30 += v202;
          v31 = (v31 + v32);
          ++v140;
        }

        while (v140 != v29);
      }

      v157 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v157 < 3 || (v31 - v30) < 0x20)
      {
        v160 = v31;
        v161 = v30;
        goto LABEL_198;
      }

      v158 = v157 + 1;
      if (v157 >= 0xF)
      {
        v159 = v158 & 0xFFFFFFFFFFFFFFF0;
        v162 = (v30 + 8);
        v163 = v31 + 8;
        v164 = v158 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v162 - 1);
          v165 = *v162;
          *(v163 - 1) = v97;
          *v163 = v165;
          v162 += 2;
          v163 += 2;
          v164 -= 16;
        }

        while (v164);
        if (v158 == v159)
        {
          return v97;
        }

        if ((v158 & 0xC) == 0)
        {
          v192 = v159;
          v161 = &v30[v192];
          v160 = &v31[v192];
          goto LABEL_198;
        }
      }

      else
      {
        v159 = 0;
      }

      v166 = v158 & 0xFFFFFFFFFFFFFFFCLL;
      v160 = &v31[v166];
      v161 = &v30[v166];
      v167 = &v30[v159];
      v168 = &v31[v159];
      v169 = v159 - (v158 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v170 = *v167++;
        LOWORD(v97) = v170;
        *v168 = v170;
        v168 += 4;
        v169 += 4;
      }

      while (v169);
      if (v158 == (v158 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_198:
      v193 = &v30[v23];
      do
      {
        v194 = *v161++;
        LOWORD(v97) = v194;
        *v160++ = v194;
      }

      while (v161 != v193);
      return v97;
    }

    v76 = *(a1 + 28);
    v77 = *(a2 + 28);
    v78 = *(a1 + 12);
    v79 = (v78 * v21);
    if (v76 == v77 && v76 == v79)
    {
      v80 = (*(a1 + 16) * v76);
      if (!v80)
      {
        return v97;
      }

      v81 = *a1;
      v82 = *a2;
      v83 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v83 < 3)
      {
        v84 = *a1;
        goto LABEL_202;
      }

      v84 = *a1;
      if ((v82 - v81) < 0x20)
      {
        goto LABEL_202;
      }

      v85 = v83 + 1;
      if (v83 >= 0xF)
      {
        v86 = v85 & 0xFFFFFFFFFFFFFFF0;
        v171 = (v81 + 8);
        v172 = v82 + 8;
        v173 = v85 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v171 - 1);
          v174 = *v171;
          *(v172 - 1) = v97;
          *v172 = v174;
          v171 += 2;
          v172 += 2;
          v173 -= 16;
        }

        while (v173);
        if (v85 == v86)
        {
          return v97;
        }

        if ((v85 & 0xC) == 0)
        {
          v84 = &v81[v86];
          v82 += v86;
          goto LABEL_202;
        }
      }

      else
      {
        v86 = 0;
      }

      v175 = v85 & 0xFFFFFFFFFFFFFFFCLL;
      v176 = &v82[v175];
      v84 = &v81[v175];
      v177 = &v81[v86];
      v178 = &v82[v86];
      v179 = v86 - (v85 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v180 = *v177++;
        LOWORD(v97) = v180;
        *v178 = v180;
        v178 += 4;
        v179 += 4;
      }

      while (v179);
      v82 = v176;
      if (v85 == (v85 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_202:
      v195 = &v81[v80];
      do
      {
        v196 = *v84++;
        LOWORD(v97) = v196;
        *v82++ = v196;
      }

      while (v84 != v195);
      return v97;
    }

    v87 = *(a1 + 16);
    if (v21)
    {
      v88 = v78 == 0;
    }

    else
    {
      v88 = 1;
    }

    if (v88 || v87 == 0)
    {
      return v97;
    }

    v90 = *a1;
    v91 = *a2;
    if (v87 == 1)
    {
LABEL_88:
      if (!v79)
      {
        return v97;
      }

      v92 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v92 < 3 || (v91 - v90) < 0x20)
      {
        v181 = v91;
        v182 = v90;
        goto LABEL_206;
      }

      v93 = v92 + 1;
      if (v92 >= 0xF)
      {
        v94 = v93 & 0xFFFFFFFFFFFFFFF0;
        v183 = (v90 + 8);
        v184 = v91 + 8;
        v185 = v93 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v183 - 1);
          v186 = *v183;
          *(v184 - 1) = v97;
          *v184 = v186;
          v183 += 2;
          v184 += 2;
          v185 -= 16;
        }

        while (v185);
        if (v93 == v94)
        {
          return v97;
        }

        if ((v93 & 0xC) == 0)
        {
          v182 = &v90[v94];
          v181 = &v91[v94];
          goto LABEL_206;
        }
      }

      else
      {
        v94 = 0;
      }

      v187 = v93 & 0xFFFFFFFFFFFFFFFCLL;
      v181 = &v91[v187];
      v182 = &v90[v187];
      v188 = &v90[v94];
      v189 = &v91[v94];
      v190 = v94 - (v93 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v191 = *v188++;
        LOWORD(v97) = v191;
        *v189 = v191;
        v189 += 4;
        v190 += 4;
      }

      while (v190);
      if (v93 == (v93 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_206:
      v197 = &v90[v79];
      do
      {
        v198 = *v182++;
        LOWORD(v97) = v198;
        *v181++ = v198;
      }

      while (v182 != v197);
      return v97;
    }

    if (!v79)
    {
      return v97;
    }

    v98 = 0;
    v99 = v87 - 2;
    v100 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v101 = v100 + 1;
    v102 = v91 >= &v90[v79 + v76 * v99] || v90 >= &v91[v79 + v77 * v99];
    v103 = v101 & 0xFFFFFFFFFFFFFFF0;
    v104 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v105 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = !v102;
    v107 = 2 * v76;
    v108 = 2 * v77;
    while (1)
    {
      v109 = v91;
      v110 = v90;
      if (!((v100 < 3) | v106 & 1))
      {
        if (v100 < 0xF)
        {
          v111 = 0;
LABEL_114:
          v109 = &v91[v105];
          v110 = &v90[v105];
          v116 = v111;
          v117 = v111 - v104;
          do
          {
            *&v97 = *&v90[v116];
            *&v91[v116] = v97;
            v116 += 4;
            v117 += 4;
          }

          while (v117);
          if (v101 == v104)
          {
            goto LABEL_106;
          }

          goto LABEL_119;
        }

        v112 = 0;
        v113 = v101 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v114 = &v91[v112];
          v97 = *&v90[v112];
          v115 = *&v90[v112 + 8];
          *v114 = v97;
          *(v114 + 1) = v115;
          v112 += 16;
          v113 -= 16;
        }

        while (v113);
        if (v101 == (v101 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_106;
        }

        v111 = v101 & 0xFFFFFFFFFFFFFFF0;
        if ((v101 & 0xC) != 0)
        {
          goto LABEL_114;
        }

        v110 = &v90[v103];
        v109 = &v91[v103];
      }

      do
      {
LABEL_119:
        v118 = *v110++;
        LOWORD(v97) = v118;
        *v109++ = v118;
      }

      while (v110 != &v90[v79]);
LABEL_106:
      v90 = (v90 + v107);
      v91 = (v91 + v108);
      v2 = v98++ == v99;
      if (v2)
      {
        goto LABEL_88;
      }
    }
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a1;
    v9 = *a2;
    v10 = 2 * *(a1 + 24);
    v11 = 2 * *(a2 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 28);
      v14 = *(a1 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_96;
      }

      v95 = 2 * v14;
      v96 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v8 = (v8 + v95);
        v9 = (v9 + v96);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_97:
      *v9 = *v8;
      v9[1] = v8[1];
      LOWORD(v97) = v8[2];
      v9[2] = v97;
      return v97;
    }

    do
    {
LABEL_96:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_97;
  }

  return v97;
}

uint64_t sub_255BF64F0(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_255BEAB68(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 4 * a2[4];
    v14 = 4 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 4 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 4 * v27;
            v49 = 4 * v28;
            do
            {
              memmove(v3, v46, 4 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 4 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 4 * v26;
        v37 = 4 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 4 * v40;
            v51 = 4 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 4 * v24;
            v54 = 4 * v39;
            v55 = 4 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 4 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_255BF68F4(uint64_t result, char **a2)
{
  if (*(result + 20) == 1 && *(a2 + 5) == 1)
  {
    v21 = *(result + 24);
    v22 = *(a2 + 6);
    v23 = *(result + 8);
    if (v21 == v22 && v21 == v23)
    {
      v42 = *(result + 28);
      v43 = *(a2 + 7);
      v44 = *(result + 12);
      v45 = (v44 * v21);
      if (v42 == v43 && v42 == v45)
      {
        if (!(*(result + 16) * v42))
        {
          return result;
        }

        v46 = 4 * (*(result + 16) * v42);
        v47 = *a2;
        v48 = *result;
        v49 = v47;
      }

      else
      {
        v50 = *(result + 16);
        if (v21)
        {
          v51 = v44 == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51 || v50 == 0)
        {
          return result;
        }

        v53 = *result;
        v54 = *a2;
        v55 = v50 - 1;
        if (v50 != 1)
        {
          if (!v45)
          {
            return result;
          }

          v56 = 4 * v42;
          v57 = 4 * v43;
          do
          {
            result = memmove(v54, v53, 4 * v45);
            v53 += v56;
            v54 += v57;
            --v55;
          }

          while (v55);
        }

        if (!v45)
        {
          return result;
        }

        v46 = 4 * v45;
        v49 = v54;
        v48 = v53;
      }
    }

    else
    {
      v26 = *(result + 12);
      v25 = *(result + 16);
      if (v23)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v25 == 0)
      {
        return result;
      }

      v29 = v26 - 1;
      v30 = *result;
      v31 = 4 * v23;
      v32 = *a2;
      v33 = 4 * v21;
      v34 = 4 * v22;
      v35 = v25 - 1;
      if (v25 != 1)
      {
        v36 = *(a2 + 7);
        v37 = *(result + 28);
        if (v26 == 1)
        {
          v58 = 4 * v37;
          v59 = 4 * v36;
          do
          {
            memmove(v32, v30, v31);
            v30 += v58;
            v32 += v59;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = 0;
          v60 = 4 * v36;
          v61 = 4 * v37;
          v62 = v25 - 1;
          do
          {
            v39 = v32;
            v40 = v30;
            v41 = v29;
            do
            {
              memmove(v39, v40, v31);
              v40 += v33;
              v39 += v34;
              --v41;
            }

            while (v41);
            memmove(v39, v40, v31);
            v30 += v61;
            v32 += v60;
            ++v38;
          }

          while (v38 != v62);
        }
      }

      for (; v29; --v29)
      {
        memmove(v32, v30, v31);
        v30 += v33;
        v32 += v34;
      }

      v49 = v32;
      v48 = v30;
      v46 = v31;
    }

    return memmove(v49, v48, v46);
  }

  v3 = *(result + 12);
  v4 = *(result + 16);
  if (*(result + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *result;
    v9 = *a2;
    v10 = 4 * *(result + 24);
    v11 = 4 * *(a2 + 6);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 7);
      v14 = *(result + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = *(v8 + 1);
          v9[2] = *(v8 + 2);
          v8 += 4 * v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_58;
      }

      v15 = 0;
      v16 = v9 + 2;
      result = 4 * v13;
      v17 = v8 + 8;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v8 += 4 * v14;
        v9 += v13;
        ++v15;
        v16 = (v16 + result);
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_58:
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v8 += v10;
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_255BF6C84(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v46 = *a2;
    v47 = *(a2 + 1);
    v48 = *(a2 + 2);
    v49 = *(a2 + 6);
    sub_255BE9608(v50, (a2 + 14));
    *a1 = v46;
    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v4 = v50[0];
    *(a1 + 48) = v49;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v50[2];
    *(a1 + 64) = v50[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = a2[4];
    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (v11)
      {
        v18 = 0;
        v19 = v3 + 3;
        v20 = v14 + 1;
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v11;
          do
          {
            *(v22 - 3) = *(v21 - 1);
            *(v22 - 2) = *v21;
            *(v22 - 1) = v21[1];
            *v22 = v21[2];
            v22 += v13;
            v21 += v12;
            --v23;
          }

          while (v23);
          *(v22 - 3) = *(v21 - 1);
          *(v22 - 2) = *v21;
          *(v22 - 1) = v21[1];
          *v22 = v21[2];
          v14 += v17;
          v3 += v16;
          ++v18;
          v19 += v16;
          v20 += v17;
        }

        while (v18 != v15);
        goto LABEL_24;
      }

      do
      {
        *v3 = *v14;
        v3[1] = v14[1];
        v3[2] = v14[2];
        v3[3] = v14[3];
        v14 += v17;
        v3 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v11)
    {
LABEL_25:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v3[3] = v14[3];
      return a1;
    }

    do
    {
LABEL_24:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v3[3] = v14[3];
      v14 += v12;
      v3 += v13;
      --v11;
    }

    while (v11);
    goto LABEL_25;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 != v25 || v24 != v26)
  {
    if (!v26)
    {
      return a1;
    }

    v31 = a2[1];
    if (!v31)
    {
      return a1;
    }

    v32 = a2[2];
    if (!v32)
    {
      return a1;
    }

    v33 = v31 - 1;
    v34 = *(a2 + 8);
    v35 = v32 - 1;
    if (v32 != 1)
    {
      v36 = *(a1 + 20);
      v45 = a2[5];
      if (v31 == 1)
      {
        do
        {
          memmove(v3, v34, v26);
          v34 += v45;
          v3 += v36;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = 0;
        v43 = v32 - 1;
        v44 = v31 - 1;
        v42 = *(a1 + 20);
        do
        {
          v38 = v34;
          v39 = v3;
          do
          {
            memmove(v39, v38, v26);
            v38 += v24;
            v39 += v25;
            --v33;
          }

          while (v33);
          memmove(v39, v38, v26);
          v34 += v45;
          v3 += v42;
          ++v37;
          v33 = v44;
        }

        while (v37 != v43);
      }
    }

    for (; v33; --v33)
    {
      memmove(v3, v34, v26);
      v34 += v24;
      v3 += v25;
    }

LABEL_53:
    memmove(v3, v34, v26);
    return a1;
  }

  v27 = a2[5];
  v28 = *(a1 + 20);
  v29 = a2[1];
  v26 = v29 * v24;
  if (v27 != v28 || v27 != v26)
  {
    if (!v24)
    {
      return a1;
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[2];
    if (!v40)
    {
      return a1;
    }

    v34 = *(a2 + 8);
    v41 = v40 - 1;
    if (v40 != 1)
    {
      if (!v26)
      {
        return a1;
      }

      do
      {
        memmove(v3, v34, v26);
        v34 += v27;
        v3 += v28;
        --v41;
      }

      while (v41);
    }

    if (!v26)
    {
      return a1;
    }

    goto LABEL_53;
  }

  v30 = a2[2] * v27;
  if (v30)
  {
    memmove(*(a1 + 64), *(a2 + 8), v30);
  }

  return a1;
}

uint64_t sub_255BF7054(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_255BE9CD0(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 2 * a2[4];
    v14 = 2 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v3[3] = v12[3];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22[1] = v21[1];
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v22[1] = v21[1];
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 2 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 2 * v27;
            v49 = 2 * v28;
            do
            {
              memmove(v3, v46, 2 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 2 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 2 * v26;
        v37 = 2 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 2 * v40;
            v51 = 2 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 2 * v24;
            v54 = 2 * v39;
            v55 = 2 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 2 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_255BF7480(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v200 = *a2;
    v201 = *(a2 + 1);
    v202 = *(a2 + 2);
    v203 = *(a2 + 6);
    sub_255BEA5D4(v204, (a2 + 14));
    *a1 = v200;
    *(a1 + 16) = v201;
    *(a1 + 32) = v202;
    *(a1 + 48) = v203;
    *(a1 + 80) = v205;
    *(a1 + 96) = v206;
    v4 = *(a1 + 64);
    if (!v4)
    {
      *(a1 + 56) = v204[0];
      goto LABEL_22;
    }

    if (*(a1 + 84))
    {
      v5 = *(a1 + 80) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 88);
    if (v5)
    {
      v6 = 0;
    }

    if (v6 * (*(a1 + 100) >> 1) != -1)
    {
      *(a1 + 56) = v204[0];
LABEL_21:
      free(v4);
      goto LABEL_22;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_20;
      }

      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_214;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
LABEL_20:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v4 = *(a1 + 64);
      *(a1 + 56) = v204[0];
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 = v204[2];
      *(a1 + 64) = v204[1];
      *(a1 + 72) = v9;
      return a1;
    }

LABEL_214:
    abort();
  }

  if (a2[3] == 1 && *(a1 + 12) == 1)
  {
    v27 = a2[4];
    v28 = *(a1 + 16);
    v29 = *a2;
    if (v27 == v28 && v27 == v29)
    {
      v30 = a2[5];
      v31 = *(a1 + 20);
      v32 = a2[1];
      v33 = v32 * v27;
      if (v30 == v31 && v30 == v33)
      {
        v34 = a2[2] * v30;
        if (!v34)
        {
          return a1;
        }

        v35 = *(a2 + 8);
        v36 = (v34 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v36 < 3)
        {
          v37 = *(a2 + 8);
          goto LABEL_209;
        }

        v37 = *(a2 + 8);
        if (v3 - v35 < 0x20)
        {
          goto LABEL_209;
        }

        v38 = v36 + 1;
        if (v36 >= 0xF)
        {
          v39 = v38 & 0xFFFFFFFFFFFFFFF0;
          v166 = (v35 + 16);
          v167 = v3 + 8;
          v168 = v38 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v169 = *v166;
            *(v167 - 1) = *(v166 - 1);
            *v167 = v169;
            v166 += 2;
            v167 += 2;
            v168 -= 16;
          }

          while (v168);
          if (v38 == v39)
          {
            return a1;
          }

          if ((v38 & 0xC) == 0)
          {
            v189 = 2 * v39;
            v37 = (v35 + v189);
            v3 = (v3 + v189);
            goto LABEL_209;
          }
        }

        else
        {
          v39 = 0;
        }

        v170 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        v171 = &v3[v170];
        v37 = (v35 + v170 * 2);
        v172 = (v35 + 2 * v39);
        v173 = &v3[v39];
        v174 = v39 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v175 = *v172++;
          *v173++ = v175;
          v174 += 4;
        }

        while (v174);
        v3 = v171;
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_209:
          v190 = *v37++;
          *v3++ = v190;
        }

        while (v37 != (v35 + 2 * v34));
        return a1;
      }

      if (!v27)
      {
        return a1;
      }

      if (!v32)
      {
        return a1;
      }

      v86 = a2[2];
      if (!v86)
      {
        return a1;
      }

      v87 = *(a2 + 8);
      if (v86 == 1)
      {
LABEL_96:
        if (!v33)
        {
          return a1;
        }

        v88 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v88 < 3 || v3 - v87 < 0x20)
        {
          v176 = v3;
          v177 = v87;
          goto LABEL_212;
        }

        v89 = v88 + 1;
        if (v88 >= 0xF)
        {
          v90 = v89 & 0xFFFFFFFFFFFFFFF0;
          v178 = (v87 + 16);
          v179 = v3 + 8;
          v180 = v89 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v181 = *v178;
            *(v179 - 1) = *(v178 - 1);
            *v179 = v181;
            v178 += 2;
            v179 += 2;
            v180 -= 16;
          }

          while (v180);
          if (v89 == v90)
          {
            return a1;
          }

          if ((v89 & 0xC) == 0)
          {
            v191 = v90;
            v177 = (v87 + v191 * 2);
            v176 = &v3[v191];
            goto LABEL_212;
          }
        }

        else
        {
          v90 = 0;
        }

        v182 = v89 & 0xFFFFFFFFFFFFFFFCLL;
        v176 = &v3[v182];
        v177 = (v87 + v182 * 2);
        v183 = (v87 + 2 * v90);
        v184 = &v3[v90];
        v185 = v90 - (v89 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v186 = *v183++;
          *v184++ = v186;
          v185 += 4;
        }

        while (v185);
        if (v89 == (v89 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_212:
          v192 = *v177++;
          *v176++ = v192;
        }

        while (v177 != (v87 + 2 * v33));
        return a1;
      }

      if (!v33)
      {
        return a1;
      }

      v92 = 0;
      v93 = v86 - 2;
      v94 = &v3[v33 + v31 * (v86 - 2)];
      v95 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v96 = v95 + 1;
      v97 = v3 >= v87 + 2 * (v33 + v30 * v93) || v87 >= v94;
      v98 = v96 & 0xFFFFFFFFFFFFFFF0;
      v99 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v100 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v101 = !v97;
      v102 = 2 * v30;
      v103 = 2 * v31;
      while (1)
      {
        v104 = v3;
        v105 = v87;
        if (!((v95 < 3) | v101 & 1))
        {
          if (v95 < 0xF)
          {
            v106 = 0;
LABEL_122:
            v104 = &v3[v100];
            v105 = (v87 + v100 * 2);
            v111 = v106;
            v112 = v106 - v99;
            do
            {
              *&v3[v111] = *(v87 + v111 * 2);
              v111 += 4;
              v112 += 4;
            }

            while (v112);
            if (v96 == v99)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          v107 = 0;
          v108 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v109 = &v3[v107];
            v110 = *(v87 + v107 * 2 + 16);
            *v109 = *(v87 + v107 * 2);
            v109[1] = v110;
            v107 += 16;
            v108 -= 16;
          }

          while (v108);
          if (v96 == (v96 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_114;
          }

          v106 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) != 0)
          {
            goto LABEL_122;
          }

          v105 = (v87 + v98 * 2);
          v104 = &v3[v98];
        }

        do
        {
LABEL_127:
          v113 = *v105++;
          *v104++ = v113;
        }

        while (v105 != (v87 + 2 * v33));
LABEL_114:
        v87 += v102;
        v3 = (v3 + v103);
        v5 = v92++ == v93;
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[1];
    if (!v40)
    {
      return a1;
    }

    v41 = a2[2];
    if (!v41)
    {
      return a1;
    }

    v42 = v40 - 1;
    v43 = *(a2 + 8);
    v44 = 2 * v28;
    v45 = v41 - 1;
    v194 = *(a1 + 16);
    v195 = a2[4];
    v193 = a2[1];
    if (v41 != 1)
    {
      v46 = *(a1 + 20);
      v47 = a2[5];
      if (v40 != 1)
      {
        v48 = 0;
        v49 = 2 * v27;
        v199 = &v3[v44 / 2] - v43 + -2 * v27;
        v198 = 2 * (v46 - v47);
        v196 = v44 - 2 * v27;
        v50 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v51 = v50 + 1;
        v52 = 2 * v46;
        v53 = 2 * v47;
        v197 = &v3[v29 + v28 * (v40 - 2)];
        v54 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
        v55 = v54;
        v56 = (v50 + 1) & 0xC;
        v57 = (v50 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v58 = v57;
        v59 = v43 + 2 * (v29 + v27 * (v40 - 2));
        while (1)
        {
          v60 = 0;
          v62 = v3 < v59 + v53 * v48 && v43 < v197 + v52 * v48;
          v63 = v3;
          v64 = v43;
          do
          {
            v65 = v60;
            v66 = v63;
            v67 = v64;
            if (v50 < 3 || v62)
            {
              goto LABEL_74;
            }

            if (v50 >= 0xF)
            {
              v69 = 0;
              v70 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v71 = &v63[v69];
                v72 = *&v64[v69 + 8];
                *v71 = *&v64[v69];
                v71[1] = v72;
                v69 += 16;
                v70 -= 16;
              }

              while (v70);
              if (v51 == v54)
              {
                goto LABEL_61;
              }

              v68 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v67 = &v64[v55];
                v66 = &v63[v55];
                do
                {
LABEL_74:
                  v75 = *v67++;
                  *v66++ = v75;
                }

                while (v67 != &v64[v29]);
                goto LABEL_61;
              }
            }

            else
            {
              v68 = 0;
            }

            v66 = &v63[v58];
            v67 = &v64[v58];
            v73 = v68;
            v74 = v68 - v57;
            do
            {
              *&v63[v73] = *&v64[v73];
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            if (v51 != v57)
            {
              goto LABEL_74;
            }

LABEL_61:
            v64 = (v64 + v49);
            v63 = (v63 + v44);
            v60 = v65 + 1;
          }

          while (v65 + 1 != v42);
          if (v50 < 3 || (v199 + v198 * v48 + v196 * v65) < 0x20)
          {
            v76 = v63;
            v77 = v64;
            goto LABEL_79;
          }

          if (v50 >= 0xF)
          {
            v80 = 0;
            v81 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v82 = &v63[v80];
              v83 = *&v64[v80 + 8];
              *v82 = *&v64[v80];
              v82[1] = v83;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            if (v51 != v54)
            {
              v79 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v77 = &v64[v55];
                v76 = &v63[v55];
                goto LABEL_79;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v79 = 0;
LABEL_87:
            v76 = &v63[v58];
            v77 = &v64[v58];
            v84 = v79;
            v85 = v79 - v57;
            do
            {
              *&v63[v84] = *&v64[v84];
              v84 += 4;
              v85 += 4;
            }

            while (v85);
            if (v51 != v57)
            {
              do
              {
LABEL_79:
                v78 = *v77++;
                *v76++ = v78;
              }

              while (v77 != &v64[v29]);
            }
          }

          v43 += v53;
          v3 = (v3 + v52);
          if (++v48 == v45)
          {
            goto LABEL_151;
          }
        }
      }

      v114 = 0;
      v115 = v41 - 2;
      v116 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v117 = v116 + 1;
      v118 = v3 >= v43 + 2 * (v29 + v47 * v115) || v43 >= &v3[v29 + v46 * v115];
      v119 = v117 & 0xFFFFFFFFFFFFFFF0;
      v120 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v121 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v122 = !v118;
      v123 = 2 * v47;
      v124 = 2 * v46;
      do
      {
        v125 = v3;
        v126 = v43;
        if (!((v116 < 3) | v122 & 1))
        {
          if (v116 < 0xF)
          {
            v127 = 0;
LABEL_144:
            v125 = &v3[v121];
            v126 = (v43 + v121 * 2);
            v132 = v127;
            v133 = v127 - v120;
            do
            {
              *&v3[v132] = *(v43 + v132 * 2);
              v132 += 4;
              v133 += 4;
            }

            while (v133);
            if (v117 == v120)
            {
              goto LABEL_136;
            }

            goto LABEL_149;
          }

          v128 = 0;
          v129 = v117 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v130 = &v3[v128];
            v131 = *(v43 + v128 * 2 + 16);
            *v130 = *(v43 + v128 * 2);
            v130[1] = v131;
            v128 += 16;
            v129 -= 16;
          }

          while (v129);
          if (v117 == (v117 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_136;
          }

          v127 = v117 & 0xFFFFFFFFFFFFFFF0;
          if ((v117 & 0xC) != 0)
          {
            goto LABEL_144;
          }

          v126 = (v43 + v119 * 2);
          v125 = &v3[v119];
        }

        do
        {
LABEL_149:
          v134 = *v126++;
          *v125++ = v134;
        }

        while (v126 != (v43 + 2 * v29));
LABEL_136:
        v43 += v123;
        v3 = (v3 + v124);
        ++v114;
      }

      while (v114 != v45);
    }

LABEL_151:
    if (v42)
    {
      v135 = 0;
      v136 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v137 = v136 + 1;
      v139 = v3 < v43 + 2 * (v29 + v195 * (v193 - 2)) && v43 < &v3[v29 + v194 * (v193 - 2)];
      v140 = v137 & 0xFFFFFFFFFFFFFFF0;
      v141 = v137 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v142 = v3;
        v143 = v43;
        if (v136 >= 3 && !v139)
        {
          if (v136 < 0xF)
          {
            v144 = 0;
LABEL_167:
            v142 = &v3[v141];
            v143 = (v43 + v141 * 2);
            v149 = v144;
            v150 = v144 - (v137 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v3[v149] = *(v43 + v149 * 2);
              v149 += 4;
              v150 += 4;
            }

            while (v150);
            if (v137 == (v137 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          v145 = 0;
          v146 = v137 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v147 = &v3[v145];
            v148 = *(v43 + v145 * 2 + 16);
            *v147 = *(v43 + v145 * 2);
            v147[1] = v148;
            v145 += 16;
            v146 -= 16;
          }

          while (v146);
          if (v137 == (v137 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_159;
          }

          v144 = v137 & 0xFFFFFFFFFFFFFFF0;
          if ((v137 & 0xC) != 0)
          {
            goto LABEL_167;
          }

          v143 = (v43 + v140 * 2);
          v142 = &v3[v140];
        }

        do
        {
LABEL_172:
          v151 = *v143++;
          *v142++ = v151;
        }

        while (v143 != (v43 + 2 * v29));
LABEL_159:
        v43 += 2 * v195;
        v3 = (v3 + v44);
        ++v135;
      }

      while (v135 != v42);
    }

    v152 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v152 < 3 || v3 - v43 < 0x20)
    {
      v155 = v3;
      v156 = v43;
      goto LABEL_206;
    }

    v153 = v152 + 1;
    if (v152 >= 0xF)
    {
      v154 = v153 & 0xFFFFFFFFFFFFFFF0;
      v157 = (v43 + 16);
      v158 = v3 + 8;
      v159 = v153 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v160 = *v157;
        *(v158 - 1) = *(v157 - 1);
        *v158 = v160;
        v157 += 2;
        v158 += 2;
        v159 -= 16;
      }

      while (v159);
      if (v153 == v154)
      {
        return a1;
      }

      if ((v153 & 0xC) == 0)
      {
        v187 = v154;
        v156 = (v43 + v187 * 2);
        v155 = &v3[v187];
        goto LABEL_206;
      }
    }

    else
    {
      v154 = 0;
    }

    v161 = v153 & 0xFFFFFFFFFFFFFFFCLL;
    v155 = &v3[v161];
    v156 = (v43 + v161 * 2);
    v162 = (v43 + 2 * v154);
    v163 = &v3[v154];
    v164 = v154 - (v153 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    if (v153 == (v153 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

    do
    {
LABEL_206:
      v188 = *v156++;
      *v155++ = v188;
    }

    while (v156 != (v43 + 2 * v29));
    return a1;
  }

  if (*a2)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2[2];
      if (v13)
      {
        v14 = v12 - 1;
        v15 = *(a2 + 8);
        v16 = 2 * a2[4];
        v17 = 2 * *(a1 + 16);
        v18 = v13 - 1;
        if (v13 != 1)
        {
          v19 = *(a1 + 20);
          v20 = a2[5];
          if (v14)
          {
            v21 = 0;
            v22 = v3 + 2;
            v23 = v15 + 2;
            do
            {
              v24 = v23;
              v25 = v22;
              v26 = v14;
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25[1] = v24[1];
                v25 = (v25 + v17);
                v24 = (v24 + v16);
                --v26;
              }

              while (v26);
              *(v25 - 2) = *(v24 - 2);
              *(v25 - 1) = *(v24 - 1);
              *v25 = *v24;
              v25[1] = v24[1];
              v15 += v20;
              v3 += v19;
              ++v21;
              v22 += v19;
              v23 += v20;
            }

            while (v21 != v18);
            goto LABEL_104;
          }

          v91 = 2 * v19;
          do
          {
            *v3 = *v15;
            v3[1] = v15[1];
            v3[2] = v15[2];
            v3[3] = v15[3];
            v15 += v20;
            v3 = (v3 + v91);
            --v18;
          }

          while (v18);
        }

        if (!v14)
        {
LABEL_105:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v3[3] = v15[3];
          return a1;
        }

        do
        {
LABEL_104:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v3[3] = v15[3];
          v15 = (v15 + v16);
          v3 = (v3 + v17);
          --v14;
        }

        while (v14);
        goto LABEL_105;
      }
    }
  }

  return a1;
}

void sub_255BF80B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BD4E4C(va);
  _Unwind_Resume(a1);
}

void sub_255BF80C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BD4E4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BF80DC(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_255BEAB68(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 4 * a2[4];
    v14 = 4 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v3[3] = v12[3];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22[1] = v21[1];
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v22[1] = v21[1];
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 4 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 4 * v27;
            v49 = 4 * v28;
            do
            {
              memmove(v3, v46, 4 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 4 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 4 * v26;
        v37 = 4 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 4 * v40;
            v51 = 4 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 4 * v24;
            v54 = 4 * v39;
            v55 = 4 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 4 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_255BF8508(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_255C07708(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF86D4(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_255C07708(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF88A4(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_255C07708(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF8A68(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = __PAIR64__(v3, 3);
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (__PAIR64__(v3, 3) >> 32)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 4 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_255C07708(v20, *(v19 + 72), 4 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF8C2C(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_255C07708(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF8DF8(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_255C07708(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255BF8FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  memcpy(&v16, (a2 - 8 + 4 * a3), 4 * a3 - (4 * a3 - 8));
  *a1 = v16;
  memcpy(&__dst, (a4 - 4 + 4 * a5), 4 * a5 - (4 * a5 - 4));
  *(a1 + 8) = __dst * a6;
  if (a3 != a5)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/Size.cpp", 37, "shape.size() == value_stride.size()", 0x23uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v11 = qword_27F7DD608, v12 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "shape.size() == value_stride.size()", 35, &unk_255C2500B, 0);
        return a1;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "shape.size() == value_stride.size()", 35, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void *sub_255BF9188(void *result)
{
  *result = &unk_2867C4068;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255BF921C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_255C011C4(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_255BF9318(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_255C011C4(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_2867C4068;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_255BF9430(void *a1)
{
  sub_255BF9318(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BF9468(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 252, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = v11;
  if (atomic_load_explicit((v11 + 104), memory_order_acquire) != -1)
  {
    v15 = &v13;
    v14 = &v15;
    std::__call_once((v11 + 104), &v14, sub_255BFCF04);
  }

  return *(*(v11 + 112) + 8 * a2);
}

uint64_t sub_255BF9640(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_255C012C0(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_255BF973C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_255C012C0(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_2867C4068;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_255BF9854(void *a1)
{
  sub_255BF973C(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BF988C(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_255B07794(&v4, cf);
}

void sub_255BF9B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a11);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255BF9B34(_DWORD *a1, int a2)
{
  v2 = a2;
  if (a1[1] * *a1)
  {
    sub_255BFDD80(a1, a2);
  }

  v4 = 0;
  v6[0] = v3;
  v6[1] = "given IOSurface size ";
  v6[2] = v3;
  v6[3] = "given IOSurface size ";
  v6[4] = "given IOSurface size ";
  __dst = v6;
  sub_255AED89C(&__dst);
  sub_255BFD108();
}

void sub_255BFA518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a38 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BFA634()
{
  v1 = *(v0 - 112);
  *(v0 - 112) = 0;
  if (v1)
  {
    sub_255C0EE90(v0 - 112, v1);
  }

  JUMPOUT(0x255BFA614);
}

uint64_t sub_255BFA660(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

void *sub_255BFA730(void *result)
{
  *result = &unk_2867C4068;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255BFA7C4(void *a1)
{
  *a1 = &unk_2867C4068;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

size_t sub_255BFA86C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 134, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetPlaneCount(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetPlaneCount(v6);
}

size_t sub_255BFAAA8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 150, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetWidth(v6);
}

size_t sub_255BFACE4(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 155, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetWidthOfPlane(v8, planeIndex);
}

size_t sub_255BFAEEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 160, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetHeight(v6);
}

size_t sub_255BFB128(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 165, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetHeightOfPlane(v8, planeIndex);
}

size_t sub_255BFB330(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 195, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetBytesPerElement(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetBytesPerElement(v6);
}

size_t sub_255BFB56C(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 200, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetBytesPerElementOfPlane(v8, planeIndex);
}

size_t sub_255BFB774(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 205, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetBytesPerRow(v6);
}

size_t sub_255BFB9B0(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 210, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetBytesPerRowOfPlane(v8, planeIndex);
}

uint64_t sub_255BFBBB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 215, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetPixelFormat(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetPixelFormat(v6);
}

uint64_t sub_255BFBDF4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 221, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_56;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_255BFBBB8(a1);
  v12 = sub_255AF1D38(v11);
  if (v12 > a2)
  {
    goto LABEL_22;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 226, "plane_index < num_planes", 0x18uLL, "Plane index can't be more than total number of planes", 0x35uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v13 = qword_27F7DD608;
    v14 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_56;
    }

    do
    {
LABEL_19:
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "plane_index < num_planes", 24, "Plane index can't be more than total number of planes", 53);
    }

    while (v13 != v14);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_21;
  }

  if (byte_27F7DD638 == 1)
  {
    v13 = qword_27F7DD608;
    v14 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  qword_27F7DD620(*algn_27F7DD628, "plane_index < num_planes", 24, "Plane index can't be more than total number of planes", 53);
LABEL_22:
  if (v12 != 1)
  {
    if (v12 != 2)
    {
      goto LABEL_57;
    }

    if (sub_255AF1D38(v11) != 1)
    {
      v20 = (v11 & 0xFFFFFFEF) == 0x34323066 || (v11 & 0xFFFFFFEF) == 875836518;
      if (a2 || !v20)
      {
        if (a2 != 1)
        {
          v20 = 0;
        }

        if (!v20)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 443, &unk_255C2500B, 0, "not yet implemented", 0x13uLL, sub_255C101E0);
          abort();
        }

        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_50;
    }

    if (!a2)
    {
LABEL_49:
      v21 = sub_255B05C38(v11);
LABEL_50:
      if (!sub_255B07444(v11))
      {
        if (v21 == 1)
        {
          return 1278226488;
        }

        if (v21 == 2)
        {
          return 843264056;
        }
      }

LABEL_57:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 237, &unk_255C2500B, 0, "not yet implemented", 0x13uLL, sub_255C101E0);
      abort();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 429, "index == 0", 0xAuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_48:
        qword_27F7DD620(*algn_27F7DD628, "index == 0", 10, &unk_255C2500B, 0);
        goto LABEL_49;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_56;
      }
    }

    do
    {
      v23 = *v17;
      v22 = *(v17 + 8);
      v17 += 16;
      v23(v22, "index == 0", 10, &unk_255C2500B, 0);
    }

    while (v17 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_48;
    }

LABEL_56:
    abort();
  }

  return v11;
}

uint64_t sub_255BFC270(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 246, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = v11;
  if (atomic_load_explicit((v11 + 104), memory_order_acquire) != -1)
  {
    v15 = &v13;
    v14 = &v15;
    std::__call_once((v11 + 104), &v14, sub_255BFCF04);
  }

  return *(*(v11 + 112) + 8 * a2);
}

size_t sub_255BFC448@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = *v6;
  v7 = v6[1];
  if (!v7 || (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 299, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_24;
      }

      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
    result = sub_255BFA86C(a1);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_5:
  result = sub_255BFA86C(a1);
  if (result)
  {
LABEL_6:
    if (sub_255BFA86C(a1) > a2)
    {
      goto LABEL_15;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 303, "plane_index < NumPlanes()", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_14:
        qword_27F7DD620(*algn_27F7DD628, "plane_index < NumPlanes()", 25, &unk_255C2500B, 0);
LABEL_15:
        sub_255C02920();
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "plane_index < NumPlanes()", 25, &unk_255C2500B, 0);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_14;
    }

LABEL_26:
    abort();
  }

LABEL_25:
  a3[1] = 0;
  a3[2] = 0;
  *a3 = &unk_2867C4068;
  return result;
}

void sub_255BFCC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_255A7A508(&a15);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255BFCCF8(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_255C01BC4(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_255BFCEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BFCF04(__IOSurface *****a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = **v1;
  if (v3)
  {
    if (!(IOSurfaceGetPlaneCount(v3) >> 61))
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  v4 = v2[14];
  if (v4)
  {
    v2[15] = v4;
    operator delete(v4);
    v2[14] = 0;
    v2[15] = 0;
    v2[16] = 0;
  }

  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
}

void sub_255BFD018(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C38C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BFD06C(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 64));
  v3 = *(a1 + 32);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_255BFD328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = a9;
  a9 = 0;
  if (!v17)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255C0EE90(&a9, v17);
  _Unwind_Resume(exception_object);
}

size_t sub_255BFD394(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867D0C18[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255BFD488(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867D0C18[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255BFD64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BFD6A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255BFD8E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BFD900(int a1, unsigned int a2)
{
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 != 875836534)
        {
          v2 = 1094862674;
          v3 = 0x4000000004;
          if (a2 >= 2)
          {
            v4 = 0;
          }

          else
          {
            v4 = 0x4000000004;
          }

          v5 = v4 & 0x4000000000;
          v6 = 1111970369;
          goto LABEL_48;
        }
      }

      else if (a1 != 875704422 && a1 != 875704438 && a1 != 875836518)
      {
        return 0;
      }

      v37 = xmmword_255C45150;
      if (a2 <= 2)
      {
        return *(&v37 + a2);
      }

      else
      {
        return 0;
      }
    }

    if (a1 <= 843264055)
    {
      if (a1 == 24)
      {
        v35 = 0xC000000003;
        if (a2 >= 2)
        {
          v35 = 0;
        }

        return v35 & 0xC0000000FFLL;
      }

      else
      {
        v7 = 0x4000000004;
        if (a2 >= 2)
        {
          v7 = 0;
        }

        v8 = 0xC000000003;
        if (a2 >= 2)
        {
          v8 = 0;
        }

        if (a1 == 842285639)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        if (a1 == 842285639)
        {
          v10 = v8 & 0xC000000000;
        }

        else
        {
          v10 = 0;
        }

        if (a1 == 32)
        {
          v11 = v7 & 0x4000000000;
        }

        else
        {
          LOBYTE(v7) = v9;
          v11 = v10;
        }

        return v11 | v7;
      }
    }

    if (a1 != 843264056)
    {
      v13 = 843264102;
      v14 = 0x8000000008;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0x8000000000;
      v16 = 843264104;
      v17 = 0x4000000004;
      if (a2 >= 2)
      {
        v17 = 0;
      }

      v18 = v17 & 0x4000000000;
      goto LABEL_73;
    }

LABEL_102:
    v34 = 0x4000000002;
    goto LABEL_107;
  }

  if (a1 <= 1647392358)
  {
    if (a1 > 1380401728)
    {
      if (a1 == 1380401729)
      {
        v36 = 0x4000000004;
        if (a2 >= 2)
        {
          v36 = 0;
        }

        return v36 & 0x40000000FFLL;
      }

      v13 = 1380410945;
      v14 = 0x10000000010;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0x10000000000;
      v16 = 1380411457;
      goto LABEL_70;
    }

    if (a1 != 1278226488)
    {
      v2 = 1278226534;
      if (a2 >= 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x4000000004;
      }

      v5 = v4 & 0x4000000000;
      v6 = 1278226536;
      v3 = 0x4000000002;
      goto LABEL_48;
    }

    v34 = 0x4000000001;
LABEL_107:
    if (a2 >= 2)
    {
      v34 = 0;
    }

    return v34 & 0x40000000FFLL;
  }

  if (a1 <= 1717855599)
  {
    if (a1 != 1647392359)
    {
      v13 = 1647589490;
      v14 = 0xC000000006;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0xC000000000;
      v16 = 1647719521;
LABEL_70:
      v17 = 0x8000000008;
      if (a2 >= 2)
      {
        v17 = 0;
      }

      v18 = v17 & 0x8000000000;
LABEL_73:
      v23 = a1 == v16;
      if (a1 == v16)
      {
        v24 = v17;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v25 = v18;
      }

      else
      {
        v25 = 0;
      }

      v26 = a1 == v13;
      if (a1 == v13)
      {
        v27 = v14;
      }

      else
      {
        v27 = v24;
      }

      if (v26)
      {
        v28 = v15;
      }

      else
      {
        v28 = v25;
      }

      return v28 | v27;
    }

    goto LABEL_102;
  }

  if (a1 <= 1751410031)
  {
    v2 = 1717855600;
    v3 = 0x4000000004;
    if (a2 >= 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x4000000004;
    }

    v5 = v4 & 0x4000000000;
    v6 = 1717856627;
LABEL_48:
    if (a2 >= 2)
    {
      v3 = 0;
    }

    if (a1 == v6)
    {
      v19 = v3 & 0x4000000000;
    }

    else
    {
      LOBYTE(v3) = 0;
      v19 = 0;
    }

    v20 = a1 == v2;
    if (a1 == v2)
    {
      v21 = v4;
    }

    else
    {
      v21 = v3;
    }

    if (v20)
    {
      v22 = v5;
    }

    else
    {
      v22 = v19;
    }

    return v22 | v21;
  }

  v29 = 0x4000000002;
  if (a2 >= 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x4000000002;
  }

  if (a2 >= 2)
  {
    v29 = 0;
  }

  if (a1 == 1751411059)
  {
    v31 = v29 & 0x4000000000;
  }

  else
  {
    LOBYTE(v29) = 0;
    v31 = 0;
  }

  if (a1 == 1751410032)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  if (a1 == 1751410032)
  {
    v33 = v30 & 0x4000000000;
  }

  else
  {
    v33 = v31;
  }

  return v33 | v32;
}

void sub_255BFDD80(uint64_t a1, int a2)
{
  v4[10] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  __p = v4;
  sub_255C02920();
}

void sub_255BFF1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __cxa_guard_abort(&qword_27F7DD4F8);
  sub_255A7A508(&a15);
  sub_255A7A508(v28);
  _Unwind_Resume(a1);
}

void sub_255BFF530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_255A7A508(v24);
    _Unwind_Resume(a1);
  }

  sub_255A7A508(v24);
  _Unwind_Resume(a1);
}

CFIndex sub_255BFF648@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v5 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v5;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  value = 0;
  result = CFDictionaryGetValueIfPresent(*result, @"IOSurfaceName", &value);
  if (result)
  {
    return sub_255C01A68(value, a2);
  }

LABEL_7:
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  return result;
}

uint64_t *sub_255BFF71C(uint64_t *a1, uint64_t *a2)
{
  sub_255BFF7A8(a2, &__p);
  sub_255C009F4(a1, @"IOSurfaceName", &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_255BFF78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BFF7A8(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD478))
  {
    sub_255BFF8CC();
  }

  v4 = &xmmword_27F7DD500;
  v5 = byte_27F7DD517;
  if (byte_27F7DD517 < 0)
  {
    v5 = *(&xmmword_27F7DD500 + 1);
    v4 = xmmword_27F7DD500;
  }

  v9[0] = v4;
  v9[1] = v5;
  v9[2] = "; ";
  v9[3] = 2;
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a1[1];
  }

  v9[4] = v7;
  v9[5] = v6;
  v9[6] = "; X/X";
  v9[7] = 5;
  sub_255A7F250(v9, &v10, 0, 0, a2);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BFF8CC()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_255C015B4(__p);
  sub_255C013B8(__p);
}

void sub_255BFFDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_255C000A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255C000C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A81658(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255C000B0);
}

void sub_255C001D4(char *__src@<X0>, size_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = a6;
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v27 = __src;
    __p[0] = __src;
    v10 = &__src[a2];
    if (a4)
    {
      v12 = 0;
      v13 = __src;
      if (__src != v10)
      {
LABEL_4:
        v13 = __src;
        while (1)
        {
          v14 = a4;
          v15 = a3;
          do
          {
            if (*v15 == *v13)
            {
              goto LABEL_10;
            }

            ++v15;
            --v14;
          }

          while (v14);
          if (++v13 == v10)
          {
            v13 = v10;
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v27 = v13;
        if (a5 == 1 || v13 != __src)
        {
          if (v12 >= *(v8 + 16))
          {
            v12 = sub_255C00610(v8, __p, &v27);
          }

          else
          {
            v16 = v13 - __src;
            if ((v13 - __src) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_65;
            }

            if (v16 > 0x16)
            {
              operator new();
            }

            v12[23] = v16;
            if (v13 != __src)
            {
              memmove(v12, __src, v13 - __src);
            }

            v12[v16] = 0;
            v12 += 24;
          }

          v8 = a6;
          __src = v27;
          a6[1] = v12;
        }

        if (__src == v10)
        {
          break;
        }

        __p[0] = ++__src;
        v13 = __src;
        if (__src != v10)
        {
          goto LABEL_4;
        }
      }
    }

    else if (a5 == 1)
    {
      if (v10 == __src)
      {
        v20 = 0;
      }

      else
      {
        v20 = a2;
      }

      v27 = &__src[v20];
      while (1)
      {
        v21 = sub_255C00610(v8, __p, &v27);
        v8 = a6;
        v22 = v27;
        a6[1] = v21;
        if (v22 == v10)
        {
          break;
        }

        while (1)
        {
          v23 = v22 + 1;
          v24 = *(v8 + 16);
          v25 = v10 == v23 ? 0 : v10 - v23;
          v27 = &v23[v25];
          __p[0] = v23;
          if (v21 >= v24)
          {
            break;
          }

          if (v25 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_65;
          }

          if (v25 >= 0x17)
          {
            operator new();
          }

          v21[23] = v25;
          if (v25)
          {
            memmove(v21, v23, v25);
          }

          v21[v25] = 0;
          v21 += 24;
          v8 = a6;
          v22 = v27;
          a6[1] = v21;
          if (v22 == v10)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      v17 = 0;
      if (v10 == __src)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      v27 = &__src[v18];
      if (v18)
      {
LABEL_32:
        if (v17 >= *(v8 + 16))
        {
          v17 = sub_255C00610(v8, __p, &v27);
        }

        else
        {
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_65:
            sub_255A7BCA8();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          v17[23] = v18;
          memmove(v17, __src, v18);
          v17[v18] = 0;
          v17 += 24;
        }

        v8 = a6;
        __src = v27;
        a6[1] = v17;
      }

      while (__src != v10)
      {
        if (v10 == ++__src)
        {
          v18 = 0;
        }

        else
        {
          v18 = v10 - __src;
        }

        v27 = &__src[v18];
        __p[0] = __src;
        if (v18)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else if (a5)
  {
    v29 = 0;
    LOBYTE(__p[0]) = 0;
    sub_255A7FF3C(a6, __p, 1uLL);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

LABEL_46:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255C005BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_255C00610(uint64_t a1, const void **a2, const void **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v9 = *a3 - *a2;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(8 * ((*(a1 + 8) - *a1) >> 3) + 0x17) = v9;
  if (v8 != v7)
  {
    memmove(v6, v7, v9);
  }

  v6[v9] = 0;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v6[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v6 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 24;
}

void sub_255C007BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void **sub_255C007D0(void **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255C00884(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 16)
    {
      v6 = *(v4 - 8);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  return a1;
}

void ***sub_255C00930(void ***a1)
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
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_255C009F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v9;
    if (v4)
    {
LABEL_4:
      v5 = *(a3 + 23);
      if (v5 >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      if (v5 >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v7, 0x8000100u, 0);
      sub_255C01F04(&v11, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_255C00C14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 && (atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    if (v2)
    {
LABEL_4:
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      sub_255C02244(&value, Mutable);
    }
  }

  else if (v2)
  {
    goto LABEL_4;
  }
}

void sub_255C00FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255A7A508(va1);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255C00FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255C00FD0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }
    }

    else if (v3 != 2 || *(a1 + 32))
    {
      goto LABEL_5;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v5 = 1;
  }

  IOSurfaceLock(*a1, v5, (a1 + 20));
  *(a1 + 16) = v5;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_255C010CC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else if (v3 != 2 || v2 != 0)
    {
      goto LABEL_7;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v6 = 1;
LABEL_17:
  IOSurfaceLock(*a1, v6, (a1 + 20));
  *(a1 + 16) = v6;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_255C011C4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }
    }

    else if (v3 != 2 || *(a1 + 32))
    {
      goto LABEL_5;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v5 = 1;
  }

  IOSurfaceLock(*a1, v5, (a1 + 20));
  *(a1 + 16) = v5;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_255C012C0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else if (v3 != 2 || v2 != 0)
    {
      goto LABEL_7;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v6 = 1;
LABEL_17:
  IOSurfaceLock(*a1, v6, (a1 + 20));
  *(a1 + 16) = v6;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_255C013B8(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Foundation/src/BundleRef.cpp", 49, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_13:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
LABEL_14:
      v8 = CFBundleCopyExecutableURL(*a1);
      sub_255C03A94(&v9, v8);
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_13;
  }

LABEL_15:
  abort();
}

void sub_255C015B4(void *a1@<X8>)
{
  sub_255C09444(__p);
  if (v4)
  {
    sub_255C05098(&bundleURL, __p);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_255C016F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C019AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C019E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C01A08(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

CFIndex sub_255C01A68@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(v3);
  if (result != TypeID)
  {
    goto LABEL_9;
  }

  result = CFStringGetLength(v3);
  if (result)
  {
    v5 = result;
    usedBufLen = 0;
    v10.location = 0;
    v10.length = result;
    result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v8, 0, sizeof(v8));
      if (usedBufLen)
      {
        std::string::append(&v8, usedBufLen, 0);
        v6 = usedBufLen;
        if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v8;
        }

        else
        {
          v7 = v8.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v6 = 0;
        v7 = &v8;
      }

      v11.location = 0;
      v11.length = v5;
      result = CFStringGetBytes(v3, v11, 0x8000100u, 0, 0, v7, v6, 0);
      *a2 = v8;
      goto LABEL_13;
    }

LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_13:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_255C01BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C01DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C01E48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C01E80(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C01EA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255C02108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C02188(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C021C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C021E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255C02448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C024C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C02500(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C02524(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void *sub_255C02588(const void **a1)
{
  result = *a1;
  if (result)
  {
    return CFGetTypeID(result);
  }

  return result;
}

BOOL sub_255C02598(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    v3 = CFGetTypeID(v3);
  }

  return v3 == a2;
}

void sub_255C025CC(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_255B00628(&v4, cf);
}

void sub_255C02724(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_255B00140(&v4, cf);
}

void sub_255C0289C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_255C0289C(a1, *a2);
    sub_255C0289C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_255C02EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255C02F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_255A7A508(va);
  sub_255A7A508(va1);
  sub_255A7A508(va2);
  _Unwind_Resume(a1);
}

void sub_255C02F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255C02F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_255A7A508(va);
  sub_255A7A508(va1);
  _Unwind_Resume(a1);
}

void sub_255C02F80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 40) == 1)
    {
      v4 = 0;
      v5 = 0;
      v3 = &v4;
      sub_255C02920();
    }

    v2 = 0uLL;
    v4 = 0;
    v5 = 0;
    v3 = &v4;
    sub_255C02920();
  }

  v4 = 0;
  v5 = 0;
  v3 = &v4;
  sub_255C02920();
}

void sub_255C032C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_255A81658(&a18);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255C03354(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x255C0333CLL);
}

void sub_255C03398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255C033AC()
{
  *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
  __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__l.__size_;
  sub_255C02920();
}

void sub_255C039B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_255A7A508(va);
  sub_255A7A508(va1);
  _Unwind_Resume(a1);
}

void sub_255C039D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255C039EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(&a18);
  _Unwind_Resume(a1);
}

void sub_255C03C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C03D18(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C03D50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C03D74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255C03FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255C04058(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255C04090(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255C040B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255C0411C(CFTypeID a1, CFTypeID a2)
{
  if (a1 != a2)
  {
    goto LABEL_10;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Foundation/src/Ptr.cpp", 38, "expected != found", 0x11uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  if (byte_27F7DD638 == 1)
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_7:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "expected != found", 17, &unk_255C2500B, 0);
      }

      while (v4 != v5);
      if (byte_27F7DD630)
      {
        goto LABEL_9;
      }

LABEL_51:
      abort();
    }
  }

LABEL_9:
  qword_27F7DD620(*algn_27F7DD628, "expected != found", 17, &unk_255C2500B, 0);
LABEL_10:
  sub_255C046AC(&v15, a1);
  sub_255C046AC(&__p, a2);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = "Are you wrapping a CFTypeRef from a different type ?";
  if (size == v9)
  {
    v11 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v15 : v15.__r_.__value_.__r.__words[0];
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v11, v12, size))
    {
      v10 = "Are you wrapping the same type from different static context ?";
    }
  }

  v13[0] = v10;
  v13[1] = strlen(v10);
  v16[23] = 16;
  strcpy(v16, "Runtime type ID ");
  v17 = 1;
  v20 = v16;
  p_p = &__p;
  v22 = v16;
  v23 = &__p;
  v24 = &__p;
  sub_255A99678(&v22, v16);
  v20 = v16;
  p_p = " (";
  v22 = v16;
  v23 = " (";
  v24 = " (";
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (*(&off_2867D0E90 + v17))(&v18, v16);
  std::to_string(&v18, a2);
  v20 = v16;
  p_p = &v18;
  v22 = v16;
  v23 = &v18;
  v24 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v19 = &v20;
  (off_2867D0EA8[v17])(&v19, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v20 = v16;
  p_p = ") does not match the expected compile time type ID ";
  v22 = v16;
  v23 = ") does not match the expected compile time type ID ";
  v24 = ") does not match the expected compile time type ID ";
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_2867D0EC0[v17])(&v18, v16);
  v20 = v16;
  p_p = &v15;
  v22 = v16;
  v23 = &v15;
  v24 = &v15;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_2867D0E78[v17])(&v18, v16);
  v20 = v16;
  p_p = " (";
  v22 = v16;
  v23 = " (";
  v24 = " (";
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (*(&off_2867D0E90 + v17))(&v18, v16);
  std::to_string(&v18, a1);
  v20 = v16;
  p_p = &v18;
  v22 = v16;
  v23 = &v18;
  v24 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v19 = &v20;
  (off_2867D0EA8[v17])(&v19, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v20 = v16;
  p_p = ") : ";
  v22 = v16;
  v23 = ") : ";
  v24 = ") : ";
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v20;
  (off_2867D0ED8[v17])(&v18, v16);
  sub_255B07308(&v20, v16, v13);
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v20 = &v18;
  (off_2867D0EF0[v17])(&v20, v16);
  if (v17 != -1)
  {
    (off_2867D0E60[v17])(&v20, v16);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }
}

void sub_255C045F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_255A81658(&a23);
  if (a16 < 0)
  {
    operator delete(__p);
    if (a22 < 0)
    {
LABEL_6:
      operator delete(a17);
      _Unwind_Resume(a1);
    }
  }

  else if (a22 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_255C046AC(std::string *a1, CFTypeID type_id)
{
  v3 = CFCopyTypeIDDescription(type_id);
  sub_255C01F04(&v8, v3);
  v5 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v9;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }

  sub_255C01A68(v5, &v7);
  *a1 = v7;
  memset(&v7, 0, sizeof(v7));
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

size_t sub_255C047D8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867D0E60[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255C048CC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867D0E60[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255C04A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C04AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255C04D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void *sub_255C04D44(void *a1, CFTypeRef cf)
{
  v10 = cf;
  if (cf)
  {
    v3 = CFCopyDescription(cf);
    sub_255C01F04(v8, v3);
  }

  v12 = 0;
  sub_255A7FD6C(&v14, &__p, &v10);
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v14 = &v13;
  (off_2867D0F20[v12])(v8, &v14, &__p);
  if (v12 != -1)
  {
    (off_2867D0F08[v12])(&v14, &__p);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = v8[1];
  }

  result = sub_255A7F9C8(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(v8[0]);
    return v7;
  }

  return result;
}

void sub_255C05018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C05098(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277CBECE8];
  if (*(a2 + 23) < 0)
  {
    sub_255A7E018(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(v2, v3, v4, 0x8000100u, 0);
  sub_255C01F04(&v8, v5);
}

void sub_255C0528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_255A7A508(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255C052B8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Foundation/src/URLRef.cpp", 66, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_13:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
LABEL_14:
      v9 = *a1;
      v8 = *(a1 + 8);
      if (v8 && (atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else if (v9)
      {
        goto LABEL_27;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Foundation/src/URLRef.cpp", 60, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_26:
          qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
LABEL_27:
          v14 = CFURLCopyScheme(*a1);
          sub_255C01F04(&v15, v14);
        }
      }

      else
      {
        v10 = qword_27F7DD608;
        v11 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_28;
        }
      }

      do
      {
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "IsValid()", 9, &unk_255C2500B, 0);
      }

      while (v10 != v11);
      if (byte_27F7DD630)
      {
        goto LABEL_26;
      }

LABEL_28:
      abort();
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_28;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_28;
  }

  goto LABEL_13;
}

void sub_255C05840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C058E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v7 = 0;
  v10 = v6;
  v11 = "Size mismatch between the input archive (";
  v12 = v6;
  v13 = "Size mismatch between the input archive (";
  v14 = "Size mismatch between the input archive (";
  v8.__r_.__value_.__r.__words[0] = &v10;
  sub_255A9A020(&v8);
  std::to_string(&v8, *a2);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_255A7C284();
  }

  v9 = &v10;
  (off_2867D12B8[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = ") and the input blob (";
  v12 = v6;
  v13 = ") and the input blob (";
  v14 = ") and the input blob (";
  if (v7 == -1)
  {
    sub_255A7C284();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (off_2867D12D0[v7])(&v8, v6);
  std::to_string(&v8, *a3);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_255A7C284();
  }

  v9 = &v10;
  (off_2867D12B8[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = ")";
  v12 = v6;
  v13 = ")";
  v14 = ")";
  if (v7 == -1)
  {
    sub_255A7C284();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (*(&off_2867D12E8 + v7))(&v8, v6);
  if (v7 == -1)
  {
    sub_255A7C284();
  }

  v10 = &v8;
  result = (off_2867D1300[v7])(&v10, v6);
  if (v7 != -1)
  {
    return (off_2867D12A0[v7])(&v10, v6);
  }

  return result;
}

void *sub_255C05B54(void *result, uint64_t a2)
{
  *result = &unk_2867D0F88;
  result[1] = 1;
  result[2] = a2;
  return result;
}

void *sub_255C05B94(void *result, uint64_t a2)
{
  *result = &unk_2867D10C8;
  result[1] = 1;
  result[2] = a2;
  return result;
}

uint64_t sub_255C05C84(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a2[1];
  }

  v5 = *(a1 + 16);
  std::ostream::write();
  v6 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  return std::ostream::write();
}

uint64_t sub_255C05CF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C05D48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C05D9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 2 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C05DF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C05E44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C05E98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C05EEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C05F40(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C05F94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 2 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C05FE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C0603C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06090(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C060E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06138(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::ostream::write();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C0618C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        v6 = a2[1];
      }

      v7 = *(v4 + 16);
      std::ostream::write();
      v8 = *(v4 + 16);
      if (*(a2 + 23) < 0)
      {
        v9 = *a2;
      }

      result = std::ostream::write();
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06220(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = a2[1];
  v4 = *(a1 + 16);
  std::ostream::write();
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

  v5 = *(a1 + 16);
  return std::ostream::write();
}

uint64_t sub_255C062B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = a2[1];
  v4 = *(a1 + 16);
  std::ostream::write();
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

  v5 = *(a1 + 16);
  return std::ostream::write();
}

uint64_t sub_255C06400(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  std::istream::read();
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v6 = a2[1];
    v5 = *a2;
    a2[1] = 0;
  }

  else
  {
    *(a2 + 23) = 0;
    v5 = a2;
  }

  *v5 = 0;
  v7 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  return std::istream::read();
}

uint64_t sub_255C064A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::istream::read();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C064FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::istream::read();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C06550(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 2 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C065A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C065F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C0664C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C066A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::istream::read();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C066F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      result = std::istream::read();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255C06748(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 2 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C0679C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C067F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06844(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C068EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *(v4 + 16);
      result = std::istream::read();
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06940(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 24 * a3;
    do
    {
      v8 = *(v4 + 16);
      std::istream::read();
      if ((*(a2 + 23) & 0x8000000000000000) != 0)
      {
        v10 = a2[1];
        v9 = *a2;
        a2[1] = 0;
      }

      else
      {
        *(a2 + 23) = 0;
        v9 = a2;
      }

      *v9 = 0;
      v6 = *(v4 + 16);
      if (*(a2 + 23) < 0)
      {
        v7 = *a2;
      }

      result = std::istream::read();
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C06A10(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = *(a1 + 16);
  std::istream::read();
  v10 = a2[1];
  if (v10)
  {
    sub_255C058E4(&v9, &v10, &v11);
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_2798073A8, MEMORY[0x277D825F8]);
  }

  v5 = *(a1 + 16);
  v6 = *a2;
  return std::istream::read();
}

void sub_255C06B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255C06B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255C06F5C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255C06C5C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867D12A0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255C06D50(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867D12A0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255C06F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255C06F5C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255C070F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void *sub_255C0710C(void *a1, unsigned int *a2)
{
  __p[240] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD518, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v27 = __cxa_guard_acquire(&qword_27F7DD518);
    a1 = v26;
    if (v27)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_255C07504(__p, 80);
      __cxa_guard_release(&qword_27F7DD518);
      a1 = v26;
    }
  }

  v3 = qword_27F7DD528;
  if (!qword_27F7DD528)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = &qword_27F7DD528;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == &qword_27F7DD528 || v4 < *(v5 + 8))
  {
LABEL_10:
    v5 = &qword_27F7DD528;
  }

  if ((atomic_load_explicit(&qword_27F7DD518, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v29 = __cxa_guard_acquire(&qword_27F7DD518);
    a1 = v28;
    if (v29)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_255C07504(__p, 80);
      __cxa_guard_release(&qword_27F7DD518);
      a1 = v28;
    }
  }

  if (v5 == &qword_27F7DD528)
  {
    v31 = *a2;
    v30 = sub_255A7F9C8(a1, "Unknown pixel format '", 22);
    __p[1] = 0;
    __p[2] = 0x100000000000000;
    v10 = (&v31 + 3);
    __p[0] = HIBYTE(v31);
    v11 = 1;
    if ((&v31 + 3) == &v31)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v13 = *(v10 - 1);
        v10 = (v10 - 1);
        v12 = v13;
        v14 = SHIBYTE(__p[2]);
        if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
        {
          v14 = __p[1];
          v16 = ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1);
          if (v16 == __p[1])
          {
            if ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
            {
              sub_255A7BCA8();
            }

LABEL_22:
            operator new();
          }

          v15 = __p[0];
        }

        else
        {
          v15 = __p;
          if (SHIBYTE(__p[2]) == 22)
          {
            goto LABEL_22;
          }
        }

        *(v14 + v15) = v12;
        v17 = v14 + 1;
        if (SHIBYTE(__p[2]) < 0)
        {
          __p[1] = v17;
        }

        else
        {
          HIBYTE(__p[2]) = v17 & 0x7F;
        }

        *(v17 + v15) = 0;
      }

      while (v10 != &v31);
      v11 = HIBYTE(__p[2]);
      v18 = __p[1];
    }

    if ((v11 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v18;
    }

    v21 = sub_255A7F9C8(v30, v19, v20);
    v22 = sub_255A7F9C8(v21, "' (=", 4);
    v23 = MEMORY[0x259C48FD0](v22, *a2);
    result = sub_255A7F9C8(v23, ")", 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      v24 = result;
      operator delete(__p[0]);
      result = v24;
    }
  }

  else
  {
    result = sub_255A7F9C8(a1, v5[5], v5[6]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255C074E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C07504(uint64_t result, uint64_t a2)
{
  qword_27F7DD530 = 0;
  qword_27F7DD528 = 0;
  qword_27F7DD520 = &qword_27F7DD528;
  if (a2)
  {
    v2 = result;
    do
    {
      if (!qword_27F7DD528)
      {
        operator new();
      }

      v2 += 24;
    }

    while (v2 != result + 24 * a2);
  }

  return result;
}

void sub_255C076B8(void *a1)
{
  if (a1)
  {
    sub_255C076B8(*a1);
    sub_255C076B8(a1[1]);

    operator delete(a1);
  }
}

void sub_255C07708(int a1, unint64_t a2, unint64_t a3)
{
  v6 = &unk_255C2500B;
  if (a1 == 12)
  {
    v6 = " (ENOMEM)";
  }

  v9 = v6;
  v12 = 0;
  v15 = v11;
  v16 = "posix_memalign failed to allocate ";
  v17 = v11;
  v18 = "posix_memalign failed to allocate ";
  v19 = "posix_memalign failed to allocate ";
  v13.__r_.__value_.__r.__words[0] = &v15;
  sub_255AA648C(&v13);
  std::to_string(&v13, a2);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v14 = &v15;
  (off_2867D1330[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = " bytes with alignment ";
  v17 = v11;
  v18 = " bytes with alignment ";
  v19 = " bytes with alignment ";
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (off_2867D1348[v12])(&v13, v11);
  std::to_string(&v13, a3);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v14 = &v15;
  (off_2867D1330[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = ": error code ";
  v17 = v11;
  v18 = ": error code ";
  v19 = ": error code ";
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (off_2867D1360[v12])(&v13, v11);
  std::to_string(&v13, a1);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v14 = &v15;
  (off_2867D1330[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = &v9;
  v17 = v11;
  v18 = &v9;
  v19 = &v9;
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (off_2867D1378[v12])(&v13, v11);
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v15 = &v13;
  (off_2867D1390[v12])(&v10, &v15, v11);
  if (v12 != -1)
  {
    (off_2867D1318[v12])(&v15, v11);
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/src/ArrayBuffer.cpp", 37, &unk_255C2500B, 0, v7, size, sub_255C101E0);
  std::string::~string(&v10);
  abort();
}

void sub_255C07A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C07A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255C07A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255C07A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_255A81658(&a14);
  _Unwind_Resume(a1);
}

void sub_255C07AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255C07AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255C07B1C(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = **(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867D1318[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255C07CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C07D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v14 = (8 * (&v5[-*a2] >> 3));
    v21 = v14;
    v22 = v14;
    v15 = *v3;
    v16 = strlen(*v3);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v14[23] = v16;
    if (v16)
    {
      memmove(v14, v15, v16);
    }

    v14[v17] = 0;
    v13 = v14 + 24;
    v18 = *(a2 + 8) - *a2;
    v19 = &v14[-v18];
    memcpy(&v21[-v18], *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *v3;
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v5[23] = v7;
    if (v7)
    {
      memmove(v5, v6, v7);
    }

    v5[v8] = 0;
    v13 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v13;
}

void sub_255C07F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255C07FA0(std::string *a1@<X8>)
{
  v39[19] = *MEMORY[0x277D85DE8];
  *&v32[40] = 0x4000000001;
  *&v32[24] = 4;
  *&v32[32] = 0;
  sub_255B9D0EC(&v32[24], &v32[28], &v32[32], &v32[48]);
  sub_255A81134(*&v32[48], v33, "_", 1uLL, &v24);
  v2 = *&v32[48];
  if (*&v32[48])
  {
    v3 = v33;
    v4 = *&v32[48];
    if (v33 != *&v32[48])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *&v32[48];
    }

    v33 = v2;
    operator delete(v4);
  }

  *&v32[48] = "densefeat";
  v33 = 9;
  v34 = "maps";
  v35 = 4;
  sub_255B9D2D8("b", &v32[40]);
  v6 = v31;
  if ((v31 & 0x80u) == 0)
  {
    v7 = v30;
  }

  else
  {
    v7 = v30[0];
  }

  if ((v31 & 0x80u) != 0)
  {
    v6 = v30[1];
  }

  v36[0].__locale_ = v7;
  v36[1].__locale_ = v6;
  sub_255B9D2D8("d", &v32[44]);
  v8 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v9 = v28;
  }

  else
  {
    v9 = v28[0];
  }

  if ((v29 & 0x80u) != 0)
  {
    v8 = v28[1];
  }

  v36[2].__locale_ = v9;
  v36[3].__locale_ = v8;
  v36[4].__locale_ = "quant";
  v36[5].__locale_ = 5;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  v11 = &v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
    v11 = v24.__r_.__value_.__r.__words[0];
  }

  v36[6].__locale_ = v11;
  v37 = size;
  sub_255A7F250(&v32[48], v38, "_", 1uLL, v32);
  v12 = v32[23];
  if ((v32[23] & 0x8000000000000000) != 0)
  {
    v13 = *&v32[8];
    v14 = (*&v32[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v14 - *&v32[8]) < 0x1C)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&v32[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v32[8] + 28 - v14)
      {
        sub_255A7BCA8();
      }

LABEL_26:
      operator new();
    }

    v15 = *v32;
    qmemcpy((*v32 + *&v32[8]), ".mlmodelc/model.espresso.net", 28);
    v16 = v13 + 28;
    *&v32[8] = v13 + 28;
  }

  else
  {
    if (v32[23] < 0x17)
    {
      goto LABEL_26;
    }

    v15 = v32;
    qmemcpy(&v32[v32[23]], ".mlmodelc/model.espresso.net", 28);
    v16 = v12 + 28;
    v32[23] = (v12 + 28) & 0x7F;
  }

  v15[v16] = 0;
  *v26 = *v32;
  v27 = *&v32[16];
  memset(v32, 0, 24);
  if ((v29 & 0x80000000) == 0)
  {
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_45:
    operator delete(v30[0]);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

  operator delete(v28[0]);
  if (v31 < 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_46:
  operator delete(v24.__r_.__value_.__l.__data_);
LABEL_32:
  v17 = SHIBYTE(v27);
  if (v27 >= 0)
  {
    v18 = HIBYTE(v27);
  }

  else
  {
    v18 = v26[1];
  }

  if (v18 + 49 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v18 + 49 > 0x16)
  {
    operator new();
  }

  qmemcpy(v32, "CV3D_LearnedFeatures_DenseFeatNet_EndToEnd_Model/", 49);
  if (v27 >= 0)
  {
    v19 = v26;
  }

  else
  {
    v19 = v26[0];
  }

  memmove(&v32[49], v19, v18);
  v32[v18 + 49] = 0;
  sub_255A7EBE8(&v32[48]);
  sub_255AA8B4C(v32, &v34, 1, &v24);
  if ((v25 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to access model resource path");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(a1, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    if ((v25 & 1) != 0 && SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v24;
  }

  *&v32[48] = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *&v32[*(*&v32[48] - 24) + 48] = *(MEMORY[0x277D82818] + 64);
  v34 = v20;
  v35 = MEMORY[0x277D82878] + 16;
  if ((v38[15] & 0x80000000) != 0)
  {
    operator delete(v37);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v39);
  if ((v32[23] & 0x80000000) != 0)
  {
    operator delete(*v32);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
LABEL_54:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v26[0]);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_255C08634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __cxa_free_exception(v41);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_255A78E78(&a41);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (v42 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_255C08A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v33 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v33)
  {
LABEL_8:
    if (a27 == 1 && a26 < 0)
    {
      operator delete(a21);
    }

    sub_255A78E78(&a29);
    if (*(v34 - 49) < 0)
    {
      operator delete(*(v34 - 72));
      operator delete(v31);
      _Unwind_Resume(a1);
    }

    operator delete(v31);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v32);
  goto LABEL_8;
}

void sub_255C08DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v20);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_255A78E78(&a17);
  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
    operator delete(v19);
    _Unwind_Resume(a1);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_255C08E40(int a1@<W0>, std::string *a2@<X8>)
{
  if (a1)
  {
    v3 = ".bundle";
  }

  else
  {
    v3 = ".espresso.net";
  }

  if (a1)
  {
    v4 = 7;
  }

  else
  {
    v4 = 13;
  }

  HIBYTE(v23[9]) = v4;
  memcpy(&v23[7], v3, v4);
  *(&v23[7] + v4) = 0;
  v5 = SHIBYTE(v23[9]);
  if (SHIBYTE(v23[9]) >= 0)
  {
    v6 = HIBYTE(v23[9]);
  }

  else
  {
    v6 = v23[8];
  }

  if (v6 + 72 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v6 + 72 > 0x16)
  {
    operator new();
  }

  qmemcpy(&v23[4], "p32_64u_u8_3_7_0_6aa24xpnhm_b1024_gf_i_128f_u8_3_7_0_a3p73mmcsz_b1/model", 72);
  if (v5 >= 0)
  {
    v7 = &v23[7];
  }

  else
  {
    v7 = v23[7];
  }

  memmove(&v24, v7, v6);
  *(&v24 + v6) = 0;
  v8 = SHIBYTE(v23[6]);
  if (SHIBYTE(v23[6]) >= 0)
  {
    v9 = HIBYTE(v23[6]);
  }

  else
  {
    v9 = v23[5];
  }

  if (v9 + 57 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v9 + 57 > 0x16)
  {
    operator new();
  }

  qmemcpy(v23, "CV3D_LearnedFeatures_ATUHardNetGlobalFeat_EndToEnd_Model/", 57);
  if (v8 >= 0)
  {
    v10 = &v23[4];
  }

  else
  {
    v10 = v23[4];
  }

  memmove(&v23[7] + 1, v10, v9);
  *(&v23[7] + v9 + 1) = 0;
  sub_255A7EBE8(v17);
  sub_255AA8B4C(v23, &v18, 1, &__p);
  if ((v16 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v19, &v13);
    sub_255A83DB0("Failed to access model resource path: ", &v13, &v14);
    std::runtime_error::runtime_error(exception, &v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if ((v16 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }

  v17[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v11;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v22);
  if (SHIBYTE(v23[2]) < 0)
  {
    operator delete(v23[0]);
    if ((v8 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

LABEL_39:
      operator delete(v23[7]);
      return;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v23[4]);
  if (v5 < 0)
  {
    goto LABEL_39;
  }
}

void sub_255C092B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v49 & 1) == 0)
    {
LABEL_8:
      if (a28 == 1 && a27 < 0)
      {
        operator delete(a22);
      }

      sub_255A7F000(&a30, MEMORY[0x277D82818]);
      MEMORY[0x259C49250](&a48);
      if (*(v52 - 137) < 0)
      {
        operator delete(*(v52 - 160));
        if ((v51 & 0x80000000) == 0)
        {
LABEL_13:
          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_17;
        }
      }

      else if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(*(v52 - 128));
      if ((v50 & 0x80000000) == 0)
      {
LABEL_14:
        _Unwind_Resume(a1);
      }

LABEL_17:
      operator delete(*(v52 - 104));
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v48);
  goto LABEL_8;
}

void sub_255C093B0(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27F7DD5D8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27F7DD5D8))
  {
    *a1 = qword_27F7DD5D0;
  }

  else
  {
    sub_255AA9258(&qword_27F7DD5D0);
    __cxa_guard_release(&qword_27F7DD5D8);
    *a1 = qword_27F7DD5D0;
  }
}

void sub_255C09444(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27F7DD538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD538))
  {
    sub_255C09534();
    __cxa_guard_release(&qword_27F7DD538);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (byte_27F7DD558 == 1)
  {
    if (byte_27F7DD540[23] < 0)
    {
      sub_255A7E018(a1, *byte_27F7DD540, *&byte_27F7DD540[8]);
    }

    else
    {
      *a1 = *byte_27F7DD540;
      *(a1 + 16) = *&byte_27F7DD540[16];
    }

    *(a1 + 24) = 1;
  }
}

void sub_255C0950C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C09534()
{
  v51 = *MEMORY[0x277D85DE8];
  if (!dladdr(sub_255C09444, &__dst))
  {
    goto LABEL_10;
  }

  memset(&__p, 0, sizeof(__p));
  v0 = (__dst.dli_fname - 1);
  do
  {
    v1 = v0->__r_.__value_.__s.__data_[1];
    v0 = (v0 + 1);
  }

  while (v1);
  sub_255AA8D4C(&__p, __dst.dli_fname, v0);
  std::__fs::filesystem::__weakly_canonical(&v39, &__p, 0);
  v41 = v39;
  memset(&v39, 0, sizeof(v39));
  v42 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v42 & 1) == 0)
    {
LABEL_10:
      byte_27F7DD540[0] = 0;
      byte_27F7DD558 = 0;
      goto LABEL_193;
    }
  }

  v2 = std::__fs::filesystem::path::__parent_path(&v41);
  if (v2.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v2.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v2.__size_;
  if (v2.__size_)
  {
    memmove(&__dst, v2.__data_, v2.__size_);
  }

  *(&__dst.dli_fname + v2.__size_) = 0;
  *&__p.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  __p.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v3 = std::__fs::filesystem::path::__extension(&__p);
  if (v3.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst.dli_fname + v3.__size_) = 0;
  *&v50.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v50.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_255AA8D4C(&__dst, ".framework", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v4.__data_ = &__dst;
  }

  else
  {
    v4.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v4.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v4.__size_ = __dst.dli_fbase;
  }

  v5 = std::__fs::filesystem::path::__compare(&v50, v4);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    operator delete(__dst.dli_fname);
    if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if (v5)
      {
        goto LABEL_28;
      }

LABEL_34:
      v39.__pn_ = __p;
      v40 = 1;
      goto LABEL_80;
    }
  }

  else if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v50.__pn_.__r_.__value_.__l.__data_);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_28:
  v6 = std::__fs::filesystem::path::__parent_path(&__p);
  if (v6.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v6.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v6.__size_;
  if (v6.__size_)
  {
    memmove(&__dst, v6.__data_, v6.__size_);
  }

  *(&__dst.dli_fname + v6.__size_) = 0;
  *&v50.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v50.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v7 = std::__fs::filesystem::path::__filename(&v50);
  if (v7.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v7.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v7.__size_;
  if (v7.__size_)
  {
    memmove(&__dst, v7.__data_, v7.__size_);
  }

  *(&__dst.dli_fname + v7.__size_) = 0;
  *&v45.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v45.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_255AA8D4C(&__dst, "Versions", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v8.__data_ = &__dst;
  }

  else
  {
    v8.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v8.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v8.__size_ = __dst.dli_fbase;
  }

  v9 = std::__fs::filesystem::path::__compare(&v45, v8);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    v10 = v9;
    operator delete(__dst.dli_fname);
    if (v10)
    {
      goto LABEL_76;
    }
  }

  else if (v9)
  {
    goto LABEL_76;
  }

  v11 = std::__fs::filesystem::path::__parent_path(&v50);
  if (v11.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v11.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v11.__size_;
  if (v11.__size_)
  {
    memmove(&__dst, v11.__data_, v11.__size_);
  }

  *(&__dst.dli_fname + v11.__size_) = 0;
  *&v44.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v44.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  v12 = std::__fs::filesystem::path::__extension(&v44);
  if (v12.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v12.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.dli_sname) = v12.__size_;
  if (v12.__size_)
  {
    memmove(&__dst, v12.__data_, v12.__size_);
  }

  *(&__dst.dli_fname + v12.__size_) = 0;
  *&v43.__pn_.__r_.__value_.__l.__data_ = *&__dst.dli_fname;
  v43.__pn_.__r_.__value_.__r.__words[2] = __dst.dli_sname;
  memset(&__dst, 0, 24);
  sub_255AA8D4C(&__dst, ".framework", "");
  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v13.__data_ = &__dst;
  }

  else
  {
    v13.__data_ = __dst.dli_fname;
  }

  if (SHIBYTE(__dst.dli_sname) >= 0)
  {
    v13.__size_ = HIBYTE(__dst.dli_sname);
  }

  else
  {
    v13.__size_ = __dst.dli_fbase;
  }

  v14 = std::__fs::filesystem::path::__compare(&v43, v13);
  if (SHIBYTE(__dst.dli_sname) < 0)
  {
    operator delete(__dst.dli_fname);
    if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_73:
      if (v14)
      {
        goto LABEL_74;
      }

      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

  operator delete(v43.__pn_.__r_.__value_.__l.__data_);
  if (v14)
  {
LABEL_74:
    if (SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_76:
    v39.__pn_.__r_.__value_.__s.__data_[0] = 0;
    v40 = 0;
    if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_89;
  }

LABEL_88:
  v39 = v44;
  v40 = 1;
  if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(v45.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v50.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_79:
    if (v40 != 1)
    {
      goto LABEL_92;
    }

    goto LABEL_80;
  }

LABEL_91:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v40 != 1)
  {
    goto LABEL_92;
  }

LABEL_80:
  std::__fs::filesystem::__status(&v39, 0);
  if (!LOBYTE(__dst.dli_fname) || LOBYTE(__dst.dli_fname) == 255 || (std::__fs::filesystem::__status(&v39, 0), v15 = WORD2(__dst.dli_fname), std::__fs::filesystem::__status(&v39, 0), LOBYTE(__dst.dli_fname) != 2) || (v15 & 0x100) == 0)
  {
LABEL_92:
    LODWORD(v45.__pn_.__r_.__value_.__l.__data_) = 1026;
    if (_NSGetExecutablePath(&__dst, &v45))
    {
      if (LODWORD(v45.__pn_.__r_.__value_.__l.__data_))
      {
        operator new();
      }

      v18 = _NSGetExecutablePath(0, &v45);
      if (v18)
      {
        __p.__r_.__value_.__s.__data_[0] = 0;
        v38 = 0;
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
        v30 = -1;
          ;
        }

        sub_255AA8D4C(&v50.__pn_, 0, v30);
        __p = v50.__pn_;
        v38 = 1;
      }

      if (v18)
      {
        byte_27F7DD540[0] = 0;
        byte_27F7DD558 = 0;
LABEL_184:
        if (v38 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v40 & 1) != 0 && SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        goto LABEL_190;
      }
    }

    else
    {
      memset(&v50, 0, sizeof(v50));
      v16 = &v48;
      do
      {
        v17 = v16->__r_.__value_.__s.__data_[1];
        v16 = (v16 + 1);
      }

      while (v17);
      sub_255AA8D4C(&v50.__pn_, &__dst, v16);
      __p = v50.__pn_;
      v38 = 1;
    }

    v19 = std::__fs::filesystem::path::__parent_path(&__p);
    if (v19.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    if (v19.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(__dst.dli_sname) = v19.__size_;
    if (v19.__size_)
    {
      memmove(&__dst, v19.__data_, v19.__size_);
    }

    *(&__dst.dli_fname + v19.__size_) = 0;
    dli_fname = __dst.dli_fname;
    v46[0] = __dst.dli_sname;
    *(v46 + 3) = *(&__dst.dli_sname + 3);
    dli_sname_high = SHIBYTE(__dst.dli_sname);
    LOBYTE(__dst.dli_fname) = 0;
    LOBYTE(__dst.dli_saddr) = 0;
    if (SHIBYTE(__dst.dli_sname) < 0)
    {
      sub_255A7E018(&__dst, dli_fname, __dst.dli_fbase);
    }

    else
    {
      __dst.dli_fname = dli_fname;
      LODWORD(__dst.dli_sname) = v46[0];
      *(&__dst.dli_sname + 3) = *(v46 + 3);
    }

    LOBYTE(__dst.dli_saddr) = 1;
    v22 = std::__fs::filesystem::path::__extension(&__dst);
    if (v22.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    data = v22.__data_;
    if (v22.__size_ >= 0x17)
    {
      operator new();
    }

    *(&v50.__pn_.__r_.__value_.__s + 23) = v22.__size_;
    if (v22.__size_)
    {
      memmove(&v50, v22.__data_, v22.__size_);
    }

    v50.__pn_.__r_.__value_.__s.__data_[v22.__size_] = 0;
    v45 = v50;
    memset(&v44, 0, sizeof(v44));
    sub_255AA8D4C(&v44.__pn_, ".app", "");
    if ((v44.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24.__data_ = &v44;
    }

    else
    {
      v24.__data_ = v44.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v44.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24.__size_ = HIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24.__size_ = v44.__pn_.__r_.__value_.__l.__size_;
    }

    if (!std::__fs::filesystem::path::__compare(&v45, v24))
    {
      v26 = 1;
      if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_127;
    }

    v25 = std::__fs::filesystem::path::__extension(&__dst);
    if (v25.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    data = v25.__data_;
    if (v25.__size_ >= 0x17)
    {
      operator new();
    }

    *(&v50.__pn_.__r_.__value_.__s + 23) = v25.__size_;
    if (v25.__size_)
    {
      memmove(&v50, v25.__data_, v25.__size_);
    }

    v50.__pn_.__r_.__value_.__s.__data_[v25.__size_] = 0;
    v43 = v50;
    memset(&v50, 0, sizeof(v50));
    sub_255AA8D4C(&v50.__pn_, ".bundle", "");
    if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32.__data_ = &v50;
    }

    else
    {
      v32.__data_ = v50.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32.__size_ = HIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32.__size_ = v50.__pn_.__r_.__value_.__l.__size_;
    }

    v26 = std::__fs::filesystem::path::__compare(&v43, v32) == 0;
    if (SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_147:
        if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_127;
      }
    }

    else if ((SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(v43.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_148:
      if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_149:
        dli_saddr = __dst.dli_saddr;
        if (v26)
        {
LABEL_150:
          if (dli_saddr)
          {
            v29 = __dst.dli_fname;
            *v47 = __dst.dli_fbase;
            *&v47[7] = *(&__dst.dli_fbase + 7);
            v28 = 1;
            data = HIBYTE(__dst.dli_sname);
LABEL_152:
            if ((dli_sname_high & 0x80000000) == 0)
            {
              goto LABEL_153;
            }

            goto LABEL_161;
          }

          goto LABEL_159;
        }

LABEL_129:
        v28 = 0;
        v29 = 0;
        if ((dli_saddr & 1) == 0)
        {
          goto LABEL_160;
        }

        if ((SHIBYTE(__dst.dli_sname) & 0x80000000) == 0)
        {
          goto LABEL_152;
        }

        operator delete(__dst.dli_fname);
LABEL_159:
        v29 = 0;
        v28 = 0;
LABEL_160:
        if ((dli_sname_high & 0x80000000) == 0)
        {
LABEL_153:
          v33 = v40;
          if (v40 == v28)
          {
            goto LABEL_154;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(dli_fname);
        v33 = v40;
        if (v40 == v28)
        {
LABEL_154:
          if (v33)
          {
            if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v39.__pn_.__r_.__value_.__l.__data_);
            }

            v39.__pn_.__r_.__value_.__r.__words[0] = v29;
            v39.__pn_.__r_.__value_.__l.__size_ = *v47;
            *(&v39.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v47[7];
            *(&v39.__pn_.__r_.__value_.__s + 23) = data;
            if (v40 != 1)
            {
LABEL_177:
              v35 = std::__fs::filesystem::path::__parent_path(&__p);
              if (v35.__size_ > 0x7FFFFFFFFFFFFFF7)
              {
                sub_255A7BCA8();
              }

              if (v35.__size_ >= 0x17)
              {
                operator new();
              }

              HIBYTE(__dst.dli_sname) = v35.__size_;
              if (v35.__size_)
              {
                memmove(&__dst, v35.__data_, v35.__size_);
              }

              *(&__dst.dli_fname + v35.__size_) = 0;
              *(v50.__pn_.__r_.__value_.__r.__words + 7) = *(&__dst.dli_fbase + 7);
              v50.__pn_.__r_.__value_.__r.__words[0] = __dst.dli_fbase;
              *byte_27F7DD540 = *&__dst.dli_fname;
              *&byte_27F7DD540[15] = *(v50.__pn_.__r_.__value_.__r.__words + 7);
              byte_27F7DD540[23] = HIBYTE(__dst.dli_sname);
              byte_27F7DD558 = 1;
              goto LABEL_184;
            }

LABEL_170:
            std::__fs::filesystem::__status(&v39, 0);
            if (LOBYTE(__dst.dli_fname))
            {
              if (LOBYTE(__dst.dli_fname) != 255)
              {
                std::__fs::filesystem::__status(&v39, 0);
                v34 = WORD2(__dst.dli_fname);
                std::__fs::filesystem::__status(&v39, 0);
                if (LOBYTE(__dst.dli_fname) == 2 && (v34 & 0x100) != 0)
                {
                  byte_27F7DD540[0] = 0;
                  byte_27F7DD558 = 0;
                  if (v40 == 1)
                  {
                    *byte_27F7DD540 = v39;
                    memset(&v39, 0, sizeof(v39));
                    byte_27F7DD558 = 1;
                  }

                  goto LABEL_184;
                }
              }
            }

            goto LABEL_177;
          }

LABEL_166:
          if (v28 && data < 0)
          {
            operator delete(v29);
          }

          if (v40 != 1)
          {
            goto LABEL_177;
          }

          goto LABEL_170;
        }

LABEL_162:
        if (!v33)
        {
          v39.__pn_.__r_.__value_.__r.__words[0] = v29;
          v39.__pn_.__r_.__value_.__l.__size_ = *v47;
          *(&v39.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v47[7];
          *(&v39.__pn_.__r_.__value_.__s + 23) = data;
          v40 = 1;
          goto LABEL_170;
        }

        if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        v40 = 0;
        goto LABEL_166;
      }

LABEL_128:
      operator delete(v45.__pn_.__r_.__value_.__l.__data_);
      dli_saddr = __dst.dli_saddr;
      if (v26)
      {
        goto LABEL_150;
      }

      goto LABEL_129;
    }

LABEL_127:
    operator delete(v44.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_128;
  }

  byte_27F7DD540[0] = 0;
  byte_27F7DD558 = 0;
  if (v40 == 1)
  {
    *byte_27F7DD540 = v39;
    byte_27F7DD558 = 1;
  }

LABEL_190:
  if ((v42 & 1) != 0 && SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_193:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_255C0A308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (*(v61 - 89) < 0)
  {
    operator delete(*(v61 - 112));
  }

  if (v60)
  {
    operator delete(v60);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0A594(std::string *a1, uint64_t *a2)
{
  if ((a2[3] & 1) == 0)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v24 = a2[2];
    *v23 = *a2;
    v3 = v23;
    if (v24 < 0)
    {
      v3 = v23[0];
    }

    goto LABEL_11;
  }

  v4 = a2;
  sub_255A7E018(v23, *a2, a2[1]);
  a2 = v4;
  if (v24 >= 0)
  {
    v3 = v23;
  }

  else
  {
    v3 = v23[0];
  }

  if ((*(v4 + 23) & 0x80000000) == 0)
  {
LABEL_11:
    *__p = *a2;
    v22 = a2[2];
    goto LABEL_12;
  }

  v19 = *v4;
  v18 = v4[1];
  v20 = v3;
  sub_255A7E018(__p, *a2, v18);
  v3 = v20;
LABEL_12:
  v5 = *MEMORY[0x277CBECE8];
  if (v22 >= 0)
  {
    v6 = HIBYTE(v22);
  }

  else
  {
    v6 = __p[1];
  }

  v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v6, 0x8000100u, 0);
  v25 = v7;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_17:
      if (v7)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v23[0]);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_21:
  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Apple/src/BundlePath.cpp", 63, "cf_path_str", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v8 = qword_27F7DD608;
    v9 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_59;
    }

    do
    {
LABEL_26:
      (*v8)(*(v8 + 8), "cf_path_str", 11, &unk_255C2500B, 0);
      v8 += 16;
    }

    while (v8 != v9);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_28;
  }

  if (byte_27F7DD638 == 1)
  {
    v8 = qword_27F7DD608;
    v9 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  qword_27F7DD620(*algn_27F7DD628, "cf_path_str", 11, &unk_255C2500B, 0);
LABEL_29:
  v10 = CFURLCreateWithFileSystemPath(v5, v7, kCFURLPOSIXPathStyle, 1u);
  v23[0] = v10;
  if (v10)
  {
    goto LABEL_38;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Apple/src/BundlePath.cpp", 67, "cf_path_url", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v11 = qword_27F7DD608;
    v12 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_59;
    }

    do
    {
LABEL_35:
      (*v11)(*(v11 + 8), "cf_path_url", 11, &unk_255C2500B, 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_37;
  }

  if (byte_27F7DD638 == 1)
  {
    v11 = qword_27F7DD608;
    v12 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_35;
    }
  }

LABEL_37:
  qword_27F7DD620(*algn_27F7DD628, "cf_path_url", 11, &unk_255C2500B, 0);
LABEL_38:
  v13 = CFBundleCreate(v5, v10);
  __p[0] = v13;
  if (!v13)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Apple/src/BundlePath.cpp", 70, "cf_current_bundle", 0x11uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_46:
        qword_27F7DD620(*algn_27F7DD628, "cf_current_bundle", 17, &unk_255C2500B, 0);
        goto LABEL_47;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_59;
      }
    }

    do
    {
      (*v14)(*(v14 + 8), "cf_current_bundle", 17, &unk_255C2500B, 0);
      v14 += 16;
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_46;
    }

LABEL_59:
    abort();
  }

LABEL_47:
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v13, *MEMORY[0x277CBED38]);
  v17 = ValueForInfoDictionaryKey;
  if (ValueForInfoDictionaryKey)
  {
    CFRetain(ValueForInfoDictionaryKey);
  }

  sub_255C0B5D8(v17, a1);
  if (v17)
  {
    CFRelease(v17);
  }

  __p[0] = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v23[0] = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v25 = 0;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_255C0AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0AAFC(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27F7DD600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD600))
  {
    sub_255C09444(__p);
    sub_255C0A594(&xmmword_27F7DD5E0, __p);
    if (v4 == 1 && v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_guard_release(&qword_27F7DD600);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (byte_27F7DD5F8 == 1)
  {
    if (byte_27F7DD5F7 < 0)
    {
      sub_255A7E018(a1, xmmword_27F7DD5E0, *(&xmmword_27F7DD5E0 + 1));
    }

    else
    {
      *a1 = xmmword_27F7DD5E0;
      *(a1 + 16) = unk_27F7DD5F0;
    }

    *(a1 + 24) = 1;
  }
}

void sub_255C0ABE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_27F7DD600);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_27F7DD600);
  _Unwind_Resume(a1);
}

void sub_255C0AC30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_255C0AC58(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_255C0AC90(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_255C0ACC8(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_255C0AD18(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0AD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0AD98(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0AE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0AE18(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0AE84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0AE98(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0AF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0AF18(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0AF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0AF98(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0B004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0B018(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0B084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0B098(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MGGetStringAnswer();
  v11 = v2;
  if (v2 && (v3 = v2, sub_255C0B5D8(v2, &v9), CFRelease(v3), (v10 & 1) != 0))
  {
    v4 = v9.__r_.__value_.__r.__words[0];
    v5 = v9.__r_.__value_.__r.__words[1];
    v6 = v9.__r_.__value_.__s.__data_[10];
    v11 = *(&v9.__r_.__value_.__r.__words[1] + 3);
    v12 = *(&v9.__r_.__value_.__r.__words[2] + 3);
    v7 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = 0;
    v7 = 10;
    v5 = 28271;
    v4 = 0x69746375646F7250;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 10) = v6;
  *(a1 + 11) = v11;
  *(a1 + 19) = v12;
  *(a1 + 23) = v7;
  *(a1 + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255C0B184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C0B1D0()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

uint64_t sub_255C0B240()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

uint64_t sub_255C0B2B0()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

void sub_255C0B34C(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_255C0B5D8(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_255C0B3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0B560(va);
  _Unwind_Resume(a1);
}

void sub_255C0B3CC(uint64_t a1@<X8>)
{
  v2 = MGGetStringAnswer();
  *&v7 = v2;
  if (!v2)
  {
    v4 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v10 = 0;
LABEL_12:
    *a1 = 0;
    *(a1 + 24) = 0;
    if ((v4 & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  v3 = v2;
  sub_255C0B5D8(v2, &__p);
  CFRelease(v3);
  v4 = v10;
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_255C001D4(p_p, size, ":", 1, 0, &v7);
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = 1;
  if (v10)
  {
LABEL_13:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_255C0B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C0B4F0()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

const void **sub_255C0B560(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const __CFString *sub_255C0B5D8@<X0>(const __CFString *result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v3 = result;
  result = CFStringGetLength(result);
  if (result)
  {
    v4 = result;
    usedBufLen = 0;
    v9.location = 0;
    v9.length = result;
    result = CFStringGetBytes(v3, v9, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v7, 0, sizeof(v7));
      if (usedBufLen)
      {
        std::string::append(&v7, usedBufLen, 0);
        v5 = usedBufLen;
        if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v7;
        }

        else
        {
          v6 = v7.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v5 = 0;
        v6 = &v7;
      }

      v10.location = 0;
      v10.length = v4;
      result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, v6, v5, 0);
      *a2 = v7;
      goto LABEL_12;
    }

LABEL_8:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_255C0B6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0B718(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 112) != 1)
  {
    v35[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
    LODWORD(v34.__r_.__value_.__l.__data_) = *a1;
    std::error_condition::message(&v22, a1);
    sub_255C0E6FC(a2, v35, &v34, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v22.__r_.__value_.__r.__words[0];
LABEL_41:
      operator delete(v9);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v34.__r_.__value_.__r.__words[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
  LODWORD(__dst) = *a1;
  std::error_condition::message(&v22, a1);
  sub_255C0E6FC(v20, &v34.__r_.__value_.__l.__data_, &__dst, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v4 = v21;
  v5 = v20;
  if ((v21 & 0x80u) != 0)
  {
    v5 = v20[0];
    v4 = v20[1];
  }

  v35[0] = v5;
  v35[1] = v4;
  sub_255A7EBE8(&v22);
  if (*(a1 + 40) == 1)
  {
    sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], "detail", 6);
    sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], ": ", 2);
    v6 = *(a1 + 39);
    if (v6 >= 0)
    {
      v7 = a1 + 16;
    }

    else
    {
      v7 = *(a1 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 39);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], v7, v8);
    if (*(a1 + 104))
    {
      sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], ", ", 2);
      goto LABEL_18;
    }
  }

  else if (*(a1 + 104))
  {
LABEL_18:
    sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], "location", 8);
    sub_255A7F9C8(&v22.__r_.__value_.__r.__words[2], ": ", 2);
    operator new();
  }

  if ((v31 & 0x10) != 0)
  {
    v12 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v12 = v27;
    }

    v11 = &v26;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v10 = 0;
      v19 = 0;
      goto LABEL_32;
    }

    v11 = v25;
    v12 = v25[2];
  }

  v13 = *v11;
  v10 = v12 - *v11;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v19 = v12 - *v11;
  if (v10)
  {
    memmove(v18, v13, v10);
  }

LABEL_32:
  *(v18 + v10) = 0;
  v22.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22.__r_.__value_.__r.__words[2] = v14;
  v23 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v32);
  v15 = v19;
  v16 = v18;
  if ((v19 & 0x80u) != 0)
  {
    v16 = v18[0];
    v15 = v18[1];
  }

  v35[2] = v16;
  v35[3] = v15;
  sub_255A7F250(v35, &v36, "; ", 2uLL, a2);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v21 < 0)
    {
LABEL_40:
      v9 = v20[0];
      goto LABEL_41;
    }
  }

  else if (v21 < 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_255C0BDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (*(v41 - 137) < 0)
  {
    operator delete(*(v41 - 160));
  }

  sub_255A7F000(&a22, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](&a41);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255C0BEC8(uint64_t a1, _OWORD *a2)
{
  sub_255C0B718(a2, &v5);
  std::runtime_error::runtime_error(a1, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2867C9058;
  *(a1 + 16) = *a2;
  sub_255C0D434(a1 + 32, a2 + 1);
  return a1;
}

void sub_255C0BF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0BF80(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 120) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 64));
    a1 = v4;
    if (*(v4 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 96));
  a1 = v3;
  if (*(v3 + 87) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 55) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
  }

LABEL_10:

  std::runtime_error::~runtime_error(a1);
}

void sub_255C0C03C(std::runtime_error *this)
{
  if (LOBYTE(this[8].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[7].__imp_.__imp_) == 1)
  {
    if ((SHIBYTE(this[7].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[4].__vftable);
      if (LOBYTE(this[3].__imp_.__imp_) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[6].__vftable);
    if (SHIBYTE(this[5].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[3].__imp_.__imp_) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

LABEL_10:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x259C49320);
}

void sub_255C0C0FC(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        operator new();
      }

LABEL_8:
      a2[23] = 18;
      strcpy(a2, "unknown error code");
      return;
    }

    a2[23] = 13;
    strcpy(a2, "runtime error");
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        a2[23] = 9;
        strcpy(a2, "exception");
        return;
      }

      goto LABEL_8;
    }

    a2[23] = 8;
    strcpy(a2, "no error");
  }
}

_BYTE *sub_255C0C244(_BYTE *result, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_255A7E018(result, *a2, *(a2 + 1));
    result = v3;
    v3[24] = 1;
    v3[32] = 0;
    v3[88] = 0;
  }

  else
  {
    v2 = *a2;
    *(result + 2) = *(a2 + 2);
    *result = v2;
    result[24] = 1;
    result[32] = 0;
    result[88] = 0;
  }

  return result;
}

uint64_t sub_255C0C2B4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_255A7E018(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 3);
    if (*(a2 + 55) < 0)
    {
      sub_255A7E018((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_255C0C35C(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_255A7E0D4(v1);
    _Unwind_Resume(a1);
  }

  sub_255A7E0D4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_255C0C394(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a4 + 96) == 1)
  {
    *(result + 40) = 0;
    if (*(a4 + 24) == 1)
    {
      v4 = *a4;
      *(result + 32) = *(a4 + 2);
      *(result + 16) = v4;
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      *a4 = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a4 + 88) == 1)
    {
      v5 = a4[2];
      *(result + 64) = *(a4 + 6);
      *(result + 48) = v5;
      *(a4 + 5) = 0;
      *(a4 + 6) = 0;
      *(a4 + 4) = 0;
      *(result + 72) = *(a4 + 7);
      v6 = a4[4];
      *(result + 96) = *(a4 + 10);
      *(result + 80) = v6;
      *(a4 + 9) = 0;
      *(a4 + 10) = 0;
      *(a4 + 8) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255C0C444(uint64_t result)
{
  if (*(result + 88) == 1)
  {
    if ((*(result + 87) & 0x80000000) == 0)
    {
      if ((*(result + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v2 = result;
      operator delete(*(result + 32));
      result = v2;
      if (*(v2 + 24) != 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    v1 = result;
    operator delete(*(result + 64));
    result = v1;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_8;
    }
  }

LABEL_4:
  if (*(result + 24) != 1)
  {
    return result;
  }

LABEL_5:
  if (*(result + 23) < 0)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

void sub_255C0C4F0(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v79[2] = *MEMORY[0x277D85DE8];
  v31 = *a1;
  v7 = *(a1 + 112);
  LOBYTE(v32[0]) = 0;
  v34 = 0;
  if (v7 == 1)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        sub_255A7E018(v32, *(a1 + 2), *(a1 + 3));
      }

      else
      {
        *v32 = a1[1];
        v33 = *(a1 + 4);
      }

      v34 = 1;
    }

    sub_255C0C2B4(&v35, a1 + 3);
    v9 = 0;
    LOBYTE(v49[0]) = 0;
    v51 = 0;
    if (v34)
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_255A7E018(v49, v32[0], v32[1]);
      }

      else
      {
        *v49 = *v32;
        v50 = v33;
      }

      v9 = 1;
      v51 = 1;
    }
  }

  else
  {
    v9 = 0;
    LOBYTE(v35) = 0;
    v40 = 0;
    LOBYTE(v49[0]) = 0;
    v51 = 0;
  }

  v10 = v49;
  LOBYTE(v52) = 0;
  v57 = 0;
  v11 = v40;
  if (v40 != 1)
  {
    v12 = 0;
    v58 = 1;
    v48 = 2;
    v13 = 8236;
    strcpy(v47, ", ");
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_17:
    if (*(a2 + 23) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v36) < 0)
  {
    sub_255A7E018(&v52, v35, *(&v35 + 1));
  }

  else
  {
    v52 = v35;
    v53 = v36;
  }

  v54 = v37;
  if (SHIBYTE(v39) < 0)
  {
    sub_255A7E018(&v55, v38, *(&v38 + 1));
  }

  else
  {
    v55 = v38;
    v56 = v39;
  }

  v12 = 1;
  v57 = 1;
  v58 = 1;
  v48 = 2;
  v13 = 8236;
  strcpy(v47, ", ");
  if ((v51 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_26:
  v14 = HIBYTE(v50);
  v13 = v49[1];
  if (v50 < 0)
  {
    v14 = v49[1];
  }

  if (!v14)
  {
    v12 = v11;
    if (*(a2 + 23) < 0)
    {
LABEL_40:
      sub_255A7E018(&v72, *a2, *(a2 + 1));
      v74 = 1;
      LOBYTE(v66) = 0;
      v71 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

LABEL_18:
    v72 = *a2;
    v73 = *(a2 + 2);
    v74 = 1;
    LOBYTE(v66) = 0;
    v71 = 0;
    if ((v12 & 1) == 0)
    {
LABEL_41:
      v21 = 0;
      v42 = 0;
      goto LABEL_47;
    }

LABEL_19:
    if (SHIBYTE(v53) < 0)
    {
      sub_255A7E018(&v66, v52, *(&v52 + 1));
    }

    else
    {
      v66 = v52;
      v67 = v53;
    }

    v68 = v54;
    if (SHIBYTE(v56) < 0)
    {
      sub_255A7E018(&v69, v55, *(&v55 + 1));
    }

    else
    {
      v69 = v55;
      v70 = v56;
    }

    v21 = 1;
    v71 = 1;
    LOBYTE(v41[0]) = 0;
    v42 = 0;
    if ((v74 & 1) == 0)
    {
      v22 = 0;
      LOBYTE(v43[0]) = 0;
      v46 = 0;
LABEL_51:
      v10 = v68;
      v43[2] = v67;
      *v43 = v66;
      v67 = 0;
      v66 = 0uLL;
      v44 = v68;
      *v45 = v69;
      v45[2] = v70;
      v20 = 1;
      v46 = 1;
      v23 = v58;
      if (v58 != 1)
      {
        goto LABEL_72;
      }

      goto LABEL_66;
    }

LABEL_47:
    *v41 = v72;
    v41[2] = v73;
    v22 = 1;
    v42 = 1;
    LOBYTE(v43[0]) = 0;
    v46 = 0;
    if (!v21)
    {
      v20 = 0;
      v23 = v58;
      if (v58 != 1)
      {
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    goto LABEL_51;
  }

  v15 = *(a2 + 23);
  if ((v15 & 0x80u) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 1);
  }

  v78[0] = v16;
  v78[1] = v15;
  v17 = v49;
  if (v50 < 0)
  {
    v17 = v49[0];
  }

  v78[2] = v17;
  v78[3] = v14;
  sub_255A7F250(v78, v79, v47, 2uLL, &__p);
  v79[0] = __p.__r_.__value_.__l.__size_;
  v18 = __p.__r_.__value_.__r.__words[0];
  *(v79 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  LOBYTE(v59) = 0;
  v64 = 0;
  v20 = v57;
  if (v57 == 1)
  {
    if (SHIBYTE(v53) < 0)
    {
      sub_255A7E018(&v59, v52, *(&v52 + 1));
    }

    else
    {
      v59 = v52;
      v60 = v53;
    }

    v61 = v54;
    if (SHIBYTE(v56) < 0)
    {
      sub_255A7E018(&v62, v55, *(&v55 + 1));
    }

    else
    {
      v62 = v55;
      v63 = v56;
    }

    v64 = 1;
  }

  v41[0] = v18;
  v41[1] = v79[0];
  *(&v41[1] + 7) = *(v79 + 7);
  HIBYTE(v41[2]) = v19;
  v42 = 1;
  LOBYTE(v43[0]) = 0;
  v46 = 0;
  if (v20)
  {
    v13 = v60;
    v10 = v61;
    v43[2] = v60;
    *v43 = v59;
    v59 = 0uLL;
    v44 = v61;
    *v45 = v62;
    v45[2] = v63;
    v60 = 0;
    v62 = 0uLL;
    v63 = 0;
    v46 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_60:
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

LABEL_65:
      operator delete(v47[0]);
      v22 = 1;
      v23 = v58;
      if (v58 != 1)
      {
        goto LABEL_72;
      }

      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v48 < 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  v22 = 1;
  v23 = v58;
  if (v58 != 1)
  {
    goto LABEL_72;
  }

LABEL_66:
  if (v57 != 1)
  {
    goto LABEL_69;
  }

  if ((SHIBYTE(v56) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_109:
    operator delete(v52);
    v23 = v51;
    if (v51 != 1)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  operator delete(v55);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_109;
  }

LABEL_69:
  v23 = v51;
  if (v51 != 1)
  {
    goto LABEL_72;
  }

LABEL_70:
  v23 = HIBYTE(v50);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

LABEL_72:
  if (v22)
  {
    v24 = v41[0];
    v77[0] = v41[1];
    *(v77 + 7) = *(&v41[1] + 7);
    v23 = HIBYTE(v41[2]);
    memset(v41, 0, sizeof(v41));
    if (!v20)
    {
      goto LABEL_74;
    }

LABEL_77:
    v25 = v43[0];
    v76[0] = v43[1];
    *(v76 + 7) = *(&v43[1] + 7);
    v3 = HIBYTE(v43[2]);
    memset(v43, 0, sizeof(v43));
    v13 = v45[0];
    v75[0] = v45[1];
    *(v75 + 7) = *(&v45[1] + 7);
    v4 = HIBYTE(v45[2]);
    memset(v45, 0, sizeof(v45));
    *a3 = v31;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    if (!v22)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v24 = 0;
  if (v20)
  {
    goto LABEL_77;
  }

LABEL_74:
  v25 = 0;
  *a3 = v31;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  if (v22)
  {
LABEL_78:
    v26 = v77[0];
    *(a3 + 16) = v24;
    *(a3 + 24) = v26;
    *(a3 + 31) = *(v77 + 7);
    *(a3 + 39) = v23;
    v77[0] = 0;
    *(v77 + 7) = 0;
    *(a3 + 40) = 1;
    v24 = 0;
    v23 = 0;
  }

LABEL_79:
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  if (!v20)
  {
    *(a3 + 112) = 1;
    if (v23 < 0)
    {
      v29 = v22;
    }

    else
    {
      v29 = 0;
    }

    if (v29 != 1)
    {
      goto LABEL_92;
    }

    goto LABEL_89;
  }

  v27 = v76[0];
  *(a3 + 48) = v25;
  *(a3 + 56) = v27;
  *(a3 + 63) = *(v76 + 7);
  *(a3 + 71) = v3;
  v76[0] = 0;
  *(v76 + 7) = 0;
  *(a3 + 72) = v10;
  *(a3 + 80) = v13;
  *(a3 + 88) = v75[0];
  *(a3 + 95) = *(v75 + 7);
  *(a3 + 103) = v4;
  v75[0] = 0;
  *(v75 + 7) = 0;
  *(a3 + 104) = 1;
  if (v23 < 0)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  *(a3 + 112) = 1;
  if (v28)
  {
LABEL_89:
    operator delete(v24);
    if ((v46 & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  if ((SHIBYTE(v45[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v43[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_103:
    operator delete(v43[0]);
    if (v42 != 1)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  operator delete(v45[0]);
  if (SHIBYTE(v43[2]) < 0)
  {
    goto LABEL_103;
  }

LABEL_92:
  if (v42 != 1)
  {
    goto LABEL_95;
  }

LABEL_93:
  if (SHIBYTE(v41[2]) < 0)
  {
    operator delete(v41[0]);
  }

LABEL_95:
  if (v40 != 1)
  {
    goto LABEL_98;
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
LABEL_98:
      if (v34 != 1)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }
  }

  else if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

  operator delete(v35);
  if (v34 != 1)
  {
    goto LABEL_101;
  }

LABEL_99:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

LABEL_101:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_255C0CD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
    sub_255A7E0D4(&__p);
    if ((v73 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
      {
LABEL_8:
        if (a53 < 0)
        {
          operator delete(a48);
        }

        sub_255A7E144(&a54);
        sub_255C0C444(&a23);
        sub_255C0C444(&a11);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(STACK[0x208]);
      goto LABEL_8;
    }
  }

  else
  {
    sub_255A7E0D4(&__p);
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(v72);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_255C0CE6C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DD568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD568))
  {
    qword_27F7DD560 = std::generic_category();
    __cxa_guard_release(&qword_27F7DD568);
  }

  if (*(a1 + 8) == qword_27F7DD560)
  {
    v2 = *a1;
    if (*a1 > 33)
    {
      if (v2 == 34)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_255C0D24C(exception, a1);
        __cxa_throw(exception, off_2798073A8, MEMORY[0x277D825F8]);
      }

      if (v2 == 84)
      {
        v4 = __cxa_allocate_exception(0x10uLL);
        sub_255C0D340(v4, a1);
        __cxa_throw(v4, off_2798073B0, MEMORY[0x277D82608]);
      }
    }

    else
    {
      if (v2 == 22)
      {
        v6 = __cxa_allocate_exception(0x10uLL);
        sub_255C0D064(v6, a1);
        __cxa_throw(v6, off_2798073B8, MEMORY[0x277D82610]);
      }

      if (v2 == 33)
      {
        v3 = __cxa_allocate_exception(0x10uLL);
        sub_255C0D158(v3, a1);
        __cxa_throw(v3, off_279807398, MEMORY[0x277D825E8]);
      }
    }
  }

  v5 = __cxa_allocate_exception(0x88uLL);
  sub_255C0BEC8(v5, a1);
  __cxa_throw(v5, &unk_2867CE0E0, sub_255C0BF80);
}

void sub_255C0D064(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_255C45748;
  }

  if (*(v3 + 24) == 1)
  {
    sub_255C0E964(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_255C2500B);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
  }
}

void sub_255C0D13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0D158(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_255C45748;
  }

  if (*(v3 + 24) == 1)
  {
    sub_255C0E964(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_255C2500B);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
  }
}

void sub_255C0D230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0D24C(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_255C45748;
  }

  if (*(v3 + 24) == 1)
  {
    sub_255C0E964(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_255C2500B);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
  }
}

void sub_255C0D324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0D340(std::runtime_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_255C45748;
  }

  if (*(v3 + 24) == 1)
  {
    sub_255C0E964(&v4, v3);
    std::runtime_error::runtime_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::runtime_error::runtime_error(this, &unk_255C2500B);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
  }
}

void sub_255C0D418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C0D434(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        v4 = a2;
        sub_255A7E018(a1, *a2, *(a2 + 1));
        a2 = v4;
      }

      else
      {
        v3 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v3;
      }

      *(a1 + 24) = 1;
    }

    sub_255C0C2B4(a1 + 32, a2 + 2);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_255C0D4D0(_Unwind_Exception *a1)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  sub_255A7E144(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_255C0D504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 16))(a1);
  *(a2 + 120) = 1;
  return result;
}

void sub_255C0D81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255A7E144(&a15);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_255C0D91C(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  sub_255C0D434(v18, a3);
  sub_255C0D434(&__p, v18);
  v9 = a2;
  if (v36 != 1)
  {
    *a1 = a2;
    *(a1 + 8) = &off_2867D14B8;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    goto LABEL_19;
  }

  v10 = v29;
  if (v29 == 1)
  {
    v11 = __p;
    v39[0] = v28;
    *(v39 + 7) = *(&v28 + 7);
    LOBYTE(a2) = HIBYTE(v28);
    v28 = 0uLL;
    __p = 0;
    v12 = v35;
    if (v35 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = 0;
    v12 = v35;
    if (v35 != 1)
    {
LABEL_4:
      v13 = 0;
      if (!v29)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v13 = v30;
  v38[0] = v31;
  *(v38 + 7) = *(&v31 + 7);
  v5 = HIBYTE(v31);
  v30 = 0;
  v31 = 0uLL;
  v6 = v32;
  v3 = v33;
  v37[0] = v34;
  *(v37 + 7) = *(&v34 + 7);
  v4 = HIBYTE(v34);
  v33 = 0;
  v34 = 0uLL;
  if (!v29)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v28) < 0)
  {
    v17 = v11;
    operator delete(__p);
    v11 = v17;
  }

LABEL_11:
  *a1 = v9;
  *(a1 + 8) = &off_2867D14B8;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (v10)
  {
    v14 = v39[0];
    *(a1 + 16) = v11;
    *(a1 + 24) = v14;
    *(a1 + 31) = *(v39 + 7);
    *(a1 + 39) = a2;
    v39[0] = 0;
    *(v39 + 7) = 0;
    *(a1 + 40) = 1;
    LOBYTE(a2) = 0;
    v11 = 0;
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v12)
    {
LABEL_13:
      *(a1 + 112) = 1;
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v15 = v38[0];
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 63) = *(v38 + 7);
  *(a1 + 71) = v5;
  v38[0] = 0;
  *(v38 + 7) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = v3;
  *(a1 + 88) = v37[0];
  *(a1 + 95) = *(v37 + 7);
  *(a1 + 103) = v4;
  v37[0] = 0;
  *(v37 + 7) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((a2 & 0x80) != 0)
  {
    operator delete(v11);
  }

LABEL_19:
  if (v26 != 1)
  {
    goto LABEL_26;
  }

  if (v25 != 1)
  {
    goto LABEL_23;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_23:
      if (v20 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v21);
  if (v20 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_255C0DBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255C0DBCC(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v2 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v2;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v3;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = *(a2 + 72);
      v4 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v4;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  return result;
}

void sub_255C0DC84(uint64_t a1, unsigned int a2, const void **a3)
{
  *&v34 = 0;
  v35 = 256;
  v36 = 0;
  v37 = 0;
  v38 = 1;
  sub_255C0D434(&v51, &v34);
  *&__dst = a2;
  *(&__dst + 1) = &off_2867D14B8;
  LOBYTE(__p) = 0;
  v49 = 0;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  v42 = 0;
  if (v53 == 1)
  {
    __p = v51;
    v41 = v52;
    v52 = 0;
    v51 = 0uLL;
    v42 = 1;
    LOBYTE(v43) = 0;
    v48 = 0;
    if (v59 != 1)
    {
LABEL_4:
      v49 = 1;
      if (!v53)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v43) = 0;
    v48 = 0;
    if (v59 != 1)
    {
      goto LABEL_4;
    }
  }

  v44 = v55;
  v43 = v54;
  v54 = 0uLL;
  v46 = v57;
  v45 = v56;
  v47 = v58;
  v55 = 0;
  v57 = 0uLL;
  v58 = 0;
  v48 = 1;
  v49 = 1;
  if (!v53)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

LABEL_10:
  sub_255C0B718(&__dst, &v50);
  if (v49 != 1)
  {
    goto LABEL_17;
  }

  if (v48 == 1)
  {
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_56:
      operator delete(v43);
      if (v42 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    operator delete(v46);
    if (SHIBYTE(v44) < 0)
    {
      goto LABEL_56;
    }
  }

LABEL_14:
  if (v42 != 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
  }

LABEL_17:
  v6 = *(a3 + 23);
  v7 = a3[1];
  if ((v6 & 0x80u) == 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  if (v8 >= size)
  {
    v10 = size;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v10)
  {
    v8 = v10;
  }

  if (v8 == size)
  {
    v11 = (v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v50 : v50.__r_.__value_.__r.__words[0];
    v12 = *a3;
    v13 = (v6 & 0x80u) == 0 ? a3 : *a3;
    if (!memcmp(v13, v11, size))
    {
      if ((v6 & 0x80) != 0)
      {
        a3 = v12;
        if (v7 >= size)
        {
LABEL_48:
          if (v7 - size < v7)
          {
            v7 -= size;
          }

          if (v7 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_255A7BCA8();
          }

          if (v7 >= 0x17)
          {
            operator new();
          }

          BYTE7(__p) = v7;
          if (v7)
          {
            memmove(&__dst, a3 + size, v7);
            *(&__dst + v7) = 0;
            v15 = SBYTE7(__p);
            if ((SBYTE7(__p) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            v15 = SBYTE7(__p);
            if ((SBYTE7(__p) & 0x80000000) == 0)
            {
LABEL_54:
              *v25 = __dst;
              v26 = __p;
              goto LABEL_61;
            }
          }

          sub_255A7E018(v25, __dst, *(&__dst + 1));
LABEL_61:
          v27 = 1;
          LOBYTE(v28) = 0;
          v32 = 0;
          v33 = 1;
          sub_255C0D91C(a1, a2, v25);
          if (v33 == 1)
          {
            if (v32 == 1)
            {
              if (v31 < 0)
              {
                operator delete(v30);
              }

              if (v29 < 0)
              {
                operator delete(v28);
              }
            }

            if (v27 == 1 && SHIBYTE(v26) < 0)
            {
              operator delete(v25[0]);
            }
          }

          if (v15 < 0)
          {
            v14 = __dst;
LABEL_72:
            operator delete(v14);
            goto LABEL_73;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v7 = v6;
        if (size <= v6)
        {
          goto LABEL_48;
        }
      }

      sub_255A93C24();
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_255A7E018(&v16, *a3, v7);
  }

  else
  {
    v16 = *a3;
    v17 = a3[2];
  }

  v18 = 1;
  LOBYTE(v19) = 0;
  v23 = 0;
  v24 = 1;
  sub_255C0D91C(a1, a2, &v16);
  if (v24 == 1)
  {
    if (v23 != 1)
    {
      goto LABEL_43;
    }

    if (v22 < 0)
    {
      operator delete(v21);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_43:
        if (v18 != 1)
        {
          goto LABEL_73;
        }

        goto LABEL_44;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v19);
    if (v18 == 1)
    {
LABEL_44:
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v14 = v16;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_255C0E0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  operator delete(v50);
  if (*(v51 - 185) < 0)
  {
    operator delete(*(v51 - 208));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255C0E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_255A7E1F4(&a50);
  sub_255A7E144(&a37);
  _Unwind_Resume(a1);
}

void sub_255C0E1A4(uint64_t a1, unsigned int a2, const void **a3)
{
  *&v35 = 0;
  v36 = 256;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  sub_255C0D434(&v52, &v35);
  v6 = std::generic_category();
  *&__dst = a2;
  *(&__dst + 1) = v6;
  LOBYTE(__p) = 0;
  v50 = 0;
  if (v61 != 1)
  {
    goto LABEL_10;
  }

  v43 = 0;
  if (v54 == 1)
  {
    __p = v52;
    v42 = v53;
    v53 = 0;
    v52 = 0uLL;
    v43 = 1;
    LOBYTE(v44) = 0;
    v49 = 0;
    if (v60 != 1)
    {
LABEL_4:
      v50 = 1;
      if (!v54)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v44) = 0;
    v49 = 0;
    if (v60 != 1)
    {
      goto LABEL_4;
    }
  }

  v45 = v56;
  v44 = v55;
  v55 = 0uLL;
  v47 = v58;
  v46 = v57;
  v48 = v59;
  v56 = 0;
  v58 = 0uLL;
  v59 = 0;
  v49 = 1;
  v50 = 1;
  if (!v54)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

LABEL_10:
  sub_255C0B718(&__dst, &v51);
  if (v50 != 1)
  {
    goto LABEL_17;
  }

  if (v49 == 1)
  {
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_56:
      operator delete(v44);
      if (v43 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    operator delete(v47);
    if (SHIBYTE(v45) < 0)
    {
      goto LABEL_56;
    }
  }

LABEL_14:
  if (v43 != 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

LABEL_17:
  v7 = *(a3 + 23);
  v8 = a3[1];
  if ((v7 & 0x80u) == 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  if (v9 >= size)
  {
    v11 = size;
  }

  else
  {
    v11 = v9;
  }

  if (v9 >= v11)
  {
    v9 = v11;
  }

  if (v9 == size)
  {
    v12 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v51 : v51.__r_.__value_.__r.__words[0];
    v13 = *a3;
    v14 = (v7 & 0x80u) == 0 ? a3 : *a3;
    if (!memcmp(v14, v12, size))
    {
      if ((v7 & 0x80) != 0)
      {
        a3 = v13;
        if (v8 >= size)
        {
LABEL_48:
          if (v8 - size < v8)
          {
            v8 -= size;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_255A7BCA8();
          }

          if (v8 >= 0x17)
          {
            operator new();
          }

          BYTE7(__p) = v8;
          if (v8)
          {
            memmove(&__dst, a3 + size, v8);
            *(&__dst + v8) = 0;
            v16 = SBYTE7(__p);
            if ((SBYTE7(__p) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            v16 = SBYTE7(__p);
            if ((SBYTE7(__p) & 0x80000000) == 0)
            {
LABEL_54:
              *v26 = __dst;
              v27 = __p;
              goto LABEL_61;
            }
          }

          sub_255A7E018(v26, __dst, *(&__dst + 1));
LABEL_61:
          v28 = 1;
          LOBYTE(v29) = 0;
          v33 = 0;
          v34 = 1;
          sub_255B998E0(a2, v26, a1);
          if (v34 == 1)
          {
            if (v33 == 1)
            {
              if (v32 < 0)
              {
                operator delete(v31);
              }

              if (v30 < 0)
              {
                operator delete(v29);
              }
            }

            if (v28 == 1 && SHIBYTE(v27) < 0)
            {
              operator delete(v26[0]);
            }
          }

          if (v16 < 0)
          {
            v15 = __dst;
LABEL_72:
            operator delete(v15);
            goto LABEL_73;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v8 = v7;
        if (size <= v7)
        {
          goto LABEL_48;
        }
      }

      sub_255A93C24();
    }
  }

  if ((v7 & 0x80) != 0)
  {
    sub_255A7E018(&v17, *a3, v8);
  }

  else
  {
    v17 = *a3;
    v18 = a3[2];
  }

  v19 = 1;
  LOBYTE(v20) = 0;
  v24 = 0;
  v25 = 1;
  sub_255B998E0(a2, &v17, a1);
  if (v25 == 1)
  {
    if (v24 != 1)
    {
      goto LABEL_43;
    }

    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_43:
        if (v19 != 1)
        {
          goto LABEL_73;
        }

        goto LABEL_44;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v20);
    if (v19 == 1)
    {
LABEL_44:
      if ((SHIBYTE(v18) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v15 = v17;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_255C0E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  operator delete(v50);
  if (*(v51 - 185) < 0)
  {
    operator delete(*(v51 - 208));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255C0E690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_255A7E1F4(&a50);
  sub_255A7E144(&a37);
  _Unwind_Resume(a1);
}

void sub_255C0E6C4(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255C0E6FC(uint64_t a1, const char **a2, int *a3, std::string *a4)
{
  v8 = 0;
  if (*a2)
  {
    sub_255AA748C(v7, a2);
  }

  else
  {
    v11 = v7;
    v12 = "nullptr";
    v13 = v7;
    v14 = "nullptr";
    v15 = "nullptr";
    v9.__r_.__value_.__r.__words[0] = &v11;
    sub_255A80890(&v9);
  }

  v11 = v7;
  v12 = " error ";
  v13 = v7;
  v14 = " error ";
  v15 = " error ";
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (*(&off_2867D1440 + v8))(&v9, v7);
  std::to_string(&v9, *a3);
  v11 = v7;
  v12 = &v9;
  v13 = v7;
  v14 = &v9;
  v15 = &v9;
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v10 = &v11;
  (off_2867D1458[v8])(&v10, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v11 = v7;
  v12 = ": ";
  v13 = v7;
  v14 = ": ";
  v15 = ": ";
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (off_2867D1470[v8])(&v9, v7);
  v11 = v7;
  v12 = a4;
  v13 = v7;
  v14 = a4;
  v15 = a4;
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (off_2867D1488[v8])(&v9, v7);
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v11 = &v9;
  result = (off_2867D14A0[v8])(&v11, v7);
  if (v8 != -1)
  {
    return (off_2867D1428[v8])(&v11, v7);
  }

  return result;
}

uint64_t sub_255C0E964(uint64_t a1, __int128 *a2)
{
  v6 = 0;
  if (*(a2 + 24) == 1)
  {
    v6 = -1;
    if (*(a2 + 23) < 0)
    {
      sub_255A7E018(&v4, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      v5 = *(a2 + 2);
    }

    v2 = 1;
    v6 = 1;
  }

  else
  {
    v7[0] = &v4;
    v7[1] = "nullopt";
    v7[2] = &v4;
    v7[3] = "nullopt";
    v7[4] = "nullopt";
    v8 = v7;
    sub_255A80890(&v8);
    v2 = v6;
    if (v6 == -1)
    {
      sub_255A7C284();
    }
  }

  v7[0] = &v8;
  result = (off_2867D14A0[v2])(v7, &v4);
  if (v6 != -1)
  {
    return (off_2867D1428[v6])(v7, &v4);
  }

  return result;
}

void sub_255C0EA90(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x259C49320);
}

__n128 sub_255C0EAC8@<Q0>(std::string *__s@<X0>, char *a2@<X1>, int64_t a3@<X2>, const std::string::value_type *a4@<X3>, std::string::size_type a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (size)
    {
      v18 = a3 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_24;
    }

    v19 = (a7 & 1) != 0 ? a6 : -1;
    v37 = v19;
    v17 = __s->__r_.__value_.__r.__words[0];
    if (size < a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(&__s->__r_.__value_.__s + 23))
    {
      v15 = a3 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = (a7 & 1) != 0 ? a6 : -1;
    v37 = v16;
    v17 = __s;
    if (size < a3)
    {
      goto LABEL_24;
    }
  }

  v20 = v17 + size;
  v21 = *a2;
  v22 = v17;
  do
  {
    v23 = size - a3;
    if (v23 == -1)
    {
      break;
    }

    v24 = memchr(v22, v21, v23 + 1);
    if (!v24)
    {
      break;
    }

    v25 = v24;
    if (!memcmp(v24, a2, a3))
    {
      if (v37)
      {
        if (v25 != v20)
        {
          v27 = v25 - v17;
          if (v25 - v17 != -1)
          {
LABEL_28:
            std::string::replace(__s, v27, a3, a4, a5);
            v28 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
            if ((v28 & 0x8000000000000000) != 0)
            {
              v29 = __s->__r_.__value_.__r.__words[0];
              v28 = __s->__r_.__value_.__l.__size_;
            }

            else
            {
              v29 = __s;
            }

            v30 = v28 - (v27 + a5);
            if (v28 >= v27 + a5 && v30 >= a3)
            {
              --v37;
              v31 = v29 + v28;
              v32 = v29 + v27 + a5;
              v33 = *a2;
              while (1)
              {
                v34 = v30 - a3;
                if (v34 == -1)
                {
                  break;
                }

                v35 = memchr(v32, v33, v34 + 1);
                if (!v35)
                {
                  break;
                }

                v36 = v35;
                if (!memcmp(v35, a2, a3))
                {
                  if (v37)
                  {
                    if (v36 != v31)
                    {
                      v27 = v36 - v29;
                      if (v36 - v29 != -1)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_24;
                }

                v32 = v36 + 1;
                v30 = v31 - (v36 + 1);
                if (v30 < a3)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      break;
    }

    v22 = (v25 + 1);
    size = v20 - (v25 + 1);
  }

  while (size >= a3);
LABEL_24:
  result = *&__s->__r_.__value_.__l.__data_;
  *a8 = *&__s->__r_.__value_.__l.__data_;
  *(a8 + 16) = *(&__s->__r_.__value_.__l + 2);
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

uint64_t *sub_255C0ED48(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_255C0EE90(result, v1);
    return v2;
  }

  return result;
}

void *sub_255C0ED8C@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 120);
  if ((v4 & 0x10) != 0)
  {
    v5 = v3[14];
    v6 = v3[9];
    if (v5 < v6)
    {
      v3[14] = v6;
      v5 = v6;
    }

    v7 = v3[8];
    v8 = v5 - v7;
    if (v5 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      a2[23] = 0;
LABEL_4:
      *a2 = 0;
      return result;
    }

    v7 = v3[5];
    v8 = v3[7] - v7;
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_255A7BCA8();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a2[23] = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  result = memmove(a2, v7, v8);
  a2[v8] = 0;
  return result;
}

void sub_255C0EE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D82818];
    v4 = *MEMORY[0x277D82818];
    *a2 = *MEMORY[0x277D82818];
    v5 = *(v3 + 72);
    *(a2 + *(v4 - 24)) = *(v3 + 64);
    *(a2 + 16) = v5;
    *(a2 + 24) = MEMORY[0x277D82878] + 16;
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    *(a2 + 24) = MEMORY[0x277D82868] + 16;
    std::locale::~locale((a2 + 32));
    std::iostream::~basic_iostream();
    MEMORY[0x259C49250](a2 + 128);

    JUMPOUT(0x259C49320);
  }
}

void sub_255C0F00C(void *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  sub_255C0EAC8(&__dst, "std::__1::", 10, "std::", 5uLL, 0, 0, a3);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_255C0F114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0F130(const void **a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v4 != v5)
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 < 0)
    {
      v6 = a1[1];
    }

    v15[0] = v7;
    v15[1] = v6;
    v15[2] = "<";
    v15[3] = 1;
    sub_255A81134(v4, v5, ",", 1uLL, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15[4] = p_p;
    v15[5] = size;
    v15[6] = ">";
    v15[7] = 1;
    sub_255A7F250(v15, &v16, 0, 0, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = a1[2];
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = *MEMORY[0x277D85DE8];

  sub_255A7E018(a3, v11, v12);
}

void sub_255C0F298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255C0F2C0(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  if (a2)
  {
    v3 = a2;
    v6 = 0;
    v26 = 0;
    v27 = 0;
    v7 = 1;
    while (1)
    {
      v9 = *a1;
      if ((v9 & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
      {
        v8 = (v7 & 1) == 0;
        v7 = 0;
        if (!v8)
        {
          v6 = 1;
        }

        goto LABEL_5;
      }

      if (v9 == 76)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v11 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v23 = v29;
          v24 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v24)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_46:
              operator new();
            }

LABEL_75:
            sub_255A7BCA8();
          }

          ++v29;
          *(__p + v23) = 76;
          if ((v27 & 0x100000000) == 0)
          {
LABEL_59:
            BYTE4(v27) = 1;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_46;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v11) = 76;
          if ((v27 & 0x100000000) == 0)
          {
            goto LABEL_59;
          }
        }

        if (v26)
        {
          if (v30 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v30 >= 0)
          {
            v22 = HIBYTE(v30);
          }

          else
          {
            v22 = v29;
          }

          goto LABEL_54;
        }

        BYTE4(v27) = 1;
        v26 = 1;
      }

      else
      {
        if (*a1 != 85)
        {
          if ((v9 & 0x80000000) != 0)
          {
            v16 = *a1;
            v17 = __maskrune(*a1, 0x500uLL);
            LOBYTE(v9) = v16;
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x500) != 0)
          {
LABEL_21:
            if (v6)
            {
              v12 = v9;
              if (v30 >= 0)
              {
                v13 = &__p;
              }

              else
              {
                v13 = __p;
              }

              if (v30 >= 0)
              {
                v14 = HIBYTE(v30);
              }

              else
              {
                v14 = v29;
              }

              std::string::append(a3, v13, v14);
              if (SHIBYTE(v30) < 0)
              {
                v29 = 0;
                v15 = __p;
              }

              else
              {
                HIBYTE(v30) = 0;
                v15 = &__p;
              }

              LOBYTE(v9) = v12;
              v27 = 0;
              v26 = 0;
              v6 = 0;
              v7 = 0;
              *v15 = 0;
            }

            else
            {
LABEL_30:
              v7 = 0;
            }

LABEL_5:
            std::string::push_back(a3, v9);
            goto LABEL_6;
          }

          if (v6)
          {
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v18 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v18 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v18 = 0;
          }

          v7 = 1;
          goto LABEL_5;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v10 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v19 = v29;
          v20 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v20)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_37:
              operator new();
            }

            goto LABEL_75;
          }

          ++v29;
          *(__p + v19) = 85;
          if (v27)
          {
LABEL_38:
            if (v30 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v30 >= 0)
            {
              v22 = HIBYTE(v30);
            }

            else
            {
              v22 = v29;
            }

LABEL_54:
            std::string::append(a3, p_p, v22);
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v25 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v25 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v25 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_37;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v10) = 85;
          if (v27)
          {
            goto LABEL_38;
          }
        }

        LOBYTE(v27) = 1;
      }

LABEL_6:
      ++a1;
      if (!--v3)
      {
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }
  }
}

void sub_255C0F7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v17 + 23) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*v17);
  _Unwind_Resume(a1);
}

uint64_t sub_255C0F7E8(const char *a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6, void (*a7)(std::string *))
{
  sub_255C0F8E4(a1, a2, a3, a4, a5, a6, a7);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v11 = qword_27F7DD608, v12 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_8:
      qword_27F7DD620(*algn_27F7DD628, a3, a4, a5, a6);
      return 0;
    }
  }

  else
  {
    v11 = qword_27F7DD608;
    v12 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      return 1;
    }
  }

  do
  {
    v14 = *v11;
    v13 = *(v11 + 8);
    v11 += 16;
    v14(v13, a3, a4, a5, a6);
  }

  while (v11 != v12);
  if (byte_27F7DD630)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_255C0F8E4(const char *a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6, void (*a7)(std::string *))
{
  if (byte_27F7DD630)
  {
    return;
  }

  if (a4)
  {
    v12 = "Assert";
  }

  else
  {
    v12 = "Abort";
  }

  if (a4)
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memcpy(&__dst, v12, v13);
  *(&__dst | v13) = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    v15 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v15 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= __dst.__r_.__value_.__l.__size_ + 2 - v15)
      {
        goto LABEL_13;
      }

      goto LABEL_106;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
LABEL_13:
      operator new();
    }

    p_dst = &__dst;
  }

  *(&p_dst->__r_.__value_.__l.__data_ + size) = 8250;
  v21 = size + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = size + 2;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_255A7BCA8();
    }
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v21 & 0x7F;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }
  }

  v16 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&__p, a1, v22);
    __p.__r_.__value_.__s.__data_[v16] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_17:
      p_p = &__p;
      if (v17 == 22)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = __p.__r_.__value_.__l.__size_;
  v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 == __p.__r_.__value_.__l.__size_)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

LABEL_23:
    operator new();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_32:
  p_p->__r_.__value_.__s.__data_[v17] = 58;
  v23 = v17 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v23;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v23 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v23] = 0;
  v48 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v46, a2);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v46;
  }

  else
  {
    v24 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v46.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v48, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v50 = v26->__r_.__value_.__r.__words[2];
  v49 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v28 = &v49;
  }

  else
  {
    v28 = v49;
  }

  if (v50 >= 0)
  {
    v29 = HIBYTE(v50);
  }

  else
  {
    v29 = *(&v49 + 1);
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_69;
    }

LABEL_57:
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    *(&v48.__r_.__value_.__s + 23) = a4;
    memmove(&v48, a3, a4);
    v48.__r_.__value_.__s.__data_[a4] = 0;
    v30 = std::string::insert(&v48, 0, " : ", 3uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v50 = v30->__r_.__value_.__r.__words[2];
    v49 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v50 >= 0)
    {
      v32 = &v49;
    }

    else
    {
      v32 = v49;
    }

    if (v50 >= 0)
    {
      v33 = HIBYTE(v50);
    }

    else
    {
      v33 = *(&v49 + 1);
    }

    std::string::append(&__dst, v32, v33);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    operator delete(v48.__r_.__value_.__l.__data_);
    if (!a6)
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

LABEL_55:
  operator delete(v48.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (a4)
  {
    goto LABEL_57;
  }

LABEL_69:
  if (!a6)
  {
    goto LABEL_88;
  }

LABEL_70:
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (a6 >= 0x17)
  {
    operator new();
  }

  *(&v48.__r_.__value_.__s + 23) = a6;
  memmove(&v48, a5, a6);
  v48.__r_.__value_.__s.__data_[a6] = 0;
  v34 = std::string::insert(&v48, 0, " : ", 3uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50 = v34->__r_.__value_.__r.__words[2];
  v49 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v36 = &v49;
  }

  else
  {
    v36 = v49;
  }

  if (v50 >= 0)
  {
    v37 = HIBYTE(v50);
  }

  else
  {
    v37 = *(&v49 + 1);
  }

  std::string::append(&__dst, v36, v37);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_88;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_88:
  v38 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v39 = &__dst;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) == 22)
    {
LABEL_93:
      operator new();
    }

    goto LABEL_95;
  }

  v38 = __dst.__r_.__value_.__l.__size_;
  v40 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v40 == __dst.__r_.__value_.__l.__size_)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

LABEL_106:
    sub_255A7BCA8();
  }

  v39 = __dst.__r_.__value_.__r.__words[0];
LABEL_95:
  v39->__r_.__value_.__s.__data_[v38] = 10;
  v41 = v38 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v41;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v41 & 0x7F;
  }

  v39->__r_.__value_.__s.__data_[v41] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__dst;
  }

  else
  {
    v42 = __dst.__r_.__value_.__r.__words[0];
  }

  a7(v42);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_255C100E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255C101E0(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_255C10314(&qword_27F7DD640, a1, v2);
  if (byte_27F7DD657 >= 0)
  {
    v3 = &qword_27F7DD640;
  }

  else
  {
    v3 = qword_27F7DD640;
  }

  qword_27F7DCC68 = v3;
  if ((atomic_load_explicit(&qword_27F7DD578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD578))
  {
    qword_27F7DD570 = os_log_create("cv3d", &unk_255C2500B);
    __cxa_guard_release(&qword_27F7DD578);
  }

  v4 = qword_27F7DD570;
  if (os_log_type_enabled(qword_27F7DD570, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = a1;
    _os_log_impl(&dword_255A74000, v4, OS_LOG_TYPE_FAULT, "%s", &v7, 0xCu);
  }

  result = fputs(a1, *MEMORY[0x277D85DF8]);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_255C10314(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_255A7BCA8();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_255C104F8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_255C105A4()
{
  if (__cxa_guard_acquire(&qword_27F7DCDD0))
  {
    v0.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v1 = sub_255AB12D0(v0.__d_.__rep_, &qword_27F7DCDC8);
    __cxa_guard_release(v1);
  }
}

void sub_255C105DC()
{
  if (__cxa_guard_acquire(qword_27F7DCDD8))
  {
    qword_27F7DCE10 = MEMORY[0x277D82678];
    qword_27F7DCE18 = MEMORY[0x277D82670];
    __cxa_guard_release(qword_27F7DCDD8);
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}