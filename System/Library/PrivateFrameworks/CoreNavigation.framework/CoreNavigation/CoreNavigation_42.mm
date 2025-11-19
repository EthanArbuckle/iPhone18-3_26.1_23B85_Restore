void sub_1D0E198B0(uint64_t a1)
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
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
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
              v8 = &v14[v10];
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

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E199E8(uint64_t a1)
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
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
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
              v8 = &v14[v10];
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

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E19AE4(void *a1)
{
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E19C2C(uint64_t a1, char *a2)
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
          sub_1D0BE520C(v14, *(a1 + 32) + 48 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BE520C(v13, *(a1 + 32) + 48 * v12);
              sub_1D0B894B0(*(a1 + 32) + 48 * v12, v14);
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

void sub_1D0E19D78(uint64_t a1)
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

void sub_1D0E19EAC(uint64_t a1)
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

void sub_1D0E19FD4(uint64_t a1)
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
        v7 = 1;
        do
        {
          v13 = *(*(a1 + 32) + 16 * v7);
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = v7;
            do
            {
              v9 = (v9 * (v3 + v1 - v5)) % v6;
              v10 = *(a1 + 32);
              v11 = *(v10 + 16 * v9);
              *(v10 + 16 * v9) = v13;
              *v8 = 1;
              v13 = v11;
              v8 = &v14[v9];
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0E1A0D8(uint64_t a1)
{
  *a1 = &unk_1F4CED088;
  *(a1 + 3352) = &unk_1F4CD5E28;
  *(a1 + 3232) = &unk_1F4CD5E28;
  *(a1 + 2392) = &unk_1F4CD5E28;
  return sub_1D0E1A158(a1);
}

uint64_t sub_1D0E1A158(uint64_t a1)
{
  *a1 = &unk_1F4CED0F0;
  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  if (*(a1 + 2367) < 0)
  {
    operator delete(*(a1 + 2344));
  }

  v3 = (a1 + 2320);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 2296);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 2272);
  sub_1D0BA5F70(&v3);
  *(a1 + 2048) = &unk_1F4CD5E28;
  *(a1 + 1208) = &unk_1F4CD5E28;
  *(a1 + 1088) = &unk_1F4CD5E28;
  *(a1 + 968) = &unk_1F4CD5E28;
  *(a1 + 128) = &unk_1F4CD5E28;
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1A2B0(void *a1)
{
  *a1 = &unk_1F4CED088;
  a1[419] = &unk_1F4CD5E28;
  a1[404] = &unk_1F4CD5E28;
  a1[299] = &unk_1F4CD5E28;
  sub_1D0E1A158(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E1A364@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000ALL;
  *a2 = &unk_1F4CEAE48;
  *(a2 + 8) = xmmword_1D0E87BE0;
  *(a2 + 32) = a2 + 40;
  v2 = 2048;
  if (!*(a1 + 2180))
  {
    v2 = 968;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0E1A3C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0xA0000000ALL;
  *a2 = &unk_1F4CE2180;
  *(a2 + 8) = xmmword_1D0E84630;
  *(a2 + 32) = a2 + 40;
  v2 = 1208;
  if (!*(a1 + 2180))
  {
    v2 = 128;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0E1A41C(uint64_t a1)
{
  sub_1D0E1A158(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1A454(uint64_t a1)
{
  *(a1 + 448) = &unk_1F4CDFE98;
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  *(a1 + 448) = &unk_1F4CD5F70;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E1A4D4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1A5A0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

__n128 sub_1D0E1A64C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE030;
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = &unk_1F4CD5A50;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  result = *(a2 + 176);
  *(a1 + 176) = result;
  *(a1 + 192) = *(a2 + 192);
  return result;
}

void *sub_1D0E1A6EC(void *a1)
{
  v2 = 0;
  a1[3] = 0x10000002CLL;
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CECD78;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  do
  {
    v4 = &a1[v2];
    v4[8] = 0x100000001;
    v4[5] = &unk_1F4CDF418;
    *(v4 + 3) = v3;
    v4[9] = &a1[v2 + 10];
    v2 += 6;
  }

  while (v2 != 264);
  *(a1 + 1) = xmmword_1D0EA1270;
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_1D0E1A7C4(_Unwind_Exception *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    v1[i] = &unk_1F4CD5E28;
  }

  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

void sub_1D0E1A870(uint64_t a1)
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

__n128 sub_1D0E1A968(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0xA0000000ALL;
  *(a1 + 24) = 0xA0000000ALL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE2180;
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
  if (v4 > 0xA)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0xB)
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

uint64_t sub_1D0E1AAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void sub_1D0E1ABB0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0E1AC3C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0E1AC90(void *a1)
{
  sub_1D0E1AE7C(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E1AE7C(void *a1)
{
  *a1 = &unk_1F4CED278;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1AF34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E1B028(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E1B114(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void *sub_1D0E1B1EC(void *result)
{
  result[16] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1B22C(void *result)
{
  result[116] = &unk_1F4CDEAF8;
  result[106] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E1B28C(uint64_t a1, uint64_t a2, double *a3)
{
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 8) = xmmword_1D0E84630;
  *(a1 + 32) = a1 + 40;
  v15 = 0x10000000ALL;
  v14 = xmmword_1D0E87BE0;
  v13 = &unk_1F4CED1E8;
  v16 = &v17;
  v10 = 0x10000000ALL;
  v9 = xmmword_1D0E87BE0;
  v8 = &unk_1F4CED1E8;
  v11 = &v12;
  v5 = 0x100000028;
  v3 = &unk_1F4CED230;
  v4 = xmmword_1D0EA1280;
  v6 = &v7;
  *a3 = sub_1D0BA5174(a2, &v13, &v8, &v3, a1);
}

void *sub_1D0E1B3E8(void *result)
{
  result[7] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1B428(void *result)
{
  result[22] = &unk_1F4CDEAF8;
  result[16] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0E1B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0x100000040;
  v10 = &unk_1F4CED610;
  v11 = xmmword_1D0EA1300;
  v13 = &v14;
  v7 = 0x1400000014;
  v5 = &unk_1F4CEDA40;
  v6 = xmmword_1D0EA12B0;
  v8 = &v9;
  return sub_1D0BA5B14(a1, a2, &v10, &v5, a3, a4);
}

uint64_t sub_1D0E1B560(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE00;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0E1B5EC(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x2C00000001;
  *result = &unk_1F4CED658;
  *(result + 32) = result + 40;
  v3 = (a3 - a2);
  if (a3 == a2)
  {
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    *(result + 8) = v4;
    *(result + 40) = a2;
  }

  else if (a3 - a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  else
  {
    *(result + 8) = 1;
    *(result + 12) = v3 + 1;
    *(result + 16) = v3 + 1;
    *(result + 20) = 1;
    v5 = vdupq_n_s64(v3);
    v6 = (result + 52);
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
        *(v6 - 3) = a2 + v10 - 13;
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v6 - 2) = a2 + v10 - 12;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))).i32[1])
      {
        *(v6 - 1) = a2 + v10 - 11;
        *v6 = a2 + v10 - 10;
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

void *sub_1D0E1B738(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0E1B778(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *a1 = &unk_1F4CED730;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 24) = 0x2C0000000ALL;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t sub_1D0E1B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x2C0000000ALL;
  *a1 = &unk_1F4CED730;
  *(a1 + 8) = xmmword_1D0EA1310;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0E1B8AC()
{
  v3 = 0x100000036;
  v1 = &unk_1F4CED778;
  v2 = xmmword_1D0EA1320;
  v4 = &v5;
  sub_1D0E1D28C(v0);
}

void sub_1D0E1B98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0E1DDB8(v2);
  sub_1D0E1D72C(va);
  _Unwind_Resume(a1);
}

double sub_1D0E1BBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE48;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0E1BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE48;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0E1BCF4(uint64_t a1, uint64_t a2)
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
    if ((a1 + 2320) != &v15)
    {
      sub_1D0DA3374((a1 + 2320), v15, v16, (v16 - v15) >> 5);
    }
  }

  else
  {
    v8 = 1;
    while (1)
    {
      v9 = *(*(a2 + 32) + 4 * (v8 - 1));
      v10 = *(a1 + 2320);
      if (v9 >= (*(a1 + 2328) - v10) >> 5)
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

void sub_1D0E1BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1D0BA5F70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E1BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000040;
  *a1 = &unk_1F4CED850;
  *(a1 + 8) = xmmword_1D0EA1300;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0E1BE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000014;
  *a1 = &unk_1F4CED898;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0E1BECC(uint64_t result, unsigned int a2)
{
  *(result + 24) = 0x1400000001;
  *result = &unk_1F4CED8E0;
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

uint64_t sub_1D0E1BFD4(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = 0x10000002CLL;
  *result = &unk_1F4CECE00;
  v3 = (result + 40);
  *(result + 32) = result + 40;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 8) = v5;
  *(result + 12) = v4;
  v6 = (v4 * v5);
  *(result + 16) = v6;
  *(result + 20) = v5;
  if (v6 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      *v3++ = v8 + a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1D0E1C078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  sub_1D0E1DB44(v11, *(a2 + 12));
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1D0E84440;
    v7 = xmmword_1D0E7DD30;
    v8 = (v12 + 8);
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

  sub_1D0BEDF5C(a1);
}

void sub_1D0E1C2D8(_Unwind_Exception *a1)
{
  v1[44] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0BEFE04(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0E1C324(void *a1)
{
  *a1 = &unk_1F4CED928;
  a1[44] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0BEFE04(a1);
}

void *sub_1D0E1C384(void *result)
{
  result[70] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1C3E8(void *a1)
{
  *a1 = &unk_1F4CED9B8;
  sub_1D0E1DE34(a1 + 5);
  *a1 = &unk_1F4CEDA10;
  return a1;
}

void *sub_1D0E1C468(void *result)
{
  result[421] = &unk_1F4CDEAF8;
  result[406] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1C4C8(void *result)
{
  result[26] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E1C588(uint64_t a1)
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

void sub_1D0E1C680(void *a1)
{
  a1[16] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C6D0(void *a1)
{
  a1[116] = &unk_1F4CDEAF8;
  a1[106] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C77C(uint64_t a1)
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

void sub_1D0E1C87C(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C8CC(void *a1)
{
  a1[22] = &unk_1F4CDEAF8;
  a1[16] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C93C(void *a1)
{
  sub_1D0BEFE04(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1CAE4(uint64_t a1)
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

void sub_1D0E1CC18(uint64_t a1)
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

void sub_1D0E1CD10(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1CD60(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x2C00000036;
  *a1 = &unk_1F4CED6E8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0E1CF7C();
}

void sub_1D0E1CDC8(_Unwind_Exception *exception_object)
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

void sub_1D0E1CE10(void *a1)
{
  sub_1D0E1DDB8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1D038(uint64_t a1)
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

void sub_1D0E1D194(uint64_t a1)
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

void sub_1D0E1D28C(uint64_t a1)
{
  *(a1 + 24) = 0x2C0000002CLL;
  *a1 = &unk_1F4CED7C0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EA1360;
  sub_1D0E1D4A4();
}

void sub_1D0E1D2F0(_Unwind_Exception *exception_object)
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

void sub_1D0E1D338(void *a1)
{
  sub_1D0E1D72C(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1D580(uint64_t a1)
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

void sub_1D0E1D680(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x2C0000002CLL;
  *a1 = &unk_1F4CED7C0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0E1D4A4();
}

void sub_1D0E1D6E4(_Unwind_Exception *exception_object)
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

void *sub_1D0E1D72C(void *a1)
{
  *a1 = &unk_1F4CED7C0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1D7E4(uint64_t a1)
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

void sub_1D0E1D918(uint64_t a1)
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

void sub_1D0E1DA4C(uint64_t a1)
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

uint64_t sub_1D0E1DB44(uint64_t result, int a2)
{
  *(result + 24) = 0x100000014;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CED898;
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

void sub_1D0E1DBF4(void *a1)
{
  *a1 = &unk_1F4CED928;
  a1[44] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0BEFE04(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000040;
  *(a1 + 8) = xmmword_1D0EA1300;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED970;
  *(a1 + 552) = a2;
  *(a1 + 584) = 0x100000040;
  *(a1 + 560) = &unk_1F4CED850;
  *(a1 + 568) = xmmword_1D0EA1300;
  *(a1 + 592) = a1 + 600;
  sub_1D0B9F5D4(a1 + 560, a3);
  v5 = *(a1 + 568);
  v6 = *(a1 + 572);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 592);
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

void sub_1D0E1DD68(void *a1)
{
  a1[70] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E1DDB8(void *a1)
{
  *a1 = &unk_1F4CED6E8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t *sub_1D0E1DE34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 392 * v4;
      v6 = v2 - 392;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 392;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C8090635726);
  }

  return a1;
}

void sub_1D0E1DEB8(void *a1)
{
  *a1 = &unk_1F4CED9B8;
  sub_1D0E1DE34(a1 + 5);
  *a1 = &unk_1F4CEDA10;

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0E1E1F8(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000002CLL;
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECE48;
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
  if (v4 > 0x2C)
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

void sub_1D0E1E37C(uint64_t a1)
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

void sub_1D0E1E47C(void *a1)
{
  a1[421] = &unk_1F4CDEAF8;
  a1[406] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E4EC(void *a1)
{
  a1[26] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E548(uint64_t a1)
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

double sub_1D0E1E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x10000000ALL;
  *(a1 + 24) = 0x10000000ALL;
  *a1 = &unk_1F4CEAE48;
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

void *sub_1D0E1E6F0(void *result)
{
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CEDC40;
  return result;
}

void *sub_1D0E1E730(void *result)
{
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CEDBB8;
  return result;
}

void sub_1D0E1E770(void *a1)
{
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CEDBB8;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E7CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v11, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = v4 - 1;
        v8 = v11;
        v9 = 120;
        v10 = v6;
        do
        {
          sub_1D0B94CA4(v13, *(a1 + 32) + v9);
          if (!v8)
          {
            sub_1D0B94CA4(v12, *(a1 + 32) + 120 * (v10 % v7));
            sub_1D0B894B0(*(a1 + 32) + 120 * (v10 % v7), v13);
            sub_1D0B894B0(v13, v12);
            v8 = 1;
          }

          v10 += v6;
          v9 += 120;
        }

        while (120 * v7 != v9);
      }
    }
  }
}

uint64_t sub_1D0E1E8C8(uint64_t result, int a2)
{
  *(result + 24) = 0x100000001;
  *(result + 8) = 0u;
  *result = &unk_1F4CEDBE8;
  *(result + 64) = 0xA0000000ALL;
  *(result + 32) = 0;
  *(result + 40) = &unk_1F4CE2180;
  *(result + 48) = xmmword_1D0E84630;
  *(result + 72) = result + 80;
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

void sub_1D0E1E990(_Unwind_Exception *a1)
{
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CEDC40;
  _Unwind_Resume(a1);
}

void sub_1D0E1E9D0(void *a1)
{
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CEDC40;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1EA2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v11, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = v4 - 1;
        v8 = v11;
        v9 = 840;
        v10 = v6;
        do
        {
          sub_1D0E1A968(v13, *(a1 + 32) + v9);
          if (!v8)
          {
            sub_1D0E1A968(v12, *(a1 + 32) + 840 * (v10 % v7));
            sub_1D0B894B0(*(a1 + 32) + 840 * (v10 % v7), v13);
            sub_1D0B894B0(v13, v12);
            v8 = 1;
          }

          v10 += v6;
          v9 += 840;
        }

        while (840 * v7 != v9);
      }
    }
  }
}

void sub_1D0E1EB64(uint64_t a1)
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

void sub_1D0E1ECC0(uint64_t a1)
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

void *sub_1D0E1EDB8(void *result)
{
  result[182] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3870;
  return result;
}

void *sub_1D0E1EDF8(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void *sub_1D0E1EE38(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1EE78(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;
  return a1;
}

void *sub_1D0E1EEF8(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CECD48;
  return result;
}

void *sub_1D0E1EF38(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3720;
  return result;
}

void sub_1D0E1EF78(void *a1)
{
  a1[182] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3870;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1EFC8(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F018(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F068(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F108(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECD48;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F158(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3720;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F1E4(uint64_t a1)
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

void sub_1D0E1F320(uint64_t a1)
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

void *sub_1D0E1F420(void *result, unsigned __int8 a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = a2;
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v2 <= a2)
      {
        v5 = a2 % result[1];
      }
    }

    else
    {
      v5 = (v2 - 1) & a2;
    }

    v6 = *(*result + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = *(i + 8);
        if (v8 == v3)
        {
          if (*(i + 16) == v3)
          {
            return sub_1D0E1F4D4(result, i);
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }
          }

          else
          {
            v8 &= v2 - 1;
          }

          if (v8 != v5)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0E1F4D4(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void raven::AccelerometerMeasurement::~AccelerometerMeasurement(raven::AccelerometerMeasurement *this)
{
  *this = &unk_1F4CE3C98;
}

{
  *this = &unk_1F4CE3C98;
}

{
  *this = &unk_1F4CE3C98;
  JUMPOUT(0x1D387ECA0);
}

void raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(raven::AccessoryVehicleSpeedEvent *this)
{
  *this = &unk_1F4CEDF40;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }
}

{
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::AttitudeChangeEvent::~AttitudeChangeEvent(raven::AttitudeChangeEvent *this)
{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::GEOMapBuildingDataEvent::~GEOMapBuildingDataEvent(raven::GEOMapBuildingDataEvent *this)
{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);
}

{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);
}

{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);

  JUMPOUT(0x1D387ECA0);
}

void raven::GnssPreprocessedMeasurementsEvent::~GnssPreprocessedMeasurementsEvent(raven::GnssPreprocessedMeasurementsEvent *this)
{
  *this = &unk_1F4CEF598;
  v1 = (this + 96);
  sub_1D0BBBD80(&v1);
}

{
  *this = &unk_1F4CEF598;
  v1 = (this + 96);
  sub_1D0BBBD80(&v1);
}

{
  *this = &unk_1F4CEF598;
  v2 = (this + 96);
  sub_1D0BBBD80(&v2);
  MEMORY[0x1D387ECA0](this, 0x10A1C40DFD4140ELL);
}

void raven::HorizontalDOTInIMUFrameEvent::~HorizontalDOTInIMUFrameEvent(raven::HorizontalDOTInIMUFrameEvent *this)
{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::KlobucharParametersEvent::~KlobucharParametersEvent(raven::KlobucharParametersEvent *this)
{
  *this = &unk_1F4CEE030;
}

{
  *this = &unk_1F4CEE030;
}

{
  *this = &unk_1F4CEE030;
  JUMPOUT(0x1D387ECA0);
}

void raven::MapsRouteHintEvent::~MapsRouteHintEvent(raven::MapsRouteHintEvent *this)
{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::PositionChangeEvent::~PositionChangeEvent(raven::PositionChangeEvent *this)
{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::RateGyroMeasurement::~RateGyroMeasurement(raven::RateGyroMeasurement *this)
{
  *this = &unk_1F4CE36E0;
}

{
  *this = &unk_1F4CE36E0;
}

{
  *this = &unk_1F4CE36E0;
  JUMPOUT(0x1D387ECA0);
}

void raven::RavenGnssAssistanceFileEvent::~RavenGnssAssistanceFileEvent(raven::RavenGnssAssistanceFileEvent *this)
{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::RayTracingTileEvent::~RayTracingTileEvent(void **this)
{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }
}

{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }
}

{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::VIOEstimateEvent::~VIOEstimateEvent(raven::VIOEstimateEvent *this)
{
  *this = &unk_1F4CEE120;
  *(this + 133) = &unk_1F4CD5E28;
  *(this + 119) = &unk_1F4CD5E28;
  *(this + 105) = &unk_1F4CD5E28;
  *(this + 97) = &unk_1F4CD5E28;
  *(this + 78) = &unk_1F4CD5E28;
  *(this + 64) = &unk_1F4CD5E28;
  *(this + 50) = &unk_1F4CD5E28;
  *(this + 42) = &unk_1F4CD5E28;
}

{
  raven::VIOEstimateEvent::~VIOEstimateEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::VLLocalizationEvent::~VLLocalizationEvent(raven::VLLocalizationEvent *this)
{
  *this = &unk_1F4CEE150;
  *(this + 120) = &unk_1F4CD5E28;
  *(this + 106) = &unk_1F4CD5E28;
  *(this + 92) = &unk_1F4CD5E28;
  *(this + 84) = &unk_1F4CD5E28;
  *(this + 65) = &unk_1F4CD5E28;
  *(this + 51) = &unk_1F4CD5E28;
  *(this + 37) = &unk_1F4CD5E28;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  raven::VLLocalizationEvent::~VLLocalizationEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject(raven::RavenAccelerationDecompositionActiveObject *this)
{
  *this = &unk_1F4CEE180;
  sub_1D0D3546C(this + 2228);
  *(this + 2149) = &unk_1F4CE4530;
  *(this + 2209) = &unk_1F4CD5E28;
  *(this + 2188) = &unk_1F4CD5E28;
  *(this + 2179) = &unk_1F4CD5E28;
  *(this + 2166) = &unk_1F4CD5E28;
  *(this + 2157) = &unk_1F4CD5E28;
  v2 = this + 17040;
  v3 = 16800;
  do
  {
    *(this + v3 + 240) = &unk_1F4CE36E0;
    v2 -= 48;
    v3 -= 48;
  }

  while (v3);
  *(this + 30) = &unk_1F4CE3698;

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject(raven::RavenConvergenceEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE1E0;
  v2 = this + 2968;
  *(this + 371) = &unk_1F4CEC098;
  sub_1D0DC5674(this + 1441);
  *(this + 1432) = &unk_1F4CE3930;
  sub_1D0D83110(this + 8896);
  *(this + 729) = &unk_1F4CEAAF8;
  *(this + 1030) = &unk_1F4CD5E28;
  *(this + 1017) = &unk_1F4CD5E28;
  *(this + 948) = &unk_1F4CD5E28;
  sub_1D0BC27EC(this + 5832);
  sub_1D0D4FA90(v2);
  *this = &unk_1F4CEABA0;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenDeltaAltitudeActiveObject::~RavenDeltaAltitudeActiveObject(raven::RavenDeltaAltitudeActiveObject *this)
{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenGnssPreprocessorActiveObject::~RavenGnssPreprocessorActiveObject(raven::RavenGnssPreprocessorActiveObject *this)
{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject(raven::RavenIMUPreprocessorActiveObject *this)
{
  *this = &unk_1F4CEE318;
  sub_1D0D3546C(this + 54);
  sub_1D0C56D94(this + 48);
  sub_1D0D3546C(this + 39);
  sub_1D0C56D94(this + 33);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenIntegrityEstimatorActiveObject::~RavenIntegrityEstimatorActiveObject(raven::RavenIntegrityEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenMountStateEstimatorActiveObject::~RavenMountStateEstimatorActiveObject(raven::RavenMountStateEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject(raven::RavenPassThroughEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE438;
  *(this + 36) = &unk_1F4CEB1D8;
  sub_1D0D4FA90(this + 288);
  *this = &unk_1F4CEAC18;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(raven::RavenPeriodicityTrackerActiveObject *this)
{
  *this = &unk_1F4CEF468;
  sub_1D0C56E40(this + 48);
  sub_1D0C56D94(this + 42);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(void **this)
{
  *this = &unk_1F4CEE4B0;
  sub_1D0D84A3C((this + 36));
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

{
  raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject(raven::RavenSolutionPostprocessorActiveObject *this)
{
  *this = &unk_1F4CEE528;
  if (*(this + 1600) == 1)
  {
    *(this + 1600) = 0;
  }

  sub_1D0D4D068(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject(raven::RavenSolutionSelectorActiveObject *this)
{
  *this = &unk_1F4CEE588;
  if (*(this + 736) == 1)
  {
    *(this + 736) = 0;
  }

  sub_1D0BCB594(this + 672);
  if (*(this + 432) == 1)
  {
    *(this + 432) = 0;
  }

  sub_1D0BCB594(this + 360);
  sub_1D0BCB594(this + 320);
  sub_1D0BCB594(this + 280);
  sub_1D0BCB594(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenTimerActiveObject::~RavenTimerActiveObject(raven::RavenTimerActiveObject *this)
{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenUserSpeedActiveObject::~RavenUserSpeedActiveObject(raven::RavenUserSpeedActiveObject *this)
{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenRayTracingActiveObject::~RavenRayTracingActiveObject(raven::RavenRayTracingActiveObject *this)
{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E21724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = (*(*a3 + 16))(a3);
  v24[1] = v8;
  v23[0] = (*(*a4 + 16))(a4);
  v23[1] = v9;
  v12 = CNTimeSpan::operator-(a2, v24, v10, v11);
  *v14.i64 = v13;
  *v15.i64 = v12;
  v16 = v13 + v12;
  v17 = CNTimeSpan::operator-(v23, v24, v14, v15);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = v16 / v19;
  if (v20 < 2.22044605e-16)
  {
    v21 = 0.0;
  }

  *(a1 + 8) = *a2;
  *(a1 + 24) = vmlaq_n_f64(*(a3 + 24), vsubq_f64(*(a4 + 24), *(a3 + 24)), v21);
  *(a1 + 40) = *(a3 + 40) + (*(a4 + 40) - *(a3 + 40)) * v21;
  return 0;
}

void sub_1D0E21850(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    *(this + 62) = 0;
    *(this + 34) = 0;
    *(this + 35) = 0;
    *(this + 17089) = 0;
    v2 = *(this + 2229);
    v3 = *(this + 2230);
    if (v3 == v2)
    {
      v6 = (this + 17864);
      v3 = *(this + 2229);
    }

    else
    {
      v4 = *(this + 2232);
      v5 = &v2[v4 / 0x1A];
      v6 = (this + 17864);
      v7 = v2[(*(this + 2233) + v4) / 0x1A] + 152 * ((*(this + 2233) + v4) % 0x1A);
      if (*v5 + 152 * (v4 % 0x1A) != v7)
      {
        v8 = (*v5 + 152 * (v4 % 0x1A));
        do
        {
          v9 = *v8;
          v8 += 19;
          (*v9)();
          if (v8 - *v5 == 3952)
          {
            v10 = v5[1];
            ++v5;
            v8 = v10;
          }
        }

        while (v8 != v7);
        v3 = *(this + 2230);
        v2 = *(this + 2229);
      }
    }

    *v6 = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v2 = (*(this + 2229) + 8);
        *(this + 2229) = v2;
        v11 = (*(this + 2230) - v2) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v12 = 13;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_17;
      }

      v12 = 26;
    }

    *(this + 2232) = v12;
  }

LABEL_17:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21A04(cnframework::ActiveObjectBase *this)
{
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21A4C(cnframework::ActiveObjectBase *a1)
{
  if ((*(*a1 + 88))(a1))
  {
    v10 = 12;
    v9 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      LOBYTE(v8) = v2;
    }

    else
    {
      v8 = *(a1 + 30);
    }

    cnprint::CNPrinter::Print(&v10, &v9, "%s", v3, v4, v5, v6, v7, v8);
    raven::RavenConvergenceEstimator::Reset((a1 + 2968));
  }

  *(a1 + 288) = 0;
  *(a1 + 37) = 0;
  *(a1 + 38) = 0xFFF0000000000000;
  sub_1D0BAD0C8(&v10);
  memcpy(a1 + 320, v11, 0xA51uLL);
  *(a1 + 128) = 0;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0x7FF8000000000000;
  *(a1 + 19) = 0;
  *(a1 + 105) = 0;
  *(a1 + 14) = 0;
  *(a1 + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E21B3C(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 264), a2);
  std::string::operator=((a1 + 5704), a2);

  return std::string::operator=((a1 + 7560), a2);
}

void sub_1D0E21BA4(int64x2_t *this)
{
  this[15].i64[0] = 0;
  this[15].i64[1] = 0;
  this[16] = vdupq_n_s64(0x7FF8000000000000uLL);
  this[17].i8[0] = 0;
  v2 = this[18].i64[0];
  v3 = this[18].i64[1];
  if (v3 == v2)
  {
    v6 = this + 20;
    v3 = this[18].i64[0];
  }

  else
  {
    v4 = this[19].u64[1];
    v5 = &v2[v4 / 0x1C];
    v6 = this + 20;
    v7 = v2[(this[20].i64[0] + v4) / 0x1C] + 144 * ((this[20].i64[0] + v4) % 0x1C);
    if (*v5 + 144 * (v4 % 0x1C) != v7)
    {
      v8 = (*v5 + 144 * (v4 % 0x1C));
      do
      {
        v9 = *v8;
        v8 += 18;
        (*v9)();
        if (v8 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = this[18].i64[0];
      v3 = this[18].i64[1];
    }
  }

  v6->i64[0] = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = this[18].i64[1];
      v2 = (this[18].i64[0] + 8);
      this[18].i64[0] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 14;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 28;
  }

  this[19].i64[1] = v13;
LABEL_16:
  this[8].i8[0] = 0;
  this[8].i64[1] = 0;
  this[9].i64[0] = 0x7FF8000000000000;
  this[9].i64[1] = 0;
  this[6].i8[9] = 0;
  this[7].i64[0] = 0;
  this[7].i64[1] = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  raven::GnssMeasurementPreprocessor::Reset((a1 + 232), a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E21DDC(uint64_t a1)
{
  raven::RavenIntegrityEstimator::Reset(a1 + 240);
  if (*(a1 + 2408) == 1)
  {
    *(a1 + 2408) = 0;
  }

  if (*(a1 + 2848) == 1)
  {
    *(a1 + 2848) = 0;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E21F40(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 31);
    v3 = *(this + 32);
    if (v3 == v2)
    {
      v6 = (this + 280);
      v3 = *(this + 31);
    }

    else
    {
      v4 = *(this + 34);
      v5 = &v2[v4 / 0x14];
      v6 = (this + 280);
      v7 = v2[(*(this + 35) + v4) / 0x14] + 200 * ((*(this + 35) + v4) % 0x14);
      if (*v5 + 200 * (v4 % 0x14) != v7)
      {
        v8 = (*v5 + 200 * (v4 % 0x14));
        do
        {
          v9 = *v8;
          v8 += 25;
          (*v9)();
          if (v8 - *v5 == 4000)
          {
            v10 = v5[1];
            ++v5;
            v8 = v10;
          }
        }

        while (v8 != v7);
        v2 = *(this + 31);
        v3 = *(this + 32);
      }
    }

    *v6 = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = *(this + 32);
        v2 = (*(this + 31) + 8);
        *(this + 31) = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v13 = 10;
    }

    else
    {
      if (v11 != 2)
      {
LABEL_17:
        *(this + 21) = 0u;
        *(this + 22) = 0u;
        *(this + 19) = 0u;
        *(this + 20) = 0u;
        *(this + 18) = 0u;
        *(this + 46) = 0;
        *(this + 47) = 0x7FF8000000000000;
        *(this + 48) = 0;
        *(this + 49) = 0x7FF8000000000000;
        v14 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(this + 25) = v14;
        *(this + 26) = v14;
        *(this + 27) = v14;
        *(this + 28) = v14;
        *(this + 58) = 0;
        *(this + 59) = 0x7FF8000000000000;
        *(this + 30) = v14;
        *(this + 31) = v14;
        *(this + 32) = v14;
        *(this + 33) = v14;
        *(this + 34) = v14;
        *(this + 35) = v14;
        *(this + 72) = 0x7FF8000000000000;
        *(this + 73) = 0;
        *(this + 37) = v14;
        *(this + 38) = v14;
        *(this + 39) = v14;
        *(this + 40) = v14;
        *(this + 82) = 0x7FF8000000000000;
        *(this + 83) = 0;
        *(this + 42) = v14;
        *(this + 43) = v14;
        *(this + 44) = v14;
        *(this + 45) = v14;
        *(this + 92) = 0x7FF8000000000000;
        *(this + 93) = 0;
        *(this + 47) = v14;
        *(this + 48) = v14;
        *(this + 49) = v14;
        *(this + 50) = v14;
        *(this + 51) = v14;
        *(this + 52) = v14;
        *(this + 53) = v14;
        *(this + 108) = 0;
        *(this + 109) = 0x7FF8000000000000;
        *(this + 55) = v14;
        *(this + 56) = v14;
        *(this + 57) = v14;
        *(this + 58) = v14;
        *(this + 118) = 0;
        *(this + 119) = 0x7FF8000000000000;
        *(this + 60) = v14;
        *(this + 61) = v14;
        *(this + 62) = v14;
        *(this + 63) = v14;
        *(this + 128) = 0;
        *(this + 129) = 0x7FF8000000000000;
        *(this + 65) = v14;
        *(this + 66) = v14;
        *(this + 67) = v14;
        *(this + 68) = v14;
        *(this + 138) = 0;
        *(this + 139) = 0x7FF8000000000000;
        *(this + 70) = v14;
        *(this + 71) = v14;
        *(this + 144) = 0;
        *(this + 145) = 0xFFF0000000000000;
        *(&v15 + 1) = 0x7FF8000000000000;
        *&v16 = 0;
        *&v15 = 0;
        *(&v16 + 1) = 0x3FF0000000000000;
        *(this + 1208) = 0uLL;
        *(this + 1224) = 0uLL;
        *(this + 1176) = 0uLL;
        *(this + 1192) = 0uLL;
        *(this + 163) = 0;
        *(this + 1272) = v16;
        *(this + 1288) = 0uLL;
        *(this + 1240) = 0uLL;
        *(this + 1256) = v15;
        goto LABEL_18;
      }

      v13 = 20;
    }

    *(this + 34) = v13;
    goto LABEL_17;
  }

LABEL_18:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E2221C(cnframework::ActiveObjectBase *a1)
{
  if ((*(*a1 + 88))(a1))
  {
    v10 = 12;
    v9 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      LOBYTE(v8) = v2;
    }

    else
    {
      v8 = *(a1 + 30);
    }

    cnprint::CNPrinter::Print(&v10, &v9, "%s", v3, v4, v5, v6, v7, v8);
    raven::RavenPassThroughEstimator::Reset((a1 + 288));
  }

  *(a1 + 128) = 0;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0x7FF8000000000000;
  *(a1 + 19) = 0;
  *(a1 + 105) = 0;
  *(a1 + 14) = 0;
  *(a1 + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E222E8(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 11, a2);

  return std::string::operator=(a1 + 126, a2);
}

void sub_1D0E22358(uint64_t a1)
{
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v11 = 12;
    v10 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      LOBYTE(v7) = __p[0];
    }

    cnprint::CNPrinter::Print(&v11, &v10, "Resetting %s", v2, v3, v4, v5, v6, v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E22424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E22444(uint64_t result, __int128 *a2)
{
  if (*(result + 240) == 1)
  {
    LODWORD(v2) = vcvtpd_u64_f64(*(result + 256) / *(result + 248));
    if (v2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    if (*(result + 376) >= v2 && *(result + 313) == 1 && *(result + 312) == 1)
    {
      v6 = a2[2];
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      v4 = *a2;
      v5 = a2[1];
      v3 = *(result + 232);
      v10 = 1.0 / *(v3 + 648);
      v11 = *(result + 320);
      v12 = *(v3 + 424);
      sub_1D0DEBC48();
    }
  }

  return result;
}

void sub_1D0E22528(cnframework::ActiveObjectBase *a1)
{
  if ((*(*a1 + 88))(a1))
  {
    v10 = 12;
    v9 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      LOBYTE(v8) = v2;
    }

    else
    {
      v8 = *(a1 + 30);
    }

    cnprint::CNPrinter::Print(&v10, &v9, "%s", v3, v4, v5, v6, v7, v8);
    raven::RavenPNTEstimator::Reset((a1 + 288));
  }

  *(a1 + 128) = 0;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0x7FF8000000000000;
  *(a1 + 19) = 0;
  *(a1 + 105) = 0;
  *(a1 + 14) = 0;
  *(a1 + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E225F4(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 264), a2);
  std::string::operator=((a1 + 3024), a2);

  return std::string::operator=((a1 + 16840), a2);
}

void sub_1D0E22658(uint64_t a1)
{
  v2 = *(a1 + 112);
  raven::RavenSolutionPostprocessor::Reset(a1 + 224, &v2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E226D0(uint64_t a1)
{
  raven::RavenSolutionSelector::Reset((a1 + 224));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E22734(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

uint64_t sub_1D0E2290C(uint64_t a1)
{
  if (*(a1 + 2600) == 1)
  {
    sub_1D0BCB594(a1 + 2560);
  }

  v2 = *(a1 + 2544);
  *(a1 + 2544) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 2344) = &unk_1F4CD58A8;
  v3 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v3)
  {
    sub_1D0BCB594(v3 + 24);
    sub_1D0BCB540(v3, *(v3 + 8));
    MEMORY[0x1D387ECA0](v3, 0x10E0C40B21B6DE5);
  }

  v4 = *(a1 + 1312);
  *(a1 + 1312) = 0;
  if (v4)
  {
    v5 = sub_1D0BCB594(v4);
    MEMORY[0x1D387ECA0](v5, 0x10E0C401B4558CBLL);
  }

  sub_1D0BCB540(a1 + 1288, *(a1 + 1296));
  sub_1D0BCB540(a1 + 1032, *(a1 + 1040));
  sub_1D0BCB540(a1 + 1008, *(a1 + 1016));
  sub_1D0DC5F04(a1 + 984, *(a1 + 992));
  if (*(a1 + 520) == 1)
  {
    *(a1 + 320) = &unk_1F4CEE030;
  }

  *(a1 + 24) = &unk_1F4CEF598;
  v7 = (a1 + 120);
  sub_1D0BBBD80(&v7);
  return a1;
}

void sub_1D0E22A88(raven::RavenPeriodicityTrackerActiveObject *a1)
{
  raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E22AC0(uint64_t a1)
{
  sub_1D0BCB540(a1 + 3440, *(a1 + 3448));
  v5 = (a1 + 3408);
  sub_1D0D46C24(&v5);
  sub_1D0BCB540(a1 + 3352, *(a1 + 3360));
  v5 = (a1 + 3328);
  sub_1D0D46C78(&v5);
  v5 = (a1 + 3304);
  sub_1D0D46CFC(&v5);
  sub_1D0BCB540(a1 + 3280, *(a1 + 3288));
  v5 = (a1 + 3256);
  sub_1D0E09954(&v5);
  sub_1D0E099E0(a1 + 40);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  return a1;
}

uint64_t sub_1D0E22B94(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x1C];
    v7 = v3[(*(a1 + 40) + v5) / 0x1C] + 144 * ((*(a1 + 40) + v5) % 0x1C);
    if (*v6 + 144 * (v5 % 0x1C) != v7)
    {
      v8 = (*v6 + 144 * (v5 % 0x1C));
      do
      {
        v9 = *v8;
        v8 += 18;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 14;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 28;
  }

  *(a1 + 32) = v13;
LABEL_18:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t raven::RavenPressurePrefilterActiveObject::Configure(_BYTE *a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  if (a1[224] == 1)
  {
    v82 = 12;
    v81 = 2;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v11 = __p;
    }

    else
    {
      LOBYTE(v11) = __p[0];
    }

    cnprint::CNPrinter::Print(&v82, &v81, "WARNING: %s configured more than once", v6, v7, v8, v9, v10, v11);
    if (v80 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v12 = *a2;
  if (!*a2 || (*(v12 + 33) & 1) == 0)
  {
    v82 = 12;
    v81 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v29 = __p;
    }

    else
    {
      LOBYTE(v29) = __p[0];
    }

    cnprint::CNPrinter::Print(&v82, &v81, "%s could not be configured - invalid RavenParameters", v24, v25, v26, v27, v28, v29);
    goto LABEL_32;
  }

  v13 = *(v12 + 1320);
  if ((v13 <= -1 || ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v13 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v82 = 12;
    v81 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v36 = __p;
    }

    else
    {
      LOBYTE(v36) = __p[0];
    }

    v76 = *(v12 + 1320);
    cnprint::CNPrinter::Print(&v82, &v81, "%s could not be configured - invalid kernal halfwidth sigma,%.3lf", v31, v32, v33, v34, v35, v36);
    goto LABEL_32;
  }

  v16 = *(v12 + 1328);
  if ((v16 <= -1 || ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v16 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v82 = 12;
    v81 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v42 = __p;
    }

    else
    {
      LOBYTE(v42) = __p[0];
    }

    v77 = *(v12 + 1328);
    cnprint::CNPrinter::Print(&v82, &v81, "%s could not be configured - invalid maximum pressure age,%.3lf", v37, v38, v39, v40, v41, v42);
    goto LABEL_32;
  }

  *(a1 + 30) = 0;
  *(a1 + 29) = v12;
  *(a1 + 31) = 0;
  v19 = *(a1 + 33);
  v20 = *(a1 + 34);
  *(a1 + 37) = 0;
  v21 = (v20 - v19) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v22 = *(a1 + 34);
      v19 = (*(a1 + 33) + 8);
      *(a1 + 33) = v19;
      v21 = (v22 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v23 = 256;
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_45;
    }

    v23 = 512;
  }

  *(a1 + 36) = v23;
LABEL_45:
  v43 = *(a1 + 29);
  v44 = *(v43 + 1312);
  if ((v44 & 0x80000000) != 0)
  {
    v48 = 0.0;
  }

  else
  {
    v45 = v44 / *(v43 + 1320) * (v44 / *(v43 + 1320));
    v46 = -v44;
    v47 = (2 * v44) | 1;
    v48 = 0.0;
    do
    {
      __p[0] = COERCE_VOID_(exp(v46 * -0.5 * v46 / v45));
      v48 = v48 + *__p;
      *a3.i64 = sub_1D0B90B68((a1 + 256), __p);
      ++v46;
      --v47;
    }

    while (v47);
  }

  v49 = *(a1 + 37);
  if (v49 != ((2 * v44) | 1))
  {
    v82 = 12;
    v81 = 4;
    (*(*a1 + 16))(__p, a1, a3);
    if (v80 >= 0)
    {
      v61 = __p;
    }

    else
    {
      LOBYTE(v61) = __p[0];
    }

    v78 = *(a1 + 37);
    cnprint::CNPrinter::Print(&v82, &v81, "%s could not be configured - incorrect barometer kernel size,%zu", v56, v57, v58, v59, v60, v61);
    goto LABEL_32;
  }

  a4.i64[0] = 0x3CB0000000000000;
  if (fabs(v48) < 2.22044605e-16)
  {
    v82 = 12;
    v81 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v55 = __p;
    }

    else
    {
      LOBYTE(v55) = __p[0];
    }

    cnprint::CNPrinter::Print(&v82, &v81, "%s could not be configured - kernel norm is zero", v50, v51, v52, v53, v54, v55);
LABEL_32:
    if (v80 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v62 = *(a1 + 33);
  if (*(a1 + 34) != v62)
  {
    v63 = *(a1 + 36);
    v64 = (v62 + 8 * (v63 >> 9));
    v65 = *v64;
    v66 = &(*v64)[v63 & 0x1FF];
    v67 = *(v62 + (((v63 + v49) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v63 + v49) & 0x1FF);
    while (v66 != v67)
    {
      *v66 = *v66 / v48;
      if (++v66 - v65 == 4096)
      {
        v68 = v64[1];
        ++v64;
        v65 = v68;
        v66 = v68;
      }
    }
  }

  a3.i64[0] = *(*(a1 + 29) + 1328);
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, a3, a4);
  *(a1 + 15) = *__p;
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  a1[224] = 1;
  v69 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v69) < 2)
  {
    v82 = 12;
    v81 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v80 >= 0)
    {
      v75 = __p;
    }

    else
    {
      LOBYTE(v75) = __p[0];
    }

    cnprint::CNPrinter::Print(&v82, &v81, "%s configured successfully", v70, v71, v72, v73, v74, v75);
    if (v80 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E232FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenPressurePrefilterActiveObject::Reset(raven::RavenPressurePrefilterActiveObject *this)
{
  v2 = *(this + 39);
  v3 = *(this + 40);
  if (v3 == v2)
  {
    v6 = (this + 344);
    v3 = *(this + 39);
  }

  else
  {
    v4 = *(this + 42);
    v5 = &v2[v4 / 0x1E];
    v6 = (this + 344);
    v7 = v2[(*(this + 43) + v4) / 0x1E] + 136 * ((*(this + 43) + v4) % 0x1E);
    if (*v5 + 136 * (v4 % 0x1E) != v7)
    {
      v8 = (*v5 + 136 * (v4 % 0x1E));
      do
      {
        v9 = *v8;
        v8 += 17;
        (*v9)();
        if (v8 - *v5 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = *(this + 39);
      v3 = *(this + 40);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = *(this + 40);
      v2 = (*(this + 39) + 8);
      *(this + 39) = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 15;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 30;
  }

  *(this + 42) = v13;
LABEL_16:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E23498(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF808;
  sub_1D0DC6DF4(a1 + 38);
  sub_1D0C56D94(a1 + 32);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0E234F8(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF808;
  sub_1D0DC6DF4(a1 + 38);
  sub_1D0C56D94(a1 + 32);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::TunnelEndPointAssistanceChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::TunnelEndPointAssistanceChecker::HandleEvent(raven::TunnelEndPointAssistanceChecker *this, const raven::TunnelEndPointAssistanceEvent *a2, raven::TunnelEndPointAssistanceEvent *a3)
{
  if (*(this + 8))
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a3 + 40) = *(a2 + 40);
    *(a3 + 24) = v5;
    *(a3 + 8) = v4;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(a3 + 104) = *(a2 + 104);
    *(a3 + 88) = v8;
    *(a3 + 72) = v7;
    *(a3 + 56) = v6;
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    *(a3 + 168) = *(a2 + 168);
    *(a3 + 152) = v11;
    *(a3 + 136) = v10;
    *(a3 + 120) = v9;
    v12 = *(a2 + 184);
    v13 = *(a2 + 200);
    v14 = *(a2 + 216);
    *(a3 + 225) = *(a2 + 225);
    *(a3 + 216) = v14;
    *(a3 + 200) = v13;
    *(a3 + 184) = v12;
    if (*(a2 + 240) == 1)
    {
      if ((*(a2 + 25) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || fabs(*(a2 + 25)) > 90.0)
      {
        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          v87 = 12;
          v86 = 1;
          v37 = (*(*a2 + 16))(a2);
          v76 = v38 + v37;
          v82 = *(a2 + 25);
          cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid latitude, %.3lf", v39, v40, v41, v42, v43, SLOBYTE(v76));
        }
      }

      else
      {
        v15 = *(a2 + 26);
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v15 > 180.0 || v15 <= -180.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
          {
            v87 = 12;
            v86 = 1;
            v16 = (*(*a2 + 16))(a2);
            v73 = v17 + v16;
            v80 = *(a2 + 26);
            cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid longitude, %.3lf", v18, v19, v20, v21, v22, SLOBYTE(v73));
          }
        }

        else
        {
          v45 = *(a2 + 27);
          if ((v45 <= -1 || ((v45 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v45 - 1) >= 0xFFFFFFFFFFFFFLL)
          {
            if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
            {
              v87 = 12;
              v86 = 1;
              v56 = (*(*a2 + 16))(a2);
              v78 = v57 + v56;
              v84 = *(a2 + 27);
              cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid horizontal uncertainty, %.3lf", v58, v59, v60, v61, v62, SLOBYTE(v78));
            }
          }

          else
          {
            v48 = *(a2 + 28);
            if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v48 < -423.0 || v48 > 8848.0)
            {
              if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
              {
                v87 = 12;
                v86 = 1;
                v49 = (*(*a2 + 16))(a2);
                v77 = v50 + v49;
                v83 = *(a2 + 28);
                cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid altitude, %.3lf", v51, v52, v53, v54, v55, SLOBYTE(v77));
              }
            }

            else
            {
              v63 = *(a2 + 29);
              if (v63 > -1 && ((v63 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v63 - 1) < 0xFFFFFFFFFFFFFLL)
              {
                return 0;
              }

              if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
              {
                v87 = 12;
                v86 = 1;
                v66 = (*(*a2 + 16))(a2);
                v79 = v67 + v66;
                v85 = *(a2 + 29);
                cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid vertical uncertainty, %.3lf", v68, v69, v70, v71, v72, SLOBYTE(v79));
              }
            }
          }
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v87 = 12;
      v86 = 1;
      v30 = (*(*a2 + 16))(a2);
      v81 = *(a2 + 240);
      v75 = v31 + v30;
      cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid reference frame, %u", v32, v33, v34, v35, v36, SLOBYTE(v75));
    }
  }

  else
  {
    v87 = 12;
    v86 = 4;
    v23 = (*(*a2 + 16))(a2, a2, a3);
    v74 = v24 + v23;
    cnprint::CNPrinter::Print(&v87, &v86, "t,%.3lf,TunnelEndPointAssistanceChecker, not configured", v25, v26, v27, v28, v29, SLOBYTE(v74));
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::ActivityStateChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

BOOL raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v17 = v16;
  v19 = v18;
  if ((atomic_load_explicit(&qword_1EE054C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C40))
  {
    qword_1EE054C38 = 0x3FDFFFFFFFFFFFFFLL;
    __cxa_guard_release(&qword_1EE054C40);
  }

  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v19, &v138, &v177, &v133, "2");
  if (v21.f64[0] < v15 || fabs(v21.f64[0]) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,Uncertainty of first vector is too large,unc,%.3lf,norm,%.3lf", v38, v39, v40, v41, v42, SLOBYTE(v15));
    }

    return 0;
  }

  v174 = 0x100000003;
  v173 = xmmword_1D0E7DCC0;
  v172 = &unk_1F4CDEB28;
  v175 = &v176;
  v21.f64[0] = 1.0 / v21.f64[0];
  sub_1D0B8930C(v19, &v172, v21);
  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v14, &v138, &v177, &v133, "2");
  if (fabs(v23) <= 0.000000015 || v23 < v10)
  {
    if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,Uncertainty of second vector is too large,unc,%.3lf,norm,%.3lf", v43, v44, v45, v46, v47, SLOBYTE(v10));
    }

    return 0;
  }

  v169 = 0x100000003;
  *&v24.f64[1] = 0x300000003;
  v168 = xmmword_1D0E7DCC0;
  v167 = &unk_1F4CDEB28;
  v170 = &v171;
  v24.f64[0] = 1.0 / v23;
  sub_1D0B8930C(v14, &v167, v24);
  v163 = 0x100000003;
  v160[0] = &unk_1F4CDEB28;
  v164 = &v165;
  v160[1] = v173;
  v161 = DWORD1(v173) * v173;
  v162 = v173;
  v25 = *v175;
  v26 = *(v175 + 1);
  *&v27.f64[0] = vdupq_laneq_s64(v26, 1).u64[0];
  v27.f64[1] = *v175;
  v28 = *(v170 + 1);
  *&v29.f64[0] = vdupq_laneq_s64(v28, 1).u64[0];
  v29.f64[1] = *v170;
  v165 = vmlaq_f64(vmulq_f64(v28, vnegq_f64(v27)), v29, v26);
  v166 = v25 * v28.f64[0] - v26.f64[0] * v29.f64[1];
  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v160, &v138, &v177, &v133, "2");
  if (v31.f64[0] < *&qword_1EE054C38)
  {
    if (cnprint::CNPrinter::GetLogLevel(v30) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      v37 = "DevAtt,Vector 1 and 2 are too close < 30deg";
LABEL_20:
      cnprint::CNPrinter::Print(&v177, &v138, v37, v32, v33, v34, v35, v36, v115);
      return 0;
    }

    return 0;
  }

  v179 = 0x100000003;
  v178 = xmmword_1D0E7DCC0;
  v177 = &unk_1F4CDEB28;
  v180 = v181;
  v31.f64[0] = 1.0 / v31.f64[0];
  sub_1D0B8930C(v160, &v177, v31);
  sub_1D0B894B0(v160, &v177);
  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v17, &v138, &v177, &v133, "2");
  if (fabs(v53.f64[0]) <= 0.000000015)
  {
    LOWORD(v177) = 12;
    LOBYTE(v138) = 4;
    cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,Error,Reference vector 1 is zero vector,norm,%.3lf", v48, v49, v50, v51, v52, SLOBYTE(v53.f64[0]));
    return 0;
  }

  v157 = 0x100000003;
  v156 = xmmword_1D0E7DCC0;
  v155 = &unk_1F4CDEB28;
  v158 = &v159;
  v53.f64[0] = 1.0 / v53.f64[0];
  sub_1D0B8930C(v17, &v155, v53);
  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v12, &v138, &v177, &v133, "2");
  if (fabs(v54.f64[0]) <= 0.000000015)
  {
    LOWORD(v177) = 12;
    LOBYTE(v138) = 4;
    v115 = LOBYTE(v54.f64[0]);
    v37 = "DevAtt,Error,Reference vector 2 is zero vector,norm,%.3lf";
    goto LABEL_20;
  }

  v152 = 0x100000003;
  v151 = xmmword_1D0E7DCC0;
  v150 = &unk_1F4CDEB28;
  v153 = &v154;
  v54.f64[0] = 1.0 / v54.f64[0];
  sub_1D0B8930C(v12, &v150, v54);
  v146 = 0x100000003;
  v143[0] = &unk_1F4CDEB28;
  v147 = &v148;
  v143[1] = v156;
  v144 = DWORD1(v156) * v156;
  v145 = v156;
  v55 = *v158;
  v56 = *(v158 + 1);
  *&v57.f64[0] = vdupq_laneq_s64(v56, 1).u64[0];
  v57.f64[1] = *v158;
  v58 = *(v153 + 1);
  *&v59.f64[0] = vdupq_laneq_s64(v58, 1).u64[0];
  v59.f64[1] = *v153;
  v148 = vmlaq_f64(vmulq_f64(v58, vnegq_f64(v57)), v59, v56);
  v149 = v55 * v58.f64[0] - v56.f64[0] * v59.f64[1];
  v140 = 0x100000003;
  v139 = xmmword_1D0E7DCC0;
  v138 = &unk_1F4CDEB28;
  v141 = v142;
  v179 = 0x100000134;
  v178 = xmmword_1D0E7DD20;
  v177 = &unk_1F4CDEC90;
  v180 = v181;
  v135 = 0x100000003;
  v134 = xmmword_1D0E7DCC0;
  v133 = &unk_1F4CDEB28;
  v136 = v137;
  sub_1D0BFB1AC(v143, &v138, &v177, &v133, "2");
  if (v61.f64[0] < *&qword_1EE054C38)
  {
    if (cnprint::CNPrinter::GetLogLevel(v60) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      v37 = "DevAtt,Reference Vector 1 and 2 are too close < 30deg";
      goto LABEL_20;
    }

    return 0;
  }

  v61.f64[0] = 1.0 / v61.f64[0];
  sub_1D0C51FB4(v143, &v177, v61);
  sub_1D0B894B0(v143, &v177);
  if (fabs(v15) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v64) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,angular/direction uncertainty of first vector is zero,%.3lf", v94, v95, v96, v97, v98, SLOBYTE(v15));
    }

    return 0;
  }

  if (fabs(v10) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v64) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,angular/direction uncertainty of second vector is zero,%.3lf", v99, v100, v101, v102, v103, SLOBYTE(v10));
    }

    return 0;
  }

  v65 = 1.0 / v15 / v15;
  v66 = 1.0 / v10 / v10;
  v67 = v65 + v66;
  if (fabs(v65 + v66) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v64) <= 1)
    {
      LOWORD(v177) = 12;
      LOBYTE(v138) = 1;
      v116 = v65 + v66;
      cnprint::CNPrinter::Print(&v177, &v138, "DevAtt,Sum of two weight is zero,%.3lf", v104, v105, v106, v107, v108, SLOBYTE(v116));
    }

    return 0;
  }

  v68 = DWORD2(v173);
  v69 = 0.0;
  v70 = 0.0;
  if (SDWORD2(v173) >= 1)
  {
    v71 = v175;
    v72 = v170;
    do
    {
      v73 = *v71++;
      v74 = v73;
      v75 = *v72++;
      v70 = v70 + v74 * v75;
      --v68;
    }

    while (v68);
  }

  v76 = DWORD2(v156);
  if (SDWORD2(v156) >= 1)
  {
    v77 = v158;
    v69 = 0.0;
    v78 = v153;
    do
    {
      v79 = *v77++;
      v80 = v79;
      v81 = *v78++;
      v69 = v69 + v80 * v81;
      --v76;
    }

    while (v76);
  }

  sub_1D0D562E0(&v172, &v167, &v177);
  sub_1D0BFA800(&v177);
  v118 = v82;
  sub_1D0D562E0(&v155, &v150, &v138);
  sub_1D0BFA800(&v138);
  v117 = v83;
  sub_1D0D4BC50(&v155, &v138);
  sub_1D0D946D8(&v172, &v138, &v177);
  sub_1D0D4BC50(&v150, &v133);
  sub_1D0D946D8(&v167, &v133, &v138);
  sub_1D0D4BC50(v143, v132);
  sub_1D0D946D8(v160, v132, &v133);
  sub_1D0E24888(v126, *v175, v175[1], v175[2]);
  sub_1D0C1B688(v126, &v133, v127);
  sub_1D0E24888(v125, *v158, v158[1], v158[2]);
  sub_1D0C1B688(v127, v125, v128);
  sub_1D0D86DAC(&v177, v128, v129);
  v84 = sqrt(v66 / v67 * (v66 / v67) + v65 / v67 * (v65 / v67) + v66 / v67 * (v65 / v67 + v65 / v67) * (v118 * v117 + v70 * v69));
  v85.f64[0] = v65 / v67 / v84;
  sub_1D0C51778(v129, v130, v85);
  sub_1D0E24888(v120, *v170, v170[1], v170[2]);
  sub_1D0C1B688(v120, &v133, v121);
  sub_1D0E24888(v119, *v153, v153[1], v153[2]);
  sub_1D0C1B688(v121, v119, v122);
  sub_1D0D86DAC(&v138, v122, v123);
  v86.f64[0] = v66 / v67 / v84;
  sub_1D0C51778(v123, v124, v86);
  sub_1D0D4C358(v130, v124, v131);
  sub_1D0D4C358(v131, &v133, v132);
  sub_1D0D260A4(v131, v132);
  if (v131 != v8)
  {
    v87 = v131[1];
    *v8 = v131[0];
    v8[1] = v87;
  }

  sub_1D0D4BC50(&v172, v130);
  sub_1D0D946D8(&v172, v130, v131);
  sub_1D0D4BC50(&v167, v129);
  sub_1D0D946D8(&v167, v129, v130);
  sub_1D0D4BC50(v160, v128);
  sub_1D0D946D8(v160, v128, v129);
  sub_1D0BFA800(v160);
  v89 = v90.f64[0];
  v90.f64[0] = fabs(v90.f64[0]);
  v62 = v90.f64[0] > 0.000000015;
  if (v90.f64[0] > 0.000000015)
  {
    v90.f64[0] = v10 * v10;
    sub_1D0C51778(v131, v125, v90);
    v91.f64[0] = v15 * v15;
    sub_1D0C51778(v130, v124, v91);
    sub_1D0D4C358(v125, v124, v126);
    v92.f64[0] = 1.0 / v67;
    sub_1D0C51778(v129, v123, v92);
    sub_1D0D4C358(v126, v123, v127);
    v93.f64[0] = 1.0 / v89 / v89;
    sub_1D0C51778(v127, v128, v93);
    sub_1D0B894B0(v6, v128);
  }

  else
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v88);
    if (LogLevel <= 1)
    {
      v128[0] = 12;
      v127[0] = 1;
      cnprint::CNPrinter::Print(v128, v127, "DevAtt,Cross product of two input body vectors is zero,%.3lf", v110, v111, v112, v113, v114, SLOBYTE(v89));
    }
  }

  return v62;
}

double sub_1D0E24888(uint64_t a1, double a2, double a3, double a4)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1, 0.0);
  v8 = *(a1 + 32);
  *(v8 + 8) = a4;
  *(v8 + 16) = -a3;
  v9 = *(a1 + 20);
  v10 = (v8 + 8 * v9);
  v10[2] = a2;
  *v10 = -*(v8 + 8);
  *(v8 + 16 * v9) = -*(v8 + 16);
  result = -v10[2];
  *(v8 + 8 * ((2 * v9) | 1)) = result;
  return result;
}

void raven::RavenDeviceAttitudeActiveObject::biermanObservationalUpdate3X3(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = 0;
  v58[1] = *MEMORY[0x1E69E9840];
  v50 = 0x100000003;
  v48 = &unk_1F4CDEB28;
  v49 = xmmword_1D0E7DCC0;
  v51 = v52;
  memset(v52, 0, sizeof(v52));
  v7 = *(a2 + 20);
  v8 = *(a2 + 32);
  v9 = *(a1 + 556) + 1;
  v10 = *(a1 + 568);
  v11 = *(a3 + 32);
  v12 = *(a4 + 32);
  v13 = (v8 - 8 * v7);
LABEL_2:
  v14 = 0;
  v15 = 0;
  v16 = -8;
  v17 = v13;
  v18 = 1;
  do
  {
    v19 = *(v8 + 8 * v6 + 8 * v15 * v7);
    if (v15)
    {
      v20 = (*(a1 + 824) + v16 + v14 * *(a1 + 812));
      v21 = v17;
      v22 = v18;
      do
      {
        v23 = *v20--;
        v19 = v19 + *v21 * v23;
        --v22;
        v21 -= v7;
      }

      while (v22 > 1);
    }

    *&v56[v15] = v19;
    v53[v15] = v19 * v10[v9 * v15];
    ++v15;
    ++v18;
    v16 += 8;
    v14 += 8;
    v17 += v7;
  }

  while (v15 != 3);
  v24 = *(v11 + 8 * v6);
  v25 = v24 + *v56 * v53[0];
  if (v25 <= 0.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
    v27 = 1.0 / v25;
    *v10 = v24 * (1.0 / v25) * *v10;
    v28 = &v54;
    v29 = &v57;
    v30 = 1;
    while (1)
    {
      v31 = v25 + *v29 * *v28;
      if (v31 <= 0.0)
      {
        break;
      }

      v32 = v26;
      v33 = 0;
      v34 = -(*v29 * v27);
      v27 = 1.0 / v31;
      v10[v9 * v30] = v25 * (1.0 / v31) * v10[v9 * v30];
      v35 = *(a1 + 824) + 8 * *(a1 + 812) * v30;
      v36 = 8 * v30;
      do
      {
        v37 = *(v35 + v33);
        v38 = v53[v33 / 8];
        *(v35 + v33) = v37 + v38 * v34;
        v53[v33 / 8] = v38 + *v28 * v37;
        v33 += 8;
      }

      while (v36 != v33);
      v26 = 1;
      v28 = &v55;
      v29 = v58;
      v30 = 2;
      v25 = v31;
      if (v32)
      {
        for (i = 0; i != 3; ++i)
        {
          *&v52[i] = *&v52[i] + v27 * *(v12 + 8 * v6) * v53[i];
        }

        ++v6;
        ++v13;
        if (v6 == 3)
        {
          sub_1D0BBA094(a5, &v48);
          goto LABEL_20;
        }

        goto LABEL_2;
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      goto LABEL_19;
    }
  }

  v47 = 12;
  v46 = 1;
  cnprint::CNPrinter::Print(&v47, &v46, "DevAtt,%uz: alpha <= 0, matrix ! positive definite", v40, v41, v42, v43, v44, v6);
LABEL_19:
  *(a5 + 24) = 0x100000003;
  *a5 = &unk_1F4CDEB28;
  *(a5 + 32) = a5 + 40;
  *(a5 + 8) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(a5, 0.0);
LABEL_20:
  v45 = *MEMORY[0x1E69E9840];
}

void raven::RavenDeviceAttitudeActiveObject::ComputePCABasedHorizontalDirectionOfTravelInIMUFrame(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 7072) == 1 && *(this + 7032) - 1 <= 1)
  {
    *(this + 458) = xmmword_1D0E87B90;
    return;
  }

  if (*(this + 957))
  {
    v6 = *(this + 1010);
    if (v6)
    {
      v7 = *(this + 1009) + v6;
      v8 = *(this + 1006);
      v9 = (v8 + 8 * (v7 / 0x14));
      v10 = *v9 + 200 * (v7 % 0x14);
      if (*(this + 1007) == v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v11 == *v9)
      {
        v11 = *(v9 - 1) + 4000;
      }

      v12 = CNTimeSpan::operator-(this + 900, this + 885, a3, a4);
      *v14.i64 = v13;
      *v15.i64 = v12;
      v16 = v13 + v12;
      v17 = CNTimeSpan::operator-(this + 900, this + 902, v14, v15);
      if (v16 >= (v18 + v17) * 0.5)
      {
        v19 = v11 - 200;
        v125 = (*(*a2 + 16))(a2);
        v126[0] = v20;
        v156 = (*(*(v11 - 200) + 16))(v11 - 200);
        v157 = v21;
        v24 = CNTimeSpan::operator-(&v125, &v156, v22, v23);
        if (v25 + v24 <= *(*(this + 29) + 832))
        {
          v26 = *(this + 953);
          v27 = (v26 + 8 * (*(this + 956) >> 4));
          v28 = *(this + 954);
          if (v28 == v26)
          {
            v29 = 0;
          }

          else
          {
            v29 = *v27 + 2656 * (*(this + 956) & 0xFLL);
          }

          v106 = 0;
          v30 = 1.79769313e308;
          v31 = v29;
          while (1)
          {
            v32 = v29;
            if (v28 == v26)
            {
              v34 = 0;
            }

            else
            {
              v33 = *(this + 957) + *(this + 956);
              v34 = *(v26 + ((v33 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v33 & 0xF);
            }

            if (v29 == v34)
            {
              break;
            }

            v29 += 2656;
            if (v32 + 2656 - *v27 == 42496)
            {
              v35 = v27[1];
              ++v27;
              v29 = v35;
            }

            v125 = (*(*v19 + 16))(v11 - 200);
            v126[0] = v36;
            v156 = (*(*v32 + 16))(v32);
            v157 = v37;
            v24 = CNTimeSpan::operator-(&v125, &v156, v38, v39);
            *v42.i64 = v41 + v24;
            if (*v42.i64 >= 0.0 && *(v32 + 209) == 2 && *(v32 + 1464) == 1 && *(v32 + 1624) == 1 && *(v32 + 1824) == 1 && *(v32 + 1345) == 1 && *(v32 + 1904) == 1)
            {
              *v40.i64 = v24;
              v24 = CNTimeSpan::operator-(this + 900, (v32 + 1168), v42, v40);
              v44 = v43 + v24;
              v45 = fabs(v30);
              if (v45 < fabs(v44) && (v45 < 1.0 || v30 >= v44))
              {
                break;
              }

              v106 = 1;
            }

            else
            {
              v32 = v31;
              v44 = v30;
            }

            v26 = *(this + 953);
            v28 = *(this + 954);
            v31 = v32;
            v30 = v44;
          }

          if (v106)
          {
            v177 = 0x100000003;
            v174 = 0.0;
            v175 = &unk_1F4CDEB28;
            v176 = xmmword_1D0E7DCC0;
            v178 = &v179;
            v171 = 0x100000003;
            v170 = xmmword_1D0E7DCC0;
            v169 = &unk_1F4CDEB28;
            v172 = &v173;
            if (raven::RavenDeviceAttitudeActiveObject::PCAForHorizontalDOTInIMUFrame(this, this + 7216, this + 7200, v31 + 1168))
            {
              sub_1D0BD2CA4(v167, *(v31 + 1272), *(v31 + 1280), *(v31 + 1288));
              if (v167[8] == 1)
              {
                v164 = 0x300000003;
                v163 = xmmword_1D0E76C10;
                v162 = &unk_1F4CD5DD0;
                v165 = &v166;
                sub_1D0B894B0(&v162, &v168);
                sub_1D0E26A00(&v156);
                sub_1D0E26A00(v153);
                if (raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(this, (v31 + 1168), &v156))
                {
                  if (raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(this, this + 900, v153))
                  {
                    v151 = v154;
                    *v152 = v155;
                    v46 = sqrt(v159 * v159 + v158 * v158 + v160 * v160 + v161 * v161);
                    if (fabs(v46) >= 2.22044605e-16)
                    {
                      v48 = -v158 / v46;
                      v49 = -v159 / v46;
                      v50 = -v160 / v46;
                      v47 = v161 / v46;
                    }

                    else
                    {
                      v47 = 1.0;
                      v48 = 0.0;
                      v49 = 0.0;
                      v50 = 0.0;
                    }

                    v125 = *&v48;
                    *v126 = v49;
                    *&v126[1] = v50;
                    *&v126[2] = v47;
                    cnrotation::Cat(&v151, &v125, v150);
                    v146 = 0x100000003;
                    v145 = xmmword_1D0E7DCC0;
                    v144 = &unk_1F4CDEB28;
                    v147 = &v148;
                    v148 = *(v31 + 1360);
                    v149 = *(v31 + 1376);
                    sub_1D0D5625C(&v162, &v144, v141);
                    _Q1 = *(v31 + 1648);
                    _D3 = _Q1.f64[1];
                    __asm { FMLA            D2, D3, V1.D[1] }

                    v65 = sqrt(_D2);
                    if (fabs(v65) >= 2.22044605e-16)
                    {
                      v68 = vdupq_lane_s64(*&v65, 0);
                      v66 = vdivq_f64(_Q1, v68);
                      v67 = vdivq_f64(*(v31 + 1632), v68);
                    }

                    else
                    {
                      v66 = xmmword_1D0E7DCB0;
                      v67 = 0uLL;
                    }

                    v140[0] = v67;
                    v140[1] = v66;
                    cnrotation::Cat(v150, v140, &v136);
                    v69 = sqrt(v137 * v137 + v136 * v136 + v138 * v138 + v139 * v139);
                    if (fabs(v69) >= 2.22044605e-16)
                    {
                      v71 = -v136 / v69;
                      v72 = -v137 / v69;
                      v73 = -v138 / v69;
                      v70 = v139 / v69;
                    }

                    else
                    {
                      v70 = 1.0;
                      v71 = 0.0;
                      v72 = 0.0;
                      v73 = 0.0;
                    }

                    *v123 = v71;
                    *&v123[1] = v72;
                    *&v123[2] = v73;
                    *&v123[3] = v70;
                    sub_1D0B88A54(v123, &v175, v109);
                    sub_1D0C1B688(&v162, v109, &v125);
                    sub_1D0C51690(v134, &v125);
                    v76 = v142;
                    if (v142 >= 1)
                    {
                      v77 = v143;
                      v78 = 0.0;
                      v79 = v135;
                      do
                      {
                        v80 = *v77++;
                        v81 = v80;
                        v82 = *v79++;
                        v78 = v78 + v81 * v82;
                        --v76;
                      }

                      while (v76);
                      if (v78 < 0.0)
                      {
                        sub_1D0E27100(&v125, &v175);
                        sub_1D0B894B0(&v175, &v125);
                        sub_1D0E27100(&v125, v134);
                        v74 = sub_1D0B894B0(v134, &v125);
                      }
                    }

                    v74.n128_f64[0] = v174;
                    v75.i64[0] = 1.0;
                    v83 = 1.0 - v174;
                    v84 = *(v31 + 224);
                    if (v84 < 0 || (v74.n128_u64[0] = *(v31 + 232), v74.n128_f64[0] < 0.0))
                    {
                      v84 = CNTimeSpan::operator-((v31 + 224), v74, v75);
                      v74.n128_u64[0] = v85;
                    }

                    v86 = v83 * 40.0 + 10.0;
                    if (v74.n128_f64[0] + v84 <= 30.0)
                    {
                      goto LABEL_65;
                    }

                    v87 = atan2(*v143, v143[1]) * 57.2957795;
                    v88 = v135;
                    v89 = atan2(*v135, v135[1]) * 57.2957795;
                    v90 = v89 - v87 - round((v89 - v87) / 360.0) * 360.0;
                    if (fabs(v90) <= 45.0 && v86 > 0.0)
                    {
                      v91 = *(this + 917);
                      v92 = v91 / (v86 * v86 + v91);
                      v93 = fmod(*(this + 916) + v92 * (v90 - *(this + 916)), 360.0);
                      *(this + 916) = v93;
                      v94 = v91 * (1.0 - v92);
                      *(this + 917) = v94;
                      if (v94 <= 30.0)
                      {
                        *(this + 917) = 0x403E000000000000;
                        *v88 = __sincos_stret((v89 - v93) * 0.0174532925);
                        sub_1D0C1B708(&v162, v109);
                        sub_1D0D5625C(v109, v134, v123);
                        sub_1D0B88A54(&v136, v123, &v125);
                        sub_1D0B894B0(&v175, &v125);
                        v95 = 1;
LABEL_66:
                        *(this + 7080) = *(this + 450);
                        sub_1D0E2B744(&v125);
                        v96 = sqrt(*(&v151 + 1) * *(&v151 + 1) + *&v151 * *&v151 + v152[0] * v152[0] + v152[1] * v152[1]);
                        if (fabs(v96) >= 2.22044605e-16)
                        {
                          v98 = -*&v151 / v96;
                          v99 = -*(&v151 + 1) / v96;
                          v100 = -v152[0] / v96;
                          v97 = v152[1] / v96;
                        }

                        else
                        {
                          v97 = 1.0;
                          v98 = 0.0;
                          v99 = 0.0;
                          v100 = 0.0;
                        }

                        *v109 = v98;
                        *&v109[8] = v99;
                        *&v109[16] = v100;
                        *&v109[24] = v97;
                        cnrotation::Cat((v11 - 32), v109, v124);
                        v101 = (*(*v19 + 16))(v11 - 200);
                        v130 = 0u;
                        v129 = 0u;
                        v128 = 0u;
                        v127 = 0u;
                        v126[14] = v101;
                        v126[15] = v102;
                        v131 = 0;
                        v132 = 0x7FF8000000000000;
                        sub_1D0B88A54(v124, &v175, v109);
                        sub_1D0B894B0(v133, v109);
                        sub_1D0B88A54(v124, &v169, v123);
                        cnrotation::Cat(v124, &v136, v109);
                        v133[4] = *v109;
                        v133[5] = *&v109[16];
                        if (!v95)
                        {
                          v86 = v86 + 40.0;
                        }

                        sub_1D0D7B9D8(v123, v109);
                        sub_1D0C51690(v122, v109);
                        sub_1D0D562E0(v122, v133, v121);
                        sub_1D0BFA9C4(3, 3, v118);
                        v103 = v120;
                        *v120 = 0x4028000000000000;
                        v104 = v119;
                        v103[2 * v119 + 2] = 0x4028000000000000;
                        *&v103[v104 + 1] = v86 * 0.0174532925 * (v86 * 0.0174532925);
                        if ((atomic_load_explicit(&qword_1EE054C48, memory_order_acquire) & 1) == 0)
                        {
                          if (__cxa_guard_acquire(&qword_1EE054C48))
                          {
                            *&v109[24] = 0x300000001;
                            *v109 = &unk_1F4CDF0C8;
                            v110 = &v111;
                            *&v109[8] = xmmword_1D0E7F310;
                            v111 = 0x100000000;
                            v112 = 2;
                            sub_1D0D2CF48(v109, &unk_1EE054C98);
                            __cxa_atexit(sub_1D0D26840, &unk_1EE054C98, &dword_1D0B71000);
                            __cxa_guard_release(&qword_1EE054C48);
                          }
                        }

                        v115 = 0x300000003;
                        v114 = xmmword_1D0E76C10;
                        v113 = &unk_1F4CD5DD0;
                        v116 = &v117;
                        sub_1D0D4BC50(v133, v108);
                        sub_1D0E27188(v109, &v113, 0);
                        sub_1D0D2D288(v109, v108);
                        sub_1D0D4BC50(v121, v108);
                        sub_1D0E27188(v109, &v113, 1);
                        sub_1D0D2D288(v109, v108);
                        sub_1D0D4BC50(v122, v108);
                        sub_1D0E27188(v109, &v113, 2);
                        sub_1D0D2D288(v109, v108);
                        sub_1D0C1B688(&v113, v118, v108);
                        sub_1D0C1B708(&v113, v107);
                        sub_1D0C1B688(v108, v107, v109);
                        sub_1D0B894B0(v126, v109);
                        sub_1D0E271F0();
                      }

LABEL_65:
                      v95 = 0;
                      goto LABEL_66;
                    }
                  }
                }
              }
            }
          }

          else if (!cnprint::CNPrinter::GetLogLevel(v24))
          {
            LOWORD(v125) = 12;
            LOBYTE(v156) = 0;
            v51 = (*(*a2 + 16))(a2);
            v105 = v52 + v51;
            cnprint::CNPrinter::Print(&v125, &v156, "t,%.3lf No applicable PNT solution found for PCA HDOT", v53, v54, v55, v56, v57, SLOBYTE(v105));
          }
        }
      }
    }
  }
}

uint64_t raven::RavenDeviceAttitudeActiveObject::PCAForHorizontalDOTInIMUFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v193[2] = 0;
  v193[0] = &unk_1F4CEE768;
  v193[1] = 0;
  v194 = 0;
  v196 = 0;
  v195 = 0;
  v197 = 0;
  v199 = 0;
  v198 = 0;
  v200 = 0;
  v202 = 0;
  v201 = 0;
  v203 = vdupq_n_s64(0x7FF8000000000000uLL);
  v204 = v203;
  v205 = v203;
  v206 = 0x7FF8000000000000;
  *&v209 = 0;
  v208 = 0u;
  v207 = 0u;
  *(&v209 + 1) = 0x3FF0000000000000;
  DAEFromQueueForInputTime = raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(v16, v12, v193);
  result = 0;
  if (!DAEFromQueueForInputTime)
  {
    return result;
  }

  v20 = v11 + 464;
  v192[0] = v208;
  v192[1] = v209;
  v189 = 0x100000003;
  v188 = xmmword_1D0E7DCC0;
  v187 = &unk_1F4CDEB28;
  v190 = &v191;
  _Q1 = *(v11 + 480);
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v28 = sqrt(_D2);
  if (fabs(v28) >= 2.22044605e-16)
  {
    v31 = vdupq_lane_s64(*&v28, 0);
    v29 = vdivq_f64(_Q1, v31);
    v30 = vdivq_f64(*(v11 + 464), v31);
  }

  else
  {
    v29 = xmmword_1D0E7DCB0;
    v30 = 0uLL;
  }

  v186[0] = v30;
  v186[1] = v29;
  v168[2] = 0;
  v168[0] = &unk_1F4CEE768;
  v168[1] = 0;
  v169 = 0;
  v171 = 0;
  v170 = 0;
  v172 = 0;
  v174 = 0;
  v173 = 0;
  v175 = 0;
  v177 = 0;
  v176 = 0;
  v178 = vdupq_n_s64(0x7FF8000000000000uLL);
  v179 = v178;
  v180 = v178;
  v181 = 0x7FF8000000000000;
  v184 = 0.0;
  v183 = 0u;
  v182 = 0u;
  v185 = 1.0;
  v32 = raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(v17, v11, v168);
  result = 0;
  if (!v32)
  {
    return result;
  }

  v33 = sqrt(*(&v183 + 1) * *(&v183 + 1) + *&v183 * *&v183 + v184 * v184 + v185 * v185);
  if (fabs(v33) >= 2.22044605e-16)
  {
    v35 = -*&v183 / v33;
    v36 = -*(&v183 + 1) / v33;
    v37 = -v184 / v33;
    v34 = v185 / v33;
  }

  else
  {
    v34 = 1.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
  }

  v210 = v35;
  *&v211 = v36;
  *(&v211 + 1) = v37;
  v212 = *&v34;
  cnrotation::Cat(v192, &v210, v167);
  v164 = 0x100000003;
  v162 = &unk_1F4CDEB28;
  v163 = xmmword_1D0E7DCC0;
  v165 = v166;
  v166[0] = 0;
  v166[1] = 0;
  v166[2] = 0xC0239D013A92A305;
  sub_1D0B9F3C4(v161, *(v11 + 104), *(v11 + 112), *(v11 + 120));
  if (v161[8] != 1)
  {
    return 0;
  }

  v96 = v5;
  v94 = v7;
  v158 = 0x100000003;
  v157 = xmmword_1D0E7DCC0;
  v156 = &unk_1F4CDEB28;
  v159 = &v160;
  sub_1D0E296D4(v161, &v162, &v156);
  cnrotation::Cat(v167, v186[0].f64, v155);
  sub_1D0B88A54(v155, &v156, &v210);
  sub_1D0B894B0(&v187, &v210);
  v217 = 0x100000003;
  v216 = xmmword_1D0E7DCC0;
  v215 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v218 = v219;
  v212 = 0x100000134;
  v211 = xmmword_1D0E7DD20;
  v210 = COERCE_DOUBLE(&unk_1F4CDEC90);
  v213 = v214;
  v146 = 0x100000003;
  v145 = xmmword_1D0E7DCC0;
  v144 = &unk_1F4CDEB28;
  v147 = v148;
  sub_1D0BFB1AC(&v187, &v215, &v210, &v144, "2");
  if (v38 <= 0.000000015)
  {
    return 0;
  }

  v93 = v9;
  v40 = 1.0 / v38;
  v41 = v190;
  v42 = *(v5 + 32);
  *v42 = v40 * *v190;
  v42[1] = v40 * v41[1];
  v39.i64[0] = v41[2];
  v42[2] = v40 * *v39.i64;
  v152 = 0x100000003;
  v150 = &unk_1F4CDEB28;
  v153 = v154;
  v151 = xmmword_1D0E7DCC0;
  memset(v154, 0, sizeof(v154));
  v146 = 0x300000003;
  v144 = &unk_1F4CD5DD0;
  v147 = v148;
  v145 = xmmword_1D0E76C10;
  v43 = 0uLL;
  memset(v148, 0, sizeof(v148));
  v149 = 0;
  v44 = v17[1006];
  v45 = 0.0;
  if (v17[1007] != v44)
  {
    v46 = v17[1009];
    v47 = *(v44 + 8 * (v46 / 0x14)) + 200 * (v46 % 0x14);
    v48 = *(v44 + 8 * ((v17[1010] + v46) / 0x14)) + 200 * ((v17[1010] + v46) % 0x14);
    if (v47 != v48)
    {
      v95 = v11;
      v49 = 0;
      v50 = (v44 + 8 * (v46 / 0x14));
      do
      {
        v210 = COERCE_DOUBLE((*(*v47 + 16))(v47));
        *&v211 = v51;
        if (!sub_1D0B7C8AC(&v210, v15))
        {
          v210 = COERCE_DOUBLE((*(*v47 + 16))(v47));
          *&v211 = v52;
          if (sub_1D0B7CF88(&v210, v13))
          {
            break;
          }

          v113 = 0x100000003;
          v112 = xmmword_1D0E7DCC0;
          v111 = &unk_1F4CDEB28;
          v114 = &v115;
          v115 = *(v47 + 128);
          v116 = *(v47 + 144);
          cnrotation::Inv((v47 + 168), &v210);
          cnrotation::Cat(v192, &v210, &v140);
          v104 = 0x100000003;
          v102 = &unk_1F4CDEB28;
          v103 = xmmword_1D0E7DCC0;
          v105 = &v106;
          v106 = vmlaq_f64(vnegq_f64(*(v20 + 200)), vaddq_f64(*(v47 + 128), *(v47 + 104)), *(v20 + 280));
          *&v107 = -(*(v95 + 680) - *(v95 + 760) * (*(v47 + 144) + *(v47 + 120)));
          v53 = sqrt(v141 * v141 + v140 * v140 + v142 * v142 + v143 * v143);
          if (fabs(v53) >= 2.22044605e-16)
          {
            v55 = -v140 / v53;
            v56 = -v141 / v53;
            v57 = -v142 / v53;
            v54 = v143 / v53;
          }

          else
          {
            v54 = 1.0;
            v55 = 0.0;
            v56 = 0.0;
            v57 = 0.0;
          }

          v215 = v55;
          *&v216 = v56;
          *(&v216 + 1) = v57;
          v217 = *&v54;
          sub_1D0B88A54(&v215, v96, &v210);
          v59 = DWORD2(v103);
          if (SDWORD2(v103) < 1)
          {
            v58.f64[0] = 0.0;
          }

          else
          {
            v60 = v105;
            v58.f64[0] = 0.0;
            v61 = v213;
            do
            {
              v62 = *v60++;
              v63 = v62;
              v64 = *v61++;
              v58.f64[0] = v58.f64[0] + v63 * v64;
              --v59;
            }

            while (v59);
          }

          v217 = 0x300000003;
          v216 = xmmword_1D0E76C10;
          v215 = COERCE_DOUBLE(&unk_1F4CD5DD0);
          v218 = v219;
          sub_1D0B8930C(&v210, &v215, v58);
          v99 = 0x100000003;
          v97 = &unk_1F4CDEB28;
          v98 = xmmword_1D0E7DCC0;
          v100 = v101;
          sub_1D0BA5A78(&v102, &v215, &v97);
          sub_1D0B88A54(&v140, &v97, &v215);
          sub_1D0C51690(&v220, &v215);
          v137 = 0x100000003;
          v136 = xmmword_1D0E7DCC0;
          v135 = &unk_1F4CDEB28;
          v138 = &v139;
          v66 = sub_1D0BA5A78(v65, &v150, &v135);
          v66.f64[0] = 1.0 / (v49 + 1);
          v132 = 0x100000003;
          v131 = xmmword_1D0E7DCC0;
          v130 = &unk_1F4CDEB28;
          v133 = v134;
          sub_1D0B8930C(&v135, &v130, v66);
          v217 = 0x100000003;
          v216 = xmmword_1D0E7DCC0;
          v215 = COERCE_DOUBLE(&unk_1F4CDEB28);
          v218 = v219;
          sub_1D0B88838(&v150, &v130, &v215);
          sub_1D0B894B0(&v150, &v215);
          v119 = 0x100000003;
          v118 = xmmword_1D0E7DCC0;
          v117 = &unk_1F4CDEB28;
          v120 = &v121;
          sub_1D0BA5A78(&v220, &v150, &v117);
          v67 = DWORD1(v118);
          v68 = v118;
          v127 = 0x300000001;
          v122 = &unk_1F4CDF248;
          v128 = v129;
          v123 = DWORD1(v118);
          v124 = v118;
          v125 = v118 * DWORD1(v118);
          v126 = DWORD1(v118);
          if (DWORD1(v118))
          {
            v69 = 0;
            v70 = 0;
            v71 = HIDWORD(v118);
            v72 = v120;
            do
            {
              v73 = v69;
              v74 = v70;
              for (i = v68; i; --i)
              {
                v129[v74] = v72[v73];
                v74 += v67;
                ++v73;
              }

              ++v70;
              v69 += v71;
            }

            while (v70 != v67);
          }

          v132 = 0x300000003;
          v131 = xmmword_1D0E76C10;
          v130 = &unk_1F4CD5DD0;
          v133 = v134;
          sub_1D0B89390(&v135, &v122, &v130);
          v217 = 0x300000003;
          v216 = xmmword_1D0E76C10;
          v215 = COERCE_DOUBLE(&unk_1F4CD5DD0);
          v218 = v219;
          sub_1D0B88838(&v144, &v130, &v215);
          ++v49;
          v43 = sub_1D0B894B0(&v144, &v215);
        }

        v47 += 200;
        if (v47 - *v50 == 4000)
        {
          v76 = v50[1];
          ++v50;
          v47 = v76;
        }
      }

      while (v47 != v48);
      v45 = v49;
    }
  }

  v77 = CNTimeSpan::operator-(v17 + 900, v17 + 902, v43, v39);
  v79.f64[0] = (v78 + v77) * 0.7 / *(v17[29] + 648);
  if (v79.f64[0] < 4.0)
  {
    v79.f64[0] = 4.0;
  }

  if (v79.f64[0] > v45)
  {
    return 0;
  }

  v132 = 0x300000003;
  v131 = xmmword_1D0E76C10;
  v130 = &unk_1F4CD5DD0;
  v133 = v134;
  v79.f64[0] = 1.0 / (v45 + -1.0);
  sub_1D0B8930C(&v144, &v130, v79);
  v113 = 0x300000003;
  v112 = xmmword_1D0E76C10;
  v110 = 0;
  v111 = &unk_1F4CD5DD0;
  v114 = &v115;
  v104 = 0x300000003;
  v102 = &unk_1F4CD5DD0;
  v103 = xmmword_1D0E76C10;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v105 = &v106;
  v99 = 0x300000003;
  v97 = &unk_1F4CD5DD0;
  v98 = xmmword_1D0E76C10;
  v100 = v101;
  v217 = 0x300000003;
  v215 = COERCE_DOUBLE(&unk_1F4CD5DD0);
  *&v216 = v131;
  DWORD2(v216) = DWORD1(v131) * v131;
  HIDWORD(v216) = v131;
  v218 = v219;
  v212 = 0x1000001E6;
  v211 = xmmword_1D0E83DC0;
  v210 = COERCE_DOUBLE(&unk_1F4CDFFB0);
  v213 = v214;
  sub_1D0C51878(&v130, &v215, &v210, &v111, &v102, &v97);
  v80 = v105->f64[0];
  v81 = v105->f64[SHIDWORD(v103) + 1];
  v217 = 0x100000003;
  v216 = xmmword_1D0E7DCC0;
  v215 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v218 = v219;
  v212 = 0x100000134;
  v211 = xmmword_1D0E7DD20;
  v210 = COERCE_DOUBLE(&unk_1F4CDEC90);
  v213 = v214;
  v222 = 0x100000003;
  v221 = xmmword_1D0E7DCC0;
  v220 = &unk_1F4CDEB28;
  v223 = &v224;
  sub_1D0BFB1AC(&v150, &v215, &v210, &v220, "2");
  v82 = v17[29];
  if (v83 >= *(v82 + 992))
  {
    if (fabs(v80) < 2.22044605e-16)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (sqrt(v80) < *(v82 + 1000) || fabs(v80) < 2.22044605e-16)
    {
      return result;
    }
  }

  v84 = v80 / (v80 + v81);
  *v94 = v84;
  if (v84 < 0.7)
  {
    return 0;
  }

  sub_1D0C51CC8(&v97, ":", 0, &v210);
  v85 = DWORD2(v151);
  if (SDWORD2(v151) < 1)
  {
    goto LABEL_50;
  }

  v86 = v153;
  v87 = 0.0;
  v88 = v213;
  do
  {
    v89 = *v86++;
    v90 = v89;
    v91 = *v88++;
    v87 = v87 + v90 * v91;
    --v85;
  }

  while (v85);
  if (v87 >= 0.0)
  {
LABEL_50:
    sub_1D0C51CC8(&v97, ":", 0, &v210);
    v92 = &v210;
  }

  else
  {
    sub_1D0C51CC8(&v97, ":", 0, &v210);
    sub_1D0E27100(&v215, &v210);
    v92 = &v215;
  }

  sub_1D0B894B0(v93, v92);
  return 1;
}

double sub_1D0E26A00(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEE768;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v1 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v1;
  *(a1 + 112) = v1;
  *(a1 + 128) = v1;
  *(a1 + 144) = 0x7FF8000000000000;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0x3FF0000000000000;
  return result;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[1009] + a1[1010];
  v7 = a1[1006];
  v8 = (v7 + 8 * (v6 / 0x14));
  v9 = *v8;
  v10 = *v8 + 200 * (v6 % 0x14);
  if (a1[1007] == v7)
  {
    v10 = 0;
  }

  v11 = v10 - v9;
  v12 = 0x8F5C28F5C28F5C29 * ((v10 - v9) >> 3);
  if (v11 < 201)
  {
    v16 = 20 - v12;
    v14 = &v8[-(v16 / 0x14)];
    v15 = *v14 + 200 * (20 * (v16 / 0x14) - v16) + 3800;
  }

  else
  {
    v13 = v12 - 1;
    v14 = &v8[v13 / 0x14];
    v15 = *v14 + 200 * (v13 % 0x14);
  }

  v101 = (*(*v15 + 16))(v15);
  v102 = v17;
  v20 = CNTimeSpan::operator-(&v101, a2, v18, v19);
  v22 = llround((v21 + v20) / *(a1[29] + 648));
  if ((v22 & 0x80000000) != 0 || v22 >= *(a1 + 2020))
  {
    return 0;
  }

  if (v22)
  {
    v23 = 0x8F5C28F5C28F5C29 * ((v15 - *v14) >> 3) - v22;
    if (v23 < 1)
    {
      v25 = 19 - v23;
      v14 -= v25 / 0x14;
      v15 = *v14 + 200 * (20 * (v25 / 0x14) - v25) + 3800;
    }

    else
    {
      v14 += v23 / 0x14;
      v15 = *v14 + 200 * (v23 % 0x14);
    }
  }

  v26 = 0;
  while (1)
  {
    v27 = v26;
    v28 = v15;
    v29 = v14;
    v30 = a1[1006];
    v31 = a1[1009];
    v32 = (v30 + 8 * (v31 / 0x14));
    v33 = *v32;
    v34 = *v32 + 200 * (v31 % 0x14);
    v35 = a1[1007] == v30 ? 0 : v34;
    v36 = v35 - v33;
    v37 = 0x8F5C28F5C28F5C29 * ((v35 - v33) >> 3);
    if (v36 < -199)
    {
      v41 = 18 - v37;
      v39 = &v32[-(v41 / 0x14)];
      v40 = *v39 + 200 * (20 * (v41 / 0x14) - v41) + 3800;
    }

    else
    {
      v38 = v37 + 1;
      v39 = &v32[v38 / 0x14];
      v40 = *v39 + 200 * (v38 % 0x14);
    }

    if (v14 < v39 || v14 == v39 && (v15 == v40 || v15 < v40))
    {
      break;
    }

    if (*v14 == v15)
    {
      --v14;
      v15 = *(v29 - 1) + 4000;
    }

    v99 = (*(*v28 + 16))(v28);
    v100 = v42;
    *v45.i64 = CNTimeSpan::operator-(&v99, a2, v43, v44);
    *v47.i64 = fabs(v46 + *v45.i64);
    v101 = 0;
    v102 = 0.0;
    v48 = CNTimeSpan::SetTimeSpan(&v101, 0, v47, v45);
    v49 = v101;
    v50 = v102;
    v51 = *(v15 - 200);
    v15 -= 200;
    v52 = v102;
    v97 = (*(v51 + 16))(v15, v48);
    v98 = v53;
    *v56.i64 = CNTimeSpan::operator-(&v97, a2, v54, v55);
    *v58.i64 = fabs(v57 + *v56.i64);
    v101 = 0;
    v102 = 0.0;
    CNTimeSpan::SetTimeSpan(&v101, 0, v58, v56);
    if (v49 || (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if ((v101 || (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v49 != v101)
      {
        v26 = 1;
        if (v49 <= v101)
        {
          break;
        }
      }

      else
      {
        v26 = 1;
        if (v50 <= v102)
        {
          break;
        }
      }
    }

    else
    {
      v26 = 1;
      if (v50 <= v102)
      {
        break;
      }
    }
  }

  if (v27)
  {
    v59 = v28;
  }

  else
  {
    do
    {
      v59 = v28;
      v60 = a1[1009] + a1[1010];
      v61 = a1[1006];
      v62 = (v61 + 8 * (v60 / 0x14));
      v63 = *v62;
      v64 = *v62 + 200 * (v60 % 0x14);
      if (a1[1007] == v61)
      {
        v64 = 0;
      }

      v65 = v64 - v63;
      v66 = 0x8F5C28F5C28F5C29 * ((v64 - v63) >> 3);
      if (v65 < 201)
      {
        v70 = 20 - v66;
        v68 = &v62[-(v70 / 0x14)];
        v69 = *v68 + 200 * (20 * (v70 / 0x14) - v70) + 3800;
      }

      else
      {
        v67 = v66 - 1;
        v68 = &v62[v67 / 0x14];
        v69 = *v68 + 200 * (v67 % 0x14);
      }

      if (v29 >= v68 && (v29 != v68 || v28 >= v69))
      {
        break;
      }

      v28 += 200;
      if (v59 + 200 - *v29 == 4000)
      {
        v72 = v29[1];
        ++v29;
        v28 = v72;
      }

      v99 = (*(*v59 + 16))(v59);
      v100 = v73;
      *v76.i64 = CNTimeSpan::operator-(&v99, a2, v74, v75);
      *v78.i64 = fabs(v77 + *v76.i64);
      v101 = 0;
      v102 = 0.0;
      v79 = CNTimeSpan::SetTimeSpan(&v101, 0, v78, v76);
      v80 = v101;
      v81 = v102;
      v82 = v102;
      v97 = (*(*v28 + 16))(v28, v79);
      v98 = v83;
      *v86.i64 = CNTimeSpan::operator-(&v97, a2, v84, v85);
      *v88.i64 = fabs(v87 + *v86.i64);
      v101 = 0;
      v102 = 0.0;
      CNTimeSpan::SetTimeSpan(&v101, 0, v88, v86);
      if ((v80 || (*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v101 || (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
      {
        v89 = v80 <= v101;
        if (v80 != v101)
        {
          continue;
        }
      }

      v89 = v81 <= v102;
    }

    while (!v89);
  }

  v90 = *(v59 + 8);
  *(a3 + 24) = *(v59 + 24);
  *(a3 + 8) = v90;
  v91 = *(v59 + 40);
  v92 = *(v59 + 56);
  v93 = *(v59 + 72);
  *(a3 + 88) = *(v59 + 88);
  *(a3 + 72) = v93;
  *(a3 + 56) = v92;
  *(a3 + 40) = v91;
  v94 = *(v59 + 104);
  v95 = *(v59 + 120);
  v96 = *(v59 + 136);
  *(a3 + 152) = *(v59 + 152);
  *(a3 + 136) = v96;
  *(a3 + 120) = v95;
  *(a3 + 104) = v94;
  if (v59 != a3)
  {
    *(a3 + 168) = *(v59 + 168);
    *(a3 + 184) = *(v59 + 184);
  }

  return 1;
}

double sub_1D0E27100(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5940(a2, a1);
  return result;
}

uint64_t sub_1D0E27188(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0x100000001;
  v5 = &unk_1F4CDF158;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v6 = v3;
  v8 = &v9;
  v9 = a3;
  return sub_1D0C4DC98(a1, a2, &v5, &unk_1EE054C98);
}

void sub_1D0E27404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::convertRvVarToQuaternionVar(uint64_t a1, const cnquaternion::CNQuaternion *a2, uint64_t a3, uint64_t a4)
{
  raven::RavenDeviceAttitudeActiveObject::RotationVectorFromQuaternion(a2, v103);
  v100 = 0x100000003;
  v99 = xmmword_1D0E7DCC0;
  v98 = &unk_1F4CDEB28;
  v101 = v102;
  v110 = 0x100000134;
  v109 = xmmword_1D0E7DD20;
  v108 = &unk_1F4CDEC90;
  v111 = v112;
  v58 = 0x100000003;
  v57 = xmmword_1D0E7DCC0;
  v56 = &unk_1F4CDEB28;
  v59 = v60;
  sub_1D0BFB1AC(v103, &v98, &v108, &v56, "2");
  v8 = v7;
  v9 = v7 * 0.5;
  v10 = fabs(v7 * 0.5);
  if (v10 == INFINITY || (v10 <= 0.01 ? (v18 = v9 * v9 / -6.0 + 1.0, v19 = v9 / -3.0) : (v17 = __sincos_stret(v9), v18 = v17.__sinval / v9, v19 = (v17.__cosval - v17.__sinval / v9) / v9), (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v108) = 12;
      LOBYTE(v98) = 1;
      cnprint::CNPrinter::Print(&v108, &v98, "DevAtt,Invalid Quaternion Variance", v11, v12, v13, v14, v15, v50);
    }

    return 0;
  }

  else
  {
    if (v8 >= 0.05)
    {
      v20 = v19 * 0.25 / v8;
    }

    else
    {
      v20 = -0.0416666667;
    }

    v21 = v105;
    v22 = v104;
    v95 = 0x300000001;
    v90 = &unk_1F4CDF248;
    v96 = v97;
    v91 = v105;
    v92 = v104;
    v93 = v104 * v105;
    v94 = v105;
    if (v105)
    {
      v23 = 0;
      v24 = 0;
      v25 = v106;
      v26 = v107;
      do
      {
        v27 = v23;
        v28 = v24;
        for (i = v22; i; --i)
        {
          v97[v28] = *(v26 + 8 * v27);
          v28 += v21;
          ++v27;
        }

        ++v24;
        v23 += v25;
      }

      while (v24 != v21);
    }

    v53 = 0x300000003;
    v51 = &unk_1F4CD5DD0;
    v52 = xmmword_1D0E76C10;
    v54 = v55;
    sub_1D0B89390(v103, &v90, &v51);
    v58 = 0x300000003;
    *&v30.f64[1] = 0x300000009;
    v57 = xmmword_1D0E76C10;
    v56 = &unk_1F4CD5DD0;
    v59 = v60;
    v30.f64[0] = v20;
    sub_1D0B8930C(&v51, &v56, v30);
    v76 = 0x300000003;
    v74 = &unk_1F4CD5DD0;
    v75 = xmmword_1D0E76C10;
    v79 = 0u;
    v80 = 0;
    v82 = 0u;
    v77 = &v78;
    v78 = 0x3FF0000000000000;
    v81 = 0x3FF0000000000000;
    v83 = 0;
    v84 = 0x3FF0000000000000;
    v87 = 0x300000003;
    v86 = xmmword_1D0E76C10;
    v85 = &unk_1F4CD5DD0;
    v88 = &v89;
    sub_1D0B8930C(&v74, &v85, COERCE_UNSIGNED_INT64(v18 * 0.5));
    v110 = 0x300000003;
    v109 = xmmword_1D0E76C10;
    v108 = &unk_1F4CD5DD0;
    v111 = v112;
    v31 = sub_1D0B88838(&v56, &v85, &v108);
    v32 = v105;
    v33 = v104;
    v66 = 0x300000001;
    v61 = &unk_1F4CDF248;
    v67 = v68;
    v62 = v105;
    v63 = v104;
    v64 = v104 * v105;
    v65 = v105;
    if (v105)
    {
      v34 = 0;
      v35 = 0;
      v36 = v106;
      v37 = v107;
      do
      {
        v38 = v34;
        v39 = v35;
        for (j = v33; j; --j)
        {
          v68[v39] = *(v37 + 8 * v38);
          v39 += v32;
          ++v38;
        }

        ++v35;
        v34 += v36;
      }

      while (v35 != v32);
    }

    v31.f64[0] = v18 * -0.25;
    v71 = 0x300000001;
    v70 = xmmword_1D0E7F310;
    v69 = &unk_1F4CDF248;
    v72 = &v73;
    sub_1D0B8930C(&v61, &v69, v31);
    v100 = 0x300000004;
    v99 = xmmword_1D0E7DCF0;
    v98 = &unk_1F4CDEC00;
    v101 = v102;
    sub_1D0BA59C4(&v108, &v69, &v98);
    v58 = 0x300000004;
    v57 = xmmword_1D0E7DCF0;
    v56 = &unk_1F4CDEC00;
    v59 = v60;
    sub_1D0B89390(&v98, a3, &v56);
    v41 = DWORD1(v99);
    v42 = v99;
    v53 = 0x400000003;
    v51 = &unk_1F4CDEC48;
    v54 = v55;
    *&v52 = __PAIR64__(v99, DWORD1(v99));
    DWORD2(v52) = v99 * DWORD1(v99);
    HIDWORD(v52) = DWORD1(v99);
    if (DWORD1(v99))
    {
      v43 = 0;
      v44 = 0;
      v45 = HIDWORD(v99);
      v46 = v101;
      do
      {
        v47 = v43;
        v48 = v44;
        for (k = v42; k; --k)
        {
          v55[v48] = *&v46[8 * v47];
          v48 += v41;
          ++v47;
        }

        ++v44;
        v43 += v45;
      }

      while (v44 != v41);
    }

    v110 = 0x400000004;
    v109 = xmmword_1D0E7DCD0;
    v108 = &unk_1F4CDEB70;
    v111 = v112;
    sub_1D0B89390(&v56, &v51, &v108);
    sub_1D0B894B0(a4, &v108);
    return 1;
  }
}

void raven::RavenDeviceAttitudeActiveObject::RotationVectorFromQuaternion(const cnquaternion::CNQuaternion *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = 0x100000003;
  v8 = &unk_1F4CDEB28;
  v11 = &v12;
  v9 = xmmword_1D0E7DCC0;
  v12 = *a1;
  v13 = *(a1 + 2);
  v26 = 0x100000003;
  v24 = &unk_1F4CDEB28;
  v25 = xmmword_1D0E7DCC0;
  v27 = &v28;
  v21 = 0x100000134;
  v19 = &unk_1F4CDEC90;
  v20 = xmmword_1D0E7DD20;
  v22 = &v23;
  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  sub_1D0BFB1AC(&v8, &v24, &v19, &v14, "2");
  v5 = v6.f64[0];
  v6.f64[0] = 2.0;
  if (v5 > 0.01)
  {
    v7 = atan(v5 / *(a1 + 3));
    v6.f64[0] = 1.0 / (sin(v7) / v7 * 0.5);
  }

  *(a2 + 24) = 0x100000003;
  *a2 = &unk_1F4CDEB28;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  *(a2 + 32) = a2 + 40;
  sub_1D0B8930C(&v8, a2, v6);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::DeriveGravityVectorInEcefAndBody(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8144) != 1)
  {
    goto LABEL_6;
  }

  v28 = 0x100000003;
  v27 = xmmword_1D0E7DCC0;
  v26 = &unk_1F4CDEB28;
  v29 = v30;
  v23 = 0x100000134;
  v21 = &unk_1F4CDEC90;
  v22 = xmmword_1D0E7DD20;
  v24 = v25;
  v18 = 0x100000003;
  v16 = &unk_1F4CDEB28;
  v17 = xmmword_1D0E7DCC0;
  v19 = v20;
  sub_1D0BFB1AC(a1 + 7824, &v26, &v21, &v16, "2");
  if (fabs(v10) <= 0.000000015)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 32);
  v31 = *v11;
  v32 = *(v11 + 2);
  v26 = 0;
  if (sub_1D0BF9390(a1 + 3912, &v31, 1, 0))
  {
    goto LABEL_6;
  }

  v12 = *(a3 + 32);
  *v12 = -v33;
  v12[1] = -v34;
  v12[2] = -v35;
  v28 = 0x100000003;
  v27 = xmmword_1D0E7DCC0;
  v26 = &unk_1F4CDEB28;
  v29 = v30;
  v23 = 0x100000134;
  v21 = &unk_1F4CDEC90;
  v22 = xmmword_1D0E7DD20;
  v24 = v25;
  v18 = 0x100000003;
  v16 = &unk_1F4CDEB28;
  v17 = xmmword_1D0E7DCC0;
  v19 = v20;
  sub_1D0BFB1AC(a3, &v26, &v21, &v16, "2");
  if (fabs(v13) <= 0.000000015)
  {
LABEL_6:
    result = 0;
  }

  else
  {
    sub_1D0B894B0(a4, a1 + 7824);
    *a5 = sqrt(*(a1 + 296) * *(a1 + 296) + *(a1 + 288) * *(a1 + 288) + *(a1 + 304) * *(a1 + 304)) / 9.80665;
    result = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((atomic_load_explicit(&qword_1EE054C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C78))
  {
    qword_1EE054C70 = 0x3FE6A09E667F3BCDLL;
    __cxa_guard_release(&qword_1EE054C78);
  }

  if ((atomic_load_explicit(&qword_1EE054C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C80))
  {
    sub_1D0D76BD4(3, 1, &unk_1EE054D10);
    __cxa_atexit(sub_1D0D24D20, &unk_1EE054D10, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054C80);
  }

  v187 = 0x100000003;
  v186 = xmmword_1D0E7DCC0;
  v185 = &unk_1F4CDEB28;
  v188 = &v189;
  v211 = 0x100000134;
  v210 = xmmword_1D0E7DD20;
  v209 = &unk_1F4CDEC90;
  v212 = v213;
  v182 = 0x100000003;
  v181 = xmmword_1D0E7DCC0;
  v180 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v183 = v184;
  sub_1D0BFB1AC(a2, &v185, &v209, &v180, "2");
  if (fabs(v8) <= 0.000000015)
  {
    return 0;
  }

  sub_1D0BBA094(v206, a3);
  v187 = 0x100000003;
  v186 = xmmword_1D0E7DCC0;
  v185 = &unk_1F4CDEB28;
  v188 = &v189;
  v211 = 0x100000134;
  v210 = xmmword_1D0E7DD20;
  v209 = &unk_1F4CDEC90;
  v212 = v213;
  v182 = 0x100000003;
  v181 = xmmword_1D0E7DCC0;
  v180 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v183 = v184;
  sub_1D0BFB1AC(v206, &v185, &v209, &v180, "2");
  if (fabs(v9.f64[0]) <= 0.000000015)
  {
    return 0;
  }

  v211 = 0x100000003;
  v210 = xmmword_1D0E7DCC0;
  v209 = &unk_1F4CDEB28;
  v212 = v213;
  v9.f64[0] = 1.0 / v9.f64[0];
  sub_1D0B8930C(v206, &v209, v9);
  sub_1D0B894B0(v206, &v209);
  v203 = 0x100000003;
  v11 = v205;
  v201 = &unk_1F4CDEB28;
  v204 = v205;
  v13.i64[1] = 0x300000003;
  v202 = xmmword_1D0E7DCC0;
  v205[1] = 0;
  v205[0] = 0;
  v205[2] = 0x3FF0000000000000;
  v12 = v207;
  v13.i64[0] = 0;
  if (v207 >= 1)
  {
    v14 = v208;
    do
    {
      v15 = *v14++;
      v10.i64[0] = v15;
      v16 = *v11++;
      *v13.i64 = *v13.i64 + *v10.i64 * v16;
      --v12;
    }

    while (v12);
  }

  if ((*(a1 + 6721) & 1) == 0)
  {
    *v13.i64 = fabs(*v13.i64);
    v10.i64[0] = qword_1EE054C70;
    if (*v13.i64 < *&qword_1EE054C70)
    {
      v177 = 0x100000003;
      v175 = &unk_1F4CDEB28;
      v178 = v179;
      v176 = xmmword_1D0E7DCC0;
      memset(v179, 0, 24);
      if (*(a1 + 8144) == 1)
      {
        sub_1D0B894B0(&v175, a1 + 7824);
        v17 = *(*(a1 + 232) + 1160);
        v18 = *(a1 + 288);
        v19 = *(a1 + 296);
        v20 = *(a1 + 304);
        v187 = 0x100000003;
        v186 = xmmword_1D0E7DCC0;
        v185 = &unk_1F4CDEB28;
        v188 = &v189;
        v211 = 0x100000134;
        v210 = xmmword_1D0E7DD20;
        v209 = &unk_1F4CDEC90;
        v212 = v213;
        v182 = 0x100000003;
        v181 = xmmword_1D0E7DCC0;
        v180 = COERCE_DOUBLE(&unk_1F4CDEB28);
        v183 = v184;
        sub_1D0BFB1AC(&v175, &v185, &v209, &v180, "2");
        if (fabs(v21.f64[0]) > 0.000000015)
        {
          v211 = 0x100000003;
          v210 = xmmword_1D0E7DCC0;
          v209 = &unk_1F4CDEB28;
          v212 = v213;
          v21.f64[0] = 1.0 / v21.f64[0];
          sub_1D0B8930C(&v175, &v209, v21);
          sub_1D0B894B0(&v175, &v209);
          if (raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(v22, &v201, &v175, a3))
          {
            sub_1D0BFA9C4(3, 3, &v209);
            sub_1D0B894B0(a1 + 792, &v209);
            sub_1D0BFA9C4(3, 3, &v209);
            sub_1D0B894B0(a1 + 536, &v209);
            raven::RavenDeviceAttitudeActiveObject::UDFactor3x3(v23, a1 + 648, a1 + 792, a1 + 536);
            *(a1 + 904) = *a4;
            *(a1 + 6721) = 1;
            *(a1 + 7320) = 0;
            cnrotation::CNRotation::RotationMatrix((a1 + 760), &v209);
            if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
            {
              LOWORD(v185) = 12;
              LOBYTE(v180) = 1;
              v30 = *(a4 + 8) + *a4;
              v31 = &v212[SHIDWORD(v210)];
              v32 = &v212[2 * SHIDWORD(v210)];
              v33 = *v32;
              v34 = *v31;
              v35 = v31[1];
              v36 = v31[2];
              v37 = v32[2];
              v38 = *(a1 + 680);
              v39 = *(a1 + 668);
              v40 = &v38[v39];
              v41 = &v38[2 * v39];
              v42 = *(a3 + 32);
              v43 = *v42;
              v44 = *(v42 + 2);
              v45 = *(a2 + 32);
              v46 = *v178;
              v156 = v178[2];
              v155 = v204[2];
              v154 = *v204;
              v152 = *(v45 + 2);
              v150 = *v45;
              v146 = v40[2];
              v148 = v41[2];
              v142 = v38[((2 * v39) | 1)];
              v144 = v38[2];
              v138 = v38[1];
              v140 = v40[1];
              v134 = *v40;
              v136 = *v41;
              v132 = *v38;
              v130 = v212[2];
              v128 = v212[(2 * HIDWORD(v210)) | 1];
              v126 = v212[1];
              v123 = *v212;
              cnprint::CNPrinter::Print(&v185, &v180, "DevAtt,Device-Vehicle Attitude Initialization,t,%lf,type,%hu,Rb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aVx,%.3lf,aVy,%.3lf,aVz,%.3lf,aBx,%.3lf,aBy,%.3lf,aBz,%.3lf,aUnc,%.3lf,rVx,%.3lf,rVy,%.3lf,rVz,%.3lf,rBx,%.3lf,rBy,%.3lf,rBz,%.3lf,rUnc,%.3lf", v25, v26, v27, v28, v29, SLOBYTE(v30));
            }

            return 1;
          }
        }
      }

      return 0;
    }
  }

  if (!*(a1 + 6721))
  {
    return 0;
  }

  v48 = CNTimeSpan::operator-(a4, (a1 + 904), v13, v10);
  v50.f64[0] = (v49 + v48) * (*(*(a1 + 232) + 1168) * *(*(a1 + 232) + 1168) * 0.0174532925 * 0.0174532925);
  v198 = 0x100000003;
  v197 = xmmword_1D0E7DCC0;
  v196 = &unk_1F4CDEB28;
  v199 = &v200;
  sub_1D0B8930C(&unk_1EE054D10, &v196, v50);
  v187 = 0x300000003;
  v185 = &unk_1F4CD5DD0;
  v188 = &v189;
  v186 = xmmword_1D0E76C10;
  v190 = 0u;
  v191 = 0;
  v193 = 0u;
  v189 = 0x3FF0000000000000;
  v192 = 0x3FF0000000000000;
  v194 = 0;
  v195 = 0x3FF0000000000000;
  v51 = raven::RavenDeviceAttitudeActiveObject::ThorntonTemporalUpdate(a1, &v185, &v196);
  if (!v51)
  {
    if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
    {
      LOWORD(v209) = 12;
      LOBYTE(v180) = 1;
      v108 = *(a4 + 8) + *a4;
      cnprint::CNPrinter::Print(&v209, &v180, "DevAtt, reset Device-Vehicle filter for invalid propagation,time,%lf,type,%hu", v103, v104, v105, v106, v107, SLOBYTE(v108));
    }

    v47 = 0;
    goto LABEL_39;
  }

  v182 = 0x300000003;
  v181 = xmmword_1D0E76C10;
  v180 = COERCE_DOUBLE(&unk_1F4CD5DD0);
  v183 = v184;
  sub_1D0B89390(a1 + 792, a1 + 536, &v180);
  v52 = *(a1 + 804);
  v53 = *(a1 + 800);
  v177 = 0x300000003;
  v175 = &unk_1F4CD5DD0;
  *&v176 = __PAIR64__(v53, v52);
  DWORD2(v176) = v53 * v52;
  HIDWORD(v176) = v52;
  v178 = v179;
  sub_1D0BD2018(a1 + 792, &v175);
  v211 = 0x300000003;
  v210 = xmmword_1D0E76C10;
  v209 = &unk_1F4CD5DD0;
  v212 = v213;
  sub_1D0B89390(&v180, &v175, &v209);
  sub_1D0B894B0(a1 + 648, &v209);
  *(a1 + 904) = *a4;
  cnrotation::Inv((a1 + 760), v174);
  sub_1D0B88A54(v174, a3, &v209);
  sub_1D0C51690(v172, &v209);
  v182 = 0x100000003;
  v181 = xmmword_1D0E7DCC0;
  v180 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v183 = v184;
  v211 = 0x100000134;
  v210 = xmmword_1D0E7DD20;
  v209 = &unk_1F4CDEC90;
  v212 = v213;
  v177 = 0x100000003;
  v176 = xmmword_1D0E7DCC0;
  v175 = &unk_1F4CDEB28;
  v178 = v179;
  sub_1D0BFB1AC(a2, &v180, &v209, &v175, "2");
  v169 = 0x100000003;
  v168 = xmmword_1D0E7DCC0;
  v167 = &unk_1F4CDEB28;
  v170 = &v171;
  v55.f64[0] = 1.0 / v54;
  sub_1D0B8930C(a2, &v167, v55);
  v164 = 0x100000003;
  v163 = xmmword_1D0E7DCC0;
  v162 = &unk_1F4CDEB28;
  v165 = &v166;
  sub_1D0BA5A78(&v167, v172, &v162);
  v56 = DWORD2(v168);
  v57 = 0.0;
  v58 = 0.0;
  if (SDWORD2(v168) >= 1)
  {
    v59 = v170;
    v60 = v173;
    do
    {
      v61 = *v59++;
      v62 = v61;
      v63 = *v60++;
      v58 = v58 + v62 * v63;
      --v56;
    }

    while (v56);
  }

  v65 = fabs(acos(v58));
  v66 = *(a1 + 656);
  if (v66 >= 1)
  {
    v67 = 0;
    v57 = 0.0;
    do
    {
      v57 = v57 + *(*(a1 + 680) + 8 * v67);
      v67 += *(a1 + 668) + 1;
      --v66;
    }

    while (v66);
  }

  v68 = sqrt(v57) * *(*(a1 + 232) + 1184);
  if (v68 > 0.523598776)
  {
    v68 = 0.523598776;
  }

  v47 = v65 <= v68;
  if (v65 <= v68)
  {
    *(a1 + 7320) = 0;
    sub_1D0E24888(&v209, *v173, v173[1], v173[2]);
    v69.f64[0] = a5 * a5;
    sub_1D0C51FB4(&unk_1EE054D10, v161, v69);
    raven::RavenDeviceAttitudeActiveObject::biermanObservationalUpdate3X3(a1, &v209, v161, &v162, v160);
    raven::RavenDeviceAttitudeActiveObject::QuaternionFromRotationVector(v160, &v175);
    v159[0] = v174[0];
    v159[1] = v174[1];
    cnquaternion::CNQuaternion::operator*(&v175, v159, &v180);
    v70 = sqrt(*&v181 * *&v181 + v180 * v180 + *(&v181 + 1) * *(&v181 + 1) + *&v182 * *&v182);
    v71 = 1.0;
    v72 = 0.0;
    v73 = 0.0;
    v74 = 0.0;
    v75 = 0.0;
    v76 = 1.0;
    if (fabs(v70) >= 2.22044605e-16)
    {
      v73 = v180 / v70;
      v74 = *&v181 / v70;
      v75 = *(&v181 + 1) / v70;
      v76 = *&v182 / v70;
    }

    v77 = sqrt(v74 * v74 + v73 * v73 + v75 * v75 + v76 * v76);
    v78 = 0.0;
    v79 = 0.0;
    if (fabs(v77) >= 2.22044605e-16)
    {
      v72 = -v73 / v77;
      v78 = -v74 / v77;
      v79 = -v75 / v77;
      v71 = v76 / v77;
    }

    *(a1 + 760) = v72;
    *(a1 + 768) = v78;
    *(a1 + 776) = v79;
    *(a1 + 784) = v71;
    sub_1D0C1B688(a1 + 792, a1 + 536, &v175);
    sub_1D0C1B708(a1 + 792, v159);
    sub_1D0C1B688(&v175, v159, &v180);
    sub_1D0B894B0(a1 + 648, &v180);
    cnrotation::CNRotation::RotationMatrix((a1 + 760), &v180);
    if (cnprint::CNPrinter::GetLogLevel(v80) <= 1)
    {
      LOWORD(v175) = 12;
      LOBYTE(v159[0]) = 1;
      v86 = *(a4 + 8) + *a4;
      v87 = &v183[SHIDWORD(v181)];
      v88 = &v183[2 * SHIDWORD(v181)];
      v89 = *v88;
      v90 = *v87;
      v91 = v87[1];
      v92 = v87[2];
      v93 = v88[2];
      v94 = *(a1 + 680);
      v95 = *(a1 + 668);
      v96 = &v94[v95];
      v97 = &v94[2 * v95];
      v98 = *(a3 + 32);
      v99 = *v98;
      v100 = *(v98 + 2);
      v101 = *(a2 + 32);
      v153 = *(v101 + 2);
      v151 = *v101;
      v147 = v96[2];
      v149 = v97[2];
      v143 = v94[((2 * v95) | 1)];
      v145 = v94[2];
      v139 = v94[1];
      v141 = v96[1];
      v135 = *v96;
      v137 = *v97;
      v133 = *v94;
      v131 = v183[2];
      v129 = v183[(2 * HIDWORD(v181)) | 1];
      v127 = v183[1];
      v124 = *v183;
      cnprint::CNPrinter::Print(&v175, v159, "DevAtt,Device-Vehicle Attitude Updated,t,%lf,type,%hu,Rb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aVx,%.3lf,aVy,%.3lf,aVz,%.3lf,aBx,%.3lf,aBy,%.3lf,aBz,%.3lf,aUnc,%.3lf", v81, v82, v83, v84, v85, SLOBYTE(v86));
    }
  }

  else
  {
    ++*(a1 + 7320);
    LogLevel = cnprint::CNPrinter::GetLogLevel(v64);
    if (LogLevel <= 1)
    {
      LOWORD(v209) = 12;
      LOBYTE(v180) = 1;
      v115 = *(a4 + 8) + *a4;
      v125 = *(a1 + 7320);
      cnprint::CNPrinter::Print(&v209, &v180, "DevAtt, Too large Estimated-Observed Attitude Innovation,time,%lf,type,%hu,outRangeCount,%u", v110, v111, v112, v113, v114, SLOBYTE(v115));
    }

    if (*(a1 + 7320) >= *(*(a1 + 232) + 1192))
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v209) = 12;
        LOBYTE(v180) = 1;
        v121 = *(a4 + 8) + *a4;
        v122 = *(a1 + 7320);
        cnprint::CNPrinter::Print(&v209, &v180, "DevAtt,t,%lf,reset Device-Vehicle filter for consecutive %u out of range measurements", v116, v117, v118, v119, v120, SLOBYTE(v121));
      }

LABEL_39:
      *(a1 + 7320) = 0;
      *(a1 + 6721) = 0;
    }
  }

  return v47;
}

BOOL raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(uint64_t a1, char **a2, double a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a2;
  if (*a2 != v4)
  {
    v6 = a3 < 0.0 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v6 || (*&a3 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v9 = 1.0 / *(*(a1 + 232) + 1144);
      v10 = (COERCE__INT64(fabs(v9)) - 0x10000000000000) >> 53;
      v11 = v9 < 0.0 || v10 > 0x3FE;
      if (!v11 || (*&v9 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v14 = 0;
        v8 = 1.0 / *(*(a1 + 232) + 1144);
        v15 = 1.0 / v8 / (1.0 / (a3 * 6.28318531) + 1.0 / v8);
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v16 = 1.0 - v15;
        v17 = 0.0;
        do
        {
          v18 = *(v4 - 1);
          v4 -= 8;
          v19 = v18;
          v20 = v16 * v17 + v15 * v18;
          if (v14)
          {
            v17 = v20;
          }

          else
          {
            v17 = v19;
          }

          v42 = v17;
          sub_1D0C56108(&v43, &v42);
          v14 = 1;
        }

        while (v4 != v5);
        v21 = *a2;
        v22 = (a2[1] - *a2) >> 3;
        v23 = v22 == *(&v45 + 1);
        if (v22 != *(&v45 + 1))
        {
          goto LABEL_45;
        }

        v24 = v45 >> 9;
        v25 = (*(&v43 + 1) + 8 * (v45 >> 9));
        if (v44 == *(&v43 + 1))
        {
          if (v24 != (v45 + *(&v45 + 1)) >> 9)
          {
            v30 = 0;
            v27 = 0;
            v29 = (*(&v43 + 1) + 8 * ((v45 + *(&v45 + 1)) >> 9));
            v26 = *v25;
            goto LABEL_37;
          }
        }

        else
        {
          v26 = *v25;
          v27 = (*v25 + 8 * (v45 & 0x1FF));
          v28 = (v45 + *(&v45 + 1)) >> 9;
          v29 = (*(&v43 + 1) + 8 * v28);
          v30 = *v29 + 8 * ((v45 + *(&v45 + 1)) & 0x1FF);
          if (v27 != v30)
          {
            v31 = 0;
            v32 = 0.0;
            v33 = *v25;
            v34 = *(&v43 + 1) + 8 * (v45 >> 9);
            v35 = (*v25 + 8 * (v45 & 0x1FF));
            do
            {
              v32 = v16 * v32 + v15 * *v35;
              if ((v31 & 1) == 0)
              {
                v32 = *v35;
              }

              *v35++ = v32;
              if (v35 - v33 == 4096)
              {
                v36 = *(v34 + 8);
                v34 += 8;
                v33 = v36;
                v35 = v36;
              }

              v31 = 1;
            }

            while (v35 != v30);
            if (v24 == v28)
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          }

          if (v24 != v28)
          {
LABEL_37:
            v38 = v26 + 512;
            v39 = v38 - v27;
            if (v38 != v27)
            {
              memmove(v21, v27, v38 - v27);
            }

            v21 += v39;
            for (i = (v25 + 1); i != v29; ++i)
            {
              v41 = *i;
              memmove(v21, v41, 0x1000uLL);
              v21 += 4096;
            }

            v27 = *v29;
LABEL_43:
            if (v27 != v30)
            {
              memmove(v21, v27, v30 - v27);
            }
          }
        }

LABEL_45:
        sub_1D0C56D94(&v43);
        return v23;
      }
    }
  }

  return 0;
}

void sub_1D0E291C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0C56D94(va);
  _Unwind_Resume(a1);
}

BOOL raven::RavenDeviceAttitudeActiveObject::IsDecelerationToStop(raven::RavenDeviceAttitudeActiveObject *this)
{
  v5 = *(this + 951);
  if (v5 < 2)
  {
    return 0;
  }

  v42[331] = v4;
  v42[332] = v3;
  v42[343] = v1;
  v42[344] = v2;
  v8 = (*(*(this + 947) + (((v5 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v5 + *(this + 1900) - 1) & 0xF));
  v9 = sqrt(v8[195] * v8[195] + v8[194] * v8[194] + v8[196] * v8[196]);
  if (v9 > 1.0)
  {
    return 0;
  }

  v10 = (*(*v8 + 16))(v8);
  v12 = v11;
  v13 = v11;
  sub_1D0BAD0C8(v41);
  v14 = *(this + 950) + *(this + 951);
  v15 = *(this + 947);
  v16 = (v15 + 8 * (v14 >> 4));
  v17 = *(this + 948);
  v18 = v17 == v15 ? 0 : *v16 + 2656 * (v14 & 0xF);
  v19 = v10 || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v20 = !v19;
  while (1)
  {
    v21 = v17 == v15 ? 0 : *(v15 + ((*(this + 950) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(this + 950) & 0xFLL);
    if (v21 == v18)
    {
      break;
    }

    v22 = v18;
    if (v18 == *v16)
    {
      v22 = *(v16 - 1) + 42496;
    }

    v40[0] = (*(*(v22 - 2656) + 16))();
    v40[1] = v23;
    v39[0] = 0;
    v39[1] = 0x3FECCCCCCCCCCCCDLL;
    v26 = CNTimeSpan::operator+(v40, v39, v24, v25);
    if (v20 || !v26 && (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v28 = v10 <= v26, v10 == v26))
    {
      v28 = v13 <= v27;
    }

    if (!v28)
    {
      if (v18 == *v16)
      {
        v18 = *(v16 - 1) + 42496;
      }

      memcpy(v42, (v18 - 2648), 0xA51uLL);
      break;
    }

    if (v18 == *v16)
    {
      v29 = *--v16;
      v18 = v29 + 42496;
    }

    v18 -= 2656;
    v15 = *(this + 947);
    v17 = *(this + 948);
  }

  if (LOBYTE(v42[192]) != 1 || sqrt(v42[194] * v42[194] + v42[193] * v42[193] + v42[195] * v42[195]) > 1.0)
  {
    return 0;
  }

  v30 = *(this + 947);
  if (*(this + 948) == v30 || (v31 = *(this + 950), v32 = (v30 + 8 * (v31 >> 4)), v33 = *v32, v34 = &(*v32)[332 * (v31 & 0xF)], v35 = *(v30 + (((*(this + 951) + v31) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1902) + v31) & 0xF), v34 == v35))
  {
    v36 = -INFINITY;
  }

  else
  {
    v36 = -INFINITY;
    do
    {
      v37 = sqrt(v34[195] * v34[195] + v34[194] * v34[194] + v34[196] * v34[196]);
      if (v36 < v37)
      {
        v36 = v37;
      }

      v34 += 332;
      if (v34 - v33 == 42496)
      {
        v38 = v32[1];
        ++v32;
        v33 = v38;
        v34 = v38;
      }
    }

    while (v34 != v35);
  }

  return vabdd_f64(v36, v9) >= *(*(this + 29) + 1056);
}

BOOL raven::RavenDeviceAttitudeActiveObject::IsMovementStraight(raven::RavenDeviceAttitudeActiveObject *this)
{
  v23[0] = 0;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v20[0] = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v17[0] = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v2 = *(this + 832);
  v3 = 0.0;
  if (*(this + 833) == v2)
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v4 = *(this + 835);
    v5 = (v2 + 8 * (v4 / 0x1A));
    v6 = (*v5 + 152 * (v4 % 0x1A));
    v7 = *(v2 + 8 * ((*(this + 836) + v4) / 0x1A)) + 152 * ((*(this + 836) + v4) % 0x1A);
    v8 = 0.0;
    v9 = 0.0;
    if (v6 != v7)
    {
      do
      {
        sub_1D0B8954C(v23, v6 + 13, 1.0);
        sub_1D0B8954C(v20, v6 + 14, 1.0);
        sub_1D0B8954C(v17, v6 + 15, 1.0);
        v6 += 19;
        if ((v6 - *v5) == 3952)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v9 = *&v25[20];
      v8 = *&v22[20];
      v3 = *&v19[20];
    }
  }

  v11 = *(this + 29);
  v12 = *(v11 + 1104) * 0.0174532925 * 0.0174532925;
  v14 = v9 < v12 && v8 < v12 && v3 < v12;
  if (v14 && (v15 = *(v11 + 1096) * 0.0174532925, fabs(*&v25[4]) < v15) && fabs(*&v22[4]) < v15)
  {
    return fabs(*&v19[4]) < v15;
  }

  else
  {
    return 0;
  }
}

double sub_1D0E296D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1 && *(a2 + 8) == 3 && *(a2 + 12) == 1)
  {
    v16 = v3;
    v17 = v4;
    v8 = *(a2 + 32);
    v14 = *v8;
    v15 = *(v8 + 2);
    result = sub_1D0BED7A0(a1, &v14, v13);
    if (v10)
    {
      v11 = 0;
      *(a3 + 8) = xmmword_1D0E7DCC0;
      v12 = *(a3 + 32);
      do
      {
        result = v13[v11];
        *(v12 + v11 * 8) = result;
        ++v11;
      }

      while (v11 != 3);
    }
  }

  return result;
}

void raven::RavenDeviceAttitudeActiveObject::QuaternionFromRotationVector(uint64_t a1@<X1>, float64x2_t *a2@<X8>)
{
  v24 = 0x100000003;
  v22 = &unk_1F4CDEB28;
  v23 = xmmword_1D0E7DCC0;
  v25 = &v26;
  v19 = 0x100000134;
  v17 = &unk_1F4CDEC90;
  v18 = xmmword_1D0E7DD20;
  v20 = &v21;
  v14 = 0x100000003;
  v12 = &unk_1F4CDEB28;
  v13 = xmmword_1D0E7DCC0;
  v15 = &v16;
  sub_1D0BFB1AC(a1, &v22, &v17, &v12, "2");
  v5 = v4 * 0.5;
  v6 = fabs(v4 * 0.5);
  if (v6 == INFINITY)
  {
    v7 = NAN;
  }

  else if (v6 <= 0.01)
  {
    v7 = v5 * v5 / -6.0 + 1.0;
  }

  else
  {
    v7 = sin(v5) / v5;
  }

  v11 = v7 * 0.5;
  v8 = *(a1 + 32);
  v9 = v7 * 0.5 * v8[1].f64[0];
  v10 = cos(v5);
  *a2 = vmulq_n_f64(*v8, v11);
  a2[1].f64[0] = v9;
  a2[1].f64[1] = v10;
}

void raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(raven::RavenDeviceAttitudeActiveObject *this)
{
  *(this + 453) = 0u;
  v2 = *(this + 1006);
  v3 = *(this + 1007);
  if (v3 == v2)
  {
    v6 = (this + 8080);
    v3 = *(this + 1006);
  }

  else
  {
    v4 = *(this + 1009);
    v5 = &v2[v4 / 0x14];
    v6 = (this + 8080);
    v7 = v2[(*(this + 1010) + v4) / 0x14] + 200 * ((*(this + 1010) + v4) % 0x14);
    if (*v5 + 200 * (v4 % 0x14) != v7)
    {
      v8 = (*v5 + 200 * (v4 % 0x14));
      do
      {
        v9 = *v8;
        v8 += 25;
        (*v9)();
        if (v8 - *v5 == 4000)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v3 = *(this + 1007);
      v2 = *(this + 1006);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(this + 1006) + 8);
      *(this + 1006) = v2;
      v11 = (*(this + 1007) - v2) >> 3;
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
      goto LABEL_16;
    }

    v12 = 20;
  }

  *(this + 1009) = v12;
LABEL_16:
  *(this + 4044) = 1;
  v13 = *(this + 1013);
  v14 = *(this + 1014);
  *(this + 1017) = 0;
  v15 = (v14 - v13) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v13 = (*(this + 1013) + 8);
      *(this + 1013) = v13;
      v15 = (*(this + 1014) - v13) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 64;
  }

  else
  {
    if (v15 != 2)
    {
      return;
    }

    v16 = 128;
  }

  *(this + 1016) = v16;
}

BOOL raven::RavenDeviceAttitudeActiveObject::ThorntonTemporalUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v55 = 0x300000003;
  v53 = &unk_1F4CD5DD0;
  v54 = xmmword_1D0E76C10;
  v56 = v57;
  do
  {
    v5 = 0;
    v6 = *(a2 + 20);
    v7 = *(a2 + 32);
    do
    {
      if (v5)
      {
        v8 = 0;
        v9 = v4 + v6 * v5;
        v10 = *(v7 + 8 * v9);
        v11 = *(a1 + 824) + 8 * *(a1 + 812) * v5;
        v12 = (v7 + v3);
        do
        {
          v10 = v10 + *v12 * *(v11 + 8 * v8);
          *(v7 + 8 * v9) = v10;
          ++v8;
          v12 += v6;
        }

        while (v5 != v8);
      }

      v57[3 * v5++ + v4] = 0;
    }

    while (v5 != 3);
    v57[4 * v4++] = 0x3FF0000000000000;
    v3 += 8;
  }

  while (v4 != 3);
  v50 = 0x100000003;
  v48 = &unk_1F4CDEB28;
  v49 = xmmword_1D0E7DCC0;
  v51 = v52;
  v13 = *(a1 + 556) + 1;
  v14 = *(a1 + 568);
  v15 = *(a3 + 32);
  v16 = *(a2 + 20);
  v17 = *(a2 + 32);
  v18 = 2;
  for (i = 7; ; --i)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    *&v52[8 * v18] = 0;
    v23 = 0.0;
    v24 = i * 8;
    do
    {
      v25 = v23 + *(v7 + 8 * v18 + 8 * v20) * *(v7 + 8 * v18 + 8 * v20) * *(v14 + 8 * v21);
      *&v52[8 * v18] = v25;
      v23 = v25 + *(&v53 + v24) * *(&v53 + v24) * *(v15 + v22);
      *&v52[8 * v18] = v23;
      v24 += 24;
      v22 += 8;
      v21 += v13;
      v20 += v6;
    }

    while (v22 != 24);
    if (v23 <= 0.0)
    {
      break;
    }

    if (!v18)
    {
      v43 = 0;
      for (j = 0; j != 24; j += 8)
      {
        *(v14 + 8 * v43) = *&v52[j];
        v43 += v13;
      }

      return v23 > 0.0;
    }

    v26 = 0;
    v27 = *(a1 + 824) + 8 * v18 * *(a1 + 812);
    v28 = 5;
    do
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0.0;
      v33 = &v53;
      do
      {
        v34 = *&v33[v28] * *(v15 + v31);
        v31 += 8;
        v32 = v32 + *(v17 + 8 * v26 + 8 * v29) * *(v14 + 8 * v30) * *(v17 + 8 * v18 + 8 * v29) + v34 * *&v33[i];
        v33 += 3;
        v30 += v13;
        v29 += v16;
      }

      while (v31 != 24);
      *(v27 + 8 * v26) = v32 / *&v52[8 * v18];
      v35 = &v53;
      v36 = v17;
      v37 = 3;
      do
      {
        *(v36 + v28 * 8 - 40) = *(v36 + v28 * 8 - 40) - *(v27 + 8 * v26) * *(v36 + i * 8 - 40);
        *&v35[v28] = *&v35[v28] - *(v27 + 8 * v26) * *&v35[i];
        v35 += 3;
        v36 += 8 * v16;
        --v37;
      }

      while (v37);
      ++v26;
      ++v28;
    }

    while (v26 != v18);
    --v18;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v47 = 12;
    v46 = 1;
    cnprint::CNPrinter::Print(&v47, &v46, "D(%d) <= 0, matrix ! positive definite", v38, v39, v40, v41, v42, v18);
  }

  return v23 > 0.0;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::UDFactor3x3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a2 + 20);
  v6 = *(a2 + 32);
  v7 = 3;
  v8 = 2;
  v9 = 16;
  v10 = 24;
  do
  {
    v11 = 0;
    v12 = v8;
    v13 = *(a3 + 20);
    v14 = *(a3 + 32);
    v15 = *(a4 + 20) + 1;
    v16 = *(a4 + 32);
    v17 = v15 * v8;
    v18 = v12 + v12 * v13;
    v19 = v6 + 8 * v8 * v5;
    v20 = v14 + 8 * v8 * v13;
    v21 = (v14 + v9 + v10 * v13);
    v22 = 8 * v13;
    v23 = v8;
    do
    {
      v24 = *(v19 + 8 * v23);
      v25 = v21;
      v26 = v7 * v15;
      v27 = v4;
      v8 = v12 - 1;
      if (v12 <= 1)
      {
        do
        {
          v24 = v24 + -(v25[v11] * *(v16 + 8 * v26)) * *v25;
          v26 += v15;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v23 == v12)
      {
        *(v16 + 8 * v17) = v24;
        *(v14 + 8 * v18) = 0x3FF0000000000000;
      }

      else
      {
        *(v20 + 8 * v23) = v24 / *(v16 + 8 * v17);
      }

      --v11;
    }

    while (v23-- > 0);
    ++v4;
    --v7;
    v9 -= 8;
    v10 -= 8;
  }

  while (v12);
  return 1;
}

double sub_1D0E29F10(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEF6B8;
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
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = 1.0;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 128) = xmmword_1D0E87BC0;
  *(a1 + 144) = v2;
  *(a1 + 160) = v2;
  *(a1 + 176) = v2;
  *(a1 + 192) = v2;
  *(a1 + 208) = 0x7FF8000000000000;
  *(a1 + 216) = 1;
  return result;
}

void sub_1D0E29F7C(void *a1)
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
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
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
      v12 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 26;
  }

  a1[4] = v13;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::Configure(uint64x2_t *a1, uint64_t *a2, double a3, int8x16_t a4)
{
  if (a1[14].i8[0] == 1)
  {
    v54 = 12;
    v53 = 3;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v52 >= 0)
    {
      v11 = __p;
    }

    else
    {
      LOBYTE(v11) = __p[0];
    }

    cnprint::CNPrinter::Print(&v54, &v53, "Warning: %s configured more than once.", v6, v7, v8, v9, v10, v11);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[14].i8[0] = 0;
  v12 = *a2;
  if (!v12 || (*(v12 + 33) & 1) == 0)
  {
    v54 = 12;
    v53 = 4;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v52 >= 0)
    {
      v29 = __p;
    }

    else
    {
      LOBYTE(v29) = __p[0];
    }

    cnprint::CNPrinter::Print(&v54, &v53, "Error: %s could not be configured.", v24, v25, v26, v27, v28, v29);
LABEL_30:
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  a1[14].i64[1] = v12;
  v13 = *(v12 + 648);
  v14 = v13 <= 0.000000015 || (*(v12 + 648) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v14 || ((a4.i64[0] = *(v12 + 656), *a4.i64 > 0.000000015) ? (v15 = (*(v12 + 656) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v15 = 1), v15 || (*(v12 + 792) > 0.000000015 ? (v16 = (*(v12 + 792) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v16 = 1), v16)))
  {
    v54 = 12;
    v53 = 4;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v52 >= 0)
    {
      v22 = __p;
    }

    else
    {
      LOBYTE(v22) = __p[0];
    }

    v23 = a1[14].i64[1];
    v50 = *(v23 + 792);
    v49 = *(v23 + 648);
    cnprint::CNPrinter::Print(&v54, &v53, "Error: %s could not be configured because of invalid sensor sample period or input solution rate, accel sample period, %.3lf, gyro sample period, %.3lf, solution output rate, %.3lf", v17, v18, v19, v20, v21, v22);
    goto LABEL_30;
  }

  a1[454] = vcvtq_u64_f64(vmulq_n_f64(xmmword_1D0EA3190, 1.0 / v13));
  v31 = vcvtq_u64_f64(vmulq_n_f64(xmmword_1D0EA3190, 1.0 / *a4.i64));
  a1[455] = v31;
  a4.i64[0] = 3.0;
  *v31.i64 = *(v12 + 1048) * 3.0;
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, v31, a4);
  a1[456] = *__p;
  a1[457].i64[0] = 3 * (*(v12 + 792) * (*&a1[456].i64[1] + a1[456].i64[0]));
  if (*(v12 + 3672))
  {
    v37 = (v12 + 3680);
    if (*(v12 + 3703) < 0)
    {
      v37 = *v37;
    }

    if (sub_1D0D53E44(a1[74].i64, v37))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v54) = 4;
      v38 = "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load gravity parameters.";
LABEL_55:
      cnprint::CNPrinter::Print(__p, &v54, v38, v32, v33, v34, v35, v36, v48);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(v12 + 3668))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v54) = 4;
      v38 = "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load gravity parameters becasue of invalid model type.";
      goto LABEL_55;
    }

    if (sub_1D0D53F20(a1[74].i64, &unk_1D0EA31C0, &unk_1D0EA32BC, &unk_1D0EA33B8, &unk_1D0EA35B0, &unk_1D0EA37A8, &unk_1D0EA39A0))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v54) = 4;
      v38 = "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load EGM96 gravity parameters.";
      goto LABEL_55;
    }
  }

  a1[234].i32[0] = 1;
  v39 = a1[14].i64[1];
  if (*(v39 + 3668))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v54) = 4;
    v38 = "Error: RavenDeviceAttitudeActiveObject::Configure() failed to set EGM96 model constants.";
    goto LABEL_55;
  }

  a1[75] = xmmword_1D0E843E0;
  a1[76].i64[0] = 0x40E86A0000000000;
  v40 = *(v39 + 3704);
  if ((v40 - 11) <= 0xFFFFFFF6)
  {
    __assert_rtn("SetTruncationDegree", "sphericalharmonicsgravitymodel.h", 471, "trunc >= 2 && trunc <= max_degree");
  }

  a1[244].i32[0] = v40;
  if ((a1[74].i8[8] & 1) == 0)
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v54) = 4;
    v38 = "Error: RavenDeviceAttitudeActiveObject::Configure() gravity parameters are invalid.";
    goto LABEL_55;
  }

  sub_1D0D87D70(a1[245].i64, a1[74].i64);
  a1[505].i16[4] = 1;
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  a1[14].i8[0] = 1;
  v41 = (*(a1->i64[0] + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v41) <= 1)
  {
    v54 = 12;
    v53 = 1;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v52 >= 0)
    {
      v47 = __p;
    }

    else
    {
      LOBYTE(v47) = __p[0];
    }

    cnprint::CNPrinter::Print(&v54, &v53, "%s configured successfully.", v42, v43, v44, v45, v46, v47);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E2A5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::AttitudeEvent *a2)
{
  if (*(this + 224))
  {
    if (*(a2 + 217) == 2)
    {
      v4 = *(this + 951);
      if (v4)
      {
        v5 = *(*(this + 947) + (((v4 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v4 + *(this + 1900) - 1) & 0xF);
        if (*(v5 + 209) == 2 && *(v5 + 1464) == 1 && *(v5 + 1544) == 1 && *(a2 + 216) == 1)
        {
          v71 = 0x300000003;
          v69 = &unk_1F4CD5DD0;
          v70 = xmmword_1D0E76C10;
          v72 = &v73;
          sub_1D0BD2CA4(&v66, *(v5 + 1472), *(v5 + 1480), *(v5 + 1488));
          if (v67)
          {
            sub_1D0B894B0(&v69, &v68);
            v64 = 0u;
            v65 = 0u;
            if (&v64 != (a2 + 104))
            {
              v11 = *(a2 + 120);
              v64 = *(a2 + 104);
              v65 = v11;
            }

            *(this + 6722) = 1;
            sub_1D0D260A4(v63, &v69);
            cnrotation::Cat(&v64, v63, &__p);
            if ((this + 920) == &__p)
            {
              v12 = *(this + 115);
              v13 = *(this + 116);
              v14 = *(this + 117);
              v15 = *(this + 118);
            }

            else
            {
              v12 = *&__p;
              v13 = *&v46;
              *(this + 115) = *&__p;
              *(this + 116) = v13;
              v14 = *(&v46 + 1);
              v15 = *&v47;
              *(this + 117) = *(&v46 + 1);
              *(this + 118) = v15;
            }

            sub_1D0E29F10(&__p);
            v48 = *(a2 + 40);
            v49 = *(a2 + 56);
            v50 = *(a2 + 72);
            v51 = *(a2 + 88);
            v46 = *(a2 + 8);
            v47 = *(a2 + 24);
            v39 = sqrt(v13 * v13 + v12 * v12 + v14 * v14 + v15 * v15);
            if (fabs(v39) >= 2.22044605e-16)
            {
              v41 = v12 / v39;
              v42 = v13 / v39;
              v43 = v14 / v39;
              v40 = v15 / v39;
            }

            else
            {
              v40 = 1.0;
              v41 = 0.0;
              v42 = 0.0;
              v43 = 0.0;
            }

            v52 = v41;
            v53 = v42;
            v54 = v43;
            v55 = v40;
            v56 = *(a2 + 136);
            v57 = *(a2 + 152);
            v58 = *(a2 + 168);
            v59 = *(a2 + 184);
            v60 = *(a2 + 200);
            v61 = *(a2 + 216);
            v62 = 1;
            sub_1D0E2AA5C(this + 952, &__p);
          }

          else
          {
            LOWORD(__p) = 12;
            LOBYTE(v64) = 4;
            cnprint::CNPrinter::Print(&__p, &v64, "DevAtt, Rotation, cannot derive ecef to enu Jacobian", v6, v7, v8, v9, v10, v44);
          }
        }
      }
    }

    else
    {
      v22 = (this + 952);
      if (*(this + 1176) == 1)
      {
        v23 = *(a2 + 24);
        *(this + 60) = *(a2 + 8);
        *(this + 61) = v23;
        v24 = *(a2 + 40);
        v25 = *(a2 + 56);
        v26 = *(a2 + 72);
        *(this + 65) = *(a2 + 88);
        *(this + 63) = v25;
        *(this + 64) = v26;
        *(this + 62) = v24;
        if (v22 != a2)
        {
          *(this + 66) = *(a2 + 104);
          *(this + 67) = *(a2 + 120);
        }

        v27 = *(a2 + 136);
        *(this + 69) = *(a2 + 152);
        *(this + 68) = v27;
        v28 = *(a2 + 168);
        v29 = *(a2 + 184);
        v30 = *(a2 + 200);
        *(this + 584) = *(a2 + 108);
        *(this + 72) = v30;
        *(this + 71) = v29;
        *(this + 70) = v28;
      }

      else
      {
        *(this + 119) = &unk_1F4CEF6B8;
        v31 = *(a2 + 24);
        *(this + 60) = *(a2 + 8);
        *(this + 61) = v31;
        v32 = *(a2 + 40);
        v33 = *(a2 + 56);
        v34 = *(a2 + 72);
        *(this + 65) = *(a2 + 88);
        *(this + 63) = v33;
        *(this + 64) = v34;
        *(this + 62) = v32;
        *(this + 66) = 0u;
        *(this + 67) = 0u;
        if (v22 != a2)
        {
          *(this + 66) = *(a2 + 104);
          *(this + 67) = *(a2 + 120);
        }

        v35 = *(a2 + 136);
        *(this + 69) = *(a2 + 152);
        *(this + 68) = v35;
        v36 = *(a2 + 168);
        v37 = *(a2 + 184);
        v38 = *(a2 + 200);
        *(this + 584) = *(a2 + 108);
        *(this + 72) = v38;
        *(this + 71) = v37;
        *(this + 70) = v36;
        *(this + 1176) = 1;
      }
    }
  }

  else
  {
    v66 = 12;
    LOBYTE(v69) = 3;
    (*(*this + 16))(&__p, this, a2);
    if (v46 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      LOBYTE(p_p) = __p;
    }

    cnprint::CNPrinter::Print(&v66, &v69, "Warning: %s is not configured yet.", v16, v17, v18, v19, v20, p_p);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }
  }
}

__n128 sub_1D0E2AA5C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 224) == 1)
  {
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a1 + 56) = v4;
    *(a1 + 40) = v3;
    if (a1 != a2)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v6 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v6;
    result = *(a2 + 168);
    v8 = *(a2 + 184);
    v9 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v9;
    *(a1 + 184) = v8;
    *(a1 + 168) = result;
  }

  else
  {
    *a1 = &unk_1F4CEF6B8;
    v10 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v10;
    v11 = *(a2 + 40);
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v13;
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    if (a1 != a2)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v14 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v14;
    result = *(a2 + 168);
    v15 = *(a2 + 184);
    v16 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v16;
    *(a1 + 184) = v15;
    *(a1 + 168) = result;
    *(a1 + 224) = 1;
  }

  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::UserGaitEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 7240) == 1)
    {
      *(this + 444) = *(a2 + 8);
      v2 = *(a2 + 24);
      v3 = *(a2 + 40);
      v4 = *(a2 + 56);
      *(this + 448) = *(a2 + 72);
      *(this + 447) = v4;
      *(this + 446) = v3;
      *(this + 445) = v2;
      result = *(a2 + 88);
      v6 = *(a2 + 104);
      v7 = *(a2 + 120);
      *(this + 904) = *(a2 + 17);
      *(this + 451) = v7;
      *(this + 450) = v6;
      *(this + 449) = result;
    }

    else
    {
      *(this + 887) = &unk_1F4CEF360;
      *(this + 444) = *(a2 + 8);
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      v16 = *(a2 + 56);
      *(this + 448) = *(a2 + 72);
      *(this + 447) = v16;
      *(this + 446) = v15;
      *(this + 445) = v14;
      result = *(a2 + 88);
      v17 = *(a2 + 104);
      v18 = *(a2 + 120);
      *(this + 904) = *(a2 + 17);
      *(this + 451) = v18;
      *(this + 450) = v17;
      *(this + 449) = result;
      *(this + 7240) = 1;
    }
  }

  else
  {
    v22 = 12;
    v21 = 3;
    (*(*this + 16))(__p);
    if (v20 >= 0)
    {
      v13 = __p;
    }

    else
    {
      LOBYTE(v13) = __p[0];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "Warning: %s is not configured yet.", v8, v9, v10, v11, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0E2AD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeviceAttitudeActiveObject::Reset(raven::RavenDeviceAttitudeActiveObject *this)
{
  v2 = *(this + 31);
  v3 = *(this + 32);
  if (v3 == v2)
  {
    v6 = (this + 280);
    v3 = *(this + 31);
  }

  else
  {
    v4 = *(this + 34);
    v5 = &v2[v4 / 0x1A];
    v6 = (this + 280);
    v7 = v2[(*(this + 35) + v4) / 0x1A] + 152 * ((*(this + 35) + v4) % 0x1A);
    if (*v5 + 152 * (v4 % 0x1A) != v7)
    {
      v8 = (*v5 + 152 * (v4 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v5 == 3952)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = *(this + 31);
      v3 = *(this + 32);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = *(this + 32);
      v2 = (*(this + 31) + 8);
      *(this + 31) = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 26;
  }

  *(this + 34) = v13;
LABEL_16:
  *(this + 18) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(this + 38) = 0x3FB999999999999ALL;
  *(this + 520) = 0u;
  *(this + 904) = 0u;
  v14 = *(this + 832);
  v15 = *(this + 833);
  if (v15 == v14)
  {
    v18 = (this + 6688);
    v15 = *(this + 832);
  }

  else
  {
    v16 = *(this + 835);
    v17 = &v14[v16 / 0x1A];
    v18 = (this + 6688);
    v19 = v14[(*(this + 836) + v16) / 0x1A] + 152 * ((*(this + 836) + v16) % 0x1A);
    if (*v17 + 152 * (v16 % 0x1A) != v19)
    {
      v20 = (*v17 + 152 * (v16 % 0x1A));
      do
      {
        v21 = *v20;
        v20 += 19;
        (*v21)();
        if (v20 - *v17 == 3952)
        {
          v22 = v17[1];
          ++v17;
          v20 = v22;
        }
      }

      while (v20 != v19);
      v15 = *(this + 833);
      v14 = *(this + 832);
    }
  }

  *v18 = 0;
  v23 = v15 - v14;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v14);
      v14 = (*(this + 832) + 8);
      *(this + 832) = v14;
      v23 = (*(this + 833) - v14) >> 3;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v24 = 13;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_31;
    }

    v24 = 26;
  }

  *(this + 835) = v24;
LABEL_31:
  *(this + 837) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 419) = _Q0;
  if (*(this + 1176) == 1)
  {
    *(this + 1176) = 0;
  }

  *(this + 3360) = 0;
  *(this + 6723) = 0;
  *(this + 7080) = 0u;
  if (*(this + 7240) == 1)
  {
    *(this + 7240) = 0;
  }

  *(this + 1830) = 0;
  *(this + 458) = xmmword_1D0E87B90;
  *(this + 459) = 0uLL;
  *(this + 460) = 0uLL;
  *(this + 461) = 0uLL;
  *(this + 462) = 0uLL;
  *(this + 463) = 0uLL;
  *(this + 464) = 0uLL;
  *(this + 465) = 0uLL;
  *(this + 466) = 0uLL;
  v30 = *(this + 935);
  v31 = *(this + 936);
  if (v31 == v30)
  {
    v34 = (this + 7512);
    v31 = *(this + 935);
  }

  else
  {
    v32 = *(this + 938);
    v33 = &v30[v32 / 0x1A];
    v34 = (this + 7512);
    v35 = v30[(*(this + 939) + v32) / 0x1A] + 152 * ((*(this + 939) + v32) % 0x1A);
    if (*v33 + 152 * (v32 % 0x1A) != v35)
    {
      v36 = (*v33 + 152 * (v32 % 0x1A));
      do
      {
        v37 = *v36;
        v36 += 19;
        (*v37)();
        if (v36 - *v33 == 3952)
        {
          v38 = v33[1];
          ++v33;
          v36 = v38;
        }
      }

      while (v36 != v35);
      v31 = *(this + 936);
      v30 = *(this + 935);
    }
  }

  *v34 = 0;
  v39 = v31 - v30;
  if (v39 >= 3)
  {
    do
    {
      operator delete(*v30);
      v30 = (*(this + 935) + 8);
      *(this + 935) = v30;
      v39 = (*(this + 936) - v30) >> 3;
    }

    while (v39 > 2);
  }

  if (v39 == 1)
  {
    v40 = 13;
  }

  else
  {
    if (v39 != 2)
    {
      goto LABEL_50;
    }

    v40 = 26;
  }

  *(this + 938) = v40;
LABEL_50:
  v41 = *(this + 941);
  v42 = *(this + 942);
  if (v42 == v41)
  {
    v45 = (this + 7560);
    v42 = *(this + 941);
  }

  else
  {
    v43 = *(this + 944);
    v44 = &v41[v43 / 0x1A];
    v45 = (this + 7560);
    v46 = v41[(*(this + 945) + v43) / 0x1A] + 152 * ((*(this + 945) + v43) % 0x1A);
    if (*v44 + 152 * (v43 % 0x1A) != v46)
    {
      v47 = (*v44 + 152 * (v43 % 0x1A));
      do
      {
        v48 = *v47;
        v47 += 19;
        (*v48)();
        if (v47 - *v44 == 3952)
        {
          v49 = v44[1];
          ++v44;
          v47 = v49;
        }
      }

      while (v47 != v46);
      v42 = *(this + 942);
      v41 = *(this + 941);
    }
  }

  *v45 = 0;
  v50 = v42 - v41;
  if (v50 >= 3)
  {
    do
    {
      operator delete(*v41);
      v41 = (*(this + 941) + 8);
      *(this + 941) = v41;
      v50 = (*(this + 942) - v41) >> 3;
    }

    while (v50 > 2);
  }

  if (v50 == 1)
  {
    v51 = 13;
  }

  else
  {
    if (v50 != 2)
    {
      goto LABEL_65;
    }

    v51 = 26;
  }

  *(this + 944) = v51;
LABEL_65:
  v52 = *(this + 947);
  v53 = *(this + 948);
  if (v53 == v52)
  {
    v57 = (this + 7608);
    v53 = *(this + 947);
  }

  else
  {
    v54 = *(this + 950);
    v55 = &v52[v54 >> 4];
    v56 = *v55 + 2656 * (v54 & 0xF);
    v57 = (this + 7608);
    v58 = *(v52 + (((*(this + 951) + v54) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1902) + v54) & 0xF);
    if (v56 != v58)
    {
      do
      {
        (**v56)(v56);
        v56 += 2656;
        if (v56 - *v55 == 42496)
        {
          v59 = v55[1];
          ++v55;
          v56 = v59;
        }
      }

      while (v56 != v58);
      v53 = *(this + 948);
      v52 = *(this + 947);
    }
  }

  *v57 = 0;
  v60 = v53 - v52;
  if (v60 >= 3)
  {
    do
    {
      operator delete(*v52);
      v52 = (*(this + 947) + 8);
      *(this + 947) = v52;
      v60 = (*(this + 948) - v52) >> 3;
    }

    while (v60 > 2);
  }

  if (v60 == 1)
  {
    v61 = 8;
  }

  else
  {
    if (v60 != 2)
    {
      goto LABEL_79;
    }

    v61 = 16;
  }

  *(this + 950) = v61;
LABEL_79:
  v62 = *(this + 953);
  v63 = *(this + 954);
  if (v63 == v62)
  {
    v67 = (this + 7656);
    v63 = *(this + 953);
  }

  else
  {
    v64 = *(this + 956);
    v65 = &v62[v64 >> 4];
    v66 = *v65 + 2656 * (v64 & 0xF);
    v67 = (this + 7656);
    v68 = *(v62 + (((*(this + 957) + v64) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1914) + v64) & 0xF);
    if (v66 != v68)
    {
      do
      {
        (**v66)(v66);
        v66 += 2656;
        if (v66 - *v65 == 42496)
        {
          v69 = v65[1];
          ++v65;
          v66 = v69;
        }
      }

      while (v66 != v68);
      v63 = *(this + 954);
      v62 = *(this + 953);
    }
  }

  *v67 = 0;
  v70 = v63 - v62;
  if (v70 >= 3)
  {
    do
    {
      operator delete(*v62);
      v62 = (*(this + 953) + 8);
      *(this + 953) = v62;
      v70 = (*(this + 954) - v62) >> 3;
    }

    while (v70 > 2);
  }

  if (v70 == 1)
  {
    v71 = 8;
  }

  else
  {
    if (v70 != 2)
    {
      goto LABEL_93;
    }

    v71 = 16;
  }

  *(this + 956) = v71;
LABEL_93:
  raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(this);
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
  v72 = *(this + 965);
  v73 = *(this + 966);
  if (v73 == v72)
  {
    v76 = (this + 7752);
    v73 = *(this + 965);
  }

  else
  {
    v74 = *(this + 968);
    v75 = &v72[v74 / 0x1A];
    v76 = (this + 7752);
    v77 = v72[(*(this + 969) + v74) / 0x1A] + 152 * ((*(this + 969) + v74) % 0x1A);
    if (*v75 + 152 * (v74 % 0x1A) != v77)
    {
      v78 = (*v75 + 152 * (v74 % 0x1A));
      do
      {
        v79 = *v78;
        v78 += 19;
        (*v79)();
        if (v78 - *v75 == 3952)
        {
          v80 = v75[1];
          ++v75;
          v78 = v80;
        }
      }

      while (v78 != v77);
      v73 = *(this + 966);
      v72 = *(this + 965);
    }
  }

  *v76 = 0;
  v81 = v73 - v72;
  if (v81 >= 3)
  {
    do
    {
      operator delete(*v72);
      v72 = (*(this + 965) + 8);
      *(this + 965) = v72;
      v81 = (*(this + 966) - v72) >> 3;
    }

    while (v81 > 2);
  }

  if (v81 == 1)
  {
    v82 = 13;
  }

  else
  {
    if (v81 != 2)
    {
      goto LABEL_108;
    }

    v82 = 26;
  }

  *(this + 968) = v82;
LABEL_108:
  v83 = *(this + 959);
  v84 = *(this + 960);
  if (v84 == v83)
  {
    v87 = (this + 7704);
    v84 = *(this + 959);
  }

  else
  {
    v85 = *(this + 962);
    v86 = &v83[v85 / 0x1A];
    v87 = (this + 7704);
    v88 = v83[(*(this + 963) + v85) / 0x1A] + 152 * ((*(this + 963) + v85) % 0x1A);
    if (*v86 + 152 * (v85 % 0x1A) != v88)
    {
      v89 = (*v86 + 152 * (v85 % 0x1A));
      do
      {
        v90 = *v89;
        v89 += 19;
        (*v90)();
        if (v89 - *v86 == 3952)
        {
          v91 = v86[1];
          ++v86;
          v89 = v91;
        }
      }

      while (v89 != v88);
      v84 = *(this + 960);
      v83 = *(this + 959);
    }
  }

  *v87 = 0;
  v92 = v84 - v83;
  if (v92 >= 3)
  {
    do
    {
      operator delete(*v83);
      v83 = (*(this + 959) + 8);
      *(this + 959) = v83;
      v92 = (*(this + 960) - v83) >> 3;
    }

    while (v92 > 2);
  }

  if (v92 == 1)
  {
    v93 = 13;
    goto LABEL_122;
  }

  if (v92 == 2)
  {
    v93 = 26;
LABEL_122:
    *(this + 962) = v93;
  }

  *(this + 8144) = 0;
}

void sub_1D0E2B6FC(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DC7128(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E2B744(uint64_t a1)
{
  *a1 = &unk_1F4CEE000;
  *(a1 + 32) = 0x300000003;
  *(a1 + 8) = &unk_1F4CD5DD0;
  *(a1 + 16) = xmmword_1D0E76C10;
  *(a1 + 40) = a1 + 48;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 240) = 0x100000003;
  *(a1 + 208) = 0x7FF8000000000000;
  *(a1 + 216) = &unk_1F4CDEB28;
  *&result = 0x100000003;
  *(a1 + 224) = xmmword_1D0E7DCC0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0E2B80C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEFA30;
  *(a1 + 8) = &unk_1F4CEE000;
  sub_1D0BE0DE8(a1 + 16, a2 + 8);
  v4 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 120);
  *(a1 + 144) = v4;
  v5 = *(a2 + 152);
  v6 = *(a2 + 168);
  v7 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 184);
  *(a1 + 208) = v7;
  *(a1 + 160) = v5;
  *(a1 + 176) = v6;
  sub_1D0BBA094(a1 + 224, a2 + 216);
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  if (a1 + 288 != a2 + 280)
  {
    *(a1 + 288) = *(a2 + 280);
    *(a1 + 304) = *(a2 + 296);
  }

  return a1;
}

void *sub_1D0E2B900(void *result)
{
  result[1] = &unk_1F4CEE000;
  result[28] = &unk_1F4CD5E28;
  result[2] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E2B964(void *a1)
{
  a1[1] = &unk_1F4CEE000;
  a1[28] = &unk_1F4CD5E28;
  a1[2] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E2BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v132 = v7;
  v133 = v6;
  v134 = v8;
  v200 = 0x400000004;
  v198 = &unk_1F4CDEB70;
  v201 = v202;
  v199 = xmmword_1D0E7DCD0;
  memset(v202, 0, sizeof(v202));
  *&v207.f64[0] = 0x100000000;
  v194 = 0x100000003;
  v192 = &unk_1F4CDEAA0;
  v195 = &v196;
  v193 = xmmword_1D0E7DCC0;
  v197 = 2;
  v196 = 0x100000000;
  if (v5 < 1)
  {
    return 25;
  }

  v130 = v4;
  v9 = 0;
  v10 = 0;
  v131 = v5;
  do
  {
    sub_1D0E2D13C(&v187, v134, v9);
    v232 = 0x100000003;
    v231 = xmmword_1D0E7DCC0;
    v230 = &unk_1F4CDEB28;
    v233 = v234;
    v205 = 0x100000134;
    v204 = xmmword_1D0E7DD20;
    v203 = &unk_1F4CDEC90;
    v206 = &v207;
    v227 = 0x100000003;
    v226 = xmmword_1D0E7DCC0;
    v225 = &unk_1F4CDEB28;
    v228 = v229;
    sub_1D0BFB1AC(&v187, &v230, &v203, &v225, "2");
    v12 = fabs(v11.f64[0]);
    if (v12 >= 2.22044605e-16)
    {
      v205 = 0x100000003;
      v204 = xmmword_1D0E7DCC0;
      v203 = &unk_1F4CDEB28;
      v206 = &v207;
      v11.f64[0] = 1.0 / v11.f64[0];
      sub_1D0B8930C(&v187, &v203, v11);
      sub_1D0B894B0(&v187, &v203);
    }

    sub_1D0E2D13C(&v182, v133, v9);
    v232 = 0x100000003;
    v231 = xmmword_1D0E7DCC0;
    v230 = &unk_1F4CDEB28;
    v233 = v234;
    v205 = 0x100000134;
    v204 = xmmword_1D0E7DD20;
    v203 = &unk_1F4CDEC90;
    v206 = &v207;
    v227 = 0x100000003;
    v226 = xmmword_1D0E7DCC0;
    v225 = &unk_1F4CDEB28;
    v228 = v229;
    sub_1D0BFB1AC(&v182, &v230, &v203, &v225, "2");
    v14 = v10;
    if (fabs(v13.f64[0]) >= 2.22044605e-16)
    {
      v205 = 0x100000003;
      v204 = xmmword_1D0E7DCC0;
      v203 = &unk_1F4CDEB28;
      v206 = &v207;
      v13.f64[0] = 1.0 / v13.f64[0];
      sub_1D0B8930C(&v182, &v203, v13);
      sub_1D0B894B0(&v182, &v203);
      v14 = v10 + 1;
    }

    if (v12 >= 2.22044605e-16)
    {
      v10 = v14;
    }

    v15 = v184;
    v16 = 0.0;
    if (v184 >= 1)
    {
      v17 = v186;
      v18 = v191;
      do
      {
        v19 = *v17++;
        v20 = v19;
        v21 = *v18++;
        v16 = v16 + v20 * v21;
        --v15;
      }

      while (v15);
    }

    v205 = 0x100000003;
    v203 = &unk_1F4CDEB28;
    v206 = &v207;
    *&v204 = v183;
    DWORD2(v204) = HIDWORD(v183) * v183;
    HIDWORD(v204) = v183;
    v22 = *v186;
    v23 = *(v186 + 8);
    *&v24.f64[0] = vdupq_laneq_s64(v23, 1).u64[0];
    v24.f64[1] = *v186;
    v25 = *(v191 + 8);
    *&v26.f64[0] = vdupq_laneq_s64(v25, 1).u64[0];
    v26.f64[1] = *v191;
    v207 = vmlaq_f64(vmulq_f64(v25, vnegq_f64(v24)), v26, v23);
    v208 = v22 * v25.f64[0] - v23.f64[0] * v26.f64[1];
    sub_1D0E27100(&v177, &v203);
    v232 = 0x400000004;
    v231 = xmmword_1D0E7DCD0;
    v230 = &unk_1F4CDEB70;
    v233 = v234;
    v137 = 0x300000003;
    v135 = &unk_1F4CD5DD0;
    v136 = xmmword_1D0E76C10;
    v141 = 0;
    v143 = 0u;
    v144 = 0;
    v140 = 0u;
    v138 = &v139;
    v139 = 0x3FF0000000000000;
    v142 = 0x3FF0000000000000;
    v145 = 0x3FF0000000000000;
    v148 = 0x300000003;
    v147 = xmmword_1D0E76C10;
    v146 = &unk_1F4CD5DD0;
    v149 = v150;
    sub_1D0B8930C(&v135, &v146, *&v16);
    v27 = HIDWORD(v183);
    v28 = v183;
    v169 = 0x300000001;
    v164 = &unk_1F4CDF248;
    v170 = v171;
    v165 = HIDWORD(v183);
    v166 = v183;
    v167 = v183 * HIDWORD(v183);
    v168 = HIDWORD(v183);
    if (HIDWORD(v183))
    {
      v29 = 0;
      v30 = 0;
      v31 = v185;
      v32 = v186;
      do
      {
        v33 = v29;
        v34 = v30;
        for (i = v28; i; --i)
        {
          v171[v34] = *(v32 + 8 * v33);
          v34 += v27;
          ++v33;
        }

        ++v30;
        v29 += v31;
      }

      while (v30 != v27);
    }

    v174 = 0x300000003;
    v173 = xmmword_1D0E76C10;
    v172 = &unk_1F4CD5DD0;
    v175 = v176;
    sub_1D0B89390(&v187, &v164, &v172);
    v222 = 0x300000003;
    v221 = xmmword_1D0E76C10;
    v220 = &unk_1F4CD5DD0;
    v223 = v224;
    sub_1D0BA5A78(&v146, &v172, &v220);
    v36 = v189;
    v37 = v188;
    v156 = 0x300000001;
    v151 = &unk_1F4CDF248;
    v157 = v158;
    v152 = v189;
    v153 = v188;
    v154 = v188 * v189;
    v155 = v189;
    if (v189)
    {
      v38 = 0;
      v39 = 0;
      v40 = v190;
      v41 = v191;
      do
      {
        v42 = v38;
        v43 = v39;
        for (j = v37; j; --j)
        {
          v158[v43] = *(v41 + 8 * v42);
          v43 += v36;
          ++v42;
        }

        ++v39;
        v38 += v40;
      }

      while (v39 != v36);
    }

    v161 = 0x300000003;
    v160 = xmmword_1D0E76C10;
    v159 = &unk_1F4CD5DD0;
    v162 = v163;
    sub_1D0B89390(&v182, &v151, &v159);
    v227 = 0x300000003;
    v226 = xmmword_1D0E76C10;
    v225 = &unk_1F4CD5DD0;
    v228 = v229;
    sub_1D0BA5A78(&v220, &v159, &v225);
    sub_1D0BADC74(&v203, &v230, &v192, &v192);
    sub_1D0D2CFF0(&v203, &v225);
    v227 = 0x100000001;
    *&v45 = 0x100000001;
    *(&v45 + 1) = 0x100000001;
    v226 = v45;
    v225 = &unk_1F4CDF158;
    v228 = v229;
    LODWORD(v229[0]) = 3;
    sub_1D0C51DC8(&v203, &v230, &v192, &v225);
    sub_1D0D2D13C(&v203, &v177);
    v46 = v179;
    v47 = v178;
    v227 = 0x300000001;
    v225 = &unk_1F4CDF248;
    v228 = v229;
    *&v226 = __PAIR64__(v178, v179);
    DWORD2(v226) = v178 * v179;
    HIDWORD(v226) = v179;
    if (v179)
    {
      v48 = 0;
      v49 = 0;
      v50 = v180;
      v51 = v181;
      do
      {
        v52 = v48;
        v53 = v49;
        for (k = v47; k; --k)
        {
          v229[v53] = *(v51 + 8 * v52);
          v53 += v46;
          ++v52;
        }

        ++v49;
        v48 += v50;
      }

      while (v49 != v46);
    }

    v55 = DWORD1(v193);
    v56 = v193;
    v222 = 0x300000001;
    v220 = &unk_1F4CDF0C8;
    v223 = v224;
    *&v221 = __PAIR64__(v193, DWORD1(v193));
    DWORD2(v221) = v193 * DWORD1(v193);
    HIDWORD(v221) = DWORD1(v193);
    if (DWORD1(v193))
    {
      v57 = 0;
      v58 = 0;
      v59 = v195;
      v60 = HIDWORD(v193);
      do
      {
        if (v56)
        {
          for (m = 0; m != v56; ++m)
          {
            v224[v58 + HIDWORD(v221) * m] = *(v59 + v57 + m);
          }
        }

        ++v58;
        v57 += v60;
      }

      while (v58 != v55);
    }

    v148 = 0x100000001;
    *&v62 = 0x100000001;
    *(&v62 + 1) = 0x100000001;
    v147 = v62;
    v146 = &unk_1F4CDF158;
    v149 = v150;
    v150[0] = 3;
    v205 = 0x300000001;
    v204 = xmmword_1D0E7F310;
    v206 = &v207;
    v203 = &unk_1F4CEFA78;
    v209 = &v230;
    v212 = 0x100000001;
    v210 = &unk_1F4CDF158;
    v211 = v62;
    v213 = &v214;
    v217 = 0x300000001;
    v215 = &unk_1F4CDF0C8;
    v216 = xmmword_1D0E7F310;
    v218 = &v219;
    sub_1D0B9F5D4(&v210, &v146);
    sub_1D0B9F5D4(&v215, &v220);
    v64 = DWORD2(v211);
    v65 = DWORD2(v216);
    *&v204 = __PAIR64__(DWORD2(v216), DWORD2(v211));
    DWORD2(v204) = DWORD2(v216) * DWORD2(v211);
    HIDWORD(v204) = DWORD2(v211);
    if (DWORD2(v216))
    {
      v66 = 0;
      v67 = 0;
      v68 = HIDWORD(v231);
      v69 = v233;
      v70 = v218;
      v71 = v213;
      v72 = v206;
      do
      {
        if (v64)
        {
          v73 = *(v70 + v67) * v68;
          v74 = v71;
          v75 = v66;
          v76 = v64;
          do
          {
            v77 = *v74++;
            v72->f64[v75++] = *&v69[2 * v77 + 2 * v73];
            --v76;
          }

          while (v76);
        }

        ++v67;
        v66 += v64;
      }

      while (v67 != v65);
    }

    if (v64 != v226)
    {
      v127 = 376;
      v128 = "this->num_rows_ == A.num_rows_";
      goto LABEL_90;
    }

    if (v65 != DWORD1(v226))
    {
      v127 = 377;
      v128 = "this->num_cols_ == A.num_cols_";
LABEL_90:
      __assert_rtn("operator=", "cnsubmatrix.h", v127, v128);
    }

    if (v65)
    {
      v78 = 0;
      v79 = 0;
      v80 = v228;
      v81 = v213;
      v82 = v218;
      v83 = v209;
      v84 = v206;
      do
      {
        if (v64)
        {
          v85 = *(v83 + 5) * *(v82 + v79);
          v86 = v83[4];
          v87 = v78;
          v88 = v81;
          v89 = v64;
          do
          {
            v90 = *&v80[v87];
            v91 = *v88++;
            v86[v91 + v85] = v90;
            v84->f64[v87++] = v90;
            --v89;
          }

          while (v89);
        }

        ++v79;
        v78 += v64;
      }

      while (v79 != v65);
    }

    *&v233[6 * SHIDWORD(v231) + 6] = -v16;
    v63.f64[0] = 2.0 / (*(*(v132 + 32) + 8 * v9) * *(*(v132 + 32) + 8 * v9));
    v227 = 0x400000004;
    v226 = xmmword_1D0E7DCD0;
    v225 = &unk_1F4CDEB70;
    v228 = v229;
    sub_1D0B8930C(&v230, &v225, v63);
    v205 = 0x400000004;
    v204 = xmmword_1D0E7DCD0;
    v203 = &unk_1F4CDEB70;
    v206 = &v207;
    sub_1D0B88838(&v198, &v225, &v203);
    sub_1D0B894B0(&v198, &v203);
    ++v9;
  }

  while (v9 != v131);
  if (v10 < 2)
  {
    return 25;
  }

  v148 = 0x400000004;
  v147 = xmmword_1D0E7DCD0;
  v146 = &unk_1F4CDEB70;
  v149 = v150;
  v137 = 0x400000004;
  v135 = &unk_1F4CDEB70;
  v136 = xmmword_1D0E7DCD0;
  v138 = &v139;
  v232 = 0x400000004;
  v231 = xmmword_1D0E7DCD0;
  v230 = &unk_1F4CDEB70;
  v233 = v234;
  v227 = 0x400000004;
  v226 = xmmword_1D0E7DCD0;
  v225 = &unk_1F4CDEB70;
  v228 = v229;
  v222 = 0x400000004;
  v221 = xmmword_1D0E7DCD0;
  v220 = &unk_1F4CDEB70;
  v223 = v224;
  v161 = 0x100000004;
  v160 = xmmword_1D0E7DCE0;
  v159 = &unk_1F4CDEBB8;
  v162 = v163;
  v174 = 0x200000004;
  v173 = xmmword_1D0E87A60;
  v172 = &unk_1F4CE45F8;
  v175 = v176;
  v205 = 0x100000170;
  v204 = xmmword_1D0EA31A0;
  v203 = &unk_1F4CEFAC0;
  v206 = &v207;
  v93 = v199;
  sub_1D0B894B0(&v230, &v198);
  LODWORD(v147) = v93;
  DWORD1(v147) = v93;
  v94 = v93 * v93;
  DWORD2(v147) = v93 * v93;
  HIDWORD(v147) = v93;
  v95 = v149;
  if (v93 * v93 > 3)
  {
    bzero(v149, 16 * ((v94 - 1) >> 1));
    *&v95[8 * v94 - 16] = 0u;
    LODWORD(v226) = v93;
    DWORD1(v226) = v93;
    DWORD2(v226) = v93 * v93;
    HIDWORD(v226) = v93;
    v96 = v228;
    bzero(v228, 16 * ((v94 - 1) >> 1));
    *&v96[8 * v94 - 16] = 0u;
    LODWORD(v136) = v93;
    DWORD1(v136) = v93;
    DWORD2(v136) = v93 * v93;
    HIDWORD(v136) = v93;
    v97 = v138;
    bzero(v138, 16 * ((v94 - 1) >> 1));
    *&v97[8 * v94 - 16] = 0u;
    LODWORD(v221) = v93;
    DWORD1(v221) = v93;
    DWORD2(v221) = v93 * v93;
    HIDWORD(v221) = v93;
    v98 = v223;
    bzero(v223, 16 * ((v94 - 1) >> 1));
    *&v98[8 * v94 - 16] = 0u;
  }

  else if (v94 <= 0)
  {
    LODWORD(v226) = v93;
    DWORD1(v226) = v93;
    DWORD2(v226) = v93 * v93;
    HIDWORD(v226) = v93;
    LODWORD(v136) = v93;
    DWORD1(v136) = v93;
    DWORD2(v136) = v93 * v93;
    HIDWORD(v136) = v93;
    LODWORD(v221) = v93;
    DWORD1(v221) = v93;
    DWORD2(v221) = v93 * v93;
    HIDWORD(v221) = v93;
  }

  else
  {
    bzero(v149, 8 * (v93 * v93));
    LODWORD(v226) = v93;
    DWORD1(v226) = v93;
    DWORD2(v226) = v93 * v93;
    HIDWORD(v226) = v93;
    bzero(v228, 8 * (v93 * v93));
    LODWORD(v136) = v93;
    DWORD1(v136) = v93;
    DWORD2(v136) = v93 * v93;
    HIDWORD(v136) = v93;
    bzero(v138, 8 * (v93 * v93));
    LODWORD(v221) = v93;
    DWORD1(v221) = v93;
    DWORD2(v221) = v93 * v93;
    HIDWORD(v221) = v93;
    bzero(v223, 8 * (v93 * v93));
  }

  v187 = 0;
  qmemcpy(v238, "NVNB", sizeof(v238));
  v182 = v93;
  v177 = v231;
  LODWORD(v164) = 1;
  LODWORD(v151) = v136;
  v237 = 0;
  v235 = 0;
  v236 = 368;
  v129 = v228;
  v99 = dgeevx_NEWLAPACK();
  if (v235)
  {
    LOWORD(v182) = 4;
    if (v235 < 0)
    {
      LOBYTE(v177) = 5;
      cnprint::CNPrinter::Print(&v182, &v177, "Error using Eig: input argument %d invalid in geevx.", v100, v101, v102, v103, v104, -v235);
    }

    else
    {
      LOBYTE(v177) = 4;
      cnprint::CNPrinter::Print(&v182, &v177, "Error using Eig: geevx failed to converge for some eigenvalues.", v100, v101, v102, v103, v104, v129);
    }
  }

  v105 = v206->f64[0];
  if (v105 >= 0x171 && cnprint::CNPrinter::GetLogLevel(v99) <= 1)
  {
    LOWORD(v182) = 4;
    LOBYTE(v177) = 1;
    cnprint::CNPrinter::Print(&v182, &v177, "Warning: Eig optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v100, v101, v102, v103, v104, v105);
  }

  *&v204 = v205;
  DWORD2(v204) = HIDWORD(v205) * v205;
  HIDWORD(v204) = v205;
  *&v173 = v93 | 0x200000000;
  DWORD2(v173) = 2 * v93;
  HIDWORD(v173) = v93;
  *&v160 = v93 | 0x100000000;
  DWORD2(v160) = v93;
  HIDWORD(v160) = v93;
  if (v93)
  {
    v106 = 0;
    v107 = v228;
    v108 = v138;
    v109 = v223;
    do
    {
      if (*&v107[8 * v106] != 0.0)
      {
        v110 = v106 * v93;
        v111 = v93 + v106;
        v112 = v93;
        do
        {
          v113 = v108[v111];
          v109[v110] = v113;
          v109[v111] = -v113;
          v108[v111++] = v108[v110++];
          --v112;
        }

        while (v112);
        ++v106;
      }

      ++v106;
    }

    while (v106 < v93);
    v114 = v93 - 1;
    if (v93 != 1)
    {
      v115 = v149;
      v116 = v107 + 8;
      v117 = v149 + 8;
      v118 = v93 + 1;
      do
      {
        v115[v118] = *v117;
        *&v107[8 * v118] = *v116;
        *v117++ = 0;
        *v116++ = 0;
        v118 += v93 + 1;
        --v114;
      }

      while (v114);
    }
  }

  if (DWORD2(v226))
  {
    v119 = 0;
    while (*(v228 + v119) == 0.0)
    {
      if (DWORD2(v226) == ++v119)
      {
        goto LABEL_77;
      }
    }

    LOWORD(v187) = 4;
    LOBYTE(v182) = 2;
    cnprint::CNPrinter::Print(&v187, &v182, "Warning: Imaginary parts of complex eigenvalues are being ignored.", v100, v101, v102, v103, v104, v129);
  }

LABEL_77:
  if (DWORD2(v221))
  {
    v120 = 0;
    while (*(v223 + v120) == 0.0)
    {
      if (DWORD2(v221) == ++v120)
      {
        goto LABEL_82;
      }
    }

    LOWORD(v187) = 4;
    LOBYTE(v182) = 2;
    cnprint::CNPrinter::Print(&v187, &v182, "Warning: Imaginary parts of complex eigenvectors are being ignored.", v100, v101, v102, v103, v104, v129);
  }

LABEL_82:
  v174 = 0x100000001;
  *&v121 = 0x100000001;
  *(&v121 + 1) = 0x100000001;
  v173 = v121;
  v172 = &unk_1F4CDF460;
  v175 = v176;
  v161 = 0x100000001;
  v160 = v121;
  v159 = &unk_1F4CDF418;
  v162 = v163;
  v205 = 0x800000008;
  v204 = xmmword_1D0E84510;
  v203 = &unk_1F4CE43B0;
  v206 = &v207;
  sub_1D0BED87C(&v146, 0, &v203);
  sub_1D0D7FDEC(&v203, &v159, &v172);
  v122 = *v175;
  v123 = v136;
  v232 = 0x100000004;
  v230 = &unk_1F4CDFDB8;
  *&v231 = v136 | 0x100000000;
  DWORD2(v231) = v136;
  HIDWORD(v231) = v136;
  v233 = v234;
  if (v136)
  {
    v124 = 0;
    do
    {
      v234[v124] = v124;
      ++v124;
    }

    while (v123 != v124);
  }

  v227 = 0x100000001;
  *&v125 = 0x100000001;
  *(&v125 + 1) = 0x100000001;
  v226 = v125;
  v225 = &unk_1F4CDF158;
  v228 = v229;
  LODWORD(v229[0]) = v122;
  sub_1D0D8786C(&v203, &v135, &v230, &v225);
  sub_1D0B87544(&v220, &v203);
  v232 = 0x100000004;
  v231 = xmmword_1D0E7DCE0;
  v230 = &unk_1F4CDEBB8;
  v233 = v234;
  v205 = 0x10000018BLL;
  v204 = xmmword_1D0EA31B0;
  v203 = &unk_1F4CEFB08;
  v206 = &v207;
  v227 = 0x100000004;
  v226 = xmmword_1D0E7DCE0;
  v225 = &unk_1F4CDEBB8;
  v228 = v229;
  sub_1D0BFB1AC(&v220, &v230, &v203, &v225, "2");
  if (fabs(v126.f64[0]) < 2.22044605e-16)
  {
    return 26;
  }

  v205 = 0x100000004;
  v204 = xmmword_1D0E7DCE0;
  v203 = &unk_1F4CDEBB8;
  v206 = &v207;
  v126.f64[0] = 1.0 / v126.f64[0];
  sub_1D0B8930C(&v220, &v203, v126);
  sub_1D0B894B0(&v220, &v203);
  sub_1D0B894B0(v130 + 8, &v220);
  return 0;
}