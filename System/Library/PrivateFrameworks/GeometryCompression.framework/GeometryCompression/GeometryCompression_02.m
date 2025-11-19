void sub_2500FA258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a41 + i));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2500FA2D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6 = a5;
  v11 = *(a1 + 4360);
  v12 = *(a1 + 4336);
  v13 = *(*(a1 + 4176) + 4 * a2);
  v14 = *(a1 + 4224);
  v15 = *(*(a1 + 4200) + 4 * a2);
  if (a6 - a5 >= 1)
  {
    bzero(a5, a6 - a5);
  }

  if (v15 < 1)
  {
    return 0;
  }

  result = 0;
  v17 = v15 + v13;
  v18 = *(a1 + 1208);
  do
  {
    v19 = *(v14 + 4 * v13);
    v20 = *(v18 + 4 * v19);
    v21 = *(v18 + 4 + 4 * v19);
    if (v20 < v21)
    {
      v22 = *(a1 + 4104);
      do
      {
        v23 = *(v22 + 4 * v20);
        if (v23 < a2 && (!v11 || *(a4 + v23) == 1))
        {
          if (v12 >= 1)
          {
            v24 = (a3 + 4 * v23 * v12);
            v25 = v6;
            v26 = v12;
            do
            {
              v27 = *v24++;
              *v25++ += v27;
              --v26;
            }

            while (v26);
          }

          result = (result + 1);
        }

        ++v20;
      }

      while (v20 < v21 && result < 4);
    }

    ++v13;
  }

  while (v13 < v17 && result < 4);
  if (v12 >= 1 && result >= 2)
  {
    do
    {
      *v6++ /= result;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_2500FA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v74 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v7 = v6;
  v75 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v8 = 0;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  do
  {
    sub_2500F3ECC(&v93[v8], v6);
    v8 += 15;
  }

  while (v8 != 45);
  v91 = 0x8000;
  sub_2500FD43C(&v89, v6);
  LODWORD(__p) = 0;
  sub_2500FC9FC(&v86, v6, &__p);
  v9 = a3;
  LODWORD(v82) = 0;
  sub_2500FC9FC(&__p, v6, &v82);
  if (v74 >= 1)
  {
    v10 = 0;
    v72 = 4 * v6;
    v73 = v9;
    v11 = a2;
    v67 = a2;
    v68 = v6;
    v66 = v6;
    while (v75 && *(v9 + v10) != 1)
    {
LABEL_55:
      ++v10;
      v11 = (v11 + v72);
      if (v10 == v74)
      {
        goto LABEL_63;
      }
    }

    v12 = *(*(a1 + 4128) + 4 * v10);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = (*(a1 + 1256) + 12 * v12);
      v14 = *v13;
      LODWORD(v82) = *v13;
      LODWORD(v15) = v13[1];
      HIDWORD(v82) = v15;
      v16 = v13[2];
      v83[0] = v16;
      v17 = (*(a1 + 1280) + 12 * v12);
      v19 = *v17;
      v18 = v17[1];
      LODWORD(v80) = *v17;
      HIDWORD(v80) = v18;
      v69 = v18;
      v70 = v17[2];
      v81 = v70;
      v79 = -1;
      v78 = -1;
      v77 = -1;
      v76 = -1;
      sub_2500F7D4C(a1, v12, v10, &v82, &v78);
      sub_2500F7D4C(a1, v12, v10, &v80, &v76);
      v20 = v79;
      v21 = v77;
      if ((v79 & 0x80000000) == 0 || v77 < 0)
      {
        v64 = v19;
        v65 = v14;
        v22 = v76;
        v23 = HIDWORD(v76);
      }

      else
      {
        v82 = v80;
        v69 = v15;
        v70 = v16;
        v16 = v81;
        v83[0] = v81;
        v22 = v78;
        v23 = HIDWORD(v78);
        v78 = v76;
        v21 = v79;
        v20 = v77;
        v79 = v77;
        v15 = HIDWORD(v80);
        v64 = v14;
        v65 = v80;
      }

      v25 = v78;
      v24 = HIDWORD(v78);
      if (v21 != -1 && (!v75 || *(v73 + v78) == 1 && *(v73 + SHIDWORD(v78)) == 1 && *(v73 + v20) == 1 && *(v73 + v22) == 1 && *(v73 + v23) == 1 && *(v73 + v21) == 1))
      {
        v62 = v23;
        v63 = v22;
        v6 = v68;
        v7 = v66;
        sub_2500EBFF8((v67 + 4 * v78 * v66), (v67 + 4 * HIDWORD(v78) * v68), (v67 + 4 * v20 * v66), v68, (*(a1 + 1160) + 12 * v65), (*(a1 + 1160) + 12 * v15), (*(a1 + 1160) + 12 * v16), (*(a1 + 1160) + 12 * v12), v86);
        sub_2500EBFF8((v67 + 4 * v63 * v6), (v67 + 4 * v62 * v7), (v67 + 4 * v21 * v6), v7, (*(a1 + 1160) + 12 * v64), (*(a1 + 1160) + 12 * v69), (*(a1 + 1160) + 12 * v70), (*(a1 + 1160) + 12 * v12), __p);
        a2 = v67;
        if (v66 >= 1)
        {
          v26 = v86;
          v27 = __p;
          v28 = v66;
          do
          {
            v29 = *v27++;
            *v26 = (v29 + *v26) / 2;
            ++v26;
            --v28;
          }

          while (v28);
          v30 = 2;
LABEL_49:
          v9 = v73;
          goto LABEL_50;
        }

LABEL_30:
        v30 = 2;
        v9 = v73;
        goto LABEL_50;
      }

      v71 = v15;
      v9 = v73;
      if (v20 != -1 && (!v75 || *(v73 + v78) == 1 && *(v73 + SHIDWORD(v78)) == 1 && *(v73 + v20) == 1))
      {
        a2 = v67;
        v6 = v68;
        v7 = v66;
        sub_2500EBFF8((v67 + 4 * v78 * v66), (v67 + 4 * HIDWORD(v78) * v68), (v67 + 4 * v20 * v66), v68, (*(a1 + 1160) + 12 * v65), (*(a1 + 1160) + 12 * v71), (*(a1 + 1160) + 12 * v16), (*(a1 + 1160) + 12 * v12), v86);
        goto LABEL_30;
      }

      if (HIDWORD(v78) != -1 && (!v75 || *(v73 + v78) == 1 && *(v73 + SHIDWORD(v78)) == 1))
      {
        a2 = v67;
        if (v68 == 2)
        {
          v31 = sub_2500F2F8C(a1, &v91);
          sub_2500EC4C8(v67 + 8 * v25, (v67 + 8 * v24), (*(a1 + 1160) + 12 * v65), (*(a1 + 1160) + 12 * v71), (*(a1 + 1160) + 12 * v12), v31, v86);
          v30 = 1;
          v6 = v68;
LABEL_62:
          v7 = v66;
          goto LABEL_50;
        }

        if (v68 < 1)
        {
          v30 = 1;
          v6 = v68;
          goto LABEL_62;
        }

        v46 = (v67 + 4 * v78 * v68);
        v7 = v66;
        v47 = (v67 + 4 * HIDWORD(v78) * v66);
        v48 = v86;
        v49 = v66;
        v6 = v68;
        do
        {
          v51 = *v46++;
          v50 = v51;
          v52 = *v47++;
          *v48++ = (v52 + v50) / 2;
          --v49;
        }

        while (v49);
        v30 = 1;
LABEL_50:
        sub_2500F2AB4(a1, v86, v6, (a1 + 4056), (a1 + 4372), &v93[15 * v30], a2 + 4 * v10 * v6);
        if (v7 >= 1)
        {
          v40 = v89 + 4;
          v41 = v11;
          v42 = v7;
          do
          {
            v44 = *v41++;
            v43 = v44;
            v45 = *(v40 - 1);
            if (*&v40[4 * ((v45 - 1) & 3)] != v44)
            {
              *(v40 - 1) = v45 + 1;
              *&v40[4 * (v45 & 3)] = v43;
            }

            v40 += 20;
            --v42;
          }

          while (v42);
        }

        goto LABEL_55;
      }

      a2 = v67;
      v6 = v68;
      v7 = v66;
    }

    v32 = sub_2500FA2D8(a1, v10, a2, v9, v86, v87);
    v30 = 0;
    if (v7 >= 1 && !v32)
    {
      v33 = v86;
      v34 = v7;
      v35 = v89 + 4;
      do
      {
        v36 = sub_2500F2F8C(a1, __b);
        v37 = v36;
        if (v36)
        {
          v38 = 2;
        }

        else
        {
          v38 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v38]))
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        *v33++ = *&v35[4 * ((*(v35 - 1) + ~(v39 | v37)) & 3)];
        v35 += 20;
        --v34;
      }

      while (v34);
      v30 = 0;
      a2 = v67;
      v6 = v68;
      v7 = v66;
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_63:
  if (__p)
  {
    v85[0] = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v89)
  {
    v90[0] = v89;
    operator delete(v89);
  }

  v53 = 90;
  do
  {
    v54 = &v93[v53 / 2];
    v55 = v90[v53 / 2];
    if (v55)
    {
      *(v54 - 2) = v55;
      operator delete(v55);
    }

    v56 = *(v54 - 6);
    if (v56)
    {
      *&v88[v53 * 4] = v56;
      operator delete(v56);
    }

    v57 = &v93[v53 / 2];
    v58 = v85[v53 / 2];
    if (v58)
    {
      *(v57 - 8) = v58;
      operator delete(v58);
    }

    v59 = *(v57 - 12);
    if (v59)
    {
      *&v83[v53] = v59;
      operator delete(v59);
    }

    v60 = *(v54 - 15);
    if (v60)
    {
      *(&v79 + v53 * 4) = v60;
      operator delete(v60);
    }

    v53 -= 30;
  }

  while (v53 * 4);
  v61 = *MEMORY[0x277D85DE8];
}

void sub_2500FAB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a37 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = *MEMORY[0x277D85DE8];
  v105 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v7 = v6;
  v106 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v114, &unk_250110610, 6uLL);
  v8 = 0;
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  do
  {
    sub_2500F3ECC((v116 + v8), v6);
    v8 += 120;
  }

  while (v8 != 360);
  sub_2500FD43C(v113, v6);
  LODWORD(v109) = 0;
  sub_2500FC9FC(&__p, v6, &v109);
  if (v105 >= 1)
  {
    v9 = 0;
    v97 = 4 * v6;
    v103 = a2;
    v104 = 4 * v6;
    v10 = a2;
    v101 = v6;
    v102 = v6;
    v100 = a3;
    while (v106 && *(a3 + v9) != 1)
    {
LABEL_80:
      ++v9;
      v10 = (v10 + v104);
      if (v9 == v105)
      {
        goto LABEL_81;
      }
    }

    v11 = *(*(a1 + 4128) + 4 * v9);
    if ((v11 & 0x80000000) == 0)
    {
      v110[0] = -1;
      v109 = -1;
      v108[0] = -1;
      v107 = -1;
      sub_2500F7D4C(a1, v11, v9, (*(a1 + 1256) + 12 * v11), &v109);
      sub_2500F7D4C(a1, v11, v9, (*(a1 + 1280) + 12 * v11), &v107);
      v12 = v110[0];
      v13 = v108[0];
      if ((v110[0] & 0x80000000) == 0 || (v108[0] & 0x80000000) != 0)
      {
        v14 = v107;
        v15 = HIDWORD(v107);
        v16 = v110[0];
      }

      else
      {
        v14 = v109;
        v15 = HIDWORD(v109);
        v109 = v107;
        v16 = v108[0];
        v110[0] = v108[0];
        v13 = v12;
      }

      v18 = v109;
      v17 = HIDWORD(v109);
      if (v13 != -1 && (!v106 || *(a3 + v109) == 1 && *(a3 + SHIDWORD(v109)) == 1 && *(a3 + v16) == 1 && *(a3 + v14) == 1 && *(a3 + v15) == 1 && *(a3 + v13) == 1))
      {
        v98 = v14;
        v99 = v15;
        v19 = sub_2500F2F8C(a1, v114);
        v20 = 2;
        if (!v19)
        {
          v20 = 1;
        }

        if (sub_2500F2F8C(a1, &v114[v20]))
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 | v19;
        v23 = v18 * v102;
        v6 = v102;
        v24 = (v103 + 4 * v23);
        v25 = (v103 + 4 * v17 * v101);
        v26 = v16 * v102;
        v7 = v101;
        v27 = (v103 + 4 * v26);
        v28 = (v103 + 4 * v98 * v101);
        v29 = (v103 + 4 * v99 * v102);
        v30 = (v103 + 4 * v13 * v101);
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            a2 = v103;
            if (v102 >= 1)
            {
              v63 = __p;
              v64 = v101;
              do
              {
                v66 = *v25++;
                v65 = v66;
                v67 = *v29++;
                v68 = v67 + v65;
                v70 = *v24++;
                v69 = v70;
                v71 = *v28++;
                *v63++ = v68 - (v71 + v69) / 2;
                --v64;
              }

              while (v64);
            }
          }

          else
          {
            a2 = v103;
            if (v101 >= 1)
            {
              v79 = 0;
              v80 = __p;
              do
              {
                v81 = 1431655766 * ((v28[v79 / 4] + v24[v79 / 4]) / 2 - (v27[v79 / 4] + v30[v79 / 4]) + 2 * (v29[v79 / 4] + v25[v79 / 4]));
                *&v80[v79] = HIDWORD(v81) + (v81 >> 63);
                v79 += 4;
              }

              while (v97 != v79);
            }
          }
        }

        else if (v22)
        {
          a2 = v103;
          if (v101 >= 1)
          {
            v72 = __p;
            v73 = v101;
            do
            {
              v75 = *v28++;
              v74 = v75;
              v76 = *v29++;
              v77 = v76 + v74;
              v78 = *v30++;
              *v72++ = v77 - v78;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          a2 = v103;
          if (v102 >= 1)
          {
            v31 = __p;
            v32 = v101;
            do
            {
              v34 = *v24++;
              v33 = v34;
              v35 = *v25++;
              v36 = v35 + v33;
              v37 = *v27++;
              *v31++ = v36 - v37;
              --v32;
            }

            while (v32);
          }
        }

LABEL_74:
        v55 = 2;
        goto LABEL_75;
      }

      if (v16 != -1 && (!v106 || *(a3 + v109) == 1 && *(a3 + SHIDWORD(v109)) == 1 && *(a3 + v16) == 1))
      {
        a2 = v103;
        if (v101 < 1)
        {
          v55 = 2;
          v6 = v102;
          v7 = v101;
          goto LABEL_75;
        }

        v6 = v102;
        v38 = (v103 + 4 * v109 * v102);
        v39 = (v103 + 4 * HIDWORD(v109) * v101);
        v40 = (v103 + 4 * v16 * v102);
        v41 = __p;
        v42 = v101;
        v7 = v101;
        do
        {
          v44 = *v38++;
          v43 = v44;
          v45 = *v39++;
          v46 = v45 + v43;
          v47 = *v40++;
          *v41++ = v46 - v47;
          --v42;
        }

        while (v42);
        goto LABEL_74;
      }

      a2 = v103;
      if (HIDWORD(v109) != -1 && (!v106 || *(a3 + v109) == 1 && *(a3 + SHIDWORD(v109)) == 1))
      {
        v7 = v101;
        if (v102 < 1)
        {
          v55 = 1;
          v6 = v102;
        }

        else
        {
          v48 = (v103 + 4 * v109 * v101);
          v49 = (v103 + 4 * HIDWORD(v109) * v102);
          v50 = __p;
          v51 = v101;
          v6 = v102;
          do
          {
            v53 = *v48++;
            v52 = v53;
            v54 = *v49++;
            *v50++ = (v54 + v52) / 2;
            --v51;
          }

          while (v51);
          v55 = 1;
        }

LABEL_75:
        sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v116 + 15 * v55, a2 + 4 * v9 * v6);
        if (v7 >= 1)
        {
          v82 = v113[0] + 4;
          v83 = v10;
          v84 = v7;
          do
          {
            v86 = *v83++;
            v85 = v86;
            v87 = *(v82 - 1);
            if (*&v82[4 * ((v87 - 1) & 3)] != v86)
            {
              *(v82 - 1) = v87 + 1;
              *&v82[4 * (v87 & 3)] = v85;
            }

            v82 += 20;
            --v84;
          }

          while (v84);
        }

        goto LABEL_80;
      }

      v7 = v101;
      v6 = v102;
    }

    v56 = sub_2500FA2D8(a1, v9, a2, a3, __p, v112);
    v55 = 0;
    if (v7 >= 1 && !v56)
    {
      v57 = __p;
      v58 = v113[0] + 4;
      do
      {
        v59 = sub_2500F2F8C(a1, __b);
        v60 = v59;
        if (v59)
        {
          v61 = 2;
        }

        else
        {
          v61 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v61]))
        {
          v62 = 2;
        }

        else
        {
          v62 = 0;
        }

        *v57++ = *&v58[4 * ((*(v58 - 1) + ~(v62 | v60)) & 3)];
        v58 += 20;
        --v7;
      }

      while (v7);
      v55 = 0;
      v7 = v101;
      v6 = v102;
      a3 = v100;
      a2 = v103;
    }

    goto LABEL_75;
  }

LABEL_81:
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }

  v88 = 90;
  do
  {
    v89 = v116 + v88 * 4;
    v90 = v113[v88 / 2 + 2];
    if (v90)
    {
      *(v89 - 2) = v90;
      operator delete(v90);
    }

    v91 = *(v89 - 6);
    if (v91)
    {
      v113[v88 / 2] = v91;
      operator delete(v91);
    }

    v92 = v116 + v88 * 4;
    v93 = *&v110[v88];
    if (v93)
    {
      *(v92 - 8) = v93;
      operator delete(v93);
    }

    v94 = *(v92 - 12);
    if (v94)
    {
      *&v108[v88] = v94;
      operator delete(v94);
    }

    v95 = *(v89 - 15);
    if (v95)
    {
      *(&v116[-7] + v88 * 4) = v95;
      operator delete(v95);
    }

    v88 -= 30;
  }

  while (v88 * 4);
  v96 = *MEMORY[0x277D85DE8];
}

void sub_2500FB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a31 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FB354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v62 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v63 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v7 = 0;
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  do
  {
    sub_2500F3ECC((v73 + v7), v6);
    v7 += 120;
  }

  while (v7 != 360);
  sub_2500FD43C(&v70, v6);
  v64 = v6;
  LODWORD(v65) = 0;
  sub_2500FC9FC(&__p, v6, &v65);
  if (v62 >= 1)
  {
    v8 = 0;
    *v60 = a3;
    v61 = 4 * v6;
    v9 = a2;
    v58 = v6;
    v59 = a2;
    while (v63 && *(a3 + v8) != 1)
    {
LABEL_49:
      ++v8;
      v9 = (v9 + v61);
      if (v8 == v62)
      {
        goto LABEL_52;
      }
    }

    v10 = *(*(a1 + 4128) + 4 * v8);
    if ((v10 & 0x80000000) != 0)
    {
      a3 = *v60;
      goto LABEL_32;
    }

    v66 = -1;
    v65 = -1;
    sub_2500F7D4C(a1, v10, v8, (*(a1 + 1256) + 12 * v10), &v65);
    v12 = v65;
    v11 = HIDWORD(v65);
    v13 = v66;
    if (v66 < 0)
    {
      sub_2500F7D4C(a1, v10, v8, (*(a1 + 1280) + 12 * v10), &v65);
      if (v66 < 0)
      {
        a3 = *v60;
        if (v13 == -1)
        {
LABEL_23:
          if (v11 != -1 && (!v63 || *(a3 + v12) == 1 && *(a3 + v11) == 1))
          {
            v6 = v58;
            if (v58 < 1)
            {
              v26 = 1;
              a2 = v59;
            }

            else
            {
              v27 = v64;
              v28 = v12 * v64;
              a2 = v59;
              v29 = (v59 + 4 * v28);
              v30 = (v59 + 4 * v11 * v58);
              v31 = __p;
              do
              {
                v33 = *v29++;
                v32 = v33;
                v34 = *v30++;
                *v31++ = (v34 + v32) / 2;
                --v27;
              }

              while (v27);
              v26 = 1;
            }

            goto LABEL_44;
          }

          v6 = v58;
          a2 = v59;
LABEL_32:
          v35 = sub_2500FA2D8(a1, v8, a2, a3, __p, v68);
          v26 = 0;
          if (v64 >= 1 && !v35)
          {
            v36 = __p;
            v37 = v70 + 4;
            v38 = v64;
            do
            {
              v39 = sub_2500F2F8C(a1, __b);
              v40 = v39;
              if (v39)
              {
                v41 = 2;
              }

              else
              {
                v41 = 1;
              }

              if (sub_2500F2F8C(a1, &__b[v41]))
              {
                v42 = 2;
              }

              else
              {
                v42 = 0;
              }

              *v36++ = *&v37[4 * ((*(v37 - 1) + ~(v42 | v40)) & 3)];
              v37 += 20;
              --v38;
            }

            while (v38);
            v26 = 0;
            a3 = *v60;
            goto LABEL_43;
          }

LABEL_44:
          sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v73 + 15 * v26, a2 + 4 * v8 * v6);
          if (v64 >= 1)
          {
            v43 = v70 + 4;
            v44 = v9;
            v45 = v64;
            do
            {
              v47 = *v44++;
              v46 = v47;
              v48 = *(v43 - 1);
              if (*&v43[4 * ((v48 - 1) & 3)] != v47)
              {
                *(v43 - 1) = v48 + 1;
                *&v43[4 * (v48 & 3)] = v46;
              }

              v43 += 20;
              --v45;
            }

            while (v45);
          }

          goto LABEL_49;
        }

LABEL_12:
        if (!v63 || *(a3 + v12) == 1 && *(a3 + v11) == 1 && *(a3 + v13) == 1)
        {
          v14 = v64;
          if (v64 >= 1)
          {
            v15 = v12 * v58;
            a2 = v59;
            v16 = (v59 + 4 * v15);
            v17 = (v59 + 4 * v11 * v64);
            v18 = v13 * v58;
            v6 = v58;
            v19 = (v59 + 4 * v18);
            v20 = __p;
            do
            {
              v22 = *v16++;
              v21 = v22;
              v23 = *v17++;
              v24 = v23 + v21;
              v25 = *v19++;
              *v20++ = v24 - v25;
              --v14;
            }

            while (v14);
            v26 = 2;
            goto LABEL_44;
          }

          v26 = 2;
LABEL_43:
          v6 = v58;
          a2 = v59;
          goto LABEL_44;
        }

        goto LABEL_23;
      }

      v12 = v65;
      v11 = HIDWORD(v65);
      v13 = v66;
    }

    a3 = *v60;
    goto LABEL_12;
  }

LABEL_52:
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71[0] = v70;
    operator delete(v70);
  }

  v49 = 360;
  do
  {
    v50 = v73 + v49;
    v51 = v71[v49 / 8];
    if (v51)
    {
      *(v50 - 2) = v51;
      operator delete(v51);
    }

    v52 = *(v50 - 6);
    if (v52)
    {
      *&v69[v49] = v52;
      operator delete(v52);
    }

    v53 = v73 + v49;
    v54 = *(&v65 + v49);
    if (v54)
    {
      *(v53 - 8) = v54;
      operator delete(v54);
    }

    v55 = *(v53 - 12);
    if (v55)
    {
      *(&v73[-5] + v49 - 8) = v55;
      operator delete(v55);
    }

    v56 = *(v50 - 15);
    if (v56)
    {
      *(&v73[-7] + v49) = v56;
      operator delete(v56);
    }

    v49 -= 120;
  }

  while (v49);
  v57 = *MEMORY[0x277D85DE8];
}

void sub_2500FB830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a25 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FB88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v48 = *(a1 + 4332);
  v5 = *(a1 + 4336);
  v50 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v58 = 0u;
  memset(v59, 0, 112);
  memset(v57, 0, sizeof(v57));
  sub_2500F3ECC(v57, v5);
  sub_2500F3ECC(&v58 + 1, v5);
  v6 = v5;
  sub_2500FD43C(v55, v5);
  LODWORD(v51) = 0;
  sub_2500FC9FC(&__p, v5, &v51);
  if (v48 >= 1)
  {
    v7 = 0;
    v46 = v5;
    v47 = 4 * v5;
    v8 = a2;
    v44 = a3;
    v45 = v5;
    while (v50 && *(a3 + v7) != 1)
    {
LABEL_37:
      ++v7;
      v8 = (v8 + v47);
      if (v7 == v48)
      {
        goto LABEL_38;
      }
    }

    v9 = *(*(a1 + 4128) + 4 * v7);
    if ((v9 & 0x80000000) != 0)
    {
      v12 = v46;
      goto LABEL_20;
    }

    v52 = -1;
    v51 = -1;
    sub_2500F7D4C(a1, v9, v7, (*(a1 + 1256) + 12 * v9), &v51);
    v10 = v51;
    v11 = HIDWORD(v51);
    if (v51 < 0)
    {
      sub_2500F7D4C(a1, v9, v7, (*(a1 + 1280) + 12 * v9), &v51);
      if (v51 < 0)
      {
        v12 = v46;
        if (v11 == -1)
        {
LABEL_19:
          v6 = v45;
LABEL_20:
          v21 = sub_2500FA2D8(a1, v7, a2, a3, __p, v54);
          v20 = v57;
          if (v6 < 1 || v21)
          {
LABEL_32:
            sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v20, a2 + 4 * v7 * v6);
            if (v12 >= 1)
            {
              v29 = v55[0] + 4;
              v30 = v8;
              v31 = v12;
              do
              {
                v33 = *v30++;
                v32 = v33;
                v34 = *(v29 - 1);
                if (*&v29[4 * ((v34 - 1) & 3)] != v33)
                {
                  *(v29 - 1) = v34 + 1;
                  *&v29[4 * (v34 & 3)] = v32;
                }

                v29 += 20;
                --v31;
              }

              while (v31);
            }

            goto LABEL_37;
          }

          v22 = __p;
          v23 = v55[0] + 4;
          v24 = v12;
          do
          {
            v25 = sub_2500F2F8C(a1, __b);
            v26 = v25;
            if (v25)
            {
              v27 = 2;
            }

            else
            {
              v27 = 1;
            }

            if (sub_2500F2F8C(a1, &__b[v27]))
            {
              v28 = 2;
            }

            else
            {
              v28 = 0;
            }

            *v22++ = *&v23[4 * ((*(v23 - 1) + ~(v28 | v26)) & 3)];
            v23 += 20;
            --v24;
          }

          while (v24);
          v20 = v57;
          a3 = v44;
          v12 = v46;
LABEL_31:
          v6 = v45;
          goto LABEL_32;
        }

LABEL_10:
        if (!v50 || *(a3 + v10) == 1 && *(a3 + v11) == 1)
        {
          if (v12 >= 1)
          {
            v13 = (a2 + 4 * v10 * v45);
            v14 = (a2 + 4 * v11 * v12);
            v15 = __p;
            v16 = v12;
            do
            {
              v18 = *v13++;
              v17 = v18;
              v19 = *v14++;
              *v15++ = (v19 + v17) / 2;
              --v16;
            }

            while (v16);
          }

          v20 = &v58 + 1;
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      v10 = v51;
      v11 = HIDWORD(v51);
    }

    v12 = v46;
    goto LABEL_10;
  }

LABEL_38:
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  for (i = 0; i != -240; i -= 120)
  {
    v36 = (v57 + i);
    v37 = *&v59[i + 88];
    if (v37)
    {
      v36[28] = v37;
      operator delete(v37);
    }

    v38 = v36[24];
    if (v38)
    {
      *&v59[i + 72] = v38;
      operator delete(v38);
    }

    v39 = v57 + i;
    v40 = *&v59[i + 40];
    if (v40)
    {
      *(v39 + 22) = v40;
      operator delete(v40);
    }

    v41 = *(v39 + 18);
    if (v41)
    {
      *&v59[i + 24] = v41;
      operator delete(v41);
    }

    v42 = v36[15];
    if (v42)
    {
      *&v59[i] = v42;
      operator delete(v42);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_2500FBCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 120; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a27 + i));
  }

  _Unwind_Resume(a1);
}

