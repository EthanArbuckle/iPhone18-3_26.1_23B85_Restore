void sub_1D5988EAC(_Unwind_Exception *a1)
{
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v2);
  mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::PropertyCache::PropertyCache(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(result + 8) = v2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  *(result + 24) = v3;
  *(result + 16) = v4;
  *(a2 + 16) = 0;
  v5 = *(a2 + 32);
  *(result + 32) = v5;
  *(result + 40) = *(a2 + 40);
  if (v5)
  {
    v6 = *(v3 + 8);
    v7 = *(result + 16);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 24;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  *result = &unk_1F50D4B38;
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v8;
  v9 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(result + 64) = v9;
  v10 = *(a2 + 72);
  *(result + 72) = v10;
  *(result + 80) = *(a2 + 80);
  if (v10)
  {
    v11 = *(v9 + 8);
    v12 = *(result + 56);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v8 + 8 * v11) = result + 64;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v13 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(result + 88) = v13;
  v14 = *(a2 + 104);
  v15 = *(a2 + 96);
  *(result + 104) = v14;
  *(result + 96) = v15;
  *(a2 + 96) = 0;
  v16 = *(a2 + 112);
  *(result + 112) = v16;
  *(result + 120) = *(a2 + 120);
  if (v16)
  {
    v17 = *(v14 + 8);
    v18 = *(result + 96);
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v17 >= v18)
      {
        v17 %= v18;
      }
    }

    else
    {
      v17 &= v18 - 1;
    }

    *(v13 + 8 * v17) = result + 104;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
  }

  *result = &unk_1F50D4AF8;
  v19 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(result + 128) = v19;
  v20 = *(a2 + 144);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(result + 144) = v20;
  v21 = *(a2 + 152);
  *(result + 152) = v21;
  *(result + 160) = *(a2 + 160);
  if (v21)
  {
    v22 = *(v20 + 8);
    v23 = *(result + 136);
    if ((v23 & (v23 - 1)) != 0)
    {
      if (v22 >= v23)
      {
        v22 %= v23;
      }
    }

    else
    {
      v22 &= v23 - 1;
    }

    *(v19 + 8 * v22) = result + 144;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
  }

  v24 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(result + 168) = v24;
  v27 = *(a2 + 184);
  v25 = a2 + 184;
  v26 = v27;
  v28 = *(v25 - 8);
  *(result + 184) = v27;
  *(result + 176) = v28;
  *(v25 - 8) = 0;
  v29 = *(v25 + 8);
  *(result + 192) = v29;
  *(result + 200) = *(v25 + 16);
  if (v29)
  {
    v30 = *(v26 + 8);
    v31 = *(result + 176);
    if ((v31 & (v31 - 1)) != 0)
    {
      if (v30 >= v31)
      {
        v30 %= v31;
      }
    }

    else
    {
      v30 &= v31 - 1;
    }

    *(v24 + 8 * v30) = result + 184;
    *v25 = 0;
    *(v25 + 8) = 0;
  }

  *result = &unk_1F50D7378;
  *(result + 208) = &unk_1F50D73A0;
  return result;
}

void *mlcore::PropertyCache::PropertyCache(uint64_t a1, uint64_t *a2)
{
  result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::PropertyCacheBase(a1, a2);
  *result = &unk_1F50D7378;
  result[26] = &unk_1F50D73A0;
  return result;
}

{
  result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::PropertyCacheBase(a1, a2);
  *result = &unk_1F50D7378;
  result[26] = &unk_1F50D73A0;
  return result;
}

uint64_t mlcore::PropertyCache::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(a1 + 8) + 8 * i) = 0;
      }

      v7 = *(a1 + 24);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (v7)
      {
        v8 = v4 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = v7;
      }

      else
      {
        do
        {
          v7[2] = v4[2];
          mediaplatform::Data::operator=((v7 + 3), (v4 + 3));
          v9 = *v7;
          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(a1 + 8, v7);
          v4 = *v4;
          if (v9)
          {
            v10 = v4 == 0;
          }

          else
          {
            v10 = 1;
          }

          v7 = v9;
        }

        while (!v10);
      }

      std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__deallocate_node(v9);
    }

    if (v4)
    {
      operator new();
    }

    *(a1 + 80) = *(a2 + 80);
    v11 = *(a2 + 64);
    v12 = *(a1 + 56);
    if (v12)
    {
      for (j = 0; j != v12; ++j)
      {
        *(*(a1 + 48) + 8 * j) = 0;
      }

      v14 = *(a1 + 64);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      if (v14)
      {
        v15 = v11 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        p_data = &v14->__r_.__value_.__l.__data_;
      }

      else
      {
        do
        {
          v14->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          std::string::operator=(v14 + 1, v11 + 1);
          p_data = v14->__r_.__value_.__r.__words[0];
          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(a1 + 48, v14);
          v11 = v11->__r_.__value_.__r.__words[0];
          if (p_data)
          {
            v17 = v11 == 0;
          }

          else
          {
            v17 = 1;
          }

          v14 = p_data;
        }

        while (!v17);
      }

      std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::__unordered_map_hasher<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::hash<mlcore::ModelProperty<std::string> *>,std::equal_to<mlcore::ModelProperty<std::string> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::equal_to<mlcore::ModelProperty<std::string> *>,std::hash<mlcore::ModelProperty<std::string> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>>>::__deallocate_node(p_data);
    }

    if (v11)
    {
      operator new();
    }

    *(a1 + 120) = *(a2 + 120);
    v18 = *(a2 + 104);
    v19 = *(a1 + 96);
    if (!v19)
    {
      goto LABEL_44;
    }

    for (k = 0; k != v19; ++k)
    {
      *(*(a1 + 88) + 8 * k) = 0;
    }

    v21 = *(a1 + 104);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    if (v21)
    {
      while (v18)
      {
        v21[2] = v18[2];
        v21[3] = v18[3];
        v22 = *v21;
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(a1 + 88, v21);
        v18 = *v18;
        v21 = v22;
        if (!v22)
        {
          goto LABEL_44;
        }
      }

      do
      {
        v28 = *v21;
        operator delete(v21);
        v21 = v28;
      }

      while (v28);
    }

    else
    {
LABEL_44:
      if (v18)
      {
        operator new();
      }
    }

    *(a1 + 160) = *(a2 + 160);
    v23 = *(a2 + 144);
    v24 = *(a1 + 136);
    if (!v24)
    {
      goto LABEL_51;
    }

    for (m = 0; m != v24; ++m)
    {
      *(*(a1 + 128) + 8 * m) = 0;
    }

    v26 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (v26)
    {
      while (v23)
      {
        v26[2] = v23[2];
        *(v26 + 6) = *(v23 + 6);
        v27 = *v26;
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(a1 + 128, v26);
        v23 = *v23;
        v26 = v27;
        if (!v27)
        {
          goto LABEL_51;
        }
      }

      do
      {
        v29 = *v26;
        operator delete(v26);
        v26 = v29;
      }

      while (v29);
    }

    else
    {
LABEL_51:
      if (v23)
      {
        operator new();
      }
    }

    *(a1 + 200) = *(a2 + 200);
    v30 = *(a2 + 184);
    v31 = *(a1 + 176);
    if (!v31)
    {
      goto LABEL_64;
    }

    for (n = 0; n != v31; ++n)
    {
      *(*(a1 + 168) + 8 * n) = 0;
    }

    v33 = *(a1 + 184);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v33)
    {
      while (v30)
      {
        v34 = v30[3];
        v33[2] = v30[2];
        v33[3] = v34;
        v35 = *v33;
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(a1 + 168, v33);
        v30 = *v30;
        v33 = v35;
        if (!v35)
        {
          goto LABEL_64;
        }
      }

      do
      {
        v37 = *v33;
        operator delete(v33);
        v33 = v37;
      }

      while (v37);
    }

    else
    {
LABEL_64:
      if (v30)
      {
        operator new();
      }
    }
  }

  return a1;
}

void sub_1D59898B4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_1D59899CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void mlcore::PropertyCache::mergePropertiesFromCache(int8x8_t *a1, void *a2, uint64_t a3)
{
  for (i = a2[23]; i; i = *i)
  {
    v7 = i[2];
    if (std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(*(a3 + 24), v7))
    {
      v8 = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::valueForProperty(a2, v7);
      v19[0] = v7;
      v22 = v19;
      std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(&a1[21], v7)[3] = v8;
    }
  }

  for (j = a2[18]; j; j = *j)
  {
    v10 = j[2];
    if (std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(*(a3 + 24), v10))
    {
      v11 = mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::valueForProperty(a2, v10);
      v19[0] = v10;
      v22 = v19;
      *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(&a1[16], v10) + 6) = v11;
    }
  }

  for (k = a2[13]; k; k = *k)
  {
    v13 = k[2];
    if (std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(*(a3 + 24), v13))
    {
      v14 = mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::valueForProperty(a2, v13);
      v19[0] = v13;
      v22 = v19;
      *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::__unordered_map_hasher<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::hash<mlcore::ModelProperty<double> *>,std::equal_to<mlcore::ModelProperty<double> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::equal_to<mlcore::ModelProperty<double> *>,std::hash<mlcore::ModelProperty<double> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<double> *,double>>>::__emplace_unique_key_args<mlcore::ModelProperty<double> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<double> * const&>,std::tuple<>>(&a1[11], v13) + 3) = v14;
    }
  }

  for (m = a2[8]; m; m = *m)
  {
    v16 = m[2];
    v22 = v16;
    if (*(m + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, m[3], m[4]);
      v16 = v22;
    }

    else
    {
      v23 = *(m + 1);
    }

    if (std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(*(a3 + 24), v16))
    {
      mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::valueForProperty(&__p, a2, v16);
      mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::setValueForProperty(a1, &__p, v16);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  for (n = a2[3]; n; n = *n)
  {
    v22 = n[2];
    mediaplatform::Data::Data(&v23, n[6], n[4], 1);
    if (std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(*(a3 + 24), v22))
    {
      mlcore::PropertyCacheBase<mediaplatform::Data>::valueForProperty(v19, a2, v22);
      mlcore::PropertyCacheBase<mediaplatform::Data>::setValueForProperty(a1, v19, v22);
      v19[0] = &unk_1F50DD860;
      if (v21 == 1)
      {
        if (v20)
        {
          MEMORY[0x1DA6EDD20](v20, 0x1000C8077774924);
        }
      }
    }

    v23.__r_.__value_.__r.__words[0] = &unk_1F50DD860;
    if (v25 == 1)
    {
      if (v24)
      {
        MEMORY[0x1DA6EDD20](v24, 0x1000C8077774924);
      }
    }
  }
}

void sub_1D598A128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  mediaplatform::Data::~Data(&a15);
  mediaplatform::Data::~Data(v26);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(mlcore::ModelPropertyBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

BOOL mlcore::PropertyCache::hasValueForProperty(mlcore::PropertyCache *this, mlcore::ModelPropertyBase *a2)
{
  v4 = (*(*a2 + 80))(a2);
  result = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return result;
      }

      v6 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(this + 21, a2);
    }

    else
    {
      v6 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(this + 16, a2);
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v6 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(this + 11, a2);
        break;
      case 4:
        v6 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(this + 1, a2);
        break;
      case 3:
        v6 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(this + 6, a2);
        break;
      default:
        return result;
    }
  }

  return v6 != 0;
}

void mlcore::PropertyCache::allProperties(mlcore::PropertyCache *this@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = *(this + 23); i; i = *i)
  {
    v14 = i[2];
    std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](&v11, &v14);
  }

  for (j = *(this + 18); j; j = *j)
  {
    v14 = j[2];
    std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](&v11, &v14);
  }

  for (k = *(this + 13); k; k = *k)
  {
    v14 = k[2];
    std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](&v11, &v14);
  }

  for (m = *(this + 8); m; m = *m)
  {
    v8 = m[2];
    v14 = v8;
    if (*(m + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, m[3], m[4]);
      v8 = v14;
    }

    else
    {
      __p = *(m + 1);
    }

    v18 = v8;
    std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](&v11, &v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (n = *(this + 3); n; n = *n)
  {
    v14 = n[2];
    mediaplatform::Data::Data(&__p, n[6], n[4], 1);
    v18 = v14;
    std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](&v11, &v18);
    __p.__r_.__value_.__r.__words[0] = &unk_1F50DD860;
    if (v17 == 1 && v16)
    {
      MEMORY[0x1DA6EDD20](v16, 0x1000C8077774924);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a2, v11, v12, (v12 - v11) >> 3);
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_1D598A46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlcore::ModelPropertyBase *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v9);
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

uint64_t mlcore::TypedEntityClass<mlcore::TVEpisode>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::TVEpisode>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::TVEpisode>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::TVEpisode>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::TVEpisode>::sharedPointer(void)::__sharedPointer;
}

