uint64_t sub_1D0D97C6C(uint64_t a1)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84660;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97CD0(uint64_t a1)
{
  *(a1 + 24) = 0x1200000013;
  *a1 = &unk_1F4CE2568;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84780;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97D14(uint64_t a1)
{
  *(a1 + 24) = 0x1300000012;
  *a1 = &unk_1F4CE25B0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84790;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1200000012;
  *a1 = &unk_1F4CE25F8;
  *(a1 + 8) = xmmword_1D0E84680;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D97DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1300000012;
  *a1 = &unk_1F4CE25B0;
  *(a1 + 8) = xmmword_1D0E84790;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D97E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0xF00000012;
  *a1 = &unk_1F4CE2640;
  *(a1 + 8) = xmmword_1D0E84670;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D97F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D97FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D98030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0D98158(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D9828C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D983C8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D98504(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D98640(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0D98740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000013;
  *(a1 + 8) = xmmword_1D0E844F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2688;
  *(a1 + 192) = a2;
  *(a1 + 224) = 0x100000013;
  *(a1 + 200) = &unk_1F4CE2378;
  *(a1 + 208) = xmmword_1D0E844F0;
  *(a1 + 232) = a1 + 240;
  sub_1D0B9F5D4(a1 + 200, a3);
  v6 = *(a1 + 208);
  v5 = *(a1 + 212);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 232);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0D98818(void *a1)
{
  a1[25] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D988A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D989B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D98AA8(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D858E0();
}

void sub_1D0D98B0C(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0D98B90(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0D98C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

__n128 sub_1D0D98D1C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000001CLL;
  *(a1 + 24) = 0x10000001CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0A20;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x1C)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D98E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v115 = v26;
  v28 = v27;
  v30 = v29;
  v116 = v31;
  v117 = v32;
  v34 = v33;
  if (a19 >= 1)
  {
    v35 = 0;
    do
    {
      sub_1D0BBA094(&v118, *(a11 + 32) + v35);
      v35 += 64;
    }

    while (a19 << 6 != v35);
    v36 = 0;
    v37 = 0;
    do
    {
      sub_1D0BBA094(&v118, *(a13 + 32) + v37);
      sub_1D0BE0DE8(&v118, *(a14 + 32) + v36);
      sub_1D0BE0DE8(&v118, *(a14 + 32) + v36);
      v37 += 64;
      v36 += 112;
    }

    while (a19 << 6 != v37);
  }

  sub_1D0D9FA60(&__p, a16, 0);
  v120 = &v121;
  v38 = v124;
  *v119 = 1;
  *&v119[4] = v124;
  *&v119[20] = 1;
  *&v119[8] = v124;
  *&v119[12] = 0x400000001;
  if (v124)
  {
    v39 = 0;
    v40 = v125;
    v41 = v123;
    v42 = v123 - 1;
    v43 = 1;
    do
    {
      v44 = *(v40 + 4 * v41 * v39);
      v45 = v43;
      v46 = v42;
      if (v41 >= 2)
      {
        do
        {
          v44 += *(v40 + 4 * v45++);
          --v46;
        }

        while (v46);
      }

      *(&v121 + v39++) = v44;
      v43 += v41;
    }

    while (v39 != v38);
  }

  sub_1D0D9FA60(&__p, a16, 1);
  v120 = &v121;
  v47 = v124;
  *v119 = 1;
  *&v119[4] = v124;
  *&v119[20] = 1;
  *&v119[8] = v124;
  *&v119[12] = 0x400000001;
  if (v124)
  {
    v48 = 0;
    v49 = v125;
    v50 = v123;
    v51 = v123 - 1;
    v52 = 1;
    do
    {
      v53 = *(v49 + 4 * v50 * v48);
      v54 = v52;
      v55 = v51;
      if (v50 >= 2)
      {
        do
        {
          v53 += *(v49 + 4 * v54++);
          --v55;
        }

        while (v55);
      }

      *(&v121 + v48++) = v53;
      v52 += v50;
    }

    while (v48 != v47);
  }

  *&v119[16] = 0x100000004;
  *v119 = xmmword_1D0E7DCE0;
  v118 = &unk_1F4CDFDB8;
  v120 = &v121;
  LogLevel = sub_1D0BBCB88(a23, 1, &v118);
  v57 = *(a26 + 64);
  v58 = *(a26 + 32);
  v114 = *(a26 + 33);
  v59 = *(a26 + 40);
  v112 = *(a26 + 88);
  v60 = *(a26 + 72);
  v113 = *(a26 + 96);
  v110 = *(a26 + 80);
  v111 = *(a26 + 56);
  if (a19 >= 1)
  {
    v61 = 0;
    do
    {
      v62 = *(*(a9 + 32) + 4 * v61);
      v63 = *(*(a12 + 32) + 4 * v61);
      if (v62 <= v63)
      {
        ++v61;
      }

      else
      {
        LOWORD(v118) = 2;
        LOBYTE(__p) = 2;
        cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "%d measurements > %d noise sources in measurement function %d.", v62, v63, ++v61);
        if (*(v34 + 1295) >= 0)
        {
          LOBYTE(v69) = v34 - 8;
        }

        else
        {
          v69 = *(v34 + 1272);
        }

        cnprint::CNPrinter::Print(&v118, &__p, "%s", v64, v65, v66, v67, v68, v69);
      }
    }

    while (v61 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v118) = 2;
      LOBYTE(__p) = 1;
      v70 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v34 + 1295) >= 0)
      {
        LOBYTE(v76) = v70;
      }

      else
      {
        v76 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v118, &__p, "%s", v71, v72, v73, v74, v75, v76);
    }
  }

  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v118) = 2;
    LOBYTE(__p) = 1;
    v77 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v34 + 1295) >= 0)
    {
      LOBYTE(v83) = v77;
    }

    else
    {
      v83 = *(v34 + 1272);
    }

    cnprint::CNPrinter::Print(&v118, &__p, "%s", v78, v79, v80, v81, v82, v83);
  }

  v84 = *(a26 + 8);
  *&v119[16] = 0x100000057;
  *v119 = xmmword_1D0E84400;
  v118 = &unk_1F4CE0470;
  v120 = &v121;
  v85 = sub_1D0BBCB88(a9, 1, &v118);
  if (v84 < *v120)
  {
    v85 = cnprint::CNPrinter::GetLogLevel(v85);
    if (v85 <= 1)
    {
      LOWORD(v118) = 2;
      LOBYTE(__p) = 1;
      v86 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v34 + 1295) >= 0)
      {
        LOBYTE(v92) = v86;
      }

      else
      {
        v92 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v118, &__p, "%s", v87, v88, v89, v90, v91, v92);
    }
  }

  if (*(a26 + 89) == 1)
  {
    v85 = cnprint::CNPrinter::GetLogLevel(v85);
    if (v85 <= 1)
    {
      LOWORD(v118) = 2;
      LOBYTE(__p) = 1;
      v93 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v34 + 1295) >= 0)
      {
        LOBYTE(v99) = v93;
      }

      else
      {
        v99 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v118, &__p, "%s", v94, v95, v96, v97, v98, v99);
    }
  }

  if ((v58 & 1) == 0 && v114 && cnprint::CNPrinter::GetLogLevel(v85) <= 1)
  {
    LOWORD(v118) = 2;
    LOBYTE(__p) = 1;
    v100 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v34 + 1295) >= 0)
    {
      LOBYTE(v106) = v100;
    }

    else
    {
      v106 = *(v34 + 1272);
    }

    cnprint::CNPrinter::Print(&v118, &__p, "%s", v101, v102, v103, v104, v105, v106);
  }

  if (*(v116 + 8) && *(v116 + 12))
  {
    v107 = v34 + 8;
    v108 = v116;
  }

  else
  {
    if ((v117 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    *&v119[16] = 0x10000001ALL;
    v118 = &unk_1F4CE3E48;
    v120 = &v121;
    *v119 = v117;
    *&v119[4] = 1;
    *&v119[8] = v117;
    *&v119[12] = v117;
    if (v117 > 3)
    {
      v109 = &v121 + v117;
      bzero(&v121, 16 * ((v117 - 1) >> 1));
      *(v109 - 2) = 0;
      *(v109 - 1) = 0;
    }

    else if (v117)
    {
      bzero(&v121, 8 * v117);
    }

    v107 = v34 + 8;
    v108 = &v118;
  }

  sub_1D0B894B0(v107, v108);
  if (*(v115 + 8) && *(v115 + 12))
  {
    sub_1D0B894B0(v34 + 256, v115);
    if (!*(v30 + 8) || !*(v30 + 12))
    {
      *&v119[16] = 0x10000001ALL;
      *v119 = xmmword_1D0E843B0;
      v118 = &unk_1F4CE3E48;
      v120 = &v121;
      sub_1D0B89390(v34 + 256, v34 + 8, &v118);
      sub_1D0B894B0(v34 + 304, &v118);
    }

    if ((v117 & 0x80000000) == 0)
    {
      sub_1D0DA0E30(&v118, v28, v117);
    }

    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  if ((v117 & 0x80000000) == 0)
  {
    sub_1D0D87C2C(&v118, v117, v117);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
}

void sub_1D0D9F34C(_Unwind_Exception *a1)
{
  sub_1D0DA2BF0(&STACK[0x15D8]);
  sub_1D0DA32F8(&STACK[0x2550]);
  sub_1D0DA32F8(&STACK[0x2580]);
  sub_1D0D857FC(&STACK[0x24D8]);
  sub_1D0DA30B8((v1 - 208));
  sub_1D0DA30B8(&STACK[0x2510]);
  sub_1D0DA4AF4(&STACK[0x25B0]);
  sub_1D0DA20A0(&STACK[0x25E0]);
  sub_1D0D8B128(&STACK[0x2CE8]);
  sub_1D0D857FC(&STACK[0x2D18]);
  sub_1D0D857FC(&STACK[0x2D48]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D9FA60(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  *(result + 24) = 0x100000004;
  *result = &unk_1F4CDFDB8;
  *(result + 8) = v3;
  *(result + 12) = 1;
  *(result + 16) = v3;
  *(result + 20) = v3;
  v4 = (result + 40);
  *(result + 32) = result + 40;
  if (v3)
  {
    v5 = *(a2 + 20) * a3;
    v6 = *(a2 + 32);
    do
    {
      *v4++ = *(v6 + 4 * v5++);
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_1D0D9FB08(void *result)
{
  result[29] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D9FB48(void *a1)
{
  *a1 = &unk_1F4CE28C0;
  a1[25] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D8B128(a1);
}

void *sub_1D0D9FBA8(void *result)
{
  result[82] = &unk_1F4CDEAF8;
  result[75] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D9FC2C()
{
  v3 = 0x100000088;
  v1 = &unk_1F4CE2A70;
  v2 = xmmword_1D0E847C0;
  v4 = &v5;
  sub_1D0DA4670(v0);
}

void sub_1D0D9FCDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0DA471C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D9FCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x100000057;
  *a2 = &unk_1F4CE0470;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0D2EF0C(a1, a2);
}

uint64_t sub_1D0D9FD78@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x5700000001;
  *a3 = &unk_1F4CE2AB8;
  *(a3 + 32) = a3 + 40;
  v3 = (a2 - result);
  if (a2 == result)
  {
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    *(a3 + 8) = v4;
    *(a3 + 40) = result;
  }

  else if (a2 - result < 0)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *(a3 + 8) = 1;
    *(a3 + 12) = v3 + 1;
    *(a3 + 16) = v3 + 1;
    *(a3 + 20) = 1;
    v5 = vdupq_n_s64(v3);
    v6 = (a3 + 52);
    v7 = (4 * ~(v3 >> 2)) | 0xFFFFFFFF80000000;
    v8 = xmmword_1D0E84440;
    v9 = xmmword_1D0E7DD30;
    v10 = 13;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v9));
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v6 - 3) = result + v10 - 13;
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v6 - 2) = result + v10 - 12;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))).i32[1])
      {
        *(v6 - 1) = result + v10 - 11;
        *v6 = result + v10 - 10;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
      v6 += 4;
    }

    while (v7 + v10 != 13);
  }

  return result;
}

void *sub_1D0D9FEC4(void *result)
{
  result[93] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D9FF04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x570000001ALL;
  *a1 = &unk_1F4CE2B90;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  sub_1D0DA18C0();
}

void sub_1D0D9FFD4(uint64_t a1)
{
  *(a1 + 24) = 0x570000001ALL;
  *a1 = &unk_1F4CE2B90;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E847E0;
  sub_1D0DA18C0();
}

void sub_1D0DA00B4()
{
  v2 = 0x100000071;
  v0[6] = &unk_1F4CE2BD8;
  v1 = xmmword_1D0E847F0;
  v3 = &v4;
  sub_1D0DA2888(v0);
}

void sub_1D0DA0194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D0DA32F8(v9);
  sub_1D0DA2BF0(&a9);
  _Unwind_Resume(a1);
}

double sub_1D0DA03D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000057;
  *a3 = &unk_1F4CE04B8;
  *(a3 + 8) = xmmword_1D0E84400;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0BA5A78(a1, a2, a3);
  return result;
}

uint64_t sub_1D0DA0418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000057;
  *a3 = &unk_1F4CE04B8;
  *(a3 + 8) = xmmword_1D0E84400;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

void sub_1D0DA04EC(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v4 | v3) == 0)
  {
LABEL_9:
    if ((a1 + 1248) != &v15)
    {
      sub_1D0DA3374((a1 + 1248), v15, v16, (v16 - v15) >> 5);
    }
  }

  else
  {
    v8 = 1;
    while (1)
    {
      v9 = *(*(a2 + 32) + 4 * (v8 - 1));
      v10 = *(a1 + 1248);
      if (v9 >= (*(a1 + 1256) - v10) >> 5)
      {
        break;
      }

      sub_1D0BBCC94(&v15, v10 + 32 * v9);
      v12 = *(a2 + 8);
      v11 = *(a2 + 12);
      if (v12 <= v11)
      {
        v13 = *(a2 + 12);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      if (v12)
      {
        if (v11)
        {
          if (v13 > v8++)
          {
            continue;
          }
        }
      }

      goto LABEL_9;
    }
  }

  v18 = &v15;
  sub_1D0BA5F70(&v18);
}

