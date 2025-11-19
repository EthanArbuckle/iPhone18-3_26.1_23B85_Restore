void sub_1B5D91894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 153) < 0)
  {
    operator delete(*(v40 - 176));
  }

  __p = a13;
  sub_1B5D8EF64(&__p);
  sub_1B5D7FAD8(&a19);
  a19 = &a29;
  sub_1B5D4BCF4(&a19);
  a19 = &a32;
  sub_1B5D4BCF4(&a19);
  _Unwind_Resume(a1);
}

_BYTE *sub_1B5D919F4(uint64_t a1, __int128 *a2, double a3)
{
  v4 = *(a1 + 8);
  *v4 = a3;
  result = (v4 + 8);
  if (*(a2 + 23) < 0)
  {
    result = sub_1B5CE4AC4(result, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v4 + 24) = *(a2 + 2);
    *result = v6;
  }

  *(a1 + 8) = v4 + 32;
  return result;
}

void *sub_1B5D91A58(uint64_t a1, void *a2, __int128 *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1B5D04FA0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v23 = a1;
  if (v7)
  {
    sub_1B5D92814(v7);
  }

  v8 = (32 * v3);
  v19 = 0;
  v20 = v8;
  v9 = 0;
  v21 = v8;
  v22 = 0;
  *v8 = *a2;
  v10 = v8 + 1;
  if (*(a3 + 23) < 0)
  {
    sub_1B5CE4AC4(v10, *a3, *(a3 + 1));
    v8 = v20;
    v12 = v21;
    v9 = v22;
  }

  else
  {
    v11 = *a3;
    v8[3] = *(a3 + 2);
    *v10 = v11;
    v12 = v8;
  }

  v13 = v12 + 4;
  v14 = *(a1 + 8) - *a1;
  v15 = v8 - v14;
  memcpy(v8 - v14, *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v9;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  sub_1B5D9285C(&v19);
  return v13;
}

void sub_1B5D91B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D9285C(va);
  _Unwind_Resume(a1);
}

void sub_1B5D91B80(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v121 = *MEMORY[0x1E69E9840];
LABEL_2:
  v115 = a2 - 32;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      goto LABEL_133;
    }

    if (v9 == 2)
    {
      v44 = sub_1B5D928C0(v115, a1);
      if (v44 == 1)
      {
        v45 = *a1;
        *a1 = *(a2 - 32);
        *(a2 - 32) = v45;
        v46 = *(a1 + 8);
        *&v117[16] = *(a1 + 24);
        *v117 = v46;
        v47 = *(a2 - 24);
        *(a1 + 24) = *(a2 - 8);
        *(a1 + 8) = v47;
        v48 = *v117;
        *(a2 - 8) = *&v117[16];
        *(a2 - 24) = v48;
      }

LABEL_133:
      v114 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_10:
    if (v9 <= 23)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v60 = a1 + 32;
          if (a1 + 32 != a2)
          {
            v61 = 0;
            v62 = a1;
            do
            {
              v63 = v60;
              if (sub_1B5D928C0(v60, v62) == 1)
              {
                *v117 = *v63;
                v118 = *(v62 + 56);
                *&v117[8] = *(v62 + 40);
                *(v62 + 48) = 0;
                *(v62 + 56) = 0;
                *(v62 + 40) = 0;
                v64 = *(v63 + 31) < 0;
                v65 = v61;
                while (1)
                {
                  v66 = a1 + v65;
                  *(a1 + v65 + 32) = *(a1 + v65);
                  if (v64)
                  {
                    operator delete(*(v66 + 40));
                  }

                  *(v66 + 40) = *(v66 + 8);
                  *(v66 + 56) = *(v66 + 24);
                  *(v66 + 31) = 0;
                  *(v66 + 8) = 0;
                  if (!v65)
                  {
                    break;
                  }

                  v65 -= 32;
                  v67 = a1 + v65;
                  v68 = sub_1B5D928C0(v117, a1 + v65);
                  v64 = 0;
                  if (v68 != 1)
                  {
                    v69 = v67 + 40;
                    *(v67 + 32) = *v117;
                    goto LABEL_89;
                  }
                }

                v69 = v66 + 8;
                *a1 = *v117;
LABEL_89:
                v70 = *&v117[8];
                *(v69 + 16) = v118;
                *v69 = v70;
              }

              v60 = v63 + 32;
              v61 += 32;
              v62 = v63;
            }

            while (v63 + 32 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v106 = a1 + 32;
        if (a1 + 32 != a2)
        {
          v107 = a1 + 40;
          do
          {
            v108 = v106;
            if (sub_1B5D928C0(v106, a1) == 1)
            {
              *v117 = *v108;
              v118 = *(a1 + 56);
              *&v117[8] = *(a1 + 40);
              *(a1 + 48) = 0;
              *(a1 + 56) = 0;
              *(a1 + 40) = 0;
              v109 = *(v108 + 31) < 0;
              v110 = v107;
              do
              {
                *(v110 - 8) = *(v110 - 40);
                if (v109)
                {
                  operator delete(*v110);
                }

                *v110 = *(v110 - 32);
                *(v110 + 16) = *(v110 - 16);
                *(v110 - 9) = 0;
                *(v110 - 32) = 0;
                v112 = sub_1B5D928C0(v117, v110 - 72);
                v109 = 0;
                v111 = v110 - 32;
                v110 -= 32;
              }

              while (v112 == 1);
              *(v111 - 8) = *v117;
              v113 = *&v117[8];
              *(v111 + 16) = v118;
              *v111 = v113;
            }

            v106 = v108 + 32;
            v107 += 32;
            a1 = v108;
          }

          while (v108 + 32 != a2);
        }
      }

      goto LABEL_133;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v71 = v10 >> 1;
        v72 = v10 >> 1;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = a1 + 32 * v74;
            if (2 * v72 + 2 < v9 && sub_1B5D928C0(a1 + 32 * v74, v75 + 32) == 1)
            {
              v75 += 32;
              v74 = 2 * v73 + 2;
            }

            v76 = a1 + 32 * v73;
            if (sub_1B5D928C0(v75, v76) != 1)
            {
              *v117 = *v76;
              v77 = *(v76 + 8);
              v118 = *(v76 + 24);
              *&v117[8] = v77;
              *(v76 + 16) = 0;
              *(v76 + 24) = 0;
              *(v76 + 8) = 0;
              do
              {
                v78 = v75;
                *v76 = *v75;
                v79 = *(v75 + 8);
                *(v76 + 24) = *(v75 + 24);
                *(v76 + 8) = v79;
                *(v75 + 31) = 0;
                *(v75 + 8) = 0;
                if (v71 < v74)
                {
                  break;
                }

                v80 = (2 * v74) | 1;
                v75 = a1 + 32 * v80;
                v81 = 2 * v74 + 2;
                if (v81 < v9 && sub_1B5D928C0(a1 + 32 * v80, v75 + 32) == 1)
                {
                  v75 += 32;
                  v80 = v81;
                }

                v76 = v78;
                v74 = v80;
              }

              while (sub_1B5D928C0(v75, v117) != 1);
              *v78 = *v117;
              v82 = *&v117[8];
              *(v78 + 24) = v118;
              *(v78 + 8) = v82;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        do
        {
          if (v9 >= 2)
          {
            v83 = 0;
            v84 = *a1;
            v86 = *(a1 + 8);
            v85 = *(a1 + 16);
            *(&v119 + 7) = *(a1 + 23);
            *&v119 = v85;
            v116 = *(a1 + 31);
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            *(a1 + 8) = 0;
            v87 = a1;
            do
            {
              v88 = v87 + 32 * v83;
              v89 = v88 + 32;
              v90 = (2 * v83) | 1;
              v91 = 2 * v83 + 2;
              if (v91 < v9)
              {
                v92 = v88 + 64;
                if (sub_1B5D928C0(v88 + 32, v88 + 64) == 1)
                {
                  v89 = v92;
                  v90 = v91;
                }
              }

              *v87 = *v89;
              v93 = *(v89 + 8);
              *(v87 + 24) = *(v89 + 24);
              *(v87 + 8) = v93;
              *(v89 + 31) = 0;
              *(v89 + 8) = 0;
              v87 = v89;
              v83 = v90;
            }

            while (v90 <= ((v9 - 2) >> 1));
            if (v89 == a2 - 32)
            {
              *v89 = v84;
              v105 = v119;
              *(v89 + 8) = v86;
              *(v89 + 16) = v105;
              *(v89 + 23) = *(&v119 + 7);
              *(v89 + 31) = v116;
            }

            else
            {
              *v89 = *(a2 - 32);
              v94 = *(a2 - 24);
              *(v89 + 24) = *(a2 - 8);
              *(v89 + 8) = v94;
              *(a2 - 32) = v84;
              *(a2 - 24) = v86;
              v95 = v119;
              *(a2 - 9) = *(&v119 + 7);
              *(a2 - 16) = v95;
              *(a2 - 1) = v116;
              v96 = (v89 - a1 + 32) >> 5;
              v97 = v96 < 2;
              v98 = v96 - 2;
              if (!v97)
              {
                v99 = v98 >> 1;
                v100 = a1 + 32 * (v98 >> 1);
                if (sub_1B5D928C0(v100, v89) == 1)
                {
                  *v117 = *v89;
                  v101 = *(v89 + 24);
                  *&v117[8] = *(v89 + 8);
                  v118 = v101;
                  *(v89 + 16) = 0;
                  *(v89 + 24) = 0;
                  *(v89 + 8) = 0;
                  do
                  {
                    v102 = v100;
                    *v89 = *v100;
                    v103 = *(v100 + 8);
                    *(v89 + 24) = *(v100 + 24);
                    *(v89 + 8) = v103;
                    *(v100 + 31) = 0;
                    *(v100 + 8) = 0;
                    if (!v99)
                    {
                      break;
                    }

                    v99 = (v99 - 1) >> 1;
                    v100 = a1 + 32 * v99;
                    v89 = v102;
                  }

                  while (sub_1B5D928C0(v100, v117) == 1);
                  *v102 = *v117;
                  v104 = *&v117[8];
                  *(v102 + 24) = v118;
                  *(v102 + 8) = v104;
                }
              }
            }
          }

          a2 -= 32;
          v97 = v9-- > 2;
        }

        while (v97);
      }

      goto LABEL_133;
    }

    v11 = v9 >> 1;
    v12 = a1 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      sub_1B5D92918(a1 + 32 * (v9 >> 1), a1, v115);
    }

    else
    {
      sub_1B5D92918(a1, a1 + 32 * (v9 >> 1), v115);
      sub_1B5D92918(a1 + 32, v12 - 32, a2 - 64);
      sub_1B5D92918(a1 + 64, a1 + 32 + 32 * v11, a2 - 96);
      sub_1B5D92918(v12 - 32, a1 + 32 * (v9 >> 1), a1 + 32 + 32 * v11);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
      v14 = *(a1 + 8);
      *&v117[16] = *(a1 + 24);
      *v117 = v14;
      v15 = *(v12 + 8);
      *(a1 + 24) = *(v12 + 24);
      *(a1 + 8) = v15;
      v16 = *v117;
      *(v12 + 24) = *&v117[16];
      *(v12 + 8) = v16;
    }

    --a3;
    if ((a4 & 1) != 0 || sub_1B5D928C0(a1 - 32, a1) == 1)
    {
      *v117 = *a1;
      v17 = *(a1 + 24);
      *&v117[8] = *(a1 + 8);
      v118 = v17;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v18 = a1;
      do
      {
        v19 = v18;
        v18 += 32;
      }

      while (sub_1B5D928C0(v18, v117) == 1);
      v20 = a2;
      if (v19 == a1)
      {
        v20 = a2;
        do
        {
          if (v18 >= v20)
          {
            break;
          }

          v20 -= 32;
        }

        while (sub_1B5D928C0(v20, v117) != 1);
      }

      else
      {
        do
        {
          v20 -= 32;
        }

        while (sub_1B5D928C0(v20, v117) != 1);
      }

      v8 = v18;
      if (v18 < v20)
      {
        v21 = v20;
        do
        {
          v22 = *v8;
          *v8 = *v21;
          *v21 = v22;
          v23 = *(v8 + 8);
          v120 = *(v8 + 24);
          v119 = v23;
          v24 = *(v21 + 8);
          *(v8 + 24) = *(v21 + 24);
          *(v8 + 8) = v24;
          v25 = v119;
          *(v21 + 24) = v120;
          *(v21 + 8) = v25;
          do
          {
            v8 += 32;
          }

          while (sub_1B5D928C0(v8, v117) == 1);
          do
          {
            v21 -= 32;
          }

          while (sub_1B5D928C0(v21, v117) != 1);
        }

        while (v8 < v21);
      }

      if (v8 - 32 == a1)
      {
        v28 = *(v8 - 1);
        *(v8 - 32) = *v117;
        v26 = v8 - 24;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      else
      {
        *a1 = *(v8 - 32);
        if (*(a1 + 31) < 0)
        {
          operator delete(*(a1 + 8));
        }

        v26 = v8 - 24;
        v27 = *(v8 - 24);
        *(a1 + 24) = *(v8 - 8);
        *(a1 + 8) = v27;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *(v8 - 32) = *v117;
      }

      v29 = *&v117[8];
      *(v26 + 16) = v118;
      *v26 = v29;
      if (v18 < v20)
      {
        goto LABEL_40;
      }

      v30 = sub_1B5D92CF8(a1, v8 - 32);
      if (sub_1B5D92CF8(v8, a2))
      {
        a2 = v8 - 32;
        if (!v30)
        {
          goto LABEL_2;
        }

        goto LABEL_133;
      }

      if (!v30)
      {
LABEL_40:
        sub_1B5D91B80(a1, v8 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      *v117 = *a1;
      v31 = *(a1 + 24);
      *&v117[8] = *(a1 + 8);
      v118 = v31;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      if (sub_1B5D928C0(v117, v115) == 1)
      {
        v8 = a1;
        do
        {
          v8 += 32;
        }

        while (sub_1B5D928C0(v117, v8) != 1);
      }

      else
      {
        v32 = a1 + 32;
        do
        {
          v8 = v32;
          if (v32 >= a2)
          {
            break;
          }

          v33 = sub_1B5D928C0(v117, v32);
          v32 = v8 + 32;
        }

        while (v33 != 1);
      }

      v34 = a2;
      if (v8 < a2)
      {
        v34 = a2;
        do
        {
          v34 -= 32;
        }

        while (sub_1B5D928C0(v117, v34) == 1);
      }

      while (v8 < v34)
      {
        v35 = *v8;
        *v8 = *v34;
        *v34 = v35;
        v36 = *(v8 + 8);
        v120 = *(v8 + 24);
        v119 = v36;
        v37 = *(v34 + 8);
        *(v8 + 24) = *(v34 + 24);
        *(v8 + 8) = v37;
        v38 = v119;
        *(v34 + 24) = v120;
        *(v34 + 8) = v38;
        do
        {
          v8 += 32;
        }

        while (sub_1B5D928C0(v117, v8) != 1);
        do
        {
          v34 -= 32;
        }

        while (sub_1B5D928C0(v117, v34) == 1);
      }

      if (v8 - 32 == a1)
      {
        v41 = *(v8 - 1);
        *(v8 - 32) = *v117;
        v39 = v8 - 24;
        if (v41 < 0)
        {
          operator delete(*v39);
        }
      }

      else
      {
        *a1 = *(v8 - 32);
        if (*(a1 + 31) < 0)
        {
          operator delete(*(a1 + 8));
        }

        v39 = v8 - 24;
        v40 = *(v8 - 24);
        *(a1 + 24) = *(v8 - 8);
        *(a1 + 8) = v40;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *(v8 - 32) = *v117;
      }

      a4 = 0;
      v42 = *&v117[8];
      *(v39 + 16) = v118;
      *v39 = v42;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      sub_1B5D92918(a1, a1 + 32, a1 + 64);
      if (sub_1B5D928C0(v115, a1 + 64) == 1)
      {
        v50 = *(a1 + 64);
        *(a1 + 64) = *(a2 - 32);
        *(a2 - 32) = v50;
        *v117 = *(a1 + 72);
        v51 = *v117;
        *&v117[16] = *(a1 + 88);
        v52 = *&v117[16];
        v53 = *(a2 - 8);
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v53;
        *(a2 - 8) = v52;
        *(a2 - 24) = v51;
        if (sub_1B5D928C0(a1 + 64, a1 + 32) == 1)
        {
          v54 = *(a1 + 32);
          v55 = *(a1 + 64);
          *(a1 + 32) = v55;
          *(a1 + 64) = v54;
          v56 = *(a1 + 56);
          v57 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 72);
          *(a1 + 56) = *(a1 + 88);
          *(a1 + 72) = v57;
          *(a1 + 88) = v56;
          if (sub_1B5D928C0(a1 + 32, a1) == 1)
          {
            v58 = *a1;
            *a1 = v55;
            *(a1 + 32) = v58;
            v59 = *(a1 + 24);
            *v117 = *(a1 + 8);
            *&v117[16] = v59;
            *(a1 + 24) = *(a1 + 56);
            *(a1 + 8) = *(a1 + 40);
            *(a1 + 40) = *v117;
            *(a1 + 56) = *&v117[16];
          }
        }
      }

      goto LABEL_133;
    }

    if (v9 == 5)
    {
      v43 = *MEMORY[0x1E69E9840];

      sub_1B5D92AB4(a1, a1 + 32, a1 + 64, a1 + 96, v115);
      return;
    }

    goto LABEL_10;
  }

  v49 = *MEMORY[0x1E69E9840];

  sub_1B5D92918(a1, a1 + 32, v115);
}