uint64_t mlcore::TypedEntityClass<mlcore::TVEpisode>::sectionPropertyForOrderingProperty(mlcore *a1, mlcore *a2)
{
  v3 = mlcore::ItemPropertyTitleOrder(a1);
  if (v3 == a2)
  {

    return mlcore::ItemPropertyTitleOrderSection(v3);
  }

  else
  {
    v4 = mlcore::ItemPropertyAlbumOrder(v3);
    if (v4 == a2)
    {

      return mlcore::ItemPropertyAlbumOrderSection(v4);
    }

    else
    {
      v5 = mlcore::ItemPropertyArtistOrder(v4);
      if (v5 == a2)
      {

        return mlcore::ItemPropertyArtistOrderSection(v5);
      }

      else
      {
        v6 = mlcore::ItemPropertyComposerOrder(v5);
        if (v6 == a2)
        {

          return mlcore::ItemPropertyComposerOrderSection(v6);
        }

        else
        {
          v7 = mlcore::ItemPropertyGenreOrder(v6);
          if (v7 == a2)
          {

            return mlcore::ItemPropertyGenreOrderSection(v7);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

void mlcore::TypedEntityClass<mlcore::TVEpisode>::databaseTablesToInsertInto(void *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  mediaplatform::Singleton<mlcore::ItemExtraTable>::sharedInstance(&v8);
  v9[0] = v8;
  mediaplatform::Singleton<mlcore::ItemStoreTable>::sharedInstance(&v7);
  v9[1] = v7;
  mediaplatform::Singleton<mlcore::ItemVideoTable>::sharedInstance(&v6);
  v9[2] = v6;
  mediaplatform::Singleton<mlcore::ItemPlaybackTable>::sharedInstance(&v5);
  v9[3] = v5;
  mediaplatform::Singleton<mlcore::ItemSearchTable>::sharedInstance(&v4);
  v9[4] = v4;
  mediaplatform::Singleton<mlcore::ItemKVSTable>::sharedInstance(&v3);
  v9[5] = v3;
  mediaplatform::Singleton<mlcore::ItemStatsTable>::sharedInstance(&v2);
  v9[6] = v2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a1, v9, &v10, 7uLL);
}

void sub_1D598A8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::TypedEntityClass<mlcore::TVEpisode>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  mediaplatform::Singleton<mlcore::ItemExtraTable>::sharedInstance(&v8);
  v9[0] = v8;
  mediaplatform::Singleton<mlcore::ItemStoreTable>::sharedInstance(&v7);
  v9[1] = v7;
  mediaplatform::Singleton<mlcore::ItemVideoTable>::sharedInstance(&v6);
  v9[2] = v6;
  mediaplatform::Singleton<mlcore::ItemPlaybackTable>::sharedInstance(&v5);
  v9[3] = v5;
  mediaplatform::Singleton<mlcore::ItemSearchTable>::sharedInstance(&v4);
  v9[4] = v4;
  mediaplatform::Singleton<mlcore::ItemKVSTable>::sharedInstance(&v3);
  v9[5] = v3;
  mediaplatform::Singleton<mlcore::ItemStatsTable>::sharedInstance(&v2);
  v9[6] = v2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a1, v9, &v10, 7uLL);
}

void sub_1D598AA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::TypedEntityClass<mlcore::TVEpisode>::databaseTable()
{
  mediaplatform::Singleton<mlcore::ItemTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D598AD44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::TVEpisode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::TVEpisode>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TVEpisode::~TVEpisode(mlcore::TVEpisode *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::TVEpisodePropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::TVEpisodePropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::TVEpisodePropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TVEpisodePropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::TVEpisodePropertyPersistentID(void)::property;
}

void sub_1D598B168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::TVEpisodePropertyEpisodeSortID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::TVEpisodePropertyEpisodeSortID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::TVEpisodePropertyEpisodeSortID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TVEpisodePropertyEpisodeSortID(void)::$_0 &&>>);
  }

  return mlcore::TVEpisodePropertyEpisodeSortID(void)::property;
}

void sub_1D598B494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::TVEpisodePropertyAvailableScreenshotToken(mlcore *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = mlcore::TVEpisodePropertyPersistentID(this);
  v2 = mlcore::BestArtworkTokenPropertyAvailableArtworkToken(v1);
  mlcore::BestArtworkTokenPropertyEntityType(v2);
  operator new();
}

void sub_1D598B748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, char a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a14 = &a9;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = 24;
  while (1)
  {
    v17 = *(&a15 + v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v16 -= 16;
    if (v16 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void mlcore::TVEpisodePropertyFetchableScreenshotToken(mlcore *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = mlcore::TVEpisodePropertyPersistentID(this);
  v2 = mlcore::BestArtworkTokenPropertyFetchableArtworkToken(v1);
  mlcore::BestArtworkTokenPropertyEntityType(v2);
  operator new();
}

void sub_1D598B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, char a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a14 = &a9;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = 24;
  while (1)
  {
    v17 = *(&a15 + v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v16 -= 16;
    if (v16 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void mlcore::TVEpisodePropertyFetchableScreenshotSourceType(mlcore *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = mlcore::ItemPropertyPersistentID(this);
  v2 = mlcore::BestArtworkTokenPropertyFetchableArtworkSourceType(v1);
  mlcore::BestArtworkTokenPropertyEntityType(v2);
  operator new();
}

void sub_1D598BBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, char a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a14 = &a9;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = 24;
  while (1)
  {
    v17 = *(&a15 + v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v16 -= 16;
    if (v16 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void mlcore::TVEpisode::TVEpisode(mlcore::TVEpisode *this, uint64_t a2)
{
  mlcore::Item::Item(this, a2);
  *v2 = &unk_1F50D3848;
}

{
  mlcore::Item::Item(this, a2);
  *v2 = &unk_1F50D3848;
}

uint64_t mediaplatform::DatabaseIndexedColumn::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    __p = *(a1 + 16);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 52))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " COLLATE ", 9);
    mediaplatform::NameForCollateType(&__p, *(a1 + 52));
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " ", 1);
  mediaplatform::NameForOrderingType(&__p, *(a1 + 48));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22 & 0x10) != 0)
  {
    v11 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v11 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_42;
    }

    locale = v17[1].__locale_;
    v11 = v17[3].__locale_;
  }

  v10 = v11 - locale;
  if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a2[23] = v10;
  if (v10)
  {
    memmove(a2, locale, v10);
  }

LABEL_42:
  a2[v10] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v23);
}

void sub_1D598BFD0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x1DA6EDCB0](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseIndexedColumn::~DatabaseIndexedColumn(mediaplatform::DatabaseIndexedColumn *this)
{
  *this = &unk_1F50DD350;
  *(this + 1) = &unk_1F50D86E0;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD350;
  *(this + 1) = &unk_1F50D86E0;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t mediaplatform::DatabaseIndexedColumn::DatabaseIndexedColumn(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F50DD350;
  *(a1 + 8) = &unk_1F50D86E0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v8 = *(a2 + 8);
    *(a1 + 32) = *(a2 + 24);
    *(a1 + 16) = v8;
  }

  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  return a1;
}

std::string *mediaplatform::DatabaseIndexedColumn::setColumn(mediaplatform::DatabaseIndexedColumn *this, const mediaplatform::DatabaseColumnBase *a2)
{
  result = std::string::operator=((this + 16), (a2 + 8));
  *(this + 10) = *(a2 + 8);
  return result;
}

std::string *mediaplatform::DatabaseIndex::DatabaseIndex(std::string *this, __int128 *a2, uint64_t a3, uint64_t *a4, std::string::size_type *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = &unk_1F50DD390;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v10 = *(a3 + 8);
    this[2].__r_.__value_.__r.__words[0] = *(a3 + 24);
    *&this[1].__r_.__value_.__r.__words[1] = v10;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__l.__size_, *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  v12 = *a4;
  v11 = a4[1];
  if (v11 != v12)
  {
    std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__vallocate[abi:ne200100](&this[3].__r_.__value_.__l.__size_, (v11 - v12) >> 4);
  }

  v13 = a5[1];
  this[4].__r_.__value_.__l.__size_ = *a5;
  this[4].__r_.__value_.__r.__words[2] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  LOWORD(this[5].__r_.__value_.__l.__data_) = 1;
  return this;
}

void sub_1D598C370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *mediaplatform::DatabaseIndex::DatabaseIndex(std::string *this, __int128 *a2, uint64_t a3, void *a4, std::string::size_type *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = a5[1];
  v10[0] = *a5;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mediaplatform::DatabaseIndex::DatabaseIndex(this, a2, a3, &v11, v10);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = &v11;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*a4 != a4[1])
  {
    std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseIndexedColumn,std::allocator<mediaplatform::DatabaseIndexedColumn>,mediaplatform::DatabaseColumnBase const&,0>();
  }

  if (&this[3].__r_.__value_.__r.__words[1] != &v11)
  {
    std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(&this[3].__r_.__value_.__l.__size_, v11, v12, (v12 - v11) >> 4);
  }

  v9 = &v11;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return this;
}

{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = a5[1];
  v10[0] = *a5;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mediaplatform::DatabaseIndex::DatabaseIndex(this, a2, a3, &v11, v10);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = &v11;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*a4 != a4[1])
  {
    std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseIndexedColumn,std::allocator<mediaplatform::DatabaseIndexedColumn>,mediaplatform::DatabaseColumnBase const&,0>();
  }

  if (&this[3].__r_.__value_.__r.__words[1] != &v11)
  {
    std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(&this[3].__r_.__value_.__l.__size_, v11, v12, (v12 - v11) >> 4);
  }

  v9 = &v11;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return this;
}

void sub_1D598C4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a12 = &a16;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a12);
  mediaplatform::DatabaseIndex::~DatabaseIndex(v16);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 4)
  {
    if (v9)
    {
      std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v9;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *>(a2, a3, v9);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *>(a2, (a2 + v12), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_1D598C6EC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
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
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v5;
}

void mediaplatform::DatabaseIndex::~DatabaseIndex(mediaplatform::DatabaseIndex *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this + 3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<mediaplatform::DatabaseIndexedColumn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseIndex::setColumns(uint64_t a1, uint64_t **a2)
{
  v2 = (a1 + 80);
  if (v2 != a2)
  {
    std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  }
}

void sub_1D598CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a12 = &a16;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a12);
  mediaplatform::DatabaseIndex::~DatabaseIndex(v16);
  _Unwind_Resume(a1);
}

std::string *mediaplatform::DatabaseIndex::DatabaseIndex(std::string *a1, __int128 *a2, __int128 *a3, uint64_t a4, std::string::size_type *a5)
{
  mediaplatform::DatabaseTableBase::DatabaseTableBase(&v17, a3);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = *a5;
  v10 = a5[1];
  v13[0] = v9;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mediaplatform::DatabaseIndex::DatabaseIndex(a1, a2, &v17, &v14, v13);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = &v14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v12);
  mediaplatform::DatabaseTableBase::~DatabaseTableBase(&v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (*a4 != *(a4 + 8))
  {
    mediaplatform::DatabaseColumnBase::DatabaseColumnBase(&v17, *a4, 0);
    std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseIndexedColumn,std::allocator<mediaplatform::DatabaseIndexedColumn>,mediaplatform::DatabaseColumnBase &,0>();
  }

  if (&a1[3].__r_.__value_.__r.__words[1] != &v14)
  {
    std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(&a1[3].__r_.__value_.__l.__size_, v14, v15, (v15 - v14) >> 4);
  }

  v17 = &v14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v17);
  return a1;
}

{
  mediaplatform::DatabaseTableBase::DatabaseTableBase(&v17, a3);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = *a5;
  v10 = a5[1];
  v13[0] = v9;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mediaplatform::DatabaseIndex::DatabaseIndex(a1, a2, &v17, &v14, v13);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = &v14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v12);
  mediaplatform::DatabaseTableBase::~DatabaseTableBase(&v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (*a4 != *(a4 + 8))
  {
    mediaplatform::DatabaseColumnBase::DatabaseColumnBase(&v17, *a4, 0);
    std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseIndexedColumn,std::allocator<mediaplatform::DatabaseIndexedColumn>,mediaplatform::DatabaseColumnBase &,0>();
  }

  if (&a1[3].__r_.__value_.__r.__words[1] != &v14)
  {
    std::vector<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*,std::shared_ptr<mediaplatform::DatabaseIndexedColumn const>*>(&a1[3].__r_.__value_.__l.__size_, v14, v15, (v15 - v14) >> 4);
  }

  v17 = &v14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v17);
  return a1;
}

void sub_1D598CC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  a18 = &a15;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a18);
  mediaplatform::DatabaseIndex::~DatabaseIndex(v24);
  _Unwind_Resume(a1);
}

void sub_1D598CD40(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1D598CEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  a18 = &a15;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a18);
  mediaplatform::DatabaseIndex::~DatabaseIndex(v24);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseIndex::setTable(mediaplatform::DatabaseIndex *this, const mediaplatform::DatabaseTableBase *a2)
{
  v4 = (this + 24);
  std::string::operator=((this + 32), (a2 + 8));
  if (v4 != a2)
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 5);

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 56), v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
  }
}

uint64_t mediaplatform::DatabaseIndex::conditionalExpression@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void mediaplatform::DatabaseIndex::setConditionalExpression(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 112);
  *(a1 + 104) = v3;
  *(a1 + 112) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::sharedPointer(void)::__sharedPointer;
}

uint64_t mlcore::PlaylistAuthorPropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyPersistentID(void)::property;
}

void sub_1D598D400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ContainerAuthorTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore20ContainerAuthorTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ContainerAuthorTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ContainerAuthorTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D598D5CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ContainerAuthorTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::databaseTable()
{
  mediaplatform::Singleton<mlcore::ContainerAuthorTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D598D92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::PlaylistAuthor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::PlaylistAuthor>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::PlaylistAuthor::~PlaylistAuthor(mlcore::PlaylistAuthor *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::PlaylistAuthorPropertyContainerPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyContainerPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyContainerPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyContainerPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyContainerPersistentID(void)::property;
}

void sub_1D598DD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistAuthorPropertyPersonPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyPersonPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyPersonPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyPersonPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyPersonPersistentID(void)::property;
}

