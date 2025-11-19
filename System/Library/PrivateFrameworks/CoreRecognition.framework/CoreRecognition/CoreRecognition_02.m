void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 - 8);
  v7 = *(a2 - 8);
  if (v6 < v7 || v7 >= v6 && *(a4 - 4) < *(a2 - 4))
  {
    v8 = *(a6 - 8);
    if (v8 < v6)
    {
      v9 = *(a6 - 4);
LABEL_4:
      *(a2 - 8) = v8;
      *(a6 - 8) = v7;
      v10 = *(a2 - 4);
      *(a2 - 4) = v9;
      *(a6 - 4) = v10;
      return;
    }

    if (v6 >= v8)
    {
      v9 = *(a6 - 4);
      v18 = *(a4 - 4);
      if (v9 < v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *(a4 - 4);
    }

    *(a2 - 8) = v6;
    *(a4 - 8) = v7;
    v19 = *(a2 - 4);
    *(a2 - 4) = v18;
    *(a4 - 4) = v19;
    v20 = *(a6 - 8);
    if (v20 >= v7)
    {
      if (v7 < v20)
      {
        return;
      }

      v21 = *(a6 - 4);
      if (v21 >= v19)
      {
        return;
      }
    }

    else
    {
      v21 = *(a6 - 4);
    }

    *(a4 - 8) = v20;
    *(a6 - 8) = v7;
    *(a4 - 4) = v21;
    *(a6 - 4) = v19;
    return;
  }

  v11 = *(a6 - 8);
  if (v11 >= v6)
  {
    if (v6 < v11)
    {
      return;
    }

    v13 = *(a6 - 4);
    v12 = *(a4 - 4);
    if (v13 >= v12)
    {
      return;
    }
  }

  else
  {
    v12 = *(a4 - 4);
    v13 = *(a6 - 4);
  }

  *(a4 - 8) = v11;
  *(a6 - 8) = v6;
  *(a4 - 4) = v13;
  *(a6 - 4) = v12;
  v14 = *(a4 - 8);
  v15 = *(a2 - 8);
  if (v14 < v15)
  {
    v16 = *(a2 - 4);
    v17 = *(a4 - 4);
LABEL_11:
    *(a2 - 8) = v14;
    *(a4 - 8) = v15;
    *(a2 - 4) = v17;
    *(a4 - 4) = v16;
    return;
  }

  if (v15 >= v14)
  {
    v17 = *(a4 - 4);
    v16 = *(a2 - 4);
    if (v17 < v16)
    {
      goto LABEL_11;
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a1, a2, a3, a4, a5, a6);
  v14 = *(a8 - 8);
  v15 = *(a6 - 8);
  if (v14 >= v15)
  {
    if (v15 < v14)
    {
      goto LABEL_16;
    }

    v17 = *(a8 - 4);
    v16 = *(a6 - 4);
    if (v17 >= v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *(a6 - 4);
    v17 = *(a8 - 4);
  }

  *(a6 - 8) = v14;
  *(a8 - 8) = v15;
  *(a6 - 4) = v17;
  *(a8 - 4) = v16;
  v18 = *(a6 - 8);
  v19 = *(a4 - 8);
  if (v18 >= v19)
  {
    if (v19 < v18)
    {
      goto LABEL_16;
    }

    v21 = *(a6 - 4);
    v20 = *(a4 - 4);
    if (v21 >= v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = *(a4 - 4);
    v21 = *(a6 - 4);
  }

  *(a4 - 8) = v18;
  *(a6 - 8) = v19;
  *(a4 - 4) = v21;
  *(a6 - 4) = v20;
  v22 = *(a4 - 8);
  v23 = *(a2 - 8);
  if (v22 < v23)
  {
    v24 = *(a2 - 4);
    v25 = *(a4 - 4);
LABEL_7:
    *(a2 - 8) = v22;
    *(a4 - 8) = v23;
    *(a2 - 4) = v25;
    *(a4 - 4) = v24;
    goto LABEL_16;
  }

  if (v23 >= v22)
  {
    v25 = *(a4 - 4);
    v24 = *(a2 - 4);
    if (v25 < v24)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v26 = *(a10 - 8);
  v27 = *(a8 - 8);
  if (v26 >= v27)
  {
    if (v27 < v26)
    {
      return;
    }

    v29 = *(a10 - 4);
    v28 = *(a8 - 4);
    if (v29 >= v28)
    {
      return;
    }
  }

  else
  {
    v28 = *(a8 - 4);
    v29 = *(a10 - 4);
  }

  *(a8 - 8) = v26;
  *(a10 - 8) = v27;
  *(a8 - 4) = v29;
  *(a10 - 4) = v28;
  v30 = *(a8 - 8);
  v31 = *(a6 - 8);
  if (v30 >= v31)
  {
    if (v31 < v30)
    {
      return;
    }

    v33 = *(a8 - 4);
    v32 = *(a6 - 4);
    if (v33 >= v32)
    {
      return;
    }
  }

  else
  {
    v32 = *(a6 - 4);
    v33 = *(a8 - 4);
  }

  *(a6 - 8) = v30;
  *(a8 - 8) = v31;
  *(a6 - 4) = v33;
  *(a8 - 4) = v32;
  v34 = *(a6 - 8);
  v35 = *(a4 - 8);
  if (v34 >= v35)
  {
    if (v35 < v34)
    {
      return;
    }

    v37 = *(a6 - 4);
    v36 = *(a4 - 4);
    if (v37 >= v36)
    {
      return;
    }
  }

  else
  {
    v36 = *(a4 - 4);
    v37 = *(a6 - 4);
  }

  *(a4 - 8) = v34;
  *(a6 - 8) = v35;
  *(a4 - 4) = v37;
  *(a6 - 4) = v36;
  v38 = *(a4 - 8);
  v39 = *(a2 - 8);
  if (v38 < v39)
  {
    v40 = *(a2 - 4);
    v41 = *(a4 - 4);
LABEL_24:
    *(a2 - 8) = v38;
    *(a4 - 8) = v39;
    *(a2 - 4) = v41;
    *(a4 - 4) = v40;
    return;
  }

  if (v39 >= v38)
  {
    v41 = *(a4 - 4);
    v40 = *(a2 - 4);
    if (v41 < v40)
    {
      goto LABEL_24;
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 - a4) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a1, a2, a2 - 8, a2 - 8, a3, a4 + 8);
        goto LABEL_12;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a1, a2, a2 - 8, a2 - 8, a2 - 16, a2 - 16);
        v27 = *a4;
        v28 = *(a2 - 24);
        if (*a4 >= v28)
        {
          if (v28 < v27)
          {
            goto LABEL_12;
          }

          v30 = *(a4 + 4);
          v29 = *(a2 - 20);
          if (v30 >= v29)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a2 - 20);
          v30 = *(a4 + 4);
        }

        *(a2 - 24) = v27;
        *a4 = v28;
        *(a2 - 20) = v30;
        *(a4 + 4) = v29;
        v31 = *(a2 - 24);
        v32 = *(a2 - 16);
        if (v31 >= v32)
        {
          if (v32 < v31)
          {
            goto LABEL_12;
          }

          v34 = *(a2 - 20);
          v33 = *(a2 - 12);
          if (v34 >= v33)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v33 = *(a2 - 12);
          v34 = *(a2 - 20);
        }

        *(a2 - 16) = v31;
        *(a2 - 24) = v32;
        *(a2 - 12) = v34;
        *(a2 - 20) = v33;
        v35 = *(a2 - 8);
        if (v31 >= v35)
        {
          if (v35 < v31)
          {
            goto LABEL_12;
          }

          v37 = *(a2 - 12);
          v36 = *(a2 - 4);
          if (v37 >= v36)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v36 = *(a2 - 4);
          v37 = *(a2 - 12);
        }

        *(a2 - 8) = v31;
        *(a2 - 16) = v35;
        *(a2 - 4) = v37;
        v11 = 1;
        *(a2 - 12) = v36;
        return v11 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a1, a2, a2 - 8, a2 - 8, a2 - 16, a2 - 16, a2 - 24, a2 - 24, a3, a4 + 8);
        goto LABEL_12;
    }
  }

  else
  {
    if (v6 < 2)
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      v7 = *a4;
      v8 = *(a2 - 8);
      if (*a4 < v8)
      {
        v9 = *(a2 - 4);
        v10 = *(a4 + 4);
LABEL_6:
        *(a2 - 8) = v7;
        *a4 = v8;
        *(a2 - 4) = v10;
        v11 = 1;
        *(a4 + 4) = v9;
        return v11 & 1;
      }

      if (v8 >= v7)
      {
        v10 = *(a4 + 4);
        v9 = *(a2 - 4);
        if (v10 < v9)
        {
          goto LABEL_6;
        }
      }

LABEL_12:
      v11 = 1;
      return v11 & 1;
    }
  }

  v13 = (a2 - 16);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a1, a2, a2 - 8, a2 - 8, a2 - 16, a2 - 16);
  v15 = a2 - 24;
  if (a2 - 24 == a4)
  {
LABEL_32:
    v26 = 1;
    goto LABEL_33;
  }

  v16 = 0;
  v14 = a2 - 24;
  while (1)
  {
    v17 = *(v14 - 8);
    v14 -= 8;
    v18 = v17;
    v19 = *(v13 - 2);
    if (v17 < v19)
    {
      break;
    }

    if (v19 >= v18)
    {
      v20 = *(v15 - 4);
      v21 = *(v13 - 1);
      if (v20 < v21)
      {
        goto LABEL_18;
      }
    }

LABEL_31:
    v13 = v15;
    v15 = v14;
    if (v14 == a4)
    {
      goto LABEL_32;
    }
  }

  v20 = *(v15 - 4);
  v21 = *(v13 - 1);