void sub_1B5D92814(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D9285C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D928C0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    LODWORD(v2) = -127;
  }

  if (*a1 > *a2)
  {
    LODWORD(v2) = 1;
  }

  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = v2;
  }

  if (!v2)
  {
    v3 = sub_1B5D03480((a1 + 8), (a2 + 8));
    LODWORD(v2) = (v3 >> 7) | 1;
    if (v3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

__n128 sub_1B5D92918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5D928C0(a2, a1);
  v7 = sub_1B5D928C0(a3, a2);
  if (v6 == 1)
  {
    v9 = (a1 + 8);
    v10 = *a1;
    if (v7 == 1)
    {
      *a1 = *a3;
      *a3 = v10;
      v11 = *(a1 + 24);
      result = *v9;
      v12 = *(a3 + 24);
      *v9 = *(a3 + 8);
      *(a1 + 24) = v12;
      *(a3 + 8) = result;
      *(a3 + 24) = v11;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      v20 = *(a1 + 24);
      v21 = *v9;
      v22 = *(a2 + 24);
      *v9 = *(a2 + 8);
      *(a1 + 24) = v22;
      *(a2 + 8) = v21;
      *(a2 + 24) = v20;
      if (sub_1B5D928C0(a3, a2) == 1)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        v24 = *(a2 + 24);
        result = *(a2 + 8);
        v25 = *(a3 + 24);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = v25;
        *(a3 + 8) = result;
        *(a3 + 24) = v24;
      }
    }
  }

  else if (v7 == 1)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v14 = *(a2 + 24);
    v15 = *(a2 + 8);
    v16 = *(a3 + 24);
    *(a2 + 8) = *(a3 + 8);
    *(a2 + 24) = v16;
    *(a3 + 8) = v15;
    *(a3 + 24) = v14;
    if (sub_1B5D928C0(a2, a1) == 1)
    {
      v17 = *a1;
      *a1 = *a2;
      *a2 = v17;
      v18 = *(a1 + 24);
      result = *(a1 + 8);
      v19 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v19;
      *(a2 + 8) = result;
      *(a2 + 24) = v18;
    }
  }

  return result;
}

__n128 sub_1B5D92AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B5D92918(a1, a2, a3);
  if (sub_1B5D928C0(a4, a3) == 1)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *(a3 + 24);
    v12 = *(a3 + 8);
    v13 = *(a4 + 24);
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 24) = v13;
    *(a4 + 8) = v12;
    *(a4 + 24) = v11;
    if (sub_1B5D928C0(a3, a2) == 1)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *(a2 + 24);
      v16 = *(a2 + 8);
      v17 = *(a3 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = v17;
      *(a3 + 8) = v16;
      *(a3 + 24) = v15;
      if (sub_1B5D928C0(a2, a1) == 1)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
        v19 = *(a1 + 24);
        v20 = *(a1 + 8);
        v21 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v21;
        *(a2 + 8) = v20;
        *(a2 + 24) = v19;
      }
    }
  }

  if (sub_1B5D928C0(a5, a4) == 1)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    v24 = *(a4 + 24);
    v25 = *(a4 + 8);
    v26 = *(a5 + 24);
    *(a4 + 8) = *(a5 + 8);
    *(a4 + 24) = v26;
    *(a5 + 8) = v25;
    *(a5 + 24) = v24;
    if (sub_1B5D928C0(a4, a3) == 1)
    {
      v27 = *a3;
      *a3 = *a4;
      *a4 = v27;
      v28 = *(a3 + 24);
      v29 = *(a3 + 8);
      v30 = *(a4 + 24);
      *(a3 + 8) = *(a4 + 8);
      *(a3 + 24) = v30;
      *(a4 + 8) = v29;
      *(a4 + 24) = v28;
      if (sub_1B5D928C0(a3, a2) == 1)
      {
        v31 = *a2;
        *a2 = *a3;
        *a3 = v31;
        v32 = *(a2 + 24);
        v33 = *(a2 + 8);
        v34 = *(a3 + 24);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = v34;
        *(a3 + 8) = v33;
        *(a3 + 24) = v32;
        if (sub_1B5D928C0(a2, a1) == 1)
        {
          v35 = *a1;
          *a1 = *a2;
          *a2 = v35;
          v36 = *(a1 + 24);
          result = *(a1 + 8);
          v37 = *(a2 + 24);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 24) = v37;
          *(a2 + 8) = result;
          *(a2 + 24) = v36;
        }
      }
    }
  }

  return result;
}

BOOL sub_1B5D92CF8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1B5D92918(a1, a1 + 32, a2 - 32);
        break;
      case 4:
        sub_1B5D92918(a1, a1 + 32, a1 + 64);
        if (sub_1B5D928C0(a2 - 32, a1 + 64) == 1)
        {
          v16 = *(a1 + 64);
          *(a1 + 64) = *(a2 - 32);
          *(a2 - 32) = v16;
          v17 = *(a1 + 88);
          v18 = *(a1 + 72);
          v19 = *(a2 - 8);
          *(a1 + 72) = *(a2 - 24);
          *(a1 + 88) = v19;
          *(a2 - 24) = v18;
          *(a2 - 8) = v17;
          if (sub_1B5D928C0(a1 + 64, a1 + 32) == 1)
          {
            v20 = *(a1 + 32);
            v21 = *(a1 + 64);
            *(a1 + 32) = v21;
            *(a1 + 64) = v20;
            v22 = *(a1 + 56);
            v23 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 72);
            *(a1 + 56) = *(a1 + 88);
            *(a1 + 72) = v23;
            *(a1 + 88) = v22;
            if (sub_1B5D928C0(a1 + 32, a1) == 1)
            {
              v24 = *a1;
              *a1 = v21;
              *(a1 + 32) = v24;
              v25 = *(a1 + 24);
              v26 = *(a1 + 8);
              *(a1 + 8) = *(a1 + 40);
              *(a1 + 24) = *(a1 + 56);
              *(a1 + 40) = v26;
              result = 1;
              *(a1 + 56) = v25;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_1B5D92AB4(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (sub_1B5D928C0(a2 - 32, a1) == 1)
    {
      v5 = *a1;
      *a1 = *(a2 - 32);
      *(a2 - 32) = v5;
      v6 = *(a1 + 24);
      v7 = *(a1 + 8);
      v8 = *(a2 - 8);
      *(a1 + 8) = *(a2 - 24);
      *(a1 + 24) = v8;
      *(a2 - 24) = v7;
      *(a2 - 8) = v6;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 64;
  sub_1B5D92918(a1, a1 + 32, a1 + 64);
  v10 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (sub_1B5D928C0(v10, v9) == 1)
    {
      v28 = *v10;
      v29 = *(v10 + 8);
      v30 = *(v10 + 24);
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v13 = v11;
      while (1)
      {
        v14 = a1 + v13;
        *(v14 + 96) = *(a1 + v13 + 64);
        *(v14 + 104) = *(a1 + v13 + 72);
        *(v14 + 120) = *(a1 + v13 + 88);
        *(v14 + 95) = 0;
        *(v14 + 72) = 0;
        if (v13 == -64)
        {
          break;
        }

        v13 -= 32;
        if (sub_1B5D928C0(&v28, v14 + 32) != 1)
        {
          v15 = a1 + v13 + 104;
          *(a1 + v13 + 96) = v28;
          goto LABEL_19;
        }
      }

      v15 = v14 + 72;
      *a1 = v28;
LABEL_19:
      *v15 = v29;
      *(v15 + 16) = v30;
      if (++v12 == 8)
      {
        return v10 + 32 == a2;
      }
    }

    v9 = v10;
    v11 += 32;
    v10 += 32;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

double sub_1B5D93000(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = *(a2 + 104);
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

float sub_1B5D93028(char *a1, uint64_t **a2, int a3)
{
  if (*a1 < 0)
  {
    return 0.0;
  }

  v4 = *a1 + 1;
  v6 = a1 + 8;
  v5 = *(a1 + 2);
  if ((HIBYTE(v5) & 3) >= v4)
  {
    result = 1.0;
    if (a1[v4 + 24] == a3)
    {
LABEL_9:
      *a1 = v4;
      return result;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 20) & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v5 & 0xFFFFFF) != 0)
  {
    v7 = **a2;
    v8 = v7 + (*&v5 & 0xFFFFFFLL);
  }

  else
  {
    if (*a1 || v5 || a1[24])
    {
      goto LABEL_8;
    }

    v8 = 0;
    v7 = **a2;
  }

  v10 = &sub_1B5D931A0(a2 + 6, v8, v7 + *(a2 + 3228))[6 * a3];
  v12 = v10 + 68;
  v13 = v10[68];
  if (!v13)
  {
    v14 = *(v10 + 288);
    if (!*(v12 + 16))
    {
LABEL_8:
      *(a1 + 2) = 0;
      *(a1 + 2) = 0;
      result = 0.0;
      LOBYTE(v4) = -1;
      *(a1 + 6) = 0;
      goto LABEL_9;
    }
  }

  if (v6 != v12)
  {
    v15 = 0;
    *(a1 + 2) = v13;
    *(a1 + 2) = *(v12 + 1);
    do
    {
      a1[v15 + 24] = *(v12 + v15 + 16);
      ++v15;
    }

    while (v15 != 4);
  }

  *a1 = 0;
  LOBYTE(v11) = *(v12 + 12);
  v16 = v11 * 0.00392156863;
  result = v16 * v16;
  if (!*(a1 + 2) && !a1[24])
  {
    __assert_rtn("advance", "TIWordTrie.cpp", 210, "!is_root()");
  }

  return result;
}

unsigned int *sub_1B5D931A0(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1 + 1610;
    if (*(a1 + 805) != a2)
    {
      sub_1B5D93204(a1 + 1610, a2);
    }
  }

  else
  {
    if (*a1 != a3)
    {
      sub_1B5D93204(a1, a3);
    }

    return a1;
  }

  return v4;
}

unsigned int *sub_1B5D93204(unsigned int *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2];
  if (v3 >= 1)
  {
    v4 = v3 + 1;
    v5 = result + v3 + 11;
    do
    {
      v6 = *v5--;
      v7 = &result[6 * v6 + 68];
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      --v4;
    }

    while (v4 > 1);
  }

  result[2] = 0;
  *result = a2;
  v37 = result + 1606;
  v8 = *(result + 803);
  v9 = a2 - v8;
  v10 = *(result + 804);
  while (1)
  {
    v11 = v9 + 1;
    v12 = v9 + 1 <= v10 || v10 == 0;
    __dst = 0;
    if (!v12 || v8 == 0)
    {
      break;
    }

    v14 = v2[1604];
    v15 = *(v8 + v9);
    v16 = (v15 & 3) + 1;
    v17 = v11 + v16;
    if (v10)
    {
      if (v17 > v10)
      {
        break;
      }
    }

    v18 = v15 << 24;
    result = memcpy(&__dst, (v8 + v11), v16);
    v19 = (v15 >> 2) & 3;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        v20 = v17 + 3;
        if (v10 && v20 > v10)
        {
          break;
        }

        v22 = (*(v8 + v17 + 1) << 8) | (*(v8 + v17) << 16) | *(v8 + v17 + 2);
        goto LABEL_27;
      }

      v20 = v17 + 2;
      if (v10 && v20 > v10)
      {
        break;
      }

      v21 = v9 + (bswap32(*(v8 + v17)) >> 16);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_28;
      }

      v20 = v17 + 1;
      if (v10 && v20 > v10)
      {
        break;
      }

      v21 = *(v8 + v17) + v9;
    }

    v22 = v21 & 0xFFFFFF;
LABEL_27:
    v17 = v20;
    v18 |= v22;
LABEL_28:
    if ((v18 & 0x40000000) != 0)
    {
      if (v10 && v17 + 1 > v10)
      {
        break;
      }

      v23 = *(v8 + v17++) << 32;
      if ((v18 & 0x20000000) == 0)
      {
LABEL_30:
        if ((v18 & 0x10000000) == 0)
        {
          goto LABEL_34;
        }

        if (v10 && v17 + 1 > v10)
        {
          break;
        }

        v24 = *(v8 + v17);
        v23 |= v24;
        ++v17;
        if (v19 | v24)
        {
LABEL_34:
          v26 = (v18 & 0x10000000) == 0 && v19 != 0;
          if ((v14 & 0x10000) != 0 && !v26)
          {
            v27 = v17 + 1;
            if (v10 && v27 > v10)
            {
              break;
            }

            v28 = v23 & 0xFFFFFFFFFFFF00FFLL | (*(v8 + v17) << 8);
            if (*(v8 + v17) < 0)
            {
              v17 += 2;
              if (v10 && v17 > v10)
              {
                break;
              }

              v23 = v23 & 0xFF00000000 | v28 & 0xFF00FFFF | (*(v8 + v27) << 16);
            }

            else
            {
              ++v17;
              v23 = v28;
            }
          }
        }

        goto LABEL_57;
      }
    }

    else
    {
      v23 = 0xFF00000000;
      if ((v18 & 0x20000000) == 0)
      {
        goto LABEL_30;
      }
    }

    if ((v14 & 0x20000) != 0)
    {
      v29 = v17 + 4;
      if (v10 && v29 > v10)
      {
        break;
      }

      v31 = *(v8 + v17);
      v30 = v31 & 0x80000000 | ((v31 >> 8) & 0xFF00 | HIBYTE(v31) | (v31 << 8) & 0xFF0000 | ((v31 & 0x7F) << 24));
    }

    else
    {
      v29 = v17 + 3;
      if (v10 && v29 > v10)
      {
        break;
      }

      v30 = ((*(v8 + v17) << 24) | (*(v8 + v17) << 16)) & 0x807F0000 | __rev16(*(v8 + v17 + 1));
    }

    v23 |= v30;
    v17 = v29;
LABEL_57:
    v32 = __dst;
    v33 = &v2[6 * __dst + 68];
    *v33 = v18;
    *(v33 + 8) = v23;
    *(v33 + 16) = __dst;
    v34 = v2[2];
    v2[2] = v34 + 1;
    *(v2 + v34 + 12) = v32;
    v9 = v17;
    if ((v18 & 0x80000000) == 0)
    {
      return result;
    }
  }

  *(v2 + 63) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v35 = v2 + 72;
  v36 = 256;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  do
  {
    *(v35 - 4) = 0;
    *(v35 - 1) = 0;
    *v35 = 0;
    v35 += 6;
    --v36;
  }

  while (v36);
  v2[1604] = 0;
  *v37 = 0;
  v37[1] = 0;
  return result;
}

_BYTE *sub_1B5D93554(_BYTE *a1, char a2, int *a3)
{
  *a1 = a2;
  v5[0] = 0;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = a3[4];
  v9 = 0;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5D935B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D935C8(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D93620(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      *(a3 + v6) = *(v5 + v6);
      sub_1B5DB9E3C(a3 + v6 + 8, v5 + v6 + 8);
      v6 += 48;
    }

    while (v5 + v6 != a2);
    do
    {
      result = sub_1B5D264A0(v5 + 8);
      v5 += 48;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_1B5D936D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1B5D264A0(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5D93724(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 20);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 == 1)
  {
    v8 = 0;
    v22 = a3;
    v9 = 0.0;
    do
    {
      sub_1B5D93A40(v23, a2, a3, &v22, a4);
      v10 = *&v26;
      if (v23[0])
      {
        v11 = a1[1];
        if (v11 >= a1[2])
        {
          v15 = sub_1B5D2C828(a1, v23);
        }

        else
        {
          sub_1B5D5CABC(a1[1], v23);
          v12 = v26;
          v13 = v27;
          v14 = v28;
          *(v11 + 80) = v29;
          *(v11 + 48) = v13;
          *(v11 + 64) = v14;
          *(v11 + 32) = v12;
          v15 = v11 + 88;
        }

        a1[1] = v15;
      }

      if (v25)
      {
        v16 = v24 == 1;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        free(v25);
      }

      v9 = v9 + v10;
      a3 = v22;
      if (!v22)
      {
        break;
      }
    }

    while (v8++ < 0xFF);
    v18 = *a1;
    v19 = a1[1];
    v20 = v19 - *a1;
    if (v20 == 88)
    {
      *(v18 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v20 >> 3)) >= 2)
    {
      if (v9 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "TIWordTrie.cpp", 855, "termination_prob > 0");
      }

      while (v18 != v19)
      {
        *(v18 + 32) = *(v18 + 32) / v9;
        v18 += 88;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B5D938DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 + 8) = v13;
  if (a12)
  {
    if (BYTE6(a11) == 1)
    {
      free(a12);
    }
  }

  a11 = v12;
  sub_1B5D26264(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D93A40(uint64_t result, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(a2 + 8);
  v7 = v6[1];
  if (v7 <= a3)
  {
    goto LABEL_9;
  }

  if (v7 < a3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  v8 = *v6;
  if (v7 - 1 < a3 || v8 == 0)
  {
LABEL_9:
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 2) = 16;
    *(result + 6) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 37) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0xFFFFFFFFLL;
    *(result + 76) = 0;
  }

  else
  {
    v11 = *(v8 + a3);
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = a3;
    result = sub_1B5D330BC(result, v12, a5, a2 + 12920, *(a2 + 14312), *(a2 + 14320), *(a2 + 12904));
    *a4 = (v11 + a3) & (*(result + 44) >> 31);
  }

  return result;
}

double sub_1B5D93B50(uint64_t a1)
{
  sub_1B5CE10F4(a1, 0);
  sub_1B5CE10F4((a1 + 8), 0);
  sub_1B5CE10F4(a1, 0);
  sub_1B5CE10F4((a1 + 8), 0);
  *(a1 + 24) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 12916) = 0;
  *(a1 + 20) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  v2 = (a1 + 312);
  *(a1 + 276) = 0u;
  v3 = 256;
  do
  {
    *(v2 - 4) = 0;
    *(v2 - 1) = 0;
    *v2 = 0;
    v2 += 6;
    --v3;
  }

  while (v3);
  *(a1 + 6440) = 0;
  *(a1 + 6716) = 0u;
  *(a1 + 6448) = 0u;
  *(a1 + 6464) = 0u;
  *(a1 + 6480) = 0u;
  *(a1 + 6496) = 0u;
  *(a1 + 6512) = 0u;
  *(a1 + 6528) = 0u;
  *(a1 + 6544) = 0u;
  *(a1 + 6560) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6640) = 0u;
  *(a1 + 6656) = 0u;
  *(a1 + 6672) = 0u;
  *(a1 + 6688) = 0u;
  v4 = (a1 + 6752);
  v5 = 256;
  *(a1 + 6704) = 0u;
  do
  {
    *(v4 - 4) = 0;
    *(v4 - 1) = 0;
    *v4 = 0;
    v4 += 6;
    --v5;
  }

  while (v5);
  *(a1 + 12880) = 0;
  result = 0.0;
  *(a1 + 12888) = 0u;
  return result;
}

uint64_t sub_1B5D93C78(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 12);
  *v15 = 0;
  *versionArray = v4;
  v5 = *(a2 + 8);
  ucol_getVersion();
  v6 = *(a1 + 16);
  v13 = 0;
  *v14 = v6;
  v7 = *(a2 + 8);
  ucol_getUCAVersion();
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  v9 = v8;
  if (!v8)
  {
    u_versionToString(versionArray, versionString);
    u_versionToString(v15, v27);
    u_versionToString(v14, v26);
    u_versionToString(&v13, v25);
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v10 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = versionString;
      v19 = 2080;
      v20 = v27;
      v21 = 2080;
      v22 = v26;
      v23 = 2080;
      v24 = v25;
      _os_log_error_impl(&dword_1B5CDB000, v10, OS_LOG_TYPE_ERROR, "ICU version mismatch: file_collator=%s, loaded_collator=%s, file_uca=%s, loaded_uca=%s", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B5D93E18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D5BF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D93E8C(uint64_t a1, int a2)
{
  if (*(a1 + 8) != 1)
  {
    return a2 & 0xFFFFFFE7;
  }

  if ((*(a1 + 9) & ((a2 & 0x10) >> 4)) != 0)
  {
    v2 = a2 & 1 | 8;
  }

  else
  {
    v2 = a2 & 1;
  }

  v3 = v2 | a2 & 0x60;
  v4 = a2 & 0x88888888;
  if ((a2 & 0x88888888) > 127)
  {
    if (v4 == 136)
    {
      result = v3 | 0x2000000;
    }

    else
    {
      result = v3 | 0x1000000;
    }
  }

  else if (v4)
  {
    result = v3 | 0x800000;
  }

  else
  {
    result = v3;
  }

  if ((a2 & 6u) > 3)
  {
    if ((a2 & 6) == 4)
    {
      return result | 4;
    }

    else
    {
      return result | 0x80;
    }
  }

  else if ((a2 & 6) != 0)
  {
    return result | 2;
  }

  return result;
}

os_log_t sub_1B5D93F3C()
{
  result = os_log_create("com.apple.Lexicon", "WordTrie");
  qword_1EB90CB58 = result;
  return result;
}

void sub_1B5D93F6C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v4 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v5 = a3;
      }

      else
      {
        v5 = *a3;
      }

      *buf = 136315394;
      v16 = "handle_locking";
      v17 = 2080;
      v18 = v5;
      v6 = "%s: %s file is already locked";
LABEL_29:
      _os_log_impl(&dword_1B5CDB000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
    }
  }

  else if (mlock(*a2, *(a2 + 8)) && (*&v14.__val_ = *__error(), v14.__cat_ = std::generic_category(), v14.__val_))
  {
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v8 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v13, &v14);
      v9 = (v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v13 : v13.__r_.__value_.__r.__words[0];
      v10 = *(a3 + 23) >= 0 ? a3 : *a3;
      *buf = 136315650;
      v16 = "handle_locking";
      v17 = 2080;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_DEFAULT, "%s: mlock() failed for %s file: %s", buf, 0x20u);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    *a1 = 1;
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v4 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      *buf = 136315394;
      v16 = "handle_locking";
      v17 = 2080;
      v18 = v11;
      v6 = "%s: %s file locked successfully";
      goto LABEL_29;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B5D941F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1B5CE56B8(a1);
}

