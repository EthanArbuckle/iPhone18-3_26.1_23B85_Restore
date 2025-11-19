uint64_t cold_shard_get_document_index(uint64_t a1, std::string *this)
{
  v2 = this;
  std::string::resize(this, *(a1 + 32), 0);
  size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = v2;
    v2 = v2->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
  }

  v7[0] = v2;
  v7[1] = size;
  return preadvall(*(a1 + 88), v7, *(a1 + 40));
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<long long,int>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t __cold_shard_do_document_index_lookups_block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1[5];
  v5 = a4 + a3;
  if (v4 >= a3)
  {
    v6 = v5 >= v4;
    v7 = v5 == v4;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    return 4294967274;
  }

  v9 = a1[6];
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 24);
  while (1)
  {
    v12 = v11;
    v13 = *(v9 + 16 * v11);
    if (v13 >= a2)
    {
      break;
    }

    *(v10 + 24) = v12 + 1;
    v10 = *(a1[4] + 8);
    v11 = *(v10 + 24);
    if (v11 == ((a1[7] - v9) >> 4))
    {
      return 1;
    }
  }

  if (v13 == a2)
  {
    v14 = *(v9 + 16 * v12 + 8);
    v15 = a1[10];
    *(a1[9] + 8 * v14) = a3;
    *(v15 + 8 * v14) = a4;
    if (++*(*(a1[4] + 8) + 24) == ((a1[7] - v9) >> 4))
    {
      return 1;
    }
  }

  return 0;
}

void *std::vector<std::pair<long long,int>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 4) >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<long long,int>>>(v3 >> 4);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t cold_shard_document_index_iterate(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    result = v2_readVInt64(&v9, &v8, &v7);
    if (result)
    {
      break;
    }

    result = v2_readVInt64(&v9, &v8, &v6);
    if (result)
    {
      break;
    }

    result = v2_readVInt64(&v9, &v8, &v5);
    if (result)
    {
      break;
    }

    result = (*(a3 + 16))(a3, v7, v6, v5);
    if (result)
    {
      break;
    }

    if (!v8)
    {
      return 0;
    }
  }

  return result;
}

uint64_t v2_readVInt64(const unsigned __int8 **a1, unint64_t *a2, unint64_t *a3)
{
  *a3 = 0;
  v3 = *a2;
  if (!*a2)
  {
    return 4294967274;
  }

  v5 = *a1;
  v6 = *a1 + 1;
  *a1 = v6;
  v7 = *v5;
  v8 = *v5;
  *a2 = v3 - 1;
  if ((v7 & 0x80000000) == 0)
  {
    result = 0;
    *a3 = v8;
    return result;
  }

  if (v7 <= 0xBFu)
  {
    if (v3 != 1)
    {
      result = 0;
      *a3 = v5[1] | ((v8 & 0x3F) << 8);
      *a1 = (v5 + 2);
      v10 = v3 - 2;
LABEL_7:
      *a2 = v10;
      return result;
    }

    return 4294967274;
  }

  if (v7 <= 0xDFu)
  {
    v11 = v3 >= 3;
    v12 = v3 - 3;
    if (!v11)
    {
      return 4294967274;
    }

    result = 0;
    *a3 = ((v8 & 0x1F) << 16) | (v5[1] << 8) | v5[2];
    v13 = (v5 + 3);
LABEL_28:
    *a1 = v13;
    *a2 = v12;
    return result;
  }

  if (v7 <= 0xEFu)
  {
    v11 = v3 >= 4;
    v12 = v3 - 4;
    if (!v11)
    {
      return 4294967274;
    }

    result = 0;
    *a3 = ((v8 & 0xF) << 24) | (v5[1] << 16) | (v5[2] << 8) | v5[3];
    v13 = (v5 + 4);
    goto LABEL_28;
  }

  if (v7 <= 0xF7u)
  {
    v11 = v3 >= 5;
    v12 = v3 - 5;
    if (!v11)
    {
      return 4294967274;
    }

    result = 0;
    *a3 = ((v8 & 7) << 32) | (v5[1] << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
    v13 = (v5 + 5);
    goto LABEL_28;
  }

  if (v7 <= 0xFBu)
  {
    v11 = v3 >= 6;
    v12 = v3 - 6;
    if (!v11)
    {
      return 4294967274;
    }

    result = 0;
    *a3 = ((v8 & 3) << 40) | (v5[1] << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
    v13 = (v5 + 6);
    goto LABEL_28;
  }

  if (v7 <= 0xFDu)
  {
    v11 = v3 >= 7;
    v12 = v3 - 7;
    if (!v11)
    {
      return 4294967274;
    }

    result = 0;
    *a3 = ((v8 & 1) << 48) | (v5[1] << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
    v13 = (v5 + 7);
    goto LABEL_28;
  }

  if (v7 == 255)
  {
    if (v3 >= 9)
    {
      result = 0;
      *a3 = *v6;
      *a1 += 8;
      v10 = *a2 - 8;
      goto LABEL_7;
    }

    return 4294967274;
  }

  if (v3 < 8)
  {
    return 4294967274;
  }

  result = 0;
  *a3 = (v5[1] << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
  *a1 = (v5 + 8);
  *a2 = v3 - 8;
  return result;
}

void __destroy_helper_block_8_48c53_ZTSNSt3__16vectorINS_4pairIxiEENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 2) < *(result + 2))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 2);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 2);
      *(result + 2) = v6;
      *(a3 + 2) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 2);
      v15 = *(a2 + 2);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 2);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 2);
    *(result + 2) = v15;
    *(a2 + 2) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 2);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 2);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 2) = v18;
    *(a3 + 2) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 2);
    v9 = *(a2 + 2);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 2);
    v10 = *(a3 + 2);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 2) = v10;
  *(a3 + 2) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 2);
    v14 = *(a2 + 2);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 2) = v14;
    *(a2 + 2) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 2);
    v13 = *(result + 2);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 2);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