void sub_1D598E07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistAuthorPropertyRole(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyRole(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyRole(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyRole(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyRole(void)::property;
}

void sub_1D598E3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistAuthorPropertyIsPending(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyIsPending(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyIsPending(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyIsPending(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyIsPending(void)::property;
}

void sub_1D598E6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistAuthorPropertyPosition(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistAuthorPropertyPosition(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistAuthorPropertyPosition(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistAuthorPropertyPosition(void)::$_0 &&>>);
  }

  return mlcore::PlaylistAuthorPropertyPosition(void)::property;
}

void sub_1D598EA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::PlaylistAuthor::PlaylistAuthor(mlcore::PlaylistAuthor *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D6F80;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D6F80;
  return result;
}

void mlcore::PlaylistAuthorSocialProfileID(mlcore *this)
{
  v1 = mlcore::PlaylistAuthorPropertyPersonPersistentID(this);
  v2 = mlcore::PersonPropertyCloudIdentifier(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<std::string>(v1, v2, v3);
}

uint64_t mlcore::ItemTable::ItemTable(mlcore::ItemTable *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  std::string::basic_string[abi:ne200100]<0>(v222, "item");
  std::string::basic_string[abi:ne200100]<0>(&__s, "item_pid");
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = __s;
  }

  v220 = 1;
  v221[0] = 0;
  *&v221[4] = 0;
  v218 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v212, "media_type");
  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v212;
  }

  v215 = 16;
  LOBYTE(v216) = 1;
  HIDWORD(v216) = 0;
  v213 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v207, "title_order");
  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v209, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    v209 = v207;
  }

  v210 = 16;
  v211[0] = 1;
  *&v211[4] = 0;
  v208 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v202, "title_order_section");
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v202;
  }

  v205 = 16;
  LOBYTE(v206) = 1;
  HIDWORD(v206) = 0;
  v203 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v197, "item_artist_pid");
  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v197;
  }

  v200 = 16;
  v201[0] = 1;
  *&v201[4] = 0;
  v198 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v192, "item_artist_order");
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v192;
  }

  v195 = 16;
  v196[0] = 1;
  *&v196[4] = 0;
  v193 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v187, "item_artist_order_section");
  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v189, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v189 = v187;
  }

  v190 = 16;
  LOBYTE(v191) = 1;
  HIDWORD(v191) = 0;
  v188 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v182, "series_name_order");
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v182;
  }

  v185 = 16;
  v186[0] = 1;
  *&v186[4] = 0;
  v183 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v177, "series_name_order_section");
  v178 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = v177;
  }

  v180 = 16;
  LOBYTE(v181) = 1;
  HIDWORD(v181) = 0;
  v178 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v172, "album_pid");
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v172;
  }

  v175 = 16;
  v176[0] = 1;
  *&v176[4] = 0;
  v173 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v167, "album_order");
  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v167;
  }

  v170 = 16;
  v171[0] = 1;
  *&v171[4] = 0;
  v168 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v162, "album_order_section");
  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v162;
  }

  v165 = 16;
  LOBYTE(v166) = 1;
  HIDWORD(v166) = 0;
  v163 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v157, "album_artist_pid");
  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v157;
  }

  v160 = 16;
  v161[0] = 1;
  *&v161[4] = 0;
  v158 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v152, "album_artist_order");
  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v152;
  }

  v155 = 16;
  v156[0] = 1;
  *&v156[4] = 0;
  v153 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v147, "album_artist_order_section");
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v147;
  }

  v150 = 16;
  LOBYTE(v151) = 1;
  HIDWORD(v151) = 0;
  v148 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v142, "composer_pid");
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v142;
  }

  v145 = 16;
  v146[0] = 1;
  *&v146[4] = 0;
  v143 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v137, "composer_order");
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v137;
  }

  v140 = 16;
  v141[0] = 1;
  *&v141[4] = 0;
  v138 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v132, "composer_order_section");
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v132;
  }

  v135 = 16;
  LOBYTE(v136) = 1;
  HIDWORD(v136) = 0;
  v133 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v127, "genre_id");
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v127;
  }

  v130 = 16;
  v131[0] = 1;
  *&v131[4] = 0;
  v128 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v122, "genre_order");
  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, v122.__r_.__value_.__l.__data_, v122.__r_.__value_.__l.__size_);
  }

  else
  {
    v124 = v122;
  }

  v125 = 16;
  v126[0] = 1;
  *&v126[4] = 0;
  v123 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v117, "genre_order_section");
  v118 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v117;
  }

  v120 = 16;
  LOBYTE(v121) = 1;
  HIDWORD(v121) = 0;
  v118 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v112, "disc_number");
  v113 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v114 = v112;
  }

  v115 = 16;
  LOBYTE(v116) = 1;
  HIDWORD(v116) = 0;
  v113 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v107, "track_number");
  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v107;
  }

  v110 = 16;
  LOBYTE(v111) = 1;
  HIDWORD(v111) = 0;
  v108 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v102, "episode_sort_id");
  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v102;
  }

  v105 = 16;
  LOBYTE(v106) = 1;
  HIDWORD(v106) = 0;
  v103 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v97, "base_location_id");
  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v97;
  }

  v100 = 16;
  v101[0] = 1;
  *&v101[4] = 0;
  v98 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v92, "remote_location_id");
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v92;
  }

  v95 = 16;
  v96[0] = 1;
  *&v96[4] = 0;
  v93 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v87, "exclude_from_shuffle");
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v87;
  }

  v90 = 16;
  LOBYTE(v91) = 1;
  HIDWORD(v91) = 0;
  v88 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v82, "keep_local");
  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v82;
  }

  v85 = 16;
  LOBYTE(v86) = 1;
  HIDWORD(v86) = 0;
  v83 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v77, "keep_local_status");
  v78 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v79 = v77;
  }

  v80 = 16;
  LOBYTE(v81) = 1;
  HIDWORD(v81) = 0;
  v78 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "keep_local_status_reason");
  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v74 = v72;
  }

  v75 = 16;
  LOBYTE(v76) = 1;
  HIDWORD(v76) = 0;
  v73 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "keep_local_constraints");
  v68 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v69 = v67;
  }

  v70 = 16;
  LOBYTE(v71) = 1;
  HIDWORD(v71) = 0;
  v68 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v62, "in_my_library");
  v63 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v62;
  }

  v65 = 16;
  LOBYTE(v66) = 1;
  HIDWORD(v66) = 0;
  v63 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "is_compilation");
  v58 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v57;
  }

  v60 = 16;
  LOBYTE(v61) = 1;
  HIDWORD(v61) = 0;
  v58 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v52, "date_added");
  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v52;
  }

  v55 = 16;
  v56[0] = 1;
  *&v56[4] = 0;
  v53 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "show_composer");
  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v47;
  }

  v50 = 16;
  LOBYTE(v51) = 1;
  HIDWORD(v51) = 0;
  v48 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v42, "is_music_show");
  v43 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v42;
  }

  v45 = 16;
  v46[0] = 1;
  *&v46[4] = 0;
  v43 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "date_downloaded");
  v38 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v37;
  }

  v40 = 16;
  v41[0] = 1;
  *&v41[4] = 0;
  v38 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "download_source_container_pid");
  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v32;
  }

  v35 = 16;
  v36[0] = 1;
  *&v36[4] = 0;
  v33 = &unk_1F50D7AC0;
  v390 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v391, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v391 = v219;
  }

  v392 = v220;
  v390 = &unk_1F50D8958;
  v393 = *v221;
  v394 = *&v221[8];
  v386 = &unk_1F50D86E0;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v387, v214.__r_.__value_.__l.__data_, v214.__r_.__value_.__l.__size_);
  }

  else
  {
    v387 = v214;
  }

  v388 = v215;
  v386 = &unk_1F50D8978;
  v389 = v216;
  v381 = &unk_1F50D86E0;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v382, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
  }

  else
  {
    v382 = v209;
  }

  v383 = v210;
  v381 = &unk_1F50D8958;
  v384 = *v211;
  v385 = *&v211[8];
  v377 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v378, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v378 = v204;
  }

  v379 = v205;
  v377 = &unk_1F50D8978;
  v380 = v206;
  v372 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v373, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    v373 = v199;
  }

  v374 = v200;
  v372 = &unk_1F50D8958;
  v375 = *v201;
  v376 = *&v201[8];
  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v368, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v368 = v194;
  }

  v369 = v195;
  v367 = &unk_1F50D8958;
  v370 = *v196;
  v371 = *&v196[8];
  v363 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v364, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
  }

  else
  {
    v364 = v189;
  }

  v365 = v190;
  v363 = &unk_1F50D8978;
  v366 = v191;
  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = v184;
  }

  v360 = v185;
  v358 = &unk_1F50D8958;
  v361 = *v186;
  v362 = *&v186[8];
  v354 = &unk_1F50D86E0;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v355, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    v355 = v179;
  }

  v356 = v180;
  v354 = &unk_1F50D8978;
  v357 = v181;
  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v174;
  }

  v351 = v175;
  v349 = &unk_1F50D8958;
  v352 = *v176;
  v353 = *&v176[8];
  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v169;
  }

  v346 = v170;
  v344 = &unk_1F50D8958;
  v347 = *v171;
  v348 = *&v171[8];
  v340 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v164;
  }

  v342 = v165;
  v340 = &unk_1F50D8978;
  v343 = v166;
  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v159;
  }

  v337 = v160;
  v335 = &unk_1F50D8958;
  v338 = *v161;
  v339 = *&v161[8];
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v154;
  }

  v332 = v155;
  v330 = &unk_1F50D8958;
  v333 = *v156;
  v334 = *&v156[8];
  v326 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v327, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v327 = v149;
  }

  v328 = v150;
  v326 = &unk_1F50D8978;
  v329 = v151;
  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v322, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v322 = v144;
  }

  v323 = v145;
  v321 = &unk_1F50D8958;
  v324 = *v146;
  v325 = *&v146[8];
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v139;
  }

  v318 = v140;
  v316 = &unk_1F50D8958;
  v319 = *v141;
  v320 = *&v141[8];
  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v313, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v313 = v134;
  }

  v314 = v135;
  v312 = &unk_1F50D8978;
  v315 = v136;
  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = v129;
  }

  v309 = v130;
  v307 = &unk_1F50D8958;
  v310 = *v131;
  v311 = *&v131[8];
  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v124;
  }

  v304 = v125;
  v302 = &unk_1F50D8958;
  v305 = *v126;
  v306 = *&v126[8];
  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v119;
  }

  v300 = v120;
  v298 = &unk_1F50D8978;
  v301 = v121;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v114;
  }

  v296 = v115;
  v294 = &unk_1F50D8978;
  v297 = v116;
  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v109;
  }

  v292 = v110;
  v290 = &unk_1F50D8978;
  v293 = v111;
  v286 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v287, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v287 = v104;
  }

  v288 = v105;
  v286 = &unk_1F50D8978;
  v289 = v106;
  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v99;
  }

  v283 = v100;
  v281 = &unk_1F50D8958;
  v284 = *v101;
  v285 = *&v101[8];
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v94;
  }

  v278 = v95;
  v276 = &unk_1F50D8958;
  v279 = *v96;
  v280 = *&v96[8];
  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v273, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v273 = v89;
  }

  v274 = v90;
  v272 = &unk_1F50D8978;
  v275 = v91;
  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v84;
  }

  v270 = v85;
  v268 = &unk_1F50D8978;
  v271 = v86;
  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v265, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
  }

  else
  {
    v265 = v79;
  }

  v266 = v80;
  v264 = &unk_1F50D8978;
  v267 = v81;
  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v261, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v261 = v74;
  }

  v262 = v75;
  v260 = &unk_1F50D8978;
  v263 = v76;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v69;
  }

  v258 = v70;
  v256 = &unk_1F50D8978;
  v259 = v71;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v64;
  }

  v254 = v65;
  v252 = &unk_1F50D8978;
  v255 = v66;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v59;
  }

  v250 = v60;
  v248 = &unk_1F50D8978;
  v251 = v61;
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v54;
  }

  v245 = v55;
  v243 = &unk_1F50D8958;
  v246 = *v56;
  v247 = *&v56[8];
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v49;
  }

  v241 = v50;
  v239 = &unk_1F50D8978;
  v242 = v51;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v44;
  }

  v236 = v45;
  v234 = &unk_1F50D8958;
  v237 = *v46;
  v238 = *&v46[8];
  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v39;
  }

  v231 = v40;
  v229 = &unk_1F50D8958;
  v232 = *v41;
  v233 = *&v41[8];
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v34;
  }

  v226 = v35;
  v224 = &unk_1F50D8958;
  v227 = *v36;
  v228 = *&v36[8];
  mediaplatform::DatabaseTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::DatabaseTable(v1, v222, &v390, &v386, &v381, &v377, &v372, &v367, &v363, &v358, &v354, &v349, &v344, &v340, &v335, &v330, &v326, &v321, &v316, &v312, &v307, &v302, &v298, &v294, &v290, &v286, &v281, &v276, &v272, &v268, &v264, &v260, &v256, &v252, &v248, &v243, &v239, &v234, &v229, &v224);
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v273.__r_.__value_.__l.__data_);
  }

  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

  v286 = &unk_1F50D86E0;
  if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v287.__r_.__value_.__l.__data_);
  }

  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v291.__r_.__value_.__l.__data_);
  }

  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v313.__r_.__value_.__l.__data_);
  }

  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v322.__r_.__value_.__l.__data_);
  }

  v326 = &unk_1F50D86E0;
  if (SHIBYTE(v327.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v327.__r_.__value_.__l.__data_);
  }

  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331.__r_.__value_.__l.__data_);
  }

  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v336.__r_.__value_.__l.__data_);
  }

  v340 = &unk_1F50D86E0;
  if (SHIBYTE(v341.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v341.__r_.__value_.__l.__data_);
  }

  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v345.__r_.__value_.__l.__data_);
  }

  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v350.__r_.__value_.__l.__data_);
  }

  v354 = &unk_1F50D86E0;
  if (SHIBYTE(v355.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v355.__r_.__value_.__l.__data_);
  }

  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v359.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v359.__r_.__value_.__l.__data_);
  }

  v363 = &unk_1F50D86E0;
  if (SHIBYTE(v364.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v364.__r_.__value_.__l.__data_);
  }

  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v368.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v368.__r_.__value_.__l.__data_);
  }

  v372 = &unk_1F50D86E0;
  if (SHIBYTE(v373.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v373.__r_.__value_.__l.__data_);
  }

  v377 = &unk_1F50D86E0;
  if (SHIBYTE(v378.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v378.__r_.__value_.__l.__data_);
  }

  v381 = &unk_1F50D86E0;
  if (SHIBYTE(v382.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v382.__r_.__value_.__l.__data_);
  }

  v386 = &unk_1F50D86E0;
  if (SHIBYTE(v387.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v387.__r_.__value_.__l.__data_);
  }

  v390 = &unk_1F50D86E0;
  if (SHIBYTE(v391.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v391.__r_.__value_.__l.__data_);
  }

  *v1 = &unk_1F50D8130;
  *(v1 + 1904) = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1912), v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1912) = v219;
  }

  *(v1 + 1936) = v220;
  *(v1 + 1940) = *v221;
  *(v1 + 1948) = *&v221[8];
  *(v1 + 1904) = &unk_1F50D7AC0;
  *(v1 + 1952) = &unk_1F50D86E0;
  v2 = (v1 + 1960);
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v214.__r_.__value_.__l.__data_, v214.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *&v214.__r_.__value_.__l.__data_;
    *(v1 + 1976) = *(&v214.__r_.__value_.__l + 2);
  }

  *(v1 + 1984) = v215;
  *(v1 + 1988) = v216;
  *(v1 + 1952) = &unk_1F50D7AE0;
  *(v1 + 2000) = &unk_1F50D86E0;
  v3 = (v1 + 2008);
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v209.__r_.__value_.__l.__data_;
    *(v1 + 2024) = *(&v209.__r_.__value_.__l + 2);
  }

  *(v1 + 2032) = v210;
  *(v1 + 2036) = *v211;
  *(v1 + 2044) = *&v211[8];
  *(v1 + 2000) = &unk_1F50D7AC0;
  *(v1 + 2048) = &unk_1F50D86E0;
  v4 = (v1 + 2056);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v204.__r_.__value_.__l.__data_;
    *(v1 + 2072) = *(&v204.__r_.__value_.__l + 2);
  }

  *(v1 + 2080) = v205;
  *(v1 + 2084) = v206;
  *(v1 + 2048) = &unk_1F50D7AE0;
  *(v1 + 2096) = &unk_1F50D86E0;
  v5 = (v1 + 2104);
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v199.__r_.__value_.__l.__data_;
    *(v1 + 2120) = *(&v199.__r_.__value_.__l + 2);
  }

  *(v1 + 2128) = v200;
  *(v1 + 2132) = *v201;
  *(v1 + 2140) = *&v201[8];
  *(v1 + 2096) = &unk_1F50D7AC0;
  *(v1 + 2144) = &unk_1F50D86E0;
  v6 = (v1 + 2152);
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *&v194.__r_.__value_.__l.__data_;
    *(v1 + 2168) = *(&v194.__r_.__value_.__l + 2);
  }

  *(v1 + 2176) = v195;
  *(v1 + 2180) = *v196;
  *(v1 + 2188) = *&v196[8];
  *(v1 + 2144) = &unk_1F50D7AC0;
  *(v1 + 2192) = &unk_1F50D86E0;
  v7 = (v1 + 2200);
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v189.__r_.__value_.__l.__data_;
    *(v1 + 2216) = *(&v189.__r_.__value_.__l + 2);
  }

  *(v1 + 2224) = v190;
  *(v1 + 2228) = v191;
  *(v1 + 2192) = &unk_1F50D7AE0;
  *(v1 + 2240) = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2248), v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2248) = v184;
  }

  *(v1 + 2272) = v185;
  *(v1 + 2276) = *v186;
  *(v1 + 2284) = *&v186[8];
  *(v1 + 2240) = &unk_1F50D7AC0;
  *(v1 + 2288) = &unk_1F50D86E0;
  v8 = (v1 + 2296);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v179.__r_.__value_.__l.__data_;
    *(v1 + 2312) = *(&v179.__r_.__value_.__l + 2);
  }

  *(v1 + 2320) = v180;
  *(v1 + 2324) = v181;
  *(v1 + 2288) = &unk_1F50D7AE0;
  *(v1 + 2336) = &unk_1F50D86E0;
  v9 = (v1 + 2344);
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v174.__r_.__value_.__l.__data_;
    *(v1 + 2360) = *(&v174.__r_.__value_.__l + 2);
  }

  *(v1 + 2368) = v175;
  *(v1 + 2372) = *v176;
  *(v1 + 2380) = *&v176[8];
  *(v1 + 2336) = &unk_1F50D7AC0;
  *(v1 + 2384) = &unk_1F50D86E0;
  v10 = (v1 + 2392);
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *&v169.__r_.__value_.__l.__data_;
    *(v1 + 2408) = *(&v169.__r_.__value_.__l + 2);
  }

  *(v1 + 2416) = v170;
  *(v1 + 2420) = *v171;
  *(v1 + 2428) = *&v171[8];
  *(v1 + 2384) = &unk_1F50D7AC0;
  *(v1 + 2432) = &unk_1F50D86E0;
  v11 = (v1 + 2440);
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *&v164.__r_.__value_.__l.__data_;
    *(v1 + 2456) = *(&v164.__r_.__value_.__l + 2);
  }

  *(v1 + 2464) = v165;
  *(v1 + 2468) = v166;
  *(v1 + 2432) = &unk_1F50D7AE0;
  *(v1 + 2480) = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2488), v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2488) = v159;
  }

  *(v1 + 2512) = v160;
  *(v1 + 2516) = *v161;
  *(v1 + 2524) = *&v161[8];
  *(v1 + 2480) = &unk_1F50D7AC0;
  *(v1 + 2528) = &unk_1F50D86E0;
  v12 = (v1 + 2536);
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v12->__r_.__value_.__l.__data_ = *&v154.__r_.__value_.__l.__data_;
    *(v1 + 2552) = *(&v154.__r_.__value_.__l + 2);
  }

  *(v1 + 2560) = v155;
  *(v1 + 2564) = *v156;
  *(v1 + 2572) = *&v156[8];
  *(v1 + 2528) = &unk_1F50D7AC0;
  *(v1 + 2576) = &unk_1F50D86E0;
  v13 = (v1 + 2584);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&v149.__r_.__value_.__l.__data_;
    *(v1 + 2600) = *(&v149.__r_.__value_.__l + 2);
  }

  *(v1 + 2608) = v150;
  *(v1 + 2612) = v151;
  *(v1 + 2576) = &unk_1F50D7AE0;
  *(v1 + 2624) = &unk_1F50D86E0;
  v14 = (v1 + 2632);
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v14, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *&v144.__r_.__value_.__l.__data_;
    *(v1 + 2648) = *(&v144.__r_.__value_.__l + 2);
  }

  *(v1 + 2656) = v145;
  *(v1 + 2660) = *v146;
  *(v1 + 2668) = *&v146[8];
  *(v1 + 2624) = &unk_1F50D7AC0;
  *(v1 + 2672) = &unk_1F50D86E0;
  v15 = (v1 + 2680);
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v15, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v15->__r_.__value_.__l.__data_ = *&v139.__r_.__value_.__l.__data_;
    *(v1 + 2696) = *(&v139.__r_.__value_.__l + 2);
  }

  *(v1 + 2704) = v140;
  *(v1 + 2708) = *v141;
  *(v1 + 2716) = *&v141[8];
  *(v1 + 2672) = &unk_1F50D7AC0;
  *(v1 + 2720) = &unk_1F50D86E0;
  v16 = (v1 + 2728);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v16, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v16->__r_.__value_.__l.__data_ = *&v134.__r_.__value_.__l.__data_;
    *(v1 + 2744) = *(&v134.__r_.__value_.__l + 2);
  }

  *(v1 + 2752) = v135;
  *(v1 + 2756) = v136;
  *(v1 + 2720) = &unk_1F50D7AE0;
  *(v1 + 2768) = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2776), v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2776) = v129;
  }

  *(v1 + 2800) = v130;
  *(v1 + 2804) = *v131;
  *(v1 + 2812) = *&v131[8];
  *(v1 + 2768) = &unk_1F50D7AC0;
  *(v1 + 2816) = &unk_1F50D86E0;
  v17 = (v1 + 2824);
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v17, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v17->__r_.__value_.__l.__data_ = *&v124.__r_.__value_.__l.__data_;
    *(v1 + 2840) = *(&v124.__r_.__value_.__l + 2);
  }

  *(v1 + 2848) = v125;
  *(v1 + 2852) = *v126;
  *(v1 + 2860) = *&v126[8];
  *(v1 + 2816) = &unk_1F50D7AC0;
  *(v1 + 2864) = &unk_1F50D86E0;
  v18 = (v1 + 2872);
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v18, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v18->__r_.__value_.__l.__data_ = *&v119.__r_.__value_.__l.__data_;
    *(v1 + 2888) = *(&v119.__r_.__value_.__l + 2);
  }

  *(v1 + 2896) = v120;
  *(v1 + 2900) = v121;
  *(v1 + 2864) = &unk_1F50D7AE0;
  *(v1 + 2912) = &unk_1F50D86E0;
  v19 = (v1 + 2920);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v19, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v19->__r_.__value_.__l.__data_ = *&v114.__r_.__value_.__l.__data_;
    *(v1 + 2936) = *(&v114.__r_.__value_.__l + 2);
  }

  *(v1 + 2944) = v115;
  *(v1 + 2948) = v116;
  *(v1 + 2912) = &unk_1F50D7AE0;
  *(v1 + 2960) = &unk_1F50D86E0;
  v20 = (v1 + 2968);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v20, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v20->__r_.__value_.__l.__data_ = *&v109.__r_.__value_.__l.__data_;
    *(v1 + 2984) = *(&v109.__r_.__value_.__l + 2);
  }

  *(v1 + 2992) = v110;
  *(v1 + 2996) = v111;
  *(v1 + 2960) = &unk_1F50D7AE0;
  *(v1 + 3008) = &unk_1F50D86E0;
  v21 = (v1 + 3016);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v21, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v21->__r_.__value_.__l.__data_ = *&v104.__r_.__value_.__l.__data_;
    *(v1 + 3032) = *(&v104.__r_.__value_.__l + 2);
  }

  *(v1 + 3040) = v105;
  *(v1 + 3044) = v106;
  *(v1 + 3008) = &unk_1F50D7AE0;
  *(v1 + 3056) = &unk_1F50D86E0;
  v22 = (v1 + 3064);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v22, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v22->__r_.__value_.__l.__data_ = *&v99.__r_.__value_.__l.__data_;
    *(v1 + 3080) = *(&v99.__r_.__value_.__l + 2);
  }

  *(v1 + 3088) = v100;
  *(v1 + 3092) = *v101;
  *(v1 + 3100) = *&v101[8];
  *(v1 + 3056) = &unk_1F50D7AC0;
  *(v1 + 3104) = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3112), v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3112) = v94;
  }

  *(v1 + 3136) = v95;
  *(v1 + 3140) = *v96;
  *(v1 + 3148) = *&v96[8];
  *(v1 + 3104) = &unk_1F50D7AC0;
  *(v1 + 3152) = &unk_1F50D86E0;
  v23 = (v1 + 3160);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v23, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v23->__r_.__value_.__l.__data_ = *&v89.__r_.__value_.__l.__data_;
    *(v1 + 3176) = *(&v89.__r_.__value_.__l + 2);
  }

  *(v1 + 3184) = v90;
  *(v1 + 3188) = v91;
  *(v1 + 3152) = &unk_1F50D7AE0;
  *(v1 + 3200) = &unk_1F50D86E0;
  v24 = (v1 + 3208);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v24, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v24->__r_.__value_.__l.__data_ = *&v84.__r_.__value_.__l.__data_;
    *(v1 + 3224) = *(&v84.__r_.__value_.__l + 2);
  }

  *(v1 + 3232) = v85;
  *(v1 + 3236) = v86;
  *(v1 + 3200) = &unk_1F50D7AE0;
  *(v1 + 3248) = &unk_1F50D86E0;
  v25 = (v1 + 3256);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v79.__r_.__value_.__l.__data_;
    *(v1 + 3272) = *(&v79.__r_.__value_.__l + 2);
  }

  *(v1 + 3280) = v80;
  *(v1 + 3284) = v81;
  *(v1 + 3248) = &unk_1F50D7AE0;
  *(v1 + 3296) = &unk_1F50D86E0;
  v26 = (v1 + 3304);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v74.__r_.__value_.__l.__data_;
    *(v1 + 3320) = *(&v74.__r_.__value_.__l + 2);
  }

  *(v1 + 3328) = v75;
  *(v1 + 3332) = v76;
  *(v1 + 3296) = &unk_1F50D7AE0;
  *(v1 + 3344) = &unk_1F50D86E0;
  v27 = (v1 + 3352);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v69.__r_.__value_.__l.__data_;
    *(v1 + 3368) = *(&v69.__r_.__value_.__l + 2);
  }

  *(v1 + 3376) = v70;
  *(v1 + 3380) = v71;
  *(v1 + 3344) = &unk_1F50D7AE0;
  *(v1 + 3392) = &unk_1F50D86E0;
  v28 = (v1 + 3400);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v64.__r_.__value_.__l.__data_;
    *(v1 + 3416) = *(&v64.__r_.__value_.__l + 2);
  }

  *(v1 + 3424) = v65;
  *(v1 + 3428) = v66;
  *(v1 + 3392) = &unk_1F50D7AE0;
  *(v1 + 3440) = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3448), v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3448) = v59;
  }

  *(v1 + 3472) = v60;
  *(v1 + 3476) = v61;
  *(v1 + 3440) = &unk_1F50D7AE0;
  *(v1 + 3488) = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3496), v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3496) = v54;
  }

  *(v1 + 3520) = v55;
  *(v1 + 3524) = *v56;
  *(v1 + 3532) = *&v56[8];
  *(v1 + 3488) = &unk_1F50D7AC0;
  *(v1 + 3536) = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3544), v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3544) = v49;
  }

  *(v1 + 3568) = v50;
  *(v1 + 3572) = v51;
  *(v1 + 3536) = &unk_1F50D7AE0;
  *(v1 + 3584) = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3592), v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3592) = v44;
  }

  *(v1 + 3616) = v45;
  *(v1 + 3620) = *v46;
  *(v1 + 3628) = *&v46[8];
  *(v1 + 3584) = &unk_1F50D7AC0;
  *(v1 + 3632) = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 3640), v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 3640) = v39;
  }

  *(v1 + 3664) = v40;
  *(v1 + 3668) = *v41;
  *(v1 + 3676) = *&v41[8];
  *(v1 + 3632) = &unk_1F50D7AC0;
  *(v1 + 3680) = &unk_1F50D86E0;
  v29 = (v1 + 3688);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v29, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v30 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v30 = 0;
    *&v29->__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
    *(v1 + 3704) = *(&v34.__r_.__value_.__l + 2);
  }

  *(v1 + 3712) = v35;
  *(v1 + 3716) = *v36;
  *(v1 + 3724) = *&v36[8];
  *(v1 + 3680) = &unk_1F50D7AC0;
  v33 = &unk_1F50D86E0;
  if (v30)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v38 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v43 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v58 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v63 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v68 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v78 = &unk_1F50D86E0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v113 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v118 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v178 = &unk_1F50D86E0;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v223 < 0)
  {
    operator delete(v222[0]);
  }

  *v1 = &unk_1F50D3898;
  return v1;
}