void sub_1B5D94200(_BYTE *a1, uint64_t a2, std::string *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    if (munlock(*a2, *(a2 + 8)))
    {
      *&v14.__val_ = *__error();
      v14.__cat_ = std::generic_category();
      if (v14.__val_)
      {
        if (qword_1EB90CB60 != -1)
        {
          dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
        }

        v5 = qword_1EB90CB58;
        if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
        {
          std::error_code::message(&v13, &v14);
          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v6 = &v13;
          }

          else
          {
            v6 = v13.__r_.__value_.__r.__words[0];
          }

          if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v7 = a3;
          }

          else
          {
            v7 = a3->__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v16 = "handle_unlocking";
          v17 = 2080;
          v18 = v6;
          v19 = 2080;
          v20 = v7;
          _os_log_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_DEFAULT, "%s: munlock() failed for %s file: %s", buf, 0x20u);
          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_30;
      }
    }

    *a1 = 0;
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v8 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
    {
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v16 = "handle_unlocking";
      v17 = 2080;
      v18 = v11;
      v10 = "%s: %s file unlocked successfully";
LABEL_29:
      _os_log_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
    }
  }

  else
  {
    if (qword_1EB90CB60 != -1)
    {
      dispatch_once(&qword_1EB90CB60, &unk_1F2D550B8);
    }

    v8 = qword_1EB90CB58;
    if (os_log_type_enabled(qword_1EB90CB58, OS_LOG_TYPE_DEFAULT))
    {
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v16 = "handle_unlocking";
      v17 = 2080;
      v18 = v9;
      v10 = "%s: %s file is already unlocked";
      goto LABEL_29;
    }
  }

LABEL_30:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B5D94488(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1B5CE56B8(a1);
}

uint64_t sub_1B5D94494(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = (a1 + 32);
  }

  v3 = sub_1B5CDFA10(v2, *(a1 + 16));
  v10 = v3;
  (*(**(a1 + 8) + 96))(&v8);
  if (v8 <= 0xEu)
  {
    v4 = &v8 + 2;
  }

  else
  {
    v4 = v9;
  }

  v5 = sub_1B5CE3124(v4, v8);
  v6 = (*(**(a1 + 8) + 112))(*(a1 + 8));
  if (v8 >= 0xFu && v9)
  {
    MEMORY[0x1B8C880C0](v9, 0x1000C8077774924);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v6 ^ v5;
}

void sub_1B5D945A0(_Unwind_Exception *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3 >= 0xFu)
  {
    if (a4)
    {
      MEMORY[0x1B8C880C0](a4, 0x1000C8077774924);
    }
  }

  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D945F8(unsigned __int16 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (!v2)
  {
    v2 = a1 + 8;
  }

  *&v4 = v2;
  DWORD2(v4) = v1;
  HIDWORD(v4) = v1;
  LODWORD(v5) = 0;
  sub_1B5CDCF70(&v4);
  v6 = v4;
  v7 = v5;
  sub_1B5D5CD6C(&v6);
  return v7;
}

CFStringRef sub_1B5D94668(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v1 = (a1 + 32);
  }

  return sub_1B5CDFA10(v1, *(a1 + 16));
}

void sub_1B5D94694(void *a1)
{
  if (((*(*a1 + 32))(a1) & 1) == 0)
  {
    v2 = a1[6];
    v3 = a1[7];
    if (v2 != v3)
    {
      v4 = MEMORY[0x1E69E9820];
      v5 = -INFINITY;
      do
      {
        v6 = a1[1];
        v10 = 0;
        v11 = &v10;
        v12 = 0x2000000000;
        v13 = 0xFFF0000000000000;
        v7 = *v2;
        v9[0] = v4;
        v9[1] = 0x40000000;
        v9[2] = sub_1B5D97B74;
        v9[3] = &unk_1E7C21A88;
        v9[4] = &v10;
        v9[5] = v6;
        sub_1B5D2DAC0(v7 + 16, v9);
        v8 = v11[3] / 2.30258509;
        _Block_object_dispose(&v10, 8);
        if (v5 < v8)
        {
          v5 = v8;
        }

        v2 += 7;
      }

      while (v2 != v3);
    }
  }
}

