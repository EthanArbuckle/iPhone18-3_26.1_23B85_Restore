uint64_t sub_1D7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_26574C0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  if (a2)
  {
    if ((*(*a2 + 32))(a2) == 17)
    {
      *(a1 + 40) = 0;
      v7 = *(a1 + 16);
      if (!v7)
      {
LABEL_10:
        *(a1 + 41) = 1;
        v8 = *(a1 + 24);
        if (v8)
        {
          goto LABEL_11;
        }

LABEL_15:
        *(a1 + 42) = 1;
        v9 = *(a1 + 32);
        if (v9)
        {
          goto LABEL_16;
        }

LABEL_20:
        *(a1 + 43) = 1;
        return a1;
      }
    }

    else
    {
      *(a1 + 40) = (*(*a2 + 32))(a2) != 18;
      v7 = *(a1 + 16);
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *(a1 + 40) = 1;
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 41) = 0;
    v8 = *(a1 + 24);
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  *(a1 + 41) = (*(*v7 + 32))(v7) != 18;
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ((*(*v8 + 32))(v8) != 17)
  {
    *(a1 + 42) = (*(*v8 + 32))(v8) != 18;
    v9 = *(a1 + 32);
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  *(a1 + 42) = 0;
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_16:
  *(a1 + 43) = (*(*v9 + 32))(v9) != 17 && (*(*v9 + 32))(v9) != 18;
  return a1;
}

uint64_t sub_1D8288(uint64_t a1)
{
  *a1 = off_26574C0;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 40) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3 && *(a1 + 41) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4 && *(a1 + 42) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 43) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_1D83B8(uint64_t a1)
{
  *a1 = off_26574C0;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 40) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3 && *(a1 + 41) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4 && *(a1 + 42) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 43) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_1D8508(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(a1 + 24);
  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (v3)
  {
    if (v4 != 0.0)
    {
      do
      {
        v5 = (*(**(a1 + 32) + 16))(*(a1 + 32));
        (*(**(a1 + 24) + 16))(*(a1 + 24));
      }

      while ((*(**(a1 + 16) + 16))(*(a1 + 16)) != 0.0);
      return v5;
    }
  }

  else if (v4 != 0.0)
  {
    do
    {
      v5 = (*(**(a1 + 32) + 16))(*(a1 + 32));
    }

    while ((*(**(a1 + 16) + 16))(*(a1 + 16)) != 0.0);
    return v5;
  }

  return 0.0;
}

uint64_t sub_1D869C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*a2 == v2)
  {
    return 0;
  }

  v5 = (v2 - v3) >> 3;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v2 - v3) >> 3;
  }

  if (!*v3)
  {
    goto LABEL_23;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }
  }

  while (v3[v7++]);
  if (((v2 - v3) & 8) == 0 || v8 < v5 || v5 <= 2)
  {
LABEL_23:
    v14 = 0;
    while (1)
    {
      v15 = v3[v14];
      if (!v15 || (*(*v15 + 32))(v15) == 17)
      {
        goto LABEL_25;
      }

      v16 = v3[v14];
      if (v16)
      {
        if ((*(*v16 + 32))(v16) == 18)
        {
          goto LABEL_25;
        }

        v17 = v3[v14];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      v3[v14] = 0;
LABEL_25:
      ++v14;
      v3 = *a2;
      if (v14 >= (*(a2 + 8) - *a2) >> 3)
      {
        v18 = 0;
        *(a2 + 8) = v3;
        return v18;
      }
    }
  }

  v10 = *v3;
  if (!*v3)
  {
LABEL_17:
    v13 = (((v2 - v3) >> 3) - 1) >> 1;
    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:

          sub_1D8B28();
        case 2:

          sub_1D8BB0();
        case 3:

          sub_1D8C38();
      }
    }

    else
    {
      if (v13 <= 5)
      {
        if (v13 != 4)
        {

          sub_1D8D48();
        }

        sub_1D8CC0();
      }

      if (v13 == 6)
      {

        sub_1D8DD0();
      }

      if (v13 == 7)
      {

        sub_1D8E58();
      }
    }

    sub_1D8EE0();
  }

  v11 = 1;
  while (1)
  {
    v12 = (*(*v10 + 32))(v10);
    v3 = *a2;
    v2 = *(a2 + 8);
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    if (v11 >= (v2 - v3) >> 3)
    {
      break;
    }

    v10 = v3[v11++];
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if ((v2 - v3) < 9)
  {
    goto LABEL_67;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v18 = v3[v20 + 1];
    v22 = (*(*v3[v20] + 16))(v3[v20]);
    v2 = *(a2 + 8);
    if (v22 != 0.0)
    {
      break;
    }

    ++v21;
    v3 = *a2;
    v20 += 2;
    if (v21 >= ((v2 - *a2) >> 3) >> 1)
    {
      goto LABEL_67;
    }
  }

  if (!v18)
  {
LABEL_67:
    v18 = *(v2 - 8);
  }

  v23 = *a2;
  if (v2 != *a2)
  {
    v24 = 0;
    do
    {
      v25 = v23[v24];
      if (v25)
      {
        v26 = v25 == v18;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && (*(*v25 + 32))(v25) != 17 && (*(*v25 + 32))(v25) != 18)
      {
        (*(*v25 + 8))(v25);
      }

      ++v24;
      v23 = *a2;
    }

    while (v24 < (*(a2 + 8) - *a2) >> 3);
  }

  return v18;
}

uint64_t sub_1D8F4C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *a1 = off_2657578;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v4 = a2[1];
  v5 = v4 - *a2;
  if ((v5 & 8) == 0)
  {
    return a1;
  }

  v7 = v5 >> 3;
  if (v4 != *a2)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = (a2[1] - *a2) >> 3;
    v10 = v7 >= &v8[-v9];
    v11 = v7 - &v8[-v9];
    if (v7 > &v8[-v9])
    {
      goto LABEL_4;
    }