void sub_1D599398C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _Unwind_Exception *exception_objecta, uint64_t a43, uint64_t a44, void **a45, void **a46, uint64_t a47, void **a48, void **a49, uint64_t a50, void **a51, uint64_t a52, void **a53, void **a54, uint64_t a55, void **a56, uint64_t a57, void **a58, uint64_t a59, void **a60, uint64_t a61, void **a62, void **a63)
{
  *(v72 + 3632) = v74;
  if (*(v72 + 3663) < 0)
  {
    operator delete(*v75);
  }

  *(v72 + 3584) = v78;
  if (*(v72 + 3615) < 0)
  {
    operator delete(*v79);
  }

  *(v72 + 3536) = v80;
  if (*(v72 + 3567) < 0)
  {
    operator delete(*v73);
  }

  *(v72 + 3488) = a43;
  if (*(v72 + 3519) < 0)
  {
    operator delete(*v77);
  }

  *(v72 + 3440) = a44;
  if (*(v72 + 3471) < 0)
  {
    operator delete(*v76);
  }

  *(v72 + 3392) = a47;
  if (*(v72 + 3423) < 0)
  {
    operator delete(*a45);
  }

  *(v72 + 3344) = a50;
  if (*(v72 + 3375) < 0)
  {
    operator delete(*a46);
  }

  *(v72 + 3296) = a52;
  if (*(v72 + 3327) < 0)
  {
    operator delete(*a48);
  }

  *(v72 + 3248) = a55;
  if (*(v72 + 3279) < 0)
  {
    operator delete(*a49);
  }

  *(v72 + 3200) = a57;
  if (*(v72 + 3231) < 0)
  {
    operator delete(*a51);
  }

  *(v72 + 3152) = a59;
  if (*(v72 + 3183) < 0)
  {
    operator delete(*a53);
  }

  *(v72 + 3104) = a61;
  if (*(v72 + 3135) < 0)
  {
    operator delete(*a54);
  }

  *(v72 + 3056) = a64;
  if (*(v72 + 3087) < 0)
  {
    operator delete(*a56);
  }

  *(v72 + 3008) = a67;
  if (*(v72 + 3039) < 0)
  {
    operator delete(*a58);
  }

  *(v72 + 2960) = a68;
  if (*(v72 + 2991) < 0)
  {
    operator delete(*a60);
  }

  *(v72 + 2912) = a71;
  if (*(v72 + 2943) < 0)
  {
    operator delete(*a62);
  }

  *(v72 + 2864) = STACK[0x200];
  if (*(v72 + 2895) < 0)
  {
    operator delete(*a63);
  }

  *(v72 + 2816) = STACK[0x210];
  if (*(v72 + 2847) < 0)
  {
    operator delete(*a65);
  }

  *(v72 + 2768) = STACK[0x228];
  if (*(v72 + 2799) < 0)
  {
    operator delete(*a66);
  }

  *(v72 + 2720) = STACK[0x238];
  if (*(v72 + 2751) < 0)
  {
    operator delete(*a69);
  }

  *(v72 + 2672) = STACK[0x248];
  if (*(v72 + 2703) < 0)
  {
    operator delete(*a70);
  }

  *(v72 + 2624) = STACK[0x260];
  if (*(v72 + 2655) < 0)
  {
    operator delete(*a72);
  }

  *(v72 + 2576) = STACK[0x270];
  if (*(v72 + 2607) < 0)
  {
    operator delete(*STACK[0x208]);
  }

  *(v72 + 2528) = STACK[0x280];
  if (*(v72 + 2559) < 0)
  {
    operator delete(*STACK[0x218]);
  }

  *(v72 + 2480) = STACK[0x298];
  if (*(v72 + 2511) < 0)
  {
    operator delete(*STACK[0x220]);
  }

  *(v72 + 2432) = STACK[0x2A8];
  if (*(v72 + 2463) < 0)
  {
    operator delete(*STACK[0x230]);
  }

  *(v72 + 2384) = STACK[0x2B8];
  if (*(v72 + 2415) < 0)
  {
    operator delete(*STACK[0x240]);
  }

  *(v72 + 2336) = STACK[0x2D0];
  if (*(v72 + 2367) < 0)
  {
    operator delete(*STACK[0x250]);
  }

  *(v72 + 2288) = STACK[0x2D8];
  if (*(v72 + 2319) < 0)
  {
    operator delete(*STACK[0x258]);
  }

  *(v72 + 2240) = STACK[0x2E0];
  if (*(v72 + 2271) < 0)
  {
    operator delete(*STACK[0x268]);
  }

  *(v72 + 2192) = STACK[0x2E8];
  if (*(v72 + 2223) < 0)
  {
    operator delete(*STACK[0x278]);
  }

  *(v72 + 2144) = STACK[0x2F0];
  if (*(v72 + 2175) < 0)
  {
    operator delete(*STACK[0x288]);
  }

  *(v72 + 2096) = STACK[0x2F8];
  if (*(v72 + 2127) < 0)
  {
    operator delete(*STACK[0x290]);
  }

  *(v72 + 2048) = STACK[0x300];
  if (*(v72 + 2079) < 0)
  {
    operator delete(*STACK[0x2A0]);
  }

  *(v72 + 2000) = STACK[0x308];
  if (*(v72 + 2031) < 0)
  {
    operator delete(*STACK[0x2B0]);
  }

  *(v72 + 1952) = STACK[0x310];
  if (*(v72 + 1983) < 0)
  {
    operator delete(*STACK[0x2C0]);
  }

  *(v72 + 1904) = STACK[0x318];
  if (*(v72 + 1935) < 0)
  {
    operator delete(*STACK[0x2C8]);
  }

  mediaplatform::DatabaseTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::~DatabaseTable(v72);
  STACK[0x468] = STACK[0x320];
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  STACK[0x4B0] = STACK[0x328];
  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  STACK[0x4F8] = STACK[0x330];
  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  STACK[0x540] = STACK[0x338];
  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  STACK[0x588] = STACK[0x340];
  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  STACK[0x5D0] = STACK[0x348];
  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(STACK[0x5D8]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  STACK[0x618] = STACK[0x350];
  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  STACK[0x660] = STACK[0x358];
  if (SLOBYTE(STACK[0x67F]) < 0)
  {
    operator delete(STACK[0x668]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  STACK[0x6A8] = STACK[0x360];
  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(STACK[0x6B0]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  STACK[0x6F0] = STACK[0x368];
  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    operator delete(STACK[0x6F8]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  STACK[0x738] = STACK[0x370];
  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(STACK[0x740]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  STACK[0x780] = STACK[0x378];
  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(STACK[0x788]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  STACK[0x7C8] = STACK[0x380];
  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(STACK[0x7D0]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  STACK[0x810] = STACK[0x388];
  if (SLOBYTE(STACK[0x82F]) < 0)
  {
    operator delete(STACK[0x818]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  STACK[0x858] = STACK[0x390];
  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(STACK[0x860]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  STACK[0x8A0] = STACK[0x398];
  if (SLOBYTE(STACK[0x8BF]) < 0)
  {
    operator delete(STACK[0x8A8]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  STACK[0x8E8] = STACK[0x3A0];
  if (SLOBYTE(STACK[0x907]) < 0)
  {
    operator delete(STACK[0x8F0]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  STACK[0x930] = STACK[0x3A8];
  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(STACK[0x938]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  STACK[0x978] = STACK[0x3B0];
  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(STACK[0x980]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  STACK[0x9C0] = STACK[0x3B8];
  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(STACK[0x9C8]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  STACK[0xA08] = STACK[0x3C0];
  if (SLOBYTE(STACK[0xA27]) < 0)
  {
    operator delete(STACK[0xA10]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  STACK[0xA50] = STACK[0x3C8];
  if (SLOBYTE(STACK[0xA6F]) < 0)
  {
    operator delete(STACK[0xA58]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  STACK[0xA98] = STACK[0x3D0];
  if (SLOBYTE(STACK[0xAB7]) < 0)
  {
    operator delete(STACK[0xAA0]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  STACK[0xAE0] = STACK[0x3D8];
  if (SLOBYTE(STACK[0xAFF]) < 0)
  {
    operator delete(STACK[0xAE8]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  STACK[0xB28] = STACK[0x3E0];
  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(STACK[0xB30]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  STACK[0xB70] = STACK[0x3E8];
  if (SLOBYTE(STACK[0xB8F]) < 0)
  {
    operator delete(STACK[0xB78]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  STACK[0xBB8] = STACK[0x3F0];
  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(STACK[0xBC0]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  STACK[0xC00] = STACK[0x3F8];
  if (SLOBYTE(STACK[0xC1F]) < 0)
  {
    operator delete(STACK[0xC08]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  STACK[0xC48] = STACK[0x400];
  if (SLOBYTE(STACK[0xC67]) < 0)
  {
    operator delete(STACK[0xC50]);
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  STACK[0xC90] = STACK[0x408];
  if (SLOBYTE(STACK[0xCAF]) < 0)
  {
    operator delete(STACK[0xC98]);
  }

  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  STACK[0xCD8] = STACK[0x410];
  if (SLOBYTE(STACK[0xCF7]) < 0)
  {
    operator delete(STACK[0xCE0]);
  }

  if (SLOBYTE(STACK[0xCD7]) < 0)
  {
    operator delete(STACK[0xCC0]);
  }

  STACK[0xD20] = STACK[0x418];
  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(STACK[0xD28]);
  }

  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  STACK[0xD68] = STACK[0x420];
  if (SLOBYTE(STACK[0xD87]) < 0)
  {
    operator delete(STACK[0xD70]);
  }

  if (SLOBYTE(STACK[0xD67]) < 0)
  {
    operator delete(STACK[0xD50]);
  }

  STACK[0xDB0] = STACK[0x428];
  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(STACK[0xDB8]);
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(STACK[0xD98]);
  }

  STACK[0xDF8] = STACK[0x430];
  if (SLOBYTE(STACK[0xE17]) < 0)
  {
    operator delete(STACK[0xE00]);
  }

  if (SLOBYTE(STACK[0xDF7]) < 0)
  {
    operator delete(STACK[0xDE0]);
  }

  STACK[0xE40] = STACK[0x438];
  if (SLOBYTE(STACK[0xE5F]) < 0)
  {
    operator delete(STACK[0xE48]);
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(STACK[0xE28]);
  }

  STACK[0xE88] = STACK[0x440];
  if (SLOBYTE(STACK[0xEA7]) < 0)
  {
    operator delete(STACK[0xE90]);
  }

  if (SLOBYTE(STACK[0xE87]) < 0)
  {
    operator delete(STACK[0xE70]);
  }

  STACK[0xED0] = STACK[0x448];
  if (SLOBYTE(STACK[0xEEF]) < 0)
  {
    operator delete(STACK[0xED8]);
  }

  if (SLOBYTE(STACK[0xECF]) < 0)
  {
    operator delete(STACK[0xEB8]);
  }

  if (SLOBYTE(STACK[0xF17]) < 0)
  {
    operator delete(STACK[0xF00]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5994CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1856);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1808);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1760);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1712);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1664);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1616);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1568);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1520);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1472);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1424);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1376);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1328);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1280);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1232);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1184);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1136);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1088);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1040);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 992);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 944);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 896);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 848);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 800);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 752);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 704);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 656);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 608);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 560);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 512);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 464);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 416);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 368);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5994EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ItemTable::~ItemTable(mlcore::ItemTable *this)
{
  *this = &unk_1F50D8130;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1904);
  *this = &unk_1F50D8B80;
  *(this + 232) = &unk_1F50D86E0;
  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8130;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1904);
  *this = &unk_1F50D8B80;
  *(this + 232) = &unk_1F50D86E0;
  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 1776) = &unk_1F50D86E0;
  if (*(a1 + 1807) < 0)
  {
    operator delete(*(a1 + 1784));
  }

  *(a1 + 1728) = &unk_1F50D86E0;
  if (*(a1 + 1759) < 0)
  {
    operator delete(*(a1 + 1736));
  }

  *(a1 + 1680) = &unk_1F50D86E0;
  if (*(a1 + 1711) < 0)
  {
    operator delete(*(a1 + 1688));
  }

  *(a1 + 1632) = &unk_1F50D86E0;
  if (*(a1 + 1663) < 0)
  {
    operator delete(*(a1 + 1640));
  }

  *(a1 + 1584) = &unk_1F50D86E0;
  if (*(a1 + 1615) < 0)
  {
    operator delete(*(a1 + 1592));
  }

  *(a1 + 1536) = &unk_1F50D86E0;
  if (*(a1 + 1567) < 0)
  {
    operator delete(*(a1 + 1544));
  }

  *(a1 + 1488) = &unk_1F50D86E0;
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  *(a1 + 1440) = &unk_1F50D86E0;
  if (*(a1 + 1471) < 0)
  {
    operator delete(*(a1 + 1448));
  }

  *(a1 + 1392) = &unk_1F50D86E0;
  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  *(a1 + 1344) = &unk_1F50D86E0;
  if (*(a1 + 1375) < 0)
  {
    operator delete(*(a1 + 1352));
  }

  *(a1 + 1296) = &unk_1F50D86E0;
  if (*(a1 + 1327) < 0)
  {
    operator delete(*(a1 + 1304));
  }

  *(a1 + 1248) = &unk_1F50D86E0;
  if (*(a1 + 1279) < 0)
  {
    operator delete(*(a1 + 1256));
  }

  *(a1 + 1200) = &unk_1F50D86E0;
  if (*(a1 + 1231) < 0)
  {
    operator delete(*(a1 + 1208));
  }

  *(a1 + 1152) = &unk_1F50D86E0;
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  *(a1 + 1056) = &unk_1F50D86E0;
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  *(a1 + 1008) = &unk_1F50D86E0;
  if (*(a1 + 1039) < 0)
  {
    operator delete(*(a1 + 1016));
  }

  *(a1 + 960) = &unk_1F50D86E0;
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  *(a1 + 912) = &unk_1F50D86E0;
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1728) = &unk_1F50D86E0;
  if (*(a1 + 1759) < 0)
  {
    operator delete(*(a1 + 1736));
  }

  *(a1 + 1680) = &unk_1F50D86E0;
  if (*(a1 + 1711) < 0)
  {
    operator delete(*(a1 + 1688));
  }

  *(a1 + 1632) = &unk_1F50D86E0;
  if (*(a1 + 1663) < 0)
  {
    operator delete(*(a1 + 1640));
  }

  *(a1 + 1584) = &unk_1F50D86E0;
  if (*(a1 + 1615) < 0)
  {
    operator delete(*(a1 + 1592));
  }

  *(a1 + 1536) = &unk_1F50D86E0;
  if (*(a1 + 1567) < 0)
  {
    operator delete(*(a1 + 1544));
  }

  *(a1 + 1488) = &unk_1F50D86E0;
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  *(a1 + 1440) = &unk_1F50D86E0;
  if (*(a1 + 1471) < 0)
  {
    operator delete(*(a1 + 1448));
  }

  *(a1 + 1392) = &unk_1F50D86E0;
  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  return mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1344) = &unk_1F50D86E0;
  if (*(a1 + 1375) < 0)
  {
    operator delete(*(a1 + 1352));
  }

  *(a1 + 1296) = &unk_1F50D86E0;
  if (*(a1 + 1327) < 0)
  {
    operator delete(*(a1 + 1304));
  }

  *(a1 + 1248) = &unk_1F50D86E0;
  if (*(a1 + 1279) < 0)
  {
    operator delete(*(a1 + 1256));
  }

  *(a1 + 1200) = &unk_1F50D86E0;
  if (*(a1 + 1231) < 0)
  {
    operator delete(*(a1 + 1208));
  }

  *(a1 + 1152) = &unk_1F50D86E0;
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  *(a1 + 1056) = &unk_1F50D86E0;
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  *(a1 + 1008) = &unk_1F50D86E0;
  if (*(a1 + 1039) < 0)
  {
    operator delete(*(a1 + 1016));
  }

  return mediaplatform::DatabaseColumnTuple<17ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<17ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 960) = &unk_1F50D86E0;
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  *(a1 + 912) = &unk_1F50D86E0;
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  return mediaplatform::DatabaseColumnTuple<25ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<25ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8B80;
  *(a1 + 1856) = &unk_1F50D86E0;
  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8B80;
  *(a1 + 1856) = &unk_1F50D86E0;
  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  *a1 = &unk_1F50D8B80;
  *(a1 + 1856) = &unk_1F50D86E0;
  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mlcore::MediaTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D8130;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 1904);
  *a1 = &unk_1F50D8B80;
  *(a1 + 1856) = &unk_1F50D86E0;
  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8130;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 1904);
  *a1 = &unk_1F50D8B80;
  *(a1 + 1856) = &unk_1F50D86E0;
  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void *mediaplatform::DatabaseTable<long long,int,long long,int,long long,long long,int,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,long long,long long,int,int,int,int,long long,long long,int,int,int,int,int,int,int,long long,int,long long,long long,long long>::DatabaseTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v40 = MEMORY[0x1EEE9AC00]();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = mediaplatform::DatabaseTableBase::DatabaseTableBase(v40, v53);
  *v54 = &unk_1F50D8B80;
  v54[7] = 0;
  v54[8] = 0;
  v54[9] = 0;
  v223 = &unk_1F50D86E0;
  v57 = v54;
  if (*(v52 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, *(v52 + 8), *(v52 + 16));
  }

  else
  {
    v224 = *(v52 + 8);
  }

  v225 = *(v52 + 32);
  v223 = &unk_1F50D8958;
  v226 = *(v52 + 36);
  v227 = *(v52 + 44);
  v219 = &unk_1F50D86E0;
  if (*(v50 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v50 + 8), *(v50 + 16));
  }

  else
  {
    __s = *(v50 + 8);
  }

  v221 = *(v50 + 32);
  v219 = &unk_1F50D8978;
  v222 = *(v50 + 36);
  v214 = &unk_1F50D86E0;
  if (*(v48 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, *(v48 + 8), *(v48 + 16));
  }

  else
  {
    v215 = *(v48 + 8);
  }

  v216 = *(v48 + 32);
  v214 = &unk_1F50D8958;
  v217 = *(v48 + 36);
  v218 = *(v48 + 44);
  v210 = &unk_1F50D86E0;
  if (*(v46 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, *(v46 + 8), *(v46 + 16));
  }

  else
  {
    v211 = *(v46 + 8);
  }

  v212 = *(v46 + 32);
  v210 = &unk_1F50D8978;
  v213 = *(v46 + 36);
  v205 = &unk_1F50D86E0;
  if (*(v44 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, *(v44 + 8), *(v44 + 16));
  }

  else
  {
    v206 = *(v44 + 8);
  }

  v207 = *(v44 + 32);
  v205 = &unk_1F50D8958;
  v208 = *(v44 + 36);
  v209 = *(v44 + 44);
  v200 = &unk_1F50D86E0;
  if (*(v42 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, *(v42 + 8), *(v42 + 16));
  }

  else
  {
    v201 = *(v42 + 8);
  }

  v202 = *(v42 + 32);
  v200 = &unk_1F50D8958;
  v203 = *(v42 + 36);
  v204 = *(v42 + 44);
  v196 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v197 = *(a9 + 8);
  }

  v198 = *(a9 + 32);
  v196 = &unk_1F50D8978;
  v199 = *(a9 + 36);
  v191 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v192 = *(a10 + 8);
  }

  v193 = *(a10 + 32);
  v191 = &unk_1F50D8958;
  v194 = *(a10 + 36);
  v195 = *(a10 + 44);
  v187 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v188 = *(a11 + 8);
  }

  v189 = *(a11 + 32);
  v187 = &unk_1F50D8978;
  v190 = *(a11 + 36);
  v182 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v183 = *(a12 + 8);
  }

  v184 = *(a12 + 32);
  v182 = &unk_1F50D8958;
  v185 = *(a12 + 36);
  v186 = *(a12 + 44);
  v177 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v178 = *(a13 + 8);
  }

  v179 = *(a13 + 32);
  v177 = &unk_1F50D8958;
  v180 = *(a13 + 36);
  v181 = *(a13 + 44);
  v173 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v174 = *(a14 + 8);
  }

  v175 = *(a14 + 32);
  v173 = &unk_1F50D8978;
  v176 = *(a14 + 36);
  v168 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v169 = *(a15 + 8);
  }

  v170 = *(a15 + 32);
  v168 = &unk_1F50D8958;
  v171 = *(a15 + 36);
  v172 = *(a15 + 44);
  v163 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v164 = *(a16 + 8);
  }

  v165 = *(a16 + 32);
  v163 = &unk_1F50D8958;
  v166 = *(a16 + 36);
  v167 = *(a16 + 44);
  v159 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v160, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v160 = *(a17 + 8);
  }

  v161 = *(a17 + 32);
  v159 = &unk_1F50D8978;
  v162 = *(a17 + 36);
  v154 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v155 = *(a18 + 8);
  }

  v156 = *(a18 + 32);
  v154 = &unk_1F50D8958;
  v157 = *(a18 + 36);
  v158 = *(a18 + 44);
  v149 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v150 = *(a19 + 8);
  }

  v151 = *(a19 + 32);
  v149 = &unk_1F50D8958;
  v152 = *(a19 + 36);
  v153 = *(a19 + 44);
  v145 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v146 = *(a20 + 8);
  }

  v147 = *(a20 + 32);
  v145 = &unk_1F50D8978;
  v148 = *(a20 + 36);
  v140 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v141 = *(a21 + 8);
  }

  v142 = *(a21 + 32);
  v140 = &unk_1F50D8958;
  v143 = *(a21 + 36);
  v144 = *(a21 + 44);
  v135 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v136 = *(a22 + 8);
  }

  v137 = *(a22 + 32);
  v135 = &unk_1F50D8958;
  v138 = *(a22 + 36);
  v139 = *(a22 + 44);
  v131 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v132 = *(a23 + 8);
  }

  v133 = *(a23 + 32);
  v131 = &unk_1F50D8978;
  v134 = *(a23 + 36);
  v127 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v128 = *(a24 + 8);
  }

  v129 = *(a24 + 32);
  v127 = &unk_1F50D8978;
  v130 = *(a24 + 36);
  v123 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v124 = *(a25 + 8);
  }

  v125 = *(a25 + 32);
  v123 = &unk_1F50D8978;
  v126 = *(a25 + 36);
  v119 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, *(a26 + 8), *(a26 + 16));
  }

  else
  {
    v120 = *(a26 + 8);
  }

  v121 = *(a26 + 32);
  v119 = &unk_1F50D8978;
  v122 = *(a26 + 36);
  v114 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v115 = *(a27 + 8);
  }

  v116 = *(a27 + 32);
  v114 = &unk_1F50D8958;
  v117 = *(a27 + 36);
  v118 = *(a27 + 44);
  v109 = &unk_1F50D86E0;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a28 + 8), *(a28 + 16));
  }

  else
  {
    v110 = *(a28 + 8);
  }

  v111 = *(a28 + 32);
  v109 = &unk_1F50D8958;
  v112 = *(a28 + 36);
  v113 = *(a28 + 44);
  v105 = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v106 = *(a29 + 8);
  }

  v107 = *(a29 + 32);
  v105 = &unk_1F50D8978;
  v108 = *(a29 + 36);
  v101 = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v102 = *(a30 + 8);
  }

  v103 = *(a30 + 32);
  v101 = &unk_1F50D8978;
  v104 = *(a30 + 36);
  v97 = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v98 = *(a31 + 8);
  }

  v99 = *(a31 + 32);
  v97 = &unk_1F50D8978;
  v100 = *(a31 + 36);
  v93 = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v94 = *(a32 + 8);
  }

  v95 = *(a32 + 32);
  v93 = &unk_1F50D8978;
  v96 = *(a32 + 36);
  v89 = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v90 = *(a33 + 8);
  }

  v91 = *(a33 + 32);
  v89 = &unk_1F50D8978;
  v92 = *(a33 + 36);
  v85 = &unk_1F50D86E0;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a34 + 8), *(a34 + 16));
  }

  else
  {
    v86 = *(a34 + 8);
  }

  v87 = *(a34 + 32);
  v85 = &unk_1F50D8978;
  v88 = *(a34 + 36);
  v81 = &unk_1F50D86E0;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, *(a35 + 8), *(a35 + 16));
  }

  else
  {
    v82 = *(a35 + 8);
  }

  v83 = *(a35 + 32);
  v81 = &unk_1F50D8978;
  v84 = *(a35 + 36);
  v76 = &unk_1F50D86E0;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, *(a36 + 8), *(a36 + 16));
  }

  else
  {
    v77 = *(a36 + 8);
  }

  v78 = *(a36 + 32);
  v76 = &unk_1F50D8958;
  v79 = *(a36 + 36);
  v80 = *(a36 + 44);
  v72 = &unk_1F50D86E0;
  if (*(a37 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *(a37 + 8), *(a37 + 16));
  }

  else
  {
    v73 = *(a37 + 8);
  }

  v74 = *(a37 + 32);
  v72 = &unk_1F50D8978;
  v75 = *(a37 + 36);
  v67 = &unk_1F50D86E0;
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(a38 + 8), *(a38 + 16));
  }

  else
  {
    v68 = *(a38 + 8);
  }

  v69 = *(a38 + 32);
  v67 = &unk_1F50D8958;
  v70 = *(a38 + 36);
  v71 = *(a38 + 44);
  v62 = &unk_1F50D86E0;
  if (*(a39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a39 + 8), *(a39 + 16));
  }

  else
  {
    v63 = *(a39 + 8);
  }

  v64 = *(a39 + 32);
  v62 = &unk_1F50D8958;
  v65 = *(a39 + 36);
  v66 = *(a39 + 44);
  if (*(a40 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a40 + 8), *(a40 + 16));
  }

  else
  {
    v58 = *(a40 + 8);
  }

  v59 = *(a40 + 32);
  v60 = *(a40 + 36);
  v61 = *(a40 + 44);
  v390 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v391, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v391 = __s;
  }

  v392 = v221;
  v390 = &unk_1F50D8978;
  v393 = v222;
  v385 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v386, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    v386 = v215;
  }

  v387 = v216;
  v385 = &unk_1F50D8958;
  v388 = v217;
  v389 = v218;
  v381 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v382, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v382 = v211;
  }

  v383 = v212;
  v381 = &unk_1F50D8978;
  v384 = v213;
  v376 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v377, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v377 = v206;
  }

  v378 = v207;
  v376 = &unk_1F50D8958;
  v379 = v208;
  v380 = v209;
  v371 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v372, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v372 = v201;
  }

  v373 = v202;
  v371 = &unk_1F50D8958;
  v374 = v203;
  v375 = v204;
  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v368, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v368 = v197;
  }

  v369 = v198;
  v367 = &unk_1F50D8978;
  v370 = v199;
  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v363, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v363 = v192;
  }

  v364 = v193;
  v362 = &unk_1F50D8958;
  v365 = v194;
  v366 = v195;
  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = v188;
  }

  v360 = v189;
  v358 = &unk_1F50D8978;
  v361 = v190;
  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v354, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v354 = v183;
  }

  v355 = v184;
  v353 = &unk_1F50D8958;
  v356 = v185;
  v357 = v186;
  v348 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v349, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v349 = v178;
  }

  v350 = v179;
  v348 = &unk_1F50D8958;
  v351 = v180;
  v352 = v181;
  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v174;
  }

  v346 = v175;
  v344 = &unk_1F50D8978;
  v347 = v176;
  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v340, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v340 = v169;
  }

  v341 = v170;
  v339 = &unk_1F50D8958;
  v342 = v171;
  v343 = v172;
  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v335, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v335 = v164;
  }

  v336 = v165;
  v334 = &unk_1F50D8958;
  v337 = v166;
  v338 = v167;
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v160;
  }

  v332 = v161;
  v330 = &unk_1F50D8978;
  v333 = v162;
  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v155;
  }

  v327 = v156;
  v325 = &unk_1F50D8958;
  v328 = v157;
  v329 = v158;
  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v150;
  }

  v322 = v151;
  v320 = &unk_1F50D8958;
  v323 = v152;
  v324 = v153;
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v146;
  }

  v318 = v147;
  v316 = &unk_1F50D8978;
  v319 = v148;
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v141;
  }

  v313 = v142;
  v311 = &unk_1F50D8958;
  v314 = v143;
  v315 = v144;
  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v136;
  }

  v308 = v137;
  v306 = &unk_1F50D8958;
  v309 = v138;
  v310 = v139;
  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v132;
  }

  v304 = v133;
  v302 = &unk_1F50D8978;
  v305 = v134;
  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v128;
  }

  v300 = v129;
  v298 = &unk_1F50D8978;
  v301 = v130;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v124;
  }

  v296 = v125;
  v294 = &unk_1F50D8978;
  v297 = v126;
  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v120;
  }

  v292 = v121;
  v290 = &unk_1F50D8978;
  v293 = v122;
  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v115;
  }

  v287 = v116;
  v285 = &unk_1F50D8958;
  v288 = v117;
  v289 = v118;
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v110;
  }

  v282 = v111;
  v280 = &unk_1F50D8958;
  v283 = v112;
  v284 = v113;
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v106;
  }

  v278 = v107;
  v276 = &unk_1F50D8978;
  v279 = v108;
  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v273, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v273 = v102;
  }

  v274 = v103;
  v272 = &unk_1F50D8978;
  v275 = v104;
  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v98;
  }

  v270 = v99;
  v268 = &unk_1F50D8978;
  v271 = v100;
  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v265, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v265 = v94;
  }

  v266 = v95;
  v264 = &unk_1F50D8978;
  v267 = v96;
  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v261, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v261 = v90;
  }

  v262 = v91;
  v260 = &unk_1F50D8978;
  v263 = v92;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v86;
  }

  v258 = v87;
  v256 = &unk_1F50D8978;
  v259 = v88;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v82;
  }

  v254 = v83;
  v252 = &unk_1F50D8978;
  v255 = v84;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v77;
  }

  v249 = v78;
  v247 = &unk_1F50D8958;
  v250 = v79;
  v251 = v80;
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v73;
  }

  v245 = v74;
  v243 = &unk_1F50D8978;
  v246 = v75;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v68;
  }

  v240 = v69;
  v238 = &unk_1F50D8958;
  v241 = v70;
  v242 = v71;
  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v63;
  }

  v235 = v64;
  v233 = &unk_1F50D8958;
  v236 = v65;
  v237 = v66;
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v58;
  }

  v230 = v59;
  v228 = &unk_1F50D8958;
  v231 = v60;
  v232 = v61;
  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple((v57 + 10), &v390, &v385, &v381, &v376, &v371, &v367, &v362, &v358, &v353, &v348, &v344, &v339, &v334, &v330, &v325, &v320, &v316, &v311, &v306, &v302, &v298, &v294, &v290, &v285, &v280, &v276, &v272, &v268, &v264, &v260, &v256, &v252, &v247, &v243, &v238, &v233, &v228);
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v273.__r_.__value_.__l.__data_);
  }

  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v286.__r_.__value_.__l.__data_);
  }

  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v291.__r_.__value_.__l.__data_);
  }

  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v326.__r_.__value_.__l.__data_);
  }

  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331.__r_.__value_.__l.__data_);
  }

  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v335.__r_.__value_.__l.__data_);
  }

  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v340.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v340.__r_.__value_.__l.__data_);
  }

  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v345.__r_.__value_.__l.__data_);
  }

  v348 = &unk_1F50D86E0;
  if (SHIBYTE(v349.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v349.__r_.__value_.__l.__data_);
  }

  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v354.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v354.__r_.__value_.__l.__data_);
  }

  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v359.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v359.__r_.__value_.__l.__data_);
  }

  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v363.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v363.__r_.__value_.__l.__data_);
  }

  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v368.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v368.__r_.__value_.__l.__data_);
  }

  v371 = &unk_1F50D86E0;
  if (SHIBYTE(v372.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v372.__r_.__value_.__l.__data_);
  }

  v376 = &unk_1F50D86E0;
  if (SHIBYTE(v377.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v377.__r_.__value_.__l.__data_);
  }

  v381 = &unk_1F50D86E0;
  if (SHIBYTE(v382.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v382.__r_.__value_.__l.__data_);
  }

  v385 = &unk_1F50D86E0;
  if (SHIBYTE(v386.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v386.__r_.__value_.__l.__data_);
  }

  v390 = &unk_1F50D86E0;
  if (SHIBYTE(v391.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v391.__r_.__value_.__l.__data_);
  }

  v57[232] = &unk_1F50D86E0;
  v55 = (v57 + 233);
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v55, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v55->__r_.__value_.__l.__data_ = *&v224.__r_.__value_.__l.__data_;
    v57[235] = *(&v224.__r_.__value_.__l + 2);
  }

  *(v57 + 472) = v225;
  v57[232] = &unk_1F50D8958;
  *(v57 + 1892) = v226;
  *(v57 + 475) = v227;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v131 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  return v57;
}