void sub_1B5D947FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D94824(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (qword_1EB90C7E0 != -1)
  {
    dispatch_once(&qword_1EB90C7E0, &unk_1F2D5A1F0);
  }

  v3 = qword_1EB90C7E8;
  if (os_log_type_enabled(qword_1EB90C7E8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 24);
    if (!v20)
    {
      v20 = a1 + 32;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v20;
    _os_log_debug_impl(&dword_1B5CDB000, v3, OS_LOG_TYPE_DEBUG, "enumerate_children: %s", &buf, 0xCu);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x5002000000;
  v27 = sub_1B5D94CA0;
  v28 = sub_1B5D94D10;
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 == v5)
  {
    v11 = &v24;
  }

  else
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = MEMORY[0x1E69E9820];
    do
    {
      v8 = *(a1 + 8);
      v23[0] = v6;
      v23[1] = 0x40000000;
      v23[2] = sub_1B5D94D18;
      v23[3] = &unk_1E7C21928;
      v23[4] = &v24;
      v23[5] = a1;
      v9 = *v4;
      v41 = v7;
      v42 = 0x40000000;
      v43 = sub_1B5D97C48;
      v44 = &unk_1E7C21AD8;
      v45 = v23;
      v46 = v4;
      if (v9)
      {
        (*(*(v9 + 16) + 64))();
      }

      v10 = *v4;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v33 = sub_1B5D97D80;
      v34 = &unk_1E7C21B00;
      v36 = v4;
      *&v37 = v8;
      v35 = v23;
      sub_1B5D2DAC0(v10 + 16, &buf);
      v4 += 7;
    }

    while (v4 != v5);
    v11 = v25;
  }

  v22 = 0;
  v12 = v11 + 7;
  do
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    v13 = *(v12 + 8);
    v14 = (*(*a1 + 80))(a1);
    sub_1B5D5DC60(&v41, (a1 + 16), *(v12 + 8));
    v15 = *(a1 + 8);
    *&buf = &unk_1F2D5A148;
    *(&buf + 1) = v15;
    LODWORD(v33) = 0x100000;
    WORD2(v33) = 0;
    BYTE6(v33) = 0;
    v34 = 0;
    sub_1B5D5CBBC(&v33, &v41);
    v37 = 0uLL;
    v38 = 0;
    v37 = *(v12 + 5);
    v38 = v12[7];
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0;
    v39 = v13;
    v40 = v13 + v14;
    v16 = sub_1B5D95260(&buf);
    v31 = v16;
    (*(a2 + 16))(a2, v16, &v22);
    v17 = v22;
    if (v16)
    {
      CFRelease(v16);
    }

    v31 = &v37;
    *&buf = &unk_1F2D5A148;
    sub_1B5D952E0(&v31);
    if (v34 && BYTE6(v33) == 1)
    {
      free(v34);
    }

    if (v42 && BYTE6(v41) == 1)
    {
      free(v42);
    }
  }

  while (!v17);
  _Block_object_dispose(&v24, 8);
  result = sub_1B5D953CC(v29);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D94C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D94CA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B5D94D18(uint64_t a1, uint64_t a2, __int128 *a3, double a4)
{
  v6 = a2;
  sub_1B5DA0384(&v22, *(*(a1 + 40) + 8), a2);
  v8 = *(*(a1 + 32) + 8);
  if (v22 <= 0xEu)
  {
    v9 = v23;
  }

  else
  {
    v9 = v24;
  }

  v10 = sub_1B5CE3124(v9, v22);
  v11 = v10;
  v12 = *(v8 + 48);
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v12 <= v10)
    {
      v15 = v10 % v12;
    }
  }

  else
  {
    v15 = (v12 - 1) & v10;
  }

  v16 = *(*(v8 + 40) + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= v12)
      {
        v18 %= v12;
      }
    }

    else
    {
      v18 &= v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  if (!sub_1B5CE401C(v17 + 8, &v22))
  {
    goto LABEL_20;
  }

  *(v17 + 8) = v6;
  v19 = *(v17 + 8);
  if (v19 < a4)
  {
    v19 = a4;
  }

  *(v17 + 8) = v19;
  v20 = v17[6];
  if (v20 >= v17[7])
  {
    result = sub_1B5D95698((v17 + 5), a3);
  }

  else
  {
    result = sub_1B5D95628(v20, a3) + 56;
  }

  v17[6] = result;
  if (v22 >= 0xFu)
  {
    result = v24;
    if (v24)
    {
      return MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1B5D9521C(_Unwind_Exception *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D955DC(va);
  if (a3 >= 0xFu)
  {
    if (a4)
    {
      MEMORY[0x1B8C880C0](a4, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D95260(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D5A210);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D954FC(Instance + 16, a1);
  return Instance;
}

void sub_1B5D952E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_1B5D954A8(i))
    {
      i -= 56;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t sub_1B5D9535C(uint64_t a1)
{
  *a1 = &unk_1F2D5A148;
  v4 = (a1 + 48);
  sub_1B5D952E0(&v4);
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 22) == 1)
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_1B5D953CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1B5D9542C(v2 + 8);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1B5D9542C(unsigned __int16 *a1)
{
  v2 = (a1 + 12);
  sub_1B5D952E0(&v2);
  if (*a1 >= 0xFu && *(a1 + 1))
  {

    JUMPOUT(0x1B8C880C0);
  }
}

void sub_1B5D954A8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  sub_1B5D066D0(a1, 0);
}

uint64_t sub_1B5D954FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2D5A148;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0x100000;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  *(a1 + 24) = 0;
  sub_1B5D5CBBC(a1 + 16, (a2 + 16));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t sub_1B5D95588()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

uint64_t sub_1B5D955DC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D9542C(v2 + 8);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D95628(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  v4 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a1 + 24) = v4;
  if (*(a2 + 55) < 0)
  {
    sub_1B5CE4AC4((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  return a1;
}

uint64_t sub_1B5D95698(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1B5D04FA0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    sub_1B5D957C4(v5);
  }

  v12 = 0;
  v13 = 56 * v2;
  sub_1B5D95628(56 * v2, a2);
  v14 = (56 * v2 + 56);
  v6 = *(a1 + 8);
  v7 = 56 * v2 + *a1 - v6;
  sub_1B5D95820(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_1B5D9588C(&v12);
  return v11;
}

void sub_1B5D957C4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D95820(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1B5D95628(a4, v7);
      v7 = (v7 + 56);
      a4 = v8 + 56;
    }

    while (v7 != a3);
    do
    {
      sub_1B5D954A8(v6);
      v6 += 56;
    }

    while (v6 != a3);
  }
}

uint64_t sub_1B5D9588C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 56;
    sub_1B5D954A8(v3 - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

os_log_t sub_1B5D958DC()
{
  result = os_log_create("com.apple.Lexicon", "MorphemeLevelLexiconCursor");
  qword_1EB90C7E8 = result;
  return result;
}

uint64_t sub_1B5D9590C(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  if (v1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = a1[1];
    if ((*(*(*v1 + 16) + 56))())
    {
      break;
    }

    v5 = *v1;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = sub_1B5D97BD4;
    v8[3] = &unk_1E7C21AB0;
    v8[5] = v1;
    v8[6] = v4;
    v8[4] = &v9;
    sub_1B5D2DAC0(v5 + 16, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    if ((v6 & 1) == 0)
    {
      v1 += 7;
      if (v1 != v2)
      {
        continue;
      }
    }

    return v6;
  }

  return 1;
}

void sub_1B5D95A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5D95A54(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EB90C7E0 != -1)
  {
    dispatch_once(&qword_1EB90C7E0, &unk_1F2D5A1F0);
  }

  v3 = qword_1EB90C7E8;
  if (os_log_type_enabled(qword_1EB90C7E8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[3];
    if (!v11)
    {
      v11 = a1 + 4;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_debug_impl(&dword_1B5CDB000, v3, OS_LOG_TYPE_DEBUG, "enumerate_entries: %s", &buf, 0xCu);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x5002000000;
  v21 = sub_1B5D95D04;
  v22 = sub_1B5D95D74;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  v4 = a1[6];
  v5 = a1[7];
  if (v4 != v5)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = MEMORY[0x1E69E9820];
    do
    {
      v8 = a1[1];
      v13[0] = v6;
      v13[1] = 0x40000000;
      v13[2] = sub_1B5D95D7C;
      v13[3] = &unk_1E7C21900;
      v13[5] = &buf;
      v13[4] = a2;
      v13[6] = &v14;
      v9 = *v4;
      v18[0] = v7;
      v18[1] = 0x40000000;
      v18[2] = sub_1B5D987D0;
      v18[3] = &unk_1E7C21B28;
      v18[5] = v4;
      v18[6] = v8;
      v18[4] = v13;
      sub_1B5D2DAC0(v9 + 16, v18);
      if (*(v15 + 24))
      {
        break;
      }

      v4 += 7;
    }

    while (v4 != v5);
  }

  _Block_object_dispose(&buf, 8);
  sub_1B5D48118(v23);
  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B5D95CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  _Block_object_dispose(&a29, 8);
  sub_1B5D48118(&a34);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D95D04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void sub_1B5D95D7C(uint64_t a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 8);
  sub_1B5D33704(buf, (a2 + 16));
  v3 = v17;
  if (v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = v18;
  }

  v5 = sub_1B5CE3124(v4, buf[0]);
  v6 = v5;
  v7 = *(v2 + 48);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*(v2 + 40) + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 8 != buf && !sub_1B5D5DD60(v12 + 8, buf))
  {
    goto LABEL_21;
  }

  if (v3 && v16 == 1)
  {
    free(v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B5D96144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, void *a18)
{
  sub_1B5D48994(&a12);
  if (a18)
  {
    if (a17 == 1)
    {
      free(a18);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D96180(void *a1)
{
  if ((*(*a1 + 32))(a1))
  {
    return 0;
  }

  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69E9820];
  do
  {
    v5 = a1[1];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v6 = *v2;
    v9[0] = v4;
    v9[1] = 0x40000000;
    v9[2] = sub_1B5D97AA0;
    v9[3] = &unk_1E7C21A60;
    v9[5] = v2;
    v9[6] = v5;
    v9[4] = &v10;
    sub_1B5D2DAC0(v6 + 16, v9);
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
    if (v7)
    {
      break;
    }

    v2 += 7;
  }

  while (v2 != v3);
  return v7;
}

void sub_1B5D962AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D962E4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a1;
  v92 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v70 = &unk_1F2D5A148;
  v71 = v3;
  sub_1B5D5CABC(v72, (a1 + 16));
  __p = 0uLL;
  v76 = 0;
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  *buf = &__p;
  buf[8] = 0;
  if (v5 != v4)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3);
    if (v6 < 0x492492492492493)
    {
      sub_1B5D957C4(v6);
    }

    sub_1B5D04FA0();
  }

  v77 = *(v2 + 72);
  v78 = 1;
  if (*(a2 + 1))
  {
    v7 = *(a2 + 1);
  }

  else
  {
    v7 = (a2 + 8);
  }

  v40 = v7;
  v8 = *a2;
  v41 = 0;
  v42 = v8;
  v43 = 0;
  sub_1B5CDCF70(&v40);
  v36 = v7;
  v37 = v8;
  v38 = v8;
  v39 = 0;
  sub_1B5CDCF70(&v36);
  v33 = v2;
  while (1)
  {
    if (v40 != v36)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v41 == v37)
    {
      break;
    }

    v9 = v43;
    sub_1B5DA0384(&v34, *(v2 + 8), v43);
    if (v34)
    {
      v10 = &v53;
      v53 = 0;
      v54 = &v53;
      v55 = 0x4002000000;
      v56 = sub_1B5D96E10;
      v57 = sub_1B5D96E34;
      memset(v58, 0, sizeof(v58));
      v49 = 0;
      v50 = &v49;
      v51 = 0x2000000000;
      v52 = 0xFFF0000000000000;
      v12 = *(&__p + 1);
      v11 = __p;
      if (__p == *(&__p + 1))
      {
        v18 = 0;
      }

      else
      {
        v13 = MEMORY[0x1E69E9820];
        do
        {
          v14 = v71;
          v44[0] = v13;
          v44[1] = 0x40000000;
          v45 = sub_1B5D96E60;
          v46 = &unk_1E7C218D8;
          v47 = &v53;
          v48 = &v49;
          v62 = v9;
          v15 = LXCursorCreateByAdvancingWithUTF32(*v11, &v62, 1);
          v61 = v15;
          if (v15)
          {
            v16 = v11[2];
            v59 = v11[1];
            v60 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1B5D97A20(&v88, v15, &v59, (v11 + 3));
            if (v60)
            {
              sub_1B5CDD904(v60);
            }

            (*(v15[2] + 72))();
            (v45)(v44, &v88);
            if (v91 < 0)
            {
              operator delete(v90);
            }

            if (v89)
            {
              sub_1B5CDD904(v89);
            }

            if (v88)
            {
              CFRelease(v88);
            }

            CFRelease(v15);
          }

          sub_1B5DA0384(&v88, v14, v9);
          v17 = *v11;
          p_p = MEMORY[0x1E69E9820];
          v80 = 1174405120;
          v81 = sub_1B5D9820C;
          v82 = &unk_1F2D5A348;
          v84 = v11;
          *v85 = v14;
          if (v88 >= 0xFuLL)
          {
            *&v85[8] = v88;
            operator new[]();
          }

          *&v85[8] = v88;
          v83 = v44;
          sub_1B5D2DAC0(v17 + 16, &p_p);
          if (*&v85[8] >= 0xFu && *&v85[16])
          {
            MEMORY[0x1B8C880C0](*&v85[16], 0x1000C8077774924);
          }

          if (v88 >= 0xFu && *(&v88 + 1))
          {
            MEMORY[0x1B8C880C0](*(&v88 + 1), 0x1000C8077774924);
          }

          v11 += 7;
        }

        while (v11 != v12);
        v10 = v54;
        v18 = v54[5];
        v2 = v33;
      }

      if (v18 == v10[6])
      {
        buf[0] = 0;
        v69 = 0;
      }

      else
      {
        sub_1B5D5DC60(&v88, v72, v9);
        v19 = v70[10](&v70);
        v20 = v50[3];
        v21 = v54;
        p_p = &unk_1F2D5A148;
        v80 = v71;
        LODWORD(v81) = 0x100000;
        WORD2(v81) = 0;
        BYTE6(v81) = 0;
        v82 = 0;
        sub_1B5D5CBBC(&v81, &v88);
        *v85 = *(v21 + 5);
        *&v85[16] = v21[7];
        v21[5] = 0;
        v21[6] = 0;
        v21[7] = 0;
        v86 = v20;
        v87 = v19 + v20;
        sub_1B5D954FC(buf, &p_p);
        v69 = 1;
        p_p = &unk_1F2D5A148;
        v59 = v85;
        sub_1B5D952E0(&v59);
        if (v82 && BYTE6(v81) == 1)
        {
          free(v82);
        }

        if (*(&v88 + 1) && BYTE6(v88) == 1)
        {
          free(*(&v88 + 1));
        }
      }

      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v53, 8);
      p_p = v58;
      sub_1B5D952E0(&p_p);
      if (v78 == v69)
      {
        if (v78)
        {
          v71 = *&buf[8];
          sub_1B5D5CBBC(v72, &buf[16]);
          v22 = __p;
          if (__p)
          {
            for (i = *(&__p + 1); i != v22; sub_1B5D954A8(i))
            {
              i -= 56;
            }

            *(&__p + 1) = v22;
            operator delete(__p);
          }

          __p = v66;
          v76 = v67;
          v67 = 0;
          v66 = 0uLL;
          v77 = v68;
        }
      }

      else if (v78)
      {
        v70 = &unk_1F2D5A148;
        p_p = &__p;
        sub_1B5D952E0(&p_p);
        if (v74 && v73 == 1)
        {
          free(v74);
        }

        v78 = 0;
      }

      else
      {
        sub_1B5D954FC(&v70, buf);
        v78 = 1;
      }

      if (v69 == 1)
      {
        *buf = &unk_1F2D5A148;
        p_p = &v66;
        sub_1B5D952E0(&p_p);
        if (v65)
        {
          if (v64 == 1)
          {
            free(v65);
          }
        }
      }

      if ((v78 & 1) == 0)
      {
        if (v34 >= 0xFu && v35)
        {
          MEMORY[0x1B8C880C0](v35, 0x1000C8077774924);
        }

        break;
      }

      if (v34 >= 0xFu && v35)
      {
        MEMORY[0x1B8C880C0](v35, 0x1000C8077774924);
      }
    }

    sub_1B5CDCF70(&v40);
  }

  if (qword_1EB90C7E0 != -1)
  {
    dispatch_once(&qword_1EB90C7E0, &unk_1F2D5A1F0);
  }

  v24 = qword_1EB90C7E8;
  if (os_log_type_enabled(qword_1EB90C7E8, OS_LOG_TYPE_DEBUG))
  {
    if (v78)
    {
      v28 = "success";
    }

    else
    {
      v28 = "fail";
    }

    v29 = *(v2 + 24);
    v30 = *(a2 + 1);
    if (!v29)
    {
      v29 = v2 + 32;
    }

    *buf = 136315650;
    *&buf[4] = v28;
    v31 = a2 + 8;
    if (v30)
    {
      v31 = v30;
    }

    *&buf[12] = 2080;
    *&buf[14] = v29;
    v64 = 2080;
    v65 = v31;
    _os_log_debug_impl(&dword_1B5CDB000, v24, OS_LOG_TYPE_DEBUG, "create_child (%s): %s + %s", buf, 0x20u);
  }

  if (v78 == 1)
  {
    v25 = sub_1B5D95260(&v70);
    if (v78)
    {
      v70 = &unk_1F2D5A148;
      *buf = &__p;
      sub_1B5D952E0(buf);
      if (v74)
      {
        if (v73 == 1)
        {
          free(v74);
        }
      }
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1B5D96D94(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    *a1 = &unk_1F2D5A148;
    v4 = (a1 + 48);
    sub_1B5D952E0(&v4);
    v2 = *(a1 + 24);
    if (v2)
    {
      if (*(a1 + 22) == 1)
      {
        free(v2);
      }
    }
  }

  return a1;
}

__n128 sub_1B5D96E10(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1B5D96E60(uint64_t a1, __int128 *a2, double a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 48);
  if (v6 >= *(v5 + 56))
  {
    result = sub_1B5D95698(v5 + 40, a2);
  }

  else
  {
    result = sub_1B5D95628(v6, a2) + 56;
  }

  *(v5 + 48) = result;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v9 < a3)
  {
    v9 = a3;
  }

  *(v8 + 24) = v9;
  return result;
}

void sub_1B5D96ED0(uint64_t a1)
{
  *a1 = &unk_1F2D5A148;
  v3 = (a1 + 48);
  sub_1B5D952E0(&v3);
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 22) == 1)
  {
    free(v2);
  }

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D96F60(void *a1, CFTypeRef *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x492492492492492)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
    {
      v4 = 0x492492492492492;
    }

    else
    {
      v4 = v3;
    }

    if (v4)
    {
      sub_1B5D957C4(v4);
    }

    sub_1B5D97958((56 * v2), *a2);
  }

  sub_1B5D04FA0();
}

uint64_t sub_1B5D9708C(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      sub_1B5CE62F8(a1 + 2, a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  sub_1B5CE62F8(a1 + 2, a2 + 4, v8);
  a1[3] = &v7[v8];
  a1[4] = (a3 - v8 - 4) >> 2;
  return 1;
}

os_log_t sub_1B5D97148()
{
  result = os_log_create("com.apple.Lexicon", "POSHistoryTrie");
  qword_1EB90CB68 = result;
  return result;
}

void sub_1B5D97178(uint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v10 = a4;
  if (*a3 == 0xFFFFFFFFLL)
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1B5CE6808((a2 + 32), &v10, 2uLL, a3, &v7);
    if (v7 == 0xFFFFFFFFLL)
    {
      v5 = 0;
      *a1 = 0;
    }

    else
    {
      *a1 = v7;
      v6 = (a1 + 8);
      if (SHIBYTE(v9) < 0)
      {
        sub_1B5CE4AC4(v6, __p, *(&__p + 1));
      }

      else
      {
        *v6 = __p;
        *(a1 + 24) = v9;
      }

      v5 = 1;
    }

    *(a1 + 32) = v5;
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1B5D9723C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D97258(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  v6 = sub_1B5CE6574(a1 + 2, a2, &v8);
  if (v6)
  {
    *a3 = sub_1B5D972F0(a1, v8);
  }

  return v6;
}

unint64_t sub_1B5D972F0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1B5D07108(exception, "Marisa Payload");
      __cxa_throw(exception, off_1E7C20490, MEMORY[0x1E69E5280]);
    }

    return *(*(a1 + 24) + 4 * a2);
  }

  return a2;
}

void sub_1B5D97374(uint64_t a1, void *a2, uint64_t a3)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  sub_1B5D97178(v5, a1, a2, 0);
  if (v8 == 1)
  {
    v10[0] = &unk_1F2D5A260;
    v10[1] = &v9;
    v10[3] = v10;
    sub_1B5D97484((a1 + 16), v5, v10, 0xFFFFFFFFLL);
    sub_1B5D97568(v10);
    if ((v8 & 1) != 0 && v7 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B5D9744C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_1B5D97568(&a19);
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D97484(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_1F2D5AE90;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    sub_1B5CE688C(a1 + 2, a2, v10, a4);
    result = sub_1B5D5FE94(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D97554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D97568(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1B5D975F4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5AEF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D97634(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_1B5D972F0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D9769C(v9, v8, v6, v7, a4);
}

uint64_t sub_1B5D9769C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

__n128 sub_1B5D97700(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5AE90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D977A8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5A2C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D977E8(uint64_t result, uint64_t a2, int **a3, _BYTE *a4)
{
  v6 = *a3;
  v5 = a3[1];
  v11 = 0;
  if (v5 >= 2)
  {
    v7 = result;
    v8 = &v6[v5 >> 1];
    while (1)
    {
      v9 = *v6;
      if (*v6 < 0)
      {
        result = (*(**(v7 + 8) + 16))();
        if (v11)
        {
          break;
        }
      }

      if ((v9 & 0x40000000) != 0)
      {
        result = (*(**(v7 + 8) + 16))();
        ++v6;
        if (v11)
        {
          v10 = 1;
        }

        else
        {
          v10 = v6 == v8;
        }

        if (v10)
        {
          break;
        }
      }

      else if (++v6 == v8)
      {
        break;
      }
    }
  }

  *a4 = 1;
  return result;
}

uint64_t sub_1B5D978C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5A260;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D97A20(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  *a1 = CFRetain(cf);
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  if (*(a4 + 31) < 0)
  {
    sub_1B5CE4AC4((a1 + 32), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v7 = *(a4 + 8);
    *(a1 + 48) = *(a4 + 24);
    *(a1 + 32) = v7;
  }

  return a1;
}

void sub_1B5D97AA0(void *a1, uint64_t a2, _BYTE *a3)
{
  sub_1B5D97178(v7, a1[6] + 30800, (a1[5] + 24), *(a2 + 76));
  if (v9 != 1 || v7[0] == 0xFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1B5D97258((a1[6] + 30816), v7, &v10);
  }

  *(*(a1[4] + 8) + 24) = v6;
  *a3 = v6;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(v7[1]);
  }
}

void sub_1B5D97B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D97B74(uint64_t a1, uint64_t a2)
{
  result = sub_1B5D0542C(*(a1 + 40) + 30264, *(a2 + 78), 0);
  v4 = result / -800.0;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) >= v4)
  {
    v4 = *(v5 + 24);
  }

  *(v5 + 24) = v4;
  return result;
}

void sub_1B5D97BD4(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_1B5D97178(v6, a1[6] + 30800, (a1[5] + 24), *(a2 + 76));
  v5 = v9;
  *a3 = v9;
  *(*(a1[4] + 8) + 24) = v5;
  if (v5 == 1 && v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B5D97C48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = a2 + 2;
  (*(a2[2] + 120))(a2 + 2);
  v6 = (*(*v5 + 72))(v5);
  v7 = *(v4 + 16);
  v8 = *(v4 + 8);
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1B5D97A20(cf, a2, &v8, v4 + 24);
  if (v9)
  {
    sub_1B5CDD904(v9);
  }

  (*(*(a1 + 32) + 16))(v6);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v11)
  {
    sub_1B5CDD904(v11);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void sub_1B5D97D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D981C0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D97D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  sub_1B5D97178(v7, *(a1 + 48) + 30800, v2 + 3, *(a2 + 76));
  if (v7[32] == 1)
  {
    v3 = v2[1];
    v4 = v2[2];
    v5 = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1B5D99034();
  }
}

void sub_1B5D97EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_1B5CDD904(a16);
  }

  if (v24)
  {
    sub_1B5CDD904(v24);
  }

  if (*(v25 - 40) == 1 && *(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D97F54(void *a1, unsigned int a2, int a3)
{
  v4 = sub_1B5DA042C(a1[5], a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = (*(*(v4 + 16) + 72))();
    v7 = a1[7];
    v8 = a1[6];
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1B5D97A20(cf, v5, &v8, (a1 + 8));
    if (v9)
    {
      sub_1B5CDD904(v9);
    }

    (*(a1[4] + 16))(v6);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11)
    {
      sub_1B5CDD904(v11);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void sub_1B5D98048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D981C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9805C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    if (*(a2 + 31) < 0)
    {
      sub_1B5CE4AC4((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v3 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v3;
    }

    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1B5D980DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D98104(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    sub_1B5CDD904(v2);
  }
}

uint64_t sub_1B5D98164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1B5D9805C(a1 + 64, a2 + 64);
}

void sub_1B5D981A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D981C0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  sub_1B5D066D0(a1, 0);
  return a1;
}

void sub_1B5D9820C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  sub_1B5D97178(v7, *(a1 + 48) + 30800, v2 + 3, *(a2 + 76));
  if (v7[32] == 1)
  {
    v3 = v2[1];
    v4 = v2[2];
    v5 = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1B5D99034();
  }
}

void sub_1B5D983E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (*(v26 - 80))
  {
    sub_1B5CDD904(*(v26 - 80));
  }

  if (*(v26 - 40) == 1 && *(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D98484(uint64_t result)
{
  if (*(result + 56) >= 0xFu)
  {
    result = *(result + 64);
    if (result)
    {
      JUMPOUT(0x1B8C880C0);
    }
  }

  return result;
}

__n128 sub_1B5D984B0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 56);
  v3 = *(a2 + 56);
  if (v3 >= 0xF)
  {
    *(a1 + 56) = v3;
    operator new[]();
  }

  result = *v4;
  *(a1 + 56) = *v4;
  return result;
}

void sub_1B5D9852C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  sub_1B5DA0384(&cf, *(a1 + 40), a2);
  v6 = sub_1B5CE401C(&cf, (a1 + 48));
  if (cf >= 0xFu && v13)
  {
    MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
  }

  if (v6)
  {
    v7 = sub_1B5DA042C(*(a1 + 40), v4, a3);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      v10 = *(a1 + 64);
      v11 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1B5D97A20(&cf, v7, &v10, a1 + 80);
      if (v11)
      {
        sub_1B5CDD904(v11);
      }

      (*(v8[2] + 72))(v8 + 2);
      (*(*(a1 + 32) + 16))();
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14)
      {
        sub_1B5CDD904(v14);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

void sub_1B5D98668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D981C0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D9867C(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  if (*(a1 + 48) >= 0xFu && *(a1 + 56))
  {

    JUMPOUT(0x1B8C880C0);
  }
}

uint64_t sub_1B5D98704(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 >= 0xF)
  {
    *(a1 + 48) = v3;
    operator new[]();
  }

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1B5D9805C(a1 + 80, a2 + 80);
}

void sub_1B5D98790(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  if (*(v1 + 48) >= 0xFu)
  {
    v4 = *(v1 + 56);
    if (v4)
    {
      MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D987D0(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  sub_1B5D97178(v8, *(a1 + 48) + 30800, v3 + 3, *(a2 + 76));
  v4 = v10 != 1 || v8[0] == 0xFFFFFFFFLL;
  if (!v4 && (sub_1B5D97258((*(a1 + 48) + 30816), v8, v11) & 1) != 0)
  {
    v5 = v3[1];
    v6 = v3[2];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1B5D99034();
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8[1]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B5D98BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, int a23, __int16 a24, char a25, void *a26)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D98C80()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

void sub_1B5D98CE0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 32))(*(a1 + 8), a2);

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_1B5D98D60(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
  std::mutex::unlock((a1 + 16));
  return v4;
}

uint64_t sub_1B5D98DDC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), a2);
  std::mutex::unlock((a1 + 16));
  return v4;
}

void sub_1B5D98E58(uint64_t a1)
{
  *a1 = &unk_1F2D55828;
  std::mutex::~mutex((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D98EEC(uint64_t a1)
{
  *a1 = &unk_1F2D55828;
  std::mutex::~mutex((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1B5D98F64(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 30) == 1)
  {

    free(v3);
  }
}

void sub_1B5D98FC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D5A3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D990F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

BOOL sub_1B5D99114(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  LODWORD(__n) = 0x100000;
  WORD2(__n) = 0;
  BYTE6(__n) = 1;
  v10 = 0;
  sub_1B5CDCAAC(&__n, "+", 0, 1u);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = (a1 + 16);
  }

  v3 = v10;
  if (v10)
  {
    v4 = v10;
  }

  else
  {
    v4 = v11;
  }

  v5 = strncmp(v2, v4, __n);
  if (v3)
  {
    v6 = BYTE6(__n) == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v3);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D991F8(unsigned __int16 **a1, uint64_t a2, uint64_t a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (!*(a3 + 88))
  {
    goto LABEL_43;
  }

  sub_1B5D991F8(&v18);
  if (!*(a3 + 88))
  {
    __assert_rtn("word", "MorphemeLevelLexiconUtils.cpp", 37, "!is_empty()");
  }

  v5 = sub_1B5D5CABC(v29, a3);
  v6 = *a1;
  if (sub_1B5D99114(v5))
  {
    if (v31)
    {
      v7 = v31;
    }

    else
    {
      v7 = v32;
    }

    *&v23 = v7;
    v8 = v29[0];
    DWORD2(v23) = 0;
    HIDWORD(v23) = v29[0];
    LODWORD(v24) = 0;
    sub_1B5CDCF70(&v23);
    v25 = v23;
    v26 = v24;
    sub_1B5CDCF70(&v25);
    v19 = v7;
    v20 = v8;
    v21 = v8;
    v22 = 0;
    sub_1B5CDCF70(&v19);
    LODWORD(v27) = 0x100000;
    WORD2(v27) = 0;
    BYTE6(v27) = 1;
    v28 = 0;
    if (v25 == v19)
    {
      if (SDWORD2(v25) <= v20)
      {
        v9 = HIDWORD(v25);
        if (SDWORD2(v25) <= SHIDWORD(v25))
        {
          if (v26 >= 0x80)
          {
            if (v26 >= 0x800)
            {
              if (v26 >> 11 >= 0x1B)
              {
                if ((v26 - 1114112) >= 0xFFEFE000)
                {
                  if (v26 >= 0x10000)
                  {
                    v10 = -4;
                  }

                  else
                  {
                    v10 = -3;
                  }
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = -3;
              }
            }

            else
            {
              v10 = -2;
            }
          }

          else
          {
            v10 = -1;
          }

          v9 = v10 + DWORD2(v25);
        }

        v11 = v21;
        if (v20 <= v21)
        {
          if (v22 >= 0x80)
          {
            if (v22 >= 0x800)
            {
              if (v22 >> 11 >= 0x1B)
              {
                if (v22 - 1114112 >= 0xFFEFE000)
                {
                  if (v22 >= 0x10000)
                  {
                    v12 = -4;
                  }

                  else
                  {
                    v12 = -3;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }

              else
              {
                v12 = -3;
              }
            }

            else
            {
              v12 = -2;
            }
          }

          else
          {
            v12 = -1;
          }

          v11 = v12 + v20;
        }

        sub_1B5CDCAAC(&v27, v25 + v9, 0, (v11 - v9));
        goto LABEL_37;
      }

      v14 = "begin <= end";
      v15 = 118;
      v16 = "TIString.cpp";
      v17 = "String";
    }

    else
    {
      v14 = "p==rhs.p";
      v15 = 204;
      v16 = "TIString.h";
      v17 = "operator<=";
    }

    __assert_rtn(v17, v16, v15, v14);
  }

  sub_1B5D5CABC(&v27, v29);
LABEL_37:
  sub_1B5D5D820(v6, &v27);
  if (v28 && BYTE6(v27) == 1)
  {
    free(v28);
  }

  if (v31 && v30 == 1)
  {
    free(v31);
  }

LABEL_43:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B5D994C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, void *a23)
{
  if (a23 && a22 == 1)
  {
    free(a23);
  }

  v25 = *(v23 - 64);
  if (v25)
  {
    if (*(v23 - 66) == 1)
    {
      free(v25);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D99510(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 && (sub_1B5D8939C(v2) & 1) != 0)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  if (v3 == -1)
  {
    goto LABEL_9;
  }

  v7 = &v6;
  if ((off_1F2D5A8C8[v3])(&v7, a1))
  {
    return 1;
  }

  v5 = *(a1 + 72);
  if (v5 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v7 = &v6;
  return (off_1F2D5A8C8[v5])(&v7, a1 + 40);
}

float sub_1B5D995A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = sub_1B5D996DC(a1, a2);
  v10 = a1;
  v11 = a3;
  v6 = *(a2 + 14352);
  if (v6 == -1 || (v12 = &v10, (off_1F2D5A790[v6])(&v12, a2), v10 = a1 + 40, v11 = a3, v7 = *(a2 + 28712), v7 == -1))
  {
    sub_1B5D24008();
  }

  v12 = &v10;
  (off_1F2D5A790[v7])(&v12, a2 + 14360);
  if (*(a1 + 88) >= 1)
  {
    v8 = *(a1 + 96);
    *(a1 + 88) = 1;
    ++*(a1 + 85);
    if (v8)
    {
      sub_1B5D89300(v8, a2, a3);
      if ((sub_1B5D8939C(*(a1 + 96)) & 1) == 0)
      {
        sub_1B5D87778((a1 + 96), 0);
      }
    }

    sub_1B5D997C4(a1, a2, 0);
    sub_1B5D997C4(a1, a2, 1);
  }

  *(a1 + 84) = a3;
  return sub_1B5D99B18(a1, a2);
}

float sub_1B5D996DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if ((sub_1B5D99BF8(a1) & 1) == 0 && sub_1B5D99B18(a1, a2) > 0.0)
  {
    v8 = a1;
    v5 = *(a2 + 14352);
    if (v5 == -1)
    {
      sub_1B5D24008();
    }

    v9 = &v8;
    v6 = (off_1F2D5A588[v5])(&v9, a2) * *(a1 + 80);
    v4 = v6 / sub_1B5D99B18(a1, a2);
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }
  }

  if ((LODWORD(v4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __assert_rtn("probability_of_baseline", "TIStaticDictionaryImplCursor.cpp", 147, "isfinite(result)");
  }

  return v4;
}

void sub_1B5D997C4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 14360;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = a2 + v3;
  v5 = 40;
  if (!a3)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  v20.n128_u64[0] = a1 + v5;
  v7 = *(v4 + 14352);
  if (v7 == -1)
  {
    goto LABEL_24;
  }

  v18 = &v20;
  if (!(off_1F2D5A658[v7])(&v18, v4))
  {
    return;
  }

  v20.n128_u64[0] = v6;
  v10 = *(v4 + 14352);
  if (v10 == -1)
  {
LABEL_24:
    sub_1B5D24008();
  }

  v18 = &v20;
  if ((off_1F2D5A6C0[v10])(&v18, v4))
  {
    v11 = *(a2 + 30120);
    if (!v11)
    {
      __assert_rtn("add_suffixes", "TIStaticDictionaryImplCursor.cpp", 170, "converter");
    }

    v15 = 1;
    v16 = 32;
    v20.n128_u64[0] = v6;
    v20.n128_u64[1] = &v15;
    v12 = *(v4 + 14352);
    if (v12 == -1)
    {
      sub_1B5D24008();
    }

    v21 = &v20;
    (off_1F2D5A728[v12])(&v18, &v21, v4);
    if (v15 >= 0xFu && v17)
    {
      MEMORY[0x1B8C880C0](v17, 0x1000C8077774924);
    }

    v13 = v18;
    for (i = v19; v13 != i; v13 = (v13 + 88))
    {
      LODWORD(v21) = 0;
      if (sub_1B5D4D8B8(v11, v13[3].n128_u32[3], &v21, 0))
      {
        sub_1B5D4DA24(&v20, v11, v21);
        if (v20.n128_u16[0])
        {
          operator new();
        }
      }

      *(a1 + 88) = 2;
    }

    v20.n128_u64[0] = &v18;
    sub_1B5D26264(&v20);
  }

  else
  {
    *(a1 + 88) = 2;
  }
}

void sub_1B5D99A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, unsigned __int16 a12, __int16 a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a12 >= 0xFu)
  {
    if (a14)
    {
      MEMORY[0x1B8C880C0](a14, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

float sub_1B5D99B18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v13 = a1;
  v3 = *(a2 + 14352);
  if (v3 == -1 || (v14 = &v13, (off_1F2D5A588[v3])(&v14), v13 = a1 + 40, v7 = *(a2 + 28712), v7 == -1))
  {
    sub_1B5D24008();
  }

  v14 = &v13;
  v8 = ((1.0 - v2) * (off_1F2D5A588[v7])(&v14, a2 + 14360)) + (v2 * v6);
  v9 = *(a1 + 96);
  if (v9)
  {
    v10 = *(v9 + 88);
    sub_1B5D87AD8(v9, a2);
    return (v10 * v11) + ((1.0 - v10) * v8);
  }

  return v8;
}

uint64_t sub_1B5D99BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    goto LABEL_11;
  }

  v10 = &v9;
  if ((off_1F2D5A8C8[v1])(&v10, a1))
  {
    v3 = *(a1 + 72);
    if (v3 == -1)
    {
      goto LABEL_11;
    }

    v10 = &v9;
    if ((off_1F2D5A8C8[v3])(&v10, a1 + 40))
    {
      v4 = *(a1 + 32);
      if (v4 != -1)
      {
        v10 = &v9;
        v5 = (off_1F2D5A930[v4])(&v10, a1);
        v6 = *(a1 + 72);
        if (v6 != -1)
        {
          v10 = &v9;
          if (v5 != (off_1F2D5A930[v6])(&v10, a1 + 40))
          {
            __assert_rtn("is_root", "TIStaticDictionaryImplCursor.cpp", 405, "m_baseline_cursor.is_root() == m_delta_cursor.is_root()");
          }

          goto LABEL_8;
        }
      }

LABEL_11:
      sub_1B5D24008();
    }
  }

LABEL_8:
  v7 = *(a1 + 32);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v10 = &v9;
  return (off_1F2D5A930[v7])(&v10, a1);
}

BOOL sub_1B5D99DD0(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a2 + 8) == 0;
  }

  return v2 && *(a2 + 24) == 0;
}

uint64_t sub_1B5D99DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 14352);
  if (v2 == -1)
  {
    sub_1B5D24008();
  }

  v17 = &v16;
  (off_1F2D5A3E8[v2])(&v17);
  v5 = *(a2 + 28712);
  if (v5 == -1)
  {
    sub_1B5D24008();
  }

  v17 = &v16;
  (off_1F2D5A3E8[v5])(&v17, a2 + 14360);
  *(a1 + 96) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  v6 = *(a2 + 28712);
  if (v6 == -1)
  {
    goto LABEL_14;
  }

  v17 = &v16;
  if ((off_1F2D5A450[v6])(&v17, a2 + 14360))
  {
    v7 = *(a2 + 14352);
    if (v7 != -1)
    {
      v17 = &v16;
      (off_1F2D5A4B8[v7])(&v17, a2);
      v9 = *(a2 + 14352);
      if (v9 != -1)
      {
        v10 = v8;
        v17 = &v16;
        (off_1F2D5A4B8[v9])(&v17, a2);
        v12 = *(a2 + 28712);
        if (v12 != -1)
        {
          v17 = &v16;
          v13 = v10 / (v11 + (off_1F2D5A4B8[v12])(&v17, a2 + 14360));
          if ((LODWORD(v13) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_14:
    sub_1B5D24008();
  }

  v14 = *(a1 + 72);
  if (v14 == -1)
  {
    goto LABEL_14;
  }

  v17 = &v16;
  (off_1F2D5A520[v14])(&v17, a1 + 40);
LABEL_12:
  v13 = 1.0;
LABEL_13:
  *(a1 + 80) = v13;
  sub_1B5D87778((a1 + 96), 0);
  *(a1 + 88) = *(a2 + 30120) != 0;
  *(a1 + 84) = 0;
  return a1;
}

double sub_1B5D9A018(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  *a2 = xmmword_1B5DC3AC0;
  return result;
}

void sub_1B5D9A03C(uint64_t a1)
{
  memset(&__p, 0, sizeof(__p));
  *a1 = 0xFFFFFFFFLL;
  std::string::operator=((a1 + 8), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5D9A08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D9A0CC(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  *a2 = xmmword_1B5DC3AC0;
  return result;
}

void sub_1B5D9A114(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = -1;
}

uint64_t sub_1B5D9A194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DB9E3C(a1, a2);
  sub_1B5DB9E3C(v4 + 40, a2 + 40);
  v5 = *(a2 + 80);
  *(a1 + 96) = 0;
  *(a1 + 80) = v5;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  if (*(a2 + 96))
  {
    operator new();
  }

  return a1;
}

void sub_1B5D9A244(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  sub_1B5D87778(v2, 0);
  sub_1B5D264A0(v1 + 40);
  sub_1B5D264A0(v1);
  _Unwind_Resume(a1);
}

float sub_1B5D9A294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5D996DC(a1, a2);
  v14 = a1;
  v5 = *(a2 + 14352);
  if (v5 == -1 || (v6 = v4, v15 = &v14, (off_1F2D5A5F0[v5])(&v15, a2), v14 = a1 + 40, v8 = *(a2 + 28712), v8 == -1))
  {
    sub_1B5D24008();
  }

  v15 = &v14;
  v9 = ((1.0 - v6) * (off_1F2D5A5F0[v8])(&v15, a2 + 14360)) + (v6 * v7);
  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = *(v10 + 88);
    sub_1B5D87EE4(v10, a2);
    return (v11 * v12) + ((1.0 - v11) * v9);
  }

  return v9;
}

void sub_1B5D9A37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = 0;
  if (*(a1 + 88) < 1)
  {
    v49 = a1;
    v25 = *(a2 + 14352);
    if (v25 == -1)
    {
LABEL_65:
      sub_1B5D24008();
    }

    v41 = &v49;
    (off_1F2D5A7F8[v25])(&v53, &v41, a2);
    v55 = a1 + 40;
    v26 = *(a2 + 28712);
    if (v26 == -1)
    {
      sub_1B5D24008();
    }

    v56[0] = &v55;
    (off_1F2D5A7F8[v26])(&v49, v56, a2 + 14360);
    v27 = sub_1B5D996DC(a1, a2);
    v28 = v53;
    v29 = v49;
    while (1)
    {
      if (v28 == v54)
      {
        if (v29 == v50)
        {
          goto LABEL_56;
        }

        v30 = 256;
      }

      else
      {
        v30 = *v28;
        if (v29 == v50)
        {
          v31 = 256;
          goto LABEL_47;
        }
      }

      v31 = *v29;
LABEL_47:
      sub_1B5D99DFC(&v41, a2);
      if (v30 == v31)
      {
        sub_1B5DBA474(&v41, (v28 + 1));
        sub_1B5DBA474(v44, (v29 + 8));
        v47 = v30;
        v28 += 6;
      }

      else
      {
        if (v30 < v31)
        {
          sub_1B5DBA474(&v41, (v28 + 1));
          if (v45 == -1)
          {
            goto LABEL_64;
          }

          v56[0] = &v55;
          (off_1F2D5A520[v45])(v56, v44);
          v47 = v30;
          v28 += 6;
          goto LABEL_55;
        }

        if (v43 == -1)
        {
LABEL_64:
          sub_1B5D24008();
        }

        v56[0] = &v55;
        (off_1F2D5A520[v43])(v56, &v41);
        sub_1B5DBA474(v44, (v29 + 8));
        v47 = v31;
      }

      v29 += 48;
LABEL_55:
      v46 = v27;
      (*(a3 + 16))(a3, &v41, &v52);
      v32 = v52;
      sub_1B5D87778(&v48, 0);
      sub_1B5D264A0(v44);
      sub_1B5D264A0(&v41);
      if (v32)
      {
LABEL_56:
        v41 = &v49;
        sub_1B5D89790(&v41);
        v41 = &v53;
        sub_1B5D89790(&v41);
        return;
      }
    }
  }

  v56[0] = a1;
  v6 = *(a2 + 14352);
  if (v6 == -1)
  {
    goto LABEL_65;
  }

  v53 = v56;
  (off_1F2D5A7F8[v6])(&v41, &v53, a2);
  v55 = a1 + 40;
  v7 = *(a2 + 28712);
  if (v7 == -1)
  {
    sub_1B5D24008();
  }

  v56[0] = &v55;
  (off_1F2D5A7F8[v7])(&v53, v56, a2 + 14360);
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v8 = v41;
  v9 = v53;
  v10 = (v54 - v53) >> 4;
  if (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 4) - 0x5555555555555555 * v10 >= 0x100)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 4) - 0x5555555555555555 * v10;
  }

  sub_1B5D896D0(&v49, v11);
  while (v8 != v42)
  {
    v12 = *v8;
    if (v9 == v54)
    {
      goto LABEL_12;
    }

    v13 = *v9;
    if (v12 == v13)
    {
      LOBYTE(v56[0]) = *v8;
      sub_1B5D7A7FC(&v49, v56);
      v8 += 6;
LABEL_17:
      v9 += 6;
    }

    else
    {
      if (v12 >= v13)
      {
        goto LABEL_15;
      }

LABEL_12:
      LOBYTE(v56[0]) = *v8;
      sub_1B5D7A7FC(&v49, v56);
      v8 += 6;
    }
  }

  if (v9 != v54)
  {
    LOBYTE(v13) = *v9;
LABEL_15:
    LOBYTE(v56[0]) = v13;
    sub_1B5D7A7FC(&v49, v56);
    goto LABEL_17;
  }

  v40 = a2;
  v56[0] = &v53;
  sub_1B5D89790(v56);
  v53 = &v41;
  sub_1B5D89790(&v53);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = a1;
    sub_1B5D89434(&v53, v14, v40);
    v16 = v49;
    v17 = v50;
    v19 = v53;
    v18 = v54;
    __p = v53;
    v39 = v49;
    while (1)
    {
      if (v16 == v17)
      {
        if (v19 == v18)
        {
          goto LABEL_33;
        }

        v20 = 256;
      }

      else
      {
        v20 = *v16;
        if (v19 == v18)
        {
          v21 = 256;
          goto LABEL_26;
        }
      }

      v21 = *v19;
LABEL_26:
      sub_1B5D9A194(&v41, v15);
      if (v20 == v21)
      {
        v22.n128_f32[0] = sub_1B5D995A8(&v41, v40, v20);
        ++v16;
LABEL_31:
        v19 = (v19 + 1);
        goto LABEL_32;
      }

      if (v20 >= v21)
      {
        v22.n128_f32[0] = sub_1B5D995A8(&v41, v40, v21);
        goto LABEL_31;
      }

      v22.n128_f32[0] = sub_1B5D995A8(&v41, v40, v20);
      ++v16;
LABEL_32:
      (*(a3 + 16))(a3, &v41, &v52, v22);
      v23 = v52;
      sub_1B5D87778(&v48, 0);
      sub_1B5D264A0(v44);
      sub_1B5D264A0(&v41);
      if (v23)
      {
LABEL_33:
        if (__p)
        {
          operator delete(__p);
        }

        v24 = v39;
        goto LABEL_36;
      }
    }
  }

  v24 = v49;
  v33 = v50;
  if (v49 != v50)
  {
    v34 = v49 + 1;
    do
    {
      sub_1B5D9A194(&v41, a1);
      v35 = sub_1B5D995A8(&v41, a2, *(v34 - 1));
      (*(a3 + 16))(a3, &v41, &v52, v35);
      v36 = v52;
      sub_1B5D87778(&v48, 0);
      sub_1B5D264A0(v44);
      sub_1B5D264A0(&v41);
      if (v36)
      {
        break;
      }
    }

    while (v34++ != v33);
  }

LABEL_36:
  if (v24)
  {
    operator delete(v24);
  }
}

void sub_1B5D9A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  a12 = &a25;
  sub_1B5D89790(&a12);
  a12 = (v26 - 144);
  sub_1B5D89790(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9A9B8(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 <= 0xB)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 306, "m_offset <= m_size");
  }

  v3 = a1 <= 0xF || a2 == 0;
  result = !v3;
  if (!v3)
  {
    *a3 = *(a2 + 12);
  }

  return result;
}

uint64_t sub_1B5D9AA08(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 <= 0xF)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 306, "m_offset <= m_size");
  }

  v3 = a1 <= 0x13 || a2 == 0;
  result = !v3;
  if (!v3)
  {
    *a3 = *(a2 + 16);
  }

  return result;
}

__n128 sub_1B5D9AA58(unint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a1 <= 0x13)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 306, "m_offset <= m_size");
  }

  if (a1 > 0x23 && a2 != 0)
  {
    result = *(a2 + 20);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B5D9AAA8(const uint8_t *a1, _DWORD *a2, char *a3, uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = a4 + 16;
  if (*(a4 + 8))
  {
    v9 = *(a4 + 8);
  }

  else
  {
    v9 = (a4 + 16);
  }

  sub_1B5CE4074(v81, v9, 0);
  if (v82 != 1)
  {
    v13 = atomic_load(byte_1EB90C7D0);
    if (v13)
    {
      v14 = atomic_load(byte_1EB90CC20);
      if ((v14 & 1) == 0)
      {
        v17 = sub_1B5D32914();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        v18 = *(a4 + 8);
        if (!v18)
        {
          v18 = v8;
        }

        *buf = 136315138;
        *v88 = v18;
        v19 = "File not found: %s";
        v20 = v17;
        v21 = 12;
        goto LABEL_41;
      }

      *(a4 + 8);
      printf("File not found: %s");
LABEL_16:
      putchar(10);
    }

LABEL_42:
    v30 = 0;
    goto LABEL_43;
  }

  if (v83 - 1 < 3 || v84 == 0)
  {
    v11 = atomic_load(byte_1EB90C7D0);
    if (v11)
    {
      v12 = atomic_load(byte_1EB90CC20);
      if ((v12 & 1) == 0)
      {
        v25 = sub_1B5D32914();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v19 = "couldn't read magic number from file";
LABEL_32:
        v20 = v25;
        v21 = 2;
        goto LABEL_41;
      }

      printf("couldn't read magic number from file");
      goto LABEL_16;
    }

    goto LABEL_42;
  }

  if (*v84 != 0x1000000)
  {
    v22 = atomic_load(byte_1EB90C7D0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_42;
    }

    v23 = bswap32(*v84);
    v24 = atomic_load(byte_1EB90CC20);
    if (v24)
    {
      printf("Magic numbers don't match!  Recorded: %u  Actual %u");
      goto LABEL_16;
    }

    v29 = sub_1B5D32914();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 67109376;
    *v88 = v23;
    *&v88[4] = 1024;
    *&v88[6] = 1;
    v19 = "Magic numbers don't match!  Recorded: %u  Actual %u";
    goto LABEL_40;
  }

  if (v83 <= 3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 306, "m_offset <= m_size");
  }

  if (v83 <= 7)
  {
    v15 = atomic_load(byte_1EB90C7D0);
    if ((v15 & 1) == 0)
    {
      goto LABEL_42;
    }

    v16 = atomic_load(byte_1EB90CC20);
    if (v16)
    {
      printf("couldn't read major version from file");
      goto LABEL_16;
    }

    v25 = sub_1B5D32914();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "couldn't read major version from file";
    goto LABEL_32;
  }

  v26 = v84[1];
  if (v26 != 50331648)
  {
    v33 = atomic_load(byte_1EB90C7D0);
    if ((v33 & 1) == 0)
    {
      goto LABEL_42;
    }

    v34 = bswap32(v26);
    v35 = atomic_load(byte_1EB90CC20);
    if (v35)
    {
      printf("Major versions don't match!  Recorded: %u  Actual %u");
      goto LABEL_16;
    }

    v29 = sub_1B5D32914();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 67109376;
    *v88 = v34;
    *&v88[4] = 1024;
    *&v88[6] = 3;
    v19 = "Major versions don't match!  Recorded: %u  Actual %u";
LABEL_40:
    v20 = v29;
    v21 = 14;
    goto LABEL_41;
  }

  if (v83 <= 0xB)
  {
    v27 = atomic_load(byte_1EB90C7D0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_42;
    }

    v28 = atomic_load(byte_1EB90CC20);
    if (v28)
    {
      printf("couldn't read minor version from file");
      goto LABEL_16;
    }

    v25 = sub_1B5D32914();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "couldn't read minor version from file";
    goto LABEL_32;
  }

  v36 = v84[2];
  if (v36 != 352321536)
  {
    v39 = atomic_load(byte_1EB90C7D0);
    if ((v39 & 1) == 0)
    {
      goto LABEL_42;
    }

    v40 = bswap32(v36);
    v41 = atomic_load(byte_1EB90CC20);
    if (v41)
    {
      printf("Minor versions don't match!  Recorded: %u(0x%x)  Actual %u(0x%x)");
      goto LABEL_16;
    }

    v44 = sub_1B5D32914();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 67109888;
    *v88 = v40;
    *&v88[4] = 1024;
    *&v88[6] = v40;
    *&v88[10] = 1024;
    *&v88[12] = 21;
    *&v88[16] = 1024;
    v89 = 21;
    v19 = "Minor versions don't match!  Recorded: %u(0x%x)  Actual %u(0x%x)";
    v20 = v44;
    v21 = 26;
LABEL_41:
    _os_log_impl(&dword_1B5CDB000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_42;
  }

  *versionArray = 0;
  if ((sub_1B5D9A9B8(v83, v84, versionArray) & 1) == 0)
  {
    v42 = atomic_load(byte_1EB90C7D0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_42;
    }

    v43 = atomic_load(byte_1EB90CC20);
    if (v43)
    {
      printf("couldn't read collator version from file");
      goto LABEL_16;
    }

    v25 = sub_1B5D32914();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "couldn't read collator version from file";
    goto LABEL_32;
  }

  if (*versionArray != *a1)
  {
    u_versionToString(a1, versionString);
    u_versionToString(versionArray, v91);
    v37 = atomic_load(byte_1EB90C7D0);
    if ((v37 & 1) == 0)
    {
      goto LABEL_42;
    }

    v38 = atomic_load(byte_1EB90CC20);
    if (v38)
    {
      printf("Collator versions don't match!  Recorded: %s  Actual %s");
      goto LABEL_16;
    }

    v49 = sub_1B5D32914();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 136315394;
    *v88 = versionString;
    *&v88[8] = 2080;
    *&v88[10] = v91;
    v19 = "Collator versions don't match!  Recorded: %s  Actual %s";
    goto LABEL_79;
  }

  *versionArray = 0;
  if ((sub_1B5D9AA08(v83, v84, versionArray) & 1) == 0)
  {
    v47 = atomic_load(byte_1EB90C7D0);
    if ((v47 & 1) == 0)
    {
      goto LABEL_42;
    }

    v48 = atomic_load(byte_1EB90CC20);
    if (v48)
    {
      printf("couldn't read UCA version from file");
      goto LABEL_16;
    }

    v25 = sub_1B5D32914();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "couldn't read UCA version from file";
    goto LABEL_32;
  }

  if (*versionArray != *a2)
  {
    u_versionToString(a1, versionString);
    u_versionToString(versionArray, v91);
    v45 = atomic_load(byte_1EB90C7D0);
    if ((v45 & 1) == 0)
    {
      goto LABEL_42;
    }

    v46 = atomic_load(byte_1EB90CC20);
    if (v46)
    {
      printf("Unicode Collation Algorithm (UCA) versions don't match!  Recorded: %s  Actual %s");
      goto LABEL_16;
    }

    v49 = sub_1B5D32914();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 136315394;
    *v88 = versionString;
    *&v88[8] = 2080;
    *&v88[10] = v91;
    v19 = "Unicode Collation Algorithm (UCA) versions don't match!  Recorded: %s  Actual %s";
LABEL_79:
    v20 = v49;
    v21 = 22;
    goto LABEL_41;
  }

  sub_1B5D9AA58(v83, v84, &v90);
  if (!v55)
  {
    v60 = atomic_load(byte_1EB90C7D0);
    if ((v60 & 1) == 0)
    {
      goto LABEL_42;
    }

    v61 = atomic_load(byte_1EB90CC20);
    if (v61)
    {
      printf("couldn't get recorded checksum from file");
      goto LABEL_16;
    }

    v25 = sub_1B5D32914();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "couldn't get recorded checksum from file";
    goto LABEL_32;
  }

  if (v90.n128_u8[0] != *a3)
  {
LABEL_94:
    v62 = atomic_load(byte_1EB90C7D0);
    if (v62)
    {
      v63 = atomic_load(byte_1EB90CC20);
      if (v63)
      {
        printf("Checksums don't match!");
        putchar(10);
      }

      else
      {
        v64 = sub_1B5D32914();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v64, OS_LOG_TYPE_ERROR, "Checksums don't match!", buf, 2u);
        }
      }
    }

    v65 = atomic_load(byte_1EB90C7D0);
    if (v65)
    {
      v66 = atomic_load(byte_1EB90CC20);
      if (v66)
      {
        sub_1B5D8C1E4(buf, &v90, 16, v50, v51, v52, v53, v54);
        v67 = *&v88[4];
        if (!*&v88[4])
        {
          v67 = &v88[12];
        }

        printf("Recorded: %s", v67);
        if (*&v88[4] && v88[2] == 1)
        {
          free(*&v88[4]);
        }

        putchar(10);
      }

      else
      {
        v68 = sub_1B5D32914();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_1B5D8C1E4(buf, &v90, 16, v50, v51, v52, v53, v54);
          v69 = *&v88[4];
          if (!*&v88[4])
          {
            v69 = &v88[12];
          }

          *v85 = 136315138;
          v86 = v69;
          _os_log_impl(&dword_1B5CDB000, v68, OS_LOG_TYPE_ERROR, "Recorded: %s", v85, 0xCu);
          if (*&v88[4] && v88[2] == 1)
          {
            free(*&v88[4]);
          }
        }
      }
    }

    v70 = atomic_load(byte_1EB90C7D0);
    if ((v70 & 1) == 0)
    {
      goto LABEL_42;
    }

    v71 = atomic_load(byte_1EB90CC20);
    if ((v71 & 1) == 0)
    {
      v73 = sub_1B5D32914();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_1B5D8C1E4(buf, a3, 16, v74, v75, v76, v77, v78);
        v79 = *&v88[4];
        if (!*&v88[4])
        {
          v79 = &v88[12];
        }

        *v85 = 136315138;
        v86 = v79;
        _os_log_impl(&dword_1B5CDB000, v73, OS_LOG_TYPE_ERROR, "Actual: %s", v85, 0xCu);
        if (*&v88[4] && v88[2] == 1)
        {
          free(*&v88[4]);
        }
      }

      goto LABEL_42;
    }

    sub_1B5D8C1E4(buf, a3, 16, v50, v51, v52, v53, v54);
    v72 = *&v88[4];
    if (!*&v88[4])
    {
      v72 = &v88[12];
    }

    printf("Actual: %s", v72);
    if (*&v88[4] && v88[2] == 1)
    {
      free(*&v88[4]);
    }

    goto LABEL_16;
  }

  v56 = 1;
  while (v56 != 16)
  {
    v57 = v56;
    v58 = v90.n128_u8[v56];
    v59 = a3[v56++];
    if (v58 != v59)
    {
      if ((v57 - 1) <= 0xE)
      {
        goto LABEL_94;
      }

      break;
    }
  }

  v30 = 1;