void std::vector<unsigned long long>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(v10);
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t cold_shard_delete_docs(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 56);
  *a4 = 0;
  a4[1] = v7;
  a4[2] = 0;
  v8 = a4 + 2;
  a4[3] = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = do_unpack_coldshard_docidx(a1, &v22, &v19, &__p);
  if (!v9)
  {
    v10 = __p;
    v11 = v17;
    if (__p != v17)
    {
      v12 = *a4;
      v13 = a4[3] + 1;
      do
      {
        v14 = *v10++;
        v12 += v14;
        *a4 = v12;
        a4[3] = v13++;
      }

      while (v10 != v11);
    }

    if (a2)
    {
      if (!(a2 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(a2);
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v25 = 0;
    std::__sort<std::__less<long long,long long> &,long long *>();
    if (!*v8 || (v9 = do_rebuild_coldshard_docidx(a1, &v22, &v19, &__p), !v9))
    {
      v9 = 0;
    }
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v9;
}

uint64_t do_unpack_coldshard_docidx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  document_index = cold_shard_get_document_index(a1, &__p);
  if (!document_index)
  {
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

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZL26do_unpack_coldshard_docidxP22ColdShardSearchContextRNSt3__16vectorIxNS1_9allocatorIxEEEERNS2_IyNS3_IyEEEES9_P18DeletionStatistics_block_invoke;
    v11[3] = &__block_descriptor_tmp_8_7962;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = a4;
    document_index = cold_shard_document_index_iterate(p_p, size, v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return document_index;
}

uint64_t do_erase_doc(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  while (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v13 + 1;
    do
    {
      v9 = v6;
      if (a3 >= 0x100)
      {
        v10 = 256;
      }

      else
      {
        v10 = a3;
      }

      *(v8 - 1) = v14;
      *v8 = v10;
      a3 -= v10;
      v7 += v10;
      ++v6;
      if (v9 > 0xE)
      {
        break;
      }

      v8 += 2;
    }

    while (a3);
    result = pwritevall(*(a1 + 88), v13, v6, *(a1 + 64) + a2);
    a2 += v7;
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = 0;
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t do_rebuild_coldshard_docidx(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  memset(&v30, 0, sizeof(v30));
  v5 = *a2;
  v6 = a2[1];
  if (((v6 - *a2) >> 3) >= 1)
  {
    v10 = 0;
    do
    {
      if (*(*a3 + 8 * v10) != -1)
      {
        v33 = 0u;
        v34 = 0u;
        *__s = 0u;
        v32 = 0u;
        v29.i64[0] = __s;
        v2_writeVInt64(&v29, *(v5 + 8 * v10));
        v2_writeVInt64(&v29, *(*a3 + 8 * v10));
        v2_writeVInt64(&v29, *(*a4 + 8 * v10));
        std::string::append(&v30, __s, v29.i64[0] - __s);
        v5 = *a2;
        v6 = a2[1];
      }

      ++v10;
    }

    while (v10 < ((v6 - v5) >> 3));
  }

  memset(__s, 0, sizeof(__s));
  *&v32 = 0;
  v29 = vextq_s8(*a1, *a1, 8uLL);
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](__s, &v29);
  v29 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](__s, &v29);
  v29 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](__s, &v29);
  v29 = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](__s, &v29);
  v11 = *__s;
  v12 = 126 - 2 * __clz((*&__s[8] - *__s) >> 4);
  v13 = *&__s[8] - *__s;
  v14 = (*__s + 16);
  if (*&__s[8] == *__s)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(*__s, *&__s[8], v15, 1);
  v16 = v13 >> 4;
  size = v30.__r_.__value_.__l.__size_;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v30.__r_.__value_.__l.__size_;
  }

  v19 = v16 & ~(v16 >> 31);
  v20 = (v13 >> 4) - 1;
  LODWORD(v16) = -1;
  while (1)
  {
    if (!v19)
    {
      v23 = -1;
      goto LABEL_20;
    }

    if (!v20)
    {
      break;
    }

    v21 = *(v14 - 1) + *(v14 - 2) + v18;
    --v20;
    v22 = *v14;
    v14 += 2;
    --v19;
    LODWORD(v16) = v16 + 1;
    if (v21 <= v22)
    {
      goto LABEL_19;
    }
  }

  v16 = (v13 >> 4) + 0xFFFFFFFF;
LABEL_19:
  v23 = v16;
LABEL_20:
  v24 = v11[2 * v23 + 1] + v11[2 * v23];
  if ((*(&v30.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (!v30.__r_.__value_.__l.__size_)
    {
      *(a1 + 40) = v24;
      goto LABEL_31;
    }

    v25 = v30.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v30.__r_.__value_.__s + 23))
    {
      LODWORD(size) = 0;
      *(a1 + 40) = v24;
LABEL_29:
      size = size;
      goto LABEL_31;
    }

    v25 = &v30;
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  v29.i64[0] = v25;
  v29.i64[1] = size;
  v26 = pwritevall(*(a1 + 88), &v29, 1, v24);
  if (v26)
  {
    goto LABEL_32;
  }

  LODWORD(size) = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  *(a1 + 40) = v24;
  if ((size & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  size = v30.__r_.__value_.__l.__size_;
LABEL_31:
  *(a1 + 32) = size;
  v29.i64[0] = a1;
  v29.i64[1] = 88;
  v26 = pwritevall(*(a1 + 88), &v29, 1, 0);
LABEL_32:
  operator delete(v11);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v191 = a2 - 3;
  v10 = a2 - 5;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v113 = *v8;
      v114 = *v11;
      if (*v8 >= *v11 && (v114 < v113 || *v9 >= v11[1]))
      {
        return result;
      }

      *v11 = v113;
      *v8 = v114;
      v115 = v11[1];
      v11[1] = *v9;
LABEL_343:
      *v9 = v115;
      return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v127 = v11 + 2;
      v129 = v11 == a2 || v127 == a2;
      if (a4)
      {
        if (v129)
        {
          return result;
        }

        v130 = 0;
        v131 = v11;
        while (1)
        {
          v132 = v131;
          v131 = v127;
          v133 = v132[2];
          v134 = *v132;
          if (v133 >= *v132)
          {
            if (v134 < v133)
            {
              goto LABEL_251;
            }

            v135 = v132[3];
            if (v135 >= v132[1])
            {
              goto LABEL_251;
            }
          }

          else
          {
            v135 = v132[3];
          }

          v132[2] = v134;
          v131[1] = v132[1];
          v136 = v11;
          if (v132 == v11)
          {
            goto LABEL_250;
          }

          v137 = v130;
          while (1)
          {
            v138 = *(v11 + v137 - 16);
            if (v133 >= v138)
            {
              break;
            }

            v139 = *(v11 + v137 - 8);
LABEL_244:
            v132 -= 2;
            v140 = (v11 + v137);
            *v140 = v138;
            v140[1] = v139;
            v137 -= 16;
            if (!v137)
            {
              v136 = v11;
              goto LABEL_250;
            }
          }

          if (v138 >= v133)
          {
            break;
          }

          v136 = v132;
LABEL_250:
          *v136 = v133;
          v136[1] = v135;
LABEL_251:
          v127 = v131 + 2;
          v130 += 16;
          if (v131 + 2 == a2)
          {
            return result;
          }
        }

        v136 = (v11 + v137);
        v139 = *(v11 + v137 - 8);
        if (v135 >= v139)
        {
          goto LABEL_250;
        }

        goto LABEL_244;
      }

      if (v129)
      {
        return result;
      }

      while (1)
      {
        v180 = v7;
        v7 = v127;
        v181 = v180[2];
        v182 = *v180;
        if (v181 < *v180)
        {
          break;
        }

        if (v182 >= v181)
        {
          v183 = v180[3];
          if (v183 < v180[1])
          {
            goto LABEL_320;
          }
        }

LABEL_326:
        v127 = v7 + 2;
        if (v7 + 2 == a2)
        {
          return result;
        }
      }

      v183 = v180[3];
      do
      {
        do
        {
LABEL_320:
          v184 = v180;
          v185 = v182;
          v186 = *(v180 - 2);
          v180 -= 2;
          v182 = v186;
          v187 = v180[3];
          v180[4] = v185;
          v180[5] = v187;
        }

        while (v181 < v186);
      }

      while (v182 >= v181 && v183 < *(v184 - 1));
      *v184 = v181;
      v184[1] = v183;
      goto LABEL_326;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v141 = (v12 - 2) >> 1;
      v142 = v141;
      while (1)
      {
        v143 = v142;
        if (v141 >= v142)
        {
          v144 = (2 * v142) | 1;
          v145 = &v11[2 * v144];
          if (2 * v143 + 2 < v12)
          {
            v146 = v145[2];
            if (*v145 < v146 || v146 >= *v145 && v145[1] < v145[3])
            {
              v145 += 2;
              v144 = 2 * v143 + 2;
            }
          }

          v147 = &v11[2 * v143];
          v148 = *v145;
          v149 = *v147;
          if (*v145 >= *v147)
          {
            if (v149 < v148)
            {
              v150 = v147[1];
LABEL_265:
              *v147 = v148;
              v147[1] = v145[1];
              if (v141 >= v144)
              {
                while (1)
                {
                  v152 = 2 * v144;
                  v144 = (2 * v144) | 1;
                  v151 = &v11[2 * v144];
                  v153 = v152 + 2;
                  if (v153 < v12)
                  {
                    result = v151[2];
                    if (*v151 < result || result >= *v151 && (result = v151[1], result < v151[3]))
                    {
                      v151 += 2;
                      v144 = v153;
                    }
                  }

                  v154 = *v151;
                  if (*v151 < v149 || v149 >= v154 && v151[1] < v150)
                  {
                    break;
                  }

                  *v145 = v154;
                  v145[1] = v151[1];
                  v145 = v151;
                  if (v141 < v144)
                  {
                    goto LABEL_267;
                  }
                }
              }

              v151 = v145;
LABEL_267:
              *v151 = v149;
              v151[1] = v150;
              goto LABEL_268;
            }

            v150 = v147[1];
            if (v145[1] >= v150)
            {
              goto LABEL_265;
            }
          }
        }

LABEL_268:
        v142 = v143 - 1;
        if (!v143)
        {
          while (1)
          {
            v156 = 0;
            v157 = *v11;
            v158 = v11[1];
            v159 = v11;
            do
            {
              v160 = v159;
              v161 = &v159[2 * v156];
              v159 = v161 + 2;
              v162 = 2 * v156;
              v156 = (2 * v156) | 1;
              v163 = v162 + 2;
              if (v163 < v12)
              {
                result = v161[4];
                v164 = v161[2];
                if (v164 < result || result >= v164 && (result = v161[3], result < v161[5]))
                {
                  v159 = v161 + 4;
                  v156 = v163;
                }
              }

              *v160 = *v159;
              v160[1] = v159[1];
            }

            while (v156 <= (v12 - 2) / 2);
            if (v159 == a2 - 2)
            {
              *v159 = v157;
              v159[1] = v158;
            }

            else
            {
              *v159 = *(a2 - 2);
              v159[1] = *(a2 - 1);
              *(a2 - 2) = v157;
              *(a2 - 1) = v158;
              v165 = (v159 - v11 + 16) >> 4;
              v166 = v165 - 2;
              if (v165 >= 2)
              {
                v167 = v166 >> 1;
                v168 = &v11[2 * (v166 >> 1)];
                v169 = *v168;
                v170 = *v159;
                if (*v168 < *v159)
                {
                  v155 = v159[1];
LABEL_294:
                  *v159 = v169;
                  v159[1] = v168[1];
                  if (v166 >= 2)
                  {
                    while (1)
                    {
                      v172 = v167 - 1;
                      v167 = (v167 - 1) >> 1;
                      v171 = &v11[2 * v167];
                      v173 = *v171;
                      if (*v171 >= v170)
                      {
                        if (v170 < v173)
                        {
                          break;
                        }

                        v174 = v171[1];
                        if (v174 >= v155)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v174 = v171[1];
                      }

                      *v168 = v173;
                      v168[1] = v174;
                      v168 = &v11[2 * v167];
                      if (v172 <= 1)
                      {
                        goto LABEL_301;
                      }
                    }
                  }

                  v171 = v168;
LABEL_301:
                  *v171 = v170;
                  v171[1] = v155;
                  goto LABEL_303;
                }

                if (v170 >= v169)
                {
                  v155 = v159[1];
                  if (v168[1] < v155)
                  {
                    goto LABEL_294;
                  }
                }
              }
            }

LABEL_303:
            a2 -= 2;
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = *v11;
      if (*v13 >= *v11 && (v16 < v15 || v13[1] >= v11[1]))
      {
        v23 = *v8;
        if (*v8 >= v15 && (v15 < v23 || *v9 >= v13[1]))
        {
          goto LABEL_44;
        }

        *v13 = v23;
        *v8 = v15;
        v24 = v13 + 1;
        v25 = v13[1];
        v13[1] = *v9;
        *v9 = v25;
        v26 = *v13;
        v27 = *v11;
        if (*v13 >= *v11 && (v27 < v26 || *v24 >= v11[1]))
        {
LABEL_44:
          v37 = v13 - 2;
          v38 = *(v13 - 2);
          v39 = v11[2];
          if (v38 >= v39 && (v39 < v38 || *(v13 - 1) >= v11[3]))
          {
            v42 = *(a2 - 4);
            if (v42 >= v38 && (v38 < v42 || *v191 >= *(v13 - 1)))
            {
              goto LABEL_66;
            }

            *v37 = v42;
            *(a2 - 4) = v38;
            v43 = v13 - 1;
            v44 = *(v13 - 1);
            *(v13 - 1) = *(a2 - 3);
            *(a2 - 3) = v44;
            v45 = *v37;
            v46 = v11[2];
            if (*v37 >= v46 && (v46 < v45 || *v43 >= v11[3]))
            {
LABEL_66:
              v55 = v13[2];
              v53 = v13 + 2;
              v54 = v55;
              v56 = v11[4];
              if (v55 >= v56 && (v56 < v54 || v53[1] >= v11[5]))
              {
                v59 = *(a2 - 6);
                if (v59 >= v54 && (v54 < v59 || *v10 >= v53[1]))
                {
                  goto LABEL_84;
                }

                *v53 = v59;
                *(a2 - 6) = v54;
                v60 = v53 + 1;
                v61 = v53[1];
                v53[1] = *(a2 - 5);
                *(a2 - 5) = v61;
                v62 = *v53;
                v63 = v11[4];
                if (*v53 >= v63 && (v63 < v62 || *v60 >= v11[5]))
                {
LABEL_84:
                  v68 = *v14;
                  v69 = *v37;
                  if (*v14 >= *v37 && (v69 < v68 || v14[1] >= v37[1]))
                  {
                    v73 = *v53;
                    if (*v53 >= v68)
                    {
                      if (v68 < v73)
                      {
                        goto LABEL_103;
                      }

                      v75 = v53[1];
                      v74 = v14[1];
                      if (v75 >= v74)
                      {
                        goto LABEL_103;
                      }
                    }

                    else
                    {
                      v74 = v14[1];
                      v75 = v53[1];
                    }

                    *v14 = v73;
                    v14[1] = v75;
                    v76 = (v14 + 1);
                    *v53 = v68;
                    v53[1] = v74;
                    if (v73 >= v69 && (v69 < v73 || v75 >= v37[1]))
                    {
                      v68 = v73;
                      goto LABEL_103;
                    }

                    *v37 = v73;
                    v71 = (v37 + 1);
                    *v14 = v69;
LABEL_102:
                    v79 = *v71;
                    *v71 = *v76;
                    *v76 = v79;
                    v68 = *v14;
LABEL_103:
                    v80 = *v11;
                    *v11 = v68;
                    v22 = v11 + 1;
                    *v14 = v80;
                    v30 = v14 + 1;
                    goto LABEL_104;
                  }

                  v70 = *v53;
                  if (*v53 < v68)
                  {
                    goto LABEL_86;
                  }

                  if (v68 >= v70)
                  {
                    v77 = v14[1];
                    if (v53[1] < v77)
                    {
LABEL_86:
                      *v37 = v70;
                      v71 = (v37 + 1);
                      *v53 = v69;
                      v72 = (v53 + 1);
LABEL_101:
                      v76 = v72;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v77 = v14[1];
                  }

                  *v14 = v69;
                  v78 = v37[1];
                  v14[1] = v78;
                  *v37 = v68;
                  v37[1] = v77;
                  if (v70 >= v69 && (v69 < v70 || v53[1] >= v78))
                  {
                    v68 = v69;
                    goto LABEL_103;
                  }

                  *v14 = v70;
                  *v53 = v69;
                  v72 = (v53 + 1);
                  v71 = (v14 + 1);
                  goto LABEL_101;
                }

                v11[4] = v62;
                *v53 = v63;
                v58 = v11 + 5;
LABEL_83:
                v67 = *v58;
                *v58 = *v60;
                *v60 = v67;
                goto LABEL_84;
              }

              v57 = *(a2 - 6);
              if (v57 < v54)
              {
                goto LABEL_68;
              }

              if (v54 >= v57)
              {
                v64 = v53[1];
                if (*v10 < v64)
                {
LABEL_68:
                  v11[4] = v57;
                  *(a2 - 6) = v56;
                  v58 = v11 + 5;
LABEL_82:
                  v60 = a2 - 5;
                  goto LABEL_83;
                }
              }

              else
              {
                v64 = v53[1];
              }

              v65 = v11[5];
              v11[4] = v54;
              v11[5] = v64;
              *v53 = v56;
              v53[1] = v65;
              v58 = v53 + 1;
              v66 = *(a2 - 6);
              if (v66 >= v56 && (v56 < v66 || *v10 >= v65))
              {
                goto LABEL_84;
              }

              *v53 = v66;
              *(a2 - 6) = v56;
              goto LABEL_82;
            }

            v11[2] = v45;
            *v37 = v46;
            v41 = v11 + 3;
LABEL_65:
            v52 = *v41;
            *v41 = *v43;
            *v43 = v52;
            goto LABEL_66;
          }

          v40 = *(a2 - 4);
          if (v40 < v38)
          {
            goto LABEL_46;
          }

          if (v38 >= v40)
          {
            v47 = *(v13 - 1);
            if (*v191 < v47)
            {
LABEL_46:
              v11[2] = v40;
              *(a2 - 4) = v39;
              v41 = v11 + 3;
LABEL_64:
              v43 = a2 - 3;
              goto LABEL_65;
            }
          }

          else
          {
            v47 = *(v13 - 1);
          }

          v50 = v11[3];
          v11[2] = v38;
          v11[3] = v47;
          *v37 = v39;
          *(v13 - 1) = v50;
          v41 = v13 - 1;
          v51 = *(a2 - 4);
          if (v51 >= v39 && (v39 < v51 || *v191 >= v50))
          {
            goto LABEL_66;
          }

          *v37 = v51;
          *(a2 - 4) = v39;
          goto LABEL_64;
        }

        *v11 = v26;
        v18 = v11 + 1;
        *v13 = v27;
LABEL_43:
        v36 = *v18;
        *v18 = *v24;
        *v24 = v36;
        goto LABEL_44;
      }

      v17 = *v8;
      if (*v8 < v15)
      {
        goto LABEL_15;
      }

      if (v15 >= v17)
      {
        v32 = v13[1];
        if (*v9 < v32)
        {
LABEL_15:
          *v11 = v17;
          v18 = v11 + 1;
LABEL_42:
          *v8 = v16;
          v24 = a2 - 1;
          goto LABEL_43;
        }
      }

      else
      {
        v32 = v13[1];
      }

      v34 = v11[1];
      *v11 = v15;
      v11[1] = v32;
      *v13 = v16;
      v13[1] = v34;
      v18 = v13 + 1;
      v35 = *v8;
      if (*v8 >= v16 && (v16 < v35 || *v9 >= v34))
      {
        goto LABEL_44;
      }

      *v13 = v35;
      goto LABEL_42;
    }

    v19 = *v11;
    v20 = *v14;
    if (*v11 < *v14 || v20 >= v19 && v11[1] < v14[1])
    {
      v21 = *v8;
      if (*v8 < v19)
      {
        goto LABEL_18;
      }

      if (v19 >= v21)
      {
        v33 = v11[1];
        if (*v9 >= v33)
        {
          goto LABEL_58;
        }

LABEL_18:
        *v14 = v21;
        *v8 = v20;
        v22 = v14 + 1;
      }

      else
      {
        v33 = v11[1];
LABEL_58:
        v48 = v14[1];
        *v14 = v19;
        v14[1] = v33;
        *v11 = v20;
        v11[1] = v48;
        v22 = v11 + 1;
        v49 = *v8;
        if (*v8 >= v20 && (v20 < v49 || *v9 >= v48))
        {
          v19 = v20;
          goto LABEL_105;
        }

        *v11 = v49;
        *v8 = v20;
      }

      v30 = a2 - 1;
LABEL_104:
      v81 = *v22;
      *v22 = *v30;
      *v30 = v81;
      v19 = *v11;
      goto LABEL_105;
    }

    v28 = *v8;
    if (*v8 < v19 || v19 >= v28 && *v9 < v11[1])
    {
      *v11 = v28;
      *v8 = v19;
      v30 = v11 + 1;
      v29 = v11[1];
      v11[1] = *v9;
      *v9 = v29;
      v19 = *v11;
      v31 = *v14;
      if (*v11 < *v14 || v31 >= v19 && *v30 < v14[1])
      {
        *v14 = v19;
        *v11 = v31;
        v22 = v14 + 1;
        goto LABEL_104;
      }
    }

LABEL_105:
    --a3;
    if (a4)
    {
      goto LABEL_109;
    }

    v82 = *(v11 - 2);
    if (v82 < v19)
    {
      goto LABEL_109;
    }

    if (v19 < v82)
    {
      v83 = v11[1];
      goto LABEL_178;
    }

    v83 = v11[1];
    if (*(v11 - 1) >= v83)
    {
LABEL_178:
      v99 = *v8;
      if (v19 < *v8 || v99 >= v19 && v83 < *v9)
      {
        do
        {
          v101 = v11[2];
          v11 += 2;
          v100 = v101;
        }

        while (v19 >= v101 && (v100 < v19 || v83 >= v11[1]));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = a2 - 2; v19 < v99 || v99 >= v19 && v83 < i[1]; i -= 2)
        {
          v103 = *(i - 2);
          v99 = v103;
        }
      }

      if (v11 < i)
      {
        v104 = *v11;
        v105 = *i;
        do
        {
          *v11 = v105;
          *i = v104;
          v106 = v11[1];
          v11[1] = i[1];
          i[1] = v106;
          do
          {
            v107 = v11[2];
            v11 += 2;
            v104 = v107;
          }

          while (v19 >= v107 && (v104 < v19 || v83 >= v11[1]));
          do
          {
            do
            {
              v108 = *(i - 2);
              i -= 2;
              v105 = v108;
            }

            while (v19 < v108);
          }

          while (v105 >= v19 && v83 < i[1]);
        }

        while (v11 < i);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      a4 = 0;
      *(v11 - 2) = v19;
      *(v11 - 1) = v83;
    }

    else
    {
LABEL_109:
      v84 = v11[1];
      for (j = v11 + 2; ; j += 2)
      {
        v86 = *j;
        if (*j >= v19 && (v19 < v86 || j[1] >= v84))
        {
          break;
        }
      }

      if (j - 2 == v11)
      {
        k = a2;
        if (j < a2)
        {
          v90 = *v8;
          k = a2 - 2;
          if (*v8 >= v19)
          {
            k = a2 - 2;
            do
            {
              if (v19 >= v90)
              {
                if (k[1] < v84 || j >= k)
                {
                  break;
                }
              }

              else if (j >= k)
              {
                break;
              }

              v92 = *(k - 2);
              k -= 2;
              v90 = v92;
            }

            while (v92 >= v19);
          }
        }
      }

      else
      {
        v87 = *v8;
        for (k = a2 - 2; v87 >= v19 && (v19 < v87 || k[1] >= v84); k -= 2)
        {
          v89 = *(k - 2);
          v87 = v89;
        }
      }

      v11 = j;
      if (j < k)
      {
        v93 = *k;
        v11 = j;
        v94 = k;
        do
        {
          *v11 = v93;
          *v94 = v86;
          v95 = v11[1];
          v11[1] = v94[1];
          v94[1] = v95;
          do
          {
            do
            {
              v96 = v11[2];
              v11 += 2;
              v86 = v96;
            }

            while (v96 < v19);
          }

          while (v19 >= v86 && v11[1] < v84);
          do
          {
            v97 = *(v94 - 2);
            v94 -= 2;
            v93 = v97;
          }

          while (v97 >= v19 && (v19 < v93 || v94[1] >= v84));
        }

        while (v11 < v94);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      *(v11 - 2) = v19;
      *(v11 - 1) = v84;
      if (j < k)
      {
LABEL_146:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v98 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(v7, v11 - 2);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(v11, a2);
        if (result)
        {
          a2 = v11 - 2;
          if (v98)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v98)
        {
          goto LABEL_146;
        }
      }
    }
  }

  if (v12 == 3)
  {
    v109 = v11[2];
    v110 = *v11;
    if (v109 >= *v11 && (v110 < v109 || v11[3] >= v11[1]))
    {
      v176 = *v8;
      if (*v8 >= v109 && (v109 < v176 || *v9 >= v11[3]))
      {
        return result;
      }

      v11[2] = v176;
      *v8 = v109;
      v177 = v11[3];
      v11[3] = *v9;
      *v9 = v177;
      v178 = v11[2];
      v179 = *v11;
      if (v178 >= *v11 && (v179 < v178 || v11[3] >= v11[1]))
      {
        return result;
      }

      *v11 = v178;
      v11[2] = v179;
      v112 = v11 + 1;
      v9 = v11 + 3;
      goto LABEL_342;
    }

    v111 = *v8;
    if (*v8 < v109)
    {
      goto LABEL_216;
    }

    if (v109 >= v111)
    {
      v188 = v11[3];
      if (*v9 < v188)
      {
LABEL_216:
        *v11 = v111;
        v112 = v11 + 1;
        *v8 = v110;
LABEL_342:
        v115 = *v112;
        *v112 = *v9;
        goto LABEL_343;
      }
    }

    else
    {
      v188 = v11[3];
    }

    v189 = v11[1];
    v11[3] = v189;
    *v11 = v109;
    v11[1] = v188;
    v11[2] = v110;
    v190 = *v8;
    if (*v8 >= v110 && (v110 < v190 || *v9 >= v189))
    {
      return result;
    }

    v11[2] = v190;
    *v8 = v110;
    v112 = v11 + 3;
    goto LABEL_342;
  }

  if (v12 == 4)
  {

    return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v11, v11 + 2, v11 + 4, a2 - 2);
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v11, v11 + 2, v11 + 4, v11 + 6);
  v116 = *v8;
  v117 = v11[6];
  if (*v8 < v117 || v117 >= v116 && *v9 < v11[7])
  {
    v11[6] = v116;
    *v8 = v117;
    v118 = v11[7];
    v11[7] = *v9;
    *v9 = v118;
    v119 = v11[6];
    v120 = v11[4];
    if (v119 >= v120)
    {
      if (v120 < v119)
      {
        return result;
      }

      v122 = v11[7];
      v121 = v11[5];
      if (v122 >= v121)
      {
        return result;
      }
    }

    else
    {
      v121 = v11[5];
      v122 = v11[7];
    }

    v11[4] = v119;
    v11[5] = v122;
    v11[6] = v120;
    v11[7] = v121;
    v123 = v11[2];
    if (v119 >= v123)
    {
      if (v123 < v119)
      {
        return result;
      }

      v124 = v11[3];
      if (v122 >= v124)
      {
        return result;
      }
    }

    else
    {
      v124 = v11[3];
    }

    v11[2] = v119;
    v11[3] = v122;
    v11[4] = v123;
    v11[5] = v124;
    v125 = *v11;
    if (v119 >= *v11)
    {
      if (v125 < v119)
      {
        return result;
      }

      v126 = v11[1];
      if (v122 >= v126)
      {
        return result;
      }
    }

    else
    {
      v126 = v11[1];
    }

    *v11 = v119;
    v11[1] = v122;
    v11[2] = v125;
    v11[3] = v126;
  }

  return result;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (*v45 >= *v25)
    {
      if (v49 < v48)
      {
        goto LABEL_82;
      }

      v50 = v45[1];
      if (v50 >= v25[1])
      {
        goto LABEL_82;
      }
    }

    else
    {
      v50 = v45[1];
    }

    *v45 = v49;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 16);
      if (v48 >= v53)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_75:
      v25 -= 2;
      *(v52 + 4) = v53;
      *(a1 + v51 + 40) = v54;
      v51 -= 16;
      if (v51 == -32)
      {
        v25 = a1;
        goto LABEL_81;
      }
    }

    if (v53 >= v48)
    {
      v54 = *(a1 + v51 + 24);
      if (v50 >= v54)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    v25 = (a1 + v51 + 32);
LABEL_81:
    *v25 = v48;
    v25[1] = v50;
    if (++v47 != 8)
    {
LABEL_82:
      v25 = v45;
      v46 += 16;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

uint64_t ___ZL26do_unpack_coldshard_docidxP22ColdShardSearchContextRNSt3__16vectorIxNS1_9allocatorIxEEEERNS2_IyNS3_IyEEEES9_P18DeletionStatistics_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v6 = a1[4];
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 3;
    v13 = (v11 >> 3) + 1;
    if (v13 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(v15);
    }

    *(8 * v12) = a2;
    v9 = 8 * v12 + 8;
    memcpy(0, v10, v11);
    v16 = *v6;
    *v6 = 0;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = a2;
    v9 = (v8 + 1);
  }

  *(v6 + 8) = v9;
  std::vector<unsigned long>::push_back[abi:nn200100](a1[5], &v19);
  std::vector<unsigned long>::push_back[abi:nn200100](a1[6], &v18);
  return 0;
}

uint64_t _allocatorGetProtectionClass(void *a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  else
  {
    return fcntl(a2, 63);
  }
}

BOOL _allocatorMatchAddress(_BOOL8 result, unint64_t a2)
{
  if (result)
  {
    v2 = *(result + 72);
    if (v2 >= 1)
    {
      v3 = (result + 96);
      for (i = 1; ; ++i)
      {
        v5 = *v3;
        if (*v3 && (v6 = v5[1], v6 + 1 >= 2) && v6 <= a2 && (v8 = v5[2], v6 - v8 + v5[3] > a2))
        {
          v7 = a2 - v6 + v8;
          if (i >= v2)
          {
            return v7 != -1;
          }
        }

        else
        {
          v7 = -1;
          if (i >= v2)
          {
            return v7 != -1;
          }
        }

        ++v3;
        if (v7 != -1)
        {
          return v7 != -1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t __current_vector_version_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = 9;
  }

  else
  {
    v1 = 7;
  }

  current_vector_version::vecVersion = v1;
  return result;
}

void IVFVectorIndex_s::unlink(std::string *this, const char *a2, const char *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!this || !a2)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__dst = 136315906;
      *&__dst[4] = "unlink";
      *&__dst[12] = 1024;
      *&__dst[14] = 4758;
      *&__dst[18] = 2048;
      *&__dst[20] = this;
      v38 = 2048;
      v39 = a2;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: IVFVectorIndex::unlink called with null path (%p) or prefix (%p)", __dst, 0x26u);
    }

    *__error() = v13;
    goto LABEL_46;
  }

  v5 = a3;
  memset(&__p, 0, sizeof(__p));
  v6 = (this - 1);
  v7 = (this - 1);
  do
  {
    v8 = v7->__r_.__value_.__s.__data_[1];
    v7 = (v7 + 1);
  }

  while (v8);
  std::string::append[abi:nn200100]<char const*,0>(&__p, this, v7);
  *&__ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  memset(__dst, 0, 24);
  do
  {
    v9 = v6->__r_.__value_.__s.__data_[1];
    v6 = (v6 + 1);
  }

  while (v9);
  v10 = std::string::append[abi:nn200100]<char const*,0>(__dst, this, v6);
  std::__fs::filesystem::__status(v10, &__ec);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (v33.__r_.__value_.__s.__data_[0] == 2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      val = __ec.__val_;
      std::error_code::message(&v33, &__ec);
      v24 = (v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v33 : v33.__r_.__value_.__r.__words[0];
      *__dst = 136316418;
      *&__dst[4] = "unlink";
      *&__dst[12] = 1024;
      *&__dst[14] = 4764;
      *&__dst[18] = 2080;
      *&__dst[20] = this;
      v38 = 2080;
      v39 = a2;
      v40 = 1024;
      v41 = val;
      v42 = 2080;
      v43 = v24;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: IVFVectorIndex::unlink %s prefix %s is_directory failed %d %s", __dst, 0x36u);
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    *__error() = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v33.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = strlen(a2);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_57;
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v11;
  if (v11)
  {
    memcpy(__dst, a2, v11);
  }

  __dst[v12] = 0;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1174405120;
  v29 = ___ZN16IVFVectorIndex_s6unlinkEPKcS1_b_block_invoke;
  v30 = &__block_descriptor_tmp_160_7994;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = __p;
  }

  v32 = v5;
  IVFVectorIndex_s::enumerateIndexes(&__p);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (v5)
    {
      goto LABEL_43;
    }
  }

  else if (v5)
  {
    goto LABEL_43;
  }

  memset(__dst, 0, 24);
  v17 = strlen(a2);
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_57:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&v25.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memcpy(&v25, a2, v17);
  }

  v25.__r_.__value_.__s.__data_[v18] = 0;
  v19 = std::string::append(&v25, "ivf-vector-indexes");
  v20 = v19->__r_.__value_.__r.__words[0];
  v36[0] = v19->__r_.__value_.__l.__size_;
  *(v36 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v26.__pn_.__r_.__value_.__r.__words[0] = v20;
  v26.__pn_.__r_.__value_.__l.__size_ = v36[0];
  *(&v26.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
  *(&v26.__pn_.__r_.__value_.__s + 23) = v21;
  std::__fs::filesystem::operator/[abi:nn200100](&v33, &__p, &v26);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__dst, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_50;
      }
    }

    else if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    *__dst = v33;
    if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_50:
      operator delete(v26.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_51;
    }
  }

  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_51:
  operator delete(v25.__r_.__value_.__l.__data_);
LABEL_41:
  IVFVectorIndex_s::unlink(__dst);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

LABEL_43:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_45:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  v22 = *MEMORY[0x1E69E9840];
}

void IVFVectorIndex_s::IVFVectorIndex_s(uint64_t a1, int a2, const char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  std::string::append[abi:nn200100]<char const*,0>((a1 + 72), ".", "");
  v5 = strlen(a3);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      *(a1 + 119) = v5;
      v7 = (a1 + 96);
      if (v5)
      {
        memmove(v7, a3, v5);
      }

      *(v7 + v6) = 0;
      if (*(a1 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v8, *(a1 + 72), *(a1 + 80));
      }

      else
      {
        v8 = *(a1 + 72);
      }

      IVFVectorIndex_s::protectionClassForParentPath();
    }

    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_11;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
LABEL_11:
    if (v6 - size < v5)
    {
      v10 = a2;
      std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
      a2 = v10;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v7 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, a2, v5);
    v12[v5] = 0;
    v13 = v5 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    return this;
  }

  __dst = 0;
  v18 = 0;
  v19 = 0;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  HIBYTE(v19) = a3 - a2;
  memcpy(&__dst, a2, v5);
  *(&__dst + v5) = 0;
  if (v19 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v19 >= 0)
  {
    v15 = HIBYTE(v19);
  }

  else
  {
    v15 = v18;
  }

  std::string::append(this, p_dst, v15);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void IVFVectorIndex_s::protectionClassForParentPath()
{
  v0 = MEMORY[0x1E69E5568] + 24;
  v1 = MEMORY[0x1E69E5568] + 64;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v5 = 0u;
  v16 = 0;
  *&v7 = MEMORY[0x1E69E5568] + 64;
  v2 = *(MEMORY[0x1E69E54E0] + 16);
  v4 = *(MEMORY[0x1E69E54E0] + 8);
  *(&v4 + *(v4 - 24)) = v2;
  *&v5 = 0;
  v3 = (&v4 + *(v4 - 24));
  std::ios_base::init(v3, &v5 + 8);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  v4 = v0;
  *&v7 = v1;
  *(&v5 + 1) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C691FE40](v6);
  memset(v6 + 8, 0, 80);
  *(&v5 + 1) = MEMORY[0x1E69E5548] + 16;
  DWORD2(v6[5]) = 8;
  std::stringbuf::str();
  operator new();
}

void IVFVectorIndex_s::name(std::string *this, uint64_t a2)
{
  v2 = *(a2 + 119);
  if (v2 >= 0)
  {
    v3 = *(a2 + 119);
  }

  else
  {
    v3 = *(a2 + 104);
  }

  if (v3 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v3 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v13, 0, sizeof(v13));
  *(&v13.__r_.__value_.__s + 23) = v3 + 1;
  if (v3)
  {
    if ((v2 & 0x80u) == 0)
    {
      v6 = (a2 + 96);
    }

    else
    {
      v6 = *(a2 + 96);
    }

    memmove(&v13, v6, v3);
  }

  *(&v13.__r_.__value_.__l.__data_ + v3) = 40;
  std::to_string(&__p, *(a2 + 172));
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

  v9 = std::string::append(&v13, p_p, size);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v14, ")");
  *this = *v11;
  v11->__r_.__value_.__r.__words[0] = 0;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_24:
      operator delete(v13.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void IVFVectorIndex_s::metaFilename(std::string *a1, uint64_t a2, const void **a3)
{
  v3 = *(a3 + 23);
  if (v3 >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = a3[1];
  }

  if (v4 + 18 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v4 + 18 >= 0x17)
  {
    operator new();
  }

  memset(&v8, 0, sizeof(v8));
  *(&v8.__pn_.__r_.__value_.__s + 23) = v4 + 18;
  if (v4)
  {
    if ((v3 & 0x80u) == 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    memmove(&v8, v7, v4);
  }

  strcpy(&v8 + v4, "ivf-vector-indexes");
  __p = v8;
  std::__fs::filesystem::operator/[abi:nn200100](&v10, a2, &__p);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *a1 = v10;
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  std::string::__init_copy_ctor_external(a1, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }
}

std::string *std::__fs::filesystem::operator/[abi:nn200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {

    return std::string::operator=(this, &a3->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(this).__size_)
    {
      std::string::push_back(this, 47);
    }

    v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = a3->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__pn_.__r_.__value_.__l.__size_;
    }

    return std::string::append(this, v7, size);
  }
}

void ___ZN16IVFVectorIndex_s6unlinkEPKcS1_b_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void **a7)
{
  v7 = *(a1 + 56);
  if (*(a7 + 23) >= 0)
  {
    v8 = *(a7 + 23);
  }

  else
  {
    v8 = a7[1];
  }

  v9 = 7;
  if (!*(a1 + 56))
  {
    v9 = 0;
  }

  if (v8 + v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v8 + v9 > 0x16)
  {
    operator new();
  }

  memset(&v14, 0, sizeof(v14));
  *(&v14.__pn_.__r_.__value_.__s + 23) = v8 + v9;
  memset(&v17, 0, sizeof(v17));
  if (v8)
  {
    if (*(a7 + 23) >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = *a7;
    }

    memmove(&v14, v11, v8);
  }

  v12 = (&v14 + v8);
  if (v7)
  {
    *(v12 + 3) = 2003788897;
    *v12 = 1634235182;
    v13 = 7;
  }

  else
  {
    v13 = 0;
  }

  *(v12 + v13) = 0;
  __p = v14;
  std::__fs::filesystem::operator/[abi:nn200100](&v16, a1 + 32, &__p);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v17 = v16;
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&v17, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_22:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_23:
  IVFVectorIndex_s::unlink(&v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void IVFVectorIndex_s::enumerateIndexes(const std::__fs::filesystem::path *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *&__ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  std::__fs::filesystem::__status(a1, &__ec);
  if (__ec.__val_)
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        a1 = a1->__pn_.__r_.__value_.__r.__words[0];
      }

      val = __ec.__val_;
      std::error_code::message(v17, &__ec);
      if (v17[23] >= 0)
      {
        v5 = v17;
      }

      else
      {
        v5 = *v17;
      }

      *buf = 136316162;
      *&buf[4] = "enumerateIndexes";
      *&buf[12] = 1024;
      *&buf[14] = 4237;
      v11 = 2080;
      v12 = a1;
      v13 = 1024;
      v14 = val;
      v15 = 2080;
      v16 = v5;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: enumerateIndexes %s failed %d %s", buf, 0x2Cu);
      if ((v17[23] & 0x80000000) != 0)
      {
        operator delete(*v17);
      }
    }
  }

  else
  {
    v2 = *__error();
    v6 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = a1->__pn_.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "enumerateIndexes";
      *&buf[12] = 1024;
      *&buf[14] = 4241;
      v11 = 2080;
      v12 = v8;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: enumerateIndexes %s failed no read permission", buf, 0x1Cu);
    }
  }

  *__error() = v2;
  v7 = *MEMORY[0x1E69E9840];
}