LABEL_8:
    if (!v10)
    {
      *(a1 + 40) = v9 + v7;
    }

    v13 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v8 = 0;
  v10 = 1;
  v11 = v5 >> 3;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = *(a1 + 48);
  if (v12 - v8 < v11)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = &v8[v11];
  bzero(v8, v11);
  *(a1 + 40) = v14;
  v13 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    v17 = *(v13 + 8 * v15);
    v18 = *v3;
    if (!v17)
    {
      break;
    }

    *(v18 + 8 * v15) = v17;
    v16 = (*(*v17 + 32))(v17) != 17 && (*(*v17 + 32))(v17) != 18;
    *(*(a1 + 32) + v15++) = v16;
    v13 = *a2;
    if (v15 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v18;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_1D91B8(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_1D91F8(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D92CC(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1D93C0(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v3 = 8;
  if (v2 == 0.0)
  {
    v3 = -8;
  }

  v4 = *(**(*(v1 + 8 * (v2 == 0.0)) + v3) + 16);

  return v4();
}

void *sub_1D9460(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D9534(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_1D9628(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return NAN;
  }

  v4 = (v3 - v2) >> 3;
  v5 = v4 - 1;
  if (v4 == 1)
  {
LABEL_7:
    v9 = *(v2 + 8 * v5);
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = (*(a1 + 8) + 8 * v7);
      v9 = v8[1];
      if ((*(**v8 + 16))() != 0.0)
      {
        break;
      }

      v7 += 2;
      if (v7 >= v5)
      {
        v2 = *(a1 + 8);
        goto LABEL_7;
      }
    }
  }

  v10 = *(*v9 + 16);

  v10(v9);
  return result;
}

void *sub_1D96FC(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D97D0(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1D98C4(uint64_t a1)
{
  v2 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v3 = *(a1 + 8);
  if (v2 == 0.0)
  {
    if ((*(**(v3 + 16) + 16))(*(v3 + 16)) == 0.0)
    {
      v4 = *(a1 + 16) - 8;
    }

    else
    {
      v4 = *(a1 + 8) + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v5 = *(**v4 + 16);

  return v5();
}

void *sub_1D999C(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D9A70(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1D9B64(uint64_t a1)
{
  v2 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v3 = *(a1 + 8);
  if (v2 == 0.0)
  {
    v5 = (*(**(v3 + 16) + 16))(*(v3 + 16));
    v6 = *(a1 + 8);
    if (v5 == 0.0)
    {
      if ((*(**(v6 + 32) + 16))(*(v6 + 32)) == 0.0)
      {
        v4 = *(a1 + 16) - 8;
      }

      else
      {
        v4 = *(a1 + 8) + 40;
      }
    }

    else
    {
      v4 = v6 + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v7 = *(**v4 + 16);

  return v7();
}

void *sub_1D9C78(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D9D4C(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1D9E40(uint64_t a1)
{
  v2 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v3 = *(a1 + 8);
  if (v2 == 0.0)
  {
    v5 = (*(**(v3 + 16) + 16))(*(v3 + 16));
    v6 = *(a1 + 8);
    if (v5 == 0.0)
    {
      v7 = (*(**(v6 + 32) + 16))(*(v6 + 32));
      v8 = *(a1 + 8);
      if (v7 == 0.0)
      {
        if ((*(**(v8 + 48) + 16))(*(v8 + 48)) == 0.0)
        {
          v4 = *(a1 + 16) - 8;
        }

        else
        {
          v4 = *(a1 + 8) + 56;
        }
      }

      else
      {
        v4 = v8 + 40;
      }
    }

    else
    {
      v4 = v6 + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v9 = *(**v4 + 16);

  return v9();
}

void *sub_1D9F90(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1DA064(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1DA158(uint64_t a1)
{
  v2 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v3 = *(a1 + 8);
  if (v2 == 0.0)
  {
    v5 = (*(**(v3 + 16) + 16))(*(v3 + 16));
    v6 = *(a1 + 8);
    if (v5 == 0.0)
    {
      v7 = (*(**(v6 + 32) + 16))(*(v6 + 32));
      v8 = *(a1 + 8);
      if (v7 == 0.0)
      {
        v9 = (*(**(v8 + 48) + 16))(*(v8 + 48));
        v10 = *(a1 + 8);
        if (v9 == 0.0)
        {
          if ((*(**(v10 + 64) + 16))(*(v10 + 64)) == 0.0)
          {
            v4 = *(a1 + 16) - 8;
          }

          else
          {
            v4 = *(a1 + 8) + 72;
          }
        }

        else
        {
          v4 = v10 + 56;
        }
      }

      else
      {
        v4 = v8 + 40;
      }
    }

    else
    {
      v4 = v6 + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v11 = *(**v4 + 16);

  return v11();
}

void *sub_1DA2E4(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1DA3B8(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1DA4B4(void **a1)
{
  v2 = (*(***a1 + 16))(**a1);
  v3 = *a1;
  if (v2 == 0.0)
  {
    v5 = (*(**(v3 + 16) + 16))(*(v3 + 16));
    v6 = *a1;
    if (v5 == 0.0)
    {
      v7 = (*(**(v6 + 32) + 16))(*(v6 + 32));
      v8 = *a1;
      if (v7 == 0.0)
      {
        v9 = (*(**(v8 + 48) + 16))(*(v8 + 48));
        v10 = *a1;
        if (v9 == 0.0)
        {
          v11 = (*(**(v10 + 64) + 16))(*(v10 + 64));
          v12 = *a1;
          if (v11 == 0.0)
          {
            if ((*(**(v12 + 80) + 16))(*(v12 + 80)) == 0.0)
            {
              v4 = (a1[1] - 1);
            }

            else
            {
              v4 = (*a1 + 11);
            }
          }

          else
          {
            v4 = v12 + 72;
          }
        }

        else
        {
          v4 = v10 + 56;
        }
      }

      else
      {
        v4 = v8 + 40;
      }
    }

    else
    {
      v4 = v6 + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v13 = *(**v4 + 16);

  return v13();
}

void *sub_1DA67C(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1DA750(void *a1)
{
  *a1 = off_2657578;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_1DA84C(void **a1)
{
  v2 = (*(***a1 + 16))(**a1);
  v3 = *a1;
  if (v2 == 0.0)
  {
    v5 = (*(**(v3 + 16) + 16))(*(v3 + 16));
    v6 = *a1;
    if (v5 == 0.0)
    {
      v7 = (*(**(v6 + 32) + 16))(*(v6 + 32));
      v8 = *a1;
      if (v7 == 0.0)
      {
        v9 = (*(**(v8 + 48) + 16))(*(v8 + 48));
        v10 = *a1;
        if (v9 == 0.0)
        {
          v11 = (*(**(v10 + 64) + 16))(*(v10 + 64));
          v12 = *a1;
          if (v11 == 0.0)
          {
            v13 = (*(**(v12 + 80) + 16))(*(v12 + 80));
            v14 = *a1;
            if (v13 == 0.0)
            {
              if ((*(**(v14 + 96) + 16))(*(v14 + 96)) == 0.0)
              {
                v4 = (a1[1] - 1);
              }

              else
              {
                v4 = (*a1 + 13);
              }
            }

            else
            {
              v4 = v14 + 88;
            }
          }

          else
          {
            v4 = v12 + 72;
          }
        }

        else
        {
          v4 = v10 + 56;
        }
      }

      else
      {
        v4 = v8 + 40;
      }
    }

    else
    {
      v4 = v6 + 24;
    }
  }

  else
  {
    v4 = v3 + 8;
  }

  v15 = *(**v4 + 16);

  return v15();
}

uint64_t sub_1DAA50(uint64_t a1, int a2, const void **a3)
{
  v126 = a2;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v123[0] = 1;
  v124 = a1;
  v125 = &v127;
  v5 = *(a1 + 24);
  if (*(a1 + 8) == v5)
  {
    v5 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v7 = a1 + 104;
    v6 = (a1 + 48);
    v8 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v8 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v6, *(v5 + 16));
      }

      else
      {
        v9 = *v6;
        *(a1 + 128) = *(v6 + 2);
        *(a1 + 112) = v9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = (v5 + 8);
    *(a1 + 104) = *v5;
    v7 = a1 + 104;
    *(a1 + 24) = v5 + 40;
    if (a1 + 104 == v5)
    {
      goto LABEL_15;
    }

    v8 = *(v5 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = *v6;
  }

  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v5 + 16);
  }

  sub_13B38(a1 + 112, v10, v11);
LABEL_15:
  *(v7 + 32) = *(v5 + 32);
  v12 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v17 = *(a3 + 23);
    }

    else
    {
      v17 = a3[1];
    }

    if (v17 + 44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v17 + 44 > 0x16)
    {
      operator new();
    }

    qmemcpy(v113, "ERR129 - Expected '(' for special function '", 44);
    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    memmove(&v113[44], v18, v17);
    v104 = a1 + 104;
    v107 = a1;
    v113[v17 + 44] = 0;
    v19 = std::string::append(v113, "'", 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&v113[48] = *(&v19->__r_.__value_.__l + 2);
    *&v113[32] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = 23958;
    memset(&v110, 0, sizeof(v110));
    do
    {
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        v26 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v110.__r_.__value_.__l.__size_ == v26)
        {
          if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v110.__r_.__value_.__l.__size_;
        v23 = v110.__r_.__value_.__r.__words[0];
        ++v110.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
        v23 = &v110;
      }

      v24 = v23 + size;
      *v24 = (v21 % 0xA) | 0x30;
      v24[1] = 0;
      v25 = v21 > 9;
      v21 /= 0xAu;
    }

    while (v25);
    v27 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v28 = &v110;
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v110.__r_.__value_.__l.__size_;
      v28 = v110.__r_.__value_.__r.__words[0];
    }

    if (v27)
    {
      v29 = (v28 + v27 - 1);
      if (v29 > v28)
      {
        v30 = &v28->__r_.__value_.__s.__data_[1];
        do
        {
          v31 = *(v30 - 1);
          *(v30 - 1) = v29->__r_.__value_.__s.__data_[0];
          v29->__r_.__value_.__s.__data_[0] = v31;
          v29 = (v29 - 1);
          v32 = v30++ >= v29;
        }

        while (!v32);
      }
    }

    v33 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
    v34 = v107;
    v35 = *&v33->__r_.__value_.__l.__data_;
    v112 = v33->__r_.__value_.__r.__words[2];
    *v111 = v35;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v104, &v113[32], v111, &v113[64]);
    v36 = v107[71];
    v37 = v107[70];
    v38 = 30 * ((v36 - v37) >> 3) - 1;
    if (v36 == v37)
    {
      v38 = 0;
    }

    if (v38 == v107[74] + v107[73])
    {
      sub_C35C4(v107 + 69);
      v37 = v107[70];
      v36 = v107[71];
    }

    if (v36 == v37)
    {
      v40 = 0;
    }

    else
    {
      v39 = v107[74] + v107[73];
      v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
    }

    goto LABEL_119;
  }

  v13 = *(a1 + 24);
  if (*(a1 + 8) == v13)
  {
    v13 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v14 = (a1 + 48);
    v15 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v15 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v14, *(v13 + 16));
      }

      else
      {
        v16 = *v14;
        *(a1 + 128) = *(v14 + 2);
        *(a1 + 112) = v16;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v13 + 40;
    v14 = (v13 + 8);
    *(a1 + 104) = *v13;
    if (v12 == v13)
    {
      goto LABEL_64;
    }

    v15 = *(v13 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v15 & 0x80u) == 0)
  {
    v41 = v14;
  }

  else
  {
    v41 = *v14;
  }

  if ((v15 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *(v13 + 16);
  }

  sub_13B38(a1 + 112, v41, v42);
LABEL_64:
  *(a1 + 136) = *(v13 + 32);
  v127 = sub_C5A5C(a1, 0);
  if (!v127)
  {
    goto LABEL_136;
  }

  if (*v12 != 44)
  {
    goto LABEL_85;
  }

  v43 = (a1 + 40);
  v44 = (a1 + 48);
  v45 = *(a1 + 24);
  if (*(a1 + 8) == v45)
  {
    *v12 = *v43;
    v46 = (a1 + 48);
    v45 = a1 + 40;
    v47 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v47 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v46, *(v45 + 16));
      }

      else
      {
        v48 = *v46;
        *(a1 + 128) = *(v46 + 2);
        *(a1 + 112) = v48;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v45 + 40;
    v46 = (v45 + 8);
    *(a1 + 104) = *v45;
    if (v12 == v45)
    {
      goto LABEL_80;
    }

    v47 = *(v45 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v47 & 0x80u) == 0)
  {
    v49 = v46;
  }

  else
  {
    v49 = *v46;
  }

  if ((v47 & 0x80u) == 0)
  {
    v50 = v47;
  }

  else
  {
    v50 = *(v45 + 16);
  }

  sub_13B38(a1 + 112, v49, v50);
LABEL_80:
  *(a1 + 136) = *(v45 + 32);
  v128 = sub_C5A5C(a1, 0);
  if (!v128)
  {
    goto LABEL_136;
  }

  if (*v12 != 44)
  {
LABEL_85:
    if (*(a3 + 23) >= 0)
    {
      v53 = *(a3 + 23);
    }

    else
    {
      v53 = a3[1];
    }

    if (v53 + 65 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v53 + 65 > 0x16)
    {
      operator new();
    }

    qmemcpy(v113, "ERR130 - Expected ',' before next parameter of special function '", sizeof(v113));
    if (*(a3 + 23) >= 0)
    {
      v54 = a3;
    }

    else
    {
      v54 = *a3;
    }

    memmove(v114, v54, v53);
    v105 = a1 + 104;
    v108 = a1;
    v114[v53] = 0;
    v55 = std::string::append(v113, "'", 1uLL);
    v56 = *&v55->__r_.__value_.__l.__data_;
    *&v113[48] = *(&v55->__r_.__value_.__l + 2);
    *&v113[32] = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    v57 = 23979;
    memset(&v110, 0, sizeof(v110));
    do
    {
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        v61 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v110.__r_.__value_.__l.__size_ == v61)
        {
          if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_103:
          operator new();
        }

        v58 = v110.__r_.__value_.__l.__size_;
        v59 = v110.__r_.__value_.__r.__words[0];
        ++v110.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_103;
        }

        v58 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
        v59 = &v110;
      }

      v60 = v59 + v58;
      *v60 = (v57 % 0xA) | 0x30;
      v60[1] = 0;
      v25 = v57 > 9;
      v57 /= 0xAu;
    }

    while (v25);
    v62 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v63 = &v110;
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = v110.__r_.__value_.__l.__size_;
      v63 = v110.__r_.__value_.__r.__words[0];
    }

    if (v62)
    {
      v64 = (v63 + v62 - 1);
      if (v64 > v63)
      {
        v65 = &v63->__r_.__value_.__s.__data_[1];
        do
        {
          v66 = *(v65 - 1);
          *(v65 - 1) = v64->__r_.__value_.__s.__data_[0];
          v64->__r_.__value_.__s.__data_[0] = v66;
          v64 = (v64 - 1);
          v32 = v65++ >= v64;
        }

        while (!v32);
      }
    }

    v67 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
    v34 = v108;
    v68 = *&v67->__r_.__value_.__l.__data_;
    v112 = v67->__r_.__value_.__r.__words[2];
    *v111 = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v105, &v113[32], v111, &v113[64]);
    v69 = v108[71];
    v70 = v108[70];
    v71 = 30 * ((v69 - v70) >> 3) - 1;
    if (v69 == v70)
    {
      v71 = 0;
    }

    if (v71 == v108[74] + v108[73])
    {
      sub_C35C4(v108 + 69);
      v70 = v108[70];
      v69 = v108[71];
    }

    if (v69 == v70)
    {
      v40 = 0;
    }

    else
    {
      v72 = v108[74] + v108[73];
      v40 = *(v70 + 8 * (v72 / 0x1E)) + 136 * (v72 % 0x1E);
    }

    goto LABEL_119;
  }

  v51 = *(a1 + 24);
  if (*(a1 + 8) == v51)
  {
    *v12 = *v43;
    v52 = (a1 + 48);
    v51 = a1 + 40;
LABEL_139:
    v75 = *(v51 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v75 >= 0)
      {
        v77 = v52;
      }

      else
      {
        v77 = *v52;
      }

      if (v75 >= 0)
      {
        v78 = *(v51 + 31);
      }

      else
      {
        v78 = *(v51 + 16);
      }

      sub_13B38(a1 + 112, v77, v78);
    }

    else if ((*(v51 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v52, *(v51 + 16));
    }

    else
    {
      v76 = *v52;
      *(a1 + 128) = v52[2];
      *(a1 + 112) = v76;
    }

    goto LABEL_150;
  }

  *(a1 + 24) = v51 + 40;
  v52 = (v51 + 8);
  *(a1 + 104) = *v51;
  if (v12 != v51)
  {
    goto LABEL_139;
  }

LABEL_150:
  *(a1 + 136) = *(v51 + 32);
  v129 = sub_C5A5C(a1, 0);
  if (!v129)
  {
    goto LABEL_136;
  }

  if (*v12 == 41)
  {
    v79 = *(a1 + 24);
    if (*(a1 + 8) == v79)
    {
      *v12 = *v43;
    }

    else
    {
      *(a1 + 24) = v79 + 10;
      v44 = (v79 + 2);
      *(a1 + 104) = *v79;
      v43 = v79;
      if (v12 == v79)
      {
LABEL_201:
        *(a1 + 136) = *(v43 + 4);
        v73 = sub_1DCF20(a1 + 344, &v126, &v127);
        v123[0] = v73 == 0;
        goto LABEL_137;
      }
    }

    v100 = *(v43 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v100 >= 0)
      {
        v102 = v44;
      }

      else
      {
        v102 = *v44;
      }

      if (v100 >= 0)
      {
        v103 = *(v43 + 31);
      }

      else
      {
        v103 = *(v43 + 2);
      }

      sub_13B38(a1 + 112, v102, v103);
    }

    else if ((*(v43 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v44, *(v43 + 2));
    }

    else
    {
      v101 = *v44;
      *(a1 + 128) = v44[2];
      *(a1 + 112) = v101;
    }

    goto LABEL_201;
  }

  if (*(a3 + 23) >= 0)
  {
    v80 = *(a3 + 23);
  }

  else
  {
    v80 = a3[1];
  }

  if (v80 + 60 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v80 + 60 > 0x16)
  {
    operator new();
  }

  qmemcpy(v113, "ERR131 - Invalid number of parameters for special function '", 60);
  if (*(a3 + 23) >= 0)
  {
    v81 = a3;
  }

  else
  {
    v81 = *a3;
  }

  memmove(&v113[60], v81, v80);
  v106 = a1 + 104;
  v109 = a1;
  v113[v80 + 60] = 0;
  v82 = std::string::append(v113, "'", 1uLL);
  v83 = *&v82->__r_.__value_.__l.__data_;
  *&v113[48] = *(&v82->__r_.__value_.__l + 2);
  *&v113[32] = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v84 = 23992;
  memset(&v110, 0, sizeof(v110));
  do
  {
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      v88 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v110.__r_.__value_.__l.__size_ == v88)
      {
        if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_173:
        operator new();
      }

      v85 = v110.__r_.__value_.__l.__size_;
      v86 = v110.__r_.__value_.__r.__words[0];
      ++v110.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_173;
      }

      v85 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
      v86 = &v110;
    }

    v87 = v86 + v85;
    *v87 = (v84 % 0xA) | 0x30;
    v87[1] = 0;
    v25 = v84 > 9;
    v84 /= 0xAu;
  }

  while (v25);
  v89 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  v90 = &v110;
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v89 = v110.__r_.__value_.__l.__size_;
    v90 = v110.__r_.__value_.__r.__words[0];
  }

  if (v89)
  {
    v91 = (v90 + v89 - 1);
    if (v91 > v90)
    {
      v92 = &v90->__r_.__value_.__s.__data_[1];
      do
      {
        v93 = *(v92 - 1);
        *(v92 - 1) = v91->__r_.__value_.__s.__data_[0];
        v91->__r_.__value_.__s.__data_[0] = v93;
        v91 = (v91 - 1);
        v32 = v92++ >= v91;
      }

      while (!v32);
    }
  }

  v94 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
  v34 = v109;
  v95 = *&v94->__r_.__value_.__l.__data_;
  v112 = v94->__r_.__value_.__r.__words[2];
  *v111 = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v106, &v113[32], v111, &v113[64]);
  v96 = v109[71];
  v97 = v109[70];
  v98 = 30 * ((v96 - v97) >> 3) - 1;
  if (v96 == v97)
  {
    v98 = 0;
  }

  if (v98 == v109[74] + v109[73])
  {
    sub_C35C4(v109 + 69);
    v97 = v109[70];
    v96 = v109[71];
  }

  if (v96 == v97)
  {
    v40 = 0;
  }

  else
  {
    v99 = v109[74] + v109[73];
    v40 = *(v97 + 8 * (v99 / 0x1E)) + 136 * (v99 % 0x1E);
  }

LABEL_119:
  sub_C398C(v40, &v113[64]);
  ++v34[74];
  if (v122 < 0)
  {
    operator delete(__p);
    if ((v120 & 0x80000000) == 0)
    {
LABEL_121:
      if ((v118 & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_130;
    }
  }

  else if ((v120 & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

  operator delete(v119);
  if ((v118 & 0x80000000) == 0)
  {
LABEL_122:
    if ((v116 & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_131;
  }

LABEL_130:
  operator delete(v117);
  if ((v116 & 0x80000000) == 0)
  {
LABEL_123:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_132;
  }

LABEL_131:
  operator delete(v115);
  if ((SHIBYTE(v112) & 0x80000000) == 0)
  {
LABEL_124:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_133;
  }

LABEL_132:
  operator delete(v111[0]);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_125:
    if ((v113[55] & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_134;
  }

LABEL_133:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((v113[55] & 0x80000000) == 0)
  {
LABEL_126:
    if ((v113[23] & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    goto LABEL_136;
  }

LABEL_134:
  operator delete(*&v113[32]);
  if ((v113[23] & 0x80000000) != 0)
  {
LABEL_135:
    operator delete(*v113);
  }

LABEL_136:
  v73 = 0;
LABEL_137:
  sub_1EB0E4(v123);
  return v73;
}

void sub_1DBA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (a17 < 0)
    {
LABEL_5:
      operator delete(a12);
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a17 < 0)
  {
    goto LABEL_5;
  }

  if ((a37 & 0x80000000) == 0)
  {
LABEL_6:
    if (a30 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a32);
  if (a30 < 0)
  {
LABEL_7:
    operator delete(a25);
    sub_1EB0E4(v39 - 152);
    _Unwind_Resume(a1);
  }

LABEL_10:
  sub_1EB0E4(v39 - 152);
  _Unwind_Resume(a1);
}

uint64_t sub_1DBC58(uint64_t a1, int a2, const void **a3)
{
  v130 = a2;
  v131 = 0u;
  v132 = 0u;
  v127[0] = 1;
  v128 = a1;
  v129 = &v131;
  v5 = *(a1 + 24);
  if (*(a1 + 8) == v5)
  {
    v5 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v7 = a1 + 104;
    v6 = (a1 + 48);
    v8 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v8 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v6, *(v5 + 16));
      }

      else
      {
        v9 = *v6;
        *(a1 + 128) = *(v6 + 2);
        *(a1 + 112) = v9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = (v5 + 8);
    *(a1 + 104) = *v5;
    v7 = a1 + 104;
    *(a1 + 24) = v5 + 40;
    if (a1 + 104 == v5)
    {
      goto LABEL_15;
    }

    v8 = *(v5 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = *v6;
  }

  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v5 + 16);
  }

  sub_13B38(a1 + 112, v10, v11);
LABEL_15:
  *(v7 + 32) = *(v5 + 32);
  v12 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v17 = *(a3 + 23);
    }

    else
    {
      v17 = a3[1];
    }

    if (v17 + 44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v17 + 44 > 0x16)
    {
      operator new();
    }

    qmemcpy(v119, "ERR129 - Expected '(' for special function '", 44);
    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    memmove(&v119[1].__r_.__value_.__r.__words[2] + 4, v18, v17);
    v110 = a1 + 104;
    v113 = a1;
    *(&v119[1].__r_.__value_.__r.__words[2] + v17 + 4) = 0;
    v19 = std::string::append(v119, "'", 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v119[2].__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *&v119[1].__r_.__value_.__r.__words[1] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = 23958;
    memset(&v116, 0, sizeof(v116));
    do
    {
      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        v26 = (v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v116.__r_.__value_.__l.__size_ == v26)
        {
          if ((v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v116.__r_.__value_.__l.__size_;
        v23 = v116.__r_.__value_.__r.__words[0];
        ++v116.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v116.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
        *(&v116.__r_.__value_.__s + 23) = (*(&v116.__r_.__value_.__s + 23) + 1) & 0x7F;
        v23 = &v116;
      }

      v24 = v23 + size;
      *v24 = (v21 % 0xA) | 0x30;
      v24[1] = 0;
      v25 = v21 > 9;
      v21 /= 0xAu;
    }

    while (v25);
    v27 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
    v28 = &v116;
    if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v116.__r_.__value_.__l.__size_;
      v28 = v116.__r_.__value_.__r.__words[0];
    }

    if (v27)
    {
      v29 = (v28 + v27 - 1);
      if (v29 > v28)
      {
        v30 = &v28->__r_.__value_.__s.__data_[1];
        do
        {
          v31 = *(v30 - 1);
          *(v30 - 1) = v29->__r_.__value_.__s.__data_[0];
          v29->__r_.__value_.__s.__data_[0] = v31;
          v29 = (v29 - 1);
          v32 = v30++ >= v29;
        }

        while (!v32);
      }
    }

    v33 = std::string::insert(&v116, 0, "exprtk.hpp:", 0xBuLL);
    v34 = v113;
    v35 = *&v33->__r_.__value_.__l.__data_;
    v118 = v33->__r_.__value_.__r.__words[2];
    *v117 = v35;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v110, &v119[1].__r_.__value_.__l.__size_, v117, &v119[2].__r_.__value_.__l.__size_);
    v36 = v113[71];
    v37 = v113[70];
    v38 = 30 * ((v36 - v37) >> 3) - 1;
    if (v36 == v37)
    {
      v38 = 0;
    }

    if (v38 == v113[74] + v113[73])
    {
      sub_C35C4(v113 + 69);
      v37 = v113[70];
      v36 = v113[71];
    }

    if (v36 == v37)
    {
      v40 = 0;
    }

    else
    {
      v39 = v113[74] + v113[73];
      v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
    }

    goto LABEL_136;
  }

  v13 = *(a1 + 24);
  if (*(a1 + 8) == v13)
  {
    v13 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v14 = (a1 + 48);
    v15 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v15 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v14, *(v13 + 16));
      }

      else
      {
        v16 = *v14;
        *(a1 + 128) = *(v14 + 2);
        *(a1 + 112) = v16;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v13 + 40;
    v14 = (v13 + 8);
    *(a1 + 104) = *v13;
    if (v12 == v13)
    {
      goto LABEL_64;
    }

    v15 = *(v13 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v15 & 0x80u) == 0)
  {
    v41 = v14;
  }

  else
  {
    v41 = *v14;
  }

  if ((v15 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *(v13 + 16);
  }

  sub_13B38(a1 + 112, v41, v42);
LABEL_64:
  *(a1 + 136) = *(v13 + 32);
  v131.i64[0] = sub_C5A5C(a1, 0);
  if (!v131.i64[0])
  {
    goto LABEL_153;
  }

  if (*v12 != 44)
  {
    goto LABEL_102;
  }

  v43 = (a1 + 40);
  v44 = (a1 + 48);
  v45 = *(a1 + 24);
  if (*(a1 + 8) == v45)
  {
    *v12 = *v43;
    v46 = (a1 + 48);
    v45 = a1 + 40;
    v47 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v47 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v46, *(v45 + 16));
      }

      else
      {
        v48 = *v46;
        *(a1 + 128) = *(v46 + 2);
        *(a1 + 112) = v48;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v45 + 40;
    v46 = (v45 + 8);
    *(a1 + 104) = *v45;
    if (v12 == v45)
    {
      goto LABEL_80;
    }

    v47 = *(v45 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v47 & 0x80u) == 0)
  {
    v49 = v46;
  }

  else
  {
    v49 = *v46;
  }

  if ((v47 & 0x80u) == 0)
  {
    v50 = v47;
  }

  else
  {
    v50 = *(v45 + 16);
  }

  sub_13B38(a1 + 112, v49, v50);
LABEL_80:
  *(a1 + 136) = *(v45 + 32);
  v131.i64[1] = sub_C5A5C(a1, 0);
  if (!v131.i64[1])
  {
    goto LABEL_153;
  }

  if (*v12 != 44)
  {
    goto LABEL_102;
  }

  v51 = *(a1 + 24);
  if (*(a1 + 8) == v51)
  {
    *v12 = *v43;
    v52 = (a1 + 48);
    v51 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v51 + 40;
    v52 = (v51 + 8);
    *(a1 + 104) = *v51;
    if (v12 == v51)
    {
      goto LABEL_97;
    }
  }

  v53 = *(v51 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v53 >= 0)
    {
      v55 = v52;
    }

    else
    {
      v55 = *v52;
    }

    if (v53 >= 0)
    {
      v56 = *(v51 + 31);
    }

    else
    {
      v56 = *(v51 + 16);
    }

    sub_13B38(a1 + 112, v55, v56);
  }

  else if ((*(v51 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v52, *(v51 + 16));
  }

  else
  {
    v54 = *v52;
    *(a1 + 128) = v52[2];
    *(a1 + 112) = v54;
  }

LABEL_97:
  *(a1 + 136) = *(v51 + 32);
  *&v132 = sub_C5A5C(a1, 0);
  if (!v132)
  {
    goto LABEL_153;
  }

  if (*v12 != 44)
  {
LABEL_102:
    if (*(a3 + 23) >= 0)
    {
      v59 = *(a3 + 23);
    }

    else
    {
      v59 = a3[1];
    }

    if (v59 + 65 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v59 + 65 > 0x16)
    {
      operator new();
    }

    qmemcpy(v119, "ERR130 - Expected ',' before next parameter of special function '", 65);
    if (*(a3 + 23) >= 0)
    {
      v60 = a3;
    }

    else
    {
      v60 = *a3;
    }

    memmove(&v119[2].__r_.__value_.__r.__words[2] + 1, v60, v59);
    v111 = a1 + 104;
    v114 = a1;
    *(&v119[2].__r_.__value_.__r.__words[2] + v59 + 1) = 0;
    v61 = std::string::append(v119, "'", 1uLL);
    v62 = *&v61->__r_.__value_.__l.__data_;
    v119[2].__r_.__value_.__r.__words[0] = v61->__r_.__value_.__r.__words[2];
    *&v119[1].__r_.__value_.__r.__words[1] = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    v63 = 23979;
    memset(&v116, 0, sizeof(v116));
    do
    {
      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        v67 = (v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v116.__r_.__value_.__l.__size_ == v67)
        {
          if ((v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_120:
          operator new();
        }

        v64 = v116.__r_.__value_.__l.__size_;
        v65 = v116.__r_.__value_.__r.__words[0];
        ++v116.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v116.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_120;
        }

        v64 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
        *(&v116.__r_.__value_.__s + 23) = (*(&v116.__r_.__value_.__s + 23) + 1) & 0x7F;
        v65 = &v116;
      }

      v66 = v65 + v64;
      *v66 = (v63 % 0xA) | 0x30;
      v66[1] = 0;
      v25 = v63 > 9;
      v63 /= 0xAu;
    }

    while (v25);
    v68 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
    v69 = &v116;
    if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v116.__r_.__value_.__l.__size_;
      v69 = v116.__r_.__value_.__r.__words[0];
    }

    if (v68)
    {
      v70 = (v69 + v68 - 1);
      if (v70 > v69)
      {
        v71 = &v69->__r_.__value_.__s.__data_[1];
        do
        {
          v72 = *(v71 - 1);
          *(v71 - 1) = v70->__r_.__value_.__s.__data_[0];
          v70->__r_.__value_.__s.__data_[0] = v72;
          v70 = (v70 - 1);
          v32 = v71++ >= v70;
        }

        while (!v32);
      }
    }

    v73 = std::string::insert(&v116, 0, "exprtk.hpp:", 0xBuLL);
    v34 = v114;
    v74 = *&v73->__r_.__value_.__l.__data_;
    v118 = v73->__r_.__value_.__r.__words[2];
    *v117 = v74;
    v73->__r_.__value_.__l.__size_ = 0;
    v73->__r_.__value_.__r.__words[2] = 0;
    v73->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v111, &v119[1].__r_.__value_.__l.__size_, v117, &v119[2].__r_.__value_.__l.__size_);
    v75 = v114[71];
    v76 = v114[70];
    v77 = 30 * ((v75 - v76) >> 3) - 1;
    if (v75 == v76)
    {
      v77 = 0;
    }

    if (v77 == v114[74] + v114[73])
    {
      sub_C35C4(v114 + 69);
      v76 = v114[70];
      v75 = v114[71];
    }

    if (v75 == v76)
    {
      v40 = 0;
    }

    else
    {
      v78 = v114[74] + v114[73];
      v40 = *(v76 + 8 * (v78 / 0x1E)) + 136 * (v78 % 0x1E);
    }

    goto LABEL_136;
  }

  v57 = *(a1 + 24);
  if (*(a1 + 8) == v57)
  {
    *v12 = *v43;
    v58 = (a1 + 48);
    v57 = a1 + 40;
LABEL_156:
    v81 = *(v57 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v81 >= 0)
      {
        v83 = v58;
      }

      else
      {
        v83 = *v58;
      }

      if (v81 >= 0)
      {
        v84 = *(v57 + 31);
      }

      else
      {
        v84 = *(v57 + 16);
      }

      sub_13B38(a1 + 112, v83, v84);
    }

    else if ((*(v57 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v58, *(v57 + 16));
    }

    else
    {
      v82 = *v58;
      *(a1 + 128) = v58[2];
      *(a1 + 112) = v82;
    }

    goto LABEL_167;
  }

  *(a1 + 24) = v57 + 40;
  v58 = (v57 + 8);
  *(a1 + 104) = *v57;
  if (v12 != v57)
  {
    goto LABEL_156;
  }

LABEL_167:
  *(a1 + 136) = *(v57 + 32);
  *(&v132 + 1) = sub_C5A5C(a1, 0);
  if (!*(&v132 + 1))
  {
    goto LABEL_153;
  }

  if (*v12 == 41)
  {
    v85 = *(a1 + 24);
    if (*(a1 + 8) == v85)
    {
      *v12 = *v43;
    }

    else
    {
      *(a1 + 24) = v85 + 10;
      v44 = (v85 + 2);
      *(a1 + 104) = *v85;
      v43 = v85;
      if (v12 == v85)
      {
LABEL_218:
        *(a1 + 136) = *(v43 + 4);
        v79 = sub_1EB2EC(a1 + 344, &v130, &v131);
        v127[0] = v79 == 0;
        goto LABEL_154;
      }
    }

    v106 = *(v43 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v106 >= 0)
      {
        v108 = v44;
      }

      else
      {
        v108 = *v44;
      }

      if (v106 >= 0)
      {
        v109 = *(v43 + 31);
      }

      else
      {
        v109 = *(v43 + 2);
      }

      sub_13B38(a1 + 112, v108, v109);
    }

    else if ((*(v43 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v44, *(v43 + 2));
    }

    else
    {
      v107 = *v44;
      *(a1 + 128) = v44[2];
      *(a1 + 112) = v107;
    }

    goto LABEL_218;
  }

  if (*(a3 + 23) >= 0)
  {
    v86 = *(a3 + 23);
  }

  else
  {
    v86 = a3[1];
  }

  if (v86 + 60 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v86 + 60 > 0x16)
  {
    operator new();
  }

  qmemcpy(v119, "ERR131 - Invalid number of parameters for special function '", 60);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v119[2].__r_.__value_.__r.__words[1] + 4, v87, v86);
  v112 = a1 + 104;
  v115 = a1;
  *(&v119[2].__r_.__value_.__r.__words[1] + v86 + 4) = 0;
  v88 = std::string::append(v119, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  v119[2].__r_.__value_.__r.__words[0] = v88->__r_.__value_.__r.__words[2];
  *&v119[1].__r_.__value_.__r.__words[1] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 23992;
  memset(&v116, 0, sizeof(v116));
  do
  {
    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v116.__r_.__value_.__l.__size_ == v94)
      {
        if ((v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_190:
        operator new();
      }

      v91 = v116.__r_.__value_.__l.__size_;
      v92 = v116.__r_.__value_.__r.__words[0];
      ++v116.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v116.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_190;
      }

      v91 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      *(&v116.__r_.__value_.__s + 23) = (*(&v116.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v116;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v25 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v25);
  v95 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  v96 = &v116;
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v116.__r_.__value_.__l.__size_;
    v96 = v116.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v32 = v98++ >= v97;
      }

      while (!v32);
    }
  }

  v100 = std::string::insert(&v116, 0, "exprtk.hpp:", 0xBuLL);
  v34 = v115;
  v101 = *&v100->__r_.__value_.__l.__data_;
  v118 = v100->__r_.__value_.__r.__words[2];
  *v117 = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v112, &v119[1].__r_.__value_.__l.__size_, v117, &v119[2].__r_.__value_.__l.__size_);
  v102 = v115[71];
  v103 = v115[70];
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == v115[74] + v115[73])
  {
    sub_C35C4(v115 + 69);
    v103 = v115[70];
    v102 = v115[71];
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = v115[74] + v115[73];
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_136:
  sub_C398C(v40, &v119[2].__r_.__value_.__l.__size_);
  ++v34[74];
  if (v126 < 0)
  {
    operator delete(__p);
    if ((v124 & 0x80000000) == 0)
    {
LABEL_138:
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_147;
    }
  }

  else if ((v124 & 0x80000000) == 0)
  {
    goto LABEL_138;
  }

  operator delete(v123);
  if ((v122 & 0x80000000) == 0)
  {
LABEL_139:
    if ((v120 & 0x80000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_148;
  }

LABEL_147:
  operator delete(v121);
  if ((v120 & 0x80000000) == 0)
  {
LABEL_140:
    if ((SHIBYTE(v118) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_149;
  }

LABEL_148:
  operator delete(v119[2].__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v118) & 0x80000000) == 0)
  {
LABEL_141:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_150;
  }

LABEL_149:
  operator delete(v117[0]);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_142:
    if ((v119[2].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_151;
  }

LABEL_150:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((v119[2].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
LABEL_143:
    if (SHIBYTE(v119[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_152;
    }

    goto LABEL_153;
  }

LABEL_151:
  operator delete(v119[1].__r_.__value_.__l.__size_);
  if (SHIBYTE(v119[0].__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_152:
    operator delete(v119[0].__r_.__value_.__l.__data_);
  }

LABEL_153:
  v79 = 0;
LABEL_154:
  sub_F0508(v127);
  return v79;
}

void sub_1DCD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (a17 < 0)
    {
LABEL_5:
      operator delete(a12);
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a17 < 0)
  {
    goto LABEL_5;
  }

  if ((a37 & 0x80000000) == 0)
  {
LABEL_6:
    if (a30 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a32);
  if (a30 < 0)
  {
LABEL_7:
    operator delete(a25);
    sub_F0508(v38 - 176);
    _Unwind_Resume(a1);
  }

LABEL_10:
  sub_F0508(v38 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_1DCF20(uint64_t a1, _DWORD *a2, void **a3)
{
  v4 = a3 + 1;
  v5 = a3 + 2;
  if (*a3)
  {
    v6 = a3[1] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || a3[2] == 0)
  {
    return 0;
  }

  if ((*(**a3 + 32))(*a3) == 2 && *v4 && (*(**v4 + 32))(*v4) == 2 && *v5 && (*(**v5 + 32))(*v5) == 2)
  {

    return sub_1DDC80(a1, a2);
  }

  if (!*a3 || (*(**a3 + 32))(*a3) != 17 || !*v4 || (*(**v4 + 32))(*v4) != 17 || !*v5 || (*(**v5 + 32))(*v5) != 17)
  {
    switch(*a2)
    {
      case 0x3E8:

        sub_1E0DEC();
      case 0x3E9:

        sub_1E114C();
      case 0x3EA:

        sub_1E14AC();
      case 0x3EB:

        sub_1E180C();
      case 0x3EC:

        sub_1E1B6C();
      case 0x3ED:

        sub_1E1ECC();
      case 0x3EE:

        sub_1E222C();
      case 0x3EF:

        sub_1E258C();
      case 0x3F0:

        sub_1E28EC();
      case 0x3F1:

        sub_1E2C4C();
      case 0x3F2:

        sub_1E2FAC();
      case 0x3F3:

        sub_1E330C();
      case 0x3F4:

        sub_1E366C();
      case 0x3F5:

        sub_1E39CC();
      case 0x3F6:

        sub_1E3D2C();
      case 0x3F7:

        sub_1E408C();
      case 0x3F8:

        sub_1E43EC();
      case 0x3F9:

        sub_1E474C();
      case 0x3FA:

        sub_1E4AAC();
      case 0x3FB:

        sub_1E4E0C();
      case 0x3FC:

        sub_1E516C();
      case 0x3FD:

        sub_1E54CC();
      case 0x3FE:

        sub_1E582C();
      case 0x3FF:

        sub_1E5B8C();
      case 0x400:

        sub_1E5EEC();
      case 0x401:

        sub_1E624C();
      case 0x402:

        sub_1E65AC();
      case 0x403:

        sub_1E690C();
      case 0x404:

        sub_1E6C6C();
      case 0x405:

        sub_1E6FCC();
      case 0x406:

        sub_1E732C();
      case 0x407:

        sub_1E768C();
      case 0x408:

        sub_1E79F0();
      case 0x409:

        sub_1E7D58();
      case 0x40A:

        sub_1E80C0();
      case 0x40B:

        sub_1E842C();
      case 0x40C:

        sub_1E8798();
      case 0x40D:

        sub_1E8B08();
      case 0x40E:

        sub_1E8E74();
      case 0x40F:

        sub_1E91E4();
      case 0x410:

        sub_1E9558();
      case 0x411:

        sub_1E98CC();
      case 0x412:

        sub_1E9C40();
      case 0x413:

        sub_1E9FB4();
      case 0x414:

        sub_1EA328();
      case 0x415:

        sub_1EA69C();
      case 0x416:

        sub_1EAA10();
      case 0x417:

        sub_1EAD84();
      default:
        return 0;
    }

    return 0;
  }

  return sub_1DEE64(a1, a2, a3);
}

uint64_t sub_1DDC80(uint64_t a1, _DWORD *a2)
{
  switch(*a2)
  {
    case 0x3E8:
      operator new();
    case 0x3E9:
      operator new();
    case 0x3EA:
      operator new();
    case 0x3EB:
      operator new();
    case 0x3EC:
      operator new();
    case 0x3ED:
      operator new();
    case 0x3EE:
      operator new();
    case 0x3EF:
      operator new();
    case 0x3F0:
      operator new();
    case 0x3F1:
      operator new();
    case 0x3F2:
      operator new();
    case 0x3F3:
      operator new();
    case 0x3F4:
      operator new();
    case 0x3F5:
      operator new();
    case 0x3F6:
      operator new();
    case 0x3F7:
      operator new();
    case 0x3F8:
      operator new();
    case 0x3F9:
      operator new();
    case 0x3FA:
      operator new();
    case 0x3FB:
      operator new();
    case 0x3FC:
      operator new();
    case 0x3FD:
      operator new();
    case 0x3FE:
      operator new();
    case 0x3FF:
      operator new();
    case 0x400:
      operator new();
    case 0x401:
      operator new();
    case 0x402:
      operator new();
    case 0x403:
      operator new();
    case 0x404:
      operator new();
    case 0x405:
      operator new();
    case 0x406:
      operator new();
    case 0x407:
      operator new();
    case 0x408:
      operator new();
    case 0x409:
      operator new();
    case 0x40A:
      operator new();
    case 0x40B:
      operator new();
    case 0x40C:
      operator new();
    case 0x40D:
      operator new();
    case 0x40E:
      operator new();
    case 0x40F:
      operator new();
    case 0x410:
      operator new();
    case 0x411:
      operator new();
    case 0x412:
      operator new();
    case 0x413:
      operator new();
    case 0x414:
      operator new();
    case 0x415:
      operator new();
    case 0x416:
      operator new();
    case 0x417:
      operator new();
    default:
      return 0;
  }
}

uint64_t sub_1DEE64(uint64_t a1, _DWORD *a2, void **a3)
{
  (*(**a3 + 40))();
  (*(*a3[1] + 40))(a3[1]);
  (*(*a3[2] + 40))(a3[2]);
  switch(*a2)
  {
    case 0x3E8:
      operator new();
    case 0x3E9:
      operator new();
    case 0x3EA:
      operator new();
    case 0x3EB:
      operator new();
    case 0x3EC:
      operator new();
    case 0x3ED:
      operator new();
    case 0x3EE:
      operator new();
    case 0x3EF:
      operator new();
    case 0x3F0:
      operator new();
    case 0x3F1:
      operator new();
    case 0x3F2:
      operator new();
    case 0x3F3:
      operator new();
    case 0x3F4:
      operator new();
    case 0x3F5:
      operator new();
    case 0x3F6:
      operator new();
    case 0x3F7:
      operator new();
    case 0x3F8:
      operator new();
    case 0x3F9:
      operator new();
    case 0x3FA:
      operator new();
    case 0x3FB:
      operator new();
    case 0x3FC:
      operator new();
    case 0x3FD:
      operator new();
    case 0x3FE:
      operator new();
    case 0x3FF:
      operator new();
    case 0x400:
      operator new();
    case 0x401:
      operator new();
    case 0x402:
      operator new();
    case 0x403:
      operator new();
    case 0x404:
      operator new();
    case 0x405:
      operator new();
    case 0x406:
      operator new();
    case 0x407:
      operator new();
    case 0x408:
      operator new();
    case 0x409:
      operator new();
    case 0x40A:
      operator new();
    case 0x40B:
      operator new();
    case 0x40C:
      operator new();
    case 0x40D:
      operator new();
    case 0x40E:
      operator new();
    case 0x40F:
      operator new();
    case 0x410:
      operator new();
    case 0x411:
      operator new();
    case 0x412:
      operator new();
    case 0x413:
      operator new();
    case 0x414:
      operator new();
    case 0x415:
      operator new();
    case 0x416:
      operator new();
    case 0x417:
      operator new();
    default:
      return 0;
  }
}

long double sub_1E0AA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return *v1 + v2 * log(**(a1 + 16));
}

long double sub_1E0B04(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return v2 * log(**(a1 + 16)) - *v1;
}

long double sub_1E0B68(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return *v1 + v2 * log10(**(a1 + 16));
}

long double sub_1E0BCC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return v2 * log10(**(a1 + 16)) - *v1;
}

long double sub_1E0C30(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return *v1 + v2 * sin(**(a1 + 16));
}

long double sub_1E0C94(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return v2 * sin(**(a1 + 16)) - *v1;
}

long double sub_1E0CF8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return *v1 + v2 * cos(**(a1 + 16));
}

long double sub_1E0D5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = **(a1 + 8);
  return v2 * cos(**(a1 + 16)) - *v1;
}

double sub_1E0DC0(uint64_t a1)
{
  if (**(a1 + 8) == 0.0)
  {
    v1 = a1 + 24;
  }

  else
  {
    v1 = a1 + 16;
  }

  return **v1;
}

uint64_t sub_1E0E94(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E0F88(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E109C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return (v2 + v3) / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E11F4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E12E8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E13FC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return (v2 + v3) * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E1554(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E1648(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E175C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 - (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E18B4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E19A8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E1ABC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E1C14(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E1D08(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E1E1C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 - v3 + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E1F74(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E2068(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E217C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return (v2 - v3) / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E22D4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E23C8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E24DC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return (v2 - v3) * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E2634(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E2728(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E283C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * v3 + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E2994(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E2A88(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E2B9C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * v3 - (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E2CF4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E2DE8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E2EFC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * v3 / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E3054(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E3148(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E325C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * v3 * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E33B4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E34A8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E35BC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / v3 + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E3714(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E3808(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E391C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / v3 - (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E3A74(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E3B68(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E3C7C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / v3 / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E3DD4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E3EC8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E3FDC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / v3 * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E4134(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E4228(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E433C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / (v3 + (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E4494(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E4588(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E469C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / (v3 - (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E47F4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E48E8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E49FC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / (v3 * (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E4B54(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E4C48(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E4D5C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 / (v3 / (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E4EB4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E4FA8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E50BC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 + (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E5214(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E5308(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E541C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 - (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E5574(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E5668(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E577C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E58D4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E59C8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E5ADC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 / (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E5C34(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E5D28(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E5E3C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 - (v3 + (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E5F94(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E6088(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E619C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 - (v3 - (*(*a1[6] + 16))(a1[6]));
}

uint64_t sub_1E62F4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E63E8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E64FC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 - v3 / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E6654(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E6748(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E685C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 - v3 * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E69B4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E6AA8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E6BBC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 * (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E6D14(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E6E08(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E6F1C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 / (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E7074(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E7168(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E727C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E73D4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E74C8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E75DC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 + v3 - (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E7734(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E7828(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E793C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * v3) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E7A98(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E7B8C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E7CA0(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (v3 * v3)) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E7E00(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E7EF4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E8008(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * v3 * (v3 * v3)) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E8168(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E825C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E8370(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (v3 * v3 * (v3 * v3))) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E84D4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E85C8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E86DC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (v3 * v3) * (v3 * (v3 * v3))) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E8840(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E8934(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E8A48(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (v3 * (v3 * v3) * (v3 * (v3 * v3)))) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E8BB0(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E8CA4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E8DB8(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * v3 * (v3 * v3) * (v3 * v3 * (v3 * v3))) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E8F1C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E9010(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

double sub_1E9124(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  return v2 * (v3 * (v3 * v3 * (v3 * v3) * (v3 * v3 * (v3 * v3)))) + (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1E928C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E9380(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1E9494(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * log(v3) + v4;
}

uint64_t sub_1E9600(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E96F4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1E9808(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * log(v3) - v4;
}

uint64_t sub_1E9974(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E9A68(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1E9B7C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * log10(v3) + v4;
}

uint64_t sub_1E9CE8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1E9DDC(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1E9EF0(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * log10(v3) - v4;
}

uint64_t sub_1EA05C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1EA150(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1EA264(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * sin(v3) + v4;
}

uint64_t sub_1EA3D0(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1EA4C4(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1EA5D8(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * sin(v3) - v4;
}

uint64_t sub_1EA744(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1EA838(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1EA94C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * cos(v3) + v4;
}

uint64_t sub_1EAAB8(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1EABAC(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

long double sub_1EACC0(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * cos(v3) - v4;
}

uint64_t sub_1EAE2C(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  return a1;
}

void sub_1EAF20(uint64_t a1)
{
  *a1 = off_26572E0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  operator delete();
}

uint64_t sub_1EB034(void **a1)
{
  (*(*a1[2] + 16))(a1[2]);
  (*(*a1[4] + 16))(a1[4]);
  return (*(*a1[6] + 16))(a1[6]);
}

uint64_t sub_1EB0E4(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      goto LABEL_16;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8 && (*(*v8 + 32))(v8) != 17)
  {
    v9 = *(v7 + 16);
    if (!v9)
    {
LABEL_22:
      *(v7 + 16) = 0;
      return a1;
    }

    if ((*(*v9 + 32))(v9) != 18)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_22;
    }
  }

  return a1;
}

uint64_t sub_1EB2EC(uint64_t a1, _DWORD *a2, int64x2_t *a3)
{
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])))))
  {
    return 0;
  }

  if ((*(*a3->i64[0] + 32))(*a3) == 2 && (v7 = a3->i64[1]) != 0 && (*(*v7 + 32))(v7) == 2 && (v8 = a3[1].i64[0]) != 0 && (*(*v8 + 32))(v8) == 2 && (v9 = a3[1].i64[1]) != 0 && (*(*v9 + 32))(v9) == 2)
  {

    return sub_1EBF24(a1, a2);
  }

  else
  {
    if (!a3->i64[0] || (*(*a3->i64[0] + 32))(a3->i64[0]) != 17 || (v10 = a3->i64[1]) == 0 || (*(*v10 + 32))(v10) != 17 || (v11 = a3[1].i64[0]) == 0 || (*(*v11 + 32))(v11) != 17 || (v12 = a3[1].i64[1]) == 0 || (*(*v12 + 32))(v12) != 17)
    {
      switch(*a2)
      {
        case 0x418:

          sub_1ED040();
        case 0x419:

          sub_1ED130();
        case 0x41A:

          sub_1ED220();
        case 0x41B:

          sub_1ED310();
        case 0x41C:

          sub_1ED400();
        case 0x41D:

          sub_1ED4F0();
        case 0x41E:

          sub_1ED5E0();
        case 0x41F:

          sub_1ED6D0();
        case 0x420:

          sub_1ED7C0();
        case 0x421:

          sub_1ED8B0();
        case 0x422:

          sub_1ED9A0();
        case 0x423:

          sub_1EDA90();
        case 0x424:

          sub_1EDB80();
        case 0x425:

          sub_1EDC70();
        case 0x426:

          sub_1EDD60();
        case 0x427:

          sub_1EDE50();
        case 0x428:

          sub_1EDF40();
        case 0x429:

          sub_1EE030();
        case 0x42A:

          sub_1EE120();
        case 0x42B:

          sub_1EE210();
        case 0x42C:

          sub_1EE300();
        case 0x42D:

          sub_1EE3F0();
        case 0x42E:

          sub_1EE4E0();
        case 0x42F:

          sub_1EE5D0();
        case 0x430:

          sub_1EE6C0();
        case 0x431:

          sub_1EE7B0();
        case 0x432:

          sub_1EE8A0();
        case 0x433:

          sub_1EE990();
        case 0x434:

          sub_1EEA80();
        case 0x435:

          sub_1EEB70();
        case 0x436:

          sub_1EEC60();
        case 0x437:

          sub_1EED50();
        case 0x438:

          sub_1EEE40();
        case 0x439:

          sub_1EEF30();
        case 0x43A:

          sub_1EF020();
        case 0x43B:

          sub_1EF110();
        case 0x43C:

          sub_1EF200();
        case 0x43D:

          sub_1EF2F0();
        case 0x43E:

          sub_1EF3E0();
        case 0x43F:

          sub_1EF4D0();
        case 0x440:

          sub_1EF5C0();
        case 0x441:

          sub_1EF6B0();
        case 0x442:

          sub_1EF7A0();
        case 0x443:

          sub_1EF890();
        case 0x444:

          sub_1EF980();
        case 0x445:

          sub_1EFA70();
        case 0x446:

          sub_1EFB60();
        case 0x447:

          sub_1EFC50();
        case 0x448:

          sub_1EFD40();
        case 0x449:

          sub_1EFE30();
        case 0x44A:

          sub_1EFF20();
        case 0x44B:

          sub_1F0010();
        default:
          return 0;
      }

      return 0;
    }

    return sub_1EC3AC(a1, a2, a3);
  }
}

uint64_t sub_1EBF24(uint64_t a1, _DWORD *a2)
{
  switch(*a2)
  {
    case 0x418:
      sub_1ED040();
    case 0x419:
      sub_1ED130();
    case 0x41A:
      sub_1ED220();
    case 0x41B:
      sub_1ED310();
    case 0x41C:
      sub_1ED400();
    case 0x41D:
      sub_1ED4F0();
    case 0x41E:
      sub_1ED5E0();
    case 0x41F:
      sub_1ED6D0();
    case 0x420:
      sub_1ED7C0();
    case 0x421:
      sub_1ED8B0();
    case 0x422:
      sub_1ED9A0();
    case 0x423:
      sub_1EDA90();
    case 0x424:
      sub_1EDB80();
    case 0x425:
      sub_1EDC70();
    case 0x426:
      sub_1EDD60();
    case 0x427:
      sub_1EDE50();
    case 0x428:
      sub_1EDF40();
    case 0x429:
      sub_1EE030();
    case 0x42A:
      sub_1EE120();
    case 0x42B:
      sub_1EE210();
    case 0x42C:
      sub_1EE300();
    case 0x42D:
      sub_1EE3F0();
    case 0x42E:
      sub_1EE4E0();
    case 0x42F:
      sub_1EE5D0();
    case 0x430:
      sub_1EE6C0();
    case 0x431:
      sub_1EE7B0();
    case 0x432:
      sub_1EE8A0();
    case 0x433:
      sub_1EE990();
    case 0x434:
      sub_1EEA80();
    case 0x435:
      sub_1EEB70();
    case 0x436:
      sub_1EEC60();
    case 0x437:
      sub_1EED50();
    case 0x438:
      sub_1EEE40();
    case 0x439:
      sub_1EEF30();
    case 0x43A:
      sub_1EF020();
    case 0x43B:
      sub_1EF110();
    case 0x43C:
      sub_1EF200();
    case 0x43D:
      sub_1EF2F0();
    case 0x43E:
      sub_1EF3E0();
    case 0x43F:
      sub_1EF4D0();
    case 0x440:
      sub_1EF5C0();
    case 0x441:
      sub_1EF6B0();
    case 0x442:
      sub_1EF7A0();
    case 0x443:
      sub_1EF890();
    case 0x444:
      sub_1EF980();
    case 0x445:
      sub_1EFA70();
    case 0x446:
      sub_1EFB60();
    case 0x447:
      sub_1EFC50();
    case 0x448:
      sub_1EFD40();
    case 0x449:
      sub_1EFE30();
    case 0x44A:
      sub_1EFF20();
    case 0x44B:
      sub_1F0010();
    default:
      return 0;
  }
}

uint64_t sub_1EC3AC(uint64_t a1, _DWORD *a2, void **a3)
{
  (*(**a3 + 40))();
  (*(*a3[1] + 40))(a3[1]);
  (*(*a3[2] + 40))(a3[2]);
  (*(*a3[3] + 40))(a3[3]);
  switch(*a2)
  {
    case 0x418:
      operator new();
    case 0x419:
      operator new();
    case 0x41A:
      operator new();
    case 0x41B:
      operator new();
    case 0x41C:
      operator new();
    case 0x41D:
      operator new();
    case 0x41E:
      operator new();
    case 0x41F:
      operator new();
    case 0x420:
      operator new();
    case 0x421:
      operator new();
    case 0x422:
      operator new();
    case 0x423:
      operator new();
    case 0x424:
      operator new();
    case 0x425:
      operator new();
    case 0x426:
      operator new();
    case 0x427:
      operator new();
    case 0x428:
      operator new();
    case 0x429:
      operator new();
    case 0x42A:
      operator new();
    case 0x42B:
      operator new();
    case 0x42C:
      operator new();
    case 0x42D:
      operator new();
    case 0x42E:
      operator new();
    case 0x42F:
      operator new();
    case 0x430:
      operator new();
    case 0x431:
      operator new();
    case 0x432:
      operator new();
    case 0x433:
      operator new();
    case 0x434:
      operator new();
    case 0x435:
      operator new();
    case 0x436:
      operator new();
    case 0x437:
      operator new();
    case 0x438:
      operator new();
    case 0x439:
      operator new();
    case 0x43A:
      operator new();
    case 0x43B:
      operator new();
    case 0x43C:
      operator new();
    case 0x43D:
      operator new();
    case 0x43E:
      operator new();
    case 0x43F:
      operator new();
    case 0x440:
      operator new();
    case 0x441:
      operator new();
    case 0x442:
      operator new();
    case 0x443:
      operator new();
    case 0x444:
      operator new();
    case 0x445:
      operator new();
    case 0x446:
      operator new();
    case 0x447:
      operator new();
    case 0x448:
      operator new();
    case 0x449:
      operator new();
    case 0x44A:
      operator new();
    case 0x44B:
      operator new();
    default:
      return 0;
  }
}

double sub_1F0C98(double **a1)
{
  v1 = *a1[2] * (*a1[2] * *a1[2]);
  v2 = *a1[4];
  return *a1[1] * (v1 * v1) + *a1[3] * (v2 * (v2 * v2) * (v2 * (v2 * v2)));
}

double sub_1F0CF8(double **a1)
{
  v1 = a1[2];
  v2 = a1[4];
  return *a1[1] * (*v1 * (*v1 * (*v1 * *v1) * (*v1 * (*v1 * *v1)))) + *a1[3] * (*v2 * (*v2 * (*v2 * *v2) * (*v2 * (*v2 * *v2))));
}

double sub_1F0D60(double **a1)
{
  v1 = *a1[2] * *a1[2] * (*a1[2] * *a1[2]);
  v2 = *a1[4] * *a1[4] * (*a1[4] * *a1[4]);
  return *a1[1] * (v1 * v1) + *a1[3] * (v2 * v2);
}

double sub_1F0DC0(double **a1)
{
  v1 = a1[4];
  v2 = *a1[2];
  return *a1[1] * (v2 * (v2 * v2 * (v2 * v2) * (v2 * v2 * (v2 * v2)))) + *a1[3] * (*v1 * (*v1 * *v1 * (*v1 * *v1) * (*v1 * *v1 * (*v1 * *v1))));
}

double sub_1F0E28(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 || **(a1 + 8) == 0.0;
  v2 = 32;
  if (!v1)
  {
    v2 = 24;
  }

  return **(a1 + v2);
}

double sub_1F0E78(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 && **(a1 + 8) == 0.0;
  v2 = 32;
  if (!v1)
  {
    v2 = 24;
  }

  return **(a1 + v2);
}

double sub_1F0EC8(uint64_t a1)
{
  if (**(a1 + 8) >= **(a1 + 16))
  {
    v1 = a1 + 32;
  }

  else
  {
    v1 = a1 + 24;
  }

  return **v1;
}

double sub_1F0F10(uint64_t a1)
{
  if (**(a1 + 8) <= **(a1 + 16))
  {
    v1 = a1 + 24;
  }

  else
  {
    v1 = a1 + 32;
  }

  return **v1;
}

double sub_1F0F58(uint64_t a1)
{
  if (**(a1 + 8) <= **(a1 + 16))
  {
    v1 = a1 + 32;
  }

  else
  {
    v1 = a1 + 24;
  }

  return **v1;
}

double sub_1F0FA0(uint64_t a1)
{
  if (**(a1 + 8) >= **(a1 + 16))
  {
    v1 = a1 + 24;
  }

  else
  {
    v1 = a1 + 32;
  }

  return **v1;
}

double sub_1F0FE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *v2;
  v5 = *v1 - *v2;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v3 < v4)
  {
    v3 = v4;
  }

  if (v5 > fmax(v3, 1.0) * 1.0e-10)
  {
    v6 = a1 + 32;
  }

  else
  {
    v6 = a1 + 24;
  }

  return **v6;
}

long double sub_1F1074(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = **(a1 + 8);
  v4 = v3 * sin(**(a1 + 16));
  v5 = *v1;
  return v4 + v5 * cos(*v2);
}

uint64_t sub_1F10CC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F11FC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F134C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + (v3 + v4) / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F1434(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F1564(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F16B4(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + (v3 + v4) * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F179C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F18CC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F1A1C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + (v3 - v4) / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F1B04(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F1C34(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F1D84(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + (v3 - v4) * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F1E6C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F1F9C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F20EC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + v3 * v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F21D4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F2304(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F2454(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + v3 * v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F253C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F266C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F27BC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + v3 / v4 + (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F28A4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F29D4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F2B24(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + v3 / v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F2C0C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F2D3C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F2E8C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 + v3 / v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F2F74(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F30A4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F31F4(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - (v3 + v4) / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F32DC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F340C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F355C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - (v3 + v4) * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F3644(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F3774(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F38C4(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - (v3 - v4) / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F39AC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F3ADC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F3C2C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - (v3 - v4) * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F3D14(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F3E44(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F3F94(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - v3 * v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F407C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F41AC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F42FC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - v3 * v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F43E4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F4514(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F4664(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - v3 / v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F474C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F487C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F49CC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 - v3 / v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F4AB4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F4BE4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F4D34(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return (v2 + v3) * v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F4E1C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F4F4C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F509C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return (v2 - v3) * v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F5184(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F52B4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F5404(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 * v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F54EC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F561C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F576C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 / v3 * v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F5854(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F5984(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F5AD4(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return (v2 + v3) / v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F5BBC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F5CEC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F5E3C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return (v2 - v3) / v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F5F24(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F6054(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F61A4(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 / v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F628C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F63BC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F650C(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 / v3 / v4 - (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F65F4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F6724(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F6874(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 + v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F695C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F6A8C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F6BDC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 - v4 * (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F6CC4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F6DF4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F6F44(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 + v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F702C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F715C(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F72AC(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 * v3 - v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F7394(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1F74C4(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  operator delete();
}

double sub_1F7614(void **a1)
{
  v2 = (*(*a1[2] + 16))(a1[2]);
  v3 = (*(*a1[4] + 16))(a1[4]);
  v4 = (*(*a1[6] + 16))(a1[6]);
  return v2 / v3 + v4 / (*(*a1[8] + 16))(a1[8]);
}

uint64_t sub_1F76FC(uint64_t a1)
{
  *a1 = off_2657330;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 72) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 64) = 0;
  }

  return a1;
}