LABEL_43:
  sub_1B5DA4E0C(v81);
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1B5D9B494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5DA4E0C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1B5D9B504(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 < 0xF)
  {
    v21 = *(a1 + 72);
    if (!v2)
    {
      v2 = 0;
      goto LABEL_8;
    }

    v3 = (a1 + 74);
  }

  else
  {
    v3 = *(a1 + 80);
    if (v2 > 0x16)
    {
      operator new();
    }

    v21 = *(a1 + 72);
  }

  memmove(&__dst, v3, v2);
LABEL_8:
  *(&__dst + v2) = 0;
  v4 = *(a1 + 16);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 8);
    v8 = v21;
    v9 = __dst;
    if (v21 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v21 >= 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v20;
    }

    v12 = sub_1B5D2CC6C(p_dst, v11);
    if (v7)
    {
      v13 = (*(*v7 + 112))(v7);
    }

    else
    {
      v13 = 0;
    }

    v17 = v13 ^ v12;
    sub_1B5CDD904(v6);
    if (v8 < 0)
    {
LABEL_25:
      operator delete(v9);
    }
  }

  else
  {
    v14 = v21;
    v9 = __dst;
    if (v21 >= 0)
    {
      v15 = &__dst;
    }

    else
    {
      v15 = __dst;
    }

    if (v21 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    v17 = sub_1B5D2CC6C(v15, v16);
    if (v14 < 0)
    {
      goto LABEL_25;
    }
  }

  return v17;
}