int *IVFVectorIndex_s::unlink(std::string *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *&__ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  memset(v15, 0, 24);
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  std::string::append[abi:nn200100]<char const*,0>(v15, v3, (v3 + size));
  v4 = std::__fs::filesystem::__remove(v15, &__ec);
  if ((v15[23] & 0x80000000) != 0)
  {
    operator delete(*v15);
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = a1->__r_.__value_.__r.__words[0];
      }

      *v15 = 136315138;
      *&v15[4] = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "IVFVectorIndex::unlink %s", v15, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      a1 = a1->__r_.__value_.__r.__words[0];
    }

    val = __ec.__val_;
    std::error_code::message(&v13, &__ec);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v13;
    }

    else
    {
      v12 = v13.__r_.__value_.__r.__words[0];
    }

    *v15 = 136316162;
    *&v15[4] = "unlink";
    *&v15[12] = 1024;
    *&v15[14] = 4752;
    *&v15[18] = 2080;
    *&v15[20] = a1;
    v16 = 1024;
    v17 = val;
    v18 = 2080;
    v19 = v12;
    _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: IVFVectorIndex::unlink %s failed %d %s", v15, 0x2Cu);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  result = __error();
  *result = v5;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __destroy_helper_block_8_32c34_ZTSNSt3__14__fs10filesystem4pathE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void __copy_helper_block_8_32c34_ZTSNSt3__14__fs10filesystem4pathE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

uint64_t *IVFVectorIndex_s::getOrCreateVectorIndex(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v7 = a7 | (2 * (((a5 & 3) << 50) | ((a6 & 3) << 48) | (a4 << 32) | a3));
  v8 = *(a2 + 152);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = (a2 + 152);
  do
  {
    v10 = v8[4];
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 == (a2 + 152) || v7 < v9[4])
  {
LABEL_9:
    v13 = *(a2 + 192);
    v20[0] = *(a2 + 176);
    v20[1] = v13;
    *result = makeIVFDiskOne(v20, *a2, a2 + 96, a3, a4, a5, a6, a7, 1, 0, 0);
    operator new();
  }

  v14 = v9[5];
  if (*(v14 + 8) != a3 || *(v14 + 20) != a4 || a6 > 2 || *(v14 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(v14 + 16) || *(v14 + 22) != a7)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4219, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  v15 = v9[6];
  *result = v14;
  result[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t makeIVFDiskOne(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, unsigned __int8 a10, int *a11)
{
  v50 = *MEMORY[0x1E69E9840];
  IVFIndexName(v47, a4, a5, a6, a7, a8);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  v21 = std::string::insert(v47, 0, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[2];
  *__p = *&v21->__r_.__value_.__l.__data_;
  v46 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if ((v47[23] & 0x80000000) != 0)
  {
    operator delete(*v47);
    if (a9)
    {
      goto LABEL_9;
    }
  }

  else if (a9)
  {
LABEL_9:
    v41 = a11;
    v42 = a1;
    v23 = 0;
    if (v46 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    v25 = 514;
    goto LABEL_13;
  }

  if (!a7)
  {
    if (a6 == 2)
    {
      v35 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>::indexVersion<vi_onefixedsize_disk_allocator>(a2, __p);
      if (v35 != 1)
      {
        goto LABEL_47;
      }

      goto LABEL_66;
    }

    if (a6 == 1)
    {
      v35 = IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>::indexVersion<vi_onefixedsize_disk_allocator>(a2, __p);
      if (v35 == 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (a6)
      {
        goto LABEL_46;
      }

      v35 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12indexVersionIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEiE4typeEiRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(a2, __p);
      if (v35 == 1)
      {
        goto LABEL_66;
      }
    }

LABEL_47:
    if (a11)
    {
      switch(v35)
      {
        case -3:
          result = 0;
          v37 = 6;
          break;
        case -2:
          result = 0;
          v37 = 3;
          break;
        case -1:
          result = 0;
          v37 = 4;
          break;
        default:
          result = 0;
          v37 = 1;
          break;
      }

      *a11 = v37;
      if (SHIBYTE(v46) < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_52:
    result = 0;
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a7 != 1)
  {
LABEL_46:
    v35 = -1;
    goto LABEL_47;
  }

  if (a6 == 2)
  {
    v35 = _ZN22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12indexVersionIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEiE4typeEiRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(a2, __p);
    if (v35 == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_47;
  }

  if (a6 == 1)
  {
    v35 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12indexVersionIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEiE4typeEiRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(a2, __p);
    if (v35 == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_47;
  }

  if (a6)
  {
    goto LABEL_46;
  }

  v35 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12indexVersionIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEiE4typeEiRKNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(a2, __p);
  if (v35 != 1)
  {
    goto LABEL_47;
  }

LABEL_66:
  v41 = a11;
  v42 = a1;
  v23 = a10;
  if (v46 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (a10)
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

LABEL_13:
  v26 = fd_create_protected(a2, v24, v25, 0);
  v27 = *__error();
  v28 = _SILogForLogForCategory(16);
  v29 = v28;
  if (v26)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "open";
      if (a9)
      {
        v30 = "create";
      }

      v31 = __p;
      if (v46 < 0)
      {
        v31 = __p[0];
      }

      *v47 = 136315650;
      *&v47[4] = v30;
      *&v47[12] = 2080;
      *&v47[14] = v31;
      if (v23)
      {
        v32 = "readOnly";
      }

      else
      {
        v32 = "";
      }

      *&v47[22] = 2080;
      *&v47[24] = v32;
      _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "%s vectorIndex: %s %s", v47, 0x20u);
    }

    *__error() = v27;
    *v47 = v26;
    *&v47[8] = 0x1000000;
    *&v47[16] = 0;
    v47[20] = v23;
    v47[21] = a9;
    *&v47[22] = 0;
    *&v47[24] = a5;
    v43 = *v42;
    v44 = v42[1];
    IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::createVectorIndexInstance(a4, a5, a6, a7);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v38 = "open";
    if (a9)
    {
      v38 = "create";
    }

    *v47 = 136316162;
    *&v47[4] = "makeIVFDiskOne";
    v39 = __p;
    if (v46 < 0)
    {
      v39 = __p[0];
    }

    v40 = "";
    *&v47[12] = 1024;
    *&v47[14] = 3979;
    *&v47[20] = v38;
    *&v47[18] = 2080;
    *&v47[28] = 2080;
    if (v23)
    {
      v40 = "readOnly";
    }

    *&v47[30] = v39;
    v48 = 2080;
    v49 = v40;
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Failed to %s vectorIndex: %s %s", v47, 0x30u);
  }

  *__error() = v27;
  if (!v41)
  {
    goto LABEL_52;
  }

  result = 0;
  if (a9)
  {
    v36 = 2;
  }

  else
  {
    v36 = 3;
  }

  *v41 = v36;
  if (SHIBYTE(v46) < 0)
  {
LABEL_24:
    operator delete(__p[0]);
    result = 0;
  }

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IVFVectorIndex_s::appendMetaKey(IVFVectorIndex_s *this, uint64_t a2)
{
  v15[19] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = MEMORY[0x1E69E5530] + 24;
  v4 = MEMORY[0x1E69E5530] + 64;
  bzero(v14, 0x230uLL);
  v15[0] = v4;
  v5 = MEMORY[0x1E69E54D0];
  v6 = *(MEMORY[0x1E69E54D0] + 16);
  v13 = *(MEMORY[0x1E69E54D0] + 8);
  *&v14[*(v13 - 24) - 8] = v6;
  v7 = &v14[*(v13 - 24) - 8];
  std::ios_base::init(v7, v14);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v13 = v3;
  v15[0] = v4;
  MEMORY[0x1C691FB90](v14);
  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(this + 12), *(this + 13));
  }

  else
  {
    v12 = *(this + 4);
  }

  IVFVectorIndex_s::metaFilename(&__p, this + 72, &v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::ofstream::open();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::ostream::write();
  v13 = *v5;
  *&v14[*(v13 - 24) - 8] = v5[3];
  MEMORY[0x1C691FBA0](v14);
  std::ostream::~ostream();
  result = MEMORY[0x1C691FE80](v15);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__shared_ptr_pointer<AnyVectorIndexInstance *,std::shared_ptr<AnyVectorIndexInstance>::__shared_ptr_default_delete<AnyVectorIndexInstance,AnyVectorIndexInstance>,std::allocator<AnyVectorIndexInstance>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AnyVectorIndexInstance *,std::shared_ptr<AnyVectorIndexInstance>::__shared_ptr_default_delete<AnyVectorIndexInstance,AnyVectorIndexInstance>,std::allocator<AnyVectorIndexInstance>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t IVFIndexName(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  v35 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v28);
  if (a6)
  {
    v11 = a3 | 0x80000000;
  }

  else
  {
    v11 = a3;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "ivf-", 4);
  v12 = dim_name_components[a4];
  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, v12, v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "x", 1);
  v15 = type_name_components[a5];
  v16 = strlen(v15);
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, "-", 1);
  v18 = v29;
  v19 = &v30[-1] + *(v29 - 24);
  if (*(v19 + 36) == -1)
  {
    std::ios_base::getloc((&v30[-1] + *(v29 - 24)));
    v20 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v20->__vftable[2].~facet_0)(v20, 32);
    std::locale::~locale(&v36);
    v18 = v29;
  }

  *(v19 + 36) = 48;
  *(v30 + *(v18 - 24) + 8) = 8;
  *(&v30[-1] + *(v18 - 24) + 8) = *(&v30[-1] + *(v18 - 24) + 8) & 0xFFFFFFB5 | 8;
  v21 = MEMORY[0x1C691FC90](&v29, a2);
  v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, "-", 1);
  v23 = *v22;
  v24 = v22 + *(*v22 - 24);
  if (*(v24 + 36) == -1)
  {
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v25 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v25->__vftable[2].~facet_0)(v25, 32);
    std::locale::~locale(&v36);
    v23 = *v21;
  }

  *(v24 + 36) = 48;
  *(v21 + *(v23 - 24) + 24) = 8;
  *(v21 + *(v23 - 24) + 8) = *(v21 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x1C691FC90](v21, v11);
  std::stringbuf::str();
  *&v28 = *MEMORY[0x1E69E54D8];
  v26 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v29 = v26;
  *(&v29 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v30);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v34);
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::createVectorIndexInstance(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 == 1)
    {
      switch(a3)
      {
        case 2:
          operator new();
        case 1:
          operator new();
        case 0:
          operator new();
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  v4 = __si_assert_copy_extra_332();
  v5 = v4;
  v6 = "";
  if (v4)
  {
    v6 = v4;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3748, "false", v6);
  free(v5);
  if (__valid_fs(-1))
  {
    v7 = 2989;
  }

  else
  {
    v7 = 3072;
  }

  *v7 = -559038737;
  abort();
}

void IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>::VectorStore<vi_onefixedsize_disk_allocator>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  bzero(v6, 0x400uLL);
  v5 = fd_name(*a2, v6, 0x400uLL);
  MEMORY[0x1C691FAE0](v4, v5);
  operator new();
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::openPartitionStore<vi_onefixedsize_disk_allocator>(void *a1, uint64_t *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a2 + 21) == 1)
  {
    v29 = __si_assert_copy_extra_332();
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1228, "!meta.newFile", v31);
    free(v30);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  memset(&v36, 0, sizeof(v36));
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = fstatat(*(v3 + 44), *(v3 + 72), &v36, 2048);
    v5 = g_prot_error_callback;
    if (v4 != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(v3 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v4 || v36.st_size <= 123)
  {
LABEL_25:
    v26 = *__error();
    v27 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      buf = 136315650;
      buf_4 = "openPartitionStore";
      buf_12 = 1024;
      buf_14 = 1231;
      v41 = 2048;
      st_size = v36.st_size;
      _os_log_fault_impl(&dword_1C278D000, v27, OS_LOG_TYPE_FAULT, "%s:%d: Partitions corrupted size=%llu", &buf, 0x1Cu);
    }

    *__error() = v26;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_28;
  }

  v34[0] = 0;
  v34[1] = v34;
  v35 = 0;
  v34[2] = 0x2000000000;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v15 = v14;
  v16 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v32 = *(v16 + 312);
  v17 = *(v16 + 224);
  if (v17)
  {
    v17(*(v16 + 288));
  }

  v33 = v13;
  if (!_setjmp(v16))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
  }

  *(v16 + 312) = v32;
  if (__THREAD_SLOT_KEY)
  {
    v18 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v18)
    {
LABEL_36:
      makeThreadId();
      v19 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_19;
    }
  }

  else
  {
    makeThreadId();
    v18 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v18)
    {
      goto LABEL_36;
    }
  }

  v19 = v18;
  if (v18 >= 0x801)
  {
    goto LABEL_36;
  }

