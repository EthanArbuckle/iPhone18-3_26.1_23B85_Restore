void sub_F5CC0(uint64_t a1)
{
  sub_F6340(a1 - 32);

  operator delete();
}

uint64_t sub_F5E6C(uint64_t a1, void *a2)
{
  if (*a2 >= *(a1 + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8) + 8 * *a2;
  }
}

void *sub_F5E98(void *a1)
{
  *a1 = off_2631478;
  a1[1] = off_26314D8;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[3] = 0;
  }

  return a1;
}

void sub_F5F70(void *a1)
{
  *a1 = off_2631478;
  a1[1] = off_26314D8;
  v3 = a1[3];
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[3] = 0;
  }

  operator delete();
}

uint64_t sub_F6108(void *a1)
{
  *(a1 - 1) = off_2631478;
  *a1 = off_26314D8;
  result = a1[2];
  if (result)
  {
    if (*result)
    {
      v3 = *result - 1;
      *result = v3;
      if (!v3)
      {
        if (*(result + 16))
        {
          if (*(result + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  return result;
}

void sub_F61DC(void *a1)
{
  *(a1 - 1) = off_2631478;
  *a1 = off_26314D8;
  v3 = a1[2];
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  operator delete();
}

uint64_t sub_F6340(uint64_t a1)
{
  *a1 = off_2631338;
  *(a1 + 32) = off_2631398;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_F64AC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631560;
  *(a1 + 32) = off_26315C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_F6B00(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_F6BA0(uint64_t a1)
{
  sub_F7060(a1);

  operator delete();
}

double sub_F6BD8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = acos(*v3);
      v4[1] = acos(v3[1]);
      v4[2] = acos(v3[2]);
      v4[3] = acos(v3[3]);
      v4[4] = acos(v3[4]);
      v4[5] = acos(v3[5]);
      v4[6] = acos(v3[6]);
      v4[7] = acos(v3[7]);
      v4[8] = acos(v3[8]);
      v4[9] = acos(v3[9]);
      v4[10] = acos(v3[10]);
      v4[11] = acos(v3[11]);
      v4[12] = acos(v3[12]);
      v4[13] = acos(v3[13]);
      v4[14] = acos(v3[14]);
      v4[15] = acos(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = acos(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = acos(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = acos(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = acos(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_F6FC4(uint64_t a1)
{
  sub_F7060(a1 - 32);

  operator delete();
}

uint64_t sub_F7060(uint64_t a1)
{
  *a1 = off_2631560;
  *(a1 + 32) = off_26315C0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_F71CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631648;
  *(a1 + 32) = off_26316A8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_F7820(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_F78C0(uint64_t a1)
{
  sub_F7FBC(a1);

  operator delete();
}

double sub_F78F8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = log(*v3 + sqrt(*v3 * *v3 + -1.0));
      v4[1] = log(v3[1] + sqrt(v3[1] * v3[1] + -1.0));
      v4[2] = log(v3[2] + sqrt(v3[2] * v3[2] + -1.0));
      v4[3] = log(v3[3] + sqrt(v3[3] * v3[3] + -1.0));
      v4[4] = log(v3[4] + sqrt(v3[4] * v3[4] + -1.0));
      v4[5] = log(v3[5] + sqrt(v3[5] * v3[5] + -1.0));
      v4[6] = log(v3[6] + sqrt(v3[6] * v3[6] + -1.0));
      v4[7] = log(v3[7] + sqrt(v3[7] * v3[7] + -1.0));
      v4[8] = log(v3[8] + sqrt(v3[8] * v3[8] + -1.0));
      v4[9] = log(v3[9] + sqrt(v3[9] * v3[9] + -1.0));
      v4[10] = log(v3[10] + sqrt(v3[10] * v3[10] + -1.0));
      v4[11] = log(v3[11] + sqrt(v3[11] * v3[11] + -1.0));
      v4[12] = log(v3[12] + sqrt(v3[12] * v3[12] + -1.0));
      v4[13] = log(v3[13] + sqrt(v3[13] * v3[13] + -1.0));
      v4[14] = log(v3[14] + sqrt(v3[14] * v3[14] + -1.0));
      v4[15] = log(v3[15] + sqrt(v3[15] * v3[15] + -1.0));
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = log(*v3 + sqrt(*v3 * *v3 + -1.0));
      v11 = 1;
LABEL_10:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_11:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_12:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_13:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_14:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_15:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_16:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_17:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_18:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_19:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_20:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_21:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      ++v11;
LABEL_22:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + -1.0));
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = log(v3[v10] + sqrt(v3[v10] * v3[v10] + -1.0));
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_F7F20(uint64_t a1)
{
  sub_F7FBC(a1 - 32);

  operator delete();
}

uint64_t sub_F7FBC(uint64_t a1)
{
  *a1 = off_2631648;
  *(a1 + 32) = off_26316A8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_F8128(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631730;
  *(a1 + 32) = off_2631790;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_F877C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_F881C(uint64_t a1)
{
  sub_F8CDC(a1);

  operator delete();
}

double sub_F8854(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = asin(*v3);
      v4[1] = asin(v3[1]);
      v4[2] = asin(v3[2]);
      v4[3] = asin(v3[3]);
      v4[4] = asin(v3[4]);
      v4[5] = asin(v3[5]);
      v4[6] = asin(v3[6]);
      v4[7] = asin(v3[7]);
      v4[8] = asin(v3[8]);
      v4[9] = asin(v3[9]);
      v4[10] = asin(v3[10]);
      v4[11] = asin(v3[11]);
      v4[12] = asin(v3[12]);
      v4[13] = asin(v3[13]);
      v4[14] = asin(v3[14]);
      v4[15] = asin(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = asin(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = asin(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = asin(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = asin(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_F8C40(uint64_t a1)
{
  sub_F8CDC(a1 - 32);

  operator delete();
}

uint64_t sub_F8CDC(uint64_t a1)
{
  *a1 = off_2631730;
  *(a1 + 32) = off_2631790;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_F8E48(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631818;
  *(a1 + 32) = off_2631878;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_F949C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_F953C(uint64_t a1)
{
  sub_F9C38(a1);

  operator delete();
}

double sub_F9574(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = log(*v3 + sqrt(*v3 * *v3 + 1.0));
      v4[1] = log(v3[1] + sqrt(v3[1] * v3[1] + 1.0));
      v4[2] = log(v3[2] + sqrt(v3[2] * v3[2] + 1.0));
      v4[3] = log(v3[3] + sqrt(v3[3] * v3[3] + 1.0));
      v4[4] = log(v3[4] + sqrt(v3[4] * v3[4] + 1.0));
      v4[5] = log(v3[5] + sqrt(v3[5] * v3[5] + 1.0));
      v4[6] = log(v3[6] + sqrt(v3[6] * v3[6] + 1.0));
      v4[7] = log(v3[7] + sqrt(v3[7] * v3[7] + 1.0));
      v4[8] = log(v3[8] + sqrt(v3[8] * v3[8] + 1.0));
      v4[9] = log(v3[9] + sqrt(v3[9] * v3[9] + 1.0));
      v4[10] = log(v3[10] + sqrt(v3[10] * v3[10] + 1.0));
      v4[11] = log(v3[11] + sqrt(v3[11] * v3[11] + 1.0));
      v4[12] = log(v3[12] + sqrt(v3[12] * v3[12] + 1.0));
      v4[13] = log(v3[13] + sqrt(v3[13] * v3[13] + 1.0));
      v4[14] = log(v3[14] + sqrt(v3[14] * v3[14] + 1.0));
      v4[15] = log(v3[15] + sqrt(v3[15] * v3[15] + 1.0));
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = log(*v3 + sqrt(*v3 * *v3 + 1.0));
      v11 = 1;
LABEL_10:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_11:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_12:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_13:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_14:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_15:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_16:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_17:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_18:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_19:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_20:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_21:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      ++v11;
LABEL_22:
      v4[v11] = log(v3[v11] + sqrt(v3[v11] * v3[v11] + 1.0));
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = log(v3[v10] + sqrt(v3[v10] * v3[v10] + 1.0));
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_F9B9C(uint64_t a1)
{
  sub_F9C38(a1 - 32);

  operator delete();
}

uint64_t sub_F9C38(uint64_t a1)
{
  *a1 = off_2631818;
  *(a1 + 32) = off_2631878;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_F9DA4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631900;
  *(a1 + 32) = off_2631960;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FA3F8(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FA498(uint64_t a1)
{
  sub_FA958(a1);

  operator delete();
}

double sub_FA4D0(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = atan(*v3);
      v4[1] = atan(v3[1]);
      v4[2] = atan(v3[2]);
      v4[3] = atan(v3[3]);
      v4[4] = atan(v3[4]);
      v4[5] = atan(v3[5]);
      v4[6] = atan(v3[6]);
      v4[7] = atan(v3[7]);
      v4[8] = atan(v3[8]);
      v4[9] = atan(v3[9]);
      v4[10] = atan(v3[10]);
      v4[11] = atan(v3[11]);
      v4[12] = atan(v3[12]);
      v4[13] = atan(v3[13]);
      v4[14] = atan(v3[14]);
      v4[15] = atan(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = atan(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = atan(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = atan(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = atan(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_FA8BC(uint64_t a1)
{
  sub_FA958(a1 - 32);

  operator delete();
}

uint64_t sub_FA958(uint64_t a1)
{
  *a1 = off_2631900;
  *(a1 + 32) = off_2631960;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FAAC4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26319E8;
  *(a1 + 32) = off_2631A48;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FB118(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FB1B8(uint64_t a1)
{
  sub_FB9E0(a1);

  operator delete();
}

uint64_t sub_FB1F0(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = &v3[v8 / 8];
      do
      {
        v10 = *v3;
        v11 = log(*v3 + 1.0);
        *v4 = (v11 - log(1.0 - v10)) * 0.5;
        v12 = v3[1];
        v13 = log(v12 + 1.0);
        v4[1] = (v13 - log(1.0 - v12)) * 0.5;
        v14 = v3[2];
        v15 = log(v14 + 1.0);
        v4[2] = (v15 - log(1.0 - v14)) * 0.5;
        v16 = v3[3];
        v17 = log(v16 + 1.0);
        v4[3] = (v17 - log(1.0 - v16)) * 0.5;
        v18 = v3[4];
        v19 = log(v18 + 1.0);
        v4[4] = (v19 - log(1.0 - v18)) * 0.5;
        v20 = v3[5];
        v21 = log(v20 + 1.0);
        v4[5] = (v21 - log(1.0 - v20)) * 0.5;
        v22 = v3[6];
        v23 = log(v22 + 1.0);
        v4[6] = (v23 - log(1.0 - v22)) * 0.5;
        v24 = v3[7];
        v25 = log(v24 + 1.0);
        v4[7] = (v25 - log(1.0 - v24)) * 0.5;
        v26 = v3[8];
        v27 = log(v26 + 1.0);
        v4[8] = (v27 - log(1.0 - v26)) * 0.5;
        v28 = v3[9];
        v29 = log(v28 + 1.0);
        v4[9] = (v29 - log(1.0 - v28)) * 0.5;
        v30 = v3[10];
        v31 = log(v30 + 1.0);
        v4[10] = (v31 - log(1.0 - v30)) * 0.5;
        v32 = v3[11];
        v33 = log(v32 + 1.0);
        v4[11] = (v33 - log(1.0 - v32)) * 0.5;
        v34 = v3[12];
        v35 = log(v34 + 1.0);
        v4[12] = (v35 - log(1.0 - v34)) * 0.5;
        v36 = v3[13];
        v37 = log(v36 + 1.0);
        v4[13] = (v37 - log(1.0 - v36)) * 0.5;
        v38 = v3[14];
        v39 = log(v38 + 1.0);
        v4[14] = (v39 - log(1.0 - v38)) * 0.5;
        v40 = v3[15];
        v41 = log(v40 + 1.0);
        v4[15] = (v41 - log(1.0 - v40)) * 0.5;
        v3 += 16;
        v4 += 16;
      }

      while (v3 < v9);
    }

    v42 = 0;
    v43 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_23;
      case 2:
        goto LABEL_22;
      case 3:
        goto LABEL_21;
      case 4:
        goto LABEL_20;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      case 7:
        goto LABEL_17;
      case 8:
        goto LABEL_16;
      case 9:
        goto LABEL_15;
      case 10:
        goto LABEL_14;
      case 11:
        goto LABEL_13;
      case 12:
        goto LABEL_12;
      case 13:
        goto LABEL_11;
      case 14:
        goto LABEL_10;
      case 15:
        v44 = *v3;
        v45 = log(*v3 + 1.0);
        *v4 = (v45 - log(1.0 - v44)) * 0.5;
        v43 = 1;
LABEL_10:
        v46 = v3[v43];
        v47 = log(v46 + 1.0);
        v4[v43++] = (v47 - log(1.0 - v46)) * 0.5;
LABEL_11:
        v48 = v3[v43];
        v49 = log(v48 + 1.0);
        v4[v43++] = (v49 - log(1.0 - v48)) * 0.5;
LABEL_12:
        v50 = v3[v43];
        v51 = log(v50 + 1.0);
        v4[v43++] = (v51 - log(1.0 - v50)) * 0.5;
LABEL_13:
        v52 = v3[v43];
        v53 = log(v52 + 1.0);
        v4[v43++] = (v53 - log(1.0 - v52)) * 0.5;
LABEL_14:
        v54 = v3[v43];
        v55 = log(v54 + 1.0);
        v4[v43++] = (v55 - log(1.0 - v54)) * 0.5;
LABEL_15:
        v56 = v3[v43];
        v57 = log(v56 + 1.0);
        v4[v43++] = (v57 - log(1.0 - v56)) * 0.5;
LABEL_16:
        v58 = v3[v43];
        v59 = log(v58 + 1.0);
        v4[v43++] = (v59 - log(1.0 - v58)) * 0.5;
LABEL_17:
        v60 = v3[v43];
        v61 = log(v60 + 1.0);
        v4[v43++] = (v61 - log(1.0 - v60)) * 0.5;
LABEL_18:
        v62 = v3[v43];
        v63 = log(v62 + 1.0);
        v4[v43++] = (v63 - log(1.0 - v62)) * 0.5;
LABEL_19:
        v64 = v3[v43];
        v65 = log(v64 + 1.0);
        v4[v43++] = (v65 - log(1.0 - v64)) * 0.5;
LABEL_20:
        v66 = v3[v43];
        v67 = log(v66 + 1.0);
        v4[v43++] = (v67 - log(1.0 - v66)) * 0.5;
LABEL_21:
        v68 = v3[v43];
        v69 = log(v68 + 1.0);
        v4[v43++] = (v69 - log(1.0 - v68)) * 0.5;
LABEL_22:
        v70 = v3[v43];
        v71 = log(v70 + 1.0);
        v4[v43] = (v71 - log(1.0 - v70)) * 0.5;
        v42 = v43 + 1;
LABEL_23:
        v72 = v3[v42];
        v73 = log(v72 + 1.0);
        v4[v42] = (v73 - log(1.0 - v72)) * 0.5;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_FB944(uint64_t a1)
{
  sub_FB9E0(a1 - 32);

  operator delete();
}

uint64_t sub_FB9E0(uint64_t a1)
{
  *a1 = off_26319E8;
  *(a1 + 32) = off_2631A48;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FBB4C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631AD0;
  *(a1 + 32) = off_2631B30;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FC1A0(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FC240(uint64_t a1)
{
  sub_FC6F4(a1);

  operator delete();
}

double sub_FC278(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = ceil(*v3);
      v4[1] = ceil(v3[1]);
      v4[2] = ceil(v3[2]);
      v4[3] = ceil(v3[3]);
      v4[4] = ceil(v3[4]);
      v4[5] = ceil(v3[5]);
      v4[6] = ceil(v3[6]);
      v4[7] = ceil(v3[7]);
      v4[8] = ceil(v3[8]);
      v4[9] = ceil(v3[9]);
      v4[10] = ceil(v3[10]);
      v4[11] = ceil(v3[11]);
      v4[12] = ceil(v3[12]);
      v4[13] = ceil(v3[13]);
      v4[14] = ceil(v3[14]);
      v4[15] = ceil(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = ceil(*v3);
      v10 = 1;
LABEL_10:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_11:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_12:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_13:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_14:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_15:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_16:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_17:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_18:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_19:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_20:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_21:
      v4[v10] = ceil(v3[v10]);
      ++v10;
LABEL_22:
      v4[v10] = ceil(v3[v10]);
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = ceil(v3[v9]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_FC658(uint64_t a1)
{
  sub_FC6F4(a1 - 32);

  operator delete();
}

uint64_t sub_FC6F4(uint64_t a1)
{
  *a1 = off_2631AD0;
  *(a1 + 32) = off_2631B30;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FC860(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631BB8;
  *(a1 + 32) = off_2631C18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FCEB4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FCF54(uint64_t a1)
{
  sub_FD414(a1);

  operator delete();
}

double sub_FCF8C(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = cos(*v3);
      v4[1] = cos(v3[1]);
      v4[2] = cos(v3[2]);
      v4[3] = cos(v3[3]);
      v4[4] = cos(v3[4]);
      v4[5] = cos(v3[5]);
      v4[6] = cos(v3[6]);
      v4[7] = cos(v3[7]);
      v4[8] = cos(v3[8]);
      v4[9] = cos(v3[9]);
      v4[10] = cos(v3[10]);
      v4[11] = cos(v3[11]);
      v4[12] = cos(v3[12]);
      v4[13] = cos(v3[13]);
      v4[14] = cos(v3[14]);
      v4[15] = cos(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = cos(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = cos(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = cos(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = cos(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_FD378(uint64_t a1)
{
  sub_FD414(a1 - 32);

  operator delete();
}

uint64_t sub_FD414(uint64_t a1)
{
  *a1 = off_2631BB8;
  *(a1 + 32) = off_2631C18;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FD580(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631CA0;
  *(a1 + 32) = off_2631D00;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FDBD4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FDC74(uint64_t a1)
{
  sub_FE134(a1);

  operator delete();
}

double sub_FDCAC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = cosh(*v3);
      v4[1] = cosh(v3[1]);
      v4[2] = cosh(v3[2]);
      v4[3] = cosh(v3[3]);
      v4[4] = cosh(v3[4]);
      v4[5] = cosh(v3[5]);
      v4[6] = cosh(v3[6]);
      v4[7] = cosh(v3[7]);
      v4[8] = cosh(v3[8]);
      v4[9] = cosh(v3[9]);
      v4[10] = cosh(v3[10]);
      v4[11] = cosh(v3[11]);
      v4[12] = cosh(v3[12]);
      v4[13] = cosh(v3[13]);
      v4[14] = cosh(v3[14]);
      v4[15] = cosh(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = cosh(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = cosh(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = cosh(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = cosh(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_FE098(uint64_t a1)
{
  sub_FE134(a1 - 32);

  operator delete();
}

uint64_t sub_FE134(uint64_t a1)
{
  *a1 = off_2631CA0;
  *(a1 + 32) = off_2631D00;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FE2A0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631D88;
  *(a1 + 32) = off_2631DE8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FE8F4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FE994(uint64_t a1)
{
  sub_FEE54(a1);

  operator delete();
}

double sub_FE9CC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = exp(*v3);
      v4[1] = exp(v3[1]);
      v4[2] = exp(v3[2]);
      v4[3] = exp(v3[3]);
      v4[4] = exp(v3[4]);
      v4[5] = exp(v3[5]);
      v4[6] = exp(v3[6]);
      v4[7] = exp(v3[7]);
      v4[8] = exp(v3[8]);
      v4[9] = exp(v3[9]);
      v4[10] = exp(v3[10]);
      v4[11] = exp(v3[11]);
      v4[12] = exp(v3[12]);
      v4[13] = exp(v3[13]);
      v4[14] = exp(v3[14]);
      v4[15] = exp(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = exp(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = exp(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = exp(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = exp(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_FEDB8(uint64_t a1)
{
  sub_FEE54(a1 - 32);

  operator delete();
}

uint64_t sub_FEE54(uint64_t a1)
{
  *a1 = off_2631D88;
  *(a1 + 32) = off_2631DE8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_FEFC0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631E70;
  *(a1 + 32) = off_2631ED0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_FF614(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_FF6B4(uint64_t a1)
{
  sub_10011C(a1);

  operator delete();
}

uint64_t sub_FF6EC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = &v3[v8 / 8];
      do
      {
        while (1)
        {
          v10 = *v3;
          v11 = -*v3;
          if (*v3 >= 0.0)
          {
            v11 = *v3;
          }

          if (v11 >= 0.00001)
          {
            v12 = exp(v10) + -1.0;
          }

          else
          {
            v12 = v10 + v10 * (v10 * 0.5);
          }

          *v4 = v12;
          v13 = v3[1];
          v14 = -v13;
          if (v13 >= 0.0)
          {
            v14 = v3[1];
          }

          if (v14 >= 0.00001)
          {
            v15 = exp(v13) + -1.0;
          }

          else
          {
            v15 = v13 + v13 * (v13 * 0.5);
          }

          *(v4 + 8) = v15;
          v16 = v3[2];
          v17 = -v16;
          if (v16 >= 0.0)
          {
            v17 = v3[2];
          }

          if (v17 >= 0.00001)
          {
            v18 = exp(v16) + -1.0;
          }

          else
          {
            v18 = v16 + v16 * (v16 * 0.5);
          }

          *(v4 + 16) = v18;
          v19 = v3[3];
          v20 = -v19;
          if (v19 >= 0.0)
          {
            v20 = v3[3];
          }

          if (v20 >= 0.00001)
          {
            v21 = exp(v19) + -1.0;
          }

          else
          {
            v21 = v19 + v19 * (v19 * 0.5);
          }

          *(v4 + 24) = v21;
          v22 = v3[4];
          v23 = -v22;
          if (v22 >= 0.0)
          {
            v23 = v3[4];
          }

          if (v23 >= 0.00001)
          {
            v24 = exp(v22) + -1.0;
          }

          else
          {
            v24 = v22 + v22 * (v22 * 0.5);
          }

          *(v4 + 32) = v24;
          v25 = v3[5];
          v26 = -v25;
          if (v25 >= 0.0)
          {
            v26 = v3[5];
          }

          if (v26 >= 0.00001)
          {
            v27 = exp(v25) + -1.0;
          }

          else
          {
            v27 = v25 + v25 * (v25 * 0.5);
          }

          *(v4 + 40) = v27;
          v28 = v3[6];
          v29 = -v28;
          if (v28 >= 0.0)
          {
            v29 = v3[6];
          }

          if (v29 >= 0.00001)
          {
            v30 = exp(v28) + -1.0;
          }

          else
          {
            v30 = v28 + v28 * (v28 * 0.5);
          }

          *(v4 + 48) = v30;
          v31 = v3[7];
          v32 = -v31;
          if (v31 >= 0.0)
          {
            v32 = v3[7];
          }

          if (v32 >= 0.00001)
          {
            v33 = exp(v31) + -1.0;
          }

          else
          {
            v33 = v31 + v31 * (v31 * 0.5);
          }

          *(v4 + 56) = v33;
          v34 = v3[8];
          v35 = -v34;
          if (v34 >= 0.0)
          {
            v35 = v3[8];
          }

          if (v35 >= 0.00001)
          {
            v36 = exp(v34) + -1.0;
          }

          else
          {
            v36 = v34 + v34 * (v34 * 0.5);
          }

          *(v4 + 64) = v36;
          v37 = v3[9];
          v38 = -v37;
          if (v37 >= 0.0)
          {
            v38 = v3[9];
          }

          if (v38 >= 0.00001)
          {
            v39 = exp(v37) + -1.0;
          }

          else
          {
            v39 = v37 + v37 * (v37 * 0.5);
          }

          *(v4 + 72) = v39;
          v40 = v3[10];
          v41 = -v40;
          if (v40 >= 0.0)
          {
            v41 = v3[10];
          }

          if (v41 >= 0.00001)
          {
            v42 = exp(v40) + -1.0;
          }

          else
          {
            v42 = v40 + v40 * (v40 * 0.5);
          }

          *(v4 + 80) = v42;
          v43 = v3[11];
          v44 = -v43;
          if (v43 >= 0.0)
          {
            v44 = v3[11];
          }

          if (v44 >= 0.00001)
          {
            v45 = exp(v43) + -1.0;
          }

          else
          {
            v45 = v43 + v43 * (v43 * 0.5);
          }

          *(v4 + 88) = v45;
          v46 = v3[12];
          v47 = -v46;
          if (v46 >= 0.0)
          {
            v47 = v3[12];
          }

          if (v47 >= 0.00001)
          {
            v48 = exp(v46) + -1.0;
          }

          else
          {
            v48 = v46 + v46 * (v46 * 0.5);
          }

          *(v4 + 96) = v48;
          v49 = v3[13];
          v50 = -v49;
          if (v49 >= 0.0)
          {
            v50 = v3[13];
          }

          if (v50 >= 0.00001)
          {
            v51 = exp(v49) + -1.0;
          }

          else
          {
            v51 = v49 + v49 * (v49 * 0.5);
          }

          *(v4 + 104) = v51;
          v52 = v3[14];
          v53 = -v52;
          if (v52 >= 0.0)
          {
            v53 = v3[14];
          }

          if (v53 >= 0.00001)
          {
            v54 = exp(v52) + -1.0;
          }

          else
          {
            v54 = v52 + v52 * (v52 * 0.5);
          }

          *(v4 + 112) = v54;
          v55 = v3[15];
          v56 = -v55;
          if (v55 >= 0.0)
          {
            v56 = v3[15];
          }

          if (v56 < 0.00001)
          {
            break;
          }

          *(v4 + 120) = exp(v55) + -1.0;
          v3 += 16;
          v4 += 128;
          if (v3 >= v9)
          {
            goto LABEL_87;
          }
        }

        *(v4 + 120) = v55 + v55 * (v55 * 0.5);
        v3 += 16;
        v4 += 128;
      }

      while (v3 < v9);
    }

LABEL_87:
    v57 = 0;
    v58 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_173;
      case 2:
        goto LABEL_167;
      case 3:
        goto LABEL_161;
      case 4:
        goto LABEL_155;
      case 5:
        goto LABEL_149;
      case 6:
        goto LABEL_143;
      case 7:
        goto LABEL_137;
      case 8:
        goto LABEL_131;
      case 9:
        goto LABEL_125;
      case 10:
        goto LABEL_119;
      case 11:
        goto LABEL_113;
      case 12:
        goto LABEL_107;
      case 13:
        goto LABEL_101;
      case 14:
        goto LABEL_95;
      case 15:
        v59 = *v3;
        v60 = -*v3;
        if (*v3 >= 0.0)
        {
          v60 = *v3;
        }

        if (v60 >= 0.00001)
        {
          v59 = exp(v59);
          v61 = -1.0;
        }

        else
        {
          v61 = v59 * (v59 * 0.5);
        }

        *v4 = v59 + v61;
        v58 = 1;
LABEL_95:
        v62 = v3[v58];
        v63 = v58;
        v64 = -v62;
        if (v62 >= 0.0)
        {
          v64 = v3[v58];
        }

        if (v64 >= 0.00001)
        {
          v62 = exp(v62);
          v65 = -1.0;
        }

        else
        {
          v65 = v62 * (v62 * 0.5);
        }

        *(v4 + 8 * v63) = v62 + v65;
        v58 = v63 + 1;
LABEL_101:
        v66 = v3[v58];
        v67 = v58;
        v68 = -v66;
        if (v66 >= 0.0)
        {
          v68 = v3[v58];
        }

        if (v68 >= 0.00001)
        {
          v66 = exp(v66);
          v69 = -1.0;
        }

        else
        {
          v69 = v66 * (v66 * 0.5);
        }

        *(v4 + 8 * v67) = v66 + v69;
        v58 = v67 + 1;
LABEL_107:
        v70 = v3[v58];
        v71 = v58;
        v72 = -v70;
        if (v70 >= 0.0)
        {
          v72 = v3[v58];
        }

        if (v72 >= 0.00001)
        {
          v70 = exp(v70);
          v73 = -1.0;
        }

        else
        {
          v73 = v70 * (v70 * 0.5);
        }

        *(v4 + 8 * v71) = v70 + v73;
        v58 = v71 + 1;
LABEL_113:
        v74 = v3[v58];
        v75 = v58;
        v76 = -v74;
        if (v74 >= 0.0)
        {
          v76 = v3[v58];
        }

        if (v76 >= 0.00001)
        {
          v74 = exp(v74);
          v77 = -1.0;
        }

        else
        {
          v77 = v74 * (v74 * 0.5);
        }

        *(v4 + 8 * v75) = v74 + v77;
        v58 = v75 + 1;
LABEL_119:
        v78 = v3[v58];
        v79 = v58;
        v80 = -v78;
        if (v78 >= 0.0)
        {
          v80 = v3[v58];
        }

        if (v80 >= 0.00001)
        {
          v78 = exp(v78);
          v81 = -1.0;
        }

        else
        {
          v81 = v78 * (v78 * 0.5);
        }

        *(v4 + 8 * v79) = v78 + v81;
        v58 = v79 + 1;
LABEL_125:
        v82 = v3[v58];
        v83 = v58;
        v84 = -v82;
        if (v82 >= 0.0)
        {
          v84 = v3[v58];
        }

        if (v84 >= 0.00001)
        {
          v82 = exp(v82);
          v85 = -1.0;
        }

        else
        {
          v85 = v82 * (v82 * 0.5);
        }

        *(v4 + 8 * v83) = v82 + v85;
        v58 = v83 + 1;
LABEL_131:
        v86 = v3[v58];
        v87 = v58;
        v88 = -v86;
        if (v86 >= 0.0)
        {
          v88 = v3[v58];
        }

        if (v88 >= 0.00001)
        {
          v86 = exp(v86);
          v89 = -1.0;
        }

        else
        {
          v89 = v86 * (v86 * 0.5);
        }

        *(v4 + 8 * v87) = v86 + v89;
        v58 = v87 + 1;
LABEL_137:
        v90 = v3[v58];
        v91 = v58;
        v92 = -v90;
        if (v90 >= 0.0)
        {
          v92 = v3[v58];
        }

        if (v92 >= 0.00001)
        {
          v90 = exp(v90);
          v93 = -1.0;
        }

        else
        {
          v93 = v90 * (v90 * 0.5);
        }

        *(v4 + 8 * v91) = v90 + v93;
        v58 = v91 + 1;
LABEL_143:
        v94 = v3[v58];
        v95 = v58;
        v96 = -v94;
        if (v94 >= 0.0)
        {
          v96 = v3[v58];
        }

        if (v96 >= 0.00001)
        {
          v94 = exp(v94);
          v97 = -1.0;
        }

        else
        {
          v97 = v94 * (v94 * 0.5);
        }

        *(v4 + 8 * v95) = v94 + v97;
        v58 = v95 + 1;
LABEL_149:
        v98 = v3[v58];
        v99 = v58;
        v100 = -v98;
        if (v98 >= 0.0)
        {
          v100 = v3[v58];
        }

        if (v100 >= 0.00001)
        {
          v98 = exp(v98);
          v101 = -1.0;
        }

        else
        {
          v101 = v98 * (v98 * 0.5);
        }

        *(v4 + 8 * v99) = v98 + v101;
        v58 = v99 + 1;
LABEL_155:
        v102 = v3[v58];
        v103 = v58;
        v104 = -v102;
        if (v102 >= 0.0)
        {
          v104 = v3[v58];
        }

        if (v104 >= 0.00001)
        {
          v102 = exp(v102);
          v105 = -1.0;
        }

        else
        {
          v105 = v102 * (v102 * 0.5);
        }

        *(v4 + 8 * v103) = v102 + v105;
        v58 = v103 + 1;
LABEL_161:
        v106 = v3[v58];
        v107 = v58;
        v108 = -v106;
        if (v106 >= 0.0)
        {
          v108 = v3[v58];
        }

        if (v108 >= 0.00001)
        {
          v106 = exp(v106);
          v109 = -1.0;
        }

        else
        {
          v109 = v106 * (v106 * 0.5);
        }

        *(v4 + 8 * v107) = v106 + v109;
        v58 = v107 + 1;
LABEL_167:
        v110 = v3[v58];
        v111 = v58;
        v112 = -v110;
        if (v110 >= 0.0)
        {
          v112 = v3[v58];
        }

        if (v112 >= 0.00001)
        {
          v110 = exp(v110);
          v113 = -1.0;
        }

        else
        {
          v113 = v110 * (v110 * 0.5);
        }

        *(v4 + 8 * v111) = v110 + v113;
        v57 = (v111 + 1);
LABEL_173:
        v114 = v3[v57];
        v115 = -v114;
        if (v114 >= 0.0)
        {
          v115 = v3[v57];
        }

        if (v115 >= 0.00001)
        {
          v114 = exp(v114);
          v116 = -1.0;
        }

        else
        {
          v116 = v114 * (v114 * 0.5);
        }

        *(v4 + 8 * v57) = v114 + v116;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_100080(uint64_t a1)
{
  sub_10011C(a1 - 32);

  operator delete();
}

uint64_t sub_10011C(uint64_t a1)
{
  *a1 = off_2631E70;
  *(a1 + 32) = off_2631ED0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_100288(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631F58;
  *(a1 + 32) = off_2631FB8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1008DC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10097C(uint64_t a1)
{
  sub_100E30(a1);

  operator delete();
}

double sub_1009B4(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = floor(*v3);
      v4[1] = floor(v3[1]);
      v4[2] = floor(v3[2]);
      v4[3] = floor(v3[3]);
      v4[4] = floor(v3[4]);
      v4[5] = floor(v3[5]);
      v4[6] = floor(v3[6]);
      v4[7] = floor(v3[7]);
      v4[8] = floor(v3[8]);
      v4[9] = floor(v3[9]);
      v4[10] = floor(v3[10]);
      v4[11] = floor(v3[11]);
      v4[12] = floor(v3[12]);
      v4[13] = floor(v3[13]);
      v4[14] = floor(v3[14]);
      v4[15] = floor(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = floor(*v3);
      v10 = 1;
LABEL_10:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_11:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_12:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_13:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_14:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_15:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_16:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_17:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_18:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_19:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_20:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_21:
      v4[v10] = floor(v3[v10]);
      ++v10;
LABEL_22:
      v4[v10] = floor(v3[v10]);
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = floor(v3[v9]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_100D94(uint64_t a1)
{
  sub_100E30(a1 - 32);

  operator delete();
}

uint64_t sub_100E30(uint64_t a1)
{
  *a1 = off_2631F58;
  *(a1 + 32) = off_2631FB8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_100F9C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632040;
  *(a1 + 32) = off_26320A0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1015F0(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_101690(uint64_t a1)
{
  sub_101B50(a1);

  operator delete();
}

double sub_1016C8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = log(*v3);
      v4[1] = log(v3[1]);
      v4[2] = log(v3[2]);
      v4[3] = log(v3[3]);
      v4[4] = log(v3[4]);
      v4[5] = log(v3[5]);
      v4[6] = log(v3[6]);
      v4[7] = log(v3[7]);
      v4[8] = log(v3[8]);
      v4[9] = log(v3[9]);
      v4[10] = log(v3[10]);
      v4[11] = log(v3[11]);
      v4[12] = log(v3[12]);
      v4[13] = log(v3[13]);
      v4[14] = log(v3[14]);
      v4[15] = log(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = log(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = log(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = log(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = log(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_101AB4(uint64_t a1)
{
  sub_101B50(a1 - 32);

  operator delete();
}

uint64_t sub_101B50(uint64_t a1)
{
  *a1 = off_2632040;
  *(a1 + 32) = off_26320A0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_101CBC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632128;
  *(a1 + 32) = off_2632188;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_102310(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_1023B0(uint64_t a1)
{
  sub_102870(a1);

  operator delete();
}

double sub_1023E8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = log10(*v3);
      v4[1] = log10(v3[1]);
      v4[2] = log10(v3[2]);
      v4[3] = log10(v3[3]);
      v4[4] = log10(v3[4]);
      v4[5] = log10(v3[5]);
      v4[6] = log10(v3[6]);
      v4[7] = log10(v3[7]);
      v4[8] = log10(v3[8]);
      v4[9] = log10(v3[9]);
      v4[10] = log10(v3[10]);
      v4[11] = log10(v3[11]);
      v4[12] = log10(v3[12]);
      v4[13] = log10(v3[13]);
      v4[14] = log10(v3[14]);
      v4[15] = log10(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = log10(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = log10(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = log10(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = log10(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1027D4(uint64_t a1)
{
  sub_102870(a1 - 32);

  operator delete();
}

uint64_t sub_102870(uint64_t a1)
{
  *a1 = off_2632128;
  *(a1 + 32) = off_2632188;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1029DC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632210;
  *(a1 + 32) = off_2632270;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_103030(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_1030D0(uint64_t a1)
{
  sub_103650(a1);

  operator delete();
}

uint64_t sub_103108(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = &v3[v8 / 8];
      do
      {
        *v4 = log(*v3) / 0.693147181;
        v4[1] = log(v3[1]) / 0.693147181;
        v4[2] = log(v3[2]) / 0.693147181;
        v4[3] = log(v3[3]) / 0.693147181;
        v4[4] = log(v3[4]) / 0.693147181;
        v4[5] = log(v3[5]) / 0.693147181;
        v4[6] = log(v3[6]) / 0.693147181;
        v4[7] = log(v3[7]) / 0.693147181;
        v4[8] = log(v3[8]) / 0.693147181;
        v4[9] = log(v3[9]) / 0.693147181;
        v4[10] = log(v3[10]) / 0.693147181;
        v4[11] = log(v3[11]) / 0.693147181;
        v4[12] = log(v3[12]) / 0.693147181;
        v4[13] = log(v3[13]) / 0.693147181;
        v4[14] = log(v3[14]) / 0.693147181;
        v4[15] = log(v3[15]) / 0.693147181;
        v3 += 16;
        v4 += 16;
      }

      while (v3 < v9);
    }

    v10 = 0;
    v11 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_23;
      case 2:
        goto LABEL_22;
      case 3:
        goto LABEL_21;
      case 4:
        goto LABEL_20;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      case 7:
        goto LABEL_17;
      case 8:
        goto LABEL_16;
      case 9:
        goto LABEL_15;
      case 10:
        goto LABEL_14;
      case 11:
        goto LABEL_13;
      case 12:
        goto LABEL_12;
      case 13:
        goto LABEL_11;
      case 14:
        goto LABEL_10;
      case 15:
        *v4 = log(*v3) / 0.693147181;
        v11 = 1;
LABEL_10:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_11:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_12:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_13:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_14:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_15:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_16:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_17:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_18:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_19:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_20:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_21:
        v4[v11] = log(v3[v11]) / 0.693147181;
        ++v11;
LABEL_22:
        v4[v11] = log(v3[v11]) / 0.693147181;
        v10 = v11 + 1;
LABEL_23:
        v4[v10] = log(v3[v10]) / 0.693147181;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_1035B4(uint64_t a1)
{
  sub_103650(a1 - 32);

  operator delete();
}

uint64_t sub_103650(uint64_t a1)
{
  *a1 = off_2632210;
  *(a1 + 32) = off_2632270;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1037BC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26322F8;
  *(a1 + 32) = off_2632358;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_103E10(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_103EB0(uint64_t a1)
{
  sub_104E10(a1);

  operator delete();
}

uint64_t sub_103EE8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = &v3[v8 / 8];
      do
      {
        v11 = *v3;
        if (*v3 <= -1.0)
        {
          *v4 = 0x7FF8000000000000;
          v13 = v3[1];
          if (v13 <= -1.0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v12 = -v11;
          if (v11 >= 0.0)
          {
            v12 = *v3;
          }

          if (v12 <= 0.0001)
          {
            *v4 = v11 * (v11 * -0.5 + 1.0);
            v13 = v3[1];
            if (v13 <= -1.0)
            {
LABEL_22:
              *(v4 + 8) = 0x7FF8000000000000;
              v15 = v3[2];
              if (v15 <= -1.0)
              {
                goto LABEL_29;
              }

              goto LABEL_23;
            }
          }

          else
          {
            *v4 = log(v11 + 1.0);
            v13 = v3[1];
            if (v13 <= -1.0)
            {
              goto LABEL_22;
            }
          }
        }

        v14 = -v13;
        if (v13 >= 0.0)
        {
          v14 = v13;
        }

        if (v14 <= 0.0001)
        {
          *(v4 + 8) = v13 * (v13 * -0.5 + 1.0);
          v15 = v3[2];
          if (v15 <= -1.0)
          {
LABEL_29:
            *(v4 + 16) = 0x7FF8000000000000;
            v17 = v3[3];
            if (v17 <= -1.0)
            {
              goto LABEL_36;
            }

            goto LABEL_30;
          }
        }

        else
        {
          *(v4 + 8) = log(v13 + 1.0);
          v15 = v3[2];
          if (v15 <= -1.0)
          {
            goto LABEL_29;
          }
        }

LABEL_23:
        v16 = -v15;
        if (v15 >= 0.0)
        {
          v16 = v15;
        }

        if (v16 <= 0.0001)
        {
          *(v4 + 16) = v15 * (v15 * -0.5 + 1.0);
          v17 = v3[3];
          if (v17 <= -1.0)
          {
LABEL_36:
            *(v4 + 24) = 0x7FF8000000000000;
            v19 = v3[4];
            if (v19 <= -1.0)
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          }
        }

        else
        {
          *(v4 + 16) = log(v15 + 1.0);
          v17 = v3[3];
          if (v17 <= -1.0)
          {
            goto LABEL_36;
          }
        }

LABEL_30:
        v18 = -v17;
        if (v17 >= 0.0)
        {
          v18 = v17;
        }

        if (v18 <= 0.0001)
        {
          *(v4 + 24) = v17 * (v17 * -0.5 + 1.0);
          v19 = v3[4];
          if (v19 <= -1.0)
          {
LABEL_43:
            *(v4 + 32) = 0x7FF8000000000000;
            v21 = v3[5];
            if (v21 <= -1.0)
            {
              goto LABEL_50;
            }

            goto LABEL_44;
          }
        }

        else
        {
          *(v4 + 24) = log(v17 + 1.0);
          v19 = v3[4];
          if (v19 <= -1.0)
          {
            goto LABEL_43;
          }
        }

LABEL_37:
        v20 = -v19;
        if (v19 >= 0.0)
        {
          v20 = v19;
        }

        if (v20 <= 0.0001)
        {
          *(v4 + 32) = v19 * (v19 * -0.5 + 1.0);
          v21 = v3[5];
          if (v21 <= -1.0)
          {
LABEL_50:
            *(v4 + 40) = 0x7FF8000000000000;
            v23 = v3[6];
            if (v23 <= -1.0)
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          }
        }

        else
        {
          *(v4 + 32) = log(v19 + 1.0);
          v21 = v3[5];
          if (v21 <= -1.0)
          {
            goto LABEL_50;
          }
        }

LABEL_44:
        v22 = -v21;
        if (v21 >= 0.0)
        {
          v22 = v21;
        }

        if (v22 <= 0.0001)
        {
          *(v4 + 40) = v21 * (v21 * -0.5 + 1.0);
          v23 = v3[6];
          if (v23 <= -1.0)
          {
LABEL_57:
            *(v4 + 48) = 0x7FF8000000000000;
            v25 = v3[7];
            if (v25 <= -1.0)
            {
              goto LABEL_64;
            }

            goto LABEL_58;
          }
        }

        else
        {
          *(v4 + 40) = log(v21 + 1.0);
          v23 = v3[6];
          if (v23 <= -1.0)
          {
            goto LABEL_57;
          }
        }

LABEL_51:
        v24 = -v23;
        if (v23 >= 0.0)
        {
          v24 = v23;
        }

        if (v24 <= 0.0001)
        {
          *(v4 + 48) = v23 * (v23 * -0.5 + 1.0);
          v25 = v3[7];
          if (v25 <= -1.0)
          {
LABEL_64:
            *(v4 + 56) = 0x7FF8000000000000;
            v27 = v3[8];
            if (v27 <= -1.0)
            {
              goto LABEL_71;
            }

            goto LABEL_65;
          }
        }

        else
        {
          *(v4 + 48) = log(v23 + 1.0);
          v25 = v3[7];
          if (v25 <= -1.0)
          {
            goto LABEL_64;
          }
        }

LABEL_58:
        v26 = -v25;
        if (v25 >= 0.0)
        {
          v26 = v25;
        }

        if (v26 <= 0.0001)
        {
          *(v4 + 56) = v25 * (v25 * -0.5 + 1.0);
          v27 = v3[8];
          if (v27 <= -1.0)
          {
LABEL_71:
            *(v4 + 64) = 0x7FF8000000000000;
            v29 = v3[9];
            if (v29 <= -1.0)
            {
              goto LABEL_78;
            }

            goto LABEL_72;
          }
        }

        else
        {
          *(v4 + 56) = log(v25 + 1.0);
          v27 = v3[8];
          if (v27 <= -1.0)
          {
            goto LABEL_71;
          }
        }

LABEL_65:
        v28 = -v27;
        if (v27 >= 0.0)
        {
          v28 = v27;
        }

        if (v28 <= 0.0001)
        {
          *(v4 + 64) = v27 * (v27 * -0.5 + 1.0);
          v29 = v3[9];
          if (v29 <= -1.0)
          {
LABEL_78:
            *(v4 + 72) = 0x7FF8000000000000;
            v31 = v3[10];
            if (v31 <= -1.0)
            {
              goto LABEL_85;
            }

            goto LABEL_79;
          }
        }

        else
        {
          *(v4 + 64) = log(v27 + 1.0);
          v29 = v3[9];
          if (v29 <= -1.0)
          {
            goto LABEL_78;
          }
        }

LABEL_72:
        v30 = -v29;
        if (v29 >= 0.0)
        {
          v30 = v29;
        }

        if (v30 <= 0.0001)
        {
          *(v4 + 72) = v29 * (v29 * -0.5 + 1.0);
          v31 = v3[10];
          if (v31 <= -1.0)
          {
LABEL_85:
            *(v4 + 80) = 0x7FF8000000000000;
            v33 = v3[11];
            if (v33 <= -1.0)
            {
              goto LABEL_92;
            }

            goto LABEL_86;
          }
        }

        else
        {
          *(v4 + 72) = log(v29 + 1.0);
          v31 = v3[10];
          if (v31 <= -1.0)
          {
            goto LABEL_85;
          }
        }

LABEL_79:
        v32 = -v31;
        if (v31 >= 0.0)
        {
          v32 = v31;
        }

        if (v32 <= 0.0001)
        {
          *(v4 + 80) = v31 * (v31 * -0.5 + 1.0);
          v33 = v3[11];
          if (v33 <= -1.0)
          {
LABEL_92:
            *(v4 + 88) = 0x7FF8000000000000;
            v35 = v3[12];
            if (v35 <= -1.0)
            {
              goto LABEL_99;
            }

            goto LABEL_93;
          }
        }

        else
        {
          *(v4 + 80) = log(v31 + 1.0);
          v33 = v3[11];
          if (v33 <= -1.0)
          {
            goto LABEL_92;
          }
        }

LABEL_86:
        v34 = -v33;
        if (v33 >= 0.0)
        {
          v34 = v33;
        }

        if (v34 <= 0.0001)
        {
          *(v4 + 88) = v33 * (v33 * -0.5 + 1.0);
          v35 = v3[12];
          if (v35 <= -1.0)
          {
LABEL_99:
            *(v4 + 96) = 0x7FF8000000000000;
            v37 = v3[13];
            if (v37 <= -1.0)
            {
              goto LABEL_106;
            }

            goto LABEL_100;
          }
        }

        else
        {
          *(v4 + 88) = log(v33 + 1.0);
          v35 = v3[12];
          if (v35 <= -1.0)
          {
            goto LABEL_99;
          }
        }

LABEL_93:
        v36 = -v35;
        if (v35 >= 0.0)
        {
          v36 = v35;
        }

        if (v36 <= 0.0001)
        {
          *(v4 + 96) = v35 * (v35 * -0.5 + 1.0);
          v37 = v3[13];
          if (v37 <= -1.0)
          {
LABEL_106:
            *(v4 + 104) = 0x7FF8000000000000;
            v39 = v3[14];
            if (v39 <= -1.0)
            {
              goto LABEL_113;
            }

            goto LABEL_107;
          }
        }

        else
        {
          *(v4 + 96) = log(v35 + 1.0);
          v37 = v3[13];
          if (v37 <= -1.0)
          {
            goto LABEL_106;
          }
        }

LABEL_100:
        v38 = -v37;
        if (v37 >= 0.0)
        {
          v38 = v37;
        }

        if (v38 <= 0.0001)
        {
          *(v4 + 104) = v37 * (v37 * -0.5 + 1.0);
          v39 = v3[14];
          if (v39 <= -1.0)
          {
LABEL_113:
            *(v4 + 112) = 0x7FF8000000000000;
            v41 = v3[15];
            if (v41 > -1.0)
            {
              goto LABEL_116;
            }

            goto LABEL_7;
          }
        }

        else
        {
          *(v4 + 104) = log(v37 + 1.0);
          v39 = v3[14];
          if (v39 <= -1.0)
          {
            goto LABEL_113;
          }
        }

LABEL_107:
        v40 = -v39;
        if (v39 >= 0.0)
        {
          v40 = v39;
        }

        if (v40 <= 0.0001)
        {
          *(v4 + 112) = v39 * (v39 * -0.5 + 1.0);
          v41 = v3[15];
          if (v41 > -1.0)
          {
LABEL_116:
            v42 = -v41;
            if (v41 >= 0.0)
            {
              v42 = v41;
            }

            if (v42 <= 0.0001)
            {
              v10 = v41 * (v41 * -0.5 + 1.0);
            }

            else
            {
              v10 = log(v41 + 1.0);
            }

            goto LABEL_8;
          }
        }

        else
        {
          *(v4 + 112) = log(v39 + 1.0);
          v41 = v3[15];
          if (v41 > -1.0)
          {
            goto LABEL_116;
          }
        }

LABEL_7:
        v10 = NAN;
LABEL_8:
        *(v4 + 120) = v10;
        v3 += 16;
        v4 += 128;
      }

      while (v3 < v9);
    }

    v43 = 0;
    v44 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_235;
      case 2:
        goto LABEL_227;
      case 3:
        goto LABEL_219;
      case 4:
        goto LABEL_211;
      case 5:
        goto LABEL_203;
      case 6:
        goto LABEL_195;
      case 7:
        goto LABEL_187;
      case 8:
        goto LABEL_179;
      case 9:
        goto LABEL_171;
      case 10:
        goto LABEL_163;
      case 11:
        goto LABEL_155;
      case 12:
        goto LABEL_147;
      case 13:
        goto LABEL_139;
      case 14:
        goto LABEL_131;
      case 15:
        v45 = *v3;
        if (*v3 <= -1.0)
        {
          v47 = NAN;
        }

        else
        {
          v46 = -v45;
          if (v45 >= 0.0)
          {
            v46 = *v3;
          }

          if (v46 <= 0.0001)
          {
            v47 = v45 * (v45 * -0.5 + 1.0);
          }

          else
          {
            v47 = log(v45 + 1.0);
          }
        }

        *v4 = v47;
        v44 = 1;
LABEL_131:
        v48 = v44;
        v49 = v3[v44];
        if (v49 <= -1.0)
        {
          v51 = NAN;
        }

        else
        {
          v50 = -v49;
          if (v49 >= 0.0)
          {
            v50 = v3[v44];
          }

          if (v50 <= 0.0001)
          {
            v51 = v49 * (v49 * -0.5 + 1.0);
          }

          else
          {
            v51 = log(v49 + 1.0);
          }
        }

        *(v4 + 8 * v48) = v51;
        v44 = v48 + 1;
LABEL_139:
        v52 = v44;
        v53 = v3[v44];
        if (v53 <= -1.0)
        {
          v55 = NAN;
        }

        else
        {
          v54 = -v53;
          if (v53 >= 0.0)
          {
            v54 = v3[v44];
          }

          if (v54 <= 0.0001)
          {
            v55 = v53 * (v53 * -0.5 + 1.0);
          }

          else
          {
            v55 = log(v53 + 1.0);
          }
        }

        *(v4 + 8 * v52) = v55;
        v44 = v52 + 1;
LABEL_147:
        v56 = v44;
        v57 = v3[v44];
        if (v57 <= -1.0)
        {
          v59 = NAN;
        }

        else
        {
          v58 = -v57;
          if (v57 >= 0.0)
          {
            v58 = v3[v44];
          }

          if (v58 <= 0.0001)
          {
            v59 = v57 * (v57 * -0.5 + 1.0);
          }

          else
          {
            v59 = log(v57 + 1.0);
          }
        }

        *(v4 + 8 * v56) = v59;
        v44 = v56 + 1;
LABEL_155:
        v60 = v44;
        v61 = v3[v44];
        if (v61 <= -1.0)
        {
          v63 = NAN;
        }

        else
        {
          v62 = -v61;
          if (v61 >= 0.0)
          {
            v62 = v3[v44];
          }

          if (v62 <= 0.0001)
          {
            v63 = v61 * (v61 * -0.5 + 1.0);
          }

          else
          {
            v63 = log(v61 + 1.0);
          }
        }

        *(v4 + 8 * v60) = v63;
        v44 = v60 + 1;
LABEL_163:
        v64 = v44;
        v65 = v3[v44];
        if (v65 <= -1.0)
        {
          v67 = NAN;
        }

        else
        {
          v66 = -v65;
          if (v65 >= 0.0)
          {
            v66 = v3[v44];
          }

          if (v66 <= 0.0001)
          {
            v67 = v65 * (v65 * -0.5 + 1.0);
          }

          else
          {
            v67 = log(v65 + 1.0);
          }
        }

        *(v4 + 8 * v64) = v67;
        v44 = v64 + 1;
LABEL_171:
        v68 = v44;
        v69 = v3[v44];
        if (v69 <= -1.0)
        {
          v71 = NAN;
        }

        else
        {
          v70 = -v69;
          if (v69 >= 0.0)
          {
            v70 = v3[v44];
          }

          if (v70 <= 0.0001)
          {
            v71 = v69 * (v69 * -0.5 + 1.0);
          }

          else
          {
            v71 = log(v69 + 1.0);
          }
        }

        *(v4 + 8 * v68) = v71;
        v44 = v68 + 1;
LABEL_179:
        v72 = v44;
        v73 = v3[v44];
        if (v73 <= -1.0)
        {
          v75 = NAN;
        }

        else
        {
          v74 = -v73;
          if (v73 >= 0.0)
          {
            v74 = v3[v44];
          }

          if (v74 <= 0.0001)
          {
            v75 = v73 * (v73 * -0.5 + 1.0);
          }

          else
          {
            v75 = log(v73 + 1.0);
          }
        }

        *(v4 + 8 * v72) = v75;
        v44 = v72 + 1;
LABEL_187:
        v76 = v44;
        v77 = v3[v44];
        if (v77 <= -1.0)
        {
          v79 = NAN;
        }

        else
        {
          v78 = -v77;
          if (v77 >= 0.0)
          {
            v78 = v3[v44];
          }

          if (v78 <= 0.0001)
          {
            v79 = v77 * (v77 * -0.5 + 1.0);
          }

          else
          {
            v79 = log(v77 + 1.0);
          }
        }

        *(v4 + 8 * v76) = v79;
        v44 = v76 + 1;
LABEL_195:
        v80 = v44;
        v81 = v3[v44];
        if (v81 <= -1.0)
        {
          v83 = NAN;
        }

        else
        {
          v82 = -v81;
          if (v81 >= 0.0)
          {
            v82 = v3[v44];
          }

          if (v82 <= 0.0001)
          {
            v83 = v81 * (v81 * -0.5 + 1.0);
          }

          else
          {
            v83 = log(v81 + 1.0);
          }
        }

        *(v4 + 8 * v80) = v83;
        v44 = v80 + 1;
LABEL_203:
        v84 = v44;
        v85 = v3[v44];
        if (v85 <= -1.0)
        {
          v87 = NAN;
        }

        else
        {
          v86 = -v85;
          if (v85 >= 0.0)
          {
            v86 = v3[v44];
          }

          if (v86 <= 0.0001)
          {
            v87 = v85 * (v85 * -0.5 + 1.0);
          }

          else
          {
            v87 = log(v85 + 1.0);
          }
        }

        *(v4 + 8 * v84) = v87;
        v44 = v84 + 1;
LABEL_211:
        v88 = v44;
        v89 = v3[v44];
        if (v89 <= -1.0)
        {
          v91 = NAN;
        }

        else
        {
          v90 = -v89;
          if (v89 >= 0.0)
          {
            v90 = v3[v44];
          }

          if (v90 <= 0.0001)
          {
            v91 = v89 * (v89 * -0.5 + 1.0);
          }

          else
          {
            v91 = log(v89 + 1.0);
          }
        }

        *(v4 + 8 * v88) = v91;
        v44 = v88 + 1;
LABEL_219:
        v92 = v44;
        v93 = v3[v44];
        if (v93 <= -1.0)
        {
          v95 = NAN;
        }

        else
        {
          v94 = -v93;
          if (v93 >= 0.0)
          {
            v94 = v3[v44];
          }

          if (v94 <= 0.0001)
          {
            v95 = v93 * (v93 * -0.5 + 1.0);
          }

          else
          {
            v95 = log(v93 + 1.0);
          }
        }

        *(v4 + 8 * v92) = v95;
        v44 = v92 + 1;
LABEL_227:
        v96 = v44;
        v97 = v3[v44];
        if (v97 <= -1.0)
        {
          v99 = NAN;
        }

        else
        {
          v98 = -v97;
          if (v97 >= 0.0)
          {
            v98 = v3[v44];
          }

          if (v98 <= 0.0001)
          {
            v99 = v97 * (v97 * -0.5 + 1.0);
          }

          else
          {
            v99 = log(v97 + 1.0);
          }
        }

        *(v4 + 8 * v96) = v99;
        v43 = (v96 + 1);
LABEL_235:
        v100 = v3[v43];
        if (v100 <= -1.0)
        {
          v102 = NAN;
        }

        else
        {
          v101 = -v100;
          if (v100 >= 0.0)
          {
            v101 = v3[v43];
          }

          if (v101 <= 0.0001)
          {
            v102 = v100 * (v100 * -0.5 + 1.0);
          }

          else
          {
            v102 = log(v100 + 1.0);
          }
        }

        *(v4 + 8 * v43) = v102;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_104D74(uint64_t a1)
{
  sub_104E10(a1 - 32);

  operator delete();
}

uint64_t sub_104E10(uint64_t a1)
{
  *a1 = off_26322F8;
  *(a1 + 32) = off_2632358;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_104F7C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26323E0;
  *(a1 + 32) = off_2632440;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1055D0(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_105670(uint64_t a1)
{
  sub_105B24(a1);

  operator delete();
}

double sub_1056A8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = -*v3;
      v4[1] = -v3[1];
      v4[2] = -v3[2];
      v4[3] = -v3[3];
      v4[4] = -v3[4];
      v4[5] = -v3[5];
      v4[6] = -v3[6];
      v4[7] = -v3[7];
      v4[8] = -v3[8];
      v4[9] = -v3[9];
      v4[10] = -v3[10];
      v4[11] = -v3[11];
      v4[12] = -v3[12];
      v4[13] = -v3[13];
      v4[14] = -v3[14];
      v4[15] = -v3[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = -*v3;
      v10 = 1;
LABEL_10:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = -v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = -v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = -v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_105A88(uint64_t a1)
{
  sub_105B24(a1 - 32);

  operator delete();
}

uint64_t sub_105B24(uint64_t a1)
{
  *a1 = off_26323E0;
  *(a1 + 32) = off_2632440;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_105C90(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26324C8;
  *(a1 + 32) = off_2632528;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1062E4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_106384(uint64_t a1)
{
  sub_1067BC(a1);

  operator delete();
}

double sub_1063BC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3;
      v4[1] = v3[1];
      v4[2] = v3[2];
      v4[3] = v3[3];
      v4[4] = v3[4];
      v4[5] = v3[5];
      v4[6] = v3[6];
      v4[7] = v3[7];
      v4[8] = v3[8];
      v4[9] = v3[9];
      v4[10] = v3[10];
      v4[11] = v3[11];
      v4[12] = v3[12];
      v4[13] = v3[13];
      v4[14] = v3[14];
      v4[15] = v3[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_106720(uint64_t a1)
{
  sub_1067BC(a1 - 32);

  operator delete();
}

uint64_t sub_1067BC(uint64_t a1)
{
  *a1 = off_26324C8;
  *(a1 + 32) = off_2632528;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_106928(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26325B0;
  *(a1 + 32) = off_2632610;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_106F7C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10701C(uint64_t a1)
{
  sub_1077BC(a1);

  operator delete();
}

double sub_107054(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = ceil(*v3 + -0.5);
      v10 = floor(*v3 + 0.5);
      if (*v3 >= 0.0)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      *v4 = v11;
      v12 = v3[1];
      v13 = ceil(v12 + -0.5);
      v14 = floor(v12 + 0.5);
      if (v12 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v4[1] = v15;
      v16 = v3[2];
      v17 = ceil(v16 + -0.5);
      v18 = floor(v16 + 0.5);
      if (v16 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v4[2] = v19;
      v20 = v3[3];
      v21 = ceil(v20 + -0.5);
      v22 = floor(v20 + 0.5);
      if (v20 >= 0.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      v4[3] = v23;
      v24 = v3[4];
      v25 = ceil(v24 + -0.5);
      v26 = floor(v24 + 0.5);
      if (v24 >= 0.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v4[4] = v27;
      v28 = v3[5];
      v29 = ceil(v28 + -0.5);
      v30 = floor(v28 + 0.5);
      if (v28 >= 0.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      v4[5] = v31;
      v32 = v3[6];
      v33 = ceil(v32 + -0.5);
      v34 = floor(v32 + 0.5);
      if (v32 >= 0.0)
      {
        v35 = v34;
      }

      else
      {
        v35 = v33;
      }

      v4[6] = v35;
      v36 = v3[7];
      v37 = ceil(v36 + -0.5);
      v38 = floor(v36 + 0.5);
      if (v36 >= 0.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
      }

      v4[7] = v39;
      v40 = v3[8];
      v41 = ceil(v40 + -0.5);
      v42 = floor(v40 + 0.5);
      if (v40 >= 0.0)
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      v4[8] = v43;
      v44 = v3[9];
      v45 = ceil(v44 + -0.5);
      v46 = floor(v44 + 0.5);
      if (v44 >= 0.0)
      {
        v47 = v46;
      }

      else
      {
        v47 = v45;
      }

      v4[9] = v47;
      v48 = v3[10];
      v49 = ceil(v48 + -0.5);
      v50 = floor(v48 + 0.5);
      if (v48 >= 0.0)
      {
        v51 = v50;
      }

      else
      {
        v51 = v49;
      }

      v4[10] = v51;
      v52 = v3[11];
      v53 = ceil(v52 + -0.5);
      v54 = floor(v52 + 0.5);
      if (v52 >= 0.0)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      v4[11] = v55;
      v56 = v3[12];
      v57 = ceil(v56 + -0.5);
      v58 = floor(v56 + 0.5);
      if (v56 >= 0.0)
      {
        v59 = v58;
      }

      else
      {
        v59 = v57;
      }

      v4[12] = v59;
      v60 = v3[13];
      v61 = ceil(v60 + -0.5);
      v62 = floor(v60 + 0.5);
      if (v60 >= 0.0)
      {
        v63 = v62;
      }

      else
      {
        v63 = v61;
      }

      v4[13] = v63;
      v64 = v3[14];
      v65 = ceil(v64 + -0.5);
      v66 = floor(v64 + 0.5);
      if (v64 >= 0.0)
      {
        v67 = v66;
      }

      else
      {
        v67 = v65;
      }

      v4[14] = v67;
      v68 = v3[15];
      v69 = ceil(v68 + -0.5);
      v70 = floor(v68 + 0.5);
      if (v68 >= 0.0)
      {
        v71 = v70;
      }

      else
      {
        v71 = v69;
      }

      v4[15] = v71;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v72 = 0;
  v73 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_113;
    case 2:
      goto LABEL_109;
    case 3:
      goto LABEL_105;
    case 4:
      goto LABEL_101;
    case 5:
      goto LABEL_97;
    case 6:
      goto LABEL_93;
    case 7:
      goto LABEL_89;
    case 8:
      goto LABEL_85;
    case 9:
      goto LABEL_81;
    case 0xA:
      goto LABEL_77;
    case 0xB:
      goto LABEL_73;
    case 0xC:
      goto LABEL_69;
    case 0xD:
      goto LABEL_65;
    case 0xE:
      goto LABEL_61;
    case 0xF:
      v74 = ceil(*v3 + -0.5);
      v75 = floor(*v3 + 0.5);
      if (*v3 >= 0.0)
      {
        v76 = v75;
      }

      else
      {
        v76 = v74;
      }

      *v4 = v76;
      v73 = 1;
LABEL_61:
      v77 = v3[v73];
      v78 = ceil(v77 + -0.5);
      v79 = floor(v77 + 0.5);
      if (v77 >= 0.0)
      {
        v80 = v79;
      }

      else
      {
        v80 = v78;
      }

      v4[v73++] = v80;
LABEL_65:
      v81 = v3[v73];
      v82 = ceil(v81 + -0.5);
      v83 = floor(v81 + 0.5);
      if (v81 >= 0.0)
      {
        v84 = v83;
      }

      else
      {
        v84 = v82;
      }

      v4[v73++] = v84;
LABEL_69:
      v85 = v3[v73];
      v86 = ceil(v85 + -0.5);
      v87 = floor(v85 + 0.5);
      if (v85 >= 0.0)
      {
        v88 = v87;
      }

      else
      {
        v88 = v86;
      }

      v4[v73++] = v88;
LABEL_73:
      v89 = v3[v73];
      v90 = ceil(v89 + -0.5);
      v91 = floor(v89 + 0.5);
      if (v89 >= 0.0)
      {
        v92 = v91;
      }

      else
      {
        v92 = v90;
      }

      v4[v73++] = v92;
LABEL_77:
      v93 = v3[v73];
      v94 = ceil(v93 + -0.5);
      v95 = floor(v93 + 0.5);
      if (v93 >= 0.0)
      {
        v96 = v95;
      }

      else
      {
        v96 = v94;
      }

      v4[v73++] = v96;
LABEL_81:
      v97 = v3[v73];
      v98 = ceil(v97 + -0.5);
      v99 = floor(v97 + 0.5);
      if (v97 >= 0.0)
      {
        v100 = v99;
      }

      else
      {
        v100 = v98;
      }

      v4[v73++] = v100;
LABEL_85:
      v101 = v3[v73];
      v102 = ceil(v101 + -0.5);
      v103 = floor(v101 + 0.5);
      if (v101 >= 0.0)
      {
        v104 = v103;
      }

      else
      {
        v104 = v102;
      }

      v4[v73++] = v104;
LABEL_89:
      v105 = v3[v73];
      v106 = ceil(v105 + -0.5);
      v107 = floor(v105 + 0.5);
      if (v105 >= 0.0)
      {
        v108 = v107;
      }

      else
      {
        v108 = v106;
      }

      v4[v73++] = v108;
LABEL_93:
      v109 = v3[v73];
      v110 = ceil(v109 + -0.5);
      v111 = floor(v109 + 0.5);
      if (v109 >= 0.0)
      {
        v112 = v111;
      }

      else
      {
        v112 = v110;
      }

      v4[v73++] = v112;
LABEL_97:
      v113 = v3[v73];
      v114 = ceil(v113 + -0.5);
      v115 = floor(v113 + 0.5);
      if (v113 >= 0.0)
      {
        v116 = v115;
      }

      else
      {
        v116 = v114;
      }

      v4[v73++] = v116;
LABEL_101:
      v117 = v3[v73];
      v118 = ceil(v117 + -0.5);
      v119 = floor(v117 + 0.5);
      if (v117 >= 0.0)
      {
        v120 = v119;
      }

      else
      {
        v120 = v118;
      }

      v4[v73++] = v120;
LABEL_105:
      v121 = v3[v73];
      v122 = ceil(v121 + -0.5);
      v123 = floor(v121 + 0.5);
      if (v121 >= 0.0)
      {
        v124 = v123;
      }

      else
      {
        v124 = v122;
      }

      v4[v73++] = v124;
LABEL_109:
      v125 = v3[v73];
      v126 = ceil(v125 + -0.5);
      v127 = floor(v125 + 0.5);
      if (v125 >= 0.0)
      {
        v128 = v127;
      }

      else
      {
        v128 = v126;
      }

      v4[v73] = v128;
      v72 = v73 + 1;
LABEL_113:
      v129 = v3[v72];
      v130 = ceil(v129 + -0.5);
      v131 = floor(v129 + 0.5);
      if (v129 >= 0.0)
      {
        v132 = v131;
      }

      else
      {
        v132 = v130;
      }

      v4[v72] = v132;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_107720(uint64_t a1)
{
  sub_1077BC(a1 - 32);

  operator delete();
}

uint64_t sub_1077BC(uint64_t a1)
{
  *a1 = off_26325B0;
  *(a1 + 32) = off_2632610;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_107928(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632698;
  *(a1 + 32) = off_26326F8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_107F7C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10801C(uint64_t a1)
{
  sub_1084DC(a1);

  operator delete();
}

double sub_108054(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = sin(*v3);
      v4[1] = sin(v3[1]);
      v4[2] = sin(v3[2]);
      v4[3] = sin(v3[3]);
      v4[4] = sin(v3[4]);
      v4[5] = sin(v3[5]);
      v4[6] = sin(v3[6]);
      v4[7] = sin(v3[7]);
      v4[8] = sin(v3[8]);
      v4[9] = sin(v3[9]);
      v4[10] = sin(v3[10]);
      v4[11] = sin(v3[11]);
      v4[12] = sin(v3[12]);
      v4[13] = sin(v3[13]);
      v4[14] = sin(v3[14]);
      v4[15] = sin(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = sin(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = sin(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = sin(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = sin(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_108440(uint64_t a1)
{
  sub_1084DC(a1 - 32);

  operator delete();
}

uint64_t sub_1084DC(uint64_t a1)
{
  *a1 = off_2632698;
  *(a1 + 32) = off_26326F8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_108648(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632780;
  *(a1 + 32) = off_26327E0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_108C9C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_108D3C(uint64_t a1)
{
  sub_1095B8(a1);

  operator delete();
}

uint64_t sub_108D74(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = v3 + v8;
      do
      {
        v11 = 1.0;
        v12 = 1.0;
        if (fabs(*v3) >= 2.22044605e-16)
        {
          v10 = *v3;
          v12 = sin(*v3) / v10;
        }

        *v4 = v12;
        v13 = *(v3 + 8);
        if (fabs(v13) >= 2.22044605e-16)
        {
          v11 = sin(*(v3 + 8)) / v13;
        }

        *(v4 + 8) = v11;
        v14 = *(v3 + 16);
        v15 = 1.0;
        v16 = 1.0;
        if (fabs(v14) >= 2.22044605e-16)
        {
          v16 = sin(*(v3 + 16)) / v14;
        }

        *(v4 + 16) = v16;
        v17 = *(v3 + 24);
        if (fabs(v17) >= 2.22044605e-16)
        {
          v15 = sin(*(v3 + 24)) / v17;
        }

        *(v4 + 24) = v15;
        v18 = *(v3 + 32);
        v19 = 1.0;
        v20 = 1.0;
        if (fabs(v18) >= 2.22044605e-16)
        {
          v20 = sin(*(v3 + 32)) / v18;
        }

        *(v4 + 32) = v20;
        v21 = *(v3 + 40);
        if (fabs(v21) >= 2.22044605e-16)
        {
          v19 = sin(*(v3 + 40)) / v21;
        }

        *(v4 + 40) = v19;
        v22 = *(v3 + 48);
        v23 = 1.0;
        v24 = 1.0;
        if (fabs(v22) >= 2.22044605e-16)
        {
          v24 = sin(*(v3 + 48)) / v22;
        }

        *(v4 + 48) = v24;
        v25 = *(v3 + 56);
        if (fabs(v25) >= 2.22044605e-16)
        {
          v23 = sin(*(v3 + 56)) / v25;
        }

        *(v4 + 56) = v23;
        v26 = *(v3 + 64);
        v27 = 1.0;
        v28 = 1.0;
        if (fabs(v26) >= 2.22044605e-16)
        {
          v28 = sin(*(v3 + 64)) / v26;
        }

        *(v4 + 64) = v28;
        v29 = *(v3 + 72);
        if (fabs(v29) >= 2.22044605e-16)
        {
          v27 = sin(*(v3 + 72)) / v29;
        }

        *(v4 + 72) = v27;
        v30 = *(v3 + 80);
        v31 = 1.0;
        v32 = 1.0;
        if (fabs(v30) >= 2.22044605e-16)
        {
          v32 = sin(*(v3 + 80)) / v30;
        }

        *(v4 + 80) = v32;
        v33 = *(v3 + 88);
        if (fabs(v33) >= 2.22044605e-16)
        {
          v31 = sin(*(v3 + 88)) / v33;
        }

        *(v4 + 88) = v31;
        v34 = *(v3 + 96);
        v35 = 1.0;
        v36 = 1.0;
        if (fabs(v34) >= 2.22044605e-16)
        {
          v36 = sin(*(v3 + 96)) / v34;
        }

        *(v4 + 96) = v36;
        v37 = *(v3 + 104);
        if (fabs(v37) >= 2.22044605e-16)
        {
          v35 = sin(*(v3 + 104)) / v37;
        }

        *(v4 + 104) = v35;
        v38 = *(v3 + 112);
        v39 = 1.0;
        if (fabs(v38) >= 2.22044605e-16)
        {
          *(v4 + 112) = sin(*(v3 + 112)) / v38;
          v40 = *(v3 + 120);
          if (fabs(v40) >= 2.22044605e-16)
          {
LABEL_40:
            v39 = sin(v40) / v40;
          }
        }

        else
        {
          *(v4 + 112) = 1.0;
          v40 = *(v3 + 120);
          if (fabs(v40) >= 2.22044605e-16)
          {
            goto LABEL_40;
          }
        }

        *(v4 + 120) = v39;
        v3 += 128;
        v4 += 128;
      }

      while (v3 < v9);
    }

    v41 = 0;
    v42 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_84;
      case 2:
        goto LABEL_81;
      case 3:
        goto LABEL_78;
      case 4:
        goto LABEL_75;
      case 5:
        goto LABEL_72;
      case 6:
        goto LABEL_69;
      case 7:
        goto LABEL_66;
      case 8:
        goto LABEL_63;
      case 9:
        goto LABEL_60;
      case 10:
        goto LABEL_57;
      case 11:
        goto LABEL_54;
      case 12:
        goto LABEL_51;
      case 13:
        goto LABEL_48;
      case 14:
        goto LABEL_45;
      case 15:
        v44 = 1.0;
        if (fabs(*v3) >= 2.22044605e-16)
        {
          v43 = *v3;
          v44 = sin(*v3) / v43;
        }

        *v4 = v44;
        v42 = 1;
LABEL_45:
        v45 = *(v3 + 8 * v42);
        v46 = v42;
        v47 = 1.0;
        if (fabs(v45) >= 2.22044605e-16)
        {
          v47 = sin(v45) / v45;
        }

        *(v4 + 8 * v46) = v47;
        v42 = v46 + 1;
LABEL_48:
        v48 = *(v3 + 8 * v42);
        v49 = v42;
        v50 = 1.0;
        if (fabs(v48) >= 2.22044605e-16)
        {
          v50 = sin(v48) / v48;
        }

        *(v4 + 8 * v49) = v50;
        v42 = v49 + 1;
LABEL_51:
        v51 = *(v3 + 8 * v42);
        v52 = v42;
        v53 = 1.0;
        if (fabs(v51) >= 2.22044605e-16)
        {
          v53 = sin(v51) / v51;
        }

        *(v4 + 8 * v52) = v53;
        v42 = v52 + 1;
LABEL_54:
        v54 = *(v3 + 8 * v42);
        v55 = v42;
        v56 = 1.0;
        if (fabs(v54) >= 2.22044605e-16)
        {
          v56 = sin(v54) / v54;
        }

        *(v4 + 8 * v55) = v56;
        v42 = v55 + 1;
LABEL_57:
        v57 = *(v3 + 8 * v42);
        v58 = v42;
        v59 = 1.0;
        if (fabs(v57) >= 2.22044605e-16)
        {
          v59 = sin(v57) / v57;
        }

        *(v4 + 8 * v58) = v59;
        v42 = v58 + 1;
LABEL_60:
        v60 = *(v3 + 8 * v42);
        v61 = v42;
        v62 = 1.0;
        if (fabs(v60) >= 2.22044605e-16)
        {
          v62 = sin(v60) / v60;
        }

        *(v4 + 8 * v61) = v62;
        v42 = v61 + 1;
LABEL_63:
        v63 = *(v3 + 8 * v42);
        v64 = v42;
        v65 = 1.0;
        if (fabs(v63) >= 2.22044605e-16)
        {
          v65 = sin(v63) / v63;
        }

        *(v4 + 8 * v64) = v65;
        v42 = v64 + 1;
LABEL_66:
        v66 = *(v3 + 8 * v42);
        v67 = v42;
        v68 = 1.0;
        if (fabs(v66) >= 2.22044605e-16)
        {
          v68 = sin(v66) / v66;
        }

        *(v4 + 8 * v67) = v68;
        v42 = v67 + 1;
LABEL_69:
        v69 = *(v3 + 8 * v42);
        v70 = v42;
        v71 = 1.0;
        if (fabs(v69) >= 2.22044605e-16)
        {
          v71 = sin(v69) / v69;
        }

        *(v4 + 8 * v70) = v71;
        v42 = v70 + 1;
LABEL_72:
        v72 = *(v3 + 8 * v42);
        v73 = v42;
        v74 = 1.0;
        if (fabs(v72) >= 2.22044605e-16)
        {
          v74 = sin(v72) / v72;
        }

        *(v4 + 8 * v73) = v74;
        v42 = v73 + 1;
LABEL_75:
        v75 = *(v3 + 8 * v42);
        v76 = v42;
        v77 = 1.0;
        if (fabs(v75) >= 2.22044605e-16)
        {
          v77 = sin(v75) / v75;
        }

        *(v4 + 8 * v76) = v77;
        v42 = v76 + 1;
LABEL_78:
        v78 = *(v3 + 8 * v42);
        v79 = v42;
        v80 = 1.0;
        if (fabs(v78) >= 2.22044605e-16)
        {
          v80 = sin(v78) / v78;
        }

        *(v4 + 8 * v79) = v80;
        v42 = v79 + 1;
LABEL_81:
        v81 = *(v3 + 8 * v42);
        v82 = v42;
        v83 = 1.0;
        if (fabs(v81) >= 2.22044605e-16)
        {
          v83 = sin(v81) / v81;
        }

        *(v4 + 8 * v82) = v83;
        v41 = (v82 + 1);
LABEL_84:
        v84 = *(v3 + 8 * v41);
        v85 = 1.0;
        if (fabs(v84) >= 2.22044605e-16)
        {
          v85 = sin(*(v3 + 8 * v41)) / v84;
        }

        *(v4 + 8 * v41) = v85;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_10951C(uint64_t a1)
{
  sub_1095B8(a1 - 32);

  operator delete();
}

uint64_t sub_1095B8(uint64_t a1)
{
  *a1 = off_2632780;
  *(a1 + 32) = off_26327E0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_109724(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632868;
  *(a1 + 32) = off_26328C8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_109D78(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_109E18(uint64_t a1)
{
  sub_10A2D8(a1);

  operator delete();
}

double sub_109E50(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = sinh(*v3);
      v4[1] = sinh(v3[1]);
      v4[2] = sinh(v3[2]);
      v4[3] = sinh(v3[3]);
      v4[4] = sinh(v3[4]);
      v4[5] = sinh(v3[5]);
      v4[6] = sinh(v3[6]);
      v4[7] = sinh(v3[7]);
      v4[8] = sinh(v3[8]);
      v4[9] = sinh(v3[9]);
      v4[10] = sinh(v3[10]);
      v4[11] = sinh(v3[11]);
      v4[12] = sinh(v3[12]);
      v4[13] = sinh(v3[13]);
      v4[14] = sinh(v3[14]);
      v4[15] = sinh(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = sinh(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = sinh(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = sinh(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = sinh(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10A23C(uint64_t a1)
{
  sub_10A2D8(a1 - 32);

  operator delete();
}

uint64_t sub_10A2D8(uint64_t a1)
{
  *a1 = off_2632868;
  *(a1 + 32) = off_26328C8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10A444(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632950;
  *(a1 + 32) = off_26329B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10AA98(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10AB38(uint64_t a1)
{
  sub_10AFEC(a1);

  operator delete();
}

double sub_10AB70(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = sqrt(*v3);
      v4[1] = sqrt(v3[1]);
      v4[2] = sqrt(v3[2]);
      v4[3] = sqrt(v3[3]);
      v4[4] = sqrt(v3[4]);
      v4[5] = sqrt(v3[5]);
      v4[6] = sqrt(v3[6]);
      v4[7] = sqrt(v3[7]);
      v4[8] = sqrt(v3[8]);
      v4[9] = sqrt(v3[9]);
      v4[10] = sqrt(v3[10]);
      v4[11] = sqrt(v3[11]);
      v4[12] = sqrt(v3[12]);
      v4[13] = sqrt(v3[13]);
      v4[14] = sqrt(v3[14]);
      v4[15] = sqrt(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = sqrt(*v3);
      v10 = 1;
LABEL_10:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_11:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_12:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_13:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_14:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_15:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_16:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_17:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_18:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_19:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_20:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_21:
      v4[v10] = sqrt(v3[v10]);
      ++v10;
LABEL_22:
      v4[v10] = sqrt(v3[v10]);
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = sqrt(v3[v9]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10AF50(uint64_t a1)
{
  sub_10AFEC(a1 - 32);

  operator delete();
}

uint64_t sub_10AFEC(uint64_t a1)
{
  *a1 = off_2632950;
  *(a1 + 32) = off_26329B0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10B158(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632A38;
  *(a1 + 32) = off_2632A98;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10B7AC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10B84C(uint64_t a1)
{
  sub_10BD0C(a1);

  operator delete();
}

double sub_10B884(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = tan(*v3);
      v4[1] = tan(v3[1]);
      v4[2] = tan(v3[2]);
      v4[3] = tan(v3[3]);
      v4[4] = tan(v3[4]);
      v4[5] = tan(v3[5]);
      v4[6] = tan(v3[6]);
      v4[7] = tan(v3[7]);
      v4[8] = tan(v3[8]);
      v4[9] = tan(v3[9]);
      v4[10] = tan(v3[10]);
      v4[11] = tan(v3[11]);
      v4[12] = tan(v3[12]);
      v4[13] = tan(v3[13]);
      v4[14] = tan(v3[14]);
      v4[15] = tan(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = tan(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = tan(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = tan(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = tan(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10BC70(uint64_t a1)
{
  sub_10BD0C(a1 - 32);

  operator delete();
}

uint64_t sub_10BD0C(uint64_t a1)
{
  *a1 = off_2632A38;
  *(a1 + 32) = off_2632A98;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10BE78(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632B20;
  *(a1 + 32) = off_2632B80;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10C4CC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10C56C(uint64_t a1)
{
  sub_10CA2C(a1);

  operator delete();
}

double sub_10C5A4(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = tanh(*v3);
      v4[1] = tanh(v3[1]);
      v4[2] = tanh(v3[2]);
      v4[3] = tanh(v3[3]);
      v4[4] = tanh(v3[4]);
      v4[5] = tanh(v3[5]);
      v4[6] = tanh(v3[6]);
      v4[7] = tanh(v3[7]);
      v4[8] = tanh(v3[8]);
      v4[9] = tanh(v3[9]);
      v4[10] = tanh(v3[10]);
      v4[11] = tanh(v3[11]);
      v4[12] = tanh(v3[12]);
      v4[13] = tanh(v3[13]);
      v4[14] = tanh(v3[14]);
      v4[15] = tanh(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = tanh(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = tanh(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = tanh(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = tanh(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10C990(uint64_t a1)
{
  sub_10CA2C(a1 - 32);

  operator delete();
}

uint64_t sub_10CA2C(uint64_t a1)
{
  *a1 = off_2632B20;
  *(a1 + 32) = off_2632B80;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10CB98(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632C08;
  *(a1 + 32) = off_2632C68;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10D1EC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10D28C(uint64_t a1)
{
  sub_10D814(a1);

  operator delete();
}

double sub_10D2C4(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = 1.0 / tan(*v3);
      v4[1] = 1.0 / tan(v3[1]);
      v4[2] = 1.0 / tan(v3[2]);
      v4[3] = 1.0 / tan(v3[3]);
      v4[4] = 1.0 / tan(v3[4]);
      v4[5] = 1.0 / tan(v3[5]);
      v4[6] = 1.0 / tan(v3[6]);
      v4[7] = 1.0 / tan(v3[7]);
      v4[8] = 1.0 / tan(v3[8]);
      v4[9] = 1.0 / tan(v3[9]);
      v4[10] = 1.0 / tan(v3[10]);
      v4[11] = 1.0 / tan(v3[11]);
      v4[12] = 1.0 / tan(v3[12]);
      v4[13] = 1.0 / tan(v3[13]);
      v4[14] = 1.0 / tan(v3[14]);
      v4[15] = 1.0 / tan(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = 1.0 / tan(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = 1.0 / tan(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = 1.0 / tan(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = 1.0 / tan(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10D778(uint64_t a1)
{
  sub_10D814(a1 - 32);

  operator delete();
}

uint64_t sub_10D814(uint64_t a1)
{
  *a1 = off_2632C08;
  *(a1 + 32) = off_2632C68;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10D980(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632CF0;
  *(a1 + 32) = off_2632D50;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10DFD4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10E074(uint64_t a1)
{
  sub_10E5FC(a1);

  operator delete();
}

double sub_10E0AC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = 1.0 / cos(*v3);
      v4[1] = 1.0 / cos(v3[1]);
      v4[2] = 1.0 / cos(v3[2]);
      v4[3] = 1.0 / cos(v3[3]);
      v4[4] = 1.0 / cos(v3[4]);
      v4[5] = 1.0 / cos(v3[5]);
      v4[6] = 1.0 / cos(v3[6]);
      v4[7] = 1.0 / cos(v3[7]);
      v4[8] = 1.0 / cos(v3[8]);
      v4[9] = 1.0 / cos(v3[9]);
      v4[10] = 1.0 / cos(v3[10]);
      v4[11] = 1.0 / cos(v3[11]);
      v4[12] = 1.0 / cos(v3[12]);
      v4[13] = 1.0 / cos(v3[13]);
      v4[14] = 1.0 / cos(v3[14]);
      v4[15] = 1.0 / cos(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = 1.0 / cos(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = 1.0 / cos(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = 1.0 / cos(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = 1.0 / cos(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10E560(uint64_t a1)
{
  sub_10E5FC(a1 - 32);

  operator delete();
}

uint64_t sub_10E5FC(uint64_t a1)
{
  *a1 = off_2632CF0;
  *(a1 + 32) = off_2632D50;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10E768(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632DD8;
  *(a1 + 32) = off_2632E38;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10EDBC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10EE5C(uint64_t a1)
{
  sub_10F3E4(a1);

  operator delete();
}

double sub_10EE94(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = 1.0 / sin(*v3);
      v4[1] = 1.0 / sin(v3[1]);
      v4[2] = 1.0 / sin(v3[2]);
      v4[3] = 1.0 / sin(v3[3]);
      v4[4] = 1.0 / sin(v3[4]);
      v4[5] = 1.0 / sin(v3[5]);
      v4[6] = 1.0 / sin(v3[6]);
      v4[7] = 1.0 / sin(v3[7]);
      v4[8] = 1.0 / sin(v3[8]);
      v4[9] = 1.0 / sin(v3[9]);
      v4[10] = 1.0 / sin(v3[10]);
      v4[11] = 1.0 / sin(v3[11]);
      v4[12] = 1.0 / sin(v3[12]);
      v4[13] = 1.0 / sin(v3[13]);
      v4[14] = 1.0 / sin(v3[14]);
      v4[15] = 1.0 / sin(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = 1.0 / sin(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = 1.0 / sin(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = 1.0 / sin(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = 1.0 / sin(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_10F348(uint64_t a1)
{
  sub_10F3E4(a1 - 32);

  operator delete();
}

uint64_t sub_10F3E4(uint64_t a1)
{
  *a1 = off_2632DD8;
  *(a1 + 32) = off_2632E38;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_10F550(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632EC0;
  *(a1 + 32) = off_2632F20;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_10FBA4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_10FC44(uint64_t a1)
{
  sub_11013C(a1);

  operator delete();
}

double sub_10FC7C(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3 * 57.2957795;
      v4[1] = v3[1] * 57.2957795;
      v4[2] = v3[2] * 57.2957795;
      v4[3] = v3[3] * 57.2957795;
      v4[4] = v3[4] * 57.2957795;
      v4[5] = v3[5] * 57.2957795;
      v4[6] = v3[6] * 57.2957795;
      v4[7] = v3[7] * 57.2957795;
      v4[8] = v3[8] * 57.2957795;
      v4[9] = v3[9] * 57.2957795;
      v4[10] = v3[10] * 57.2957795;
      v4[11] = v3[11] * 57.2957795;
      v4[12] = v3[12] * 57.2957795;
      v4[13] = v3[13] * 57.2957795;
      v4[14] = v3[14] * 57.2957795;
      v4[15] = v3[15] * 57.2957795;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3 * 57.2957795;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] * 57.2957795;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] * 57.2957795;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] * 57.2957795;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1100A0(uint64_t a1)
{
  sub_11013C(a1 - 32);

  operator delete();
}

uint64_t sub_11013C(uint64_t a1)
{
  *a1 = off_2632EC0;
  *(a1 + 32) = off_2632F20;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1102A8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2632FA8;
  *(a1 + 32) = off_2633008;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1108FC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_11099C(uint64_t a1)
{
  sub_110E94(a1);

  operator delete();
}

double sub_1109D4(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3 * 0.0174532925;
      v4[1] = v3[1] * 0.0174532925;
      v4[2] = v3[2] * 0.0174532925;
      v4[3] = v3[3] * 0.0174532925;
      v4[4] = v3[4] * 0.0174532925;
      v4[5] = v3[5] * 0.0174532925;
      v4[6] = v3[6] * 0.0174532925;
      v4[7] = v3[7] * 0.0174532925;
      v4[8] = v3[8] * 0.0174532925;
      v4[9] = v3[9] * 0.0174532925;
      v4[10] = v3[10] * 0.0174532925;
      v4[11] = v3[11] * 0.0174532925;
      v4[12] = v3[12] * 0.0174532925;
      v4[13] = v3[13] * 0.0174532925;
      v4[14] = v3[14] * 0.0174532925;
      v4[15] = v3[15] * 0.0174532925;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3 * 0.0174532925;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] * 0.0174532925;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] * 0.0174532925;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] * 0.0174532925;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_110DF8(uint64_t a1)
{
  sub_110E94(a1 - 32);

  operator delete();
}

uint64_t sub_110E94(uint64_t a1)
{
  *a1 = off_2632FA8;
  *(a1 + 32) = off_2633008;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_111000(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633090;
  *(a1 + 32) = off_26330F0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_111654(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_1116F4(uint64_t a1)
{
  sub_111BEC(a1);

  operator delete();
}

double sub_11172C(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3 * 2.22222222;
      v4[1] = v3[1] * 2.22222222;
      v4[2] = v3[2] * 2.22222222;
      v4[3] = v3[3] * 2.22222222;
      v4[4] = v3[4] * 2.22222222;
      v4[5] = v3[5] * 2.22222222;
      v4[6] = v3[6] * 2.22222222;
      v4[7] = v3[7] * 2.22222222;
      v4[8] = v3[8] * 2.22222222;
      v4[9] = v3[9] * 2.22222222;
      v4[10] = v3[10] * 2.22222222;
      v4[11] = v3[11] * 2.22222222;
      v4[12] = v3[12] * 2.22222222;
      v4[13] = v3[13] * 2.22222222;
      v4[14] = v3[14] * 2.22222222;
      v4[15] = v3[15] * 2.22222222;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3 * 2.22222222;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] * 2.22222222;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] * 2.22222222;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] * 2.22222222;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_111B50(uint64_t a1)
{
  sub_111BEC(a1 - 32);

  operator delete();
}

uint64_t sub_111BEC(uint64_t a1)
{
  *a1 = off_2633090;
  *(a1 + 32) = off_26330F0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_111D58(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633178;
  *(a1 + 32) = off_26331D8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1123AC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_11244C(uint64_t a1)
{
  sub_112944(a1);

  operator delete();
}

double sub_112484(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3 * 0.45;
      v4[1] = v3[1] * 0.45;
      v4[2] = v3[2] * 0.45;
      v4[3] = v3[3] * 0.45;
      v4[4] = v3[4] * 0.45;
      v4[5] = v3[5] * 0.45;
      v4[6] = v3[6] * 0.45;
      v4[7] = v3[7] * 0.45;
      v4[8] = v3[8] * 0.45;
      v4[9] = v3[9] * 0.45;
      v4[10] = v3[10] * 0.45;
      v4[11] = v3[11] * 0.45;
      v4[12] = v3[12] * 0.45;
      v4[13] = v3[13] * 0.45;
      v4[14] = v3[14] * 0.45;
      v4[15] = v3[15] * 0.45;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3 * 0.45;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] * 0.45;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] * 0.45;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] * 0.45;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1128A8(uint64_t a1)
{
  sub_112944(a1 - 32);

  operator delete();
}

uint64_t sub_112944(uint64_t a1)
{
  *a1 = off_2633178;
  *(a1 + 32) = off_26331D8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_112AB0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633260;
  *(a1 + 32) = off_26332C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_113104(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_1131A4(uint64_t a1)
{
  sub_113754(a1);

  operator delete();
}

double sub_1131DC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      if (*v3 == 0.0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v4 = v9;
      if (v3[1] == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v4[1] = v10;
      if (v3[2] == 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[2] = v11;
      if (v3[3] == 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[3] = v12;
      if (v3[4] == 0.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[4] = v13;
      if (v3[5] == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[5] = v14;
      if (v3[6] == 0.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[6] = v15;
      if (v3[7] == 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[7] = v16;
      if (v3[8] == 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[8] = v17;
      if (v3[9] == 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[9] = v18;
      if (v3[10] == 0.0)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[10] = v19;
      if (v3[11] == 0.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[11] = v20;
      if (v3[12] == 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[12] = v21;
      if (v3[13] == 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[13] = v22;
      if (v3[14] == 0.0)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[14] = v23;
      if (v3[15] == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 1.0;
      if (*v3 != 0.0)
      {
        v27 = 0.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 1.0;
      if (v3[v26] != 0.0)
      {
        v28 = 0.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 1.0;
      if (v3[v26] != 0.0)
      {
        v29 = 0.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 1.0;
      if (v3[v26] != 0.0)
      {
        v30 = 0.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 1.0;
      if (v3[v26] != 0.0)
      {
        v31 = 0.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 1.0;
      if (v3[v26] != 0.0)
      {
        v32 = 0.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 1.0;
      if (v3[v26] != 0.0)
      {
        v33 = 0.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 1.0;
      if (v3[v26] != 0.0)
      {
        v34 = 0.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 1.0;
      if (v3[v26] != 0.0)
      {
        v35 = 0.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 1.0;
      if (v3[v26] != 0.0)
      {
        v36 = 0.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 1.0;
      if (v3[v26] != 0.0)
      {
        v37 = 0.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 1.0;
      if (v3[v26] != 0.0)
      {
        v38 = 0.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 1.0;
      if (v3[v26] != 0.0)
      {
        v39 = 0.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 1.0;
      if (v3[v26] != 0.0)
      {
        v40 = 0.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 1.0;
      if (v3[v25] != 0.0)
      {
        v41 = 0.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}