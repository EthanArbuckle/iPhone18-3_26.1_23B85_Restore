uint64_t sub_231844(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 72; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_231934(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_231B7C(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) != 0 || !a3[4].i64[0] || !a3[4].i64[1])
  {
    return result;
  }

  if (*(a2 + 32) != 10)
  {
    v12 = 0;
    while (1)
    {
      v13 = a3->i64[v12];
      if (!v13 || (*(*v13 + 32))(v13) == 17)
      {
        goto LABEL_21;
      }

      v14 = a3->i64[v12];
      if (v14)
      {
        if ((*(*v14 + 32))(v14) == 18)
        {
          goto LABEL_21;
        }

        v15 = a3->i64[v12];
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      a3->i64[v12] = 0;
LABEL_21:
      if (++v12 == 10)
      {
        return 0;
      }
    }
  }

  v7 = sub_231F7C(v6, a3);
  result = v6;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = a3->i64[v8];
      if (!v9 || (*(*v9 + 32))(v9) == 17)
      {
        goto LABEL_12;
      }

      v10 = a3->i64[v8];
      if (v10)
      {
        if ((*(*v10 + 32))(v10) == 18)
        {
          goto LABEL_12;
        }

        v11 = a3->i64[v8];
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      a3->i64[v8] = 0;
LABEL_12:
      if (++v8 == 10)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_231B7C(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0 && a3[4].i64[0] && a3[4].i64[1] != 0)
  {
    operator new();
  }

  for (i = 0; i != 10; ++i)
  {
    v6 = a3->i64[i];
    if (v6 && (*(*v6 + 32))(v6) != 17)
    {
      v7 = a3->i64[i];
      if (!v7)
      {
        goto LABEL_8;
      }

      if ((*(*v7 + 32))(v7) != 18)
      {
        v8 = a3->i64[i];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

LABEL_8:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_231F7C(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  if ((*(*v11 + 32))(v11) == 17)
  {
    *(a1 + 88) = a2[4];
    *(a1 + 96) = 0;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v14;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  if ((*(*v13 + 32))(v13) != 17)
  {
    v16 = (*(*v13 + 32))(v13) != 18;
    *(a1 + 104) = a2[5];
    *(a1 + 112) = v16;
    v15 = a2[6];
    if (v15)
    {
      goto LABEL_26;
    }

    return 0;
  }

  *(a1 + 104) = a2[5];
  *(a1 + 112) = 0;
  v15 = a2[6];
  if (!v15)
  {
    return 0;
  }

LABEL_26:
  v17 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
  *(a1 + 120) = a2[6];
  *(a1 + 128) = v17;
  v18 = a2[7];
  if (!v18)
  {
    return 0;
  }

  v19 = (*(*v18 + 32))(a2[7]) != 17 && (*(*v18 + 32))(v18) != 18;
  *(a1 + 136) = a2[7];
  *(a1 + 144) = v19;
  v20 = a2[8];
  if (!v20)
  {
    return 0;
  }

  v21 = (*(*v20 + 32))(a2[8]) != 17 && (*(*v20 + 32))(v20) != 18;
  *(a1 + 152) = a2[8];
  *(a1 + 160) = v21;
  v22 = a2[9];
  if (!v22)
  {
    return 0;
  }

  v23 = (*(*v22 + 32))(a2[9]) != 17 && (*(*v22 + 32))(v22) != 18;
  *(a1 + 168) = a2[9];
  *(a1 + 176) = v23;
  return 1;
}

uint64_t sub_232510(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[9];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_232744(void *a1)
{
  *a1 = off_265BBA8;
  sub_232A90(a1 + 3);
  return a1;
}

void sub_232788(void *a1)
{
  *a1 = off_265BBA8;
  sub_232A90(a1 + 3);

  operator delete();
}

double sub_2327EC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v11 = (*(**(a1 + 152) + 16))(*(a1 + 152));
  v12 = (*(**(a1 + 168) + 16))(*(a1 + 168));
  (*(**(a1 + 8) + 96))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12);
  return result;
}

uint64_t sub_232A90(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  result = a1[18];
  if (result)
  {
    if (*(a1 + 152) == 1)
    {
      result = (*(*result + 8))(result);
      a1[18] = 0;
    }
  }

  return result;
}

uint64_t sub_232D08(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 80; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_232DF8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_233048(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) != 0 || !a3[4].i64[0] || !a3[4].i64[1] || !a3[5].i64[0])
  {
    return result;
  }

  if (*(a2 + 32) != 11)
  {
    v12 = 0;
    while (1)
    {
      v13 = a3->i64[v12];
      if (!v13 || (*(*v13 + 32))(v13) == 17)
      {
        goto LABEL_22;
      }

      v14 = a3->i64[v12];
      if (v14)
      {
        if ((*(*v14 + 32))(v14) == 18)
        {
          goto LABEL_22;
        }

        v15 = a3->i64[v12];
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      a3->i64[v12] = 0;
LABEL_22:
      if (++v12 == 11)
      {
        return 0;
      }
    }
  }

  v7 = sub_233458(v6, a3);
  result = v6;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = a3->i64[v8];
      if (!v9 || (*(*v9 + 32))(v9) == 17)
      {
        goto LABEL_13;
      }

      v10 = a3->i64[v8];
      if (v10)
      {
        if ((*(*v10 + 32))(v10) == 18)
        {
          goto LABEL_13;
        }

        v11 = a3->i64[v8];
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      a3->i64[v8] = 0;
LABEL_13:
      if (++v8 == 11)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_233048(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0)
  {
    v4 = !a3[4].i64[0] || a3[4].i64[1] == 0;
    if (!v4 && a3[5].i64[0] != 0)
    {
      operator new();
    }
  }

  for (i = 0; i != 11; ++i)
  {
    v7 = a3->i64[i];
    if (v7 && (*(*v7 + 32))(v7) != 17)
    {
      v8 = a3->i64[i];
      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(*v8 + 32))(v8) != 18)
      {
        v9 = a3->i64[i];
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

LABEL_11:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_233458(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  if ((*(*v11 + 32))(v11) == 17)
  {
    *(a1 + 88) = a2[4];
    *(a1 + 96) = 0;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v14;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  if ((*(*v13 + 32))(v13) != 17)
  {
    v16 = (*(*v13 + 32))(v13) != 18;
    *(a1 + 104) = a2[5];
    *(a1 + 112) = v16;
    v15 = a2[6];
    if (v15)
    {
      goto LABEL_26;
    }

    return 0;
  }

  *(a1 + 104) = a2[5];
  *(a1 + 112) = 0;
  v15 = a2[6];
  if (!v15)
  {
    return 0;
  }

LABEL_26:
  v17 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
  *(a1 + 120) = a2[6];
  *(a1 + 128) = v17;
  v18 = a2[7];
  if (!v18)
  {
    return 0;
  }

  v19 = (*(*v18 + 32))(a2[7]) != 17 && (*(*v18 + 32))(v18) != 18;
  *(a1 + 136) = a2[7];
  *(a1 + 144) = v19;
  v20 = a2[8];
  if (!v20)
  {
    return 0;
  }

  v21 = (*(*v20 + 32))(a2[8]) != 17 && (*(*v20 + 32))(v20) != 18;
  *(a1 + 152) = a2[8];
  *(a1 + 160) = v21;
  v22 = a2[9];
  if (!v22)
  {
    return 0;
  }

  v23 = (*(*v22 + 32))(a2[9]) != 17 && (*(*v22 + 32))(v22) != 18;
  *(a1 + 168) = a2[9];
  *(a1 + 176) = v23;
  v24 = a2[10];
  if (!v24)
  {
    return 0;
  }

  v25 = (*(*v24 + 32))(a2[10]) != 17 && (*(*v24 + 32))(v24) != 18;
  *(a1 + 184) = a2[10];
  *(a1 + 192) = v25;
  return 1;
}

uint64_t sub_233A68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[10];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_233CD0(void *a1)
{
  *a1 = off_265BBF8;
  sub_234054(a1 + 3);
  return a1;
}

void sub_233D14(void *a1)
{
  *a1 = off_265BBF8;
  sub_234054(a1 + 3);

  operator delete();
}

double sub_233D78(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v11 = (*(**(a1 + 152) + 16))(*(a1 + 152));
  v12 = (*(**(a1 + 168) + 16))(*(a1 + 168));
  v13 = (*(**(a1 + 184) + 16))(*(a1 + 184));
  (*(**(a1 + 8) + 104))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13);
  return result;
}

uint64_t sub_234054(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  result = a1[20];
  if (result)
  {
    if (*(a1 + 168) == 1)
    {
      result = (*(*result + 8))(result);
      a1[20] = 0;
    }
  }

  return result;
}

uint64_t sub_234308(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 88; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_2343F8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_234728(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0)
  {
    return result;
  }

  if (*(a2 + 32) != 12)
  {
    v17 = 0;
    while (1)
    {
      v18 = a3->i64[v17];
      if (!v18 || (*(*v18 + 32))(v18) == 17)
      {
        goto LABEL_26;
      }

      v19 = a3->i64[v17];
      if (v19)
      {
        if ((*(*v19 + 32))(v19) == 18)
        {
          goto LABEL_26;
        }

        v20 = a3->i64[v17];
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      a3->i64[v17] = 0;
LABEL_26:
      if (++v17 == 12)
      {
        return 0;
      }
    }
  }

  v7 = a3->i64[0];
  v8 = (v6 + 32);
  v9 = &a3->i64[1];
  v10 = -1;
  do
  {
    v11 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
    *(v8 - 1) = *(v9 - 1);
    *v8 = v11;
    if (v10 == 10)
    {
      return v6;
    }

    v12 = *v9++;
    v7 = v12;
    ++v10;
    v8 += 16;
  }

  while (v12);
  result = v6;
  if (v10 <= 0xA)
  {
    for (i = 0; i != 12; ++i)
    {
      v14 = a3->i64[i];
      if (!v14 || (*(*v14 + 32))(v14) == 17)
      {
        goto LABEL_17;
      }

      v15 = a3->i64[i];
      if (v15)
      {
        if ((*(*v15 + 32))(v15) == 18)
        {
          goto LABEL_17;
        }

        v16 = a3->i64[i];
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      a3->i64[i] = 0;
LABEL_17:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_234728(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) == 0)
  {
    operator new();
  }

  for (i = 0; i != 12; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_5;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_5:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_234BF0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[11];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_234E8C(void *a1)
{
  *a1 = off_265BC48;
  sub_235244(a1 + 3);
  return a1;
}

void sub_234ED0(void *a1)
{
  *a1 = off_265BC48;
  sub_235244(a1 + 3);

  operator delete();
}

double sub_234F34(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v11 = (*(**(a1 + 152) + 16))(*(a1 + 152));
  v12 = (*(**(a1 + 168) + 16))(*(a1 + 168));
  v13 = (*(**(a1 + 184) + 16))(*(a1 + 184));
  v14 = (*(**(a1 + 200) + 16))(*(a1 + 200));
  (*(**(a1 + 8) + 112))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14);
  return result;
}

uint64_t sub_235244(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  result = a1[22];
  if (result)
  {
    if (*(a1 + 184) == 1)
    {
      result = (*(*result + 8))(result);
      a1[22] = 0;
    }
  }

  return result;
}

uint64_t sub_235534(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 96; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_235624(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_235960(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))))
  {
    return result;
  }

  if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0 || a3[6].i64[0] == 0)
  {
    return result;
  }

  if (*(a2 + 32) != 13)
  {
    v18 = 0;
    while (1)
    {
      v19 = a3->i64[v18];
      if (!v19 || (*(*v19 + 32))(v19) == 17)
      {
        goto LABEL_29;
      }

      v20 = a3->i64[v18];
      if (v20)
      {
        if ((*(*v20 + 32))(v20) == 18)
        {
          goto LABEL_29;
        }

        v21 = a3->i64[v18];
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }

      a3->i64[v18] = 0;
LABEL_29:
      if (++v18 == 13)
      {
        return 0;
      }
    }
  }

  v8 = a3->i64[0];
  v9 = (v6 + 32);
  v10 = &a3->i64[1];
  v11 = -1;
  do
  {
    v12 = (*(*v8 + 32))(v8) != 17 && (*(*v8 + 32))(v8) != 18;
    *(v9 - 1) = *(v10 - 1);
    *v9 = v12;
    if (v11 == 11)
    {
      return v6;
    }

    v13 = *v10++;
    v8 = v13;
    ++v11;
    v9 += 16;
  }

  while (v13);
  result = v6;
  if (v11 <= 0xB)
  {
    for (i = 0; i != 13; ++i)
    {
      v15 = a3->i64[i];
      if (!v15 || (*(*v15 + 32))(v15) == 17)
      {
        goto LABEL_20;
      }

      v16 = a3->i64[i];
      if (v16)
      {
        if ((*(*v16 + 32))(v16) == 18)
        {
          goto LABEL_20;
        }

        v17 = a3->i64[i];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      a3->i64[i] = 0;
LABEL_20:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_235960(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) == 0 && a3[6].i64[0] != 0)
  {
    operator new();
  }

  for (i = 0; i != 13; ++i)
  {
    v6 = a3->i64[i];
    if (v6 && (*(*v6 + 32))(v6) != 17)
    {
      v7 = a3->i64[i];
      if (!v7)
      {
        goto LABEL_8;
      }

      if ((*(*v7 + 32))(v7) != 18)
      {
        v8 = a3->i64[i];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

LABEL_8:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_235E3C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[12];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23610C(void *a1)
{
  *a1 = off_265BC98;
  sub_2364FC(a1 + 3);
  return a1;
}

void sub_236150(void *a1)
{
  *a1 = off_265BC98;
  sub_2364FC(a1 + 3);

  operator delete();
}

double sub_2361B4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v11 = (*(**(a1 + 152) + 16))(*(a1 + 152));
  v12 = (*(**(a1 + 168) + 16))(*(a1 + 168));
  v13 = (*(**(a1 + 184) + 16))(*(a1 + 184));
  v14 = (*(**(a1 + 200) + 16))(*(a1 + 200));
  v15 = (*(**(a1 + 216) + 16))(*(a1 + 216));
  (*(**(a1 + 8) + 120))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15);
  return result;
}

uint64_t sub_2364FC(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  result = a1[24];
  if (result)
  {
    if (*(a1 + 200) == 1)
    {
      result = (*(*result + 8))(result);
      a1[24] = 0;
    }
  }

  return result;
}

uint64_t sub_236828(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 104; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_236918(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_236C58(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))))
  {
    return result;
  }

  v7 = (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0 || a3[6].i64[0] == 0;
  if (v7 || a3[6].i64[1] == 0)
  {
    return result;
  }

  if (*(a2 + 32) != 14)
  {
    v19 = 0;
    while (1)
    {
      v20 = a3->i64[v19];
      if (!v20 || (*(*v20 + 32))(v20) == 17)
      {
        goto LABEL_32;
      }

      v21 = a3->i64[v19];
      if (v21)
      {
        if ((*(*v21 + 32))(v21) == 18)
        {
          goto LABEL_32;
        }

        v22 = a3->i64[v19];
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }

      a3->i64[v19] = 0;
LABEL_32:
      if (++v19 == 14)
      {
        return 0;
      }
    }
  }

  v9 = a3->i64[0];
  v10 = (v6 + 32);
  v11 = &a3->i64[1];
  v12 = -1;
  do
  {
    v13 = (*(*v9 + 32))(v9) != 17 && (*(*v9 + 32))(v9) != 18;
    *(v10 - 1) = *(v11 - 1);
    *v10 = v13;
    if (v12 == 12)
    {
      return v6;
    }

    v14 = *v11++;
    v9 = v14;
    ++v12;
    v10 += 16;
  }

  while (v14);
  result = v6;
  if (v12 <= 0xC)
  {
    for (i = 0; i != 14; ++i)
    {
      v16 = a3->i64[i];
      if (!v16 || (*(*v16 + 32))(v16) == 17)
      {
        goto LABEL_23;
      }

      v17 = a3->i64[i];
      if (v17)
      {
        if ((*(*v17 + 32))(v17) == 18)
        {
          goto LABEL_23;
        }

        v18 = a3->i64[i];
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      a3->i64[i] = 0;
LABEL_23:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_236C58(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0)
  {
    v4 = (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0 || a3[6].i64[0] == 0;
    if (!v4 && a3[6].i64[1] != 0)
    {
      operator new();
    }
  }

  for (i = 0; i != 14; ++i)
  {
    v7 = a3->i64[i];
    if (v7 && (*(*v7 + 32))(v7) != 17)
    {
      v8 = a3->i64[i];
      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(*v8 + 32))(v8) != 18)
      {
        v9 = a3->i64[i];
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

LABEL_11:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_237140(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[13];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_237444(void *a1)
{
  *a1 = off_265BCE8;
  sub_2375F0(a1 + 3);
  return a1;
}

void sub_237488(void *a1)
{
  *a1 = off_265BCE8;
  sub_2375F0(a1 + 3);

  operator delete();
}

double sub_2374EC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_237958(&v3, (a1 + 24));
  (*(**(a1 + 8) + 128))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16);
  return result;
}

uint64_t sub_2375F0(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  result = a1[26];
  if (result)
  {
    if (*(a1 + 216) == 1)
    {
      result = (*(*result + 8))(result);
      a1[26] = 0;
    }
  }

  return result;
}

void sub_237958(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
}

uint64_t sub_237BE4(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 112; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_237CD4(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_23801C(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))))
  {
    return result;
  }

  v7 = (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0 || a3[6].i64[0] == 0;
  v8 = v7 || a3[6].i64[1] == 0;
  if (v8 || a3[7].i64[0] == 0)
  {
    return result;
  }

  if (*(a2 + 32) != 15)
  {
    v20 = 0;
    while (1)
    {
      v21 = a3->i64[v20];
      if (!v21 || (*(*v21 + 32))(v21) == 17)
      {
        goto LABEL_35;
      }

      v22 = a3->i64[v20];
      if (v22)
      {
        if ((*(*v22 + 32))(v22) == 18)
        {
          goto LABEL_35;
        }

        v23 = a3->i64[v20];
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      a3->i64[v20] = 0;
LABEL_35:
      if (++v20 == 15)
      {
        return 0;
      }
    }
  }

  v10 = a3->i64[0];
  v11 = (v6 + 32);
  v12 = &a3->i64[1];
  v13 = -1;
  do
  {
    v14 = (*(*v10 + 32))(v10) != 17 && (*(*v10 + 32))(v10) != 18;
    *(v11 - 1) = *(v12 - 1);
    *v11 = v14;
    if (v13 == 13)
    {
      return v6;
    }

    v15 = *v12++;
    v10 = v15;
    ++v13;
    v11 += 16;
  }

  while (v15);
  result = v6;
  if (v13 <= 0xD)
  {
    for (i = 0; i != 15; ++i)
    {
      v17 = a3->i64[i];
      if (!v17 || (*(*v17 + 32))(v17) == 17)
      {
        goto LABEL_26;
      }

      v18 = a3->i64[i];
      if (v18)
      {
        if ((*(*v18 + 32))(v18) == 18)
        {
          goto LABEL_26;
        }

        v19 = a3->i64[i];
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      a3->i64[i] = 0;
LABEL_26:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_23801C(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0)
  {
    v4 = (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), xmmword_22671F0)) & 0xF) != 0 || a3[6].i64[0] == 0;
    v5 = v4 || a3[6].i64[1] == 0;
    if (!v5 && a3[7].i64[0] != 0)
    {
      operator new();
    }
  }

  for (i = 0; i != 15; ++i)
  {
    v8 = a3->i64[i];
    if (v8 && (*(*v8 + 32))(v8) != 17)
    {
      v9 = a3->i64[i];
      if (!v9)
      {
        goto LABEL_14;
      }

      if ((*(*v9 + 32))(v9) != 18)
      {
        v10 = a3->i64[i];
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

LABEL_14:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_238514(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[14];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23884C(void *a1)
{
  *a1 = off_265BD38;
  sub_238A04(a1 + 3);
  return a1;
}

void sub_238890(void *a1)
{
  *a1 = off_265BD38;
  sub_238A04(a1 + 3);

  operator delete();
}

double sub_2388F4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_238DA8(&v3, (a1 + 24));
  (*(**(a1 + 8) + 136))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17);
  return result;
}

uint64_t sub_238A04(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  v15 = a1[26];
  if (v15 && *(a1 + 216) == 1)
  {
    (*(*v15 + 8))(v15);
    a1[26] = 0;
  }

  result = a1[28];
  if (result)
  {
    if (*(a1 + 232) == 1)
    {
      result = (*(*result + 8))(result);
      a1[28] = 0;
    }
  }

  return result;
}

void sub_238DA8(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
}

uint64_t sub_239060(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 120; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_239150(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  v5 = sub_239450(a1, a2, a3);
  v6 = v5;
  if (!v5 || (*(*v5 + 32))(v5) == 2)
  {
    return v6;
  }

  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))))
  {
    return 0;
  }

  if (*(a2 + 32) == 16)
  {
    v8 = a3->i64[0];
    v9 = (v6 + 32);
    v10 = &a3->i64[1];
    v11 = -1;
    do
    {
      v12 = (*(*v8 + 32))(v8) != 17 && (*(*v8 + 32))(v8) != 18;
      *(v9 - 1) = *(v10 - 1);
      *v9 = v12;
      if (v11 == 14)
      {
        return v6;
      }

      v13 = *v10++;
      v8 = v13;
      ++v11;
      v9 += 16;
    }

    while (v13);
    if (v11 > 0xE)
    {
      return v6;
    }

    v14 = 0;
    while (1)
    {
      v15 = a3->i64[v14];
      if (!v15 || (*(*v15 + 32))(v15) == 17)
      {
        goto LABEL_16;
      }

      v16 = a3->i64[v14];
      if (v16)
      {
        if ((*(*v16 + 32))(v16) == 18)
        {
          goto LABEL_16;
        }

        v17 = a3->i64[v14];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      a3->i64[v14] = 0;
LABEL_16:
      v6 = 0;
      if (++v14 == 16)
      {
        return v6;
      }
    }
  }

  for (i = 0; i != 16; ++i)
  {
    v19 = a3->i64[i];
    if (v19 && (*(*v19 + 32))(v19) != 17)
    {
      v20 = a3->i64[i];
      if (!v20)
      {
        goto LABEL_24;
      }

      if ((*(*v20 + 32))(v20) != 18)
      {
        v21 = a3->i64[i];
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

LABEL_24:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_239450(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) == 0)
  {
    operator new();
  }

  for (i = 0; i != 16; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_3;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_3:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_239924(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[14];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[15];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_239C90(void *a1)
{
  *a1 = off_265BD88;
  sub_239E50(a1 + 3);
  return a1;
}

void sub_239CD4(void *a1)
{
  *a1 = off_265BD88;
  sub_239E50(a1 + 3);

  operator delete();
}

double sub_239D38(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_23A230(&v3, (a1 + 24));
  (*(**(a1 + 8) + 144))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17, &v18);
  return result;
}

uint64_t sub_239E50(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  v15 = a1[26];
  if (v15 && *(a1 + 216) == 1)
  {
    (*(*v15 + 8))(v15);
    a1[26] = 0;
  }

  v16 = a1[28];
  if (v16 && *(a1 + 232) == 1)
  {
    (*(*v16 + 8))(v16);
    a1[28] = 0;
  }

  result = a1[30];
  if (result)
  {
    if (*(a1 + 248) == 1)
    {
      result = (*(*result + 8))(result);
      a1[30] = 0;
    }
  }

  return result;
}

void sub_23A230(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
  a1[15] = (*(*a2[30] + 16))(a2[30]);
}

uint64_t sub_23A514(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 128; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_23A604(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_23A920(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) != 0 || !a3[8].i64[0])
  {
    return result;
  }

  if (*(a2 + 32) != 17)
  {
    v17 = 0;
    while (1)
    {
      v18 = a3->i64[v17];
      if (!v18 || (*(*v18 + 32))(v18) == 17)
      {
        goto LABEL_26;
      }

      v19 = a3->i64[v17];
      if (v19)
      {
        if ((*(*v19 + 32))(v19) == 18)
        {
          goto LABEL_26;
        }

        v20 = a3->i64[v17];
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      a3->i64[v17] = 0;
LABEL_26:
      if (++v17 == 17)
      {
        return 0;
      }
    }
  }

  v7 = a3->i64[0];
  v8 = (v6 + 32);
  v9 = &a3->i64[1];
  v10 = -1;
  do
  {
    v11 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
    *(v8 - 1) = *(v9 - 1);
    *v8 = v11;
    if (v10 == 15)
    {
      return v6;
    }

    v12 = *v9++;
    v7 = v12;
    ++v10;
    v8 += 16;
  }

  while (v12);
  result = v6;
  if (v10 <= 0xF)
  {
    for (i = 0; i != 17; ++i)
    {
      v14 = a3->i64[i];
      if (!v14 || (*(*v14 + 32))(v14) == 17)
      {
        goto LABEL_17;
      }

      v15 = a3->i64[i];
      if (v15)
      {
        if ((*(*v15 + 32))(v15) == 18)
        {
          goto LABEL_17;
        }

        v16 = a3->i64[i];
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      a3->i64[i] = 0;
LABEL_17:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_23A920(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) == 0 && a3[8].i64[0])
  {
    operator new();
  }

  for (i = 0; i != 17; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_5;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_5:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_23AE04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[14];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[15];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[16];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23B1A4(void *a1)
{
  *a1 = off_265BDD8;
  sub_23B368(a1 + 3);
  return a1;
}

void sub_23B1E8(void *a1)
{
  *a1 = off_265BDD8;
  sub_23B368(a1 + 3);

  operator delete();
}

double sub_23B24C(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_23B784(&v3, (a1 + 24));
  (*(**(a1 + 8) + 152))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17, &v18, &v19);
  return result;
}

uint64_t sub_23B368(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  v15 = a1[26];
  if (v15 && *(a1 + 216) == 1)
  {
    (*(*v15 + 8))(v15);
    a1[26] = 0;
  }

  v16 = a1[28];
  if (v16 && *(a1 + 232) == 1)
  {
    (*(*v16 + 8))(v16);
    a1[28] = 0;
  }

  v17 = a1[30];
  if (v17 && *(a1 + 248) == 1)
  {
    (*(*v17 + 8))(v17);
    a1[30] = 0;
  }

  result = a1[32];
  if (result)
  {
    if (*(a1 + 264) == 1)
    {
      result = (*(*result + 8))(result);
      a1[32] = 0;
    }
  }

  return result;
}

void sub_23B784(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
  a1[15] = (*(*a2[30] + 16))(a2[30]);
  a1[16] = (*(*a2[32] + 16))(a2[32]);
}

uint64_t sub_23BA94(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 136; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_23BB84(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_23BEA8(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) != 0 || !a3[8].i64[0] || !a3[8].i64[1])
  {
    return result;
  }

  if (*(a2 + 32) != 18)
  {
    v17 = 0;
    while (1)
    {
      v18 = a3->i64[v17];
      if (!v18 || (*(*v18 + 32))(v18) == 17)
      {
        goto LABEL_27;
      }

      v19 = a3->i64[v17];
      if (v19)
      {
        if ((*(*v19 + 32))(v19) == 18)
        {
          goto LABEL_27;
        }

        v20 = a3->i64[v17];
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      a3->i64[v17] = 0;
LABEL_27:
      if (++v17 == 18)
      {
        return 0;
      }
    }
  }

  v7 = a3->i64[0];
  v8 = (v6 + 32);
  v9 = &a3->i64[1];
  v10 = -1;
  do
  {
    v11 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
    *(v8 - 1) = *(v9 - 1);
    *v8 = v11;
    if (v10 == 16)
    {
      return v6;
    }

    v12 = *v9++;
    v7 = v12;
    ++v10;
    v8 += 16;
  }

  while (v12);
  result = v6;
  if (v10 <= 0x10)
  {
    for (i = 0; i != 18; ++i)
    {
      v14 = a3->i64[i];
      if (!v14 || (*(*v14 + 32))(v14) == 17)
      {
        goto LABEL_18;
      }

      v15 = a3->i64[i];
      if (v15)
      {
        if ((*(*v15 + 32))(v15) == 18)
        {
          goto LABEL_18;
        }

        v16 = a3->i64[i];
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      a3->i64[i] = 0;
LABEL_18:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_23BEA8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) == 0 && a3[8].i64[0] && a3[8].i64[1])
  {
    operator new();
  }

  for (i = 0; i != 18; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_6;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_6:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_23C39C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[14];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[15];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[16];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[17];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23C770(void *a1)
{
  *a1 = off_265BE28;
  sub_23C93C(a1 + 3);
  return a1;
}

void sub_23C7B4(void *a1)
{
  *a1 = off_265BE28;
  sub_23C93C(a1 + 3);

  operator delete();
}

double sub_23C818(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_23CD94(&v3, (a1 + 24));
  (*(**(a1 + 8) + 160))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17, &v18, &v19, &v20);
  return result;
}

uint64_t sub_23C93C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  v15 = a1[26];
  if (v15 && *(a1 + 216) == 1)
  {
    (*(*v15 + 8))(v15);
    a1[26] = 0;
  }

  v16 = a1[28];
  if (v16 && *(a1 + 232) == 1)
  {
    (*(*v16 + 8))(v16);
    a1[28] = 0;
  }

  v17 = a1[30];
  if (v17 && *(a1 + 248) == 1)
  {
    (*(*v17 + 8))(v17);
    a1[30] = 0;
  }

  v18 = a1[32];
  if (v18 && *(a1 + 264) == 1)
  {
    (*(*v18 + 8))(v18);
    a1[32] = 0;
  }

  result = a1[34];
  if (result)
  {
    if (*(a1 + 280) == 1)
    {
      result = (*(*result + 8))(result);
      a1[34] = 0;
    }
  }

  return result;
}

void sub_23CD94(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
  a1[15] = (*(*a2[30] + 16))(a2[30]);
  a1[16] = (*(*a2[32] + 16))(a2[32]);
  a1[17] = (*(*a2[34] + 16))(a2[34]);
}

uint64_t sub_23D0D0(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 144; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_23D1C0(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_23D4EC(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) != 0 || !a3[8].i64[0] || !a3[8].i64[1] || !a3[9].i64[0])
  {
    return result;
  }

  if (*(a2 + 32) != 19)
  {
    v17 = 0;
    while (1)
    {
      v18 = a3->i64[v17];
      if (!v18 || (*(*v18 + 32))(v18) == 17)
      {
        goto LABEL_28;
      }

      v19 = a3->i64[v17];
      if (v19)
      {
        if ((*(*v19 + 32))(v19) == 18)
        {
          goto LABEL_28;
        }

        v20 = a3->i64[v17];
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      a3->i64[v17] = 0;
LABEL_28:
      if (++v17 == 19)
      {
        return 0;
      }
    }
  }

  v7 = a3->i64[0];
  v8 = (v6 + 32);
  v9 = &a3->i64[1];
  v10 = -1;
  do
  {
    v11 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
    *(v8 - 1) = *(v9 - 1);
    *v8 = v11;
    if (v10 == 17)
    {
      return v6;
    }

    v12 = *v9++;
    v7 = v12;
    ++v10;
    v8 += 16;
  }

  while (v12);
  result = v6;
  if (v10 <= 0x11)
  {
    for (i = 0; i != 19; ++i)
    {
      v14 = a3->i64[i];
      if (!v14 || (*(*v14 + 32))(v14) == 17)
      {
        goto LABEL_19;
      }

      v15 = a3->i64[i];
      if (v15)
      {
        if ((*(*v15 + 32))(v15) == 18)
        {
          goto LABEL_19;
        }

        v16 = a3->i64[i];
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      a3->i64[i] = 0;
LABEL_19:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_23D4EC(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) == 0 && a3[8].i64[0] && a3[8].i64[1] && a3[9].i64[0])
  {
    operator new();
  }

  for (i = 0; i != 19; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_7;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_7:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_23D9F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[14];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[15];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[16];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[17];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[18];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23DDF8(void *a1)
{
  *a1 = off_265BE78;
  sub_23DFC8(a1 + 3);
  return a1;
}

void sub_23DE3C(void *a1)
{
  *a1 = off_265BE78;
  sub_23DFC8(a1 + 3);

  operator delete();
}

double sub_23DEA0(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_23E45C(&v3, (a1 + 24));
  (*(**(a1 + 8) + 168))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17, &v18, &v19, &v20, &v21);
  return result;
}

uint64_t sub_23DFC8(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  v10 = a1[16];
  if (v10 && *(a1 + 136) == 1)
  {
    (*(*v10 + 8))(v10);
    a1[16] = 0;
  }

  v11 = a1[18];
  if (v11 && *(a1 + 152) == 1)
  {
    (*(*v11 + 8))(v11);
    a1[18] = 0;
  }

  v12 = a1[20];
  if (v12 && *(a1 + 168) == 1)
  {
    (*(*v12 + 8))(v12);
    a1[20] = 0;
  }

  v13 = a1[22];
  if (v13 && *(a1 + 184) == 1)
  {
    (*(*v13 + 8))(v13);
    a1[22] = 0;
  }

  v14 = a1[24];
  if (v14 && *(a1 + 200) == 1)
  {
    (*(*v14 + 8))(v14);
    a1[24] = 0;
  }

  v15 = a1[26];
  if (v15 && *(a1 + 216) == 1)
  {
    (*(*v15 + 8))(v15);
    a1[26] = 0;
  }

  v16 = a1[28];
  if (v16 && *(a1 + 232) == 1)
  {
    (*(*v16 + 8))(v16);
    a1[28] = 0;
  }

  v17 = a1[30];
  if (v17 && *(a1 + 248) == 1)
  {
    (*(*v17 + 8))(v17);
    a1[30] = 0;
  }

  v18 = a1[32];
  if (v18 && *(a1 + 264) == 1)
  {
    (*(*v18 + 8))(v18);
    a1[32] = 0;
  }

  v19 = a1[34];
  if (v19 && *(a1 + 280) == 1)
  {
    (*(*v19 + 8))(v19);
    a1[34] = 0;
  }

  result = a1[36];
  if (result)
  {
    if (*(a1 + 296) == 1)
    {
      result = (*(*result + 8))(result);
      a1[36] = 0;
    }
  }

  return result;
}

void sub_23E45C(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
  a1[15] = (*(*a2[30] + 16))(a2[30]);
  a1[16] = (*(*a2[32] + 16))(a2[32]);
  a1[17] = (*(*a2[34] + 16))(a2[34]);
  a1[18] = (*(*a2[36] + 16))(a2[36]);
}

uint64_t sub_23E7C4(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 152; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_23E8B4(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_23EC08(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[8]), vceqzq_s64(a3[9])), xmmword_22671F0)) & 0xF) != 0)
  {
    return result;
  }

  if (*(a2 + 32) != 20)
  {
    v17 = 0;
    while (1)
    {
      v18 = a3->i64[v17];
      if (!v18 || (*(*v18 + 32))(v18) == 17)
      {
        goto LABEL_26;
      }

      v19 = a3->i64[v17];
      if (v19)
      {
        if ((*(*v19 + 32))(v19) == 18)
        {
          goto LABEL_26;
        }

        v20 = a3->i64[v17];
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      a3->i64[v17] = 0;
LABEL_26:
      if (++v17 == 20)
      {
        return 0;
      }
    }
  }

  v7 = a3->i64[0];
  v8 = (v6 + 32);
  v9 = &a3->i64[1];
  v10 = -1;
  do
  {
    v11 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
    *(v8 - 1) = *(v9 - 1);
    *v8 = v11;
    if (v10 == 18)
    {
      return v6;
    }

    v12 = *v9++;
    v7 = v12;
    ++v10;
    v8 += 16;
  }

  while (v12);
  result = v6;
  if (v10 <= 0x12)
  {
    for (i = 0; i != 20; ++i)
    {
      v14 = a3->i64[i];
      if (!v14 || (*(*v14 + 32))(v14) == 17)
      {
        goto LABEL_17;
      }

      v15 = a3->i64[i];
      if (v15)
      {
        if ((*(*v15 + 32))(v15) == 18)
        {
          goto LABEL_17;
        }

        v16 = a3->i64[i];
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      a3->i64[i] = 0;
LABEL_17:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_23EC08(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(a3[4]), vceqzq_s64(a3[5])), vuzp1q_s32(vceqzq_s64(a3[6]), vceqzq_s64(a3[7]))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(a3[8]), vceqzq_s64(a3[9])), xmmword_22671F0)) & 0xF) == 0)
  {
    operator new();
  }

  for (i = 0; i != 20; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_5;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_5:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_23F134(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[8];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[9];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[10];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[11];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[12];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[13];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[14];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[15];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[16];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[17];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[18];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[19];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F570(void *a1)
{
  v2 = 0;
  *a1 = off_265BEC8;
  do
  {
    v3 = &a1[v2];
    v4 = a1[v2 + 3];
    if (v4 && *(v3 + 32) == 1)
    {
      (*(*v4 + 8))(v4);
      v3[3] = 0;
    }

    v2 += 2;
  }

  while (v2 != 40);
  return a1;
}

void sub_23F610(void *a1)
{
  v2 = 0;
  *a1 = off_265BEC8;
  while (1)
  {
    v3 = &a1[v2];
    v4 = a1[v2 + 3];
    if (v4 && *(v3 + 32) == 1)
    {
      (*(*v4 + 8))(v4);
      v3[3] = 0;
    }

    v2 += 2;
    if (v2 == 40)
    {

      operator delete();
    }
  }
}

double sub_23F6D0(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  sub_23F800(&v3, (a1 + 24));
  (*(**(a1 + 8) + 176))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11, &v12, &v13, &v14, &v15, &v16, &v17, &v18, &v19, &v20, &v21, &v22);
  return result;
}

void sub_23F800(double *a1, void **a2)
{
  *a1 = (*(**a2 + 16))();
  a1[1] = (*(*a2[2] + 16))(a2[2]);
  a1[2] = (*(*a2[4] + 16))(a2[4]);
  a1[3] = (*(*a2[6] + 16))(a2[6]);
  a1[4] = (*(*a2[8] + 16))(a2[8]);
  a1[5] = (*(*a2[10] + 16))(a2[10]);
  a1[6] = (*(*a2[12] + 16))(a2[12]);
  a1[7] = (*(*a2[14] + 16))(a2[14]);
  a1[8] = (*(*a2[16] + 16))(a2[16]);
  a1[9] = (*(*a2[18] + 16))(a2[18]);
  a1[10] = (*(*a2[20] + 16))(a2[20]);
  a1[11] = (*(*a2[22] + 16))(a2[22]);
  a1[12] = (*(*a2[24] + 16))(a2[24]);
  a1[13] = (*(*a2[26] + 16))(a2[26]);
  a1[14] = (*(*a2[28] + 16))(a2[28]);
  a1[15] = (*(*a2[30] + 16))(a2[30]);
  a1[16] = (*(*a2[32] + 16))(a2[32]);
  a1[17] = (*(*a2[34] + 16))(a2[34]);
  a1[18] = (*(*a2[36] + 16))(a2[36]);
  a1[19] = (*(*a2[38] + 16))(a2[38]);
}

uint64_t sub_23FB94(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 160; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_23FC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8) - *a3;
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5 >> 3;
  v7 = v6 <= 1 ? 1 : v6;
  if (*v4)
  {
    v8 = 1;
    do
    {
      v9 = v8;
      if (v7 == v8)
      {
        break;
      }
    }

    while (v4[v8++]);
    if (v9 >= v6)
    {
LABEL_19:
      operator new();
    }
  }

  v11 = 0;
  do
  {
    v12 = v4[v11];
    if (v12 && (*(*v12 + 32))(v12) != 17)
    {
      v13 = v4[v11];
      if (!v13)
      {
        goto LABEL_11;
      }

      if ((*(*v13 + 32))(v13) != 18)
      {
        v14 = v4[v11];
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

LABEL_11:
        v4[v11] = 0;
      }
    }

    ++v11;
    v4 = *a3;
  }

  while (v11 < (*(a3 + 8) - *a3) >> 3);
  *(a3 + 8) = v4;
  return 0;
}

void *sub_23FF78(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[2] = 0;
  *a1 = off_265BF00;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (((v4 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v6 = *a3;
  v5 = a3[1];
  v9 = 0x7FF8000000000000;
  v7 = v5 - v6;
  if (v7)
  {
    sub_A3CD8((a1 + 5), v7 >> 3, &v9);
  }

  return a1;
}

void sub_24005C(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
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

  *(v1 + 24) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

void sub_2400AC(void *a1)
{
  sub_2401B4(a1);

  operator delete();
}

double sub_2400E4(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return NAN;
  }

  v3 = a1[2];
  if (a1[3] != v3)
  {
    v4 = 0;
    do
    {
      *(a1[5] + 8 * v4) = (*(**(v3 + 8 * v4) + 16))(*(v3 + 8 * v4));
      ++v4;
      v3 = a1[2];
    }

    while (v4 < (a1[3] - v3) >> 3);
    v2 = a1[1];
  }

  v5 = *(*v2 + 16);

  v5();
  return result;
}

void *sub_2401B4(void *a1)
{
  *a1 = off_265BF00;
  v2 = a1[2];
  if (a1[3] != v2)
  {
    v3 = 0;
    do
    {
      v4 = v2[v3];
      if (v4)
      {
        v5 = (*(*v4 + 32))(v4);
        v2 = a1[2];
        if (v5 != 17)
        {
          v6 = v2[v3];
          v7 = a1[2];
          if (v6)
          {
            (*(*v6 + 8))(v6);
            v7 = a1[2];
          }

          v2[v3] = 0;
          v2 = v7;
        }
      }

      ++v3;
    }

    while (v3 < (a1[3] - v2) >> 3);
  }

  v8 = a1[5];
  if (v8)
  {
    a1[6] = v8;
    operator delete(v8);
    v2 = a1[2];
  }

  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2402C4(uint64_t a1, char *a2, void *a3)
{
  v3 = *(a1 + 48);
  if (v3 == *(a1 + 56))
  {
    return 1;
  }

  LOBYTE(v7) = 0;
  v8 = 0;
  v4 = sub_243140((v3 + 8), a2, &v8, &v7);
  if ((v4 & 1) == 0)
  {
    operator new();
  }

  *a3 = 0;
  return v4;
}

void sub_240F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a65 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if (!a11)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a25);
  if (!a11)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_19:
  operator delete(a11);
  _Unwind_Resume(a1);
}

uint64_t sub_241134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a3;
  v6 = *(a3 + 8) - *a3;
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6 >> 3;
  v8 = v7 <= 1 ? 1 : v7;
  if (*v5)
  {
    v9 = 1;
    do
    {
      v10 = v9;
      if (v8 == v9)
      {
        break;
      }
    }

    while (v5[v9++]);
    if (v10 >= v7)
    {
LABEL_19:
      if (*a4 != -1)
      {
        operator new();
      }

      operator new();
    }
  }

  v12 = 0;
  do
  {
    v13 = v5[v12];
    if (v13 && (*(*v13 + 32))(v13) != 17)
    {
      v14 = v5[v12];
      if (!v14)
      {
        goto LABEL_11;
      }

      if ((*(*v14 + 32))(v14) != 18)
      {
        v15 = v5[v12];
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

LABEL_11:
        v5[v12] = 0;
      }
    }

    ++v12;
    v5 = *a3;
  }

  while (v12 < (*(a3 + 8) - *a3) >> 3);
  *(a3 + 8) = v5;
  return 0;
}

void sub_2416D4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    *(v0 + 48) = v1;
    operator delete(v1);
  }

  sub_21E11F8((v0 + 16), v0);
}

void sub_241714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return;
  }

  sub_242998(a2, 0x7Cu, &v144);
  v143[0] = 0;
  v143[1] = 0;
  v142 = v143;
  v4 = v144;
  if (v145 == v144)
  {
    goto LABEL_202;
  }

  v5 = 0;
  while (1)
  {
    v140 = 0uLL;
    v141 = 0;
    v6 = &v4[3 * v5];
    if (*(v6 + 23) < 0)
    {
      sub_325C(&__s, *v6, v6[1]);
    }

    else
    {
      v7 = *v6;
      v138 = v6[2];
      __s = v7;
    }

    v8 = sub_242C00(a1, &__s, &v139);
    if (SHIBYTE(v138) < 0)
    {
      v9 = v8;
      operator delete(__s);
      v8 = v9;
    }

    if ((v8 & 1) == 0)
    {
      break;
    }

    v10 = v143[0];
    if (!v143[0])
    {
      goto LABEL_54;
    }

    v11 = &v144[3 * v5];
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = &v144[3 * v5];
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v11[1];
    }

    v15 = v143;
    do
    {
      while (1)
      {
        v16 = v10[55];
        v17 = v16 >= 0 ? v10 + 32 : *(v10 + 4);
        v18 = v16 >= 0 ? v10[55] : *(v10 + 5);
        v19 = v14 >= v18 ? v18 : v14;
        v20 = memcmp(v17, v13, v19);
        if (v20)
        {
          break;
        }

        if (v18 >= v14)
        {
          goto LABEL_34;
        }

LABEL_20:
        v10 = *(v10 + 1);
        if (!v10)
        {
          goto LABEL_35;
        }
      }

      if (v20 < 0)
      {
        goto LABEL_20;
      }

LABEL_34:
      v15 = v10;
      v10 = *v10;
    }

    while (v10);
LABEL_35:
    if (v15 == v143)
    {
      goto LABEL_54;
    }

    v21 = *(v15 + 55);
    if (v21 >= 0)
    {
      v22 = (v15 + 4);
    }

    else
    {
      v22 = v15[4];
    }

    if (v21 >= 0)
    {
      v23 = *(v15 + 55);
    }

    else
    {
      v23 = v15[5];
    }

    if (v23 >= v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = v23;
    }

    v25 = memcmp(v13, v22, v24);
    if (!v25)
    {
      if (v14 >= v23)
      {
        goto LABEL_47;
      }

LABEL_54:
      v28 = *(a1 + 56);
      if (v28 >= *(a1 + 64))
      {
        *(a1 + 56) = sub_242EB0((a1 + 48), &v139);
        v31 = 1;
        if (SHIBYTE(v141) < 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *v28 = v139;
        v29 = (v28 + 8);
        if (SHIBYTE(v141) < 0)
        {
          sub_325C(v29, v140, *(&v140 + 1));
        }

        else
        {
          v30 = v140;
          *(v28 + 24) = v141;
          *v29 = v30;
        }

        *(a1 + 56) = v28 + 32;
        *(a1 + 56) = v28 + 32;
        v31 = 1;
        if (SHIBYTE(v141) < 0)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_59;
    }

    if (v25 < 0)
    {
      goto LABEL_54;
    }

LABEL_47:
    *a1 = 0;
    if (*(a1 + 39) >= 0)
    {
      v26 = *(a1 + 39);
    }

    else
    {
      v26 = *(a1 + 24);
    }

    if (v26 + 19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    v27 = *(a1 + 8);
    if (v26 + 19 >= 0x17)
    {
      operator new();
    }

    v117.__r_.__value_.__r.__words[2] = 0;
    *(&v117.__r_.__value_.__s + 23) = v26 + 19;
    *(&v117.__r_.__value_.__r.__words[1] + 7) = 656436847;
    *&v117.__r_.__value_.__l.__data_ = *"ERR118 - Function '";
    if (v26)
    {
      if (*(a1 + 39) >= 0)
      {
        v32 = (a1 + 16);
      }

      else
      {
        v32 = *(a1 + 16);
      }

      memmove(&v117.__r_.__value_.__r.__words[2] + 3, v32, v26);
    }

    *(&v117.__r_.__value_.__r.__words[2] + v26 + 3) = 0;
    v33 = std::string::append(&v117, "' has a parameter sequence conflict between ", 0x2CuLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v118.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v118.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v118, "pseq_idx[", 9uLL);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v119.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v119.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    sub_C00FC(*(v15 + 14), v115);
    if ((v116 & 0x80u) == 0)
    {
      v37 = v115;
    }

    else
    {
      v37 = v115[0];
    }

    if ((v116 & 0x80u) == 0)
    {
      v38 = v116;
    }

    else
    {
      v38 = v115[1];
    }

    v39 = std::string::append(&v119, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v120, "] and", 5uLL);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v121.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v121.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v121, "pseq_idx[", 9uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v122.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v122.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    sub_C00FC(v5, v113);
    if ((v114 & 0x80u) == 0)
    {
      v45 = v113;
    }

    else
    {
      v45 = v113[0];
    }

    if ((v114 & 0x80u) == 0)
    {
      v46 = v114;
    }

    else
    {
      v46 = v113[1];
    }

    v47 = std::string::append(&v122, v45, v46);
    v48 = *&v47->__r_.__value_.__l.__data_;
    v123.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v123.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = std::string::append(&v123, "] ", 2uLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v124[0].__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v124[0].__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = std::string::append(v124, "param seq: ", 0xBuLL);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v125 = v51->__r_.__value_.__r.__words[2];
    *&v124[1].__r_.__value_.__r.__words[1] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = &v144[3 * v5];
    v54 = *(v53 + 23);
    if (v54 >= 0)
    {
      v55 = &v144[3 * v5];
    }

    else
    {
      v55 = *v53;
    }

    if (v54 >= 0)
    {
      v56 = *(v53 + 23);
    }

    else
    {
      v56 = v53[1];
    }

    v57 = std::string::append(&v124[1].__r_.__value_.__r.__words[1], v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v127 = v57->__r_.__value_.__r.__words[2];
    v126 = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    memset(&v110, 0, sizeof(v110));
    v59 = 23610;
    do
    {
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        v64 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v110.__r_.__value_.__l.__size_ == v64)
        {
          if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_97:
          operator new();
        }

        size = v110.__r_.__value_.__l.__size_;
        v61 = v110.__r_.__value_.__r.__words[0];
        ++v110.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_97;
        }

        size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
        v61 = &v110;
      }

      v62 = v61 + size;
      *v62 = (v59 % 0xA) | 0x30;
      v62[1] = 0;
      v63 = v59 > 9;
      v59 /= 0xAu;
    }

    while (v63);
    v65 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v66 = &v110;
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v110.__r_.__value_.__l.__size_;
      v66 = v110.__r_.__value_.__r.__words[0];
    }

    if (v65)
    {
      v67 = (v66 + v65 - 1);
      if (v67 > v66)
      {
        v68 = &v66->__r_.__value_.__s.__data_[1];
        do
        {
          v69 = *(v68 - 1);
          *(v68 - 1) = v67->__r_.__value_.__s.__data_[0];
          v67->__r_.__value_.__s.__data_[0] = v69;
          v67 = (v67 - 1);
          v70 = v68++ >= v67;
        }

        while (!v70);
      }
    }

    v71 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
    v72 = *&v71->__r_.__value_.__l.__data_;
    v112 = v71->__r_.__value_.__r.__words[2];
    *v111 = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, (v27 + 13), &v126, v111, v128);
    v73 = v27[71];
    v74 = v27[70];
    v75 = 30 * ((v73 - v74) >> 3) - 1;
    if (v73 == v74)
    {
      v75 = 0;
    }

    if (v75 == v27[74] + v27[73])
    {
      sub_C35C4(v27 + 69);
      v74 = v27[70];
      v73 = v27[71];
    }

    if (v73 == v74)
    {
      v77 = 0;
    }

    else
    {
      v76 = v27[74] + v27[73];
      v77 = *(v74 + 8 * (v76 / 0x1E)) + 136 * (v76 % 0x1E);
    }

    sub_C398C(v77, v128);
    ++v27[74];
    if (v136 < 0)
    {
      operator delete(__p);
      if (v134 < 0)
      {
        goto LABEL_134;
      }

LABEL_115:
      if ((v132 & 0x80000000) == 0)
      {
        goto LABEL_116;
      }

LABEL_135:
      operator delete(v131);
      if (v130 < 0)
      {
        goto LABEL_136;
      }

LABEL_117:
      if ((SHIBYTE(v112) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

LABEL_137:
      operator delete(v111[0]);
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_138;
      }

LABEL_119:
      if ((SHIBYTE(v127) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

LABEL_139:
      operator delete(v126);
      if (SHIBYTE(v125) < 0)
      {
        goto LABEL_140;
      }

LABEL_121:
      if ((SHIBYTE(v124[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

LABEL_141:
      operator delete(v124[0].__r_.__value_.__l.__data_);
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

LABEL_123:
      if ((v114 & 0x80000000) == 0)
      {
        goto LABEL_124;
      }

LABEL_143:
      operator delete(v113[0]);
      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_144;
      }

LABEL_125:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_126;
      }

LABEL_145:
      operator delete(v121.__r_.__value_.__l.__data_);
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_146;
      }

LABEL_127:
      if ((v116 & 0x80000000) == 0)
      {
        goto LABEL_128;
      }

LABEL_147:
      operator delete(v115[0]);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_148;
      }

LABEL_129:
      if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_130;
      }

LABEL_149:
      operator delete(v118.__r_.__value_.__l.__data_);
      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_150;
      }

LABEL_131:
      v31 = 0;
      if (SHIBYTE(v141) < 0)
      {
LABEL_58:
        operator delete(v140);
      }
    }

    else
    {
      if ((v134 & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

LABEL_134:
      operator delete(v133);
      if (v132 < 0)
      {
        goto LABEL_135;
      }

LABEL_116:
      if ((v130 & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_136:
      operator delete(v129);
      if (SHIBYTE(v112) < 0)
      {
        goto LABEL_137;
      }

LABEL_118:
      if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

LABEL_138:
      operator delete(v110.__r_.__value_.__l.__data_);
      if (SHIBYTE(v127) < 0)
      {
        goto LABEL_139;
      }

LABEL_120:
      if ((SHIBYTE(v125) & 0x80000000) == 0)
      {
        goto LABEL_121;
      }

LABEL_140:
      operator delete(v124[1].__r_.__value_.__l.__size_);
      if (SHIBYTE(v124[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_141;
      }

LABEL_122:
      if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

LABEL_142:
      operator delete(v123.__r_.__value_.__l.__data_);
      if (v114 < 0)
      {
        goto LABEL_143;
      }

LABEL_124:
      if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_125;
      }

LABEL_144:
      operator delete(v122.__r_.__value_.__l.__data_);
      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_145;
      }

LABEL_126:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_127;
      }

LABEL_146:
      operator delete(v120.__r_.__value_.__l.__data_);
      if (v116 < 0)
      {
        goto LABEL_147;
      }

LABEL_128:
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

LABEL_148:
      operator delete(v119.__r_.__value_.__l.__data_);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_149;
      }

LABEL_130:
      if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

LABEL_150:
      operator delete(v117.__r_.__value_.__l.__data_);
      v31 = 0;
      if (SHIBYTE(v141) < 0)
      {
        goto LABEL_58;
      }
    }

LABEL_59:
    if (v31)
    {
      ++v5;
      v4 = v144;
      if (v5 < 0xAAAAAAAAAAAAAAABLL * (v145 - v144))
      {
        continue;
      }
    }

LABEL_202:
    sub_7E724(&v142, v143[0]);
    v106 = v144;
    if (v144)
    {
      goto LABEL_203;
    }

    return;
  }

  *a1 = 0;
  v78 = &v144[3 * v5];
  if (*(v78 + 23) >= 0)
  {
    v79 = *(v78 + 23);
  }

  else
  {
    v79 = v78[1];
  }

  if (v79 + 40 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v80 = *(a1 + 8);
  if (v79 + 40 > 0x16)
  {
    operator new();
  }

  qmemcpy(v124, "ERR117 - Invalid parameter sequence of '", 40);
  if (*(v78 + 23) >= 0)
  {
    v81 = v78;
  }

  else
  {
    v81 = *v78;
  }

  memmove(&v124[1].__r_.__value_.__r.__words[2], v81, v79);
  *(&v124[1].__r_.__value_.__r.__words[2] + v79) = 0;
  v82 = std::string::append(v124, "' for function: ", 0x10uLL);
  v83 = *&v82->__r_.__value_.__l.__data_;
  v125 = v82->__r_.__value_.__r.__words[2];
  *&v124[1].__r_.__value_.__r.__words[1] = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v84 = *(a1 + 39);
  if (v84 >= 0)
  {
    v85 = (a1 + 16);
  }

  else
  {
    v85 = *(a1 + 16);
  }

  if (v84 >= 0)
  {
    v86 = *(a1 + 39);
  }

  else
  {
    v86 = *(a1 + 24);
  }

  v87 = std::string::append(&v124[1].__r_.__value_.__r.__words[1], v85, v86);
  v88 = *&v87->__r_.__value_.__l.__data_;
  v127 = v87->__r_.__value_.__r.__words[2];
  v126 = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  v89 = 23592;
  memset(&v122, 0, sizeof(v122));
  do
  {
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      v93 = (v122.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v122.__r_.__value_.__l.__size_ == v93)
      {
        if ((v122.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_176:
        operator new();
      }

      v90 = v122.__r_.__value_.__l.__size_;
      v91 = v122.__r_.__value_.__r.__words[0];
      ++v122.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v122.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_176;
      }

      v90 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      *(&v122.__r_.__value_.__s + 23) = (*(&v122.__r_.__value_.__s + 23) + 1) & 0x7F;
      v91 = &v122;
    }

    v92 = v91 + v90;
    *v92 = (v89 % 0xA) | 0x30;
    v92[1] = 0;
    v63 = v89 > 9;
    v89 /= 0xAu;
  }

  while (v63);
  v94 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  v95 = &v122;
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v94 = v122.__r_.__value_.__l.__size_;
    v95 = v122.__r_.__value_.__r.__words[0];
  }

  if (v94)
  {
    v96 = (v95 + v94 - 1);
    if (v96 > v95)
    {
      v97 = &v95->__r_.__value_.__s.__data_[1];
      do
      {
        v98 = *(v97 - 1);
        *(v97 - 1) = v96->__r_.__value_.__s.__data_[0];
        v96->__r_.__value_.__s.__data_[0] = v98;
        v96 = (v96 - 1);
        v70 = v97++ >= v96;
      }

      while (!v70);
    }
  }

  v99 = std::string::insert(&v122, 0, "exprtk.hpp:", 0xBuLL);
  v100 = *&v99->__r_.__value_.__l.__data_;
  v123.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
  *&v123.__r_.__value_.__l.__data_ = v100;
  v99->__r_.__value_.__l.__size_ = 0;
  v99->__r_.__value_.__r.__words[2] = 0;
  v99->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, (v80 + 13), &v126, &v123.__r_.__value_.__l.__data_, v128);
  v101 = v80[71];
  v102 = v80[70];
  v103 = 30 * ((v101 - v102) >> 3) - 1;
  if (v101 == v102)
  {
    v103 = 0;
  }

  if (v103 == v80[74] + v80[73])
  {
    sub_C35C4(v80 + 69);
    v102 = v80[70];
    v101 = v80[71];
  }

  if (v101 == v102)
  {
    v105 = 0;
  }

  else
  {
    v104 = v80[74] + v80[73];
    v105 = *(v102 + 8 * (v104 / 0x1E)) + 136 * (v104 % 0x1E);
  }

  sub_C398C(v105, v128);
  ++v80[74];
  if (v136 < 0)
  {
    operator delete(__p);
    if (v134 < 0)
    {
      goto LABEL_212;
    }

LABEL_194:
    if ((v132 & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

LABEL_213:
    operator delete(v131);
    if (v130 < 0)
    {
      goto LABEL_214;
    }

LABEL_196:
    if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_197;
    }

LABEL_215:
    operator delete(v123.__r_.__value_.__l.__data_);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_216;
    }

LABEL_198:
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

LABEL_217:
    operator delete(v126);
    if (SHIBYTE(v125) < 0)
    {
      goto LABEL_218;
    }

LABEL_200:
    if ((SHIBYTE(v124[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

LABEL_219:
    operator delete(v124[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v141) & 0x80000000) == 0)
    {
      goto LABEL_202;
    }
  }

  else
  {
    if ((v134 & 0x80000000) == 0)
    {
      goto LABEL_194;
    }

LABEL_212:
    operator delete(v133);
    if (v132 < 0)
    {
      goto LABEL_213;
    }

LABEL_195:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

LABEL_214:
    operator delete(v129);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_215;
    }

LABEL_197:
    if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

LABEL_216:
    operator delete(v122.__r_.__value_.__l.__data_);
    if (SHIBYTE(v127) < 0)
    {
      goto LABEL_217;
    }

LABEL_199:
    if ((SHIBYTE(v125) & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

LABEL_218:
    operator delete(v124[1].__r_.__value_.__l.__size_);
    if (SHIBYTE(v124[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_219;
    }

LABEL_201:
    if ((SHIBYTE(v141) & 0x80000000) == 0)
    {
      goto LABEL_202;
    }
  }

  operator delete(v140);
  sub_7E724(&v142, v143[0]);
  v106 = v144;
  if (v144)
  {
LABEL_203:
    v107 = v145;
    v108 = v106;
    if (v145 != v106)
    {
      do
      {
        v109 = *(v107 - 1);
        v107 -= 3;
        if (v109 < 0)
        {
          operator delete(*v107);
        }
      }

      while (v107 != v106);
      v108 = v144;
    }

    v145 = v106;
    operator delete(v108);
  }
}

void sub_24261C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a50 < 0)
    {
LABEL_5:
      operator delete(a45);
      if ((a73 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (a50 < 0)
  {
    goto LABEL_5;
  }

  if ((a73 & 0x80000000) == 0)
  {
LABEL_6:
    if (a71 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a72);
  if (a71 < 0)
  {
LABEL_7:
    operator delete(a66);
    if ((a64 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    operator delete(a59);
LABEL_13:
    if (*(v73 - 145) < 0)
    {
      operator delete(*(v73 - 168));
    }

    sub_7E724(v73 - 144, *(v73 - 136));
    sub_1A104((v73 - 120));
    _Unwind_Resume(a1);
  }

LABEL_11:
  if ((a64 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  goto LABEL_12;
}

void sub_242998(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, void *a3@<X8>)
{
  v4 = *(a1 + 23);
  v5 = *(a1 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v4 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    v10 = a2;
    if (v4 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = v11;
    do
    {
      if (*v12 == v10)
      {
        v15 = v12 - v11;
        if ((v12 - v11) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v15 > 0x16)
        {
          operator new();
        }

        v18 = v12 - v11;
        if (v12 != v11)
        {
          memmove(&__dst, v11, v12 - v11);
        }

        *(&__dst + v15) = 0;
        sub_794D4(a3, &__dst);
        if (v18 < 0)
        {
          operator delete(__dst);
        }

        ++v12;
        v5 = *(a1 + 23);
        v6 = *a1;
        v7 = *(a1 + 8);
        v11 = v12;
      }

      else
      {
        ++v12;
      }

      if ((v5 & 0x80u) == 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = v6;
      }

      if ((v5 & 0x80u) == 0)
      {
        v14 = v5;
      }

      else
      {
        v14 = v7;
      }
    }

    while (v12 != &v13[v14]);
    if (v11 != v12)
    {
      v16 = v12 - v11;
      if ((v12 - v11) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v16 > 0x16)
      {
        operator new();
      }

      v18 = v12 - v11;
      memmove(&__dst, v11, v12 - v11);
      *(&__dst + v16) = 0;
      sub_794D4(a3, &__dst);
      if (v18 < 0)
      {
        operator delete(__dst);
      }
    }
  }
}

void sub_242B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(v15);
    _Unwind_Resume(a1);
  }

  sub_1A104(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_242C00(uint64_t a1, void *__s, uint64_t a3)
{
  v5 = *(a1 + 40);
  *a3 = v5;
  v6 = *(__s + 23);
  if (*(__s + 23) < 0)
  {
    if (__s[1] <= 2uLL)
    {
      goto LABEL_16;
    }

    if (*(*__s + 1) == 58)
    {
      goto LABEL_4;
    }

LABEL_13:
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v9 = 0;
    v10 = v6;
    v11 = __s;
    if (v6 < 2uLL)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v6 <= 2)
  {
    goto LABEL_14;
  }

  if (*(__s + 1) != 58)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v5 != 32)
  {
    return 0;
  }

  v7 = __s;
  if ((v6 & 0x80) != 0)
  {
    v7 = *__s;
  }

  v8 = *v7;
  if (v8 != 84 && v8 != 83)
  {
    return 0;
  }

  *a3 = v8;
  sub_148E0(__s, 0, 2uLL);
  v6 = *(__s + 23);
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  v11 = *__s;
  v10 = __s[1];
  v9 = 1;
  if (v10 < 2)
  {
    goto LABEL_24;
  }

LABEL_17:
  v12 = v11 + v10;
  v13 = v11;
  do
  {
    v14 = memchr(v13, 63, v10 - 1);
    if (!v14)
    {
      break;
    }

    if (*v14 == 10815)
    {
      if (v14 != v12 && v14 - v11 != -1)
      {
        return 0;
      }

      break;
    }

    v13 = v14 + 1;
    v10 = v12 - v13;
  }

  while (v12 - v13 >= 2);
LABEL_24:
  if (v9)
  {
    v16 = *__s;
    v15 = __s[1];
    if (v15 < 2)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v15 = v6;
    v16 = __s;
    if (v6 < 2uLL)
    {
      goto LABEL_35;
    }
  }

  v17 = v16 + v15;
  v18 = v16;
  do
  {
    v19 = memchr(v18, 42, v15 - 1);
    if (!v19)
    {
      break;
    }

    if (*v19 == 10794)
    {
      if (v19 != v17 && v19 - v16 != -1)
      {
        return 0;
      }

      break;
    }

    v18 = v19 + 1;
    v15 = v17 - v18;
  }

  while (v17 - v18 >= 2);
LABEL_35:
  if (v9)
  {
    v20 = *__s;
    v21 = __s[1];
    if (!v21)
    {
      goto LABEL_49;
    }

LABEL_39:
    v22 = 0;
    while (memchr("STV*?|", *(v20 + v22), 6uLL))
    {
      if (v21 == ++v22)
      {
        goto LABEL_49;
      }
    }

    if (v22 == -1)
    {
      goto LABEL_49;
    }

    if (v9)
    {
      if (__s[1] != 1)
      {
        return 0;
      }

      v23 = *__s;
    }

    else
    {
      v23 = __s;
      if (v6 != 1)
      {
        return 0;
      }
    }

    if (*v23 == 90)
    {
      goto LABEL_49;
    }

    return 0;
  }

  v21 = v6;
  v20 = __s;
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_49:
  v24 = (a3 + 8);
  if ((a3 + 8) != __s)
  {
    if (*(a3 + 31) < 0)
    {
      if (v9)
      {
        v26 = *__s;
      }

      else
      {
        v26 = __s;
      }

      if (v9)
      {
        v27 = __s[1];
      }

      else
      {
        v27 = v6;
      }

      sub_13B38(v24, v26, v27);
    }

    else if (v9)
    {
      sub_13A68(v24, *__s, __s[1]);
    }

    else
    {
      v28 = *__s;
      *(a3 + 24) = __s[2];
      *v24 = v28;
    }
  }

  return 1;
}

uint64_t sub_242EB0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v16 = 32 * v2;
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = 32 * v2 + 32;
    v9 = *a1;
    v10 = a1[1];
    v11 = v16 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_8[8 * v2] = *(a2 + 8);
    *&dword_18[8 * v2] = *(a2 + 24);
    v8 = v7 + 32;
    v9 = *a1;
    v10 = a1[1];
    v11 = v7 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_21;
    }
  }

  v12 = v9;
  v13 = v11;
  do
  {
    *v13 = *v12;
    v14 = *(v12 + 8);
    *(v13 + 24) = *(v12 + 24);
    *(v13 + 8) = v14;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 8) = 0;
    v12 += 32;
    v13 += 32;
  }

  while (v12 != v10);
  do
  {
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    v9 += 32;
  }

  while (v9 != v10);
  v9 = *a1;
LABEL_21:
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_243050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243064(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
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

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_2430CC(void **a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_243140(uint64_t *a1, char *a2, void *a3, _BYTE *a4)
{
  v4 = a2[23];
  v5 = *(a2 + 1);
  if (v4 >= 0)
  {
    v5 = a2[23];
  }

  v6 = *(a1 + 23);
  if (v5)
  {
    if ((v6 & 0x80) == 0)
    {
      v10 = a1;
      if (*a1 == 42)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v10 = *a1;
    if (**a1 != 42)
    {
LABEL_11:
      if (v4 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      if ((v6 & 0x80u) != 0)
      {
        v6 = a1[1];
      }

      v12 = &v10[v6];
      v13 = &v11[v5];
      while (1)
      {
        if (v12 == v10)
        {
          return 0;
        }

        v15 = *v10;
        if (v15 != 63)
        {
          if (v15 == 42)
          {
            v16 = __toupper(*(v10 - 1));
            if (v16 << 24 == 704643072)
            {
LABEL_38:
              if (a2[23] >= 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = *a2;
              }

              *a3 = v11 - v20;
              v21 = __toupper(*v10);
              result = 0;
              *a4 = v21;
              return result;
            }

            if (v11 != v13)
            {
              v17 = v16;
              do
              {
                if (v17 != __toupper(*v11))
                {
                  break;
                }

                ++v11;
              }

              while (v11 != v13);
            }

            goto LABEL_19;
          }

          v14 = __toupper(v15);
          if (v14 != __toupper(*v11))
          {
            goto LABEL_38;
          }
        }

        ++v11;
LABEL_19:
        ++v10;
        if (v13 == v11)
        {
          if (v12 != v10)
          {
            return *v10 == 42;
          }

          return 1;
        }
      }
    }

    return 0;
  }

  if ((v6 & 0x80) != 0)
  {
    if (a1[1] != 1)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v6 != 1)
  {
    return 0;
  }

  return *a1 == 90;
}

void sub_243300(void *a1)
{
  sub_243A70(a1);

  operator delete();
}

double sub_243338(void *a1)
{
  if (!a1[1] || !(*(*a1 + 48))(a1))
  {
    return NAN;
  }

  v2 = *(*a1[1] + 16);

  v2();
  return result;
}

uint64_t sub_2433DC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1 + 11;
  v7 = (v3 - v2) >> 3;
  *&v36 = 0;
  v8 = (v5 - v4) >> 3;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      a1[12] = v4 + v3 - v2;
    }
  }

  else
  {
    sub_A3CD8((a1 + 11), v7 - v8, &v36);
    v2 = a1[5];
    v3 = a1[6];
    v7 = (v3 - v2) >> 3;
  }

  v9 = a1[2];
  v10 = a1[3];
  v36 = 0uLL;
  LODWORD(v37) = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      a1[3] = v9 + 24 * v7;
    }
  }

  else
  {
    sub_243B7C((a1 + 2), v7 - v11, &v36);
    v2 = a1[5];
    v3 = a1[6];
    v7 = (v3 - v2) >> 3;
  }

  v12 = a1[14];
  v13 = a1[15];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 3);
  if (v7 <= v14)
  {
    if (v7 < v14)
    {
      a1[15] = v12 + 40 * v7;
    }
  }

  else
  {
    sub_243D20((a1 + 14), v7 - v14, &v36);
    v2 = a1[5];
    v3 = a1[6];
    v7 = (v3 - v2) >> 3;
  }

  v15 = a1[8];
  v16 = a1[9];
  *&v36 = 0;
  BYTE8(v36) = 0;
  v17 = (v16 - v15) >> 4;
  if (v7 <= v17)
  {
    if (v7 < v17)
    {
      a1[9] = v15 + 16 * v7;
    }
  }

  else
  {
    sub_243ECC((a1 + 8), v7 - v17, &v36);
    v2 = a1[5];
    v3 = a1[6];
  }

  v18 = 1;
  if (v3 != v2)
  {
    v19 = 0;
    while (1)
    {
      v22 = *(v2 + 8 * v19);
      if (!v22)
      {
        return 0;
      }

      v23 = a1[2] + 24 * v19;
      v24 = (*(*v22 + 32))(v22);
      if ((v24 - 124) > 0x11 || ((1 << (v24 - 124)) & 0x3C5E1) == 0)
      {
        v32 = *(a1[5] + 8 * v19);
        if (v32 && (*(*v32 + 32))(v32) == 17)
        {
          v33 = *(a1[5] + 8 * v19);
          if (!v33)
          {
            return 0;
          }

          if (!v34)
          {
            return 0;
          }

          *(v23 + 8) = 1;
          *v23 = (*(*v34 + 40))(v34);
          *(v23 + 16) = 1;
          v30 = a1[5];
          v31 = *(v30 + 8 * v19);
          if (v31)
          {
LABEL_29:
            v20 = (*(*v31 + 32))(v31) != 17 && (*(*v31 + 32))(v31) != 18;
            goto LABEL_20;
          }
        }

        else
        {
          *(v23 + 8) = 1;
          *v23 = *v6 + 8 * v19;
          *(v23 + 16) = 1;
          v30 = a1[5];
          v31 = *(v30 + 8 * v19);
          if (v31)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v26 = *(a1[5] + 8 * v19);
        if (!v26)
        {
          return 0;
        }

        if (!v27)
        {
          return 0;
        }

        v28 = v27;
        *(v23 + 8) = (*(*v27 + 16))();
        *v23 = *(*(*(*v28 + 40))(v28) + 16);
        *(v23 + 16) = 2;
        v29 = (*(*v28 + 32))(v28);
        (*(***(v29 + 16) + 24))(**(v29 + 16), v23);
        v30 = a1[5];
        v31 = *(v30 + 8 * v19);
        if (v31)
        {
          goto LABEL_29;
        }
      }

      v20 = 1;
LABEL_20:
      v21 = a1[8] + 16 * v19;
      *v21 = *(v30 + 8 * v19);
      *(v21 + 8) = v20;
      ++v19;
      v2 = a1[5];
      if (v19 >= (a1[6] - v2) >> 3)
      {
        return 1;
      }
    }
  }

  return v18;
}

uint64_t sub_243888(void *a1)
{
  v1 = a1[8];
  if (a1[9] == v1)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    *(a1[11] + 8 * v4++) = (*(**(v1 + v3) + 16))(*(v1 + v3));
    v1 = a1[8];
    v5 = a1[9];
    v3 += 16;
  }

  while (v4 < (v5 - v1) >> 4);
  if (v5 == v1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = a1[14];
    v10 = *(v9 + v7);
    if (v10)
    {
      break;
    }

LABEL_6:
    ++v8;
    v7 += 40;
    v6 += 24;
    if (v8 >= (v5 - v1) >> 4)
    {
      return 1;
    }
  }

  if (*(v10 + 32) == 1)
  {
    v11 = *(v10 + 40);
    if (*(v10 + 48) == 1)
    {
LABEL_10:
      v12 = *(v10 + 56);
      goto LABEL_17;
    }
  }

  else
  {
    if (*v10 != 1)
    {
      return 0;
    }

    v13 = (*(**(v10 + 8) + 16))(*(v10 + 8));
    if (v13 < 0.0)
    {
      return 0;
    }

    v11 = v13;
    if (*(v10 + 48) == 1)
    {
      goto LABEL_10;
    }
  }

  if (*(v10 + 16) != 1)
  {
    return 0;
  }

  v14 = (*(**(v10 + 24) + 16))(*(v10 + 24));
  if (v14 < 0.0)
  {
    return 0;
  }

  v12 = v14;
LABEL_17:
  v15 = *(v9 + v7 + 16);
  if (v12 == -1 && v15 != -1)
  {
    v12 = v15 - 1;
  }

  *(v10 + 64) = v11;
  *(v10 + 72) = v12;
  if (v11 <= v12)
  {
    v17 = (a1[2] + v6);
    *v17 = *(v9 + v7 + 8) + *(v9 + v7 + 24) * v11;
    v17[1] = v12 - v11 + 1;
    v1 = a1[8];
    v5 = a1[9];
    goto LABEL_6;
  }

  return 0;
}

void *sub_243A70(void *a1)
{
  *a1 = off_265BF50;
  v3 = a1[8];
  v2 = a1[9];
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + v4);
      if (v6 && *(v3 + v4 + 8) == 1)
      {
        (*(*v6 + 8))(v6);
        *(v3 + v4) = 0;
        v3 = a1[8];
        v2 = a1[9];
      }

      ++v5;
      v4 += 16;
    }

    while (v5 < (v2 - v3) >> 4);
  }

  v7 = a1[14];
  if (v7)
  {
    a1[15] = v7;
    operator delete(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[12] = v8;
    operator delete(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  v11 = a1[2];
  if (v11)
  {
    a1[3] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_243B7C(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        v12 = *a3;
        *(v4 + 16) = *(a3 + 2);
        *v4 = v12;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v13 = 24 * v6;
    v14 = 24 * a2;
    v15 = 24 * v6 + 24 * a2;
    v16 = 24 * v6;
    do
    {
      v17 = *a3;
      *(v16 + 16) = *(a3 + 2);
      *v16 = v17;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v18 = *a1;
    v19 = *(a1 + 8) - *a1;
    v20 = v13 - v19;
    memcpy((v13 - v19), *a1, v19);
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_243D20(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      v11 = 40 * a2;
      do
      {
        v12 = *a3;
        v13 = a3[1];
        *(v4 + 32) = *(a3 + 4);
        *v4 = v12;
        *(v4 + 16) = v13;
        v4 += 40;
        v11 -= 40;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v14 = 40 * v6;
    v15 = 40 * a2;
    v16 = 40 * v6 + 40 * a2;
    v17 = 40 * v6;
    do
    {
      v18 = *a3;
      v19 = a3[1];
      *(v17 + 32) = *(a3 + 4);
      *v17 = v18;
      *(v17 + 16) = v19;
      v17 += 40;
      v15 -= 40;
    }

    while (v15);
    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v14 - v21;
    memcpy((v14 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void sub_243ECC(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_244020(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  *(result + 16) = 0u;
  *result = off_265BF50;
  *(result + 8) = a2;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  v4 = a4[1];
  if (v4 != *a4)
  {
    if (((v4 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 128) = 0;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *result = &off_265BFB0;
  *(result + 136) = *a3;
  return result;
}

void sub_244104(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
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

  v1[3] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void sub_244144(void *a1)
{
  sub_243A70(a1);

  operator delete();
}

double sub_24417C(void *a1)
{
  if (!a1[1] || !sub_243888(a1))
  {
    return NAN;
  }

  v2 = *(*a1[1] + 32);

  v2();
  return result;
}

uint64_t sub_244204(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL sub_24429C(uint64_t a1, int a2)
{
  if (!*(a1 + 104))
  {
    return 0;
  }

  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      v7 = 1;
      v2 = 43;
      goto LABEL_15;
    }

    if (a2 == 3)
    {
      v7 = 1;
      v2 = 45;
      goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v7 = 1;
        v2 = 42;
        goto LABEL_15;
      case 5:
        v7 = 1;
        v2 = 47;
        goto LABEL_15;
      case 6:
        v7 = 1;
        v2 = 37;
LABEL_15:
        LOBYTE(__p[0]) = v2;
        v4 = (__p + 1);
        goto LABEL_16;
    }
  }

  v7 = 0;
  v4 = __p;
LABEL_16:
  *v4 = 0;
  result = a1 + 96 != sub_BC284(a1 + 88, __p);
  if (v7 < 0)
  {
    v5 = result;
    operator delete(__p[0]);
    return v5;
  }

  return result;
}

void sub_2443AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2443C8(uint64_t a1, int *a2)
{
  if (!*(a1 + 152))
  {
    return 0;
  }

  v2 = *a2;
  if (*a2 <= 17)
  {
    if (v2 > 15)
    {
      if (v2 == 16)
      {
        v9 = 2;
        v3 = 15677;
        goto LABEL_24;
      }

      if (v2 != 17)
      {
        goto LABEL_27;
      }

      v9 = 1;
      v5 = 61;
    }

    else
    {
      if (v2 != 14)
      {
        if (v2 == 15)
        {
          v9 = 2;
          v3 = 15676;
LABEL_24:
          LOWORD(__p[0]) = v3;
          v6 = (__p + 2);
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      v9 = 1;
      v5 = 60;
    }

LABEL_20:
    LOBYTE(__p[0]) = v5;
    v6 = (__p + 1);
    goto LABEL_25;
  }

  if (v2 > 19)
  {
    if (v2 == 20)
    {
      v9 = 2;
      v3 = 15678;
      goto LABEL_24;
    }

    if (v2 != 21)
    {
      goto LABEL_27;
    }

    v9 = 1;
    v5 = 62;
    goto LABEL_20;
  }

  if (v2 == 18)
  {
    v9 = 2;
    v3 = 15649;
    goto LABEL_24;
  }

  if (v2 == 19)
  {
    v9 = 2;
    v3 = 15932;
    goto LABEL_24;
  }

LABEL_27:
  v9 = 0;
  v6 = __p;
LABEL_25:
  *v6 = 0;
  result = a1 + 144 != sub_BC284(a1 + 136, __p);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_244540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24455C(uint64_t a1, int a2)
{
  if (!*(a1 + 128))
  {
    return 0;
  }

  if (a2 > 83)
  {
    switch(a2)
    {
      case 'T':
        v7 = 2;
        v2 = 15658;
        goto LABEL_18;
      case 'U':
        v7 = 2;
        v2 = 15663;
        goto LABEL_18;
      case 'V':
        v7 = 2;
        v2 = 15653;
        goto LABEL_18;
    }

LABEL_15:
    v7 = 0;
    v4 = __p;
    goto LABEL_19;
  }

  if (a2 == 81)
  {
    v7 = 2;
    v2 = 15674;
    goto LABEL_18;
  }

  if (a2 == 82)
  {
    v7 = 2;
    v2 = 15659;
    goto LABEL_18;
  }

  if (a2 != 83)
  {
    goto LABEL_15;
  }

  v7 = 2;
  v2 = 15661;
LABEL_18:
  LOWORD(__p[0]) = v2;
  v4 = (__p + 2);
LABEL_19:
  *v4 = 0;
  result = a1 + 120 != sub_BC284(a1 + 112, __p);
  if (v7 < 0)
  {
    v5 = result;
    operator delete(__p[0]);
    return v5;
  }

  return result;
}

void sub_244684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2446A0(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    v3 = *v2;
    if (*v2 != v2[1])
    {
      v4 = 0;
      while (1)
      {
        v6 = *(v3 + 8 * v4);
        if (!v6 || (*(*v6 + 32))(v6) == 17)
        {
          goto LABEL_5;
        }

        v7 = *(v3 + 8 * v4);
        if (v7)
        {
          if ((*(*v7 + 32))(v7) == 18)
          {
            goto LABEL_5;
          }

          v8 = *(v3 + 8 * v4);
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }
        }

        *(v3 + 8 * v4) = 0;
LABEL_5:
        ++v4;
        v5 = *(a1 + 16);
        v3 = *v5;
        if (v4 >= (v5[1] - *v5) >> 3)
        {
          v5[1] = v3;
          return a1;
        }
      }
    }
  }

  return a1;
}

void sub_2447AC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_2448F8(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 8);
    if (v1)
    {
      v3 = *(*a1 + 8);
      if (*(v1 + 16))
      {
        v4 = (v1 + 8);
        v5 = *v1;
        if (v1 + 8 != *v1)
        {
          do
          {
            v10 = v5[8];
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            v11 = v5[1];
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = v5[2];
                v13 = *v12 == v5;
                v5 = v12;
              }

              while (!v13);
            }

            v5 = v12;
          }

          while (v4 != v12);
        }

        sub_7E724(v1, *(v1 + 8));
        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *v1 = v4;
        v3 = *(*a1 + 8);
      }

      *(v1 + 24) = 0;
      v6 = v3;
      if (*(v3 + 48))
      {
        sub_7E724(v3 + 32, *(v3 + 40));
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 32) = v3 + 40;
        v6 = *(*a1 + 8);
      }

      *(v3 + 56) = 0;
      v7 = v6;
      if (v6[26])
      {
        v8 = v6[24];
        v9 = v6 + 25;
        if (v6 + 25 != v8)
        {
          do
          {
            if (v8[8])
            {
              operator delete();
            }

            v14 = v8[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v8[2];
                v13 = *v15 == v8;
                v8 = v15;
              }

              while (!v13);
            }

            v8 = v15;
          }

          while (v9 != v15);
        }

        sub_7E724((v6 + 24), v6[25]);
        v6[25] = 0;
        v6[26] = 0;
        v6[24] = v9;
        v7 = *(*a1 + 8);
      }

      v6[27] = 0;
      if (v7[30])
      {
        v16 = v7 + 28;
        v17 = v7[29];
        v18 = *(v7[28] + 8);
        v19 = *v17;
        *(v19 + 8) = v18;
        *v18 = v19;
        v7[30] = 0;
        if (v17 != v7 + 28)
        {
          do
          {
            v20 = v17[1];
            operator delete(v17);
            v17 = v20;
          }

          while (v20 != v16);
        }
      }
    }
  }
}

void *sub_244AEC(void *a1)
{
  a1[1] = 0;
  *a1 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  a1[6] = 0;
  a1[7] = 0;
  a1[9] = 0;
  a1[8] = a1 + 9;
  a1[13] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a1 + 13;
  a1[14] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[25] = 0;
  a1[24] = a1 + 25;
  a1[16] = a1 + 17;
  a1[18] = 0;
  a1[19] = 0;
  a1[21] = 0;
  a1[20] = a1 + 21;
  a1[22] = 0;
  a1[23] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = a1 + 28;
  a1[29] = a1 + 28;
  a1[30] = 0;
  a1[31] = a1 + 31;
  a1[32] = a1 + 31;
  a1[33] = 0;
  a1[35] = 0;
  a1[34] = a1 + 35;
  v2 = (a1 + 34);
  a1[36] = 0;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  sub_7E36C((a1 + 34), "break");
  sub_7E36C(v2, "case");
  sub_7E36C(v2, "continue");
  sub_7E36C(v2, "default");
  sub_7E36C(v2, "false");
  sub_7E36C(v2, &unk_2287848);
  sub_7E36C(v2, &unk_2287860);
  sub_7E36C(v2, "else");
  sub_7E36C(v2, "ilike");
  sub_7E36C(v2, &unk_22878A8);
  sub_7E36C(v2, "like");
  sub_7E36C(v2, &unk_22878D8);
  sub_7E36C(v2, "nand");
  sub_7E36C(v2, &unk_2287908);
  sub_7E36C(v2, &unk_2287920);
  sub_7E36C(v2, "null");
  sub_7E36C(v2, &unk_2287950);
  sub_7E36C(v2, "repeat");
  sub_7E36C(v2, "return");
  sub_7E36C(v2, &unk_2287998);
  sub_7E36C(v2, &unk_22879B0);
  sub_7E36C(v2, "swap");
  sub_7E36C(v2, "switch");
  sub_7E36C(v2, "true");
  sub_7E36C(v2, "until");
  sub_7E36C(v2, &unk_2287A28);
  sub_7E36C(v2, "while");
  sub_7E36C(v2, "xnor");
  sub_7E36C(v2, &unk_2287A70);
  sub_7E36C(v2, &unk_2287A88);
  sub_7E36C(v2, &unk_2287AA0);
  v3 = "abs";
  v4 = 87;
  do
  {
    sub_7E36C(v2, v3);
    v3 += 3;
    --v4;
  }

  while (v4);
  return a1;
}

void sub_244E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = *(v13 + 104);
  if (v19)
  {
    *(v10 + 304) = v19;
    operator delete(v19);
  }

  sub_7E724(v17, *(v10 + 280));
  sub_244F1C(v16);
  sub_244F9C(v15);
  sub_7E724(v13, *(v10 + 200));
  sub_7E724(v14, *(v10 + 168));
  sub_7E724(v12, *(v10 + 136));
  sub_7E724(v11, *(v10 + 104));
  sub_7E724(a9, *(v10 + 72));
  sub_7E724(a10, *(v10 + 40));
  sub_7E724(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

char *sub_244F1C(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

uint64_t *sub_244F9C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_244FFC(uint64_t a1, uint64_t *a2)
{
  *(a1 + 71) = 0;
  *(a1 + 48) = 0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 135) = 0;
  *(a1 + 112) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  *(a1 + 175) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = -1;
  sub_24ECC8((a1 + 184), a2);
  *(a1 + 368) = 0u;
  *(a1 + 360) = a1 + 368;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 469) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 652) = 1;
  *(a1 + 656) = 0;
  *(a1 + 648) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = off_265C010;
  *(a1 + 696) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 736) = 0u;
  *(a1 + 728) = a1 + 736;
  *(a1 + 760) = 0u;
  *(a1 + 752) = a1 + 760;
  *(a1 + 784) = 0u;
  *(a1 + 776) = a1 + 784;
  *(a1 + 808) = 0u;
  *(a1 + 800) = a1 + 808;
  *(a1 + 824) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 872) = a1;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 927) = 3;
  *(a1 + 904) = 16191;
  *(a1 + 906) = 63;
  *(a1 + 907) = 0;
  *(a1 + 928) = -1;
  *(a1 + 936) = -1;
  *(a1 + 944) = -1;
  *(a1 + 952) = 0u;
  *(a1 + 965) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1144) = 2;
  *(a1 + 1136) = off_265C050;
  *(a1 + 1160) = 0u;
  *(a1 + 1152) = a1 + 1160;
  *(a1 + 1184) = 2;
  *(a1 + 1176) = off_265C0E8;
  *(a1 + 1200) = 3;
  *(a1 + 1192) = off_265C0E8;
  *(a1 + 1208) = off_265C168;
  *(a1 + 1224) = 0u;
  *(a1 + 1216) = a1 + 1224;
  *(a1 + 1248) = 1;
  *(a1 + 1240) = off_265C1E0;
  *(a1 + 1256) = 1;
  *(a1 + 1343) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1344) = -1;
  *(a1 + 1360) = 1;
  *(a1 + 1352) = off_265C240;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  sub_2513F4((a1 + 1400));
}

void sub_245374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, char **a12, void **a13, void **a14, char **a15, char **a16, uint64_t a17, uint64_t a18)
{
  sub_2A1CF8(v18 + 1400);
  *(v18 + 1352) = v25;
  v28 = *(v18 + 1376);
  if (v28)
  {
    *(v18 + 1384) = v28;
    operator delete(v28);
  }

  sub_2A1DB0(v27);
  *(v18 + 1208) = v26;
  sub_25332C(v18 + 1216, *(v18 + 1224));
  *(v18 + 1136) = a11;
  sub_7E724(v18 + 1152, *(v18 + 1160));
  sub_2A1E20(v18 + 1008);
  sub_2A1E84(v18 + 872);
  if (*(v18 + 871) < 0)
  {
    operator delete(*(v18 + 848));
  }

  sub_7E724(v24, *a12);
  sub_7E724(v23, *v21);
  sub_252664(v22, *a13);
  sub_252664(a17, *v20);
  sub_252664(a18, *a14);
  sub_7E724(v18 + 704, *a15);
  sub_2A1F08(v18 + 600);
  sub_2A1FD4((v18 + 552));
  sub_2A204C((v18 + 464));
  sub_B8A7C(v19);
  sub_7E724(v18 + 360, *a16);
  sub_B3464((v18 + 184));
  sub_24EBF8(v18);
  _Unwind_Resume(a1);
}

void sub_2454B0(uint64_t a1)
{
  if (*(a1 + 191) == 1)
  {
    *(a1 + 472) = 1;
    v2 = *(a1 + 192);
    if (v2 != 1)
    {
LABEL_3:
      v3 = *(a1 + 193);
      if (v3 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v2 = *(a1 + 192);
    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 473) = v2;
  v3 = *(a1 + 193);
  if (v3 != 1)
  {
LABEL_4:
    if (*(a1 + 184) != 1)
    {
      goto LABEL_5;
    }

LABEL_18:
    v8 = (a1 + 1224);
    sub_25332C(a1 + 1216, *(a1 + 1224));
    *(a1 + 1216) = v8;
    *v8 = 0u;
    v18 = 4;
    strcpy(v17, "true");
    v16 = 1;
    LOWORD(__p[0]) = 49;
    sub_25322C(a1 + 1208, v17, __p, 7);
    if (v16 < 0)
    {
      operator delete(__p[0]);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v17[0]);
LABEL_20:
    v18 = 5;
    strcpy(v17, "false");
    v16 = 1;
    LOWORD(__p[0]) = 48;
    sub_25322C(a1 + 1208, v17, __p, 7);
    if (v16 < 0)
    {
      operator delete(__p[0]);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v17[0]);
LABEL_22:
    *(a1 + 1040) = *(a1 + 1032);
    v17[0] = (a1 + 1208);
    sub_C7D68(a1 + 1032, v17);
    if (*(a1 + 189) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  *(a1 + 474) = v3;
  if (*(a1 + 184) == 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (*(a1 + 189) == 1)
  {
LABEL_6:
    sub_BFAC0(a1 + 1152, "break");
    sub_BFAC0(a1 + 1152, "case");
    sub_BFAC0(a1 + 1152, "continue");
    sub_BFAC0(a1 + 1152, "default");
    sub_BFAC0(a1 + 1152, "false");
    sub_BFAC0(a1 + 1152, &unk_2287848);
    sub_BFAC0(a1 + 1152, &unk_2287860);
    sub_BFAC0(a1 + 1152, "else");
    sub_BFAC0(a1 + 1152, "ilike");
    sub_BFAC0(a1 + 1152, &unk_22878A8);
    sub_BFAC0(a1 + 1152, "like");
    sub_BFAC0(a1 + 1152, &unk_22878D8);
    sub_BFAC0(a1 + 1152, "nand");
    sub_BFAC0(a1 + 1152, &unk_2287908);
    sub_BFAC0(a1 + 1152, &unk_2287920);
    sub_BFAC0(a1 + 1152, "null");
    sub_BFAC0(a1 + 1152, &unk_2287950);
    sub_BFAC0(a1 + 1152, "repeat");
    sub_BFAC0(a1 + 1152, "return");
    sub_BFAC0(a1 + 1152, &unk_2287998);
    sub_BFAC0(a1 + 1152, &unk_22879B0);
    sub_BFAC0(a1 + 1152, "swap");
    sub_BFAC0(a1 + 1152, "switch");
    sub_BFAC0(a1 + 1152, "true");
    sub_BFAC0(a1 + 1152, "until");
    sub_BFAC0(a1 + 1152, &unk_2287A28);
    sub_BFAC0(a1 + 1152, "while");
    sub_BFAC0(a1 + 1152, "xnor");
    sub_BFAC0(a1 + 1152, &unk_2287A70);
    sub_BFAC0(a1 + 1152, &unk_2287A88);
    sub_BFAC0(a1 + 1152, &unk_2287AA0);
    *(a1 + 1088) = *(a1 + 1080);
    v17[0] = (a1 + 1136);
    sub_C7D68(a1 + 1080, v17);
  }

LABEL_7:
  if (*(a1 + 185) == 1)
  {
    *(a1 + 1064) = *(a1 + 1056);
    v17[0] = (a1 + 1176);
    sub_C7D68(a1 + 1056, v17);
    v4 = *(a1 + 1064);
    v5 = *(a1 + 1056);
    v17[0] = (a1 + 1192);
    if (v5 == v4)
    {
      goto LABEL_11;
    }

    while (*v5 != a1 + 1192)
    {
      if (++v5 == v4)
      {
        goto LABEL_11;
      }
    }

    if (v5 == v4)
    {
LABEL_11:
      sub_C7D68(a1 + 1056, v17);
    }
  }

  if (*(a1 + 186))
  {
    v6 = (a1 + 1008);
    v7 = (a1 + 1016);
    *(a1 + 1016) = *(a1 + 1008);
    v17[0] = (a1 + 1352);
    sub_C7D68(a1 + 1008, v17);
    if ((*(a1 + 187) & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_27:
    v17[0] = (a1 + 1240);
    v10 = *(a1 + 1016);
    v11 = *(a1 + 1008);
    if (v11 == v10)
    {
      goto LABEL_30;
    }

    while (*v11 != a1 + 1240)
    {
      if (++v11 == v10)
      {
        goto LABEL_30;
      }
    }

    if (v11 == v10)
    {
LABEL_30:
      sub_C7D68(v6, v17);
    }

    goto LABEL_31;
  }

  v9 = *(a1 + 187);
  if ((v9 & 1) == 0 && *(a1 + 188) != 1)
  {
    return;
  }

  v6 = (a1 + 1008);
  v7 = (a1 + 1016);
  *(a1 + 1016) = *(a1 + 1008);
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (*(a1 + 188) == 1)
  {
    v17[0] = (a1 + 1400);
    v12 = *(a1 + 1016);
    v13 = *(a1 + 1008);
    if (v13 == v12)
    {
      goto LABEL_46;
    }

    v14 = *(a1 + 1008);
    while (*v14 != a1 + 1400)
    {
      if (++v14 == v12)
      {
        goto LABEL_46;
      }
    }

    if (v14 == v12)
    {
LABEL_46:
      sub_C7D68(v6, v17);
      v12 = *v7;
      v13 = *v6;
    }

    v17[0] = (a1 + 1464);
    if (v13 == v12)
    {
      goto LABEL_50;
    }

    while (*v13 != a1 + 1464)
    {
      if (++v13 == v12)
      {
        goto LABEL_50;
      }
    }

    if (v13 == v12)
    {
LABEL_50:
      sub_C7D68(v6, v17);
    }
  }
}