void *sub_2500FBCFC(void *a1)
{
  v2 = operator new(0x1128uLL);
  sub_2500FD550(v2);
  *a1 = v2;
  return a1;
}

void sub_2500FBD48(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FBDC0(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_2500FBD84(void *a1, unint64_t a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_2500FC068(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_2500FBDC0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v17 = a1;
    if (v9)
    {
      v10 = sub_2500FC020(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    __p = v10;
    v14 = &v10[12 * v6];
    v16 = &v10[12 * v9];
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v12);
    v15 = &v14[v12];
    sub_2500FBF9C(a1, &__p);
    if (v15 != v14)
    {
      v15 = &v14[(v15 - v14 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2500FBF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500FBF9C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void *sub_2500FC020(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_2500E9AAC();
  }

  return operator new(12 * a2);
}

void sub_2500FC068(void *a1, unint64_t a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = &v6[3 * a2];
      do
      {
        *v6 = *a3;
        v6[1] = a3[1];
        v6[2] = a3[2];
        v6 += 3;
      }

      while (v6 != v13);
      v6 = v13;
    }

    a1[1] = v6;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2);
    v9 = v8 + a2;
    if (v8 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v20 = a1;
    if (v11)
    {
      v12 = sub_2500FC020(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[12 * v8];
    __p = v12;
    v17 = v14;
    v19 = &v12[12 * v11];
    v15 = &v14[12 * a2];
    do
    {
      *v14 = *a3;
      *(v14 + 1) = a3[1];
      *(v14 + 2) = a3[2];
      v14 += 12;
    }

    while (v14 != v15);
    v18 = v15;
    sub_2500FBF9C(a1, &__p);
    if (v18 != v17)
    {
      v18 = &v17[(v18 - v17 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2500FC1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500FC244(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FC494(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_2500FC280(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = (a1 + 16);
  v4 = 1536;
  do
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    sub_2500FC690(&__p, *(v3 - 1), *v3, (*v3 - *(v3 - 1)) >> 3);
    sub_2500FC5F0(&__p, v2);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v3 += 3;
    v4 -= 24;
  }

  while (v4);
}

void sub_2500FC2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500FC318(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_2500FC748(a1, a2 - v2);
  }
}

void sub_2500FC348(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 2)
  {
    if (a2 >> 62)
    {
      sub_2500E9A94();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500FC894(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[4 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_2500FC3E8(uint64_t a1, size_t __sz)
{
  v2 = *a1;
  if (*(a1 + 16) - *a1 < __sz)
  {
    if ((__sz & 0x8000000000000000) != 0)
    {
      sub_2500E9A94();
    }

    v5 = *(a1 + 8) - v2;
    v6 = operator new(__sz);
    memcpy(v6, v2, v5);
    *a1 = v6;
    *(a1 + 8) = &v6[v5];
    *(a1 + 16) = &v6[__sz];
    if (v2)
    {

      operator delete(v2);
    }
  }
}

void sub_2500FC494(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = v4 + 12 * a2;
      do
      {
        *v4 = 0xFFFFFFFF00000000;
        *(v4 + 8) = -1;
        v4 += 12;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_2500FC020(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[12 * v6];
    v13 = &v12[12 * a2];
    v14 = v12;
    do
    {
      *v14 = 0xFFFFFFFF00000000;
      *(v14 + 2) = -1;
      v14 += 12;
    }

    while (v14 != v13);
    v15 = &v10[12 * v9];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_2500FC5F0(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_2500E9A94();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500EBDCC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void *sub_2500FC690(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_2500FC70C(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2500FC6F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500FC70C(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9A94();
  }

  result = sub_2500EBDCC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void sub_2500FC748(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2500E9A94();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_2500FC85C(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * a2);
    v14 = &v12[16 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void *sub_2500FC85C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_2500E9AAC();
  }

  return operator new(16 * a2);
}

void *sub_2500FC894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_2500E9AAC();
  }

  return operator new(4 * a2);
}

void sub_2500FC8CC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_2500E9A94();
    }

    v9 = v7 >> 2;
    v10 = v4 - v6;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_2500FC894(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    bzero(v13, 4 * a2);
    memcpy(&v13[-4 * (v7 >> 2)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-4 * (v7 >> 2)];
    *(a1 + 8) = &v13[4 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_2500FC9FC(void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500FCB10(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2501105B0)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2501105F0)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_2500FCAF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500FCB10(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_2500E9A94();
  }

  result = sub_2500FC894(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void sub_2500FCB4C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_2500FCB7C(a1, a2 - v2);
  }
}

void sub_2500FCB7C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      memset_pattern16(*(a1 + 8), &unk_250110610, 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_2500E9A94();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_2500FCCB0(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v9];
    v14 = &v12[2 * v11];
    memset_pattern16(v13, &unk_250110610, 2 * a2);
    memcpy(&v13[-2 * (v7 >> 1)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-2 * (v7 >> 1)];
    *(a1 + 8) = &v13[2 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_2500FCCB0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_2500E9AAC();
  }

  return operator new(2 * a2);
}

void sub_2500FCCE4(uint64_t a1, unint64_t a2, int *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v14 = 0;
      v15 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v15 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v17 = vdupq_n_s64(v15);
      v18 = v7 + 4 * a2;
      v19 = *a3;
      v20 = v16 + 4;
      v21 = (v7 + 8);
      do
      {
        v22 = vdupq_n_s64(v14);
        v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_2501105B0)));
        if (vuzp1_s16(v23, *v17.i8).u8[0])
        {
          *(v21 - 2) = v19;
        }

        if (vuzp1_s16(v23, *&v17).i8[2])
        {
          *(v21 - 1) = v19;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_2501105F0)))).i32[1])
        {
          *v21 = v19;
          v21[1] = v19;
        }

        v14 += 4;
        v21 += 4;
      }

      while (v20 != v14);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_2500E9A94();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_2500FC894(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0;
    v25 = &v13[4 * v10];
    v26 = &v25[4 * a2];
    v27 = *a3;
    v28 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    v30 = v28 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v31 = v25 + 8;
    do
    {
      v32 = vdupq_n_s64(v24);
      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_2501105B0)));
      if (vuzp1_s16(v33, *v29.i8).u8[0])
      {
        *(v31 - 2) = v27;
      }

      if (vuzp1_s16(v33, *&v29).i8[2])
      {
        *(v31 - 1) = v27;
      }

      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_2501105F0)))).i32[1])
      {
        *v31 = v27;
        v31[1] = v27;
      }

      v24 += 4;
      v31 += 4;
    }

    while (v30 != v24);
    v34 = &v13[4 * v12];
    v35 = *(a1 + 8) - *a1;
    v36 = &v25[-v35];
    memcpy(&v25[-v35], *a1, v35);
    v37 = *a1;
    *a1 = v36;
    *(a1 + 8) = v26;
    *(a1 + 16) = v34;
    if (v37)
    {

      operator delete(v37);
    }
  }
}

void *sub_2500FCF2C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2500FCB10(a1, a2);
  v4 = a1[1];
  bzero(v4, 4 * a2);
  a1[1] = &v4[4 * a2];
  return a1;
}

void sub_2500FCF80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500FCF9C(uint64_t a1, int a2)
{
  if (!sub_2500F2F8C(a1, (a1 + 3496)))
  {
    return sub_2500F3144(a1, 0, (a1 + 3530), (a1 + 3532)) + a2;
  }

  v4 = a1 + 3536;
  v5 = sub_2500F2F8C(a1, (a1 + 3536));
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (sub_2500F2F8C(a1, (v4 + v6)))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v8 + 3))))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v10 + 7))))
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v12 + 15))))
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 | v13;
  if (sub_2500F2F8C(a1, (v4 + 2 * ((v12 | v13) + 31))))
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_2500F2F8C(a1, (a1 + 3664));
  if (v16)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (sub_2500F2F8C(a1, (a1 + 3664 + v17)))
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v16;
  if (v19 != 3)
  {
    goto LABEL_29;
  }

  v20 = sub_2500F307C(a1, 0, (a1 + 3670));
  if (v20 >= -3)
  {
    v19 = v20 + 3;
LABEL_29:
    v21 = a1 + 24 * (v14 | v15);
    v22 = *(v21 + 1512);
    v23 = *(v21 + 1504);
    if (v19 < ((v22 - v23) >> 3))
    {
      v24 = *(v23 + 8 * v19);
      if (v24)
      {
        return -1431655765 * ((v24 - *(a1 + 1472)) >> 2);
      }
    }
  }

  *(a1 + 4384) = 3;
  return 0xFFFFFFFFLL;
}

void *sub_2500FD160(void *result, int a2, unsigned int a3, int a4)
{
  v4 = (a4 - 2);
  if (a3 > 2)
  {
    if (a3 == 3 || a3 == 5)
    {
      v12 = (result[181] + 16 * a2);
      v13 = v12[3];
      v14 = *v12;
      do
      {
        v15 = v14;
        v14 = *(result[166] + 4 * v4);
        if (*(result[169] + v4))
        {
          v16 = (result[157] + 12 * v14);
          *v16 = a2;
          v16[1] = v15;
          v16[2] = v13;
        }

        v13 = v15;
      }

      while (v4-- > 0);
    }

    else
    {
      v18 = 0;
      v19 = -1;
      v20 = -1;
      do
      {
        v21 = v19;
        v19 = *(result[166] + 4 * v18);
        if (*(result[169] + v18))
        {
          v22 = (result[157] + 12 * v19);
          *v22 = a2;
          v22[1] = v21;
          v22[2] = v20;
        }

        ++v18;
        v20 = v21;
      }

      while (a4 != v18);
    }
  }

  else
  {
    v5 = (result[181] + 16 * a2);
    v6 = v5[1];
    v7 = v5[2];
    v8 = 1;
    do
    {
      v9 = *(result[166] + 4 * v8);
      if (*(result[169] + v8))
      {
        v10 = (result[157] + 12 * v9);
        *v10 = a2;
        v10[1] = v6;
        v10[2] = v7;
      }

      ++v8;
      v7 = v6;
      v6 = v9;
    }

    while (a4 != v8);
    if (!a3)
    {
      if (*(result[169] + v4))
      {
        v11 = (result[160] + 12 * *(result[166] + 4 * v4));
        *v11 = a2;
        v11[1] = *v5;
        v11[2] = v5[3];
      }
    }
  }

  return result;
}

void sub_2500FD2AC(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      sub_2500E9A94();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *sub_2500FD3BC(void *a1, size_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500EA010(a1, a2);
    v6 = a1[1];
    memset(v6, *a3, a2);
    a1[1] = &v6[a2];
  }

  return a1;
}

void sub_2500FD420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500FD43C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500FD4C4(a1, a2);
    v4 = a1[1];
    v5 = v4 + 20 * a2;
    v6 = 20 * a2;
    v7 = (v4 + 4);
    do
    {
      *v7 = 0;
      v7[1] = 0;
      *(v7 - 1) = 4;
      v7 = (v7 + 20);
      v6 -= 20;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_2500FD4A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500FD4C4(void *a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2500E9A94();
  }

  result = sub_2500FD50C(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[20 * v4];
  return result;
}

void *sub_2500FD50C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2500E9AAC();
  }

  return operator new(20 * a2);
}

uint64_t sub_2500FD550(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 1140) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 4;
  *(a1 + 1148) = 0x101010100000002;
  *(a1 + 1156) = 1;
  *(a1 + 1496) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1500) = -1;
  bzero((a1 + 1504), 0x700uLL);
  memset_pattern16((a1 + 3296), &unk_250110610, 0xAuLL);
  *(a1 + 3306) = 0x8000;
  memset_pattern16((a1 + 3308), &unk_250110610, 0x60uLL);
  *(a1 + 3404) = 0x8000;
  memset_pattern16((a1 + 3406), &unk_250110610, 6uLL);
  *(a1 + 3412) = 0x8000;
  memset_pattern16((a1 + 3414), &unk_250110610, 0x50uLL);
  *(a1 + 3494) = -2147450880;
  memset_pattern16((a1 + 3498), &unk_250110610, 0x20uLL);
  *(a1 + 3530) = -2147450880;
  *(a1 + 3534) = 0x8000;
  memset_pattern16((a1 + 3536), &unk_250110610, 0x80uLL);
  memset_pattern16((a1 + 3664), &unk_250110610, 6uLL);
  *(a1 + 3670) = 0x8000;
  memset_pattern16((a1 + 3672), &unk_250110610, 6uLL);
  *(a1 + 4028) = 0u;
  *(a1 + 4016) = 0u;
  *(a1 + 4000) = 0u;
  *(a1 + 3984) = 0u;
  *(a1 + 3968) = 0u;
  *(a1 + 3952) = 0u;
  *(a1 + 3936) = 0u;
  *(a1 + 3920) = 0u;
  *(a1 + 3904) = 0u;
  *(a1 + 3888) = 0u;
  *(a1 + 3872) = 0u;
  *(a1 + 3856) = 0u;
  *(a1 + 3840) = 0u;
  *(a1 + 3824) = 0u;
  *(a1 + 3808) = 0u;
  *(a1 + 3792) = 0u;
  *(a1 + 3776) = 0u;
  *(a1 + 3760) = 0u;
  *(a1 + 3744) = 0u;
  *(a1 + 3728) = 0u;
  *(a1 + 3712) = 0u;
  *(a1 + 3696) = 0u;
  *(a1 + 3680) = 0u;
  *(a1 + 4044) = 4;
  *(a1 + 4048) = 2;
  *(a1 + 4356) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4072) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = 0u;
  *(a1 + 4120) = 0u;
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0u;
  *(a1 + 4168) = 0u;
  *(a1 + 4184) = 0u;
  *(a1 + 4200) = 0u;
  *(a1 + 4216) = 0u;
  *(a1 + 4232) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4372) = 4;
  *(a1 + 4376) = 2;
  *(a1 + 4384) = 6;
  return a1;
}

uint64_t sub_2500FD77C(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = *&a1[6 * v3 + 2];
  v5 = ((*&a1[6 * v3 + 4] - v4) >> 3) - 1;
  if (v2 != v5)
  {
    v6 = *(v4 + 8 * v2);
    *(v4 + 8 * v2) = *(v4 + 8 * v5);
    *(v4 + 8 * v5) = v6;
    *(*(v4 + 8 * v2) + 8) = v2;
    *(v6 + 8) = v5;
  }

  return sub_2500FD7D0(a1, v3);
}

uint64_t sub_2500FD7D0(_DWORD *a1, int a2)
{
  v2 = (*a1)-- == 1;
  v3 = &a1[6 * a2 + 2];
  v4 = *(v3 + 8);
  v5 = *(v4 - 8);
  *(v3 + 8) = v4 - 8;
  *(v5 + 8) = -1;
  if (v2)
  {
    a1[1] = -1;
  }

  else
  {
    v6 = a1[1];
    if ((v6 & 0x80000000) == 0)
    {
      do
      {
        if (*&a1[6 * v6 + 2] != *&a1[6 * v6 + 4])
        {
          break;
        }

        a1[1] = v6 - 1;
      }

      while (v6-- > 0);
    }
  }

  return v5;
}

void *sub_2500FD840(void *a1)
{
  sub_2500FDA78((a1 + 531));
  sub_2500FDA78((a1 + 522));
  v2 = a1[519];
  if (v2)
  {
    a1[520] = v2;
    operator delete(v2);
  }

  v3 = a1[516];
  if (v3)
  {
    a1[517] = v3;
    operator delete(v3);
  }

  v4 = a1[513];
  if (v4)
  {
    a1[514] = v4;
    operator delete(v4);
  }

  v5 = a1[510];
  if (v5)
  {
    a1[511] = v5;
    operator delete(v5);
  }

  v6 = a1[507];
  if (v6)
  {
    a1[508] = v6;
    operator delete(v6);
  }

  v7 = a1[496];
  if (v7)
  {
    a1[497] = v7;
    operator delete(v7);
  }

  v8 = a1[493];
  if (v8)
  {
    a1[494] = v8;
    operator delete(v8);
  }

  v9 = a1[490];
  if (v9)
  {
    a1[491] = v9;
    operator delete(v9);
  }

  for (i = 488; i != 458; i -= 15)
  {
    v11 = &a1[i];
    v12 = a1[i - 1];
    if (v12)
    {
      a1[i] = v12;
      operator delete(v12);
    }

    v13 = *(v11 - 4);
    if (v13)
    {
      a1[i - 3] = v13;
      operator delete(v13);
    }

    v14 = &a1[i];
    v15 = a1[i - 7];
    if (v15)
    {
      *(v14 - 6) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 10);
    if (v16)
    {
      a1[i - 9] = v16;
      operator delete(v16);
    }

    v17 = *(v11 - 13);
    if (v17)
    {
      a1[i - 12] = v17;
      operator delete(v17);
    }
  }

  v18 = 192;
  do
  {
    v19 = a1[v18 + 185];
    if (v19)
    {
      a1[v18 + 186] = v19;
      operator delete(v19);
    }

    v18 -= 3;
  }

  while (v18 * 8);
  v20 = a1[184];
  if (v20)
  {
    a1[185] = v20;
    operator delete(v20);
  }

  v21 = a1[181];
  if (v21)
  {
    a1[182] = v21;
    operator delete(v21);
  }

  v22 = a1[178];
  if (v22)
  {
    a1[179] = v22;
    operator delete(v22);
  }

  v23 = a1[175];
  if (v23)
  {
    a1[176] = v23;
    operator delete(v23);
  }

  v24 = a1[172];
  if (v24)
  {
    a1[173] = v24;
    operator delete(v24);
  }

  v25 = a1[169];
  if (v25)
  {
    a1[170] = v25;
    operator delete(v25);
  }

  v26 = a1[166];
  if (v26)
  {
    a1[167] = v26;
    operator delete(v26);
  }

  v27 = a1[163];
  if (v27)
  {
    a1[164] = v27;
    operator delete(v27);
  }

  v28 = a1[160];
  if (v28)
  {
    a1[161] = v28;
    operator delete(v28);
  }

  v29 = a1[157];
  if (v29)
  {
    a1[158] = v29;
    operator delete(v29);
  }

  v30 = a1[154];
  if (v30)
  {
    a1[155] = v30;
    operator delete(v30);
  }

  v31 = a1[151];
  if (v31)
  {
    a1[152] = v31;
    operator delete(v31);
  }

  v32 = a1[148];
  if (v32)
  {
    a1[149] = v32;
    operator delete(v32);
  }

  v33 = a1[145];
  if (v33)
  {
    a1[146] = v33;
    operator delete(v33);
  }

  return a1;
}

uint64_t sub_2500FDA78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2500FDACC(int32x2_t *a1, uint64_t a2, int *a3, uint64_t a4, unsigned int *a5, uint64_t a6, int *a7, uint64_t a8, int *a9, uint64_t *a10, uint64_t *a11)
{
  v18 = a9;
  v19 = 4 * a4;
  if (!*(a8 + 16))
  {
    v19 = 0;
  }

  v20 = 12 * a2 + 4 * a4 + 4 * a6 + v19 + 1024;
  v21 = *a10;
  v22 = a10[1] - *a10;
  if (v20 <= v22)
  {
    if (v20 < v22)
    {
      a10[1] = v21 + v20;
    }
  }

  else
  {
    v24 = a8;
    sub_2500FD2AC(a10, v20 - v22);
    v18 = a9;
    a8 = v24;
    v21 = *a10;
  }

  *a11 = 0;
  return sub_2500FDBEC(v18, a1, a2, a3, a4, a5, a6, a7, v21, v20, a11, 0, 0, 0, a8);
}

void sub_2500FDBC4(void *a1, unint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FD2AC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + a2;
  }
}

uint64_t sub_2500FDBEC(int *a1, int32x2_t *a2, uint64_t a3, int *a4, uint64_t a5, unsigned int *a6, uint64_t a7, int *a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v423 = *MEMORY[0x277D85DE8];
  sub_2500EA58C(v403);
  if (!a2)
  {
    v24 = &v404;
    v25 = "[Error] coordinates == nullptr";
    v26 = 30;
    goto LABEL_56;
  }

  if (!a3)
  {
    v24 = &v404;
    v25 = "[Error] mesh has 0 vertices ";
    v26 = 28;
    goto LABEL_56;
  }

  if (!a5)
  {
    v24 = &v404;
    v25 = "[Error] mesh has 0 faces ";
    v26 = 25;
    goto LABEL_56;
  }

  if (!a6)
  {
    v24 = &v404;
    v25 = "[Error] faceVertexCounts == nullptr";
LABEL_13:
    v26 = 35;
    goto LABEL_56;
  }

  if (!a7)
  {
    v24 = &v404;
    v25 = "[Error] mesh has 0 indices ";
    v26 = 27;
    goto LABEL_56;
  }

  if (!a4 && 3 * a5 != a7)
  {
    v24 = &v404;
    v25 = "[Error] triangular mesh has invalid indexCount ";
    v26 = 47;
LABEL_56:
    v64 = sub_2500EAB44(v24, v25, v26);
LABEL_57:
    v32 = v64;
    v33 = 5;
    goto LABEL_58;
  }

  if (!a8 && *(a15 + 16) == 1)
  {
    v24 = &v404;
    v25 = "[Error] faceGroupIndices == nullptr";
    goto LABEL_13;
  }

  if (!a9)
  {
    v24 = &v404;
    v25 = "[Error] outputBuffer == nullptr";
    v26 = 31;
    goto LABEL_56;
  }

  if (a10 <= 0x20)
  {
    v27 = sub_2500EAB44(&v404, "[Error] output buffer size is ", 30);
    v28 = MEMORY[0x25305EB80](v27, a10);
    v29 = sub_2500EAB44(v28, " bytes", 6);
    v30 = sub_2500EAB44(v29, "It should at least ", 19);
    v31 = MEMORY[0x25305EB70](v30, 32);
    v32 = sub_2500EAB44(v31, " bytes ", 7);
    v33 = 1;
LABEL_58:
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v65 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&__b);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_59;
  }

  v34 = *(a15 + 4);
  if (v34 >= 0x1C)
  {
    v24 = &v404;
    v25 = "[Error] bit depth should be between 0 and 28";
    v26 = 44;
    goto LABEL_56;
  }

  v35 = *(a15 + 12);
  if (v35 >= 3)
  {
    v51 = sub_2500EAB44(&v404, "[Error] geometry precition mode ", 32);
    v52 = MEMORY[0x25305EB60](v51, *(a15 + 12));
    v53 = sub_2500EAB44(v52, " not supported. Only the following modes are supported : ", 57);
    v54 = sub_2500EAB44(v53, "(", 1);
    v55 = MEMORY[0x25305EB60](v54, 0);
    v56 = sub_2500EAB44(v55, ") ", 2);
    v57 = sub_2500EAB44(v56, " DELTA,", 7);
    v58 = sub_2500EAB44(v57, "(", 1);
    v59 = MEMORY[0x25305EB60](v58, 1);
    v60 = sub_2500EAB44(v59, ") ", 2);
    v61 = sub_2500EAB44(v60, " PARALLELOGRAM, and", 19);
    v62 = sub_2500EAB44(v61, "(", 1);
    v63 = MEMORY[0x25305EB60](v62, 2);
    v24 = sub_2500EAB44(v63, ") ", 2);
    v25 = " ADAPTIVE_PARALLELOGRAM.";
    v26 = 24;
    goto LABEL_56;
  }

  v36 = *(a15 + 8);
  if (v36 > 4 || ((1 << v36) & 0x15) == 0)
  {
    v84 = sub_2500EAB44(&v404, "[Error] geometry binarization mode ", 35);
    v85 = MEMORY[0x25305EB60](v84, *(a15 + 8));
    v86 = sub_2500EAB44(v85, " not supported. Only the following modes are supported : ", 57);
    v87 = sub_2500EAB44(v86, "(", 1);
    v88 = MEMORY[0x25305EB60](v87, 0);
    v89 = sub_2500EAB44(v88, ") ", 2);
    v90 = sub_2500EAB44(v89, " AC,", 4);
    v91 = sub_2500EAB44(v90, "(", 1);
    v92 = MEMORY[0x25305EB60](v91, 2);
    v93 = sub_2500EAB44(v92, ") ", 2);
    v94 = sub_2500EAB44(v93, " EGK, and", 9);
    v95 = sub_2500EAB44(v94, "(", 1);
    v96 = MEMORY[0x25305EB60](v95, 4);
    v24 = sub_2500EAB44(v96, ") ", 2);
    v25 = " AC2.";
    v26 = 5;
    goto LABEL_56;
  }

  v396 = a8;
  if (a4)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0x10000;
    do
    {
      v41 = a4[v38];
      if ((v41 - 3) >= 0xFFFD)
      {
        v97 = sub_2500EAB44(&v404, "[Error] faceVertexCounts[", 25);
        v98 = MEMORY[0x25305EB80](v97, v38);
        v99 = sub_2500EAB44(v98, "] == ", 5);
        v100 = MEMORY[0x25305EB60](v99, v41);
        v101 = sub_2500EAB44(v100, " is not the range 3 to ", 23);
        v102 = 0xFFFFLL;
        goto LABEL_102;
      }

      if (v41 < v40)
      {
        v40 = a4[v38];
      }

      if (v39 <= v41)
      {
        v39 = a4[v38];
      }

      v37 += v41;
      ++v38;
    }

    while (a5 != v38);
    if (v39 == 4 && v40 == 3)
    {
      v43 = 2;
    }

    else
    {
      v43 = 3;
    }

    if (v40 == 4 && v39 == 4)
    {
      v45 = 1;
    }

    else
    {
      v45 = v43;
    }

    if (v40 == 3 && v39 == 3)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    if (v37 != a7)
    {
      v48 = sub_2500EAB44(&v404, "[Error] indexCount == ", 22);
      v49 = MEMORY[0x25305EB80](v48, a7);
      v50 = sub_2500EAB44(v49, " is different from expected value of ", 37);
      v24 = MEMORY[0x25305EB80](v50, v37);
      v25 = " computed based on faceVertexCounts";
      goto LABEL_13;
    }
  }

  else
  {
    v47 = 0;
  }

  v69 = 0;
  do
  {
    v70 = a6[v69];
    if ((v70 & 0x80000000) != 0 || v70 >= a3)
    {
      v103 = sub_2500EAB44(&v404, "[Error] indices[", 16);
      v104 = MEMORY[0x25305EB80](v103, v69);
      v105 = sub_2500EAB44(v104, "] == ", 5);
      v106 = MEMORY[0x25305EB60](v105, v70);
      v101 = sub_2500EAB44(v106, " is not the range 0 to ", 23);
      v102 = (a3 - 1);
      goto LABEL_102;
    }

    ++v69;
  }

  while (a7 != v69);
  v409 = *a2;
  v71 = a2[1].i32[0];
  v411 = v409;
  v410 = v71;
  v412 = v71;
  if (a3 >= 2)
  {
    v23 = v409;
    v72 = v411;
    v73 = v410;
    v74 = v412;
    v75 = (a3 & 0x7FFFFFFF) - 1;
    v76 = &a2[2] + 1;
    do
    {
      v77 = *(v76 - 2);
      v23 = vmin_s32(v77, v23);
      v72 = vmax_s32(v72, v77);
      v79 = *v76;
      v76 += 3;
      v78 = v79;
      if (v79 < v73)
      {
        v73 = v78;
      }

      if (v74 <= v78)
      {
        v74 = v78;
      }

      --v75;
    }

    while (v75);
    v409 = v23;
    v411 = v72;
    v410 = v73;
    v412 = v74;
  }

  if (v34)
  {
    v80 = 0;
    while (1)
    {
      v81 = &v409 + v80;
      v82 = v81[3];
      v83 = *v81;
      if ((v83 & 0x80000000) != 0 || v82 >= 1 << v34)
      {
        break;
      }

      *(&v413 + v80++) = v82 - v83;
      if (v80 == 3)
      {
        goto LABEL_87;
      }
    }

    v116 = 1 << v34;
    v117 = sub_2500EAB44(&v404, "[Error] boundingBox[", 20);
    v118 = MEMORY[0x25305EB60](v117, v80);
    v119 = sub_2500EAB44(v118, "] == [", 6);
    v120 = MEMORY[0x25305EB60](v119, v83);
    v121 = sub_2500EAB44(v120, ", ", 2);
    v122 = MEMORY[0x25305EB60](v121, v82);
    v101 = sub_2500EAB44(v122, "] is not in the range 0 to ", 27);
    v102 = (v116 - 1);
    goto LABEL_102;
  }

  for (i = 0; i != 3; ++i)
  {
    v108 = v411.i32[i] - v409.i32[i];
    if (v108 > 0xFFFFFFF)
    {
      v123 = sub_2500EAB44(&v404, "[Error] boundingBox.max[", 24);
      v124 = MEMORY[0x25305EB60](v123, i);
      v125 = sub_2500EAB44(v124, "] - ", 4);
      v126 = sub_2500EAB44(v125, "boundingBox.min[", 16);
      v127 = MEMORY[0x25305EB60](v126, i);
      v128 = sub_2500EAB44(v127, "] == ", 5);
      v129 = MEMORY[0x25305EB90](v128, v108);
      v101 = sub_2500EAB44(v129, " is larger than ", 16);
      v102 = 0x10000000;
      goto LABEL_102;
    }

    *(&v413 + i) = v108;
  }