LABEL_19:
  v20 = &threadData[9 * v19];
  v22 = *(v20 - 4);
  v21 = (v20 - 2);
  if (v22 > v12)
  {
    v23 = v19 - 1;
    do
    {
      CIOnThreadCleanUpPop(v23);
    }

    while (*v21 > v12);
  }

  dropThreadId(v33, 1, add_explicit + 1);
  CICleanUpReset(v33, v15);
  v24 = *__error();
  v25 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    buf = 136315394;
    buf_4 = "openPartitionStore";
    buf_12 = 1024;
    buf_14 = 1262;
    _os_log_fault_impl(&dword_1C278D000, v25, OS_LOG_TYPE_FAULT, "%s:%d: Partitions corrupted", &buf, 0x12u);
  }

  *__error() = v24;
  *a1 = 0;
  a1[1] = 0;
  _Block_object_dispose(v34, 8);
LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
}

void QuantizerManager<float,768>::sharedQuantizer(void *a1, uint64_t a2, int a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3802000000;
  v15 = __Block_byref_object_copy__1179;
  v17 = 0;
  v18 = 0;
  v16 = __Block_byref_object_dispose__1180;
  if (ZeroVectorQuantizer<float,768>::sharedInstance(void)::onceToken != -1)
  {
    v8 = a2;
    v9 = a3;
    dispatch_once(&ZeroVectorQuantizer<float,768>::sharedInstance(void)::onceToken, &__block_literal_global_1097);
    a3 = v9;
    a2 = v8;
  }

  v4 = *(ZeroVectorQuantizer<float,768>::sharedInstance(void)::zvq + 8);
  v17 = *ZeroVectorQuantizer<float,768>::sharedInstance(void)::zvq;
  v18 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN16QuantizerManagerIfLi768EE15sharedQuantizerEi_block_invoke;
  v10[3] = &unk_1E81956D0;
  v11 = a3;
  v10[4] = &v12;
  v10[5] = a2;
  dispatch_sync(v5, v10);
  v6 = v13[6];
  *a1 = v13[5];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v12, 8);
  v7 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void AnyPartitionStore::replaceQuantizer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 912, "_quantizer == nullptr", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (!a2)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 913, "newQuantizer != nullptr", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      v10 = 2989;
    }

    else
    {
      v10 = 3072;
    }

    *v10 = -559038737;
    abort();
  }

  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::replaceQuantizer(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 112));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v7 = *a2;
  if (v5 != *a2)
  {
    v8 = a2[1];
    v17 = *a2;
    v18 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[1];
      v13 = *a2;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v13 = v7;
      v14 = 0;
    }

    (*(*a1 + 40))(&v15, a1, &v13);
    (*(*a1 + 48))(a1, &v17, &v15);
    v10 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

__n128 __Block_byref_object_copy__1179(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__1180(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN16QuantizerManagerIfLi768EE15sharedQuantizerEi_block_invoke(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_52;
  }

  v5 = *(v4 + 120);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a1 + 48);
    if (*&v5 <= v2)
    {
      v7 = v2 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v2;
  }

  v8 = *(*(v4 + 112) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    v43[0] = 0;
    v43[1] = 0;
    v44 = 0;
    v13 = *(v4 + 71);
    if (v13 >= 0)
    {
      v14 = *(v4 + 71);
    }

    else
    {
      v14 = *(v4 + 56);
    }

    if (v14 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

    if (v14 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v42, 0, sizeof(v42));
    *(&v42.__r_.__value_.__s + 23) = v14 + 1;
    if (v14)
    {
      if ((v13 & 0x80u) == 0)
      {
        v15 = (v4 + 48);
      }

      else
      {
        v15 = *(v4 + 48);
      }

      memmove(&v42, v15, v14);
    }

    *(&v42.__r_.__value_.__l.__data_ + v14) = 46;
    std::to_string(&v41, *v3);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v41;
    }

    else
    {
      v16 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v42, v16, size);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&__p, ".quantizer");
    v21 = v20->__r_.__value_.__r.__words[2];
    *v43 = *&v20->__r_.__value_.__l.__data_;
    v44 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_41:
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v44 >= 0)
          {
            v22 = v43;
          }

          else
          {
            v22 = v43[0];
          }

          if (fd_create_protected(*v4, v22, 0, 3u))
          {
            operator new();
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[0]);
          }

          goto LABEL_52;
        }

LABEL_49:
        operator delete(v42.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v5 - 1;
    while (1)
    {
      v11 = v9[1];
      if (v11 == v2)
      {
        if (*(v9 + 4) == v2)
        {
          goto LABEL_86;
        }
      }

      else if ((v11 & v10) != v7)
      {
        goto LABEL_22;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 == v2)
    {
      break;
    }

    if (v12 >= *&v5)
    {
      v12 %= *&v5;
    }

    if (v12 != v7)
    {
      goto LABEL_22;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2)
  {
    goto LABEL_17;
  }

LABEL_86:
  __p.__r_.__value_.__r.__words[0] = a1 + 48;
  v35 = _ZNSt3__112__hash_tableINS_17__hash_value_typeIiNS_8weak_ptrI9QuantizerIDF16_Li256EEEEEENS_22__unordered_map_hasherIiS6_NS_4hashIiEENS_8equal_toIiEELb1EEENS_21__unordered_map_equalIiS6_SB_S9_Lb1EEENS_9allocatorIS6_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJRKiEEENSM_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_((v4 + 112), v2);
  v36 = v35[4];
  if (v36 && (v36 = std::__shared_weak_count::lock(v36)) != 0)
  {
    v37 = v35[3];
  }

  else
  {
    v37 = 0;
  }

  v38 = *(*(a1 + 32) + 8);
  v39 = *(v38 + 48);
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_52:
  v23 = *(*(a1 + 32) + 8);
  if (ZeroVectorQuantizer<float,768>::sharedInstance(void)::onceToken != -1)
  {
    dispatch_once(&ZeroVectorQuantizer<float,768>::sharedInstance(void)::onceToken, &__block_literal_global_1097);
  }

  v25 = *ZeroVectorQuantizer<float,768>::sharedInstance(void)::zvq;
  v24 = *(ZeroVectorQuantizer<float,768>::sharedInstance(void)::zvq + 8);
  if (!v24)
  {
    if (*(v23 + 40) != v25)
    {
      return;
    }

LABEL_61:
    v27 = *(v4 + 80);
    if (v27)
    {
      v28 = *(v4 + 88);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = *(*(a1 + 32) + 8);
      v30 = *(v29 + 48);
      *(v29 + 40) = v27;
      *(v29 + 48) = v28;
      if (v30)
      {
        if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }
      }

      return;
    }

    v31 = *(v4 + 71);
    if (v31 >= 0)
    {
      v32 = *(v4 + 71);
    }

    else
    {
      v32 = *(v4 + 56);
    }

    if (v32 + 10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 + 10 >= 0x17)
      {
        operator new();
      }

      v43[1] = 0;
      v44 = 0;
      v43[0] = 0;
      HIBYTE(v44) = v32 + 10;
      if (v32)
      {
        if ((v31 & 0x80u) == 0)
        {
          v33 = (v4 + 48);
        }

        else
        {
          v33 = *(v4 + 48);
        }

        memmove(v43, v33, v32);
      }

      strcpy(v43 + v32, ".quantizer");
      if (v44 >= 0)
      {
        v34 = v43;
      }

      else
      {
        v34 = v43[0];
      }

      if (fd_create_protected(*v4, v34, 0, 3u))
      {
        operator new();
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

      return;
    }

LABEL_93:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = *(v23 + 40);
  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v26 == v25)
    {
      goto LABEL_61;
    }
  }

  else
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if (v26 == v25)
    {
      goto LABEL_61;
    }
  }
}

void AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::AllocatedVectorQuantizer(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *a1 = &unk_1F427FB18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 20);
  *(a1 + 64) = fd_dup(*a2);
  bzero(v9, 0x400uLL);
  v5 = fd_name(*a2, v9, 0x400uLL);
  MEMORY[0x1C691FAE0](v4, v5);
  if (*(a1 + 64))
  {
    operator new();
  }

  v6 = __si_assert_copy_extra_332();
  v7 = v6;
  v8 = "";
  if (v6)
  {
    v8 = v6;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 487, "fdPtr != nullptr", v8);
  free(v7);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t std::__shared_ptr_pointer<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768> *,std::shared_ptr<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>::__shared_ptr_default_delete<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>,AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>,std::allocator<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768> *,std::shared_ptr<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>::__shared_ptr_default_delete<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>,AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>,std::allocator<AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void ___ZN30vi_onefixedsize_disk_allocatorC2EmymN19vi_ondisk_allocator11meta_info_sEP16vector_storage_s_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 61))
  {
    goto LABEL_32;
  }

  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  bzero(v33, 0x400uLL);
  if (fd_pread(v1, v33, 0x400uLL, 0) != 1024)
  {
    goto LABEL_32;
  }

  bzero(v2 + 1, 0x1088uLL);
  v3 = v34;
  if ((v34 & 0x80000000) == 0)
  {
    v4 = 1;
LABEL_12:
    v6 = (&v34 + v4);
    v2[2] = v3;
    goto LABEL_13;
  }

  if ((v35 & 0x80000000) == 0)
  {
    v3 = v34 & 0x7F | (v35 << 7);
    v4 = 2;
    goto LABEL_12;
  }

  if ((v36 & 0x80000000) == 0)
  {
    v5 = ((v35 & 0x7F) << 7) | (v36 << 14) | v34 & 0x7F;
    v4 = 3;
LABEL_11:
    v3 = v5;
    goto LABEL_12;
  }

  if ((v37 & 0x80000000) == 0)
  {
    v5 = ((v36 & 0x7F) << 14) | (v37 << 21) | ((v35 & 0x7F) << 7) | v34 & 0x7F;
    v4 = 4;
    goto LABEL_11;
  }

  v27 = v38;
  v6 = v39;
  v2[2] = ((v37 & 0x7F) << 21) | (v38 << 28) | ((v36 & 0x7F) << 14) | ((v35 & 0x7F) << 7) | v34 & 0x7Fu;
  if ((v27 & 0x80000000) == 0)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "storage_array_HeaderRestore";
      v42 = 1024;
      v43 = 311;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: invalid storage_array data", buf, 0x12u);
    }

    *__error() = v28;
    goto LABEL_27;
  }

LABEL_13:
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v6;
  do
  {
    ++v8;
    v11 = *v10++;
    v9 |= (v11 & 0x7F) << v7;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v12 = v7 == 63;
    v7 += 7;
  }

  while (!v12);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = &v6[v8];
  v2[7] = v9;
  do
  {
    ++v14;
    v17 = *v10++;
    v15 |= (v17 & 0x7F) << v13;
    if ((v17 & 0x80) == 0)
    {
      break;
    }

    v12 = v13 == 63;
    v13 += 7;
  }

  while (!v12);
  v2[6] = v15;
  if (v15 < v9)
  {
    v30 = __si_assert_copy_extra_332();
    v31 = v30;
    v32 = "";
    if (v30)
    {
      v32 = v30;
    }

    __message_assert(v30, "storage_array.c", 305, "storage_array->_windows._size>= storage_array->_windows._freeRegion", v32);
    free(v31);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v16[v14];
  do
  {
    ++v19;
    v22 = *v10++;
    v20 |= (v22 & 0x7F) << v18;
    if ((v22 & 0x80) == 0)
    {
      break;
    }

    v12 = v18 == 63;
    v18 += 7;
  }

  while (!v12);
  v6 = &v21[v19];
  v2[3] = v20;
LABEL_27:
  v23 = 0;
  v24 = 0;
  do
  {
    v25 = *v6++;
    v24 |= (v25 & 0x7F) << v23;
    if ((v25 & 0x80) == 0)
    {
      break;
    }

    v12 = v23 == 63;
    v23 += 7;
  }

  while (!v12);
  *v2 = v24;
LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t vi_onefixedsize_disk_allocator::storeHeader(unint64_t *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1[3] <= 0x3FF)
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 320, "allocator->storage._headerSize >= MAP_HEADER_SIZE", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  bzero(v21, 0x400uLL);
  fd_pread(a1[5], v21, 0x400uLL, 0);
  v2 = a1[7];
  if (a1[6] < v2)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert(v16, "storage_array.c", 283, "storage_array->_windows._size>= storage_array->_windows._freeRegion", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  v3 = a1[2];
  if (v3 >> 28)
  {
    v22 = v3 | 0x80;
    v23 = (v3 >> 7) | 0x80;
    v24 = (v3 >> 14) | 0x80;
    v25 = (v3 >> 21) | 0x80;
    v26 = v3 >> 28;
    v4 = 5;
  }

  else if (v3 >= 0x200000)
  {
    v22 = v3 | 0x80;
    v23 = (v3 >> 7) | 0x80;
    v24 = (v3 >> 14) | 0x80;
    v25 = v3 >> 21;
    v4 = 4;
  }

  else if (v3 >= 0x4000)
  {
    v22 = v3 | 0x80;
    v23 = (v3 >> 7) | 0x80;
    v24 = v3 >> 14;
    v4 = 3;
  }

  else if (v3 >= 0x80)
  {
    v22 = v3 | 0x80;
    v23 = v3 >> 7;
    v4 = 2;
  }

  else
  {
    v22 = a1[2];
    v4 = 1;
  }

  v20 = &v22 + v4;
  storeVInt64(&v20, v2);
  storeVInt64(&v20, a1[6]);
  storeVInt64(&v20, a1[3]);
  v5 = *a1;
  v6 = v20;
  if (HIDWORD(*a1))
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      *v20 = v5 | 0x80;
      v8 = vdupq_n_s64(v5);
      v8.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v8, xmmword_1C2BFA320), vshlq_u64(v8, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v6 + 1) = vuzp1_s8(*v8.i8, *v8.i8).u32[0];
      v6[5] = (v5 >> 35) | 0x80;
      v6[6] = (v5 >> 42) | 0x80;
      v6[7] = (v5 >> 49) | 0x80;
      v6[8] = HIBYTE(v5);
      v6[9] = 1;
    }

    else if (HIBYTE(v5))
    {
      *v20 = v5 | 0x80;
      v9 = vdupq_n_s64(v5);
      v9.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_1C2BFA320), vshlq_u64(v9, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v6 + 1) = vuzp1_s8(*v9.i8, *v9.i8).u32[0];
      v6[5] = (v5 >> 35) | 0x80;
      v6[6] = (v5 >> 42) | 0x80;
      v6[7] = (v5 >> 49) | 0x80;
      v6[8] = HIBYTE(v5);
    }

    else if (v5 >> 49)
    {
      *v20 = v5 | 0x80;
      v10 = vdupq_n_s64(v5);
      v10.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_1C2BFA320), vshlq_u64(v10, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v6 + 1) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
      v6[5] = (v5 >> 35) | 0x80;
      v6[6] = (v5 >> 42) | 0x80;
      v6[7] = v5 >> 49;
    }

    else
    {
      *v20 = v5 | 0x80;
      v7 = vdupq_n_s64(v5);
      v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1C2BFA320), vshlq_u64(v7, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v6 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      if (v5 >> 42)
      {
        v6[5] = (v5 >> 35) | 0x80;
        v6[6] = v5 >> 42;
      }

      else
      {
        v6[5] = v5 >> 35;
      }
    }
  }

  else if (v5 >> 28)
  {
    *v20 = v5 | 0x80;
    v6[1] = (v5 >> 7) | 0x80;
    v6[2] = (v5 >> 14) | 0x80;
    v6[3] = (v5 >> 21) | 0x80;
    v6[4] = v5 >> 28;
  }

  else if (v5 >= 0x200000)
  {
    *v20 = v5 | 0x80;
    v6[1] = (v5 >> 7) | 0x80;
    v6[2] = (v5 >> 14) | 0x80;
    v6[3] = v5 >> 21;
  }

  else if (v5 >= 0x4000)
  {
    *v20 = v5 | 0x80;
    v6[1] = (v5 >> 7) | 0x80;
    v6[2] = v5 >> 14;
  }

  else if (v5 >= 0x80)
  {
    *v20 = v5 | 0x80;
    v6[1] = v5 >> 7;
  }

  else
  {
    *v20 = v5;
  }

  result = fd_pwrite(a1[5], v21, 0x400uLL, 0);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void Quantizer<float,768>::topKPartitions(uint64_t a1@<X0>, const float *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if ((*(*a1 + 24))(a1))
  {
    v8 = 0;
    do
    {
      v9 = (*(*a1 + 72))(a1, v8);
      __C = 3.4028e38;
      vDSP_distancesq(v9, 1, a2, 1, &__C, 0x300uLL);
      v10 = LODWORD(__C) | HIDWORD(v8);
      if (a3)
      {
        operator new();
      }

      v11 = MEMORY[0] > v8;
      if (MEMORY[4] != *&v10)
      {
        v11 = MEMORY[4] > *&v10;
      }

      if (v11)
      {
        MEMORY[0xFFFFFFFFFFFFFFF8] = v8;
        MEMORY[0xFFFFFFFFFFFFFFFC] = LODWORD(__C) | HIDWORD(v8);
      }

      ++v8;
    }

    while (v8 < (*(*a1 + 24))(a1));
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

unint64_t AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::getCentroid(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 48) <= a2)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 524, "i < nCentroids", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 24) + *(v2 + 16) * a2;

  return _windowsResolvePtr(v2 + 40, v3, 3072);
}