void sub_1D5999368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _Unwind_Exception *exception_objecta, void **a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(v72 + 80);
  STACK[0x318] = a69;
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  STACK[0x348] = a70;
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  STACK[0x378] = a71;
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  STACK[0x3A8] = a72;
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3D8] = STACK[0x200];
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  STACK[0x408] = STACK[0x208];
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  STACK[0x438] = STACK[0x210];
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  STACK[0x468] = STACK[0x218];
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  STACK[0x498] = STACK[0x220];
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  STACK[0x4C8] = STACK[0x228];
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  STACK[0x4F8] = STACK[0x230];
  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  STACK[0x528] = STACK[0x238];
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  STACK[0x558] = STACK[0x240];
  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  STACK[0x588] = STACK[0x248];
  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  STACK[0x5B8] = STACK[0x250];
  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  STACK[0x5E8] = STACK[0x258];
  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(STACK[0x5F0]);
  }

  STACK[0x618] = STACK[0x260];
  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  STACK[0x648] = STACK[0x268];
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  STACK[0x678] = STACK[0x270];
  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(STACK[0x680]);
  }

  STACK[0x6A8] = STACK[0x278];
  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(STACK[0x6B0]);
  }

  STACK[0x6D8] = STACK[0x280];
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  STACK[0x708] = STACK[0x288];
  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(STACK[0x710]);
  }

  STACK[0x738] = STACK[0x290];
  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(STACK[0x740]);
  }

  STACK[0x768] = STACK[0x298];
  if (SLOBYTE(STACK[0x787]) < 0)
  {
    operator delete(STACK[0x770]);
  }

  STACK[0x798] = STACK[0x2A0];
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  STACK[0x7C8] = STACK[0x2A8];
  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(STACK[0x7D0]);
  }

  STACK[0x7F8] = STACK[0x2B0];
  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(STACK[0x800]);
  }

  STACK[0x828] = STACK[0x2B8];
  if (SLOBYTE(STACK[0x847]) < 0)
  {
    operator delete(STACK[0x830]);
  }

  STACK[0x858] = STACK[0x2C0];
  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(STACK[0x860]);
  }

  STACK[0x888] = STACK[0x2C8];
  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(STACK[0x890]);
  }

  STACK[0x8B8] = STACK[0x2D0];
  if (SLOBYTE(STACK[0x8D7]) < 0)
  {
    operator delete(STACK[0x8C0]);
  }

  STACK[0x8E8] = STACK[0x2D8];
  if (SLOBYTE(STACK[0x907]) < 0)
  {
    operator delete(STACK[0x8F0]);
  }

  STACK[0x918] = STACK[0x2E0];
  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  STACK[0x948] = STACK[0x2E8];
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  STACK[0x978] = STACK[0x2F0];
  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(STACK[0x980]);
  }

  STACK[0x9A8] = STACK[0x2F8];
  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(STACK[0x9B0]);
  }

  STACK[0x9D8] = STACK[0x300];
  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
  }

  STACK[0xA08] = STACK[0x308];
  if (SLOBYTE(STACK[0xA27]) < 0)
  {
    operator delete(STACK[0xA10]);
  }

  if (*(STACK[0x310] + 79) < 0)
  {
    operator delete(*a41);
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(STACK[0x310]);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v38 = MEMORY[0x1EEE9AC00]();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v39;
  v52 = v51;
  v53 = v38;
  v214 = &unk_1F50D86E0;
  if (*(v39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, *(v39 + 8), *(v39 + 16));
  }

  else
  {
    v215 = *(v39 + 8);
  }

  v216 = *(v50 + 32);
  v214 = &unk_1F50D8958;
  v217 = *(v50 + 36);
  v218 = *(v50 + 44);
  v210 = &unk_1F50D86E0;
  if (*(v49 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v49 + 8), *(v49 + 16));
  }

  else
  {
    __s = *(v49 + 8);
  }

  v212 = *(v49 + 32);
  v210 = &unk_1F50D8978;
  v213 = *(v49 + 36);
  v205 = &unk_1F50D86E0;
  if (*(v47 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, *(v47 + 8), *(v47 + 16));
  }

  else
  {
    v206 = *(v47 + 8);
  }

  v207 = *(v47 + 32);
  v205 = &unk_1F50D8958;
  v208 = *(v47 + 36);
  v209 = *(v47 + 44);
  v200 = &unk_1F50D86E0;
  if (*(v45 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, *(v45 + 8), *(v45 + 16));
  }

  else
  {
    v201 = *(v45 + 8);
  }

  v202 = *(v45 + 32);
  v200 = &unk_1F50D8958;
  v203 = *(v45 + 36);
  v204 = *(v45 + 44);
  v196 = &unk_1F50D86E0;
  if (*(v43 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, *(v43 + 8), *(v43 + 16));
  }

  else
  {
    v197 = *(v43 + 8);
  }

  v198 = *(v43 + 32);
  v196 = &unk_1F50D8978;
  v199 = *(v43 + 36);
  v191 = &unk_1F50D86E0;
  if (*(v41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, *(v41 + 8), *(v41 + 16));
  }

  else
  {
    v192 = *(v41 + 8);
  }

  v193 = *(v41 + 32);
  v191 = &unk_1F50D8958;
  v194 = *(v41 + 36);
  v195 = *(v41 + 44);
  v187 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v188 = *(a9 + 8);
  }

  v189 = *(a9 + 32);
  v187 = &unk_1F50D8978;
  v190 = *(a9 + 36);
  v182 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v183 = *(a10 + 8);
  }

  v184 = *(a10 + 32);
  v182 = &unk_1F50D8958;
  v185 = *(a10 + 36);
  v186 = *(a10 + 44);
  v177 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v178 = *(a11 + 8);
  }

  v179 = *(a11 + 32);
  v177 = &unk_1F50D8958;
  v180 = *(a11 + 36);
  v181 = *(a11 + 44);
  v173 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v174 = *(a12 + 8);
  }

  v175 = *(a12 + 32);
  v173 = &unk_1F50D8978;
  v176 = *(a12 + 36);
  v168 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v169 = *(a13 + 8);
  }

  v170 = *(a13 + 32);
  v168 = &unk_1F50D8958;
  v171 = *(a13 + 36);
  v172 = *(a13 + 44);
  v163 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v164 = *(a14 + 8);
  }

  v165 = *(a14 + 32);
  v163 = &unk_1F50D8958;
  v166 = *(a14 + 36);
  v167 = *(a14 + 44);
  v159 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v160, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v160 = *(a15 + 8);
  }

  v161 = *(a15 + 32);
  v159 = &unk_1F50D8978;
  v162 = *(a15 + 36);
  v154 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v155 = *(a16 + 8);
  }

  v156 = *(a16 + 32);
  v154 = &unk_1F50D8958;
  v157 = *(a16 + 36);
  v158 = *(a16 + 44);
  v149 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v150 = *(a17 + 8);
  }

  v151 = *(a17 + 32);
  v149 = &unk_1F50D8958;
  v152 = *(a17 + 36);
  v153 = *(a17 + 44);
  v145 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v146 = *(a18 + 8);
  }

  v147 = *(a18 + 32);
  v145 = &unk_1F50D8978;
  v148 = *(a18 + 36);
  v140 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v141 = *(a19 + 8);
  }

  v142 = *(a19 + 32);
  v140 = &unk_1F50D8958;
  v143 = *(a19 + 36);
  v144 = *(a19 + 44);
  v135 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v136 = *(a20 + 8);
  }

  v137 = *(a20 + 32);
  v135 = &unk_1F50D8958;
  v138 = *(a20 + 36);
  v139 = *(a20 + 44);
  v131 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v132 = *(a21 + 8);
  }

  v133 = *(a21 + 32);
  v131 = &unk_1F50D8978;
  v134 = *(a21 + 36);
  v127 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v128 = *(a22 + 8);
  }

  v129 = *(a22 + 32);
  v127 = &unk_1F50D8978;
  v130 = *(a22 + 36);
  v123 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v124 = *(a23 + 8);
  }

  v125 = *(a23 + 32);
  v123 = &unk_1F50D8978;
  v126 = *(a23 + 36);
  v119 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v120 = *(a24 + 8);
  }

  v121 = *(a24 + 32);
  v119 = &unk_1F50D8978;
  v122 = *(a24 + 36);
  v114 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v115 = *(a25 + 8);
  }

  v116 = *(a25 + 32);
  v114 = &unk_1F50D8958;
  v117 = *(a25 + 36);
  v118 = *(a25 + 44);
  v109 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a26 + 8), *(a26 + 16));
  }

  else
  {
    v110 = *(a26 + 8);
  }

  v111 = *(a26 + 32);
  v109 = &unk_1F50D8958;
  v112 = *(a26 + 36);
  v113 = *(a26 + 44);
  v105 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v106 = *(a27 + 8);
  }

  v107 = *(a27 + 32);
  v105 = &unk_1F50D8978;
  v108 = *(a27 + 36);
  v101 = &unk_1F50D86E0;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a28 + 8), *(a28 + 16));
  }

  else
  {
    v102 = *(a28 + 8);
  }

  v103 = *(a28 + 32);
  v101 = &unk_1F50D8978;
  v104 = *(a28 + 36);
  v97 = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v98 = *(a29 + 8);
  }

  v99 = *(a29 + 32);
  v97 = &unk_1F50D8978;
  v100 = *(a29 + 36);
  v93 = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v94 = *(a30 + 8);
  }

  v95 = *(a30 + 32);
  v93 = &unk_1F50D8978;
  v96 = *(a30 + 36);
  v89 = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v90 = *(a31 + 8);
  }

  v91 = *(a31 + 32);
  v89 = &unk_1F50D8978;
  v92 = *(a31 + 36);
  v85 = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v86 = *(a32 + 8);
  }

  v87 = *(a32 + 32);
  v85 = &unk_1F50D8978;
  v88 = *(a32 + 36);
  v81 = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v82 = *(a33 + 8);
  }

  v83 = *(a33 + 32);
  v81 = &unk_1F50D8978;
  v84 = *(a33 + 36);
  v76 = &unk_1F50D86E0;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, *(a34 + 8), *(a34 + 16));
  }

  else
  {
    v77 = *(a34 + 8);
  }

  v78 = *(a34 + 32);
  v76 = &unk_1F50D8958;
  v79 = *(a34 + 36);
  v80 = *(a34 + 44);
  v72 = &unk_1F50D86E0;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *(a35 + 8), *(a35 + 16));
  }

  else
  {
    v73 = *(a35 + 8);
  }

  v74 = *(a35 + 32);
  v72 = &unk_1F50D8978;
  v75 = *(a35 + 36);
  v67 = &unk_1F50D86E0;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(a36 + 8), *(a36 + 16));
  }

  else
  {
    v68 = *(a36 + 8);
  }

  v69 = *(a36 + 32);
  v67 = &unk_1F50D8958;
  v70 = *(a36 + 36);
  v71 = *(a36 + 44);
  v62 = &unk_1F50D86E0;
  if (*(a37 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a37 + 8), *(a37 + 16));
  }

  else
  {
    v63 = *(a37 + 8);
  }

  v64 = *(a37 + 32);
  v62 = &unk_1F50D8958;
  v65 = *(a37 + 36);
  v66 = *(a37 + 44);
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a38 + 8), *(a38 + 16));
  }

  else
  {
    v58 = *(a38 + 8);
  }

  v59 = *(a38 + 32);
  v60 = *(a38 + 36);
  v61 = *(a38 + 44);
  v372 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v373, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v373 = __s;
  }

  v374 = v212;
  v372 = &unk_1F50D8978;
  v375 = v213;
  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v368, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v368 = v206;
  }

  v369 = v207;
  v367 = &unk_1F50D8958;
  v370 = v208;
  v371 = v209;
  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v363, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v363 = v201;
  }

  v364 = v202;
  v362 = &unk_1F50D8958;
  v365 = v203;
  v366 = v204;
  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = v197;
  }

  v360 = v198;
  v358 = &unk_1F50D8978;
  v361 = v199;
  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v354, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v354 = v192;
  }

  v355 = v193;
  v353 = &unk_1F50D8958;
  v356 = v194;
  v357 = v195;
  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v188;
  }

  v351 = v189;
  v349 = &unk_1F50D8978;
  v352 = v190;
  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v183;
  }

  v346 = v184;
  v344 = &unk_1F50D8958;
  v347 = v185;
  v348 = v186;
  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v340, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v340 = v178;
  }

  v341 = v179;
  v339 = &unk_1F50D8958;
  v342 = v180;
  v343 = v181;
  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v174;
  }

  v337 = v175;
  v335 = &unk_1F50D8978;
  v338 = v176;
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v169;
  }

  v332 = v170;
  v330 = &unk_1F50D8958;
  v333 = v171;
  v334 = v172;
  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v164;
  }

  v327 = v165;
  v325 = &unk_1F50D8958;
  v328 = v166;
  v329 = v167;
  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v322, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v322 = v160;
  }

  v323 = v161;
  v321 = &unk_1F50D8978;
  v324 = v162;
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v155;
  }

  v318 = v156;
  v316 = &unk_1F50D8958;
  v319 = v157;
  v320 = v158;
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v150;
  }

  v313 = v151;
  v311 = &unk_1F50D8958;
  v314 = v152;
  v315 = v153;
  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = v146;
  }

  v309 = v147;
  v307 = &unk_1F50D8978;
  v310 = v148;
  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v141;
  }

  v304 = v142;
  v302 = &unk_1F50D8958;
  v305 = v143;
  v306 = v144;
  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v136;
  }

  v299 = v137;
  v297 = &unk_1F50D8958;
  v300 = v138;
  v301 = v139;
  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v132;
  }

  v295 = v133;
  v293 = &unk_1F50D8978;
  v296 = v134;
  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v128;
  }

  v291 = v129;
  v289 = &unk_1F50D8978;
  v292 = v130;
  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v124;
  }

  v287 = v125;
  v285 = &unk_1F50D8978;
  v288 = v126;
  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v120;
  }

  v283 = v121;
  v281 = &unk_1F50D8978;
  v284 = v122;
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v115;
  }

  v278 = v116;
  v276 = &unk_1F50D8958;
  v279 = v117;
  v280 = v118;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v110;
  }

  v273 = v111;
  v271 = &unk_1F50D8958;
  v274 = v112;
  v275 = v113;
  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v106;
  }

  v269 = v107;
  v267 = &unk_1F50D8978;
  v270 = v108;
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v102;
  }

  v265 = v103;
  v263 = &unk_1F50D8978;
  v266 = v104;
  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v260, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v260 = v98;
  }

  v261 = v99;
  v259 = &unk_1F50D8978;
  v262 = v100;
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v94;
  }

  v257 = v95;
  v255 = &unk_1F50D8978;
  v258 = v96;
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v252 = v90;
  }

  v253 = v91;
  v251 = &unk_1F50D8978;
  v254 = v92;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v86;
  }

  v249 = v87;
  v247 = &unk_1F50D8978;
  v250 = v88;
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v82;
  }

  v245 = v83;
  v243 = &unk_1F50D8978;
  v246 = v84;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v77;
  }

  v240 = v78;
  v238 = &unk_1F50D8958;
  v241 = v79;
  v242 = v80;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v73;
  }

  v236 = v74;
  v234 = &unk_1F50D8978;
  v237 = v75;
  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v68;
  }

  v231 = v69;
  v229 = &unk_1F50D8958;
  v232 = v70;
  v233 = v71;
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v63;
  }

  v226 = v64;
  v224 = &unk_1F50D8958;
  v227 = v65;
  v228 = v66;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v58;
  }

  v221 = v59;
  v219 = &unk_1F50D8958;
  v222 = v60;
  v223 = v61;
  mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(v53, &v372, &v367, &v362, &v358, &v353, &v349, &v344, &v339, &v335, &v330, &v325, &v321, &v316, &v311, &v307, &v302, &v297, &v293, &v289, &v285, &v281, &v276, &v271, &v267, &v263, &v259, &v255, &v251, &v247, &v243, &v238, &v234, &v229, &v224, &v219);
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v286.__r_.__value_.__l.__data_);
  }

  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v290.__r_.__value_.__l.__data_);
  }

  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298.__r_.__value_.__l.__data_);
  }

  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v322.__r_.__value_.__l.__data_);
  }

  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v326.__r_.__value_.__l.__data_);
  }

  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331.__r_.__value_.__l.__data_);
  }

  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v336.__r_.__value_.__l.__data_);
  }

  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v340.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v340.__r_.__value_.__l.__data_);
  }

  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v345.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v345.__r_.__value_.__l.__data_);
  }

  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v350.__r_.__value_.__l.__data_);
  }

  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v354.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v354.__r_.__value_.__l.__data_);
  }

  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v359.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v359.__r_.__value_.__l.__data_);
  }

  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v363.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v363.__r_.__value_.__l.__data_);
  }

  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v368.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v368.__r_.__value_.__l.__data_);
  }

  v372 = &unk_1F50D86E0;
  if (SHIBYTE(v373.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v373.__r_.__value_.__l.__data_);
  }

  *(v53 + 1680) = &unk_1F50D86E0;
  v54 = (v53 + 1688);
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v54, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v54->__r_.__value_.__l.__data_ = *&v215.__r_.__value_.__l.__data_;
    *(v53 + 1704) = *(&v215.__r_.__value_.__l + 2);
  }

  *(v53 + 1712) = v216;
  *(v53 + 1680) = &unk_1F50D8958;
  *(v53 + 1716) = v217;
  *(v53 + 1724) = v218;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v131 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  *(v53 + 1728) = &unk_1F50D86E0;
  v55 = (v53 + 1736);
  if (*(v52 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v55, *(v52 + 8), *(v52 + 16));
  }

  else
  {
    v56 = *(v52 + 8);
    *(v53 + 1752) = *(v52 + 24);
    *&v55->__r_.__value_.__l.__data_ = v56;
  }

  *(v53 + 1760) = *(v52 + 32);
  *(v53 + 1728) = &unk_1F50D8978;
  *(v53 + 1764) = *(v52 + 36);
  return v53;
}