LABEL_87:
  v109 = a15;
  v110 = *(a15 + 16);
  if (v396 && (*(a15 + 16) & 1) != 0)
  {
    v111 = 0;
    while (1)
    {
      v112 = v396[v111];
      if (v112 < 0)
      {
        v112 = -v112;
      }

      if (v112 >> 28)
      {
        break;
      }

      if (a5 == ++v111)
      {
        goto LABEL_94;
      }
    }

    v130 = sub_2500EAB44(&v404, "[Error] abs(faceGroupIndices[", 29);
    v131 = MEMORY[0x25305EB80](v130, v111);
    v132 = sub_2500EAB44(v131, "]) == ", 6);
    v133 = MEMORY[0x25305EB60](v132, v396[v111]);
    v101 = sub_2500EAB44(v133, " is not in the range 0 to ", 26);
    v102 = 0xFFFFFFFLL;
LABEL_102:
    v64 = MEMORY[0x25305EB60](v101, v102);
    goto LABEL_57;
  }

LABEL_94:
  if (a10 < 4)
  {
    v114 = 0;
    v115 = 0;
  }

  else
  {
    v23.i32[0] = *(a15 + 17);
    v113 = *(a15 + 21);
    *a9 = -90009999;
    *(a9 + 8) = 0;
    *(a9 + 9) = 8;
    if (((a10 - 8) & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v114 = 0;
      v115 = 0;
    }

    else
    {
      *(a9 + 10) = 0;
      *(a9 + 16) = a3;
      if (((a10 - 16) & 0x7FFFFFFFFFFFFFFCLL) == 4)
      {
        goto LABEL_108;
      }

      *(a9 + 20) = a5;
      *(a9 + 24) = v36;
      *(a9 + 25) = v35;
      v134 = vshl_u16(*&vmovl_u8(v23), 0x4000300020001);
      *(a9 + 26) = v134.i8[0] | v134.i8[4] | ((v134.i32[0] | v134.i32[1]) >> 16) | (v47 << 6) | v110 | (32 * v113);
      *(a9 + 27) = v34;
      if ((a10 & 0x7FFFFFFFFFFFFFFCLL) == 0x1C || (*(a9 + 28) = a7, a10 < 0x24) || (*(a9 + 32) = v409.i32[0], v135 = (a10 + 0x7FFFFFFFFFFFFFE0) & 0x7FFFFFFFFFFFFFFCLL, v135 == 4) || (*(a9 + 36) = v409.i32[1], v135 == 8))
      {
LABEL_108:
        v114 = 0;
        v115 = 0;
      }

      else
      {
        v114 = a10 - 44;
        v115 = (a9 + 44);
        *(a9 + 40) = v410;
      }
    }

    v109 = a15;
  }

  for (j = 0; j != 12; j += 4)
  {
    if ((*(v109 + 21) & 1) == 0)
    {
      break;
    }

    v137 = 32 - __clz(*(&v413 + j));
    *(&v413 + j) = v137;
    v338 = v114-- < 1;
    if (v338)
    {
      v114 = 0;
      v115 = 0;
    }

    else
    {
      *v115 = v137;
      v115 = (v115 + 1);
    }
  }

  v393 = v115;
  v394 = v114;
  *a1 = a3;
  a1[1] = a5;
  a1[2] = a7;
  *(a1 + 3) = v413;
  a1[5] = v414;
  *(a1 + 3) = v409;
  a1[8] = v410;
  a1[9] = v47;
  sub_2500F247C(a1 + 8, 0);
  LODWORD(__b.__locale_) = -1;
  sub_2500F6064(a1 + 8, a3, &__b);
  sub_2500F247C(a1 + 5, 0);
  LODWORD(__b.__locale_) = -1;
  sub_2500F6064(a1 + 5, a5, &__b);
  sub_2500F247C(a1 + 14, a5);
  sub_2500F247C(a1 + 11, a3);
  sub_2500F247C(a1 + 32, a5);
  sub_2500FBD48(a1 + 17, 0);
  LODWORD(v419[0]) = -1;
  __b.__locale_ = -1;
  sub_2500FBD84(a1 + 17, a3, &__b);
  sub_2500FBD48(a1 + 20, 0);
  LODWORD(v419[0]) = -1;
  __b.__locale_ = -1;
  sub_2500FBD84(a1 + 20, a3, &__b);
  sub_2500FBD48(a1 + 23, a3);
  v138 = 0;
  v139 = a3 & 0x7FFFFFFF;
  do
  {
    v140 = a2[1].i32[v138] - a1[8];
    v141 = (*(a1 + 23) + v138 * 4);
    *v141 = vsub_s32(*(a2 + v138 * 4), *(a1 + 6));
    v141[1].i32[0] = v140;
    v138 += 3;
    --v139;
  }

  while (v139);
  v142 = (a5 + 1);
  sub_2500F247C(a1 + 29, v142);
  v143 = *(a1 + 29);
  *v143 = 0;
  if (a4)
  {
    if (a5 >= 1)
    {
      v144 = 0;
      v145 = a5 & 0x7FFFFFFF;
      v146 = v143 + 1;
      do
      {
        v147 = *a4++;
        v144 += v147;
        *v146++ = v144;
        --v145;
      }

      while (v145);
    }
  }

  else if (a5 >= 1)
  {
    v148 = 0;
    v149 = vdupq_n_s64(v142 - 2);
    v150 = v143 + 2;
    v151 = 12;
    do
    {
      v152 = vdupq_n_s64(v148);
      v153 = vmovn_s64(vcgeq_u64(v149, vorrq_s8(v152, xmmword_2501105B0)));
      if (vuzp1_s16(v153, *v149.i8).u8[0])
      {
        *(v150 - 1) = v151 - 9;
      }

      if (vuzp1_s16(v153, *&v149).i8[2])
      {
        *v150 = v151 - 6;
      }

      if (vuzp1_s16(*&v149, vmovn_s64(vcgeq_u64(v149, vorrq_s8(v152, xmmword_2501105F0)))).i32[1])
      {
        v150[1] = v151 - 3;
        v150[2] = v151;
      }

      v148 += 4;
      v150 += 4;
      v151 += 12;
    }

    while (((v142 + 2) & 0x1FFFFFFFCLL) != v148);
  }

  sub_2500F247C(a1 + 26, a7);
  if (a7)
  {
    memmove(*(a1 + 26), a6, 4 * a7);
  }

  v154 = *a1;
  if (*(a15 + 18) == 1 && *(a15 + 17) == 1 || (sub_2500F247C(a1 + 63, 0), LODWORD(__b.__locale_) = 0, sub_2500F6064(a1 + 63, v154, &__b), (*(a15 + 17) & 1) != 0))
  {
    sub_2500FC244(a1 + 69, v154);
    sub_2500FC280((a1 + 144), 64);
  }

  v400 = a1 + 132;
  sub_2500FC318(a1 + 66, v154);
  v155 = *(a1 + 66);
  v156 = *(a1 + 67);
  if (v155 != v156)
  {
    memset(v155, 255, (v156 - v155) & 0xFFFFFFFFFFFFFFF0);
  }

  *(a1 + 35) = 0;
  sub_2500FC348((a1 + 90), 0x100uLL);
  v157 = *(a1 + 60);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 62) - v157) >> 2) <= 0x3F)
  {
    v158 = *(a1 + 61);
    v159 = operator new(0x300uLL);
    memcpy(v159, v157, v158 - v157);
    *(a1 + 60) = v159;
    *(a1 + 61) = &v159[v158 - v157];
    *(a1 + 62) = v159 + 768;
    if (v157)
    {
      operator delete(v157);
    }
  }

  sub_2500FC348((a1 + 114), 0x40uLL);
  sub_2500FC348((a1 + 108), 0x40uLL);
  sub_2500FC348((a1 + 96), 0x20uLL);
  sub_2500FC3E8((a1 + 102), 0x20uLL);
  v399 = a1 + 594;
  memset_pattern16(a1 + 594, &unk_250110610, 0xAuLL);
  *(a1 + 1193) = 0x8000;
  for (k = 2388; k != 2484; k += 6)
  {
    memset_pattern16(a1 + k, &unk_250110610, 6uLL);
  }

  *(a1 + 1242) = 0x8000;
  memset_pattern16(a1 + 2486, &unk_250110610, 6uLL);
  *(a1 + 1246) = 0x8000;
  for (m = 2494; m != 2574; m += 16)
  {
    memset_pattern16(a1 + m, &unk_250110610, 0x10uLL);
  }

  memset_pattern16(a1 + 2578, &unk_250110610, 0x20uLL);
  memset_pattern16(a1 + 654, &unk_250110610, 0x80uLL);
  *(a1 + 1307) = 0x8000;
  *(a1 + 2574) = -2147450880;
  *(a1 + 2610) = -2147450880;
  memset_pattern16(a1 + 688, &unk_250110610, 6uLL);
  sub_2500F3ECC(a1 + 345, 3);
  sub_2500F3ECC(a1 + 360, 3);
  sub_2500F80EC(a1 + 36, *a1);
  v162 = *(a1 + 26);
  v163 = *(a1 + 27);
  if (v162 != v163)
  {
    v164 = *(a1 + 36) + 4;
    do
    {
      v165 = *v162++;
      ++*(v164 + 4 * v165);
    }

    while (v162 != v163);
  }

  sub_2500F8158(a1 + 36);
  v166 = a1[1];
  if (v166 >= 1)
  {
    v167 = 0;
    v168 = *(a1 + 42);
    v169 = *(a1 + 29);
    v170 = *(a1 + 26);
    do
    {
      v171 = *(v169 + 4 * v167);
      v172 = v167 + 1;
      v173 = *(v169 + 4 * (v167 + 1));
      if (v171 < v173)
      {
        v174 = *(a1 + 36);
        v175 = *(a1 + 39);
        do
        {
          v176 = *(v170 + 4 * v171);
          v177 = *(v174 + 4 * v176);
          v178 = *(v175 + 4 * v176);
          v179 = v178 + v177;
          if (v178 <= 0)
          {
LABEL_158:
            *(v175 + 4 * v176) = v178 + 1;
            *(v168 + 4 * v179) = v167;
          }

          else
          {
            v179 = v179;
            while (v167 != *(v168 + 4 * v177))
            {
              if (++v177 >= v179)
              {
                goto LABEL_158;
              }
            }
          }

          ++v171;
        }

        while (v171 != v173);
      }

      ++v167;
    }

    while (v172 != v166);
  }

  v180 = (a1 + 890);
  v392 = v394 - 4;
  a1[891] = (v394 - 4) & ~((v394 - 4) >> 63);
  *(a1 + 446) = v393 + 1;
  sub_2500F0AB8((a1 + 890));
  v181 = *a1;
  v402 = (a1 + 890);
  v395 = v181;
  if (*(a15 + 17) == 1)
  {
    if (v181 >= 1)
    {
      v182 = 0;
      v183 = a1 + 144;
      v184 = -1;
      while (1)
      {
        v185 = *(a1 + 8);
        v397 = v182;
        if (*(v185 + 4 * v182) == -1)
        {
          v186 = a1[70];
          *(v185 + 4 * v182) = v186;
          a1[70] = v186 + 1;
          *(*(a1 + 11) + 4 * v186) = v182;
          v187 = *(a15 + 21) ? -1 : v184;
          v188 = 3 * v182;
          *(*(a1 + 17) + 12 * v182) = v187;
          sub_25010656C(a1, v182, a15);
          sub_2500F6938(a1 + 144, (*(a1 + 69) + 4 * v188));
          if (*v183)
          {
            break;
          }
        }

LABEL_308:
        v182 = v397 + 1;
        if (v397 + 1 == v395)
        {
          goto LABEL_330;
        }
      }

      while (1)
      {
        v189 = a1[145];
        v190 = v189 < 0 ? 0 : sub_2500FD7D0(a1 + 144, v189);
        v184 = -1431655765 * ((v190 - *(a1 + 69)) >> 2);
        sub_250105F68(a1, v184);
        v191 = (*(a1 + 58) - *(a1 + 57)) >> 2;
        v192 = *(*(a1 + 66) + 16 * v184);
        v193 = *(*(a1 + 66) + 16 * v184 + 4);
        v194 = v192 != -1;
        v195 = v193 == v192 && v192 != -1;
        v196 = v191 - 1;
        v197 = (v194 | (2 * (v193 != -1))) + v195;
        sub_250100B10(v180, v191 > 1, v399 + v197);
        if (v191 >= 2)
        {
          break;
        }

LABEL_307:
        v180 = (a1 + 890);
        if (!*v183)
        {
          goto LABEL_308;
        }
      }

      v198 = 0;
      while (1)
      {
        LODWORD(__b.__locale_) = 0;
        v199 = sub_250107098(a1, v184, v198, v197, &__b, a15);
        sub_250107A78(a1, __b.__locale_, v199, a15);
        v200 = v199;
        if (v199 > 1)
        {
          break;
        }

LABEL_297:
        if (v199 >= 1)
        {
          v276 = 0;
          do
          {
            v277 = (*(a1 + 69) + 12 * *(*(a1 + 48) + 4 * v276));
            if (*(*(a1 + 51) + v276))
            {
              sub_2500F6938(a1 + 144, v277);
            }

            else
            {
              sub_2500F6A68(a1 + 144, v277);
            }

            ++v276;
          }

          while (v200 != v276);
        }

        v278 = *(*v400 + 16 * v184);
        v279 = *(*v400 + 16 * v184 + 4);
        v280 = v279 != -1;
        v281 = v278 != -1;
        v282 = v279 == v278 && v278 != -1;
        sub_250100B10(v402, ++v198 < v196, a1 + 1193);
        v197 = (v281 | (2 * v280)) + v282;
        if (v198 == v196)
        {
          goto LABEL_307;
        }
      }

      v201 = *(a15 + 19);
      v202 = v199 - 1;
      v203 = (*(a1 + 48) + 4);
      while (1)
      {
        v205 = *(v203 - 1);
        v204 = *v203;
        if (v201)
        {
          break;
        }

        v236 = *(a1 + 69);
        *(v236 + 12 * v205) += 8;
        v235 = (v236 + 12 * v204);
        LODWORD(v236) = 8;
LABEL_296:
        ++v203;
        *v235 += v236;
        if (!--v202)
        {
          goto LABEL_297;
        }
      }

      v206 = *(a1 + 23);
      v207 = (v206 + 12 * v184);
      v208 = v206 + 12 * v205;
      v209 = (v206 + 12 * v204);
      v210 = *v209;
      v211.i64[0] = *v208;
      v212 = *v209 - *v208;
      v213 = *(v209 + 1);
      v214 = *(v208 + 8);
      v215 = *v207;
      v216 = v207[1].i32[0];
      v217 = v216 - v214;
      if (v212 >= 0)
      {
        v218 = v212;
      }

      else
      {
        v218 = -v212;
      }

      *v219.i8 = v215;
      v219.u64[1] = v213;
      v211.i64[1] = __PAIR64__(v214, v211.u32[1]);
      v220.i64[0] = 0x100000001000;
      v220.i64[1] = 0x100000001000;
      v221 = vmovn_s32(vcgtq_u32(v220, vabdq_s32(v219, v211)));
      v222 = vsubq_s32(v219, v211);
      if (v217 >= 0)
      {
        v223 = v216 - v214;
      }

      else
      {
        v223 = v214 - v216;
      }

      if (((v218 < 0x1000) & v221.i8[4] & v221.i8[6]) == 1 && (v221.i8[0] & 1) != 0 && (v221.i8[2] & 1) != 0 && v223 <= 0xFFF)
      {
        v224 = v222.i32[0] * v212 + v222.i32[1] * v222.i32[2] + v217 * v222.i32[3];
        if (v224)
        {
          v225 = v217 * v222.i32[2] - v222.i32[1] * v222.i32[3];
          if (v225 < 0)
          {
            v225 = v222.i32[1] * v222.i32[3] - v217 * v222.i32[2];
          }

          v226 = v222.i32[0] * v222.i32[3] - v217 * v212;
          if (v226 < 0)
          {
            v226 = -v226;
          }

          v227 = v222.i32[1] * v212 - v222.i32[0] * v222.i32[2];
          if (v227 < 0)
          {
            v227 = v222.i32[0] * v222.i32[2] - v222.i32[1] * v212;
          }

          v228 = v225 + v226;
          if (v226 < v227)
          {
            v229 = v227;
          }

          else
          {
            v228 = v225 + v227;
            v229 = v226;
          }

          v230 = v225 >= v226 && v225 >= v227;
          if (v230)
          {
            v231 = v226 + v227;
          }

          else
          {
            v231 = v228;
          }

          if (v230)
          {
            v232 = v225;
          }

          else
          {
            v232 = v229;
          }

          v233 = v232 + (v231 >> 2);
          if (v224 < 0)
          {
            LODWORD(v234) = -16 * v224 / (v233 - v224) + 16;
          }

          else
          {
            LODWORD(v234) = (16 * v233) / (v233 + v224);
          }

          goto LABEL_236;
        }
      }

      else
      {
        v237 = v222.i32[1] * v222.i32[2] + v222.i32[0] * v212 + v217 * v222.i32[3];
        if (v237)
        {
          v238 = v217 * v222.i32[2] - v222.i32[1] * v222.i32[3];
          if (v238 < 0)
          {
            v238 = v222.i32[1] * v222.i32[3] - v217 * v222.i32[2];
          }

          v239 = v222.i32[0] * v222.i32[3] - v217 * v212;
          if (v239 < 0)
          {
            v239 = -v239;
          }

          v240 = v222.i32[1] * v212 - v222.i32[0] * v222.i32[2];
          if (v240 < 0)
          {
            v240 = v222.i32[0] * v222.i32[2] - v222.i32[1] * v212;
          }

          v241 = v238 + v239;
          if (v239 < v240)
          {
            v242 = v240;
          }

          else
          {
            v241 = v238 + v240;
            v242 = v239;
          }

          v243 = v238 >= v239 && v238 >= v240;
          if (v243)
          {
            v244 = v239 + v240;
          }

          else
          {
            v244 = v241;
          }

          if (v243)
          {
            v245 = v238;
          }

          else
          {
            v245 = v242;
          }

          v246 = v245 + (v244 >> 2);
          if (v237 < 0)
          {
            LODWORD(v234) = -16 * v237 / (v246 - v237) + 16;
          }

          else
          {
            v234 = (16 * v246) / (v246 + v237);
          }

LABEL_236:
          v247 = v215.i32[0] - v210;
          v248 = vsub_s32(vdup_lane_s32(v215, 1), v213).u32[0];
          v249 = *(a1 + 69);
          *(v249 + 12 * v205) += v234;
          v250 = v216 - v213.i32[1];
          v251 = -v212;
          v252 = -v222.i32[2];
          v253 = -v222.i32[3];
          if (v247 >= 0)
          {
            v254 = v247;
          }

          else
          {
            v254 = -v247;
          }

          if (v254 < 0x1000)
          {
            v255 = (v218 < 0x1000) & v221.i8[4] & v221.i8[6];
          }

          else
          {
            v255 = 0;
          }

          if (v248 >= 0)
          {
            v256 = v248;
          }

          else
          {
            v256 = -v248;
          }

          if (v250 >= 0)
          {
            v257 = v250;
          }

          else
          {
            v257 = -v250;
          }

          if (v255 == 1 && v256 <= 0xFFF && v257 <= 0xFFF)
          {
            v258 = v247 * v251 + v248 * v252 + v250 * v253;
            if (v258)
            {
              v259 = v248 * v222.i32[3] + v250 * v252;
              if (v259 < 0)
              {
                v259 = -v259;
              }

              v260 = v247 * v253 + v250 * v212;
              if (v260 < 0)
              {
                v260 = -v260;
              }

              v261 = v247 * v222.i32[2] + v248 * v251;
              if (v261 < 0)
              {
                v261 = -v261;
              }

              v262 = v259 + v260;
              if (v260 < v261)
              {
                v263 = v261;
              }

              else
              {
                v262 = v259 + v261;
                v263 = v260;
              }

              v264 = v259 >= v260 && v259 >= v261;
              if (v264)
              {
                v265 = v260 + v261;
              }

              else
              {
                v265 = v262;
              }

              if (v264)
              {
                v266 = v259;
              }

              else
              {
                v266 = v263;
              }

              v267 = v266 + (v265 >> 2);
              if (v258 < 0)
              {
                LODWORD(v236) = -16 * v258 / (v267 - v258) + 16;
              }

              else
              {
                LODWORD(v236) = (16 * v267) / (v267 + v258);
              }

              goto LABEL_295;
            }
          }

          else
          {
            v236 = v248 * v252 + v247 * v251 + v250 * v253;
            if (v236)
            {
              v268 = v250 * v252 - v248 * v253;
              if (v268 < 0)
              {
                v268 = v248 * v253 - v250 * v252;
              }

              v269 = v247 * v253 - v250 * v251;
              if (v269 < 0)
              {
                v269 = v250 * v251 - v247 * v253;
              }

              v270 = v248 * v251 - v247 * v252;
              if (v270 < 0)
              {
                v270 = -v270;
              }

              v271 = v268 + v269;
              if (v269 < v270)
              {
                v272 = v270;
              }

              else
              {
                v271 = v268 + v270;
                v272 = v269;
              }

              v273 = v268 >= v269 && v268 >= v270;
              if (v273)
              {
                v274 = v269 + v270;
              }

              else
              {
                v274 = v271;
              }

              if (!v273)
              {
                v268 = v272;
              }

              v275 = v268 + (v274 >> 2);
              if (v236 < 0)
              {
                LODWORD(v236) = -16 * v236 / (v275 - v236) + 16;
              }

              else
              {
                v236 = 16 * v275 / (v275 + v236);
              }

              goto LABEL_295;
            }
          }

          LODWORD(v236) = 16;
LABEL_295:
          v235 = (v249 + 12 * v204);
          goto LABEL_296;
        }
      }

      LODWORD(v234) = 16;
      goto LABEL_236;
    }
  }

  else if (v181 >= 1)
  {
    v283 = 0;
    LODWORD(v284) = 0;
    v285 = -1;
    do
    {
      v286 = *(a1 + 8);
      if (*(v286 + 4 * v283) == -1)
      {
        v287 = a1[70];
        *(v286 + 4 * v283) = v287;
        a1[70] = v287 + 1;
        *(*(a1 + 11) + 4 * v287) = v283;
        v288 = *(a15 + 21) ? -1 : v285;
        *(*(a1 + 17) + 12 * v283) = v288;
        sub_25010656C(a1, v283, a15);
        if (v284 < a1[70])
        {
          v284 = v284;
          do
          {
            v285 = *(*(a1 + 11) + 4 * v284);
            sub_250105F68(a1, v285);
            v289 = (*(a1 + 58) - *(a1 + 57)) >> 2;
            v290 = *(*(a1 + 66) + 16 * v285);
            v291 = *(*(a1 + 66) + 16 * v285 + 4);
            v292 = v290 != -1;
            v293 = v291 == v290 && v290 != -1;
            v294 = (v292 | (2 * (v291 != -1))) + v293;
            sub_250100B10(v180, v289 > 1, v399 + v294);
            if (v289 >= 2)
            {
              v295 = 1;
              do
              {
                LODWORD(__b.__locale_) = 0;
                v296 = sub_250107098(a1, v285, v295 - 1, v294, &__b, a15);
                sub_250107A78(a1, __b.__locale_, v296, a15);
                v297 = *(*(a1 + 66) + 16 * v285);
                v298 = *(*(a1 + 66) + 16 * v285 + 4);
                v299 = v297 != -1;
                v300 = v298 == v297 && v297 != -1;
                v294 = (v299 | (2 * (v298 != -1))) + v300;
                sub_250100B10(v402, v295++ < v289 - 1, a1 + 1193);
              }

              while (v289 != v295);
            }

            ++v284;
            v180 = (a1 + 890);
          }

          while (v284 < a1[70]);
          v181 = v395;
        }
      }

      ++v283;
    }

    while (v283 != v181);
  }