BOOL Quantizer<float,768>::isPersistent(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 31);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 != 8)
    {
      return 1;
    }

    return *v1 != 0x3E79726F6D656D3CLL;
  }

  if (*(a1 + 16) == 8)
  {
    v1 = *v1;
    return *v1 != 0x3E79726F6D656D3CLL;
  }

  return 1;
}

BOOL AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::validAddress(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 72);
  if (v3 >= 1)
  {
    v4 = (v2 + 96);
    for (i = 1; ; ++i)
    {
      v6 = *v4;
      if (*v4 && (v7 = v6[1], v7 + 1 >= 2) && v7 <= a2 && (v9 = v6[2], v7 - v9 + v6[3] > a2))
      {
        v8 = a2 - v7 + v9;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      else
      {
        v8 = -1;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      ++v4;
      if (v8 != -1)
      {
        return v8 != -1;
      }
    }
  }

  return 0;
}

BOOL Quantizer<float,768>::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) != 768)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 291, "D == other.dimension()", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((*(*a2 + 40))(a2) != 4)
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 292, "sizeof(ELEM_TYPE) == other.elementSize()", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return Quantizer<float,768>::operator==(a1, a2);
}

{
  v4 = (*(*a1 + 24))(a1);
  if (v4 != (*(*a2 + 24))(a2))
  {
    return 0;
  }

  if (!(*(*a1 + 24))(a1))
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = (*(*a1 + 72))(a1, v5);
    v7 = (*(*a2 + 72))(a2, v5);
    v8 = memcmp(v6, v7, 0xC00uLL);
    result = v8 == 0;
    if (v8)
    {
      break;
    }

    v5 = (v5 + 1);
    if (v5 >= (*(*a1 + 24))(a1))
    {
      return 1;
    }
  }

  return result;
}

void AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::~AllocatedVectorQuantizer(uint64_t a1)
{
  AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::~AllocatedVectorQuantizer(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t AllocatedVectorQuantizer<vi_onefixedsize_disk_allocator,float,768>::~AllocatedVectorQuantizer(uint64_t a1)
{
  *a1 = &unk_1F427FB18;
  v2 = atomic_load((a1 + 57));
  if (v2)
  {
    vi_onefixedsize_disk_allocator::unlinkStorage(*(a1 + 40));
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    storage_array_Close(v3 + 8);
    v4 = *(v3 + 4216);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 4216) = 0;
    }

    *(v3 + 4200) = 0u;
    MEMORY[0x1C691FEF0](v3, 0x10A0C40112AF241);
  }

  fd_release(*(a1 + 64));
  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    storage_array_Close(v5 + 8);
    v6 = *(v5 + 4216);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 4216) = 0;
    }

    *(v5 + 4200) = 0u;
    MEMORY[0x1C691FEF0](v5, 0x10A0C40112AF241);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL vi_onefixedsize_disk_allocator::unlinkStorage(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(v13, 0x400uLL);
  v2 = fd_name(*(a1 + 40), v13, 0x400uLL);
  if (v2)
  {
    bzero(v12, 0x400uLL);
    v3 = fd_name(*(a1 + 40), v12, 0x400uLL);
    v4 = v3;
    if (v3)
    {
      strlcat(v3, ".shadow", 0x400uLL);
      sibling_protected = fd_create_sibling_protected(*(a1 + 40), v4, 0, 0);
      if (sibling_protected)
      {
        v6 = sibling_protected;
        _fd_unlink_with_origin(sibling_protected, 0);
        fd_release(v6);
      }
    }

    _fd_unlink_with_origin(*(a1 + 40), 0);
    if (strstr(v4, ".shadow.shadow"))
    {
      v9 = __si_assert_copy_extra_332();
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 380, "0==strstr(shadowpathPtr, .shadow.shadow)", v11);
      free(v10);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  result = v2 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__shared_ptr_pointer<ZeroVectorQuantizer<float,768> *,std::shared_ptr<Quantizer<float,768>>::__shared_ptr_default_delete<Quantizer<float,768>,ZeroVectorQuantizer<float,768>>,std::allocator<ZeroVectorQuantizer<float,768>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ZeroVectorQuantizer<float,768> *,std::shared_ptr<Quantizer<float,768>>::__shared_ptr_default_delete<Quantizer<float,768>,ZeroVectorQuantizer<float,768>>,std::allocator<ZeroVectorQuantizer<float,768>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 24;
  v3 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v6 = MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 24);
  v8 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v10 = v6[5];
  v11 = v6[4];
  *(a1 + 16) = v11;
  *(v4 + *(v11 - 24)) = v10;
  v12 = v6[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v6[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  MEMORY[0x1C691FE40](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

void SingleVectorQuantizer<float,768>::topKPartitions(uint64_t a1, const float *__A)
{
  __C = 3.4028e38;
  vDSP_distancesq(__A, 1, (a1 + 33), 1, &__C, 0x300uLL);
  operator new();
}

uint64_t SingleVectorQuantizer<float,768>::getCentroid(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 396, "i < 1", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return a1 + 33;
}

void ZeroVectorQuantizer<float,768>::~ZeroVectorQuantizer(uint64_t a1)
{
  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t ZeroVectorQuantizer<float,768>::~ZeroVectorQuantizer(uint64_t result)
{
  *result = &unk_1F427DE28;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void SingleVectorQuantizer<float,768>::~SingleVectorQuantizer(uint64_t a1)
{
  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t SingleVectorQuantizer<float,768>::~SingleVectorQuantizer(uint64_t result)
{
  *result = &unk_1F427DE28;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionStore<vi_onefixedsize_disk_allocator>(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v3 = 0;
  v1 = AnyPartitionStore::AnyPartitionStore(a1, buf);
  *v1 = &unk_1F427FEF0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 160) = 0;
  operator new();
}

int *___ZN14PartitionStoreI30vi_onefixedsize_disk_allocatorLi512EE18openPartitionStoreIS0_EENSt3__110shared_ptrI17AnyPartitionStoreEENS3_9enable_ifIXsr13is_persistentIT_EE5valueES8_E4type11meta_info_sE_block_invoke(int *result, int a2, int *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(*(result + 4) + 8);
  if (*a3 == *(v5 + 24))
  {
    v6 = *a3 + 1;
    *(v5 + 24) = v6;
    if (v6 <= result[10])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = result;
    v10 = *__error();
    v11 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v14 = *(*(*(v8 + 4) + 8) + 24);
      v15 = v8[10];
      v16 = 136316418;
      v17 = "openPartitionStore_block_invoke";
      v18 = 1024;
      v19 = 1252;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = a2;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Partitions corrupted: offset out of order %u != %u. nVectors=%u p#%u", &v16, 0x2Au);
    }

    result = __error();
    *result = v10;
  }

  *a4 = 1;
LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AnyPartitionStore::AnyPartitionStore(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a1 = &unk_1F427DFB8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 31;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 1;
  v5 = *a2;
  if (*a2)
  {
    LODWORD(v5) = (*(*v5 + 16))(v5);
  }

  *(a1 + 76) = v5;
  v9.__padding_ = 0;
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(&v9, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v6 = arc4random();
  v7 = v6 + ((v6 / 0x7FFFFFFF) | ((v6 / 0x7FFFFFFF) << 31));
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *(a1 + 64) = v7;
  std::random_device::~random_device(&v9);
  return a1;
}

uint64_t vi_onefixedsize_disk_allocator::vi_onefixedsize_disk_allocator(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *a1 = 0;
  if (a5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN16vector_storage_s21copy_safe_unmap_blockEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_91;
    aBlock[4] = a5;
    v9 = _Block_copy(aBlock);
  }

  else
  {
    v9 = 0;
  }

  v10 = *a4;
  v11 = *(a4 + 21);
  v12 = *(a4 + 4);
  v13 = *(a4 + 20);
  v14 = *(a4 + 22);
  v15 = *(a4 + 6);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v16 = a4[1];
  v19 = *a4;
  v18[2] = ___ZN30vi_onefixedsize_disk_allocatorC2EmymN19vi_ondisk_allocator11meta_info_sEP16vector_storage_s_block_invoke;
  v18[3] = &__block_descriptor_tmp_89;
  v18[4] = a1;
  v20 = v16;
  storage_array_Init((a1 + 8), a2 + 1024, 0x40000uLL, a3, v10, v11, v12, v13, v14, v15, v9, v18);
  if (*(a4 + 21) == 1)
  {
    vi_onefixedsize_disk_allocator::storeHeader(a1);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  return a1;
}

void std::vector<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEntries,std::allocator<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEntries>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void MaxSizePriorityQueue<AnyPartitionStore::CandidateEntry,std::vector<AnyPartitionStore::CandidateEntry>,AnyPartitionStore::CandidateQueue::Lesser>::push(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 - v3;
  v6 = (v4 - v3) >> 3;
  if (v6 >= *a1)
  {
    if (*(a2 + 4) < v3[1])
    {
      if (v6 >= 2)
      {
        v9 = 0;
        v10 = *v3;
        v11 = a1[1];
        do
        {
          v12 = v11;
          v11 += 2 * v9 + 2;
          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v14 = v13 + 2;
          if (v14 < v6 && v11[1] < v11[3])
          {
            v11 += 2;
            v9 = v14;
          }

          *v12 = *v11;
        }

        while (v9 <= ((v6 - 2) >> 1));
        v18 = v4 - 8;
        if (v11 == (v4 - 8))
        {
          *v11 = v10;
        }

        else
        {
          *v11 = *v18;
          *v18 = v10;
          v19 = (v11 - v3 + 8) >> 3;
          v20 = v19 < 2;
          v21 = v19 - 2;
          if (!v20)
          {
            v22 = v21 >> 1;
            v23 = &v3[2 * v22];
            v24 = v11[1];
            if (v23[1] < v24)
            {
              v25 = *v11;
              do
              {
                v26 = v23;
                *v11 = *v23;
                if (!v22)
                {
                  break;
                }

                v22 = (v22 - 1) >> 1;
                v23 = &v3[2 * v22];
                v11 = v26;
              }

              while (v23[1] < v24);
              *v26 = v25;
              v26[1] = v24;
            }
          }
        }
      }

      *(a1[2] - 8) = *a2;
      v40 = a1[1];
      v41 = a1[2];
      v42 = (v41 - v40) >> 3;
      v20 = v42 < 2;
      v43 = v42 - 2;
      if (!v20)
      {
        v44 = v43 >> 1;
        v45 = v40 + 8 * (v43 >> 1);
        v35 = *(v41 - 4);
        if (*(v45 + 4) < v35)
        {
          v48 = *(v41 - 8);
          v46 = (v41 - 8);
          v47 = v48;
          do
          {
            v39 = v45;
            *v46 = *v45;
            if (!v44)
            {
              break;
            }

            v44 = (v44 - 1) >> 1;
            v45 = v40 + 8 * v44;
            v46 = v39;
          }

          while (*(v45 + 4) < v35);
          *v39 = v47;
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    v7 = a1[3];
    if (v4 >= v7)
    {
      v15 = v7 - v3;
      if (v15 >> 2 <= (v6 + 1))
      {
        v16 = v6 + 1;
      }

      else
      {
        v16 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v27 = (v4 - v3) >> 3;
      v28 = (8 * v6);
      v29 = (8 * v6 - 8 * v27);
      *v28 = *a2;
      v8 = (v28 + 1);
      memcpy(v29, v3, v5);
      a1[1] = v29;
      a1[2] = v8;
      a1[3] = 0;
      if (v3)
      {
        operator delete(v3);
      }
    }

    else
    {
      *v4 = *a2;
      v8 = (v4 + 8);
    }

    a1[2] = v8;
    v30 = a1[1];
    v31 = (v8 - v30) >> 3;
    v20 = v31 < 2;
    v32 = v31 - 2;
    if (!v20)
    {
      v33 = v32 >> 1;
      v34 = v30 + 8 * (v32 >> 1);
      v35 = *(v8 - 1);
      if (*(v34 + 4) < v35)
      {
        v38 = *(v8 - 2);
        v37 = v8 - 2;
        v36 = v38;
        do
        {
          v39 = v34;
          *v37 = *v34;
          if (!v33)
          {
            break;
          }

          v33 = (v33 - 1) >> 1;
          v34 = v30 + 8 * v33;
          v37 = v39;
        }

        while (*(v34 + 4) < v35);
        *v39 = v36;
LABEL_42:
        *(v39 + 4) = v35;
      }
    }
  }
}

uint64_t ___ZN16vector_storage_s21copy_safe_unmap_blockEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    return data_map_defer_block(v2, a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::subvert(uint64_t a1, uint64_t *a2)
{
  if (((*(*a2 + 24))(a2) & 1) == 0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1645, "old->isPersistent()", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  vi_onefixedsize_disk_allocator::subvert(a2[10], *(a1 + 80));
  return 1;
}

uint64_t vi_onefixedsize_disk_allocator::subvert(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  bzero(v19, 0x400uLL);
  v4 = fd_name(*(a1 + 40), v19, 0x400uLL);
  bzero(v18, 0x400uLL);
  v5 = fd_name(*(a1 + 40), v18, 0x400uLL);
  v6 = v5;
  if (v5)
  {
    strlcat(v5, ".shadow", 0x400uLL);
    sibling_protected = fd_create_sibling_protected(*(a1 + 40), v6, 0, 0);
    if (sibling_protected)
    {
      v8 = sibling_protected;
      _fd_unlink_with_origin(sibling_protected, 0);
      fd_release(v8);
    }
  }

  _fd_unlink_with_origin(*(a1 + 40), 0);
  if (strstr(v6, ".shadow.shadow"))
  {
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 409, "0==strstr(shadowpathPtr, .shadow.shadow)", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  bzero(v17, 0x400uLL);
  v9 = fd_name(*(a2 + 40), v17, 0x400uLL);
  strlcat(v9, ".shadow", 0x400uLL);
  v10 = fd_create_sibling_protected(*(a2 + 40), v9, 0, 0);
  if (v10)
  {
    v11 = v10;
    _fd_unlink_with_origin(v10, 0);
    fd_release(v11);
  }

  result = fd_rename(*(a2 + 40), v4);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vi_onefixedsize_disk_allocator::shadow(uint64_t a1, char a2, _DWORD *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  memset(v112, 0, 255);
  v110 = 0u;
  memset(v111, 0, 31);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  *__dst = 0u;
  v6 = fd_name(*(a1 + 40), v112, 0xFFuLL);
  if (!v6)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(valuePtr[0]) = 136315394;
      *(valuePtr + 4) = "shadow";
      WORD6(valuePtr[0]) = 1024;
      *(valuePtr + 14) = 578;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: no path for shadow", valuePtr, 0x12u);
    }

    *__error() = v10;
    goto LABEL_29;
  }

  v7 = v6;
  strlcpy(__dst, v6, 0xFFuLL);
  strlcat(v7, ".shadow", 0xFFuLL);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  LODWORD(valuePtr[0]) = v9;
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (!registeredCloneFds)
  {
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v12);
LABEL_15:
    sibling_protected = fd_create_sibling_protected(*(a1 + 40), v7, 514, 0);
    if (sibling_protected)
    {
      v17 = sibling_protected;
      v18 = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
      if (!v18)
      {
        v74 = __si_assert_copy_extra_332();
        v75 = v74;
        v76 = "";
        if (v74)
        {
          v76 = v74;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 600, "readBuffer", v76);
        free(v75);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v19 = v18;
      v88 = 0;
      v89 = 0;
      *&valuePtr[0] = 0;
      v20 = _fd_acquire_fd(v17, valuePtr);
      if (v20 == -1 || (*(v17 + 56) |= 1u, v21 = v20, v22 = fcntl(v20, 48, 1), fcntl(v21, 76, *(v17 + 56) & 1), _fd_release_fd(v17, v21, 0, *&valuePtr[0]), v22 == -1))
      {
        v25 = *__error();
        v26 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v72 = *__error();
          LODWORD(valuePtr[0]) = 136315650;
          *(valuePtr + 4) = "shadow";
          WORD6(valuePtr[0]) = 1024;
          *(valuePtr + 14) = 610;
          WORD1(valuePtr[1]) = 1024;
          DWORD1(valuePtr[1]) = v72;
          v69 = "%s:%d: fd_no_cache err: %d";
          goto LABEL_108;
        }
      }

      else
      {
        v23 = *(a1 + 56);
        if (v23 >> 20)
        {
          v30 = (v23 + 0xFFFFF) >> 20;
          if ((a2 & 1) == 0 && v30 >= *(a1 + 4200))
          {
            v30 = *(a1 + 4200);
          }

          v31 = _fd_acquire_fd(*(a1 + 40), &v89);
          if (v31 != -1)
          {
            v32 = v31;
            v33 = _fd_acquire_fd(v17, &v88);
            if (v33 == -1)
            {
              __error();
              v24 = 0xFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
              memset(valuePtr, 0, sizeof(valuePtr));
              if (v30 <= 0)
              {
                _fd_release_fd(v17, v33, 0, v88);
                v24 = 0;
              }

              else
              {
                v35 = 0;
                v36 = 0;
                v87 = v30 - 1;
                v83 = a3;
                v86 = a2;
                v85 = v30;
                while (1)
                {
                  if ((a2 & 1) != 0 || *(a1 + 4200) > v35 && CFBitVectorGetBitAtIndex(*(a1 + 4216), v35))
                  {
                    *(valuePtr + v36++) = v35;
                  }

                  if ((v36 == 100 || v87 == v35) && v36)
                  {
                    break;
                  }

                  v50 = 0;
LABEL_97:
                  if (v30 <= ++v35 || v50)
                  {
                    if (v50)
                    {
                      v24 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v24 = 0;
                    }

                    goto LABEL_114;
                  }
                }

                v84 = v36;
                v37 = 0;
                if (a2)
                {
                  while (*a3 != 1 && *a3 != -1)
                  {
                    v79 = *(valuePtr + v37);
                    v81 = v37;
                    v38 = v79 << 20;
                    while (1)
                    {
                      v39 = pread(v32, v19, 0x100000uLL, v38);
                      v40 = g_prot_error_callback;
                      if (v39 != -1 || g_prot_error_callback == 0)
                      {
                        break;
                      }

                      v42 = __error();
                      if (((*(v40 + 16))(v40, v32, *v42, 4) & 1) == 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    if (v39 == -1)
                    {
                      goto LABEL_91;
                    }

                    if (*a3 == 1 || *a3 == -1)
                    {
                      break;
                    }

                    v43 = 0;
                    v44 = v19;
                    v45 = 0x100000;
                    while (1)
                    {
                      v77 = v43;
                      while (1)
                      {
                        v46 = guarded_pwrite_np();
                        if ((v46 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

                        v47 = g_prot_error_callback;
                        if (g_prot_error_callback)
                        {
                          v48 = __error();
                          if ((*(v47 + 16))(v47, v34, *v48, 5))
                          {
                            continue;
                          }
                        }

                        goto LABEL_93;
                      }

                      v49 = v45 > v46;
                      v45 -= v46;
                      if (!v49)
                      {
                        break;
                      }

                      v43 = v46 + v77;
                      v44 += v46;
                      v38 += v46;
                    }

                    bit_vector_internal_touch_for_set((a1 + 4200), v79);
                    CFBitVectorSetBitAtIndex(*(a1 + 4216), v79, 0);
                    v36 = 0;
                    v50 = 0;
                    a3 = v83;
                    v37 = v81 + 1;
                    v30 = v85;
                    a2 = v86;
                    if (v81 + 1 == v84)
                    {
                      goto LABEL_97;
                    }
                  }
                }

                else
                {
                  while (*a3 != 1)
                  {
                    v51 = *a3;
                    v80 = *(valuePtr + v37);
                    v82 = v37;
                    v52 = v80 << 20;
                    while (1)
                    {
                      v53 = pread(v32, v19, 0x100000uLL, v52);
                      v54 = g_prot_error_callback;
                      if (v53 != -1 || g_prot_error_callback == 0)
                      {
                        break;
                      }

                      v56 = __error();
                      if (((*(v54 + 16))(v54, v32, *v56, 4) & 1) == 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    if (v53 == -1)
                    {
LABEL_91:
                      v64 = *__error();
                      v65 = _SILogForLogForCategory(0);
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                      {
                        v66 = *__error();
                        *buf = 136315650;
                        v91 = "shadow";
                        v92 = 1024;
                        v93 = 663;
                        v94 = 1024;
                        v95 = v66;
                        _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: read err: %d", buf, 0x18u);
                      }

LABEL_96:
                      a2 = v86;
                      *__error() = v64;
                      v36 = 0;
                      v50 = *__error();
                      v30 = v85;
                      goto LABEL_97;
                    }

                    if (*a3 == 1)
                    {
                      break;
                    }

                    v57 = 0;
                    v58 = *a3;
                    v59 = v19;
                    v60 = 0x100000;
                    while (2)
                    {
                      v78 = v57;
                      while (1)
                      {
                        v61 = guarded_pwrite_np();
                        if ((v61 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

                        v62 = g_prot_error_callback;
                        if (g_prot_error_callback)
                        {
                          v63 = __error();
                          if ((*(v62 + 16))(v62, v34, *v63, 5))
                          {
                            continue;
                          }
                        }

LABEL_93:
                        v64 = *__error();
                        v67 = _SILogForLogForCategory(0);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          v91 = "shadow";
                          v92 = 1024;
                          v93 = 672;
                          v94 = 1024;
                          v95 = 0;
                          _os_log_error_impl(&dword_1C278D000, v67, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
                        }

                        a3 = v83;
                        goto LABEL_96;
                      }

                      v49 = v60 > v61;
                      v60 -= v61;
                      if (v49)
                      {
                        v57 = v61 + v78;
                        v59 += v61;
                        v52 += v61;
                        continue;
                      }

                      break;
                    }

                    bit_vector_internal_touch_for_set((a1 + 4200), v80);
                    CFBitVectorSetBitAtIndex(*(a1 + 4216), v80, 0);
                    v36 = 0;
                    v50 = 0;
                    a3 = v83;
                    v37 = v82 + 1;
                    v30 = v85;
                    a2 = v86;
                    if (v82 + 1 == v84)
                    {
                      goto LABEL_97;
                    }
                  }
                }

                v24 = 0xFFFFFFFFLL;
LABEL_114:
                _fd_release_fd(v17, v34, 0, v88);
              }
            }

            _fd_release_fd(*(a1 + 40), v32, 0, v89);
            goto LABEL_25;
          }

          v25 = *__error();
          v26 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          v70 = *__error();
          LODWORD(valuePtr[0]) = 136315650;
          *(valuePtr + 4) = "shadow";
          WORD6(valuePtr[0]) = 1024;
          *(valuePtr + 14) = 635;
          WORD1(valuePtr[1]) = 1024;
          DWORD1(valuePtr[1]) = v70;
          v69 = "%s:%d: fd_open source err: %d";
          goto LABEL_108;
        }

        if (fd_pread(*(a1 + 40), v19, v23, 0) == -1)
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v68 = *__error();
            LODWORD(valuePtr[0]) = 136315650;
            *(valuePtr + 4) = "shadow";
            WORD6(valuePtr[0]) = 1024;
            *(valuePtr + 14) = 617;
            WORD1(valuePtr[1]) = 1024;
            DWORD1(valuePtr[1]) = v68;
            v69 = "%s:%d: read err: %d";
LABEL_108:
            _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, v69, valuePtr, 0x18u);
          }
        }

        else
        {
          if (fd_pwrite(v17, v19, *(a1 + 56), 0) != -1)
          {
            bit_vector_internal_touch_for_set((a1 + 4200), 0);
            CFBitVectorSetBitAtIndex(*(a1 + 4216), 0, 0);
            v24 = 0;
LABEL_25:
            free(v19);
            fd_release(v17);
            result = v24;
            goto LABEL_30;
          }

          v25 = *__error();
          v26 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v71 = *__error();
            LODWORD(valuePtr[0]) = 136315650;
            *(valuePtr + 4) = "shadow";
            WORD6(valuePtr[0]) = 1024;
            *(valuePtr + 14) = 622;
            WORD1(valuePtr[1]) = 1024;
            DWORD1(valuePtr[1]) = v71;
            v69 = "%s:%d: pwrite err: %d";
            goto LABEL_108;
          }
        }
      }

LABEL_24:
      *__error() = v25;
      v24 = 0xFFFFFFFFLL;
      goto LABEL_25;
    }

    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v73 = *__error();
      LODWORD(valuePtr[0]) = 136315906;
      *(valuePtr + 4) = "shadow";
      WORD6(valuePtr[0]) = 1024;
      *(valuePtr + 14) = 595;
      WORD1(valuePtr[1]) = 1024;
      DWORD1(valuePtr[1]) = v73;
      WORD4(valuePtr[1]) = 2080;
      *(&valuePtr[1] + 10) = v7;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", valuePtr, 0x22u);
    }

    *__error() = v27;
LABEL_29:
    result = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  v13 = CFSetContainsValue(registeredCloneFds, v12);
  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v12);
  if (!v13 || !copyFileFallback(v9, __dst, v9, v7, a3, 0, 1))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 4200);
  if (v14 >= 1)
  {
    bit_vector_internal_touch_for_set((a1 + 4200), v14 - 1);
    v114.location = 0;
    v114.length = v14;
    CFBitVectorSetBits(*(a1 + 4216), v114, 0);
  }

  result = 0;
LABEL_30:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::name(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 120);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 136);
  }
}

BOOL PartitionStore<vi_onefixedsize_disk_allocator,512>::validAddress(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 72);
  if (v3 >= 1)
  {
    v4 = (v2 + 96);
    for (i = 1; ; ++i)
    {
      v6 = *v4;
      if (*v4 && (v7 = v6[1], v7 + 1 >= 2) && v7 <= a2 && (v9 = v6[2], v7 - v9 + v6[3] > a2))
      {
        v8 = a2 - v7 + v9;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      else
      {
        v8 = -1;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      ++v4;
      if (v8 != -1)
      {
        return v8 != -1;
      }
    }
  }

  return 0;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::makeReadOnly(void *a1)
{
  (*(*a1 + 136))(a1);
  v2 = a1[10];
  result = fd_make_readonly(*(v2 + 40));
  v4 = *(v2 + 40);
  if (v4)
  {
    do
    {
      result = fchmodat(*(v4 + 44), *(v4 + 72), 0x100u, 2048);
      v5 = g_prot_error_callback;
      if (result != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v7 = *(v4 + 40);
      v8 = __error();
      result = (*(v5 + 16))(v5, v7, *v8, 19);
    }

    while ((result & 1) != 0);
  }

  return result;
}

int *PartitionStore<vi_onefixedsize_disk_allocator,512>::flush(uint64_t a1)
{
  v2 = *(a1 + 80);
  *v2 = 0;
  vi_onefixedsize_disk_allocator::storeHeader(v2);
  v3 = *(a1 + 80);

  return storage_array_SyncPages(v3 + 8, v3 + 4200);
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::dump(uint64_t a1, void *a2, int a3)
{
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Quantizer ", 10);
  v6 = *(a1 + 8);
  if (!v6)
  {
    v83 = __si_assert_copy_extra_332();
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 908, "_quantizer != nullptr", v85);
    free(v84);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = *(v6 + 8);
  v7 = v6 + 8;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v11, v12);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " , ", 3);
  v15 = MEMORY[0x1C691FC90](v14, *(a1 + 72));
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " vectors in ", 12);
  v17 = MEMORY[0x1C691FC90](v16, *(a1 + 68));
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " partitions:", 12);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(v88, MEMORY[0x1E69E5318]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(v88);
  std::ostream::put();
  result = std::ostream::flush();
  if (a3 >= 3)
  {
    if (!*(a1 + 68))
    {
LABEL_13:
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v30 = std::locale::use_facet(v88, MEMORY[0x1E69E5318]);
      (v30->__vftable[2].~facet_0)(v30, 10);
      std::locale::~locale(v88);
      std::ostream::put();
      return std::ostream::flush();
    }

    if (a3 == 3)
    {
      v21 = 0;
      v22 = MEMORY[0x1E69E5318];
      do
      {
        v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "partition ", 10);
        v24 = MEMORY[0x1C691FC90](v23, v21);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, " (", 2);
        v25 = (*(*a1 + 48))(a1, v21);
        v26 = MEMORY[0x1C691FC90](v24, v25);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ")\t<=", 4);
        v27 = *((*(*a1 + 32))(a1, v21) + 4);
        v28 = std::ostream::operator<<();
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v29 = std::locale::use_facet(v88, v22);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(v88);
        std::ostream::put();
        std::ostream::flush();
        v21 = (v21 + 1);
      }

      while (v21 < *(a1 + 68));
      goto LABEL_13;
    }

    v31 = 0;
    v32 = MEMORY[0x1E69E5318];
    v86 = a1;
LABEL_17:
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "partition ", 10);
    v35 = MEMORY[0x1C691FC90](v34, v31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " (", 2);
    v36 = (*(*a1 + 48))(a1, v31);
    v37 = MEMORY[0x1C691FC90](v35, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ")\t<=", 4);
    v38 = *((*(*a1 + 32))(a1, v31) + 4);
    v39 = std::ostream::operator<<();
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v40 = std::locale::use_facet(v88, v32);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v87 = v31;
    v41 = *(a1 + 144) + 16 * v31;
    v89 = 0u;
    v90 = 0u;
    *&v88[0].__locale_ = 0u;
    PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::PartitionEnumerator(v88, *v41, *(*(*v41 + 96) + 4 * *(v41 + 8)));
    v88[0].__locale_ = &unk_1F427FFC8;
    PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::next(v88);
    while (1)
    {
      v43 = *(&v90 + 1);
      if (!*(&v90 + 1))
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v33 = std::locale::use_facet(v88, v32);
        (v33->__vftable[2].~facet_0)(v33, 10);
        std::locale::~locale(v88);
        std::ostream::put();
        std::ostream::flush();
        a1 = v86;
        v31 = v87 + 1;
        if (v87 + 1 >= *(v86 + 68))
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }

      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, a2);
      if (v91 != 1)
      {
        goto LABEL_50;
      }

      v44 = a2 + *(*a2 - 24);
      v45 = *(v44 + 5);
      if ((*(v44 + 2) & 0xB0) == 0x20)
      {
        v46 = "";
      }

      else
      {
        v46 = "  ";
      }

      v47 = *(v44 + 36);
      if (v47 == -1)
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v48 = std::locale::use_facet(&__b, v32);
        v47 = (v48->__vftable[2].~facet_0)(v48, 32);
        std::locale::~locale(&__b);
        *(v44 + 36) = v47;
        if (!v45)
        {
          goto LABEL_49;
        }
      }

      else if (!v45)
      {
        goto LABEL_49;
      }

      v49 = *(v44 + 3);
      v50 = v49 <= 2;
      v51 = v49 - 2;
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v51;
      }

      if (v46 - "  " >= 1 && (*(*v45 + 96))(v45, "  ", v46 - "  ") != v46 - "  ")
      {
        goto LABEL_49;
      }

      if (v52 >= 1)
      {
        __b.__locale_ = 0;
        v94 = 0;
        v95 = 0;
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_113;
        }

        if (v52 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v95) = v52;
        memset(&__b, v47, v52);
        *(&__b.__locale_ + v52) = 0;
        if (v95 >= 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b.__locale_;
        }

        v54 = (*(*v45 + 96))(v45, p_b, v52);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(__b.__locale_);
        }

        v32 = MEMORY[0x1E69E5318];
        if (v54 != v52)
        {
          goto LABEL_49;
        }
      }

      v55 = "  " - v46 + 2;
      if (v55 >= 1 && (*(*v45 + 96))(v45, v46, "  " - v46 + 2) != v55)
      {
LABEL_49:
        std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 5);
        goto LABEL_50;
      }

      *(v44 + 3) = 0;
LABEL_50:
      MEMORY[0x1C691FC50](&v91);
      v56 = MEMORY[0x1C691FC90](a2, *v43);
      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, v56);
      if (v91 != 1)
      {
        goto LABEL_80;
      }

      v57 = v56 + *(*v56 - 24);
      v58 = *(v57 + 5);
      if ((*(v57 + 2) & 0xB0) == 0x20)
      {
        v59 = "";
      }

      else
      {
        v59 = "(";
      }

      v60 = *(v57 + 36);
      if (v60 == -1)
      {
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v61 = std::locale::use_facet(&__b, v32);
        v60 = (v61->__vftable[2].~facet_0)(v61, 32);
        std::locale::~locale(&__b);
        *(v57 + 36) = v60;
        if (!v58)
        {
          goto LABEL_78;
        }
      }

      else if (!v58)
      {
        goto LABEL_78;
      }

      v62 = *(v57 + 3);
      v50 = v62 <= 1;
      v63 = v62 - 1;
      if (v50)
      {
        v64 = 0;
      }

      else
      {
        v64 = v63;
      }

      if (v59 - "(" >= 1 && (*(*v58 + 96))(v58, "(", v59 - "(") != v59 - "(")
      {
        goto LABEL_78;
      }

      if (v64 >= 1)
      {
        __b.__locale_ = 0;
        v94 = 0;
        v95 = 0;
        if (v64 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_113;
        }

        if (v64 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v95) = v64;
        memset(&__b, v60, v64);
        *(&__b.__locale_ + v64) = 0;
        if (v95 >= 0)
        {
          locale = &__b;
        }

        else
        {
          locale = __b.__locale_;
        }

        v66 = (*(*v58 + 96))(v58, locale, v64);
        if (SHIBYTE(v95) < 0)
        {
          v67 = v66;
          operator delete(__b.__locale_);
          if (v67 != v64)
          {
            goto LABEL_78;
          }
        }

        else if (v66 != v64)
        {
          goto LABEL_78;
        }
      }

      v68 = "(" - v59 + 1;
      if (v68 >= 1 && (*(*v58 + 96))(v58, v59, "(" - v59 + 1) != v68)
      {
LABEL_78:
        std::ios_base::clear((v56 + *(*v56 - 24)), *(v56 + *(*v56 - 24) + 32) | 5);
        goto LABEL_79;
      }

      *(v57 + 3) = 0;
LABEL_79:
      v32 = MEMORY[0x1E69E5318];
LABEL_80:
      MEMORY[0x1C691FC50](&v91);
      v69 = v43[1];
      v70 = std::ostream::operator<<();
      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, v70);
      if (v91)
      {
        v71 = v70 + *(*v70 - 24);
        v72 = *(v71 + 5);
        if ((*(v71 + 2) & 0xB0) == 0x20)
        {
          v73 = "";
        }

        else
        {
          v73 = ")";
        }

        v74 = *(v71 + 36);
        if (v74 == -1)
        {
          std::ios_base::getloc((v70 + *(*v70 - 24)));
          v75 = std::locale::use_facet(&__b, v32);
          v74 = (v75->__vftable[2].~facet_0)(v75, 32);
          std::locale::~locale(&__b);
          *(v71 + 36) = v74;
          if (!v72)
          {
            goto LABEL_18;
          }
        }

        else if (!v72)
        {
          goto LABEL_18;
        }

        v76 = *(v71 + 3);
        v50 = v76 <= 1;
        v77 = v76 - 1;
        if (v50)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        if (v73 - ")" >= 1 && (*(*v72 + 96))(v72, ")", v73 - ")") != v73 - ")")
        {
          goto LABEL_18;
        }

        if (v78 >= 1)
        {
          __b.__locale_ = 0;
          v94 = 0;
          v95 = 0;
          if (v78 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_113:
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          if (v78 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v95) = v78;
          memset(&__b, v74, v78);
          *(&__b.__locale_ + v78) = 0;
          if (v95 >= 0)
          {
            v79 = &__b;
          }

          else
          {
            v79 = __b.__locale_;
          }

          v80 = (*(*v72 + 96))(v72, v79, v78);
          v81 = v80;
          if (SHIBYTE(v95) < 0)
          {
            operator delete(__b.__locale_);
            if (v81 != v78)
            {
              goto LABEL_18;
            }
          }

          else if (v80 != v78)
          {
            goto LABEL_18;
          }
        }

        v82 = ")" - v73 + 1;
        if (v82 < 1 || (*(*v72 + 96))(v72, v73, ")" - v73 + 1) == v82)
        {
          *(v71 + 3) = 0;
        }

        else
        {
LABEL_18:
          std::ios_base::clear((v70 + *(*v70 - 24)), *(v70 + *(*v70 - 24) + 32) | 5);
        }

        v32 = MEMORY[0x1E69E5318];
      }

      MEMORY[0x1C691FC50](&v91);
      std::ios_base::getloc((v70 + *(*v70 - 24)));
      v42 = std::locale::use_facet(&__b, v32);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&__b);
      std::ostream::put();
      std::ostream::flush();
      (*(v88[0].__locale_ + 3))(v88);
    }
  }

  return result;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::PartitionEnumerator(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_1F427FFF8;
  *(a1 + 8) = a2;
  *(a1 + 20) = 0x100000001;
  *(a1 + 32) = 0;
  v3 = (a1 + 32);
  *(a1 + 40) = 0;
  if (!a2)
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1441, "store != nullptr", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a2 + 80), a3);
  v6 = *(v5 + 8);
  *(a1 + 16) = *(v5 + 4);
  if (v6 > *(a1 + 24))
  {
    *v3 = v5;
  }

  return a1;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::next(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 24), v3 < v2[2]))
  {
    v4 = *(a1 + 20);
    if (v4 > 0x1FF)
    {
      if (!*v2)
      {
        v1 = 0;
        goto LABEL_8;
      }

      v7 = a1;
      v8 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(v1 + 80), *v2);
      if (*(v8 + 8))
      {
        goto LABEL_14;
      }

      v9 = *__error();
      v10 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v7 + 32);
        v12 = *v11;
        v13 = *(v7 + 16);
        v14 = *(v7 + 20);
        v15 = *(v7 + 24);
        LODWORD(v11) = v11[2];
        v16 = *(v8 + 12);
        v17 = *(v8 + 16);
        *buf = 136317186;
        v24 = "next";
        v25 = 1024;
        v26 = 1466;
        v27 = 1024;
        v28 = v12;
        v29 = 1024;
        v30 = v13;
        v31 = 1024;
        v32 = v14;
        v33 = 1024;
        v34 = v15;
        v35 = 1024;
        v36 = v11;
        v37 = 1024;
        v38 = v16;
        v39 = 2048;
        v40 = v17;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: blockAt(%u).count=0 centOffset=%u currentOffset=%u visited=%u count=%u vec[0]=%u(%f)", buf, 0x40u);
      }

      *__error() = v9;
      if (*(v8 + 8))
      {
LABEL_14:
        if (*(v8 + 4) == *(v7 + 16))
        {
          a1 = v7;
          *(v7 + 32) = v8;
          v1 = v8 + 12;
          *(v7 + 20) = 0x100000001;
          goto LABEL_7;
        }

        v21 = __si_assert_copy_extra_332();
        v19 = v21;
        v22 = "";
        if (v21)
        {
          v22 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1469, "block->centOffset == centOffset", v22);
      }

      else
      {
        v18 = __si_assert_copy_extra_332();
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1468, "block->count > 0", v20);
      }

      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *(a1 + 20) = v4 + 1;
    *(a1 + 24) = v3 + 1;
    v1 = &v2[2 * v4 + 3];
  }

  else
  {
    v1 = 0;
  }

