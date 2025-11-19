void *sub_24D809E40(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_24D7A2168(result, a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t **sub_24D809EE0(uint64_t **a1)
{
  sub_24D76DFE8();
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2++;
      agxps_timeseries_destroy(v4);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t agxps_derived_counter_gpu_descriptor_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((!a5 || a3 && a4) && (!a8 || a6 && a7))
  {
    operator new();
  }

  return 0;
}

uint64_t agxps_counter_get_raw_counters_used_by_derived_counters(unsigned int *a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  is_valid = agxps_gpu_is_valid(a1);
  if (a2)
  {
    v10 = is_valid;
  }

  else
  {
    v10 = 0;
  }

  if (!a3)
  {
    v10 = 0;
  }

  if (!a4)
  {
    v10 = 0;
  }

  if (a5)
  {
    i = v10;
  }

  else
  {
    i = 0;
  }

  if (i == 1)
  {
    v23 = a5;
    v25 = 0u;
    v26 = 0u;
    v27 = 1065353216;
    do
    {
      v12 = *a2;
      if (agxps_counter_is_derived(*a2))
      {
        v39 = &unk_2860BB368;
        memset(v40, 0, sizeof(v40));
        v41 = 1065353216;
        v36 = &unk_2860BB368;
        memset(v37, 0, sizeof(v37));
        v38 = 1065353216;
        v29[0] = &unk_2860BB340;
        v13 = sub_24D766980(a1);
        v29[0] = &unk_2860BB388;
        v29[1] = v13;
        v29[2] = a1;
        v29[3] = &v39;
        v29[4] = &v36;
        __p = 0u;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v30 = 1;
        v35 = 1065353216;
        memset(v28, 0, sizeof(v28));
        sub_24D76DEA4(v28);
        v14 = sub_24D7669FC(v12);
        sub_24D765C78(v14, a1, v29, &v39, &v36, v28);
        v16 = *(&v32 + 1);
        v15 = v33;
        while (v16 != v15)
        {
          v18 = *v16;
          v17 = v16[1];
          while (v18 != v17)
          {
            sub_24D80A47C(&v25, v18++);
          }

          v16 += 3;
        }

        sub_24D809EE0(v28);
        v29[0] = &unk_2860BB388;
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v34);
        v28[0] = &v32 + 1;
        std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](v28);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        v36 = &unk_2860BB368;
        sub_24D76867C(v37);
        v39 = &unk_2860BB368;
        sub_24D76867C(v40);
      }

      ++a2;
      --a3;
    }

    while (a3);
    v29[0] = agxps_counter_get_ident(a1, kAGXPSCounterGPUCycles);
    sub_24D80B29C(&v25, v29);
    v29[0] = agxps_counter_get_ident(a1, kAGXPSCounterDeltaSeconds);
    sub_24D80B29C(&v25, v29);
    v19 = *(&v26 + 1);
    *v23 = *(&v26 + 1);
    if (v19)
    {
      v20 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
      *a4 = v20;
      v21 = v26;
      for (i = 1; v21; v21 = *v21)
      {
        *v20++ = v21[2];
      }
    }

    else
    {
      *a4 = 0;
      i = 1;
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v25);
  }

  return i;
}

void *sub_24D80A3D8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_24D80A440(result, a3);
  }

  return result;
}