LABEL_330:
  v301 = sub_250105B4C(v180);
  if (v394 >= 4)
  {
    *v393 = v301;
  }

  if (v393 == -4)
  {
    v302 = v301;
  }

  else
  {
    v302 = v393 + v301 + 4;
  }

  v33 = *v180;
  if (v33)
  {
    goto LABEL_59;
  }

  v303 = v392 - v301;
  if (*(a15 + 16) != 1)
  {
LABEL_424:
    v33 = 1;
    if (v302 && (v303 & 0x8000000000000000) == 0)
    {
      v356 = (a10 & ~(a10 >> 63)) - v303;
      v357 = a10 - v356 < 0;
      if (a10 - v356 >= 0)
      {
        v358 = (a10 & ~(a10 >> 63)) - v303;
      }

      else
      {
        v358 = 0;
      }

      v359 = a9;
      if (v357)
      {
        v359 = 0;
      }

      v360 = v358 & ~(v358 >> 63);
      *a11 = v360;
      if (v358 >= 16)
      {
        *(v359 + 12) = v360;
      }

      v361 = 8;
      if (v358 > 8)
      {
        v361 = v358;
      }

      v362 = v361 - 8;
      if (v361 == 8)
      {
        v364 = -1;
      }

      else
      {
        v363 = (v359 + 8);
        v364 = -1;
        do
        {
          v365 = *v363++;
          v364 = dword_250110020[v365 ^ HIBYTE(v364)] ^ (v364 << 8);
          --v362;
        }

        while (v362);
      }

      if (v358 >= 8)
      {
        *(v359 + 4) = v364;
      }

      if (a12)
      {
        v366 = *a1;
        if (v366 >= 1)
        {
          v367 = 0;
          v368 = 0;
          v369 = *(a1 + 6);
          v370 = a1[8];
          v371 = 12 * v366;
          do
          {
            v372 = (*(a1 + 23) + v368);
            v373 = v372[1].i32[0] + v370;
            v374 = (a12 + 12 * *(*(a1 + 8) + v367));
            *v374 = vadd_s32(*v372, v369);
            v374[1].i32[0] = v373;
            v368 += 12;
            v367 += 4;
          }

          while (v371 != v368);
        }
      }

      if (a13)
      {
        v375 = a1[1];
        if (v375 >= 1)
        {
          v376 = *(a1 + 5);
          v377 = (*(a1 + 29) + 4);
          do
          {
            v378 = *v376++;
            *(a13 + 4 * v378) = *v377 - *(v377 - 1);
            ++v377;
            --v375;
          }

          while (v375);
        }
      }

      if (a14 && (v379 = a1[1], v379 >= 1))
      {
        v380 = 0;
        v381 = 0;
        v382 = *(a1 + 14);
        v383 = *(a1 + 29);
        do
        {
          v384 = *(v382 + 4 * v380);
          v385 = *(v383 + 4 * v384);
          v386 = *(v383 + 4 + 4 * v384);
          if (v385 < v386)
          {
            v387 = *(a1 + 8);
            v388 = (a14 + 4 * v381);
            v389 = v386 - v385;
            v390 = (*(a1 + 26) + 4 * v385);
            v381 = v381 + v386 - v385;
            do
            {
              v391 = *v390++;
              *v388++ = *(v387 + 4 * v391);
              --v389;
            }

            while (v389);
          }

          v33 = 0;
          ++v380;
        }

        while (v380 != v379);
      }

      else
      {
        v33 = 0;
      }
    }

    goto LABEL_59;
  }

  v304 = a1[1];
  v401 = v392 - v301;
  v398 = v303 - 4;
  a1[891] = (v303 - 4) & ~((v303 - 4) >> 63);
  *(a1 + 446) = v302 + 4;
  sub_2500F0AB8(v402);
  if (!*(a15 + 8))
  {
    LOWORD(v417) = 0x8000;
    v416 = 0x8000;
    memset_pattern16(&__b, &unk_250110610, 0x80uLL);
    v415 = 0x8000;
    v317 = (a1 + 890);
    if (v304 < 1)
    {
      goto LABEL_368;
    }

    v318 = 0;
    v319 = 0;
    while (1)
    {
      v320 = v319;
      v319 = v396[*(*(a1 + 14) + v318)];
      v321 = &v417;
      v322 = v317;
      v323 = v319 - v320;
      if (v319 == v320)
      {
        v324 = 0;
      }

      else
      {
        sub_250100B10(v317, 1, &v417);
        if ((v323 & 0x80000000) != 0)
        {
          sub_250100B10(v317, 0, &v416);
          v323 = -v323;
        }

        else
        {
          sub_250100B10(v317, 1, &v416);
        }

        if (v323 > 0x3F)
        {
          sub_250100B10(v317, 1, &__b);
          sub_250100B10(v317, 1, &__b.__locale_ + 2);
          sub_250100B10(v317, 1, v419 + 2);
          sub_250100B10(v317, 1, v420);
          sub_250100B10(v317, 1, v421);
          sub_250100B10(v317, 1, v422);
          sub_25010FAC4(v317, v323 - 64, 6, &v415);
          goto LABEL_367;
        }

        v325 = v323 - 1;
        sub_250100B10(v402, (v323 - 1) & 1, &__b);
        sub_250100B10(v402, (v325 >> 1) & 1, &__b.__locale_ + (v325 & 1) + 1);
        sub_250100B10(v402, (v325 >> 2) & 1, &__b.__locale_ + (v325 & 3) + 3);
        sub_250100B10(v402, (v325 >> 3) & 1, &__b + (v325 & 7) + 7);
        sub_250100B10(v402, (v325 >> 4) & 1, &__b + (v325 & 0xF) + 15);
        v324 = ((v323 - 1) >> 5) & 1;
        v317 = (a1 + 890);
        v321 = (&__b + 2 * ((v323 - 1) & 0x1F) + 62);
        v322 = (a1 + 890);
      }

      sub_250100B10(v322, v324, v321);
LABEL_367:
      v318 += 4;
      if (4 * v304 == v318)
      {
        goto LABEL_368;
      }
    }
  }

  LOWORD(v417) = 0x8000;
  v416 = 0x8000;
  memset_pattern16(&__b, &unk_250110610, 0x80uLL);
  v415 = 0x8000;
  v305 = (a1 + 890);
  if (v304 >= 1)
  {
    v306 = 0;
    v307 = 0;
    v308 = 4 * v304;
    v309 = 6;
    do
    {
      v310 = v307;
      v307 = v396[*(*(a1 + 14) + v306)];
      v311 = &v417;
      v312 = v305;
      v313 = v307 - v310;
      if (v307 == v310)
      {
        v314 = 0;
      }

      else
      {
        sub_250100B10(v305, 1, &v417);
        if ((v313 & 0x80000000) != 0)
        {
          sub_250100B10(v305, 0, &v416);
          v313 = -v313;
        }

        else
        {
          sub_250100B10(v305, 1, &v416);
        }

        v315 = v313 - 1;
        if (v313 > 0x3F)
        {
          sub_250100B10(v305, 1, &__b);
          sub_250100B10(v305, 1, &__b.__locale_ + 2);
          sub_250100B10(v305, 1, v419 + 2);
          sub_250100B10(v305, 1, v420);
          sub_250100B10(v305, 1, v421);
          sub_250100B10(v305, 1, v422);
          sub_25010FAC4(v305, v313 - 64, v309, &v415);
          v316 = v315 >> v309;
          if (!v309 || v316)
          {
            if (v316 > 1)
            {
              ++v309;
            }
          }

          else
          {
            --v309;
          }

          goto LABEL_348;
        }

        sub_250100B10(v402, (v315 >> 5) & 1, &__b);
        sub_250100B10(v402, (v315 >> 4) & 1, &__b.__locale_ + (v315 >> 5) + 1);
        sub_250100B10(v402, (v315 >> 3) & 1, &__b.__locale_ + (v315 >> 4) + 3);
        sub_250100B10(v402, (v315 >> 2) & 1, &__b + (v315 >> 3) + 7);
        sub_250100B10(v402, (v315 >> 1) & 1, &__b + (v315 >> 2) + 15);
        v305 = (a1 + 890);
        v311 = (&__b + 2 * (v315 >> 1) + 62);
        v314 = v315 & 1;
        v312 = (a1 + 890);
      }

      sub_250100B10(v312, v314, v311);
LABEL_348:
      v306 += 4;
    }

    while (v308 != v306);
  }

LABEL_368:
  v326 = sub_250105B4C(v402);
  v327 = v326;
  if (v401 >= 4)
  {
    *v302 = v326;
  }

  if (v302 == -4)
  {
    v302 = v326;
  }

  else
  {
    v302 += 4 + v326;
  }

  v33 = *v402;
  if (!v33)
  {
    v33 = 5;
    if (v396)
    {
      v328 = a1[1];
      if (v328 >= 1)
      {
        v329 = v396;
        v330 = v396;
        if (v328 != 1)
        {
          v329 = v396 + 1;
          v331 = v396[1];
          v332 = *v396;
          if (v331 >= *v396)
          {
            v330 = v396;
          }

          else
          {
            v330 = v396 + 1;
          }

          if (v331 < v332)
          {
            v329 = v396;
          }

          if (v328 != 2)
          {
            v333 = v396 + 2;
            if (v331 <= v332)
            {
              v334 = *v396;
            }

            else
            {
              v334 = v396[1];
            }

            if (v331 < v332)
            {
              v332 = v396[1];
            }

            v335 = 4 * v328 - 12;
            while (v335)
            {
              v337 = *v333;
              v336 = v333[1];
              if (v336 >= *v333)
              {
                if (v337 < v332)
                {
                  v332 = *v333;
                  v330 = v333;
                }

                v338 = v336 < v334;
                if (v336 > v334)
                {
                  v334 = v333[1];
                }

                if (!v338)
                {
                  v329 = v333 + 1;
                }
              }

              else
              {
                v332 = *v330;
                if (v336 < *v330)
                {
                  v332 = v333[1];
                  v330 = v333 + 1;
                }

                v334 = *v329;
                if (v337 > *v329)
                {
                  v334 = *v333;
                }

                if (v337 >= *v329)
                {
                  v329 = v333;
                }
              }

              v333 += 2;
              v335 -= 8;
              if (v335 == -4)
              {
                goto LABEL_409;
              }
            }

            v339 = *v333;
            if (*v333 < *v330)
            {
              goto LABEL_410;
            }

            if (v339 >= *v329)
            {
              v329 = v333;
            }
          }
        }

LABEL_409:
        v339 = *v330;
LABEL_410:
        if (v339 < 0 || (v340 = *v329 - v339, v340 > v328))
        {
          v33 = 5;
          goto LABEL_59;
        }

        v417 = 0;
        sub_2500FC9FC(&__b, v340 + 2, &v417);
        v341 = v396;
        v303 = v398 - v327;
        locale = __b.__locale_;
        v343 = v328;
        do
        {
          v344 = *v341++;
          ++*(locale + v344 - v339 + 1);
          --v343;
        }

        while (v343);
        if ((v340 & 0x80000000) == 0)
        {
          v345 = (locale + 4);
          v346 = *locale;
          v347 = (v340 + 2) - 1;
          do
          {
            v346 += *v345;
            *v345++ = v346;
            --v347;
          }

          while (v347);
        }

        v348 = *(a1 + 14);
        v349 = *(a1 + 5);
        v350 = v348;
        v351 = v328;
        do
        {
          v352 = *v350++;
          v353 = v396[v352] - v339;
          v354 = *(locale + v353);
          *(locale + v353) = v354 + 1;
          *(v349 + 4 * v352) = v354;
          --v351;
        }

        while (v351);
        for (n = 0; n != v328; ++n)
        {
          v348[*(v349 + 4 * n)] = n;
        }

        if (locale)
        {
          v419[0] = locale;
          operator delete(locale);
        }

        goto LABEL_424;
      }
    }
  }

LABEL_59:
  v403[0] = *MEMORY[0x277D82818];
  v66 = *(MEMORY[0x277D82818] + 72);
  *(v403 + *(v403[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v404 = v66;
  v405 = MEMORY[0x277D82878] + 16;
  if (v407 < 0)
  {
    operator delete(v406[7].__locale_);
  }

  v405 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v406);
  std::iostream::~basic_iostream();
  MEMORY[0x25305EC00](&v408);
  v67 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_2500FFC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_2500EA830(&a26, MEMORY[0x277D82818]);
  MEMORY[0x25305EC00](&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_2500FFCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x28223BE20]();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_25010EB54(v36);
  __p = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, a9, v36, &__p, &v32);
  if (!v23)
  {
    v31 = *(a9 + 16);
    v30 = *a9;
    v28 = *a9;
    v29 = *(a9 + 16);
    BYTE1(v31) = 0;
    BYTE3(v31) = 0;
    v27 = 0;
    v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, &v30, v36, &__p, &v27);
    if (!v23)
    {
      BYTE1(v29) = 1;
      BYTE3(v29) = 0;
      v26 = 0;
      v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, &v28, v36, &__p, &v26);
      if (!v23 && (v32 > v27 || v32 > v26))
      {
        v24 = &v30;
        if (v27 > v26)
        {
          v24 = &v28;
        }

        *a9 = *v24;
        *(a9 + 14) = *(v24 + 14);
      }
    }
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  sub_25010F040(v36);
  return v23;
}

