uint64_t sub_24D78F5D8(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

void *sub_24D78F684(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D78F70C(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24D78F70C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24D78FCA8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D78F880(a1, &v10);
}

void *sub_24D78F880(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24D78FCA8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24D78F988(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24D78FCA8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_24D78FA94(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24D78FCA8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24D78FB9C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24D78FCA8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_24D78FCA8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D78FCF0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double sub_24D78FD78(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t agxps_aps_descriptor_create@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 48) = -1;
  result = agxps_gpu_invalid_handle();
  *a1 = result;
  *(a1 + 24) = 4096;
  *(a1 + 88) = 50;
  return result;
}

uint64_t agxps_aps_parser_create(uint64_t *a1)
{
  if (!a1 || !agxps_gpu_is_valid(*a1))
  {
    return 0;
  }

  v2 = *a1;

  return sub_24D78FE88("agxps_aps_parser_create", 0, &qword_27F09BC88, v2, a1);
}

uint64_t sub_24D78FE88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (agxps_gpu_is_valid(a4))
  {
    gen = agxps_gpu_get_gen(a4);
    v12 = gen | (agxps_gpu_get_variant(a4) << 32);
    rev_with_aps_fallback = agxps_gpu_get_rev_with_aps_fallback(a4);
    v10 = sub_24D7909B4(a3, &v12);
    if (a3 + 8 != v10)
    {
      return (*(v10 + 48))(a5);
    }
  }

  return a2;
}

uint64_t agxps_aps_parser_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t (***agxps_aps_parser_parse(uint64_t (***result)(void), uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5))(void)
{
  if (result)
  {
    return (**result)(result);
  }

  *a5 = 1;
  return result;
}

uint64_t agxps_aps_gpu_find_supported_revision(unsigned int a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v4 = &qword_27F09BC90;
  v5 = qword_27F09BC90;
  if (qword_27F09BC90)
  {
    do
    {
      v6 = *(v5 + 8);
      v9 = v6 == a1;
      v7 = v6 > a1;
      if (v9)
      {
        v8 = *(v5 + 9);
        v9 = v8 == a2;
        v7 = v8 > a2;
        if (v9)
        {
          v7 = *(v5 + 10) > a3;
        }
      }

      v9 = !v7;
      v10 = !v7;
      if (!v9)
      {
        v4 = v5;
      }

      v5 = v5[v10];
    }

    while (v5);
  }

  if (v4 == qword_27F09BC88)
  {
    return 0;
  }

  v11 = *v4;
  if (*v4)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    do
    {
      v12 = v4[2];
      v9 = *v12 == v4;
      v4 = v12;
    }

    while (v9);
  }

  if (*(v12 + 32) != a1 || *(v12 + 36) != a2)
  {
    return 0;
  }

  *a4 = *(v12 + 40);
  return 1;
}

uint64_t agxps_aps_profile_data_get_usc_timestamps(uint64_t a1, void *__dst, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && __dst)
  {
    v6 = *(a1 + 225848);
    v7 = *(a1 + 225840);
    if (a4 + a3 <= ((v6 - v7) >> 3))
    {
      v8 = (v7 + 8 * a3);
      if (a4 == 1)
      {
        *__dst = *v8;
      }

      else
      {
        memcpy(__dst, v8, 8 * a4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_kick_start(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = a4 + a3;
    v7 = *(a1 + 8);
    if (a4 + a3 <= ((*(a1 + 16) - v7) >> 3))
    {
      if (8 * a3 != 8 * v6)
      {
        v8 = (v7 + 8 * v6);
        v9 = (8 * a3 + v7);
        do
        {
          v10 = *v9++;
          *a2++ = v10;
        }

        while (v9 != v8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_kick_software_id(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = a4 + a3;
    v7 = *(a1 + 56);
    if (a4 + a3 <= ((*(a1 + 64) - v7) >> 3))
    {
      if (8 * a3 != 8 * v6)
      {
        v8 = (v7 + 8 * v6);
        v9 = (8 * a3 + v7);
        do
        {
          v10 = *v9++;
          *a2++ = v10;
        }

        while (v9 != v8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_kicks_num(uint64_t result)
{
  if (result)
  {
    return (*(result + 16) - *(result + 8)) >> 3;
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_counter_num(uint64_t result)
{
  if (result)
  {
    return (*(result + 225728) - *(result + 225720)) >> 3;
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_counter_index(uint64_t result)
{
  if (result)
  {
    return (*(**result + 16))();
  }

  return result;
}

const char *agxps_aps_parse_error_type_to_string(int a1)
{
  if ((a1 - 1) > 3)
  {
    return "Token failed to decode";
  }

  else
  {
    return off_279653AF8[a1 - 1];
  }
}

uint64_t agxps_aps_profile_data_get_counter_values_by_index(uint64_t a1, void *a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(*a1 + 8) == a3)
    {
      return 0;
    }

    else
    {
      *a2 = *(a1 + 24 * a3 + 200520);
      return 1;
    }
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_counter_group_metadata_by_index(void *a1, void *a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(*a1 + 8) == a3)
    {
      return 0;
    }

    else
    {
      *a2 = a1[3 * (*(**a1 + 32))(*a1, a3) + 28065];
      return 1;
    }
  }

  return result;
}

uint64_t agxps_aps_profile_data_get_counter_values_num_by_index(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(*a1 + 8) == a3)
    {
      return 0;
    }

    else
    {
      *a2 = (*(a1 + 24 * a3 + 200528) - *(a1 + 24 * a3 + 200520)) >> 3;
      return 1;
    }
  }

  return result;
}

uint64_t sub_24D790344(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[11];
  if (v7 <= a2)
  {
    return 0;
  }

  v24[5] = v5;
  v24[6] = v6;
  v10 = a1[10];
  v11 = a1[7];
  v12 = *(*(v11 + (((v10 + a2) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + a2) & 0x3FF));
  if (a2 + 1 >= v7)
  {
    v13 = a1[5];
  }

  else
  {
    v13 = *(*(v11 + (((v10 + a2 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + a2 + 1) & 0x3FF));
  }

  if (v12 + a4 + a5 > v13)
  {
    return 0;
  }

  v15 = a1[1];
  if (a1[2] == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 8 * (a1[4] >> 12)) + (a1[4] & 0xFFFLL);
  }

  v22[0] = v15 + 8 * (a1[4] >> 12);
  v22[1] = v16;
  v17 = sub_24D7904F4(v22, v12 + a4);
  v19 = v18;
  v23[0] = v17;
  v23[1] = v18;
  v20 = sub_24D7904F4(v23, a5);
  v24[0] = a3;
  sub_24D790558(v17, v19, v20, v21, v24);
  return 1;
}

uint64_t sub_24D790464(uint64_t a1, unint64_t a2)
{
  result = sub_24D765B7C((a1 + 520), a2);
  if (result)
  {
    v5 = result - 1;
    sub_24D790344((a1 + 520), a2, &v7, result - 1, 1);
    v6 = (v7 < 0xC0u) | (4 * v5);
    if ((~v7 & 3) != 0)
    {
      ++v6;
    }

    if ((~v7 & 0xC) != 0)
    {
      ++v6;
    }

    if ((~v7 & 0x30) != 0)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t *sub_24D7904F4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

const void **sub_24D790558(const void **result, _BYTE *__src, const void **a3, _BYTE *a4, void **a5)
{
  if (result == a3)
  {
    v8 = *a5;
    v9 = a4 - __src;
    if (a4 != __src)
    {
      result = memmove(*a5, __src, v9);
    }

    v10 = &v8[v9];
  }

  else
  {
    v12 = result;
    v13 = *result;
    v14 = *result + 4096;
    v15 = *a5;
    v16 = v14 - __src;
    if (v14 != __src)
    {
      result = memmove(*a5, __src, v14 - __src);
    }

    v17 = &v15[v16];
    *a5 = v17;
    v18 = v12 + 1;
    if (v18 != a3)
    {
      v19 = &v15[v13 - __src];
      do
      {
        v20 = v19 + 4096;
        v21 = *v18++;
        result = memmove(v19 + 4096, v21, 0x1000uLL);
        *a5 = v19 + 0x2000;
        v19 += 4096;
      }

      while (v18 != a3);
      v17 = v20 + 4096;
    }

    v22 = a4 - *v18;
    if (v22)
    {
      result = memmove(v17, *v18, v22);
    }

    v10 = &v17[v22];
  }

  *a5 = v10;
  return result;
}

uint64_t sub_24D790658(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_24D7906F8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_24D7906F8(void *a1, uint64_t *a2, void *a3, uint64_t *a4, int *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (sub_24D790914(a5, a2 + 8) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_24D790914(v12 + 8, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 2);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_24D790914(a2 + 8, a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_24D790914(a5, v15 + 8) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_24D79088C(a1, a3, a5);
}

uint64_t *sub_24D79088C(uint64_t a1, void *a2, int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_24D790914(a3, v4 + 8) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_24D790914(v7 + 8, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_24D790914(int *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_24D790960(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24D790960(a1, *a2);
    sub_24D790960(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_24D7909B4(uint64_t a1, int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_24D790914((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_24D790914(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_24D790A34(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = *(v1 + 8);
    if ((v2 ^ (v2 - 1)) > v2 - 1 && (v2 - 2049) >= 0xFFFFF80F)
    {
      v3 = *(v1 + 12);
      if ((v3 ^ (v3 - 1)) <= v3 - 1 || (v3 - 8193) < 0xFFFFE03F)
      {
        return 0;
      }

      v5 = *(v1 + 16);
      if (v5.i32[0] >= 0x80u && (v6 = vcnt_s8(v5), v6.i16[0] = vaddlv_u8(v6), v6.i32[0] == 1))
      {
        if (v5.i32[0] > 0x8000u)
        {
          return 0;
        }
      }

      else if (v5.i32[0])
      {
        return 0;
      }

      v7 = *(v1 + 24);
      if (v7 == 1024 || v7 == 0x40000 || v7 == 4096)
      {
        operator new();
      }

      return 0;
    }
  }

  return result;
}

void *sub_24D790B1C(void *result, void *a2)
{
  if (!result[9])
  {
    return result;
  }

  v2 = result;
  v3 = result[10];
  if (v3 < 0x20)
  {
    return result;
  }

  v5 = v3 >> 4;
  v6 = *a2;
  v7 = a2[1];
  v8 = &v7[-*a2] >> 4;
  if (v3 >> 4 > v8)
  {
    v9 = v5 - v8;
    v10 = a2[2];
    if (v9 > (v10 - v7) >> 4)
    {
      v11 = v10 - v6;
      if (v11 >> 3 > v5)
      {
        v5 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v5;
      }

      if (!(v12 >> 60))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(v7, 16 * v9);
    v13 = &v7[16 * v9];
    goto LABEL_16;
  }

  if (v5 < v8)
  {
    v13 = &v6[16 * v5];
LABEL_16:
    a2[1] = v13;
  }

  v14 = *a2;
  v15 = v2[9];

  return memcpy(v14, v15, v3 & 0xFFFFFFFFFFFFFFF0);
}

uint64_t sub_24D790C80(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2860BB1A8;
  v4 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 134) = 0u;
  v8 = *(a2 + 4);
  if (v8 <= 0x7FF)
  {
    v9 = sub_24D809C04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D764(a2 + 4, v9);
    }

LABEL_7:
    v11 = *(a2 + 4);
    goto LABEL_10;
  }

  if (v8 < 4 * *(a2 + 2))
  {
    v10 = sub_24D809C04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D6AC(a2 + 4, a2 + 2, v10);
    }

    goto LABEL_7;
  }

  v11 = v8 - 2048;
  if (v11 <= 0x400)
  {
    v11 = 1024;
  }

LABEL_10:
  *(a1 + 160) = v11;
  *(a1 + 168) = xmmword_24DA8B940;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v12 = (a1 + 208);
  if (*(a2 + 7) && *(a2 + 8))
  {
    v46 = 207;
    __p[3] = &unk_2860BB1D0;
    v13 = sub_24D79714C(__p, 207);
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = *(a2 + 7);
      v17 = __p[0];
      do
      {
        v13 = sub_24D795824(v13, *(v16 + 8 * v15));
        if (v13 != 207)
        {
          *&v17[(v13 >> 3) & 0x1FFFFFF8] |= 1 << v13;
          v14 = *(a2 + 8);
        }

        ++v15;
      }

      while (v15 < v14);
    }

    *v12 = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    operator new();
  }

  *v12 = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v18 = 0;
  *(a1 + 232) = *(a2 + 9);
  do
  {
    v19 = a1 + v18;
    *(v19 + 240) = 0;
    *(v19 + 328) = 0;
    v18 += 96;
  }

  while (v18 != 12288);
  v20 = 448;
  v21 = (a1 + 12576);
  do
  {
    *(v21 - 48) = 0;
    *v21 = 0;
    v21 += 56;
    v20 -= 56;
  }

  while (v20);
  v22 = (a1 + 13008);
  v23 = 640;
  do
  {
    *(v22 - 32) = 0;
    *v22 = 0;
    v22 += 40;
    v23 -= 40;
  }

  while (v23);
  v24 = (a1 + 13720);
  v25 = 4080;
  do
  {
    *(v24 - 8) = 0;
    *v24 = 0;
    v24 += 16;
    v25 -= 16;
  }

  while (v25);
  v26 = 128;
  v27 = (a1 + 17820);
  do
  {
    *(v27 - 12) = 0;
    *v27 = 0;
    v27 += 16;
    v26 -= 16;
  }

  while (v26);
  v28 = (a1 + 17948);
  v29 = 128;
  do
  {
    *(v28 - 12) = 0;
    *v28 = 0;
    v28 += 16;
    v29 -= 16;
  }

  while (v29);
  v30 = (a1 + 18076);
  v31 = 128;
  do
  {
    *(v30 - 12) = 0;
    *v30 = 0;
    v30 += 16;
    v31 -= 16;
  }

  while (v31);
  v32 = (a1 + 18232);
  v33 = 6144;
  do
  {
    *(v32 - 40) = 0;
    *v32 = 0;
    v32 += 48;
    v33 -= 48;
  }

  while (v33);
  v34 = -8320;
  do
  {
    *(a1 + v34 + 32656) = 0uLL;
    v34 += 1040;
  }

  while (v34);
  *(a1 + 17792) = 0u;
  *(a1 + 32656) = 0u;
  *(a1 + 32672) = 0u;
  v35 = *(a1 + 20);
  if (v35 == 0x2000)
  {
    v36 = 7;
  }

  else
  {
    v36 = 0;
  }

  if (v35 == 4096)
  {
    v37 = 6;
  }

  else
  {
    v37 = v36;
  }

  if (v35 == 2048)
  {
    v38 = 5;
  }

  else
  {
    v38 = 0;
  }

  if (v35 == 1024)
  {
    v39 = 4;
  }

  else
  {
    v39 = v38;
  }

  if (v35 <= 4095)
  {
    v37 = v39;
  }

  if (v35 == 512)
  {
    v40 = 3;
  }

  else
  {
    v40 = 0;
  }

  if (v35 == 256)
  {
    v41 = 2;
  }

  else
  {
    v41 = v40;
  }

  if (v35 == 128)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  if (v35 <= 1023)
  {
    v43 = v42;
  }

  else
  {
    v43 = v37;
  }

  *(a1 + 156) = v43;
  sub_24D790B1C((a1 + 8), (a1 + 32656));
  return a1;
}

uint64_t sub_24D7928E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5)
{
  v265 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_578;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    operator new();
  }

  *v258 = *(a1 + 200);
  if (*(a1 + 148) == 1)
  {
    v11 = *(a1 + 112);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 149) == 1)
  {
    v13 = *(a1 + 128);
  }

  else
  {
    v13 = 0;
  }

  sub_24D7CFC10(v10, (a1 + 208), 1 << (*(a1 + 156) + 6), v11, v13);
  v247 = *(v10 + 225768);
  if (a5)
  {
    *a5 = 0;
  }

  v14 = 8 * a3;
  v257 = 0;
  if (!(8 * a3))
  {
    v254 = 0;
    v16 = 0;
    goto LABEL_561;
  }

  v238 = a5;
  v248 = a3;
  v249 = 0;
  v15 = 0;
  v253 = 0;
  v254 = 0;
  v16 = 0;
  v17 = 0;
  v250 = 0;
  v252 = 0;
  v243 = a1 + 240;
  v234 = a1 + 18064;
  v233 = a1 + 17936;
  v235 = a1 + 17792;
  v236 = a1 + 13712;
  v240 = a1 + 18192;
  v237 = a1 + 13616;
  v241 = a1 + 12528;
  v239 = a1 + 24336;
  v242 = a1 + 12976;
  v18 = 1;
  while (1)
  {
    v19 = *(a1 + 112);
    if (v19 > *(a1 + 56) || v14 - v15 <= 0x2C0 && (v260 = 0, memset(__s1, 0, sizeof(__s1)), !memcmp(__s1, (a2 + (v15 >> 3)), v248 - (v15 >> 3))))
    {
LABEL_558:
      if ((v18 & 1) == 0)
      {
        sub_24D7975E0(*v258, 0, v250, v17, v257 - v253);
      }

      goto LABEL_561;
    }

    *(a1 + 104) = v15;
    v256 = 0;
    sub_24D7A21B0(__s1, a2, &v257, &v256);
    if ((v256 & 1) == 0)
    {
      break;
    }

    switch(LODWORD(__s1[0]))
    {
      case 0:
        if ((~*(a1 + 232) & 3) == 0)
        {
          goto LABEL_509;
        }

        v20 = v254;
        if (BYTE8(__s1[0]) > 0x7Fu)
        {
          goto LABEL_539;
        }

        v21 = v243 + 96 * BYTE8(__s1[0]);
        sub_24D79D2F0(a1, BYTE8(__s1[0]), *v258, v21);
        v22 = *v258 + 1000 * *(v21 + 36);
        *buf = (WORD4(__s1[0]) >> 6) & 0x100 | HIBYTE(WORD4(__s1[0])) & 0x3F;
        if (*(v22 + 1336) != 1)
        {
          goto LABEL_539;
        }

        v23 = v22 + 712;
        sub_24D7A1734(v22 + 712, *v258);
        if (*(v23 + 624) != 1)
        {
          goto LABEL_528;
        }

        v24 = sub_24D790464(v23, (*(v23 + 616) - 1)) & 3;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v183 = *(v23 + 560) + *(v23 + 552) - 1;
            v184 = *(*(v23 + 528) + ((v183 >> 9) & 0x7FFFFFFFFFFFF8));
            v185 = v183 & 0xFFF;
            v186 = *(v184 + v185) & 0xCF;
          }

          else
          {
            v199 = *(v23 + 560) + *(v23 + 552) - 1;
            v184 = *(*(v23 + 528) + ((v199 >> 9) & 0x7FFFFFFFFFFFF8));
            v185 = v199 & 0xFFF;
            v186 = *(v184 + v185) & 0x3F;
          }
        }

        else
        {
          if (!v24)
          {
            LOBYTE(v261) = -4;
            sub_24D7A19A8(v23 + 520, &v261);
            goto LABEL_528;
          }

          v198 = *(v23 + 560) + *(v23 + 552) - 1;
          v184 = *(*(v23 + 528) + ((v198 >> 9) & 0x7FFFFFFFFFFFF8));
          v185 = v198 & 0xFFF;
          v186 = *(v184 + v185) & 0xF3;
        }

        *(v184 + v185) = v186;
LABEL_528:
        sub_24D7A18F0(v23, buf);
        goto LABEL_539;
      case 1:
        v90 = *(a1 + 16);
        v91 = *(a1 + 128);
        if (v91 % v90)
        {
          v92 = (v91 + v90 - 1) / v90 * v90;
        }

        else
        {
          if (*(a1 + 136) == v91 && !*(a1 + 152) && (*(a1 + 149) & 1) != 0)
          {
            v137 = 1;
            goto LABEL_200;
          }

          v92 = v91 + v90;
        }

        *(a1 + 128) = v92;
        v138 = *v258;
        *buf = v92;
        sub_24D769624((*v258 + 225840), buf);
        if (!(*buf % v90))
        {
          v138[28236] = ((v138[28228] - v138[28227]) >> 3) - 1 + ((v138[28231] - v138[28230]) << 29) - 0x100000000;
        }

        v137 = *(a1 + 152) + 1;
LABEL_200:
        v20 = v254;
        v18 = 0;
        *(a1 + 152) = v137;
        goto LABEL_540;
      case 2:
        v245 = v17;
        v51 = *v258;
        v52 = *(*v258 + 225848);
        v53 = *(*v258 + 225840);
        if (v52 - v53 == 8 && !*(v52 - 8))
        {
          *(*v258 + 225848) = v53;
        }

        v54 = v19 + (1 << (*(a1 + 156) + 6));
        v55 = sub_24D797778(a1, v51, DWORD2(__s1[0]) & 0xFFFFF, v54);
        sub_24D7D00E8(v51, (a1 + 149), *(a1 + 16), (a1 + 128), v55);
        if (v55 < *(a1 + 128))
        {
          v56 = sub_24D809C04();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1522;
            *&buf[18] = 2080;
            *&buf[20] = "uscTimestamp >= parser->lastUSCTimestamp";
            _os_log_error_impl(&dword_24D764000, v56, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v57 = *v258;
        v58 = *(a1 + 16);
        *buf = v55;
        sub_24D769624((*v258 + 225840), buf);
        if (!(*buf % v58))
        {
          v57[28236] = ((v57[28228] - v57[28227]) >> 3) - 1 + ((v57[28231] - v57[28230]) << 29) - 0x100000000;
        }

        *(a1 + 128) = v55;
        *(a1 + 136) = v55;
        *(a1 + 144) = DWORD2(__s1[0]) & 0xFFFFF;
        *(a1 + 152) = 0;
        v59 = *v258;
        *buf = sub_24D79CF24(v54, a1 + 32656, (a1 + 32680));
        sub_24D769624((v59 + 225816), buf);
        *(a1 + 112) = v54;
        *buf = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
        sub_24D7979B0(*v258 + 225864, buf);
        goto LABEL_95;
      case 3:
        v71 = *v258;
        v72 = *v258 + 225280;
        v73 = *(*v258 + 225824);
        v74 = *(*v258 + 225816);
        if (v73 - v74 == 8 && !*(v73 - 8))
        {
          *(*v258 + 225824) = v74;
        }

        v75 = *(v72 + 568);
        v76 = *(v72 + 560);
        if (v75 - v76 == 8 && !*(v75 - 8))
        {
          *(v72 + 568) = v76;
        }

        v77 = *&__s1[1];
        v78 = sub_24D797778(a1, v71, DWORD2(__s1[0]) & 0xFFFFF, *&__s1[1] & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D0084(v71, (a1 + 148), 1 << (*(a1 + 156) + 6), (a1 + 112), v77 & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D00E8(*v258, (a1 + 149), *(a1 + 16), (a1 + 128), v78);
        v79 = *(a1 + 112);
        if ((*&__s1[1] & 0x3FFFFFFFFFFFFFuLL) <= v79 && v79)
        {
          v80 = sub_24D809C04();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1437;
            *&buf[18] = 2080;
            *&buf[20] = "token.bits.tok.timeStamp.systemTime > parser->lastSystemTimestamp || !parser->lastSystemTimestamp";
            _os_log_error_impl(&dword_24D764000, v80, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v81 = *v258;
        *buf = sub_24D79CF24(*&__s1[1] & 0x3FFFFFFFFFFFFFLL, a1 + 32656, (a1 + 32680));
        sub_24D769624((v81 + 225816), buf);
        v82 = *v258;
        v83 = (*v258 + 225280);
        if (*(*v258 + 225848) == *(*v258 + 225840) || (v84 = *(a1 + 128), v78 > v84))
        {
          v85 = *(a1 + 16);
          *buf = v78;
          sub_24D769624((*v258 + 225840), buf);
          v17 = v17;
          if (!(*buf % v85))
          {
            v83[76] = ((v83[68] - v83[67]) >> 3) - 1 + ((v83[71] - v83[70]) << 29) - 0x100000000;
          }

          *(a1 + 128) = v78;
          *(a1 + 136) = v78;
          *(a1 + 144) = DWORD2(__s1[0]) & 0xFFFFF;
          v82 = *v258;
          v20 = v254;
        }

        else
        {
          v20 = v254;
          v17 = v17;
          if (v78 < v84)
          {
            *(a1 + 136) = v84;
            *(a1 + 144) = (DWORD2(__s1[0]) & 0xFFFFF) + v78 - v84;
          }
        }

        *(a1 + 152) = 0;
        if ((v17 & 1) == 0)
        {
          v86 = v82[28227];
          v87 = ((v82[28228] - v86) >> 3) - 1 + ((v82[28231] - v82[28230]) << 29) - 0x100000000;
          v250 = v87;
          if ((v252 & 1) != 0 && (*(v86 + 8 * v249) + 2 * v82[28226]) < *(v86 + 8 * v87) && (v88 = sub_24D7977F4(a1, a4, v82, v249), v82 = *v258, v88))
          {
            v230 = v230 & 0xFFFFFFFF00000000 | v252;
            sub_24D7975E0(*v258, 2, v249, v252, 0);
            v17 = 1;
            v82 = *v258;
          }

          else
          {
            v17 = 1;
          }
        }

        *buf = ((v82[28228] - v82[28227]) >> 3) - 1 + ((v82[28231] - v82[28230]) << 29) - 0x100000000;
        sub_24D7979B0((v82 + 28233), buf);
        v18 = 0;
        v134 = *&__s1[1] & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 112) = *&__s1[1] & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 120) = v134;
        *(a1 + 156) = DWORD2(__s1[1]);
        goto LABEL_540;
      case 4:
        v35 = sub_24D809C04();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1584;
          *&buf[18] = 2080;
          *&buf[20] = "false";
          _os_log_error_impl(&dword_24D764000, v35, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
        }

        v20 = v254;
        if (sub_24D809BF4())
        {
          sub_24D809BFC();
        }

        goto LABEL_539;
      case 5:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_509;
        }

        v93 = DWORD2(__s1[0]);
        v94 = WORD6(__s1[0]);
        v95 = DWORD2(__s1[0]) == 1;
        v96 = DWORD2(__s1[0]) == 1 ? BYTE12(__s1[0]) & 7 | 0x60 : BYTE12(__s1[0]);
        if ((v96 & 0x80) != 0)
        {
          goto LABEL_509;
        }

        v245 = v17;
        v97 = __s1[1];
        v98 = v243 + 96 * v96;
        if ((*(v98 + 88) & 1) == 0)
        {
          v231 = __s1[1];
          v99 = DWORD2(__s1[0]) == 1;
          sub_24D79D2F0(a1, v96, *v258, v243 + 96 * v96);
          v95 = v99;
          v97 = v231;
          if ((*(v98 + 88) & 1) == 0)
          {
            sub_24D79D030();
LABEL_583:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }
        }

        *(v98 + 83) = v95;
        *(v98 + 82) = 1;
        *(v98 + 36) = v96;
        if (v93)
        {
          v18 = 0;
          v100 = *(a1 + 168);
          if (v100 == 0x8000000000000000)
          {
            v100 = 0;
          }

          *(a1 + 168) = v100 + 1;
          v101 = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
          *(v98 + 16) = v100;
          *(v98 + 37) = BYTE1(v94) & 0x7F;
          v102 = v240 + 48 * ((v94 >> 8) & 0x7F);
          *v102 = v100;
          *(v102 + 8) = 0;
          *(v102 + 16) = 0;
          *(v102 + 24) = 0;
          *(v102 + 28) = 0;
          *(v102 + 32) = v101;
          *(v102 + 40) = 1;
          goto LABEL_96;
        }

        *(v98 + 36) = v94;
        if (v97 > 7)
        {
LABEL_95:
          v18 = 0;
LABEL_96:
          v20 = v254;
          goto LABEL_97;
        }

        v142 = v237 + 12 * v97;
        v143 = *v142;
        *(v98 + 76) = *v142;
        v20 = v254;
        if (v143 <= 7)
        {
          v144 = v241 + 56 * v143;
          if (*(v144 + 48) == 1)
          {
            *(v98 + 32) = *(v144 + 24);
          }

          if (*(v98 + 16) == -1)
          {
            v145 = v239 + 1040 * v143;
            v146 = *(v142 + 8);
            if ((*(v145 + ((v146 >> 3) & 8)) >> v146))
            {
              *(v98 + 16) = *(v145 + 8 * (v146 & 0x7F) + 16);
            }

            else if ((a4 & 0x20) != 0)
            {
              v208 = *(a1 + 176);
              if (!v208)
              {
                v208 = 0x8000000000000000;
              }

              *(a1 + 176) = v208 + 1;
              *(v98 + 16) = v208;
              v209 = *(v142 + 8);
              *(v145 + 8 * (v209 & 0x7F) + 16) = v208;
              *(v145 + ((v209 >> 3) & 8)) |= 1 << v209;
            }
          }
        }

        if (v97 - 4 <= 2 && (v210 = v242 + 40 * (v97 - 4), *(v210 + 32) == 1))
        {
          v18 = 0;
          *(v98 + 24) = *(v210 + 16);
        }

        else
        {
          v18 = 0;
        }

LABEL_97:
        v17 = v245;
        goto LABEL_540;
      case 6:
        if ((~*(a1 + 232) & 0xF) != 0)
        {
          sub_24D797CCC(a1, *v258, ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000, BYTE8(__s1[0]), 0);
        }

        goto LABEL_509;
      case 7:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_509;
        }

        v261 = 0;
        v20 = v254;
        if (HIDWORD(__s1[0]) == 1)
        {
          v261 = (*&__s1[1] >> 5) & 0x7FFFFFFFFFFLL;
          v89 = v236 + 16 * (__s1[1] & 0x1F);
          *v89 = v261;
          *(v89 + 8) = 1;
        }

        else
        {
          if (LOBYTE(__s1[1]) == 255)
          {
            goto LABEL_539;
          }

          v139 = v236 + 16 * LOBYTE(__s1[1]);
          if (*(v139 + 8) != 1)
          {
            goto LABEL_539;
          }

          v261 = *v139;
        }

        v255 = BYTE8(__s1[0]);
        *buf = a1;
        *&buf[8] = &v255;
        *&buf[16] = v258;
        *&buf[24] = &v261;
        if ((SBYTE8(__s1[0]) & 0x8000000000000000) == 0)
        {
          sub_24D7A109C(buf, v243 + 96 * SBYTE8(__s1[0]));
        }

        goto LABEL_539;
      case 8:
        if ((*(a1 + 232) & 4) != 0)
        {
          goto LABEL_509;
        }

        *buf = a1;
        v20 = v254;
        if ((SBYTE8(__s1[0]) & 0x8000000000000000) != 0)
        {
          goto LABEL_539;
        }

        v113 = v243 + 96 * SBYTE8(__s1[0]);
        if (*(v113 + 88) != 1)
        {
          goto LABEL_539;
        }

        v114 = *(v113 + 76);
        if (SHIDWORD(__s1[0]) > 1)
        {
          if (HIDWORD(__s1[0]) == 2)
          {
            if (BYTE6(__s1[1]))
            {
              v193.i64[0] = vdupq_n_s16(BYTE7(__s1[1])).u64[0];
              v193.i64[1] = vdupq_n_s16(*(__s1 + 23) + 1).i64[1];
              *v194.i8 = vadd_s16(vdup_n_s16(HIBYTE(__s1[1])), 0x3000200010000);
              v194.i64[1] = v194.i64[0];
            }

            else
            {
              v193 = vmovl_u8(*(&__s1[1] + 7));
              v194 = vmovl_u8(*(&__s1[1] + 15));
            }

            v203 = ((WORD2(__s1[1]) & 0x7FF) << 20) | (LODWORD(__s1[1]) >> 6) & 0xFFC00 | __s1[1] & 0x3FF;
            if (v114 <= 7)
            {
              v204 = v234 + 16 * v114;
              *v204 = __s1[1] & 0x3FF;
              *(v204 + 4) = vand_s8(vshl_u32(vdup_n_s32(v203), 0xFFFFFFECFFFFFFF6), 0x7FF000003FFLL);
              *(v204 + 12) = 1;
            }

            v205 = *(v113 + 75);
            v122 = (v113 + 75);
            *(v122 - 37) = 1;
            *(v122 - 36) = v193;
            *(v122 - 20) = v194;
            *(v122 - 1) = v203;
            if ((v205 & 1) == 0)
            {
LABEL_538:
              *v122 = 1;
              goto LABEL_539;
            }
          }

          else if (HIDWORD(__s1[0]) == 3)
          {
            if (__s1[1])
            {
              v151.i64[0] = vdupq_n_s16(BYTE1(__s1[1])).u64[0];
              v151.i64[1] = vdupq_n_s16(*(__s1 + 17) + 1).i64[1];
              *v152.i8 = vadd_s16(vdup_n_s16(BYTE9(__s1[1])), 0x3000200010000);
              v152.i64[1] = v152.i64[0];
            }

            else
            {
              v151 = vmovl_u8(*(&__s1[1] + 1));
              v152 = vmovl_u8(*(&__s1[1] + 9));
            }

            if (v114 <= 7)
            {
              v200 = v234 + 16 * v114;
              if (*(v200 + 12) == 1)
              {
                v201 = *v200 & 0x3FF | ((*(v200 + 4) & 0x3FF) << 10) & 0x800FFFFF | ((*(v200 + 8) & 0x7FF) << 20);
                v202 = *(v113 + 75);
                v122 = (v113 + 75);
                *(v122 - 37) = 1;
                *(v122 - 36) = v151;
                *(v122 - 20) = v152;
                *(v122 - 1) = v201;
                if ((v202 & 1) == 0)
                {
                  goto LABEL_538;
                }
              }
            }
          }
        }

        else if (HIDWORD(__s1[0]))
        {
          if (HIDWORD(__s1[0]) == 1)
          {
            v115 = sub_24D7A205C(buf, *(&__s1[1] + 4), SBYTE12(__s1[1]), *(v113 + 76));
            if (v114 <= 7)
            {
              v117 = v233 + 16 * v114;
              if (*(v117 + 12) == 1)
              {
                v118 = LOWORD(__s1[1]);
                v119 = *v117 + (__s1[1] & 0xF);
                v120 = (v116 & 0x7FF) << 11;
                *v117 = v119;
                v121 = vadd_s32(*(v117 + 4), vand_s8(vshl_u32(vdup_n_s32(v118), 0xFFFFFFF8FFFFFFFCLL), 0xF0000000FLL));
                *(v117 + 4) = v121;
                v123 = *(v113 + 75);
                v122 = (v113 + 75);
                *(v122 - 7) = v121.i32[1];
                *(v122 - 37) = 0;
                *(v122 - 36) = v119 | (v121.u32[0] << 32);
                *(v122 - 6) = WORD2(v115) & 0x7FF | v120 | (WORD2(v116) << 22);
                *(v122 - 20) = (WORD2(v115) & 0x7FF | ((v115 & 0x1F) << 33) | v120 | ((HIDWORD(v116) & 0x7FF) << 22)) >> 32;
                if ((v123 & 1) == 0)
                {
                  goto LABEL_538;
                }
              }
            }
          }
        }

        else
        {
          v187 = sub_24D7A205C(buf, *(&__s1[1] + 12), SBYTE4(__s1[2]), *(v113 + 76));
          v189 = *&__s1[1];
          v190 = DWORD2(__s1[1]);
          if (v114 <= 7)
          {
            v191 = v233 + 16 * v114;
            *v191 = *&__s1[1];
            *(v191 + 8) = v190;
            *(v191 + 12) = 1;
          }

          v192 = *(v113 + 75);
          v122 = (v113 + 75);
          *(v122 - 37) = 0;
          *(v122 - 36) = v189;
          *(v122 - 7) = v190;
          *(v122 - 6) = WORD2(v187) & 0x7FF | ((v188 & 0x7FF) << 11) | (WORD2(v188) << 22);
          *(v122 - 20) = (HIDWORD(v187) & 0x7FF | ((v187 & 0x1F) << 33) | ((v188 & 0x7FF) << 11) | ((HIDWORD(v188) & 0x7FF) << 22)) >> 32;
          if ((v192 & 1) == 0)
          {
            goto LABEL_538;
          }
        }

        goto LABEL_539;
      case 9:
        if (*(a1 + 232))
        {
          goto LABEL_509;
        }

        v20 = v254;
        if ((BYTE8(__s1[0]) & 0x80) != 0)
        {
          goto LABEL_539;
        }

        v47 = v243 + 96 * (BYTE8(__s1[0]) & 0x7F);
        sub_24D79D2F0(a1, BYTE8(__s1[0]), *v258, v47);
        v48 = *v258 + 1000 * *(v47 + 36);
        *buf = HIDWORD(__s1[0]);
        if (*(v48 + 1336) != 1)
        {
          goto LABEL_539;
        }

        v49 = v48 + 712;
        sub_24D7A1734(v48 + 712, *v258);
        if (*(v49 + 624) != 1)
        {
          goto LABEL_524;
        }

        v50 = sub_24D790464(v49, (*(v49 + 616) - 1)) & 3;
        if (v50 <= 1)
        {
          if (!v50)
          {
            LOBYTE(v261) = -3;
            sub_24D7A19A8(v49 + 520, &v261);
            goto LABEL_524;
          }

          v195 = *(v49 + 560) + *(v49 + 552) - 1;
          v180 = *(*(v49 + 528) + ((v195 >> 9) & 0x7FFFFFFFFFFFF8));
          v181 = v195 & 0xFFF;
          v182 = *(v180 + v181) & 0xF3 | 4;
          goto LABEL_522;
        }

        if (v50 == 2)
        {
          v179 = *(v49 + 560) + *(v49 + 552) - 1;
          v180 = *(*(v49 + 528) + ((v179 >> 9) & 0x7FFFFFFFFFFFF8));
          v181 = v179 & 0xFFF;
          v182 = *(v180 + v181) & 0xCF | 0x10;
LABEL_522:
          *(v180 + v181) = v182;
          goto LABEL_524;
        }

        v196 = *(v49 + 560) + *(v49 + 552) - 1;
        v197 = *(*(v49 + 528) + ((v196 >> 9) & 0x7FFFFFFFFFFFF8));
        *(v197 + (v196 & 0xFFF)) = *(v197 + (v196 & 0xFFF)) & 0x3F | 0x40;
LABEL_524:
        sub_24D7A1E04(v49 + 312, buf);
LABEL_539:
        v18 = 0;
        goto LABEL_540;
      case 0xA:
        if ((*(a1 + 232) & 0x10) != 0 || *(a1 + 48) > v19)
        {
          goto LABEL_509;
        }

        v106 = v17;
        v107 = BYTE8(__s1[0]);
        v108 = *(*v258 + 225888);
        v109 = *v258 + 24 * BYTE8(__s1[0]) + 224520;
        v110 = *v109;
        v111 = *(*v258 + 24 * BYTE8(__s1[0]) + 224528);
        if (*v109 == v111 || *(*(*v258 + 225840) + ((v108 >> 29) & 0x7FFFFFFF8)) - *(*(*v258 + 225840) + 8 * *(v111 - 1)) >= *(a1 + 160))
        {
          v140 = *(*v258 + 24 * BYTE8(__s1[0]) + 224536);
          if (v111 >= v140)
          {
            v147 = (v111 - v110) >> 3;
            if ((v147 + 1) >> 61)
            {
              goto LABEL_583;
            }

            v246 = BYTE8(__s1[0]);
            v148 = v140 - v110;
            v149 = v148 >> 2;
            if (v148 >> 2 <= (v147 + 1))
            {
              v149 = v147 + 1;
            }

            if (v148 >= 0x7FFFFFFFFFFFFFF8)
            {
              v150 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v150 = v149;
            }

            if (v150)
            {
              sub_24D7658EC(*v258 + 24 * BYTE8(__s1[0]) + 224520, v150);
            }

            v153 = (8 * v147);
            *v153 = v108;
            v141 = 8 * v147 + 8;
            v154 = *(v109 + 8) - *v109;
            v155 = v153 - v154;
            memcpy(v153 - v154, *v109, v154);
            v156 = *v109;
            *v109 = v155;
            *(v109 + 8) = v141;
            *(v109 + 16) = 0;
            if (v156)
            {
              operator delete(v156);
            }

            v107 = v246;
          }

          else
          {
            *v111 = v108;
            v141 = (v111 + 8);
          }

          *(v109 + 8) = v141;
          if (v107 < 0x10)
          {
            v112 = (v235 + v107);
            *(v235 + v107) = 0;
            buf[0] = 0;
LABEL_234:
            v17 = v106;
LABEL_235:
            *v112 = 1;
            v157 = buf[0];
            goto LABEL_237;
          }

LABEL_236:
          v157 = 0;
          v17 = v106;
          goto LABEL_237;
        }

        buf[0] = 0;
        if (BYTE8(__s1[0]) > 0xFu)
        {
          goto LABEL_236;
        }

        v112 = (v235 + BYTE8(__s1[0]));
        if (!*v112)
        {
          goto LABEL_234;
        }

        v17 = v106;
        if (*(v235 + BYTE8(__s1[0])) == 1)
        {
          v112 = buf;
          goto LABEL_235;
        }

        v157 = 0;
LABEL_237:
        v255 = v157 & 1;
        *buf = __s1;
        *&buf[8] = &v255;
        *&buf[16] = v258;
        v158 = *(a1 + 208);
        if (v158 != *(a1 + 216))
        {
          v159 = (v158 + 24 * v107);
          v161 = *v159;
          v160 = v159[1];
          while (2)
          {
            if (v161 == v160)
            {
              goto LABEL_509;
            }

            v162 = *v161;
            v261 = 0;
            switch(v107)
            {
              case 0:
                switch(v162)
                {
                  case 0:
                    v163 = *(*buf + 16);
                    goto LABEL_377;
                  case 1:
                    goto LABEL_376;
                  case 2:
                    v166 = *(*buf + 16) >> 50;
                    goto LABEL_503;
                  case 3:
                    goto LABEL_268;
                  case 4:
                    v172 = *(*buf + 24);
                    goto LABEL_448;
                  case 5:
                    LODWORD(v174) = *(*buf + 28);
                    goto LABEL_444;
                  case 6:
                    LOWORD(v174) = *(*buf + 30);
                    goto LABEL_444;
                  case 7:
                    v174 = *(*buf + 32);
                    goto LABEL_444;
                  case 8:
                    v172 = *(*buf + 32);
                    goto LABEL_448;
                  case 9:
                    goto LABEL_389;
                  case 10:
                    LOWORD(v175) = *(*buf + 38);
                    goto LABEL_450;
                  case 11:
                    v175 = *(*buf + 40);
                    goto LABEL_450;
                  case 12:
                    v172 = *(*buf + 40);
                    goto LABEL_448;
                  case 13:
                    LODWORD(v174) = *(*buf + 44);
                    goto LABEL_444;
                  case 14:
                    LOWORD(v174) = *(*buf + 46);
                    goto LABEL_444;
                  case 15:
                    v174 = *(*buf + 48);
                    goto LABEL_444;
                  case 16:
                    v172 = *(*buf + 48);
                    goto LABEL_448;
                  case 17:
                    LODWORD(v174) = *(*buf + 52);
                    goto LABEL_444;
                  case 18:
                    LOWORD(v175) = *(*buf + 54);
                    goto LABEL_450;
                  case 19:
                    LOWORD(v175) = *(*buf + 56);
LABEL_450:
                    v166 = v175 & 0x1FF;
                    goto LABEL_503;
                  default:
                    goto LABEL_504;
                }

              case 1:
                if (v162 > 24)
                {
                  if (v162 > 26)
                  {
                    switch(v162)
                    {
                      case 27:
                        goto LABEL_378;
                      case 28:
                        v166 = *(*buf + 48);
                        break;
                      case 29:
                        v166 = *(*buf + 50);
                        break;
                      default:
                        goto LABEL_504;
                    }

                    goto LABEL_503;
                  }

                  if (v162 != 25)
                  {
                    goto LABEL_367;
                  }

                  LODWORD(v168) = *(*buf + 36);
                }

                else
                {
                  if (v162 > 21)
                  {
                    if (v162 == 22)
                    {
                      goto LABEL_335;
                    }

                    if (v162 != 23)
                    {
                      v168 = *(*buf + 32);
                      goto LABEL_408;
                    }

                    goto LABEL_321;
                  }

                  if (v162 == 20)
                  {
                    v168 = *(*buf + 16);
                  }

                  else
                  {
                    if (v162 != 21)
                    {
                      goto LABEL_504;
                    }

                    LODWORD(v168) = *(*buf + 20);
                  }
                }

                goto LABEL_408;
              case 2:
                switch(v162)
                {
                  case 30:
                    goto LABEL_343;
                  case 31:
                    goto LABEL_382;
                  case 32:
                    goto LABEL_383;
                  case 33:
                    goto LABEL_404;
                  case 34:
                    goto LABEL_405;
                  case 35:
                    goto LABEL_352;
                  case 36:
                    goto LABEL_357;
                  case 37:
                    goto LABEL_293;
                  case 38:
                    goto LABEL_381;
                  case 39:
                    goto LABEL_338;
                  case 40:
                    LOWORD(v165) = *(*buf + 38);
                    goto LABEL_502;
                  case 41:
                    v165 = *(*buf + 40);
                    goto LABEL_502;
                  case 42:
                    v170 = *(*buf + 40);
                    goto LABEL_497;
                  case 43:
                    LODWORD(v165) = *(*buf + 44);
                    goto LABEL_502;
                  case 44:
                    LOWORD(v165) = *(*buf + 46);
                    goto LABEL_502;
                  case 45:
                    v165 = *(*buf + 48);
                    goto LABEL_502;
                  case 46:
                    v170 = *(*buf + 48);
                    goto LABEL_497;
                  case 47:
                    LODWORD(v165) = *(*buf + 52);
                    goto LABEL_502;
                  case 48:
                    LOWORD(v165) = *(*buf + 54);
                    goto LABEL_502;
                  case 49:
                    v165 = *(*buf + 56);
                    goto LABEL_502;
                  case 50:
                    v170 = *(*buf + 56);
                    goto LABEL_497;
                  case 51:
                    LODWORD(v165) = *(*buf + 60);
                    goto LABEL_502;
                  case 52:
                    LOWORD(v165) = *(*buf + 62);
                    goto LABEL_502;
                  case 53:
                    v165 = *(*buf + 64);
                    goto LABEL_502;
                  case 54:
                    v170 = *(*buf + 64);
                    goto LABEL_497;
                  case 55:
                    LODWORD(v165) = *(*buf + 68);
                    goto LABEL_502;
                  case 56:
                    LOWORD(v165) = *(*buf + 70);
                    goto LABEL_502;
                  case 57:
                    v165 = *(*buf + 72);
                    goto LABEL_502;
                  case 58:
                    v170 = *(*buf + 72);
                    goto LABEL_497;
                  case 59:
                    LODWORD(v165) = *(*buf + 76);
                    goto LABEL_502;
                  case 60:
                    LOWORD(v165) = *(*buf + 78);
                    goto LABEL_502;
                  case 61:
                    LOWORD(v165) = *(*buf + 80);
                    goto LABEL_502;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 3:
                if (v162 <= 67)
                {
                  if (v162 > 64)
                  {
                    if (v162 == 65)
                    {
                      v166 = *(*buf + 24);
                    }

                    else
                    {
                      if (v162 != 66)
                      {
LABEL_352:
                        LODWORD(v165) = *(*buf + 28);
                        goto LABEL_502;
                      }

                      v166 = *(*buf + 26);
                    }
                  }

                  else
                  {
                    if (v162 == 62)
                    {
                      goto LABEL_332;
                    }

                    if (v162 == 63)
                    {
                      goto LABEL_372;
                    }

                    if (v162 != 64)
                    {
                      goto LABEL_504;
                    }

                    v166 = *(*buf + 22);
                  }

                  goto LABEL_503;
                }

                if (v162 <= 70)
                {
                  if (v162 == 68)
                  {
                    v166 = *(*buf + 30);
                  }

                  else if (v162 == 69)
                  {
                    v166 = *(*buf + 32);
                  }

                  else
                  {
                    v166 = *(*buf + 34);
                  }

                  goto LABEL_503;
                }

                if (v162 == 71)
                {
                  goto LABEL_371;
                }

                if (v162 != 72)
                {
                  if (v162 != 73)
                  {
                    goto LABEL_504;
                  }

                  LOWORD(v165) = *(*buf + 40);
                  goto LABEL_502;
                }

                goto LABEL_373;
              case 4:
                if (v162 > 78)
                {
                  if (v162 <= 81)
                  {
                    if (v162 == 79)
                    {
                      goto LABEL_309;
                    }

                    if (v162 == 80)
                    {
LABEL_367:
                      v168 = *(*buf + 40);
                    }

                    else
                    {
LABEL_378:
                      LODWORD(v168) = *(*buf + 44);
                    }

                    goto LABEL_408;
                  }

                  switch(v162)
                  {
                    case 'R':
                      v168 = *(*buf + 48);
                      goto LABEL_408;
                    case 'S':
LABEL_384:
                      v166 = *(*buf + 52);
                      break;
                    case 'T':
LABEL_342:
                      v166 = *(*buf + 54);
                      break;
                    default:
                      goto LABEL_504;
                  }

                  goto LABEL_503;
                }

                if (v162 <= 75)
                {
                  if (v162 == 74)
                  {
                    v166 = (*(*buf + 16) >> 1) & 0x3FFFFLL;
                    goto LABEL_503;
                  }

                  if (v162 != 75)
                  {
                    goto LABEL_504;
                  }

LABEL_376:
                  LODWORD(v163) = *(*buf + 20);
                  goto LABEL_377;
                }

                if (v162 == 76)
                {
                  goto LABEL_346;
                }

                if (v162 == 77)
                {
                  goto LABEL_370;
                }

                goto LABEL_325;
              case 5:
                if (v162 <= 86)
                {
                  if (v162 == 85)
                  {
LABEL_289:
                    v166 = (*(*buf + 16) >> 1) & 0x7FFFFLL;
                    goto LABEL_503;
                  }

                  if (v162 == 86)
                  {
                    goto LABEL_333;
                  }

                  goto LABEL_504;
                }

                if (v162 == 87)
                {
LABEL_335:
                  v168 = *(*buf + 24);
                }

                else
                {
                  if (v162 != 88)
                  {
                    goto LABEL_504;
                  }

LABEL_321:
                  LODWORD(v168) = *(*buf + 28);
                }

LABEL_408:
                v166 = v168 & 0xFFFFF;
                goto LABEL_503;
              case 6:
                switch(v162)
                {
                  case 'Y':
                    goto LABEL_289;
                  case 'Z':
                    LODWORD(v171) = *(*buf + 20);
                    goto LABEL_431;
                  case '[':
                    goto LABEL_344;
                  case '\\':
                    LODWORD(v171) = *(*buf + 28);
                    goto LABEL_431;
                  case ']':
                    v171 = *(*buf + 32);
                    goto LABEL_431;
                  case '^':
                    goto LABEL_393;
                  case '_':
                    goto LABEL_395;
                    goto LABEL_392;
                  case 'a':
                    goto LABEL_394;
                  case 'b':
                    goto LABEL_390;
                  case 'c':
                    goto LABEL_396;
                  case 'd':
                    goto LABEL_391;
                  case 'e':
                    v171 = *(*buf + 64);
                    goto LABEL_431;
                  case 'f':
                    LODWORD(v171) = *(*buf + 68);
                    goto LABEL_431;
                  case 'g':
                    v171 = *(*buf + 72);
                    goto LABEL_431;
                  case 'h':
                    LODWORD(v171) = *(*buf + 76);
                    goto LABEL_431;
                  case 'i':
                    v171 = *(*buf + 80);
                    goto LABEL_431;
                  case 'j':
                    LODWORD(v171) = *(*buf + 84);
                    goto LABEL_431;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 7:
                switch(v162)
                {
                  case 'k':
                    v166 = *(*buf + 16) >> 1;
                    goto LABEL_503;
                  case 'l':
                    goto LABEL_343;
                  case 'm':
                    goto LABEL_382;
                  case 'n':
                    goto LABEL_383;
                  case 'o':
LABEL_404:
                    v165 = *(*buf + 24);
                    goto LABEL_502;
                  case 'p':
LABEL_405:
                    v170 = *(*buf + 24);
                    goto LABEL_497;
                  case 'q':
                    goto LABEL_352;
                  case 'r':
                    goto LABEL_357;
                  case 's':
                    goto LABEL_293;
                  case 't':
LABEL_393:
                    LODWORD(v171) = *(*buf + 36);
                    goto LABEL_431;
                  case 'u':
LABEL_395:
                    v171 = *(*buf + 40);
                    goto LABEL_431;
                  case 'v':
LABEL_392:
                    LODWORD(v171) = *(*buf + 44);
                    goto LABEL_431;
                  case 'w':
LABEL_394:
                    v171 = *(*buf + 48);
                    goto LABEL_431;
                  case 'x':
LABEL_390:
                    LODWORD(v171) = *(*buf + 52);
                    goto LABEL_431;
                  case 'y':
LABEL_396:
                    v171 = *(*buf + 56);
                    goto LABEL_431;
                  case 'z':
LABEL_391:
                    LODWORD(v171) = *(*buf + 60);
                    goto LABEL_431;
                  case '{':
                    LODWORD(v171) = *(*buf + 64);
                    goto LABEL_431;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 8:
                if (v162 <= 125)
                {
                  if (v162 == 124)
                  {
                    v166 = *(*buf + 16);
                  }

                  else
                  {
                    if (v162 != 125)
                    {
                      goto LABEL_504;
                    }

LABEL_332:
                    v166 = *(*buf + 18);
                  }
                }

                else
                {
                  if (v162 == 126)
                  {
LABEL_333:
                    LODWORD(v169) = *(*buf + 20);
                    goto LABEL_418;
                  }

                  if (v162 == 127)
                  {
                    LODWORD(v169) = *(*buf + 24);
                    goto LABEL_418;
                  }

                  if (v162 != 128)
                  {
                    goto LABEL_504;
                  }

                  v166 = *(*buf + 24) >> 17;
                }

                goto LABEL_503;
              case 9:
                switch(v162)
                {
                  case 129:
                    v166 = (*(*buf + 16) >> 1) & 0x1FFFLL;
                    goto LABEL_503;
                  case 130:
                    v173 = *(*buf + 16);
                    goto LABEL_388;
                  case 131:
                    LODWORD(v167) = *(*buf + 20);
                    goto LABEL_500;
                  case 132:
                    LOWORD(v167) = *(*buf + 22);
                    goto LABEL_500;
                  case 133:
                    goto LABEL_268;
                  case 134:
                    goto LABEL_387;
                  case 135:
                    goto LABEL_362;
                  case 136:
                    LOWORD(v167) = *(*buf + 30);
                    goto LABEL_500;
                  case 137:
                    v167 = *(*buf + 32);
                    goto LABEL_500;
                  case 138:
                    v173 = *(*buf + 32);
                    goto LABEL_388;
                  case 139:
                    LODWORD(v167) = *(*buf + 36);
                    goto LABEL_500;
                  case 140:
                    LOWORD(v167) = *(*buf + 38);
                    goto LABEL_500;
                  case 141:
                    v167 = *(*buf + 40);
                    goto LABEL_500;
                  case 142:
                    v173 = *(*buf + 40);
                    goto LABEL_388;
                  case 143:
                    LODWORD(v167) = *(*buf + 44);
                    goto LABEL_500;
                  case 144:
                    LOWORD(v167) = *(*buf + 46);
                    goto LABEL_500;
                  case 145:
                    v167 = *(*buf + 48);
                    goto LABEL_500;
                  case 146:
                    v173 = *(*buf + 48);
                    goto LABEL_388;
                  case 147:
                    LODWORD(v167) = *(*buf + 52);
                    goto LABEL_500;
                  case 148:
                    LOWORD(v167) = *(*buf + 54);
                    goto LABEL_500;
                  case 149:
                    v167 = *(*buf + 56);
                    goto LABEL_500;
                  case 150:
                    v173 = *(*buf + 56);
                    goto LABEL_388;
                  case 151:
                    LODWORD(v167) = *(*buf + 60);
                    goto LABEL_500;
                  case 152:
                    LOWORD(v167) = *(*buf + 62);
                    goto LABEL_500;
                  case 153:
                    v167 = *(*buf + 64);
                    goto LABEL_500;
                  case 154:
                    v173 = *(*buf + 64);
                    goto LABEL_388;
                  case 155:
                    LODWORD(v167) = *(*buf + 68);
                    goto LABEL_500;
                  case 156:
                    LOWORD(v167) = *(*buf + 70);
                    goto LABEL_500;
                  case 157:
                    v167 = *(*buf + 72);
                    goto LABEL_500;
                  case 158:
                    v173 = *(*buf + 72);
                    goto LABEL_388;
                  case 159:
                    LODWORD(v167) = *(*buf + 76);
                    goto LABEL_500;
                  case 160:
                    LOWORD(v167) = *(*buf + 78);
                    goto LABEL_500;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 10:
                if (v162 <= 163)
                {
                  switch(v162)
                  {
                    case 161:
                      v166 = *(*buf + 16);
                      break;
                    case 162:
                      v166 = *(*buf + 24) & 0x1FFFFFFFFLL;
                      break;
                    case 163:
                      v166 = (*(*buf + 24) >> 33) & 0x7FFFLL;
                      break;
                    default:
                      goto LABEL_504;
                  }

                  goto LABEL_503;
                }

                if (v162 > 165)
                {
                  if (v162 == 166)
                  {
LABEL_381:
                    v170 = *(*buf + 32);
                    goto LABEL_497;
                  }

                  if (v162 != 167)
                  {
                    goto LABEL_504;
                  }

LABEL_338:
                  LODWORD(v165) = *(*buf + 36);
                }

                else if (v162 == 164)
                {
LABEL_357:
                  LOWORD(v165) = *(*buf + 30);
                }

                else
                {
LABEL_293:
                  v165 = *(*buf + 32);
                }

                goto LABEL_502;
              case 11:
                if (v162 == 169)
                {
                  LOWORD(v165) = *(*buf + 18);
                }

                else
                {
                  if (v162 != 168)
                  {
                    goto LABEL_504;
                  }

                  LODWORD(v165) = *(*buf + 16);
                }

                goto LABEL_502;
              case 12:
                if (v162 > 173)
                {
                  if (v162 > 175)
                  {
                    if (v162 == 176)
                    {
LABEL_371:
                      v166 = *(*buf + 36);
                    }

                    else
                    {
                      if (v162 != 177)
                      {
                        goto LABEL_504;
                      }

LABEL_373:
                      v166 = *(*buf + 38);
                    }
                  }

                  else
                  {
                    if (v162 == 174)
                    {
LABEL_370:
                      LODWORD(v163) = *(*buf + 28);
                      goto LABEL_377;
                    }

LABEL_304:
                    v169 = *(*buf + 32);
LABEL_418:
                    v166 = v169 & 0x1FFFF;
                  }
                }

                else if (v162 > 171)
                {
                  if (v162 != 172)
                  {
LABEL_346:
                    v163 = *(*buf + 24);
                    goto LABEL_377;
                  }

LABEL_372:
                  v166 = *(*buf + 20);
                }

                else if (v162 == 170)
                {
LABEL_287:
                  v165 = *(*buf + 16);
LABEL_502:
                  v166 = v165 & 0x7FFF;
                }

                else
                {
                  if (v162 != 171)
                  {
                    goto LABEL_504;
                  }

LABEL_343:
                  v170 = *(*buf + 16);
LABEL_497:
                  v166 = (v170 >> 16) & 0x7FFF;
                }

                goto LABEL_503;
              case 13:
                switch(v162)
                {
                  case 178:
                    goto LABEL_287;
                  case 179:
                    goto LABEL_343;
                  case 180:
LABEL_382:
                    LODWORD(v165) = *(*buf + 20);
                    goto LABEL_502;
                  case 181:
LABEL_383:
                    LOWORD(v165) = *(*buf + 22);
                    goto LABEL_502;
                  case 182:
                    v169 = *(*buf + 24);
                    goto LABEL_418;
                  case 183:
                    LODWORD(v169) = *(*buf + 28);
                    goto LABEL_418;
                  case 184:
                    goto LABEL_304;
                  case 185:
                    v166 = *(*buf + 32) >> 17;
                    goto LABEL_503;
                  case 186:
LABEL_389:
                    LODWORD(v174) = *(*buf + 36);
                    goto LABEL_444;
                  case 187:
                    LOWORD(v174) = *(*buf + 38);
                    goto LABEL_444;
                  case 188:
                    v169 = *(*buf + 40);
                    goto LABEL_418;
                  case 189:
                    LODWORD(v169) = *(*buf + 44);
                    goto LABEL_418;
                  case 190:
                    v169 = *(*buf + 48);
                    goto LABEL_418;
                  case 191:
                    goto LABEL_384;
                  case 192:
                    goto LABEL_342;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 14:
                if (v162 <= 194)
                {
                  if (v162 == 193)
                  {
                    v164 = *(*buf + 16);
                  }

                  else
                  {
                    if (v162 != 194)
                    {
                      goto LABEL_504;
                    }

                    LODWORD(v164) = *(*buf + 20);
                  }

LABEL_369:
                  v166 = v164 & 0x3FFFFF;
                  goto LABEL_503;
                }

                if (v162 != 195)
                {
                  if (v162 != 196)
                  {
                    goto LABEL_504;
                  }

                  LODWORD(v164) = *(*buf + 28);
                  goto LABEL_369;
                }

LABEL_344:
                v171 = *(*buf + 24);
LABEL_431:
                v166 = v171 & 0x7FFFF;
                goto LABEL_503;
              case 15:
                if (v162 <= 201)
                {
                  if (v162 <= 198)
                  {
                    if (v162 == 197)
                    {
                      v174 = *(*buf + 16);
LABEL_444:
                      v166 = v174 & 0x3FFF;
                      goto LABEL_503;
                    }

                    if (v162 != 198)
                    {
                      goto LABEL_504;
                    }

                    v172 = *(*buf + 16);
LABEL_448:
                    v166 = (v172 >> 16) & 0x3FFF;
                    goto LABEL_503;
                  }

                  if (v162 == 199)
                  {
                    LODWORD(v174) = *(*buf + 20);
                    goto LABEL_444;
                  }

                  if (v162 == 200)
                  {
                    LOWORD(v174) = *(*buf + 22);
                    goto LABEL_444;
                  }

LABEL_268:
                  v167 = *(*buf + 24);
                  goto LABEL_500;
                }

                if (v162 <= 203)
                {
                  if (v162 != 202)
                  {
LABEL_362:
                    LODWORD(v167) = *(*buf + 28);
LABEL_500:
                    v166 = v167 & 0x1FFF;
                    goto LABEL_503;
                  }

LABEL_387:
                  v173 = *(*buf + 24);
LABEL_388:
                  v166 = (v173 >> 16) & 0x1FFF;
                }

                else if (v162 == 204)
                {
                  v166 = (*(*buf + 24) >> 45) & 0x3FFFFLL;
                }

                else
                {
                  if (v162 == 205)
                  {
LABEL_325:
                    v163 = *(*buf + 32);
                  }

                  else
                  {
                    if (v162 != 206)
                    {
                      goto LABEL_504;
                    }

LABEL_309:
                    LODWORD(v163) = *(*buf + 36);
                  }

LABEL_377:
                  v166 = v163 & 0x3FFFF;
                }

LABEL_503:
                v261 = v166;
LABEL_504:
                if (**&buf[8] == 1)
                {
                  v176 = *(**&buf[16] + 24 * v162 + 200528);
                  *(v176 - 8) += v261;
                }

                else
                {
                  v177 = v107;
                  v178 = v160;
                  sub_24D769624((**&buf[16] + 24 * v162 + 200520), &v261);
                  v160 = v178;
                  v107 = v177;
                }

                v161 += 2;
                continue;
              default:
                goto LABEL_504;
            }
          }
        }

        sub_24D797F90(v107, a1, buf);
LABEL_509:
        v18 = 0;
LABEL_510:
        v20 = v254;
LABEL_540:
        if (LODWORD(__s1[0]) >= 0x11)
        {
          v207 = sub_24D809C04();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2276;
            *&buf[18] = 2080;
            *&buf[20] = "tokenTypeIndex < numTokenTypes";
            _os_log_error_impl(&dword_24D764000, v207, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        else
        {
          v206.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v206.i64[1] = v257 - *(a1 + 104);
          *(v247 + 16 * LODWORD(__s1[0])) = vaddq_s64(v206, *(v247 + 16 * LODWORD(__s1[0])));
        }

        v254 = v20 + 1;
        v15 = v257;
        break;
      case 0xB:
        v32 = DWORD2(__s1[0]);
        if (DWORD2(__s1[0]) > 7)
        {
          v34 = 0;
          v33 = -1;
        }

        else
        {
          v33 = word_24DA8B950[DWORD2(__s1[0])];
          v34 = dword_24DA8ADB8[DWORD2(__s1[0])];
        }

        v124 = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
        v125 = *&__s1[1];
        v126 = *(a1 + 192);
        if (v126 == -1)
        {
          v126 = 0;
        }

        *(a1 + 192) = v126 + 1;
        *buf = v124;
        *&buf[16] = v125;
        *&buf[24] = v126;
        *&buf[28] = v34;
        LOWORD(v264) = v33;
        *(&v264 + 1) = 0;
        if (v32 <= 7)
        {
          v127 = v241 + 56 * v32;
          if (*(v127 + 48) == 1 && (v261 = v239 + 1040 * v32, v262 = 0, std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v261, 0x80uLL), sub_24D797450(a1, *v258, 1, "dmks: %d", v32), (*(v127 + 48) & 1) != 0))
          {
            v128 = *&buf[16];
            *v127 = *buf;
            *(v127 + 16) = v128;
            *(v127 + 32) = v264;
          }

          else
          {
            v135 = *&buf[16];
            *v127 = *buf;
            *(v127 + 16) = v135;
            *(v127 + 32) = v264;
            *(v127 + 48) = 1;
          }
        }

        v20 = v254;
        if ((a4 & 2) != 0)
        {
          v136 = *(a1 + 112);
          if (*(a1 + 48) <= v136 && *(a1 + 56) >= v136)
          {
            sub_24D7979B0(*v258 + 8, buf);
            sub_24D765934((*v258 + 104), &buf[24]);
            sub_24D765A5C((*v258 + 152), &v264);
            sub_24D765934((*v258 + 128), &buf[28]);
            sub_24D769624((*v258 + 56), &buf[16]);
            LOBYTE(v261) = 0;
            sub_24D797A84(*v258 + 176, &v261);
          }
        }

        goto LABEL_539;
      case 0xC:
        v36 = DWORD2(__s1[0]);
        if (DWORD2(__s1[0]) > 7)
        {
          goto LABEL_509;
        }

        *buf = v239 + 1040 * DWORD2(__s1[0]);
        *&buf[8] = 0;
        std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(buf, 0x80uLL);
        v37 = (v241 + 56 * v36);
        if (*(v37 + 48) != 1)
        {
          goto LABEL_509;
        }

        v244 = v17;
        v38 = 0;
        v39 = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
        v40 = v37;
        *(v37 + 1) = v39;
        v41 = v37 + 2;
        *(v41 + 4) = 0;
        *(v41 + 16) = WORD6(__s1[0]);
        v42 = a1 + 272;
        do
        {
          if (*(v42 + 56) == 1 && *v42 == v41[4])
          {
            sub_24D797CCC(a1, *v258, v39, v38, 1);
          }

          ++v38;
          v42 += 96;
        }

        while (v38 != 128);
        v43 = 0;
        v44 = (a1 + 13008);
        do
        {
          if (*v44 == 1 && *(v44 - 2) == v41[4])
          {
            sub_24D797B2C(a1, *v258, v39, v43, 1);
          }

          ++v43;
          v44 += 40;
        }

        while (v43 != 16);
        if ((a4 & 2) == 0)
        {
          v45 = *(*v258 + 225816);
          if (*(a1 + 48) <= *(v45 + 8 * v40[2]) && *(a1 + 56) >= *(v45 + 8 * *v40))
          {
            sub_24D7979B0(*v258 + 8, v40);
            sub_24D7979B0(*v258 + 32, v41);
            sub_24D765934((*v258 + 104), v41 + 4);
            sub_24D765A5C((*v258 + 152), v40 + 16);
            sub_24D765934((*v258 + 128), v40 + 7);
            sub_24D769624((*v258 + 56), v40 + 2);
            sub_24D769624((*v258 + 80), v41 + 4);
            buf[0] = 0;
            sub_24D797A84(*v258 + 176, buf);
          }
        }

        v20 = v254;
        v17 = v244;
        v18 = 0;
        if (*(v40 + 48) == 1)
        {
          *(v40 + 48) = 0;
        }

        goto LABEL_540;
      case 0xD:
        v103 = v242 + 40 * (BYTE8(__s1[0]) & 3);
        v104 = *v258;
        if (*(v103 + 32) == 1)
        {
          sub_24D797450(a1, *v258, 2, "channel: %d", BYTE8(__s1[0]) & 3);
          v105 = *(v103 + 32);
          v104 = *v258;
        }

        else
        {
          v105 = 0;
        }

        v129 = v104[28228];
        v130 = v104[28227];
        v131 = v104[28231];
        v132 = v104[28230];
        v133 = *(a1 + 184);
        if (v133 == -1)
        {
          v133 = 0;
        }

        *(a1 + 184) = v133 + 1;
        v20 = v254;
        if ((v105 & 1) == 0)
        {
          *(v103 + 32) = 1;
        }

        v18 = 0;
        *v103 = ((v129 - v130) >> 3) - 1 + ((v131 - v132) << 29) - 0x100000000;
        *(v103 + 16) = v133;
        *(v103 + 24) = -1;
        goto LABEL_540;
      case 0xE:
        sub_24D797B2C(a1, *v258, ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000, BYTE8(__s1[0]) & 3, 0);
        goto LABEL_509;
      case 0xF:
        v60 = HIDWORD(__s1[0]);
        if (HIDWORD(__s1[0]) <= 7)
        {
          v61 = v237 + 12 * HIDWORD(__s1[0]);
          *v61 = *(&__s1[0] + 1);
          *(v61 + 8) = __s1[1];
          v62 = v60 - 4;
          if (v62 <= 2)
          {
            v63 = v242 + 40 * v62;
            if (*(v63 + 32) == 1 && DWORD2(__s1[0]) <= 7)
            {
              v64 = v241 + 56 * DWORD2(__s1[0]);
              if (*(v64 + 48) == 1)
              {
                *(v63 + 24) = *(v64 + 24);
              }
            }
          }
        }

        v65 = __s1[1] & 0x7F;
        v66 = v240 + 48 * v65;
        v20 = v254;
        if (*(v66 + 40) != 1)
        {
          goto LABEL_539;
        }

        if (*(v66 + 28))
        {
          goto LABEL_539;
        }

        if (DWORD2(__s1[0]) > 7)
        {
          goto LABEL_539;
        }

        v67 = v241 + 56 * DWORD2(__s1[0]);
        if (*(v67 + 48) != 1)
        {
          goto LABEL_539;
        }

        if (*(v66 + 32) < *v67)
        {
          goto LABEL_539;
        }

        v68 = v239 + 1040 * DWORD2(__s1[0]);
        *(v68 + ((v65 >> 3) & 8)) |= 1 << v65;
        *(v68 + 8 * v65 + 16) = *v66;
        v69 = *(v67 + 24);
        *(v66 + 24) = v69;
        *(v66 + 28) = 1;
        if (*(v66 + 16) != 1)
        {
          goto LABEL_539;
        }

        v18 = 0;
        v70 = *(*(*v258 + 200376) + 8 * *(v66 + 8));
        *(*(*(*v258 + 1000 * v70 + 552) + (((*(*v258 + 1000 * v70 + 576) + (v70 >> 8)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(*v258 + 1000 * v70 + 576) + (v70 >> 8)) & 0x3FF)) = v69;
        goto LABEL_540;
      case 0x10:
        v29 = v257 - v253;
        v30 = *(a1 + 32);
        if (v30 >= 0x1000)
        {
          v30 = 4096;
        }

        v257 = 8 * (v30 + v30 * ((v257 >> 3) / v30));
        v232 = v232 & 0xFFFFFFFF00000000 | v17;
        sub_24D7975E0(*v258, 0, v250, v17, v29);
        if (v17)
        {
          v17 = 0;
        }

        else
        {
          v17 = v17;
        }

        v249 = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
        v31 = v252;
        if ((v252 & 1) == 0)
        {
          v31 = 1;
        }

        v252 = v31;
        v18 = 1;
        v253 = v257;
        goto LABEL_510;
      default:
        goto LABEL_509;
    }

LABEL_547:
    if (v15 >= v14)
    {
      goto LABEL_558;
    }
  }

  v25 = (a2 + (v15 >> 3));
  if ((v15 & 7) != 0)
  {
    v26 = (*v25 | (*(v25 + 1) << 8)) >> (v15 & 7);
  }

  else
  {
    LODWORD(v26) = *v25;
  }

  sub_24D797450(a1, *v258, 0, "next 32 bits: %#010x", v26);
  ++v16;
  v5 = v5 & 0xFFFFFFFF00000000 | v17;
  sub_24D7975E0(*v258, 1, v250, v5, v257 - v253);
  if ((a4 & 8) != 0)
  {
    v27 = v252;
    if ((v252 & 1) == 0)
    {
      v27 = 1;
    }

    v252 = v27;
    v249 = ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000;
    if (v17)
    {
      v17 = 0;
    }

    else
    {
      v17 = v17;
    }

    v28 = *(a1 + 32);
    if (v28 >= 0x1000)
    {
      v28 = 4096;
    }

    v15 = 8 * (v28 + v28 * ((v257 >> 3) / v28));
    v257 = v15;
    v18 = 1;
    v253 = v15;
    goto LABEL_547;
  }

  if (v238)
  {
    *v238 = 2;
  }

LABEL_561:
  v211 = 0;
  v212 = 200528;
  do
  {
    if (*(*v258 + v212 - 8) != *(*v258 + v212))
    {
      v213 = (*v258 + 225280);
      v214 = (*(***v258 + 24))(**v258, v211);
      v216 = v213[56];
      v215 = v213[57];
      if (v216 >= v215)
      {
        v218 = v213[55];
        v219 = (v216 - v218) >> 3;
        if ((v219 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v220 = v215 - v218;
        v221 = v220 >> 2;
        if (v220 >> 2 <= (v219 + 1))
        {
          v221 = v219 + 1;
        }

        if (v220 >= 0x7FFFFFFFFFFFFFF8)
        {
          v222 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v222 = v221;
        }

        if (v222)
        {
          sub_24D7A2168((v213 + 55), v222);
        }

        v223 = (8 * v219);
        *v223 = v214;
        v217 = 8 * v219 + 8;
        v224 = v213[55];
        v225 = v213[56] - v224;
        v226 = v223 - v225;
        memcpy(v223 - v225, v224, v225);
        v227 = v213[55];
        v213[55] = v226;
        v213[56] = v217;
        v213[57] = 0;
        if (v227)
        {
          operator delete(v227);
        }
      }

      else
      {
        *v216 = v214;
        v217 = (v216 + 1);
      }

      v213[56] = v217;
    }

    ++v211;
    v212 += 24;
  }

  while (v211 != 207);
  sub_24D7977F4(a1, a4, *v258, ((*(*v258 + 225824) - *(*v258 + 225816)) >> 3) - 1 + ((*(*v258 + 225848) - *(*v258 + 225840)) << 29) - 0x100000000);
  result = *v258;
  v228 = *v258 + 225280;
  *(*v258 + 225744) = v254;
  *(v228 + 472) = v257;
  *(v228 + 496) = v16;
LABEL_578:
  v229 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24D795760(uint64_t a1)
{
  *a1 = &unk_2860BB1A8;
  if (*(a1 + 200))
  {
    v2 = sub_24D7CFC0C();
    MEMORY[0x2530332C0](v2, 0x10B0C40146BE95CLL);
    *(a1 + 200) = 0;
  }

  v3 = *(a1 + 32656);
  if (v3)
  {
    *(a1 + 32664) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 208);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void sub_24D7957EC(uint64_t a1)
{
  sub_24D795760(a1);

  JUMPOUT(0x2530332C0);
}

uint64_t sub_24D795824(int a1, char *__s1)
{
  if (!__s1)
  {
    return 207;
  }

  result = strcmp(__s1, "9B37F49C310110FE3C1D0349A0DBD1F4165E5E1873418FE3D8E02DBD2C42360F");
  if (result)
  {
    if (!strcmp(__s1, "ECE8C77FAA463F6CD7C69976F66D170E06AABA1F8EAADE7E5C2EF059C7FD1BC6"))
    {
      return 1;
    }

    else if (!strcmp(__s1, "8751E932723FAB8324B1EFAB05DE911953F94AB079963EC9D4882EC0F853207E"))
    {
      return 2;
    }

    else if (!strcmp(__s1, "6EA38ABD760FE83DDB724F359C9F761841C5BD69E5DCCC1C211D42F98751EF80"))
    {
      return 3;
    }

    else if (!strcmp(__s1, "92CB5205D6DC7B8CF67306FCBBF4D2E22C50A82E14C323C9869A8154961E1379"))
    {
      return 4;
    }

    else if (!strcmp(__s1, "87BA80BEA278BCBDE11D4ADFEA6B3C8BEF365D8260CDE3591D5B76B2C36DD853"))
    {
      return 5;
    }

    else if (!strcmp(__s1, "D2D6A9827703DC8826305F130123DE83C3648F82DCB4F96DFCD7E33EA799BD62"))
    {
      return 6;
    }

    else if (!strcmp(__s1, "98A511FEF2F07DAECD3383521C19383B6DCA2C733FA4611CDFA49CC62B7B5181"))
    {
      return 7;
    }

    else if (!strcmp(__s1, "51A34CA49D64B984F464BC878382CDD07EEF0B001EBE4F2E95026F21673969A7"))
    {
      return 8;
    }

    else if (!strcmp(__s1, "83B2F8BA9316B9EFB16E84445A86F4306028A166E21E7B350C8D908E696445FC"))
    {
      return 9;
    }

    else if (!strcmp(__s1, "5BA476059E7B48575673F80A8DC1251E26C5B23F5DCF5BCB3AB1251D0D3424E8"))
    {
      return 10;
    }

    else if (!strcmp(__s1, "D613D0441777617363D2EF9031155D28A493ED4CF2B714C61332BEB8E694A21C"))
    {
      return 11;
    }

    else if (!strcmp(__s1, "06E83674FEE3BAEADDA04BCE4F798E64EAF9562959486A334178EFE9614AFE02"))
    {
      return 12;
    }

    else if (!strcmp(__s1, "CFC88028D48CFFC122779E410D958A0644A7B3219492B8F56805460AE11D3317"))
    {
      return 13;
    }

    else if (!strcmp(__s1, "C38EE6AA610415ACB3D10D68E346EE868CDB70CFC2F46D887E5E152FD4A256B2"))
    {
      return 14;
    }

    else if (!strcmp(__s1, "AEB4C02667999241FFC01E220B4443963E1B34D3ACD2C5545F5BBE1143870378"))
    {
      return 15;
    }

    else if (!strcmp(__s1, "40A9788933E5BA39796E86A50864B263BC0F2291A4B895C7EA6BBB144E5DACA5"))
    {
      return 16;
    }

    else if (!strcmp(__s1, "D469DF7536BAE8E1DE2CB8B3C1E14B4133343771592D97C7BCEC1D03BF0EE40A"))
    {
      return 17;
    }

    else if (!strcmp(__s1, "F9F04A751DF32AED42FF9EFB131D3CD40E499AA0A99A68D0DD6778167E42BF26"))
    {
      return 18;
    }

    else if (!strcmp(__s1, "357D351342C59B72F21BD4580AD1B2F1C4C47D0006AB615A4760BC3BEBD99E48"))
    {
      return 19;
    }

    else if (!strcmp(__s1, "FB75B1EE028F765D95134B65BAFD26602EE879B247F31514268AFE1DF00830D4"))
    {
      return 20;
    }

    else if (!strcmp(__s1, "C8CAD3DF32303A6876151218FAAA63CA0642964F0528B51E0F3BBA792A0FA006"))
    {
      return 21;
    }

    else if (!strcmp(__s1, "55DDF08ED5B641C5048444150A2D58A930D81F86EEA506CD8B4073F64FC0F1C2"))
    {
      return 22;
    }

    else if (!strcmp(__s1, "C4B3D90E89BC6B96BEB336D1A17757038334C2A490EDF56428037F1BC405BF70"))
    {
      return 23;
    }

    else if (!strcmp(__s1, "E0822A12A8DD1B222198A771537F2CE4899EB45BC94D7854E0E6FA983E6EBC89"))
    {
      return 24;
    }

    else if (!strcmp(__s1, "33634F0DC72BA827D588E38DC75C388CF4976E4671D85148780CFAFD262B07FB"))
    {
      return 25;
    }

    else if (!strcmp(__s1, "FD6F91B4C067953424B95F0B332F0FB4A64F7E43DC4D6E8CDE26B1D5D7C07A42"))
    {
      return 26;
    }

    else if (!strcmp(__s1, "50E7E1AAC46F3CF79A6B3BB2DDC0BCDCF0ACD9011439415E47AEA7B6579F3EA8"))
    {
      return 27;
    }

    else if (!strcmp(__s1, "B6B78FABA9FD12B688986DC5EA4D4B8B731265EDEC1E5AE52B0CAA6FC31801F2"))
    {
      return 28;
    }

    else if (!strcmp(__s1, "25C93B5B4A76FFE8A20CA68271CF612F43D0B5504B6680945F3BB046DA47213A"))
    {
      return 29;
    }

    else if (!strcmp(__s1, "511B8B14F417FD34A16CC128C14014AD2B4C5A60B3B053D963C78631DD6B3B89"))
    {
      return 30;
    }

    else if (!strcmp(__s1, "09ADF2F2D849AAB1B547CE687B45B30560D5965A6EE176E97CBC14EB63728DE2"))
    {
      return 31;
    }

    else if (!strcmp(__s1, "8C96A68570A6DF5B4ABA9577C27042A37A60B8FBD6BC9DE3F909EC683406A5CD"))
    {
      return 32;
    }

    else if (!strcmp(__s1, "80C734FBB111112ADB288D1CA5E1A6D5381987D38F4DFA08EFE8CC3C5F1CF131"))
    {
      return 33;
    }

    else if (!strcmp(__s1, "F4B1ED932C463D5EE2A9E1F0BEC7DDE12141635B8C1BC09662243EA36A1E2ECE"))
    {
      return 34;
    }

    else if (!strcmp(__s1, "932639B5CA9FD3BE98F2787A2CDE095AAE9CE2D64A911486D12757EFBFD85140"))
    {
      return 35;
    }

    else if (!strcmp(__s1, "C2DF6BB1B96D7879744E5D54DEB55C12D7A9ECFF52AF539FC1FA63882B058A70"))
    {
      return 36;
    }

    else if (!strcmp(__s1, "7B36DACFCE6FC736238A397E5EF2F7E25BE954A649117EE12A916CE79F75B94A"))
    {
      return 37;
    }

    else if (!strcmp(__s1, "23C55391915968963B369CFA8F5BE79A370ADD2CB37A32A0C9267269406EC6E8"))
    {
      return 38;
    }

    else if (!strcmp(__s1, "B664BC44BBFB5AB784B0240FFB637DC636A9B7CEE13D6D556ED1D4ED56E9DEF8"))
    {
      return 39;
    }

    else if (!strcmp(__s1, "0559E51C335EC81412374E33F830E804DF39F2FF796E95308A25A8A8BFA0475A"))
    {
      return 40;
    }

    else if (!strcmp(__s1, "08E5DC7B9F52DFF7963D2715D3927A1356E247326CAF5C76830A7D7227B991B0"))
    {
      return 41;
    }

    else if (!strcmp(__s1, "3A6B5C3F24147C27899AEB7FF2FE3FB579A0D79BE4AB9BE54E7F31F7AED99F24"))
    {
      return 42;
    }

    else if (!strcmp(__s1, "1394031F165B7EE472518C80605434939287CE630C3E2BF45774C422646BDB52"))
    {
      return 43;
    }

    else if (!strcmp(__s1, "2AD526A49877323714C9104CAF0E3F117082A43D0955315AF0F43F7AADFF2586"))
    {
      return 44;
    }

    else if (!strcmp(__s1, "656B51D5FF08D489CFD54BA967A44D9FBB3DEE2BEF089EADFF59F0176430773E"))
    {
      return 45;
    }

    else if (!strcmp(__s1, "5ABE83ED58C646C0795991EFC53EFAF95AD3FA933AFD23A5181FDC1D4DFDFBA0"))
    {
      return 46;
    }

    else if (!strcmp(__s1, "CD2FFA0725298FE71DCD34C05D62ABC16C9F0A5690297DF5376D65198C5D7890"))
    {
      return 47;
    }

    else if (!strcmp(__s1, "B1981D6FA7779DA1E867116607CFA5B05E44C5C8D8A9E8AD1906FEF7F8BA1874"))
    {
      return 48;
    }

    else if (!strcmp(__s1, "B2D70BAA5FA87BB6C253C5314B6E833D882783F1E906897B196FCC4D6572D5C6"))
    {
      return 49;
    }

    else if (!strcmp(__s1, "97566BDFEF237739AC2EFF164112983D98FCFAC0EE4F30C671D4908D02520208"))
    {
      return 50;
    }

    else if (!strcmp(__s1, "F7FED94B5F000049299482FDF5F0D7700B1A29309A0313344D1B861FDC715239"))
    {
      return 51;
    }

    else if (!strcmp(__s1, "DE73E30C620D682FA8317A0FEB5087A2C63811110674D46B9894D955808CBC9E"))
    {
      return 52;
    }

    else if (!strcmp(__s1, "B942A1DFEF5624B827CF986CC919BB4891C1C421645311F2355CE6766AEBEF2E"))
    {
      return 53;
    }

    else if (!strcmp(__s1, "9AD2DE6034B18A80CF5573485FEEE0B7EBF72DF6DD292271C9B412FBDF8037C5"))
    {
      return 54;
    }

    else if (!strcmp(__s1, "B4E21A931309227166902DC5A3E8BACAE69D267A7E733A61139712AC108C6E4E"))
    {
      return 55;
    }

    else if (!strcmp(__s1, "3EFF071A6AD7AF2F6FD8A87059C9CDD5937E87D8B9B4D215C449748133129BDE"))
    {
      return 56;
    }

    else if (!strcmp(__s1, "EE48140733BA4D00D8E6CB099101E0BBB6FDB2F71FC05FC0FEAC8A6CF3100B14"))
    {
      return 57;
    }

    else if (!strcmp(__s1, "AD07330BE6EF87E08C9E5D058B4CBD9F71C39D7C1B916A834F263B5E7B3DFC43"))
    {
      return 58;
    }

    else if (!strcmp(__s1, "2BBC664C4BF8238D5FC7A5376438D13CE61B9EBC1FF8EC52F6F5A80543BEACD4"))
    {
      return 59;
    }

    else if (!strcmp(__s1, "B0FE94C089261C381766B5366AEB1C6ACBF46BC57B4298D568C5EDFCABE30A8A"))
    {
      return 60;
    }

    else if (!strcmp(__s1, "0B5AF8D437BA25AB6225EADB7A0FC92659AAB2122AC993E00CFA2F83B0E143B3"))
    {
      return 61;
    }

    else if (!strcmp(__s1, "79E88035C9BC883D403F17831B8C9264E643C6B76E9B3C1451B49B0F672C32BF"))
    {
      return 62;
    }

    else if (!strcmp(__s1, "AA1E812506867A5F2C54D3BA3268DB5C4BB2C6B0E4F500340DD23C4E1E637D9D"))
    {
      return 63;
    }

    else if (!strcmp(__s1, "295D65BB175E4E4EEF9003E008E093043C9B8CE43190BE0A2D8F1771F9837033"))
    {
      return 64;
    }

    else if (!strcmp(__s1, "4BF63E209F7D92B4E8341476C80013664D3299327C72E7A7F0D16E1CBD4904FC"))
    {
      return 65;
    }

    else if (!strcmp(__s1, "3476066F46CC277DE7616AAAD8FCDF2C28DA42293B231F74A62159EB6EDAC78C"))
    {
      return 66;
    }

    else if (!strcmp(__s1, "3856FBD8576C0AA988700D7EF5787AAAE94A3BBFBB393B0426FA9D379DA69C91"))
    {
      return 67;
    }

    else if (!strcmp(__s1, "260130B343BA0695AB911D986B3870FA0CCD0EC58E6F55895A856F37201CE9F8"))
    {
      return 68;
    }

    else if (!strcmp(__s1, "100299043F027ADADB62685130C7FBE549E29F08B58C365844FF8EC25BAEEAB0"))
    {
      return 69;
    }

    else if (!strcmp(__s1, "547021D0E82D62B7841769A23FC7FE04F7A63B8A0528A3F6E4C67E8B9420360E"))
    {
      return 70;
    }

    else if (!strcmp(__s1, "76F5A23AACC27615C980BE3E58B52994192195866836855BCA7C3F885796297B"))
    {
      return 71;
    }

    else if (!strcmp(__s1, "5D4640C1160E691CF9E1DA7FE475482756D03567716B9856424469B31049A457"))
    {
      return 72;
    }

    else if (!strcmp(__s1, "1FFBA951E06F1A7810DC823264210F0C13273E454D699383F3D6265630FEDD53"))
    {
      return 73;
    }

    else if (!strcmp(__s1, "9E7E7B3180DA596EBA2925972639C8DC058E97904ADA86E8FA31E691D63CA97B"))
    {
      return 74;
    }

    else if (!strcmp(__s1, "0D43CB377576A411251DB7D5579117D02FC1BB178830D97B5332A806AC122B37"))
    {
      return 75;
    }

    else if (!strcmp(__s1, "ECCE75AB7F80F9519A3E08E3A0EE71610AE67E3B82829786B02D98C09276F560"))
    {
      return 76;
    }

    else if (!strcmp(__s1, "D7642F4CD8A1F1052D8874FFCB84623EEB5AD8DB476AAA36BB13F44E0122717D"))
    {
      return 77;
    }

    else if (!strcmp(__s1, "35E9B0A78729DBBE416E11951D26DDC657D957CE37E23B41A2915BB6CC8CF792"))
    {
      return 78;
    }

    else if (!strcmp(__s1, "FE4E8A2782700A8DEC84E195627096B91A904FF6F486B78EF381501FB9667E0F"))
    {
      return 79;
    }

    else if (!strcmp(__s1, "C04589D08BD1AA2481137A423CC2E81C537B75011557AB0EA579F58E489D9981"))
    {
      return 80;
    }

    else if (!strcmp(__s1, "A1CD5E72A4CAD33DD4C2190F293103B9FD8B40FFE76B1A99A195768465964F91"))
    {
      return 81;
    }

    else if (!strcmp(__s1, "7C3CD59A80673DD0787DF037FB1FB45E0EB635BFDB2554E10CBF5D056FEDAB78"))
    {
      return 82;
    }

    else if (!strcmp(__s1, "E484E42F34BF2E406D25EB38451C67D3C3C9CB9DEB9222C4F5E21E7E6729C787"))
    {
      return 83;
    }

    else if (!strcmp(__s1, "992E7CAEB9808CFC06F5E69E0B80D0ABB3328FC59FA76FED7BB9529EBBC6E484"))
    {
      return 84;
    }

    else if (!strcmp(__s1, "A6C2B5EE1745CD5EB5C81F2B31F5E946A0C1BDC93B226BB05571EFA08555EF8F"))
    {
      return 85;
    }

    else if (!strcmp(__s1, "18487C9D7CEF0D61908387ACBCC7316000F44757B4F9C98EA18217C35C6ECF85"))
    {
      return 86;
    }

    else if (!strcmp(__s1, "274A1E04D620A2A93E0AAFC7DB5F0BC3A6322D745709FD3011852A7608D0DC59"))
    {
      return 87;
    }

    else if (!strcmp(__s1, "E21086636B17AA11D0ECA0545AB90C82D396EB03C6D33A9DE49DEEC71BFEC9A3"))
    {
      return 88;
    }

    else if (!strcmp(__s1, "E4079A9FE3685ED6370986B0373FFC91E49069A610571534C42255467036D7CD"))
    {
      return 89;
    }

    else if (!strcmp(__s1, "0AF6A9208DBB7C0C06A19C4C9090BF87CF00BBEE2BDFD9E0C49423DD641C1174"))
    {
      return 90;
    }

    else if (!strcmp(__s1, "11F678510139CFDE77DC68F07F633C61D28564C9B207D45849B5E6AB72B41E0A"))
    {
      return 91;
    }

    else if (!strcmp(__s1, "0D32627A10C5DB983D8E5DF466E154001CBB4E945D22A4E280A08C8D0F1701A7"))
    {
      return 92;
    }

    else if (!strcmp(__s1, "DFF91EC9DAE4F9D14485F569D87B6AC75F93DD47C850ACF09E9DD7A3D0EFCE8A"))
    {
      return 93;
    }

    else if (!strcmp(__s1, "D1922B4CF1F4DC1E2062378D34EE4E6EAB398BD0417BC95E5EF60C5C1F53E035"))
    {
      return 94;
    }

    else if (!strcmp(__s1, "EED11884758646FD70438F8D2661EC13F25DF1E40EC651E073736D2EFDAB9F0D"))
    {
      return 95;
    }

    else if (!strcmp(__s1, "3FAA4DE8275531852B39C91E52291523AEA993A6114D2CF7645F7C8AC1EF27CE"))
    {
      return 96;
    }

    else if (!strcmp(__s1, "2660D91E9E44E8375C647F1F4FDD89923B3BFA26A3AF29D5937BAF8EF1E10CFE"))
    {
      return 97;
    }

    else if (!strcmp(__s1, "6060A012307BC0711368543129DC26F4493F2C5C30CAF9D4F782C065929930B3"))
    {
      return 98;
    }

    else if (!strcmp(__s1, "6CFA2D1125EAFC658FDF0E2F1A1B4F8D315296A1AFB116D0A8ECF669C026FF69"))
    {
      return 99;
    }

    else if (!strcmp(__s1, "9C397DD48F0AD6AAD1F9B2ABA077E5808FA3D4E452B659013FF3CEC6D1EB1472"))
    {
      return 100;
    }

    else if (!strcmp(__s1, "B6C42286FD0AB628E79B9D4F5F10DC31C2DFD460570800BEB5C9E53651363C7D"))
    {
      return 101;
    }

    else if (!strcmp(__s1, "8F37B8C186E20EAB68B65FA965112E8C106205370CA0829C3EBD548C49C99A46"))
    {
      return 102;
    }

    else if (!strcmp(__s1, "7D8633F6EB10ABA43002BB46D28FA26BFFA1093AB39728908221CE3FD922C72D"))
    {
      return 103;
    }

    else if (!strcmp(__s1, "E01BD71065BD9CE02CFEEC935E09F6DE3C3B9EFAED8F187A533C6321069B4D85"))
    {
      return 104;
    }

    else if (!strcmp(__s1, "6FFBFD65F64B0F892C812D9952748E8632E02C4DF155F5E233927E6D0DC88D38"))
    {
      return 105;
    }

    else if (!strcmp(__s1, "5DCA18DF36F9FA665E30157E71359C15F04492B59DA944CC2B10D7A925843DA7"))
    {
      return 106;
    }

    else if (!strcmp(__s1, "81E23B94D526C5353E9E499DE4D53C13BAC39B09D64961C3259B99425E493446"))
    {
      return 107;
    }

    else if (!strcmp(__s1, "E2D94E3051875514422124C186B05CDA6F417AF1FC67511A17055B65BED227AA"))
    {
      return 108;
    }

    else if (!strcmp(__s1, "EEC15933C85F49CDCD9A4DC75821303FD2E5E1A8E2651667DB103FF51457DF71"))
    {
      return 109;
    }

    else if (!strcmp(__s1, "A6DE7D11FD45FD0B0F5541862F786FAAA17E530F3CBAC5CE63EFD6C7B7B8EC27"))
    {
      return 110;
    }

    else if (!strcmp(__s1, "2C9ACA342CA7C8F4A29CA1C798155F709AC8B8D95F0D20C549DBC00F1C42184D"))
    {
      return 111;
    }

    else if (!strcmp(__s1, "54D70702DEC6F85C65B8D1E26F089610058B0CDC6B23440F6FD07F26E6E23315"))
    {
      return 112;
    }

    else if (!strcmp(__s1, "5851D9888A5EE313F6D80CC60F6BB6ADFC20BB0BA8D9BED753F04382DF6BED1A"))
    {
      return 113;
    }

    else if (!strcmp(__s1, "0AAC94B02176D8B144479EAFEE546A608C8B5E61D7A27481868626A7820E0CB1"))
    {
      return 114;
    }

    else if (!strcmp(__s1, "EC02EE62A95DE2B0B2BC9C65A400E1318CFD7FFA894EECC7B23F8FB164A10C08"))
    {
      return 115;
    }

    else if (!strcmp(__s1, "D36BDC945E9A3C2158D269457AE35CC5AD63543965D991AB68A2CC0556E31D50"))
    {
      return 116;
    }

    else if (!strcmp(__s1, "E9FDDF0E4E3D3ABB4D40C135F207C0310E5BE4CCF2EC1099CB89594DD756B745"))
    {
      return 117;
    }

    else if (!strcmp(__s1, "19FCC75261554C74A79C9151422F265347FC6282808C4BB8E9627195837B3682"))
    {
      return 118;
    }

    else if (!strcmp(__s1, "53E08B2D38CDBBC0D198B95302BCC632B50E773651E9BA4C57373B002114CBBC"))
    {
      return 119;
    }

    else if (!strcmp(__s1, "972B60C198C39199A11F25454037CADA381BB118BE18D850A36534F88A82B7F1"))
    {
      return 120;
    }

    else if (!strcmp(__s1, "244B94B5F2129A5A0083F3661EAC9C6B9EB5FB62A499E6ED236452F5BE6828F5"))
    {
      return 121;
    }

    else if (!strcmp(__s1, "FD406D36CD5763CFC9F0DD6C37C7BDC528ADF3990CF9725229F4258C1758C94D"))
    {
      return 122;
    }

    else if (!strcmp(__s1, "5537928133BBD235A03487186F42FBFF9D0FC45873C83FD5219EB5EBF500ED10"))
    {
      return 123;
    }

    else if (!strcmp(__s1, "75D1CF68BBA66F3E658B115EF614F1449D832863CAF5F46D092488791378897F"))
    {
      return 124;
    }

    else if (!strcmp(__s1, "63CA0F7A21417297C42CDF8868259FBCECF5C6A5C1C994C3A1CA5F608179B458"))
    {
      return 125;
    }

    else if (!strcmp(__s1, "F6D454657EA6A999B3D168C1A68D6592B2F348BA088B279DBF0A992754767224"))
    {
      return 126;
    }

    else if (!strcmp(__s1, "42EA38C66C2CC54A764D5E204FF38F3402542A5F05B7731D549F22D745429051"))
    {
      return 127;
    }

    else if (!strcmp(__s1, "37C7DEA7C7AC62E48672D62B73746ED032AC86A05AA223DB4F373D44F106CD6A"))
    {
      return 128;
    }

    else if (!strcmp(__s1, "F942A7256C77ACD182AE0B767F21133B11937660A61610A18CD14087D1F2F71C"))
    {
      return 129;
    }

    else if (!strcmp(__s1, "AC7E4629ABFA704A6369754CB199383D2901F0916E230FB75D765420550E8244"))
    {
      return 130;
    }

    else if (!strcmp(__s1, "6368DD78E9738AAB3001F4C17EBE26BFB0414CDCC1399D092A48AB5A57536454"))
    {
      return 131;
    }

    else if (!strcmp(__s1, "26456E27CBF6165D84C883AC666AF50E5EAAA39D07887C37BD3A9BD26A74B2FE"))
    {
      return 132;
    }

    else if (!strcmp(__s1, "DD96D75C3E233EE9B4528803691C00E98D5F49F2B4B3B83676332ABFBB65DE07"))
    {
      return 133;
    }

    else if (!strcmp(__s1, "7262FC4EB2434704063840AB716EF14B50F3A0E5E3457E8EBF9E014325CAE94F"))
    {
      return 134;
    }

    else if (!strcmp(__s1, "27A93DA3DF54447DCB9F371C54907BEFA8F17B7FA905EDAC2B523C7A0D93A918"))
    {
      return 135;
    }

    else if (!strcmp(__s1, "038FA673BF47F15B7C5236E4863A96C910C3993AB31529A041DE199F3EEB66CB"))
    {
      return 136;
    }

    else if (!strcmp(__s1, "89DBD24AAAD1D4D50F3F74A7040B52C5B06B4768F1E09DC89D4067D243744882"))
    {
      return 137;
    }

    else if (!strcmp(__s1, "9EB2D21E75D0AA677C8D110763485DB3A78262C89D05CA0C3AF7EBD2D6AB99DD"))
    {
      return 138;
    }

    else if (!strcmp(__s1, "00EB2F035A98609505AB8DAB9B98D1FECEAA766F368932F7FE6316AE8BAEFBE0"))
    {
      return 139;
    }

    else if (!strcmp(__s1, "FED7B076A3D7DE52B6D9A21D14FB1A49BABF975B73BE74181C4EA26976162724"))
    {
      return 140;
    }

    else if (!strcmp(__s1, "903B8B51F5368A75F9777D9155C6A2664116770701ED241A6D1662131A802333"))
    {
      return 141;
    }

    else if (!strcmp(__s1, "2A5A81F290FDE6D31DB132DD493737A7252C441023286294F3C77CE48DD4E2F0"))
    {
      return 142;
    }

    else if (!strcmp(__s1, "0C60DB8A2A73C9B343C4B279EDF24580976BD74BD0294B1AAC17B0A4273D8C28"))
    {
      return 143;
    }

    else if (!strcmp(__s1, "BA7A33DF7A125E9EE5C1036DD6DADB3B74CC4B9BA9C5C1B235C131E70B7B4E41"))
    {
      return 144;
    }

    else if (!strcmp(__s1, "EA4B7DF630D01A5FC30F51DEEC420CB0F667CC57639F1C1D8E67D97B12524E0C"))
    {
      return 145;
    }

    else if (!strcmp(__s1, "7B872939683DD4D93E917C20089932C93AACDE7E7C0738CB78026B6FC178B1D9"))
    {
      return 146;
    }

    else if (!strcmp(__s1, "B80C09BAE4062CCC534F6E6EF6EA6E0ABEFF12048A342EB3138E7B76890D8D3B"))
    {
      return 147;
    }

    else if (!strcmp(__s1, "11221127E966E92C6C18F64D312E8C9AF73DB3A9DB792E4442FCECE644A8E7B1"))
    {
      return 148;
    }

    else if (!strcmp(__s1, "A5F302F870E09D718474CBCADD4E0B3589351A5007777F1B805169B54226B875"))
    {
      return 149;
    }

    else if (!strcmp(__s1, "615761368EF9DB43D1A8DF2EF1CC087B17906454F025A1E1C5BB95B022582B9B"))
    {
      return 150;
    }

    else if (!strcmp(__s1, "D97205C2B224673AE923C3A7A003D96258A1A774E1C9E3CD513B0706C6657D48"))
    {
      return 151;
    }

    else if (!strcmp(__s1, "AC00030F77E6F4E41BF49DC8D7A42C68813DB0C3B652C340B340C01873EB0AB7"))
    {
      return 152;
    }

    else if (!strcmp(__s1, "F2F4280636DC1065AEFE537517EE6B816C8133EF2E5C106D92DDD2B0E0DFC69D"))
    {
      return 153;
    }

    else if (!strcmp(__s1, "A739EE6D2886FEBC60795D1D8803BF19A1A3463541AB6024A90DBB8E4650F589"))
    {
      return 154;
    }

    else if (!strcmp(__s1, "E44B08E42854960D4B0277D46D6181F8B07FAC3C3CCF5A6B31AA9DC9FA4057D6"))
    {
      return 155;
    }

    else if (!strcmp(__s1, "C0909793BE0330B378C0CD09F0D9B9F09F599EC8C6B94C37ABA9011E83596F90"))
    {
      return 156;
    }

    else if (!strcmp(__s1, "F365A0CC0EEB38797FCD82D5E4AC3B2ACF44EB34D333D4AB1AD8D8891B7F8892"))
    {
      return 157;
    }

    else if (!strcmp(__s1, "96775CCE99E1AD0C194329938D933579304BAD868B3720C34D20D27536E7AEE7"))
    {
      return 158;
    }

    else if (!strcmp(__s1, "A2B9B85B3AADE88EBF43D3DB522C31E6A781700C0112047F72FA920A638A69BE"))
    {
      return 159;
    }

    else if (!strcmp(__s1, "F98BB9D35C454CA00A884F6B9621A30F2C78A880A96D81B5E661391D74E8455A"))
    {
      return 160;
    }

    else if (!strcmp(__s1, "D2D14661D9692EBD5065F06CB4C2AC7DD14339CAEA538D5AFA4A2B5813E87D5D"))
    {
      return 161;
    }

    else if (!strcmp(__s1, "28B92DE785184753FAF5508E080CB8FE784D6A5214E5E6382751D52534A72FCE"))
    {
      return 162;
    }

    else if (!strcmp(__s1, "CA5FDEAD1B2DEC16F5B525E9AE3CA7C4EDC163EEE950D7A77A7C5284A607369F"))
    {
      return 163;
    }

    else if (!strcmp(__s1, "D5D2B254E0B808929711EBFC999F2E0F884DB9876C90B056E230E4DD6D3261CE"))
    {
      return 164;
    }

    else if (!strcmp(__s1, "12ADE1668F06776E2CE9CC2CC563E0BD45A5346C6D883D748FD3C132E7EB8A2F"))
    {
      return 165;
    }

    else if (!strcmp(__s1, "12038A812C239440324EDCEB54DA13B6B7D0C4D89F61582F9A4628C4409FAAE6"))
    {
      return 166;
    }

    else if (!strcmp(__s1, "316635C054256728753D20516A98550DBF581EBA16691321F7BBCE3A9177E09D"))
    {
      return 167;
    }

    else if (!strcmp(__s1, "0E8C0AF79B626C37D4BD04D61ACC6B1841B7F784FEF6692E84A2B1971C771CF6"))
    {
      return 168;
    }

    else if (!strcmp(__s1, "152B31D6CDC80AD2A7F1593F1E81074F9FEB957043B213E8537F5C9098DFD449"))
    {
      return 169;
    }

    else if (!strcmp(__s1, "E2175386E8858E1E5273EB120A19C734896FE34E529B7720E38F90C3E66633CC"))
    {
      return 170;
    }

    else if (!strcmp(__s1, "89FBB3BDB9379AD11D47A5F312EDF73706C589F07B8C14BE99A3D604DA840455"))
    {
      return 171;
    }

    else if (!strcmp(__s1, "CFEE285EA42317F1E8CE16B6BAED451F1D8029F8C057963B2486EA9093B3CD28"))
    {
      return 172;
    }

    else if (!strcmp(__s1, "1F6D45D5DEB05AFFD7C7C1DAC38D882FA9A9D616990FBB135621C1F0D30CA596"))
    {
      return 173;
    }

    else if (!strcmp(__s1, "BEE28431C5E817DF3C9C265B3672660D03A6C89EE5236507323554958AE59578"))
    {
      return 174;
    }

    else if (!strcmp(__s1, "A5AD2AAF51022A15627C4C6C3F18D612BFF2CA7F01F65EC1C26965ED6DDC6563"))
    {
      return 175;
    }

    else if (!strcmp(__s1, "D51129E2277ED8B7AE37E82DA9F8FEB9C3FDB71EC4E4B5548B4D3763A89AF1C2"))
    {
      return 176;
    }

    else if (!strcmp(__s1, "24B2EDEBE37A35C073BBC2B83505D52B7FDB9C121406C6308CF528457883D4BE"))
    {
      return 177;
    }

    else if (!strcmp(__s1, "0C7AC4ECF65C2CA6215B602A5C050FB69BFF2BA322B47A6890E2F0EE8CA922C0"))
    {
      return 178;
    }

    else if (!strcmp(__s1, "6634D05466F515CAD98B1548EE7DCC52386712E059BE4C1A3FBB157892D9D61E"))
    {
      return 179;
    }

    else if (!strcmp(__s1, "41E40C57A9236569333335DEA9CB52F0058A4BF366335B45406F04F7E0A93CD5"))
    {
      return 180;
    }

    else if (!strcmp(__s1, "2F5E861CD13CBCECC15CB691FCC7DCE54FC0755F96F1289D26AFB056BD6788D5"))
    {
      return 181;
    }

    else if (!strcmp(__s1, "7EFBE7B468F2C8FF4C34E67EDC7E8F80DB3E295C6221F8408D4440A78430C64F"))
    {
      return 182;
    }

    else if (!strcmp(__s1, "D67C31C99E39309E5E09E11F7A5E7B3576972C57135463976A5539814860D051"))
    {
      return 183;
    }

    else if (!strcmp(__s1, "3216E3D0006FC749B832DD3C33FF4B7CAE3CE455B3FE030A3EB061DC0356D829"))
    {
      return 184;
    }

    else if (!strcmp(__s1, "FF9225FC7116F7583194D2D2F948E6CFD131F9020C7B7C9D61A8DE2F46571C5F"))
    {
      return 185;
    }

    else if (!strcmp(__s1, "E5FA747F28EBFE3E4BBD4BE279044F914B09502E3EB62035341300536242F90B"))
    {
      return 186;
    }

    else if (!strcmp(__s1, "C517BA395C2A64392D1C11AE86475E6F476E22867252458FCC5152B58A43603D"))
    {
      return 187;
    }

    else if (!strcmp(__s1, "2FAB2C822F900089CD78CBC4AB947F23F8CD8C71D0257BB20870F2437F345683"))
    {
      return 188;
    }

    else if (!strcmp(__s1, "860E5D173A5DA8DE4C5A88EDDF57BFB0D9E7D010DFD109852AF3D1C8480DE485"))
    {
      return 189;
    }

    else if (!strcmp(__s1, "A2AEBDCCCD11BCF937DC0DE23C78762A9FD1425DA34EE911F615F041D947D3CE"))
    {
      return 190;
    }

    else if (!strcmp(__s1, "C1F228965CE72DCBDF0563CA9125430BFC5215644CF7426375AAE844D9C393CF"))
    {
      return 191;
    }

    else if (!strcmp(__s1, "7973408EAAC4FAF261DDB68AD698E34EFC1018CD38876DB49DA34E1C044F2CFC"))
    {
      return 192;
    }

    else if (!strcmp(__s1, "F5B97BA71877E7014D8BB80B1B5750123154A26D4FD86B41AE0525EDEF44A41B"))
    {
      return 193;
    }

    else if (!strcmp(__s1, "1B57426DF9B957C95C4296A880A1D75B70200B72E8554E7D713D37098154E907"))
    {
      return 194;
    }

    else if (!strcmp(__s1, "3473F3E1E2A85DAEEB664F0C421CDF84D3B27258796FFBB2881208B73DEFC007"))
    {
      return 195;
    }

    else if (!strcmp(__s1, "CBB7FC5C90F6950C90B30709E38AC295085E9F9A5D82EB5DF56E89752A1E0252"))
    {
      return 196;
    }

    else if (!strcmp(__s1, "996E91405229B0F31165936664CCE9F7D3145963C1A14FA9DD57A320E349F123"))
    {
      return 197;
    }

    else if (!strcmp(__s1, "727820125C45F365E03E3C14E8202CFF1E0049F24543B5D589F3956E11F5C581"))
    {
      return 198;
    }

    else if (!strcmp(__s1, "95DD082534B76465BAA6B38551429C11CD11A77CB351740B05F3D18D2CD2B990"))
    {
      return 199;
    }

    else if (!strcmp(__s1, "294111BEC0EE4CFDDCE430D197B75A1CB09E21EB1C822E16CD1CBCC982D46A3F"))
    {
      return 200;
    }

    else if (!strcmp(__s1, "7B4CF9B631F81D78F2CEA2F4869D0137BE4CA667AE9B13DB22A617C2BA15C075"))
    {
      return 201;
    }

    else if (!strcmp(__s1, "EA870EDD0C8AD026DB44FB5C6AC53D8875D62255F794C489EAB9F8222F0616CB"))
    {
      return 202;
    }

    else if (!strcmp(__s1, "2D29DA77B4EF8E7B1D2F3F764587274747D1C2AB05C053B4CE38AE701116BF6A"))
    {
      return 203;
    }

    else if (!strcmp(__s1, "CA1DD5B830AB9668FC5EBD5904EB9B0113C766FCE57EF59AEC58982AE744413A"))
    {
      return 204;
    }

    else if (!strcmp(__s1, "B0D00D3E15F0D45E0DAD2FE819496F3837110BDADE01AC3A17862CDDACDEE5AB"))
    {
      return 205;
    }

    else if (!strcmp(__s1, "83156D57355E76E46E7319E18EA9D6A8D20E78958733028FD3F74C3FD9B0BCC5"))
    {
      return 206;
    }

    else
    {
      return 207;
    }
  }

  return result;
}

const char *sub_24D796F08(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &off_279653B18[a2];
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = off_279653F18;
LABEL_7:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0xF)
  {
    v4 = off_279654118;
    goto LABEL_7;
  }

  return "Invalid";
}

uint64_t sub_24D796F60(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &unk_24DA8ADD8 + a2;
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = &unk_24DA8AE58;
LABEL_7:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0xF)
  {
    v4 = &unk_24DA8AE98;
    goto LABEL_7;
  }

  return 16;
}

uint64_t sub_24D796FB4(uint64_t a1, unsigned int a2)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      if (a2 >= 0x14)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return a2;
      }

    case 1u:
      v4 = a2 - 20;
      goto LABEL_21;
    case 2u:
      v4 = a2 - 30;
      goto LABEL_16;
    case 3u:
      v4 = a2 - 62;
      v6 = a2 - 62 >= 0xC;
      goto LABEL_28;
    case 4u:
      v4 = a2 - 74;
      v6 = a2 - 74 >= 0xB;
      goto LABEL_28;
    case 5u:
      v4 = a2 - 85;
      goto LABEL_23;
    case 6u:
      v4 = a2 - 89;
      v6 = a2 - 89 >= 0x12;
      goto LABEL_28;
    case 7u:
      v4 = a2 - 107;
      v6 = a2 - 107 >= 0x11;
      goto LABEL_28;
    case 8u:
      v4 = a2 - 124;
      v6 = a2 - 124 >= 5;
      goto LABEL_28;
    case 9u:
      v4 = a2 - 129;
LABEL_16:
      v6 = v4 >= 0x20;
      goto LABEL_28;
    case 0xAu:
      v4 = a2 - 161;
      v6 = a2 - 161 >= 7;
      goto LABEL_28;
    case 0xBu:
      if (a2 == 169)
      {
        v5 = 1;
      }

      else
      {
        v5 = -1;
      }

      if (a2 == 168)
      {
        return 0;
      }

      else
      {
        return v5;
      }

    case 0xCu:
      v4 = a2 - 170;
      v6 = a2 - 170 >= 8;
      goto LABEL_28;
    case 0xDu:
      v4 = a2 - 178;
      v6 = a2 - 178 >= 0xF;
      goto LABEL_28;
    case 0xEu:
      v4 = a2 - 193;
LABEL_23:
      v6 = v4 >= 4;
      goto LABEL_28;
    case 0xFu:
      v4 = a2 - 197;
LABEL_21:
      v6 = v4 >= 0xA;
LABEL_28:
      if (v6)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t sub_24D79712C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_24DA8AEA8[a2];
  }
}

void *sub_24D79714C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24D797220(result, a2);
  }

  return result;
}

void sub_24D797220(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_24D7658EC(a1, v2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void *sub_24D797264(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_24D797318(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(*a1 + 32) - 3) <= 0xFFFFFFFD && ((*(**(a1 + 8) + ((a3 >> 3) & 0x1FFFFFF8)) >> a3))
  {
    v6 = sub_24D796FB4(*(a1 + 16), a3);
    v7 = (**(a1 + 24) + 24 * a2);
    v9 = v7[1];
    v8 = v7[2];
    if (v9 >= v8)
    {
      v11 = *v7;
      v12 = v9 - *v7;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
      v17 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        sub_24D7658EC(v7, v17);
      }

      v18 = (8 * v13);
      *v18 = a3;
      v18[1] = v6;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v19 = *v7;
      *v7 = 0;
      v7[1] = v10;
      v7[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = a3;
      v9[1] = v6;
      v10 = (v9 + 2);
    }

    v7[1] = v10;
  }
}

uint64_t sub_24D797450(uint64_t result, uint64_t a2, uint64_t a3, char *__format, ...)
{
  va_start(va, __format);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 225792) - *(a2 + 225784)) >> 3) < *(result + 96))
  {
    vsnprintf(0, 0, __format, va);
    operator new[]();
  }

  return result;
}

void sub_24D7975E0(void *a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = (a1 + 25062);
  v24 = ((a1[28228] - a1[28227]) >> 3) - 1 + ((a1[28231] - a1[28230]) << 29) - 0x100000000;
  sub_24D7979B0((a1 + 25050), &v24);
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = -1;
  }

  v24 = v11;
  sub_24D7979B0((a1 + 25053), &v24);
  LOBYTE(v24) = a2 == 1;
  sub_24D797A84((a1 + 25056), &v24);
  LOBYTE(v24) = a2 == 2;
  sub_24D797A84((a1 + 25059), &v24);
  v12 = (a5 + 7) >> 3;
  v14 = v10[1];
  v13 = v10[2];
  if (v14 >= v13)
  {
    v16 = *v10;
    v17 = v14 - *v10;
    v18 = v17 >> 2;
    v19 = (v17 >> 2) + 1;
    if (v19 >> 62)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
    v22 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      sub_24D765A14(v10, v22);
    }

    *(4 * v18) = v12;
    v15 = 4 * v18 + 4;
    memcpy(0, v16, v17);
    v23 = *v10;
    *v10 = 0;
    v10[1] = v15;
    v10[2] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v14 = v12;
    v15 = (v14 + 4);
  }

  v10[1] = v15;
}

unint64_t sub_24D797778(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if ((*(a1 + 149) & 1) == 0)
  {
    return a3;
  }

  if (a4 - *(a1 + 112) >= (2 * *(a2 + 225808)))
  {
    return *(a1 + 128) + a3 % *(a1 + 16);
  }

  v4 = *(a1 + 144);
  if (a3 >= v4)
  {
    return *(a1 + 136) + a3 - v4;
  }

  else
  {
    return (~v4 & 0xFFFFF) + a3 + *(a1 + 136) + 1;
  }
}

uint64_t sub_24D7977F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  if ((a2 & 0x10) == 0)
  {
    return 0;
  }

  v9 = 0;
  v4 = 0;
  do
  {
    if (*(a1 + v9 + 328) == 1)
    {
      sub_24D797CCC(a1, a3, a4, *(a1 + v9 + 276), 1);
      ++v4;
    }

    v9 += 96;
  }

  while (v9 != 12288);
  v10 = 0;
  v11 = 13008;
  do
  {
    if (*(a1 + v11) == 1)
    {
      sub_24D797B2C(a1, a3, a4, v10, 1);
      ++v4;
    }

    ++v10;
    v11 += 40;
  }

  while (v10 != 16);
  if ((a2 & 2) == 0)
  {
    v12 = 0;
    v13 = a1 + 12552;
    do
    {
      v14 = v13 + v12;
      if (*(v13 + v12 + 24) == 1)
      {
        *(a1 + v12 + 12568) = 0;
        v15 = *(a3 + 225816);
        if (*(a1 + 48) <= *(v15 + 8 * v19) && *(a1 + 56) >= *(v15 + 8 * *(a1 + v12 + 12528)))
        {
          sub_24D7979B0(a3 + 8, (v14 - 24));
          sub_24D7979B0(a3 + 32, &v19);
          sub_24D765934((a3 + 104), (v13 + v12));
          sub_24D765A5C((a3 + 152), (v13 + v12 + 8));
          sub_24D765934((a3 + 128), (v13 + v12 + 4));
          sub_24D769624((a3 + 56), (v13 + v12 - 8));
          v18 = 1;
          sub_24D797A84(a3 + 176, &v18);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = 0;
          }

          ++v4;
        }
      }

      v12 += 56;
    }

    while (v12 != 448);
  }

  return v4;
}

void sub_24D7979B0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24D7658EC(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_24D797A84(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_24D79D048(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_24D797B2C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v21 = a5;
  if (a4 <= 0xF)
  {
    v5 = a4;
    v6 = result + 40 * a4 + 12976;
    if (*(result + 40 * a4 + 13008) == 1)
    {
      v8 = *v6;
      v9 = *(result + 40 * a4 + 12992);
      v22 = *v6;
      v24 = v9;
      v23 = a3;
      v10 = *(a2 + 225816);
      if (*(result + 48) > *(v10 + 8 * a3) || *(result + 56) < *(v10 + 8 * v22))
      {
        goto LABEL_21;
      }

      sub_24D7979B0(a2 + 200, &v22);
      sub_24D7979B0(a2 + 224, &v23);
      sub_24D769624((a2 + 248), &v24);
      sub_24D765934((a2 + 272), &v24 + 2);
      v13 = *(a2 + 304);
      v12 = *(a2 + 312);
      if (v13 >= v12)
      {
        v15 = *(a2 + 296);
        v16 = (v13 - v15);
        v17 = v13 - v15 + 1;
        if (v17 < 0)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v18 = v12 - v15;
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x3FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v17)
        {
          operator new();
        }

        v20 = v13 - v15;
        *v16 = v5;
        v14 = v16 + 1;
        memcpy(0, v15, v20);
        *(a2 + 296) = 0;
        *(a2 + 304) = v16 + 1;
        *(a2 + 312) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v13 = v5;
        v14 = v13 + 1;
      }

      *(a2 + 304) = v14;
      result = sub_24D797A84(a2 + 320, &v21);
      if (*(v6 + 32))
      {
LABEL_21:
        *(v6 + 32) = 0;
      }
    }
  }

  return result;
}

void sub_24D797CCC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  if ((a4 & 0x80) == 0)
  {
    v6 = a1 + 96 * a4;
    if (*(v6 + 328) == 1)
    {
      v8 = v6 + 240;
      *(v6 + 248) = a3;
      v9 = (v6 + 248);
      *(v6 + 320) = a5;
      v10 = (v6 + 320);
      v11 = a2 + 352;
      v12 = a2 + 352 + 1000 * *(v6 + 276);
      v13 = *(a2 + 225816);
      v14 = *(v13 + 8 * *(v6 + 240));
      if (*(a1 + 48) > *(v13 + 8 * a3) || *(a1 + 56) < v14)
      {
        if (*(v12 + 984) == 1)
        {
          sub_24D79D448(v12 + 360);
        }

LABEL_27:
        if (*(v8 + 88) == 1)
        {
          *(v8 + 88) = 0;
        }

        return;
      }

      sub_24D79FFEC(v12, v8);
      sub_24D79FFEC((v12 + 48), v9);
      sub_24D7A0078((v12 + 96), (v8 + 16));
      if (*(v8 + 83))
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v8 + 24);
      }

      *&v26[0] = v16;
      sub_24D7A0078((v12 + 144), v26);
      if (*(v8 + 83))
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v8 + 32);
      }

      LODWORD(v26[0]) = v17;
      sub_24D79FDF0((v12 + 192), v26);
      sub_24D797A84(v12 + 240, v10);
      LOBYTE(v26[0]) = *(v8 + 83);
      sub_24D797A84(v12 + 264, v26);
      if (!*(v12 + 328))
      {
        if (*(v8 + 75) != 1)
        {
LABEL_21:
          sub_24D7A03CC(v12 + 360);
          *&v26[0] = (*(v8 + 36) | (*(v12 + 40) << 8)) - 256;
          if (*(v8 + 83) == 1)
          {
            v21 = (a2 + 200376);
            sub_24D7979B0(v21, v26);
            if ((*(v8 + 37) & 0x8000000000000000) == 0)
            {
              v22 = a1 + 48 * *(v8 + 37) + 18192;
              if (*(a1 + 48 * *(v8 + 37) + 18232) == 1)
              {
                v23 = ((v21[1] - *v21) >> 3) - 1;
                *(a1 + 48 * *(v8 + 37) + 18200) = v23;
                *(v22 + 16) = 1;
                if (*(v22 + 28) == 1)
                {
                  v24 = *(*v21 + 8 * v23);
                  *(*(*(v11 + 1000 * v24 + 200) + (((*(v11 + 1000 * v24 + 224) + (v24 >> 8)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v11 + 1000 * v24 + 224) + (v24 >> 8)) & 0x3FF)) = *(v22 + 24);
                }
              }
            }
          }

          else
          {
            sub_24D7979B0(a2 + 200352, v26);
          }

          goto LABEL_27;
        }

        v18 = *(v12 + 40) - 1;
        memset(v26, 0, 37);
        sub_24D7A0100((v12 + 288), v18, v26);
        sub_24D7A01C4(v12 + 336, v18, 0);
      }

      v19 = (v8 + 38);
      memset(v25, 0, 37);
      if (!*(v8 + 75))
      {
        v19 = v25;
      }

      v20 = v19[1];
      v26[0] = *v19;
      v26[1] = v20;
      *(&v26[1] + 13) = *(v19 + 29);
      sub_24D7A0310(v12 + 288, v26);
      LOBYTE(v26[0]) = *(v8 + 75);
      sub_24D797A84(v12 + 336, v26);
      goto LABEL_21;
    }
  }
}

void sub_24D797F90(int a1, uint64_t a2, uint64_t a3)
{
  v811 = v4;
  v812 = v3;
  v813 = v5;
  v814 = v6;
  switch(a1)
  {
    case 0:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v9 = *(a3 + 8);
      v10 = *(*a3 + 16) & 0x3FFFFLL;
      v810 = v10;
      v11 = *v9;
      v12 = **(a3 + 16);
      if (v11 == 1)
      {
        *(*(v12 + 200528) - 8) += v10;
      }

      else
      {
        sub_24D769624((v12 + 200520), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v110 = *(a3 + 8);
      v111 = *(*a3 + 20) & 0x3FFFF;
      v810 = v111;
      v112 = *v110;
      v113 = **(a3 + 16);
      if (v112 == 1)
      {
        *(*(v113 + 200552) - 8) += v111;
      }

      else
      {
        sub_24D769624((v113 + 200544), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v171 = *(a3 + 8);
      v172 = *(*a3 + 16) >> 50;
      v810 = v172;
      v173 = *v171;
      v174 = **(a3 + 16);
      if (v173 == 1)
      {
        *(*(v174 + 200576) - 8) += v172;
      }

      else
      {
        sub_24D769624((v174 + 200568), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v229 = *(a3 + 8);
      v230 = *(*a3 + 24) & 0x1FFFLL;
      v810 = v230;
      v231 = *v229;
      v232 = **(a3 + 16);
      if (v231 == 1)
      {
        *(*(v232 + 200600) - 8) += v230;
      }

      else
      {
        sub_24D769624((v232 + 200592), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v283 = *(a3 + 8);
      v284 = (*(*a3 + 24) >> 16) & 0x3FFFLL;
      v810 = v284;
      v285 = *v283;
      v286 = **(a3 + 16);
      if (v285 == 1)
      {
        *(*(v286 + 200624) - 8) += v284;
      }

      else
      {
        sub_24D769624((v286 + 200616), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v333 = *(a3 + 8);
      v334 = *(*a3 + 28) & 0x3FFF;
      v810 = v334;
      v335 = *v333;
      v336 = **(a3 + 16);
      if (v335 == 1)
      {
        *(*(v336 + 200648) - 8) += v334;
      }

      else
      {
        sub_24D769624((v336 + 200640), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v381 = *(a3 + 8);
      v382 = *(*a3 + 30) & 0x3FFF;
      v810 = v382;
      v383 = *v381;
      v384 = **(a3 + 16);
      if (v383 == 1)
      {
        *(*(v384 + 200672) - 8) += v382;
      }

      else
      {
        sub_24D769624((v384 + 200664), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v425 = *(a3 + 8);
      v426 = *(*a3 + 32) & 0x3FFFLL;
      v810 = v426;
      v427 = *v425;
      v428 = **(a3 + 16);
      if (v427 == 1)
      {
        *(*(v428 + 200696) - 8) += v426;
      }

      else
      {
        sub_24D769624((v428 + 200688), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v465 = *(a3 + 8);
      v466 = (*(*a3 + 32) >> 16) & 0x3FFFLL;
      v810 = v466;
      v467 = *v465;
      v468 = **(a3 + 16);
      if (v467 == 1)
      {
        *(*(v468 + 200720) - 8) += v466;
      }

      else
      {
        sub_24D769624((v468 + 200712), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v503 = *(a3 + 8);
      v504 = *(*a3 + 36) & 0x3FFF;
      v810 = v504;
      v505 = *v503;
      v506 = **(a3 + 16);
      if (v505 == 1)
      {
        *(*(v506 + 200744) - 8) += v504;
      }

      else
      {
        sub_24D769624((v506 + 200736), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v535 = *(a3 + 8);
      v536 = *(*a3 + 38) & 0x1FF;
      v810 = v536;
      v537 = *v535;
      v538 = **(a3 + 16);
      if (v537 == 1)
      {
        *(*(v538 + 200768) - 8) += v536;
      }

      else
      {
        sub_24D769624((v538 + 200760), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v561 = *(a3 + 8);
      v562 = *(*a3 + 40) & 0x1FFLL;
      v810 = v562;
      v563 = *v561;
      v564 = **(a3 + 16);
      if (v563 == 1)
      {
        *(*(v564 + 200792) - 8) += v562;
      }

      else
      {
        sub_24D769624((v564 + 200784), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v585 = *(a3 + 8);
      v586 = (*(*a3 + 40) >> 16) & 0x3FFFLL;
      v810 = v586;
      v587 = *v585;
      v588 = **(a3 + 16);
      if (v587 == 1)
      {
        *(*(v588 + 200816) - 8) += v586;
      }

      else
      {
        sub_24D769624((v588 + 200808), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v609 = *(a3 + 8);
      v610 = *(*a3 + 44) & 0x3FFF;
      v810 = v610;
      v611 = *v609;
      v612 = **(a3 + 16);
      if (v611 == 1)
      {
        *(*(v612 + 200840) - 8) += v610;
      }

      else
      {
        sub_24D769624((v612 + 200832), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v633 = *(a3 + 8);
      v634 = *(*a3 + 46) & 0x3FFF;
      v810 = v634;
      v635 = *v633;
      v636 = **(a3 + 16);
      if (v635 == 1)
      {
        *(*(v636 + 200864) - 8) += v634;
      }

      else
      {
        sub_24D769624((v636 + 200856), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v655 = *(a3 + 8);
      v656 = *(*a3 + 48) & 0x3FFFLL;
      v810 = v656;
      v657 = *v655;
      v658 = **(a3 + 16);
      if (v657 == 1)
      {
        *(*(v658 + 200888) - 8) += v656;
      }

      else
      {
        sub_24D769624((v658 + 200880), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v673 = *(a3 + 8);
      v674 = (*(*a3 + 48) >> 16) & 0x3FFFLL;
      v810 = v674;
      v675 = *v673;
      v676 = **(a3 + 16);
      if (v675 == 1)
      {
        *(*(v676 + 200912) - 8) += v674;
      }

      else
      {
        sub_24D769624((v676 + 200904), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v689 = *(a3 + 8);
      v690 = *(*a3 + 52) & 0x3FFF;
      v810 = v690;
      v691 = *v689;
      v692 = **(a3 + 16);
      if (v691 == 1)
      {
        *(*(v692 + 200936) - 8) += v690;
      }

      else
      {
        sub_24D769624((v692 + 200928), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v703 = *(a3 + 8);
      v704 = *(*a3 + 54) & 0x1FF;
      v810 = v704;
      v705 = *v703;
      v706 = **(a3 + 16);
      if (v705 == 1)
      {
        *(*(v706 + 200960) - 8) += v704;
LABEL_562:
        v715 = *(a3 + 8);
        v78 = *(*a3 + 56) & 0x1FF;
        v810 = v78;
        v716 = *v715;
        v80 = **(a3 + 16);
        if (v716 == 1)
        {
          v81 = 4376;
          goto LABEL_564;
        }

        v142 = v80 + 25122;
        goto LABEL_572;
      }

      sub_24D769624((v706 + 200952), &v810);
      if ((*(a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        goto LABEL_562;
      }

      return;
    case 1:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v49 = *(a3 + 8);
      v50 = *(*a3 + 16) & 0xFFFFFLL;
      v810 = v50;
      v51 = *v49;
      v52 = **(a3 + 16);
      if (v51 == 1)
      {
        *(*(v52 + 201008) - 8) += v50;
      }

      else
      {
        sub_24D769624((v52 + 201000), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v114 = *(a3 + 8);
      v115 = *(*a3 + 20) & 0xFFFFF;
      v810 = v115;
      v116 = *v114;
      v117 = **(a3 + 16);
      if (v116 == 1)
      {
        *(*(v117 + 201032) - 8) += v115;
      }

      else
      {
        sub_24D769624((v117 + 201024), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v175 = *(a3 + 8);
      v176 = *(*a3 + 24) & 0xFFFFFLL;
      v810 = v176;
      v177 = *v175;
      v178 = **(a3 + 16);
      if (v177 == 1)
      {
        *(*(v178 + 201056) - 8) += v176;
      }

      else
      {
        sub_24D769624((v178 + 201048), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v233 = *(a3 + 8);
      v234 = *(*a3 + 28) & 0xFFFFF;
      v810 = v234;
      v235 = *v233;
      v236 = **(a3 + 16);
      if (v235 == 1)
      {
        *(*(v236 + 201080) - 8) += v234;
      }

      else
      {
        sub_24D769624((v236 + 201072), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v287 = *(a3 + 8);
      v288 = *(*a3 + 32) & 0xFFFFFLL;
      v810 = v288;
      v289 = *v287;
      v290 = **(a3 + 16);
      if (v289 == 1)
      {
        *(*(v290 + 201104) - 8) += v288;
      }

      else
      {
        sub_24D769624((v290 + 201096), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v337 = *(a3 + 8);
      v338 = *(*a3 + 36) & 0xFFFFF;
      v810 = v338;
      v339 = *v337;
      v340 = **(a3 + 16);
      if (v339 == 1)
      {
        *(*(v340 + 201128) - 8) += v338;
      }

      else
      {
        sub_24D769624((v340 + 201120), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v385 = *(a3 + 8);
      v386 = *(*a3 + 40) & 0xFFFFFLL;
      v810 = v386;
      v387 = *v385;
      v388 = **(a3 + 16);
      if (v387 == 1)
      {
        *(*(v388 + 201152) - 8) += v386;
      }

      else
      {
        sub_24D769624((v388 + 201144), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v429 = *(a3 + 8);
      v430 = *(*a3 + 44) & 0xFFFFF;
      v810 = v430;
      v431 = *v429;
      v432 = **(a3 + 16);
      if (v431 == 1)
      {
        *(*(v432 + 201176) - 8) += v430;
      }

      else
      {
        sub_24D769624((v432 + 201168), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v469 = *(a3 + 8);
      v470 = *(*a3 + 48);
      v810 = v470;
      v471 = *v469;
      v472 = **(a3 + 16);
      if (v471 == 1)
      {
        *(*(v472 + 201200) - 8) += v470;
      }

      else
      {
        sub_24D769624((v472 + 201192), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v507 = *(a3 + 8);
      v78 = *(*a3 + 48) >> 16;
      v810 = v78;
      v508 = *v507;
      v80 = **(a3 + 16);
      if (v508 == 1)
      {
        v81 = 4616;
        goto LABEL_564;
      }

      v142 = v80 + 25152;
      goto LABEL_572;
    case 2:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v33 = *(a3 + 8);
      v34 = (*(*a3 + 16) >> 16) & 0x7FFFLL;
      v810 = v34;
      v35 = *v33;
      v36 = **(a3 + 16);
      if (v35 == 1)
      {
        *(*(v36 + 201248) - 8) += v34;
      }

      else
      {
        sub_24D769624((v36 + 201240), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v94 = *(a3 + 8);
      v95 = *(*a3 + 20) & 0x7FFF;
      v810 = v95;
      v96 = *v94;
      v97 = **(a3 + 16);
      if (v96 == 1)
      {
        *(*(v97 + 201272) - 8) += v95;
      }

      else
      {
        sub_24D769624((v97 + 201264), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v155 = *(a3 + 8);
      v156 = *(*a3 + 22) & 0x7FFF;
      v810 = v156;
      v157 = *v155;
      v158 = **(a3 + 16);
      if (v157 == 1)
      {
        *(*(v158 + 201296) - 8) += v156;
      }

      else
      {
        sub_24D769624((v158 + 201288), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v213 = *(a3 + 8);
      v214 = *(*a3 + 24) & 0x7FFFLL;
      v810 = v214;
      v215 = *v213;
      v216 = **(a3 + 16);
      if (v215 == 1)
      {
        *(*(v216 + 201320) - 8) += v214;
      }

      else
      {
        sub_24D769624((v216 + 201312), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v267 = *(a3 + 8);
      v268 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v268;
      v269 = *v267;
      v270 = **(a3 + 16);
      if (v269 == 1)
      {
        *(*(v270 + 201344) - 8) += v268;
      }

      else
      {
        sub_24D769624((v270 + 201336), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v317 = *(a3 + 8);
      v318 = *(*a3 + 28) & 0x7FFF;
      v810 = v318;
      v319 = *v317;
      v320 = **(a3 + 16);
      if (v319 == 1)
      {
        *(*(v320 + 201368) - 8) += v318;
      }

      else
      {
        sub_24D769624((v320 + 201360), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v365 = *(a3 + 8);
      v366 = *(*a3 + 30) & 0x7FFF;
      v810 = v366;
      v367 = *v365;
      v368 = **(a3 + 16);
      if (v367 == 1)
      {
        *(*(v368 + 201392) - 8) += v366;
      }

      else
      {
        sub_24D769624((v368 + 201384), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v409 = *(a3 + 8);
      v410 = *(*a3 + 32) & 0x7FFFLL;
      v810 = v410;
      v411 = *v409;
      v412 = **(a3 + 16);
      if (v411 == 1)
      {
        *(*(v412 + 201416) - 8) += v410;
      }

      else
      {
        sub_24D769624((v412 + 201408), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v449 = *(a3 + 8);
      v450 = (*(*a3 + 32) >> 16) & 0x7FFFLL;
      v810 = v450;
      v451 = *v449;
      v452 = **(a3 + 16);
      if (v451 == 1)
      {
        *(*(v452 + 201440) - 8) += v450;
      }

      else
      {
        sub_24D769624((v452 + 201432), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v489 = *(a3 + 8);
      v490 = *(*a3 + 36) & 0x7FFF;
      v810 = v490;
      v491 = *v489;
      v492 = **(a3 + 16);
      if (v491 == 1)
      {
        *(*(v492 + 201464) - 8) += v490;
      }

      else
      {
        sub_24D769624((v492 + 201456), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v523 = *(a3 + 8);
      v524 = *(*a3 + 38) & 0x7FFF;
      v810 = v524;
      v525 = *v523;
      v526 = **(a3 + 16);
      if (v525 == 1)
      {
        *(*(v526 + 201488) - 8) += v524;
      }

      else
      {
        sub_24D769624((v526 + 201480), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v551 = *(a3 + 8);
      v552 = *(*a3 + 40) & 0x7FFFLL;
      v810 = v552;
      v553 = *v551;
      v554 = **(a3 + 16);
      if (v553 == 1)
      {
        *(*(v554 + 201512) - 8) += v552;
      }

      else
      {
        sub_24D769624((v554 + 201504), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v577 = *(a3 + 8);
      v578 = (*(*a3 + 40) >> 16) & 0x7FFFLL;
      v810 = v578;
      v579 = *v577;
      v580 = **(a3 + 16);
      if (v579 == 1)
      {
        *(*(v580 + 201536) - 8) += v578;
      }

      else
      {
        sub_24D769624((v580 + 201528), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v601 = *(a3 + 8);
      v602 = *(*a3 + 44) & 0x7FFF;
      v810 = v602;
      v603 = *v601;
      v604 = **(a3 + 16);
      if (v603 == 1)
      {
        *(*(v604 + 201560) - 8) += v602;
      }

      else
      {
        sub_24D769624((v604 + 201552), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v625 = *(a3 + 8);
      v626 = *(*a3 + 46) & 0x7FFF;
      v810 = v626;
      v627 = *v625;
      v628 = **(a3 + 16);
      if (v627 == 1)
      {
        *(*(v628 + 201584) - 8) += v626;
      }

      else
      {
        sub_24D769624((v628 + 201576), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v647 = *(a3 + 8);
      v648 = *(*a3 + 48) & 0x7FFFLL;
      v810 = v648;
      v649 = *v647;
      v650 = **(a3 + 16);
      if (v649 == 1)
      {
        *(*(v650 + 201608) - 8) += v648;
      }

      else
      {
        sub_24D769624((v650 + 201600), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v667 = *(a3 + 8);
      v668 = (*(*a3 + 48) >> 16) & 0x7FFFLL;
      v810 = v668;
      v669 = *v667;
      v670 = **(a3 + 16);
      if (v669 == 1)
      {
        *(*(v670 + 201632) - 8) += v668;
      }

      else
      {
        sub_24D769624((v670 + 201624), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v685 = *(a3 + 8);
      v686 = *(*a3 + 52) & 0x7FFF;
      v810 = v686;
      v687 = *v685;
      v688 = **(a3 + 16);
      if (v687 == 1)
      {
        *(*(v688 + 201656) - 8) += v686;
      }

      else
      {
        sub_24D769624((v688 + 201648), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v699 = *(a3 + 8);
      v700 = *(*a3 + 54) & 0x7FFF;
      v810 = v700;
      v701 = *v699;
      v702 = **(a3 + 16);
      if (v701 == 1)
      {
        *(*(v702 + 201680) - 8) += v700;
      }

      else
      {
        sub_24D769624((v702 + 201672), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v711 = *(a3 + 8);
      v712 = *(*a3 + 56) & 0x7FFFLL;
      v810 = v712;
      v713 = *v711;
      v714 = **(a3 + 16);
      if (v713 == 1)
      {
        *(*(v714 + 201704) - 8) += v712;
      }

      else
      {
        sub_24D769624((v714 + 201696), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v722 = *(a3 + 8);
      v723 = (*(*a3 + 56) >> 16) & 0x7FFFLL;
      v810 = v723;
      v724 = *v722;
      v725 = **(a3 + 16);
      if (v724 == 1)
      {
        *(*(v725 + 201728) - 8) += v723;
      }

      else
      {
        sub_24D769624((v725 + 201720), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v730 = *(a3 + 8);
      v731 = *(*a3 + 60) & 0x7FFF;
      v810 = v731;
      v732 = *v730;
      v733 = **(a3 + 16);
      if (v732 == 1)
      {
        *(*(v733 + 201752) - 8) += v731;
      }

      else
      {
        sub_24D769624((v733 + 201744), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v738 = *(a3 + 8);
      v739 = *(*a3 + 62) & 0x7FFF;
      v810 = v739;
      v740 = *v738;
      v741 = **(a3 + 16);
      if (v740 == 1)
      {
        *(*(v741 + 201776) - 8) += v739;
      }

      else
      {
        sub_24D769624((v741 + 201768), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v746 = *(a3 + 8);
      v747 = *(*a3 + 64) & 0x7FFFLL;
      v810 = v747;
      v748 = *v746;
      v749 = **(a3 + 16);
      if (v748 == 1)
      {
        *(*(v749 + 201800) - 8) += v747;
      }

      else
      {
        sub_24D769624((v749 + 201792), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v754 = *(a3 + 8);
      v755 = (*(*a3 + 64) >> 16) & 0x7FFFLL;
      v810 = v755;
      v756 = *v754;
      v757 = **(a3 + 16);
      if (v756 == 1)
      {
        *(*(v757 + 201824) - 8) += v755;
      }

      else
      {
        sub_24D769624((v757 + 201816), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v762 = *(a3 + 8);
      v763 = *(*a3 + 68) & 0x7FFF;
      v810 = v763;
      v764 = *v762;
      v765 = **(a3 + 16);
      if (v764 == 1)
      {
        *(*(v765 + 201848) - 8) += v763;
      }

      else
      {
        sub_24D769624((v765 + 201840), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v770 = *(a3 + 8);
      v771 = *(*a3 + 70) & 0x7FFF;
      v810 = v771;
      v772 = *v770;
      v773 = **(a3 + 16);
      if (v772 == 1)
      {
        *(*(v773 + 201872) - 8) += v771;
      }

      else
      {
        sub_24D769624((v773 + 201864), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v778 = *(a3 + 8);
      v779 = *(*a3 + 72) & 0x7FFFLL;
      v810 = v779;
      v780 = *v778;
      v781 = **(a3 + 16);
      if (v780 == 1)
      {
        *(*(v781 + 201896) - 8) += v779;
      }

      else
      {
        sub_24D769624((v781 + 201888), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v786 = *(a3 + 8);
      v787 = (*(*a3 + 72) >> 16) & 0x7FFFLL;
      v810 = v787;
      v788 = *v786;
      v789 = **(a3 + 16);
      if (v788 == 1)
      {
        *(*(v789 + 201920) - 8) += v787;
      }

      else
      {
        sub_24D769624((v789 + 201912), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v794 = *(a3 + 8);
      v795 = *(*a3 + 76) & 0x7FFF;
      v810 = v795;
      v796 = *v794;
      v797 = **(a3 + 16);
      if (v796 == 1)
      {
        *(*(v797 + 201944) - 8) += v795;
      }

      else
      {
        sub_24D769624((v797 + 201936), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v802 = *(a3 + 8);
      v803 = *(*a3 + 78) & 0x7FFF;
      v810 = v803;
      v804 = *v802;
      v805 = **(a3 + 16);
      if (v804 == 1)
      {
        *(*(v805 + 201968) - 8) += v803;
      }

      else
      {
        sub_24D769624((v805 + 201960), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v808 = *(a3 + 8);
      v78 = *(*a3 + 80) & 0x7FFF;
      v810 = v78;
      v809 = *v808;
      v80 = **(a3 + 16);
      if (v809 == 1)
      {
        v81 = 5384;
        goto LABEL_564;
      }

      v142 = v80 + 25248;
      goto LABEL_572;
    case 3:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v41 = *(a3 + 8);
      v42 = *(*a3 + 18);
      v810 = v42;
      v43 = *v41;
      v44 = **(a3 + 16);
      if (v43 == 1)
      {
        *(*(v44 + 202016) - 8) += v42;
      }

      else
      {
        sub_24D769624((v44 + 202008), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v102 = *(a3 + 8);
      v103 = *(*a3 + 20);
      v810 = v103;
      v104 = *v102;
      v105 = **(a3 + 16);
      if (v104 == 1)
      {
        *(*(v105 + 202040) - 8) += v103;
      }

      else
      {
        sub_24D769624((v105 + 202032), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v163 = *(a3 + 8);
      v164 = HIWORD(*(*a3 + 16));
      v810 = v164;
      v165 = *v163;
      v166 = **(a3 + 16);
      if (v165 == 1)
      {
        *(*(v166 + 202064) - 8) += v164;
      }

      else
      {
        sub_24D769624((v166 + 202056), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v221 = *(a3 + 8);
      v222 = *(*a3 + 24);
      v810 = v222;
      v223 = *v221;
      v224 = **(a3 + 16);
      if (v223 == 1)
      {
        *(*(v224 + 202088) - 8) += v222;
      }

      else
      {
        sub_24D769624((v224 + 202080), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v275 = *(a3 + 8);
      v276 = *(*a3 + 26);
      v810 = v276;
      v277 = *v275;
      v278 = **(a3 + 16);
      if (v277 == 1)
      {
        *(*(v278 + 202112) - 8) += v276;
      }

      else
      {
        sub_24D769624((v278 + 202104), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v325 = *(a3 + 8);
      v326 = *(*a3 + 28) & 0x7FFF;
      v810 = v326;
      v327 = *v325;
      v328 = **(a3 + 16);
      if (v327 == 1)
      {
        *(*(v328 + 202136) - 8) += v326;
      }

      else
      {
        sub_24D769624((v328 + 202128), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v373 = *(a3 + 8);
      v374 = HIWORD(*(*a3 + 24));
      v810 = v374;
      v375 = *v373;
      v376 = **(a3 + 16);
      if (v375 == 1)
      {
        *(*(v376 + 202160) - 8) += v374;
      }

      else
      {
        sub_24D769624((v376 + 202152), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v417 = *(a3 + 8);
      v418 = *(*a3 + 32);
      v810 = v418;
      v419 = *v417;
      v420 = **(a3 + 16);
      if (v419 == 1)
      {
        *(*(v420 + 202184) - 8) += v418;
      }

      else
      {
        sub_24D769624((v420 + 202176), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v457 = *(a3 + 8);
      v458 = *(*a3 + 34);
      v810 = v458;
      v459 = *v457;
      v460 = **(a3 + 16);
      if (v459 == 1)
      {
        *(*(v460 + 202208) - 8) += v458;
      }

      else
      {
        sub_24D769624((v460 + 202200), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v495 = *(a3 + 8);
      v496 = *(*a3 + 36);
      v810 = v496;
      v497 = *v495;
      v498 = **(a3 + 16);
      if (v497 == 1)
      {
        *(*(v498 + 202232) - 8) += v496;
      }

      else
      {
        sub_24D769624((v498 + 202224), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v527 = *(a3 + 8);
      v528 = HIWORD(*(*a3 + 32));
      v810 = v528;
      v529 = *v527;
      v530 = **(a3 + 16);
      if (v529 == 1)
      {
        *(*(v530 + 202256) - 8) += v528;
      }

      else
      {
        sub_24D769624((v530 + 202248), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v555 = *(a3 + 8);
      v78 = *(*a3 + 40) & 0x7FFF;
      v810 = v78;
      v556 = *v555;
      v80 = **(a3 + 16);
      if (v556 == 1)
      {
        v81 = 5672;
        goto LABEL_564;
      }

      v142 = v80 + 25284;
      goto LABEL_572;
    case 4:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v21 = *(a3 + 8);
      v22 = (*(*a3 + 16) >> 1) & 0x3FFFFLL;
      v810 = v22;
      v23 = *v21;
      v24 = **(a3 + 16);
      if (v23 == 1)
      {
        *(*(v24 + 202304) - 8) += v22;
      }

      else
      {
        sub_24D769624((v24 + 202296), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v82 = *(a3 + 8);
      v83 = *(*a3 + 20) & 0x3FFFF;
      v810 = v83;
      v84 = *v82;
      v85 = **(a3 + 16);
      if (v84 == 1)
      {
        *(*(v85 + 202328) - 8) += v83;
      }

      else
      {
        sub_24D769624((v85 + 202320), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v143 = *(a3 + 8);
      v144 = *(*a3 + 24) & 0x3FFFFLL;
      v810 = v144;
      v145 = *v143;
      v146 = **(a3 + 16);
      if (v145 == 1)
      {
        *(*(v146 + 202352) - 8) += v144;
      }

      else
      {
        sub_24D769624((v146 + 202344), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v201 = *(a3 + 8);
      v202 = *(*a3 + 28) & 0x3FFFF;
      v810 = v202;
      v203 = *v201;
      v204 = **(a3 + 16);
      if (v203 == 1)
      {
        *(*(v204 + 202376) - 8) += v202;
      }

      else
      {
        sub_24D769624((v204 + 202368), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v255 = *(a3 + 8);
      v256 = *(*a3 + 32) & 0x3FFFFLL;
      v810 = v256;
      v257 = *v255;
      v258 = **(a3 + 16);
      if (v257 == 1)
      {
        *(*(v258 + 202400) - 8) += v256;
      }

      else
      {
        sub_24D769624((v258 + 202392), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v305 = *(a3 + 8);
      v306 = *(*a3 + 36) & 0x3FFFF;
      v810 = v306;
      v307 = *v305;
      v308 = **(a3 + 16);
      if (v307 == 1)
      {
        *(*(v308 + 202424) - 8) += v306;
      }

      else
      {
        sub_24D769624((v308 + 202416), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v353 = *(a3 + 8);
      v354 = *(*a3 + 40) & 0xFFFFFLL;
      v810 = v354;
      v355 = *v353;
      v356 = **(a3 + 16);
      if (v355 == 1)
      {
        *(*(v356 + 202448) - 8) += v354;
      }

      else
      {
        sub_24D769624((v356 + 202440), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v399 = *(a3 + 8);
      v400 = *(*a3 + 44) & 0xFFFFF;
      v810 = v400;
      v401 = *v399;
      v402 = **(a3 + 16);
      if (v401 == 1)
      {
        *(*(v402 + 202472) - 8) += v400;
      }

      else
      {
        sub_24D769624((v402 + 202464), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v441 = *(a3 + 8);
      v442 = *(*a3 + 48) & 0xFFFFFLL;
      v810 = v442;
      v443 = *v441;
      v444 = **(a3 + 16);
      if (v443 == 1)
      {
        *(*(v444 + 202496) - 8) += v442;
      }

      else
      {
        sub_24D769624((v444 + 202488), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v481 = *(a3 + 8);
      v482 = *(*a3 + 52);
      v810 = v482;
      v483 = *v481;
      v484 = **(a3 + 16);
      if (v483 == 1)
      {
        *(*(v484 + 202520) - 8) += v482;
      }

      else
      {
        sub_24D769624((v484 + 202512), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v517 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 48));
      v810 = v78;
      v518 = *v517;
      v80 = **(a3 + 16);
      if (v518 == 1)
      {
        v81 = 5936;
        goto LABEL_564;
      }

      v142 = v80 + 25317;
      goto LABEL_572;
    case 5:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v53 = *(a3 + 8);
      v54 = (*(*a3 + 16) >> 1) & 0x7FFFFLL;
      v810 = v54;
      v55 = *v53;
      v56 = **(a3 + 16);
      if (v55 == 1)
      {
        *(*(v56 + 202568) - 8) += v54;
      }

      else
      {
        sub_24D769624((v56 + 202560), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v118 = *(a3 + 8);
      v119 = *(*a3 + 20) & 0x1FFFF;
      v810 = v119;
      v120 = *v118;
      v121 = **(a3 + 16);
      if (v120 == 1)
      {
        *(*(v121 + 202592) - 8) += v119;
      }

      else
      {
        sub_24D769624((v121 + 202584), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v179 = *(a3 + 8);
      v180 = *(*a3 + 24) & 0xFFFFFLL;
      v810 = v180;
      v181 = *v179;
      v182 = **(a3 + 16);
      if (v181 == 1)
      {
        *(*(v182 + 202616) - 8) += v180;
      }

      else
      {
        sub_24D769624((v182 + 202608), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v237 = *(a3 + 8);
      v78 = *(*a3 + 28) & 0xFFFFF;
      v810 = v78;
      v238 = *v237;
      v80 = **(a3 + 16);
      if (v238 == 1)
      {
        v81 = 6032;
        goto LABEL_564;
      }

      v142 = v80 + 25329;
      goto LABEL_572;
    case 6:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v61 = *(a3 + 8);
      v62 = (*(*a3 + 16) >> 1) & 0x7FFFFLL;
      v810 = v62;
      v63 = *v61;
      v64 = **(a3 + 16);
      if (v63 == 1)
      {
        *(*(v64 + 202664) - 8) += v62;
      }

      else
      {
        sub_24D769624((v64 + 202656), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v126 = *(a3 + 8);
      v127 = *(*a3 + 20) & 0x7FFFF;
      v810 = v127;
      v128 = *v126;
      v129 = **(a3 + 16);
      if (v128 == 1)
      {
        *(*(v129 + 202688) - 8) += v127;
      }

      else
      {
        sub_24D769624((v129 + 202680), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v187 = *(a3 + 8);
      v188 = *(*a3 + 24) & 0x7FFFFLL;
      v810 = v188;
      v189 = *v187;
      v190 = **(a3 + 16);
      if (v189 == 1)
      {
        *(*(v190 + 202712) - 8) += v188;
      }

      else
      {
        sub_24D769624((v190 + 202704), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v243 = *(a3 + 8);
      v244 = *(*a3 + 28) & 0x7FFFF;
      v810 = v244;
      v245 = *v243;
      v246 = **(a3 + 16);
      if (v245 == 1)
      {
        *(*(v246 + 202736) - 8) += v244;
      }

      else
      {
        sub_24D769624((v246 + 202728), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v295 = *(a3 + 8);
      v296 = *(*a3 + 32) & 0x7FFFFLL;
      v810 = v296;
      v297 = *v295;
      v298 = **(a3 + 16);
      if (v297 == 1)
      {
        *(*(v298 + 202760) - 8) += v296;
      }

      else
      {
        sub_24D769624((v298 + 202752), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v345 = *(a3 + 8);
      v346 = *(*a3 + 36) & 0x7FFFF;
      v810 = v346;
      v347 = *v345;
      v348 = **(a3 + 16);
      if (v347 == 1)
      {
        *(*(v348 + 202784) - 8) += v346;
      }

      else
      {
        sub_24D769624((v348 + 202776), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v393 = *(a3 + 8);
      v394 = *(*a3 + 40) & 0x7FFFFLL;
      v810 = v394;
      v395 = *v393;
      v396 = **(a3 + 16);
      if (v395 == 1)
      {
        *(*(v396 + 202808) - 8) += v394;
      }

      else
      {
        sub_24D769624((v396 + 202800), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v437 = *(a3 + 8);
      v438 = *(*a3 + 44) & 0x7FFFF;
      v810 = v438;
      v439 = *v437;
      v440 = **(a3 + 16);
      if (v439 == 1)
      {
        *(*(v440 + 202832) - 8) += v438;
      }

      else
      {
        sub_24D769624((v440 + 202824), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v477 = *(a3 + 8);
      v478 = *(*a3 + 48) & 0x7FFFFLL;
      v810 = v478;
      v479 = *v477;
      v480 = **(a3 + 16);
      if (v479 == 1)
      {
        *(*(v480 + 202856) - 8) += v478;
      }

      else
      {
        sub_24D769624((v480 + 202848), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v513 = *(a3 + 8);
      v514 = *(*a3 + 52) & 0x7FFFF;
      v810 = v514;
      v515 = *v513;
      v516 = **(a3 + 16);
      if (v515 == 1)
      {
        *(*(v516 + 202880) - 8) += v514;
      }

      else
      {
        sub_24D769624((v516 + 202872), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v543 = *(a3 + 8);
      v544 = *(*a3 + 56) & 0x7FFFFLL;
      v810 = v544;
      v545 = *v543;
      v546 = **(a3 + 16);
      if (v545 == 1)
      {
        *(*(v546 + 202904) - 8) += v544;
      }

      else
      {
        sub_24D769624((v546 + 202896), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v569 = *(a3 + 8);
      v570 = *(*a3 + 60) & 0x7FFFF;
      v810 = v570;
      v571 = *v569;
      v572 = **(a3 + 16);
      if (v571 == 1)
      {
        *(*(v572 + 202928) - 8) += v570;
      }

      else
      {
        sub_24D769624((v572 + 202920), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v593 = *(a3 + 8);
      v594 = *(*a3 + 64) & 0x7FFFFLL;
      v810 = v594;
      v595 = *v593;
      v596 = **(a3 + 16);
      if (v595 == 1)
      {
        *(*(v596 + 202952) - 8) += v594;
      }

      else
      {
        sub_24D769624((v596 + 202944), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v617 = *(a3 + 8);
      v618 = *(*a3 + 68) & 0x7FFFF;
      v810 = v618;
      v619 = *v617;
      v620 = **(a3 + 16);
      if (v619 == 1)
      {
        *(*(v620 + 202976) - 8) += v618;
      }

      else
      {
        sub_24D769624((v620 + 202968), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v639 = *(a3 + 8);
      v640 = *(*a3 + 72) & 0x7FFFFLL;
      v810 = v640;
      v641 = *v639;
      v642 = **(a3 + 16);
      if (v641 == 1)
      {
        *(*(v642 + 203000) - 8) += v640;
      }

      else
      {
        sub_24D769624((v642 + 202992), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v659 = *(a3 + 8);
      v660 = *(*a3 + 76) & 0x7FFFF;
      v810 = v660;
      v661 = *v659;
      v662 = **(a3 + 16);
      if (v661 == 1)
      {
        *(*(v662 + 203024) - 8) += v660;
      }

      else
      {
        sub_24D769624((v662 + 203016), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v677 = *(a3 + 8);
      v678 = *(*a3 + 80) & 0x7FFFFLL;
      v810 = v678;
      v679 = *v677;
      v680 = **(a3 + 16);
      if (v679 == 1)
      {
        *(*(v680 + 203048) - 8) += v678;
      }

      else
      {
        sub_24D769624((v680 + 203040), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v693 = *(a3 + 8);
      v78 = *(*a3 + 84) & 0x7FFFF;
      v810 = v78;
      v694 = *v693;
      v80 = **(a3 + 16);
      if (v694 == 1)
      {
        v81 = 6464;
        goto LABEL_564;
      }

      v142 = v80 + 25383;
      goto LABEL_572;
    case 7:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v45 = *(a3 + 8);
      v46 = *(*a3 + 16) >> 1;
      v810 = v46;
      v47 = *v45;
      v48 = **(a3 + 16);
      if (v47 == 1)
      {
        *(*(v48 + 203096) - 8) += v46;
      }

      else
      {
        sub_24D769624((v48 + 203088), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v106 = *(a3 + 8);
      v107 = (*(*a3 + 16) >> 16) & 0x7FFFLL;
      v810 = v107;
      v108 = *v106;
      v109 = **(a3 + 16);
      if (v108 == 1)
      {
        *(*(v109 + 203120) - 8) += v107;
      }

      else
      {
        sub_24D769624((v109 + 203112), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v167 = *(a3 + 8);
      v168 = *(*a3 + 20) & 0x7FFF;
      v810 = v168;
      v169 = *v167;
      v170 = **(a3 + 16);
      if (v169 == 1)
      {
        *(*(v170 + 203144) - 8) += v168;
      }

      else
      {
        sub_24D769624((v170 + 203136), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v225 = *(a3 + 8);
      v226 = *(*a3 + 22) & 0x7FFF;
      v810 = v226;
      v227 = *v225;
      v228 = **(a3 + 16);
      if (v227 == 1)
      {
        *(*(v228 + 203168) - 8) += v226;
      }

      else
      {
        sub_24D769624((v228 + 203160), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v279 = *(a3 + 8);
      v280 = *(*a3 + 24) & 0x7FFFLL;
      v810 = v280;
      v281 = *v279;
      v282 = **(a3 + 16);
      if (v281 == 1)
      {
        *(*(v282 + 203192) - 8) += v280;
      }

      else
      {
        sub_24D769624((v282 + 203184), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v329 = *(a3 + 8);
      v330 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v330;
      v331 = *v329;
      v332 = **(a3 + 16);
      if (v331 == 1)
      {
        *(*(v332 + 203216) - 8) += v330;
      }

      else
      {
        sub_24D769624((v332 + 203208), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v377 = *(a3 + 8);
      v378 = *(*a3 + 28) & 0x7FFF;
      v810 = v378;
      v379 = *v377;
      v380 = **(a3 + 16);
      if (v379 == 1)
      {
        *(*(v380 + 203240) - 8) += v378;
      }

      else
      {
        sub_24D769624((v380 + 203232), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v421 = *(a3 + 8);
      v422 = *(*a3 + 30) & 0x7FFF;
      v810 = v422;
      v423 = *v421;
      v424 = **(a3 + 16);
      if (v423 == 1)
      {
        *(*(v424 + 203264) - 8) += v422;
      }

      else
      {
        sub_24D769624((v424 + 203256), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v461 = *(a3 + 8);
      v462 = *(*a3 + 32) & 0x7FFFLL;
      v810 = v462;
      v463 = *v461;
      v464 = **(a3 + 16);
      if (v463 == 1)
      {
        *(*(v464 + 203288) - 8) += v462;
      }

      else
      {
        sub_24D769624((v464 + 203280), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v499 = *(a3 + 8);
      v500 = *(*a3 + 36) & 0x7FFFF;
      v810 = v500;
      v501 = *v499;
      v502 = **(a3 + 16);
      if (v501 == 1)
      {
        *(*(v502 + 203312) - 8) += v500;
      }

      else
      {
        sub_24D769624((v502 + 203304), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v531 = *(a3 + 8);
      v532 = *(*a3 + 40) & 0x7FFFFLL;
      v810 = v532;
      v533 = *v531;
      v534 = **(a3 + 16);
      if (v533 == 1)
      {
        *(*(v534 + 203336) - 8) += v532;
      }

      else
      {
        sub_24D769624((v534 + 203328), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v557 = *(a3 + 8);
      v558 = *(*a3 + 44) & 0x7FFFF;
      v810 = v558;
      v559 = *v557;
      v560 = **(a3 + 16);
      if (v559 == 1)
      {
        *(*(v560 + 203360) - 8) += v558;
      }

      else
      {
        sub_24D769624((v560 + 203352), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v581 = *(a3 + 8);
      v582 = *(*a3 + 48) & 0x7FFFFLL;
      v810 = v582;
      v583 = *v581;
      v584 = **(a3 + 16);
      if (v583 == 1)
      {
        *(*(v584 + 203384) - 8) += v582;
      }

      else
      {
        sub_24D769624((v584 + 203376), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v605 = *(a3 + 8);
      v606 = *(*a3 + 52) & 0x7FFFF;
      v810 = v606;
      v607 = *v605;
      v608 = **(a3 + 16);
      if (v607 == 1)
      {
        *(*(v608 + 203408) - 8) += v606;
      }

      else
      {
        sub_24D769624((v608 + 203400), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v629 = *(a3 + 8);
      v630 = *(*a3 + 56) & 0x7FFFFLL;
      v810 = v630;
      v631 = *v629;
      v632 = **(a3 + 16);
      if (v631 == 1)
      {
        *(*(v632 + 203432) - 8) += v630;
      }

      else
      {
        sub_24D769624((v632 + 203424), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v651 = *(a3 + 8);
      v652 = *(*a3 + 60) & 0x7FFFF;
      v810 = v652;
      v653 = *v651;
      v654 = **(a3 + 16);
      if (v653 == 1)
      {
        *(*(v654 + 203456) - 8) += v652;
      }

      else
      {
        sub_24D769624((v654 + 203448), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v671 = *(a3 + 8);
      v78 = *(*a3 + 64) & 0x7FFFF;
      v810 = v78;
      v672 = *v671;
      v80 = **(a3 + 16);
      if (v672 == 1)
      {
        v81 = 6872;
        goto LABEL_564;
      }

      v142 = v80 + 25434;
      goto LABEL_572;
    case 8:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v69 = *(a3 + 8);
      v70 = *(*a3 + 16);
      v810 = v70;
      v71 = *v69;
      v72 = **(a3 + 16);
      if (v71 == 1)
      {
        *(*(v72 + 203504) - 8) += v70;
      }

      else
      {
        sub_24D769624((v72 + 203496), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v134 = *(a3 + 8);
      v135 = *(*a3 + 18);
      v810 = v135;
      v136 = *v134;
      v137 = **(a3 + 16);
      if (v136 == 1)
      {
        *(*(v137 + 203528) - 8) += v135;
      }

      else
      {
        sub_24D769624((v137 + 203520), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v195 = *(a3 + 8);
      v196 = *(*a3 + 20) & 0x1FFFF;
      v810 = v196;
      v197 = *v195;
      v198 = **(a3 + 16);
      if (v197 == 1)
      {
        *(*(v198 + 203552) - 8) += v196;
      }

      else
      {
        sub_24D769624((v198 + 203544), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v251 = *(a3 + 8);
      v252 = *(*a3 + 24) & 0x1FFFF;
      v810 = v252;
      v253 = *v251;
      v254 = **(a3 + 16);
      if (v253 == 1)
      {
        *(*(v254 + 203576) - 8) += v252;
      }

      else
      {
        sub_24D769624((v254 + 203568), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v303 = *(a3 + 8);
      v78 = *(*a3 + 24) >> 17;
      v810 = v78;
      v304 = *v303;
      v80 = **(a3 + 16);
      if (v304 == 1)
      {
        v81 = 6992;
        goto LABEL_564;
      }

      v142 = v80 + 25449;
      goto LABEL_572;
    case 9:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v29 = *(a3 + 8);
      v30 = (*(*a3 + 16) >> 1) & 0x1FFFLL;
      v810 = v30;
      v31 = *v29;
      v32 = **(a3 + 16);
      if (v31 == 1)
      {
        *(*(v32 + 203624) - 8) += v30;
      }

      else
      {
        sub_24D769624((v32 + 203616), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v90 = *(a3 + 8);
      v91 = (*(*a3 + 16) >> 16) & 0x1FFFLL;
      v810 = v91;
      v92 = *v90;
      v93 = **(a3 + 16);
      if (v92 == 1)
      {
        *(*(v93 + 203648) - 8) += v91;
      }

      else
      {
        sub_24D769624((v93 + 203640), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v151 = *(a3 + 8);
      v152 = *(*a3 + 20) & 0x1FFF;
      v810 = v152;
      v153 = *v151;
      v154 = **(a3 + 16);
      if (v153 == 1)
      {
        *(*(v154 + 203672) - 8) += v152;
      }

      else
      {
        sub_24D769624((v154 + 203664), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v209 = *(a3 + 8);
      v210 = *(*a3 + 22) & 0x1FFF;
      v810 = v210;
      v211 = *v209;
      v212 = **(a3 + 16);
      if (v211 == 1)
      {
        *(*(v212 + 203696) - 8) += v210;
      }

      else
      {
        sub_24D769624((v212 + 203688), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v263 = *(a3 + 8);
      v264 = *(*a3 + 24) & 0x1FFFLL;
      v810 = v264;
      v265 = *v263;
      v266 = **(a3 + 16);
      if (v265 == 1)
      {
        *(*(v266 + 203720) - 8) += v264;
      }

      else
      {
        sub_24D769624((v266 + 203712), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v313 = *(a3 + 8);
      v314 = (*(*a3 + 24) >> 16) & 0x1FFFLL;
      v810 = v314;
      v315 = *v313;
      v316 = **(a3 + 16);
      if (v315 == 1)
      {
        *(*(v316 + 203744) - 8) += v314;
      }

      else
      {
        sub_24D769624((v316 + 203736), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v361 = *(a3 + 8);
      v362 = *(*a3 + 28) & 0x1FFF;
      v810 = v362;
      v363 = *v361;
      v364 = **(a3 + 16);
      if (v363 == 1)
      {
        *(*(v364 + 203768) - 8) += v362;
      }

      else
      {
        sub_24D769624((v364 + 203760), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v405 = *(a3 + 8);
      v406 = *(*a3 + 30) & 0x1FFF;
      v810 = v406;
      v407 = *v405;
      v408 = **(a3 + 16);
      if (v407 == 1)
      {
        *(*(v408 + 203792) - 8) += v406;
      }

      else
      {
        sub_24D769624((v408 + 203784), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v445 = *(a3 + 8);
      v446 = *(*a3 + 32) & 0x1FFFLL;
      v810 = v446;
      v447 = *v445;
      v448 = **(a3 + 16);
      if (v447 == 1)
      {
        *(*(v448 + 203816) - 8) += v446;
      }

      else
      {
        sub_24D769624((v448 + 203808), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v485 = *(a3 + 8);
      v486 = (*(*a3 + 32) >> 16) & 0x1FFFLL;
      v810 = v486;
      v487 = *v485;
      v488 = **(a3 + 16);
      if (v487 == 1)
      {
        *(*(v488 + 203840) - 8) += v486;
      }

      else
      {
        sub_24D769624((v488 + 203832), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v519 = *(a3 + 8);
      v520 = *(*a3 + 36) & 0x1FFF;
      v810 = v520;
      v521 = *v519;
      v522 = **(a3 + 16);
      if (v521 == 1)
      {
        *(*(v522 + 203864) - 8) += v520;
      }

      else
      {
        sub_24D769624((v522 + 203856), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v547 = *(a3 + 8);
      v548 = *(*a3 + 38) & 0x1FFF;
      v810 = v548;
      v549 = *v547;
      v550 = **(a3 + 16);
      if (v549 == 1)
      {
        *(*(v550 + 203888) - 8) += v548;
      }

      else
      {
        sub_24D769624((v550 + 203880), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v573 = *(a3 + 8);
      v574 = *(*a3 + 40) & 0x1FFFLL;
      v810 = v574;
      v575 = *v573;
      v576 = **(a3 + 16);
      if (v575 == 1)
      {
        *(*(v576 + 203912) - 8) += v574;
      }

      else
      {
        sub_24D769624((v576 + 203904), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v597 = *(a3 + 8);
      v598 = (*(*a3 + 40) >> 16) & 0x1FFFLL;
      v810 = v598;
      v599 = *v597;
      v600 = **(a3 + 16);
      if (v599 == 1)
      {
        *(*(v600 + 203936) - 8) += v598;
      }

      else
      {
        sub_24D769624((v600 + 203928), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v621 = *(a3 + 8);
      v622 = *(*a3 + 44) & 0x1FFF;
      v810 = v622;
      v623 = *v621;
      v624 = **(a3 + 16);
      if (v623 == 1)
      {
        *(*(v624 + 203960) - 8) += v622;
      }

      else
      {
        sub_24D769624((v624 + 203952), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v643 = *(a3 + 8);
      v644 = *(*a3 + 46) & 0x1FFF;
      v810 = v644;
      v645 = *v643;
      v646 = **(a3 + 16);
      if (v645 == 1)
      {
        *(*(v646 + 203984) - 8) += v644;
      }

      else
      {
        sub_24D769624((v646 + 203976), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v663 = *(a3 + 8);
      v664 = *(*a3 + 48) & 0x1FFFLL;
      v810 = v664;
      v665 = *v663;
      v666 = **(a3 + 16);
      if (v665 == 1)
      {
        *(*(v666 + 204008) - 8) += v664;
      }

      else
      {
        sub_24D769624((v666 + 204000), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v681 = *(a3 + 8);
      v682 = (*(*a3 + 48) >> 16) & 0x1FFFLL;
      v810 = v682;
      v683 = *v681;
      v684 = **(a3 + 16);
      if (v683 == 1)
      {
        *(*(v684 + 204032) - 8) += v682;
      }

      else
      {
        sub_24D769624((v684 + 204024), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v695 = *(a3 + 8);
      v696 = *(*a3 + 52) & 0x1FFF;
      v810 = v696;
      v697 = *v695;
      v698 = **(a3 + 16);
      if (v697 == 1)
      {
        *(*(v698 + 204056) - 8) += v696;
      }

      else
      {
        sub_24D769624((v698 + 204048), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v707 = *(a3 + 8);
      v708 = *(*a3 + 54) & 0x1FFF;
      v810 = v708;
      v709 = *v707;
      v710 = **(a3 + 16);
      if (v709 == 1)
      {
        *(*(v710 + 204080) - 8) += v708;
      }

      else
      {
        sub_24D769624((v710 + 204072), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v718 = *(a3 + 8);
      v719 = *(*a3 + 56) & 0x1FFFLL;
      v810 = v719;
      v720 = *v718;
      v721 = **(a3 + 16);
      if (v720 == 1)
      {
        *(*(v721 + 204104) - 8) += v719;
      }

      else
      {
        sub_24D769624((v721 + 204096), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v726 = *(a3 + 8);
      v727 = (*(*a3 + 56) >> 16) & 0x1FFFLL;
      v810 = v727;
      v728 = *v726;
      v729 = **(a3 + 16);
      if (v728 == 1)
      {
        *(*(v729 + 204128) - 8) += v727;
      }

      else
      {
        sub_24D769624((v729 + 204120), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v734 = *(a3 + 8);
      v735 = *(*a3 + 60) & 0x1FFF;
      v810 = v735;
      v736 = *v734;
      v737 = **(a3 + 16);
      if (v736 == 1)
      {
        *(*(v737 + 204152) - 8) += v735;
      }

      else
      {
        sub_24D769624((v737 + 204144), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v742 = *(a3 + 8);
      v743 = *(*a3 + 62) & 0x1FFF;
      v810 = v743;
      v744 = *v742;
      v745 = **(a3 + 16);
      if (v744 == 1)
      {
        *(*(v745 + 204176) - 8) += v743;
      }

      else
      {
        sub_24D769624((v745 + 204168), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v750 = *(a3 + 8);
      v751 = *(*a3 + 64) & 0x1FFFLL;
      v810 = v751;
      v752 = *v750;
      v753 = **(a3 + 16);
      if (v752 == 1)
      {
        *(*(v753 + 204200) - 8) += v751;
      }

      else
      {
        sub_24D769624((v753 + 204192), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v758 = *(a3 + 8);
      v759 = (*(*a3 + 64) >> 16) & 0x1FFFLL;
      v810 = v759;
      v760 = *v758;
      v761 = **(a3 + 16);
      if (v760 == 1)
      {
        *(*(v761 + 204224) - 8) += v759;
      }

      else
      {
        sub_24D769624((v761 + 204216), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v766 = *(a3 + 8);
      v767 = *(*a3 + 68) & 0x1FFF;
      v810 = v767;
      v768 = *v766;
      v769 = **(a3 + 16);
      if (v768 == 1)
      {
        *(*(v769 + 204248) - 8) += v767;
      }

      else
      {
        sub_24D769624((v769 + 204240), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v774 = *(a3 + 8);
      v775 = *(*a3 + 70) & 0x1FFF;
      v810 = v775;
      v776 = *v774;
      v777 = **(a3 + 16);
      if (v776 == 1)
      {
        *(*(v777 + 204272) - 8) += v775;
      }

      else
      {
        sub_24D769624((v777 + 204264), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v782 = *(a3 + 8);
      v783 = *(*a3 + 72) & 0x1FFFLL;
      v810 = v783;
      v784 = *v782;
      v785 = **(a3 + 16);
      if (v784 == 1)
      {
        *(*(v785 + 204296) - 8) += v783;
      }

      else
      {
        sub_24D769624((v785 + 204288), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v790 = *(a3 + 8);
      v791 = (*(*a3 + 72) >> 16) & 0x1FFFLL;
      v810 = v791;
      v792 = *v790;
      v793 = **(a3 + 16);
      if (v792 == 1)
      {
        *(*(v793 + 204320) - 8) += v791;
      }

      else
      {
        sub_24D769624((v793 + 204312), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v798 = *(a3 + 8);
      v799 = *(*a3 + 76) & 0x1FFF;
      v810 = v799;
      v800 = *v798;
      v801 = **(a3 + 16);
      if (v800 == 1)
      {
        *(*(v801 + 204344) - 8) += v799;
      }

      else
      {
        sub_24D769624((v801 + 204336), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v806 = *(a3 + 8);
      v78 = *(*a3 + 78) & 0x1FFF;
      v810 = v78;
      v807 = *v806;
      v80 = **(a3 + 16);
      if (v807 == 1)
      {
        v81 = 7760;
        goto LABEL_564;
      }

      v142 = v80 + 25545;
      goto LABEL_572;
    case 10:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v65 = *(a3 + 8);
      v66 = *(*a3 + 16);
      v810 = v66;
      v67 = *v65;
      v68 = **(a3 + 16);
      if (v67 == 1)
      {
        *(*(v68 + 204392) - 8) += v66;
      }

      else
      {
        sub_24D769624((v68 + 204384), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v130 = *(a3 + 8);
      v131 = *(*a3 + 24) & 0x1FFFFFFFFLL;
      v810 = v131;
      v132 = *v130;
      v133 = **(a3 + 16);
      if (v132 == 1)
      {
        *(*(v133 + 204416) - 8) += v131;
      }

      else
      {
        sub_24D769624((v133 + 204408), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v191 = *(a3 + 8);
      v192 = (*(*a3 + 24) >> 33) & 0x7FFFLL;
      v810 = v192;
      v193 = *v191;
      v194 = **(a3 + 16);
      if (v193 == 1)
      {
        *(*(v194 + 204440) - 8) += v192;
      }

      else
      {
        sub_24D769624((v194 + 204432), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v247 = *(a3 + 8);
      v248 = *(*a3 + 30) & 0x7FFF;
      v810 = v248;
      v249 = *v247;
      v250 = **(a3 + 16);
      if (v249 == 1)
      {
        *(*(v250 + 204464) - 8) += v248;
      }

      else
      {
        sub_24D769624((v250 + 204456), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v299 = *(a3 + 8);
      v300 = *(*a3 + 32) & 0x7FFFLL;
      v810 = v300;
      v301 = *v299;
      v302 = **(a3 + 16);
      if (v301 == 1)
      {
        *(*(v302 + 204488) - 8) += v300;
      }

      else
      {
        sub_24D769624((v302 + 204480), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v349 = *(a3 + 8);
      v350 = (*(*a3 + 32) >> 16) & 0x7FFFLL;
      v810 = v350;
      v351 = *v349;
      v352 = **(a3 + 16);
      if (v351 == 1)
      {
        *(*(v352 + 204512) - 8) += v350;
      }

      else
      {
        sub_24D769624((v352 + 204504), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v397 = *(a3 + 8);
      v78 = *(*a3 + 36) & 0x7FFF;
      v810 = v78;
      v398 = *v397;
      v80 = **(a3 + 16);
      if (v398 == 1)
      {
        v81 = 7928;
        goto LABEL_564;
      }

      v142 = v80 + 25566;
      goto LABEL_572;
    case 11:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v17 = *(a3 + 8);
      v18 = *(*a3 + 16) & 0x7FFF;
      v810 = v18;
      v19 = *v17;
      v20 = **(a3 + 16);
      if (v19 == 1)
      {
        *(*(v20 + 204560) - 8) += v18;
      }

      else
      {
        sub_24D769624((v20 + 204552), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v77 = *(a3 + 8);
      v78 = *(*a3 + 18) & 0x7FFF;
      v810 = v78;
      v79 = *v77;
      v80 = **(a3 + 16);
      if (v79 == 1)
      {
        v81 = 7976;
        goto LABEL_564;
      }

      v142 = v80 + 25572;
      goto LABEL_572;
    case 12:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v25 = *(a3 + 8);
      v26 = *(*a3 + 16) & 0x7FFFLL;
      v810 = v26;
      v27 = *v25;
      v28 = **(a3 + 16);
      if (v27 == 1)
      {
        *(*(v28 + 204608) - 8) += v26;
      }

      else
      {
        sub_24D769624((v28 + 204600), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v86 = *(a3 + 8);
      v87 = (*(*a3 + 16) >> 16) & 0x7FFFLL;
      v810 = v87;
      v88 = *v86;
      v89 = **(a3 + 16);
      if (v88 == 1)
      {
        *(*(v89 + 204632) - 8) += v87;
      }

      else
      {
        sub_24D769624((v89 + 204624), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v147 = *(a3 + 8);
      v148 = *(*a3 + 20);
      v810 = v148;
      v149 = *v147;
      v150 = **(a3 + 16);
      if (v149 == 1)
      {
        *(*(v150 + 204656) - 8) += v148;
      }

      else
      {
        sub_24D769624((v150 + 204648), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v205 = *(a3 + 8);
      v206 = *(*a3 + 24) & 0x3FFFFLL;
      v810 = v206;
      v207 = *v205;
      v208 = **(a3 + 16);
      if (v207 == 1)
      {
        *(*(v208 + 204680) - 8) += v206;
      }

      else
      {
        sub_24D769624((v208 + 204672), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v259 = *(a3 + 8);
      v260 = *(*a3 + 28) & 0x3FFFF;
      v810 = v260;
      v261 = *v259;
      v262 = **(a3 + 16);
      if (v261 == 1)
      {
        *(*(v262 + 204704) - 8) += v260;
      }

      else
      {
        sub_24D769624((v262 + 204696), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v309 = *(a3 + 8);
      v310 = *(*a3 + 32) & 0x1FFFFLL;
      v810 = v310;
      v311 = *v309;
      v312 = **(a3 + 16);
      if (v311 == 1)
      {
        *(*(v312 + 204728) - 8) += v310;
      }

      else
      {
        sub_24D769624((v312 + 204720), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v357 = *(a3 + 8);
      v358 = *(*a3 + 36);
      v810 = v358;
      v359 = *v357;
      v360 = **(a3 + 16);
      if (v359 == 1)
      {
        *(*(v360 + 204752) - 8) += v358;
      }

      else
      {
        sub_24D769624((v360 + 204744), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v403 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 32));
      v810 = v78;
      v404 = *v403;
      v80 = **(a3 + 16);
      if (v404 == 1)
      {
        v81 = 8168;
        goto LABEL_564;
      }

      v142 = v80 + 25596;
      goto LABEL_572;
    case 13:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v57 = *(a3 + 8);
      v58 = *(*a3 + 16) & 0x7FFFLL;
      v810 = v58;
      v59 = *v57;
      v60 = **(a3 + 16);
      if (v59 == 1)
      {
        *(*(v60 + 204800) - 8) += v58;
      }

      else
      {
        sub_24D769624((v60 + 204792), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v122 = *(a3 + 8);
      v123 = (*(*a3 + 16) >> 16) & 0x7FFFLL;
      v810 = v123;
      v124 = *v122;
      v125 = **(a3 + 16);
      if (v124 == 1)
      {
        *(*(v125 + 204824) - 8) += v123;
      }

      else
      {
        sub_24D769624((v125 + 204816), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v183 = *(a3 + 8);
      v184 = *(*a3 + 20) & 0x7FFF;
      v810 = v184;
      v185 = *v183;
      v186 = **(a3 + 16);
      if (v185 == 1)
      {
        *(*(v186 + 204848) - 8) += v184;
      }

      else
      {
        sub_24D769624((v186 + 204840), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v239 = *(a3 + 8);
      v240 = *(*a3 + 22) & 0x7FFF;
      v810 = v240;
      v241 = *v239;
      v242 = **(a3 + 16);
      if (v241 == 1)
      {
        *(*(v242 + 204872) - 8) += v240;
      }

      else
      {
        sub_24D769624((v242 + 204864), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v291 = *(a3 + 8);
      v292 = *(*a3 + 24) & 0x1FFFFLL;
      v810 = v292;
      v293 = *v291;
      v294 = **(a3 + 16);
      if (v293 == 1)
      {
        *(*(v294 + 204896) - 8) += v292;
      }

      else
      {
        sub_24D769624((v294 + 204888), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v341 = *(a3 + 8);
      v342 = *(*a3 + 28) & 0x1FFFF;
      v810 = v342;
      v343 = *v341;
      v344 = **(a3 + 16);
      if (v343 == 1)
      {
        *(*(v344 + 204920) - 8) += v342;
      }

      else
      {
        sub_24D769624((v344 + 204912), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v389 = *(a3 + 8);
      v390 = *(*a3 + 32) & 0x1FFFFLL;
      v810 = v390;
      v391 = *v389;
      v392 = **(a3 + 16);
      if (v391 == 1)
      {
        *(*(v392 + 204944) - 8) += v390;
      }

      else
      {
        sub_24D769624((v392 + 204936), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v433 = *(a3 + 8);
      v434 = *(*a3 + 32) >> 17;
      v810 = v434;
      v435 = *v433;
      v436 = **(a3 + 16);
      if (v435 == 1)
      {
        *(*(v436 + 204968) - 8) += v434;
      }

      else
      {
        sub_24D769624((v436 + 204960), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v473 = *(a3 + 8);
      v474 = *(*a3 + 36) & 0x3FFF;
      v810 = v474;
      v475 = *v473;
      v476 = **(a3 + 16);
      if (v475 == 1)
      {
        *(*(v476 + 204992) - 8) += v474;
      }

      else
      {
        sub_24D769624((v476 + 204984), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v509 = *(a3 + 8);
      v510 = *(*a3 + 38) & 0x3FFF;
      v810 = v510;
      v511 = *v509;
      v512 = **(a3 + 16);
      if (v511 == 1)
      {
        *(*(v512 + 205016) - 8) += v510;
      }

      else
      {
        sub_24D769624((v512 + 205008), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v539 = *(a3 + 8);
      v540 = *(*a3 + 40) & 0x1FFFFLL;
      v810 = v540;
      v541 = *v539;
      v542 = **(a3 + 16);
      if (v541 == 1)
      {
        *(*(v542 + 205040) - 8) += v540;
      }

      else
      {
        sub_24D769624((v542 + 205032), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v565 = *(a3 + 8);
      v566 = *(*a3 + 44) & 0x1FFFF;
      v810 = v566;
      v567 = *v565;
      v568 = **(a3 + 16);
      if (v567 == 1)
      {
        *(*(v568 + 205064) - 8) += v566;
      }

      else
      {
        sub_24D769624((v568 + 205056), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v589 = *(a3 + 8);
      v590 = *(*a3 + 48) & 0x1FFFFLL;
      v810 = v590;
      v591 = *v589;
      v592 = **(a3 + 16);
      if (v591 == 1)
      {
        *(*(v592 + 205088) - 8) += v590;
      }

      else
      {
        sub_24D769624((v592 + 205080), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v613 = *(a3 + 8);
      v614 = *(*a3 + 52);
      v810 = v614;
      v615 = *v613;
      v616 = **(a3 + 16);
      if (v615 == 1)
      {
        *(*(v616 + 205112) - 8) += v614;
      }

      else
      {
        sub_24D769624((v616 + 205104), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v637 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 48));
      v810 = v78;
      v638 = *v637;
      v80 = **(a3 + 16);
      if (v638 == 1)
      {
        v81 = 8528;
        goto LABEL_564;
      }

      v142 = v80 + 25641;
      goto LABEL_572;
    case 14:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v13 = *(a3 + 8);
      v14 = *(*a3 + 16) & 0x3FFFFFLL;
      v810 = v14;
      v15 = *v13;
      v16 = **(a3 + 16);
      if (v15 == 1)
      {
        *(*(v16 + 205160) - 8) += v14;
      }

      else
      {
        sub_24D769624((v16 + 205152), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v73 = *(a3 + 8);
      v74 = *(*a3 + 20) & 0x3FFFFF;
      v810 = v74;
      v75 = *v73;
      v76 = **(a3 + 16);
      if (v75 == 1)
      {
        *(*(v76 + 205184) - 8) += v74;
      }

      else
      {
        sub_24D769624((v76 + 205176), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v138 = *(a3 + 8);
      v139 = *(*a3 + 24) & 0x7FFFFLL;
      v810 = v139;
      v140 = *v138;
      v141 = **(a3 + 16);
      if (v140 == 1)
      {
        *(*(v141 + 205208) - 8) += v139;
      }

      else
      {
        sub_24D769624((v141 + 205200), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v199 = *(a3 + 8);
      v78 = *(*a3 + 28) & 0x3FFFFF;
      v810 = v78;
      v200 = *v199;
      v80 = **(a3 + 16);
      if (v200 == 1)
      {
        v81 = 8624;
        goto LABEL_564;
      }

      v142 = v80 + 25653;
      goto LABEL_572;
    case 15:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v37 = *(a3 + 8);
      v38 = *(*a3 + 16) & 0x3FFFLL;
      v810 = v38;
      v39 = *v37;
      v40 = **(a3 + 16);
      if (v39 == 1)
      {
        *(*(v40 + 205256) - 8) += v38;
      }

      else
      {
        sub_24D769624((v40 + 205248), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v98 = *(a3 + 8);
      v99 = (*(*a3 + 16) >> 16) & 0x3FFFLL;
      v810 = v99;
      v100 = *v98;
      v101 = **(a3 + 16);
      if (v100 == 1)
      {
        *(*(v101 + 205280) - 8) += v99;
      }

      else
      {
        sub_24D769624((v101 + 205272), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v159 = *(a3 + 8);
      v160 = *(*a3 + 20) & 0x3FFF;
      v810 = v160;
      v161 = *v159;
      v162 = **(a3 + 16);
      if (v161 == 1)
      {
        *(*(v162 + 205304) - 8) += v160;
      }

      else
      {
        sub_24D769624((v162 + 205296), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v217 = *(a3 + 8);
      v218 = *(*a3 + 22) & 0x3FFF;
      v810 = v218;
      v219 = *v217;
      v220 = **(a3 + 16);
      if (v219 == 1)
      {
        *(*(v220 + 205328) - 8) += v218;
      }

      else
      {
        sub_24D769624((v220 + 205320), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v271 = *(a3 + 8);
      v272 = *(*a3 + 24) & 0x1FFFLL;
      v810 = v272;
      v273 = *v271;
      v274 = **(a3 + 16);
      if (v273 == 1)
      {
        *(*(v274 + 205352) - 8) += v272;
      }

      else
      {
        sub_24D769624((v274 + 205344), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v321 = *(a3 + 8);
      v322 = (*(*a3 + 24) >> 16) & 0x1FFFLL;
      v810 = v322;
      v323 = *v321;
      v324 = **(a3 + 16);
      if (v323 == 1)
      {
        *(*(v324 + 205376) - 8) += v322;
      }

      else
      {
        sub_24D769624((v324 + 205368), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v369 = *(a3 + 8);
      v370 = *(*a3 + 28) & 0x1FFF;
      v810 = v370;
      v371 = *v369;
      v372 = **(a3 + 16);
      if (v371 == 1)
      {
        *(*(v372 + 205400) - 8) += v370;
      }

      else
      {
        sub_24D769624((v372 + 205392), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v413 = *(a3 + 8);
      v414 = (*(*a3 + 24) >> 45) & 0x3FFFFLL;
      v810 = v414;
      v415 = *v413;
      v416 = **(a3 + 16);
      if (v415 == 1)
      {
        *(*(v416 + 205424) - 8) += v414;
      }

      else
      {
        sub_24D769624((v416 + 205416), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v453 = *(a3 + 8);
      v454 = *(*a3 + 32) & 0x3FFFFLL;
      v810 = v454;
      v455 = *v453;
      v456 = **(a3 + 16);
      if (v455 == 1)
      {
        *(*(v456 + 205448) - 8) += v454;
      }

      else
      {
        sub_24D769624((v456 + 205440), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v493 = *(a3 + 8);
      v78 = *(*a3 + 36) & 0x3FFFF;
      v810 = v78;
      v494 = *v493;
      v80 = **(a3 + 16);
      if (v494 == 1)
      {
        v81 = 8864;
LABEL_564:
        v717 = *(v80 + (v81 | 0x30000u));
        *(v717 - 8) += v78;
      }

      else
      {
        v142 = v80 + 25683;
LABEL_572:
        sub_24D769624(v142, &v810);
      }

      return;
    default:
      return;
  }
}