LABEL_7:
  *(a1 + 40) = v1;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

unint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(uint64_t a1, unsigned int a2)
{
  result = _windowsResolvePtr(a1 + 40, *(a1 + 24) + *(a1 + 16) * a2, 4108);
  if (!result)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1337, "block != 0", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

void std::__shared_ptr_emplace<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator,std::allocator<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4280028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::vectorOffsetsInPartition@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 144) + 16 * a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0u;
  PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::PartitionEnumerator(v7, *v4, *(*(*v4 + 96) + 4 * *(v4 + 8)));
  *&v7[0] = &unk_1F427FFC8;
  result = PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::next(v7);
  for (i = *(&v8 + 1); *(&v8 + 1); i = *(&v8 + 1))
  {
    v9 = *i;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v9);
    result = (*(*&v7[0] + 24))(v7);
  }

  return result;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::enumeratePartition(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v7 = a1[18] + 16 * a2;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::PartitionEnumerator(v9, *v7, *(*(*v7 + 96) + 4 * *(v7 + 8)));
  *&v9[0] = &unk_1F427FFC8;
  for (result = PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::next(v9); *(&v10 + 1); result = (*(*&v9[0] + 24))(v9))
  {
    (*(a3 + 16))(a3, v6);
  }

  return result;
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::enumeratePartitions(void *a1, unsigned int **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == a2[1])
  {
    v6 = 0uLL;
  }

  else
  {
    v6 = 0uLL;
    do
    {
      v135 = v6;
      v7 = *v3;
      if ((*(*a1 + 48))(a1, v7))
      {
        v8 = (*(*a1 + 40))(a1, v7);
        v9 = a1[18] + 16 * v7;
        v150 = 0;
        memset(v149, 0, sizeof(v149));
        memset(v143, 0, sizeof(v143));
        PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::PartitionEnumerator(v143, *v9, *(*(*v9 + 96) + 4 * *(v9 + 8)));
        *&v143[0] = &unk_1F427FFC8;
        PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEnumerator::next(v143);
        v141 = 0;
        v142 = 0;
        v138 = &unk_1F427FFC8;
        *&v139 = 0;
        *(v149 + 8) = *(v143 + 8);
        *(&v149[1] + 8) = *(&v143[1] + 8);
        *(&v149[2] + 1) = *(&v143[2] + 1);
        *&v149[0] = &unk_1F427FFC8;
        *(&v149[3] + 8) = v139;
        *(&v149[4] + 8) = v140;
        *(&v149[5] + 1) = 0;
        *&v149[3] = &unk_1F427FFC8;
        LODWORD(v150) = v8;
        v10 = v135;
        v11 = 0x4EC4EC4EC4EC4EC5 * ((*(&v135 + 1) - v135) >> 3) + 1;
        if (v11 > 0x276276276276276)
        {
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        if (0x9D89D89D89D89D8ALL * (-v135 >> 3) > v11)
        {
          v11 = 0x9D89D89D89D89D8ALL * (-v135 >> 3);
        }

        if ((0x4EC4EC4EC4EC4EC5 * (-v135 >> 3)) >= 0x13B13B13B13B13BLL)
        {
          v12 = 0x276276276276276;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (v12 <= 0x276276276276276)
          {
            operator new();
          }

          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v13 = 8 * ((*(&v135 + 1) - v135) >> 3);
        *(v13 + 8) = *(v149 + 8);
        *(v13 + 24) = *(&v149[1] + 8);
        v14 = *(&v149[2] + 1);
        *v13 = &unk_1F427FFC8;
        *(v13 + 56) = *(&v149[3] + 8);
        *(v13 + 72) = *(&v149[4] + 8);
        *(v13 + 88) = *(&v149[5] + 1);
        *(v13 + 40) = v14;
        *(v13 + 48) = &unk_1F427FFC8;
        *(v13 + 96) = v8;
        v15 = (*(&v135 + 1) - v135) / -104;
        if (v135 != *(&v135 + 1))
        {
          v16 = 0;
          do
          {
            v17 = 8 * ((*(&v135 + 1) - v135) >> 3) + 104 * v15 + v16;
            v18 = *(v135 + v16 + 8);
            v19 = *(v135 + v16 + 40);
            *(v17 + 24) = *(v135 + v16 + 24);
            *(v17 + 8) = v18;
            *v17 = &unk_1F427FFC8;
            *(v17 + 40) = v19;
            *(v17 + 48) = &unk_1F427FFF8;
            v20 = *(v135 + v16 + 56);
            v21 = *(v135 + v16 + 72);
            *(v17 + 88) = *(v135 + v16 + 88);
            *(v17 + 72) = v21;
            *(v17 + 56) = v20;
            *(v17 + 48) = &unk_1F427FFC8;
            *(v17 + 96) = *(v135 + v16 + 96);
            v16 += 104;
          }

          while (v135 + v16 != *(&v135 + 1));
        }

        v22 = v13 + 104;
        *&v6 = v13 + 104 * v15;
        if (v135)
        {
          v136 = v13 + 104 * v15;
          operator delete(v10);
          *&v6 = v136;
        }

        *(&v6 + 1) = v22;
      }

      else
      {
        v6 = v135;
      }

      ++v3;
    }

    while (v3 != a2[1]);
  }

  v23 = v6;
  v24 = *(&v6 + 1) - v6;
  if ((*(&v6 + 1) - v6) >= 105)
  {
    v25 = 0x4EC4EC4EC4EC4EC5 * (v24 >> 3);
    v26 = (v25 - 2) >> 1;
    v27 = v26;
    do
    {
      v32 = v27;
      if (v24 >= 208 && v26 >= v27)
      {
        v33 = (2 * v27) | 1;
        v34 = v6 + 104 * v33;
        if (2 * v27 + 2 < v25)
        {
          v35 = **(v34 + 40);
          v36 = **(v34 + 144);
          v37 = v35 > v36;
          v38 = v35 <= v36 ? 0 : 104;
          v34 += v38;
          if (v37)
          {
            v33 = 2 * v27 + 2;
          }
        }

        v39 = v6 + 104 * v27;
        if (**(v34 + 40) <= **(v39 + 40))
        {
          v150 = 0;
          v40 = *(v39 + 8);
          v41 = *(v39 + 24);
          *(&v149[2] + 1) = *(v39 + 40);
          *(&v149[1] + 8) = v41;
          *(v149 + 8) = v40;
          v42 = *(v39 + 56);
          v43 = *(v39 + 72);
          *(&v149[5] + 1) = *(v39 + 88);
          *(&v149[4] + 8) = v43;
          *(&v149[3] + 8) = v42;
          *&v149[3] = &unk_1F427FFC8;
          LODWORD(v150) = *(v39 + 96);
          do
          {
            v48 = v39;
            v39 = v34;
            v49 = *(v34 + 8);
            v50 = *(v34 + 24);
            *(v48 + 40) = *(v34 + 40);
            *(v48 + 24) = v50;
            *(v48 + 8) = v49;
            v51 = *(v34 + 56);
            v52 = *(v34 + 72);
            *(v48 + 88) = *(v34 + 88);
            *(v48 + 72) = v52;
            *(v48 + 56) = v51;
            *(v48 + 96) = *(v34 + 96);
            if (v26 < v33)
            {
              break;
            }

            v53 = (2 * v33) | 1;
            v34 = v6 + 104 * v53;
            v54 = 2 * v33 + 2;
            if (v54 < v25)
            {
              v44 = **(v34 + 40);
              v45 = **(v34 + 144);
              v46 = v44 > v45;
              v47 = v44 <= v45 ? 0 : 104;
              v34 += v47;
              v33 = v46 ? v54 : v53;
            }

            else
            {
              v33 = (2 * v33) | 1;
            }
          }

          while (**(v34 + 40) <= **(&v149[2] + 1));
          v28 = *(v149 + 8);
          v29 = *(&v149[1] + 8);
          *(v39 + 40) = *(&v149[2] + 1);
          *(v39 + 24) = v29;
          *(v39 + 8) = v28;
          v30 = *(&v149[3] + 8);
          v31 = *(&v149[4] + 8);
          *(v39 + 88) = *(&v149[5] + 1);
          *(v39 + 72) = v31;
          *(v39 + 56) = v30;
          *(v39 + 96) = v150;
        }
      }

      v27 = v32 - 1;
    }

    while (v32);
  }

  if (*(&v6 + 1) != v6)
  {
    v137 = v6;
    while (1)
    {
      v60 = *(v23 + 40);
      v61 = *(v23 + 96);
      LOBYTE(v138) = 0;
      (*(a3 + 16))(a3, v61, v60, &v138);
      if (v138 == 1)
      {
        break;
      }

      v23 = v137;
      (*(*v137 + 24))(v137);
      v59 = *(&v137 + 1);
      *&v62 = v137;
      v63 = *(&v137 + 1) - v137;
      v64 = 0x4EC4EC4EC4EC4EC5 * ((*(&v137 + 1) - v137) >> 3);
      if (*(v23 + 40) == *(v23 + 88))
      {
        if (v63 >= 105)
        {
          v93 = 0;
          v148 = 0;
          v94 = *(v137 + 8);
          v95 = *(v137 + 24);
          *(&v143[2] + 1) = *(v137 + 40);
          *(&v143[1] + 8) = v95;
          *(v143 + 8) = v94;
          v96 = *(v137 + 56);
          v97 = *(v137 + 72);
          v147 = *(v137 + 88);
          v146 = v97;
          v145 = v96;
          v144 = &unk_1F427FFC8;
          LODWORD(v148) = *(v137 + 96);
          v98 = v137;
          do
          {
            v103 = v98 + 104 * v93 + 104;
            v104 = (2 * v93) | 1;
            v105 = 2 * v93 + 2;
            if (v105 < v64)
            {
              v106 = **(v103 + 40);
              v107 = **(v103 + 144);
              v108 = v106 > v107;
              v109 = v106 <= v107 ? 0 : 104;
              v103 += v109;
              if (v108)
              {
                v104 = v105;
              }
            }

            v99 = *(v103 + 8);
            v100 = *(v103 + 24);
            *(v98 + 40) = *(v103 + 40);
            *(v98 + 24) = v100;
            *(v98 + 8) = v99;
            v101 = *(v103 + 56);
            v102 = *(v103 + 72);
            *(v98 + 88) = *(v103 + 88);
            *(v98 + 72) = v102;
            *(v98 + 56) = v101;
            *(v98 + 96) = *(v103 + 96);
            v98 = v103;
            v93 = v104;
          }

          while (v104 <= ((v64 - 2) >> 1));
          if (v103 == *(&v137 + 1) - 104)
          {
            v55 = *(v143 + 8);
            v56 = *(&v143[1] + 8);
            *(v103 + 40) = *(&v143[2] + 1);
            *(v103 + 24) = v56;
            *(v103 + 8) = v55;
            v57 = v145;
            v58 = v146;
            *(v103 + 88) = v147;
            *(v103 + 72) = v58;
            *(v103 + 56) = v57;
            *(v103 + 96) = v148;
          }

          else
          {
            v110 = *(*(&v137 + 1) - 96);
            v111 = *(*(&v137 + 1) - 80);
            *(v103 + 40) = *(*(&v137 + 1) - 64);
            *(v103 + 24) = v111;
            *(v103 + 8) = v110;
            v112 = *(*(&v137 + 1) - 48);
            v113 = *(*(&v137 + 1) - 32);
            *(v103 + 88) = *(*(&v137 + 1) - 16);
            *(v103 + 72) = v113;
            *(v103 + 56) = v112;
            *(v103 + 96) = *(*(&v137 + 1) - 8);
            v114 = *(v143 + 8);
            v115 = *(&v143[1] + 8);
            *(*(&v137 + 1) - 64) = *(&v143[2] + 1);
            *(*(&v137 + 1) - 96) = v114;
            *(*(&v137 + 1) - 80) = v115;
            v116 = v145;
            v117 = v146;
            *(*(&v137 + 1) - 16) = v147;
            *(*(&v137 + 1) - 48) = v116;
            *(*(&v137 + 1) - 32) = v117;
            *(*(&v137 + 1) - 8) = v148;
            v118 = v103 - v137 + 104;
            if (v118 >= 105)
            {
              v119 = (0x4EC4EC4EC4EC4EC5 * (v118 >> 3) - 2) >> 1;
              v120 = v137 + 104 * v119;
              if (**(v120 + 40) > **(v103 + 40))
              {
                v150 = 0;
                v121 = *(v103 + 8);
                v122 = *(v103 + 24);
                *(&v149[2] + 1) = *(v103 + 40);
                *(&v149[1] + 8) = v122;
                *(v149 + 8) = v121;
                v123 = *(v103 + 56);
                v124 = *(v103 + 72);
                *(&v149[5] + 1) = *(v103 + 88);
                *(&v149[4] + 8) = v124;
                *(&v149[3] + 8) = v123;
                *&v149[3] = &unk_1F427FFC8;
                LODWORD(v150) = *(v103 + 96);
                do
                {
                  v125 = v120;
                  v126 = *(v120 + 8);
                  v127 = *(v120 + 24);
                  *(v103 + 40) = *(v120 + 40);
                  *(v103 + 24) = v127;
                  *(v103 + 8) = v126;
                  v128 = *(v120 + 56);
                  v129 = *(v120 + 72);
                  *(v103 + 88) = *(v120 + 88);
                  *(v103 + 72) = v129;
                  *(v103 + 56) = v128;
                  *(v103 + 96) = *(v120 + 96);
                  if (!v119)
                  {
                    break;
                  }

                  v119 = (v119 - 1) >> 1;
                  v120 = v137 + 104 * v119;
                  v103 = v125;
                }

                while (**(v120 + 40) > **(&v149[2] + 1));
                v130 = *(v149 + 8);
                v131 = *(&v149[1] + 8);
                *(v125 + 40) = *(&v149[2] + 1);
                *(v125 + 24) = v131;
                *(v125 + 8) = v130;
                v132 = *(&v149[3] + 8);
                v133 = *(&v149[4] + 8);
                *(v125 + 88) = *(&v149[5] + 1);
                *(v125 + 72) = v133;
                *(v125 + 56) = v132;
                *(v125 + 96) = v150;
              }
            }
          }
        }

        v59 = *(&v137 + 1) - 104;
        *(&v62 + 1) = *(&v137 + 1) - 104;
        v137 = v62;
      }

      else if (v63 >= 208)
      {
        v65 = (v64 - 2) >> 1;
        v66 = v65;
        do
        {
          v71 = v66;
          if (v65 >= v66)
          {
            v72 = (2 * v66) | 1;
            v73 = v137 + 104 * v72;
            if (2 * v66 + 2 < v64)
            {
              v74 = **(v73 + 40);
              v75 = **(v73 + 144);
              v76 = v74 > v75;
              v77 = v74 <= v75 ? 0 : 104;
              v73 += v77;
              if (v76)
              {
                v72 = 2 * v66 + 2;
              }
            }

            v78 = v137 + 104 * v66;
            if (**(v73 + 40) <= **(v78 + 40))
            {
              v150 = 0;
              v79 = *(v78 + 8);
              v80 = *(v78 + 24);
              *(&v149[2] + 1) = *(v78 + 40);
              *(&v149[1] + 8) = v80;
              *(v149 + 8) = v79;
              v81 = *(v78 + 56);
              v82 = *(v78 + 72);
              *(&v149[5] + 1) = *(v78 + 88);
              *(&v149[4] + 8) = v82;
              *(&v149[3] + 8) = v81;
              *&v149[3] = &unk_1F427FFC8;
              LODWORD(v150) = *(v78 + 96);
              do
              {
                v87 = v78;
                v78 = v73;
                v88 = *(v73 + 8);
                v89 = *(v73 + 24);
                *(v87 + 40) = *(v73 + 40);
                *(v87 + 24) = v89;
                *(v87 + 8) = v88;
                v90 = *(v73 + 56);
                v91 = *(v73 + 72);
                *(v87 + 88) = *(v73 + 88);
                *(v87 + 72) = v91;
                *(v87 + 56) = v90;
                *(v87 + 96) = *(v73 + 96);
                if (v65 < v72)
                {
                  break;
                }

                v92 = (2 * v72) | 1;
                v73 = v137 + 104 * v92;
                v72 = 2 * v72 + 2;
                if (v72 < v64)
                {
                  v83 = **(v73 + 40);
                  v84 = **(v73 + 144);
                  v85 = v83 > v84;
                  if (v83 <= v84)
                  {
                    v86 = 0;
                  }

                  else
                  {
                    v86 = 104;
                  }

                  v73 += v86;
                  if (!v85)
                  {
                    v72 = v92;
                  }
                }

                else
                {
                  v72 = v92;
                }
              }

              while (**(v73 + 40) <= **(&v149[2] + 1));
              v67 = *(v149 + 8);
              v68 = *(&v149[1] + 8);
              *(v78 + 40) = *(&v149[2] + 1);
              *(v78 + 24) = v68;
              *(v78 + 8) = v67;
              v69 = *(&v149[3] + 8);
              v70 = *(&v149[4] + 8);
              *(v78 + 88) = *(&v149[5] + 1);
              *(v78 + 72) = v70;
              *(v78 + 56) = v69;
              *(v78 + 96) = v150;
            }
          }

          v66 = v71 - 1;
        }

        while (v71);
      }

      if (v59 == v23)
      {
        goto LABEL_93;
      }
    }

    v23 = v137;
  }

LABEL_93:
  if (v23)
  {
    operator delete(v23);
  }
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::enumeratePartitions(_DWORD *a1, uint64_t a2)
{
  if (a1[17])
  {
    operator new();
  }

  __p = 0;
  v3 = 0;
  v4 = 0;
  (*(*a1 + 72))(a1, &__p, a2);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

unint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::append(uint64_t a1, unsigned int a2, int a3, float a4)
{
  v7 = *(*(a1 + 96) + 4 * a2);
  v8 = (*(*a1 + 40))(a1);
  v9 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), v7);
  if (*(v9 + 4) != v8)
  {
    goto LABEL_21;
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    if (*(v9 + 16) < a4)
    {
      *(v9 + 12) = a3;
      *(v9 + 16) = a4;
    }

    if (v10 >= 0x200)
    {
      *(v9 + 8) = v10 + 1;
      v11 = *v9;
      if (*v9)
      {
        goto LABEL_17;
      }

LABEL_16:
      v11 = PartitionStore<vi_onefixedsize_disk_allocator,512>::newBlock(a1, v8);
      *PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), v7) = v11;
LABEL_17:
      while (1)
      {
        v9 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), v11);
        if (*(v9 + 4) != v8)
        {
          break;
        }

        v10 = *(v9 + 8);
        if (v10 < 0x200)
        {
          goto LABEL_9;
        }

        *(v9 + 8) = v10 + 1;
        v7 = v11;
        v11 = *v9;
        if (!*v9)
        {
          goto LABEL_16;
        }
      }

LABEL_21:
      v23 = __si_assert_copy_extra_332();
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1363, "block->centOffset == centOffset", v25);
      free(v24);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }
  }

  else
  {
    *(v9 + 16) = a4;
    v10 = 1;
    *(v9 + 8) = 1;
    *(v9 + 12) = a3;
  }