void sub_2500FFED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_25010F040(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_2500FFF04(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int *a7, uint64_t *a8, uint64_t *a9)
{
  if (*(a6 + 16))
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + 4 * a4 * a5 + 1024;
  v18 = *a8;
  v19 = a8[1] - *a8;
  if (v17 <= v19)
  {
    if (v17 < v19)
    {
      a8[1] = v18 + v17;
    }
  }

  else
  {
    sub_2500FD2AC(a8, v17 - v19);
    v18 = *a8;
  }

  *a9 = 0;
  return sub_2500FFFD4(a7, a1, a2, a3, 0, a5, v18, v17, a9, a6);
}

uint64_t sub_2500FFFD4(unsigned int *a1, uint64_t a2, _BYTE *a3, unsigned int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  result = 5;
  if (a5 <= 0xFF)
  {
    if (a2)
    {
      if (a6 - 256 >= 0xFFFFFFFFFFFFFF01 && (*(a10 + 8) | 2) != 3 && !*(a10 + 20))
      {
        v16 = a5;
        if (a3 || !*(a10 + 16))
        {
          v19 = *(a10 + 4);
          if (v19 <= 0x1B)
          {
            if ((*(a10 + 12) - 5) > 1)
            {
              if (!a7)
              {
                return result;
              }
            }

            else if (!a7 || a6 != 2 || !v19)
            {
              return result;
            }

            if (a8 < 0x21)
            {
              return 1;
            }

            v64 = *(a10 + 12) - 5;
            v20 = *a1;
            v62 = v20;
            v21 = a1 + 750;
            a1[780] = a6;
            v65 = v20;
            a1[781] = v20;
            a1[782] = a4;
            v63 = (a1 + 756);
            sub_2500F247C(a1 + 378, a6);
            sub_2500F247C(a1 + 381, a6);
            sub_2500F247C(a1 + 375, a6);
            v22 = 0;
            v23 = *(a1 + 378);
            v24 = *(a1 + 381);
            do
            {
              v25 = *(a2 + 4 * v22);
              v23[v22] = v25;
              v24[v22++] = v25;
            }

            while (a6 != v22);
            if (v65 >= 2)
            {
              v26 = 1;
              LODWORD(v27) = a6;
              do
              {
                v27 = v27;
                v28 = v23;
                v29 = v24;
                v30 = a6;
                do
                {
                  v31 = *(a2 + 4 * v27);
                  if (v31 >= *v28)
                  {
                    v31 = *v28;
                  }

                  *v28++ = v31;
                  v32 = *v29;
                  if (*v29 <= *(a2 + 4 * v27))
                  {
                    v32 = *(a2 + 4 * v27);
                  }

                  *v29++ = v32;
                  ++v27;
                  --v30;
                }

                while (v30);
                ++v26;
              }

              while (v26 != v65);
            }

            v33 = 0;
            result = 5;
            do
            {
              v34 = v24[v33];
              v35 = v23[v33];
              if (v34 - v35 > 0xFFFFFFF)
              {
                return 5;
              }

              v36 = *(a10 + 4);
              if (v36 && ((v35 & 0x80000000) != 0 || v34 >= 1 << v36))
              {
                return result;
              }

              if (v64 > 1)
              {
                *(*v21 + 4 * v33) = v34 - v35;
              }

              else
              {
                *(*v21 + 4 * v33) = v34;
                v23[v33] = 0;
              }

              ++v33;
            }

            while (a6 != v33);
            v72 = a7;
            v73 = a8;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0;
            HIDWORD(v66) = v65;
            LODWORD(v67) = a6;
            *(&v67 + 1) = __PAIR64__(*(a10 + 4), v16);
            v38 = *(a10 + 12);
            v37 = *(a10 + 16);
            LODWORD(v68) = a4;
            DWORD2(v68) = v37;
            v70 = *(a10 + 8);
            v71 = v38;
            v39 = sub_250100950(a7, a8, &v66);
            v41 = 0;
            do
            {
              v42 = v40 < 4;
              v40 -= 4;
              if (v42)
              {
                v40 = 0;
                v39 = 0;
              }

              else
              {
                *v39++ = (*v63)[v41];
              }

              *(*v21 + 4 * v41) = 32 - __clz(*(*v21 + 4 * v41));
              ++v41;
            }

            while (a6 != v41);
            v43 = 0;
            do
            {
              if (v40)
              {
                --v40;
                *v39 = *(*v21 + 4 * v43);
                v39 = (v39 + 1);
              }

              else
              {
                v39 = 0;
              }

              ++v43;
            }

            while (a6 != v43);
            v72 = v39;
            v73 = v40;
            sub_2500F247C(a1 + 384, v62 * a6);
            if (v65 >= 1)
            {
              v44 = 0;
              LODWORD(v45) = 0;
              v46 = *v63;
              v47 = *(a1 + 384);
              do
              {
                v45 = v45;
                v48 = v46;
                v49 = a6;
                do
                {
                  v50 = *v48++;
                  *(v47 + 4 * v45) = *(a2 + 4 * v45) - v50;
                  ++v45;
                  --v49;
                }

                while (v49);
                ++v44;
              }

              while (v44 != v65);
            }

            v51 = (a1 + 774);
            if (a3 && *(a10 + 16))
            {
              sub_2500FDBC4(a1 + 387, v62);
              if (v65 >= 1)
              {
                for (i = 0; i != v65; ++i)
                {
                  *(*v51 + i) = a3[i];
                }
              }

              if (v65)
              {
                memmove(*v51, a3, v62);
              }
            }

            else
            {
              sub_2500FDBC4(a1 + 387, 0);
            }

            result = sub_250100A68(a1, a10, &v72);
            if (!result)
            {
              result = 1;
              if (v72)
              {
                if ((v73 & 0x8000000000000000) == 0)
                {
                  v53 = (a8 & ~(a8 >> 63)) - v73;
                  if (a8 - v53 >= 0)
                  {
                    v54 = (a8 & ~(a8 >> 63)) - v73;
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (a8 - v53 >= 0)
                  {
                    v55 = a7;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = v54 & ~(v54 >> 63);
                  *a9 = v56;
                  if (v54 >= 16)
                  {
                    *(v55 + 12) = v56;
                    v58 = v54 - 8;
                  }

                  else
                  {
                    v57 = v54 == 8;
                    v42 = v54 < 8;
                    v58 = v54 - 8;
                    if (v42)
                    {
                      return 0;
                    }

                    if (v57)
                    {
                      v60 = -1;
LABEL_79:
                      result = 0;
                      *(v55 + 4) = v60;
                      return result;
                    }
                  }

                  v59 = (v55 + 8);
                  v60 = -1;
                  do
                  {
                    v61 = *v59++;
                    v60 = dword_250110020[v61 ^ HIBYTE(v60)] ^ (v60 << 8);
                    --v58;
                  }

                  while (v58);
                  goto LABEL_79;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25010044C()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  sub_25010EB54(&v31);
  v31 = *v13;
  v32 = *(v13 + 8);
  v33 = *(v13 + 12);
  v34 = *(v13 + 20);
  v35 = *(v13 + 24);
  v14 = *(v13 + 36);
  v36 = *(v13 + 32);
  v37 = v14;
  if (&v31 != v13)
  {
    sub_25010F220(v38, *(v13 + 40), *(v13 + 48), (*(v13 + 48) - *(v13 + 40)) >> 2);
    sub_25010F220(v39, *(v13 + 64), *(v13 + 72), (*(v13 + 72) - *(v13 + 64)) >> 2);
    sub_25010F220(v40, *(v13 + 88), *(v13 + 96), (*(v13 + 96) - *(v13 + 88)) >> 2);
    sub_25010F220(v41, *(v13 + 112), *(v13 + 120), (*(v13 + 120) - *(v13 + 112)) >> 2);
    sub_25010F34C(&v42, *(v13 + 136), *(v13 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 144) - *(v13 + 136)) >> 2));
    sub_25010F34C(&v43, *(v13 + 160), *(v13 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 168) - *(v13 + 160)) >> 2));
    sub_25010F34C(&v44, *(v13 + 184), *(v13 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 192) - *(v13 + 184)) >> 2));
    sub_25010F220(v45, *(v13 + 208), *(v13 + 216), (*(v13 + 216) - *(v13 + 208)) >> 2);
    sub_25010F220(v46, *(v13 + 232), *(v13 + 240), (*(v13 + 240) - *(v13 + 232)) >> 2);
    sub_25010F220(v47, *(v13 + 256), *(v13 + 264), (*(v13 + 264) - *(v13 + 256)) >> 2);
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v15 = sub_2500FFF04(v12, v10, v8, v6, v4, v2, &v31, &__p, &v27);
  if (!v15)
  {
    *v26 = *v2;
    *&v26[12] = *(v2 + 12);
    if (v8 == 1 && v4 == 2)
    {
      v16 = *(v2 + 12) == 4;
      v17 = 3;
    }

    else
    {
      v18 = *(v2 + 12);
      if (v8 == 2 && v4 == 2)
      {
        v16 = v18 == 6;
        v17 = 5;
      }

      else
      {
        v16 = v18 == 2;
        v17 = 1;
      }
    }

    v19 = v16 ? v17 : v17 + 1;
    *&v26[12] = v19;
    v25 = 0;
    v15 = sub_2500FFF04(v12, v10, v8, v6, v4, v26, &v31, &__p, &v25);
    if (!v15)
    {
      v20 = v27;
      v21 = v25;
      if (v27 <= v25)
      {
        v19 = *(v2 + 12);
      }

      else
      {
        *(v2 + 12) = v19;
        v20 = v21;
      }

      v22 = v26[8] == 4 ? 2 : 4;
      v26[8] = v22;
      *&v26[12] = v19;
      v24 = 0;
      v15 = sub_2500FFF04(v12, v10, v8, v6, v4, v26, &v31, &__p, &v24);
      if (!v15 && v20 > v24)
      {
        *(v2 + 8) = v22;
      }
    }
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_25010F040(&v31);
  return v15;
}

void sub_25010077C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_25010F040(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_2501007B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10)
{
  if (!a4 && 3 * a5 != a7)
  {
    return 5;
  }

  v15 = v10;
  v16 = v11;
  *&v14[16] = *(a10 + 16);
  *v14 = *a10;
  v14[16] = a8 != 0;
  v14[21] = 1;
  v14[8] = 4;
  v13 = *a9;
  if (*a9 - 3 < 4)
  {
    *&v14[12] = 1;
    *&v14[17] = 1;
    goto LABEL_8;
  }

  if (v13 < 3)
  {
    *&v14[12] = 1;
    *&v14[17] = 0;
LABEL_8:
    result = 0;
    *a10 = *v14;
    *(a10 + 14) = *&v14[14];
    return result;
  }

  if (v13 != 10)
  {
    *&v14[12] = 2;
    *&v14[17] = 16843009;
    goto LABEL_8;
  }

  result = sub_2500FFCF4(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  if (!result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_250100894(int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v7 = *a1;
  *(a7 + 16) = a3 != 0;
  if (a4 == 1 && v7 <= 79)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  *(a7 + 8) = v8;
  v9 = *a6;
  if (*a6 - 3 < 4)
  {
    v10 = 0;
    if (a4 == 1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_11;
  }

  if (v9 < 3)
  {
    v10 = 0;
    v11 = 1;
LABEL_11:
    *(a7 + 12) = v11;
    *(a7 + 24) = v10;
    return 0;
  }

  if (v9 != 10)
  {
    if (a4 == 1)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    v10 = 1;
    goto LABEL_11;
  }

  result = sub_25010044C();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_250100950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *a1 = -290009985;
  if (a2 < 9)
  {
    return 0;
  }

  *(a1 + 8) = 0;
  if (a2 == 9)
  {
    return 0;
  }

  *(a1 + 9) = 8;
  if (((a2 - 8) & 0x7FFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  *(a1 + 10) = 0;
  if (a2 < 0x14)
  {
    return 0;
  }

  *(a1 + 16) = *(a3 + 12);
  if (a2 == 20)
  {
    return 0;
  }

  *(a1 + 20) = *(a3 + 32);
  if (a2 == 21)
  {
    return 0;
  }

  *(a1 + 21) = *(a3 + 24);
  if (a2 == 22)
  {
    return 0;
  }

  *(a1 + 22) = *(a3 + 16);
  if (a2 == 23)
  {
    return 0;
  }

  *(a1 + 23) = *(a3 + 52);
  if (a2 == 24)
  {
    return 0;
  }

  *(a1 + 24) = *(a3 + 56);
  v3 = a2 - 25;
  if (a2 == 25)
  {
    return v3;
  }

  v4 = *(a3 + 44);
  v5 = *(a3 + 36) | (16 * v4);
  *(a1 + 25) = *(a3 + 36) | (16 * v4);
  if (a2 == 26)
  {
    return 0;
  }

  *(a1 + 26) = *(a3 + 40);
  if (a2 == 27)
  {
    return 0;
  }

  *(a1 + 27) = *(a3 + 28);
  if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 0x1C)
  {
    return 0;
  }

  v3 = a1 + 32;
  *(a1 + 28) = *(a3 + 20);
  return v3;
}

uint64_t sub_250100A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a3 + 4;
  *a3 = v8;
  *(a3 + 8) = v7 - 4;
  v9 = (a1 + 3560);
  *(a1 + 3564) = (v7 - 4) & ~((v7 - 4) >> 63);
  *(a1 + 3568) = v8;
  sub_2500F0AB8(a1 + 3560);
  result = sub_250101180(a1, a2);
  if (!result)
  {
    v11 = sub_250105B4C(v9);
    if (v7 >= 4)
    {
      *v6 = v11;
    }

    v12 = v11;
    if (*a3)
    {
      v12 = *a3 + v11;
    }

    v13 = *(a3 + 8) - v11;
    *a3 = v12;
    *(a3 + 8) = v13;
    return *v9;
  }

  return result;
}

uint64_t sub_250100B10(uint64_t result, int a2, _WORD *a3)
{
  v3 = *a3;
  v4 = *(result + 28);
  v5 = (v4 * v3) >> 16;
  if (a2)
  {
    *(result + 24) += v5;
    v5 = v4 - v5;
    v6 = v3 - *(result + ((v3 >> 7) & 0x1FE) + 48);
  }

  else
  {
    v6 = *(result + (~(*a3 >> 7) & 0x1FE) + 48) + *a3;
  }

  *(result + 28) = v5;
  *a3 = v6;
  if (v5 <= 0x4000)
  {
    v7 = *(result + 24);
    v8 = *(result + 40);
    while (1)
    {
      v7 *= 2;
      v5 *= 2;
      *(result + 24) = v7;
      *(result + 28) = v5;
      *(result + 40) = ++v8;
      if (v8 == 8)
      {
        break;
      }

LABEL_18:
      if (v5 > 0x4000)
      {
        return result;
      }
    }

    v9 = *(result + 16);
    v10 = *(result + 44);
    if (v9 + v10 + 1 > *(result + 4))
    {
      return result;
    }

    if (HIBYTE(v7))
    {
      ++*(*(result + 8) + v9 - 1);
      v9 = *(result + 16);
      if (*(result + 44))
      {
        do
        {
          *(*(result + 8) + v9) = 0;
          v11 = *(result + 44);
          v9 = *(result + 16) + 1;
          *(result + 16) = v9;
          *(result + 44) = --v11;
        }

        while (v11);
      }
    }

    else
    {
      if ((v5 + v7) >> 24)
      {
        *(result + 44) = v10 + 1;
LABEL_17:
        v8 = 0;
        v7 = v7;
        *(result + 24) = v7;
        *(result + 40) = 0;
        goto LABEL_18;
      }

      if (v10)
      {
        do
        {
          *(*(result + 8) + v9) = -1;
          v12 = *(result + 44);
          v9 = *(result + 16) + 1;
          *(result + 16) = v9;
          *(result + 44) = --v12;
        }

        while (v12);
      }
    }

    *(*(result + 8) + v9) = *(result + 26);
    ++*(result + 16);
    LOWORD(v7) = *(result + 24);
    v5 = *(result + 28);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_250100C84(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5, unsigned __int8 a6, void *a7)
{
  v8 = a3;
  v10 = result;
  if (a6 > 2u)
  {
    if (a6 == 3)
    {
      if (a4 >= 1)
      {
        v53 = 0;
        v54 = a4;
        do
        {
          v55 = *(*a5 + 4 * v53);
          if (v55 >= 1)
          {
            v56 = 0;
            v57 = *(a2 + 4 * v53) - *(v8 + 4 * v53);
            do
            {
              v60 = 0x8000;
              result = sub_250100B10(v10 + 3560, (v57 >> v56++) & 1, &v60);
            }

            while (v55 != v56);
          }

          ++v53;
        }

        while (v53 != v54);
      }

      return result;
    }

    if (a6 != 4 || a4 < 1)
    {
      return result;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v58 = a4 << 6;
    while (1)
    {
      v24 = *(a2 + v21);
      v25 = *(v8 + v21);
      v26 = v10 + 3560;
      v27 = (*a7 + v22);
      v28 = v24 - v25;
      if (v24 == v25)
      {
        result = sub_250100B10(v26, 0, v27);
      }

      else
      {
        sub_250100B10(v26, 1, v27);
        v29 = v10 + 3560;
        v30 = (a7[3] + v22);
        if ((v28 & 0x80000000) != 0)
        {
          sub_250100B10(v29, 0, v30);
          v28 = -v28;
        }

        else
        {
          sub_250100B10(v29, 1, v30);
        }

        v31 = v28 - 1;
        v32 = a7[6];
        v33 = (v32 + 2 * v23);
        if (v28 > 0x3F)
        {
          sub_250100B10(v10 + 3560, 1, (v32 + 2 * v23));
          sub_250100B10(v10 + 3560, 1, v33 + 2);
          sub_250100B10(v10 + 3560, 1, v33 + 6);
          sub_250100B10(v10 + 3560, 1, v33 + 14);
          sub_250100B10(v10 + 3560, 1, v33 + 30);
          sub_250100B10(v10 + 3560, 1, v33 + 62);
          v34 = a7[12];
          result = sub_25010FAC4(v10 + 3560, v28 - 64, *(v34 + v21), (a7[9] + v22));
          v35 = *(v34 + v21);
          v36 = v31 >> v35;
          if (!v35 || v36)
          {
            v8 = a3;
            if (v36 >= 2)
            {
              *(v34 + v21) = v35 + 1;
            }

            goto LABEL_34;
          }

          *(v34 + v21) = v35 - 1;
        }

        else
        {
          sub_250100B10(v10 + 3560, (v31 >> 5) & 1, (v32 + 2 * v23));
          sub_250100B10(v10 + 3560, (v31 >> 4) & 1, &v33[(v31 >> 5) + 1]);
          sub_250100B10(v10 + 3560, (v31 >> 3) & 1, &v33[(v31 >> 4) + 3]);
          sub_250100B10(v10 + 3560, (v31 >> 2) & 1, &v33[(v31 >> 3) + 7]);
          sub_250100B10(v10 + 3560, (v31 >> 1) & 1, &v33[(v31 >> 2) + 15]);
          result = sub_250100B10(v10 + 3560, v31 & 1, (v33 + (v31 & 0xFFFFFFFE) + 62));
        }

        v8 = a3;
      }

LABEL_34:
      v23 += 64;
      v22 += 2;
      v21 += 4;
      if (v58 == v23)
      {
        return result;
      }
    }
  }

  if (!a6)
  {
    if (a4 < 1)
    {
      return result;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = a4 << 6;
    while (1)
    {
      v41 = *(a2 + v37);
      v42 = *(v8 + v37);
      v43 = v10 + 3560;
      v44 = (*a7 + v38);
      v45 = v41 - v42;
      if (v41 == v42)
      {
        v48 = 0;
      }

      else
      {
        sub_250100B10(v43, 1, v44);
        v46 = v10 + 3560;
        v47 = (a7[3] + v38);
        if ((v45 & 0x80000000) != 0)
        {
          sub_250100B10(v46, 0, v47);
          v45 = -v45;
        }

        else
        {
          sub_250100B10(v46, 1, v47);
        }

        v49 = a7[6];
        v50 = (v49 + 2 * v39);
        if (v45 > 0x3F)
        {
          sub_250100B10(v10 + 3560, 1, (v49 + 2 * v39));
          sub_250100B10(v10 + 3560, 1, v50 + 2);
          sub_250100B10(v10 + 3560, 1, v50 + 6);
          sub_250100B10(v10 + 3560, 1, v50 + 14);
          sub_250100B10(v10 + 3560, 1, v50 + 30);
          sub_250100B10(v10 + 3560, 1, v50 + 62);
          result = sub_25010FAC4(v10 + 3560, v45 - 64, *(a7[12] + v37), (a7[9] + v38));
          goto LABEL_49;
        }

        v51 = v45 - 1;
        sub_250100B10(v10 + 3560, (v45 - 1) & 1, (v49 + 2 * v39));
        sub_250100B10(v10 + 3560, (v51 >> 1) & 1, &v50[(v51 & 1) + 1]);
        sub_250100B10(v10 + 3560, (v51 >> 2) & 1, &v50[(v51 & 3) + 3]);
        sub_250100B10(v10 + 3560, (v51 >> 3) & 1, &v50[(v51 & 7) + 7]);
        sub_250100B10(v10 + 3560, (v51 >> 4) & 1, &v50[(v51 & 0xF) + 15]);
        v48 = ((v45 - 1) >> 5) & 1;
        v8 = a3;
        v43 = v10 + 3560;
        v44 = &v50[((v45 - 1) & 0x1F) + 31];
      }

      result = sub_250100B10(v43, v48, v44);
LABEL_49:
      v39 += 64;
      v38 += 2;
      v37 += 4;
      if (v40 == v39)
      {
        return result;
      }
    }
  }

  if (a6 == 2 && a4 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * a4;
    while (1)
    {
      v14 = *(a2 + v12) - *(v8 + v12);
      v15 = a7[12];
      result = sub_250105EF4(v10 + 3560, v14, *(v15 + v12), (a7[3] + v11), (a7[9] + v11));
      v16 = v14 >= 0 ? v14 : -v14;
      v17 = *(v15 + v12);
      v18 = v16 >> v17;
      if (v17 && v18 == 0)
      {
        break;
      }

      if (v18 >= 2)
      {
        v20 = 1;
LABEL_16:
        *(v15 + v12) = v20 + v17;
      }

      v12 += 4;
      v11 += 2;
      if (v13 == v12)
      {
        return result;
      }
    }

    v20 = -1;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_250101180(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v1015 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) == 1)
  {
    v4 = *a1;
    memset_pattern16(&__b, &unk_250110610, 4uLL);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 4 * v4;
      do
      {
        v7 = *(*(a1 + 11) + v5);
        v8 = (*(a1 + 17) + 12 * v7);
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v12 = (*(a1 + 20) + 12 * v7);
        v13 = v12[2];
        if (v13 != -1)
        {
          v14 = *(a1 + 387);
          v15 = *(v14 + v9) + *(v14 + v10) + *(v14 + v11) + *(v14 + *v12) + *(v14 + v12[1]) + *(v14 + v13) > 2;
          goto LABEL_8;
        }

        v14 = *(a1 + 387);
        if (v11 != -1)
        {
          v15 = *(v14 + v9) + *(v14 + v10) + *(v14 + v11) > 1;
LABEL_8:
          v16 = v15;
          goto LABEL_11;
        }

        if (v9 == -1)
        {
          if (v10 == -1)
          {
LABEL_18:
            v16 = 0;
            goto LABEL_11;
          }

          v16 = *(v14 + v10);
        }

        else
        {
          if (!*(v14 + v10))
          {
            goto LABEL_18;
          }

          v16 = *(v14 + v9) != 0;
        }

LABEL_11:
        sub_250100B10((a1 + 890), *(v14 + v7) != 0, &v993[-2] + v16);
        v5 += 4;
      }

      while (v6 != v5);
    }
  }

  v17 = *(v2 + 12);
  result = 5;
  v942 = v2;
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        if (v17 != 2)
        {
          goto LABEL_1168;
        }

        v127 = 0;
        v920 = *a1;
        v128 = a1[780];
        v129 = a1[780];
        v925 = *(a1 + 384);
        v1014 = 0;
        v1012 = 0u;
        v1013 = 0u;
        v1010 = 0u;
        v1011 = 0u;
        v1008 = 0u;
        v1009 = 0u;
        v1006 = 0u;
        v1007 = 0u;
        v1004 = 0u;
        v1005 = 0u;
        v1002 = 0u;
        v1003 = 0u;
        v1000 = 0u;
        v1001 = 0u;
        *v998 = 0u;
        v999 = 0u;
        *v996 = 0u;
        v997 = 0u;
        v994 = 0u;
        *v995 = 0u;
        v944 = a1 + 750;
        __b = 0u;
        *v993 = 0u;
        do
        {
          sub_2500F3ECC(&v993[v127 - 2], v128);
          v127 += 15;
        }

        while (v127 != 45);
        memset_pattern16(&v984, &unk_250110610, 6uLL);
        LODWORD(v987) = 0;
        sub_2500FC9FC(&__p, v128, &v987);
        LODWORD(v965) = 0;
        sub_2500FC9FC(&v987, v128, &v965);
        LODWORD(v963) = 0;
        sub_2500FC9FC(&v965, v128, &v963);
        LODWORD(v961) = 0;
        sub_2500FC9FC(&v963, v128, &v961);
        LODWORD(v959) = 0;
        sub_2500FC9FC(&v961, v128, &v959);
        LODWORD(v957) = 0;
        sub_2500FC9FC(&v959, v128, &v957);
        LODWORD(v955) = 0;
        sub_2500FC9FC(&v957, v128, &v955);
        v953 = 0;
        sub_2500FC9FC(&v955, v128, &v953);
        if (v920 < 1)
        {
LABEL_1110:
          if (v955)
          {
            v956 = v955;
            operator delete(v955);
          }

          if (v957)
          {
            v958 = v957;
            operator delete(v957);
          }

          if (v959)
          {
            v960 = v959;
            operator delete(v959);
          }

          if (v961)
          {
            v962 = v961;
            operator delete(v961);
          }

          if (v963)
          {
            v964 = v963;
            operator delete(v963);
          }

          if (v965)
          {
            v966 = v965;
            operator delete(v965);
          }

          if (v987)
          {
            v988[0] = v987;
            operator delete(v987);
          }

          if (__p)
          {
            v990 = __p;
            operator delete(__p);
          }

          v794 = 360;
          do
          {
            v795 = &v993[v794 / 8 - 2];
            v796 = *(&__p + v794);
            if (v796)
            {
              *(v795 - 2) = v796;
              operator delete(v796);
            }

            v797 = *(v795 - 6);
            if (v797)
            {
              v988[v794 / 8] = v797;
              operator delete(v797);
            }

            v798 = &v993[v794 / 8 - 2];
            v799 = *(&v979 + v794);
            if (v799)
            {
              *(v798 - 8) = v799;
              operator delete(v799);
            }

            v800 = *(v798 - 12);
            if (v800)
            {
              *(&v975 + v794) = v800;
              operator delete(v800);
            }

            v801 = *(v795 - 15);
            if (v801)
            {
              *(&v969 + v794) = v801;
              operator delete(v801);
            }

            v794 -= 120;
          }

          while (v794);
          goto LABEL_1167;
        }

        v130 = 0;
        v936 = *(v2 + 16);
        v892 = 4 * v128;
        while (1)
        {
          v131 = *(*(a1 + 11) + 4 * v130);
          if (v936 && !*(*(a1 + 387) + v131))
          {
            goto LABEL_229;
          }

          v132 = (*(a1 + 17) + 12 * v131);
          v134 = *v132;
          v133 = v132[1];
          v135 = v132[2];
          v136 = __p;
          if (v135 != -1)
          {
            if (!v936)
            {
              break;
            }

            v137 = *(a1 + 387);
            if (*(v137 + v134))
            {
              if (*(v137 + v133) && *(v137 + v135))
              {
                break;
              }
            }
          }

          if (v133 != -1)
          {
            if (!v936 || (v150 = *(a1 + 387), *(v150 + v134)) && *(v150 + v133))
            {
              if (v129 >= 1)
              {
                v151 = (v925 + 4 * v134 * v128);
                v152 = (v925 + 4 * v133 * v128);
                v153 = __p;
                v154 = v128;
                do
                {
                  v156 = *v151++;
                  v155 = v156;
                  v157 = *v152++;
                  *v153++ = (v157 + v155) / 2;
                  --v154;
                }

                while (v154);
              }

              LODWORD(v148) = 0;
              v149 = &v999 + 1;
              goto LABEL_170;
            }
          }

          if (v134 == -1 || v936 && !*(*(a1 + 387) + v134))
          {
            if (v129 >= 1)
            {
              bzero(__p, v892);
            }

            LODWORD(v148) = 1;
            p_b = &__b;
            v159 = &v967;
          }

          else
          {
            if (v128 < 1)
            {
              LODWORD(v148) = 0;
            }

            else
            {
              v160 = (v925 + 4 * v134 * v128);
              v161 = __p;
              v148 = v128;
              do
              {
                v162 = *v160++;
                *v161++ = v162;
                --v148;
              }

              while (v148);
            }

            p_b = &__b;
            v159 = &__b;
          }

LABEL_183:
          v163 = v925 + 4 * v131 * v129;
          v164 = (*(a1 + 20) + 12 * v131);
          v165 = v164[2];
          if (v165 != -1)
          {
            v166 = *v164;
            v167 = v164[1];
            if (!v936 || (v168 = *(a1 + 387), *(v168 + v134)) && *(v168 + v133) && *(v168 + v135) && *(v168 + v166) && *(v168 + v167) && *(v168 + v165))
            {
              v912 = v159;
              v915 = v148;
              if (v128 < 1)
              {
                v192 = v942;
                if (*(v942 + 24) != 1)
                {
                  v185 = 0;
                  v187 = 0;
                  v189 = 0;
                  v191 = 0;
                  goto LABEL_216;
                }

                v179 = v961;
                v180 = v959;
                v181 = v957;
                v182 = v955;
              }

              else
              {
                v169 = 0;
                v170 = v925 + 4 * v134 * v129;
                v171 = v925 + 4 * v133 * v128;
                v172 = v925 + 4 * v135 * v129;
                v173 = v925 + 4 * v166 * v128;
                v174 = v925 + 4 * v167 * v129;
                v175 = v925 + 4 * v165 * v128;
                v176 = v987;
                v177 = v965;
                v178 = v963;
                v179 = v961;
                v180 = v959;
                v181 = v957;
                v182 = v955;
                do
                {
                  *&v176[v169] = *(v174 + v169) + *(v173 + v169) - *(v175 + v169);
                  *&v177[v169] = *(v174 + v169) + *(v171 + v169) - (*(v173 + v169) + *(v170 + v169)) / 2;
                  v183 = 1431655766 * ((*(v173 + v169) + *(v170 + v169)) / 2 - (*(v172 + v169) + *(v175 + v169)) + 2 * (*(v174 + v169) + *(v171 + v169)));
                  *&v178[v169] = HIDWORD(v183) + (v183 >> 63);
                  v179[v169 / 4] = *(v163 + v169) - v136[v169 / 4];
                  v180[v169 / 4] = *(v163 + v169) - *&v176[v169];
                  v181[v169 / 4] = *(v163 + v169) - *&v177[v169];
                  v182[v169 / 4] = *(v163 + v169) - *&v178[v169];
                  v169 += 4;
                }

                while (v892 != v169);
                if ((*(v942 + 24) & 1) == 0)
                {
                  v184 = *v179;
                  if (*v179 < 0)
                  {
                    v184 = -v184;
                  }

                  v185 = -(v129 * __clz(v184 + 1));
                  v186 = *v180;
                  if (*v180 < 0)
                  {
                    v186 = -v186;
                  }

                  v187 = -(v128 * __clz(v186 + 1));
                  v188 = *v181;
                  if (*v181 < 0)
                  {
                    v188 = -v188;
                  }

                  v189 = -(v129 * __clz(v188 + 1));
                  v190 = *v182;
                  if (*v182 < 0)
                  {
                    v190 = -v190;
                  }

                  v191 = -(v128 * __clz(v190 + 1));
                  v192 = v942;
LABEL_216:
                  if (v185 <= v187 && v185 <= v189 && v185 <= v191)
                  {
                    v200 = 0;
                    v201 = 0;
                    goto LABEL_220;
                  }

                  if (v187 <= v189 && v187 <= v191)
                  {
                    v200 = 0;
                    v201 = 1;
                    v136 = v987;
                    goto LABEL_226;
                  }

                  if (v189 <= v191)
                  {
                    v201 = 0;
                    v200 = 1;
                    v136 = v965;
LABEL_220:
                    v202 = &v985;
                  }

                  else
                  {
                    v200 = 1;
                    v136 = v963;
                    v201 = 1;
LABEL_226:
                    v202 = &v986;
                  }

                  sub_250100B10((a1 + 890), v201, &v984);
                  sub_250100B10((a1 + 890), v200, v202);
                  v159 = v912;
                  if (v915)
                  {
LABEL_205:
                    if (v129 >= 1)
                    {
                      v193 = 0;
                      do
                      {
                        v194 = *(*v944 + 4 * v193);
                        if (v194 >= 1)
                        {
                          v195 = 0;
                          v196 = *(v163 + 4 * v193) - v136[v193];
                          do
                          {
                            LOWORD(v953) = 0x8000;
                            sub_250100B10((a1 + 890), (v196 >> v195++) & 1, &v953);
                          }

                          while (v194 != v195);
                        }

                        ++v193;
                      }

                      while (v193 != v128);
                    }

                    goto LABEL_229;
                  }

                  goto LABEL_228;
                }
              }

              v842 = *(v942 + 8);
              v900 = v984;
              v197 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
              v873 = v197;
              v863 = v985;
              v867 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
              v847 = p_b;
              v868 = v867 + v197 + sub_25010F50C(v179, v129, v842, p_b);
              v901 = *(&unk_250110628 + (((67584 - v900) >> 10) & 0x7CLL));
              v860 = v986;
              v854 = *(&unk_250110628 + (((v986 + 2048) >> 10) & 0x7CLL));
              v855 = v854 + v901 + sub_25010F50C(v180, v128, v842, v847);
              v864 = *(&unk_250110628 + (((67584 - v863) >> 10) & 0x7CLL));
              v839 = sub_25010F50C(v181, v129, v842, v847);
              v198 = *(&unk_250110628 + (((67584 - v860) >> 10) & 0x7CLL));
              v199 = sub_25010F50C(v182, v128, v842, v847);
              v187 = v855;
              v185 = v868;
              v189 = v864 + v873 + v839;
              v192 = v942;
              v191 = v198 + v901 + v199;
              goto LABEL_216;
            }
          }

          v192 = v942;
          if (v148)
          {
            goto LABEL_205;
          }

LABEL_228:
          sub_250100C84(a1, v163, v136, v128, v944, *(v192 + 8), v159);
LABEL_229:
          if (++v130 == v920)
          {
            goto LABEL_1110;
          }
        }

        if (v129 >= 1)
        {
          v138 = (v925 + 4 * v134 * v128);
          v139 = (v925 + 4 * v133 * v128);
          v140 = (v925 + 4 * v135 * v128);
          v141 = __p;
          v142 = v128;
          do
          {
            v144 = *v138++;
            v143 = v144;
            v145 = *v139++;
            v146 = v145 + v143;
            v147 = *v140++;
            *v141++ = v146 - v147;
            --v142;
          }

          while (v142);
        }

        LODWORD(v148) = 0;
        v149 = &v1007;
LABEL_170:
        p_b = v149;
        v159 = v149;
        goto LABEL_183;
      }

      v748 = 0;
      v923 = *a1;
      v749 = a1[780];
      v750 = v749;
      v928 = *(a1 + 384);
      v1014 = 0;
      v1012 = 0u;
      v1013 = 0u;
      v1010 = 0u;
      v1011 = 0u;
      v1008 = 0u;
      v1009 = 0u;
      v1006 = 0u;
      v1007 = 0u;
      v1004 = 0u;
      v1005 = 0u;
      v1002 = 0u;
      v1003 = 0u;
      v1000 = 0u;
      v1001 = 0u;
      *v998 = 0u;
      v999 = 0u;
      *v996 = 0u;
      v997 = 0u;
      v994 = 0u;
      *v995 = 0u;
      v952 = a1 + 750;
      __b = 0u;
      *v993 = 0u;
      do
      {
        sub_2500F3ECC(&v993[v748 - 2], v749);
        v748 += 15;
      }

      while (v748 != 45);
      LODWORD(v987) = 0;
      v918 = v749;
      sub_2500FC9FC(&__p, v749, &v987);
      if (v923 < 1)
      {
LABEL_1081:
        if (__p)
        {
          v990 = __p;
          operator delete(__p);
        }

        v778 = 360;
        do
        {
          v779 = &v993[v778 / 8 - 2];
          v780 = *(&__p + v778);
          if (v780)
          {
            *(v779 - 2) = v780;
            operator delete(v780);
          }

          v781 = *(v779 - 6);
          if (v781)
          {
            v988[v778 / 8] = v781;
            operator delete(v781);
          }

          v782 = &v993[v778 / 8 - 2];
          v783 = *(&v979 + v778);
          if (v783)
          {
            *(v782 - 8) = v783;
            operator delete(v783);
          }

          v784 = *(v782 - 12);
          if (v784)
          {
            *(&v975 + v778) = v784;
            operator delete(v784);
          }

          v785 = *(v779 - 15);
          if (v785)
          {
            *(&v969 + v778) = v785;
            operator delete(v785);
          }

          v778 -= 120;
        }

        while (v778);
        goto LABEL_1167;
      }

      v751 = 0;
      v934 = *(v2 + 16);
      v752 = 4 * v749;
      while (1)
      {
        v753 = *(*(a1 + 11) + 4 * v751);
        if (v934 && !*(*(a1 + 387) + v753))
        {
          goto LABEL_1080;
        }

        v941 = v928 + 4 * v753 * v750;
        v754 = (*(a1 + 17) + 12 * v753);
        v755 = *v754;
        v756 = v754[1];
        v757 = v754[2];
        if (v757 != -1 && (!v934 || (v758 = *(a1 + 387), *(v758 + v755)) && *(v758 + v756) && *(v758 + v757)))
        {
          v759 = __p;
          v760 = v918;
          if (v750 >= 1)
          {
            v761 = 0;
            v762 = v928 + 4 * v755 * v750;
            v763 = v928 + 4 * v756 * v918;
            v764 = v928 + 4 * v757 * v750;
            v765 = v942;
            do
            {
              *&v759[v761] = *(v763 + v761) + *(v762 + v761) - *(v764 + v761);
              v761 += 4;
            }

            while (v752 != v761);
            v766 = &v1007;
            goto LABEL_1079;
          }

          v766 = &v1007;
        }

        else
        {
          v760 = v918;
          if (v756 == -1 || v934 && ((v767 = *(a1 + 387), !*(v767 + v755)) || !*(v767 + v756)))
          {
            if (v755 == -1 || v934 && !*(*(a1 + 387) + v755))
            {
              if (v918 >= 1)
              {
                v773 = __p;
                bzero(__p, 4 * v750);
                v774 = 0;
                do
                {
                  v775 = *(*v952 + 4 * v774);
                  if (v775 >= 1)
                  {
                    v776 = 0;
                    v777 = *(v941 + 4 * v774) - v773[v774];
                    do
                    {
                      LOWORD(v987) = 0x8000;
                      sub_250100B10((a1 + 890), (v777 >> v776++) & 1, &v987);
                    }

                    while (v775 != v776);
                  }

                  ++v774;
                }

                while (v774 != v750);
              }

              goto LABEL_1080;
            }

            v759 = __p;
            if (v750 >= 1)
            {
              v771 = 0;
              v772 = v928 + 4 * v755 * v918;
              v765 = v942;
              do
              {
                *&v759[v771] = *(v772 + v771);
                v771 += 4;
              }

              while (v752 != v771);
              v766 = &__b;
              goto LABEL_1079;
            }

            v766 = &__b;
          }

          else
          {
            v759 = __p;
            if (v918 >= 1)
            {
              v768 = 0;
              v769 = v928 + 4 * v755 * v918;
              v770 = v928 + 4 * v756 * v750;
              v765 = v942;
              do
              {
                *&v759[v768] = (*(v770 + v768) + *(v769 + v768)) / 2;
                v768 += 4;
              }

              while (v752 != v768);
              v766 = (&v999 + 8);
              goto LABEL_1079;
            }

            v766 = (&v999 + 8);
          }
        }

        v765 = v942;
LABEL_1079:
        sub_250100C84(a1, v941, v759, v760, v952, *(v765 + 8), v766);
LABEL_1080:
        if (++v751 == v923)
        {
          goto LABEL_1081;
        }
      }
    }

    v921 = *a1;
    v629 = a1[780];
    v926 = *(a1 + 384);
    v1005 = 0u;
    v1006 = 0u;
    v1003 = 0u;
    v1004 = 0u;
    v1001 = 0u;
    v1002 = 0u;
    v999 = 0u;
    v1000 = 0u;
    v997 = 0u;
    *v998 = 0u;
    *v995 = 0u;
    *v996 = 0u;
    *v993 = 0u;
    v994 = 0u;
    __b = 0u;
    sub_2500F3ECC(&__b, v629);
    sub_2500F3ECC(&v999 + 1, v629);
    LODWORD(v987) = 0;
    v931 = v629;
    sub_2500FC9FC(&__p, v629, &v987);
    if (v921 < 1)
    {
LABEL_875:
      if (__p)
      {
        v990 = __p;
        operator delete(__p);
      }

      for (i = 0; i != -240; i -= 120)
      {
        v652 = &v993[i / 8 - 2];
        v653 = *(&v1005 + i + 8);
        if (v653)
        {
          v652[28] = v653;
          operator delete(v653);
        }

        v654 = v652[24];
        if (v654)
        {
          *(&v1004 + i + 8) = v654;
          operator delete(v654);
        }

        v655 = &v993[i / 8 - 2];
        v656 = *(&v1002 + i + 8);
        if (v656)
        {
          v655[22] = v656;
          operator delete(v656);
        }

        v657 = v655[18];
        if (v657)
        {
          *(&v1001 + i + 8) = v657;
          operator delete(v657);
        }

        v658 = v652[15];
        if (v658)
        {
          *(&v1000 + i) = v658;
          operator delete(v658);
        }
      }

      goto LABEL_1167;
    }

    v630 = 0;
    v949 = a1 + 750;
    v917 = *(v2 + 16);
    v631 = 4 * v629;
    while (1)
    {
      v632 = *(*(a1 + 11) + 4 * v630);
      if (!v917)
      {
        break;
      }

      v633 = *(a1 + 387);
      if (*(v633 + v632))
      {
        v938 = v926 + 4 * v632 * v629;
        v634 = (*(a1 + 17) + 12 * v632);
        v635 = *v634;
        v636 = v634[1];
        if (v636 == -1 || !*(v633 + v635) || !*(v633 + v636))
        {
          if (v635 == -1 || !*(v633 + v635))
          {
LABEL_868:
            if (v931 >= 1)
            {
              v645 = __p;
              bzero(__p, v631);
              v646 = 0;
              do
              {
                v647 = v629;
                v648 = *(*v949 + 4 * v646);
                if (v648 >= 1)
                {
                  v649 = 0;
                  v650 = *(v938 + 4 * v646) - v645[v646];
                  do
                  {
                    LOWORD(v987) = 0x8000;
                    sub_250100B10((a1 + 890), (v650 >> v649++) & 1, &v987);
                  }

                  while (v648 != v649);
                }

                ++v646;
                v629 = v647;
              }

              while (v646 != v647);
            }

            goto LABEL_874;
          }

LABEL_857:
          v637 = __p;
          if (v629 >= 1)
          {
            v638 = 0;
            v639 = v926 + 4 * v635 * v931;
            do
            {
              *&v637[v638] = *(v639 + v638);
              v638 += 4;
            }

            while (v631 != v638);
          }

          v640 = &__b;
LABEL_866:
          sub_250100C84(a1, v938, v637, v931, v949, *(v2 + 8), v640);
          goto LABEL_874;
        }

LABEL_862:
        v637 = __p;
        if (v629 >= 1)
        {
          v642 = 0;
          v643 = v926 + 4 * v635 * v931;
          v644 = v926 + 4 * v636 * v629;
          do
          {
            *&v637[v642] = (*(v644 + v642) + *(v643 + v642)) / 2;
            v642 += 4;
          }

          while (v631 != v642);
        }

        v640 = (&v999 + 8);
        goto LABEL_866;
      }

LABEL_874:
      if (++v630 == v921)
      {
        goto LABEL_875;
      }
    }

    v938 = v926 + 4 * v632 * v931;
    v641 = (*(a1 + 17) + 12 * v632);
    v635 = *v641;
    v636 = v641[1];
    if (v636 == -1)
    {
      if (v635 == -1)
      {
        goto LABEL_868;
      }

      goto LABEL_857;
    }

    goto LABEL_862;
  }

  if (v17 <= 4)
  {
    if (v17 != 3)
    {
      v19 = 0;
      v20 = *a1;
      v21 = a1[780];
      v22 = a1[780];
      v919 = *(a1 + 384);
      v1014 = 0;
      v1012 = 0u;
      v1013 = 0u;
      v1010 = 0u;
      v1011 = 0u;
      v1008 = 0u;
      v1009 = 0u;
      v1006 = 0u;
      v1007 = 0u;
      v1004 = 0u;
      v1005 = 0u;
      v1002 = 0u;
      v1003 = 0u;
      v1000 = 0u;
      v1001 = 0u;
      *v998 = 0u;
      v999 = 0u;
      *v996 = 0u;
      v997 = 0u;
      v994 = 0u;
      *v995 = 0u;
      v943 = a1 + 750;
      __b = 0u;
      *v993 = 0u;
      do
      {
        sub_2500F3ECC(&v993[v19 - 2], v21);
        v19 += 15;
      }

      while (v19 != 45);
      LOWORD(v980) = 0x8000;
      memset_pattern16(&v984, &unk_250110610, 6uLL);
      memset_pattern16(&v953, &unk_250110610, 6uLL);
      LODWORD(v987) = 0;
      sub_2500FC9FC(&__p, v21, &v987);
      LODWORD(v965) = 0;
      sub_2500FC9FC(&v987, v21, &v965);
      LODWORD(v963) = 0;
      sub_2500FC9FC(&v965, v21, &v963);
      LODWORD(v961) = 0;
      sub_2500FC9FC(&v963, v21, &v961);
      LODWORD(v959) = 0;
      sub_2500FC9FC(&v961, v21, &v959);
      LODWORD(v957) = 0;
      sub_2500FC9FC(&v959, v21, &v957);
      LODWORD(v955) = 0;
      sub_2500FC9FC(&v957, v21, &v955);
      v981 = 0;
      sub_2500FC9FC(&v955, v21, &v981);
      if (v20 >= 1)
      {
        v23 = 0;
        v929 = *(v2 + 16);
        v878 = v20;
        v883 = 4 * v21;
        v914 = v21;
        v935 = v21;
        while (1)
        {
          v924 = v23;
          v24 = *(*(a1 + 11) + 4 * v23);
          if (v929 && !*(*(a1 + 387) + v24))
          {
            goto LABEL_139;
          }

          v25 = (v919 + 4 * (v24 * v22));
          v26 = (*(a1 + 17) + 12 * v24);
          v27 = *v26;
          v28 = v26[1];
          v29 = v26[2];
          v30 = __p;
          v31 = (*(a1 + 20) + 12 * v24);
          v32 = v31[2];
          if (v32 != -1)
          {
            v34 = *v31;
            v33 = v31[1];
            if (!v929)
            {
              break;
            }

            v35 = *(a1 + 387);
            if (*(v35 + v27))
            {
              if (*(v35 + v28) && *(v35 + v29) && *(v35 + v34) && *(v35 + v33) && *(v35 + v32))
              {
                break;
              }
            }
          }

          v50 = v914;
          if (v29 != -1)
          {
            if (!v929 || (v51 = *(a1 + 387), *(v51 + v27)) && *(v51 + v28) && *(v51 + v29))
            {
              v911 = __p;
              v52 = (v919 + 4 * v27 * v935);
              v53 = (v919 + 4 * v28 * v914);
              v54 = (v919 + 4 * v29 * v935);
              v55 = v24;
              sub_2500EBFF8(v52, v53, v54, v935, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v29), (*(a1 + 23) + 12 * v24), v987);
              v56 = v942;
              if (v935 == 2)
              {
                sub_2500EC6E4(v52, v53, v54, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v55), v963);
                v57 = v963;
                goto LABEL_71;
              }

              if (v914 < 1)
              {
                if (*(v942 + 24) == 1)
                {
                  v71 = v961;
                  v72 = v959;
                  v73 = v957;
                  v74 = v955;
                  goto LABEL_74;
                }

                v86 = 0;
                v87 = 0;
                v88 = 0;
                v89 = 0;
                v22 = v935;
              }

              else
              {
                v66 = 0;
                v57 = v963;
                do
                {
                  v57[v66 / 4] = v53[v66 / 4] + v52[v66 / 4] - v54[v66 / 4];
                  v66 += 4;
                }

                while (v883 != v66);
LABEL_71:
                v67 = 0;
                v68 = __p;
                v69 = v987;
                v70 = v965;
                v71 = v961;
                v72 = v959;
                v73 = v957;
                v74 = v955;
                do
                {
                  v75 = v53[v67] + v52[v67] - v54[v67];
                  v68[v67] = v75;
                  v70[v67] = (v69[v67] + v75) / 2;
                  v71[v67] = v25[v67] - v68[v67];
                  v72[v67] = v25[v67] - v69[v67];
                  v73[v67] = v25[v67] - v70[v67];
                  v74[v67] = v25[v67] - v57[v67];
                  ++v67;
                }

                while (v935 != v67);
                if (*(v942 + 24))
                {
LABEL_74:
                  v852 = *(v942 + 8);
                  v76 = v984;
                  v77 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
                  v898 = v77;
                  v871 = v985;
                  v78 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
                  v889 = v78 + v77 + sub_25010F50C(v71, v935, v852, &v1007);
                  v79 = *(&unk_250110628 + (((67584 - v76) >> 10) & 0x7CLL));
                  v80 = v986;
                  v81 = *(&unk_250110628 + (((v986 + 2048) >> 10) & 0x7CLL));
                  v50 = v914;
                  v861 = v81 + v79 + sub_25010F50C(v72, v914, v852, &v1007);
                  v872 = *(&unk_250110628 + (((67584 - v871) >> 10) & 0x7CLL));
                  v82 = v73;
                  v22 = v935;
                  v845 = sub_25010F50C(v82, v935, v852, &v1007);
                  v83 = 67584 - v80;
                  v56 = v942;
                  v84 = *(&unk_250110628 + ((v83 >> 10) & 0x7CLL));
                  v85 = sub_25010F50C(v74, v914, v852, &v1007);
                  v86 = v889;
                  v87 = v861;
                  v88 = v872 + v898 + v845;
                  v89 = v84 + v79 + v85;
                }

                else
                {
                  if (v935 < 1)
                  {
                    v86 = 0;
                    v87 = 0;
                    v88 = 0;
                    v89 = 0;
                  }

                  else
                  {
                    v90 = *v71;
                    if (*v71 < 0)
                    {
                      v90 = -v90;
                    }

                    v86 = -(v914 * __clz(v90 + 1));
                    v91 = *v72;
                    if (*v72 < 0)
                    {
                      v91 = -v91;
                    }

                    v87 = -(v935 * __clz(v91 + 1));
                    v92 = *v73;
                    if (*v73 < 0)
                    {
                      v92 = -v92;
                    }

                    v88 = -(v914 * __clz(v92 + 1));
                    v93 = *v74;
                    if (*v74 < 0)
                    {
                      v93 = -v93;
                    }

                    v89 = -(v935 * __clz(v93 + 1));
                  }

                  v22 = v935;
                }
              }

              if (v86 <= v87 && v86 <= v88 && v86 <= v89)
              {
                v122 = 0;
                v123 = 0;
                goto LABEL_129;
              }

              if (v87 <= v88 && v87 <= v89)
              {
                v122 = 0;
                v123 = 1;
                v911 = v987;
                goto LABEL_135;
              }

              if (v88 <= v89)
              {
                v123 = 0;
                v122 = 1;
                v911 = v965;
LABEL_129:
                v124 = &v985;
              }

              else
              {
                v122 = 1;
                v911 = v963;
                v123 = 1;
LABEL_135:
                v124 = &v986;
              }

              v20 = v878;
              v125 = (a1 + 890);
              v126 = &v984;
LABEL_137:
              sub_250100B10(v125, v123, v126);
              sub_250100B10((a1 + 890), v122, v124);
              v60 = &v1007;
              v30 = v911;
              goto LABEL_138;
            }
          }

          if (v28 == -1 || v929 && ((v58 = *(a1 + 387), !*(v58 + v27)) || !*(v58 + v28)))
          {
            if (v27 == -1 || v929 && !*(*(a1 + 387) + v27))
            {
              v22 = v935;
              if (v914 >= 1)
              {
                v61 = __p;
                bzero(__p, v883);
                v62 = 0;
                do
                {
                  v63 = *(*v943 + 4 * v62);
                  if (v63 >= 1)
                  {
                    v64 = 0;
                    v65 = v25[v62] - v61[v62];
                    do
                    {
                      LOWORD(v981) = 0x8000;
                      sub_250100B10((a1 + 890), (v65 >> v64++) & 1, &v981);
                    }

                    while (v63 != v64);
                  }

                  ++v62;
                }

                while (v62 != v935);
              }

              goto LABEL_139;
            }

            v22 = v935;
            if (v935 < 1)
            {
              v60 = &__b;
              v56 = v942;
            }

            else
            {
              v59 = 0;
              v56 = v942;
              do
              {
                *&v30[v59] = *(v919 + 4 * v27 * v935 + v59);
                v59 += 4;
              }

              while (v883 != v59);
              v60 = &__b;
            }

            goto LABEL_138;
          }

          if (v914 == 2)
          {
            v981 = 0;
            sub_2500EC288((v919 + 8 * v27), (v919 + 8 * v28), v25, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v24), __p, &v981);
            v56 = v942;
            sub_250100B10((a1 + 890), v981 != 0, &v980);
          }

          else
          {
            v56 = v942;
            if (v914 >= 1)
            {
              v98 = 0;
              v99 = v28;
              v22 = v935;
              v100 = v919 + 4 * v99 * v914;
              do
              {
                *&v30[v98] = (*(v100 + v98) + *(v919 + 4 * v27 * v935 + v98)) / 2;
                v98 += 4;
              }

              while (v883 != v98);
              v60 = (&v999 + 8);
              goto LABEL_138;
            }
          }

          v60 = (&v999 + 8);
          v22 = v935;
LABEL_138:
          sub_250100C84(a1, v25, v30, v50, v943, *(v56 + 8), v60);
LABEL_139:
          v23 = v924 + 1;
          if (v924 + 1 == v20)
          {
            goto LABEL_1139;
          }
        }

        v888 = v34;
        v897 = v33;
        v36 = (v919 + 4 * v28 * v935);
        v37 = (v919 + 4 * v29 * v914);
        v38 = *(a1 + 23);
        v865 = v28;
        v39 = (v38 + 12 * v28);
        v911 = __p;
        v870 = (v919 + 4 * v27 * v914);
        v40 = v24;
        sub_2500EBFF8(v870, v36, v37, v935, (v38 + 12 * v27), v39, (v38 + 12 * v29), (v38 + 12 * v24), __p);
        v41 = (v919 + 4 * v888 * v914);
        v42 = (v919 + 4 * v897 * v935);
        v43 = (v919 + 4 * v32 * v914);
        sub_2500EBFF8(v41, v42, v43, v914, (*(a1 + 23) + 12 * v888), (*(a1 + 23) + 12 * v897), (*(a1 + 23) + 12 * v32), (*(a1 + 23) + 12 * v40), v987);
        if (v935 < 1)
        {
          v56 = v942;
          if (*(v942 + 24) != 1)
          {
            v108 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v50 = v914;
            v22 = v935;
            goto LABEL_109;
          }

          v94 = v961;
          v95 = v959;
          v96 = v957;
          v97 = v955;
        }

        else
        {
          v44 = 0;
          v45 = __p;
          v46 = v987;
          v47 = v965;
          do
          {
            v47[v44 / 4] = (v46[v44 / 4] + v45[v44 / 4]) / 2;
            v44 += 4;
          }

          while (v883 != v44);
          v48 = v919 + 4 * v27 * v914;
          if (v935 == 2)
          {
            sub_2500EC6E4(v870, v36, v37, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v865), (*(a1 + 23) + 12 * v40), v45);
            sub_2500EC6E4(v41, v42, v43, (*(a1 + 23) + 12 * v888), (*(a1 + 23) + 12 * v897), (*(a1 + 23) + 12 * v40), v987);
            v45 = __p;
            v46 = v987;
            v49 = v963;
            *v963 = (*v987 + *__p) / 2;
            v49[1] = (v46[1] + v45[1]) / 2;
            v47 = v965;
            v48 = v919 + 4 * v27 * v914;
          }

          else
          {
            v101 = 0;
            v49 = v963;
            do
            {
              v102 = 1431655766 * ((v41[v101 / 4] + v870[v101 / 4]) / 2 - (v37[v101 / 4] + v43[v101 / 4]) + 2 * (v42[v101 / 4] + v36[v101 / 4]));
              v49[v101 / 4] = HIDWORD(v102) + (v102 >> 63);
              v101 += 4;
            }

            while (v883 != v101);
          }

          v103 = 0;
          v94 = v961;
          v95 = v959;
          v96 = v957;
          v97 = v955;
          do
          {
            v45[v103] = v36[v103] + *(v48 + 4 * v103) - v37[v103];
            v46[v103] = v42[v103] + v41[v103] - v43[v103];
            v94[v103] = v25[v103] - v45[v103];
            v95[v103] = v25[v103] - v46[v103];
            v96[v103] = v25[v103] - v47[v103];
            v97[v103] = v25[v103] - v49[v103];
            ++v103;
          }

          while (v935 != v103);
          v56 = v942;
          if ((*(v942 + 24) & 1) == 0)
          {
            v118 = *v94;
            if (*v94 < 0)
            {
              v118 = -v118;
            }

            v108 = -(v914 * __clz(v118 + 1));
            v119 = *v95;
            v50 = v914;
            if (v119 < 0)
            {
              v119 = -v119;
            }

            v115 = -(v935 * __clz(v119 + 1));
            v120 = *v96;
            if (*v96 < 0)
            {
              v120 = -v120;
            }

            v116 = -(v914 * __clz(v120 + 1));
            v121 = *v97;
            v22 = v935;
            if (v121 < 0)
            {
              v121 = -v121;
            }

            v117 = -(v935 * __clz(v121 + 1));
LABEL_109:
            if (v108 <= v115 && v108 <= v116 && v108 <= v117)
            {
              v122 = 0;
              v123 = 0;
LABEL_113:
              v124 = &v953 + 1;
LABEL_120:
              v20 = v878;
              v125 = (a1 + 890);
              v126 = &v953;
              goto LABEL_137;
            }

            if (v115 > v116 || v115 > v117)
            {
              if (v116 <= v117)
              {
                v123 = 0;
                v122 = 1;
                v911 = v965;
                goto LABEL_113;
              }

              v122 = 1;
              v911 = v963;
              v123 = 1;
            }

            else
            {
              v122 = 0;
              v123 = 1;
              v911 = v987;
            }

            v124 = &v954;
            goto LABEL_120;
          }
        }

        v104 = *(v56 + 8);
        v853 = v104;
        v105 = v953;
        v106 = *(&unk_250110628 + (((v953 + 2048) >> 10) & 0x7CLL));
        v899 = v106;
        v890 = HIWORD(v953);
        v107 = *(&unk_250110628 + (((HIWORD(v953) + 2048) >> 10) & 0x7CLL));
        v108 = v107 + v106 + sub_25010F50C(v94, v935, v104, &v1007);
        v109 = *(&unk_250110628 + (((67584 - v105) >> 10) & 0x7CLL));
        v866 = v954;
        v110 = *(&unk_250110628 + (((v954 + 2048) >> 10) & 0x7CLL));
        v111 = v95;
        v50 = v914;
        v862 = v110 + v109 + sub_25010F50C(v111, v914, v853, &v1007);
        v891 = *(&unk_250110628 + (((67584 - v890) >> 10) & 0x7CLL));
        v846 = sub_25010F50C(v96, v935, v853, &v1007);
        v56 = v942;
        v112 = *(&unk_250110628 + (((67584 - v866) >> 10) & 0x7CLL));
        v113 = v97;
        v22 = v935;
        v114 = sub_25010F50C(v113, v914, v853, &v1007);
        v115 = v862;
        v116 = v891 + v899 + v846;
        v117 = v112 + v109 + v114;
        goto LABEL_109;
      }

LABEL_1139:
      if (v955)
      {
        v956 = v955;
        operator delete(v955);
      }

      if (v957)
      {
        v958 = v957;
        operator delete(v957);
      }

      if (v959)
      {
        v960 = v959;
        operator delete(v959);
      }

      if (v961)
      {
        v962 = v961;
        operator delete(v961);
      }

      if (v963)
      {
        v964 = v963;
        operator delete(v963);
      }

      if (v965)
      {
        v966 = v965;
        operator delete(v965);
      }

      if (v987)
      {
        v988[0] = v987;
        operator delete(v987);
      }

      if (__p)
      {
        v990 = __p;
        operator delete(__p);
      }

      v802 = 360;
      do
      {
        v803 = &v993[v802 / 8 - 2];
        v804 = *(&__p + v802);
        if (v804)
        {
          *(v803 - 2) = v804;
          operator delete(v804);
        }

        v805 = *(v803 - 6);
        if (v805)
        {
          v988[v802 / 8] = v805;
          operator delete(v805);
        }

        v806 = &v993[v802 / 8 - 2];
        v807 = *(&v979 + v802);
        if (v807)
        {
          *(v806 - 8) = v807;
          operator delete(v807);
        }

        v808 = *(v806 - 12);
        if (v808)
        {
          *(&v975 + v802) = v808;
          operator delete(v808);
        }

        v809 = *(v803 - 15);
        if (v809)
        {
          *(&v969 + v802) = v809;
          operator delete(v809);
        }

        v802 -= 120;
      }

      while (v802);
      goto LABEL_1167;
    }

    v659 = 0;
    v922 = *a1;
    v660 = a1[780];
    v661 = a1[780];
    v927 = *(a1 + 384);
    v1014 = 0;
    v1012 = 0u;
    v1013 = 0u;
    v1010 = 0u;
    v1011 = 0u;
    v1008 = 0u;
    v1009 = 0u;
    v1006 = 0u;
    v1007 = 0u;
    v1004 = 0u;
    v1005 = 0u;
    v1002 = 0u;
    v1003 = 0u;
    v1000 = 0u;
    v1001 = 0u;
    *v998 = 0u;
    v999 = 0u;
    *v996 = 0u;
    v997 = 0u;
    v994 = 0u;
    *v995 = 0u;
    v950 = a1 + 750;
    __b = 0u;
    *v993 = 0u;
    do
    {
      sub_2500F3ECC(&v993[v659 - 2], v660);
      v659 += 15;
    }

    while (v659 != 45);
    LOWORD(v963) = 0x8000;
    LODWORD(v987) = 0;
    sub_2500FC9FC(&__p, v660, &v987);
    LODWORD(v965) = 0;
    sub_2500FC9FC(&v987, v660, &v965);
    if (v922 >= 1)
    {
      v662 = 0;
      v932 = *(v2 + 16);
      do
      {
        v663 = *(*(a1 + 11) + 4 * v662);
        if (v932 && !*(*(a1 + 387) + v663))
        {
          goto LABEL_939;
        }

        v939 = (v927 + 4 * v663 * v660);
        v664 = (*(a1 + 17) + 12 * v663);
        v665 = *v664;
        v666 = v664[1];
        v667 = v664[2];
        v668 = __p;
        v669 = (*(a1 + 20) + 12 * v663);
        v670 = v669[2];
        if (v670 != -1)
        {
          v671 = *v669;
          v672 = v669[1];
          if (!v932 || (v673 = *(a1 + 387), *(v673 + v665)) && *(v673 + v666) && *(v673 + v667) && *(v673 + v671) && *(v673 + v672) && *(v673 + v670))
          {
            sub_2500EBFF8((v927 + 4 * v665 * v660), (v927 + 4 * v666 * v660), (v927 + 4 * v667 * v660), v660, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v667), (*(a1 + 23) + 12 * v663), __p);
            sub_2500EBFF8((v927 + 4 * v671 * v660), (v927 + 4 * v672 * v661), (v927 + 4 * v670 * v660), v660, (*(a1 + 23) + 12 * v671), (*(a1 + 23) + 12 * v672), (*(a1 + 23) + 12 * v670), (*(a1 + 23) + 12 * v663), v987);
            v674 = &v1007;
            if (v661 >= 1)
            {
              v675 = __p;
              v676 = v987;
              v677 = v660;
              do
              {
                v678 = *v676++;
                *v675 = (v678 + *v675) / 2;
                ++v675;
                --v677;
              }

              while (v677);
              v674 = &v1007;
            }

            goto LABEL_938;
          }
        }

        if (v667 != -1 && (!v932 || (v679 = *(a1 + 387), *(v679 + v665)) && *(v679 + v666) && *(v679 + v667)))
        {
          sub_2500EBFF8((v927 + 4 * v665 * v660), (v927 + 4 * v666 * v660), (v927 + 4 * v667 * v660), v660, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v667), (*(a1 + 23) + 12 * v663), __p);
          v674 = &v1007;
        }

        else
        {
          if (v666 == -1 || v932 && ((v680 = *(a1 + 387), !*(v680 + v665)) || !*(v680 + v666)))
          {
            if (v665 == -1 || v932 && !*(*(a1 + 387) + v665))
            {
              if (v660 >= 1)
              {
                bzero(__p, 4 * v660);
                v685 = 0;
                do
                {
                  v686 = *(*v950 + 4 * v685);
                  if (v686 >= 1)
                  {
                    v687 = 0;
                    v688 = v939[v685] - v668[v685];
                    do
                    {
                      LOWORD(v965) = 0x8000;
                      sub_250100B10((a1 + 890), (v688 >> v687++) & 1, &v965);
                    }

                    while (v686 != v687);
                  }

                  ++v685;
                }

                while (v685 != v660);
              }

              goto LABEL_939;
            }

            if (v661 >= 1)
            {
              v681 = (v927 + 4 * v665 * v660);
              v682 = __p;
              v683 = v660;
              do
              {
                v684 = *v681++;
                *v682++ = v684;
                --v683;
              }

              while (v683);
            }

            v674 = &__b;
            goto LABEL_938;
          }

          if (v661 == 2)
          {
            LODWORD(v965) = 0;
            sub_2500EC288((v927 + 8 * v665), (v927 + 8 * v666), v939, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v663), __p, &v965);
            sub_250100B10((a1 + 890), v965 != 0, &v963);
LABEL_937:
            v674 = (&v999 + 8);
            goto LABEL_938;
          }

          v674 = (&v999 + 8);
          if (v660 >= 1)
          {
            v689 = (v927 + 4 * v665 * v660);
            v690 = (v927 + 4 * v666 * v660);
            v691 = __p;
            v692 = v660;
            do
            {
              v694 = *v689++;
              v693 = v694;
              v695 = *v690++;
              *v691++ = (v695 + v693) / 2;
              --v692;
            }

            while (v692);
            goto LABEL_937;
          }
        }

LABEL_938:
        sub_250100C84(a1, v939, v668, v660, v950, *(v942 + 8), v674);
LABEL_939:
        ++v662;
      }

      while (v662 != v922);
    }

    if (v987)
    {
      v988[0] = v987;
      operator delete(v987);
    }

    if (__p)
    {
      v990 = __p;
      operator delete(__p);
    }

    v696 = 360;
    do
    {
      v697 = &v993[v696 / 8 - 2];
      v698 = *(&__p + v696);
      if (v698)
      {
        *(v697 - 2) = v698;
        operator delete(v698);
      }

      v699 = *(v697 - 6);
      if (v699)
      {
        v988[v696 / 8] = v699;
        operator delete(v699);
      }

      v700 = &v993[v696 / 8 - 2];
      v701 = *(&v979 + v696);
      if (v701)
      {
        *(v700 - 8) = v701;
        operator delete(v701);
      }

      v702 = *(v700 - 12);
      if (v702)
      {
        *(&v975 + v696) = v702;
        operator delete(v702);
      }

      v703 = *(v697 - 15);
      if (v703)
      {
        *(&v969 + v696) = v703;
        operator delete(v703);
      }

      v696 -= 120;
    }

    while (v696);
LABEL_1167:
    result = 0;
    goto LABEL_1168;
  }

  if (v17 == 5)
  {
    v704 = *a1;
    v705 = a1[780];
    v940 = *(a1 + 384);
    v706 = ~(-1 << (*(v2 + 4) - 1));
    v990 = 0;
    __p = 0;
    v991 = 0;
    sub_2500F8F40(a1 + 23, a1 + 29, a1 + 26, a1 + 26, -1431655765 * ((*(a1 + 24) - *(a1 + 23)) >> 2), &__p, v706);
    *&v999 = 0;
    v997 = 0u;
    *v998 = 0u;
    *v995 = 0u;
    *v996 = 0u;
    *v993 = 0u;
    v994 = 0u;
    __b = 0u;
    sub_2500F3ECC(&__b, v705);
    LOWORD(v963) = 0x8000;
    if (v704 < 1)
    {
LABEL_1028:
      if (v998[0])
      {
        v998[1] = v998[0];
        operator delete(v998[0]);
      }

      if (v996[1])
      {
        *&v997 = v996[1];
        operator delete(v996[1]);
      }

      if (v995[0])
      {
        v995[1] = v995[0];
        operator delete(v995[0]);
      }

      if (v993[1])
      {
        *&v994 = v993[1];
        operator delete(v993[1]);
      }

      if (__b)
      {
        *(&__b + 1) = __b;
        operator delete(__b);
      }

      goto LABEL_1108;
    }

    v707 = 0;
    v951 = *(v2 + 16);
    v933 = 4 * v704;
    while (1)
    {
      v708 = *(*(a1 + 11) + v707);
      if (!v951 || *(*(a1 + 387) + v708))
      {
        break;
      }

LABEL_1027:
      v707 += 4;
      if (v933 == v707)
      {
        goto LABEL_1028;
      }
    }

    v709 = (v940 + 4 * v708 * v705);
    v710 = *v709 - v706;
    v711 = v709[1] - v706;
    if (v710 >= 0)
    {
      v712 = v710;
    }

    else
    {
      v712 = -v710;
    }

    if (v711 >= 0)
    {
      v713 = v711;
    }

    else
    {
      v713 = -v711;
    }

    v714 = v706 - v712;
    v715 = v713 - v706;
    if (v710 >= 0)
    {
      v715 = v706 - v713;
    }

    v716 = v712 - v706;
    if (v711 >= 0)
    {
      v716 = v714;
    }

    v717 = v714 - v713;
    LODWORD(v988[0]) = v714 - v713;
    if (v714 - v713 < 0)
    {
      v718 = v715;
    }

    else
    {
      v718 = v710;
    }

    if (v714 - v713 < 0)
    {
      v719 = v716;
    }

    else
    {
      v719 = v711;
    }

    v987 = __PAIR64__(v719, v718);
    v720 = 3 * v708;
    v721 = (__p + 12 * v708);
    v722 = *v721;
    v723 = *v721;
    LODWORD(v965) = *v721;
    v724 = v721[1];
    HIDWORD(v965) = v724;
    v725 = v721[2];
    LODWORD(v966) = v725;
    v726 = *(*(a1 + 17) + 4 * v720);
    if (v726 == -1 || v951 && !*(*(a1 + 387) + v726))
    {
      v736 = v723 * v718 + v724 * v719 + v725 * v717;
      if ((v736 & 0x8000000000000000) != 0)
      {
        v722 = -v722;
        v724 = -v724;
        v725 = -v725;
        v965 = __PAIR64__(v724, v722);
        LODWORD(v966) = v725;
      }

      sub_250100B10((a1 + 890), v736 >> 63, &v963);
    }

    else
    {
      v727 = (v940 + 4 * v726 * v705);
      v728 = *v727 - v706;
      v729 = v727[1] - v706;
      if (v728 >= 0)
      {
        v730 = v728;
      }

      else
      {
        v730 = -v728;
      }

      if (v729 >= 0)
      {
        v731 = v729;
      }

      else
      {
        v731 = -v729;
      }

      v732 = v706 - v730;
      v733 = v731 - v706;
      if (v728 >= 0)
      {
        v733 = v706 - v731;
      }

      v734 = v730 - v706;
      if (v729 >= 0)
      {
        v734 = v732;
      }

      v735 = v732 - v731;
      if (v735 < 0)
      {
        v728 = v733;
        v729 = v734;
      }

      if (v725 * v735 + v723 * v728 + v724 * v729 < 0)
      {
        v722 = -v722;
        v724 = -v724;
        v725 = -v725;
        v965 = __PAIR64__(v724, v722);
        LODWORD(v966) = v725;
      }
    }

    if (v722 >= 0)
    {
      v737 = v722;
    }

    else
    {
      v737 = -v722;
    }

    if (v724 >= 0)
    {
      v738 = v724;
    }

    else
    {
      v738 = -v724;
    }

    if (v725 >= 0)
    {
      v739 = v725;
    }

    else
    {
      v739 = -v725;
    }

    if (v737 >= v738 && v737 >= v739)
    {
      v741 = &v965;
      v742 = &v987;
      v719 = v718;
      v724 = v722;
    }

    else
    {
      v741 = (&v965 + 4);
      v742 = (&v987 + 4);
      if (v738 < v739)
      {
        goto LABEL_1014;
      }
    }

    *v742 = v717;
    LODWORD(v988[0]) = v719;
    *v741 = v725;
    v717 = v719;
    v725 = v724;
    LODWORD(v966) = v724;
LABEL_1014:
    if (v725 < 0)
    {
      LODWORD(v966) = -v725;
      v717 = -v717;
      LODWORD(v988[0]) = v717;
    }

    v743 = v987;
    v744 = HIDWORD(v987);
    if (v717 < 0)
    {
      if (SHIDWORD(v987) >= 0)
      {
        v746 = HIDWORD(v987);
      }

      else
      {
        v746 = -HIDWORD(v987);
      }

      v747 = v746 - v706;
      v745 = v706 - v746;
      if (v987 < 0)
      {
        v745 = v747;
        v743 = -v987;
      }

      if ((HIDWORD(v987) & 0x80000000) != 0)
      {
        v744 = v743 - v706;
      }

      else
      {
        v744 = v706 - v743;
      }
    }

    else
    {
      v745 = v987;
    }

    v987 = __PAIR64__(v744, v745);
    sub_250100C84(a1, &v987, &v965, v705, a1 + 375, *(v942 + 8), &__b);
    goto LABEL_1027;
  }

  if (v17 == 6)
  {
    v203 = *a1;
    v204 = a1[780];
    v205 = *(a1 + 384);
    v206 = ~(-1 << (*(v2 + 4) - 1));
    v990 = 0;
    __p = 0;
    v991 = 0;
    sub_2500F8F40(a1 + 23, a1 + 29, a1 + 26, a1 + 26, -1431655765 * ((*(a1 + 24) - *(a1 + 23)) >> 2), &__p, v206);
    v207 = 0;
    v1014 = 0;
    v1012 = 0u;
    v1013 = 0u;
    v1010 = 0u;
    v1011 = 0u;
    v1008 = 0u;
    v1009 = 0u;
    v1006 = 0u;
    v1007 = 0u;
    v1004 = 0u;
    v1005 = 0u;
    v1002 = 0u;
    v1003 = 0u;
    v1000 = 0u;
    v1001 = 0u;
    *v998 = 0u;
    v999 = 0u;
    *v996 = 0u;
    v997 = 0u;
    v994 = 0u;
    *v995 = 0u;
    __b = 0u;
    *v993 = 0u;
    do
    {
      sub_2500F3ECC(&v993[v207 - 2], v204);
      v207 += 15;
    }

    while (v207 != 45);
    memset_pattern16(&v955, &unk_250110610, 6uLL);
    memset_pattern16(&v984, &unk_250110610, 6uLL);
    v983 = 0x8000;
    v982 = 0x8000;
    if (v203 > 0)
    {
      v208 = 0;
      v209 = vdup_n_s32(v206);
      v930 = 4 * v203;
      v210 = *(v2 + 16);
      v937 = v204;
      v913 = v205;
      v916 = v210;
      v869 = v206;
      do
      {
        v211 = *(*(a1 + 11) + v208);
        if (v210 && !*(*(a1 + 387) + v211))
        {
          goto LABEL_845;
        }

        v212 = (v205 + 4 * v211 * v204);
        v213 = *v212 - v206;
        v214 = v212[1] - v206;
        if (v213 >= 0)
        {
          v215 = v213;
        }

        else
        {
          v215 = -v213;
        }

        if (v214 >= 0)
        {
          v216 = v214;
        }

        else
        {
          v216 = -v214;
        }

        v217 = v206 - v215;
        v218 = v216 - v206;
        if (v213 >= 0)
        {
          v218 = v206 - v216;
        }

        v219 = v215 - v206;
        if (v214 >= 0)
        {
          v219 = v217;
        }

        v220 = v217 - v216;
        LODWORD(v988[0]) = v217 - v216;
        if (v217 - v216 < 0)
        {
          v221 = v218;
        }

        else
        {
          v221 = v213;
        }

        if (v217 - v216 < 0)
        {
          v222 = v219;
        }

        else
        {
          v222 = v214;
        }

        v987 = __PAIR64__(v222, v221);
        v223 = 3 * v211;
        v224 = __p + 12 * v211;
        v225 = *v224;
        v965 = *v224;
        v226 = *(v224 + 2);
        LODWORD(v966) = v226;
        v227 = (*(a1 + 17) + 4 * v223);
        v228 = *v227;
        v229 = v227[1];
        v230 = v227[2];
        v231 = (*(a1 + 20) + 4 * v223);
        v232 = v231[2];
        if (v232 != -1)
        {
          v233 = *v231;
          v234 = v231[1];
          if (!v210 || (v235 = *(a1 + 387), *(v235 + v228)) && *(v235 + v229) && *(v235 + v230) && *(v235 + v233) && *(v235 + v234) && *(v235 + v232))
          {
            v236 = *(v205 + 4 * v228 * v204);
            v237 = vsub_s32(v236, v209);
            v238 = vabd_s32(v236, v209);
            v239 = v206 - v238.i32[0] - v238.i32[1];
            if (v239 < 0)
            {
              v237 = vbsl_s8(vcltz_s32(v237), vrev64_s32(vsub_s32(v238, v209)), __PAIR64__(v206 - v238.i32[0], v206 - v238.i32[1]));
            }

            v240 = *(v205 + 4 * v229 * v204);
            v241 = vsub_s32(v240, v209);
            v242 = vabd_s32(v240, v209);
            v906 = v206 - v242.i32[0] - v242.i32[1];
            if (v906 < 0)
            {
              v241 = vbsl_s8(vcltz_s32(v241), vrev64_s32(vsub_s32(v242, v209)), __PAIR64__(v206 - v242.i32[0], v206 - v242.i32[1]));
            }

            v243 = *(v205 + 4 * v230 * v204);
            v244 = vsub_s32(v243, v209);
            v245 = vabd_s32(v243, v209);
            v246 = v206 - v245.i32[0] - v245.i32[1];
            if (v246 < 0)
            {
              v244 = vbsl_s8(vcltz_s32(v244), vrev64_s32(vsub_s32(v245, v209)), __PAIR64__(v206 - v245.i32[0], v206 - v245.i32[1]));
            }

            v247 = *(v205 + 4 * v233 * v204);
            v248 = vsub_s32(v247, v209);
            v249 = vabd_s32(v247, v209);
            v250 = v206 - v249.i32[0] - v249.i32[1];
            if (v250 < 0)
            {
              v248 = vbsl_s8(vcltz_s32(v248), vrev64_s32(vsub_s32(v249, v209)), __PAIR64__(v206 - v249.i32[0], v206 - v249.i32[1]));
            }

            v251 = *(v205 + 4 * v234 * v204);
            v252 = vsub_s32(v251, v209);
            v253 = vabd_s32(v251, v209);
            v254 = v206 - v253.i32[0] - v253.i32[1];
            if (v254 < 0)
            {
              v252 = vbsl_s8(vcltz_s32(v252), vrev64_s32(vsub_s32(v253, v209)), __PAIR64__(v206 - v253.i32[0], v206 - v253.i32[1]));
            }

            v255 = *(v205 + 4 * v232 * v204);
            v256 = vsub_s32(v255, v209);
            v257 = vabd_s32(v255, v209);
            v258 = v206 - v257.i32[0] - v257.i32[1];
            if (v258 < 0)
            {
              v256 = vbsl_s8(vcltz_s32(v256), vrev64_s32(vsub_s32(v257, v209)), __PAIR64__(v206 - v257.i32[0], v206 - v257.i32[1]));
            }

            v259 = v226 * v239 + v237.i32[0] * v225.i32[0] + v237.i32[1] * v225.i32[1];
            if (v259 >= 0)
            {
              v260 = v225.i32[0];
            }

            else
            {
              v260 = -v225.i32[0];
            }

            if (v259 >= 0)
            {
              v261 = v225.i32[1];
            }

            else
            {
              v261 = -v225.i32[1];
            }

            if (v259 >= 0)
            {
              v262 = v226;
            }

            else
            {
              v262 = -v226;
            }

            v953 = v260;
            v981 = v261;
            v263 = vsub_s32(vadd_s32(v241, v237), v244);
            v264 = v263.i32[0];
            v979 = v263.i32[1];
            v980 = v263.i32[0];
            v265 = vsub_s32(vadd_s32(v252, v248), v256);
            v266 = vadd_s32(v248, v237);
            v267 = v266.i32[1];
            v268 = v266.i32[0] / 2;
            v269 = vadd_s32(v252, v241);
            v270 = v269.i32[1];
            v271 = v269.i32[0];
            v272 = vadd_s32(v244, v256);
            v273 = v268 + 2 * v271 - v272.i32[0];
            v274 = v265.i32[0];
            v977 = v265.i32[1];
            v978 = v265.i32[0];
            v275 = v267;
            v276 = v273 / 3;
            v277 = 1431655766 * (v275 / 2 + 2 * v270 - v272.i32[1]);
            v278 = HIDWORD(v277) + (v277 >> 63);
            v976 = v276;
            v975 = v278;
            v974 = v221;
            v973 = v222;
            v972 = v221;
            v971 = v222;
            v970 = v221;
            v969 = v222;
            v968 = v221;
            v967 = v222;
            v279 = vabs_s32(v225);
            if (v226 >= 0)
            {
              v280 = v226;
            }

            else
            {
              v280 = -v226;
            }

            if (v279.i32[0] >= v279.i32[1] && v279.i32[0] >= v280)
            {
              v281 = &v953;
              v282 = &v974;
              v283 = v221;
              goto LABEL_423;
            }

            if (v279.i32[1] >= v280)
            {
              v281 = &v981;
              v282 = &v973;
              v283 = v222;
              v260 = v261;
LABEL_423:
              *v282 = v220;
              *v281 = v262;
              v385 = v974;
              v384 = v973;
              v262 = v260;
            }

            else
            {
              v384 = v222;
              v385 = v221;
              v283 = v220;
            }

            if (v262 >= 0)
            {
              v395 = v283;
            }

            else
            {
              v395 = -v283;
            }

            if (v262 >= 0)
            {
              v396 = v262;
            }

            else
            {
              v396 = -v262;
            }

            v902 = v396;
            if (v395 < 0)
            {
              if (v384 >= 0)
              {
                v398 = v384;
              }

              else
              {
                v398 = -v384;
              }

              v399 = v398 - v206;
              v400 = v206 - v398;
              if (v385 >= 0)
              {
                v397 = v400;
              }

              else
              {
                v397 = v399;
              }

              if (v385 >= 0)
              {
                v401 = v385;
              }

              else
              {
                v401 = -v385;
              }

              if (v384 < 0)
              {
                v384 = v401 - v206;
              }

              else
              {
                v384 = v206 - v401;
              }
            }

            else
            {
              v397 = v385;
            }

            v437 = v906 + v239 - v246;
            v974 = v397;
            v973 = v384;
            v438 = vabs_s32(v263);
            if (v437 >= 0)
            {
              v439 = v906 + v239 - v246;
            }

            else
            {
              v439 = v246 - (v906 + v239);
            }

            v440 = v438.i32[0];
            if (v438.i32[0] >= v438.i32[1] && v438.i32[0] >= v439)
            {
              v445 = &v980;
              v446 = &v972;
              v444 = v221;
            }

            else
            {
              if (v438.i32[1] < v439)
              {
                v442 = v222;
                v443 = v221;
                v444 = v220;
                goto LABEL_552;
              }

              v264 = v263.i32[1];
              v445 = &v979;
              v446 = &v971;
              v440 = v438.u32[1];
              v444 = v222;
            }

            *v446 = v220;
            *v445 = v437;
            v443 = v972;
            v442 = v971;
            v439 = v440;
            v437 = v264;
LABEL_552:
            if (v437 >= 0)
            {
              v447 = v444;
            }

            else
            {
              v447 = -v444;
            }

            v884 = v447;
            if (v447 < 0)
            {
              if (v442 >= 0)
              {
                v450 = v442;
              }

              else
              {
                v450 = -v442;
              }

              v448 = v450 - v206;
              v451 = v206 - v450;
              if (v443 < 0)
              {
                v452 = -v443;
              }

              else
              {
                v448 = v451;
                v452 = v443;
              }

              if (v442 < 0)
              {
                v449 = v452 - v206;
              }

              else
              {
                v449 = v206 - v452;
              }
            }

            else
            {
              v448 = v443;
              v449 = v442;
            }

            v453 = v254 + v250 - v258;
            v879 = v448;
            v972 = v448;
            v971 = v449;
            v454 = vabs_s32(v265);
            if (v453 >= 0)
            {
              v455 = v254 + v250 - v258;
            }

            else
            {
              v455 = v258 - (v254 + v250);
            }

            v456 = v454.i32[0];
            v874 = v449;
            if (v454.i32[0] >= v454.i32[1] && v454.i32[0] >= v455)
            {
              v457 = v246;
              v458 = &v978;
              v459 = &v970;
              v460 = v221;
              goto LABEL_575;
            }

            v457 = v246;
            if (v454.i32[1] >= v455)
            {
              v274 = v265.i32[1];
              v458 = &v977;
              v459 = &v969;
              v456 = v454.i32[1];
              v460 = v222;
LABEL_575:
              *v459 = v220;
              *v458 = v453;
              v462 = v970;
              v461 = v969;
              v893 = v456;
              v453 = v274;
              v449 = v874;
            }

            else
            {
              v893 = v455;
              v461 = v222;
              v462 = v221;
              v460 = v220;
            }

            if (v453 < 0)
            {
              v460 = -v460;
            }

            if (v460 < 0)
            {
              v466 = v254;
              v467 = v250;
              if (v461 >= 0)
              {
                v468 = v461;
              }

              else
              {
                v468 = -v461;
              }

              v469 = v468 - v206;
              v470 = v206 - v468;
              if (v462 >= 0)
              {
                v471 = v470;
              }

              else
              {
                v471 = v469;
              }

              if (v462 >= 0)
              {
                v472 = v462;
              }

              else
              {
                v472 = -v462;
              }

              v463 = v879;
              if (v461 < 0)
              {
                v465 = v472 - v206;
              }

              else
              {
                v465 = v206 - v472;
              }

              v464 = v893;
              v462 = v471;
              v250 = v467;
              v254 = v466;
            }

            else
            {
              v463 = v879;
              v464 = v893;
              v465 = v461;
            }

            v473 = 1431655766 * ((v250 + v239) / 2 + 2 * (v254 + v906) - (v457 + v258));
            v474 = HIDWORD(v473) + (v473 >> 63);
            v970 = v462;
            v969 = v465;
            if (v276 >= 0)
            {
              v475 = v276;
            }

            else
            {
              v475 = -v276;
            }

            if (v278 >= 0)
            {
              v476 = v278;
            }

            else
            {
              v476 = -v278;
            }

            if (v474 >= 0)
            {
              v477 = v474;
            }

            else
            {
              v477 = -v474;
            }

            if (v475 >= v476 && v475 >= v477)
            {
              v479 = &v976;
              v480 = &v968;
              v477 = v475;
LABEL_609:
              *v480 = v220;
              v220 = v221;
              *v479 = v474;
              v221 = v968;
              v222 = v967;
              v474 = v276;
            }

            else if (v476 >= v477)
            {
              v479 = &v975;
              v480 = &v967;
              v477 = v476;
              v221 = v222;
              v276 = v278;
              goto LABEL_609;
            }

            if (v474 >= 0)
            {
              v481 = v220;
            }

            else
            {
              v481 = -v220;
            }

            if (v481 < 0)
            {
              if (v222 >= 0)
              {
                v483 = v222;
              }

              else
              {
                v483 = -v222;
              }

              v484 = v483 - v206;
              v485 = v206 - v483;
              if (v221 >= 0)
              {
                v482 = v485;
              }

              else
              {
                v482 = v484;
              }

              if (v221 >= 0)
              {
                v486 = v221;
              }

              else
              {
                v486 = -v221;
              }

              if (v222 < 0)
              {
                v222 = v486 - v206;
              }

              else
              {
                v222 = v206 - v486;
              }
            }

            else
            {
              v482 = v221;
            }

            v968 = v482;
            v967 = v222;
            v487 = v953;
            v488 = v397 - v953;
            v489 = v981;
            LODWORD(v963) = v397 - v953;
            HIDWORD(v963) = v384 - v981;
            LODWORD(v964) = v395 - v902;
            LODWORD(v961) = v463 - v980;
            HIDWORD(v961) = v449 - v979;
            LODWORD(v962) = v884 - v439;
            v490 = v978;
            v835 = v977;
            LODWORD(v959) = v462 - v978;
            HIDWORD(v959) = v465 - v977;
            LODWORD(v960) = v460 - v464;
            v833 = v976;
            v831 = v975;
            LODWORD(v957) = v482 - v976;
            HIDWORD(v957) = v222 - v975;
            LODWORD(v958) = v481 - v477;
            v946 = v208;
            v856 = v384;
            v848 = v395;
            v843 = v439;
            v837 = v460;
            v907 = v980;
            v840 = v979;
            if (*(v2 + 24) == 1)
            {
              v491 = *(v2 + 8);
              v492 = v984;
              v493 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
              v811 = v493;
              v813 = v978;
              v815 = v981;
              v817 = v953;
              v494 = v985;
              v495 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
              v825 = v462;
              v827 = v465;
              v829 = v397;
              v821 = v481;
              v823 = v477;
              v496 = v495 + v493 + sub_25010F50C(&v963, v204, v491, &v1007);
              v497 = *(&unk_250110628 + (((67584 - v492) >> 10) & 0x7CLL));
              v819 = v482;
              v498 = v986;
              v499 = *(&unk_250110628 + (((v986 + 2048) >> 10) & 0x7CLL));
              v500 = v499 + v497 + sub_25010F50C(&v961, v204, v491, &v1007);
              v501 = *(&unk_250110628 + (((67584 - v494) >> 10) & 0x7CLL));
              v502 = sub_25010F50C(&v959, v937, v491, &v1007);
              v503 = *(&unk_250110628 + (((67584 - v498) >> 10) & 0x7CLL));
              v206 = v869;
              v504 = sub_25010F50C(&v957, v937, v491, &v1007);
              v490 = v813;
              v481 = v821;
              v477 = v823;
              v464 = v893;
              v397 = v829;
              v505 = v503 + v497;
              v487 = v817;
              v482 = v819;
              v2 = v942;
              v506 = v501 + v811;
              v205 = v913;
              v204 = v937;
              v507 = v506 + v502;
              v489 = v815;
              v508 = v505 + v504;
              v462 = v825;
              v465 = v827;
            }

            else if (v204 < 1)
            {
              v508 = 0;
              v507 = 0;
              v500 = 0;
              v496 = 0;
            }

            else
            {
              if (v488 < 0)
              {
                v488 = v953 - v397;
              }

              v496 = -(v204 * __clz(v488 + 1));
              if (v463 - v980 >= 0)
              {
                v509 = v463 - v980;
              }

              else
              {
                v509 = v980 - v463;
              }

              v500 = -(v204 * __clz(v509 + 1));
              if (v462 - v978 >= 0)
              {
                v510 = v462 - v978;
              }

              else
              {
                v510 = v978 - v462;
              }

              v507 = -(v204 * __clz(v510 + 1));
              if (v482 - v976 >= 0)
              {
                v511 = v482 - v976;
              }

              else
              {
                v511 = v976 - v482;
              }

              v508 = -(v204 * __clz(v511 + 1));
            }

            if (v496 > v500 || v496 > v507 || v496 > v508)
            {
              if (v500 > v507 || v500 > v508)
              {
                v208 = v946;
                if (v507 <= v508)
                {
                  v513 = 0;
                  v965 = __PAIR64__(v835, v490);
                  v512 = 1;
                  LODWORD(v966) = v464;
                  v222 = v465;
                  v515 = v837;
                  v514 = &v985;
                  LODWORD(v987) = v462;
                }

                else
                {
                  v965 = __PAIR64__(v831, v833);
                  v512 = 1;
                  LODWORD(v966) = v477;
                  v515 = v481;
                  v513 = 1;
                  v514 = &v986;
                  LODWORD(v987) = v482;
                }
              }

              else
              {
                v512 = 0;
                v965 = __PAIR64__(v840, v907);
                v513 = 1;
                LODWORD(v966) = v843;
                v222 = v874;
                v515 = v884;
                v514 = &v986;
                LODWORD(v987) = v879;
                v208 = v946;
              }

              v210 = v916;
            }

            else
            {
              v512 = 0;
              v513 = 0;
              v965 = __PAIR64__(v489, v487);
              LODWORD(v966) = v902;
              v514 = &v985;
              LODWORD(v987) = v397;
              v208 = v946;
              v210 = v916;
              v222 = v856;
              v515 = v848;
            }

            HIDWORD(v987) = v222;
            LODWORD(v988[0]) = v515;
            sub_250100B10((a1 + 890), v513, &v984);
            sub_250100B10((a1 + 890), v512, v514);
            v589 = &v1007;
            goto LABEL_844;
          }
        }

        if (v230 != -1)
        {
          if (!v210 || (v284 = *(a1 + 387), *(v284 + v228)) && *(v284 + v229) && *(v284 + v230))
          {
            v285 = (v205 + 4 * v229 * v204);
            v286 = (v205 + 4 * v230 * v204);
            v287 = *(v205 + 4 * v228 * v204);
            v288 = COERCE_DOUBLE(vsub_s32(v287, v209));
            v289 = vabd_s32(v287, v209);
            v290 = v289.i32[1];
            v291.i32[0] = v206 - v289.i32[1];
            v291.i32[1] = v206 - v289.i32[0];
            v292 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v288), vrev64_s32(vsub_s32(v289, v209)), v291));
            v293 = v291.i32[1] - v290;
            if (v291.i32[1] - v290 >= 0)
            {
              v292 = v288;
            }

            v294 = COERCE_DOUBLE(vsub_s32(*v285, v209));
            v295 = vabd_s32(*v285, v209);
            v296 = v295.i32[1];
            v297.i32[0] = v206 - v295.i32[1];
            v297.i32[1] = v206 - v295.i32[0];
            v298 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v294), vrev64_s32(vsub_s32(v295, v209)), v297));
            v299 = v297.i32[1] - v296;
            if (v297.i32[1] - v296 >= 0)
            {
              v298 = v294;
            }

            v300 = COERCE_DOUBLE(vsub_s32(*v286, v209));
            v301 = vabd_s32(*v286, v209);
            v302 = v301.i32[1];
            v303.i32[0] = v206 - v301.i32[1];
            v303.i32[1] = v206 - v301.i32[0];
            v304 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v300), vrev64_s32(vsub_s32(v301, v209)), v303));
            v305 = v303.i32[1] - v302;
            if (v305 >= 0)
            {
              v304 = v300;
            }

            v306 = vadd_s32(*&v298, *&v292);
            v307 = v226 * v293 + SLODWORD(v292) * v225.i32[0] + SHIDWORD(v292) * v225.i32[1];
            if (v307 >= 0)
            {
              v308 = v225.i32[0];
            }

            else
            {
              v308 = -v225.i32[0];
            }

            if (v307 >= 0)
            {
              v309 = v225.i32[1];
            }

            else
            {
              v309 = -v225.i32[1];
            }

            if (v307 >= 0)
            {
              v310 = v226;
            }

            else
            {
              v310 = -v226;
            }

            v953 = v308;
            v981 = v309;
            v311 = vsub_s32(v306, *&v304);
            v312 = v311.i32[0];
            v979 = v311.i32[1];
            v980 = v311.i32[0];
            v313 = (v306.i32[0] + 1) / 2;
            v978 = v313;
            v977 = (v306.i32[1] + 1) / 2;
            v314 = (LODWORD(v304) + v306.i32[0] + 1) / 3;
            v976 = v314;
            v975 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
            v974 = v221;
            v973 = v222;
            v972 = v221;
            v971 = v222;
            v970 = v221;
            v969 = v222;
            v968 = v221;
            v967 = v222;
            v315 = vabs_s32(v225);
            if (v226 >= 0)
            {
              v316 = v226;
            }

            else
            {
              v316 = -v226;
            }

            if (v315.i32[0] >= v315.i32[1] && v315.i32[0] >= v316)
            {
              v317 = &v953;
              v318 = &v974;
              v319 = v221;
              goto LABEL_444;
            }

            if (v315.i32[1] >= v316)
            {
              v317 = &v981;
              v318 = &v973;
              v319 = v222;
              v308 = v309;
LABEL_444:
              *v318 = v220;
              *v317 = v310;
              v387 = v974;
              v386 = v973;
              v310 = v308;
            }

            else
            {
              v386 = v222;
              v387 = v221;
              v319 = v220;
            }

            if (v310 >= 0)
            {
              v402 = v319;
            }

            else
            {
              v402 = -v319;
            }

            if (v310 >= 0)
            {
              v403 = v310;
            }

            else
            {
              v403 = -v310;
            }

            if (v402 < 0)
            {
              if (v386 >= 0)
              {
                v405 = v386;
              }

              else
              {
                v405 = -v386;
              }

              v406 = v405 - v206;
              v407 = v206 - v405;
              if (v387 >= 0)
              {
                v404 = v407;
              }

              else
              {
                v404 = v406;
              }

              if (v387 >= 0)
              {
                v408 = v387;
              }

              else
              {
                v408 = -v387;
              }

              if (v386 < 0)
              {
                v386 = v408 - v206;
              }

              else
              {
                v386 = v206 - v408;
              }
            }

            else
            {
              v404 = v387;
            }

            v516 = v299 + v293;
            v517 = v516 - v305;
            v974 = v404;
            v973 = v386;
            v518 = vabs_s32(v311);
            if (v516 - v305 >= 0)
            {
              v519 = v516 - v305;
            }

            else
            {
              v519 = v305 - v516;
            }

            v520 = v518.i32[0];
            if (v518.i32[0] >= v518.i32[1] && v518.i32[0] >= v519)
            {
              v525 = &v980;
              v526 = &v972;
              v524 = v221;
            }

            else
            {
              if (v518.i32[1] < v519)
              {
                v522 = v222;
                v523 = v221;
                v524 = v220;
                goto LABEL_665;
              }

              v312 = v311.i32[1];
              v525 = &v979;
              v526 = &v971;
              v520 = v518.u32[1];
              v524 = v222;
            }

            *v526 = v220;
            *v525 = v517;
            v523 = v972;
            v522 = v971;
            v519 = v520;
            v517 = v312;
LABEL_665:
            if (v517 >= 0)
            {
              v527 = v524;
            }

            else
            {
              v527 = -v524;
            }

            if (v527 < 0)
            {
              if (v522 >= 0)
              {
                v529 = v522;
              }

              else
              {
                v529 = -v522;
              }

              v530 = v529 - v206;
              v531 = v206 - v529;
              if (v523 >= 0)
              {
                v528 = v531;
              }

              else
              {
                v528 = v530;
              }

              if (v523 >= 0)
              {
                v532 = v523;
              }

              else
              {
                v532 = -v523;
              }

              if (v522 < 0)
              {
                v522 = v532 - v206;
              }

              else
              {
                v522 = v206 - v532;
              }
            }

            else
            {
              v528 = v523;
            }

            v533 = v516 + 1;
            v534 = v533 / 2;
            v972 = v528;
            v971 = v522;
            if (v313 >= 0)
            {
              v535 = (v306.i32[0] + 1) / 2;
            }

            else
            {
              v535 = (v306.i32[0] + 1) / -2;
            }

            if ((v306.i32[1] + 1) / 2 >= 0)
            {
              v536 = (v306.i32[1] + 1) / 2;
            }

            else
            {
              v536 = (v306.i32[1] + 1) / -2;
            }

            if (v534 >= 0)
            {
              v537 = v533 / 2;
            }

            else
            {
              v537 = v533 / -2;
            }

            if (v535 >= v536 && v535 >= v537)
            {
              v542 = &v978;
              v543 = &v970;
              v541 = v221;
            }

            else
            {
              if (v536 < v537)
              {
                v535 = v537;
                v539 = v222;
                v540 = v221;
                v541 = v220;
                goto LABEL_700;
              }

              v542 = &v977;
              v543 = &v969;
              v535 = v536;
              v541 = v222;
              v313 = (v306.i32[1] + 1) / 2;
            }

            *v543 = v220;
            *v542 = v534;
            v540 = v970;
            v539 = v969;
            v534 = v313;
LABEL_700:
            if (v534 < 0)
            {
              v541 = -v541;
            }

            if (v541 < 0)
            {
              if (v539 >= 0)
              {
                v545 = v539;
              }

              else
              {
                v545 = -v539;
              }

              v546 = v545 - v206;
              v547 = v206 - v545;
              if (v540 >= 0)
              {
                v544 = v547;
              }

              else
              {
                v544 = v546;
              }

              if (v540 >= 0)
              {
                v548 = v540;
              }

              else
              {
                v548 = -v540;
              }

              if (v539 < 0)
              {
                v539 = v548 - v206;
              }

              else
              {
                v539 = v206 - v548;
              }
            }

            else
            {
              v544 = v540;
            }

            v549 = (v305 + v533) / 3;
            v970 = v544;
            v969 = v539;
            if (v314 >= 0)
            {
              v550 = (LODWORD(v304) + v306.i32[0] + 1) / 3;
            }

            else
            {
              v550 = (LODWORD(v304) + v306.i32[0] + 1) / -3;
            }

            if ((HIDWORD(v304) + v306.i32[1] + 1) / 3 >= 0)
            {
              v551 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
            }

            else
            {
              v551 = (HIDWORD(v304) + v306.i32[1] + 1) / -3;
            }

            if (v549 >= 0)
            {
              v552 = v549;
            }

            else
            {
              v552 = -v549;
            }

            if (v550 >= v551 && v550 >= v552)
            {
              v554 = &v976;
              v555 = &v968;
              v552 = v550;
LABEL_732:
              *v555 = v220;
              v220 = v221;
              *v554 = v549;
              v221 = v968;
              v222 = v967;
              v549 = v314;
            }

            else if (v551 >= v552)
            {
              v554 = &v975;
              v555 = &v967;
              v552 = v551;
              v221 = v222;
              v314 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
              goto LABEL_732;
            }

            if (v549 >= 0)
            {
              v556 = v220;
            }

            else
            {
              v556 = -v220;
            }

            if (v556 < 0)
            {
              if (v222 >= 0)
              {
                v558 = v222;
              }

              else
              {
                v558 = -v222;
              }

              v559 = v558 - v206;
              v560 = v206 - v558;
              if (v221 >= 0)
              {
                v557 = v560;
              }

              else
              {
                v557 = v559;
              }

              if (v221 >= 0)
              {
                v561 = v221;
              }

              else
              {
                v561 = -v221;
              }

              if (v222 < 0)
              {
                v222 = v561 - v206;
              }

              else
              {
                v222 = v206 - v561;
              }
            }

            else
            {
              v557 = v221;
            }

            v968 = v557;
            v967 = v222;
            v562 = v953;
            v563 = v404 - v953;
            v894 = v981;
            LODWORD(v963) = v404 - v953;
            HIDWORD(v963) = v386 - v981;
            LODWORD(v964) = v402 - v403;
            v849 = v980;
            v844 = v979;
            LODWORD(v961) = v528 - v980;
            HIDWORD(v961) = v522 - v979;
            LODWORD(v962) = v527 - v519;
            v838 = v978;
            v836 = v977;
            LODWORD(v959) = v544 - v978;
            HIDWORD(v959) = v539 - v977;
            LODWORD(v960) = v541 - v535;
            v834 = v976;
            v832 = v975;
            LODWORD(v957) = v557 - v976;
            HIDWORD(v957) = v222 - v975;
            LODWORD(v958) = v556 - v552;
            v947 = v208;
            v908 = v386;
            v903 = v402;
            v885 = v519;
            v880 = v522;
            v875 = v527;
            v857 = v528;
            v841 = v557;
            if (*(v2 + 24) == 1)
            {
              v564 = *(v2 + 8);
              v565 = v955;
              v566 = *(&unk_250110628 + (((v955 + 2048) >> 10) & 0x7CLL));
              v812 = v566;
              v814 = v953;
              v567 = WORD1(v955);
              v568 = *(&unk_250110628 + (((WORD1(v955) + 2048) >> 10) & 0x7CLL));
              v826 = v535;
              v828 = v404;
              v830 = v403;
              v822 = v541;
              v824 = v539;
              v818 = v552;
              v820 = v544;
              v816 = v556;
              v569 = v568 + v566 + sub_25010F50C(&v963, v204, v564, &v999 + 1);
              v570 = *(&unk_250110628 + (((67584 - v565) >> 10) & 0x7CLL));
              v571 = WORD2(v955);
              v572 = *(&unk_250110628 + (((WORD2(v955) + 2048) >> 10) & 0x7CLL));
              v573 = v572 + v570 + sub_25010F50C(&v961, v204, v564, &v999 + 1);
              v574 = *(&unk_250110628 + (((67584 - v567) >> 10) & 0x7CLL));
              v575 = sub_25010F50C(&v959, v937, v564, &v999 + 1);
              v576 = *(&unk_250110628 + (((67584 - v571) >> 10) & 0x7CLL));
              v206 = v869;
              v577 = sub_25010F50C(&v957, v937, v564, &v999 + 1);
              v556 = v816;
              v552 = v818;
              v544 = v820;
              v541 = v822;
              v404 = v828;
              v403 = v830;
              v578 = v576 + v570;
              v2 = v942;
              v579 = v574 + v812;
              v205 = v913;
              v204 = v937;
              v580 = v579 + v575;
              v562 = v814;
              v581 = v578 + v577;
              v539 = v824;
              v535 = v826;
            }

            else if (v204 < 1)
            {
              v569 = 0;
              v573 = 0;
              v580 = 0;
              v581 = 0;
            }

            else
            {
              if (v563 < 0)
              {
                v563 = v953 - v404;
              }

              v569 = -(v204 * __clz(v563 + 1));
              if (v528 - v980 >= 0)
              {
                v582 = v528 - v980;
              }

              else
              {
                v582 = v980 - v528;
              }

              v573 = -(v204 * __clz(v582 + 1));
              if (v544 - v978 >= 0)
              {
                v583 = v544 - v978;
              }

              else
              {
                v583 = v978 - v544;
              }

              v580 = -(v204 * __clz(v583 + 1));
              if (v557 - v976 >= 0)
              {
                v584 = v557 - v976;
              }

              else
              {
                v584 = v976 - v557;
              }

              v581 = -(v204 * __clz(v584 + 1));
            }

            if (v569 > v573 || v569 > v580 || v569 > v581)
            {
              if (v573 > v580 || v573 > v581)
              {
                v208 = v947;
                if (v580 <= v581)
                {
                  v586 = 0;
                  v965 = __PAIR64__(v836, v838);
                  v585 = 1;
                  LODWORD(v966) = v535;
                  v222 = v539;
                  v588 = v541;
                  v587 = &v955 + 2;
                  LODWORD(v987) = v544;
                }

                else
                {
                  v965 = __PAIR64__(v832, v834);
                  v585 = 1;
                  LODWORD(v966) = v552;
                  v588 = v556;
                  v586 = 1;
                  v587 = &v955 + 4;
                  LODWORD(v987) = v841;
                }
              }

              else
              {
                v585 = 0;
                v965 = __PAIR64__(v844, v849);
                v586 = 1;
                LODWORD(v966) = v885;
                v222 = v880;
                v588 = v875;
                v587 = &v955 + 4;
                LODWORD(v987) = v857;
                v208 = v947;
              }

              v210 = v916;
            }

            else
            {
              v585 = 0;
              v586 = 0;
              v965 = __PAIR64__(v894, v562);
              LODWORD(v966) = v403;
              v587 = &v955 + 2;
              LODWORD(v987) = v404;
              v208 = v947;
              v210 = v916;
              v222 = v908;
              v588 = v903;
            }

            HIDWORD(v987) = v222;
            LODWORD(v988[0]) = v588;
            sub_250100B10((a1 + 890), v586, &v955);
            sub_250100B10((a1 + 890), v585, v587);
            v589 = (&v999 + 8);
            goto LABEL_844;
          }
        }

        if (v229 == -1 || v210 && ((v320 = *(a1 + 387), !*(v320 + v228)) || !*(v320 + v229)))
        {
          if (v228 == -1 || v210 && !*(*(a1 + 387) + v228))
          {
            v375 = v225.i32[0];
            v376 = v225.i32[1];
            v377 = v225.i32[1] * v222 + v225.i32[0] * v221 + v226 * v220;
            if ((v377 & 0x8000000000000000) != 0)
            {
              v375 = -v225.i32[0];
              v376 = -v225.i32[1];
              v226 = -v226;
              LODWORD(v965) = -v225.i32[0];
              HIDWORD(v965) = -v225.i32[1];
              LODWORD(v966) = v226;
            }

            sub_250100B10((a1 + 890), v377 >> 63, &v982);
            if (v375 >= 0)
            {
              v378 = v375;
            }

            else
            {
              v378 = -v375;
            }

            if (v376 >= 0)
            {
              v379 = v376;
            }

            else
            {
              v379 = -v376;
            }

            if (v226 >= 0)
            {
              v380 = v226;
            }

            else
            {
              v380 = -v226;
            }

            if (v378 >= v379 && v378 >= v380)
            {
              v382 = &v965;
              v383 = &v987;
              v376 = v375;
              v205 = v913;
            }

            else
            {
              v382 = (&v965 + 4);
              v383 = (&v987 + 4);
              v205 = v913;
              v221 = v222;
              if (v379 < v380)
              {
                goto LABEL_417;
              }
            }

            *v383 = v220;
            LODWORD(v988[0]) = v221;
            *v382 = v226;
            v220 = v221;
            v226 = v376;
            LODWORD(v966) = v376;
LABEL_417:
            v210 = v916;
            if (v226 < 0)
            {
              LODWORD(v966) = -v226;
              v220 = -v220;
              LODWORD(v988[0]) = v220;
            }

            v390 = v987;
            v391 = HIDWORD(v987);
            if (v220 < 0)
            {
              if (SHIDWORD(v987) >= 0)
              {
                v409 = HIDWORD(v987);
              }

              else
              {
                v409 = -HIDWORD(v987);
              }

              v410 = v409 - v206;
              v392 = v206 - v409;
              if (v987 < 0)
              {
                v392 = v410;
                v390 = -v987;
              }

              if ((HIDWORD(v987) & 0x80000000) != 0)
              {
                v391 = v390 - v206;
              }

              else
              {
                v391 = v206 - v390;
              }
            }

            else
            {
              v392 = v987;
            }

            v987 = __PAIR64__(v391, v392);
            v589 = &__b;
            goto LABEL_844;
          }

          v357 = *(v205 + 4 * v228 * v204);
          v358 = COERCE_DOUBLE(vsub_s32(v357, v209));
          v359 = vabd_s32(v357, v209);
          v360 = v359.i32[1];
          v361.i32[0] = v206 - v359.i32[1];
          v361.i32[1] = v206 - v359.i32[0];
          v362 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v358), vrev64_s32(vsub_s32(v359, v209)), v361));
          v363 = v361.i32[1] - v360;
          if (v363 >= 0)
          {
            v362 = v358;
          }

          v364 = LODWORD(v362);
          LODWORD(v957) = HIDWORD(v362);
          LODWORD(v959) = LODWORD(v362);
          v365 = v226 * v363 + SLODWORD(v362) * v225.i32[0] + SHIDWORD(v362) * v225.i32[1];
          if (v365 >= 0)
          {
            v366 = v225.i32[0];
          }

          else
          {
            v366 = -v225.i32[0];
          }

          if (v365 >= 0)
          {
            v367 = v225.i32[1];
          }

          else
          {
            v367 = -v225.i32[1];
          }

          if (v365 >= 0)
          {
            v368 = v226;
          }

          else
          {
            v368 = -v226;
          }

          v953 = v366;
          v981 = v367;
          v980 = v221;
          v979 = v222;
          v978 = v221;
          v977 = v222;
          v369 = vabs_s32(v225);
          if (v226 >= 0)
          {
            v370 = v226;
          }

          else
          {
            v370 = -v226;
          }

          if (v369.i32[0] >= v369.i32[1] && v369.i32[0] >= v370)
          {
            v393 = &v953;
            v394 = &v980;
            v374 = v221;
          }

          else
          {
            if (v369.i32[1] < v370)
            {
              v372 = v222;
              v373 = v221;
              v374 = v220;
              goto LABEL_493;
            }

            v393 = &v981;
            v394 = &v979;
            v374 = v222;
            v366 = v367;
          }

          *v394 = v220;
          *v393 = v368;
          v373 = v980;
          v372 = v979;
          v368 = v366;