LABEL_18:
  *(v15 - 8) = v19;
  *(v15 - 4) = v21;
  if (v13 != a2)
  {
    v22 = v13;
    while (1)
    {
      v23 = *v22;
      v22 += 2;
      v24 = v23;
      if (v18 >= v23)
      {
        if (v24 < v18)
        {
          break;
        }

        v25 = *(v13 + 1);
        if (v20 >= v25)
        {
          break;
        }
      }

      else
      {
        v25 = *(v13 + 1);
      }

      *(v13 - 2) = v24;
      *(v13 - 1) = v25;
      v13 = v22;
      if (v22 == a2)
      {
        goto LABEL_30;
      }
    }
  }

  v22 = v13;
LABEL_30:
  *(v22 - 2) = v18;
  *(v22 - 1) = v20;
  if (++v16 != 8)
  {
    goto LABEL_31;
  }

  v26 = 0;
  LOBYTE(v14) = v14 == a4;
LABEL_33:
  v11 = v26 | v14;
  return v11 & 1;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_247836BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(a53);
  if (__p)
  {
    operator delete(__p);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (a70)
  {
    operator delete(a70);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_247837080(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24783871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  for (i = 0; i != -72; i -= 24)
  {
    std::__tree<int>::destroy((&a52 + i + 48), *(&a52 + i + 56));
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fieldDecoding(uint64_t *a1, unsigned int a2, int a3, void *a4, int a5, void *a6, void *a7, int a8)
{
  v34 = a7;
  v16 = (a3 - (a2 >> 1)) & ~((a3 - (a2 >> 1)) >> 31);
  v17 = a3 + (a2 >> 1);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v19 = v18 - 1;
  v20 = v18 - 1;
  if (v19 < v17)
  {
    v17 = v20;
  }

  if (v16 > v17)
  {
    goto LABEL_32;
  }

  v21 = (v17 + 1);
  do
  {
    v22 = *a1;
    v23 = *(*a1 + 24 * v16);
    v24 = *(*a1 + 24 * v16 + 8);
    v25 = v24 - v23;
    if (v24 == v23)
    {
      goto LABEL_29;
    }

    v26 = 0;
    v27 = v25 >> 2;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    LODWORD(v15) = -8388608;
    v28 = 0xFFFFFFFFLL;
    do
    {
      v29 = *(*a4 + 4 * v26);
      if (a5 == 3)
      {
        if (v29 == 103 || (v29 - 91) > 0xFFFFFFE5)
        {
          goto LABEL_26;
        }
      }

      else if (a5 == 2)
      {
        if (v29 == 103 || (v29 - 58) > 0xFFFFFFF5)
        {
          goto LABEL_26;
        }
      }

      else if ((v29 - 48) > 9)
      {
        goto LABEL_26;
      }

      if (*(v23 + 4 * v26) > *&v15)
      {
        v28 = v26;
        LODWORD(v15) = *(v23 + 4 * v26);
      }

LABEL_26:
      ++v26;
    }

    while (v27 != v26);
    if ((v28 & 0x80000000) == 0)
    {
      v15 = *(*a6 + 8 * v28) + *&v15;
      *(*a6 + 8 * v28) = v15;
    }

LABEL_29:
    v32 = v16;
    if (a8)
    {
      v32 = ~v16 - 1431655765 * ((a1[1] - v22) >> 3);
    }

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{v32, v15}];
    [v34 addObject:v33];

    ++v16;
  }

  while (v16 != v21);
LABEL_32:
}

void sub_247838B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_247839888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  __p = &a65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_247839D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_24783A67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, char *__p, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  __p = &a44;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(*a1);
    std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__reverse[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> *>,std::__wrap_iter<std::vector<float> *>>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    for (i = a2 - 3; result < i; i -= 3)
    {
      v3 = *result;
      *result = *i;
      *i = v3;
      v4 = result[1];
      result[1] = i[1];
      i[1] = v4;
      v5 = result[2];
      result[2] = i[2];
      i[2] = v5;
      result += 3;
    }
  }

  return result;
}

id CROSLogForCategory(int a1)
{
  if (CROSLogForCategory_onceToken != -1)
  {
    dispatch_once(&CROSLogForCategory_onceToken, &__block_literal_global_3);
  }

  v2 = CROSLogForCategory_logObjects[a1];

  return v2;
}

void __CROSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.TextRecognition", "General");
  v1 = CROSLogForCategory_logObjects[0];
  CROSLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.TextRecognition", "Tracking");
  v3 = qword_27EE54540;
  qword_27EE54540 = v2;

  v4 = os_log_create("com.apple.TextRecognition", "Detection");
  v5 = qword_27EE54548;
  qword_27EE54548 = v4;

  v6 = os_log_create("com.apple.TextRecognition", "Recognition");
  v7 = qword_27EE54550;
  qword_27EE54550 = v6;

  v8 = os_log_create("com.apple.TextRecognition", "Layout");
  v9 = qword_27EE54558;
  qword_27EE54558 = v8;

  v10 = os_log_create("com.apple.TextRecognition", "TSR");
  v11 = qword_27EE54560;
  qword_27EE54560 = v10;

  v12 = os_log_create("com.apple.TextRecognition", "Form");
  v13 = qword_27EE54568;
  qword_27EE54568 = v12;

  v14 = os_log_create("com.apple.TextRecognition", "DD");
  v15 = qword_27EE54570;
  qword_27EE54570 = v14;

  v16 = os_log_create("com.apple.TextRecognition", "CameraReader");
  v17 = qword_27EE54578;
  qword_27EE54578 = v16;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114898](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSPoint NSPointFromString(NSString *aString)
{
  MEMORY[0x28211F838](aString);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x28211F868](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7848]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}