LABEL_9:
  v12 = v9 + 8 * v10;
  *(v9 + 8) = v10 + 1;
  *(v12 + 12) = a3;
  *(v12 + 16) = a4;
  if (a4 == 0.0)
  {
    v13 = 3.4028e38;
  }

  else
  {
    v14 = *(a1 + 64);
    v15 = v14 / 0xADC8;
    v16 = 48271 * (v14 % 0xADC8);
    v15 *= 3399;
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0x7FFFFFFF;
    }

    v20 = v19 + v18;
    *(a1 + 64) = v20;
    v13 = -logf(vcvts_n_f32_u32(v20 - 1, 0x1FuLL)) / a4;
  }

  v27[0] = a3;
  *&v27[1] = v13;
  MaxSizePriorityQueue<AnyPartitionStore::CandidateEntry,std::vector<AnyPartitionStore::CandidateEntry>,AnyPartitionStore::CandidateQueue::Lesser>::push((a1 + 24), v27);
  ++*(a1 + 72);
  v21 = *(a1 + 80);
  bit_vector_set_13535((v21 + 4200), 0);
  result = _windowsResolvePtr(v21 + 40, 0x400uLL, *(v21 + 16));
  *(result + 12) = *(a1 + 72);
  return result;
}

unint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(void *a1, unsigned int a2)
{
  v3 = a2;
  v4 = a1[3] + a1[2] * a2;
  bit_vector_set_13535(a1 + 525, (v4 >> 20));
  v5 = (v4 + 4108) >> 20;
  if (v5 > (v4 >> 20))
  {
    v6 = (v4 >> 20) + 1;
    do
    {
      v7 = v6;
      bit_vector_set_13535(a1 + 525, v6++);
    }

    while (v5 > v7);
  }

  result = _windowsResolvePtr((a1 + 5), a1[3] + a1[2] * v3, 4108);
  if (!result)
  {
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1343, "block != 0", v11);
    free(v10);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

unint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::newBlock(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), 0);
  v5 = *(a1 + 80);
  v6 = *(v5 + 16);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  if (v8 + v6 >= v7)
  {
    if (!_storage_array_Expand(v5 + 8))
    {
      v14 = 0;
      goto LABEL_8;
    }

    v7 = *(v5 + 48);
    v8 = *(v5 + 56);
  }

  v9 = v8 + v6;
  if (v9 >= v7)
  {
    if (!_storageWindowsExpandBacking((v5 + 40), v6))
    {
      v8 = 0;
      goto LABEL_4;
    }

    v8 = *(v5 + 56);
    v9 = v8 + v6;
  }

  *(v5 + 56) = v9;
LABEL_4:
  v10 = *(v5 + 24);
  bit_vector_set_13535((v5 + 4200), 0);
  if (v10 >= 0x100000)
  {
    v11 = v10 >> 20;
    v12 = 1;
    do
    {
      v13 = v12;
      bit_vector_set_13535((v5 + 4200), v12++);
    }

    while (v11 > v13);
  }

  v14 = (v8 - *(v5 + 24)) / v6;
LABEL_8:
  v15 = *(v5 + 16);
  if (v6 >> 2 <= 0x402 && v15 >> 2 <= 0x402)
  {
    LODWORD(v16) = 4108;
    while (1)
    {
      v18 = *(v5 + 48);
      v17 = *(v5 + 56);
      if (v17 + v15 < v18)
      {
        goto LABEL_13;
      }

      if (_storage_array_Expand(v5 + 8))
      {
        break;
      }

LABEL_11:
      v15 = *(v5 + 16);
      v16 = (v16 - v15);
      if (v15 >= v16)
      {
        goto LABEL_23;
      }
    }

    v18 = *(v5 + 48);
    v17 = *(v5 + 56);
LABEL_13:
    v19 = v17 + v15;
    if (v19 >= v18)
    {
      if (!_storageWindowsExpandBacking((v5 + 40), v15))
      {
LABEL_15:
        v20 = *(v5 + 24);
        bit_vector_set_13535((v5 + 4200), 0);
        if (v20 >= 0x100000)
        {
          v21 = v20 >> 20;
          v22 = 1;
          do
          {
            v23 = v22;
            bit_vector_set_13535((v5 + 4200), v22++);
          }

          while (v21 > v23);
        }

        goto LABEL_11;
      }

      v19 = *(v5 + 56) + v15;
    }

    *(v5 + 56) = v19;
    goto LABEL_15;
  }

LABEL_23:
  v24 = *(v5 + 24) + v15 * v14;
  bit_vector_set_13535((v5 + 4200), (v24 >> 20));
  v25 = (v24 + 4108) >> 20;
  if (v25 > (v24 >> 20))
  {
    v26 = (v24 >> 20) + 1;
    do
    {
      v27 = v26;
      bit_vector_set_13535((v5 + 4200), v26++);
    }

    while (v25 > v27);
  }

  v28 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), 0);
  if (v4 != v28)
  {
    v29 = v28;
    v30 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218240;
      v36 = v4;
      v37 = 2048;
      v38 = v29;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "Partition Storage remapped from %p to %p", &v35, 0x16u);
    }

    *__error() = v30;
  }

  v32 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), v14);
  bzero(v32, 0x100CuLL);
  v32[1] = a2;
  v33 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::vectorCountInPartition(uint64_t a1, unsigned int a2)
{
  v2 = *(PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), *(*(a1 + 96) + 4 * a2)) + 8);
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::centOffsetForPartition(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), *(*(a1 + 96) + 4 * a2));
  if (*(v3 + 4) != a2)
  {
    v4 = v3;
    v5 = *__error();
    v6 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = *(v4 + 4);
      *buf = 136316162;
      v14 = "centOffsetForPartition";
      v15 = 1024;
      v16 = 1321;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a2;
      v21 = 2048;
      v22 = v4;
      _os_log_fault_impl(&dword_1C278D000, v6, OS_LOG_TYPE_FAULT, "%s:%d: block->centOffset = %u, partitionId = %u, block = %p", buf, 0x28u);
    }

    *__error() = v5;
    if (*(v4 + 4) != a2)
    {
      v10 = __si_assert_copy_extra_332();
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1322, "block->centOffset == partitionID", v12);
      free(v11);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

void PartitionStore<vi_onefixedsize_disk_allocator,512>::~PartitionStore(uint64_t a1)
{
  PartitionStore<vi_onefixedsize_disk_allocator,512>::~PartitionStore(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::~PartitionStore(uint64_t a1)
{
  *a1 = &unk_1F427FEF0;
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4)
  {
    storage_array_Close(v4 + 8);
    v5 = *(v4 + 4216);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 4216) = 0;
    }

    *(v4 + 4200) = 0u;
    MEMORY[0x1C691FEF0](v4, 0x10A0C40112AF241);
  }

  *a1 = &unk_1F427DFB8;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

uint64_t PartitionStore<vi_onefixedsize_disk_allocator,512>::newPartition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 908, "_quantizer != nullptr", v13);
LABEL_15:
    free(v12);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = *(a1 + 68);
  if (v5 > (*(*v3 + 24))(v3))
  {
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1391, "n_partitions <= quantizer()->count()", v16);
LABEL_21:
    free(v15);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

  v6 = *(a1 + 68);
  if (v6 > *(a1 + 88) - 1)
  {
    v17 = __si_assert_copy_extra_332();
    v12 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1392, "n_partitions <= max_partitions - 1", v18);
    goto LABEL_15;
  }

  if (v6 != a2)
  {
    v19 = __si_assert_copy_extra_332();
    v15 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1394, "centOffset == partID", v20);
    goto LABEL_21;
  }

  v7 = PartitionStore<vi_onefixedsize_disk_allocator,512>::newBlock(a1, a2);
  v23 = v7;
  *(PartitionStore<vi_onefixedsize_disk_allocator,512>::blockAt(*(a1 + 80), v7) + 12) = -1;
  ++*(a1 + 68);
  v8 = *(a1 + 80);
  bit_vector_set_13535((v8 + 4200), 0);
  v9 = _windowsResolvePtr(v8 + 40, 0x400uLL, *(v8 + 16));
  *(v9 + 4 * a2 + 124) = v7;
  *(v9 + 8) = *(a1 + 68);
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 96, &v23);
  *&v22 = a1;
  DWORD2(v22) = a2;
  std::vector<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEntries,std::allocator<PartitionStore<vi_onefixedsize_disk_allocator,512>::PartitionEntries>>::push_back[abi:nn200100](a1 + 144, &v22);
  return a2;
}

void std::__shared_ptr_emplace<PartitionStore<vi_onefixedsize_disk_allocator,512>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427FEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::__shared_ptr_pointer<QuantizerManager<float,768> *,std::shared_ptr<QuantizerManager<float,768>>::__shared_ptr_default_delete<QuantizerManager<float,768>,QuantizerManager<float,768>>,std::allocator<QuantizerManager<float,768>>>::__on_zero_shared(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *__error();
    v4 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (v1 + 24);
      if (*(v1 + 47) < 0)
      {
        v5 = *v5;
      }

      v6 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v6 = *v6;
      }

      v15 = 136315394;
      v16 = v5;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "QuantizerManager %s/%s destroyed", &v15, 0x16u);
    }

    *__error() = v3;
    v7 = *(v1 + 128);
    if (v7)
    {
      do
      {
        v12 = *v7;
        v13 = v7[4];
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        operator delete(v7);
        v7 = v12;
      }

      while (v12);
    }

    v8 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(v1 + 104);
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(v1 + 88);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_19:
        if ((*(v1 + 47) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_29:
        operator delete(*(v1 + 24));
LABEL_20:
        v11 = *MEMORY[0x1E69E9840];

        JUMPOUT(0x1C691FEF0);
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__shared_ptr_pointer<QuantizerManager<float,768> *,std::shared_ptr<QuantizerManager<float,768>>::__shared_ptr_default_delete<QuantizerManager<float,768>,QuantizerManager<float,768>>,std::allocator<QuantizerManager<float,768>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>,std::allocator<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    storage_array_Close(v2 + 8);
    v3 = *(v2 + 4216);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 4216) = 0;
    }

    *(v2 + 4200) = 0u;

    JUMPOUT(0x1C691FEF0);
  }
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>,std::allocator<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_disk_allocator,vi_disk_postings>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4280E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::replaceQuantizer(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 152));
  os_unfair_lock_lock((a1 + 112));
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  v8 = *(a1 + 104);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v10 = (*(**a2 + 24))();
  v11 = *a3;
  if (v10 != *(*a3 + 68))
  {
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2559, "newQuantizer->count() == newPartitions->nPartitions()", v30);
    free(v29);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(*(a1 + 48) + 40) != v11[18])
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2560, "vectors->count() == newPartitions->nVectors()", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }

  if (v7 && v9)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v7 + 8;
      if (v7[31] < 0)
      {
        v14 = *v14;
      }

      v40 = v14;
      v15 = (*(*v7 + 16))(v7);
      v16 = (*a2 + 8);
      v37 = v15;
      v38 = v12;
      if (*(*a2 + 31) < 0)
      {
        v16 = *v16;
      }

      v39 = v16;
      v36 = (*(**a2 + 16))(*a2);
      v17 = v46;
      (*(*v9 + 152))(v46, v9);
      if (v47 < 0)
      {
        v17 = v46[0];
      }

      v18 = v9[18];
      v35 = v9[17];
      (*(**a3 + 152))(__p);
      v19 = __p;
      if (v45 < 0)
      {
        v19 = __p[0];
      }

      v20 = *(*a3 + 68);
      v21 = *(*a3 + 72);
      *buf = 136317442;
      v49 = v40;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      v53 = v39;
      v54 = 1024;
      v55 = v36;
      v56 = 2080;
      v57 = v17;
      v58 = 1024;
      v59 = v18;
      v60 = 1024;
      v61 = v35;
      v62 = 2080;
      v63 = v19;
      v64 = 1024;
      v65 = v21;
      v66 = 1024;
      v67 = v20;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Replace quantizer %s(%u) -> %s(%u), partitions %s(%u/%u) -> %s(%u/%u)", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v38;
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }
    }

    *__error() = v12;
    v11 = *a3;
  }

  if ((*(*v11 + 24))(v11))
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22 && (*(*v9 + 24))(v9))
  {
    (*(**a3 + 176))(*a3, v9);
  }

  v23 = a2[1];
  *&v41 = *a2;
  *(&v41 + 1) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a3[1];
  v42 = *a3;
  v43 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 112));
  _ZNSt3__14swapB8nn200100IN22IVFVectorIndexTemplateIDF16_Li256EE19QuantizerPartitionsEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_((a1 + 80), &v41);
  os_unfair_lock_unlock((a1 + 112));
  v25 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  os_unfair_lock_unlock((a1 + 152));
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v27 = *MEMORY[0x1E69E9840];
}