LABEL_493:
          if (v368 >= 0)
          {
            v417 = v368;
          }

          else
          {
            v417 = -v368;
          }

          if (v368 >= 0)
          {
            v418 = v374;
          }

          else
          {
            v418 = -v374;
          }

          if (v418 < 0)
          {
            if (v372 >= 0)
            {
              v419 = v372;
            }

            else
            {
              v419 = -v372;
            }

            v420 = v419 - v206;
            v421 = v206 - v419;
            if (v373 >= 0)
            {
              v422 = v373;
            }

            else
            {
              v422 = -v373;
            }

            if (v373 >= 0)
            {
              v373 = v421;
            }

            else
            {
              v373 = v420;
            }

            v423 = v422 - v206;
            v424 = v206 - v422;
            if (v372 >= 0)
            {
              v372 = v424;
            }

            else
            {
              v372 = v423;
            }
          }

          v425 = vabs_s32(*&v362);
          if (v363 >= 0)
          {
            v426 = v363;
          }

          else
          {
            v426 = -v363;
          }

          v427 = v425.i32[0];
          if (v425.i32[0] >= v425.i32[1] && v425.i32[0] >= v426)
          {
            v429 = &v959;
            v430 = &v978;
LABEL_522:
            *v430 = v220;
            v220 = v221;
            *v429 = v363;
            v221 = v978;
            v222 = v977;
            v426 = v427;
            v363 = v364;
          }

          else if (v425.i32[1] >= v426)
          {
            v429 = &v957;
            v430 = &v977;
            v427 = v425.u32[1];
            v221 = v222;
            v364 = HIDWORD(v362);
            goto LABEL_522;
          }

          if (v363 >= 0)
          {
            v431 = v220;
          }

          else
          {
            v431 = -v220;
          }

          v945 = v208;
          if (v431 < 0)
          {
            if (v222 >= 0)
            {
              v433 = v222;
            }

            else
            {
              v433 = -v222;
            }

            v434 = v433 - v206;
            v435 = v206 - v433;
            if (v221 >= 0)
            {
              v432 = v435;
            }

            else
            {
              v432 = v434;
            }

            if (v221 >= 0)
            {
              v436 = v221;
            }

            else
            {
              v436 = -v221;
            }

            if (v222 < 0)
            {
              v222 = v436 - v206;
            }

            else
            {
              v222 = v206 - v436;
            }
          }

          else
          {
            v432 = v221;
          }

          v616 = v953;
          v617 = v373 - v953;
          v618 = v981;
          LODWORD(v963) = v373 - v953;
          HIDWORD(v963) = v372 - v981;
          LODWORD(v964) = v418 - v417;
          v619 = v959;
          v620 = v432 - v959;
          v621 = v957;
          LODWORD(v961) = v432 - v959;
          HIDWORD(v961) = v222 - v957;
          LODWORD(v962) = v431 - v426;
          if (*(v942 + 24) == 1)
          {
            v622 = *(v942 + 8);
            v623 = v983;
            v859 = *(&unk_250110628 + (((v983 + 2048) >> 10) & 0x7CLL));
            v887 = v417;
            v910 = v372;
            v905 = v373;
            v896 = v418;
            v882 = v431;
            v877 = v432;
            v851 = sub_25010F50C(&v963, v937, v622, &__b);
            v624 = *(&unk_250110628 + (((67584 - v623) >> 10) & 0x7CLL));
            v206 = v869;
            v625 = sub_25010F50C(&v961, v937, v622, &__b);
            v432 = v877;
            v431 = v882;
            v418 = v896;
            v373 = v905;
            v372 = v910;
            v626 = v851 + v859;
            v627 = v625 + v624;
            v417 = v887;
            goto LABEL_840;
          }

          if (v937 < 1)
          {
            v628 = 0;
          }

          else
          {
            if (v617 < 0)
            {
              v617 = v953 - v373;
            }

            v626 = -(v937 * __clz(v617 + 1));
            if (v620 < 0)
            {
              v620 = v959 - v432;
            }

            v627 = -(v937 * __clz(v620 + 1));
LABEL_840:
            if (v626 > v627)
            {
              v616 = v619;
              v618 = v621;
              v417 = v426;
              v373 = v432;
              v372 = v222;
              v418 = v431;
            }

            v628 = v626 > v627;
          }

          v965 = __PAIR64__(v618, v616);
          LODWORD(v966) = v417;
          v987 = __PAIR64__(v372, v373);
          LODWORD(v988[0]) = v418;
          sub_250100B10((a1 + 890), v628, &v983);
          v589 = &__b;
          v2 = v942;
          v208 = v945;
          v204 = v937;
          v205 = v913;
          v210 = v916;
          goto LABEL_844;
        }

        v321 = (v205 + 4 * v228 * v204);
        v322 = (v205 + 4 * v229 * v204);
        v323 = *v321 - v206;
        v324 = v321[1] - v206;
        if (v323 >= 0)
        {
          v325 = v323;
        }

        else
        {
          v325 = -v323;
        }

        if (v324 >= 0)
        {
          v326 = v324;
        }

        else
        {
          v326 = -v324;
        }

        v327 = v206 - v325;
        v328 = v326 - v206;
        if (v323 >= 0)
        {
          v328 = v206 - v326;
        }

        v329 = v325 - v206;
        if (v324 >= 0)
        {
          v330 = v327;
        }

        else
        {
          v330 = v329;
        }

        v331 = v327 - v326;
        if (v327 - v326 < 0)
        {
          v324 = v330;
        }

        else
        {
          v328 = v323;
        }

        v332 = *v322 - v206;
        v333 = v322[1] - v206;
        if (v332 >= 0)
        {
          v334 = v332;
        }

        else
        {
          v334 = -v332;
        }

        if (v333 >= 0)
        {
          v335 = v333;
        }

        else
        {
          v335 = -v333;
        }

        v336 = v206 - v334;
        v337 = v335 - v206;
        if (v332 >= 0)
        {
          v337 = v206 - v335;
        }

        v338 = v334 - v206;
        if (v333 >= 0)
        {
          v339 = v336;
        }

        else
        {
          v339 = v338;
        }

        v341 = v336 - v335;
        v340 = v336 - v335 < 0;
        if (v336 - v335 < 0)
        {
          v342 = v337;
        }

        else
        {
          v342 = v332;
        }

        if (v340)
        {
          v333 = v339;
        }

        v343 = v226 * v331 + v328 * v225.i32[0] + v324 * v225.i32[1];
        if (v343 >= 0)
        {
          v344 = v225.i32[0];
        }

        else
        {
          v344 = -v225.i32[0];
        }

        if (v343 >= 0)
        {
          v345 = v225.i32[1];
        }

        else
        {
          v345 = -v225.i32[1];
        }

        if (v343 >= 0)
        {
          v346 = v226;
        }

        else
        {
          v346 = -v226;
        }

        LODWORD(v959) = v344;
        LODWORD(v957) = v345;
        v347 = v324 + v333 + 1;
        v348 = (v328 + v342 + 1) / 2;
        v349 = v347;
        v350 = v347 / 2;
        v953 = v348;
        v981 = v349 / 2;
        v980 = v221;
        v979 = v222;
        v978 = v221;
        v977 = v222;
        v351 = vabs_s32(v225);
        if (v226 >= 0)
        {
          v352 = v226;
        }

        else
        {
          v352 = -v226;
        }

        if (v351.i32[0] >= v351.i32[1] && v351.i32[0] >= v352)
        {
          v388 = &v959;
          v389 = &v980;
          v356 = v221;
        }

        else
        {
          if (v351.i32[1] < v352)
          {
            v354 = v222;
            v355 = v221;
            v356 = v220;
            goto LABEL_473;
          }

          v388 = &v957;
          v389 = &v979;
          v356 = v222;
          v344 = v345;
        }

        *v389 = v220;
        *v388 = v346;
        v355 = v980;
        v354 = v979;
        v346 = v344;