void sub_1D0DA05C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1D0BA5F70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DA05E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000088;
  *a1 = &unk_1F4CE2CB0;
  *(a1 + 8) = xmmword_1D0E847C0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0DA0674(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000031;
  *a1 = &unk_1F4CE2CF8;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0DA0700(uint64_t result, unsigned int a2)
{
  *(result + 24) = 0x3100000001;
  *result = &unk_1F4CE2D40;
  *(result + 32) = result + 40;
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
    }

    else
    {
      v2 = 0;
      *(result + 8) = 1;
      *(result + 12) = a2 + 1;
      *(result + 16) = a2 + 1;
      *(result + 20) = 1;
      v3 = vdupq_n_s64(a2);
      v4 = xmmword_1D0E84440;
      v5 = xmmword_1D0E7DD30;
      v6 = (result + 52);
      v7 = vdupq_n_s64(4uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v3, v5));
        if (vuzp1_s16(v8, *v3.i8).u8[0])
        {
          *(v6 - 3) = v2;
        }

        if (vuzp1_s16(v8, *&v3).i8[2])
        {
          *(v6 - 2) = v2 + 1;
        }

        if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4))).i32[1])
        {
          *(v6 - 1) = v2 + 2;
          *v6 = v2 + 3;
        }

        v2 += 4;
        v4 = vaddq_s64(v4, v7);
        v5 = vaddq_s64(v5, v7);
        v6 += 4;
      }

      while ((a2 & 0x7FFFFFFC) + 4 != v2);
    }
  }

  else
  {
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *(result + 8) = v9;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_1D0DA0808@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000057;
  *a3 = &unk_1F4CE0470;
  v3 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  v5 = *(result + 8);
  v4 = *(result + 12);
  *(a3 + 8) = v5;
  *(a3 + 12) = v4;
  v6 = (v4 * v5);
  *(a3 + 16) = v6;
  *(a3 + 20) = v5;
  if (v6 >= 1)
  {
    v7 = *(result + 32);
    do
    {
      v8 = *v7++;
      *v3++ = v8 + a2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1D0DA08AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  sub_1D0DA3008(v11, *(a2 + 12));
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1D0E84440;
    v7 = xmmword_1D0E7DD30;
    v8 = (v11[4] + 8);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = v4 + 2;
        v8[1] = v4 + 3;
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (((v3 + 3) & 0xFFFFFFFC) != v4);
  }

  sub_1D0DA211C(a1);
}

void sub_1D0DA0B0C(_Unwind_Exception *a1)
{
  v1[80] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0DA30B8(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0DA0B58(void *a1)
{
  *a1 = &unk_1F4CE2D88;
  a1[80] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0DA30B8(a1);
}

void *sub_1D0DA0BB8(void *result)
{
  result[142] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DA0C1C(void *a1)
{
  *a1 = &unk_1F4CE2E18;
  sub_1D0DA3634(a1 + 5);
  *a1 = &unk_1F4CE2E70;
  return a1;
}

void *sub_1D0DA0C7C(void *a1)
{
  *a1 = &unk_1F4CE2EA0;
  a1[24] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D85624(a1);
}

void *sub_1D0DA0CDC(void *a1)
{
  *a1 = &unk_1F4CE2EE8;
  a1[24] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D836A8(a1);
}

void *sub_1D0DA0D44(void *a1)
{
  *a1 = &unk_1F4CE2FC0;
  a1[37] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0DA471C(a1);
}

void *sub_1D0DA0DA4(void *result)
{
  result[55] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DA0E30(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1A00000017;
  *a1 = &unk_1F4CE3DC0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D8378C();
}

void sub_1D0DA0E98(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DA0EE0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1D0C5663C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1D0BA5DE4(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = 32 * v2;
  v9 = 0;
  v20 = 32 * v2;
  v21 = 0;
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_1D0BC39B4((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v19;
    v11 = v20;
    v9 = v21;
  }

  else
  {
    v10 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v10;
    v11 = 32 * v2;
  }

  v12 = v11 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v8 - v13;
  memcpy((v8 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v9;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_1D0DA1008(&v18);
  return v12;
}

void sub_1D0DA0FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0DA1008(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DA1008(uint64_t a1)
{
  sub_1D0DA1040(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0DA1040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_1D0DA109C(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x170000001ALL;
  *a1 = &unk_1F4CE0FB8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D8378C();
}

void sub_1D0DA1104(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA1188(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA12BC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0DA13B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000017;
  *(a1 + 8) = xmmword_1D0E843C0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2878;
  *(a1 + 224) = a2;
  *(a1 + 256) = 0x100000017;
  *(a1 + 232) = &unk_1F4CE27E8;
  *(a1 + 240) = xmmword_1D0E843C0;
  *(a1 + 264) = a1 + 272;
  sub_1D0B9F5D4(a1 + 232, a3);
  v6 = *(a1 + 240);
  v5 = *(a1 + 244);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 264);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0DA148C(void *a1)
{
  a1[29] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1674(_Unwind_Exception *a1)
{
  v1[25] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0D8B128(v1);
  _Unwind_Resume(a1);
}

void sub_1D0DA16C0(void *a1)
{
  *a1 = &unk_1F4CE28C0;
  a1[25] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0D8B128(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1754(void *a1)
{
  sub_1D0DA20A0(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1940(void *a1)
{
  sub_1D0DA4AF4(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1B68(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0DA1C60(uint64_t result, int a2)
{
  *(result + 24) = 0x100000017;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE27E8;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1D0DA1D10(void *a1)
{
  a1[82] = &unk_1F4CDEAF8;
  a1[75] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1D80(void *a1)
{
  sub_1D0DA30B8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA1FA8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1D0DA20A0(void *a1)
{
  *a1 = &unk_1F4CE2908;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA211C(uint64_t a1)
{
  *(a1 + 24) = 0x3100000088;
  *(a1 + 32) = 0;
  *a1 = &unk_1F4CE2A28;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84820;
  sub_1D0DA1EEC();
}

void sub_1D0DA2184(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA2208(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA2258(void *a1)
{
  a1[93] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA22A8(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x5700000071;
  *(a1 + 32) = 0;
  *a1 = &unk_1F4CE2B48;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0DA24C4();
}

void sub_1D0DA2310(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA2358(void *a1)
{
  sub_1D0DA32F8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA254C(void *a1)
{
  sub_1D0DA26B8(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DA26B8(void *a1)
{
  *a1 = &unk_1F4CE2B90;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA2790(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA2888(uint64_t a1)
{
  *(a1 + 24) = 0x5700000057;
  *a1 = &unk_1F4CE2C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84830;
  sub_1D0DA299C();
}

void sub_1D0DA28EC(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA2934(void *a1)
{
  sub_1D0DA2BF0(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA2AEC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA2B44(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x5700000057;
  *a1 = &unk_1F4CE2C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0DA299C();
}

void sub_1D0DA2BA8(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void *sub_1D0DA2BF0(void *a1)
{
  *a1 = &unk_1F4CE2C20;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA2CA8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA2DDC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0DA2F10(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0DA3008(uint64_t result, int a2)
{
  *(result + 24) = 0x100000031;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE2CF8;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void *sub_1D0DA30B8(void *a1)
{
  *a1 = &unk_1F4CE2A28;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA3134(void *a1)
{
  *a1 = &unk_1F4CE2D88;
  a1[80] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0DA30B8(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DA31C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000088;
  *(a1 + 8) = xmmword_1D0E847C0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2DD0;
  *(a1 + 1128) = a2;
  *(a1 + 1160) = 0x100000088;
  *(a1 + 1136) = &unk_1F4CE2CB0;
  *(a1 + 1144) = xmmword_1D0E847C0;
  *(a1 + 1168) = a1 + 1176;
  sub_1D0B9F5D4(a1 + 1136, a3);
  v5 = *(a1 + 1144);
  v6 = *(a1 + 1148);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 1168);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0DA32A8(void *a1)
{
  a1[142] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DA32F8(void *a1)
{
  *a1 = &unk_1F4CE2B48;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA3374(uint64_t *a1, _DWORD *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_1D0DA3500(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0BA5E2C(a1, v11);
    }

    sub_1D0C5663C();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v17 = a2;
      v18 = *a1;
      do
      {
        v19 = *v17;
        v17 += 8;
        *v18 = v19;
        v18 += 8;
        std::string::operator=((v8 + 8), (v6 + 2));
        v8 = v18;
        v6 = v17;
      }

      while (v17 != a3);
      v12 = a1[1];
      v8 = v18;
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      v14 = a2;
      v15 = *a1;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((v8 + 8), (v6 + 2));
        v8 = v15;
        v6 = v14;
      }

      while (v14 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_1D0BA5E68(a1, v13, a3, v12);
  }
}

void sub_1D0DA3500(uint64_t *a1)
{
  if (*a1)
  {
    sub_1D0BA196C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1D0DA3540(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

void sub_1D0DA3588(uint64_t a1)
{
  *(a1 + 24) = 0x100000057;
  *a1 = &unk_1F4CE2E18;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E84400;
  sub_1D0DA3770();
}

void sub_1D0DA3600(_Unwind_Exception *a1)
{
  sub_1D0DA3634(v2);
  *v1 = &unk_1F4CE2E70;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0DA3634(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 736 * v4;
      v6 = v2 - 736;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 736;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C80BC64BFAFLL);
  }

  return a1;
}

void sub_1D0DA36B8(void *a1)
{
  *a1 = &unk_1F4CE2E18;
  sub_1D0DA3634(a1 + 5);
  *a1 = &unk_1F4CE2E70;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA3918(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0DA3A20(v14, *(a1 + 32) + 736 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0DA3A20(v13, *(a1 + 32) + 736 * v12);
              sub_1D0B894B0(*(a1 + 32) + 736 * v12, v14);
              *v11 = 1;
              sub_1D0B894B0(v14, v13);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

__n128 sub_1D0DA3A20(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000057;
  *(a1 + 24) = 0x100000057;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE04B8;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x57)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0DA3CF0(_Unwind_Exception *a1)
{
  v1[24] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0D85624(v1);
  _Unwind_Resume(a1);
}

void sub_1D0DA3D3C(void *a1)
{
  *a1 = &unk_1F4CE2EA0;
  a1[24] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0D85624(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA3F68(_Unwind_Exception *a1)
{
  v1[24] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0D836A8(v1);
  _Unwind_Resume(a1);
}

void sub_1D0DA3FB4(void *a1)
{
  *a1 = &unk_1F4CE2EE8;
  a1[24] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0D836A8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA4048(uint64_t a1)
{
  *(a1 + 24) = 0x3400000034;
  *a1 = &unk_1F4CE2F30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84850;
  sub_1D0DA4260();
}

void sub_1D0DA40AC(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA40F4(void *a1)
{
  sub_1D0DA42E0(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DA42E0(void *a1)
{
  *a1 = &unk_1F4CE2F30;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA435C(uint64_t a1)
{
  *(a1 + 24) = 0x2E0000002ELL;
  *a1 = &unk_1F4CE2F78;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84860;
  sub_1D0DA4574();
}

void sub_1D0DA43C0(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA4408(void *a1)
{
  sub_1D0DA45F4(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DA45F4(void *a1)
{
  *a1 = &unk_1F4CE2F78;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA4670(uint64_t a1)
{
  *(a1 + 24) = 0x3100000031;
  *a1 = &unk_1F4CE3020;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84870;
  sub_1D0DA4998();
}

void sub_1D0DA46D4(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void *sub_1D0DA471C(void *a1)
{
  *a1 = &unk_1F4CE3020;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA4798(void *a1)
{
  *a1 = &unk_1F4CE2FC0;
  a1[37] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0DA471C(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA4960(void *a1)
{
  sub_1D0DA471C(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA4A18(void *a1)
{
  a1[55] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA4A74(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void *sub_1D0DA4AF4(void *a1)
{
  *a1 = &unk_1F4CE2950;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v44 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v45 = v19;
  sub_1D0D9FA60(&v50, a10, 0);
  v48 = v49;
  v20 = v52;
  *v47 = 1;
  *&v47[4] = v52;
  *&v47[20] = 1;
  *&v47[8] = v52;
  *&v47[12] = 0x400000001;
  if (v52)
  {
    v21 = 0;
    v22 = v53;
    v23 = v51;
    v24 = v51 - 1;
    v25 = 1;
    do
    {
      v26 = v22[v23 * v21];
      v27 = v25;
      v28 = v24;
      if (v23 >= 2)
      {
        do
        {
          v26 += v22[v27++];
          --v28;
        }

        while (v28);
      }

      v49[v21++] = v26;
      v25 += v23;
    }

    while (v21 != v20);
  }

  sub_1D0D9FA60(&v50, a10, 1);
  v48 = v49;
  v29 = v52;
  *v47 = 1;
  *&v47[4] = v52;
  *&v47[20] = 1;
  *&v47[8] = v52;
  *&v47[12] = 0x400000001;
  v30 = v44;
  if (v52)
  {
    v31 = 0;
    v32 = v53;
    v33 = v51;
    v34 = v51 - 1;
    v35 = 1;
    do
    {
      v36 = v32[v33 * v31];
      v37 = v35;
      v38 = v34;
      if (v33 >= 2)
      {
        do
        {
          v36 += v32[v37++];
          --v38;
        }

        while (v38);
      }

      v49[v31++] = v36;
      v35 += v33;
    }

    while (v31 != v29);
  }

  if (*(v18 + 8) && *(v18 + 12))
  {
    v39 = v44 + 552;
    v40 = v18;
  }

  else
  {
    if ((v45 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    *&v47[16] = 0x10000001ALL;
    v46 = &unk_1F4CE3E48;
    v48 = v49;
    *v47 = v45;
    *&v47[4] = 1;
    *&v47[8] = v45;
    *&v47[12] = v45;
    if (v45 > 3)
    {
      v41 = &v49[2 * v45];
      bzero(v49, 16 * ((v45 - 1) >> 1));
      *(v41 - 2) = 0;
      *(v41 - 1) = 0;
      v30 = v44;
    }

    else if (v45)
    {
      bzero(v49, 8 * v45);
    }

    v39 = v30 + 552;
    v40 = &v46;
  }

  sub_1D0B894B0(v39, v40);
  if (*(v16 + 8) && *(v16 + 12))
  {
    sub_1D0B894B0(v30 + 800, v16);
    if (*(v14 + 8) && *(v14 + 12))
    {
      v42 = v44 + 848;
      v43 = v14;
    }

    else
    {
      *&v47[16] = 0x10000001ALL;
      *v47 = xmmword_1D0E843B0;
      v46 = &unk_1F4CE3E48;
      v48 = v49;
      sub_1D0B89390(v44 + 800, v44 + 552, &v46);
      v42 = v44 + 848;
      v43 = &v46;
    }

    sub_1D0B894B0(v42, v43);
    if ((v45 & 0x80000000) == 0)
    {
      sub_1D0DA0E30(&v46, v12, v45);
    }

    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  if ((v45 & 0x80000000) == 0)
  {
    sub_1D0D87C2C(&v46, v45, v45);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
}

void sub_1D0DA7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  STACK[0xF98] = a11;
  v13 = &STACK[0x1050];
  v14 = -192;
  do
  {
    v13 = sub_1D0D8B128(v13) - 6;
    v14 += 48;
  }

  while (v14);
  STACK[0x1080] = a12;
  v15 = &STACK[0x1138];
  v16 = -192;
  do
  {
    v15 = sub_1D0D857FC(v15) - 6;
    v16 += 48;
  }

  while (v16);
  for (i = 784; i != -208; i -= 248)
  {
    *(&STACK[0x1168] + i) = &unk_1F4CD5E28;
  }

  _Unwind_Resume(a1);
}

double sub_1D0DA7FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000017;
  *(a1 + 24) = 0x100000017;
  *a1 = &unk_1F4CE0780;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_1D0DA803C(void *a1)
{
  *a1 = &unk_1F4CE31F0;
  for (i = 23; i != -1; i -= 6)
  {
    sub_1D0D8B128(&a1[i]);
  }

  *a1 = &unk_1F4CE3248;
  return a1;
}

void *sub_1D0DA80B0(void *a1)
{
  *a1 = &unk_1F4CE3168;
  for (i = 23; i != -1; i -= 6)
  {
    sub_1D0D857FC(&a1[i]);
  }

  *a1 = &unk_1F4CE31C0;
  return a1;
}

void *sub_1D0DA8124(void *result)
{
  for (i = 98; i != -26; i -= 31)
  {
    result[i] = &unk_1F4CD5E28;
  }

  *result = &unk_1F4CE3138;
  return result;
}

void sub_1D0DA8174(void *a1)
{
  for (i = 98; i != -26; i -= 31)
  {
    a1[i] = &unk_1F4CD5E28;
  }

  *a1 = &unk_1F4CE3138;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA81E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v12, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = (v4 - 1);
        v8 = 1;
        do
        {
          sub_1D0D96660(v14, *(a1 + 32) + 248 * v8);
          v9 = &v12[v8];
          if ((v12[v8] & 1) == 0)
          {
            v10 = v8;
            do
            {
              v10 = v10 * v6 % v7;
              v11 = 248 * v10;
              sub_1D0D96660(v13, *(a1 + 32) + v11);
              sub_1D0B894B0(*(a1 + 32) + v11, v14);
              *v9 = 1;
              sub_1D0B894B0(v14, v13);
              v9 = &v12[v10];
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v7);
      }
    }
  }
}

void sub_1D0DA82F8(void *a1)
{
  *a1 = &unk_1F4CE3168;
  for (i = 23; i != -1; i -= 6)
  {
    sub_1D0D857FC(&a1[i]);
  }

  *a1 = &unk_1F4CE31C0;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA8398(uint64_t a1)
{
  if (*(a1 + 8) >= 2u && *(a1 + 12) >= 2u)
  {
    v2 = *(a1 + 16);
    bzero(v3, v2);
    if (v2 >= 3)
    {
      sub_1D0D87E2C(v4, *(a1 + 32) + 48);
    }
  }
}

void sub_1D0DA84B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D0D857FC(va);
  _Unwind_Resume(a1);
}

void sub_1D0DA84D0(void *a1)
{
  *a1 = &unk_1F4CE31F0;
  for (i = 23; i != -1; i -= 6)
  {
    sub_1D0D8B128(&a1[i]);
  }

  *a1 = &unk_1F4CE3248;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA8570(uint64_t a1)
{
  if (*(a1 + 8) >= 2u && *(a1 + 12) >= 2u)
  {
    v2 = *(a1 + 16);
    bzero(v3, v2);
    if (v2 >= 3)
    {
      sub_1D0DA86A8(v4, *(a1 + 32) + 48);
    }
  }
}

void sub_1D0DA868C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D0D8B128(va);
  _Unwind_Resume(a1);
}

void sub_1D0DA86A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x170000001ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0FB8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 12);
    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    *(a1 + 16) = v3 * v2;
    *(a1 + 20) = v2;
    sub_1D0D8378C();
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", 603, "this != &(A)");
}

void sub_1D0DA8804(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA884C(void *a1)
{
  sub_1D0DA8CA0(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA8A38(void *a1)
{
  sub_1D0DA8C24(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DA8C24(void *a1)
{
  *a1 = &unk_1F4CE32C0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void *sub_1D0DA8CA0(void *a1)
{
  *a1 = &unk_1F4CE3278;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DA8D78(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void *sub_1D0DA8DC8(void *result)
{
  result[354] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3870;
  return result;
}

void *sub_1D0DA8E08(void *result)
{
  result[93] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void *sub_1D0DA8E48(void *result)
{
  result[180] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DA8E88(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;
  return a1;
}

void *sub_1D0DA8F08(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;
  return a1;
}

void *sub_1D0DA8F88(void *result)
{
  result[180] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3C10;
  return result;
}

void *sub_1D0DA8FC8(void *result)
{
  result[180] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3720;
  return result;
}

void sub_1D0DA9008(void *a1)
{
  a1[354] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3870;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA9058(void *a1)
{
  a1[93] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA90A8(void *a1)
{
  a1[180] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA90F8(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA9198(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA9238(void *a1)
{
  a1[180] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3C10;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA9288(void *a1)
{
  a1[180] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3720;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA92D8(uint64_t a1)
{
  *(a1 + 24) = 0x1A0000001CLL;
  *a1 = &unk_1F4CE0EF0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E844B0;
  sub_1D0D89FE4();
}

void sub_1D0DA9340(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0DA93E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0DA94B0(void *a1)
{
  a1[97] = &unk_1F4CDEAF8;
  a1[90] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA9520(void *a1)
{
  a1[109] = &unk_1F4CDEAF8;
  a1[90] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DA959C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

cnestimation::RotationStabilizedAccelerationEstimator *cnestimation::RotationStabilizedAccelerationEstimator::RotationStabilizedAccelerationEstimator(cnestimation::RotationStabilizedAccelerationEstimator *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0x3FF0000000000000;
  sub_1D0DA9B9C(this + 104);
  *(this + 13) = &unk_1F4CE4488;
  *(this + 320) = 0;
  *this = 0;
  return this;
}

{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0x3FF0000000000000;
  sub_1D0DA9B9C(this + 104);
  *(this + 13) = &unk_1F4CE4488;
  *(this + 320) = 0;
  *this = 0;
  return this;
}

uint64_t cnestimation::RotationStabilizedAccelerationEstimator::Configure(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v11 = 0x100000004;
  v8 = &unk_1F4CDEBB8;
  v9 = 0;
  v10 = 0;
  v12 = v13;
  v13[7] = 0x100000004;
  v13[4] = &unk_1F4CDEBB8;
  v13[5] = 0;
  v13[6] = 0;
  v13[8] = v14;
  v6[0] = 0x300000004;
  v6[1] = *(a2 + 24);
  v4 = *(a2 + 16) + *(a2 + 8);
  v6[2] = 0x400000004;
  *&v6[3] = v4;
  *&v6[4] = v4;
  v7 = 0;
  v14[32] = 0;
  if (sub_1D0DA9894(a1 + 104, v6))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 720) = *(a2 + 32);
  if (*a2 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 8) = *a2;
  *a1 = 1;
  return result;
}

uint64_t sub_1D0DA9894(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2 || !*(a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2[5];
  if (a2[4] > v4 || v4 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  result = 0xFFFFFFFFLL;
  if (fabs(*(a2 + 3)) > v8 || v8 <= 0.0)
  {
    return result;
  }

  if (*(a2 + 40) == 1)
  {
    if (a2[32] != v2 || a2[33] != 1)
    {
      return result;
    }

    v25 = 0x100000004;
    v23 = &unk_1F4CDEBB8;
    v24 = xmmword_1D0E7DCE0;
    v26 = &v27;
    v20 = 0x100000004;
    v18 = &unk_1F4CE45B0;
    v19 = xmmword_1D0E7DCE0;
    v21 = &v22;
    sub_1D0D7FDEC((a2 + 30), &v23, &v18);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0xFFFFFFFFLL;
    if (a2[14] != v2 || a2[15] != 1)
    {
      return result;
    }

    sub_1D0DAA5C8((a2 + 12), &v23);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0DAA7DC((a2 + 30), (a2 + 12), v17);
    sub_1D0DAA748(v17, 2, &v18);
    sub_1D0DAA688(&v18, &v23);
    if (*v26 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(a1 + 8) == 1)
  {
    v9 = *(a1 + 16) != *a2 || *(a1 + 20) != a2[1];
    v12 = *(a1 + 24);
    v13 = *(a2 + 1);
    v14 = *a2;
    v15 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    v16 = sub_1D0B894B0(a1 + 136, (a2 + 30));
    *(a1 + 208) = *(a2 + 192);
    *(a1 + 8) = 1;
    if (v9 || v12 != v13)
    {
      (*(*a1 + 104))(a1, v16);
    }

    return 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v10;
    *(a1 + 32) = v11;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    sub_1D0B894B0(a1 + 136, (a2 + 30));
    result = 0;
    *(a1 + 208) = *(a2 + 192);
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t cnestimation::RotationStabilizedAccelerationEstimator::GetRotationStabilizedAcceleration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v2;
  if (a2 + 32 != a1 + 48)
  {
    *(a2 + 32) = *(a1 + 48);
    *(a2 + 48) = *(a1 + 64);
  }

  v3 = 0;
  v4 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 96);
  *(a2 + 64) = v4;
  return v3;
}

double sub_1D0DA9B9C(uint64_t a1)
{
  *a1 = &unk_1F4CE4530;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 88) = 0x100000004;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = &unk_1F4CDEBB8;
  *(a1 + 96) = a1 + 104;
  *(a1 + 160) = 0x100000004;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_1F4CDEBB8;
  *(a1 + 168) = a1 + 176;
  *(a1 + 208) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0x100000004;
  *(a1 + 240) = &unk_1F4CDEBB8;
  *(a1 + 248) = xmmword_1D0E7DCE0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 336) = 0x400000004;
  *(a1 + 312) = &unk_1F4CDEB70;
  *(a1 + 320) = xmmword_1D0E7DCD0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 504) = 0x300000004;
  *(a1 + 480) = &unk_1F4CDEC00;
  *&result = 0x300000004;
  *(a1 + 488) = xmmword_1D0E7DCF0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 8) = 0;
  *(a1 + 216) = 0;
  return result;
}

void *sub_1D0DA9CFC(void *result)
{
  *result = &unk_1F4CE4530;
  result[60] = &unk_1F4CD5E28;
  result[39] = &unk_1F4CD5E28;
  result[30] = &unk_1F4CD5E28;
  result[17] = &unk_1F4CD5E28;
  result[8] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DA9DBC(void *a1)
{
  *a1 = &unk_1F4CE4530;
  a1[60] = &unk_1F4CD5E28;
  a1[39] = &unk_1F4CD5E28;
  a1[30] = &unk_1F4CD5E28;
  a1[17] = &unk_1F4CD5E28;
  a1[8] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DA9E8C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 25) = *(a1 + 41);
  *a2 = v4;
  *(a2 + 16) = v5;
  sub_1D0B894B0(a2 + 48, a1 + 64);
  sub_1D0B894B0(a2 + 120, a1 + 136);
  result = 0;
  *(a2 + 192) = *(a1 + 208);
  return result;
}

uint64_t sub_1D0DA9EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16) == 4 && *(a2 + 20) == 4;
  if (v2 && (*(a2 + 40) & 1) == 0)
  {
    return sub_1D0DA9894(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0DA9F1C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (!*(a1 + 216))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 224);
  sub_1D0B894B0(a3, a1 + 240);
  return 0;
}

uint64_t sub_1D0DA9F5C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 216))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 208))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 224);
  sub_1D0B894B0(a3, a1 + 240);
  sub_1D0B894B0(a4, a1 + 312);
  sub_1D0B894B0(a5, a1 + 480);
  return 0;
}

uint64_t sub_1D0DA9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0x400000004;
  v16 = &unk_1F4CDEB70;
  v17 = xmmword_1D0E7DCD0;
  v19 = &v20;
  v13 = 0x300000004;
  v11 = &unk_1F4CDEC00;
  v12 = xmmword_1D0E7DCF0;
  v14 = &v15;
  return (*(*a1 + 96))(a1, a2, a3, a4, a5, &v16, &v11);
}

uint64_t sub_1D0DAA114(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = a1[5];
  v20 = 0x100000003;
  v15 = &unk_1F4CDEB28;
  v21 = v22;
  v16 = v12;
  v17 = 1;
  v18 = v12;
  v19 = v12;
  if (v12 > 3)
  {
    v14 = &v22[v12];
    bzero(v22, 16 * ((v12 - 1) >> 1));
    *(v14 - 2) = 0;
    *(v14 - 1) = 0;
  }

  else if (v12 >= 1)
  {
    bzero(v22, 8 * v12);
  }

  return (*(*a1 + 96))(a1, a2, &v15, a3, a4, a5, a6);
}

uint64_t sub_1D0DAA260@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000004;
  *a3 = &unk_1F4CDEB70;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;
  return sub_1D0BBBC00(a3, 0.0);
}

double sub_1D0DAA2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0DAA2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0DAA37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000004;
  *a3 = &unk_1F4CDEC00;
  *(a3 + 8) = xmmword_1D0E7DCF0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0DAA400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x400000004;
  *a2 = &unk_1F4CDEB70;
  *(a2 + 8) = xmmword_1D0E7DCD0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0DAA440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x300000004;
  *a2 = &unk_1F4CDEC00;
  *(a2 + 8) = xmmword_1D0E7DCF0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

__n128 sub_1D0DAA484(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x400000004;
  *(a1 + 24) = 0x400000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEB70;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 4)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 5)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0DAA5C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000004;
  *a2 = &unk_1F4CDEBB8;
  *(a2 + 8) = xmmword_1D0E7DCE0;
  *(a2 + 32) = a2 + 40;
  v5 = 0x100000004;
  v3 = &unk_1F4CE45B0;
  v4 = xmmword_1D0E7DCE0;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

double sub_1D0DAA688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x200000004;
  *a2 = &unk_1F4CE45F8;
  *(a2 + 8) = xmmword_1D0E87A60;
  *(a2 + 32) = a2 + 40;
  v5 = 0x200000004;
  v3 = &unk_1F4CE4640;
  v4 = xmmword_1D0E87A60;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

uint64_t sub_1D0DAA748@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000004;
  *a3 = &unk_1F4CE45F8;
  *(a3 + 8) = xmmword_1D0E87A60;
  *(a3 + 32) = a3 + 40;
  v6 = 0x200000004;
  v4 = &unk_1F4CE4640;
  v5 = xmmword_1D0E87A60;
  v7 = &v8;
  return sub_1D0BB7860(a1, a2, a3, &v4);
}

uint64_t sub_1D0DAA7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000004;
  *a3 = &unk_1F4CE45F8;
  *(a3 + 8) = xmmword_1D0E87A60;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B8876C(a1, a2, a3);
}

void sub_1D0DAA95C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0DAA9E8(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void raven::RavenSupervisor::RavenSupervisor(raven::RavenSupervisor *this)
{
  raven::RavenSupervisor::RavenSupervisor(this);
}

{
  raven::RavenSupervisor::RavenSupervisor(this);
}

void raven::RavenSupervisor::RavenSupervisor(uint64_t a1)
{
  v2 = cnframework::Supervisor::Supervisor(a1);
  *v2 = &unk_1F4CE4688;
  *(v2 + 481) = 0;
  *(v2 + 488) = 0;
  *(v2 + 496) = 0;
  sub_1D0DC4514(v2 + 504);
  sub_1D0DC4514(a1 + 4352);
  *(a1 + 8256) = 0;
  *(a1 + 8240) = 0u;
  *(a1 + 8224) = 0u;
  *(a1 + 8208) = 0u;
  *(a1 + 8264) = 1065353216;
  *(a1 + 8272) = 0;
  *(a1 + 8280) = 0;
  *(a1 + 8296) = 0;
  *(a1 + 8288) = 0;
  *(a1 + 8305) = 0;
  *(a1 + 8312) = 0;
  *(a1 + 8320) = 0x7FF8000000000000;
  *(a1 + 8328) = 0;
  *(a1 + 8336) = 0;
  *(a1 + 8344) = 0x7FF8000000000000;
  *(a1 + 8408) = 0;
  *(a1 + 8416) = 0;
  *(a1 + 8384) = 0u;
  *(a1 + 8368) = 0u;
  *(a1 + 8352) = 0u;
  *(a1 + 8200) = &unk_1F4CEE180;
  *(a1 + 8424) = 0;
  *(a1 + 8432) = 0;
  *(a1 + 8440) = &unk_1F4CE06B0;
  v3 = a1 + 8488;
  v4 = -16800;
  v5 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v6 = a1 + v4;
    *(v6 + 25288) = &unk_1F4CEF658;
    *(v6 + 25296) = 0uLL;
    *(v6 + 25312) = v5;
    *(v6 + 25328) = 0x7FF8000000000000;
    v3 += 48;
    v4 += 48;
  }

  while (v4);
  *(a1 + 8448) = 0;
  *(a1 + 8456) = 0u;
  *(a1 + 8472) = 0u;
  *(a1 + 25352) = 0;
  *(a1 + 25304) = 0u;
  *(a1 + 25320) = 0u;
  *(a1 + 25336) = 0u;
  *(a1 + 25360) = 0x3FF0000000000000;
  sub_1D0DA9B9C(a1 + 25392);
  *(a1 + 25392) = &unk_1F4CE4488;
  *(a1 + 25608) = 0;
  *(a1 + 25288) = 0;
  *(a1 + 26024) = 0u;
  *(a1 + 26040) = 0u;
  *(a1 + 26056) = 0u;
  *(a1 + 8424) = 0;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0;
  *(a1 + 26136) = 1065353216;
  *(a1 + 26144) = 0;
  *(a1 + 26152) = 0;
  *(a1 + 26160) = 0u;
  *(a1 + 26177) = 0;
  *(a1 + 26184) = 0;
  *(a1 + 26192) = 0x7FF8000000000000;
  *(a1 + 26200) = 0;
  *(a1 + 26208) = 0;
  *(a1 + 26216) = 0x7FF8000000000000;
  *(a1 + 26280) = 0;
  *(a1 + 26288) = 0;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26072) = &unk_1F4CEFB50;
  *(a1 + 26296) = 0;
  *(a1 + 26304) = 0;
  *(a1 + 26312) = 0;
  *(a1 + 26424) = 0;
  *(a1 + 26432) = 0;
  *(a1 + 26864) = 0;
  *(a1 + 26872) = 0;
  *(a1 + 27104) = 0;
  *(a1 + 27112) = 0;
  *(a1 + 27272) = 0;
  *(a1 + 27280) = 0;
  *(a1 + 27440) = 0;
  *(a1 + 27448) = 0;
  *(a1 + 27456) = 0;
  *(a1 + 27464) = &unk_1F4CEADC8;
  *(a1 + 27496) = 0x10000000ALL;
  *(a1 + 27472) = &unk_1F4CEAE48;
  *(a1 + 27504) = a1 + 27512;
  *(a1 + 27616) = 0x10000000ALL;
  *(a1 + 27592) = &unk_1F4CEAE48;
  *(a1 + 27624) = a1 + 27632;
  *(a1 + 27720) = 0x3DDB7CDFD9D7BDBBLL;
  *(a1 + 27480) = 0u;
  *(a1 + 27600) = 0u;
  *(a1 + 27712) = 1;
  *(a1 + 27728) = 0;
  *(a1 + 27736) = 0x7FF8000000000000;
  *(a1 + 27744) = &unk_1F4CEF688;
  *(a1 + 27768) = 0;
  *(a1 + 27752) = 0u;
  *(a1 + 27776) = 0u;
  *(a1 + 27792) = 0;
  *(a1 + 27816) = 0;
  *(a1 + 27800) = 0u;
  *(a1 + 27824) = 0u;
  *(a1 + 27840) = 0x7FF8000000000000;
  *(a1 + 27848) = 0;
  *(a1 + 27856) = 0x3FF0000000000000;
  *(a1 + 27928) = 0;
  *(a1 + 27896) = 0u;
  *(a1 + 27912) = 0u;
  *(a1 + 27864) = 0u;
  *(a1 + 27880) = 0u;
  *(a1 + 27992) = 0;
  *(a1 + 27960) = 0u;
  *(a1 + 27976) = 0u;
  *(a1 + 27944) = 0u;
  *(a1 + 28000) = 1065353216;
  *(a1 + 28008) = 0;
  *(a1 + 28032) = 0;
  *(a1 + 28016) = 0u;
  *(a1 + 28041) = 0;
  *(a1 + 28048) = 0;
  *(a1 + 28056) = 0x7FF8000000000000;
  *(a1 + 28064) = 0;
  *(a1 + 28072) = 0;
  *(a1 + 28080) = 0x7FF8000000000000;
  *(a1 + 28144) = 0;
  *(a1 + 28152) = 0;
  *(a1 + 28104) = 0u;
  *(a1 + 28120) = 0u;
  *(a1 + 28088) = 0u;
  *(a1 + 28160) = 0;
  *(a1 + 28216) = 0;
  *(a1 + 28184) = 0u;
  *(a1 + 28200) = 0u;
  *(a1 + 28168) = 0u;
  *(a1 + 27936) = &unk_1F4CEE1E0;
  *(a1 + 28232) = 0u;
  sub_1D0BAD0C8(a1 + 28248);
  raven::RavenConvergenceEstimator::RavenConvergenceEstimator((a1 + 30904));
}

void sub_1D0DACD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, raven::RavenMountStateEstimatorActiveObject *a10, uint64_t a11, raven::RavenCoarseOdometerActiveObject *a12, raven::RavenCoarseOdometerActiveObject *a13, raven::RavenCoarseOdometerActiveObject *a14, raven::RavenCoarseOdometerActiveObject *a15, raven::RavenCoarseOdometerActiveObject *a16, uint64_t a17, raven::RavenCoarseOdometerActiveObject *a18, raven::RavenCoarseOdometerActiveObject *a19, uint64_t a20, raven::RavenCoarseOdometerActiveObject *a21, raven::RavenCoarseOdometerActiveObject *a22, uint64_t a23, raven::RavenDeltaAltitudeActiveObject *a24, void **a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  raven::RavenTimerActiveObject::~RavenTimerActiveObject(v34);
  raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject(v35);
  raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject(v38);
  sub_1D0DC6C70(v40);
  *a18 = v36;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a18);
  raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject(a22);
  sub_1D0DC6D94(a21);
  raven::RavenPositionContextEstimatorActiveObject::~RavenPositionContextEstimatorActiveObject((v33 + v39));
  raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(a9);
  sub_1D0DC6F5C(a25);
  raven::RavenMountStateEstimatorActiveObject::~RavenMountStateEstimatorActiveObject(a10);
  sub_1D0DC706C(a11);
  raven::RavenIntegrityEstimatorActiveObject::~RavenIntegrityEstimatorActiveObject(v37);
  raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject((v33 + 74312));
  raven::RavenGnssPreprocessorActiveObject::~RavenGnssPreprocessorActiveObject(a19);
  sub_1D0DC7128(a12);
  sub_1D0DC7490(a13);
  raven::RavenDeltaAltitudeActiveObject::~RavenDeltaAltitudeActiveObject(a24);
  raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject(a14);
  sub_1D0DC7B20(a15);
  raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject(a16);
  sub_1D0D41758(v33 + 4352);
  sub_1D0D41758(v33 + 504);
  cnframework::Supervisor::~Supervisor(v33, v42, v43, v44, v45, v46, v47, v48);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::~RavenSupervisor(raven::RavenSupervisor *this)
{
  *this = &unk_1F4CE4688;
  cnframework::Supervisor::TearDown(this);
  v2 = *(this + 23067);
  *(this + 23067) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 23066);
  *(this + 23066) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 23065);
  *(this + 23065) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 22899) = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 183192));
  *(this + 22844) = &unk_1F4CEE5E8;
  if (*(this + 183152) == 1)
  {
    *(this + 183152) = 0;
  }

  if (*(this + 182976) == 1)
  {
    *(this + 182976) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 182752));
  raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject((this + 181984));
  raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject((this + 180256));
  *(this + 21109) = &unk_1F4CDFCF8;
  std::mutex::~mutex((this + 180192));
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput((this + 180128));
  sub_1D0DC6C28(this + 22515);
  *(this + 21829) = &unk_1F4CDFD88;
  *(this + 22150) = &unk_1F4CD5B78;
  *(this + 21828) = &unk_1F4CD5B78;
  *(this + 21487) = &unk_1F4CDFD88;
  *(this + 21808) = &unk_1F4CD5B78;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 168872));
  *(this + 21049) = &unk_1F4CDF508;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 168392));
  raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject((this + 164592));
  *(this + 20530) = &unk_1F4CEF808;
  sub_1D0DC6DF4(this + 20568);
  sub_1D0C56D94(this + 20562);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 164240));
  raven::RavenPositionContextEstimatorActiveObject::~RavenPositionContextEstimatorActiveObject(this + 20430);
  raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(this + 11004);
  sub_1D0DC6F5C(this + 10397);
  *(this + 10233) = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 10263);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 81864));
  *(this + 9706) = &unk_1F4CEB028;
  sub_1D0C56D94(this + 10223);
  if (*(this + 78920) == 1)
  {
    *(this + 78920) = 0;
  }

  if (*(this + 78768) == 1)
  {
    *(this + 78768) = 0;
  }

  if (*(this + 78744) == 1)
  {
    *(this + 78744) = 0;
  }

  if (*(this + 78456) == 1)
  {
    *(this + 78456) = 0;
  }

  if (*(this + 78296) == 1)
  {
    *(this + 78296) = 0;
  }

  if (*(this + 78088) == 1)
  {
    *(this + 78088) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 77648));
  *(this + 9349) = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 75032);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 74792));
  raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject((this + 74312));
  *(this + 8933) = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 71696);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 71464));
  sub_1D0DC7128((this + 63312));
  sub_1D0DC7490(this + 6647);
  *(this + 6606) = &unk_1F4CEE258;
  sub_1D0E22B94(this + 53128);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 52848));
  raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject((this + 27936));
  sub_1D0DC7B20((this + 26072));
  raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject((this + 8200));
  sub_1D0D41758(this + 4352);
  sub_1D0D41758(this + 504);

  cnframework::Supervisor::~Supervisor(this, v5, v6, v7, v8, v9, v10, v11);
}

{
  raven::RavenSupervisor::~RavenSupervisor(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::RavenSupervisor::Configure(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 33))
  {
    v10 = a1 + 4993;
    sub_1D0DADBB4((a1 + 504), a2);
    v11 = sub_1D0DADBB4((a1 + 4352), a2);
    if (v10[3096] == 1)
    {
      v32 = 0;
      cnprint::CNPrinter::EnableLogStream(&v32);
    }

    if (v10[3097] == 1)
    {
      cnprint::CNPrinter::SetFileLogStreamName((a1 + 8096));
      v32 = 1;
      cnprint::CNPrinter::EnableLogStream(&v32);
    }

    if (v10[3127] == 1)
    {
      v32 = 2;
      cnprint::CNPrinter::EnableLogStream(&v32);
    }

    if ((v10[3096] & 1) != 0 || (v10[3097] & 1) != 0 || v10[3127] == 1)
    {
      v17 = v10[3159];
      if (v17 < cnprint::CNPrinter::GetLogLevel(v11))
      {
        cnprint::CNPrinter::SetLogLevel((v10 + 3159));
      }
    }

    LOWORD(v32) = 12;
    v33 = 2;
    cnprint::CNPrinter::Print(&v32, &v33, "RavenSupervisor configuration parameters set", v12, v13, v14, v15, v16, v30);
    if (a1[481] == 1)
    {
      LOWORD(v32) = 12;
      v33 = 2;
      cnprint::CNPrinter::Print(&v32, &v33, "RavenSupervisor::Configure called after RavenSupervisor was already configured.", v19, v20, v21, v22, v23, v31);
    }

    if (v10[1919] == 1 && *v10 == 1)
    {
      operator new();
    }

    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      LOWORD(v32) = 12;
      v33 = 1;
      cnprint::CNPrinter::Print(&v32, &v33, "RavenIonosphereEstimatorActiveObject was not instantiated", v24, v25, v26, v27, v28, v31);
    }

    if (v10[2871] == 1 && *v10 == 1)
    {
      operator new();
    }

    LOWORD(v32) = 12;
    v33 = 3;
    cnprint::CNPrinter::Print(&v32, &v33, "RavenRayTracingActiveObject was not instantiated", v24, v25, v26, v27, v28, v31);
    operator new();
  }

  LOWORD(v32) = 12;
  v33 = 4;
  cnprint::CNPrinter::Print(&v32, &v33, "RavenSupervisor::Configure called with uninitialized parameters.", a4, a5, a6, a7, a8, v30);
  return 0;
}

uint64_t sub_1D0DADBB4(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 40);
    v7 = *(a2 + 40);
    v6 = *(a2 + 48);
    v8 = v6 - v7;
    v9 = *(a1 + 56);
    if (v9 - v5 < (v6 - v7))
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      if (v5)
      {
        sub_1D0D415E8((a1 + 40));
        operator delete(*v4);
        v9 = 0;
        *v4 = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        v12 = 2 * v11;
        if (2 * v11 <= v10)
        {
          v12 = v10;
        }

        if (v11 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0D414A8(a1 + 40, v13);
        }
      }

      sub_1D0C5663C();
    }

    v14 = *(a1 + 48);
    v15 = v14 - v5;
    if (v14 - v5 >= v8)
    {
      if (v7 != v6)
      {
        do
        {
          std::string::operator=(v5++, v7++);
        }

        while (v7 != v6);
        v14 = *(a1 + 48);
      }

      while (v14 != v5)
      {
        v18 = *(v14 - 1);
        v14 -= 3;
        if (v18 < 0)
        {
          operator delete(*v14);
        }
      }

      *(a1 + 48) = v5;
    }

    else
    {
      if (v14 != v5)
      {
        v16 = v14 - v5;
        v17 = *(a2 + 40);
        do
        {
          std::string::operator=(v5++, v17++);
          v16 -= 24;
        }

        while (v16);
        v14 = *(a1 + 48);
      }

      *(a1 + 48) = sub_1D0DC7C0C(a1 + 40, (v7 + v15), v6, v14);
    }
  }

  memcpy((a1 + 64), (a2 + 64), 0x8D0uLL);
  v19 = *(a2 + 2320);
  v20 = *(a2 + 2328);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2320) = v19;
  v21 = *(a1 + 2328);
  *(a1 + 2328) = v20;
  if (v21)
  {
    sub_1D0B7CAB8(v21);
  }

  *(a1 + 2336) = *(a2 + 2336);
  memcpy((a1 + 2352), (a2 + 2352), 0x529uLL);
  std::string::operator=((a1 + 3680), (a2 + 3680));
  v22 = *(a2 + 3708);
  *(a1 + 3704) = *(a2 + 3704);
  *(a1 + 3708) = v22;
  std::string::operator=((a1 + 3712), (a2 + 3712));
  v23 = *(a2 + 3738);
  *(a1 + 3736) = *(a2 + 3736);
  *(a1 + 3738) = v23;
  std::string::operator=((a1 + 3744), (a2 + 3744));
  v24 = *(a2 + 3770);
  *(a1 + 3768) = *(a2 + 3768);
  *(a1 + 3770) = v24;
  std::string::operator=((a1 + 3776), (a2 + 3776));
  v25 = *(a2 + 3829);
  v26 = *(a2 + 3816);
  *(a1 + 3800) = *(a2 + 3800);
  *(a1 + 3816) = v26;
  *(a1 + 3829) = v25;
  return a1;
}

uint64_t raven::RavenSupervisor::GetRavenIonosphereParameters(uint64_t a1, _OWORD *a2)
{
  result = *(a1 + 184528);
  if (result)
  {
    return raven::RavenIonosphereEstimatorActiveObject::GetIonosphereParameters(result, a2);
  }

  *a2 = 0;
  return result;
}

void sub_1D0DBFB3C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DBFE58(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 345) == 1)
  {
    puts("Warning: RavenEstimator::Configure() called more than once.");
    *(a1 + 224) = 0;
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 1456) = *a2;
    *(a1 + 345) = 1;

    return sub_1D0DC69F8(a1, a2);
  }
}

uint64_t sub_1D0DBFEC8(_BYTE *a1, uint64_t *a2)
{
  v5 = *a2;
  if (!raven::RavenConvergenceEstimator::Configure((a1 + 2968), &v5))
  {
    return sub_1D0DC5330(a1, a2);
  }

  a1[224] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0DBFF24(char **a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  v61 = *a2;
  if (raven::RavenPNTEstimator::Configure((a1 + 36), &v61, a3, a4))
  {
    *(a1 + 224) = 0;
    return 0xFFFFFFFFLL;
  }

  v6 = *(v61 + 856);
  v7 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v8 = ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v6 >= 0)
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v7;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v9 = 1;
  }

  if ((v9 | v8) == 1)
  {
    v60 = 12;
    v59 = 4;
    (*(*a1 + 2))(__p, a1);
    if (v58 >= 0)
    {
      v15 = __p;
    }

    else
    {
      LOBYTE(v15) = __p[0];
    }

    v55 = *(v61 + 856);
    cnprint::CNPrinter::Print(&v60, &v59, "Error: %s could not be configured. Invalid tolerable_accelerometer_event_age: %.3lf", v10, v11, v12, v13, v14, v15);
LABEL_26:
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v16 = *(v61 + 864);
  v17 = (v16 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v18 = ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v16 >= 0)
  {
    v18 = 0;
    v17 = 0;
  }

  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if (v17 || v18)
  {
    v60 = 12;
    v59 = 4;
    (*(*a1 + 2))(__p, a1);
    if (v58 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    v56 = *(v61 + 864);
    cnprint::CNPrinter::Print(&v60, &v59, "Error: %s could not be configured. Invalid tolerable_rategyro_event_age: %.3lf", v19, v20, v21, v22, v23, v24);
    goto LABEL_26;
  }

  v26 = a1[11];
  v27 = a1[12];
  if (v26 >= v27)
  {
    v29 = a1[10];
    v30 = v26 - v29;
    v31 = (v26 - v29) >> 4;
    v32 = v31 + 1;
    if ((v31 + 1) >> 60)
    {
      goto LABEL_63;
    }

    if ((v27 - v29) >> 3 > v32)
    {
      v32 = (v27 - v29) >> 3;
    }

    if (v27 - v29 >= 0x7FFFFFFFFFFFFFF0)
    {
      v32 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      sub_1D0DC7DD8((a1 + 10), v32);
    }

    v33 = v31;
    v34 = (16 * v31);
    v27 = 0;
    v34[1] = v6;
    v28 = (16 * v31 + 16);
    v35 = &v34[-2 * v33];
    memcpy(v35, v29, v30);
    v36 = a1[10];
    a1[10] = v35;
    a1[11] = v28;
    a1[12] = 0;
    if (v36)
    {
      operator delete(v36);
      v27 = a1[12];
    }
  }

  else
  {
    *(v26 + 1) = v6;
    v28 = v26 + 16;
  }

  a1[11] = v28;
  v37 = v61;
  if (v28 >= v27)
  {
    v39 = a1[10];
    v40 = v28 - v39;
    v41 = (v28 - v39) >> 4;
    v42 = v41 + 1;
    if ((v41 + 1) >> 60)
    {
      goto LABEL_63;
    }

    if ((v27 - v39) >> 3 > v42)
    {
      v42 = (v27 - v39) >> 3;
    }

    if (v27 - v39 >= 0x7FFFFFFFFFFFFFF0)
    {
      v42 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      sub_1D0DC7DD8((a1 + 10), v42);
    }

    v43 = v41;
    v44 = (16 * v41);
    v27 = 0;
    v44[1] = *(v37 + 864);
    v38 = (16 * v41 + 16);
    v45 = &v44[-2 * v43];
    memcpy(v45, v39, v40);
    v46 = a1[10];
    a1[10] = v45;
    a1[11] = v38;
    a1[12] = 0;
    if (v46)
    {
      operator delete(v46);
      v27 = a1[12];
    }
  }

  else
  {
    *(v28 + 1) = *(v37 + 864);
    v38 = v28 + 16;
  }

  a1[11] = v38;
  v47 = v61;
  if (v38 >= v27)
  {
    v49 = a1[10];
    v50 = v38 - v49;
    v51 = (v38 - v49) >> 4;
    v52 = v51 + 1;
    if (!((v51 + 1) >> 60))
    {
      if ((v27 - v49) >> 3 > v52)
      {
        v52 = (v27 - v49) >> 3;
      }

      if (v27 - v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v52 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        sub_1D0DC7DD8((a1 + 10), v52);
      }

      v53 = (16 * v51);
      v53[1] = *(v47 + 864);
      v48 = 16 * v51 + 16;
      memcpy(0, v49, v50);
      v54 = a1[10];
      a1[10] = 0;
      a1[11] = v48;
      a1[12] = 0;
      if (v54)
      {
        operator delete(v54);
      }

      goto LABEL_62;
    }

LABEL_63:
    sub_1D0C5663C();
  }

  *(v38 + 1) = *(v47 + 864);
  v48 = (v38 + 16);
LABEL_62:
  a1[11] = v48;
  return sub_1D0DC6750(a1, a2);
}

void sub_1D0DC03AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DC03CC(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE5400;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC05AC(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE5E10;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC078C(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE6BB0;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC096C(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE7008;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC0B4C(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE7398;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC0D2C(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE90F0;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC0EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC0F0C(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = 0;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = a2;
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[3];
    if (v5 >= v7)
    {
      v10 = &v5[-*v3] >> 5;
      if ((v10 + 1) >> 59)
      {
        sub_1D0C5663C();
      }

      v11 = v7 - *v3;
      v12 = v11 >> 4;
      if (v11 >> 4 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1D0DC7E20(v3, v13);
      }

      v14 = (32 * v10);
      v15 = v23;
      *v14 = v22;
      v14[1] = v15;
      v9 = 32 * v10 + 32;
      v16 = a1[1];
      v17 = a1[2] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[1];
      a1[1] = v18;
      a1[2] = v9;
      a1[3] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v8 = v23;
      *v5 = v22;
      *(v5 + 1) = v8;
      v9 = (v5 + 32);
    }

    a1[2] = v9;
    result = sub_1D0B7D618(a1 + 4, v24);
    if (!result)
    {
      v25[3] = v25;
      v24[2] = v24;
      v25[0] = &unk_1F4CE99F0;
      v20 = sub_1D0DC87BC(a1 + 4, v24);
      sub_1D0DC7E68(v20 + 3, v25);
      result = sub_1D0B7D7C4(v25);
    }
  }

  else
  {
    while (1)
    {
      result = cnframework::EventSubscription::operator==(v4, &v22);
      if (result)
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        v5 = a1[2];
        goto LABEL_5;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC10D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::OnReset(uint64_t this)
{
  *(this + 488) = 0;
  *(this + 496) = 0;
  if (*(this + 184680) == 1)
  {
    *(this + 184680) = 0;
  }

  return this;
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2, raven::AccessoryVehicleSpeedEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = &unk_1F4CEDF40;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0x7FF8000000000000;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0x7FF8000000000000;
  v33 = 0;
  v34 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  if (raven::ConvertProtobufToAccessoryVehicleSpeedEvent(a2, v10, a3, a4, a5, a6, a7, a8, 0, a10))
  {
    sub_1D0DD18A0();
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v10);
}

void sub_1D0DC1220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v3 - 56);
  if (v5)
  {
    sub_1D0B7CAB8(v5);
  }

  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(uint64_t this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion *a2, raven::AccelerometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11 = this;
  v12 = this + 4096;
  if ((*(this + 8190) & 1) == 0)
  {
    LODWORD(v13) = *(a2 + 6);
    if (v13 >= 1)
    {
      v14 = 0;
      v33 = vdupq_n_s64(0x7FF8000000000000uLL);
      do
      {
        v34 = &unk_1F4CEEEB0;
        v35 = 0;
        v36 = 0.0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v15 = v33;
        v46 = v33;
        v47 = v33;
        LOBYTE(v48) = 0;
        *(&v48 + 1) = 0x7FF8000000000000;
        v49.i16[0] = 0;
        if (v14 >= v13)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v55);
        }

        if (raven::ConvertProtobufToDeviceMotionAccelerationEvent(*(*(a2 + 2) + 8 * v14), &v34, a3, a4, a5, a6, a7, a8, v15, a10))
        {
          sub_1D0B7C294();
        }

        v55 = &unk_1F4CEF1E0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v23 = v33;
        v67 = v33;
        v68 = v33;
        v69 = 0;
        v70 = 0x7FF8000000000000;
        v71 = 0;
        if (v14 >= *(a2 + 6))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v72);
        }

        this = raven::ConvertProtobufToDeviceMotionRotationRateEvent(*(*(a2 + 2) + 8 * v14), &v55, v16, v17, v18, v19, v20, v21, v23, v22);
        if (this)
        {
          sub_1D0BA8B4C();
        }

        ++v14;
        v13 = *(a2 + 6);
      }

      while (v14 < v13);
    }
  }

  if (*(v12 + 4062) == 1)
  {
    v35 = 0;
    v36 = 0.0;
    v34 = &unk_1F4CEF6B8;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0x7FF8000000000000uLL;
    v47 = 0uLL;
    v48 = xmmword_1D0E87BC0;
    v49 = vdupq_n_s64(0x7FF8000000000000uLL);
    v50 = v49;
    v51 = v49;
    v52 = v49;
    v53 = 0x7FF8000000000000;
    v54 = 1;
    this = raven::ConvertProtobufToDeviceMotionAttitudeEvent(*(*(a2 + 2) + 8 * *(a2 + 6) - 8), &v34, *(v11 + 5384), a4, a5, a6, a7, a8, xmmword_1D0E87BC0, v49);
    if (this)
    {
      v26 = v35;
      v27 = v36;
      v28 = v36;
      v24.i64[0] = *(v11 + 5376);
      v55 = 0;
      v56 = 0;
      *v29.i64 = CNTimeSpan::SetTimeSpan(&v55, 0, v24, v25);
      this = CNTimeSpan::operator+((v11 + 488), &v55, v29, v30);
      if (!v26 && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !this && (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v32 = v26 <= this, v26 == this))
      {
        v32 = v27 <= v31;
      }

      if (!v32)
      {
        *(v11 + 488) = v26;
        *(v11 + 496) = v27;
        sub_1D0DC15AC();
      }
    }
  }

  return this;
}

void sub_1D0DC1620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(uint64_t this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2, raven::AccelerometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11 = this;
  v12 = this + 4096;
  if ((*(this + 8190) & 1) == 0)
  {
    v22 = 0;
    v23 = 0;
    v21 = &unk_1F4CEEEB0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = vdupq_n_s64(0x7FF8000000000000uLL);
    v20 = v33;
    v34 = v33;
    LOBYTE(v35) = 0;
    *(&v35 + 1) = 0x7FF8000000000000;
    v36.i16[0] = 0;
    if (raven::ConvertProtobufToDeviceMotionAccelerationEvent(a2, &v21, a3, a4, a5, a6, a7, a8, v33, a10))
    {
      sub_1D0B7C294();
    }

    v42[1] = 0;
    v42[2] = 0;
    v42[0] = &unk_1F4CEF1E0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v20;
    v53 = v20;
    v54 = 0;
    v55 = 0x7FF8000000000000;
    v56 = 0;
    this = raven::ConvertProtobufToDeviceMotionRotationRateEvent(a2, v42, v13, v14, v15, v16, v17, v18, v20, v19);
    if (this)
    {
      sub_1D0BA8B4C();
    }
  }

  if (*(v12 + 4062) == 1)
  {
    v22 = 0;
    v23 = 0;
    v21 = &unk_1F4CEF6B8;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0x7FF8000000000000uLL;
    v34 = 0uLL;
    v35 = xmmword_1D0E87BC0;
    v36 = vdupq_n_s64(0x7FF8000000000000uLL);
    v37 = v36;
    v38 = v36;
    v39 = v36;
    v40 = 0x7FF8000000000000;
    v41 = 1;
    this = raven::ConvertProtobufToDeviceMotionAttitudeEvent(a2, &v21, *(v11 + 5384), a4, a5, a6, a7, a8, xmmword_1D0E87BC0, v36);
    if (this)
    {
      sub_1D0DC15AC();
    }
  }

  return this;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2, raven::AltitudeEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEAB0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  result = raven::ConvertProtobufToAltitudeEvent(a2, v11, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    sub_1D0DD205C();
  }

  return result;
}

void sub_1D0DC18E0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const std::string **a2)
{
  v6 = 0;
  v7 = 0;
  v5 = &unk_1F4CEE0F0;
  LOBYTE(v8) = 0;
  *(&v8 + 1) = 0;
  *&v9 = 0;
  BYTE8(v9) = 0;
  v10 = 0uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v12 = 0;
  v13 = 0x7FF8000000000000;
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, a2[3]);
  std::mutex::lock((this + 344));
  v3 = *(this + 41);
  v4 = *(this + 42);
  std::mutex::unlock((this + 344));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = v3;
  v7 = v4;
  v12 = 0;
  v13 = 0x7FF8000000000000;
  operator new();
}

void sub_1D0DC1B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v31 = *(v29 - 64);
  if (v31)
  {
    sub_1D0B7CAB8(v31);
  }

  sub_1D0B7CAB8(v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2, raven::GEOMapBuildingDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = &unk_1F4CEDFA0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0x7FF8000000000000;
  memset(v21, 0, sizeof(v21));
  v22 = vdupq_n_s64(0x7FF8000000000000uLL);
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  if (raven::ConvertProtobufToGEOMapBuildingDataEvent(a2, v10, a3, a4, a5, a6, a7, a8, v22, a10))
  {
    operator new();
  }

  v10[0] = &unk_1F4CEDFA0;
  sub_1D0BCB540(&v23, v24[0]);
  *&v25 = v21;
  sub_1D0DDD154(&v25);
}

void sub_1D0DC1EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 80);
  if (v12)
  {
    sub_1D0B7CAB8(v12);
  }

  sub_1D0B7CAB8(v9);
  raven::GEOMapBuildingDataEvent::~GEOMapBuildingDataEvent(&a9);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2, raven::MapVectorEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEB40;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = vdupq_n_s64(0x7FF8000000000000uLL);
  v34 = v33;
  v35 = v33;
  v36 = v33;
  v37 = v33;
  v38 = 0;
  result = raven::ConvertProtobufToMapVectorEvent(a2, v11, a3, a4, a5, a6, a7, a8, v33, a10);
  if (result)
  {
    sub_1D0DD4448();
  }

  return result;
}

void sub_1D0DC20A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  v4 = *(v1 - 24);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  _Unwind_Resume(exception_object);
}

CoreNavigation::CLP::LogEntry::PrivateData *raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::ActivityInputEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v85 = 0;
  v86 = 0.0;
  v84 = &unk_1F4CEEEF8;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0x7FF8000000000000;
  v97 = 0;
  v11 = raven::ConvertProtobufToActivityInputEvent(a2, &v84, a3, a4, a5, a6, a7, a8, a9, a10);
  if (v11)
  {
    LOWORD(v66) = 12;
    LOBYTE(v48) = 2;
    v20 = v86 + v85;
    v21 = *(a2 + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v11);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v45 = *(v21 + 8);
    cnprint::CNPrinter::Print(&v66, &v48, "t,%.3lf,Raising ActivityInputEvent,%d,from protobuf activity type,%d", v13, v14, v15, v16, v17, SLOBYTE(v20));
    operator new();
  }

  v67 = 0;
  v68 = 0.0;
  v66 = &unk_1F4CEF538;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0x7FF8000000000000;
  v79 = 0;
  v80 = 0x3FF0000000000000;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v22 = raven::ConvertProtobufToMountStateEvent(a2, &v66, v12, v13, v14, v15, v16, v17, v18, v19);
  if (v22)
  {
    LOWORD(v48) = 12;
    LOBYTE(v99) = 2;
    v32 = v67;
    v31 = v68;
    v33 = *(a2 + 2);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v46 = *(v33 + 16);
    v43 = v31 + v32;
    cnprint::CNPrinter::Print(&v48, &v99, "t,%.3lf,Raising MountStateEvent,%d,from protobuf mounted state,%d", v24, v25, v26, v27, v28, SLOBYTE(v43));
    sub_1D0B9E338();
  }

  v49 = 0;
  v50 = 0.0;
  v48 = &unk_1F4CEF778;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0x7FF8000000000000;
  v61 = 0;
  v62 = 0x3FF0000000000000;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  result = raven::ConvertProtobufToMovingStateEvent(a2, &v48, v23, v24, v25, v26, v27, v28, v29, v30);
  if (result)
  {
    LOWORD(v99) = 12;
    LOBYTE(v98) = 2;
    v41 = v49;
    v40 = v50;
    v42 = *(a2 + 2);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v47 = *(v42 + 8);
    v44 = v40 + v41;
    cnprint::CNPrinter::Print(&v99, &v98, "t,%.3lf,Raising MovingStateEvent,%d,from protobuf activity type,%d", v35, v36, v37, v38, v39, SLOBYTE(v44));
    sub_1D0BB79B4();
  }

  return result;
}

void sub_1D0DC25F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 104);
  if (v34)
  {
    sub_1D0B7CAB8(v34);
  }

  v35 = *(v32 - 88);
  if (v35)
  {
    sub_1D0B7CAB8(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2, raven::FitnessSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = &unk_1F4CEF508;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x7FF8000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  result = raven::ConvertProtobufToFitnessSessionEvent(a2, v9, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    sub_1D0DC2768();
  }

  return result;
}

void sub_1D0DC27D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2, raven::FitnessSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = &unk_1F4CEF508;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x7FF8000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  result = raven::ConvertProtobufToFitnessSessionEvent(a2, v9, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    sub_1D0DC2768();
  }

  return result;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2, raven::BodyMetricsEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEFE8;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  v22 = 0;
  result = raven::ConvertProtobufToBodyMetricsEvent(a2, v11, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0DC2B50(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2, raven::SignalEnvironmentEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF5C8;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  v22 = 0;
  result = raven::ConvertProtobufToSignalEnvironmentEvent(a2, v11, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    sub_1D0BB2D1C();
  }

  return result;
}

void sub_1D0DC2CA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  v4 = *(v1 - 24);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2, raven::StepCountEvent *a3)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = &unk_1F4CEEBE8;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x7FF8000000000000;
  v15 = 0;
  v16 = vdupq_n_s64(0x7FF8000000000000uLL);
  v17 = 0x7FF8000000000000;
  v18 = 0;
  v19 = 0x7FF8000000000000;
  v20 = 0xFFFFFFFFLL;
  result = raven::ConvertProtobufToStepCountEvent(a2, v4, a3);
  if (result)
  {
    sub_1D0DD7940();
  }

  return result;
}

void sub_1D0DC2DB4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

cnprint::CNPrinter *raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2, raven::TunnelBridgeNotificationEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v26 = 0;
  v27 = 0.0;
  v25 = &unk_1F4CEF7D8;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v38 = 0uLL;
  v37 = 0x7FF8000000000000;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = 0;
  *&v40 = 0;
  BYTE8(v40) = 0;
  v41 = 0uLL;
  LOBYTE(v42) = 0;
  *(&v42 + 1) = 0;
  *v43 = 0;
  *&v43[8] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v43[24] = *&v43[8];
  *&v43[40] = 0;
  result = raven::ConvertProtobufToTunnelBridgeNotificationEvent(a2, &v25, a3, a4, a5, a6, a7, a8, *&v43[8], a10);
  if (result)
  {
    if (*(this + 184680) != 1 || *(this + 184672) != v43[40] || __PAIR64__(*(this + 184674), *(this + 184673)) != __PAIR64__(v43[42], v43[41]) || *(this + 184675) != v43[43])
    {
      v12 = (this + 184552);
      if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
      {
        LOWORD(v45) = 12;
        LOBYTE(v44) = 1;
        v24 = v27 + v26;
        cnprint::CNPrinter::Print(&v45, &v44, "time,%.3lf,New tunnel/bridge assistance state: is_bridge:%d, is_tunnel:%d, is_close_to_bridge:%d, is_close_to_tunnel:%d", v13, v14, v15, v16, v17, SLOBYTE(v24));
      }

      v18 = *v43;
      if (*(this + 184680) == 1)
      {
        *(this + 184616) = v42;
        *(this + 184632) = v18;
        *(this + 184648) = *&v43[16];
        *(this + 184660) = *&v43[28];
        v19 = v39;
        *v12 = v38;
        *(this + 184568) = v19;
        v20 = v41;
        *(this + 184584) = v40;
        *(this + 184600) = v20;
      }

      else
      {
        *(this + 184616) = v42;
        *(this + 184632) = v18;
        v21 = *&v43[32];
        *(this + 184648) = *&v43[16];
        *(this + 184664) = v21;
        v22 = v39;
        *v12 = v38;
        *(this + 184568) = v22;
        v23 = v41;
        *(this + 184584) = v40;
        *(this + 184600) = v23;
        *(this + 184680) = 1;
      }
    }

    sub_1D0DD67F4();
  }

  return result;
}

void sub_1D0DC300C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 72);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2, raven::TunnelEndPointAssistanceEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEC48;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = vdupq_n_s64(0x7FF8000000000000uLL);
  v34 = v33;
  v35 = v33;
  v36 = 0;
  result = raven::ConvertProtobufToTunnelEndPointAssistanceEvent(a2, v11, a3, a4, a5, a6, a7, a8, v33, a10);
  if (result)
  {
    sub_1D0DD7040();
  }

  return result;
}

void sub_1D0DC3134(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(int8x16_t a1, int8x16_t a2, uint64_t a3, cnprint::CNPrinter *a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEEF40;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0x7FF8000000000000;
  v17 = 0;
  result = raven::ConvertProtobufToARSessionStatusEvent(a4, a5, v6, a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0DC3404(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEE120;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x7FF8000000000000;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0x7FF8000000000000;
  v41 = 0;
  cntransformation::CNRigidTransformation::CNRigidTransformation(&v42);
  cntransformation::CNRigidTransformation::CNRigidTransformation(v43);
  v43[220] = 0;
  v44 = 0;
  if (raven::ConvertProtobufToVIOEstimateEvent(a2, v6, v3, v4, v5))
  {
    operator new();
  }

  raven::VIOEstimateEvent::~VIOEstimateEvent(v6);
}

void sub_1D0DC3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 64);
  if (v12)
  {
    sub_1D0B7CAB8(v12);
  }

  sub_1D0B7CAB8(v9);
  raven::VIOEstimateEvent::~VIOEstimateEvent(&a9);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3)
{
  v46[1] = 0;
  v46[2] = 0;
  v46[0] = &unk_1F4CEE150;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v57 = 0uLL;
  v56 = 0x7FF8000000000000;
  LOBYTE(v58) = 0;
  *&v59 = 0;
  *(&v58 + 1) = 0;
  BYTE8(v59) = 0;
  v60 = 0uLL;
  v61.i8[0] = 0;
  v61.i64[1] = 0;
  *&v62 = 0;
  *(&v62 + 1) = 0x7FF8000000000000;
  cntransformation::CNRigidTransformation::CNRigidTransformation(&v63);
  cntransformation::CNRigidTransformation::CNRigidTransformation(&v64);
  v68 = 0;
  v69 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (raven::ConvertProtobufToVLLocalizationEvent(a2, a3, v46, v6, v69, v7))
  {
    if (*v69.i64 < *(this + 945))
    {
      LOWORD(v75[0]) = 12;
      LOBYTE(v44) = 2;
      cnprint::CNPrinter::Print(v75, &v44, "Ignoring current VL localization event with low confidence level: %.3lf < %.3lf min", v8, v9, v10, v11, v12, v69.i8[0]);
      goto LABEL_42;
    }

    v13 = *(this + 648);
    *&v69.i64[1] = v13;
    memset(v45, 0, 17);
    v44 = &unk_1F4CEF748;
    *(&v45[1] + 1) = 0;
    *&v45[2] = 0;
    BYTE8(v45[2]) = 0;
    memset(&v45[3], 0, 17);
    *(&v45[4] + 1) = 0;
    *&v45[5] = 0;
    memset(&v45[6], 0, 17);
    *(&v45[5] + 1) = 0x7FF8000000000000;
    *(&v45[7] + 1) = 0;
    *&v45[8] = 0;
    BYTE8(v45[8]) = 0;
    memset(&v45[9], 0, 17);
    *(&v45[10] + 1) = 0;
    *&v45[11] = 0;
    *(&v45[11] + 1) = 0x7FF8000000000000;
    LOWORD(v45[12]) = 0;
    BYTE2(v45[12]) = 0;
    v14 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(&v45[12] + 8) = v14;
    *(&v45[13] + 8) = v14;
    *(&v45[14] + 8) = v14;
    *(&v45[15] + 8) = v14;
    *(&v45[16] + 1) = 0x7FF8000000000000;
    LOBYTE(v45[17]) = 0;
    *(&v45[17] + 8) = v14;
    *(&v45[18] + 8) = v14;
    *(&v45[19] + 8) = v14;
    *(&v45[20] + 8) = v14;
    *(&v45[21] + 1) = 0x7FF8000000000000;
    if (v68 != 1)
    {
LABEL_41:
      operator new();
    }

    memset(&v75[1], 0, 80);
    *&v75[0] = &unk_1F4CEF748;
    *(&v75[0] + 1) = 0;
    memset(&v75[7], 0, 80);
    v75[6] = 0x7FF8000000000000uLL;
    v75[13] = v14;
    v75[14] = v14;
    v75[15] = v14;
    v75[16] = v14;
    v75[12] = 0x7FF8000000000000uLL;
    v75[17] = 0x7FF8000000000000uLL;
    v75[18] = v14;
    v75[19] = v14;
    v75[20] = v14;
    v75[21] = v14;
    *&v75[22] = 0x7FF8000000000000;
    memcpy(v45, v75 + 8, sizeof(v45));
    v16.i64[1] = *(&v62 + 1);
    v45[5] = v62;
    v45[4] = v61;
    v45[3] = v60;
    v45[2] = v59;
    v45[0] = v57;
    v45[1] = v58;
    v45[11] = v62;
    v45[10] = v61;
    v45[9] = v60;
    v45[8] = v59;
    v45[6] = v57;
    v45[7] = v58;
    LOBYTE(v45[12]) = 14;
    LOBYTE(v45[17]) = 1;
    *(&v45[17] + 1) = *v65;
    v45[18] = *(v65 + 8);
    v45[19] = *v67;
    *&v45[20] = *(v67 + 16);
    v15 = v67 + 8 * v66;
    *(&v45[20] + 1) = *(v15 + 8);
    *&v45[21] = *(v15 + 16);
    *(&v45[21] + 1) = *(v67 + 16 * v66 + 16);
    v16.i64[0] = 0;
    if (v13 < 2.0 && v13 > 0.0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *v16.i64 = v13;
    }

    v74 = 0.0;
    v73 = 0;
    CNTimeSpan::SetTimeSpan(&v73, 0, v16, v61);
    v71 = v57;
    v70[0] = (*(v46[0] + 16))(v46);
    v70[1] = v19;
    *v22.i64 = CNTimeSpan::operator-(&v71, v70, v20, v21);
    *v24.i64 = fabs(v23 + *v22.i64);
    v75[0] = 0uLL;
    CNTimeSpan::SetTimeSpan(v75, 0, v24, v22);
    v26 = *&v75[0];
    v72 = v75[0];
    v27 = *(v75 + 1);
    if (*&v75[0] || (*(&v75[0] + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (*&v75[0] == 2)
      {
        if (*(v75 + 1) > 0.0)
        {
          goto LABEL_26;
        }
      }

      else if (*&v75[0] >= 3)
      {
        goto LABEL_26;
      }

      if (!v73)
      {
        v28 = v74;
        if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_23:
          if (v28 >= *(v75 + 1))
          {
            goto LABEL_36;
          }

LABEL_29:
          v36 = *&v57.i64[1];
          v37 = v57.i64[0];
          v38 = (*(v46[0] + 16))(v46);
          if ((v37 || (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v38 || (*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v37 != v38)
          {
            if (v37 >= v38)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          if (v36 < v39)
          {
LABEL_35:
            memset(&v45[7], 0, 72);
            *(&v45[11] + 1) = 0x7FF8000000000000;
            v75[0] = v57;
            *&v45[6] = CNTimeSpan::operator+(v75, &v72, v57, v40);
            *(&v45[6] + 1) = v41;
            *&v45[0] = *&v45[6];
            *(&v45[0] + 1) = v41;
            v42 = (v26 + v27) * 2.5 * ((v26 + v27) * 2.5);
            *&v45[19] = v42 + *&v45[19];
            *(&v45[20] + 1) = v42 + *(&v45[20] + 1);
            *(&v45[21] + 1) = v42 + *(&v45[21] + 1);
          }

LABEL_36:
          if (sub_1D0C17F90(&v44))
          {
            sub_1D0C182A4(&v44);
          }

          if (BYTE1(v45[12]) & 1) != 0 || (v45[17])
          {
            sub_1D0C185C4();
          }

          goto LABEL_41;
        }
      }

      if (*&v75[0] != v73)
      {
        if (*&v75[0] <= v73)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }
    }

    else if (*(v75 + 1) > 0.0)
    {
LABEL_26:
      if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        LOWORD(v75[0]) = 12;
        v71.i8[0] = 1;
        v29 = (*(v46[0] + 16))(v46);
        v43 = v30 + v29;
        cnprint::CNPrinter::Print(v75, &v71, "VLLocalizationEvent, VL localization position too old to use, t_event,%.3lf, t_vl,%.3lf, dt,%.3lf > %.3lf ", v31, v32, v33, v34, v35, SLOBYTE(v43));
      }

      goto LABEL_41;
    }

    v28 = v74;
    goto LABEL_23;
  }

LABEL_42:
  raven::VLLocalizationEvent::~VLLocalizationEvent(v46);
}

void sub_1D0DC4064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (STACK[0x628])
  {
    sub_1D0B7CAB8(STACK[0x628]);
  }

  sub_1D0B7CAB8(v59);
  raven::VLLocalizationEvent::~VLLocalizationEvent(&a59);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3, raven::RavenGnssAssistanceFileEvent *a4)
{
  if (*(this + 6896))
  {
    v11[1] = 0;
    v11[2] = 0;
    v11[0] = &unk_1F4CEE0C0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0x7FF8000000000000;
    v22 = 0u;
    *__p = 0u;
    v24 = 0;
    if (raven::ConvertProtobufToRavenGnssAssistanceFileEvent(a2, a3, v11, a4))
    {
      operator new();
    }

    v25[0] = 12;
    cnprint::CNPrinter::Print(v25, &v10, "#rof,Convert protobuf to event failed", v4, v5, v6, v7, v8, v9);
    v11[0] = &unk_1F4CEE0C0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1D0DC4454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  v28 = *(v26 + 152);
  if (v28)
  {
    sub_1D0B7CAB8(v28);
  }

  sub_1D0B7CAB8(v25);
  if (__p)
  {
    *(v26 + 128) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC4514(uint64_t a1)
{
  v2 = a1 + 547;
  *a1 = &unk_1F4CDFA78;
  sub_1D0B751F4((a1 + 8), &unk_1D0ED80C5);
  *a1 = &unk_1F4CDF868;
  *(a1 + 40) = 0u;
  *(a1 + 33) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = xmmword_1D0E82F40;
  *(a1 + 88) = xmmword_1D0E82F50;
  *(a1 + 104) = xmmword_1D0E82F60;
  *(a1 + 120) = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  *(a1 + 136) = xmmword_1D0E82F60;
  *(a1 + 152) = xmmword_1D0E82F50;
  *(a1 + 168) = xmmword_1D0E82F60;
  *(a1 + 184) = vdupq_n_s64(0x3F9B573EAB367A10uLL);
  *(a1 + 200) = xmmword_1D0E82F60;
  *(a1 + 216) = xmmword_1D0E82F50;
  *(a1 + 232) = xmmword_1D0E82F60;
  *(a1 + 248) = xmmword_1D0E82F70;
  *(a1 + 264) = 0x3FF0000000000000;
  __asm { FMOV            V2.2D, #1.0 }

  *(a1 + 272) = _Q2;
  *(a1 + 288) = xmmword_1D0E82F80;
  *(a1 + 304) = xmmword_1D0E82F90;
  *(a1 + 320) = xmmword_1D0E82FA0;
  *(a1 + 336) = xmmword_1D0E82FB0;
  *(a1 + 352) = xmmword_1D0E82FC0;
  *(a1 + 368) = xmmword_1D0E82FD0;
  *(a1 + 384) = xmmword_1D0E82FE0;
  *(a1 + 400) = xmmword_1D0E82FF0;
  *(a1 + 416) = 0x3F847AE147AE147BLL;
  *(a1 + 424) = 2;
  *(a1 + 432) = xmmword_1D0E83000;
  *(a1 + 448) = xmmword_1D0E83010;
  *(a1 + 464) = xmmword_1D0E83020;
  *(a1 + 480) = xmmword_1D0E83030;
  *(a1 + 496) = xmmword_1D0E83040;
  *(a1 + 512) = xmmword_1D0E83050;
  *(a1 + 528) = xmmword_1D0E83060;
  *(a1 + 544) = 257;
  *(a1 + 546) = 1;
  *v2 = 0;
  *(a1 + 551) = 1;
  *(a1 + 552) = 0;
  *(a1 + 560) = xmmword_1D0E83070;
  *(a1 + 576) = 0;
  *(a1 + 580) = 1;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0;
  *(v2 + 42) = 0x101010101010101;
  *(a1 + 597) = 0;
  *(a1 + 603) = 0x101010101010101;
  *(a1 + 598) = 0x101010101010101;
  *(a1 + 612) = 1096810496;
  *(a1 + 616) = 0x3FE0000000000000;
  *(a1 + 624) = xmmword_1D0E83080;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0x3F847AE147AE147BLL;
  *(a1 + 656) = xmmword_1D0E83090;
  *(a1 + 672) = xmmword_1D0E830A0;
  *(a1 + 688) = xmmword_1D0E830B0;
  *(a1 + 704) = xmmword_1D0E830C0;
  *(a1 + 720) = xmmword_1D0E830D0;
  *(a1 + 736) = xmmword_1D0E830E0;
  *(a1 + 752) = xmmword_1D0E830F0;
  *(a1 + 768) = xmmword_1D0E83100;
  *(a1 + 784) = xmmword_1D0E83110;
  *(a1 + 800) = xmmword_1D0E83120;
  *(a1 + 816) = 0x3DB5FD7FE1796495;
  *(a1 + 824) = 2;
  *(a1 + 832) = 0x3FE0000000000000;
  *(a1 + 840) = 256;
  *(a1 + 848) = xmmword_1D0E83130;
  *(a1 + 864) = xmmword_1D0E83140;
  *(a1 + 880) = xmmword_1D0E83150;
  *(a1 + 896) = xmmword_1D0E83160;
  *(a1 + 912) = xmmword_1D0E83170;
  *(a1 + 928) = xmmword_1D0E83180;
  *(a1 + 944) = xmmword_1D0E83190;
  *(a1 + 960) = xmmword_1D0E831A0;
  *(a1 + 976) = 0x3FF0000000000000;
  *(a1 + 984) = 350;
  *(a1 + 992) = xmmword_1D0E831B0;
  *(a1 + 1008) = xmmword_1D0E831C0;
  *(a1 + 1024) = 0x3FF0000000000000;
  *(a1 + 1032) = 3;
  *(a1 + 1040) = xmmword_1D0E831D0;
  *(a1 + 1056) = xmmword_1D0E831E0;
  *(a1 + 1072) = xmmword_1D0E831F0;
  *(a1 + 1088) = _Q2;
  *(a1 + 1104) = xmmword_1D0E83200;
  *(a1 + 1120) = xmmword_1D0E83210;
  *(a1 + 1136) = xmmword_1D0E83220;
  *(a1 + 1152) = xmmword_1D0E83230;
  *(a1 + 1168) = xmmword_1D0E83240;
  *(a1 + 1184) = 0x4018000000000000;
  *(a1 + 1192) = 3;
  *(a1 + 1200) = xmmword_1D0E83250;
  *(a1 + 1216) = xmmword_1D0E83260;
  *(a1 + 1232) = xmmword_1D0E83270;
  *(a1 + 1248) = xmmword_1D0E83280;
  *(a1 + 1264) = xmmword_1D0E83250;
  *(a1 + 1280) = 6;
  *(a1 + 1288) = 0x4000000000000000;
  *(a1 + 1296) = 6;
  *(a1 + 1304) = 0x4000000000000000;
  *(a1 + 1312) = 2;
  *(a1 + 1320) = 0x4000000000000000;
  *(a1 + 1328) = xmmword_1D0E83290;
  *(a1 + 1344) = xmmword_1D0E832A0;
  *(a1 + 1360) = xmmword_1D0E832B0;
  *(a1 + 1376) = xmmword_1D0E832C0;
  __asm { FMOV            V2.2D, #6.0 }

  *(a1 + 1392) = _Q2;
  *(a1 + 1408) = xmmword_1D0E832D0;
  __asm { FMOV            V2.2D, #3.0 }

  *(a1 + 1424) = _Q2;
  *(a1 + 1440) = _Q2;
  *(a1 + 1456) = xmmword_1D0E832E0;
  *(a1 + 1472) = 2;
  *(a1 + 1480) = 0x4024000000000000;
  *(a1 + 1488) = vdupq_n_s64(0x3FE0CCCCCCCCCCCDuLL);
  *(a1 + 1504) = xmmword_1D0E832F0;
  *(a1 + 1520) = xmmword_1D0E83300;
  *(a1 + 1536) = xmmword_1D0E83310;
  *(a1 + 1552) = vdupq_n_s64(0x4066800000000000uLL);
  *(a1 + 1568) = xmmword_1D0E83320;
  *(a1 + 1584) = xmmword_1D0E83330;
  *(a1 + 1600) = xmmword_1D0E83340;
  *(a1 + 1616) = xmmword_1D0E83350;
  *(a1 + 1632) = xmmword_1D0E83360;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = xmmword_1D0E87CA0;
  *(a1 + 1672) = unk_1D0E87CB0;
  *(a1 + 1688) = xmmword_1D0E87CA0;
  *(a1 + 1704) = unk_1D0E87CB0;
  *(a1 + 1720) = xmmword_1D0E87CA0;
  *(a1 + 1736) = unk_1D0E87CB0;
  *(a1 + 1752) = xmmword_1D0E87CA0;
  *(a1 + 1768) = unk_1D0E87CB0;
  *(a1 + 1784) = xmmword_1D0E87CA0;
  *(a1 + 1800) = unk_1D0E87CB0;
  *(a1 + 1816) = xmmword_1D0E87CA0;
  *(a1 + 1832) = unk_1D0E87CB0;
  *(a1 + 1848) = xmmword_1D0E87C60;
  *(a1 + 1864) = unk_1D0E87C70;
  *(a1 + 1880) = xmmword_1D0E87C40;
  *(a1 + 1896) = unk_1D0E87C50;
  *(a1 + 1912) = xmmword_1D0E87C60;
  *(a1 + 1928) = unk_1D0E87C70;
  *(a1 + 1944) = xmmword_1D0E87C80;
  *(a1 + 1960) = unk_1D0E87C90;
  *(a1 + 1976) = xmmword_1D0E87CA0;
  *(a1 + 1992) = unk_1D0E87CB0;
  *(a1 + 2008) = xmmword_1D0E87CA0;
  *(a1 + 2024) = unk_1D0E87CB0;
  *(a1 + 2040) = xmmword_1D0E87CA0;
  *(a1 + 2056) = unk_1D0E87CB0;
  *(a1 + 2072) = xmmword_1D0E87CA0;
  *(a1 + 2088) = unk_1D0E87CB0;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = xmmword_1D0E83370;
  *(a1 + 2128) = xmmword_1D0E83380;
  *(a1 + 2144) = xmmword_1D0E832E0;
  *(a1 + 2160) = xmmword_1D0E83390;
  *(a1 + 2176) = xmmword_1D0E833A0;
  *(a1 + 2192) = 1;
  *(a1 + 2200) = 0x4034000000000000;
  *(a1 + 2208) = 0;
  *(a1 + 2216) = 0x404E000000000000;
  *(a1 + 2224) = xmmword_1D0E833B0;
  *(a1 + 2240) = xmmword_1D0E833C0;
  *(a1 + 2256) = xmmword_1D0E833D0;
  *(a1 + 2272) = 0x3FE3333333333333;
  *(a1 + 2280) = 1;
  *(a1 + 2288) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(a1 + 2304) = 0;
  *(a1 + 2344) = 0;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2352) = 0x3FD51EB851EB851FLL;
  *(a1 + 2360) = xmmword_1D0E87CC0;
  *(a1 + 2376) = unk_1D0E87CD0;
  *(a1 + 2392) = 257;
  *(a1 + 2394) = 1;
  *(a1 + 2400) = xmmword_1D0E87CE0;
  *(a1 + 2416) = unk_1D0E87CF0;
  *(a1 + 2432) = xmmword_1D0E833E0;
  *(a1 + 2448) = xmmword_1D0E833F0;
  *(a1 + 2464) = xmmword_1D0E83400;
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 2480) = _Q1;
  *(a1 + 2496) = vdupq_n_s64(0x3FEE666666666666uLL);
  *(a1 + 2512) = xmmword_1D0E83410;
  *(a1 + 2528) = xmmword_1D0E83420;
  *(a1 + 2544) = 1;
  *(a1 + 2552) = 0x40BC200000000000;
  *(a1 + 2560) = 1;
  *(a1 + 2562) = 0;
  *(a1 + 2568) = 0x3FF0000000000000;
  *(a1 + 2576) = xmmword_1D0E87DF0;
  *(a1 + 2640) = unk_1D0E87E30;
  *(a1 + 2624) = xmmword_1D0E87E20;
  *(a1 + 2608) = xmmword_1D0E87E10;
  *(a1 + 2592) = unk_1D0E87E00;
  *(a1 + 2656) = xmmword_1D0E87D00;
  *(a1 + 2720) = xmmword_1D0E87D40;
  *(a1 + 2704) = unk_1D0E87D30;
  *(a1 + 2688) = xmmword_1D0E87D20;
  *(a1 + 2672) = unk_1D0E87D10;
  *(a1 + 2736) = 0;
  *(a1 + 2792) = xmmword_1D0E87D80;
  *(a1 + 2808) = unk_1D0E87D90;
  *(a1 + 2760) = unk_1D0E87D60;
  *(a1 + 2776) = xmmword_1D0E87D70;
  *(a1 + 2744) = xmmword_1D0E87D50;
  *(a1 + 2872) = xmmword_1D0E87DD0;
  *(a1 + 2888) = unk_1D0E87DE0;
  *(a1 + 2840) = unk_1D0E87DB0;
  *(a1 + 2856) = xmmword_1D0E87DC0;
  *(a1 + 2824) = xmmword_1D0E87DA0;
  *(a1 + 2952) = xmmword_1D0E87E20;
  *(a1 + 2968) = unk_1D0E87E30;
  *(a1 + 2920) = unk_1D0E87E00;
  *(a1 + 2936) = xmmword_1D0E87E10;
  *(a1 + 2904) = xmmword_1D0E87DF0;
  *(a1 + 3032) = unk_1D0E87E70;
  *(a1 + 3048) = xmmword_1D0E87E80;
  *(a1 + 3000) = unk_1D0E87E50;
  *(a1 + 3016) = xmmword_1D0E87E60;
  *(a1 + 2984) = xmmword_1D0E87E40;
  *(a1 + 3064) = 0x3FEE666666666666;
  *(a1 + 3072) = xmmword_1D0E83430;
  *(a1 + 3088) = xmmword_1D0E83440;
  *(a1 + 3104) = xmmword_1D0E83450;
  *(a1 + 3120) = xmmword_1D0E83460;
  *(a1 + 3136) = xmmword_1D0E83470;
  *(a1 + 3152) = xmmword_1D0E83480;
  *(a1 + 3168) = xmmword_1D0E83490;
  *(a1 + 3184) = xmmword_1D0E834A0;
  *(a1 + 3200) = xmmword_1D0E834B0;
  *(a1 + 3216) = xmmword_1D0E834C0;
  *(a1 + 3232) = xmmword_1D0E834D0;
  *(a1 + 3248) = xmmword_1D0E83040;
  *(a1 + 3264) = xmmword_1D0E834E0;
  *(a1 + 3280) = xmmword_1D0E834F0;
  *(a1 + 3296) = xmmword_1D0E83500;
  *(a1 + 3312) = xmmword_1D0E83510;
  __asm { FMOV            V0.2D, #5.0 }

  *(a1 + 3328) = _Q0;
  *(a1 + 3344) = xmmword_1D0E83520;
  *(a1 + 3360) = 0x3FE999999999999ALL;
  *(a1 + 3368) = 257;
  *(a1 + 3376) = xmmword_1D0E83530;
  *(a1 + 3392) = 0x3FE0000000000000;
  *(a1 + 3400) = 0x400000005;
  *(a1 + 3408) = xmmword_1D0E83540;
  *(a1 + 3424) = xmmword_1D0E83550;
  *(a1 + 3440) = xmmword_1D0E83560;
  *(a1 + 3456) = vdupq_n_s64(0x4014880F19EA2B99uLL);
  *(a1 + 3472) = xmmword_1D0E83570;
  *(a1 + 3488) = xmmword_1D0E83580;
  *(a1 + 3504) = 0x4022000000000000;
  *(a1 + 3512) = 0;
  *(a1 + 3520) = xmmword_1D0E83590;
  *(a1 + 3536) = 257;
  *(a1 + 3544) = 0x4072C00000000000;
  *(a1 + 3552) = 0x412E848000000000;
  *(a1 + 3560) = 2;
  *(a1 + 3568) = 1;
  *(a1 + 3576) = 0x4014000000000000;
  *(a1 + 3584) = 0x3F847AE147AE147BLL;
  *(a1 + 3592) = 5;
  *(a1 + 3596) = 1;
  *(a1 + 3600) = xmmword_1D0E835A0;
  *(a1 + 3616) = 0x4014000000000000;
  *(a1 + 3624) = 100;
  *(a1 + 3632) = xmmword_1D0E835B0;
  *(a1 + 3648) = 0x3FD3333333333333;
  *(a1 + 3656) = 3;
  *(a1 + 3664) = 0;
  *(a1 + 3668) = 0;
  *(a1 + 3672) = 0;
  sub_1D0B751F4((a1 + 3680), &unk_1D0ED80C5);
  *(a1 + 3704) = 10;
  *(a1 + 3708) = 0;
  sub_1D0B751F4((a1 + 3712), "raven_output.bin");
  *(a1 + 3736) = 256;
  *(a1 + 3738) = 0;
  sub_1D0B751F4((a1 + 3744), "raven_debug.txt");
  *(a1 + 3768) = 0;
  *(a1 + 3770) = 0;
  sub_1D0B751F4((a1 + 3776), "raven_msr.txt");
  *(a1 + 3804) = 1;
  *(a1 + 3800) = 16843009;
  *(a1 + 3805) = 0;
  *(a1 + 3807) = 0x101010101010101;
  *(a1 + 3815) = 1;
  *(v2 + 3270) = 16843009;
  *(a1 + 3821) = 0;
  *(a1 + 3822) = 16843009;
  *(a1 + 3825) = 16843009;
  *(a1 + 3829) = 0;
  *(a1 + 3834) = 1;
  *(a1 + 3830) = 16843009;
  *(v2 + 3288) = 0x1000000;
  *(a1 + 3839) = 1;
  *(a1 + 3840) = 0;
  *(a1 + 3844) = 0;
  return a1;
}

void sub_1D0DC4F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 3767) < 0)
  {
    operator delete(*v6);
  }

  if (*(v2 + 3735) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 3703) < 0)
  {
    operator delete(*v4);
  }

  v8 = *(v2 + 2328);
  if (v8)
  {
    sub_1D0B7CAB8(v8);
  }

  sub_1D0D41594(va);
  *v2 = v3;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC5018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1D387E8C0](a1 + 2);

  return std::istream::~istream();
}

void *sub_1D0DC50E0(void *result)
{
  *result = &unk_1F4CEADC8;
  result[16] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DC5160(void *a1)
{
  *a1 = &unk_1F4CEADC8;
  a1[16] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0DC51D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000ALL;
  *a2 = &unk_1F4CEAE48;
  *(a2 + 8) = xmmword_1D0E87BE0;
  *(a2 + 32) = a2 + 40;
  v2 = 128;
  if (!*(a1 + 248))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0DC5268(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0DC52B8(void **this)
{
  *this = &unk_1F4CEABA0;
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

uint64_t sub_1D0DC5330(_BYTE *a1, uint64_t *a2)
{
  if ((*(*a1 + 88))(a1))
  {
    v28 = 12;
    v27 = 3;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(a1 + 29) = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(a1, *(v10 + 832));
    a1[224] = 1;
    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      v28 = 12;
      v27 = 1;
      (*(*a1 + 16))(__p, a1);
      if (v26 >= 0)
      {
        v17 = __p;
      }

      else
      {
        LOBYTE(v17) = __p[0];
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s configured successfully.", v12, v13, v14, v15, v16, v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {
    v28 = 12;
    v27 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Error: %s could not be configured.", v19, v20, v21, v22, v23, v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0DC5534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DC5558(void *a1)
{
  *a1 = &unk_1F4CEC098;
  sub_1D0DC5674(a1 + 1070);
  a1[1061] = &unk_1F4CE3930;
  sub_1D0D83110((a1 + 741));
  a1[358] = &unk_1F4CEAAF8;
  a1[659] = &unk_1F4CD5E28;
  a1[646] = &unk_1F4CD5E28;
  a1[577] = &unk_1F4CD5E28;
  sub_1D0BC27EC((a1 + 358));

  return sub_1D0D4FA90(a1);
}

uint64_t *sub_1D0DC5674(uint64_t *a1)
{
  a1[1581] = &unk_1F4CE3720;
  a1[1489] = &unk_1F4CEAAC8;
  a1[1482] = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 1487);
  a1[1482] = &unk_1F4CE37A8;
  a1[1476] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1481);
  a1[1476] = &unk_1F4CE3830;
  a1[1427] = &unk_1F4CDEAF8;
  a1[1421] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1426);
  a1[1421] = &unk_1F4CE3830;
  a1[1329] = &unk_1F4CD5E28;
  a1[1280] = &unk_1F4CDEAF8;
  a1[1101] = &unk_1F4CE3870;
  a1[922] = &unk_1F4CE3720;
  a1[743] = &unk_1F4CEAAC8;
  a1[736] = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 741);
  a1[736] = &unk_1F4CE37A8;
  a1[730] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 735);
  a1[730] = &unk_1F4CE3830;
  a1[638] = &unk_1F4CDEAF8;
  a1[632] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 637);
  a1[632] = &unk_1F4CE3830;
  a1[453] = &unk_1F4CD5E28;
  a1[361] = &unk_1F4CDEAF8;
  a1[8] = &unk_1F4CE3870;
  sub_1D0BAAF58(a1 + 5);
  return a1;
}

void sub_1D0DC5A14(void *a1)
{
  *a1 = &unk_1F4CEAAF8;
  a1[301] = &unk_1F4CD5E28;
  a1[288] = &unk_1F4CD5E28;
  a1[219] = &unk_1F4CD5E28;
  sub_1D0BC27EC(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0DC5AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 1424;
  if (!*(a1 + 1540))
  {
    v2 = 664;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0DC5B24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  v2 = 872;
  if (!*(a1 + 1540))
  {
    v2 = 112;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0DC5B80(uint64_t a1)
{
  sub_1D0BC27EC(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DC5BB8(uint64_t result)
{
  if (*(result + 1088) == 1)
  {
    *(result + 960) = &unk_1F4CD5E28;
    *(result + 848) = &unk_1F4CD5E28;
    *(result + 736) = &unk_1F4CD5E28;
    *(result + 672) = &unk_1F4CD5E28;
    *(result + 520) = &unk_1F4CD5E28;
    *(result + 408) = &unk_1F4CD5E28;
    *(result + 296) = &unk_1F4CD5E28;
    *(result + 232) = &unk_1F4CD5E28;
  }

  return result;
}

void *sub_1D0DC5CC8(void *result)
{
  *result = &unk_1F4CEAD08;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DC5D08(void *a1)
{
  *a1 = &unk_1F4CEAD08;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DC5D58(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 4];
    v7 = *v6 + 2656 * (v5 & 0xF);
    v8 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      do
      {
        (**v7)(v7);
        v7 += 2656;
        if (v7 - *v6 == 42496)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 16;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1D0C565EC(a1);
}

uint64_t sub_1D0DC5EBC(uint64_t a1)
{
  sub_1D0BCB540(a1 + 48, *(a1 + 56));
  sub_1D0BCB540(a1 + 24, *(a1 + 32));
  sub_1D0DC5F04(a1, *(a1 + 8));
  return a1;
}

void sub_1D0DC5F04(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D0DC5F04(a1, *a2);
    sub_1D0DC5F04(a1, *(a2 + 1));
    v4 = *(a2 + 36);
    if (v4)
    {
      *(a2 + 37) = v4;
      operator delete(v4);
    }

    if (a2[112] == 1)
    {
      v5 = *(a2 + 11);
      if (v5)
      {
        *(a2 + 12) = v5;
        operator delete(v5);
      }
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1D0DC5F94(uint64_t a1)
{
  v2 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(a1 + 1624);
  *(a1 + 1624) = 0;
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = *(a1 + 1616);
  *(a1 + 1616) = 0;
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(a1 + 1608);
  *(a1 + 1608) = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  v18 = *(a1 + 1600);
  *(a1 + 1600) = 0;
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  v19 = *(a1 + 1592);
  *(a1 + 1592) = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  if (*(a1 + 1536) == 1)
  {
    *(a1 + 1536) = 0;
  }

  if (*(a1 + 1168) == 1)
  {
    *(a1 + 1168) = 0;
  }

  if (*(a1 + 800) == 1)
  {
    *(a1 + 800) = 0;
  }

  if (*(a1 + 680) == 1)
  {
    *(a1 + 680) = 0;
  }

  if (*(a1 + 288) == 1)
  {
    *(a1 + 288) = 0;
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  sub_1D0BCB594(a1 + 32);
  return a1;
}

uint64_t sub_1D0DC6380(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x14];
    v7 = v2[(a1[5] + v5) / 0x14] + 200 * ((a1[5] + v5) % 0x14);
    if (*v6 + 200 * (v5 % 0x14) != v7)
    {
      v8 = (*v6 + 200 * (v5 % 0x14));
      do
      {
        v9 = *v8;
        v8 += 25;
        (*v9)();
        if (v8 - *v6 == 4000)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 10;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 20;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

void *sub_1D0DC64E8(void *result)
{
  *result = &unk_1F4CEA9A8;
  result[9] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DC6548(void *a1)
{
  *a1 = &unk_1F4CEA9A8;
  a1[9] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0DC65B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_1F4CDEB28;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  *(a2 + 32) = a2 + 40;
  v2 = 72;
  if (!*(a1 + 136))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

uint64_t sub_1D0DC6614(uint64_t a1)
{
  v2 = a1 + 4096;
  if (*(a1 + 4431) < 0)
  {
    operator delete(*(a1 + 4408));
  }

  if (*(v2 + 311) < 0)
  {
    operator delete(*(a1 + 4384));
  }

  *(a1 + 4216) = &unk_1F4CEA9A8;
  *(a1 + 4288) = &unk_1F4CD5E28;
  *(a1 + 4224) = &unk_1F4CD5E28;
  v3 = *(a1 + 712);
  if (v3)
  {
    *(a1 + 720) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D0DC66D8(void **this)
{
  *this = &unk_1F4CEAC90;
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

uint64_t sub_1D0DC6750(_BYTE *a1, uint64_t *a2)
{
  if ((*(*a1 + 88))(a1))
  {
    v28 = 12;
    v27 = 3;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(a1 + 29) = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(a1, *(v10 + 832));
    a1[224] = 1;
    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      v28 = 12;
      v27 = 1;
      (*(*a1 + 16))(__p, a1);
      if (v26 >= 0)
      {
        v17 = __p;
      }

      else
      {
        LOBYTE(v17) = __p[0];
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s configured successfully.", v12, v13, v14, v15, v16, v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {
    v28 = 12;
    v27 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Error: %s could not be configured.", v19, v20, v21, v22, v23, v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0DC6954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DC6980(void **this)
{
  *this = &unk_1F4CEAC18;
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

uint64_t sub_1D0DC69F8(_BYTE *a1, uint64_t *a2)
{
  if ((*(*a1 + 88))(a1))
  {
    v28 = 12;
    v27 = 3;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(a1 + 29) = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(a1, *(v10 + 832));
    a1[224] = 1;
    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      v28 = 12;
      v27 = 1;
      (*(*a1 + 16))(__p, a1);
      if (v26 >= 0)
      {
        v17 = __p;
      }

      else
      {
        LOBYTE(v17) = __p[0];
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s configured successfully.", v12, v13, v14, v15, v16, v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {
    v28 = 12;
    v27 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Error: %s could not be configured.", v19, v20, v21, v22, v23, v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0DC6BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1D0DC6C28(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    cnlogging::ProtobufOutputStream::~ProtobufOutputStream(v2);
    MEMORY[0x1D387ECA0]();
  }

  return a1;
}

void sub_1D0DC6C70(uint64_t a1)
{
  *a1 = &unk_1F4CDFCF8;
  std::mutex::~mutex((a1 + 11320));
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput((a1 + 11256));
  sub_1D0DC6C28((a1 + 11248));
  *(a1 + 5760) = &unk_1F4CDFD88;
  *(a1 + 8328) = &unk_1F4CD5B78;
  *(a1 + 5752) = &unk_1F4CD5B78;
  *(a1 + 3024) = &unk_1F4CDFD88;
  *(a1 + 5592) = &unk_1F4CD5B78;

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0DC6D94(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF808;
  sub_1D0DC6DF4(a1 + 38);
  sub_1D0C56D94(a1 + 32);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t sub_1D0DC6DF4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1E];
    v7 = v2[(a1[5] + v5) / 0x1E] + 136 * ((a1[5] + v5) % 0x1E);
    if (*v6 + 136 * (v5 % 0x1E) != v7)
    {
      v8 = (*v6 + 136 * (v5 % 0x1E));
      do
      {
        v9 = *v8;
        v8 += 17;
        (*v9)();
        if (v8 - *v6 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 15;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 30;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

void sub_1D0DC6F5C(void **this)
{
  v2 = (this + 512);
  *this = &unk_1F4CEC478;
  if (*(this + 4711) < 0)
  {
    operator delete(this[586]);
  }

  if (v2[591] < 0)
  {
    operator delete(this[583]);
  }

  this[562] = &unk_1F4CEA9A8;
  this[571] = &unk_1F4CD5E28;
  this[563] = &unk_1F4CD5E28;
  v3 = this[124];
  if (v3)
  {
    this[125] = v3;
    operator delete(v3);
  }

  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

void sub_1D0DC706C(uint64_t a1)
{
  *a1 = &unk_1F4CEB028;
  sub_1D0C56D94((a1 + 4136));
  if (*(a1 + 1272) == 1)
  {
    *(a1 + 1272) = 0;
  }

  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1096) = 0;
  }

  if (*(a1 + 808) == 1)
  {
    *(a1 + 808) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 440) == 1)
  {
    *(a1 + 440) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0DC7128(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF9A0;
  sub_1D0DC73E4(a1 + 1012);
  sub_1D0DC6380(a1 + 1005);
  *(a1 + 994) = &unk_1F4CEAD08;
  *(a1 + 995) = &unk_1F4CD5E28;
  *(a1 + 986) = &unk_1F4CD5E28;
  *(a1 + 978) = &unk_1F4CD5E28;
  *(a1 + 970) = &unk_1F4CD5E28;
  sub_1D0D3546C(a1 + 964);
  sub_1D0D3546C(a1 + 958);
  sub_1D0DC5D58(a1 + 952);
  sub_1D0DC5D58(a1 + 946);
  sub_1D0D3546C(a1 + 940);
  sub_1D0D3546C(a1 + 934);
  sub_1D0D3546C(a1 + 831);
  *(a1 + 490) = &unk_1F4CDFD88;
  *(a1 + 811) = &unk_1F4CD5B78;
  *(a1 + 489) = &unk_1F4CD5B78;
  *(a1 + 148) = &unk_1F4CDFD88;
  *(a1 + 469) = &unk_1F4CD5B78;
  *(a1 + 99) = &unk_1F4CD5E28;
  *(a1 + 81) = &unk_1F4CD5E28;
  *(a1 + 67) = &unk_1F4CD5E28;
  *(a1 + 57) = &unk_1F4CD5E28;
  *(a1 + 43) = &unk_1F4CD5E28;
  sub_1D0D3546C(a1 + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t sub_1D0DC73E4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

void sub_1D0DC7490(void *a1)
{
  v2 = a1 + 512;
  *a1 = &unk_1F4CF01C0;
  sub_1D0DC7900(a1 + 1260);
  a1[1239] = &unk_1F4CD5E28;
  a1[1231] = &unk_1F4CD5E28;
  a1[1223] = &unk_1F4CD5E28;
  a1[1208] = &unk_1F4CD5E28;
  a1[1194] = &unk_1F4CD5E28;
  a1[1180] = &unk_1F4CD5E28;
  a1[1172] = &unk_1F4CD5E28;
  a1[1153] = &unk_1F4CD5E28;
  a1[1139] = &unk_1F4CD5E28;
  a1[1125] = &unk_1F4CD5E28;
  a1[1117] = &unk_1F4CD5E28;
  a1[1098] = &unk_1F4CD5E28;
  a1[1084] = &unk_1F4CD5E28;
  a1[1070] = &unk_1F4CD5E28;
  a1[1062] = &unk_1F4CD5E28;
  a1[1043] = &unk_1F4CD5E28;
  a1[1029] = &unk_1F4CD5E28;
  a1[1015] = &unk_1F4CD5E28;
  a1[1007] = &unk_1F4CD5E28;
  if (*(v2 + 3920) == 1)
  {
    a1[986] = &unk_1F4CD5E28;
    a1[972] = &unk_1F4CD5E28;
    a1[958] = &unk_1F4CD5E28;
    a1[950] = &unk_1F4CD5E28;
    a1[931] = &unk_1F4CD5E28;
    a1[917] = &unk_1F4CD5E28;
    a1[903] = &unk_1F4CD5E28;
    a1[895] = &unk_1F4CD5E28;
  }

  if (*(v2 + 2824) == 1)
  {
    raven::VLLocalizationEvent::~VLLocalizationEvent((a1 + 727));
  }

  a1[47] = &unk_1F4CD5E28;

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t sub_1D0DC7900(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 4];
    v7 = *v6;
    v8 = *v6 + 1088 * (v5 & 0xF);
    v9 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((*(a1 + 10) + v5) & 0xF);
    while (v8 != v9)
    {
      *(v8 + 120) = &unk_1F4CD5E28;
      *(v8 + 106) = &unk_1F4CD5E28;
      *(v8 + 92) = &unk_1F4CD5E28;
      *(v8 + 84) = &unk_1F4CD5E28;
      *(v8 + 65) = &unk_1F4CD5E28;
      *(v8 + 51) = &unk_1F4CD5E28;
      *(v8 + 37) = &unk_1F4CD5E28;
      *(v8 + 29) = &unk_1F4CD5E28;
      v8 += 1088;
      if (v8 - v7 == 17408)
      {
        v10 = v6[1];
        ++v6;
        v7 = v10;
        v8 = v10;
      }
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 8;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 16;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

void sub_1D0DC7B20(raven::RavenCoarseOdometerActiveObject *this)
{
  *this = &unk_1F4CEFB50;
  *(this + 174) = &unk_1F4CEADC8;
  *(this + 190) = &unk_1F4CD5E28;
  *(this + 175) = &unk_1F4CD5E28;
  if (*(this + 1032) == 1)
  {
    *(this + 100) = &unk_1F4CEE060;
    v2 = *(this + 126);
    if (v2)
    {
      *(this + 127) = v2;
      operator delete(v2);
    }
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

char *sub_1D0DC7C0C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1D0BC39B4(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1D0DC7CCC(v9);
  return v4;
}

uint64_t sub_1D0DC7CCC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

uint64_t sub_1D0DC7D2C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x400000004;
  *a3 = &unk_1F4CDEB70;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

void sub_1D0DC7DD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0DC7E20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void *sub_1D0DC7E68(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  sub_1D0B7D72C(v5, a2);
  sub_1D0DC8AA4(v5, a1);
  sub_1D0B7D7C4(v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1D0DC7F40(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE48E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DC7F8C()
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0DC7FEC(exception);
  __cxa_throw(exception, &unk_1F4CE47B0, sub_1D0DC805C);
}

uint64_t sub_1D0DC7FEC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *result = &unk_1F4CE4808;
  *(result + 8) = &unk_1F4CE4838;
  *(result + 16) = &unk_1F4CE4860;
  return result;
}

uint64_t sub_1D0DC805C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1D0DC8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0DC82E0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0DC8594(exception, a1);
  __cxa_throw(exception, &unk_1F4CE47B0, sub_1D0DC805C);
}

void sub_1D0DC833C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DC83B0(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));

  std::exception::~exception(a1);
}

void sub_1D0DC840C(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DC8490(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);

  std::exception::~exception(v1);
}

void sub_1D0DC84E8(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DC855C(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DC8594(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  *(a1 + 8) = &unk_1F4CE4880;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F4CDEDE8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F4CE4808;
  *(a1 + 8) = &unk_1F4CE4838;
  *(a1 + 16) = &unk_1F4CE4860;
  return a1;
}

__n128 sub_1D0DC86C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CE48A8;
  *(a1 + 8) = &unk_1F4CEE768;
  result = *(a2 + 104);
  v3 = *(a2 + 120);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  *(a1 + 176) = 0u;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 144) = v4;
  *(a1 + 160) = v5;
  *(a1 + 112) = result;
  *(a1 + 128) = v3;
  *(a1 + 192) = 0u;
  if (a1 + 176 != a2 + 168)
  {
    *(a1 + 176) = *(a2 + 168);
    result = *(a2 + 184);
    *(a1 + 192) = result;
  }

  return result;
}

void *sub_1D0DC87BC(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!sub_1D0B7CA64(v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1D0DC8A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0DC8A58(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DC8A58(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0B7D7C4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1D0DC8AA4(void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0DC8CFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1D0C537DC(a1);
}

uint64_t sub_1D0DC8D6C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DC8E40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v10, a3, a3, a4, a5, a6, a7, a8);
  if (!v10[26])
  {
    (*(*v8 + 40))(v8, v9);
  }
}

uint64_t sub_1D0DC8EA4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE49E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DC8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEF268 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEF268 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF240;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    v24 = *(v21 + 80);
    result = *(v21 + 96);
    v25 = *(v21 + 112);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v25;
    *(a1 + 88) = result;
    *(a1 + 72) = v24;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF240;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
  }

  return result;
}

void sub_1D0DC91C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v31, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEF20 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEEF20 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v31.__vftable = 0;
      std::bad_cast::bad_cast(&v31);
      v31.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a3 + 16);
    v34 = *(v21 + 48);
    v35 = *(v21 + 64);
    v36 = *(v21 + 80);
    v37 = *(v21 + 96);
    v32 = *(v21 + 16);
    v33 = *(v21 + 32);
    v19 = *(v21 + 104);
    LOWORD(v28) = *(v21 + 112);
  }

  else
  {
    LOWORD(v28) = 3;
    v29 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v29, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v33 = 0uLL;
    v36 = 0uLL;
    v28 = 0;
    v32 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v19 = 0x7FF8000000000000;
    v37 = 0;
  }

  if (*(v9 + 352) == 1)
  {
    *(v9 + 328) = v37;
    *(v9 + 248) = v32;
    v22 = v34;
    v23 = v36;
    *(v9 + 296) = v35;
    *(v9 + 312) = v23;
    *(v9 + 264) = v33;
    *(v9 + 280) = v22;
    *(v9 + 336) = v19;
    *(v9 + 344) = v28;
  }

  else
  {
    *(v9 + 240) = &unk_1F4CEEEF8;
    *(v9 + 328) = v37;
    *(v9 + 248) = v32;
    v24 = v34;
    v25 = v36;
    *(v9 + 296) = v35;
    *(v9 + 312) = v25;
    *(v9 + 264) = v33;
    *(v9 + 280) = v24;
    *(v9 + 336) = v19;
    *(v9 + 344) = v28;
    *(v9 + 352) = 1;
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0DC94A8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1D0DC957C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(&v10, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 792) == 1)
  {
    return memcpy((v8 + 368), v11, 0x1A1uLL);
  }

  *(v8 + 360) = &unk_1F4CEF508;
  result = memcpy((v8 + 368), v11, 0x1A1uLL);
  *(v8 + 792) = 1;
  return result;
}

uint64_t sub_1D0DC9614(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DC9660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v25.__vftable) = 3;
    LOBYTE(v23) = 5;
    cnprint::CNPrinter::Print(&v25, &v23, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v21);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEEA18 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEEA18 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v25.__vftable = 0;
      std::bad_cast::bad_cast(&v25);
      v25.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a2 + 16);
    *a1 = &unk_1F4CEF508;

    memcpy((a1 + 8), (v20 + 16), 0x1A1uLL);
  }

  else
  {
    v23 = 3;
    v22 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v25.__vftable) = 3;
      v24 = 5;
      cnprint::CNPrinter::Print(&v25, &v24, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v21);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v23, &v22, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 424) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF508;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 105) = 0;
    *(a1 + 208) = 0;
    *(a1 + 312) = 0;
    *(a1 + 416) = 0;
  }
}

uint64_t sub_1D0DC995C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DC99A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1D0DC99F4(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0DC99F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0DC9AD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v10, a3, a3, a4, a5, a6, a7, a8);
  if (!v10[26])
  {
    (*(*v8 + 40))(v8, v9);
  }
}

uint64_t sub_1D0DC9B38(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DC9C0C(uint64_t a1, raven::RavenActivityStateEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9C98(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenActivityStateEstimatorActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

uint64_t sub_1D0DC9C4C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DC9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v32.__vftable) = 3;
    LOBYTE(v30) = 5;
    cnprint::CNPrinter::Print(&v32, &v30, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v28);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEC10 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEC10 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v32.__vftable = 0;
        std::bad_cast::bad_cast(&v32);
        v32.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEBE8;
    v22 = *(v21 + 32);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v22;
    v23 = *(v21 + 80);
    v24 = *(v21 + 96);
    v25 = *(v21 + 64);
    *(a1 + 40) = *(v21 + 48);
    *(a1 + 88) = v24;
    *(a1 + 72) = v23;
    *(a1 + 56) = v25;
    v26 = *(v21 + 128);
    result = *(v21 + 144);
    v27 = *(v21 + 160);
    *(a1 + 104) = *(v21 + 112);
    *(a1 + 152) = v27;
    *(a1 + 136) = result;
    *(a1 + 120) = v26;
  }

  else
  {
    v30 = 3;
    v29 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v32.__vftable) = 3;
      v31 = 5;
      cnprint::CNPrinter::Print(&v32, &v31, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v28);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v30, &v29, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEBE8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 112) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 128) = 0x7FF8000000000000;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0x7FF8000000000000;
    result.n128_u64[0] = 0xFFFFFFFFLL;
    *(a1 + 152) = 0xFFFFFFFFLL;
  }

  return result;
}