void sub_1B5D9B680(_Unwind_Exception *a1)
{
  sub_1B5CDD904(v2);
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9B6A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = (a1 + 40);
  if (v2)
  {
    return sub_1B5D945F8(v1);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1B5D9B6BC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = (a1 + 56);
  }

  return sub_1B5CDFA10(v1, *(a1 + 40));
}

uint64_t sub_1B5D9B6D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9B6F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(a1 + 32) + 1 < *(v1 + 15))
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = 8 * v2;
  v5 = (v1 + 24);
  do
  {
    v6 = *v5++;
    result = (*(v6 + 48) + result);
    v4 -= 8;
  }

  while (v4);
  return result;
}

double sub_1B5D9B740(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (*(a1 + 32) + 1 >= *(v1 + 15) && (v2 = *(v1 + 16), v2))
    {
      v3 = 0;
      v4 = 8 * v2;
      v5 = (v1 + 24);
      do
      {
        v6 = *v5++;
        v3 += *(v6 + 48);
        v4 -= 8;
      }

      while (v4);
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v1 + 4);
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  v8 = sub_1B5D4E940(v3, v7);

  return log10(v8);
}

void sub_1B5D9B7D4(void *a1, uint64_t a2)
{
  v2 = (a1 + 3);
  if (a1[3])
  {
    v4 = a1[2];
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = v6;
        v8 = a1[1];
        if (v8)
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 1174405120;
          v9[2] = sub_1B5D9B928;
          v9[3] = &unk_1F2D5A9A0;
          v9[5] = a1;
          v9[6] = v8;
          v10 = v6;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v9[4] = a2;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = sub_1B5D9BAC8;
          v11[3] = &unk_1E7C21BA0;
          v11[6] = a1 + 9;
          v11[7] = v2;
          v11[8] = a1 + 5;
          v11[9] = 0;
          v11[4] = v9;
          v11[5] = v8 + 136;
          sub_1B5D36668(v2, v11);
          if (v10)
          {
            sub_1B5CDD904(v10);
          }
        }

        sub_1B5CDD904(v7);
      }
    }
  }
}

void sub_1B5D9B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1B5CDD904(a16);
  }

  sub_1B5CDD904(v16);
  _Unwind_Resume(a1);
}