LABEL_473:
        if (v346 >= 0)
        {
          v411 = v346;
        }

        else
        {
          v411 = -v346;
        }

        if (v346 < 0)
        {
          v356 = -v356;
        }

        if (v356 < 0)
        {
          if (v354 >= 0)
          {
            v413 = v354;
          }

          else
          {
            v413 = -v354;
          }

          v414 = v413 - v206;
          v415 = v206 - v413;
          if (v355 >= 0)
          {
            v412 = v415;
          }

          else
          {
            v412 = v414;
          }

          if (v355 >= 0)
          {
            v416 = v355;
          }

          else
          {
            v416 = -v355;
          }

          if (v354 < 0)
          {
            v354 = v416 - v206;
          }

          else
          {
            v354 = v206 - v416;
          }
        }

        else
        {
          v412 = v355;
        }

        v590 = (v331 + v341 + 1) / 2;
        if (v348 >= 0)
        {
          v591 = v348;
        }

        else
        {
          v591 = -v348;
        }

        if (v350 >= 0)
        {
          v592 = v350;
        }

        else
        {
          v592 = -v350;
        }

        if (v590 >= 0)
        {
          v593 = v590;
        }

        else
        {
          v593 = -v590;
        }

        if (v591 >= v592 && v591 >= v593)
        {
          v595 = &v953;
          v596 = &v978;
          v593 = v591;
        }

        else
        {
          if (v592 < v593)
          {
            goto LABEL_799;
          }

          v595 = &v981;
          v596 = &v977;
          v593 = v592;
          v221 = v222;
          v348 = v350;
        }

        *v596 = v220;
        v220 = v221;
        *v595 = v590;
        v221 = v978;
        v222 = v977;
        v590 = v348;