uint64_t mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1680) = &unk_1F50D86E0;
  if (*(a1 + 1711) < 0)
  {
    operator delete(*(a1 + 1688));
  }

  *(a1 + 1632) = &unk_1F50D86E0;
  if (*(a1 + 1663) < 0)
  {
    operator delete(*(a1 + 1640));
  }

  *(a1 + 1584) = &unk_1F50D86E0;
  if (*(a1 + 1615) < 0)
  {
    operator delete(*(a1 + 1592));
  }

  *(a1 + 1536) = &unk_1F50D86E0;
  if (*(a1 + 1567) < 0)
  {
    operator delete(*(a1 + 1544));
  }

  *(a1 + 1488) = &unk_1F50D86E0;
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  *(a1 + 1440) = &unk_1F50D86E0;
  if (*(a1 + 1471) < 0)
  {
    operator delete(*(a1 + 1448));
  }

  *(a1 + 1392) = &unk_1F50D86E0;
  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  return mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1536) = &unk_1F50D86E0;
  if (*(a1 + 1567) < 0)
  {
    operator delete(*(a1 + 1544));
  }

  *(a1 + 1488) = &unk_1F50D86E0;
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  *(a1 + 1440) = &unk_1F50D86E0;
  if (*(a1 + 1471) < 0)
  {
    operator delete(*(a1 + 1448));
  }

  *(a1 + 1392) = &unk_1F50D86E0;
  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  return mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v195 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v196 = *(a3 + 8);
  }

  v197 = *(a3 + 32);
  v195 = &unk_1F50D8958;
  v198 = *(a3 + 36);
  v199 = *(a3 + 44);
  v190 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v192 = *(a4 + 32);
  v190 = &unk_1F50D8958;
  v193 = *(a4 + 36);
  v194 = *(a4 + 44);
  v186 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v187 = *(a5 + 8);
  }

  v188 = *(a5 + 32);
  v186 = &unk_1F50D8978;
  v189 = *(a5 + 36);
  v181 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v182 = *(a6 + 8);
  }

  v183 = *(a6 + 32);
  v181 = &unk_1F50D8958;
  v184 = *(a6 + 36);
  v185 = *(a6 + 44);
  v177 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v178 = *(a7 + 8);
  }

  v179 = *(a7 + 32);
  v177 = &unk_1F50D8978;
  v180 = *(a7 + 36);
  v172 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v173, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v173 = *(a8 + 8);
  }

  v174 = *(a8 + 32);
  v172 = &unk_1F50D8958;
  v175 = *(a8 + 36);
  v176 = *(a8 + 44);
  v167 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v168 = *(a9 + 8);
  }

  v169 = *(a9 + 32);
  v167 = &unk_1F50D8958;
  v170 = *(a9 + 36);
  v171 = *(a9 + 44);
  v163 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v164 = *(a10 + 8);
  }

  v165 = *(a10 + 32);
  v163 = &unk_1F50D8978;
  v166 = *(a10 + 36);
  v158 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v159 = *(a11 + 8);
  }

  v160 = *(a11 + 32);
  v158 = &unk_1F50D8958;
  v161 = *(a11 + 36);
  v162 = *(a11 + 44);
  v153 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v154 = *(a12 + 8);
  }

  v155 = *(a12 + 32);
  v153 = &unk_1F50D8958;
  v156 = *(a12 + 36);
  v157 = *(a12 + 44);
  v149 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v150 = *(a13 + 8);
  }

  v151 = *(a13 + 32);
  v149 = &unk_1F50D8978;
  v152 = *(a13 + 36);
  v144 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v145 = *(a14 + 8);
  }

  v146 = *(a14 + 32);
  v144 = &unk_1F50D8958;
  v147 = *(a14 + 36);
  v148 = *(a14 + 44);
  v139 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v140 = *(a15 + 8);
  }

  v141 = *(a15 + 32);
  v139 = &unk_1F50D8958;
  v142 = *(a15 + 36);
  v143 = *(a15 + 44);
  v135 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v136 = *(a16 + 8);
  }

  v137 = *(a16 + 32);
  v135 = &unk_1F50D8978;
  v138 = *(a16 + 36);
  v130 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v131 = *(a17 + 8);
  }

  v132 = *(a17 + 32);
  v130 = &unk_1F50D8958;
  v133 = *(a17 + 36);
  v134 = *(a17 + 44);
  v125 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v126 = *(a18 + 8);
  }

  v127 = *(a18 + 32);
  v125 = &unk_1F50D8958;
  v128 = *(a18 + 36);
  v129 = *(a18 + 44);
  v121 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v122 = *(a19 + 8);
  }

  v123 = *(a19 + 32);
  v121 = &unk_1F50D8978;
  v124 = *(a19 + 36);
  v117 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v118 = *(a20 + 8);
  }

  v119 = *(a20 + 32);
  v117 = &unk_1F50D8978;
  v120 = *(a20 + 36);
  v113 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v114 = *(a21 + 8);
  }

  v115 = *(a21 + 32);
  v113 = &unk_1F50D8978;
  v116 = *(a21 + 36);
  v109 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v110 = *(a22 + 8);
  }

  v111 = *(a22 + 32);
  v109 = &unk_1F50D8978;
  v112 = *(a22 + 36);
  v104 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v105 = *(a23 + 8);
  }

  v106 = *(a23 + 32);
  v104 = &unk_1F50D8958;
  v107 = *(a23 + 36);
  v108 = *(a23 + 44);
  v99 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v100, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v100 = *(a24 + 8);
  }

  v101 = *(a24 + 32);
  v99 = &unk_1F50D8958;
  v102 = *(a24 + 36);
  v103 = *(a24 + 44);
  v95 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v96 = *(a25 + 8);
  }

  v97 = *(a25 + 32);
  v95 = &unk_1F50D8978;
  v98 = *(a25 + 36);
  v91 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(a26 + 8), *(a26 + 16));
  }

  else
  {
    v92 = *(a26 + 8);
  }

  v93 = *(a26 + 32);
  v91 = &unk_1F50D8978;
  v94 = *(a26 + 36);
  v87 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v88 = *(a27 + 8);
  }

  v89 = *(a27 + 32);
  v87 = &unk_1F50D8978;
  v90 = *(a27 + 36);
  v83 = &unk_1F50D86E0;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, *(a28 + 8), *(a28 + 16));
  }

  else
  {
    v84 = *(a28 + 8);
  }

  v85 = *(a28 + 32);
  v83 = &unk_1F50D8978;
  v86 = *(a28 + 36);
  v79 = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v80 = *(a29 + 8);
  }

  v81 = *(a29 + 32);
  v79 = &unk_1F50D8978;
  v82 = *(a29 + 36);
  v75 = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v76 = *(a30 + 8);
  }

  v77 = *(a30 + 32);
  v75 = &unk_1F50D8978;
  v78 = *(a30 + 36);
  v71 = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v72 = *(a31 + 8);
  }

  v73 = *(a31 + 32);
  v71 = &unk_1F50D8978;
  v74 = *(a31 + 36);
  v66 = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v67 = *(a32 + 8);
  }

  v68 = *(a32 + 32);
  v66 = &unk_1F50D8958;
  v69 = *(a32 + 36);
  v70 = *(a32 + 44);
  v62 = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v63 = *(a33 + 8);
  }

  v64 = *(a33 + 32);
  v62 = &unk_1F50D8978;
  v65 = *(a33 + 36);
  v57 = &unk_1F50D86E0;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a34 + 8), *(a34 + 16));
  }

  else
  {
    v58 = *(a34 + 8);
  }

  v59 = *(a34 + 32);
  v57 = &unk_1F50D8958;
  v60 = *(a34 + 36);
  v61 = *(a34 + 44);
  v52 = &unk_1F50D86E0;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a35 + 8), *(a35 + 16));
  }

  else
  {
    v53 = *(a35 + 8);
  }

  v54 = *(a35 + 32);
  v52 = &unk_1F50D8958;
  v55 = *(a35 + 36);
  v56 = *(a35 + 44);
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a36 + 8), *(a36 + 16));
  }

  else
  {
    v48 = *(a36 + 8);
  }

  v49 = *(a36 + 32);
  v50 = *(a36 + 36);
  v51 = *(a36 + 44);
  v343 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = __s;
  }

  v345 = v192;
  v343 = &unk_1F50D8958;
  v346 = v193;
  v347 = v194;
  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v340, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v340 = v187;
  }

  v341 = v188;
  v339 = &unk_1F50D8978;
  v342 = v189;
  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v335, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v335 = v182;
  }

  v336 = v183;
  v334 = &unk_1F50D8958;
  v337 = v184;
  v338 = v185;
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v178;
  }

  v332 = v179;
  v330 = &unk_1F50D8978;
  v333 = v180;
  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v173;
  }

  v327 = v174;
  v325 = &unk_1F50D8958;
  v328 = v175;
  v329 = v176;
  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v168;
  }

  v322 = v169;
  v320 = &unk_1F50D8958;
  v323 = v170;
  v324 = v171;
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v164;
  }

  v318 = v165;
  v316 = &unk_1F50D8978;
  v319 = v166;
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v159;
  }

  v313 = v160;
  v311 = &unk_1F50D8958;
  v314 = v161;
  v315 = v162;
  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v154;
  }

  v308 = v155;
  v306 = &unk_1F50D8958;
  v309 = v156;
  v310 = v157;
  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v150;
  }

  v304 = v151;
  v302 = &unk_1F50D8978;
  v305 = v152;
  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v145;
  }

  v299 = v146;
  v297 = &unk_1F50D8958;
  v300 = v147;
  v301 = v148;
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v140;
  }

  v294 = v141;
  v292 = &unk_1F50D8958;
  v295 = v142;
  v296 = v143;
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v289, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v289 = v136;
  }

  v290 = v137;
  v288 = &unk_1F50D8978;
  v291 = v138;
  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v284, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v284 = v131;
  }

  v285 = v132;
  v283 = &unk_1F50D8958;
  v286 = v133;
  v287 = v134;
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v126;
  }

  v280 = v127;
  v278 = &unk_1F50D8958;
  v281 = v128;
  v282 = v129;
  v274 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v275, v122.__r_.__value_.__l.__data_, v122.__r_.__value_.__l.__size_);
  }

  else
  {
    v275 = v122;
  }

  v276 = v123;
  v274 = &unk_1F50D8978;
  v277 = v124;
  v270 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v271, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v271 = v118;
  }

  v272 = v119;
  v270 = &unk_1F50D8978;
  v273 = v120;
  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v114;
  }

  v268 = v115;
  v266 = &unk_1F50D8978;
  v269 = v116;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v110;
  }

  v264 = v111;
  v262 = &unk_1F50D8978;
  v265 = v112;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v105;
  }

  v259 = v106;
  v257 = &unk_1F50D8958;
  v260 = v107;
  v261 = v108;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v100;
  }

  v254 = v101;
  v252 = &unk_1F50D8958;
  v255 = v102;
  v256 = v103;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v96;
  }

  v250 = v97;
  v248 = &unk_1F50D8978;
  v251 = v98;
  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v245, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v245 = v92;
  }

  v246 = v93;
  v244 = &unk_1F50D8978;
  v247 = v94;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v88;
  }

  v242 = v89;
  v240 = &unk_1F50D8978;
  v243 = v90;
  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v237, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v237 = v84;
  }

  v238 = v85;
  v236 = &unk_1F50D8978;
  v239 = v86;
  v232 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v233, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v233 = v80;
  }

  v234 = v81;
  v232 = &unk_1F50D8978;
  v235 = v82;
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v76;
  }

  v230 = v77;
  v228 = &unk_1F50D8978;
  v231 = v78;
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v72;
  }

  v226 = v73;
  v224 = &unk_1F50D8978;
  v227 = v74;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v67;
  }

  v221 = v68;
  v219 = &unk_1F50D8958;
  v222 = v69;
  v223 = v70;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v63;
  }

  v217 = v64;
  v215 = &unk_1F50D8978;
  v218 = v65;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v58;
  }

  v212 = v59;
  v210 = &unk_1F50D8958;
  v213 = v60;
  v214 = v61;
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v53;
  }

  v207 = v54;
  v205 = &unk_1F50D8958;
  v208 = v55;
  v209 = v56;
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v48;
  }

  v202 = v49;
  v200 = &unk_1F50D8958;
  v203 = v50;
  v204 = v51;
  mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1, &v343, &v339, &v334, &v330, &v325, &v320, &v316, &v311, &v306, &v302, &v297, &v292, &v288, &v283, &v278, &v274, &v270, &v266, &v262, &v257, &v252, &v248, &v244, &v240, &v236, &v232, &v228, &v224, &v219, &v215, &v210, &v205, &v200);
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  v232 = &unk_1F50D86E0;
  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v233.__r_.__value_.__l.__data_);
  }

  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  v270 = &unk_1F50D86E0;
  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v271.__r_.__value_.__l.__data_);
  }

  v274 = &unk_1F50D86E0;
  if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v275.__r_.__value_.__l.__data_);
  }

  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v289.__r_.__value_.__l.__data_);
  }

  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298.__r_.__value_.__l.__data_);
  }

  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v326.__r_.__value_.__l.__data_);
  }

  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331.__r_.__value_.__l.__data_);
  }

  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v335.__r_.__value_.__l.__data_);
  }

  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v340.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v340.__r_.__value_.__l.__data_);
  }

  v343 = &unk_1F50D86E0;
  if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v344.__r_.__value_.__l.__data_);
  }

  *(a1 + 1584) = &unk_1F50D86E0;
  v44 = (a1 + 1592);
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v44, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v44->__r_.__value_.__l.__data_ = *&v196.__r_.__value_.__l.__data_;
    *(a1 + 1608) = *(&v196.__r_.__value_.__l + 2);
  }

  *(a1 + 1616) = v197;
  *(a1 + 1584) = &unk_1F50D8958;
  *(a1 + 1620) = v198;
  *(a1 + 1628) = v199;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v91 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  v113 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v121 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  v172 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  v190 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  *(a1 + 1632) = &unk_1F50D86E0;
  v45 = (a1 + 1640);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v45, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v46 = *(a2 + 8);
    *(a1 + 1656) = *(a2 + 24);
    *&v45->__r_.__value_.__l.__data_ = v46;
  }

  *(a1 + 1664) = *(a2 + 32);
  *(a1 + 1632) = &unk_1F50D8978;
  *(a1 + 1668) = *(a2 + 36);
  return a1;
}