void sub_1B5D9B928(void *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, double a5)
{
  v10 = *(a1[5] + 128);
  v11 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D5A9D0);
  }

  Instance = _CFRuntimeCreateInstance();
  v13 = Instance;
  v14 = a1[6];
  v15 = a1[7];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a2;
  v17 = v16;
  if (v16 && atomic_fetch_add(v16, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v18 = *(a2 + 8);
  sub_1B5D9BDFC(Instance + 16, v14, v15, &v17, a3, a4, a5, v10 + a5);
  if (v17)
  {
    sub_1B5D3443C(v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  (*(a1[4] + 16))();

  CFRelease(v13);
}

void sub_1B5D9BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B5D36480(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D9BAC8(uint64_t a1, unsigned __int8 *a2, BOOL *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v6 = *a2;
  if (*a2 && *(v6 + 15))
  {
    v7 = *(v6 + a2[8] + 8);
  }

  else
  {
    v7 = 0;
  }

  sub_1B5D7FC58(&v23, *(a1 + 40), *(a1 + 48), v7);
  if (v27 == -1)
  {
    v9 = *(a1 + 32);
    sub_1B5D5DC60(&v29, *(a1 + 64), 0xFFFDu);
    v10 = 0.0;
    v11 = 0.0;
    if (*a2)
    {
      LODWORD(v11) = *(*a2 + 4);
      v11 = *&v11;
    }

    v12 = *(a1 + 72);
    v13 = **(a1 + 56);
    if (v13)
    {
      LODWORD(v10) = *(v13 + 4);
      v10 = *&v10;
    }
  }

  else
  {
    if (v27 == -2)
    {
      if (*a2)
      {
        v8 = *(*a2 + 4);
      }

      else
      {
        v8 = 0;
      }

      v16 = **(a1 + 56);
      if (v16)
      {
        v17 = *(v16 + 4);
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_1B5D4E940(v8, v17);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v21 = log10(v18);
      v29 = MEMORY[0x1E69E9820];
      v30 = 0x40000000;
      v31 = sub_1B5D9BAC8;
      v32 = &unk_1E7C21BA0;
      v34 = &v23;
      v35 = a2;
      v36 = v19;
      v37 = v21 + v20;
      v33 = *(a1 + 32);
      sub_1B5D36668(a2, &v29);
      goto LABEL_26;
    }

    v9 = *(a1 + 32);
    sub_1B5D5DC60(&v29, *(a1 + 64), v27);
    v10 = 0.0;
    v11 = 0.0;
    if (*a2)
    {
      LODWORD(v11) = *(*a2 + 4);
      v11 = *&v11;
    }

    v12 = *(a1 + 72);
    v14 = **(a1 + 56);
    if (v14)
    {
      LODWORD(v10) = *(v14 + 4);
      v10 = *&v10;
    }
  }

  v15 = log10(v11 / v10);
  (*(v9 + 16))(v9, a2, &v29, &v23, &v28, v12 + v15);
  if (v30 && BYTE6(v29) == 1)
  {
    free(v30);
  }

LABEL_26:
  *a3 = v28 != 0;
  if (v25 >= 0xFu && v26)
  {
    MEMORY[0x1B8C880C0](v26, 0x1000C8077774924);
  }

  if (v23 >= 0xFu && v24)
  {
    MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B5D9BD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  sub_1B5D2D650(&a9);
  _Unwind_Resume(a1);
}

void sub_1B5D9BDD0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1B5CDD904(v1);
  }
}

uint64_t sub_1B5D9BDE0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1B5D9BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6, double a7, double a8)
{
  *a1 = &unk_1F2D55788;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1B5D9BFA8(a1 + 24, a4);
  sub_1B5D5CABC(a1 + 40, a5);
  v13 = *a6;
  if (v13 >= 0xF)
  {
    *(a1 + 72) = v13;
    operator new[]();
  }

  *(a1 + 72) = *a6;
  *(a1 + 88) = *(a6 + 16);
  v14 = a6[12];
  if (v14 >= 0xF)
  {
    *(a1 + 96) = v14;
    operator new[]();
  }

  *(a1 + 96) = *(a6 + 12);
  *(a1 + 112) = *(a6 + 10);
  *(a1 + 120) = a7;
  *(a1 + 128) = a8;
  *(a1 + 136) = *a6 == 0;
  return a1;
}

void sub_1B5D9BF30(_Unwind_Exception *a1)
{
  if (*(v1 + 72) >= 0xFu)
  {
    v3 = *(v1 + 80);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(v1 + 48);
  if (v4 && *(v1 + 46) == 1)
  {
    free(v4);
  }

  sub_1B5D36480((v1 + 24));
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9BFA8(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 && atomic_fetch_add(v2, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B5D9BFFC()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

BOOL sub_1B5D9C050(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(a1 + 32) + 1 >= *(v1 + 15))
  {
    return *(v1 + 20) != 0;
  }

  return 1;
}

uint64_t sub_1B5D9C08C(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B5D9C0FC;
  v3[3] = &unk_1E7C21B78;
  v3[4] = a2;
  v3[5] = a1;
  return sub_1B5D365CC(a1 + 24, v3);
}

void sub_1B5D9C0FC(uint64_t a1, int32x2_t **a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  sub_1B5D5CABC(v24, &(*a2)[1]);
  *(&v27 + 5) = 0;
  v28 = 0uLL;
  *&v27 = 0;
  *&v29 = 0xFFFFFFFFLL;
  BYTE8(v29) = 0;
  HIDWORD(v29) = 0;
  v30 = 0;
  v7 = *a2;
  HIDWORD(v28) = (*a2)[5].i32[0];
  v8 = v7[6].u32[0];
  v9 = *(v6 + 24);
  if (v9)
  {
    v10 = *(v9 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B5D4E940(v8, v10);
  v12 = v11;
  *&v27 = v12;
  v13 = *a2;
  *&v28 = vmax_s32(v13[6], 0);
  DWORD1(v27) = v13[5].i32[1];
  v14 = *(v6 + 128);
  v15 = log10(v11);
  v16 = v13[7];
  v17 = v13[8].i32[0];
  v18 = *MEMORY[0x1E695E480];
  if (qword_1ED833AC8 != -1)
  {
    dispatch_once(&qword_1ED833AC8, &unk_1F2D55098);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D5CABC(Instance + 16, v24);
  v20 = v30;
  v22 = v28;
  v21 = v29;
  *(Instance + 48) = v27;
  *(Instance + 64) = v22;
  *(Instance + 80) = v21;
  *(Instance + 96) = v20;
  *(Instance + 104) = v15 + v14;
  *(Instance + 112) = v16;
  *(Instance + 120) = v17;
  (*(*(a1 + 32) + 16))();
  *a3 = 0;
  CFRelease(Instance);
  if (v26 && v25 == 1)
  {
    free(v26);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1B5D9C2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, void *a14)
{
  if (a14)
  {
    if (a13 == 1)
    {
      free(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9C320()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

uint64_t sub_1B5D9C3DC(uint64_t a1, unsigned __int16 *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *(a1 + 24);
      v52 = v8;
      if (v8 && atomic_fetch_add(v8, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v53 = *(a1 + 32);
      if (*(a1 + 72) >= 0xFuLL)
      {
        LOWORD(v48) = *(a1 + 72);
        operator new[]();
      }

      v48 = *(a1 + 72);
      v10 = *(a1 + 96);
      v49 = *(a1 + 88);
      v37 = v5;
      if (v10 >= 0xF)
      {
        LOWORD(v50) = v10;
        operator new[]();
      }

      v50 = *(a1 + 96);
      v51 = *(a1 + 112);
      v11 = *(a1 + 24);
      v36 = a1;
      if (v11)
      {
        v34 = *(v11 + 4);
      }

      else
      {
        v34 = 0;
      }

      v12 = 0x1000C8077774924;
      if (*(a2 + 1))
      {
        v13 = *(a2 + 1);
      }

      else
      {
        v13 = (a2 + 8);
      }

      v44 = v13;
      v35 = a2;
      v14 = *a2;
      v45 = 0;
      v46 = v14;
      v47 = 0;
      sub_1B5CDCF70(&v44);
      v40 = v13;
      v41 = v14;
      v42 = v14;
      v43 = 0;
      sub_1B5CDCF70(&v40);
      v15 = v40;
      v16 = v41;
      while (1)
      {
        if (v44 != v15)
        {
          __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
        }

        if (v45 == v16)
        {
          break;
        }

        v17 = v47;
        (*(**(v7 + 1512) + 16))(&v38);
        v18 = v48;
        sub_1B5CDD368(v54, v7 + 136, &v48, v17, &v38);
        if (v18 >= 0xF && *(&v48 + 1))
        {
          MEMORY[0x1B8C880C0](*(&v48 + 1), v12);
        }

        v48 = *v54;
        if (LOWORD(v54[0]) >= 0xFu)
        {
          LOWORD(v54[0]) = 0;
        }

        v49 = v55;
        if (v50 >= 0xFu && *(&v50 + 1))
        {
          MEMORY[0x1B8C880C0](*(&v50 + 1), v12);
        }

        v50 = v56;
        if (v56 >= 0xFu)
        {
          LOWORD(v56) = 0;
        }

        v51 = v57;
        if (LOWORD(v54[0]) >= 0xFu && v54[1])
        {
          MEMORY[0x1B8C880C0](v54[1], v12);
        }

        v19 = v52;
        if (v52)
        {
          v20 = v12;
          v21 = v48;
          if (v18 <= v48)
          {
            v22 = v48;
          }

          else
          {
            v22 = v18;
          }

          while (1)
          {
            v23 = v22 != v18;
            if (v22 == v18)
            {
              break;
            }

            v24 = *(&v48 + 1);
            if (v21 <= 0xE)
            {
              v24 = &v48 + 2;
            }

            sub_1B5D36318(v54, &v52, v24[v18]);
            v25 = v54[0];
            v54[0] = 0;
            v52 = v25;
            sub_1B5D3443C(v19);
            v53 = v54[1];
            if (v54[0])
            {
              sub_1B5D3443C(v54[0]);
            }

            v19 = v52;
            ++v18;
            if (!v52)
            {
              v23 = 1;
              break;
            }
          }

          v12 = v20;
        }

        else
        {
          v23 = 1;
        }

        if (v38 >= 0xFu && v39)
        {
          MEMORY[0x1B8C880C0](v39, v12);
        }

        if (v23)
        {
          v9 = 0;
          v6 = v37;
          goto LABEL_62;
        }

        sub_1B5CDCF70(&v44);
      }

      v26 = v52;
      if (!v52)
      {
        __assert_rtn("create_child", "LXMutableLexiconCursorImpl.cpp", 63, "impl");
      }

      v6 = v37;
      v27 = sub_1B5D4E940(v52[1], v34);
      v28 = log10(v27);
      sub_1B5D5DD0C(v54, (v36 + 40), v35);
      v29 = *(v36 + 128);
      v30 = *MEMORY[0x1E695E480];
      if (qword_1ED833B58[0] != -1)
      {
        dispatch_once(qword_1ED833B58, &unk_1F2D5A9D0);
      }

      Instance = _CFRuntimeCreateInstance();
      atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v44 = v26;
      if (atomic_fetch_add(v26, 1u) < 1)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v9 = Instance;
      LOBYTE(v45) = v53;
      sub_1B5D9BDFC(Instance + 16, v7, v37, &v44, v54, &v48, v28, v29 + v28);
      if (v44)
      {
        sub_1B5D3443C(v44);
      }

      std::__shared_weak_count::__release_weak(v37);
      if (v54[1] && BYTE6(v54[0]) == 1)
      {
        free(v54[1]);
      }

LABEL_62:
      if (v50 >= 0xFu && *(&v50 + 1))
      {
        MEMORY[0x1B8C880C0](*(&v50 + 1), v12);
      }

      if (v48 >= 0xFu && *(&v48 + 1))
      {
        MEMORY[0x1B8C880C0](*(&v48 + 1), v12);
      }

      if (v52)
      {
        sub_1B5D3443C(v52);
      }
    }

    else
    {
      v9 = 0;
    }

    sub_1B5CDD904(v6);
  }

  else
  {
    v9 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B5D9C96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, unsigned __int16 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, char a31, char a32, void *a33)
{
  if (a21 >= 0xFu)
  {
    if (a22)
    {
      MEMORY[0x1B8C880C0](a22, 0x1000C8077774924);
    }
  }

  sub_1B5D36480(&a27);
  sub_1B5CDD904(a12);
  _Unwind_Resume(a1);
}

void sub_1B5D9CA80(uint64_t a1)
{
  *a1 = &unk_1F2D55788;
  if (*(a1 + 96) >= 0xFu)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 72) >= 0xFu)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 46) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    sub_1B5D3443C(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9CB64(uint64_t a1)
{
  *a1 = &unk_1F2D55788;
  if (*(a1 + 96) >= 0xFu)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 72) >= 0xFu)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 46) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    sub_1B5D3443C(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1B5D9CC28(uint64_t a1)
{
  sub_1B5D9CC60(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9CC60(uint64_t a1)
{
  *a1 = &unk_1F2D5AA00;
  sub_1B5D9CCDC((a1 + 96));
  v4 = (a1 + 72);
  sub_1B5D9CD70(&v4);
  v4 = (a1 + 48);
  sub_1B5D9CD70(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_1B5D9CCDC(void *a1)
{
  *a1 = &unk_1F2D5AA30;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C880C0](*v2, 0x1070C8005A2B047);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B5D9CD70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5D9CDC4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5D9CDC4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1B5D9CE1C(void *a1)
{
  sub_1B5D9CCDC(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9CE5C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1B5D9CF38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1B5D051D8(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1B5D9D008(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1B5CE5968();
      }

      sub_1B5D04FA0();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = v4 + 24 * ((24 * v6 - 24) / 0x18) + 24;
  }
}

void *sub_1B5D9D1E0(void *result)
{
  if (result[2] - *result <= 0x7FuLL)
  {
    v1 = result[1] - *result;
    operator new();
  }

  return result;
}

uint64_t sub_1B5D9D298(uint64_t a1, int a2, int a3)
{
  v6 = sub_1B5D9CE5C((a1 + 96));
  v7 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  sub_1B5D9CF38(*(a1 + 48) + 24 * a2, &v12);
  sub_1B5D9CF38(*(a1 + 72) + 24 * (*(v6 + 20) + a2), &v12);
  return v6;
}

uint64_t sub_1B5D9D3F8(uint64_t a1, char *a2, unsigned __int16 a3)
{
  sub_1B5D9D478(&v7, *(a1 + 8));
  if (v7)
  {
    v5 = sub_1B5D588C8(v7, a2, a3);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_1B5CDD904(v8);
  }

  return v5;
}

void sub_1B5D9D460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D9D478(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 32));
  *a1 = 0;
  a1[1] = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    a1[1] = v5;
    if (v5)
    {
      *a1 = *(a2 + 8);
    }
  }

  std::mutex::unlock((a2 + 32));
}

void sub_1B5D9D4D8(uint64_t a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B5D9D478(&v8, *(a1 + 8));
  if (v8)
  {
    v6 = (v8 + 1512);
  }

  else
  {
    v6 = (a1 + 24);
  }

  sub_1B5CDC3DC(a3, *v6, a2);
  v7 = v9;
  if (v9)
  {

    sub_1B5CDD904(v7);
  }
}

void sub_1B5D9D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9D584(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  sub_1B5D9D478(&v9, *(a1 + 8));
  if (v9)
  {
    v6 = sub_1B5D4E0F8(*(v9 + 1512), a2, a3);
  }

  else
  {
    v6 = sub_1B5D4E0F8(*(a1 + 24), a2, a3);
  }

  v7 = v6;
  if (v10)
  {
    sub_1B5CDD904(v10);
  }

  return v7;
}

void sub_1B5D9D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D9D620(uint64_t a1, uint64_t a2)
{
  sub_1B5D9D478(&v4, *(a1 + 8));
  if (!v4)
  {
    __assert_rtn("enumerate_common_letter_forms", "LXDynamicLexiconProxy.cpp", 169, "false && enumerate_common_letter_forms not supported for a detached lexicon proxy");
  }

  sub_1B5D58CB4(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_1B5CDD904(v3);
  }
}

void sub_1B5D9D6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9D6C8(uint64_t a1)
{
  sub_1B5D9D478(&v4, *(a1 + 8));
  if (v4)
  {
    Instance = sub_1B5D58DB0(v4);
  }

  else
  {
    v2 = *MEMORY[0x1E695E480];
    if (qword_1ED833B58[0] != -1)
    {
      dispatch_once(qword_1ED833B58, &unk_1F2D5AA50);
    }

    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = &unk_1F2D55C10;
  }

  if (v5)
  {
    sub_1B5CDD904(v5);
  }

  return Instance;
}

void sub_1B5D9D78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9D83C()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

CFStringRef sub_1B5D9D890(uint64_t a1)
{
  sub_1B5D9D478(&v6, *(a1 + 8));
  if (v6)
  {
    if (*(v6 + 80))
    {
      v2 = *(v6 + 80);
    }

    else
    {
      v2 = (v6 + 88);
    }

    v3 = strlen(v2);
  }

  else
  {
    v3 = *(a1 + 63);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
    }

    else
    {
      v2 = (a1 + 40);
    }
  }

  v4 = sub_1B5CDFA10(v2, v3);
  if (v7)
  {
    sub_1B5CDD904(v7);
  }

  return v4;
}

void sub_1B5D9D91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9D934(uint64_t a1, unsigned int a2)
{
  sub_1B5D9D478(&v5, *(a1 + 8));
  if (v5)
  {
    v3 = sub_1B5D590B4(v5, a2);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    sub_1B5CDD904(v6);
  }

  return v3;
}

void sub_1B5D9D994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9D9AC(uint64_t a1)
{
  sub_1B5D9D478(&v3, *(a1 + 8));
  if (v3)
  {
    v1 = sub_1B5D5955C(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  return v1;
}

void sub_1B5D9DA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D9DA74(uint64_t a1)
{
  *a1 = &unk_1F2D559E8;
  os_release(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9DB08(uint64_t a1)
{
  *a1 = &unk_1F2D559E8;
  os_release(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  return a1;
}

void sub_1B5D9DB7C(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 32));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 24);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1B5CDB000, v7, OS_LOG_TYPE_DEBUG, "updated the backing lexicon for a lexicon view", v8, 2u);
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1B5D9DC1C(uint64_t a1)
{
  *a1 = &unk_1F2D55AC8;
  std::mutex::~mutex((a1 + 32));
  os_release(*(a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9DC98(uint64_t a1)
{
  *a1 = &unk_1F2D55AC8;
  std::mutex::~mutex((a1 + 32));
  os_release(*(a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1B5D9DD1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D55250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9DD90(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  while (*&aK1n1114171g111[v3] != v4)
  {
    v3 += 2;
    if (v3 == 18)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
  if (a3)
  {
    v6 = 2 * a3;
    while (a2[v5] == v4)
    {
      ++v5;
      v6 -= 2;
      if (!v6)
      {
        v5 = ((a3 - 1) & 0x7FFFFFFFFFFFFFFFLL) + 1;
        break;
      }
    }
  }

  if (v5 < qword_1B5DC8AD0[v3])
  {
LABEL_11:
    v7 = 0;
    *result = 0;
    goto LABEL_12;
  }

  *result = 0;
  *(result + 8) = v5;
  v7 = 1;
LABEL_12:
  *(result + 16) = v7;
  return result;
}

void sub_1B5D9DE28(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D5AF80);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = &unk_1F2D5A148;
  *(Instance + 24) = a1;
  *(Instance + 32) = 0x100000;
  *(Instance + 36) = 0;
  *(Instance + 38) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0;
  v4 = sub_1B5D4F320(a1);
  v8 = v4;
  v5 = sub_1B5D9E82C(a1);
  v7 = v5;
  if (v4 && v5)
  {
    v6 = *(Instance + 72);
    if (v6 < *(Instance + 80))
    {
      sub_1B5D97958(v6, v4);
    }

    sub_1B5D96F60((Instance + 64), &v8);
  }

  __assert_rtn("MorphemeLevelLexiconCursor", "MorphemeLevelLexiconCursor.cpp", 36, "open_class_morpheme_cursor && closed_class_morpheme_cursor");
}

void sub_1B5D9DFB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D066D0(va, 0);
  sub_1B5D952E0(va);
  v4 = *(v2 + 40);
  if (v4)
  {
    if (*(v2 + 38) == 1)
    {
      free(v4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9E00C()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

CFStringRef sub_1B5D9E060(uint64_t a1)
{
  *(&v6.__r_.__value_.__s + 23) = 9;
  strcpy(&v6, "Morpheme-");
  if (*(a1 + 30144))
  {
    v1 = *(a1 + 30144);
  }

  else
  {
    v1 = (a1 + 30152);
  }

  std::string::append(&v6, v1, *(a1 + 30136));
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v6;
  }

  else
  {
    v2 = v6.__r_.__value_.__r.__words[0];
  }

  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  v4 = sub_1B5CDFA10(v2, size);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1B5D9E100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9E120(uint64_t a1, CFErrorRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (sub_1B5D4FD18(a1, a2))
  {
    v3 = *(a1 + 30176);
    *&v13.__pn_.__r_.__value_.__r.__words[1] = 0uLL;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = (a1 + 30184);
    }

    v13.__pn_.__r_.__value_.__r.__words[0] = 0;
    v5 = (v4 - 1);
    do
    {
      v6 = v5->__r_.__value_.__s.__data_[1];
      v5 = (v5 + 1);
    }

    while (v6);
    sub_1B5CE5F0C(&v13.__pn_, v4, v5);
    sub_1B5D84A28(&__dst, &v13);
    sub_1B5D9E714(&__p, &off_1E7C21C40);
    sub_1B5D9E76C(&v12, &__dst, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v15 < 0)
    {
      operator delete(__dst);
    }

    if ((v12.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v12.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__pn_.__r_.__value_.__l.__size_;
    }

    if (size < 0x7FFFFFFFFFFFFFF8)
    {
      if (size < 0x17)
      {
        v15 = size;
        if (size)
        {
          memmove(&__dst, v7, size);
        }

        *(&__dst + size) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

std::string *sub_1B5D9E714(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_1B5CE5F0C(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_1B5D9E750(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1B5D9E76C(std::__fs::filesystem::path *__dst, uint64_t a2, std::__fs::filesystem::path *this)
{
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *&__dst->__pn_.__r_.__value_.__l.__data_ = *a2;
    __dst->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    return std::string::operator=(&__dst->__pn_, &this->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(__dst).__size_)
  {
    std::string::push_back(&__dst->__pn_, 47);
  }

  v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(&__dst->__pn_, v7, size);
}

void sub_1B5D9E810(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9E82C(uint64_t a1)
{
  v1 = sub_1B5D4F320(a1);
  v2 = LXCursorCreateByAdvancing(v1, @"+");
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_1B5D9E880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D066D0(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5D9E898(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1B5D066D0(v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  sub_1B5D066D0(a1, 0);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D9E928(uint64_t a1)
{
  sub_1B5D9E960(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D9E960(uint64_t a1)
{
  *a1 = &unk_1F2D5AA80;
  v2 = *(a1 + 30888);
  *(a1 + 30888) = 0;
  if (v2)
  {
    sub_1B5D9E898(v2);
  }

  v3 = *(a1 + 30880);
  *(a1 + 30880) = 0;
  if (v3)
  {
    sub_1B5D9E898(v3);
  }

  *(a1 + 30800) = &unk_1F2D5AB78;
  sub_1B5D9EA90((a1 + 30816));
  sub_1B5D86F80((a1 + 30808));
  sub_1B5D0C498(a1 + 30264);
  *a1 = &unk_1F2D56968;
  v4 = *(a1 + 30240);
  if (v4 && *(a1 + 30238) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 30208);
  if (v5 && *(a1 + 30206) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 30176);
  if (v6 && *(a1 + 30174) == 1)
  {
    free(v6);
  }

  v7 = *(a1 + 30144);
  if (v7 && *(a1 + 30142) == 1)
  {
    free(v7);
  }

  sub_1B5D240C0(a1 + 8);
  return a1;
}

void *sub_1B5D9EA90(void *a1)
{
  *a1 = &unk_1F2D5ABA8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1B5CE61CC(a1 + 2);
  return a1;
}

uint64_t sub_1B5D9EAE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_1F2D5AF10;
    v8[1] = a3;
    v8[3] = v8;
    sub_1B5CE6910(a1 + 2, a2, v8);
    result = sub_1B5D5FC3C(v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D9EBB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9EBD0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5AF70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9EC10(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v5 = *a2;
  v3 = *(v2 + 24);
  if (!v3)
  {
    sub_1B5CEC274();
  }

  return (*(*v3 + 48))(v3, &v5);
}

uint64_t sub_1B5D9EC74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5AF10;
  a2[1] = v2;
  return result;
}

double sub_1B5D9ED38@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B5D9ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2D5AE10;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  sub_1B5CE6784((a1 + 16), a2, 2 * a3, v7, (a5 << (a5 > 0)));
  result = sub_1B5D5FE94(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D9EDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9EDFC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5AE70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9EE3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_1B5D972F0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D9769C(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D9EEAC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5AE10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D9EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5AD90;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_1B5CE6700((a1 + 16), a2, 2 * a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D9EFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9EFF4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5ADF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9F034(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_1B5D972F0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D9769C(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D9F0A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5AD90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D9F140(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = 0;
  v6 = sub_1B5CE65F8((a1 + 16), a2, 2 * a3, &v8);
  if (v6)
  {
    *a4 = sub_1B5D972F0(a1, v8);
  }

  return v6;
}

uint64_t sub_1B5D9F1A4(void *a1, uint64_t **a2, int **a3)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = sub_1B5D9F2E4(a1, v5, v6, &__p);
  if (v9)
  {
    sub_1B5CE13B8(a1 + 5, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    v10 = a1[5];
    v11 = a2[1] - *a2;
    if (v11)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v13 = *a3;
      v14 = __p;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        *(v10 + 4 * v17) = v15;
        --v12;
      }

      while (v12);
    }

    v18 = (a1[6] - v10) >> 2;
    a1[3] = v10;
    a1[4] = v18;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1B5D9F2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D9F2E4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a2 != a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *a2;
      v4 = a2[1];
    }

    sub_1B5D60A70(1uLL);
  }

  sub_1B5CE61D0((a1 + 16), &__p, a4, *(a1 + 8));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t sub_1B5D9F494@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_1B5CF7CDC(v17);
  sub_1B5CE64A4(a1 + 2, &v18);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v5 = v20[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - locale;
  if (v4)
  {
    memmove(&__dst, locale, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  v7 = a1[4];
  if (v7)
  {
    v8 = SHIBYTE(v16);
    if (v16 >= 0)
    {
      v9 = HIBYTE(v16);
    }

    else
    {
      v9 = *(&__dst + 1);
    }

    *__s = v9;
    v10 = a1[3];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v8 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    std::string::append(a2, p_dst, v9);
    std::string::append(a2, v10, 4 * v7);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = __dst;
    a2->__r_.__value_.__r.__words[2] = v16;
  }

  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v26);
}

void sub_1B5D9F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_1B5CFBC44(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9F7C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5AD10;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3 >> 1, v6);
  result = sub_1B5D97568(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D9F86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D97568(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9F88C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5AD70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9F8F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5AD10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D9F988(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5AC80;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3 >> 1, v6);
  result = sub_1B5D97568(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D9FA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D97568(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9FA50(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5ACF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D9FAB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5AC80;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D9FB4C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3 >> 1, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D9FBAC(uint64_t *a1, uint64_t a2, void **a3, unint64_t *a4, _DWORD *a5)
{
  v5 = a5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v11 = *a4++;
      v12 = v11 >> 1;
      v13 = v29;
      if (v29 >= v30)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1B5D04FA0();
        }

        if (0x5555555555555556 * ((v30 - v28) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v30 - v28) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v30 - v28) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v35 = &v28;
        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1B5CE5968();
        }

        v31 = 0;
        v32 = (8 * ((v29 - v28) >> 3));
        v33 = v32;
        v34 = 0;
        sub_1B5D9FEF8(v32, v10, v12);
        v14 = v33 + 3;
        v17 = v32 - (v29 - v28);
        memcpy(v17, v28, v29 - v28);
        v18 = v28;
        v19 = v30;
        v28 = v17;
        v29 = v14;
        v30 = v34;
        v31 = v18;
        v33 = v18;
        v34 = v19;
        v32 = v18;
        sub_1B5DA0010(&v31);
      }

      else
      {
        sub_1B5D9FEF8(v29, *a3, v12);
        v14 = v13 + 24;
      }

      v29 = v14;
      if (v5)
      {
        if (((v27 >> 2) + 1) >> 62)
        {
          sub_1B5D04FA0();
        }

        if (v27 >> 2 != -1)
        {
          sub_1B5D0DF30((v27 >> 2) + 1);
        }

        v20 = (4 * (v27 >> 2));
        *v20 = *v9;
        memcpy(0, 0, v27);
        v5 = a5;
        v27 = (v20 + 1);
      }

      v9 += 2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v21 = *a1;
  if (v5)
  {
    v22 = (*(v21 + 64))();
  }

  else
  {
    v22 = (*(v21 + 56))();
  }

  v23 = v22;
  v31 = &v28;
  sub_1B5D9FF84(&v31);
  return v23;
}

void sub_1B5D9FEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  sub_1B5D9FF84(&__p);
  _Unwind_Resume(a1);
}

_BYTE *sub_1B5D9FEF8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = __dst;
  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (a3 | 3) + 1;
    }

    sub_1B5D0DF78(v5);
  }

  __dst[23] = a3;
  if (a3)
  {
    __dst = memmove(__dst, __src, 2 * a3);
  }

  *&v4[2 * a3] = 0;
  return __dst;
}

void sub_1B5D9FF84(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5DA0010(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5DA0074(void *a1)
{
  sub_1B5D9EA90(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5DA00B0(void *a1)
{
  *a1 = &unk_1F2D5AB78;
  v1 = a1 + 1;
  sub_1B5D9EA90(a1 + 2);
  sub_1B5D86F80(v1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DA0124(void *a1)
{
  *a1 = &unk_1F2D5AB78;
  v2 = a1 + 1;
  sub_1B5D9EA90(a1 + 2);
  sub_1B5D86F80(v2);
  return a1;
}

uint64_t sub_1B5DA017C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D066D0(v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1B5DA01CC(void *a1)
{
  v2 = a1 + 3584;
  *a1 = &unk_1F2D56968;
  v3 = a1[3780];
  if (v3 && v2[1566] == 1)
  {
    free(v3);
  }

  v4 = a1[3776];
  if (v4 && v2[1534] == 1)
  {
    free(v4);
  }

  v5 = a1[3772];
  if (v5 && v2[1502] == 1)
  {
    free(v5);
  }

  v6 = a1[3768];
  if (v6 && v2[1470] == 1)
  {
    free(v6);
  }

  sub_1B5D240C0((a1 + 1));
  return a1;
}

void sub_1B5DA0278(char *a1, uint64_t a2, const __CFString *a3)
{
  v3 = sub_1B5D50360(a1, a2, a3, 0, 0);
  *v3 = &unk_1F2D5AA80;
  sub_1B5D0B8D0(v3 + 3783);
}

void sub_1B5DA0350(_Unwind_Exception *a1)
{
  sub_1B5D86F80(v1 + 3851);
  sub_1B5D0C498((v1 + 3783));
  sub_1B5DA01CC(v1);
  _Unwind_Resume(a1);
}

void sub_1B5DA0384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5CDC2F8(&v5, a2 + 8);
  (*(*v5 + 16))(v5, a3);
  v4 = v6;
  if (v6)
  {

    sub_1B5CDD904(v4);
  }
}

void sub_1B5DA0414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA042C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = 30888;
  if (!a3)
  {
    v4 = 30880;
  }

  v5 = *(a1 + v4);
  v27 = a2;
  v6 = v5 + 1;
  v7 = a2;
  v8 = v5[2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (v8 <= a2)
    {
      v10 = a2 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & a2;
  }

  v11 = *(*v6 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    v14 = LXCursorCreateByAdvancingWithUTF32(*v5, &v27, 1);
    v15 = v5[2];
    if (!*&v15)
    {
      goto LABEL_36;
    }

    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      v17 = v7;
      if (*&v15 <= v7)
      {
        v17 = a2 % v15.i32[0];
      }
    }

    else
    {
      v17 = (v15.i32[0] - 1) & v7;
    }

    v18 = *(*v6 + 8 * v17);
    if (!v18 || (v19 = *v18) == 0)
    {
LABEL_36:
      operator new();
    }

    while (1)
    {
      v20 = v19[1];
      if (v20 == v7)
      {
        if (*(v19 + 4) == a2)
        {
          if (v14)
          {
            CFRelease(v14);
          }

          v8 = v5[2];
          goto LABEL_38;
        }
      }

      else
      {
        if (v16.u32[0] > 1uLL)
        {
          if (v20 >= *&v15)
          {
            v20 %= *&v15;
          }
        }

        else
        {
          v20 &= *&v15 - 1;
        }

        if (v20 != v17)
        {
          goto LABEL_36;
        }
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == a2)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 4) != a2)
  {
    goto LABEL_18;
  }

LABEL_38:
  if (!v8)
  {
    goto LABEL_55;
  }

  v21 = vcnt_s8(v8);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = v7;
    if (v8 <= v7)
    {
      v22 = a2 % v8;
    }
  }

  else
  {
    v22 = (v8 - 1) & v7;
  }

  v23 = *(*v6 + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_55:
    operator new();
  }

  while (2)
  {
    v25 = v24[1];
    if (v25 != v7)
    {
      if (v21.u32[0] > 1uLL)
      {
        if (v25 >= v8)
        {
          v25 %= v8;
        }
      }

      else
      {
        v25 &= v8 - 1;
      }

      if (v25 != v22)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (*(v24 + 4) != a2)
    {
LABEL_54:
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_55;
      }

      continue;
    }

    return v24[3];
  }
}

void sub_1B5DA0950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_1B5DA017C(va1);
  sub_1B5D066D0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t LXVulgarWordUsageDatabaseCreate(const __CFString *a1, CFErrorRef *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  if (qword_1ED8338B8[0] != -1)
  {
    dispatch_once(qword_1ED8338B8, &unk_1F2D5AFA0);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  v6 = (Instance + 16);
  *(Instance + 32) = 0u;
  if (qword_1ED833820 != -1)
  {
    dispatch_once(&qword_1ED833820, &unk_1F2D58820);
  }

  sub_1B5CDC4B4(v34, a1);
  if (v35)
  {
    v7 = v35;
  }

  else
  {
    v7 = &v36;
  }

  v8 = qword_1ED8338C8;
  std::mutex::lock(qword_1ED8338C8);
  v9 = strlen(v7);
  v10 = v9;
  v11 = *(Instance + 47);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = (Instance + 24);
    if (v10 != v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (!memcmp(v12, v7, v10))
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  if (v9 == *(Instance + 32))
  {
    if (v9 == -1)
    {
      sub_1B5D15224();
    }

    v12 = *(Instance + 24);
    goto LABEL_14;
  }

LABEL_15:
  error = a2;
  v32.__r_.__value_.__r.__words[0] = 0;
  v32.__r_.__value_.__l.__size_ = &v32;
  v32.__r_.__value_.__r.__words[2] = 0x2000000000;
  v13 = off_1ED833828;
  v33 = off_1ED833828;
  if (!off_1ED833828)
  {
    *&ppStmt = MEMORY[0x1E69E9820];
    *(&ppStmt + 1) = 0x40000000;
    v38 = sub_1B5D5DE50;
    v39 = &unk_1E7C21160;
    v40 = &v32;
    sub_1B5D5DE50(&ppStmt);
    v13 = *(v32.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v32, 8);
  if (!v13)
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
    return result;
  }

  if (v13() != 1)
  {
    goto LABEL_38;
  }

  ppDb = 0;
  v14 = sqlite3_open_v2(v7, &ppDb, 3145734, 0);
  if (v14)
  {
    v15 = sqlite3_errmsg(ppDb);
    v16 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error creating/opening database at: %s, %s", v7, v15);
    *&ppStmt = v16;
    sub_1B5D5E078(v14, v16, error);
    sqlite3_close(ppDb);
    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_38;
  }

  if (!ppDb)
  {
LABEL_38:
    *v6 = 0;
    goto LABEL_39;
  }

  v17 = strlen(v7);
  v18 = CFURLCreateFromFileSystemRepresentation(v4, v7, v17, 0);
  if (!CFURLSetResourcePropertyForKey(v18, *MEMORY[0x1E695EB30], *MEMORY[0x1E695E4D0], error))
  {
    v20 = atomic_load(byte_1EB90C7D0);
    if (v20)
    {
      v21 = atomic_load(byte_1EB90CC20);
      if (v21)
      {
        printf("VulgarWordUsageDatabase: failed to set backup exclusion for database at: %s", v7);
        putchar(10);
      }

      else
      {
        v24 = sub_1B5D32914();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LODWORD(ppStmt) = 136315138;
          *(&ppStmt + 4) = v7;
          _os_log_impl(&dword_1B5CDB000, v24, OS_LOG_TYPE_ERROR, "VulgarWordUsageDatabase: failed to set backup exclusion for database at: %s", &ppStmt, 0xCu);
        }
      }
    }

    CFRelease(v18);
    sqlite3_close(ppDb);
    remove(v7, v25);
    goto LABEL_38;
  }

  CFRelease(v18);
  if (!ppDb)
  {
    __assert_rtn("attempt_database_migration", "LXVulgarWordUsageDatabaseImpl.cpp", 203, "db");
  }

  *&ppStmt = 0;
  if (sqlite3_prepare_v2(ppDb, "SELECT value FROM properties WHERE key = 'version'", -1, &ppStmt, 0))
  {
LABEL_26:
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.Lexicon-framework");
    *&ppStmt = CFBundleCopyResourceURL(BundleWithIdentifier, @"vulgar_word_usage_database_schema", @"sql", 0);
    v32.__r_.__value_.__r.__words[0] = CFURLCopyFileSystemPath(ppStmt, kCFURLPOSIXPathStyle);
    CFStringGetLength(v32.__r_.__value_.__l.__data_);
    operator new[]();
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    sqlite3_finalize(ppStmt);
    v23 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error reading the library version: %d", 0);
    v32.__r_.__value_.__r.__words[0] = v23;
    sub_1B5D5E078(0, v23, error);
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_26;
  }

  v22 = sqlite3_column_int(ppStmt, 0);
  sqlite3_finalize(ppStmt);
  if (v22 != 2)
  {
    goto LABEL_26;
  }

  v27 = ppDb;
  *v6 = ppDb;
  if (!v27)
  {
LABEL_39:
    v26 = 0;
    if (*(Instance + 47) < 0)
    {
      **(Instance + 24) = 0;
      *(Instance + 32) = 0;
    }

    else
    {
      *(Instance + 24) = 0;
      *(Instance + 47) = 0;
    }

    goto LABEL_45;
  }

  sub_1B5D0E3A4((Instance + 24), v7);
LABEL_44:
  v26 = 1;
LABEL_45:
  std::mutex::unlock(v8);
  if (v35 && v34[6] == 1)
  {
    free(v35);
  }

  if ((v26 & 1) == 0)
  {
    CFRelease(Instance);
    Instance = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return Instance;
}