void sub_24D80A440(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24D7A2168(a1, a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void *sub_24D80A47C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24D80A694(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  sub_24D80A744((a1 + 8), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

BOOL sub_24D80A6EC(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v3 = sub_24D76C714((a1 + 8), __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

const void **sub_24D80A744(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_24D769D18(&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

uint64_t sub_24D80A9B0(uint64_t a1, uint64_t a2, char *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = agxps_counter_get_ident(*(a1 + 16), kAGXPSCounterGPUCycles);
  sub_24D80B0A0(&__p, v10, 1uLL);
  sub_24D80ACB4(a1, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (a3)
  {
    v10[0] = agxps_counter_get_ident(*(a1 + 16), a3);
    sub_24D80B0A0(&__p, v10, 1uLL);
    sub_24D80ACB4(a1, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_24D80AA98(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = agxps_counter_get_ident(*(a1 + 16), kAGXPSCounterDeltaSeconds);
  sub_24D80B0A0(__p, v7, 1uLL);
  sub_24D80ACB4(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_24D80AB34(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 40);
  sub_24D809C80(a1, a2, &__p);
  __src = 0;
  v17 = 0;
  v18 = 0;
  v4 = __p;
  if (v3)
  {
    v5 = (__p + 8);
  }

  else
  {
    v5 = v20;
    if (__p == v20)
    {
      goto LABEL_18;
    }
  }

  do
  {
    ident = agxps_counter_get_ident(*(a1 + 16), *v4);
    v7 = v17;
    if (v17 >= v18)
    {
      v9 = __src;
      v10 = v17 - __src;
      v11 = (v17 - __src) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v13 = v18 - __src;
      if ((v18 - __src) >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        sub_24D7658EC(&__src, v14);
      }

      *(8 * v11) = ident;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      v15 = __src;
      __src = 0;
      v17 = v8;
      v18 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v17 = ident;
      v8 = (v7 + 8);
    }

    v17 = v8;
    ++v4;
  }

  while (v4 != v5);
LABEL_18:
  sub_24D80ACB4(a1, &__src);
  agxps_timeseries_create();
}

uint64_t sub_24D80ACB4(uint64_t a1, unint64_t **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if ((v5 - *a2) < 9 || v4 == v5)
  {
LABEL_6:
    result = sub_24D80AEFC((a1 + 96), v4);
    if (!result)
    {
      v8 = *a2;
      v9 = a2[1];
      if (*a2 == v9)
      {
        v11 = *a2;
      }

      else
      {
        do
        {
          v10 = *v8++;
          v14[0] = v10;
          sub_24D80A47C((a1 + 96), v14);
        }

        while (v8 != v9);
        v11 = *a2;
        v8 = a2[1];
      }

      v12 = *v11;
      v15 = *v11;
      if (v8 - v11 == 8 && agxps_counter_is_derived(v12))
      {
        sub_24D769624((a1 + 48), &v15);
        v13 = sub_24D7669FC(v15);
        memset(v14, 0, sizeof(v14));
        sub_24D76DEA4(v14);
        sub_24D765C78(v13, *(a1 + 16), a1, *(a1 + 24), *(a1 + 32), v14);
        return sub_24D809EE0(v14);
      }

      else
      {
        return sub_24D80ADDC(a1 + 72, a2);
      }
    }
  }

  else
  {
    while (1)
    {
      result = agxps_counter_is_derived(*v4);
      if (result)
      {
        break;
      }

      if (++v4 == v5)
      {
        v4 = *a2;
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_24D80ADDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v17[4] = a1;
    if (v11)
    {
      sub_24D80AFB0(a1, v11);
    }

    v12 = 24 * v8;
    sub_24D765848(v12, a2);
    v7 = v12 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 24;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_24D80B008(v17);
  }

  else
  {
    result = sub_24D765848(v4, a2);
    v7 = result + 24;
  }

  *(a1 + 8) = v7;
  return result;
}

void *sub_24D80AEFC(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_24D80AFB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D80B008(uint64_t a1)
{
  sub_24D80B040(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24D80B040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_24D80B0A0(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_24D7658B0(result, a3);
  }

  return result;
}

uint64_t **sub_24D80B108(void *a1, const void **a2)
{
  v3 = sub_24D80B17C(a1, a2);
  v4 = v3;
  if (v3)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v3;
    do
    {
      v7 = *v7;
    }

    while (v7 && v7[3] == v5 && !memcmp(v7[2], v6, v5));
  }

  return v4;
}

uint64_t **sub_24D80B17C(void *a1, uint64_t a2)
{
  v4 = sub_24D769D18(&v17, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v6 == v15)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t *sub_24D80B29C(void *a1, unint64_t *a2)
{
  result = sub_24D80AEFC(a1, a2);
  if (result)
  {
    sub_24D80B2D4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_24D80B2D4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_24D80B318(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_24D80B318@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_24D80B454(uint64_t result)
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

uint64_t sub_24D80B53C(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2860BB3B0;
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
  if (*(a2 + 7) && *(a2 + 8))
  {
    v48 = 294;
    __p[3] = &unk_2860BB3D8;
    LOBYTE(v46) = 0;
    v12 = sub_24D79714C(__p, 294);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = 0;
      v15 = *(a2 + 7);
      v16 = __p[0];
      do
      {
        v12 = sub_24D80EDE0(v12, *(v15 + 8 * v14));
        if (v12 != 294)
        {
          *&v16[(v12 >> 3) & 0x1FFFFFF8] |= 1 << v12;
          v13 = *(a2 + 8);
        }

        ++v14;
      }

      while (v14 < v13);
    }

    operator new();
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = *(a2 + 9);
  v17 = (a1 + 328);
  v18 = 12480;
  do
  {
    *(v17 - 88) = 0;
    *v17 = 0;
    v17 += 96;
    v18 -= 96;
  }

  while (v18);
  v19 = 448;
  v20 = (a1 + 12768);
  do
  {
    *(v20 - 48) = 0;
    *v20 = 0;
    v20 += 56;
    v19 -= 56;
  }

  while (v19);
  v21 = (a1 + 13200);
  v22 = 640;
  do
  {
    *(v21 - 32) = 0;
    *v21 = 0;
    v21 += 40;
    v22 -= 40;
  }

  while (v22);
  v23 = (a1 + 13912);
  v24 = 4080;
  do
  {
    *(v23 - 8) = 0;
    *v23 = 0;
    v23 += 16;
    v24 -= 16;
  }

  while (v24);
  v25 = 128;
  v26 = (a1 + 18016);
  do
  {
    *(v26 - 12) = 0;
    *v26 = 0;
    v26 += 16;
    v25 -= 16;
  }

  while (v25);
  v27 = (a1 + 18144);
  v28 = 128;
  do
  {
    *(v27 - 12) = 0;
    *v27 = 0;
    v27 += 16;
    v28 -= 16;
  }

  while (v28);
  v29 = (a1 + 18272);
  v30 = 128;
  do
  {
    *(v29 - 12) = 0;
    *v29 = 0;
    v29 += 16;
    v30 -= 16;
  }

  while (v30);
  v31 = (a1 + 18432);
  v32 = 6144;
  do
  {
    *(v31 - 40) = 0;
    *v31 = 0;
    v31 += 48;
    v32 -= 48;
  }

  while (v32);
  v33 = 8320;
  v34 = 24536;
  do
  {
    v35 = (a1 + v34);
    *v35 = 0;
    v35[1] = 0;
    v34 += 1040;
    v33 -= 1040;
  }

  while (v33);
  *(a1 + 17984) = 0u;
  *(a1 + 18000) = 0;
  *(a1 + 32856) = 0u;
  *(a1 + 32872) = 0u;
  v36 = *(a1 + 20);
  if (v36 == 0x2000)
  {
    v37 = 7;
  }

  else
  {
    v37 = 0;
  }

  if (v36 == 4096)
  {
    v38 = 6;
  }

  else
  {
    v38 = v37;
  }

  if (v36 == 2048)
  {
    v39 = 5;
  }

  else
  {
    v39 = 0;
  }

  if (v36 == 1024)
  {
    v40 = 4;
  }

  else
  {
    v40 = v39;
  }

  if (v36 <= 4095)
  {
    v38 = v40;
  }

  if (v36 == 512)
  {
    v41 = 3;
  }

  else
  {
    v41 = 0;
  }

  if (v36 == 256)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41;
  }

  if (v36 == 128)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (v36 <= 1023)
  {
    v44 = v43;
  }

  else
  {
    v44 = v38;
  }

  *(a1 + 156) = v44;
  sub_24D790B1C((a1 + 8), (a1 + 32856));
  return a1;
}

uint64_t sub_24D80B940(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5)
{
  v283 = *MEMORY[0x277D85DE8];
  if (!a2 || (v7 = a3) == 0)
  {
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_641;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    operator new();
  }

  *v277 = *(a1 + 200);
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
  v268 = *(v10 + 225768);
  if (a5)
  {
    *a5 = 0;
  }

  v14 = 8 * v7;
  v276 = 0;
  if (!(8 * v7))
  {
    v274 = 0;
    v16 = 0;
    goto LABEL_624;
  }

  v262 = a5;
  v15 = 0;
  v273 = 0;
  v274 = 0;
  v16 = 0;
  v17 = 0;
  v269 = 0;
  v270 = 0;
  v272 = 0;
  v267 = a1 + 240;
  v258 = a1 + 18260;
  v257 = a1 + 18132;
  v259 = a1 + 17984;
  v260 = a1 + 13904;
  v264 = a1 + 18392;
  v261 = a1 + 13808;
  v265 = a1 + 12720;
  v263 = a1 + 24536;
  v266 = a1 + 13168;
  v18 = 1;
  while (1)
  {
    v19 = *(a1 + 112);
    if (v19 > *(a1 + 56) || v14 - v15 <= 0x300 && (memset(__s1, 0, sizeof(__s1)), !memcmp(__s1, (a2 + (v15 >> 3)), v7 - (v15 >> 3))))
    {
LABEL_621:
      if ((v18 & 1) == 0)
      {
        sub_24D7975E0(*v277, 0, v270, v17, v276 - v273);
      }

      goto LABEL_624;
    }

    *(a1 + 104) = v15;
    v275 = 0;
    sub_24D819134(__s1, a2, &v276, &v275);
    if ((v275 & 1) == 0)
    {
      break;
    }

    switch(LODWORD(__s1[0]))
    {
      case 0:
        if ((~*(a1 + 232) & 3) == 0)
        {
          goto LABEL_535;
        }

        if (LOBYTE(__s1[1]) > 0x81u)
        {
          goto LABEL_535;
        }

        v20 = v267 + 96 * LOBYTE(__s1[1]);
        sub_24D79D2F0(a1, LOBYTE(__s1[1]), *v277, v20);
        v21 = (*v277 + 1000 * *(v20 + 36));
        v22 = v21 + 89;
        sub_24D7C6FE8(v21 + 89, *v277, (LOWORD(__s1[1]) >> 6) & 0x100 | BYTE1(__s1[1]) & 0x3F);
        v23 = v21[113];
        if (!v23)
        {
          goto LABEL_535;
        }

        v24 = sub_24D765B7C(v21 + 102, v23 - 1);
        v25 = v274;
        if (!v24)
        {
          goto LABEL_603;
        }

        buf[0] = 10;
        goto LABEL_601;
      case 1:
        v89 = *(a1 + 16);
        v90 = *(a1 + 128);
        v91 = v90 % v89;
        v92 = v90 + v89;
        if (v91)
        {
          v92 = (v92 - 1) / v89 * v89;
        }

        *(a1 + 128) = v92;
        v93 = *v277;
        *buf = v92;
        sub_24D769624((*v277 + 225840), buf);
        if (!(*buf % v89))
        {
          v93[28236] = ((v93[28228] - v93[28227]) >> 3) - 1 + ((v93[28231] - v93[28230]) << 29) - 0x100000000;
        }

        v18 = 0;
        ++*(a1 + 152);
        goto LABEL_536;
      case 2:
        v49 = *v277;
        v50 = *(*v277 + 225848);
        v51 = *(*v277 + 225840);
        if (v50 - v51 == 8 && !*(v50 - 8))
        {
          *(*v277 + 225848) = v51;
        }

        v256 = v7;
        v52 = v19 + (1 << (*(a1 + 156) + 6));
        v53 = sub_24D797778(a1, v49, __s1[1] & 0xFFFFF, v52);
        sub_24D7D00E8(v49, (a1 + 149), *(a1 + 16), (a1 + 128), v53);
        if (v53 < *(a1 + 128))
        {
          v54 = sub_24D809C04();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1522;
            *&buf[18] = 2080;
            *&buf[20] = "uscTimestamp >= parser->lastUSCTimestamp";
            _os_log_error_impl(&dword_24D764000, v54, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v55 = *v277;
        v56 = *(a1 + 16);
        *buf = v53;
        sub_24D769624((*v277 + 225840), buf);
        if (!(*buf % v56))
        {
          v55[28236] = ((v55[28228] - v55[28227]) >> 3) - 1 + ((v55[28231] - v55[28230]) << 29) - 0x100000000;
        }

        *(a1 + 128) = v53;
        *(a1 + 136) = v53;
        *(a1 + 144) = __s1[1] & 0xFFFFF;
        *(a1 + 152) = 0;
        v57 = *v277;
        *buf = sub_24D79CF24(v52, a1 + 32856, (a1 + 32880));
        sub_24D769624((v57 + 225816), buf);
        *(a1 + 112) = v52;
        *buf = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
        sub_24D7979B0(*v277 + 225864, buf);
        goto LABEL_90;
      case 3:
        v69 = *v277;
        v70 = *v277 + 225280;
        v71 = *(*v277 + 225824);
        v72 = *(*v277 + 225816);
        if (v71 - v72 == 8 && !*(v71 - 8))
        {
          *(*v277 + 225824) = v72;
        }

        v73 = v7;
        v74 = *(v70 + 568);
        v75 = *(v70 + 560);
        if (v74 - v75 == 8 && !*(v74 - 8))
        {
          *(v70 + 568) = v75;
        }

        v76 = *(&__s1[1] + 1);
        v77 = sub_24D797778(a1, v69, __s1[1] & 0xFFFFF, *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D0084(v69, (a1 + 148), 1 << (*(a1 + 156) + 6), (a1 + 112), v76 & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D00E8(*v277, (a1 + 149), *(a1 + 16), (a1 + 128), v77);
        v78 = *(a1 + 112);
        if ((*(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFuLL) <= v78 && v78)
        {
          v79 = sub_24D809C04();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1437;
            *&buf[18] = 2080;
            *&buf[20] = "token.bits.tok.timeStamp.systemTime > parser->lastSystemTimestamp || !parser->lastSystemTimestamp";
            _os_log_error_impl(&dword_24D764000, v79, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v80 = *v277;
        *buf = sub_24D79CF24(*(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL, a1 + 32856, (a1 + 32880));
        sub_24D769624((v80 + 225816), buf);
        v81 = *v277;
        v82 = (*v277 + 225280);
        if (*(*v277 + 225848) == *(*v277 + 225840) || (v83 = *(a1 + 128), v77 > v83))
        {
          v84 = *(a1 + 16);
          *buf = v77;
          sub_24D769624((*v277 + 225840), buf);
          if (!(*buf % v84))
          {
            v82[76] = ((v82[68] - v82[67]) >> 3) - 1 + ((v82[71] - v82[70]) << 29) - 0x100000000;
          }

          *(a1 + 128) = v77;
          *(a1 + 136) = v77;
          *(a1 + 144) = __s1[1] & 0xFFFFF;
          v81 = *v277;
          v25 = v274;
        }

        else
        {
          v25 = v274;
          if (v77 < v83)
          {
            *(a1 + 136) = v83;
            *(a1 + 144) = (__s1[1] & 0xFFFFF) + v77 - v83;
          }
        }

        *(a1 + 152) = 0;
        v7 = v73;
        if ((v17 & 1) == 0)
        {
          v85 = v81[28227];
          v86 = ((v81[28228] - v85) >> 3) - 1 + ((v81[28231] - v81[28230]) << 29) - 0x100000000;
          v270 = v86;
          if ((v272 & 1) != 0 && (*(v85 + 8 * v269) + 2 * v81[28226]) < *(v85 + 8 * v86) && (v87 = sub_24D7BFD38(a1, a4, v81, v269), v81 = *v277, v87))
          {
            v249 = v249 & 0xFFFFFFFF00000000 | v272;
            sub_24D7975E0(*v277, 2, v269, v272, 0);
            v17 = 1;
            v81 = *v277;
          }

          else
          {
            v17 = 1;
          }
        }

        *buf = ((v81[28228] - v81[28227]) >> 3) - 1 + ((v81[28231] - v81[28230]) << 29) - 0x100000000;
        sub_24D7979B0((v81 + 28233), buf);
        v18 = 0;
        v138 = *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 112) = *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 120) = v138;
        *(a1 + 156) = __s1[2];
        goto LABEL_604;
      case 4:
        v36 = sub_24D809C04();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1584;
          *&buf[18] = 2080;
          *&buf[20] = "false";
          _os_log_error_impl(&dword_24D764000, v36, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
        }

        v25 = v274;
        if (sub_24D809BF4())
        {
          sub_24D809BFC();
        }

        goto LABEL_603;
      case 5:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_535;
        }

        v100 = __s1[1];
        v101 = WORD2(__s1[1]);
        v102 = LODWORD(__s1[1]) == 1 ? BYTE4(__s1[1]) & 0xF | 0x60 : BYTE4(__s1[1]);
        if (v102 > 0x81u)
        {
          goto LABEL_535;
        }

        v253 = LODWORD(__s1[1]) == 1;
        v256 = v7;
        v251 = DWORD2(__s1[1]);
        v103 = v267 + 96 * v102;
        if (*(v103 + 88) != 1)
        {
          goto LABEL_154;
        }

        if (*(v103 + 82) == 1)
        {
          sub_24D7C0094(a1, *v277, ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000, *(v103 + 36), 1);
          if (*(v103 + 88) == 1)
          {
            *(v103 + 88) = 0;
          }

LABEL_154:
          sub_24D79D2F0(a1, v102, *v277, v103);
          if ((*(v103 + 88) & 1) == 0)
          {
            sub_24D79D030();
LABEL_646:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }
        }

        *(v103 + 83) = v253;
        *(v103 + 82) = 1;
        *(v103 + 36) = v102;
        if (v100)
        {
          v18 = 0;
          v104 = *(a1 + 168);
          if (v104 == 0x8000000000000000)
          {
            v104 = 0;
          }

          *(a1 + 168) = v104 + 1;
          v105 = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
          *(v103 + 16) = v104;
          *(v103 + 37) = BYTE1(v101) & 0x7F;
          v106 = v264 + 48 * ((v101 >> 8) & 0x7F);
          *v106 = v104;
          *(v106 + 8) = 0;
          *(v106 + 16) = 0;
          *(v106 + 24) = 0;
          *(v106 + 28) = 0;
          *(v106 + 32) = v105;
          *(v106 + 40) = 1;
          goto LABEL_91;
        }

        *(v103 + 36) = v101;
        if (v251 > 7)
        {
LABEL_90:
          v18 = 0;
LABEL_91:
          v25 = v274;
          goto LABEL_92;
        }

        v144 = v261 + 12 * v251;
        v145 = *v144;
        *(v103 + 76) = *v144;
        if (v145 <= 7)
        {
          v146 = v265 + 56 * v145;
          if (*(v146 + 48) == 1)
          {
            *(v103 + 32) = *(v146 + 24);
          }

          if (*(v103 + 16) == -1)
          {
            v147 = v263 + 1040 * v145;
            v148 = *(v144 + 8);
            if ((*(v147 + ((v148 >> 3) & 8)) >> v148))
            {
              *(v103 + 16) = *(v147 + 8 * (v148 & 0x7F) + 16);
            }

            else if ((a4 & 0x20) != 0)
            {
              v227 = *(a1 + 176);
              if (!v227)
              {
                v227 = 0x8000000000000000;
              }

              *(a1 + 176) = v227 + 1;
              *(v103 + 16) = v227;
              v228 = *(v144 + 8);
              *(v147 + 8 * (v228 & 0x7F) + 16) = v227;
              *(v147 + ((v228 >> 3) & 8)) |= 1 << v228;
            }
          }
        }

        v25 = v274;
        if (v251 - 4 <= 2 && (v229 = v266 + 40 * (v251 - 4), *(v229 + 32) == 1))
        {
          v18 = 0;
          *(v103 + 24) = *(v229 + 16);
        }

        else
        {
LABEL_620:
          v18 = 0;
        }

LABEL_92:
        v7 = v256;
        goto LABEL_604;
      case 6:
        if ((~*(a1 + 232) & 0xF) != 0)
        {
          sub_24D7C0094(a1, *v277, ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000, LOBYTE(__s1[1]), 0);
        }

        goto LABEL_535;
      case 7:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_535;
        }

        v279.i64[0] = 0;
        v25 = v274;
        if (DWORD1(__s1[1]) == 1)
        {
          v279.i64[0] = (*(&__s1[1] + 1) >> 5) & 0xFFFFFFFFFFFFLL;
          v88 = v260 + 16 * (BYTE8(__s1[1]) & 0x1F);
          *v88 = v279.i64[0];
          *(v88 + 8) = 1;
        }

        else
        {
          if (BYTE8(__s1[1]) == 255)
          {
            goto LABEL_603;
          }

          v141 = v260 + 16 * BYTE8(__s1[1]);
          if (*(v141 + 8) != 1)
          {
            goto LABEL_603;
          }

          v279.i64[0] = *v141;
        }

        LOBYTE(v278) = __s1[1];
        *buf = a1;
        *&buf[8] = &v278;
        *&buf[16] = v277;
        *&buf[24] = &v279;
        if (LOBYTE(__s1[1]) <= 0x81uLL)
        {
          sub_24D7A109C(buf, v267 + 96 * v278);
        }

        goto LABEL_603;
      case 8:
        if ((*(a1 + 232) & 4) != 0)
        {
          goto LABEL_535;
        }

        v278 = a1;
        v25 = v274;
        if (LOBYTE(__s1[1]) > 0x81uLL)
        {
          goto LABEL_603;
        }

        v116 = v7;
        v117 = v267 + 96 * LOBYTE(__s1[1]);
        if (*(v117 + 88) != 1)
        {
          goto LABEL_595;
        }

        v118 = *(v117 + 76);
        if (SDWORD1(__s1[1]) > 1)
        {
          if (DWORD1(__s1[1]) == 2)
          {
            v194 = *(&__s1[1] + 15);
            if (BYTE14(__s1[1]))
            {
              v211 = __s1[2] & 0xF;
              if (HIBYTE(__s1[1]))
              {
                v212 = 6;
              }

              else
              {
                v212 = 12;
              }

              *(&v279 | v212) = v211;
              if (v194)
              {
                v213 = 4;
              }

              else
              {
                v213 = 8;
              }

              *(&v279 | v213) = v211;
              if (v194)
              {
                v214 = 2;
              }

              else
              {
                v214 = 4;
              }

              *(&v279 | v214) = v211;
              v279.i16[0] = v211;
              v215 = v211 + 1;
              v279.i16[7] = v215;
              if (v194)
              {
                v216 = 12;
              }

              else
              {
                v216 = 10;
              }

              *(&v279 | v216) = v215;
              if (v194)
              {
                v217 = 10;
              }

              else
              {
                v217 = 6;
              }

              *(&v279 | v217) = v215;
              if (v194)
              {
                v218 = 8;
              }

              else
              {
                v218 = 2;
              }

              *(&v279 | v218) = v215;
              v219 = (v194 >> 1) & 0xF;
              *(buf | v218) = v219;
              *buf = (v194 >> 1) & 0xF;
              *(buf | v217) = v219 + 1;
              *(buf | v214) = v219 + 1;
              *(buf | v216) = v219 + 2;
              *(buf | v213) = v219 + 2;
              LOWORD(v219) = v219 + 3;
              *(buf | v212) = v219;
              *&buf[14] = v219;
            }

            else
            {
              v279 = vmovl_u8(*(&__s1[2] + 7));
              *buf = vmovl_u8(*(&__s1[1] + 15));
            }

            v220 = ((WORD6(__s1[1]) & 0x7FF) << 20) | (DWORD2(__s1[1]) >> 6) & 0xFFC00 | WORD4(__s1[1]) & 0x3FF;
            if (v118 <= 7)
            {
              v221 = v258 + 16 * v118;
              *v221 = WORD4(__s1[1]) & 0x3FF;
              *(v221 + 4) = vand_s8(vshl_u32(vdup_n_s32(v220), 0xFFFFFFECFFFFFFF6), 0x7FF000003FFLL);
              *(v221 + 12) = 1;
            }

            v222 = *(v117 + 75);
            v126 = (v117 + 75);
            *(v126 - 37) = 1;
            v223 = v279;
            *(v126 - 36) = *buf;
            *(v126 - 20) = v223;
            *(v126 - 1) = v220;
            if ((v222 & 1) == 0)
            {
LABEL_594:
              *v126 = 1;
            }
          }

          else if (DWORD1(__s1[1]) == 3)
          {
            *buf = 0;
            *&buf[8] = 0;
            v279 = 0uLL;
            v156 = *(&__s1[1] + 9);
            if (BYTE8(__s1[1]))
            {
              v198 = BYTE10(__s1[1]) & 0xF;
              v199 = (BYTE9(__s1[1]) & 1) != 0 ? 6 : 12;
              *(&v279 | v199) = v198;
              v200 = (v156 & 1) != 0 ? 4 : 8;
              *(&v279 | v200) = v198;
              v201 = (v156 & 1) != 0 ? 2 : 4;
              *(&v279 | v201) = v198;
              v279.i16[0] = v198;
              v202 = v198 + 1;
              v279.i16[7] = v202;
              v203 = (v156 & 1) != 0 ? 12 : 10;
              *(&v279 | v203) = v202;
              v204 = (v156 & 1) != 0 ? 10 : 6;
              *(&v279 | v204) = v202;
              v205 = (v156 & 1) != 0 ? 8 : 2;
              *(&v279 | v205) = v202;
              v206 = (v156 >> 1) & 0xF;
              *(buf | v205) = v206;
              *buf = (v156 >> 1) & 0xF;
              *(buf | v204) = v206 + 1;
              *(buf | v201) = v206 + 1;
              *(buf | v203) = v206 + 2;
              *(buf | v200) = v206 + 2;
              LOWORD(v206) = v206 + 3;
              *(buf | v199) = v206;
              *&buf[14] = v206;
            }

            else
            {
              v279 = vmovl_u8(*(&__s1[2] + 1));
              *buf = vmovl_u8(*(&__s1[1] + 9));
            }

            if (v118 <= 7)
            {
              v207 = v258 + 16 * v118;
              if (*(v207 + 12) == 1)
              {
                v208 = *v207 & 0x3FF | ((*(v207 + 4) & 0x3FF) << 10) & 0x800FFFFF | ((*(v207 + 8) & 0x7FF) << 20);
                v209 = *(v117 + 75);
                v126 = (v117 + 75);
                *(v126 - 37) = 1;
                v210 = v279;
                *(v126 - 36) = *buf;
                *(v126 - 20) = v210;
                *(v126 - 1) = v208;
                if ((v209 & 1) == 0)
                {
                  goto LABEL_594;
                }
              }
            }
          }
        }

        else if (DWORD1(__s1[1]))
        {
          if (DWORD1(__s1[1]) == 1)
          {
            v119 = sub_24D7C81B0(&v278, *(&__s1[1] + 12), SBYTE4(__s1[2]), *(v117 + 76));
            if (v118 <= 7)
            {
              v121 = v257 + 16 * v118;
              if (*(v121 + 12) == 1)
              {
                v122 = WORD4(__s1[1]);
                v123 = *v121 + (BYTE8(__s1[1]) & 0xFu);
                v124 = (v120 & 0x7FF) << 11;
                *v121 = v123;
                v125 = vadd_s32(*(v121 + 4), vand_s8(vshl_u32(vdup_n_s32(v122), 0xFFFFFFF8FFFFFFFCLL), 0xF0000000FLL));
                *(v121 + 4) = v125;
                v127 = *(v117 + 75);
                v126 = (v117 + 75);
                *(v126 - 7) = v125.i32[1];
                *(v126 - 37) = 0;
                *(v126 - 36) = v123 | (v125.u32[0] << 32);
                *(v126 - 6) = WORD2(v119) & 0x7FF | v124 | (WORD2(v120) << 22);
                *(v126 - 20) = (WORD2(v119) & 0x7FF | ((v119 & 0x1F) << 33) | v124 | ((HIDWORD(v120) & 0x7FF) << 22)) >> 32;
                if ((v127 & 1) == 0)
                {
                  goto LABEL_594;
                }
              }
            }
          }
        }

        else
        {
          v188 = sub_24D7C81B0(&v278, *(&__s1[2] + 4), SBYTE12(__s1[2]), *(v117 + 76));
          v190 = *(&__s1[1] + 1);
          v191 = __s1[2];
          if (v118 <= 7)
          {
            v192 = v257 + 16 * v118;
            *v192 = *(&__s1[1] + 1);
            *(v192 + 8) = v191;
            *(v192 + 12) = 1;
          }

          v193 = *(v117 + 75);
          v126 = (v117 + 75);
          *(v126 - 37) = 0;
          *(v126 - 36) = v190;
          *(v126 - 7) = v191;
          *(v126 - 6) = WORD2(v188) & 0x7FF | ((v189 & 0x7FF) << 11) | (WORD2(v189) << 22);
          *(v126 - 20) = (HIDWORD(v188) & 0x7FF | ((v188 & 0x1F) << 33) | ((v189 & 0x7FF) << 11) | ((HIDWORD(v189) & 0x7FF) << 22)) >> 32;
          if ((v193 & 1) == 0)
          {
            goto LABEL_594;
          }
        }

LABEL_595:
        v7 = v116;
        goto LABEL_603;
      case 9:
        if (*(a1 + 232))
        {
          goto LABEL_535;
        }

        v25 = v274;
        if (LOBYTE(__s1[1]) > 0x81uLL)
        {
          goto LABEL_603;
        }

        v47 = v267 + 96 * LOBYTE(__s1[1]);
        sub_24D79D2F0(a1, LOBYTE(__s1[1]), *v277, v47);
        if (DWORD1(__s1[1]) == 2)
        {
          v48 = DWORD2(__s1[1]);
        }

        else if (DWORD1(__s1[1]) == 1)
        {
          v48 = ~(-1 << SBYTE8(__s1[1]));
        }

        else
        {
          v48 = DWORD1(__s1[1]) ? 0 : -BYTE8(__s1[1]);
        }

        v153 = *v277 + 1000 * *(v47 + 36);
        v154 = v153 + 712;
        *buf = v48;
        if (*(v153 + 1336) != 1)
        {
          goto LABEL_603;
        }

        sub_24D7A1734(v153 + 712, *v277);
        if (*(v154 + 624) != 1)
        {
          goto LABEL_548;
        }

        v155 = sub_24D790464(v154, (*(v154 + 616) - 1)) & 3;
        if (v155 <= 1)
        {
          if (!v155)
          {
            v279.i8[0] = -3;
            sub_24D7A19A8(v154 + 520, &v279);
            goto LABEL_548;
          }

          v195 = *(v154 + 560) + *(v154 + 552) - 1;
          v185 = *(*(v154 + 528) + ((v195 >> 9) & 0x7FFFFFFFFFFFF8));
          v186 = v195 & 0xFFF;
          v187 = *(v185 + v186) & 0xF3 | 4;
          goto LABEL_546;
        }

        if (v155 == 2)
        {
          v184 = *(v154 + 560) + *(v154 + 552) - 1;
          v185 = *(*(v154 + 528) + ((v184 >> 9) & 0x7FFFFFFFFFFFF8));
          v186 = v184 & 0xFFF;
          v187 = *(v185 + v186) & 0xCF | 0x10;
LABEL_546:
          *(v185 + v186) = v187;
          goto LABEL_548;
        }

        v196 = *(v154 + 560) + *(v154 + 552) - 1;
        v197 = *(*(v154 + 528) + ((v196 >> 9) & 0x7FFFFFFFFFFFF8));
        *(v197 + (v196 & 0xFFF)) = *(v197 + (v196 & 0xFFF)) & 0x3F | 0x40;
LABEL_548:
        sub_24D7A1E04(v154 + 312, buf);
LABEL_603:
        v18 = 0;
        goto LABEL_604;
      case 0xA:
        if ((*(a1 + 232) & 0x10) != 0 || *(a1 + 48) > v19)
        {
          goto LABEL_535;
        }

        v110 = LOBYTE(__s1[1]);
        v111 = *(*v277 + 225888);
        v112 = *v277 + 24 * LOBYTE(__s1[1]) + 224520;
        v113 = *v112;
        v114 = *(*v277 + 24 * LOBYTE(__s1[1]) + 224528);
        if (*v112 == v114 || *(*(*v277 + 225840) + ((v111 >> 29) & 0x7FFFFFFF8)) - *(*(*v277 + 225840) + 8 * *(v114 - 1)) >= *(a1 + 160))
        {
          v142 = *(*v277 + 24 * LOBYTE(__s1[1]) + 224536);
          if (v114 >= v142)
          {
            v149 = (v114 - v113) >> 3;
            if ((v149 + 1) >> 61)
            {
              goto LABEL_646;
            }

            v254 = LOBYTE(__s1[1]);
            v150 = v142 - v113;
            v151 = v150 >> 2;
            if (v150 >> 2 <= (v149 + 1))
            {
              v151 = v149 + 1;
            }

            if (v150 >= 0x7FFFFFFFFFFFFFF8)
            {
              v152 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v152 = v151;
            }

            if (v152)
            {
              sub_24D7658EC(v112, v152);
            }

            v157 = (8 * v149);
            *v157 = v111;
            v143 = 8 * v149 + 8;
            v158 = *(v112 + 8) - *v112;
            v159 = v157 - v158;
            memcpy(v157 - v158, *v112, v158);
            v160 = *v112;
            *v112 = v159;
            *(v112 + 8) = v143;
            *(v112 + 16) = 0;
            if (v160)
            {
              operator delete(v160);
            }

            v110 = v254;
          }

          else
          {
            *v114 = v111;
            v143 = (v114 + 8);
          }

          *(v112 + 8) = v143;
          if (v110 < 0x14)
          {
            v115 = (v259 + v110);
            *(v259 + v110) = 0;
            buf[0] = 0;
            goto LABEL_242;
          }
        }

        else
        {
          buf[0] = 0;
          if (LOBYTE(__s1[1]) <= 0x13u)
          {
            v115 = (v259 + LOBYTE(__s1[1]));
            if (!*v115)
            {
              goto LABEL_242;
            }

            if (*(v259 + LOBYTE(__s1[1])) == 1)
            {
              v115 = buf;
LABEL_242:
              *v115 = 1;
              v161 = buf[0];
              goto LABEL_244;
            }
          }
        }

        v161 = 0;
LABEL_244:
        LOBYTE(v278) = v161 & 1;
        *buf = __s1;
        *&buf[8] = &v278;
        *&buf[16] = v277;
        v162 = *(a1 + 208);
        if (v162 != *(a1 + 216))
        {
          v163 = (v162 + 24 * v110);
          v164 = *v163;
          v165 = v163[1];
          while (2)
          {
            if (v164 == v165)
            {
              goto LABEL_535;
            }

            v166 = *v164;
            v279.i64[0] = 0;
            switch(v110)
            {
              case 0:
                switch(v166)
                {
                  case 0:
                    v167 = (*(*buf + 20) >> 2) & 0xFFFFFLL;
                    goto LABEL_529;
                  case 1:
                    goto LABEL_337;
                  case 2:
                    goto LABEL_308;
                  case 3:
                    goto LABEL_344;
                  case 4:
                    LOWORD(v177) = *(*buf + 34);
                    goto LABEL_523;
                  case 5:
                    goto LABEL_431;
                  case 6:
                    goto LABEL_430;
                  case 7:
                    goto LABEL_348;
                  case 8:
                    goto LABEL_381;
                  case 9:
                    goto LABEL_274;
                  case 10:
                    v167 = (*(*buf + 44) >> 16) & 0x3FFLL;
                    goto LABEL_529;
                  case 11:
                    v181 = *(*buf + 48);
                    goto LABEL_481;
                  case 12:
                    v167 = *(*buf + 50) & 0xFFF;
                    goto LABEL_529;
                  case 13:
                    goto LABEL_404;
                  case 14:
                    goto LABEL_392;
                  case 15:
                    goto LABEL_329;
                  case 16:
                    LOWORD(v177) = *(*buf + 58);
                    goto LABEL_523;
                  case 17:
                    v177 = *(*buf + 60);
                    goto LABEL_523;
                  case 18:
                    goto LABEL_432;
                  case 19:
                    v181 = *(*buf + 64);
                    goto LABEL_481;
                  case 20:
                    LOWORD(v181) = *(*buf + 66);
LABEL_481:
                    v167 = v181 & 0x3FF;
                    goto LABEL_529;
                  case 21:
                    v167 = *(*buf + 68) & 0x7FF;
                    goto LABEL_529;
                  default:
                    goto LABEL_530;
                }

              case 1:
                switch(v166)
                {
                  case 22:
                    v173 = *(*buf + 20);
                    goto LABEL_456;
                  case 23:
                    LODWORD(v173) = *(*buf + 24);
                    goto LABEL_456;
                  case 24:
                    v173 = *(*buf + 28);
                    goto LABEL_456;
                  case 25:
                    LODWORD(v173) = *(*buf + 32);
                    goto LABEL_456;
                  case 26:
                    v173 = *(*buf + 36);
                    goto LABEL_456;
                  case 27:
                    LODWORD(v173) = *(*buf + 40);
                    goto LABEL_456;
                  case 28:
                    goto LABEL_398;
                  case 29:
                    LODWORD(v173) = *(*buf + 48);
                    goto LABEL_456;
                  case 30:
                    v167 = *(*buf + 52);
                    goto LABEL_529;
                  case 31:
                    goto LABEL_392;
                  case 32:
                    goto LABEL_418;
                  case 33:
                    goto LABEL_405;
                  case 34:
                    LODWORD(v171) = *(*buf + 60);
                    goto LABEL_502;
                  case 35:
                    LOWORD(v171) = *(*buf + 62);
                    goto LABEL_502;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 2:
                switch(v166)
                {
                  case '$':
                    goto LABEL_385;
                  case '%':
                    goto LABEL_384;
                  case '&':
                    goto LABEL_343;
                  case '\'':
                    goto LABEL_342;
                  case '(':
                    goto LABEL_341;
                  case ')':
                    goto LABEL_353;
                  case '*':
                    goto LABEL_344;
                  case '+':
                    goto LABEL_354;
                  case ',':
                    goto LABEL_407;
                  case '-':
                    goto LABEL_406;
                  case '.':
                    goto LABEL_348;
                  case '/':
                    goto LABEL_381;
                  case '0':
                    goto LABEL_274;
                  case '1':
                    goto LABEL_414;
                  case '2':
                    goto LABEL_388;
                  case '3':
                    goto LABEL_413;
                  case '4':
                    goto LABEL_404;
                  case '5':
LABEL_392:
                    v176 = *(*buf + 52);
                    goto LABEL_415;
                  case '6':
                    goto LABEL_329;
                  case '7':
LABEL_405:
                    LOWORD(v171) = *(*buf + 58);
                    goto LABEL_502;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 3:
                switch(v166)
                {
                  case '8':
                    goto LABEL_373;
                  case '9':
                    goto LABEL_337;
                  case ':':
                    goto LABEL_360;
                  case ';':
                    goto LABEL_364;
                  case '<':
                    goto LABEL_347;
                  case '=':
                    goto LABEL_412;
                  case '>':
                    goto LABEL_387;
                  case '?':
                    goto LABEL_386;
                  case '@':
                    goto LABEL_396;
                  case 'A':
                    goto LABEL_395;
                  case 'B':
                    goto LABEL_411;
                  case 'C':
                    goto LABEL_409;
                  case 'D':
                    goto LABEL_410;
                  case 'E':
                    v167 = *(*buf + 60);
                    goto LABEL_529;
                  case 'F':
                    LODWORD(v169) = *(*buf + 64);
                    goto LABEL_485;
                  case 'G':
                    v169 = *(*buf + 68);
                    goto LABEL_485;
                  case 'H':
                    LODWORD(v170) = *(*buf + 72);
                    goto LABEL_504;
                  case 'I':
                    goto LABEL_433;
                  case 'J':
                    goto LABEL_434;
                  case 'K':
                    v167 = *(*buf + 80);
                    goto LABEL_529;
                  case 'L':
                    v167 = *(*buf + 82);
                    goto LABEL_529;
                  case 'M':
                    v167 = *(*buf + 84);
                    goto LABEL_529;
                  case 'N':
                    goto LABEL_435;
                  case 'O':
                    LODWORD(v171) = *(*buf + 88);
                    goto LABEL_502;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 4:
                switch(v166)
                {
                  case 'P':
                    goto LABEL_389;
                  case 'Q':
                    goto LABEL_337;
                  case 'R':
                    goto LABEL_360;
                  case 'S':
                    goto LABEL_359;
                  case 'T':
                    goto LABEL_363;
                  case 'U':
                    goto LABEL_362;
                  case 'V':
LABEL_274:
                    v171 = *(*buf + 44);
                    goto LABEL_502;
                  case 'W':
LABEL_414:
                    v176 = *(*buf + 44);
                    goto LABEL_415;
                  case 'X':
                    goto LABEL_388;
                  case 'Y':
LABEL_413:
                    LOWORD(v171) = *(*buf + 50);
                    goto LABEL_502;
                  case 'Z':
                    goto LABEL_403;
                  case '[':
                    goto LABEL_402;
                  case '\\':
                    v169 = *(*buf + 60);
                    goto LABEL_485;
                  case ']':
                    v167 = *(*buf + 64);
                    goto LABEL_529;
                  case '^':
                    v167 = *(*buf + 66);
                    goto LABEL_529;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 5:
                if (v166 <= 98)
                {
                  if (v166 > 96)
                  {
                    if (v166 != 97)
                    {
                      goto LABEL_359;
                    }

LABEL_360:
                    v169 = *(*buf + 28);
                  }

                  else
                  {
                    if (v166 == 95)
                    {
LABEL_389:
                      v167 = (*(*buf + 20) >> 1) & 0x3FFFFLL;
                      goto LABEL_529;
                    }

                    if (v166 != 96)
                    {
                      goto LABEL_530;
                    }

LABEL_337:
                    LODWORD(v169) = *(*buf + 24);
                  }

                  goto LABEL_485;
                }

                if (v166 > 100)
                {
                  switch(v166)
                  {
                    case 'e':
                      v169 = *(*buf + 44);
                      break;
                    case 'f':
                      LODWORD(v169) = *(*buf + 48);
                      break;
                    case 'g':
                      LODWORD(v169) = *(*buf + 52);
                      break;
                    default:
                      goto LABEL_530;
                  }

                  goto LABEL_485;
                }

                if (v166 == 99)
                {
                  goto LABEL_363;
                }

                goto LABEL_362;
              case 6:
                if (v166 <= 108)
                {
                  if (v166 <= 105)
                  {
                    if (v166 == 104)
                    {
LABEL_393:
                      v175 = *(*buf + 20);
                    }

                    else
                    {
                      if (v166 != 105)
                      {
                        goto LABEL_530;
                      }

LABEL_378:
                      LODWORD(v175) = *(*buf + 24);
                    }
                  }

                  else if (v166 == 106)
                  {
LABEL_308:
                    v175 = *(*buf + 28);
                  }

                  else
                  {
                    if (v166 != 107)
                    {
                      v174 = *(*buf + 36);
                      goto LABEL_428;
                    }

LABEL_394:
                    LODWORD(v175) = *(*buf + 32);
                  }

LABEL_465:
                  v167 = v175 & 0x7FFFF;
                  goto LABEL_529;
                }

                if (v166 <= 110)
                {
                  if (v166 == 109)
                  {
                    LODWORD(v174) = *(*buf + 40);
                  }

                  else
                  {
                    v174 = *(*buf + 44);
                  }

                  goto LABEL_428;
                }

                if (v166 == 111)
                {
                  LODWORD(v174) = *(*buf + 48);
                  goto LABEL_428;
                }

                if (v166 == 112)
                {
                  v174 = *(*buf + 52);
                  goto LABEL_428;
                }

                if (v166 != 113)
                {
                  goto LABEL_530;
                }

LABEL_329:
                LODWORD(v171) = *(*buf + 56);
                goto LABEL_502;
              case 7:
                switch(v166)
                {
                  case 114:
                    goto LABEL_278;
                  case 115:
                    LODWORD(v172) = *(*buf + 24);
                    goto LABEL_357;
                  case 116:
                    v172 = *(*buf + 28);
                    goto LABEL_357;
                  case 117:
                    LODWORD(v172) = *(*buf + 32);
                    goto LABEL_357;
                  case 118:
                    v172 = *(*buf + 36);
                    goto LABEL_357;
                  case 119:
                    LODWORD(v172) = *(*buf + 40);
                    goto LABEL_357;
                  case 120:
                    v172 = *(*buf + 44);
                    goto LABEL_357;
                  case 121:
                    goto LABEL_399;
                  case 122:
                    v172 = *(*buf + 52);
                    goto LABEL_357;
                  case 123:
                    LODWORD(v172) = *(*buf + 56);
                    goto LABEL_357;
                  case 124:
                    v172 = *(*buf + 60);
                    goto LABEL_357;
                  case 125:
                    LODWORD(v172) = *(*buf + 64);
                    goto LABEL_357;
                  case 126:
                    v172 = *(*buf + 68);
                    goto LABEL_357;
                  case 127:
                    LODWORD(v172) = *(*buf + 72);
                    goto LABEL_357;
                  case 128:
                    v172 = *(*buf + 76);
                    goto LABEL_357;
                  case 129:
                    LODWORD(v175) = *(*buf + 80);
                    goto LABEL_465;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 8:
                switch(v166)
                {
                  case 130:
                    goto LABEL_393;
                  case 131:
                    goto LABEL_378;
                  case 132:
                    goto LABEL_308;
                  case 133:
                    goto LABEL_394;
                  case 134:
                    v175 = *(*buf + 36);
                    goto LABEL_465;
                  case 135:
                    LODWORD(v175) = *(*buf + 40);
                    goto LABEL_465;
                  case 136:
                    v175 = *(*buf + 44);
                    goto LABEL_465;
                  case 137:
LABEL_388:
                    LODWORD(v171) = *(*buf + 48);
                    goto LABEL_502;
                  case 138:
LABEL_403:
                    v173 = *(*buf + 52);
                    goto LABEL_456;
                  case 139:
LABEL_402:
                    LODWORD(v173) = *(*buf + 56);
                    goto LABEL_456;
                  case 140:
                    v173 = *(*buf + 60);
                    goto LABEL_456;
                  case 141:
                    LODWORD(v173) = *(*buf + 64);
                    goto LABEL_456;
                  case 142:
                    v173 = *(*buf + 68);
                    goto LABEL_456;
                  case 143:
                    goto LABEL_419;
                  case 144:
                    LODWORD(v173) = *(*buf + 76);
                    goto LABEL_456;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 9:
                if (v166 > 147)
                {
                  if (v166 == 148)
                  {
                    goto LABEL_333;
                  }

                  if (v166 == 149)
                  {
LABEL_364:
                    LODWORD(v170) = *(*buf + 32);
                    goto LABEL_504;
                  }

                  if (v166 != 150)
                  {
                    goto LABEL_530;
                  }

                  LODWORD(v174) = *(*buf + 36);
                  goto LABEL_428;
                }

                switch(v166)
                {
                  case 145:
                    v167 = *(*buf + 20);
                    goto LABEL_529;
                  case 146:
                    goto LABEL_373;
                  case 147:
                    LODWORD(v170) = *(*buf + 24);
                    goto LABEL_504;
                }

                goto LABEL_530;
              case 10:
                switch(v166)
                {
                  case 151:
                    v167 = *(*buf + 20) >> 1;
                    goto LABEL_529;
                  case 152:
                    goto LABEL_384;
                  case 153:
                    goto LABEL_343;
                  case 154:
                    goto LABEL_342;
                  case 155:
                    goto LABEL_341;
                  case 156:
                    goto LABEL_353;
                  case 157:
                    goto LABEL_344;
                  case 158:
                    goto LABEL_354;
                  case 159:
LABEL_431:
                    v177 = *(*buf + 36);
                    goto LABEL_523;
                  case 160:
LABEL_430:
                    v180 = *(*buf + 36);
                    goto LABEL_516;
                  case 161:
                    LODWORD(v177) = *(*buf + 40);
                    goto LABEL_523;
                  case 162:
                    goto LABEL_408;
                  case 163:
                    v177 = *(*buf + 44);
                    goto LABEL_523;
                  case 164:
                    v180 = *(*buf + 44);
                    goto LABEL_516;
                  case 165:
                    LODWORD(v177) = *(*buf + 48);
                    goto LABEL_523;
                  case 166:
                    LOWORD(v177) = *(*buf + 50);
                    goto LABEL_523;
                  case 167:
                    v177 = *(*buf + 52);
                    goto LABEL_523;
                  case 168:
                    v180 = *(*buf + 52);
                    goto LABEL_516;
                  case 169:
                    LODWORD(v168) = *(*buf + 56);
                    goto LABEL_528;
                  case 170:
                    LOWORD(v168) = *(*buf + 58);
                    goto LABEL_528;
                  case 171:
                    v168 = *(*buf + 60);
                    goto LABEL_528;
                  case 172:
LABEL_432:
                    v180 = *(*buf + 60);
LABEL_516:
                    v167 = (v180 >> 16) & 0x3FFF;
                    goto LABEL_529;
                  case 173:
                    LODWORD(v177) = *(*buf + 64);
                    goto LABEL_523;
                  case 174:
                    LOWORD(v177) = *(*buf + 66);
                    goto LABEL_523;
                  case 175:
                    v168 = *(*buf + 68);
                    goto LABEL_528;
                  case 176:
                    v179 = *(*buf + 68);
                    goto LABEL_526;
                  case 177:
                    LODWORD(v168) = *(*buf + 72);
                    goto LABEL_528;
                  case 178:
                    LOWORD(v168) = *(*buf + 74);
                    goto LABEL_528;
                  case 179:
                    v168 = *(*buf + 76);
                    goto LABEL_528;
                  case 180:
                    v179 = *(*buf + 76);
                    goto LABEL_526;
                  case 181:
                    LODWORD(v168) = *(*buf + 80);
                    goto LABEL_528;
                  case 182:
                    LOWORD(v168) = *(*buf + 82);
                    goto LABEL_528;
                  default:
                    goto LABEL_530;
                }

              case 11:
                if (v166 <= 185)
                {
                  if (v166 == 183)
                  {
                    v167 = *(*buf + 20);
                    goto LABEL_529;
                  }

                  if (v166 == 184)
                  {
                    v167 = *(*buf + 24);
                    goto LABEL_529;
                  }

                  if (v166 != 185)
                  {
                    goto LABEL_530;
                  }

                  goto LABEL_341;
                }

                if (v166 <= 187)
                {
                  if (v166 != 186)
                  {
LABEL_344:
                    LODWORD(v171) = *(*buf + 32);
                    goto LABEL_502;
                  }

LABEL_353:
                  v176 = *(*buf + 28);
                  goto LABEL_415;
                }

                if (v166 == 188)
                {
LABEL_354:
                  LOWORD(v171) = *(*buf + 34);
                  goto LABEL_502;
                }

                if (v166 != 189)
                {
                  goto LABEL_530;
                }

                goto LABEL_347;
              case 12:
                if (v166 > 194)
                {
                  if (v166 <= 197)
                  {
                    if (v166 == 195)
                    {
LABEL_359:
                      LODWORD(v169) = *(*buf + 32);
                      goto LABEL_485;
                    }

                    if (v166 == 196)
                    {
                      goto LABEL_363;
                    }

LABEL_348:
                    LODWORD(v171) = *(*buf + 40);
                    goto LABEL_502;
                  }

                  if (v166 == 198)
                  {
LABEL_408:
                    LOWORD(v177) = *(*buf + 42);
                    goto LABEL_523;
                  }

                  if (v166 == 199)
                  {
                    LODWORD(v168) = *(*buf + 44);
                    goto LABEL_528;
                  }

                  if (v166 != 200)
                  {
                    goto LABEL_530;
                  }

                  v167 = *(*buf + 46);
                  goto LABEL_529;
                }

                if (v166 > 191)
                {
                  if (v166 == 192)
                  {
LABEL_343:
                    LODWORD(v171) = *(*buf + 24);
                    goto LABEL_502;
                  }

                  if (v166 == 193)
                  {
                    goto LABEL_342;
                  }

LABEL_333:
                  v170 = *(*buf + 28);
                  goto LABEL_504;
                }

                if (v166 == 190)
                {
                  goto LABEL_385;
                }

                if (v166 != 191)
                {
                  goto LABEL_530;
                }

                goto LABEL_384;
              case 13:
                switch(v166)
                {
                  case 201:
                    goto LABEL_385;
                  case 202:
                    goto LABEL_384;
                  case 203:
                    goto LABEL_343;
                  case 204:
                    goto LABEL_360;
                  case 205:
                    goto LABEL_359;
                  case 206:
                    goto LABEL_297;
                  case 207:
                    goto LABEL_387;
                  case 208:
                    goto LABEL_386;
                  case 209:
                    goto LABEL_396;
                  case 210:
                    goto LABEL_395;
                  case 211:
LABEL_411:
                    v170 = *(*buf + 52);
                    goto LABEL_504;
                  case 212:
LABEL_409:
                    LODWORD(v170) = *(*buf + 56);
                    goto LABEL_504;
                  case 213:
LABEL_410:
                    v178 = *(*buf + 52);
                    goto LABEL_499;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 14:
                switch(v166)
                {
                  case 214:
                    goto LABEL_385;
                  case 215:
                    goto LABEL_384;
                  case 216:
                    goto LABEL_343;
                  case 217:
                    goto LABEL_342;
                  case 218:
                    goto LABEL_333;
                  case 219:
                    goto LABEL_364;
                  case 220:
LABEL_297:
                    v170 = *(*buf + 36);
                    goto LABEL_504;
                  case 221:
                    v167 = *(*buf + 36) >> 17;
                    goto LABEL_529;
                  case 222:
                    goto LABEL_348;
                  case 223:
                    goto LABEL_381;
                  case 224:
LABEL_396:
                    v170 = *(*buf + 44);
                    goto LABEL_504;
                  case 225:
LABEL_395:
                    LODWORD(v170) = *(*buf + 48);
                    goto LABEL_504;
                  case 226:
                    v178 = *(*buf + 44);
                    goto LABEL_499;
                  case 227:
LABEL_404:
                    v171 = *(*buf + 52);
                    goto LABEL_502;
                  case 228:
                    v167 = *(*buf + 54);
                    goto LABEL_529;
                  case 229:
LABEL_418:
                    v167 = *(*buf + 56);
                    goto LABEL_529;
                  case 230:
                    v170 = *(*buf + 60);
                    goto LABEL_504;
                  case 231:
                    LODWORD(v170) = *(*buf + 64);
                    goto LABEL_504;
                  case 232:
                    v170 = *(*buf + 68);
                    goto LABEL_504;
                  case 233:
LABEL_419:
                    LODWORD(v173) = *(*buf + 72);
                    goto LABEL_456;
                  case 234:
LABEL_433:
                    v167 = *(*buf + 76);
                    goto LABEL_529;
                  case 235:
LABEL_434:
                    v167 = *(*buf + 78);
                    goto LABEL_529;
                  case 236:
                    LODWORD(v170) = *(*buf + 80);
                    goto LABEL_504;
                  case 237:
                    v178 = *(*buf + 76);
                    goto LABEL_499;
                  case 238:
                    v171 = *(*buf + 84);
                    goto LABEL_502;
                  case 239:
LABEL_435:
                    v167 = *(*buf + 86);
                    goto LABEL_529;
                  case 240:
                    LODWORD(v170) = *(*buf + 88);
                    goto LABEL_504;
                  case 241:
                    v178 = *(*buf + 84);
LABEL_499:
                    v167 = v178 >> 49;
                    goto LABEL_529;
                  case 242:
                    LODWORD(v171) = *(*buf + 92);
                    goto LABEL_502;
                  case 243:
                    LOWORD(v171) = *(*buf + 94);
                    goto LABEL_502;
                  default:
                    goto LABEL_530;
                }

              case 15:
                if (v166 == 246)
                {
                  LODWORD(v172) = *(*buf + 28);
LABEL_357:
                  v167 = v172 & 0x3FFFFF;
                  goto LABEL_529;
                }

                if (v166 != 245)
                {
                  if (v166 != 244)
                  {
                    goto LABEL_530;
                  }

LABEL_278:
                  v172 = *(*buf + 20);
                  goto LABEL_357;
                }

                LODWORD(v174) = *(*buf + 24);
LABEL_428:
                v167 = v174 & 0x1FFFFF;
                goto LABEL_529;
              case 16:
                if (v166 > 251)
                {
                  if (v166 <= 253)
                  {
                    if (v166 != 252)
                    {
                      LODWORD(v168) = *(*buf + 32);
LABEL_528:
                      v167 = v168 & 0x1FFF;
                      goto LABEL_529;
                    }

                    v179 = *(*buf + 28);
LABEL_526:
                    v167 = (v179 >> 16) & 0x1FFF;
                  }

                  else if (v166 == 254)
                  {
                    v167 = (*(*buf + 28) >> 45) & 0x3FFFFLL;
                  }

                  else
                  {
                    if (v166 == 255)
                    {
LABEL_363:
                      v169 = *(*buf + 36);
                    }

                    else
                    {
                      if (v166 != 256)
                      {
                        goto LABEL_530;
                      }

LABEL_362:
                      LODWORD(v169) = *(*buf + 40);
                    }

LABEL_485:
                    v167 = v169 & 0x3FFFF;
                  }
                }

                else
                {
                  if (v166 > 248)
                  {
                    if (v166 == 249)
                    {
                      LODWORD(v177) = *(*buf + 24);
LABEL_523:
                      v167 = v177 & 0x3FFF;
                      goto LABEL_529;
                    }

                    if (v166 == 250)
                    {
                      LOWORD(v177) = *(*buf + 26);
                      goto LABEL_523;
                    }

                    v168 = *(*buf + 28);
                    goto LABEL_528;
                  }

                  if (v166 == 247)
                  {
LABEL_385:
                    v171 = *(*buf + 20);
                    goto LABEL_502;
                  }

                  if (v166 != 248)
                  {
                    goto LABEL_530;
                  }

LABEL_384:
                  v176 = *(*buf + 20);
LABEL_415:
                  v167 = (v176 >> 16) & 0x7FFF;
                }

LABEL_529:
                v279.i64[0] = v167;
LABEL_530:
                if (**&buf[8] == 1)
                {
                  v182 = *(**&buf[16] + 24 * v166 + 200528);
                  *(v182 - 8) += v279.i64[0];
                }

                else
                {
                  v183 = v110;
                  sub_24D769624((**&buf[16] + 24 * v166 + 200520), &v279);
                  v110 = v183;
                }

                v164 += 2;
                continue;
              case 17:
                if (v166 > 261)
                {
                  if (v166 <= 263)
                  {
                    if (v166 == 262)
                    {
LABEL_390:
                      v167 = *(*buf + 32);
                    }

                    else
                    {
LABEL_375:
                      v167 = *(*buf + 34);
                    }
                  }

                  else if (v166 == 264)
                  {
LABEL_347:
                    v167 = *(*buf + 36);
                  }

                  else
                  {
                    if (v166 == 265)
                    {
                      LODWORD(v170) = *(*buf + 40);
                    }

                    else
                    {
                      if (v166 != 266)
                      {
                        goto LABEL_530;
                      }

                      LODWORD(v170) = *(*buf + 44);
                    }

LABEL_504:
                    v167 = v170 & 0x1FFFF;
                  }
                }

                else if (v166 <= 258)
                {
                  if (v166 == 257)
                  {
LABEL_373:
                    v167 = *(*buf + 22);
                  }

                  else
                  {
                    if (v166 != 258)
                    {
                      goto LABEL_530;
                    }

LABEL_372:
                    v167 = *(*buf + 24);
                  }
                }

                else
                {
                  if (v166 == 259)
                  {
LABEL_342:
                    LOWORD(v171) = *(*buf + 26);
                  }

                  else
                  {
                    if (v166 != 260)
                    {
LABEL_391:
                      v167 = *(*buf + 30);
                      goto LABEL_529;
                    }

LABEL_341:
                    v171 = *(*buf + 28);
                  }

LABEL_502:
                  v167 = v171 & 0x7FFF;
                }

                goto LABEL_529;
              case 18:
                switch(v166)
                {
                  case 267:
                    v167 = (*(*buf + 20) >> 1) & 0x3FFFLL;
                    goto LABEL_529;
                  case 268:
                    goto LABEL_384;
                  case 269:
                    goto LABEL_343;
                  case 270:
                    goto LABEL_342;
                  case 271:
                    goto LABEL_341;
                  case 272:
                    goto LABEL_353;
                  case 273:
                    goto LABEL_344;
                  case 274:
                    goto LABEL_354;
                  case 275:
LABEL_407:
                    v171 = *(*buf + 36);
                    goto LABEL_502;
                  case 276:
LABEL_406:
                    v176 = *(*buf + 36);
                    goto LABEL_415;
                  case 277:
                    goto LABEL_348;
                  case 278:
LABEL_381:
                    LOWORD(v171) = *(*buf + 42);
                    goto LABEL_502;
                  case 279:
                    LODWORD(v171) = *(*buf + 44);
                    goto LABEL_502;
                  case 280:
                    LOWORD(v171) = *(*buf + 46);
                    goto LABEL_502;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              case 19:
                switch(v166)
                {
                  case 281:
                    goto LABEL_373;
                  case 282:
                    goto LABEL_372;
                  case 283:
                    v167 = *(*buf + 26);
                    goto LABEL_529;
                  case 284:
                    v167 = *(*buf + 28);
                    goto LABEL_529;
                  case 285:
                    goto LABEL_391;
                  case 286:
                    goto LABEL_390;
                  case 287:
                    goto LABEL_375;
                  case 288:
                    goto LABEL_347;
                  case 289:
LABEL_412:
                    v167 = *(*buf + 38);
                    goto LABEL_529;
                  case 290:
LABEL_387:
                    v167 = *(*buf + 40);
                    goto LABEL_529;
                  case 291:
LABEL_386:
                    v167 = *(*buf + 42);
                    goto LABEL_529;
                  case 292:
LABEL_398:
                    v173 = *(*buf + 44);
LABEL_456:
                    v167 = v173 & 0xFFFFF;
                    goto LABEL_529;
                  case 293:
LABEL_399:
                    LODWORD(v175) = *(*buf + 48);
                    goto LABEL_465;
                  default:
                    goto LABEL_530;
                }

                goto LABEL_530;
              default:
                goto LABEL_530;
            }
          }
        }

        sub_24D8124A8(v110, a1, buf);
LABEL_535:
        v18 = 0;
LABEL_536:
        v25 = v274;
LABEL_604:
        if (LODWORD(__s1[0]) >= 0x12)
        {
          v226 = sub_24D809C04();
          if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2276;
            *&buf[18] = 2080;
            *&buf[20] = "tokenTypeIndex < numTokenTypes";
            _os_log_error_impl(&dword_24D764000, v226, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        else
        {
          v225.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v225.i64[1] = v276 - *(a1 + 104);
          *(v268 + 16 * LODWORD(__s1[0])) = vaddq_s64(v225, *(v268 + 16 * LODWORD(__s1[0])));
        }

        v274 = v25 + 1;
        v15 = v276;
        break;
      case 0xB:
        v33 = __s1[1];
        if (LODWORD(__s1[1]) > 7)
        {
          v35 = 0;
          v34 = -1;
        }

        else
        {
          v34 = word_24DA8B950[LODWORD(__s1[1])];
          v35 = dword_24DA8B260[LODWORD(__s1[1])];
        }

        v128 = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
        v129 = *(&__s1[1] + 1);
        v130 = *(a1 + 192);
        if (v130 == -1)
        {
          v130 = 0;
        }

        *(a1 + 192) = v130 + 1;
        *buf = v128;
        *&buf[16] = v129;
        *&buf[24] = v130;
        *&buf[28] = v35;
        LOWORD(v281) = v34;
        *(&v281 + 1) = 0;
        if (v33 <= 7)
        {
          v131 = v265 + 56 * v33;
          if (*(v131 + 48) == 1 && (v279.i64[0] = v263 + 1040 * v33, v279.i32[2] = 0, std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v279, 0x80uLL), sub_24D797450(a1, *v277, 1, "dmks: %d", v33), (*(v131 + 48) & 1) != 0))
          {
            v132 = *&buf[16];
            *v131 = *buf;
            *(v131 + 16) = v132;
            *(v131 + 32) = v281;
          }

          else
          {
            v139 = *&buf[16];
            *v131 = *buf;
            *(v131 + 16) = v139;
            *(v131 + 32) = v281;
            *(v131 + 48) = 1;
          }
        }

        v25 = v274;
        if ((a4 & 2) != 0)
        {
          v140 = *(a1 + 112);
          if (*(a1 + 48) <= v140 && *(a1 + 56) >= v140)
          {
            sub_24D7979B0(*v277 + 8, buf);
            sub_24D765934((*v277 + 104), &buf[24]);
            sub_24D765A5C((*v277 + 152), &v281);
            sub_24D765934((*v277 + 128), &buf[28]);
            sub_24D769624((*v277 + 56), &buf[16]);
            v279.i8[0] = 0;
            sub_24D797A84(*v277 + 176, &v279);
          }
        }

        goto LABEL_603;
      case 0xC:
        v37 = __s1[1];
        if (LODWORD(__s1[1]) > 7)
        {
          goto LABEL_535;
        }

        *buf = v263 + 1040 * LODWORD(__s1[1]);
        *&buf[8] = 0;
        std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(buf, 0x80uLL);
        v38 = (v265 + 56 * v37);
        if (*(v38 + 48) != 1)
        {
          goto LABEL_535;
        }

        v256 = v7;
        v39 = 0;
        v40 = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
        *(v38 + 1) = v40;
        v41 = v38 + 2;
        *(v38 + 5) = 0;
        *(v38 + 42) = BYTE6(__s1[1]);
        v250 = v38 + 10;
        v252 = v38;
        *(v38 + 20) = WORD2(__s1[1]);
        v42 = a1 + 272;
        do
        {
          if (*(v42 + 56) == 1 && *v42 == v41[4])
          {
            sub_24D7C0094(a1, *v277, v40, v39, 1);
          }

          ++v39;
          v42 += 96;
        }

        while (v39 != 130);
        v43 = 0;
        v44 = (a1 + 13200);
        do
        {
          if (*v44 == 1 && *(v44 - 2) == v41[4])
          {
            sub_24D7BFEF4(a1, *v277, v40, v43, 1);
          }

          ++v43;
          v44 += 40;
        }

        while (v43 != 16);
        if ((a4 & 2) == 0)
        {
          v45 = *(*v277 + 225816);
          if (*(a1 + 48) <= *(v45 + 8 * v252[2]) && *(a1 + 56) >= *(v45 + 8 * *v252))
          {
            sub_24D7979B0(*v277 + 8, v252);
            sub_24D7979B0(*v277 + 32, v41);
            sub_24D765934((*v277 + 104), v41 + 4);
            sub_24D765A5C((*v277 + 152), v252 + 16);
            sub_24D765934((*v277 + 128), v252 + 7);
            sub_24D769624((*v277 + 56), v252 + 2);
            sub_24D769624((*v277 + 80), v250);
            buf[0] = 0;
            sub_24D797A84(*v277 + 176, buf);
          }
        }

        v25 = v274;
        if (*(v252 + 48) != 1)
        {
          goto LABEL_620;
        }

        v18 = 0;
        *(v252 + 48) = 0;
        goto LABEL_92;
      case 0xD:
        v107 = v266 + 40 * (__s1[1] & 3);
        v108 = *v277;
        if (*(v107 + 32) == 1)
        {
          sub_24D797450(a1, *v277, 2, "channel: %d", __s1[1] & 3);
          v109 = *(v107 + 32);
          v108 = *v277;
        }

        else
        {
          v109 = 0;
        }

        v133 = v108[28228];
        v134 = v108[28227];
        v135 = v108[28231];
        v136 = v108[28230];
        v137 = *(a1 + 184);
        if (v137 == -1)
        {
          v137 = 0;
        }

        *(a1 + 184) = v137 + 1;
        v25 = v274;
        if ((v109 & 1) == 0)
        {
          *(v107 + 32) = 1;
        }

        v18 = 0;
        *v107 = ((v133 - v134) >> 3) - 1 + ((v135 - v136) << 29) - 0x100000000;
        *(v107 + 16) = v137;
        *(v107 + 24) = -1;
        goto LABEL_604;
      case 0xE:
        sub_24D7BFEF4(a1, *v277, ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000, __s1[1] & 3, 0);
        goto LABEL_535;
      case 0xF:
        v58 = DWORD1(__s1[1]);
        if (DWORD1(__s1[1]) <= 7)
        {
          v59 = v261 + 12 * DWORD1(__s1[1]);
          *v59 = *&__s1[1];
          *(v59 + 8) = DWORD2(__s1[1]);
          v60 = v58 - 4;
          if (v60 <= 2)
          {
            v61 = v266 + 40 * v60;
            if (*(v61 + 32) == 1 && LODWORD(__s1[1]) <= 7)
            {
              v62 = v265 + 56 * LODWORD(__s1[1]);
              if (*(v62 + 48) == 1)
              {
                *(v61 + 24) = *(v62 + 24);
              }
            }
          }
        }

        v63 = BYTE8(__s1[1]) & 0x7F;
        v64 = v264 + 48 * v63;
        v25 = v274;
        if (*(v64 + 40) != 1)
        {
          goto LABEL_603;
        }

        if (*(v64 + 28))
        {
          goto LABEL_603;
        }

        if (LODWORD(__s1[1]) > 7)
        {
          goto LABEL_603;
        }

        v65 = v265 + 56 * LODWORD(__s1[1]);
        if (*(v65 + 48) != 1)
        {
          goto LABEL_603;
        }

        if (*(v64 + 32) < *v65)
        {
          goto LABEL_603;
        }

        v66 = v263 + 1040 * LODWORD(__s1[1]);
        *(v66 + ((v63 >> 3) & 8)) |= 1 << v63;
        *(v66 + 8 * v63 + 16) = *v64;
        v67 = *(v65 + 24);
        *(v64 + 24) = v67;
        *(v64 + 28) = 1;
        if (*(v64 + 16) != 1)
        {
          goto LABEL_603;
        }

        v18 = 0;
        v68 = *(*(*v277 + 200376) + 8 * *(v64 + 8));
        *(*(*(*v277 + 1000 * v68 + 552) + (((*(*v277 + 1000 * v68 + 576) + (v68 >> 8)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(*v277 + 1000 * v68 + 576) + (v68 >> 8)) & 0x3FF)) = v67;
        goto LABEL_604;
      case 0x10:
        v30 = v276 - v273;
        v31 = *(a1 + 32);
        if (v31 >= 0x1000)
        {
          v31 = 4096;
        }

        v276 = 8 * (v31 + v31 * ((v276 >> 3) / v31));
        v255 = v255 & 0xFFFFFFFF00000000 | v17;
        sub_24D7975E0(*v277, 0, v270, v17, v30);
        if (v17)
        {
          v17 = 0;
        }

        v269 = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
        v32 = v272;
        if ((v272 & 1) == 0)
        {
          v32 = 1;
        }

        v272 = v32;
        v18 = 1;
        v273 = v276;
        goto LABEL_536;
      case 0x11:
        if ((~*(a1 + 232) & 3) == 0)
        {
          goto LABEL_535;
        }

        v25 = v274;
        if (LOBYTE(__s1[1]) > 0x81u)
        {
          goto LABEL_603;
        }

        v94 = v267 + 96 * LOBYTE(__s1[1]);
        sub_24D79D2F0(a1, LOBYTE(__s1[1]), *v277, v94);
        v95 = *v277 + 1000 * *(v94 + 36);
        v22 = (v95 + 712);
        if (*(v95 + 1336) == 1)
        {
          v96 = *(v95 + 904);
          if (!v96 || !sub_24D765B7C(v22 + 13, v96 - 1))
          {
            v97 = v22[11];
            if (v97)
            {
              if (sub_24D765B7C(v22, v97 - 1))
              {
                v98 = v22[11];
                if (v98)
                {
                  v99 = sub_24D765B7C(v22, v98 - 1);
                }

                else
                {
                  v99 = 0;
                }

                buf[0] = 10;
                sub_24D7C7364((v22 + 13), v99, buf);
              }
            }
          }
        }

        sub_24D7C6FE8(v22, *v277, (LOWORD(__s1[1]) >> 6) & 0x100 | BYTE1(__s1[1]) & 0x3F);
        v224 = BYTE4(__s1[1]);
        if ((DWORD1(__s1[1]) - 1) >= 9)
        {
          v224 = 0;
        }

        buf[0] = v224;
LABEL_601:
        if (*(v22 + 624) == 1)
        {
          sub_24D7C710C((v22 + 13), buf);
        }

        goto LABEL_603;
      default:
        goto LABEL_535;
    }

LABEL_611:
    if (v15 >= v14)
    {
      goto LABEL_621;
    }
  }

  v26 = (a2 + (v15 >> 3));
  if ((v15 & 7) != 0)
  {
    v27 = (*v26 | (*(v26 + 1) << 8)) >> (v15 & 7);
  }

  else
  {
    LODWORD(v27) = *v26;
  }

  sub_24D797450(a1, *v277, 0, "next 32 bits: %#010x", v27);
  ++v16;
  v5 = v5 & 0xFFFFFFFF00000000 | v17;
  sub_24D7975E0(*v277, 1, v270, v5, v276 - v273);
  if ((a4 & 8) != 0)
  {
    v28 = v272;
    if ((v272 & 1) == 0)
    {
      v28 = 1;
    }

    v272 = v28;
    v269 = ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000;
    if (v17)
    {
      v17 = 0;
    }

    v29 = *(a1 + 32);
    if (v29 >= 0x1000)
    {
      v29 = 4096;
    }

    v15 = 8 * (v29 + v29 * ((v276 >> 3) / v29));
    v276 = v15;
    v18 = 1;
    v273 = v15;
    goto LABEL_611;
  }

  if (v262)
  {
    *v262 = 2;
  }

LABEL_624:
  v230 = 0;
  v231 = 200528;
  do
  {
    if (*(*v277 + v231 - 8) != *(*v277 + v231))
    {
      v232 = (*v277 + 225280);
      v233 = (*(***v277 + 24))(**v277, v230);
      v235 = v232[56];
      v234 = v232[57];
      if (v235 >= v234)
      {
        v237 = v232[55];
        v238 = (v235 - v237) >> 3;
        if ((v238 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v239 = v234 - v237;
        v240 = v239 >> 2;
        if (v239 >> 2 <= (v238 + 1))
        {
          v240 = v238 + 1;
        }

        if (v239 >= 0x7FFFFFFFFFFFFFF8)
        {
          v241 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v241 = v240;
        }

        if (v241)
        {
          sub_24D7A2168((v232 + 55), v241);
        }

        v242 = (8 * v238);
        *v242 = v233;
        v236 = 8 * v238 + 8;
        v243 = v232[55];
        v244 = v232[56] - v243;
        v245 = v242 - v244;
        memcpy(v242 - v244, v243, v244);
        v246 = v232[55];
        v232[55] = v245;
        v232[56] = v236;
        v232[57] = 0;
        if (v246)
        {
          operator delete(v246);
        }
      }

      else
      {
        *v235 = v233;
        v236 = (v235 + 1);
      }

      v232[56] = v236;
    }

    ++v230;
    v231 += 24;
  }

  while (v230 != 294);
  sub_24D7BFD38(a1, a4, *v277, ((*(*v277 + 225824) - *(*v277 + 225816)) >> 3) - 1 + ((*(*v277 + 225848) - *(*v277 + 225840)) << 29) - 0x100000000);
  result = *v277;
  v247 = *v277 + 225280;
  *(*v277 + 225744) = v274;
  *(v247 + 472) = v276;
  *(v247 + 496) = v16;
LABEL_641:
  v248 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24D80ED18(uint64_t a1)
{
  v2 = a1 + 0x8000;
  *a1 = &unk_2860BB3B0;
  if (*(a1 + 200))
  {
    v3 = sub_24D7CFC0C();
    MEMORY[0x2530332C0](v3, 0x10B0C40146BE95CLL);
    *(a1 + 200) = 0;
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    *(v2 + 96) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 208);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  return a1;
}

void sub_24D80EDA8(uint64_t a1)
{
  sub_24D80ED18(a1);

  JUMPOUT(0x2530332C0);
}

uint64_t sub_24D80EDE0(int a1, char *__s1)
{
  if (!__s1)
  {
    return 294;
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

    else if (!strcmp(__s1, "250DFDD8D5BC61F9B0D9CD91F4DDCE0E4799ED7B1264EEF03FAD66612BCA288D"))
    {
      return 12;
    }

    else if (!strcmp(__s1, "06E83674FEE3BAEADDA04BCE4F798E64EAF9562959486A334178EFE9614AFE02"))
    {
      return 13;
    }

    else if (!strcmp(__s1, "CFC88028D48CFFC122779E410D958A0644A7B3219492B8F56805460AE11D3317"))
    {
      return 14;
    }

    else if (!strcmp(__s1, "C38EE6AA610415ACB3D10D68E346EE868CDB70CFC2F46D887E5E152FD4A256B2"))
    {
      return 15;
    }

    else if (!strcmp(__s1, "AEB4C02667999241FFC01E220B4443963E1B34D3ACD2C5545F5BBE1143870378"))
    {
      return 16;
    }

    else if (!strcmp(__s1, "40A9788933E5BA39796E86A50864B263BC0F2291A4B895C7EA6BBB144E5DACA5"))
    {
      return 17;
    }

    else if (!strcmp(__s1, "D469DF7536BAE8E1DE2CB8B3C1E14B4133343771592D97C7BCEC1D03BF0EE40A"))
    {
      return 18;
    }

    else if (!strcmp(__s1, "F9F04A751DF32AED42FF9EFB131D3CD40E499AA0A99A68D0DD6778167E42BF26"))
    {
      return 19;
    }

    else if (!strcmp(__s1, "357D351342C59B72F21BD4580AD1B2F1C4C47D0006AB615A4760BC3BEBD99E48"))
    {
      return 20;
    }

    else if (!strcmp(__s1, "3E6CC5C197ACBED66DB18F36FE33CAF7D744175ADB2FE6C6FAE97B0CBB5B21CD"))
    {
      return 21;
    }

    else if (!strcmp(__s1, "FB75B1EE028F765D95134B65BAFD26602EE879B247F31514268AFE1DF00830D4"))
    {
      return 22;
    }

    else if (!strcmp(__s1, "C8CAD3DF32303A6876151218FAAA63CA0642964F0528B51E0F3BBA792A0FA006"))
    {
      return 23;
    }

    else if (!strcmp(__s1, "55DDF08ED5B641C5048444150A2D58A930D81F86EEA506CD8B4073F64FC0F1C2"))
    {
      return 24;
    }

    else if (!strcmp(__s1, "C4B3D90E89BC6B96BEB336D1A17757038334C2A490EDF56428037F1BC405BF70"))
    {
      return 25;
    }

    else if (!strcmp(__s1, "E0822A12A8DD1B222198A771537F2CE4899EB45BC94D7854E0E6FA983E6EBC89"))
    {
      return 26;
    }

    else if (!strcmp(__s1, "33634F0DC72BA827D588E38DC75C388CF4976E4671D85148780CFAFD262B07FB"))
    {
      return 27;
    }

    else if (!strcmp(__s1, "FD6F91B4C067953424B95F0B332F0FB4A64F7E43DC4D6E8CDE26B1D5D7C07A42"))
    {
      return 28;
    }

    else if (!strcmp(__s1, "50E7E1AAC46F3CF79A6B3BB2DDC0BCDCF0ACD9011439415E47AEA7B6579F3EA8"))
    {
      return 29;
    }

    else if (!strcmp(__s1, "B6B78FABA9FD12B688986DC5EA4D4B8B731265EDEC1E5AE52B0CAA6FC31801F2"))
    {
      return 30;
    }

    else if (!strcmp(__s1, "EE8BC6D1FFF4A5A917BB00BF2D4D1731C21189C48D1E9BC5D3ADA75BBEFB1B21"))
    {
      return 31;
    }

    else if (!strcmp(__s1, "25C93B5B4A76FFE8A20CA68271CF612F43D0B5504B6680945F3BB046DA47213A"))
    {
      return 32;
    }

    else if (!strcmp(__s1, "7F94E8CDDF759E47648859D758AC1D2F3A203FDADD7EBE71974F98670262F0E1"))
    {
      return 33;
    }

    else if (!strcmp(__s1, "B4FDED34CDC40097AF8781159958E328E97F9506A54251304F3044F35734BA1F"))
    {
      return 34;
    }

    else if (!strcmp(__s1, "8DE3EB67F4A5DDDF3DF41FF1DCEC7946DE4C0AC8C6E18A46B9A3E61C6C497F69"))
    {
      return 35;
    }

    else if (!strcmp(__s1, "06233651FBD08F0066125C1134383BAF4791BCC2DFBBF905ACA71F5466ADED9B"))
    {
      return 36;
    }

    else if (!strcmp(__s1, "5B5DC5D95D1F90AD39F549F24C70BAC5928129DDCBB79BAB2158AA85317B2099"))
    {
      return 37;
    }

    else if (!strcmp(__s1, "C521760ABB46B43088E9E6E286368E5464F20AE90F1D698DF07C00A6FBB3D115"))
    {
      return 38;
    }

    else if (!strcmp(__s1, "360081D8A192D9EAB8DC6F6EAC25370B5B838CEB9F334BAC919F4CC2E7CD4ED6"))
    {
      return 39;
    }

    else if (!strcmp(__s1, "ED33A3CBB8630DAFA661B6977D341D62361A584B83C50CE4AA9F20C77278610B"))
    {
      return 40;
    }

    else if (!strcmp(__s1, "4978C08E9D3AB613EE1B8B0BDCCE4046D596D77E4B3285FD26DE51CBED95C706"))
    {
      return 41;
    }

    else if (!strcmp(__s1, "4D997B4599AD37918CEE1A51347AE6F6595A4B4F6BDB5A626BC00348DC070B38"))
    {
      return 42;
    }

    else if (!strcmp(__s1, "A1F762436C046FC59046061C0CB7BD0DE45C222A5E57C1C47F87948850234594"))
    {
      return 43;
    }

    else if (!strcmp(__s1, "C51A7FA32CB56141CC2697BD50AA465B125331846CF486D1A23C56491C063BCA"))
    {
      return 44;
    }

    else if (!strcmp(__s1, "85F2A20F2D46E2D369470A5B664F4163FB619D3513AB222F4222C880D59B383A"))
    {
      return 45;
    }

    else if (!strcmp(__s1, "1E68C8A4555F978F7EBB48C7CDE72B0B669D4FCF524878C1B09753DC85FA51C6"))
    {
      return 46;
    }

    else if (!strcmp(__s1, "D2BAB1CC9060EBB2601E0D9594280A394EF3A978788A7F144337BDE41C25A9D3"))
    {
      return 47;
    }

    else if (!strcmp(__s1, "8D544DD9E94EA7D05E520E44F9BD5E58A12EACF9440D3323E8A9EBD681E1B22E"))
    {
      return 48;
    }

    else if (!strcmp(__s1, "68955CD4DD2B024A2C3B1347FAA2EE1C0FEAC9A54B834FFD798DB5B40F86EF99"))
    {
      return 49;
    }

    else if (!strcmp(__s1, "7CA95EAA0720DCB83F7592E7A95207136D0365E3259721FA97A5F2E3B189472C"))
    {
      return 50;
    }

    else if (!strcmp(__s1, "30CF25A160D15BDFBD79EE3DEFAF8D8673918FA6239A815D00E6989DA599205A"))
    {
      return 51;
    }

    else if (!strcmp(__s1, "55CEE38A63D2BFA2E2E0C34CCA91302C92577CB2B3213282D9DABC41F03D0D21"))
    {
      return 52;
    }

    else if (!strcmp(__s1, "D56B7E7432EDA7633C4AFD6FFE777A29E7AACB6AB05EABE4DE90F2936E5B2623"))
    {
      return 53;
    }

    else if (!strcmp(__s1, "F95DFFE3A1BA6540BA6B0C8C3B3B08C3D4C0BCCC082A0874526304B7CF0313EF"))
    {
      return 54;
    }

    else if (!strcmp(__s1, "8C878172DC559994374EED2CC5251FCD50A25BB771DEBC5FD9EE64B4665AD14D"))
    {
      return 55;
    }

    else if (!strcmp(__s1, "20067B98EF95585EF99A8343EF911E18D2C235A3AD20103589A20D84933F8EB0"))
    {
      return 56;
    }

    else if (!strcmp(__s1, "0EE126743B64823629A81C2920FAA6966E0E52263862EF2A9F3DFF35C2AC8A9C"))
    {
      return 57;
    }

    else if (!strcmp(__s1, "44154E71B9E814B41C5ECA21680AC1383FF6126ED3EB45B479A9D67BA843AFB2"))
    {
      return 58;
    }

    else if (!strcmp(__s1, "79E88035C9BC883D403F17831B8C9264E643C6B76E9B3C1451B49B0F672C32BF"))
    {
      return 59;
    }

    else if (!strcmp(__s1, "AA1E812506867A5F2C54D3BA3268DB5C4BB2C6B0E4F500340DD23C4E1E637D9D"))
    {
      return 60;
    }

    else if (!strcmp(__s1, "295D65BB175E4E4EEF9003E008E093043C9B8CE43190BE0A2D8F1771F9837033"))
    {
      return 61;
    }

    else if (!strcmp(__s1, "4BF63E209F7D92B4E8341476C80013664D3299327C72E7A7F0D16E1CBD4904FC"))
    {
      return 62;
    }

    else if (!strcmp(__s1, "9C4011AA6D96FA382174AFD86D59DF18369E28D27CF17B9BB9ACA4FF95E40B54"))
    {
      return 63;
    }

    else if (!strcmp(__s1, "6E4B985D58D9922328978C1195CE700B9D0ADEA8B6F32EE2B50F86C993F53566"))
    {
      return 64;
    }

    else if (!strcmp(__s1, "9382104F02B29DB357F4F725145F7C1FB09501D2B49FEE4E19072E37FC7BD72A"))
    {
      return 65;
    }

    else if (!strcmp(__s1, "904CBFF8576D1B845F2199FC58EB496E6C12A8412850799564035215C2EE4EA6"))
    {
      return 66;
    }

    else if (!strcmp(__s1, "7A1AA2B358C4A67EB5370BDD2302AF92968558ABF28AC078D6FA40D578116978"))
    {
      return 67;
    }

    else if (!strcmp(__s1, "3856FBD8576C0AA988700D7EF5787AAAE94A3BBFBB393B0426FA9D379DA69C91"))
    {
      return 68;
    }

    else if (!strcmp(__s1, "8213F897439E4E662B08D104E6437CECDC7C228913AABC2518D8AF9E0E92A4E6"))
    {
      return 69;
    }

    else if (!strcmp(__s1, "97C8674BCC5158E92BF4C5A05149D966851A4049E662F540F6B03D6AD581EAE3"))
    {
      return 70;
    }

    else if (!strcmp(__s1, "D45640E968D6D66E66F8457BBE4543C7AD52C659AAC83DA1F84538E5A3422E7F"))
    {
      return 71;
    }

    else if (!strcmp(__s1, "260130B343BA0695AB911D986B3870FA0CCD0EC58E6F55895A856F37201CE9F8"))
    {
      return 72;
    }

    else if (!strcmp(__s1, "100299043F027ADADB62685130C7FBE549E29F08B58C365844FF8EC25BAEEAB0"))
    {
      return 73;
    }

    else if (!strcmp(__s1, "547021D0E82D62B7841769A23FC7FE04F7A63B8A0528A3F6E4C67E8B9420360E"))
    {
      return 74;
    }

    else if (!strcmp(__s1, "76F5A23AACC27615C980BE3E58B52994192195866836855BCA7C3F885796297B"))
    {
      return 75;
    }

    else if (!strcmp(__s1, "02FFFEEC34CB4F9BB2B7187D31D98A830068967AB21581BD376B54C226438E89"))
    {
      return 76;
    }

    else if (!strcmp(__s1, "6E9FC9ADDBC6FDE3F223F4689164CD676FE137A81548507A1D0C44EEA6492399"))
    {
      return 77;
    }

    else if (!strcmp(__s1, "E0A8B6C5B8F699697896183E1FAFABD9541AA90136D44C9E11F2D135A32D37D7"))
    {
      return 78;
    }

    else if (!strcmp(__s1, "1FFBA951E06F1A7810DC823264210F0C13273E454D699383F3D6265630FEDD53"))
    {
      return 79;
    }

    else if (!strcmp(__s1, "9E7E7B3180DA596EBA2925972639C8DC058E97904ADA86E8FA31E691D63CA97B"))
    {
      return 80;
    }

    else if (!strcmp(__s1, "0D43CB377576A411251DB7D5579117D02FC1BB178830D97B5332A806AC122B37"))
    {
      return 81;
    }

    else if (!strcmp(__s1, "ECCE75AB7F80F9519A3E08E3A0EE71610AE67E3B82829786B02D98C09276F560"))
    {
      return 82;
    }

    else if (!strcmp(__s1, "D7642F4CD8A1F1052D8874FFCB84623EEB5AD8DB476AAA36BB13F44E0122717D"))
    {
      return 83;
    }

    else if (!strcmp(__s1, "35E9B0A78729DBBE416E11951D26DDC657D957CE37E23B41A2915BB6CC8CF792"))
    {
      return 84;
    }

    else if (!strcmp(__s1, "FE4E8A2782700A8DEC84E195627096B91A904FF6F486B78EF381501FB9667E0F"))
    {
      return 85;
    }

    else if (!strcmp(__s1, "8CF1E386EE3A3B138617A8BCFBEB4D376D2B696364330A1BFD8711185D4729B3"))
    {
      return 86;
    }

    else if (!strcmp(__s1, "300AF657F991E64A7D1C840E67C80384F989A47CEDCCA986B57DBE26768A2730"))
    {
      return 87;
    }

    else if (!strcmp(__s1, "51189DA6335464233B7B06C10962008F93292B56018C07FED32661289705C6ED"))
    {
      return 88;
    }

    else if (!strcmp(__s1, "5C54374704E9720290CC29DD546EB2792D9D700BE3F0A1F6CCAFA3D19D8F9832"))
    {
      return 89;
    }

    else if (!strcmp(__s1, "C04589D08BD1AA2481137A423CC2E81C537B75011557AB0EA579F58E489D9981"))
    {
      return 90;
    }

    else if (!strcmp(__s1, "A1CD5E72A4CAD33DD4C2190F293103B9FD8B40FFE76B1A99A195768465964F91"))
    {
      return 91;
    }

    else if (!strcmp(__s1, "7C3CD59A80673DD0787DF037FB1FB45E0EB635BFDB2554E10CBF5D056FEDAB78"))
    {
      return 92;
    }

    else if (!strcmp(__s1, "EE1C44BA654C2C10C7DB0434A851DBB3103BDD9D9306720B99A54BAC5F81779F"))
    {
      return 93;
    }

    else if (!strcmp(__s1, "30E723A308ED187FBA1B1767CFC4B4194C6A5B389089F21A3C0995763C0B223C"))
    {
      return 94;
    }

    else if (!strcmp(__s1, "171BC401E17487FA4D07865739044B318EEDC79CADD0317DD27D70E2BD0E5F5E"))
    {
      return 95;
    }

    else if (!strcmp(__s1, "F87F5FA1ACBE57E6A8D239141A2AEB89660AA820F4752500BE993B80E3AE6AD0"))
    {
      return 96;
    }

    else if (!strcmp(__s1, "41919D0D7426716623EB2B8CEC8FEC7C0185029A4F970CA7905BA42388A97673"))
    {
      return 97;
    }

    else if (!strcmp(__s1, "4F15DAD92E0A785D745021F7B94F51521E898720D5169990597E128646A6955D"))
    {
      return 98;
    }

    else if (!strcmp(__s1, "08AB4C79C0BDC9E53461A58B27E6D0E7EB2C43FF4B5F7E4DAD07415A5E112741"))
    {
      return 99;
    }

    else if (!strcmp(__s1, "C5491B58BB279B039FAC8C9736C09E9A33E7EC5399E387F4D13BBAE612BCA350"))
    {
      return 100;
    }

    else if (!strcmp(__s1, "6CF80B1A4946AE0C475E5E4AC168052F3850D07EBCA0C1CD0369D2D3C2C64D04"))
    {
      return 101;
    }

    else if (!strcmp(__s1, "D754A0D8A25FC01887EF6D4864286FB54EE1AD4C88BE01CFF4EA45226ED884B3"))
    {
      return 102;
    }

    else if (!strcmp(__s1, "DC2161FB676079EFF4C6F12BF10A5EE9711C91E511F1FD4709AEDD025D8A940D"))
    {
      return 103;
    }

    else if (!strcmp(__s1, "A6C2B5EE1745CD5EB5C81F2B31F5E946A0C1BDC93B226BB05571EFA08555EF8F"))
    {
      return 104;
    }

    else if (!strcmp(__s1, "18487C9D7CEF0D61908387ACBCC7316000F44757B4F9C98EA18217C35C6ECF85"))
    {
      return 105;
    }

    else if (!strcmp(__s1, "274A1E04D620A2A93E0AAFC7DB5F0BC3A6322D745709FD3011852A7608D0DC59"))
    {
      return 106;
    }

    else if (!strcmp(__s1, "E21086636B17AA11D0ECA0545AB90C82D396EB03C6D33A9DE49DEEC71BFEC9A3"))
    {
      return 107;
    }

    else if (!strcmp(__s1, "04277177F6AEF2AE45F19B0C9C9E5A0BD94A52E04CBC3126862B455BE12A4396"))
    {
      return 108;
    }

    else if (!strcmp(__s1, "2E0EE94947E219E4D34F16A40C302DB5FA44C7B9EA4630D8C0F56ED4D1ACE48E"))
    {
      return 109;
    }

    else if (!strcmp(__s1, "000DAB9E75390C26D045E00DFBE36CBC2FFBD42E8B0530540C4DCD8981FB52C9"))
    {
      return 110;
    }

    else if (!strcmp(__s1, "20704FA8349FC82949E901F75BCF6DA19690A9A2FE0383950F4A47E8056DB114"))
    {
      return 111;
    }

    else if (!strcmp(__s1, "33B334FD12A6201DB49E4003CB6BB2666575C9DF119DB5CF714FF5C4CF8B9156"))
    {
      return 112;
    }

    else if (!strcmp(__s1, "768E15468DD7366F4763C6D1E172AFF1731073A8C04B89CE1D9C2920364B4386"))
    {
      return 113;
    }

    else if (!strcmp(__s1, "0AF6A9208DBB7C0C06A19C4C9090BF87CF00BBEE2BDFD9E0C49423DD641C1174"))
    {
      return 114;
    }

    else if (!strcmp(__s1, "0D32627A10C5DB983D8E5DF466E154001CBB4E945D22A4E280A08C8D0F1701A7"))
    {
      return 115;
    }

    else if (!strcmp(__s1, "DFF91EC9DAE4F9D14485F569D87B6AC75F93DD47C850ACF09E9DD7A3D0EFCE8A"))
    {
      return 116;
    }

    else if (!strcmp(__s1, "D1922B4CF1F4DC1E2062378D34EE4E6EAB398BD0417BC95E5EF60C5C1F53E035"))
    {
      return 117;
    }

    else if (!strcmp(__s1, "EED11884758646FD70438F8D2661EC13F25DF1E40EC651E073736D2EFDAB9F0D"))
    {
      return 118;
    }

    else if (!strcmp(__s1, "3CCBBD2DBDE74F294638B5661472C6041FD802D082125437CB926C2F4E201182"))
    {
      return 119;
    }

    else if (!strcmp(__s1, "3FAA4DE8275531852B39C91E52291523AEA993A6114D2CF7645F7C8AC1EF27CE"))
    {
      return 120;
    }

    else if (!strcmp(__s1, "2660D91E9E44E8375C647F1F4FDD89923B3BFA26A3AF29D5937BAF8EF1E10CFE"))
    {
      return 121;
    }

    else if (!strcmp(__s1, "6CFA2D1125EAFC658FDF0E2F1A1B4F8D315296A1AFB116D0A8ECF669C026FF69"))
    {
      return 122;
    }

    else if (!strcmp(__s1, "B6C42286FD0AB628E79B9D4F5F10DC31C2DFD460570800BEB5C9E53651363C7D"))
    {
      return 123;
    }

    else if (!strcmp(__s1, "8F37B8C186E20EAB68B65FA965112E8C106205370CA0829C3EBD548C49C99A46"))
    {
      return 124;
    }

    else if (!strcmp(__s1, "7D8633F6EB10ABA43002BB46D28FA26BFFA1093AB39728908221CE3FD922C72D"))
    {
      return 125;
    }

    else if (!strcmp(__s1, "E01BD71065BD9CE02CFEEC935E09F6DE3C3B9EFAED8F187A533C6321069B4D85"))
    {
      return 126;
    }

    else if (!strcmp(__s1, "0597494BBDA7FA995805FB01DD8AD6D81CC143C09F8EFB86702288F745E3F791"))
    {
      return 127;
    }

    else if (!strcmp(__s1, "6FFBFD65F64B0F892C812D9952748E8632E02C4DF155F5E233927E6D0DC88D38"))
    {
      return 128;
    }

    else if (!strcmp(__s1, "5DCA18DF36F9FA665E30157E71359C15F04492B59DA944CC2B10D7A925843DA7"))
    {
      return 129;
    }

    else if (!strcmp(__s1, "E2D94E3051875514422124C186B05CDA6F417AF1FC67511A17055B65BED227AA"))
    {
      return 130;
    }

    else if (!strcmp(__s1, "A6DE7D11FD45FD0B0F5541862F786FAAA17E530F3CBAC5CE63EFD6C7B7B8EC27"))
    {
      return 131;
    }

    else if (!strcmp(__s1, "2C9ACA342CA7C8F4A29CA1C798155F709AC8B8D95F0D20C549DBC00F1C42184D"))
    {
      return 132;
    }

    else if (!strcmp(__s1, "54D70702DEC6F85C65B8D1E26F089610058B0CDC6B23440F6FD07F26E6E23315"))
    {
      return 133;
    }

    else if (!strcmp(__s1, "5851D9888A5EE313F6D80CC60F6BB6ADFC20BB0BA8D9BED753F04382DF6BED1A"))
    {
      return 134;
    }

    else if (!strcmp(__s1, "1ADDCB1D74CE36E8E4C6007CDB14DD6A053A9C2FBDB707345B3C5E7BB07299AA"))
    {
      return 135;
    }

    else if (!strcmp(__s1, "0AAC94B02176D8B144479EAFEE546A608C8B5E61D7A27481868626A7820E0CB1"))
    {
      return 136;
    }

    else if (!strcmp(__s1, "EC02EE62A95DE2B0B2BC9C65A400E1318CFD7FFA894EECC7B23F8FB164A10C08"))
    {
      return 137;
    }

    else if (!strcmp(__s1, "E9FDDF0E4E3D3ABB4D40C135F207C0310E5BE4CCF2EC1099CB89594DD756B745"))
    {
      return 138;
    }

    else if (!strcmp(__s1, "53E08B2D38CDBBC0D198B95302BCC632B50E773651E9BA4C57373B002114CBBC"))
    {
      return 139;
    }

    else if (!strcmp(__s1, "972B60C198C39199A11F25454037CADA381BB118BE18D850A36534F88A82B7F1"))
    {
      return 140;
    }

    else if (!strcmp(__s1, "244B94B5F2129A5A0083F3661EAC9C6B9EB5FB62A499E6ED236452F5BE6828F5"))
    {
      return 141;
    }

    else if (!strcmp(__s1, "FD406D36CD5763CFC9F0DD6C37C7BDC528ADF3990CF9725229F4258C1758C94D"))
    {
      return 142;
    }

    else if (!strcmp(__s1, "353FBA19946FC52BCED9C06F6EE4844496369F4985110F6E78E467505E48C88F"))
    {
      return 143;
    }

    else if (!strcmp(__s1, "5537928133BBD235A03487186F42FBFF9D0FC45873C83FD5219EB5EBF500ED10"))
    {
      return 144;
    }

    else if (!strcmp(__s1, "75D1CF68BBA66F3E658B115EF614F1449D832863CAF5F46D092488791378897F"))
    {
      return 145;
    }

    else if (!strcmp(__s1, "63CA0F7A21417297C42CDF8868259FBCECF5C6A5C1C994C3A1CA5F608179B458"))
    {
      return 146;
    }

    else if (!strcmp(__s1, "F6D454657EA6A999B3D168C1A68D6592B2F348BA088B279DBF0A992754767224"))
    {
      return 147;
    }

    else if (!strcmp(__s1, "42EA38C66C2CC54A764D5E204FF38F3402542A5F05B7731D549F22D745429051"))
    {
      return 148;
    }

    else if (!strcmp(__s1, "37C7DEA7C7AC62E48672D62B73746ED032AC86A05AA223DB4F373D44F106CD6A"))
    {
      return 149;
    }

    else if (!strcmp(__s1, "C437CC379874665252F935CA927505B4C191927511AC72B4669F58BE3576516D"))
    {
      return 150;
    }

    else if (!strcmp(__s1, "F942A7256C77ACD182AE0B767F21133B11937660A61610A18CD14087D1F2F71C"))
    {
      return 151;
    }

    else if (!strcmp(__s1, "AC7E4629ABFA704A6369754CB199383D2901F0916E230FB75D765420550E8244"))
    {
      return 152;
    }

    else if (!strcmp(__s1, "6368DD78E9738AAB3001F4C17EBE26BFB0414CDCC1399D092A48AB5A57536454"))
    {
      return 153;
    }

    else if (!strcmp(__s1, "26456E27CBF6165D84C883AC666AF50E5EAAA39D07887C37BD3A9BD26A74B2FE"))
    {
      return 154;
    }

    else if (!strcmp(__s1, "DD96D75C3E233EE9B4528803691C00E98D5F49F2B4B3B83676332ABFBB65DE07"))
    {
      return 155;
    }

    else if (!strcmp(__s1, "7262FC4EB2434704063840AB716EF14B50F3A0E5E3457E8EBF9E014325CAE94F"))
    {
      return 156;
    }

    else if (!strcmp(__s1, "27A93DA3DF54447DCB9F371C54907BEFA8F17B7FA905EDAC2B523C7A0D93A918"))
    {
      return 157;
    }

    else if (!strcmp(__s1, "038FA673BF47F15B7C5236E4863A96C910C3993AB31529A041DE199F3EEB66CB"))
    {
      return 158;
    }

    else if (!strcmp(__s1, "89DBD24AAAD1D4D50F3F74A7040B52C5B06B4768F1E09DC89D4067D243744882"))
    {
      return 159;
    }

    else if (!strcmp(__s1, "9EB2D21E75D0AA677C8D110763485DB3A78262C89D05CA0C3AF7EBD2D6AB99DD"))
    {
      return 160;
    }

    else if (!strcmp(__s1, "00EB2F035A98609505AB8DAB9B98D1FECEAA766F368932F7FE6316AE8BAEFBE0"))
    {
      return 161;
    }

    else if (!strcmp(__s1, "FED7B076A3D7DE52B6D9A21D14FB1A49BABF975B73BE74181C4EA26976162724"))
    {
      return 162;
    }

    else if (!strcmp(__s1, "903B8B51F5368A75F9777D9155C6A2664116770701ED241A6D1662131A802333"))
    {
      return 163;
    }

    else if (!strcmp(__s1, "2A5A81F290FDE6D31DB132DD493737A7252C441023286294F3C77CE48DD4E2F0"))
    {
      return 164;
    }

    else if (!strcmp(__s1, "0C60DB8A2A73C9B343C4B279EDF24580976BD74BD0294B1AAC17B0A4273D8C28"))
    {
      return 165;
    }

    else if (!strcmp(__s1, "BA7A33DF7A125E9EE5C1036DD6DADB3B74CC4B9BA9C5C1B235C131E70B7B4E41"))
    {
      return 166;
    }

    else if (!strcmp(__s1, "EA4B7DF630D01A5FC30F51DEEC420CB0F667CC57639F1C1D8E67D97B12524E0C"))
    {
      return 167;
    }

    else if (!strcmp(__s1, "7B872939683DD4D93E917C20089932C93AACDE7E7C0738CB78026B6FC178B1D9"))
    {
      return 168;
    }

    else if (!strcmp(__s1, "B80C09BAE4062CCC534F6E6EF6EA6E0ABEFF12048A342EB3138E7B76890D8D3B"))
    {
      return 169;
    }

    else if (!strcmp(__s1, "11221127E966E92C6C18F64D312E8C9AF73DB3A9DB792E4442FCECE644A8E7B1"))
    {
      return 170;
    }

    else if (!strcmp(__s1, "A5F302F870E09D718474CBCADD4E0B3589351A5007777F1B805169B54226B875"))
    {
      return 171;
    }

    else if (!strcmp(__s1, "615761368EF9DB43D1A8DF2EF1CC087B17906454F025A1E1C5BB95B022582B9B"))
    {
      return 172;
    }

    else if (!strcmp(__s1, "D97205C2B224673AE923C3A7A003D96258A1A774E1C9E3CD513B0706C6657D48"))
    {
      return 173;
    }

    else if (!strcmp(__s1, "AC00030F77E6F4E41BF49DC8D7A42C68813DB0C3B652C340B340C01873EB0AB7"))
    {
      return 174;
    }

    else if (!strcmp(__s1, "F2F4280636DC1065AEFE537517EE6B816C8133EF2E5C106D92DDD2B0E0DFC69D"))
    {
      return 175;
    }

    else if (!strcmp(__s1, "A739EE6D2886FEBC60795D1D8803BF19A1A3463541AB6024A90DBB8E4650F589"))
    {
      return 176;
    }

    else if (!strcmp(__s1, "E44B08E42854960D4B0277D46D6181F8B07FAC3C3CCF5A6B31AA9DC9FA4057D6"))
    {
      return 177;
    }

    else if (!strcmp(__s1, "C0909793BE0330B378C0CD09F0D9B9F09F599EC8C6B94C37ABA9011E83596F90"))
    {
      return 178;
    }

    else if (!strcmp(__s1, "F365A0CC0EEB38797FCD82D5E4AC3B2ACF44EB34D333D4AB1AD8D8891B7F8892"))
    {
      return 179;
    }

    else if (!strcmp(__s1, "96775CCE99E1AD0C194329938D933579304BAD868B3720C34D20D27536E7AEE7"))
    {
      return 180;
    }

    else if (!strcmp(__s1, "A2B9B85B3AADE88EBF43D3DB522C31E6A781700C0112047F72FA920A638A69BE"))
    {
      return 181;
    }

    else if (!strcmp(__s1, "F98BB9D35C454CA00A884F6B9621A30F2C78A880A96D81B5E661391D74E8455A"))
    {
      return 182;
    }

    else if (!strcmp(__s1, "D2D14661D9692EBD5065F06CB4C2AC7DD14339CAEA538D5AFA4A2B5813E87D5D"))
    {
      return 183;
    }

    else if (!strcmp(__s1, "28B92DE785184753FAF5508E080CB8FE784D6A5214E5E6382751D52534A72FCE"))
    {
      return 184;
    }

    else if (!strcmp(__s1, "CA5FDEAD1B2DEC16F5B525E9AE3CA7C4EDC163EEE950D7A77A7C5284A607369F"))
    {
      return 185;
    }

    else if (!strcmp(__s1, "D5D2B254E0B808929711EBFC999F2E0F884DB9876C90B056E230E4DD6D3261CE"))
    {
      return 186;
    }

    else if (!strcmp(__s1, "12ADE1668F06776E2CE9CC2CC563E0BD45A5346C6D883D748FD3C132E7EB8A2F"))
    {
      return 187;
    }

    else if (!strcmp(__s1, "12038A812C239440324EDCEB54DA13B6B7D0C4D89F61582F9A4628C4409FAAE6"))
    {
      return 188;
    }

    else if (!strcmp(__s1, "316635C054256728753D20516A98550DBF581EBA16691321F7BBCE3A9177E09D"))
    {
      return 189;
    }

    else if (!strcmp(__s1, "0E8C0AF79B626C37D4BD04D61ACC6B1841B7F784FEF6692E84A2B1971C771CF6"))
    {
      return 190;
    }

    else if (!strcmp(__s1, "152B31D6CDC80AD2A7F1593F1E81074F9FEB957043B213E8537F5C9098DFD449"))
    {
      return 191;
    }

    else if (!strcmp(__s1, "E60420C1A25456D560E8CD9611A939376974BEBAFA619C12639380F0B31FD8B8"))
    {
      return 192;
    }

    else if (!strcmp(__s1, "4713C70EDB33363B2C09D578EAF1776DAF492F1CF7FC8D5BA3CC2B74B6BCB97C"))
    {
      return 193;
    }

    else if (!strcmp(__s1, "C5B8AC3EFD6D9E22434A119330212D0B0CD6D432EDF6E86FCCEF7CCF823802C4"))
    {
      return 194;
    }

    else if (!strcmp(__s1, "7401310D7AC47EE7D18793C9381D0E7B211C27413EED891054A50674A3A43D55"))
    {
      return 195;
    }

    else if (!strcmp(__s1, "E37B71F0829DCC5E49BFA2EC41E5995C98E0C6F9D6A50126D6813647621C31A9"))
    {
      return 196;
    }

    else if (!strcmp(__s1, "164EEDE66D74F9279F17F86F1CDCA94299BF6213C2BA64E50786F8D0ABBCCAB9"))
    {
      return 197;
    }

    else if (!strcmp(__s1, "A60D3215F4F6222E067084EC53C4CB6D6F0C90C9CE2340806435D4D7B71CDE8D"))
    {
      return 198;
    }

    else if (!strcmp(__s1, "F01E4AED4622CF10C11CE6A7F898827E4AFD081185296BF76777B2207981E836"))
    {
      return 199;
    }

    else if (!strcmp(__s1, "526C20712356D4CB263465D867971F7887BB1970662A18C1A9E038A9A64F5905"))
    {
      return 200;
    }

    else if (!strcmp(__s1, "E2175386E8858E1E5273EB120A19C734896FE34E529B7720E38F90C3E66633CC"))
    {
      return 201;
    }

    else if (!strcmp(__s1, "1513162A9F37F71138014E6B4184BAD2DA941D4140D9F8F006E771B77F5BC38B"))
    {
      return 202;
    }

    else if (!strcmp(__s1, "CFEE285EA42317F1E8CE16B6BAED451F1D8029F8C057963B2486EA9093B3CD28"))
    {
      return 203;
    }

    else if (!strcmp(__s1, "1F6D45D5DEB05AFFD7C7C1DAC38D882FA9A9D616990FBB135621C1F0D30CA596"))
    {
      return 204;
    }

    else if (!strcmp(__s1, "BEE28431C5E817DF3C9C265B3672660D03A6C89EE5236507323554958AE59578"))
    {
      return 205;
    }

    else if (!strcmp(__s1, "A5AD2AAF51022A15627C4C6C3F18D612BFF2CA7F01F65EC1C26965ED6DDC6563"))
    {
      return 206;
    }

    else if (!strcmp(__s1, "D51129E2277ED8B7AE37E82DA9F8FEB9C3FDB71EC4E4B5548B4D3763A89AF1C2"))
    {
      return 207;
    }

    else if (!strcmp(__s1, "24B2EDEBE37A35C073BBC2B83505D52B7FDB9C121406C6308CF528457883D4BE"))
    {
      return 208;
    }

    else if (!strcmp(__s1, "C46314BBA0AA01362E06989DA928CE0AED5C5A628892598193CCE37C495FE865"))
    {
      return 209;
    }

    else if (!strcmp(__s1, "DC615E09F661E340E6495BF8406FDB597D2C6B7CD5AB0CA1E1155D715C73C434"))
    {
      return 210;
    }

    else if (!strcmp(__s1, "380FDF6575F27B17985711ECE0E551113641F9F9447B55D386C6BBDE95DBA9DE"))
    {
      return 211;
    }

    else if (!strcmp(__s1, "74B8506E0293EF192597C6C641B6C4C6A59F95177448E44017C4210467A625AC"))
    {
      return 212;
    }

    else if (!strcmp(__s1, "C648A066B5DF92C6610FB4DD77453469B226FC0B0B2903FDA7E76C7AD03011AC"))
    {
      return 213;
    }

    else if (!strcmp(__s1, "E9DD4EFE9ABCE80DF05B97D5043161FCF2371855DF6715BE46971FCE7EBE2B32"))
    {
      return 214;
    }

    else if (!strcmp(__s1, "6634D05466F515CAD98B1548EE7DCC52386712E059BE4C1A3FBB157892D9D61E"))
    {
      return 215;
    }

    else if (!strcmp(__s1, "FBF25B757E387E5538EE893DFCD803EF74AC4FDE7BD9AC9064121A84F2E26715"))
    {
      return 216;
    }

    else if (!strcmp(__s1, "2F5E861CD13CBCECC15CB691FCC7DCE54FC0755F96F1289D26AFB056BD6788D5"))
    {
      return 217;
    }

    else if (!strcmp(__s1, "7EFBE7B468F2C8FF4C34E67EDC7E8F80DB3E295C6221F8408D4440A78430C64F"))
    {
      return 218;
    }

    else if (!strcmp(__s1, "D67C31C99E39309E5E09E11F7A5E7B3576972C57135463976A5539814860D051"))
    {
      return 219;
    }

    else if (!strcmp(__s1, "3216E3D0006FC749B832DD3C33FF4B7CAE3CE455B3FE030A3EB061DC0356D829"))
    {
      return 220;
    }

    else if (!strcmp(__s1, "FF9225FC7116F7583194D2D2F948E6CFD131F9020C7B7C9D61A8DE2F46571C5F"))
    {
      return 221;
    }

    else if (!strcmp(__s1, "E5FA747F28EBFE3E4BBD4BE279044F914B09502E3EB62035341300536242F90B"))
    {
      return 222;
    }

    else if (!strcmp(__s1, "C517BA395C2A64392D1C11AE86475E6F476E22867252458FCC5152B58A43603D"))
    {
      return 223;
    }

    else if (!strcmp(__s1, "860E5D173A5DA8DE4C5A88EDDF57BFB0D9E7D010DFD109852AF3D1C8480DE485"))
    {
      return 224;
    }

    else if (!strcmp(__s1, "A2AEBDCCCD11BCF937DC0DE23C78762A9FD1425DA34EE911F615F041D947D3CE"))
    {
      return 225;
    }

    else if (!strcmp(__s1, "C1F228965CE72DCBDF0563CA9125430BFC5215644CF7426375AAE844D9C393CF"))
    {
      return 226;
    }

    else if (!strcmp(__s1, "7973408EAAC4FAF261DDB68AD698E34EFC1018CD38876DB49DA34E1C044F2CFC"))
    {
      return 227;
    }

    else if (!strcmp(__s1, "97448FE09776C5C51AE32BFC9D1EE9728156924E321AAA8318E2F2A1C2A62C31"))
    {
      return 228;
    }

    else if (!strcmp(__s1, "BECA30E32A8DD8B418D4AC9150B23FC3F4AAAAFCA128274C1DE87621A54FF840"))
    {
      return 229;
    }

    else if (!strcmp(__s1, "18974CEA3A33281B8436277C48EB0BB5EEA5111C4544565257A2EA24EEA75CDA"))
    {
      return 230;
    }

    else if (!strcmp(__s1, "DFAD6694DAD2CF309685D73CC39C1523D4D92A94D9CBD4B16F3468EB89D1A732"))
    {
      return 231;
    }

    else if (!strcmp(__s1, "137C754E9BEA98B17962D83B8E9EBF70D33891C8B32A876D13CD776C2EB805CD"))
    {
      return 232;
    }

    else if (!strcmp(__s1, "20FE67CA0BC6365A5F2E83A71443FCD1FF79D0FB655A2B26EF0293D935F451AD"))
    {
      return 233;
    }

    else if (!strcmp(__s1, "D74797F7B8D690624B1F756C30E55986965EB05837E721FA720A2DE0B8E56C30"))
    {
      return 234;
    }

    else if (!strcmp(__s1, "5B4446A6E3D13E950BC7F482E0A1C6555A187EE5321E7294F0E604F3BA96322F"))
    {
      return 235;
    }

    else if (!strcmp(__s1, "1E95F2EC42D9C8BCDDA799372B28B445C5807F73AC0A88117EE9819CECB7B2C2"))
    {
      return 236;
    }

    else if (!strcmp(__s1, "83CF792CEDB646E6CAFF1BCC76E8DFB7FF51A50875049FEF596900D59D6A5063"))
    {
      return 237;
    }

    else if (!strcmp(__s1, "168D9C154D599835B3232AA4F8CDA23177190B54D01FFF59C94A9BD7332F0761"))
    {
      return 238;
    }

    else if (!strcmp(__s1, "C0B7EF990ADBF3FF96B6F2BE59AAD1B6B9F4FE088B93B70A5FA1F0B63BA86F4C"))
    {
      return 239;
    }

    else if (!strcmp(__s1, "AED7BFB3A042F79BC64BB54CC5BDBA86C0D8C2786730E5C6C09252A4BB9F5CBC"))
    {
      return 240;
    }

    else if (!strcmp(__s1, "140886F02BB994604FFA8022CFFAB05A4BE1590A6805FAF9162497C81F05BBFE"))
    {
      return 241;
    }

    else if (!strcmp(__s1, "BA803B54C15A39AF7A61D86AA72C0960C2B897521015CDEF204CA5CECBB91072"))
    {
      return 242;
    }

    else if (!strcmp(__s1, "402C26288D835CFCE4962372266741D147E53F41D456B73D02938C3C1D4BD839"))
    {
      return 243;
    }

    else if (!strcmp(__s1, "F5B97BA71877E7014D8BB80B1B5750123154A26D4FD86B41AE0525EDEF44A41B"))
    {
      return 244;
    }

    else if (!strcmp(__s1, "3473F3E1E2A85DAEEB664F0C421CDF84D3B27258796FFBB2881208B73DEFC007"))
    {
      return 245;
    }

    else if (!strcmp(__s1, "CBB7FC5C90F6950C90B30709E38AC295085E9F9A5D82EB5DF56E89752A1E0252"))
    {
      return 246;
    }

    else if (!strcmp(__s1, "996E91405229B0F31165936664CCE9F7D3145963C1A14FA9DD57A320E349F123"))
    {
      return 247;
    }

    else if (!strcmp(__s1, "727820125C45F365E03E3C14E8202CFF1E0049F24543B5D589F3956E11F5C581"))
    {
      return 248;
    }

    else if (!strcmp(__s1, "95DD082534B76465BAA6B38551429C11CD11A77CB351740B05F3D18D2CD2B990"))
    {
      return 249;
    }

    else if (!strcmp(__s1, "294111BEC0EE4CFDDCE430D197B75A1CB09E21EB1C822E16CD1CBCC982D46A3F"))
    {
      return 250;
    }

    else if (!strcmp(__s1, "7B4CF9B631F81D78F2CEA2F4869D0137BE4CA667AE9B13DB22A617C2BA15C075"))
    {
      return 251;
    }

    else if (!strcmp(__s1, "EA870EDD0C8AD026DB44FB5C6AC53D8875D62255F794C489EAB9F8222F0616CB"))
    {
      return 252;
    }

    else if (!strcmp(__s1, "2D29DA77B4EF8E7B1D2F3F764587274747D1C2AB05C053B4CE38AE701116BF6A"))
    {
      return 253;
    }

    else if (!strcmp(__s1, "CA1DD5B830AB9668FC5EBD5904EB9B0113C766FCE57EF59AEC58982AE744413A"))
    {
      return 254;
    }

    else if (!strcmp(__s1, "B0D00D3E15F0D45E0DAD2FE819496F3837110BDADE01AC3A17862CDDACDEE5AB"))
    {
      return 255;
    }

    else if (!strcmp(__s1, "83156D57355E76E46E7319E18EA9D6A8D20E78958733028FD3F74C3FD9B0BCC5"))
    {
      return 256;
    }

    else if (!strcmp(__s1, "EA836EBA2C0A7B3BED5ABDB96D9B623391DF35AC6186D459C8D3062213C1D8E2"))
    {
      return 257;
    }

    else if (!strcmp(__s1, "6154A03B5F85252391A19A31A8A44D2E5DFE993D77B3C3A50DA3990009A0E625"))
    {
      return 258;
    }

    else if (!strcmp(__s1, "B6F798954446EE61B4B6F9E14234CF2BB9558D9BCFEBFBAF3134CF51BDB370B3"))
    {
      return 259;
    }

    else if (!strcmp(__s1, "0C763E061C178833BD52885B68343D76CDFCED5D51206DFC1A3DDE3BD4FA39D7"))
    {
      return 260;
    }

    else if (!strcmp(__s1, "CFA032F2D29A5A051C9E0050D1DFA42F3E8112A934B9A17AC7C973D207993235"))
    {
      return 261;
    }

    else if (!strcmp(__s1, "ABB726B88EE52902918D7A6085403CE4DCA71804DD26B0CD6AF7B65F3E7500CF"))
    {
      return 262;
    }

    else if (!strcmp(__s1, "058DEB9413998E950FC4226E0E272AFAF7557DF5129D7C7374655EB1CFDA77C5"))
    {
      return 263;
    }

    else if (!strcmp(__s1, "D73A9F216596E70D19B1F74DE41EEFB1A75CAB3823F2E0D1239E5F1FB9B6D40D"))
    {
      return 264;
    }

    else if (!strcmp(__s1, "B738AA29E795A9CAFDA6B743FE4B68F905E623302A5DE71A6B38401852D81CB4"))
    {
      return 265;
    }

    else if (!strcmp(__s1, "284BE43EB4908DBAA8A2B74BCB666EA0230514C2DD3AF9C77D20623852CB0D92"))
    {
      return 266;
    }

    else if (!strcmp(__s1, "3DCEDD6EF45622D3F5652B8EC88EFEF37CB00FE4FC16B84E577E6981B291FDD9"))
    {
      return 267;
    }

    else if (!strcmp(__s1, "6861705822904D595ABAA778F3DF9D975025CBD7C7674705BA752C7891BBC307"))
    {
      return 268;
    }

    else if (!strcmp(__s1, "0214ED3C57EB33DB2A5D42EE66D29ABF9D2D23258AE2BC458FBC6C3ACF7A0CBF"))
    {
      return 269;
    }

    else if (!strcmp(__s1, "C525B796661267471CC4B306B845D23A9F4ED9F4D097BBC132C0E9A4F86183A9"))
    {
      return 270;
    }

    else if (!strcmp(__s1, "88ECEFCD1A9ACA3B39E3029D2EB12B722121FA0DA35ACE594F624FE4D83464D0"))
    {
      return 271;
    }

    else if (!strcmp(__s1, "F1C68883F5F9ED928E6A5BF31A6525992D8B07ABA1F8977BC437BD8286A63DD2"))
    {
      return 272;
    }

    else if (!strcmp(__s1, "C346BCA67550C99A599946885EDDF9B14D9B079D36A2DEC76BB68FC0ACBCA31F"))
    {
      return 273;
    }

    else if (!strcmp(__s1, "59D424C509360155E8355827007DA8E77475B13EC2D54CD5983573729A2B4942"))
    {
      return 274;
    }

    else if (!strcmp(__s1, "C198C7A918CDFB2827306C31549DA06545879E8CFC1441823118729D8457BEB1"))
    {
      return 275;
    }

    else if (!strcmp(__s1, "167624C4E0D84FF1B7DB7AF3A2D43D2BFC4EC9BBD1E18E616D0F00275FF15B32"))
    {
      return 276;
    }

    else if (!strcmp(__s1, "5C375A462DB50DE2CCABAD8D1F37C06074032D3EC4196BD15CC09AC7C985383B"))
    {
      return 277;
    }

    else if (!strcmp(__s1, "DCCC6EE977ED263F50E3DDE456DD372F0F537B4BFC8F164170391AFA99D96854"))
    {
      return 278;
    }

    else if (!strcmp(__s1, "DCE3F220104420D5EDC132F677A8C6A1257EF93B970E7DE664F8EE793CF1532A"))
    {
      return 279;
    }

    else if (!strcmp(__s1, "D1ED7C08E70C720C20054F501D7EEEF6DCBE980A5D268FE88BAB3587F2838E52"))
    {
      return 280;
    }

    else if (!strcmp(__s1, "ECCA69648E94F50D0440D785106461FB6DEE6D369D319A9CA7CD9CF7C2A4EA61"))
    {
      return 281;
    }

    else if (!strcmp(__s1, "C27650C105DB677612F1E9F8232F2AA9D30A54B9223A181963447DD34D6AE9DE"))
    {
      return 282;
    }

    else if (!strcmp(__s1, "B6DCB4CCB503695CDDA1B5747ADBE4125D7F82EAFAA0E937A98724113EB1D727"))
    {
      return 283;
    }

    else if (!strcmp(__s1, "5D33B1B65FCFEAEB9146D7AAE9F282B0D99B1537E5B9D3079C85F88A599EBC07"))
    {
      return 284;
    }

    else if (!strcmp(__s1, "A705828E5FB8C152DCE53B6F6A5492B7514C11FF5CB01B85149DF5994A18B21D"))
    {
      return 285;
    }

    else if (!strcmp(__s1, "30C511991A56C9FE9B30FACC17BF86AE650C1DB1B66D9B19107F9CC769097340"))
    {
      return 286;
    }

    else if (!strcmp(__s1, "23756AABD0EA1A60AAA6F3289C152C912C9D461304216E43F65836C05E27ED67"))
    {
      return 287;
    }

    else if (!strcmp(__s1, "0F46655CBD9E1B682631F1BEFAE3E0E81F9193AF0F1EAD29656ABDB3632DE244"))
    {
      return 288;
    }

    else if (!strcmp(__s1, "61C68100BE242001078E0A0FC57CC3D9EA793D0D5CACE34A32AD5603FB6936FA"))
    {
      return 289;
    }

    else if (!strcmp(__s1, "0AC3DEB7B7857ABC7031C0EB5FDDDEAE98F8A14C4F0B08255DC001F7DE977D5C"))
    {
      return 290;
    }

    else if (!strcmp(__s1, "045052878913BCFB4518F5BF626951DB057E6BD2AC4BED3FAD09B84AD03A1DBD"))
    {
      return 291;
    }

    else if (!strcmp(__s1, "066723C9107184DA081F4D97E0290FCF8B7B75CB9631BDDD6D1E15186A341B6E"))
    {
      return 292;
    }

    else if (!strcmp(__s1, "C02C23697E66132B8FFFAC249DBF633A97CFA692CDCE8AE3A840182863AB6EE8"))
    {
      return 293;
    }

    else
    {
      return 294;
    }
  }

  return result;
}

void sub_24D810E30(uint64_t a1)
{
  sub_24D812370(a1, 0, 0);
  sub_24D812370(a1, 0, 1u);
  sub_24D812370(a1, 0, 2u);
  sub_24D812370(a1, 0, 3u);
  sub_24D812370(a1, 0, 4u);
  sub_24D812370(a1, 0, 5u);
  sub_24D812370(a1, 0, 6u);
  sub_24D812370(a1, 0, 7u);
  sub_24D812370(a1, 0, 8u);
  sub_24D812370(a1, 0, 9u);
  sub_24D812370(a1, 0, 0xAu);
  sub_24D812370(a1, 0, 0xBu);
  sub_24D812370(a1, 0, 0xCu);
  sub_24D812370(a1, 0, 0xDu);
  sub_24D812370(a1, 0, 0xEu);
  sub_24D812370(a1, 0, 0xFu);
  sub_24D812370(a1, 0, 0x10u);
  sub_24D812370(a1, 0, 0x11u);
  sub_24D812370(a1, 0, 0x12u);
  sub_24D812370(a1, 0, 0x13u);
  sub_24D812370(a1, 0, 0x14u);
  sub_24D812370(a1, 0, 0x15u);
  sub_24D812370(a1, 1u, 0x16u);
  sub_24D812370(a1, 1u, 0x17u);
  sub_24D812370(a1, 1u, 0x18u);
  sub_24D812370(a1, 1u, 0x19u);
  sub_24D812370(a1, 1u, 0x1Au);
  sub_24D812370(a1, 1u, 0x1Bu);
  sub_24D812370(a1, 1u, 0x1Cu);
  sub_24D812370(a1, 1u, 0x1Du);
  sub_24D812370(a1, 1u, 0x1Eu);
  sub_24D812370(a1, 1u, 0x1Fu);
  sub_24D812370(a1, 1u, 0x20u);
  sub_24D812370(a1, 1u, 0x21u);
  sub_24D812370(a1, 1u, 0x22u);
  sub_24D812370(a1, 1u, 0x23u);
  sub_24D812370(a1, 2u, 0x24u);
  sub_24D812370(a1, 2u, 0x25u);
  sub_24D812370(a1, 2u, 0x26u);
  sub_24D812370(a1, 2u, 0x27u);
  sub_24D812370(a1, 2u, 0x28u);
  sub_24D812370(a1, 2u, 0x29u);
  sub_24D812370(a1, 2u, 0x2Au);
  sub_24D812370(a1, 2u, 0x2Bu);
  sub_24D812370(a1, 2u, 0x2Cu);
  sub_24D812370(a1, 2u, 0x2Du);
  sub_24D812370(a1, 2u, 0x2Eu);
  sub_24D812370(a1, 2u, 0x2Fu);
  sub_24D812370(a1, 2u, 0x30u);
  sub_24D812370(a1, 2u, 0x31u);
  sub_24D812370(a1, 2u, 0x32u);
  sub_24D812370(a1, 2u, 0x33u);
  sub_24D812370(a1, 2u, 0x34u);
  sub_24D812370(a1, 2u, 0x35u);
  sub_24D812370(a1, 2u, 0x36u);
  sub_24D812370(a1, 2u, 0x37u);
  sub_24D812370(a1, 3u, 0x38u);
  sub_24D812370(a1, 3u, 0x39u);
  sub_24D812370(a1, 3u, 0x3Au);
  sub_24D812370(a1, 3u, 0x3Bu);
  sub_24D812370(a1, 3u, 0x3Cu);
  sub_24D812370(a1, 3u, 0x3Du);
  sub_24D812370(a1, 3u, 0x3Eu);
  sub_24D812370(a1, 3u, 0x3Fu);
  sub_24D812370(a1, 3u, 0x40u);
  sub_24D812370(a1, 3u, 0x41u);
  sub_24D812370(a1, 3u, 0x42u);
  sub_24D812370(a1, 3u, 0x43u);
  sub_24D812370(a1, 3u, 0x44u);
  sub_24D812370(a1, 3u, 0x45u);
  sub_24D812370(a1, 3u, 0x46u);
  sub_24D812370(a1, 3u, 0x47u);
  sub_24D812370(a1, 3u, 0x48u);
  sub_24D812370(a1, 3u, 0x49u);
  sub_24D812370(a1, 3u, 0x4Au);
  sub_24D812370(a1, 3u, 0x4Bu);
  sub_24D812370(a1, 3u, 0x4Cu);
  sub_24D812370(a1, 3u, 0x4Du);
  sub_24D812370(a1, 3u, 0x4Eu);
  sub_24D812370(a1, 3u, 0x4Fu);
  sub_24D812370(a1, 4u, 0x50u);
  sub_24D812370(a1, 4u, 0x51u);
  sub_24D812370(a1, 4u, 0x52u);
  sub_24D812370(a1, 4u, 0x53u);
  sub_24D812370(a1, 4u, 0x54u);
  sub_24D812370(a1, 4u, 0x55u);
  sub_24D812370(a1, 4u, 0x56u);
  sub_24D812370(a1, 4u, 0x57u);
  sub_24D812370(a1, 4u, 0x58u);
  sub_24D812370(a1, 4u, 0x59u);
  sub_24D812370(a1, 4u, 0x5Au);
  sub_24D812370(a1, 4u, 0x5Bu);
  sub_24D812370(a1, 4u, 0x5Cu);
  sub_24D812370(a1, 4u, 0x5Du);
  sub_24D812370(a1, 4u, 0x5Eu);
  sub_24D812370(a1, 5u, 0x5Fu);
  sub_24D812370(a1, 5u, 0x60u);
  sub_24D812370(a1, 5u, 0x61u);
  sub_24D812370(a1, 5u, 0x62u);
  sub_24D812370(a1, 5u, 0x63u);
  sub_24D812370(a1, 5u, 0x64u);
  sub_24D812370(a1, 5u, 0x65u);
  sub_24D812370(a1, 5u, 0x66u);
  sub_24D812370(a1, 5u, 0x67u);
  sub_24D812370(a1, 6u, 0x68u);
  sub_24D812370(a1, 6u, 0x69u);
  sub_24D812370(a1, 6u, 0x6Au);
  sub_24D812370(a1, 6u, 0x6Bu);
  sub_24D812370(a1, 6u, 0x6Cu);
  sub_24D812370(a1, 6u, 0x6Du);
  sub_24D812370(a1, 6u, 0x6Eu);
  sub_24D812370(a1, 6u, 0x6Fu);
  sub_24D812370(a1, 6u, 0x70u);
  sub_24D812370(a1, 6u, 0x71u);
  sub_24D812370(a1, 7u, 0x72u);
  sub_24D812370(a1, 7u, 0x73u);
  sub_24D812370(a1, 7u, 0x74u);
  sub_24D812370(a1, 7u, 0x75u);
  sub_24D812370(a1, 7u, 0x76u);
  sub_24D812370(a1, 7u, 0x77u);
  sub_24D812370(a1, 7u, 0x78u);
  sub_24D812370(a1, 7u, 0x79u);
  sub_24D812370(a1, 7u, 0x7Au);
  sub_24D812370(a1, 7u, 0x7Bu);
  sub_24D812370(a1, 7u, 0x7Cu);
  sub_24D812370(a1, 7u, 0x7Du);
  sub_24D812370(a1, 7u, 0x7Eu);
  sub_24D812370(a1, 7u, 0x7Fu);
  sub_24D812370(a1, 7u, 0x80u);
  sub_24D812370(a1, 7u, 0x81u);
  sub_24D812370(a1, 8u, 0x82u);
  sub_24D812370(a1, 8u, 0x83u);
  sub_24D812370(a1, 8u, 0x84u);
  sub_24D812370(a1, 8u, 0x85u);
  sub_24D812370(a1, 8u, 0x86u);
  sub_24D812370(a1, 8u, 0x87u);
  sub_24D812370(a1, 8u, 0x88u);
  sub_24D812370(a1, 8u, 0x89u);
  sub_24D812370(a1, 8u, 0x8Au);
  sub_24D812370(a1, 8u, 0x8Bu);
  sub_24D812370(a1, 8u, 0x8Cu);
  sub_24D812370(a1, 8u, 0x8Du);
  sub_24D812370(a1, 8u, 0x8Eu);
  sub_24D812370(a1, 8u, 0x8Fu);
  sub_24D812370(a1, 8u, 0x90u);
  sub_24D812370(a1, 9u, 0x91u);
  sub_24D812370(a1, 9u, 0x92u);
  sub_24D812370(a1, 9u, 0x93u);
  sub_24D812370(a1, 9u, 0x94u);
  sub_24D812370(a1, 9u, 0x95u);
  sub_24D812370(a1, 9u, 0x96u);
  sub_24D812370(a1, 0xAu, 0x97u);
  sub_24D812370(a1, 0xAu, 0x98u);
  sub_24D812370(a1, 0xAu, 0x99u);
  sub_24D812370(a1, 0xAu, 0x9Au);
  sub_24D812370(a1, 0xAu, 0x9Bu);
  sub_24D812370(a1, 0xAu, 0x9Cu);
  sub_24D812370(a1, 0xAu, 0x9Du);
  sub_24D812370(a1, 0xAu, 0x9Eu);
  sub_24D812370(a1, 0xAu, 0x9Fu);
  sub_24D812370(a1, 0xAu, 0xA0u);
  sub_24D812370(a1, 0xAu, 0xA1u);
  sub_24D812370(a1, 0xAu, 0xA2u);
  sub_24D812370(a1, 0xAu, 0xA3u);
  sub_24D812370(a1, 0xAu, 0xA4u);
  sub_24D812370(a1, 0xAu, 0xA5u);
  sub_24D812370(a1, 0xAu, 0xA6u);
  sub_24D812370(a1, 0xAu, 0xA7u);
  sub_24D812370(a1, 0xAu, 0xA8u);
  sub_24D812370(a1, 0xAu, 0xA9u);
  sub_24D812370(a1, 0xAu, 0xAAu);
  sub_24D812370(a1, 0xAu, 0xABu);
  sub_24D812370(a1, 0xAu, 0xACu);
  sub_24D812370(a1, 0xAu, 0xADu);
  sub_24D812370(a1, 0xAu, 0xAEu);
  sub_24D812370(a1, 0xAu, 0xAFu);
  sub_24D812370(a1, 0xAu, 0xB0u);
  sub_24D812370(a1, 0xAu, 0xB1u);
  sub_24D812370(a1, 0xAu, 0xB2u);
  sub_24D812370(a1, 0xAu, 0xB3u);
  sub_24D812370(a1, 0xAu, 0xB4u);
  sub_24D812370(a1, 0xAu, 0xB5u);
  sub_24D812370(a1, 0xAu, 0xB6u);
  sub_24D812370(a1, 0xBu, 0xB7u);
  sub_24D812370(a1, 0xBu, 0xB8u);
  sub_24D812370(a1, 0xBu, 0xB9u);
  sub_24D812370(a1, 0xBu, 0xBAu);
  sub_24D812370(a1, 0xBu, 0xBBu);
  sub_24D812370(a1, 0xBu, 0xBCu);
  sub_24D812370(a1, 0xBu, 0xBDu);
  sub_24D812370(a1, 0xCu, 0xBEu);
  sub_24D812370(a1, 0xCu, 0xBFu);
  sub_24D812370(a1, 0xCu, 0xC0u);
  sub_24D812370(a1, 0xCu, 0xC1u);
  sub_24D812370(a1, 0xCu, 0xC2u);
  sub_24D812370(a1, 0xCu, 0xC3u);
  sub_24D812370(a1, 0xCu, 0xC4u);
  sub_24D812370(a1, 0xCu, 0xC5u);
  sub_24D812370(a1, 0xCu, 0xC6u);
  sub_24D812370(a1, 0xCu, 0xC7u);
  sub_24D812370(a1, 0xCu, 0xC8u);
  sub_24D812370(a1, 0xDu, 0xC9u);
  sub_24D812370(a1, 0xDu, 0xCAu);
  sub_24D812370(a1, 0xDu, 0xCBu);
  sub_24D812370(a1, 0xDu, 0xCCu);
  sub_24D812370(a1, 0xDu, 0xCDu);
  sub_24D812370(a1, 0xDu, 0xCEu);
  sub_24D812370(a1, 0xDu, 0xCFu);
  sub_24D812370(a1, 0xDu, 0xD0u);
  sub_24D812370(a1, 0xDu, 0xD1u);
  sub_24D812370(a1, 0xDu, 0xD2u);
  sub_24D812370(a1, 0xDu, 0xD3u);
  sub_24D812370(a1, 0xDu, 0xD4u);
  sub_24D812370(a1, 0xDu, 0xD5u);
  sub_24D812370(a1, 0xEu, 0xD6u);
  sub_24D812370(a1, 0xEu, 0xD7u);
  sub_24D812370(a1, 0xEu, 0xD8u);
  sub_24D812370(a1, 0xEu, 0xD9u);
  sub_24D812370(a1, 0xEu, 0xDAu);
  sub_24D812370(a1, 0xEu, 0xDBu);
  sub_24D812370(a1, 0xEu, 0xDCu);
  sub_24D812370(a1, 0xEu, 0xDDu);
  sub_24D812370(a1, 0xEu, 0xDEu);
  sub_24D812370(a1, 0xEu, 0xDFu);
  sub_24D812370(a1, 0xEu, 0xE0u);
  sub_24D812370(a1, 0xEu, 0xE1u);
  sub_24D812370(a1, 0xEu, 0xE2u);
  sub_24D812370(a1, 0xEu, 0xE3u);
  sub_24D812370(a1, 0xEu, 0xE4u);
  sub_24D812370(a1, 0xEu, 0xE5u);
  sub_24D812370(a1, 0xEu, 0xE6u);
  sub_24D812370(a1, 0xEu, 0xE7u);
  sub_24D812370(a1, 0xEu, 0xE8u);
  sub_24D812370(a1, 0xEu, 0xE9u);
  sub_24D812370(a1, 0xEu, 0xEAu);
  sub_24D812370(a1, 0xEu, 0xEBu);
  sub_24D812370(a1, 0xEu, 0xECu);
  sub_24D812370(a1, 0xEu, 0xEDu);
  sub_24D812370(a1, 0xEu, 0xEEu);
  sub_24D812370(a1, 0xEu, 0xEFu);
  sub_24D812370(a1, 0xEu, 0xF0u);
  sub_24D812370(a1, 0xEu, 0xF1u);
  sub_24D812370(a1, 0xEu, 0xF2u);
  sub_24D812370(a1, 0xEu, 0xF3u);
  sub_24D812370(a1, 0xFu, 0xF4u);
  sub_24D812370(a1, 0xFu, 0xF5u);
  sub_24D812370(a1, 0xFu, 0xF6u);
  sub_24D812370(a1, 0x10u, 0xF7u);
  sub_24D812370(a1, 0x10u, 0xF8u);
  sub_24D812370(a1, 0x10u, 0xF9u);
  sub_24D812370(a1, 0x10u, 0xFAu);
  sub_24D812370(a1, 0x10u, 0xFBu);
  sub_24D812370(a1, 0x10u, 0xFCu);
  sub_24D812370(a1, 0x10u, 0xFDu);
  sub_24D812370(a1, 0x10u, 0xFEu);
  sub_24D812370(a1, 0x10u, 0xFFu);
  sub_24D812370(a1, 0x10u, 0x100u);
  sub_24D812370(a1, 0x11u, 0x101u);
  sub_24D812370(a1, 0x11u, 0x102u);
  sub_24D812370(a1, 0x11u, 0x103u);
  sub_24D812370(a1, 0x11u, 0x104u);
  sub_24D812370(a1, 0x11u, 0x105u);
  sub_24D812370(a1, 0x11u, 0x106u);
  sub_24D812370(a1, 0x11u, 0x107u);
  sub_24D812370(a1, 0x11u, 0x108u);
  sub_24D812370(a1, 0x11u, 0x109u);
  sub_24D812370(a1, 0x11u, 0x10Au);
  sub_24D812370(a1, 0x12u, 0x10Bu);
  sub_24D812370(a1, 0x12u, 0x10Cu);
  sub_24D812370(a1, 0x12u, 0x10Du);
  sub_24D812370(a1, 0x12u, 0x10Eu);
  sub_24D812370(a1, 0x12u, 0x10Fu);
  sub_24D812370(a1, 0x12u, 0x110u);
  sub_24D812370(a1, 0x12u, 0x111u);
  sub_24D812370(a1, 0x12u, 0x112u);
  sub_24D812370(a1, 0x12u, 0x113u);
  sub_24D812370(a1, 0x12u, 0x114u);
  sub_24D812370(a1, 0x12u, 0x115u);
  sub_24D812370(a1, 0x12u, 0x116u);
  sub_24D812370(a1, 0x12u, 0x117u);
  sub_24D812370(a1, 0x12u, 0x118u);
  sub_24D812370(a1, 0x13u, 0x119u);
  sub_24D812370(a1, 0x13u, 0x11Au);
  sub_24D812370(a1, 0x13u, 0x11Bu);
  sub_24D812370(a1, 0x13u, 0x11Cu);
  sub_24D812370(a1, 0x13u, 0x11Du);
  sub_24D812370(a1, 0x13u, 0x11Eu);
  sub_24D812370(a1, 0x13u, 0x11Fu);
  sub_24D812370(a1, 0x13u, 0x120u);
  sub_24D812370(a1, 0x13u, 0x121u);
  sub_24D812370(a1, 0x13u, 0x122u);
  sub_24D812370(a1, 0x13u, 0x123u);
  sub_24D812370(a1, 0x13u, 0x124u);

  sub_24D812370(a1, 0x13u, 0x125u);
}

const char *sub_24D8120D0(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &off_279655138[a2];
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = off_279655538;
LABEL_9:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0x40)
  {
    v4 = off_279655738;
    goto LABEL_9;
  }

  v2 = a2 - 256;
  if (a2 - 256 < 0x26)
  {
    v4 = off_279655938;
    goto LABEL_9;
  }

  return "Invalid";
}

uint64_t sub_24D812140(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &unk_24DA8B280 + a2;
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = &unk_24DA8B300;
LABEL_9:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0x40)
  {
    v4 = &unk_24DA8B340;
    goto LABEL_9;
  }

  v2 = a2 - 256;
  if (a2 - 256 < 0x26)
  {
    v4 = &unk_24DA8B380;
    goto LABEL_9;
  }

  return 20;
}

uint64_t sub_24D8121AC(uint64_t a1, unsigned int a2)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      if (a2 >= 0x16)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return a2;
      }

    case 1u:
      v4 = a2 - 22;
      goto LABEL_23;
    case 2u:
      v4 = a2 - 36;
      v5 = a2 - 36 >= 0x14;
      goto LABEL_29;
    case 3u:
      v4 = a2 - 56;
      v5 = a2 - 56 >= 0x18;
      goto LABEL_29;
    case 4u:
      v4 = a2 - 80;
      goto LABEL_26;
    case 5u:
      v4 = a2 - 95;
      v5 = a2 - 95 >= 9;
      goto LABEL_29;
    case 6u:
      v4 = a2 - 104;
      goto LABEL_21;
    case 7u:
      v4 = a2 - 114;
      v5 = a2 - 114 >= 0x10;
      goto LABEL_29;
    case 8u:
      v4 = a2 - 130;
LABEL_26:
      v5 = v4 >= 0xF;
      goto LABEL_29;
    case 9u:
      v4 = a2 - 145;
      v5 = a2 - 145 >= 6;
      goto LABEL_29;
    case 0xAu:
      v4 = a2 - 151;
      v5 = a2 - 151 >= 0x20;
      goto LABEL_29;
    case 0xBu:
      v4 = a2 - 183;
      v5 = a2 - 183 >= 7;
      goto LABEL_29;
    case 0xCu:
      v4 = a2 - 190;
      v5 = a2 - 190 >= 0xB;
      goto LABEL_29;
    case 0xDu:
      v4 = a2 - 201;
      goto LABEL_28;
    case 0xEu:
      v4 = a2 - 214;
      v5 = a2 - 214 >= 0x1E;
      goto LABEL_29;
    case 0xFu:
      v4 = a2 - 244;
      v5 = a2 - 244 >= 3;
      goto LABEL_29;
    case 0x10u:
      v4 = a2 - 247;
      goto LABEL_21;
    case 0x11u:
      v4 = a2 - 257;
LABEL_21:
      v5 = v4 >= 0xA;
      goto LABEL_29;
    case 0x12u:
      v4 = a2 - 267;
LABEL_23:
      v5 = v4 >= 0xE;
      goto LABEL_29;
    case 0x13u:
      v4 = a2 - 281;
LABEL_28:
      v5 = v4 >= 0xD;
LABEL_29:
      if (v5)
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

uint64_t sub_24D812350(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_24DA8B3A8[a2];
  }
}

void sub_24D812370(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(*a1 + 32) - 3) <= 0xFFFFFFFD && ((*(**(a1 + 8) + ((a3 >> 3) & 0x1FFFFFF8)) >> a3))
  {
    v6 = sub_24D8121AC(*(a1 + 16), a3);
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

void sub_24D8124A8(int a1, uint64_t a2, uint64_t a3)
{
  v1151 = v4;
  v1152 = v3;
  v1153 = v5;
  v1154 = v6;
  switch(a1)
  {
    case 0:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v9 = *(a3 + 8);
      v10 = (*(*a3 + 20) >> 2) & 0xFFFFFLL;
      v1150 = v10;
      v11 = *v9;
      v12 = **(a3 + 16);
      if (v11 == 1)
      {
        *(*(v12 + 200528) - 8) += v10;
      }

      else
      {
        sub_24D769624((v12 + 200520), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v129 = *(a3 + 8);
      v130 = *(*a3 + 24) & 0x3FFFF;
      v1150 = v130;
      v131 = *v129;
      v132 = **(a3 + 16);
      if (v131 == 1)
      {
        *(*(v132 + 200552) - 8) += v130;
      }

      else
      {
        sub_24D769624((v132 + 200544), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v210 = *(a3 + 8);
      v211 = *(*a3 + 28) & 0x7FFFFLL;
      v1150 = v211;
      v212 = *v210;
      v213 = **(a3 + 16);
      if (v212 == 1)
      {
        *(*(v213 + 200576) - 8) += v211;
      }

      else
      {
        sub_24D769624((v213 + 200568), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v287 = *(a3 + 8);
      v288 = *(*a3 + 32) & 0x7FFF;
      v1150 = v288;
      v289 = *v287;
      v290 = **(a3 + 16);
      if (v289 == 1)
      {
        *(*(v290 + 200600) - 8) += v288;
      }

      else
      {
        sub_24D769624((v290 + 200592), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v363 = *(a3 + 8);
      v364 = *(*a3 + 34) & 0x3FFF;
      v1150 = v364;
      v365 = *v363;
      v366 = **(a3 + 16);
      if (v365 == 1)
      {
        *(*(v366 + 200624) - 8) += v364;
      }

      else
      {
        sub_24D769624((v366 + 200616), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v437 = *(a3 + 8);
      v438 = *(*a3 + 36) & 0x3FFFLL;
      v1150 = v438;
      v439 = *v437;
      v440 = **(a3 + 16);
      if (v439 == 1)
      {
        *(*(v440 + 200648) - 8) += v438;
      }

      else
      {
        sub_24D769624((v440 + 200640), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v507 = *(a3 + 8);
      v508 = (*(*a3 + 36) >> 16) & 0x3FFFLL;
      v1150 = v508;
      v509 = *v507;
      v510 = **(a3 + 16);
      if (v509 == 1)
      {
        *(*(v510 + 200672) - 8) += v508;
      }

      else
      {
        sub_24D769624((v510 + 200664), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v575 = *(a3 + 8);
      v576 = *(*a3 + 40) & 0x7FFF;
      v1150 = v576;
      v577 = *v575;
      v578 = **(a3 + 16);
      if (v577 == 1)
      {
        *(*(v578 + 200696) - 8) += v576;
      }

      else
      {
        sub_24D769624((v578 + 200688), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v643 = *(a3 + 8);
      v644 = *(*a3 + 42) & 0x7FFF;
      v1150 = v644;
      v645 = *v643;
      v646 = **(a3 + 16);
      if (v645 == 1)
      {
        *(*(v646 + 200720) - 8) += v644;
      }

      else
      {
        sub_24D769624((v646 + 200712), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v707 = *(a3 + 8);
      v708 = *(*a3 + 44) & 0x7FFFLL;
      v1150 = v708;
      v709 = *v707;
      v710 = **(a3 + 16);
      if (v709 == 1)
      {
        *(*(v710 + 200744) - 8) += v708;
      }

      else
      {
        sub_24D769624((v710 + 200736), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v761 = *(a3 + 8);
      v762 = (*(*a3 + 44) >> 16) & 0x3FFLL;
      v1150 = v762;
      v763 = *v761;
      v764 = **(a3 + 16);
      if (v763 == 1)
      {
        *(*(v764 + 200768) - 8) += v762;
      }

      else
      {
        sub_24D769624((v764 + 200760), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v809 = *(a3 + 8);
      v810 = *(*a3 + 48) & 0x3FF;
      v1150 = v810;
      v811 = *v809;
      v812 = **(a3 + 16);
      if (v811 == 1)
      {
        *(*(v812 + 200792) - 8) += v810;
      }

      else
      {
        sub_24D769624((v812 + 200784), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v857 = *(a3 + 8);
      v858 = *(*a3 + 50) & 0xFFF;
      v1150 = v858;
      v859 = *v857;
      v860 = **(a3 + 16);
      if (v859 == 1)
      {
        *(*(v860 + 200816) - 8) += v858;
      }

      else
      {
        sub_24D769624((v860 + 200808), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v901 = *(a3 + 8);
      v902 = *(*a3 + 52) & 0x7FFFLL;
      v1150 = v902;
      v903 = *v901;
      v904 = **(a3 + 16);
      if (v903 == 1)
      {
        *(*(v904 + 200840) - 8) += v902;
      }

      else
      {
        sub_24D769624((v904 + 200832), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v935 = *(a3 + 8);
      v936 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1150 = v936;
      v937 = *v935;
      v938 = **(a3 + 16);
      if (v937 == 1)
      {
        *(*(v938 + 200864) - 8) += v936;
      }

      else
      {
        sub_24D769624((v938 + 200856), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v959 = *(a3 + 8);
      v960 = *(*a3 + 56) & 0x7FFF;
      v1150 = v960;
      v961 = *v959;
      v962 = **(a3 + 16);
      if (v961 == 1)
      {
        *(*(v962 + 200888) - 8) += v960;
      }

      else
      {
        sub_24D769624((v962 + 200880), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v979 = *(a3 + 8);
      v980 = *(*a3 + 58) & 0x3FFF;
      v1150 = v980;
      v981 = *v979;
      v982 = **(a3 + 16);
      if (v981 == 1)
      {
        *(*(v982 + 200912) - 8) += v980;
      }

      else
      {
        sub_24D769624((v982 + 200904), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v999 = *(a3 + 8);
      v1000 = *(*a3 + 60) & 0x3FFFLL;
      v1150 = v1000;
      v1001 = *v999;
      v1002 = **(a3 + 16);
      if (v1001 == 1)
      {
        *(*(v1002 + 200936) - 8) += v1000;
      }

      else
      {
        sub_24D769624((v1002 + 200928), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1019 = *(a3 + 8);
      v1020 = (*(*a3 + 60) >> 16) & 0x3FFFLL;
      v1150 = v1020;
      v1021 = *v1019;
      v1022 = **(a3 + 16);
      if (v1021 == 1)
      {
        *(*(v1022 + 200960) - 8) += v1020;
      }

      else
      {
        sub_24D769624((v1022 + 200952), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1037 = *(a3 + 8);
      v1038 = *(*a3 + 64) & 0x3FF;
      v1150 = v1038;
      v1039 = *v1037;
      v1040 = **(a3 + 16);
      if (v1039 == 1)
      {
        *(*(v1040 + 200984) - 8) += v1038;
      }

      else
      {
        sub_24D769624((v1040 + 200976), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1053 = *(a3 + 8);
      v1054 = *(*a3 + 66) & 0x3FF;
      v1150 = v1054;
      v1055 = *v1053;
      v1056 = **(a3 + 16);
      if (v1055 == 1)
      {
        *(*(v1056 + 201008) - 8) += v1054;
LABEL_835:
        v1069 = *(a3 + 8);
        v198 = *(*a3 + 68) & 0x7FF;
        v1150 = v198;
        v1070 = *v1069;
        v200 = **(a3 + 16);
        if (v1070 == 1)
        {
          v201 = 4424;
          goto LABEL_856;
        }

        v278 = v200 + 25128;
        goto LABEL_864;
      }

      sub_24D769624((v1056 + 201000), &v1150);
      if ((*(a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        goto LABEL_835;
      }

      return;
    case 1:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v53 = *(a3 + 8);
      v54 = *(*a3 + 20) & 0xFFFFFLL;
      v1150 = v54;
      v55 = *v53;
      v56 = **(a3 + 16);
      if (v55 == 1)
      {
        *(*(v56 + 201056) - 8) += v54;
      }

      else
      {
        sub_24D769624((v56 + 201048), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v133 = *(a3 + 8);
      v134 = *(*a3 + 24) & 0xFFFFF;
      v1150 = v134;
      v135 = *v133;
      v136 = **(a3 + 16);
      if (v135 == 1)
      {
        *(*(v136 + 201080) - 8) += v134;
      }

      else
      {
        sub_24D769624((v136 + 201072), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v214 = *(a3 + 8);
      v215 = *(*a3 + 28) & 0xFFFFFLL;
      v1150 = v215;
      v216 = *v214;
      v217 = **(a3 + 16);
      if (v216 == 1)
      {
        *(*(v217 + 201104) - 8) += v215;
      }

      else
      {
        sub_24D769624((v217 + 201096), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v291 = *(a3 + 8);
      v292 = *(*a3 + 32) & 0xFFFFF;
      v1150 = v292;
      v293 = *v291;
      v294 = **(a3 + 16);
      if (v293 == 1)
      {
        *(*(v294 + 201128) - 8) += v292;
      }

      else
      {
        sub_24D769624((v294 + 201120), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v367 = *(a3 + 8);
      v368 = *(*a3 + 36) & 0xFFFFFLL;
      v1150 = v368;
      v369 = *v367;
      v370 = **(a3 + 16);
      if (v369 == 1)
      {
        *(*(v370 + 201152) - 8) += v368;
      }

      else
      {
        sub_24D769624((v370 + 201144), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v441 = *(a3 + 8);
      v442 = *(*a3 + 40) & 0xFFFFF;
      v1150 = v442;
      v443 = *v441;
      v444 = **(a3 + 16);
      if (v443 == 1)
      {
        *(*(v444 + 201176) - 8) += v442;
      }

      else
      {
        sub_24D769624((v444 + 201168), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v511 = *(a3 + 8);
      v512 = *(*a3 + 44) & 0xFFFFFLL;
      v1150 = v512;
      v513 = *v511;
      v514 = **(a3 + 16);
      if (v513 == 1)
      {
        *(*(v514 + 201200) - 8) += v512;
      }

      else
      {
        sub_24D769624((v514 + 201192), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v579 = *(a3 + 8);
      v580 = *(*a3 + 48) & 0xFFFFF;
      v1150 = v580;
      v581 = *v579;
      v582 = **(a3 + 16);
      if (v581 == 1)
      {
        *(*(v582 + 201224) - 8) += v580;
      }

      else
      {
        sub_24D769624((v582 + 201216), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v647 = *(a3 + 8);
      v648 = *(*a3 + 52);
      v1150 = v648;
      v649 = *v647;
      v650 = **(a3 + 16);
      if (v649 == 1)
      {
        *(*(v650 + 201248) - 8) += v648;
      }

      else
      {
        sub_24D769624((v650 + 201240), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v711 = *(a3 + 8);
      v712 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1150 = v712;
      v713 = *v711;
      v714 = **(a3 + 16);
      if (v713 == 1)
      {
        *(*(v714 + 201272) - 8) += v712;
      }

      else
      {
        sub_24D769624((v714 + 201264), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v765 = *(a3 + 8);
      v766 = *(*a3 + 56);
      v1150 = v766;
      v767 = *v765;
      v768 = **(a3 + 16);
      if (v767 == 1)
      {
        *(*(v768 + 201296) - 8) += v766;
      }

      else
      {
        sub_24D769624((v768 + 201288), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v813 = *(a3 + 8);
      v814 = *(*a3 + 58) & 0x7FFF;
      v1150 = v814;
      v815 = *v813;
      v816 = **(a3 + 16);
      if (v815 == 1)
      {
        *(*(v816 + 201320) - 8) += v814;
      }

      else
      {
        sub_24D769624((v816 + 201312), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v861 = *(a3 + 8);
      v862 = *(*a3 + 60) & 0x7FFF;
      v1150 = v862;
      v863 = *v861;
      v864 = **(a3 + 16);
      if (v863 == 1)
      {
        *(*(v864 + 201344) - 8) += v862;
      }

      else
      {
        sub_24D769624((v864 + 201336), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v905 = *(a3 + 8);
      v198 = *(*a3 + 62) & 0x7FFF;
      v1150 = v198;
      v906 = *v905;
      v200 = **(a3 + 16);
      if (v906 == 1)
      {
        v201 = 4760;
        goto LABEL_856;
      }

      v278 = v200 + 25170;
      goto LABEL_864;
    case 2:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v37 = *(a3 + 8);
      v38 = *(*a3 + 20) & 0x7FFFLL;
      v1150 = v38;
      v39 = *v37;
      v40 = **(a3 + 16);
      if (v39 == 1)
      {
        *(*(v40 + 201392) - 8) += v38;
      }

      else
      {
        sub_24D769624((v40 + 201384), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v113 = *(a3 + 8);
      v114 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v114;
      v115 = *v113;
      v116 = **(a3 + 16);
      if (v115 == 1)
      {
        *(*(v116 + 201416) - 8) += v114;
      }

      else
      {
        sub_24D769624((v116 + 201408), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v193 = *(a3 + 8);
      v194 = *(*a3 + 24) & 0x7FFF;
      v1150 = v194;
      v195 = *v193;
      v196 = **(a3 + 16);
      if (v195 == 1)
      {
        *(*(v196 + 201440) - 8) += v194;
      }

      else
      {
        sub_24D769624((v196 + 201432), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v274 = *(a3 + 8);
      v275 = *(*a3 + 26) & 0x7FFF;
      v1150 = v275;
      v276 = *v274;
      v277 = **(a3 + 16);
      if (v276 == 1)
      {
        *(*(v277 + 201464) - 8) += v275;
      }

      else
      {
        sub_24D769624((v277 + 201456), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v351 = *(a3 + 8);
      v352 = *(*a3 + 28) & 0x7FFFLL;
      v1150 = v352;
      v353 = *v351;
      v354 = **(a3 + 16);
      if (v353 == 1)
      {
        *(*(v354 + 201488) - 8) += v352;
      }

      else
      {
        sub_24D769624((v354 + 201480), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v425 = *(a3 + 8);
      v426 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1150 = v426;
      v427 = *v425;
      v428 = **(a3 + 16);
      if (v427 == 1)
      {
        *(*(v428 + 201512) - 8) += v426;
      }

      else
      {
        sub_24D769624((v428 + 201504), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v495 = *(a3 + 8);
      v496 = *(*a3 + 32) & 0x7FFF;
      v1150 = v496;
      v497 = *v495;
      v498 = **(a3 + 16);
      if (v497 == 1)
      {
        *(*(v498 + 201536) - 8) += v496;
      }

      else
      {
        sub_24D769624((v498 + 201528), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v563 = *(a3 + 8);
      v564 = *(*a3 + 34) & 0x7FFF;
      v1150 = v564;
      v565 = *v563;
      v566 = **(a3 + 16);
      if (v565 == 1)
      {
        *(*(v566 + 201560) - 8) += v564;
      }

      else
      {
        sub_24D769624((v566 + 201552), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v631 = *(a3 + 8);
      v632 = *(*a3 + 36) & 0x7FFFLL;
      v1150 = v632;
      v633 = *v631;
      v634 = **(a3 + 16);
      if (v633 == 1)
      {
        *(*(v634 + 201584) - 8) += v632;
      }

      else
      {
        sub_24D769624((v634 + 201576), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v695 = *(a3 + 8);
      v696 = (*(*a3 + 36) >> 16) & 0x7FFFLL;
      v1150 = v696;
      v697 = *v695;
      v698 = **(a3 + 16);
      if (v697 == 1)
      {
        *(*(v698 + 201608) - 8) += v696;
      }

      else
      {
        sub_24D769624((v698 + 201600), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v749 = *(a3 + 8);
      v750 = *(*a3 + 40) & 0x7FFF;
      v1150 = v750;
      v751 = *v749;
      v752 = **(a3 + 16);
      if (v751 == 1)
      {
        *(*(v752 + 201632) - 8) += v750;
      }

      else
      {
        sub_24D769624((v752 + 201624), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v797 = *(a3 + 8);
      v798 = *(*a3 + 42) & 0x7FFF;
      v1150 = v798;
      v799 = *v797;
      v800 = **(a3 + 16);
      if (v799 == 1)
      {
        *(*(v800 + 201656) - 8) += v798;
      }

      else
      {
        sub_24D769624((v800 + 201648), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v845 = *(a3 + 8);
      v846 = *(*a3 + 44) & 0x7FFFLL;
      v1150 = v846;
      v847 = *v845;
      v848 = **(a3 + 16);
      if (v847 == 1)
      {
        *(*(v848 + 201680) - 8) += v846;
      }

      else
      {
        sub_24D769624((v848 + 201672), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v889 = *(a3 + 8);
      v890 = (*(*a3 + 44) >> 16) & 0x7FFFLL;
      v1150 = v890;
      v891 = *v889;
      v892 = **(a3 + 16);
      if (v891 == 1)
      {
        *(*(v892 + 201704) - 8) += v890;
      }

      else
      {
        sub_24D769624((v892 + 201696), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v923 = *(a3 + 8);
      v924 = *(*a3 + 48) & 0x7FFF;
      v1150 = v924;
      v925 = *v923;
      v926 = **(a3 + 16);
      if (v925 == 1)
      {
        *(*(v926 + 201728) - 8) += v924;
      }

      else
      {
        sub_24D769624((v926 + 201720), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v949 = *(a3 + 8);
      v950 = *(*a3 + 50) & 0x7FFF;
      v1150 = v950;
      v951 = *v949;
      v952 = **(a3 + 16);
      if (v951 == 1)
      {
        *(*(v952 + 201752) - 8) += v950;
      }

      else
      {
        sub_24D769624((v952 + 201744), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v971 = *(a3 + 8);
      v972 = *(*a3 + 52) & 0x7FFFLL;
      v1150 = v972;
      v973 = *v971;
      v974 = **(a3 + 16);
      if (v973 == 1)
      {
        *(*(v974 + 201776) - 8) += v972;
      }

      else
      {
        sub_24D769624((v974 + 201768), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v991 = *(a3 + 8);
      v992 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1150 = v992;
      v993 = *v991;
      v994 = **(a3 + 16);
      if (v993 == 1)
      {
        *(*(v994 + 201800) - 8) += v992;
      }

      else
      {
        sub_24D769624((v994 + 201792), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1011 = *(a3 + 8);
      v1012 = *(*a3 + 56) & 0x7FFF;
      v1150 = v1012;
      v1013 = *v1011;
      v1014 = **(a3 + 16);
      if (v1013 == 1)
      {
        *(*(v1014 + 201824) - 8) += v1012;
      }

      else
      {
        sub_24D769624((v1014 + 201816), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1031 = *(a3 + 8);
      v198 = *(*a3 + 58) & 0x7FFF;
      v1150 = v198;
      v1032 = *v1031;
      v200 = **(a3 + 16);
      if (v1032 == 1)
      {
        v201 = 5240;
        goto LABEL_856;
      }

      v278 = v200 + 25230;
      goto LABEL_864;
    case 3:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v45 = *(a3 + 8);
      v46 = *(*a3 + 22);
      v1150 = v46;
      v47 = *v45;
      v48 = **(a3 + 16);
      if (v47 == 1)
      {
        *(*(v48 + 201872) - 8) += v46;
      }

      else
      {
        sub_24D769624((v48 + 201864), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v121 = *(a3 + 8);
      v122 = *(*a3 + 24) & 0x3FFFF;
      v1150 = v122;
      v123 = *v121;
      v124 = **(a3 + 16);
      if (v123 == 1)
      {
        *(*(v124 + 201896) - 8) += v122;
      }

      else
      {
        sub_24D769624((v124 + 201888), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v202 = *(a3 + 8);
      v203 = *(*a3 + 28) & 0x3FFFFLL;
      v1150 = v203;
      v204 = *v202;
      v205 = **(a3 + 16);
      if (v204 == 1)
      {
        *(*(v205 + 201920) - 8) += v203;
      }

      else
      {
        sub_24D769624((v205 + 201912), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v279 = *(a3 + 8);
      v280 = *(*a3 + 32) & 0x1FFFF;
      v1150 = v280;
      v281 = *v279;
      v282 = **(a3 + 16);
      if (v281 == 1)
      {
        *(*(v282 + 201944) - 8) += v280;
      }

      else
      {
        sub_24D769624((v282 + 201936), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v355 = *(a3 + 8);
      v356 = *(*a3 + 36);
      v1150 = v356;
      v357 = *v355;
      v358 = **(a3 + 16);
      if (v357 == 1)
      {
        *(*(v358 + 201968) - 8) += v356;
      }

      else
      {
        sub_24D769624((v358 + 201960), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v429 = *(a3 + 8);
      v430 = *(*a3 + 38);
      v1150 = v430;
      v431 = *v429;
      v432 = **(a3 + 16);
      if (v431 == 1)
      {
        *(*(v432 + 201992) - 8) += v430;
      }

      else
      {
        sub_24D769624((v432 + 201984), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v499 = *(a3 + 8);
      v500 = *(*a3 + 40);
      v1150 = v500;
      v501 = *v499;
      v502 = **(a3 + 16);
      if (v501 == 1)
      {
        *(*(v502 + 202016) - 8) += v500;
      }

      else
      {
        sub_24D769624((v502 + 202008), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v567 = *(a3 + 8);
      v568 = HIWORD(*(*a3 + 36));
      v1150 = v568;
      v569 = *v567;
      v570 = **(a3 + 16);
      if (v569 == 1)
      {
        *(*(v570 + 202040) - 8) += v568;
      }

      else
      {
        sub_24D769624((v570 + 202032), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v635 = *(a3 + 8);
      v636 = *(*a3 + 44) & 0x1FFFFLL;
      v1150 = v636;
      v637 = *v635;
      v638 = **(a3 + 16);
      if (v637 == 1)
      {
        *(*(v638 + 202064) - 8) += v636;
      }

      else
      {
        sub_24D769624((v638 + 202056), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v699 = *(a3 + 8);
      v700 = *(*a3 + 48) & 0x1FFFF;
      v1150 = v700;
      v701 = *v699;
      v702 = **(a3 + 16);
      if (v701 == 1)
      {
        *(*(v702 + 202088) - 8) += v700;
      }

      else
      {
        sub_24D769624((v702 + 202080), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v753 = *(a3 + 8);
      v754 = *(*a3 + 52) & 0x1FFFFLL;
      v1150 = v754;
      v755 = *v753;
      v756 = **(a3 + 16);
      if (v755 == 1)
      {
        *(*(v756 + 202112) - 8) += v754;
      }

      else
      {
        sub_24D769624((v756 + 202104), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v801 = *(a3 + 8);
      v802 = *(*a3 + 56) & 0x1FFFF;
      v1150 = v802;
      v803 = *v801;
      v804 = **(a3 + 16);
      if (v803 == 1)
      {
        *(*(v804 + 202136) - 8) += v802;
      }

      else
      {
        sub_24D769624((v804 + 202128), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v849 = *(a3 + 8);
      v850 = *(*a3 + 52) >> 49;
      v1150 = v850;
      v851 = *v849;
      v852 = **(a3 + 16);
      if (v851 == 1)
      {
        *(*(v852 + 202160) - 8) += v850;
      }

      else
      {
        sub_24D769624((v852 + 202152), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v893 = *(a3 + 8);
      v894 = *(*a3 + 60);
      v1150 = v894;
      v895 = *v893;
      v896 = **(a3 + 16);
      if (v895 == 1)
      {
        *(*(v896 + 202184) - 8) += v894;
      }

      else
      {
        sub_24D769624((v896 + 202176), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v927 = *(a3 + 8);
      v928 = *(*a3 + 64) & 0x3FFFF;
      v1150 = v928;
      v929 = *v927;
      v930 = **(a3 + 16);
      if (v929 == 1)
      {
        *(*(v930 + 202208) - 8) += v928;
      }

      else
      {
        sub_24D769624((v930 + 202200), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v953 = *(a3 + 8);
      v954 = *(*a3 + 68) & 0x3FFFFLL;
      v1150 = v954;
      v955 = *v953;
      v956 = **(a3 + 16);
      if (v955 == 1)
      {
        *(*(v956 + 202232) - 8) += v954;
      }

      else
      {
        sub_24D769624((v956 + 202224), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v975 = *(a3 + 8);
      v976 = *(*a3 + 72) & 0x1FFFF;
      v1150 = v976;
      v977 = *v975;
      v978 = **(a3 + 16);
      if (v977 == 1)
      {
        *(*(v978 + 202256) - 8) += v976;
      }

      else
      {
        sub_24D769624((v978 + 202248), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v995 = *(a3 + 8);
      v996 = *(*a3 + 76);
      v1150 = v996;
      v997 = *v995;
      v998 = **(a3 + 16);
      if (v997 == 1)
      {
        *(*(v998 + 202280) - 8) += v996;
      }

      else
      {
        sub_24D769624((v998 + 202272), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1015 = *(a3 + 8);
      v1016 = *(*a3 + 78);
      v1150 = v1016;
      v1017 = *v1015;
      v1018 = **(a3 + 16);
      if (v1017 == 1)
      {
        *(*(v1018 + 202304) - 8) += v1016;
      }

      else
      {
        sub_24D769624((v1018 + 202296), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1033 = *(a3 + 8);
      v1034 = *(*a3 + 80);
      v1150 = v1034;
      v1035 = *v1033;
      v1036 = **(a3 + 16);
      if (v1035 == 1)
      {
        *(*(v1036 + 202328) - 8) += v1034;
      }

      else
      {
        sub_24D769624((v1036 + 202320), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1049 = *(a3 + 8);
      v1050 = HIWORD(*(*a3 + 76));
      v1150 = v1050;
      v1051 = *v1049;
      v1052 = **(a3 + 16);
      if (v1051 == 1)
      {
        *(*(v1052 + 202352) - 8) += v1050;
      }

      else
      {
        sub_24D769624((v1052 + 202344), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1065 = *(a3 + 8);
      v1066 = *(*a3 + 84);
      v1150 = v1066;
      v1067 = *v1065;
      v1068 = **(a3 + 16);
      if (v1067 == 1)
      {
        *(*(v1068 + 202376) - 8) += v1066;
      }

      else
      {
        sub_24D769624((v1068 + 202368), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1079 = *(a3 + 8);
      v1080 = *(*a3 + 86);
      v1150 = v1080;
      v1081 = *v1079;
      v1082 = **(a3 + 16);
      if (v1081 == 1)
      {
        *(*(v1082 + 202400) - 8) += v1080;
      }

      else
      {
        sub_24D769624((v1082 + 202392), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1091 = *(a3 + 8);
      v198 = *(*a3 + 88) & 0x7FFF;
      v1150 = v198;
      v1092 = *v1091;
      v200 = **(a3 + 16);
      if (v1092 == 1)
      {
        v201 = 5816;
        goto LABEL_856;
      }

      v278 = v200 + 25302;
      goto LABEL_864;
    case 4:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v25 = *(a3 + 8);
      v26 = (*(*a3 + 20) >> 1) & 0x3FFFFLL;
      v1150 = v26;
      v27 = *v25;
      v28 = **(a3 + 16);
      if (v27 == 1)
      {
        *(*(v28 + 202448) - 8) += v26;
      }

      else
      {
        sub_24D769624((v28 + 202440), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v101 = *(a3 + 8);
      v102 = *(*a3 + 24) & 0x3FFFF;
      v1150 = v102;
      v103 = *v101;
      v104 = **(a3 + 16);
      if (v103 == 1)
      {
        *(*(v104 + 202472) - 8) += v102;
      }

      else
      {
        sub_24D769624((v104 + 202464), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v181 = *(a3 + 8);
      v182 = *(*a3 + 28) & 0x3FFFFLL;
      v1150 = v182;
      v183 = *v181;
      v184 = **(a3 + 16);
      if (v183 == 1)
      {
        *(*(v184 + 202496) - 8) += v182;
      }

      else
      {
        sub_24D769624((v184 + 202488), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v262 = *(a3 + 8);
      v263 = *(*a3 + 32) & 0x3FFFF;
      v1150 = v263;
      v264 = *v262;
      v265 = **(a3 + 16);
      if (v264 == 1)
      {
        *(*(v265 + 202520) - 8) += v263;
      }

      else
      {
        sub_24D769624((v265 + 202512), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v339 = *(a3 + 8);
      v340 = *(*a3 + 36) & 0x3FFFFLL;
      v1150 = v340;
      v341 = *v339;
      v342 = **(a3 + 16);
      if (v341 == 1)
      {
        *(*(v342 + 202544) - 8) += v340;
      }

      else
      {
        sub_24D769624((v342 + 202536), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v415 = *(a3 + 8);
      v416 = *(*a3 + 40) & 0x3FFFF;
      v1150 = v416;
      v417 = *v415;
      v418 = **(a3 + 16);
      if (v417 == 1)
      {
        *(*(v418 + 202568) - 8) += v416;
      }

      else
      {
        sub_24D769624((v418 + 202560), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v487 = *(a3 + 8);
      v488 = *(*a3 + 44) & 0x7FFFLL;
      v1150 = v488;
      v489 = *v487;
      v490 = **(a3 + 16);
      if (v489 == 1)
      {
        *(*(v490 + 202592) - 8) += v488;
      }

      else
      {
        sub_24D769624((v490 + 202584), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v555 = *(a3 + 8);
      v556 = (*(*a3 + 44) >> 16) & 0x7FFFLL;
      v1150 = v556;
      v557 = *v555;
      v558 = **(a3 + 16);
      if (v557 == 1)
      {
        *(*(v558 + 202616) - 8) += v556;
      }

      else
      {
        sub_24D769624((v558 + 202608), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v623 = *(a3 + 8);
      v624 = *(*a3 + 48) & 0x7FFF;
      v1150 = v624;
      v625 = *v623;
      v626 = **(a3 + 16);
      if (v625 == 1)
      {
        *(*(v626 + 202640) - 8) += v624;
      }

      else
      {
        sub_24D769624((v626 + 202632), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v687 = *(a3 + 8);
      v688 = *(*a3 + 50) & 0x7FFF;
      v1150 = v688;
      v689 = *v687;
      v690 = **(a3 + 16);
      if (v689 == 1)
      {
        *(*(v690 + 202664) - 8) += v688;
      }

      else
      {
        sub_24D769624((v690 + 202656), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v743 = *(a3 + 8);
      v744 = *(*a3 + 52) & 0xFFFFFLL;
      v1150 = v744;
      v745 = *v743;
      v746 = **(a3 + 16);
      if (v745 == 1)
      {
        *(*(v746 + 202688) - 8) += v744;
      }

      else
      {
        sub_24D769624((v746 + 202680), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v793 = *(a3 + 8);
      v794 = *(*a3 + 56) & 0xFFFFF;
      v1150 = v794;
      v795 = *v793;
      v796 = **(a3 + 16);
      if (v795 == 1)
      {
        *(*(v796 + 202712) - 8) += v794;
      }

      else
      {
        sub_24D769624((v796 + 202704), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v841 = *(a3 + 8);
      v842 = *(*a3 + 60) & 0x3FFFFLL;
      v1150 = v842;
      v843 = *v841;
      v844 = **(a3 + 16);
      if (v843 == 1)
      {
        *(*(v844 + 202736) - 8) += v842;
      }

      else
      {
        sub_24D769624((v844 + 202728), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v885 = *(a3 + 8);
      v886 = *(*a3 + 64);
      v1150 = v886;
      v887 = *v885;
      v888 = **(a3 + 16);
      if (v887 == 1)
      {
        *(*(v888 + 202760) - 8) += v886;
      }

      else
      {
        sub_24D769624((v888 + 202752), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v921 = *(a3 + 8);
      v198 = HIWORD(*(*a3 + 60));
      v1150 = v198;
      v922 = *v921;
      v200 = **(a3 + 16);
      if (v922 == 1)
      {
        v201 = 6176;
        goto LABEL_856;
      }

      v278 = v200 + 25347;
      goto LABEL_864;
    case 5:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v61 = *(a3 + 8);
      v62 = (*(*a3 + 20) >> 1) & 0x3FFFFLL;
      v1150 = v62;
      v63 = *v61;
      v64 = **(a3 + 16);
      if (v63 == 1)
      {
        *(*(v64 + 202808) - 8) += v62;
      }

      else
      {
        sub_24D769624((v64 + 202800), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v141 = *(a3 + 8);
      v142 = *(*a3 + 24) & 0x3FFFF;
      v1150 = v142;
      v143 = *v141;
      v144 = **(a3 + 16);
      if (v143 == 1)
      {
        *(*(v144 + 202832) - 8) += v142;
      }

      else
      {
        sub_24D769624((v144 + 202824), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v222 = *(a3 + 8);
      v223 = *(*a3 + 28) & 0x3FFFFLL;
      v1150 = v223;
      v224 = *v222;
      v225 = **(a3 + 16);
      if (v224 == 1)
      {
        *(*(v225 + 202856) - 8) += v223;
      }

      else
      {
        sub_24D769624((v225 + 202848), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v299 = *(a3 + 8);
      v300 = *(*a3 + 32) & 0x3FFFF;
      v1150 = v300;
      v301 = *v299;
      v302 = **(a3 + 16);
      if (v301 == 1)
      {
        *(*(v302 + 202880) - 8) += v300;
      }

      else
      {
        sub_24D769624((v302 + 202872), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v375 = *(a3 + 8);
      v376 = *(*a3 + 36) & 0x3FFFFLL;
      v1150 = v376;
      v377 = *v375;
      v378 = **(a3 + 16);
      if (v377 == 1)
      {
        *(*(v378 + 202904) - 8) += v376;
      }

      else
      {
        sub_24D769624((v378 + 202896), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v449 = *(a3 + 8);
      v450 = *(*a3 + 40) & 0x3FFFF;
      v1150 = v450;
      v451 = *v449;
      v452 = **(a3 + 16);
      if (v451 == 1)
      {
        *(*(v452 + 202928) - 8) += v450;
      }

      else
      {
        sub_24D769624((v452 + 202920), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v519 = *(a3 + 8);
      v520 = *(*a3 + 44) & 0x3FFFFLL;
      v1150 = v520;
      v521 = *v519;
      v522 = **(a3 + 16);
      if (v521 == 1)
      {
        *(*(v522 + 202952) - 8) += v520;
      }

      else
      {
        sub_24D769624((v522 + 202944), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v587 = *(a3 + 8);
      v588 = *(*a3 + 48) & 0x3FFFF;
      v1150 = v588;
      v589 = *v587;
      v590 = **(a3 + 16);
      if (v589 == 1)
      {
        *(*(v590 + 202976) - 8) += v588;
      }

      else
      {
        sub_24D769624((v590 + 202968), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v655 = *(a3 + 8);
      v198 = *(*a3 + 52) & 0x3FFFF;
      v1150 = v198;
      v656 = *v655;
      v200 = **(a3 + 16);
      if (v656 == 1)
      {
        v201 = 6392;
        goto LABEL_856;
      }

      v278 = v200 + 25374;
      goto LABEL_864;
    case 6:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v69 = *(a3 + 8);
      v70 = *(*a3 + 20) & 0x7FFFFLL;
      v1150 = v70;
      v71 = *v69;
      v72 = **(a3 + 16);
      if (v71 == 1)
      {
        *(*(v72 + 203024) - 8) += v70;
      }

      else
      {
        sub_24D769624((v72 + 203016), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v149 = *(a3 + 8);
      v150 = *(*a3 + 24) & 0x7FFFF;
      v1150 = v150;
      v151 = *v149;
      v152 = **(a3 + 16);
      if (v151 == 1)
      {
        *(*(v152 + 203048) - 8) += v150;
      }

      else
      {
        sub_24D769624((v152 + 203040), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v230 = *(a3 + 8);
      v231 = *(*a3 + 28) & 0x7FFFFLL;
      v1150 = v231;
      v232 = *v230;
      v233 = **(a3 + 16);
      if (v232 == 1)
      {
        *(*(v233 + 203072) - 8) += v231;
      }

      else
      {
        sub_24D769624((v233 + 203064), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v307 = *(a3 + 8);
      v308 = *(*a3 + 32) & 0x7FFFF;
      v1150 = v308;
      v309 = *v307;
      v310 = **(a3 + 16);
      if (v309 == 1)
      {
        *(*(v310 + 203096) - 8) += v308;
      }

      else
      {
        sub_24D769624((v310 + 203088), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v383 = *(a3 + 8);
      v384 = *(*a3 + 36) & 0x1FFFFFLL;
      v1150 = v384;
      v385 = *v383;
      v386 = **(a3 + 16);
      if (v385 == 1)
      {
        *(*(v386 + 203120) - 8) += v384;
      }

      else
      {
        sub_24D769624((v386 + 203112), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v457 = *(a3 + 8);
      v458 = *(*a3 + 40) & 0x1FFFFF;
      v1150 = v458;
      v459 = *v457;
      v460 = **(a3 + 16);
      if (v459 == 1)
      {
        *(*(v460 + 203144) - 8) += v458;
      }

      else
      {
        sub_24D769624((v460 + 203136), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v527 = *(a3 + 8);
      v528 = *(*a3 + 44) & 0x1FFFFFLL;
      v1150 = v528;
      v529 = *v527;
      v530 = **(a3 + 16);
      if (v529 == 1)
      {
        *(*(v530 + 203168) - 8) += v528;
      }

      else
      {
        sub_24D769624((v530 + 203160), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v595 = *(a3 + 8);
      v596 = *(*a3 + 48) & 0x1FFFFF;
      v1150 = v596;
      v597 = *v595;
      v598 = **(a3 + 16);
      if (v597 == 1)
      {
        *(*(v598 + 203192) - 8) += v596;
      }

      else
      {
        sub_24D769624((v598 + 203184), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v661 = *(a3 + 8);
      v662 = *(*a3 + 52) & 0x1FFFFFLL;
      v1150 = v662;
      v663 = *v661;
      v664 = **(a3 + 16);
      if (v663 == 1)
      {
        *(*(v664 + 203216) - 8) += v662;
      }

      else
      {
        sub_24D769624((v664 + 203208), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v721 = *(a3 + 8);
      v198 = *(*a3 + 56) & 0x7FFF;
      v1150 = v198;
      v722 = *v721;
      v200 = **(a3 + 16);
      if (v722 == 1)
      {
        v201 = 6632;
        goto LABEL_856;
      }

      v278 = v200 + 25404;
      goto LABEL_864;
    case 7:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v49 = *(a3 + 8);
      v50 = *(*a3 + 20) & 0x3FFFFFLL;
      v1150 = v50;
      v51 = *v49;
      v52 = **(a3 + 16);
      if (v51 == 1)
      {
        *(*(v52 + 203264) - 8) += v50;
      }

      else
      {
        sub_24D769624((v52 + 203256), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v125 = *(a3 + 8);
      v126 = *(*a3 + 24) & 0x3FFFFF;
      v1150 = v126;
      v127 = *v125;
      v128 = **(a3 + 16);
      if (v127 == 1)
      {
        *(*(v128 + 203288) - 8) += v126;
      }

      else
      {
        sub_24D769624((v128 + 203280), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v206 = *(a3 + 8);
      v207 = *(*a3 + 28) & 0x3FFFFFLL;
      v1150 = v207;
      v208 = *v206;
      v209 = **(a3 + 16);
      if (v208 == 1)
      {
        *(*(v209 + 203312) - 8) += v207;
      }

      else
      {
        sub_24D769624((v209 + 203304), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v283 = *(a3 + 8);
      v284 = *(*a3 + 32) & 0x3FFFFF;
      v1150 = v284;
      v285 = *v283;
      v286 = **(a3 + 16);
      if (v285 == 1)
      {
        *(*(v286 + 203336) - 8) += v284;
      }

      else
      {
        sub_24D769624((v286 + 203328), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v359 = *(a3 + 8);
      v360 = *(*a3 + 36) & 0x3FFFFFLL;
      v1150 = v360;
      v361 = *v359;
      v362 = **(a3 + 16);
      if (v361 == 1)
      {
        *(*(v362 + 203360) - 8) += v360;
      }

      else
      {
        sub_24D769624((v362 + 203352), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v433 = *(a3 + 8);
      v434 = *(*a3 + 40) & 0x3FFFFF;
      v1150 = v434;
      v435 = *v433;
      v436 = **(a3 + 16);
      if (v435 == 1)
      {
        *(*(v436 + 203384) - 8) += v434;
      }

      else
      {
        sub_24D769624((v436 + 203376), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v503 = *(a3 + 8);
      v504 = *(*a3 + 44) & 0x3FFFFFLL;
      v1150 = v504;
      v505 = *v503;
      v506 = **(a3 + 16);
      if (v505 == 1)
      {
        *(*(v506 + 203408) - 8) += v504;
      }

      else
      {
        sub_24D769624((v506 + 203400), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v571 = *(a3 + 8);
      v572 = *(*a3 + 48) & 0x7FFFF;
      v1150 = v572;
      v573 = *v571;
      v574 = **(a3 + 16);
      if (v573 == 1)
      {
        *(*(v574 + 203432) - 8) += v572;
      }

      else
      {
        sub_24D769624((v574 + 203424), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v639 = *(a3 + 8);
      v640 = *(*a3 + 52) & 0x3FFFFFLL;
      v1150 = v640;
      v641 = *v639;
      v642 = **(a3 + 16);
      if (v641 == 1)
      {
        *(*(v642 + 203456) - 8) += v640;
      }

      else
      {
        sub_24D769624((v642 + 203448), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v703 = *(a3 + 8);
      v704 = *(*a3 + 56) & 0x3FFFFF;
      v1150 = v704;
      v705 = *v703;
      v706 = **(a3 + 16);
      if (v705 == 1)
      {
        *(*(v706 + 203480) - 8) += v704;
      }

      else
      {
        sub_24D769624((v706 + 203472), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v757 = *(a3 + 8);
      v758 = *(*a3 + 60) & 0x3FFFFFLL;
      v1150 = v758;
      v759 = *v757;
      v760 = **(a3 + 16);
      if (v759 == 1)
      {
        *(*(v760 + 203504) - 8) += v758;
      }

      else
      {
        sub_24D769624((v760 + 203496), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v805 = *(a3 + 8);
      v806 = *(*a3 + 64) & 0x3FFFFF;
      v1150 = v806;
      v807 = *v805;
      v808 = **(a3 + 16);
      if (v807 == 1)
      {
        *(*(v808 + 203528) - 8) += v806;
      }

      else
      {
        sub_24D769624((v808 + 203520), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v853 = *(a3 + 8);
      v854 = *(*a3 + 68) & 0x3FFFFFLL;
      v1150 = v854;
      v855 = *v853;
      v856 = **(a3 + 16);
      if (v855 == 1)
      {
        *(*(v856 + 203552) - 8) += v854;
      }

      else
      {
        sub_24D769624((v856 + 203544), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v897 = *(a3 + 8);
      v898 = *(*a3 + 72) & 0x3FFFFF;
      v1150 = v898;
      v899 = *v897;
      v900 = **(a3 + 16);
      if (v899 == 1)
      {
        *(*(v900 + 203576) - 8) += v898;
      }

      else
      {
        sub_24D769624((v900 + 203568), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v931 = *(a3 + 8);
      v932 = *(*a3 + 76) & 0x3FFFFFLL;
      v1150 = v932;
      v933 = *v931;
      v934 = **(a3 + 16);
      if (v933 == 1)
      {
        *(*(v934 + 203600) - 8) += v932;
      }

      else
      {
        sub_24D769624((v934 + 203592), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v957 = *(a3 + 8);
      v198 = *(*a3 + 80) & 0x7FFFF;
      v1150 = v198;
      v958 = *v957;
      v200 = **(a3 + 16);
      if (v958 == 1)
      {
        v201 = 7016;
        goto LABEL_856;
      }

      v278 = v200 + 25452;
      goto LABEL_864;
    case 8:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v81 = *(a3 + 8);
      v82 = *(*a3 + 20) & 0x7FFFFLL;
      v1150 = v82;
      v83 = *v81;
      v84 = **(a3 + 16);
      if (v83 == 1)
      {
        *(*(v84 + 203648) - 8) += v82;
      }

      else
      {
        sub_24D769624((v84 + 203640), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v161 = *(a3 + 8);
      v162 = *(*a3 + 24) & 0x7FFFF;
      v1150 = v162;
      v163 = *v161;
      v164 = **(a3 + 16);
      if (v163 == 1)
      {
        *(*(v164 + 203672) - 8) += v162;
      }

      else
      {
        sub_24D769624((v164 + 203664), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v242 = *(a3 + 8);
      v243 = *(*a3 + 28) & 0x7FFFFLL;
      v1150 = v243;
      v244 = *v242;
      v245 = **(a3 + 16);
      if (v244 == 1)
      {
        *(*(v245 + 203696) - 8) += v243;
      }

      else
      {
        sub_24D769624((v245 + 203688), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v319 = *(a3 + 8);
      v320 = *(*a3 + 32) & 0x7FFFF;
      v1150 = v320;
      v321 = *v319;
      v322 = **(a3 + 16);
      if (v321 == 1)
      {
        *(*(v322 + 203720) - 8) += v320;
      }

      else
      {
        sub_24D769624((v322 + 203712), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v395 = *(a3 + 8);
      v396 = *(*a3 + 36) & 0x7FFFFLL;
      v1150 = v396;
      v397 = *v395;
      v398 = **(a3 + 16);
      if (v397 == 1)
      {
        *(*(v398 + 203744) - 8) += v396;
      }

      else
      {
        sub_24D769624((v398 + 203736), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v469 = *(a3 + 8);
      v470 = *(*a3 + 40) & 0x7FFFF;
      v1150 = v470;
      v471 = *v469;
      v472 = **(a3 + 16);
      if (v471 == 1)
      {
        *(*(v472 + 203768) - 8) += v470;
      }

      else
      {
        sub_24D769624((v472 + 203760), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v539 = *(a3 + 8);
      v540 = *(*a3 + 44) & 0x7FFFFLL;
      v1150 = v540;
      v541 = *v539;
      v542 = **(a3 + 16);
      if (v541 == 1)
      {
        *(*(v542 + 203792) - 8) += v540;
      }

      else
      {
        sub_24D769624((v542 + 203784), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v607 = *(a3 + 8);
      v608 = *(*a3 + 48) & 0x7FFF;
      v1150 = v608;
      v609 = *v607;
      v610 = **(a3 + 16);
      if (v609 == 1)
      {
        *(*(v610 + 203816) - 8) += v608;
      }

      else
      {
        sub_24D769624((v610 + 203808), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v673 = *(a3 + 8);
      v674 = *(*a3 + 52) & 0xFFFFFLL;
      v1150 = v674;
      v675 = *v673;
      v676 = **(a3 + 16);
      if (v675 == 1)
      {
        *(*(v676 + 203840) - 8) += v674;
      }

      else
      {
        sub_24D769624((v676 + 203832), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v731 = *(a3 + 8);
      v732 = *(*a3 + 56) & 0xFFFFF;
      v1150 = v732;
      v733 = *v731;
      v734 = **(a3 + 16);
      if (v733 == 1)
      {
        *(*(v734 + 203864) - 8) += v732;
      }

      else
      {
        sub_24D769624((v734 + 203856), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v781 = *(a3 + 8);
      v782 = *(*a3 + 60) & 0xFFFFFLL;
      v1150 = v782;
      v783 = *v781;
      v784 = **(a3 + 16);
      if (v783 == 1)
      {
        *(*(v784 + 203888) - 8) += v782;
      }

      else
      {
        sub_24D769624((v784 + 203880), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v829 = *(a3 + 8);
      v830 = *(*a3 + 64) & 0xFFFFF;
      v1150 = v830;
      v831 = *v829;
      v832 = **(a3 + 16);
      if (v831 == 1)
      {
        *(*(v832 + 203912) - 8) += v830;
      }

      else
      {
        sub_24D769624((v832 + 203904), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v875 = *(a3 + 8);
      v876 = *(*a3 + 68) & 0xFFFFFLL;
      v1150 = v876;
      v877 = *v875;
      v878 = **(a3 + 16);
      if (v877 == 1)
      {
        *(*(v878 + 203936) - 8) += v876;
      }

      else
      {
        sub_24D769624((v878 + 203928), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v913 = *(a3 + 8);
      v914 = *(*a3 + 72) & 0xFFFFF;
      v1150 = v914;
      v915 = *v913;
      v916 = **(a3 + 16);
      if (v915 == 1)
      {
        *(*(v916 + 203960) - 8) += v914;
      }

      else
      {
        sub_24D769624((v916 + 203952), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v943 = *(a3 + 8);
      v198 = *(*a3 + 76) & 0xFFFFF;
      v1150 = v198;
      v944 = *v943;
      v200 = **(a3 + 16);
      if (v944 == 1)
      {
        v201 = 7376;
        goto LABEL_856;
      }

      v278 = v200 + 25497;
      goto LABEL_864;
    case 9:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v33 = *(a3 + 8);
      v34 = *(*a3 + 20);
      v1150 = v34;
      v35 = *v33;
      v36 = **(a3 + 16);
      if (v35 == 1)
      {
        *(*(v36 + 204008) - 8) += v34;
      }

      else
      {
        sub_24D769624((v36 + 204000), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v109 = *(a3 + 8);
      v110 = *(*a3 + 22);
      v1150 = v110;
      v111 = *v109;
      v112 = **(a3 + 16);
      if (v111 == 1)
      {
        *(*(v112 + 204032) - 8) += v110;
      }

      else
      {
        sub_24D769624((v112 + 204024), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v189 = *(a3 + 8);
      v190 = *(*a3 + 24) & 0x1FFFF;
      v1150 = v190;
      v191 = *v189;
      v192 = **(a3 + 16);
      if (v191 == 1)
      {
        *(*(v192 + 204056) - 8) += v190;
      }

      else
      {
        sub_24D769624((v192 + 204048), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v270 = *(a3 + 8);
      v271 = *(*a3 + 28) & 0x1FFFFLL;
      v1150 = v271;
      v272 = *v270;
      v273 = **(a3 + 16);
      if (v272 == 1)
      {
        *(*(v273 + 204080) - 8) += v271;
      }

      else
      {
        sub_24D769624((v273 + 204072), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v347 = *(a3 + 8);
      v348 = *(*a3 + 32) & 0x1FFFF;
      v1150 = v348;
      v349 = *v347;
      v350 = **(a3 + 16);
      if (v349 == 1)
      {
        *(*(v350 + 204104) - 8) += v348;
      }

      else
      {
        sub_24D769624((v350 + 204096), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v423 = *(a3 + 8);
      v198 = *(*a3 + 36) & 0x1FFFFF;
      v1150 = v198;
      v424 = *v423;
      v200 = **(a3 + 16);
      if (v424 == 1)
      {
        v201 = 7520;
        goto LABEL_856;
      }

      v278 = v200 + 25515;
      goto LABEL_864;
    case 10:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v77 = *(a3 + 8);
      v78 = *(*a3 + 20) >> 1;
      v1150 = v78;
      v79 = *v77;
      v80 = **(a3 + 16);
      if (v79 == 1)
      {
        *(*(v80 + 204152) - 8) += v78;
      }

      else
      {
        sub_24D769624((v80 + 204144), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v157 = *(a3 + 8);
      v158 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v158;
      v159 = *v157;
      v160 = **(a3 + 16);
      if (v159 == 1)
      {
        *(*(v160 + 204176) - 8) += v158;
      }

      else
      {
        sub_24D769624((v160 + 204168), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v238 = *(a3 + 8);
      v239 = *(*a3 + 24) & 0x7FFF;
      v1150 = v239;
      v240 = *v238;
      v241 = **(a3 + 16);
      if (v240 == 1)
      {
        *(*(v241 + 204200) - 8) += v239;
      }

      else
      {
        sub_24D769624((v241 + 204192), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v315 = *(a3 + 8);
      v316 = *(*a3 + 26) & 0x7FFF;
      v1150 = v316;
      v317 = *v315;
      v318 = **(a3 + 16);
      if (v317 == 1)
      {
        *(*(v318 + 204224) - 8) += v316;
      }

      else
      {
        sub_24D769624((v318 + 204216), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v391 = *(a3 + 8);
      v392 = *(*a3 + 28) & 0x7FFFLL;
      v1150 = v392;
      v393 = *v391;
      v394 = **(a3 + 16);
      if (v393 == 1)
      {
        *(*(v394 + 204248) - 8) += v392;
      }

      else
      {
        sub_24D769624((v394 + 204240), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v465 = *(a3 + 8);
      v466 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1150 = v466;
      v467 = *v465;
      v468 = **(a3 + 16);
      if (v467 == 1)
      {
        *(*(v468 + 204272) - 8) += v466;
      }

      else
      {
        sub_24D769624((v468 + 204264), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v535 = *(a3 + 8);
      v536 = *(*a3 + 32) & 0x7FFF;
      v1150 = v536;
      v537 = *v535;
      v538 = **(a3 + 16);
      if (v537 == 1)
      {
        *(*(v538 + 204296) - 8) += v536;
      }

      else
      {
        sub_24D769624((v538 + 204288), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v603 = *(a3 + 8);
      v604 = *(*a3 + 34) & 0x7FFF;
      v1150 = v604;
      v605 = *v603;
      v606 = **(a3 + 16);
      if (v605 == 1)
      {
        *(*(v606 + 204320) - 8) += v604;
      }

      else
      {
        sub_24D769624((v606 + 204312), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v669 = *(a3 + 8);
      v670 = *(*a3 + 36) & 0x3FFFLL;
      v1150 = v670;
      v671 = *v669;
      v672 = **(a3 + 16);
      if (v671 == 1)
      {
        *(*(v672 + 204344) - 8) += v670;
      }

      else
      {
        sub_24D769624((v672 + 204336), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v727 = *(a3 + 8);
      v728 = (*(*a3 + 36) >> 16) & 0x3FFFLL;
      v1150 = v728;
      v729 = *v727;
      v730 = **(a3 + 16);
      if (v729 == 1)
      {
        *(*(v730 + 204368) - 8) += v728;
      }

      else
      {
        sub_24D769624((v730 + 204360), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v777 = *(a3 + 8);
      v778 = *(*a3 + 40) & 0x3FFF;
      v1150 = v778;
      v779 = *v777;
      v780 = **(a3 + 16);
      if (v779 == 1)
      {
        *(*(v780 + 204392) - 8) += v778;
      }

      else
      {
        sub_24D769624((v780 + 204384), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v825 = *(a3 + 8);
      v826 = *(*a3 + 42) & 0x3FFF;
      v1150 = v826;
      v827 = *v825;
      v828 = **(a3 + 16);
      if (v827 == 1)
      {
        *(*(v828 + 204416) - 8) += v826;
      }

      else
      {
        sub_24D769624((v828 + 204408), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v871 = *(a3 + 8);
      v872 = *(*a3 + 44) & 0x3FFFLL;
      v1150 = v872;
      v873 = *v871;
      v874 = **(a3 + 16);
      if (v873 == 1)
      {
        *(*(v874 + 204440) - 8) += v872;
      }

      else
      {
        sub_24D769624((v874 + 204432), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v909 = *(a3 + 8);
      v910 = (*(*a3 + 44) >> 16) & 0x3FFFLL;
      v1150 = v910;
      v911 = *v909;
      v912 = **(a3 + 16);
      if (v911 == 1)
      {
        *(*(v912 + 204464) - 8) += v910;
      }

      else
      {
        sub_24D769624((v912 + 204456), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v939 = *(a3 + 8);
      v940 = *(*a3 + 48) & 0x3FFF;
      v1150 = v940;
      v941 = *v939;
      v942 = **(a3 + 16);
      if (v941 == 1)
      {
        *(*(v942 + 204488) - 8) += v940;
      }

      else
      {
        sub_24D769624((v942 + 204480), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v963 = *(a3 + 8);
      v964 = *(*a3 + 50) & 0x3FFF;
      v1150 = v964;
      v965 = *v963;
      v966 = **(a3 + 16);
      if (v965 == 1)
      {
        *(*(v966 + 204512) - 8) += v964;
      }

      else
      {
        sub_24D769624((v966 + 204504), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v983 = *(a3 + 8);
      v984 = *(*a3 + 52) & 0x3FFFLL;
      v1150 = v984;
      v985 = *v983;
      v986 = **(a3 + 16);
      if (v985 == 1)
      {
        *(*(v986 + 204536) - 8) += v984;
      }

      else
      {
        sub_24D769624((v986 + 204528), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1003 = *(a3 + 8);
      v1004 = (*(*a3 + 52) >> 16) & 0x3FFFLL;
      v1150 = v1004;
      v1005 = *v1003;
      v1006 = **(a3 + 16);
      if (v1005 == 1)
      {
        *(*(v1006 + 204560) - 8) += v1004;
      }

      else
      {
        sub_24D769624((v1006 + 204552), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1023 = *(a3 + 8);
      v1024 = *(*a3 + 56) & 0x1FFF;
      v1150 = v1024;
      v1025 = *v1023;
      v1026 = **(a3 + 16);
      if (v1025 == 1)
      {
        *(*(v1026 + 204584) - 8) += v1024;
      }

      else
      {
        sub_24D769624((v1026 + 204576), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1041 = *(a3 + 8);
      v1042 = *(*a3 + 58) & 0x1FFF;
      v1150 = v1042;
      v1043 = *v1041;
      v1044 = **(a3 + 16);
      if (v1043 == 1)
      {
        *(*(v1044 + 204608) - 8) += v1042;
      }

      else
      {
        sub_24D769624((v1044 + 204600), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1057 = *(a3 + 8);
      v1058 = *(*a3 + 60) & 0x1FFFLL;
      v1150 = v1058;
      v1059 = *v1057;
      v1060 = **(a3 + 16);
      if (v1059 == 1)
      {
        *(*(v1060 + 204632) - 8) += v1058;
      }

      else
      {
        sub_24D769624((v1060 + 204624), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1071 = *(a3 + 8);
      v1072 = (*(*a3 + 60) >> 16) & 0x3FFFLL;
      v1150 = v1072;
      v1073 = *v1071;
      v1074 = **(a3 + 16);
      if (v1073 == 1)
      {
        *(*(v1074 + 204656) - 8) += v1072;
      }

      else
      {
        sub_24D769624((v1074 + 204648), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1083 = *(a3 + 8);
      v1084 = *(*a3 + 64) & 0x3FFF;
      v1150 = v1084;
      v1085 = *v1083;
      v1086 = **(a3 + 16);
      if (v1085 == 1)
      {
        *(*(v1086 + 204680) - 8) += v1084;
      }

      else
      {
        sub_24D769624((v1086 + 204672), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1094 = *(a3 + 8);
      v1095 = *(*a3 + 66) & 0x3FFF;
      v1150 = v1095;
      v1096 = *v1094;
      v1097 = **(a3 + 16);
      if (v1096 == 1)
      {
        *(*(v1097 + 204704) - 8) += v1095;
      }

      else
      {
        sub_24D769624((v1097 + 204696), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1102 = *(a3 + 8);
      v1103 = *(*a3 + 68) & 0x1FFFLL;
      v1150 = v1103;
      v1104 = *v1102;
      v1105 = **(a3 + 16);
      if (v1104 == 1)
      {
        *(*(v1105 + 204728) - 8) += v1103;
      }

      else
      {
        sub_24D769624((v1105 + 204720), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1110 = *(a3 + 8);
      v1111 = (*(*a3 + 68) >> 16) & 0x1FFFLL;
      v1150 = v1111;
      v1112 = *v1110;
      v1113 = **(a3 + 16);
      if (v1112 == 1)
      {
        *(*(v1113 + 204752) - 8) += v1111;
      }

      else
      {
        sub_24D769624((v1113 + 204744), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1118 = *(a3 + 8);
      v1119 = *(*a3 + 72) & 0x1FFF;
      v1150 = v1119;
      v1120 = *v1118;
      v1121 = **(a3 + 16);
      if (v1120 == 1)
      {
        *(*(v1121 + 204776) - 8) += v1119;
      }

      else
      {
        sub_24D769624((v1121 + 204768), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1126 = *(a3 + 8);
      v1127 = *(*a3 + 74) & 0x1FFF;
      v1150 = v1127;
      v1128 = *v1126;
      v1129 = **(a3 + 16);
      if (v1128 == 1)
      {
        *(*(v1129 + 204800) - 8) += v1127;
      }

      else
      {
        sub_24D769624((v1129 + 204792), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1134 = *(a3 + 8);
      v1135 = *(*a3 + 76) & 0x1FFFLL;
      v1150 = v1135;
      v1136 = *v1134;
      v1137 = **(a3 + 16);
      if (v1136 == 1)
      {
        *(*(v1137 + 204824) - 8) += v1135;
      }

      else
      {
        sub_24D769624((v1137 + 204816), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1140 = *(a3 + 8);
      v1141 = (*(*a3 + 76) >> 16) & 0x1FFFLL;
      v1150 = v1141;
      v1142 = *v1140;
      v1143 = **(a3 + 16);
      if (v1142 == 1)
      {
        *(*(v1143 + 204848) - 8) += v1141;
      }

      else
      {
        sub_24D769624((v1143 + 204840), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1144 = *(a3 + 8);
      v1145 = *(*a3 + 80) & 0x1FFF;
      v1150 = v1145;
      v1146 = *v1144;
      v1147 = **(a3 + 16);
      if (v1146 == 1)
      {
        *(*(v1147 + 204872) - 8) += v1145;
      }

      else
      {
        sub_24D769624((v1147 + 204864), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1148 = *(a3 + 8);
      v198 = *(*a3 + 82) & 0x1FFF;
      v1150 = v198;
      v1149 = *v1148;
      v200 = **(a3 + 16);
      if (v1149 == 1)
      {
        v201 = 8288;
        goto LABEL_856;
      }

      v278 = v200 + 25611;
      goto LABEL_864;
    case 11:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v21 = *(a3 + 8);
      v22 = *(*a3 + 20);
      v1150 = v22;
      v23 = *v21;
      v24 = **(a3 + 16);
      if (v23 == 1)
      {
        *(*(v24 + 204920) - 8) += v22;
      }

      else
      {
        sub_24D769624((v24 + 204912), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v97 = *(a3 + 8);
      v98 = HIDWORD(*(*a3 + 20));
      v1150 = v98;
      v99 = *v97;
      v100 = **(a3 + 16);
      if (v99 == 1)
      {
        *(*(v100 + 204944) - 8) += v98;
      }

      else
      {
        sub_24D769624((v100 + 204936), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v177 = *(a3 + 8);
      v178 = *(*a3 + 28) & 0x7FFFLL;
      v1150 = v178;
      v179 = *v177;
      v180 = **(a3 + 16);
      if (v179 == 1)
      {
        *(*(v180 + 204968) - 8) += v178;
      }

      else
      {
        sub_24D769624((v180 + 204960), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v258 = *(a3 + 8);
      v259 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1150 = v259;
      v260 = *v258;
      v261 = **(a3 + 16);
      if (v260 == 1)
      {
        *(*(v261 + 204992) - 8) += v259;
      }

      else
      {
        sub_24D769624((v261 + 204984), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v335 = *(a3 + 8);
      v336 = *(*a3 + 32) & 0x7FFF;
      v1150 = v336;
      v337 = *v335;
      v338 = **(a3 + 16);
      if (v337 == 1)
      {
        *(*(v338 + 205016) - 8) += v336;
      }

      else
      {
        sub_24D769624((v338 + 205008), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v411 = *(a3 + 8);
      v412 = *(*a3 + 34) & 0x7FFF;
      v1150 = v412;
      v413 = *v411;
      v414 = **(a3 + 16);
      if (v413 == 1)
      {
        *(*(v414 + 205040) - 8) += v412;
      }

      else
      {
        sub_24D769624((v414 + 205032), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v485 = *(a3 + 8);
      v198 = *(*a3 + 36);
      v1150 = v198;
      v486 = *v485;
      v200 = **(a3 + 16);
      if (v486 == 1)
      {
        v201 = 8456;
        goto LABEL_856;
      }

      v278 = v200 + 25632;
      goto LABEL_864;
    case 12:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v29 = *(a3 + 8);
      v30 = *(*a3 + 20) & 0x7FFFLL;
      v1150 = v30;
      v31 = *v29;
      v32 = **(a3 + 16);
      if (v31 == 1)
      {
        *(*(v32 + 205088) - 8) += v30;
      }

      else
      {
        sub_24D769624((v32 + 205080), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v105 = *(a3 + 8);
      v106 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v106;
      v107 = *v105;
      v108 = **(a3 + 16);
      if (v107 == 1)
      {
        *(*(v108 + 205112) - 8) += v106;
      }

      else
      {
        sub_24D769624((v108 + 205104), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v185 = *(a3 + 8);
      v186 = *(*a3 + 24) & 0x7FFF;
      v1150 = v186;
      v187 = *v185;
      v188 = **(a3 + 16);
      if (v187 == 1)
      {
        *(*(v188 + 205136) - 8) += v186;
      }

      else
      {
        sub_24D769624((v188 + 205128), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v266 = *(a3 + 8);
      v267 = *(*a3 + 26) & 0x7FFF;
      v1150 = v267;
      v268 = *v266;
      v269 = **(a3 + 16);
      if (v268 == 1)
      {
        *(*(v269 + 205160) - 8) += v267;
      }

      else
      {
        sub_24D769624((v269 + 205152), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v343 = *(a3 + 8);
      v344 = *(*a3 + 28) & 0x1FFFFLL;
      v1150 = v344;
      v345 = *v343;
      v346 = **(a3 + 16);
      if (v345 == 1)
      {
        *(*(v346 + 205184) - 8) += v344;
      }

      else
      {
        sub_24D769624((v346 + 205176), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v419 = *(a3 + 8);
      v420 = *(*a3 + 32) & 0x3FFFF;
      v1150 = v420;
      v421 = *v419;
      v422 = **(a3 + 16);
      if (v421 == 1)
      {
        *(*(v422 + 205208) - 8) += v420;
      }

      else
      {
        sub_24D769624((v422 + 205200), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v491 = *(a3 + 8);
      v492 = *(*a3 + 36) & 0x3FFFFLL;
      v1150 = v492;
      v493 = *v491;
      v494 = **(a3 + 16);
      if (v493 == 1)
      {
        *(*(v494 + 205232) - 8) += v492;
      }

      else
      {
        sub_24D769624((v494 + 205224), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v559 = *(a3 + 8);
      v560 = *(*a3 + 40) & 0x7FFF;
      v1150 = v560;
      v561 = *v559;
      v562 = **(a3 + 16);
      if (v561 == 1)
      {
        *(*(v562 + 205256) - 8) += v560;
      }

      else
      {
        sub_24D769624((v562 + 205248), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v627 = *(a3 + 8);
      v628 = *(*a3 + 42) & 0x3FFF;
      v1150 = v628;
      v629 = *v627;
      v630 = **(a3 + 16);
      if (v629 == 1)
      {
        *(*(v630 + 205280) - 8) += v628;
      }

      else
      {
        sub_24D769624((v630 + 205272), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v691 = *(a3 + 8);
      v692 = *(*a3 + 44) & 0x1FFF;
      v1150 = v692;
      v693 = *v691;
      v694 = **(a3 + 16);
      if (v693 == 1)
      {
        *(*(v694 + 205304) - 8) += v692;
      }

      else
      {
        sub_24D769624((v694 + 205296), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v747 = *(a3 + 8);
      v198 = *(*a3 + 46);
      v1150 = v198;
      v748 = *v747;
      v200 = **(a3 + 16);
      if (v748 == 1)
      {
        v201 = 8720;
        goto LABEL_856;
      }

      v278 = v200 + 25665;
      goto LABEL_864;
    case 13:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v65 = *(a3 + 8);
      v66 = *(*a3 + 20) & 0x7FFFLL;
      v1150 = v66;
      v67 = *v65;
      v68 = **(a3 + 16);
      if (v67 == 1)
      {
        *(*(v68 + 205352) - 8) += v66;
      }

      else
      {
        sub_24D769624((v68 + 205344), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v145 = *(a3 + 8);
      v146 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v146;
      v147 = *v145;
      v148 = **(a3 + 16);
      if (v147 == 1)
      {
        *(*(v148 + 205376) - 8) += v146;
      }

      else
      {
        sub_24D769624((v148 + 205368), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v226 = *(a3 + 8);
      v227 = *(*a3 + 24) & 0x7FFF;
      v1150 = v227;
      v228 = *v226;
      v229 = **(a3 + 16);
      if (v228 == 1)
      {
        *(*(v229 + 205400) - 8) += v227;
      }

      else
      {
        sub_24D769624((v229 + 205392), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v303 = *(a3 + 8);
      v304 = *(*a3 + 28) & 0x3FFFFLL;
      v1150 = v304;
      v305 = *v303;
      v306 = **(a3 + 16);
      if (v305 == 1)
      {
        *(*(v306 + 205424) - 8) += v304;
      }

      else
      {
        sub_24D769624((v306 + 205416), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v379 = *(a3 + 8);
      v380 = *(*a3 + 32) & 0x3FFFF;
      v1150 = v380;
      v381 = *v379;
      v382 = **(a3 + 16);
      if (v381 == 1)
      {
        *(*(v382 + 205448) - 8) += v380;
      }

      else
      {
        sub_24D769624((v382 + 205440), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v453 = *(a3 + 8);
      v454 = *(*a3 + 36) & 0x1FFFFLL;
      v1150 = v454;
      v455 = *v453;
      v456 = **(a3 + 16);
      if (v455 == 1)
      {
        *(*(v456 + 205472) - 8) += v454;
      }

      else
      {
        sub_24D769624((v456 + 205464), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v523 = *(a3 + 8);
      v524 = *(*a3 + 40);
      v1150 = v524;
      v525 = *v523;
      v526 = **(a3 + 16);
      if (v525 == 1)
      {
        *(*(v526 + 205496) - 8) += v524;
      }

      else
      {
        sub_24D769624((v526 + 205488), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v591 = *(a3 + 8);
      v592 = HIWORD(*(*a3 + 36));
      v1150 = v592;
      v593 = *v591;
      v594 = **(a3 + 16);
      if (v593 == 1)
      {
        *(*(v594 + 205520) - 8) += v592;
      }

      else
      {
        sub_24D769624((v594 + 205512), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v657 = *(a3 + 8);
      v658 = *(*a3 + 44) & 0x1FFFFLL;
      v1150 = v658;
      v659 = *v657;
      v660 = **(a3 + 16);
      if (v659 == 1)
      {
        *(*(v660 + 205544) - 8) += v658;
      }

      else
      {
        sub_24D769624((v660 + 205536), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v717 = *(a3 + 8);
      v718 = *(*a3 + 48) & 0x1FFFF;
      v1150 = v718;
      v719 = *v717;
      v720 = **(a3 + 16);
      if (v719 == 1)
      {
        *(*(v720 + 205568) - 8) += v718;
      }

      else
      {
        sub_24D769624((v720 + 205560), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v769 = *(a3 + 8);
      v770 = *(*a3 + 52) & 0x1FFFFLL;
      v1150 = v770;
      v771 = *v769;
      v772 = **(a3 + 16);
      if (v771 == 1)
      {
        *(*(v772 + 205592) - 8) += v770;
      }

      else
      {
        sub_24D769624((v772 + 205584), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v817 = *(a3 + 8);
      v818 = *(*a3 + 56) & 0x1FFFF;
      v1150 = v818;
      v819 = *v817;
      v820 = **(a3 + 16);
      if (v819 == 1)
      {
        *(*(v820 + 205616) - 8) += v818;
      }

      else
      {
        sub_24D769624((v820 + 205608), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v865 = *(a3 + 8);
      v198 = *(*a3 + 52) >> 49;
      v1150 = v198;
      v866 = *v865;
      v200 = **(a3 + 16);
      if (v866 == 1)
      {
        v201 = 9032;
        goto LABEL_856;
      }

      v278 = v200 + 25704;
      goto LABEL_864;
    case 14:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v17 = *(a3 + 8);
      v18 = *(*a3 + 20) & 0x7FFFLL;
      v1150 = v18;
      v19 = *v17;
      v20 = **(a3 + 16);
      if (v19 == 1)
      {
        *(*(v20 + 205664) - 8) += v18;
      }

      else
      {
        sub_24D769624((v20 + 205656), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v93 = *(a3 + 8);
      v94 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v94;
      v95 = *v93;
      v96 = **(a3 + 16);
      if (v95 == 1)
      {
        *(*(v96 + 205688) - 8) += v94;
      }

      else
      {
        sub_24D769624((v96 + 205680), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v173 = *(a3 + 8);
      v174 = *(*a3 + 24) & 0x7FFF;
      v1150 = v174;
      v175 = *v173;
      v176 = **(a3 + 16);
      if (v175 == 1)
      {
        *(*(v176 + 205712) - 8) += v174;
      }

      else
      {
        sub_24D769624((v176 + 205704), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v254 = *(a3 + 8);
      v255 = *(*a3 + 26) & 0x7FFF;
      v1150 = v255;
      v256 = *v254;
      v257 = **(a3 + 16);
      if (v256 == 1)
      {
        *(*(v257 + 205736) - 8) += v255;
      }

      else
      {
        sub_24D769624((v257 + 205728), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v331 = *(a3 + 8);
      v332 = *(*a3 + 28) & 0x1FFFFLL;
      v1150 = v332;
      v333 = *v331;
      v334 = **(a3 + 16);
      if (v333 == 1)
      {
        *(*(v334 + 205760) - 8) += v332;
      }

      else
      {
        sub_24D769624((v334 + 205752), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v407 = *(a3 + 8);
      v408 = *(*a3 + 32) & 0x1FFFF;
      v1150 = v408;
      v409 = *v407;
      v410 = **(a3 + 16);
      if (v409 == 1)
      {
        *(*(v410 + 205784) - 8) += v408;
      }

      else
      {
        sub_24D769624((v410 + 205776), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v481 = *(a3 + 8);
      v482 = *(*a3 + 36) & 0x1FFFFLL;
      v1150 = v482;
      v483 = *v481;
      v484 = **(a3 + 16);
      if (v483 == 1)
      {
        *(*(v484 + 205808) - 8) += v482;
      }

      else
      {
        sub_24D769624((v484 + 205800), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v551 = *(a3 + 8);
      v552 = *(*a3 + 36) >> 17;
      v1150 = v552;
      v553 = *v551;
      v554 = **(a3 + 16);
      if (v553 == 1)
      {
        *(*(v554 + 205832) - 8) += v552;
      }

      else
      {
        sub_24D769624((v554 + 205824), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v619 = *(a3 + 8);
      v620 = *(*a3 + 40) & 0x7FFF;
      v1150 = v620;
      v621 = *v619;
      v622 = **(a3 + 16);
      if (v621 == 1)
      {
        *(*(v622 + 205856) - 8) += v620;
      }

      else
      {
        sub_24D769624((v622 + 205848), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v683 = *(a3 + 8);
      v684 = *(*a3 + 42) & 0x7FFF;
      v1150 = v684;
      v685 = *v683;
      v686 = **(a3 + 16);
      if (v685 == 1)
      {
        *(*(v686 + 205880) - 8) += v684;
      }

      else
      {
        sub_24D769624((v686 + 205872), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v739 = *(a3 + 8);
      v740 = *(*a3 + 44) & 0x1FFFFLL;
      v1150 = v740;
      v741 = *v739;
      v742 = **(a3 + 16);
      if (v741 == 1)
      {
        *(*(v742 + 205904) - 8) += v740;
      }

      else
      {
        sub_24D769624((v742 + 205896), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v789 = *(a3 + 8);
      v790 = *(*a3 + 48) & 0x1FFFF;
      v1150 = v790;
      v791 = *v789;
      v792 = **(a3 + 16);
      if (v791 == 1)
      {
        *(*(v792 + 205928) - 8) += v790;
      }

      else
      {
        sub_24D769624((v792 + 205920), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v837 = *(a3 + 8);
      v838 = *(*a3 + 44) >> 49;
      v1150 = v838;
      v839 = *v837;
      v840 = **(a3 + 16);
      if (v839 == 1)
      {
        *(*(v840 + 205952) - 8) += v838;
      }

      else
      {
        sub_24D769624((v840 + 205944), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v881 = *(a3 + 8);
      v882 = *(*a3 + 52) & 0x7FFFLL;
      v1150 = v882;
      v883 = *v881;
      v884 = **(a3 + 16);
      if (v883 == 1)
      {
        *(*(v884 + 205976) - 8) += v882;
      }

      else
      {
        sub_24D769624((v884 + 205968), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v917 = *(a3 + 8);
      v918 = *(*a3 + 54);
      v1150 = v918;
      v919 = *v917;
      v920 = **(a3 + 16);
      if (v919 == 1)
      {
        *(*(v920 + 206000) - 8) += v918;
      }

      else
      {
        sub_24D769624((v920 + 205992), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v945 = *(a3 + 8);
      v946 = *(*a3 + 56);
      v1150 = v946;
      v947 = *v945;
      v948 = **(a3 + 16);
      if (v947 == 1)
      {
        *(*(v948 + 206024) - 8) += v946;
      }

      else
      {
        sub_24D769624((v948 + 206016), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v967 = *(a3 + 8);
      v968 = *(*a3 + 60) & 0x1FFFFLL;
      v1150 = v968;
      v969 = *v967;
      v970 = **(a3 + 16);
      if (v969 == 1)
      {
        *(*(v970 + 206048) - 8) += v968;
      }

      else
      {
        sub_24D769624((v970 + 206040), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v987 = *(a3 + 8);
      v988 = *(*a3 + 64) & 0x1FFFF;
      v1150 = v988;
      v989 = *v987;
      v990 = **(a3 + 16);
      if (v989 == 1)
      {
        *(*(v990 + 206072) - 8) += v988;
      }

      else
      {
        sub_24D769624((v990 + 206064), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1007 = *(a3 + 8);
      v1008 = *(*a3 + 68) & 0x1FFFFLL;
      v1150 = v1008;
      v1009 = *v1007;
      v1010 = **(a3 + 16);
      if (v1009 == 1)
      {
        *(*(v1010 + 206096) - 8) += v1008;
      }

      else
      {
        sub_24D769624((v1010 + 206088), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1027 = *(a3 + 8);
      v1028 = *(*a3 + 72) & 0xFFFFF;
      v1150 = v1028;
      v1029 = *v1027;
      v1030 = **(a3 + 16);
      if (v1029 == 1)
      {
        *(*(v1030 + 206120) - 8) += v1028;
      }

      else
      {
        sub_24D769624((v1030 + 206112), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1045 = *(a3 + 8);
      v1046 = *(*a3 + 76);
      v1150 = v1046;
      v1047 = *v1045;
      v1048 = **(a3 + 16);
      if (v1047 == 1)
      {
        *(*(v1048 + 206144) - 8) += v1046;
      }

      else
      {
        sub_24D769624((v1048 + 206136), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1061 = *(a3 + 8);
      v1062 = *(*a3 + 78);
      v1150 = v1062;
      v1063 = *v1061;
      v1064 = **(a3 + 16);
      if (v1063 == 1)
      {
        *(*(v1064 + 206168) - 8) += v1062;
      }

      else
      {
        sub_24D769624((v1064 + 206160), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1075 = *(a3 + 8);
      v1076 = *(*a3 + 80) & 0x1FFFF;
      v1150 = v1076;
      v1077 = *v1075;
      v1078 = **(a3 + 16);
      if (v1077 == 1)
      {
        *(*(v1078 + 206192) - 8) += v1076;
      }

      else
      {
        sub_24D769624((v1078 + 206184), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1087 = *(a3 + 8);
      v1088 = *(*a3 + 76) >> 49;
      v1150 = v1088;
      v1089 = *v1087;
      v1090 = **(a3 + 16);
      if (v1089 == 1)
      {
        *(*(v1090 + 206216) - 8) += v1088;
      }

      else
      {
        sub_24D769624((v1090 + 206208), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1098 = *(a3 + 8);
      v1099 = *(*a3 + 84) & 0x7FFFLL;
      v1150 = v1099;
      v1100 = *v1098;
      v1101 = **(a3 + 16);
      if (v1100 == 1)
      {
        *(*(v1101 + 206240) - 8) += v1099;
      }

      else
      {
        sub_24D769624((v1101 + 206232), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1106 = *(a3 + 8);
      v1107 = *(*a3 + 86);
      v1150 = v1107;
      v1108 = *v1106;
      v1109 = **(a3 + 16);
      if (v1108 == 1)
      {
        *(*(v1109 + 206264) - 8) += v1107;
      }

      else
      {
        sub_24D769624((v1109 + 206256), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1114 = *(a3 + 8);
      v1115 = *(*a3 + 88) & 0x1FFFF;
      v1150 = v1115;
      v1116 = *v1114;
      v1117 = **(a3 + 16);
      if (v1116 == 1)
      {
        *(*(v1117 + 206288) - 8) += v1115;
      }

      else
      {
        sub_24D769624((v1117 + 206280), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1122 = *(a3 + 8);
      v1123 = *(*a3 + 84) >> 49;
      v1150 = v1123;
      v1124 = *v1122;
      v1125 = **(a3 + 16);
      if (v1124 == 1)
      {
        *(*(v1125 + 206312) - 8) += v1123;
      }

      else
      {
        sub_24D769624((v1125 + 206304), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1130 = *(a3 + 8);
      v1131 = *(*a3 + 92) & 0x7FFF;
      v1150 = v1131;
      v1132 = *v1130;
      v1133 = **(a3 + 16);
      if (v1132 == 1)
      {
        *(*(v1133 + 206336) - 8) += v1131;
      }

      else
      {
        sub_24D769624((v1133 + 206328), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1138 = *(a3 + 8);
      v198 = *(*a3 + 94) & 0x7FFF;
      v1150 = v198;
      v1139 = *v1138;
      v200 = **(a3 + 16);
      if (v1139 == 1)
      {
        v201 = 9752;
        goto LABEL_856;
      }

      v278 = v200 + 25794;
      goto LABEL_864;
    case 15:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v41 = *(a3 + 8);
      v42 = *(*a3 + 20) & 0x3FFFFFLL;
      v1150 = v42;
      v43 = *v41;
      v44 = **(a3 + 16);
      if (v43 == 1)
      {
        *(*(v44 + 206384) - 8) += v42;
      }

      else
      {
        sub_24D769624((v44 + 206376), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v117 = *(a3 + 8);
      v118 = *(*a3 + 24) & 0x1FFFFF;
      v1150 = v118;
      v119 = *v117;
      v120 = **(a3 + 16);
      if (v119 == 1)
      {
        *(*(v120 + 206408) - 8) += v118;
      }

      else
      {
        sub_24D769624((v120 + 206400), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v197 = *(a3 + 8);
      v198 = *(*a3 + 28) & 0x3FFFFF;
      v1150 = v198;
      v199 = *v197;
      v200 = **(a3 + 16);
      if (v199 == 1)
      {
        v201 = 9824;
        goto LABEL_856;
      }

      v278 = v200 + 25803;
      goto LABEL_864;
    case 16:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v13 = *(a3 + 8);
      v14 = *(*a3 + 20) & 0x7FFFLL;
      v1150 = v14;
      v15 = *v13;
      v16 = **(a3 + 16);
      if (v15 == 1)
      {
        *(*(v16 + 206456) - 8) += v14;
      }

      else
      {
        sub_24D769624((v16 + 206448), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v89 = *(a3 + 8);
      v90 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v90;
      v91 = *v89;
      v92 = **(a3 + 16);
      if (v91 == 1)
      {
        *(*(v92 + 206480) - 8) += v90;
      }

      else
      {
        sub_24D769624((v92 + 206472), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v169 = *(a3 + 8);
      v170 = *(*a3 + 24) & 0x3FFF;
      v1150 = v170;
      v171 = *v169;
      v172 = **(a3 + 16);
      if (v171 == 1)
      {
        *(*(v172 + 206504) - 8) += v170;
      }

      else
      {
        sub_24D769624((v172 + 206496), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v250 = *(a3 + 8);
      v251 = *(*a3 + 26) & 0x3FFF;
      v1150 = v251;
      v252 = *v250;
      v253 = **(a3 + 16);
      if (v252 == 1)
      {
        *(*(v253 + 206528) - 8) += v251;
      }

      else
      {
        sub_24D769624((v253 + 206520), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v327 = *(a3 + 8);
      v328 = *(*a3 + 28) & 0x1FFFLL;
      v1150 = v328;
      v329 = *v327;
      v330 = **(a3 + 16);
      if (v329 == 1)
      {
        *(*(v330 + 206552) - 8) += v328;
      }

      else
      {
        sub_24D769624((v330 + 206544), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v403 = *(a3 + 8);
      v404 = (*(*a3 + 28) >> 16) & 0x1FFFLL;
      v1150 = v404;
      v405 = *v403;
      v406 = **(a3 + 16);
      if (v405 == 1)
      {
        *(*(v406 + 206576) - 8) += v404;
      }

      else
      {
        sub_24D769624((v406 + 206568), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v477 = *(a3 + 8);
      v478 = *(*a3 + 32) & 0x1FFF;
      v1150 = v478;
      v479 = *v477;
      v480 = **(a3 + 16);
      if (v479 == 1)
      {
        *(*(v480 + 206600) - 8) += v478;
      }

      else
      {
        sub_24D769624((v480 + 206592), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v547 = *(a3 + 8);
      v548 = (*(*a3 + 28) >> 45) & 0x3FFFFLL;
      v1150 = v548;
      v549 = *v547;
      v550 = **(a3 + 16);
      if (v549 == 1)
      {
        *(*(v550 + 206624) - 8) += v548;
      }

      else
      {
        sub_24D769624((v550 + 206616), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v615 = *(a3 + 8);
      v616 = *(*a3 + 36) & 0x3FFFFLL;
      v1150 = v616;
      v617 = *v615;
      v618 = **(a3 + 16);
      if (v617 == 1)
      {
        *(*(v618 + 206648) - 8) += v616;
      }

      else
      {
        sub_24D769624((v618 + 206640), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v681 = *(a3 + 8);
      v198 = *(*a3 + 40) & 0x3FFFF;
      v1150 = v198;
      v682 = *v681;
      v200 = **(a3 + 16);
      if (v682 == 1)
      {
        v201 = 10064;
        goto LABEL_856;
      }

      v278 = v200 + 25833;
      goto LABEL_864;
    case 17:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v57 = *(a3 + 8);
      v58 = *(*a3 + 22);
      v1150 = v58;
      v59 = *v57;
      v60 = **(a3 + 16);
      if (v59 == 1)
      {
        *(*(v60 + 206696) - 8) += v58;
      }

      else
      {
        sub_24D769624((v60 + 206688), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v137 = *(a3 + 8);
      v138 = *(*a3 + 24);
      v1150 = v138;
      v139 = *v137;
      v140 = **(a3 + 16);
      if (v139 == 1)
      {
        *(*(v140 + 206720) - 8) += v138;
      }

      else
      {
        sub_24D769624((v140 + 206712), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v218 = *(a3 + 8);
      v219 = *(*a3 + 26) & 0x7FFF;
      v1150 = v219;
      v220 = *v218;
      v221 = **(a3 + 16);
      if (v220 == 1)
      {
        *(*(v221 + 206744) - 8) += v219;
      }

      else
      {
        sub_24D769624((v221 + 206736), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v295 = *(a3 + 8);
      v296 = *(*a3 + 28) & 0x7FFFLL;
      v1150 = v296;
      v297 = *v295;
      v298 = **(a3 + 16);
      if (v297 == 1)
      {
        *(*(v298 + 206768) - 8) += v296;
      }

      else
      {
        sub_24D769624((v298 + 206760), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v371 = *(a3 + 8);
      v372 = *(*a3 + 30);
      v1150 = v372;
      v373 = *v371;
      v374 = **(a3 + 16);
      if (v373 == 1)
      {
        *(*(v374 + 206792) - 8) += v372;
      }

      else
      {
        sub_24D769624((v374 + 206784), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v445 = *(a3 + 8);
      v446 = *(*a3 + 32);
      v1150 = v446;
      v447 = *v445;
      v448 = **(a3 + 16);
      if (v447 == 1)
      {
        *(*(v448 + 206816) - 8) += v446;
      }

      else
      {
        sub_24D769624((v448 + 206808), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v515 = *(a3 + 8);
      v516 = HIWORD(*(*a3 + 28));
      v1150 = v516;
      v517 = *v515;
      v518 = **(a3 + 16);
      if (v517 == 1)
      {
        *(*(v518 + 206840) - 8) += v516;
      }

      else
      {
        sub_24D769624((v518 + 206832), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v583 = *(a3 + 8);
      v584 = *(*a3 + 36);
      v1150 = v584;
      v585 = *v583;
      v586 = **(a3 + 16);
      if (v585 == 1)
      {
        *(*(v586 + 206864) - 8) += v584;
      }

      else
      {
        sub_24D769624((v586 + 206856), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v651 = *(a3 + 8);
      v652 = *(*a3 + 40) & 0x1FFFF;
      v1150 = v652;
      v653 = *v651;
      v654 = **(a3 + 16);
      if (v653 == 1)
      {
        *(*(v654 + 206888) - 8) += v652;
      }

      else
      {
        sub_24D769624((v654 + 206880), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v715 = *(a3 + 8);
      v198 = *(*a3 + 44) & 0x1FFFF;
      v1150 = v198;
      v716 = *v715;
      v200 = **(a3 + 16);
      if (v716 == 1)
      {
        v201 = 10304;
        goto LABEL_856;
      }

      v278 = v200 + 25863;
      goto LABEL_864;
    case 18:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v73 = *(a3 + 8);
      v74 = (*(*a3 + 20) >> 1) & 0x3FFFLL;
      v1150 = v74;
      v75 = *v73;
      v76 = **(a3 + 16);
      if (v75 == 1)
      {
        *(*(v76 + 206936) - 8) += v74;
      }

      else
      {
        sub_24D769624((v76 + 206928), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v153 = *(a3 + 8);
      v154 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1150 = v154;
      v155 = *v153;
      v156 = **(a3 + 16);
      if (v155 == 1)
      {
        *(*(v156 + 206960) - 8) += v154;
      }

      else
      {
        sub_24D769624((v156 + 206952), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v234 = *(a3 + 8);
      v235 = *(*a3 + 24) & 0x7FFF;
      v1150 = v235;
      v236 = *v234;
      v237 = **(a3 + 16);
      if (v236 == 1)
      {
        *(*(v237 + 206984) - 8) += v235;
      }

      else
      {
        sub_24D769624((v237 + 206976), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v311 = *(a3 + 8);
      v312 = *(*a3 + 26) & 0x7FFF;
      v1150 = v312;
      v313 = *v311;
      v314 = **(a3 + 16);
      if (v313 == 1)
      {
        *(*(v314 + 207008) - 8) += v312;
      }

      else
      {
        sub_24D769624((v314 + 207000), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v387 = *(a3 + 8);
      v388 = *(*a3 + 28) & 0x7FFFLL;
      v1150 = v388;
      v389 = *v387;
      v390 = **(a3 + 16);
      if (v389 == 1)
      {
        *(*(v390 + 207032) - 8) += v388;
      }

      else
      {
        sub_24D769624((v390 + 207024), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v461 = *(a3 + 8);
      v462 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1150 = v462;
      v463 = *v461;
      v464 = **(a3 + 16);
      if (v463 == 1)
      {
        *(*(v464 + 207056) - 8) += v462;
      }

      else
      {
        sub_24D769624((v464 + 207048), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v531 = *(a3 + 8);
      v532 = *(*a3 + 32) & 0x7FFF;
      v1150 = v532;
      v533 = *v531;
      v534 = **(a3 + 16);
      if (v533 == 1)
      {
        *(*(v534 + 207080) - 8) += v532;
      }

      else
      {
        sub_24D769624((v534 + 207072), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v599 = *(a3 + 8);
      v600 = *(*a3 + 34) & 0x7FFF;
      v1150 = v600;
      v601 = *v599;
      v602 = **(a3 + 16);
      if (v601 == 1)
      {
        *(*(v602 + 207104) - 8) += v600;
      }

      else
      {
        sub_24D769624((v602 + 207096), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v665 = *(a3 + 8);
      v666 = *(*a3 + 36) & 0x7FFFLL;
      v1150 = v666;
      v667 = *v665;
      v668 = **(a3 + 16);
      if (v667 == 1)
      {
        *(*(v668 + 207128) - 8) += v666;
      }

      else
      {
        sub_24D769624((v668 + 207120), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v723 = *(a3 + 8);
      v724 = (*(*a3 + 36) >> 16) & 0x7FFFLL;
      v1150 = v724;
      v725 = *v723;
      v726 = **(a3 + 16);
      if (v725 == 1)
      {
        *(*(v726 + 207152) - 8) += v724;
      }

      else
      {
        sub_24D769624((v726 + 207144), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v773 = *(a3 + 8);
      v774 = *(*a3 + 40) & 0x7FFF;
      v1150 = v774;
      v775 = *v773;
      v776 = **(a3 + 16);
      if (v775 == 1)
      {
        *(*(v776 + 207176) - 8) += v774;
      }

      else
      {
        sub_24D769624((v776 + 207168), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v821 = *(a3 + 8);
      v822 = *(*a3 + 42) & 0x7FFF;
      v1150 = v822;
      v823 = *v821;
      v824 = **(a3 + 16);
      if (v823 == 1)
      {
        *(*(v824 + 207200) - 8) += v822;
      }

      else
      {
        sub_24D769624((v824 + 207192), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v867 = *(a3 + 8);
      v868 = *(*a3 + 44) & 0x7FFF;
      v1150 = v868;
      v869 = *v867;
      v870 = **(a3 + 16);
      if (v869 == 1)
      {
        *(*(v870 + 207224) - 8) += v868;
      }

      else
      {
        sub_24D769624((v870 + 207216), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v907 = *(a3 + 8);
      v198 = *(*a3 + 46) & 0x7FFF;
      v1150 = v198;
      v908 = *v907;
      v200 = **(a3 + 16);
      if (v908 == 1)
      {
        v201 = 10640;
        goto LABEL_856;
      }

      v278 = v200 + 25905;
      goto LABEL_864;
    case 19:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v85 = *(a3 + 8);
      v86 = *(*a3 + 22);
      v1150 = v86;
      v87 = *v85;
      v88 = **(a3 + 16);
      if (v87 == 1)
      {
        *(*(v88 + 207272) - 8) += v86;
      }

      else
      {
        sub_24D769624((v88 + 207264), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v165 = *(a3 + 8);
      v166 = *(*a3 + 24);
      v1150 = v166;
      v167 = *v165;
      v168 = **(a3 + 16);
      if (v167 == 1)
      {
        *(*(v168 + 207296) - 8) += v166;
      }

      else
      {
        sub_24D769624((v168 + 207288), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v246 = *(a3 + 8);
      v247 = HIWORD(*(*a3 + 20));
      v1150 = v247;
      v248 = *v246;
      v249 = **(a3 + 16);
      if (v248 == 1)
      {
        *(*(v249 + 207320) - 8) += v247;
      }

      else
      {
        sub_24D769624((v249 + 207312), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v323 = *(a3 + 8);
      v324 = *(*a3 + 28);
      v1150 = v324;
      v325 = *v323;
      v326 = **(a3 + 16);
      if (v325 == 1)
      {
        *(*(v326 + 207344) - 8) += v324;
      }

      else
      {
        sub_24D769624((v326 + 207336), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v399 = *(a3 + 8);
      v400 = *(*a3 + 30);
      v1150 = v400;
      v401 = *v399;
      v402 = **(a3 + 16);
      if (v401 == 1)
      {
        *(*(v402 + 207368) - 8) += v400;
      }

      else
      {
        sub_24D769624((v402 + 207360), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v473 = *(a3 + 8);
      v474 = *(*a3 + 32);
      v1150 = v474;
      v475 = *v473;
      v476 = **(a3 + 16);
      if (v475 == 1)
      {
        *(*(v476 + 207392) - 8) += v474;
      }

      else
      {
        sub_24D769624((v476 + 207384), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v543 = *(a3 + 8);
      v544 = HIWORD(*(*a3 + 28));
      v1150 = v544;
      v545 = *v543;
      v546 = **(a3 + 16);
      if (v545 == 1)
      {
        *(*(v546 + 207416) - 8) += v544;
      }

      else
      {
        sub_24D769624((v546 + 207408), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v611 = *(a3 + 8);
      v612 = *(*a3 + 36);
      v1150 = v612;
      v613 = *v611;
      v614 = **(a3 + 16);
      if (v613 == 1)
      {
        *(*(v614 + 207440) - 8) += v612;
      }

      else
      {
        sub_24D769624((v614 + 207432), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v677 = *(a3 + 8);
      v678 = *(*a3 + 38);
      v1150 = v678;
      v679 = *v677;
      v680 = **(a3 + 16);
      if (v679 == 1)
      {
        *(*(v680 + 207464) - 8) += v678;
      }

      else
      {
        sub_24D769624((v680 + 207456), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v735 = *(a3 + 8);
      v736 = *(*a3 + 40);
      v1150 = v736;
      v737 = *v735;
      v738 = **(a3 + 16);
      if (v737 == 1)
      {
        *(*(v738 + 207488) - 8) += v736;
      }

      else
      {
        sub_24D769624((v738 + 207480), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v785 = *(a3 + 8);
      v786 = HIWORD(*(*a3 + 36));
      v1150 = v786;
      v787 = *v785;
      v788 = **(a3 + 16);
      if (v787 == 1)
      {
        *(*(v788 + 207512) - 8) += v786;
      }

      else
      {
        sub_24D769624((v788 + 207504), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v833 = *(a3 + 8);
      v834 = *(*a3 + 44) & 0xFFFFFLL;
      v1150 = v834;
      v835 = *v833;
      v836 = **(a3 + 16);
      if (v835 == 1)
      {
        *(*(v836 + 207536) - 8) += v834;
      }

      else
      {
        sub_24D769624((v836 + 207528), &v1150);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v879 = *(a3 + 8);
      v198 = *(*a3 + 48) & 0x7FFFF;
      v1150 = v198;
      v880 = *v879;
      v200 = **(a3 + 16);
      if (v880 == 1)
      {
        v201 = 10952;
LABEL_856:
        v1093 = *(v200 + (v201 | 0x30000u));
        *(v1093 - 8) += v198;
      }

      else
      {
        v278 = v200 + 25944;
LABEL_864:
        sub_24D769624(v278, &v1150);
      }

      return;
    default:
      return;
  }
}