LABEL_799:
        if (v590 >= 0)
        {
          v597 = v220;
        }

        else
        {
          v597 = -v220;
        }

        v948 = v208;
        if (v597 < 0)
        {
          if (v222 >= 0)
          {
            v599 = v222;
          }

          else
          {
            v599 = -v222;
          }

          v600 = v599 - v206;
          v601 = v206 - v599;
          if (v221 >= 0)
          {
            v598 = v601;
          }

          else
          {
            v598 = v600;
          }

          if (v221 >= 0)
          {
            v602 = v221;
          }

          else
          {
            v602 = -v221;
          }

          if (v222 < 0)
          {
            v222 = v602 - v206;
          }

          else
          {
            v222 = v206 - v602;
          }
        }

        else
        {
          v598 = v221;
        }

        v603 = v959;
        v604 = v412 - v959;
        v605 = v957;
        LODWORD(v963) = v412 - v959;
        HIDWORD(v963) = v354 - v957;
        LODWORD(v964) = v356 - v411;
        v606 = v953;
        v607 = v598 - v953;
        v608 = v981;
        LODWORD(v961) = v598 - v953;
        HIDWORD(v961) = v222 - v981;
        LODWORD(v962) = v597 - v593;
        if (*(v942 + 24) == 1)
        {
          v609 = *(v942 + 8);
          v610 = v983;
          v858 = *(&unk_250110628 + (((v983 + 2048) >> 10) & 0x7CLL));
          v886 = v412;
          v881 = v593;
          v909 = v354;
          v904 = v356;
          v895 = v411;
          v876 = v598;
          v850 = sub_25010F50C(&v963, v937, v609, &__b);
          v611 = *(&unk_250110628 + (((67584 - v610) >> 10) & 0x7CLL));
          v206 = v869;
          v210 = v916;
          v612 = sub_25010F50C(&v961, v937, v609, &__b);
          v598 = v876;
          v593 = v881;
          v411 = v895;
          v356 = v904;
          v354 = v909;
          v613 = v850 + v858;
          v614 = v612 + v611;
          v412 = v886;
LABEL_824:
          if (v613 > v614)
          {
            v603 = v606;
            v605 = v608;
            v411 = v593;
            v412 = v598;
            v354 = v222;
            v356 = v597;
          }

          v615 = v613 > v614;
          goto LABEL_827;
        }

        if (v937 >= 1)
        {
          if (v604 < 0)
          {
            v604 = v959 - v412;
          }

          v613 = -(v937 * __clz(v604 + 1));
          if (v607 < 0)
          {
            v607 = v953 - v598;
          }

          v614 = -(v937 * __clz(v607 + 1));
          goto LABEL_824;
        }

        v615 = 0;
LABEL_827:
        v965 = __PAIR64__(v605, v603);
        LODWORD(v966) = v411;
        v987 = __PAIR64__(v354, v412);
        LODWORD(v988[0]) = v356;
        sub_250100B10((a1 + 890), v615, &v983);
        v589 = &__b;
        v2 = v942;
        v208 = v948;
        v204 = v937;
        v205 = v913;
LABEL_844:
        sub_250100C84(a1, &v987, &v965, v204, a1 + 375, *(v2 + 8), v589);
LABEL_845:
        v208 += 4;
      }

      while (v930 != v208);
    }

    v786 = 360;
    do
    {
      v787 = &v993[v786 / 8 - 2];
      v788 = *(&__p + v786);
      if (v788)
      {
        *(v787 - 2) = v788;
        operator delete(v788);
      }

      v789 = *(v787 - 6);
      if (v789)
      {
        v988[v786 / 8] = v789;
        operator delete(v789);
      }

      v790 = &v993[v786 / 8 - 2];
      v791 = *(&v979 + v786);
      if (v791)
      {
        *(v790 - 8) = v791;
        operator delete(v791);
      }

      v792 = *(v790 - 12);
      if (v792)
      {
        *(&v975 + v786) = v792;
        operator delete(v792);
      }

      v793 = *(v787 - 15);
      if (v793)
      {
        *(&v969 + v786) = v793;
        operator delete(v793);
      }

      v786 -= 120;
    }

    while (v786);
LABEL_1108:
    if (__p)
    {
      v990 = __p;
      operator delete(__p);
    }

    goto LABEL_1167;
  }

LABEL_1168:
  v810 = *MEMORY[0x277D85DE8];
  return result;
}