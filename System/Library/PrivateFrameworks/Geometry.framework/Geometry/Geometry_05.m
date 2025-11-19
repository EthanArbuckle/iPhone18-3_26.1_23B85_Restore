void std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::vector<unsigned char>::__append(v3, v4);
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = 341 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x155)) + 12 * (v8 % 0x155);
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  ++v3[5];
  return result;
}

void *std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>::emplace_back<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *&>(a1, &v10);
}

void *std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>::emplace_back<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(result, v11);
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

const void **std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>::emplace_front<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(result, v9);
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

void *std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *> &>::emplace_back<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(result[4], v11);
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

const void **std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *> &>::emplace_front<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(result[4], v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290898;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(uint64_t result, _DWORD *a2, char *a3, uint64_t a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = (v5 - v7) >> 2;
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 3)
    {
      v35 = (v5 - 4);
      v36 = v7 + 1;
      v37 = v7;
      v38 = a4;

      return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>,0>(v37, v36, v35, v38);
    }

    if (v8 == 2)
    {
      v39 = *(a4 + 24);
      if (v39)
      {
        v40 = (v5 - 4);
        result = (*(*v39 + 48))(v39, v5 - 1, v7);
        if (result)
        {
          v41 = *v7;
          *v7 = *v40;
          *v40 = v41;
        }

        return result;
      }

      goto LABEL_76;
    }

    if (v8 <= 7)
    {

      return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(v7, v5, a4);
    }

    v9 = &v7[(v5 - v7) >> 3];
    v10 = (v5 - 4);
    v11 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>,0>(v7, v9, v5 - 1, a4);
    v12 = *(a4 + 24);
    if (!v12)
    {
      goto LABEL_76;
    }

    result = (*(*v12 + 48))(v12, v7, v9);
    if (!result)
    {
      break;
    }

LABEL_18:
    v16 = v7 + 1;
    if (v7 + 1 < v10)
    {
LABEL_19:
      while (1)
      {
        v17 = *(a4 + 24);
        if (!v17)
        {
          break;
        }

        if (!(*(*v17 + 48))(v17, v16, v9))
        {
          while (1)
          {
            v18 = *(a4 + 24);
            if (!v18)
            {
              goto LABEL_76;
            }

            result = (*(*v18 + 48))(v18, --v10, v9);
            if (result)
            {
              if (v16 >= v10)
              {
                goto LABEL_28;
              }

              v19 = *v16;
              v20 = v16 == v9;
              *v16++ = *v10;
              *v10 = v19;
              ++v11;
              if (v20)
              {
                v9 = v10;
              }

              goto LABEL_19;
            }
          }
        }

        ++v16;
      }

LABEL_76:
      v37 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>,0>(v37, v36, v35, v38);
    }

LABEL_28:
    if (v16 != v9)
    {
      v21 = *(a4 + 24);
      if (!v21)
      {
        goto LABEL_76;
      }

      result = (*(*v21 + 48))(v21, v9, v16);
      if (result)
      {
        v22 = *v16;
        *v16 = *v9;
        *v9 = v22;
        ++v11;
      }
    }

    if (v16 == a2)
    {
      return result;
    }

    if (!v11)
    {
      v24 = v16;
      if (v16 <= a2)
      {
        while (1)
        {
          v28 = v24 + 1;
          if (v24 + 1 == v5)
          {
            break;
          }

          v29 = *(a4 + 24);
          if (!v29)
          {
            goto LABEL_76;
          }

          result = (*(*v29 + 48))(v29, v24 + 1);
          v24 = v28;
          if (result)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v25 = v7;
        while (1)
        {
          v26 = v25 + 1;
          if (v25 + 1 == v16)
          {
            break;
          }

          v27 = *(a4 + 24);
          if (!v27)
          {
            goto LABEL_76;
          }

          result = (*(*v27 + 48))(v27, v25 + 1);
          v25 = v26;
          if (result)
          {
            goto LABEL_34;
          }
        }
      }

      return result;
    }

LABEL_34:
    if (v16 <= a2)
    {
      v23 = v16 + 1;
    }

    else
    {
      v5 = v16;
      v23 = v7;
    }

LABEL_37:
    v7 = v23;
    if (v5 == a2)
    {
      return result;
    }
  }

  v13 = (v5 - 4);
  while (1)
  {
    --v13;
    v14 = *(a4 + 24);
    if (v13 == v7)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_76;
    }

    result = (*(*v14 + 48))(v14, v13, v9);
    if (result)
    {
      v15 = *v7;
      *v7 = *v13;
      *v13 = v15;
      if (v11)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v10 = v13;
      goto LABEL_18;
    }
  }

  if (!v14)
  {
    goto LABEL_76;
  }

  v23 = v7 + 1;
  result = (*(*v14 + 48))(v14, v7, v5 - 1);
  if (result)
  {
LABEL_57:
    if (v23 == v10)
    {
      return result;
    }

LABEL_58:
    while (1)
    {
      v32 = *(a4 + 24);
      if (!v32)
      {
        goto LABEL_76;
      }

      if ((*(*v32 + 48))(v32, v7, v23))
      {
        while (1)
        {
          v33 = *(a4 + 24);
          if (!v33)
          {
            goto LABEL_76;
          }

          result = (*(*v33 + 48))(v33, v7, --v10);
          if (!result)
          {
            if (v23 < v10)
            {
              v34 = *v23;
              *v23++ = *v10;
              *v10 = v34;
              goto LABEL_58;
            }

            if (v23 <= a2)
            {
              goto LABEL_37;
            }

            return result;
          }
        }
      }

      ++v23;
    }
  }

  while (v23 != v10)
  {
    v30 = *(a4 + 24);
    if (!v30)
    {
      goto LABEL_76;
    }

    result = (*(*v30 + 48))(v30, v7, v23);
    if (result)
    {
      v31 = *v23;
      *v23++ = *v10;
      *v10 = v31;
      goto LABEL_57;
    }

    ++v23;
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>,0>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  if (!v5)
  {
    goto LABEL_17;
  }

  v9 = (*(*v5 + 48))(v5, a2, a1);
  v10 = *(a4 + 24);
  if (!v9)
  {
    if (v10)
    {
      result = (*(*v10 + 48))(v10, a3, a2);
      if (!result)
      {
        return result;
      }

      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *(a4 + 24);
      if (v15)
      {
        if ((*(*v15 + 48))(v15, a2, a1))
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }

        return 1;
      }
    }

    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = (*(*v10 + 48))(v10, a3, a2);
  v12 = *a1;
  if (v11)
  {
    *a1 = *a3;
LABEL_14:
    *a3 = v12;
    return 1;
  }

  *a1 = *a2;
  *a2 = v12;
  v17 = *(a4 + 24);
  if (!v17)
  {
LABEL_17:
    v18 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(v18);
  }

  if ((*(*v17 + 48))(v17, a3, a2))
  {
    v12 = *a2;
    *a2 = *a3;
    goto LABEL_14;
  }

  return 1;
}

uint64_t std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 != result)
  {
    v6 = result;
    do
    {
      v7 = v6++;
      if (v7 != a2 && v6 != a2)
      {
        v8 = v6;
        v9 = v7;
        do
        {
          v10 = *(a3 + 24);
          if (!v10)
          {
            v12 = std::__throw_bad_function_call[abi:nn200100]();
            return std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v12);
          }

          result = (*(*v10 + 48))(v10, v8, v9);
          if (result)
          {
            v9 = v8;
          }

          ++v8;
        }

        while (v8 != a2);
        if (v9 != v7)
        {
          v11 = *v7;
          *v7 = *v9;
          *v9 = v11;
        }
      }
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](void *a1)
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
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290938;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_2862909A8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862909A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
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

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290A38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290AA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290B38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290BA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290C38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290CA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290CA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290D38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290DA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290E38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290EA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290EA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

BOOL std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(*(a1 + 8) + 8);
  v4 = (v3 + 32 * *a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(a1 + 16) & 3;
  v12[0] = v5;
  v12[1] = v6;
  *&v5 = *(v12 + v7);
  v8 = (v3 + 32 * *a3);
  v9 = v8[1];
  v11[0] = *v8;
  v11[1] = v9;
  return *&v5 < *(v11 + v7);
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290F38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286290FA8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}>,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290FA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

BOOL std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(*(a1 + 8) + 8);
  v4 = (v3 + 32 * *a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(a1 + 16) & 3;
  v12[0] = v5;
  v12[1] = v6;
  *&v5 = *(v12 + v7);
  v8 = (v3 + 32 * *a3);
  v9 = v8[1];
  v11[0] = *v8;
  v11[1] = v9;
  return *&v5 < *(v11 + v7);
}

uint64_t std::__function::__func<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1},std::allocator<void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(void)::{lambda(unsigned char)#1}::operator() const(unsigned char)::{lambda(unsigned int const&,unsigned int const&)#1}>,unsigned int ()(unsigned int const&,unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *geom::internal::triangle_mesh_decimator_interface<float>::triangle_mesh_decimator_interface(void *a1, void *a2)
{
  *a1 = 0;
  std::vector<float>::vector[abi:nn200100](a1 + 1, a2 + 1);
  if (*a2)
  {
    operator new();
  }

  return a1;
}

double geom::internal::triangle_mesh_decimator_interface<float>::triangle_mesh_decimator_interface(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 1) = *(a2 + 8);
  a1[3] = *(a2 + 24);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t geom::internal::triangle_mesh_decimator_interface<float>::~triangle_mesh_decimator_interface(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v2);
    MEMORY[0x25305E3F0](v3, 0x10B0C40E87BB8D8);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void geom::internal::triangle_mesh_decimator_interface<float>::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *&v18 = 0;
  geom::internal::triangle_mesh_decimator<float>::make(a1, a2, a3, a4, a5, a6, &v18, v21);
  if (v22 == 1)
  {
    v9 = *(a5 + 8);
    __dst[1] = 0;
    v20 = 0;
    __dst[0] = 0;
    if (v9)
    {
      std::vector<float>::__vallocate[abi:nn200100](__dst, v9);
    }

    if (v22)
    {
      operator new();
    }

    v10 = std::__throw_bad_optional_access[abi:nn200100]();
    geom::internal::triangle_mesh_decimator<float>::make(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    *a7 = 0;
    a7[32] = 0;
  }
}

void geom::internal::triangle_mesh_decimator<float>::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v15 = *a3;
  geom::triangle_mesh_connectivity::make(*(a1 + 8), a3[1], &__sz);
  if (v101 != 1)
  {
    *a8 = 0;
    a8[552] = 0;
    return;
  }

  v16 = ((v91 - *(&v90 + 1)) >> 2);
  __dst[1] = 0;
  __dst[0] = 0;
  v86 = 0;
  if (((v91 - *(&v90 + 1)) >> 2))
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, ((v91 - *(&v90 + 1)) >> 2));
  }

  v17 = (v91 - *(&v90 + 1)) >> 2;
  v18 = v100;
  if (v100 == 1)
  {
    if (v17)
    {
      v19 = 0;
      do
      {
        *(__dst[0] + v19) = *(*a1 + 16 * v99.__begin_[v19]);
        ++v19;
      }

      while (v16 != v19);
    }
  }

  else
  {
    memcpy(__dst[0], *a1, 16 * *(a1 + 8));
  }

  std::vector<geom::internal::quadric>::vector[abi:nn200100](v84, v16);
  v83 = 0;
  v81 = 0u;
  *v82 = 0u;
  *v79 = 0u;
  *v80 = 0u;
  *v77 = 0u;
  v78 = 0u;
  *v76 = 0u;
  if (*(a4 + 8))
  {
    v20 = *(a5 + 8);
    memset(&v75, 0, sizeof(v75));
    if (v20)
    {
      std::vector<float>::__vallocate[abi:nn200100](&v75, v20);
    }

    v21 = *(a6 + 8);
    v74 = 0;
    v73[0] = 0;
    v73[1] = 0;
    if (v21)
    {
      std::vector<float>::__vallocate[abi:nn200100](v73, v21);
    }

    v22 = *(a4 + 8);
    v72 = 0;
    begin = 0;
    v71 = 0;
    if (v22)
    {
      std::vector<double>::__vallocate[abi:nn200100](&begin, v22);
    }

    memcpy(v75.__begin_, *a5, 4 * *(a5 + 8));
    memcpy(v73[0], *a6, 4 * *(a6 + 8));
    memcpy(begin, *a4, 8 * *(a4 + 8));
    *&v49 = 0;
    v47 = 0u;
    *__p = 0u;
    *v45 = 0u;
    *v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    geom::triangle_mesh_atlas::init(v43, &__sz, &v75, v73, &begin);
    geom::triangle_mesh_atlas::operator=(v76, v43);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v46[1])
    {
      *&v47 = v46[1];
      operator delete(v46[1]);
    }

    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    if (*&v43[24])
    {
      *&v44 = *&v43[24];
      operator delete(*&v43[24]);
    }

    if (*v43)
    {
      *&v43[8] = *v43;
      operator delete(*v43);
    }

    if (begin)
    {
      v71 = begin;
      operator delete(begin);
    }

    if (v73[0])
    {
      v73[1] = v73[0];
      operator delete(v73[0]);
    }

    if (v75.__begin_)
    {
      v75.__end_ = v75.__begin_;
      operator delete(v75.__begin_);
    }
  }

  if (v18 && (v23 = *(a2 + 8)) != 0)
  {
    v24 = *a2;
    *&v43[8] = 0;
    *&v43[16] = 0;
    *v43 = &v43[8];
    v25 = 4 * v23;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v43, &v43[8], v24++);
      v25 -= 4;
    }

    while (v25);
    memset(&v75, 0, sizeof(v75));
    std::vector<float>::reserve(&v75, v23);
    if ((v101 & 1) == 0 || (v100 & 1) == 0)
    {
      goto LABEL_92;
    }

    LODWORD(v73[0]) = 0;
    if (v17)
    {
      v26 = 0;
      do
      {
        v27 = *&v43[8];
        if (*&v43[8])
        {
          v28 = v99.__begin_[v26];
          v29 = &v43[8];
          do
          {
            v30 = *(v27 + 28);
            v31 = v30 >= v28;
            v32 = v30 < v28;
            if (v31)
            {
              v29 = v27;
            }

            v27 = *(v27 + 8 * v32);
          }

          while (v27);
          if (v29 != &v43[8] && v28 >= *(v29 + 7))
          {
            std::vector<unsigned int>::push_back[abi:nn200100](&v75.__begin_, v73);
            v26 = v73[0];
          }
        }

        LODWORD(v73[0]) = ++v26;
      }

      while (v26 < v17);
    }

    begin = v75.__begin_;
    v71 = (v75.__end_ - v75.__begin_);
    geom::internal::compute_vertex_masks<float>(&__sz, __dst, &begin, v76, v73);
    v42 = *v73;
    v33 = v74;
    if (v75.__begin_)
    {
      v75.__end_ = v75.__begin_;
      operator delete(v75.__begin_);
    }

    _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(v43, *&v43[8]);
  }

  else
  {
    geom::internal::compute_vertex_masks<float>(&__sz, __dst, a2, v76, v43);
    v42 = *v43;
    v33 = *&v43[16];
  }

  memset(&v75, 0, sizeof(v75));
  if (*(a7 + 4) == 1)
  {
    if (!v18)
    {
      std::vector<float>::resize(&v75, __sz);
      if (v75.__begin_ != v75.__end_)
      {
        v34 = 0;
        v35 = (v75.__end_ - v75.__begin_ - 4) >> 2;
        v36 = vdupq_n_s64(v35);
        v37 = (v35 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v38 = v75.__begin_ + 2;
        do
        {
          v39 = vdupq_n_s64(v34);
          v40 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v39, xmmword_2500C1680)));
          if (vuzp1_s16(v40, *v36.i8).u8[0])
          {
            *(v38 - 2) = v34;
          }

          if (vuzp1_s16(v40, *&v36).i8[2])
          {
            *(v38 - 1) = v34 + 1;
          }

          if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v39, xmmword_2500C1670)))).i32[1])
          {
            *v38 = v34 + 2;
            v38[1] = v34 + 3;
          }

          v34 += 4;
          v38 += 4;
        }

        while (v37 != v34);
      }

      goto LABEL_70;
    }

    if (v101 & 1) != 0 && (v100)
    {
      v75 = v99;
      memset(&v99, 0, sizeof(v99));
      goto LABEL_70;
    }

LABEL_92:
    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    geom::internal::triangle_mesh_decimator_interface<float>::triangle_mesh_decimator_interface(v41);
    return;
  }

LABEL_70:
  *v43 = *a7;
  *&v43[24] = v86;
  DWORD2(v44) = v88;
  v55 = v96;
  *&v43[8] = *__dst;
  *__dst = 0u;
  v86 = 0;
  v51 = 0u;
  v52 = 0u;
  v47 = v91;
  *__p = v92;
  v91 = 0u;
  v92 = 0u;
  v49 = v93;
  v50 = v94;
  v93 = 0u;
  v94 = 0u;
  *&v44 = __sz;
  __sz = 0;
  v88 = 0;
  *v45 = v89;
  *v46 = v90;
  v89 = 0u;
  v90 = 0u;
  v53 = 0u;
  v54 = v95;
  v95 = 0u;
  v56 = v97;
  v57 = v98;
  v97 = 0u;
  v96 = 0;
  v98 = 0;
  geom::triangle_mesh_atlas::triangle_mesh_atlas(v58, v76);
  *&v58[120] = v42;
  v59 = v33;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = v75;
  memset(&v75, 0, sizeof(v75));
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  geom::internal::triangle_mesh_decimator<float>::initialize_quadrics(v43);
  geom::internal::triangle_mesh_decimator<float>::initialize_edge_data(v43);
  geom::internal::triangle_mesh_decimator<float>::triangle_mesh_decimator(a8, v43);
  a8[552] = 1;
  geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v43);
  if (v75.__begin_)
  {
    v75.__end_ = v75.__begin_;
    operator delete(v75.__begin_);
  }

  if (v82[0])
  {
    v82[1] = v82[0];
    operator delete(v82[0]);
  }

  if (v80[1])
  {
    *&v81 = v80[1];
    operator delete(v80[1]);
  }

  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  if (v77[1])
  {
    *&v78 = v77[1];
    operator delete(v77[1]);
  }

  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v101)
  {
    if (v100 == 1)
    {
      if (v99.__begin_)
      {
        v99.__end_ = v99.__begin_;
        operator delete(v99.__begin_);
      }
    }

    geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&__sz);
  }
}

void geom::internal::triangle_mesh_decimator_interface<float>::make(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  geom::internal::triangle_mesh_decimator_interface<float>::make(a1, v6, a2, v5, v4, v3, a3);
}

uint64_t *geom::internal::triangle_mesh_decimator_interface<float>::decimate_one_edge(uint64_t **a1)
{
  result = *a1;
  if (result)
  {
    return geom::internal::triangle_mesh_decimator<float>::decimate_one_edge(result);
  }

  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<float>::decimate_one_edge(uint64_t *a1)
{
  v1 = a1[54];
  v2 = (a1[55] - v1) >> 4;
  if (!v2)
  {
    return 0;
  }

  v4 = *v1;
  v5 = v1[1];
  if (v2 == 1)
  {
    a1[55] = v1;
  }

  else
  {
    v7 = (v2 - 1);
    v8 = &v1[2 * v7];
    v9 = *v8;
    *v1 = v9;
    v1[1] = *(v8 + 1);
    *(a1[57] + 4 * v9) = 0;
    std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::resize(a1 + 54, v7);
    v10 = 0;
    v11 = a1[54];
    v12 = (a1[55] - v11) >> 4;
    for (i = 0; ; v10 = i)
    {
      v14 = (2 * v10) | 1;
      v15 = (v11 + 16 * v10);
      if (v14 < v12)
      {
        i = v10;
        if (*(v11 + 16 * v14 + 8) < v15[1])
        {
          i = (2 * v10) | 1u;
        }
      }

      v16 = 2 * v10 + 2;
      if (v16 < v12 && *(v11 + 16 * v16 + 8) < *(v11 + 16 * i + 8))
      {
        i = (2 * v10 + 2);
      }

      if (i == v10)
      {
        break;
      }

      v17 = (v11 + 16 * i);
      v18 = *v15;
      v19 = *(v15 + 1);
      *v15 = *v17;
      v15[1] = v17[1];
      *v17 = v18;
      *(v17 + 1) = v19;
      v20 = a1[57];
      *(v20 + 4 * *v15) = v10;
      *(v20 + 4 * *v17) = i;
    }
  }

  *(a1[57] + 4 * v4) = -1;
  if (v4 == -1 && v5 == INFINITY)
  {
    return 0;
  }

  return geom::internal::triangle_mesh_decimator<float>::decimate_edge(a1, v4);
}

uint64_t geom::internal::triangle_mesh_decimator_interface<float>::decimate_edge(uint64_t *a1, unsigned int a2)
{
  result = *a1;
  if (result)
  {
    return geom::internal::triangle_mesh_decimator<float>::decimate_edge(result, a2);
  }

  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<float>::decimate_edge(uint64_t a1, unsigned int a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(a1 + 216);
  if (a2 >= ((*(a1 + 224) - v3) >> 2))
  {
    result = 0;
    goto LABEL_11;
  }

  half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v3 + 4 * a2) / 3u, *(v3 + 4 * a2) % 3u);
  result = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge((a1 + 32), half_edge_for_face_vertex);
  if (result)
  {
    result = geom::internal::triangle_mesh_decimator<float>::is_edge_collapse_geometrically_safe(a1, a2);
    if (result)
    {
      if (((*(a1 + 296) - *(a1 + 288)) & 0x3FFFFFFFCLL) == 0 || (v8 = *(a1 + 216), v2 >= (*(a1 + 224) - v8) >> 2) || (v9 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v8 + 4 * v2) / 3u, *(v8 + 4 * v2) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_safe((a1 + 32), v9, (a1 + 504), (a1 + 528))) || (v10 = *(a1 + 408) + 32 * v2, result = geom::internal::triangle_mesh_decimator<float>::update_edge_uvs(a1, a2), result))
      {
        v11 = *(a1 + 216);
        if (v2 >= (*(a1 + 224) - v11) >> 2)
        {
          *v54 = -1;
        }

        else
        {
          v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v11 + 4 * v2) / 3u, *(v11 + 4 * v2) % 3u);
          geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 32), v12, v54);
        }

        v14 = *(a1 + 32);
        v15 = geom::triangle_mesh_connectivity::collapse_edge((a1 + 32), a2);
        v16 = v15;
        if (*(a1 + 4) != 1)
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 8);
        v18 = *(*(a1 + 408) + 32 * v2 + 16);
        v19 = v54[0];
        if (v54[0] == v15 || (v20 = vsubq_f32(*(v17 + 16 * v54[0]), v18), v21 = vmulq_f32(v20, v20), sqrtf(v21.f32[2] + vaddv_f32(*v21.f32)) != 0.0))
        {
          if (v54[1] == v15)
          {
            goto LABEL_20;
          }

          v23 = vsubq_f32(*(v17 + 16 * v54[1]), v18);
          v24 = vmulq_f32(v23, v23);
          v22 = v54[1];
          if (sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) != 0.0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v22 = v54[0];
          v19 = v54[1];
        }

        *(*(a1 + 480) + 4 * v19) = *(*(a1 + 480) + 4 * v22);
LABEL_20:
        if (v15 != -1)
        {
          v25 = *(v54 | (4 * (v15 == v54[0])));
          v26 = v15;
          v27 = *(*(a1 + 360) + v25) | *(*(a1 + 360) + v15);
          *(*(a1 + 8) + 16 * v15) = *(*(a1 + 408) + 32 * v2 + 16);
          if (*a1 == 1)
          {
            geom::internal::triangle_mesh_decimator<float>::recompute_vertex_quadric(a1, v15, (a1 + 504), &v49);
            v28 = (*(a1 + 384) + 80 * v26);
            if (v28 != &v49)
            {
              *v28 = v49;
              v28[1] = v50;
              v28[2] = v51;
              v28[3] = v52;
              v28[4] = v53;
            }
          }

          else
          {
            v29 = *(a1 + 384);
            v30 = (v29 + 80 * v25);
            v31 = (v29 + 80 * v15);
            v32 = vaddq_f64(v30[1], v31[1]);
            *v31 = vaddq_f64(*v30, *v31);
            v31[1] = v32;
            v33 = vaddq_f64(v30[3], v31[3]);
            v31[2] = vaddq_f64(v30[2], v31[2]);
            v31[3] = v33;
            v31[4] = vaddq_f64(v30[4], v31[4]);
          }

          *(*(a1 + 360) + v16) = v27;
          geom::triangle_mesh_connectivity::get_incident_edges_to_vertex((a1 + 32), v16, a1 + 528);
          v38 = *(a1 + 536) - *(a1 + 528);
          if (v38)
          {
            v39 = 0;
            v40 = v38 >> 2;
            if (v40 <= 1)
            {
              v41 = 1;
            }

            else
            {
              v41 = v40;
            }

            do
            {
              v42 = *(*(a1 + 528) + 4 * v39);
              v43 = *(a1 + 408) + 32 * v42;
              geom::internal::triangle_mesh_decimator<float>::make_edge_cost(a1, v42, &v49, *v43, v34, v35, v36, v37);
              v44 = v50;
              *v43 = v49;
              *(v43 + 16) = v44;
              *v43 = *v43 + 1.0e-12;
              v45 = *(*(a1 + 456) + 4 * v42);
              if (v45 == -1)
              {
                v48 = INFINITY;
                v47 = 0xFFFFFFFFLL;
              }

              else
              {
                v46 = *(a1 + 432) + 16 * v45;
                v47 = *v46;
                v48 = *(v46 + 8);
              }

              *&v49 = v47;
              *(&v49 + 1) = v48;
              if (v47 == -1 && v48 == INFINITY)
              {
                LODWORD(v49) = v42;
              }

              *(&v49 + 1) = *v43;
              geom::indexed_priority_queue<unsigned int,double>::push_or_change_cost((a1 + 432), &v49);
              ++v39;
            }

            while (v41 != v39);
          }
        }

        result = *(a1 + 32) < v14;
      }
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::internal::triangle_mesh_decimator_interface<float>::face_count(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 36);
  }

  else
  {
    return 0;
  }
}

void geom::internal::triangle_mesh_decimator_interface<float>::get_simplified_geometry(uint64_t *a1, void *a2, std::vector<unsigned int> *a3, std::vector<int> *a4)
{
  a2[1] = *a2;
  a3->__end_ = a3->__begin_;
  a4->__end_ = a4->__begin_;
  v4 = *a1;
  if (v4)
  {
    geom::internal::copy_simplified_geometry<float>(v4, a2, a3, a4);
  }
}

void geom::internal::copy_simplified_geometry<float>(uint64_t a1, void *a2, std::vector<unsigned int> *a3, std::vector<int> *a4)
{
  __x = -1;
  v8 = *(a1 + 80) - *(a1 + 72);
  v43 = 0;
  v44 = 0;
  __p = 0;
  if ((v8 >> 2))
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v8 >> 2));
  }

  memset(&v41, 0, sizeof(v41));
  std::vector<unsigned int>::resize(&v41, *(a1 + 36), &__x);
  a4->__end_ = a4->__begin_;
  std::vector<unsigned int>::resize(a4, *(a1 + 32), &__x);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80) - v9;
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    begin = a4->__begin_;
    v15 = __p;
    v16 = (v10 >> 2);
    do
    {
      if (v13 > v11 && *(v9 + 4 * v11) != -1)
      {
        begin[v12] = v11;
        v15[v11] = v12++;
      }

      ++v11;
    }

    while (v16 != v11);
  }

  v17 = *(a1 + 48);
  v18 = (*(a1 + 56) - v17) >> 2;
  if ((v18 / 3))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v41.__begin_;
    do
    {
      if (v18 > v20 && *(v17 + 4 * v20) != -1)
      {
        v22[v21++] = v19;
      }

      v20 += 3;
      ++v19;
    }

    while (3 * (v18 / 3) != v20);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, *(a1 + 32));
  v23 = *(a1 + 32);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      *(*a2 + 16 * i) = *(*(a1 + 8) + 16 * a4->__begin_[i]);
    }
  }

  std::vector<float>::resize(a3, (3 * *(a1 + 36)));
  v25 = *(a1 + 36);
  if (v25)
  {
    v26 = 0;
    v27 = v41.__begin_;
    v28 = *(a1 + 48);
    v29 = __p;
    v30 = 3 * v25;
    v31 = a3->__begin_;
    do
    {
      v32 = *v27++;
      v33 = (v28 + 4 * (3 * v32));
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v31[v26] = v29[v34];
      v31[(v26 + 1)] = v29[v35];
      v31[(v26 + 2)] = v29[v36];
      v26 += 3;
    }

    while (v30 != v26);
  }

  v37 = *(a1 + 480);
  if (*(a1 + 488) != v37)
  {
    v38 = a4->__begin_;
    v39 = a4->__end_ - a4->__begin_;
    if (v39)
    {
      v40 = v39 >> 2;
      if (v40 <= 1)
      {
        v40 = 1;
      }

      do
      {
        *v38 = *(v37 + 4 * *v38);
        ++v38;
        --v40;
      }

      while (v40);
    }
  }

  if (v41.__begin_)
  {
    v41.__end_ = v41.__begin_;
    operator delete(v41.__begin_);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void geom::internal::triangle_mesh_decimator_interface<float>::get_simplified_geometry(uint64_t *a1, void *a2, std::vector<unsigned int> *a3, int8x8_t *a4, void *a5, void *a6, std::vector<int> *a7)
{
  a2[1] = *a2;
  a3->__end_ = a3->__begin_;
  a4[1] = *a4;
  a5[1] = *a5;
  a6[1] = *a6;
  a7->__end_ = a7->__begin_;
  v8 = *a1;
  if (v8)
  {
    geom::internal::copy_simplified_geometry<float>(v8, a2, a3, a7);
    v12 = a1[1];
    v13 = (a1[2] - v12) >> 2;
    v14 = *a1 + 32;
    v15 = *a1 + 240;

    geom::internal::copy_simplified_uvs(v14, v15, v12, v13, a4, a5, a6);
  }
}

void geom::internal::copy_simplified_uvs(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, int8x8_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = (((*(a1 + 24) - *(a1 + 16)) >> 2) / 3uLL);
  LOBYTE(v31[0]) = 0;
  std::vector<BOOL>::vector(&v34, v14);
  if (a4)
  {
    v15 = v34;
    v16 = 4 * a4;
    do
    {
      v17 = *a3++;
      *&v15[(v17 >> 3) & 0x1FFFFFF8] |= 1 << v17;
      v16 -= 4;
    }

    while (v16);
  }

  *v31 = 0u;
  *__p = 0u;
  v33 = 1065353216;
  a5[1] = *a5;
  *(a6 + 8) = *a6;
  *(a7 + 8) = *a7;
  v30[0] = v31;
  v30[1] = a5;
  v18 = (*(a1 + 24) - *(a1 + 16)) >> 2;
  v29 = 0;
  if ((v18 / 3))
  {
    v19 = 0;
    v20 = 0;
    v21 = 2;
    do
    {
      v22 = v21 - 2;
      v23 = *(a1 + 16);
      if (v22 < (*(a1 + 24) - v23) >> 2 && *(v23 + 4 * v22) != -1)
      {
        if ((*(v34 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
        {
          std::vector<unsigned int>::push_back[abi:nn200100](a6, &v29);
          v27 = *(*(a2 + 24) + 8 * v22);
          v28 = _ZZN4geom8internal19copy_simplified_uvsERKNS_26triangle_mesh_connectivityERKNS_19triangle_mesh_atlasENS_5sliceIjEERNSt3__16vectorIDv2_fNS9_9allocatorISB_EEEERNSA_IjNSC_IjEEEESI_ENK3__0clERKSB_(v30, &v27);
          std::vector<unsigned int>::push_back[abi:nn200100](a7, &v28);
          v27 = *(*(a2 + 24) + 8 * (v21 - 1));
          v28 = _ZZN4geom8internal19copy_simplified_uvsERKNS_26triangle_mesh_connectivityERKNS_19triangle_mesh_atlasENS_5sliceIjEERNSt3__16vectorIDv2_fNS9_9allocatorISB_EEEERNSA_IjNSC_IjEEEESI_ENK3__0clERKSB_(v30, &v27);
          std::vector<unsigned int>::push_back[abi:nn200100](a7, &v28);
          v27 = *(*(a2 + 24) + 8 * v21);
          v28 = _ZZN4geom8internal19copy_simplified_uvsERKNS_26triangle_mesh_connectivityERKNS_19triangle_mesh_atlasENS_5sliceIjEERNSt3__16vectorIDv2_fNS9_9allocatorISB_EEEERNSA_IjNSC_IjEEEESI_ENK3__0clERKSB_(v30, &v27);
          std::vector<unsigned int>::push_back[abi:nn200100](a7, &v28);
          v19 = v29;
        }

        v29 = ++v19;
      }

      ++v20;
      v21 += 3;
    }

    while ((v18 / 3) != v20);
    v24 = __p[0];
    if (__p[0])
    {
      do
      {
        v25 = *v24;
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }
  }

  v26 = v31[0];
  v31[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  if (v34)
  {
    operator delete(v34);
  }
}

uint64_t geom::internal::triangle_mesh_decimator_interface<float>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v4);
      MEMORY[0x25305E3F0](v5, 0x10B0C40E87BB8D8);
      *a1 = 0;
    }

    if (*a2)
    {
      operator new();
    }

    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t *geom::internal::triangle_mesh_decimator_interface<float>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = *result;
    *result = *a2;
    *a2 = v2;
    v3 = result[1];
    result[1] = a2[1];
    a2[1] = v3;
    v4 = result[2];
    result[2] = a2[2];
    a2[2] = v4;
    v5 = result[3];
    result[3] = a2[3];
    a2[3] = v5;
  }

  return result;
}

void *geom::internal::triangle_mesh_decimator_interface<float>::copy_connectivity@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    return std::optional<geom::triangle_mesh_connectivity const>::optional[abi:nn200100]<geom::triangle_mesh_connectivity const&,0>(a2, *result + 32);
  }

  *a2 = 0;
  a2[208] = 0;
  return result;
}

uint64_t std::optional<geom::triangle_mesh_connectivity const>::optional[abi:nn200100]<geom::triangle_mesh_connectivity const&,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::vector<float>::vector[abi:nn200100]((a1 + 16), (a2 + 16));
  std::vector<float>::vector[abi:nn200100]((a1 + 40), (a2 + 40));
  std::vector<float>::vector[abi:nn200100]((a1 + 64), (a2 + 64));
  std::vector<float>::vector[abi:nn200100]((a1 + 88), (a2 + 88));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  std::vector<float>::vector[abi:nn200100]((a1 + 160), (a2 + 160));
  std::vector<float>::vector[abi:nn200100]((a1 + 184), (a2 + 184));
  *(a1 + 208) = 1;
  return a1;
}

void *geom::internal::triangle_mesh_decimator_interface<double>::triangle_mesh_decimator_interface(void *a1, void *a2)
{
  *a1 = 0;
  std::vector<float>::vector[abi:nn200100](a1 + 1, a2 + 1);
  if (*a2)
  {
    operator new();
  }

  return a1;
}

void geom::internal::triangle_mesh_decimator_interface<double>::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *&v18 = 0;
  geom::internal::triangle_mesh_decimator<double>::make(a1, a2, a3, a4, a5, a6, &v18, v21);
  if (v22 == 1)
  {
    v9 = *(a5 + 8);
    __dst[1] = 0;
    v20 = 0;
    __dst[0] = 0;
    if (v9)
    {
      std::vector<float>::__vallocate[abi:nn200100](__dst, v9);
    }

    if (v22)
    {
      operator new();
    }

    v10 = std::__throw_bad_optional_access[abi:nn200100]();
    geom::internal::triangle_mesh_decimator<double>::make(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    *a7 = 0;
    a7[32] = 0;
  }
}

void geom::internal::triangle_mesh_decimator<double>::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v15 = *a3;
  geom::triangle_mesh_connectivity::make(*(a1 + 8), a3[1], &__sz);
  if (v107 != 1)
  {
    *a8 = 0;
    a8[552] = 0;
    return;
  }

  v16 = ((v97 - *(&v96 + 1)) >> 2);
  __dst[1] = 0;
  __dst[0] = 0;
  v92 = 0;
  if (((v97 - *(&v96 + 1)) >> 2))
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, ((v97 - *(&v96 + 1)) >> 2));
  }

  v17 = (v97 - *(&v96 + 1)) >> 2;
  v18 = v106;
  if (v106 == 1)
  {
    if (v17)
    {
      v19 = 0;
      v20 = __dst[0];
      do
      {
        v21 = (*a1 + 32 * v105.__begin_[v19]);
        v22 = *v21;
        v23 = v21[1];
        v24 = &v20[32 * v19];
        *v24 = v22;
        *(v24 + 1) = v23;
        ++v19;
      }

      while (v16 != v19);
    }
  }

  else
  {
    memcpy(__dst[0], *a1, 32 * *(a1 + 8));
  }

  std::vector<geom::internal::quadric>::vector[abi:nn200100](v90, v16);
  v89 = 0;
  v87 = 0u;
  *v88 = 0u;
  *v85 = 0u;
  *v86 = 0u;
  *v83 = 0u;
  v84 = 0u;
  *v82 = 0u;
  if (*(a4 + 8))
  {
    v25 = *(a5 + 8);
    memset(&v81, 0, sizeof(v81));
    if (v25)
    {
      std::vector<float>::__vallocate[abi:nn200100](&v81, v25);
    }

    v26 = *(a6 + 8);
    v80 = 0;
    v79[0] = 0;
    v79[1] = 0;
    if (v26)
    {
      std::vector<float>::__vallocate[abi:nn200100](v79, v26);
    }

    v27 = *(a4 + 8);
    v78 = 0;
    begin = 0;
    v77 = 0;
    if (v27)
    {
      std::vector<double>::__vallocate[abi:nn200100](&begin, v27);
    }

    memcpy(v81.__begin_, *a5, 4 * *(a5 + 8));
    memcpy(v79[0], *a6, 4 * *(a6 + 8));
    memcpy(begin, *a4, 8 * *(a4 + 8));
    *&v55 = 0;
    v53 = 0u;
    *__p = 0u;
    *v51 = 0u;
    *v52 = 0u;
    v50 = 0u;
    memset(v49, 0, sizeof(v49));
    geom::triangle_mesh_atlas::init(v49, &__sz, &v81, v79, &begin);
    geom::triangle_mesh_atlas::operator=(v82, v49);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v52[1])
    {
      *&v53 = v52[1];
      operator delete(v52[1]);
    }

    if (v51[0])
    {
      v51[1] = v51[0];
      operator delete(v51[0]);
    }

    if (*&v49[24])
    {
      *&v50 = *&v49[24];
      operator delete(*&v49[24]);
    }

    if (*v49)
    {
      *&v49[8] = *v49;
      operator delete(*v49);
    }

    if (begin)
    {
      v77 = begin;
      operator delete(begin);
    }

    if (v79[0])
    {
      v79[1] = v79[0];
      operator delete(v79[0]);
    }

    if (v81.__begin_)
    {
      v81.__end_ = v81.__begin_;
      operator delete(v81.__begin_);
    }
  }

  if (v18 && (v28 = *(a2 + 8)) != 0)
  {
    v29 = *a2;
    *&v49[8] = 0;
    *&v49[16] = 0;
    *v49 = &v49[8];
    v30 = 4 * v28;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v49, &v49[8], v29++);
      v30 -= 4;
    }

    while (v30);
    memset(&v81, 0, sizeof(v81));
    std::vector<float>::reserve(&v81, v28);
    if ((v107 & 1) == 0 || (v106 & 1) == 0)
    {
      goto LABEL_92;
    }

    LODWORD(v79[0]) = 0;
    if (v17)
    {
      v31 = 0;
      do
      {
        v32 = *&v49[8];
        if (*&v49[8])
        {
          v33 = v105.__begin_[v31];
          v34 = &v49[8];
          do
          {
            v35 = *(v32 + 28);
            v36 = v35 >= v33;
            v37 = v35 < v33;
            if (v36)
            {
              v34 = v32;
            }

            v32 = *(v32 + 8 * v37);
          }

          while (v32);
          if (v34 != &v49[8] && v33 >= *(v34 + 7))
          {
            std::vector<unsigned int>::push_back[abi:nn200100](&v81.__begin_, v79);
            v31 = v79[0];
          }
        }

        LODWORD(v79[0]) = ++v31;
      }

      while (v31 < v17);
    }

    begin = v81.__begin_;
    v77 = (v81.__end_ - v81.__begin_);
    geom::internal::compute_vertex_masks<double>(&__sz, __dst, &begin, v82, v79, v47, *v49, *&v49[8]);
    v48 = *v79;
    v38 = v80;
    if (v81.__begin_)
    {
      v81.__end_ = v81.__begin_;
      operator delete(v81.__begin_);
    }

    _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(v49, *&v49[8]);
  }

  else
  {
    geom::internal::compute_vertex_masks<double>(&__sz, __dst, a2, v82, v49, v47, *v49, *&v49[8]);
    v48 = *v49;
    v38 = *&v49[16];
  }

  memset(&v81, 0, sizeof(v81));
  if (*(a7 + 4) == 1)
  {
    if (!v18)
    {
      std::vector<float>::resize(&v81, __sz);
      if (v81.__begin_ != v81.__end_)
      {
        v39 = 0;
        v40 = (v81.__end_ - v81.__begin_ - 4) >> 2;
        v41 = vdupq_n_s64(v40);
        v42 = (v40 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v43 = v81.__begin_ + 2;
        do
        {
          v44 = vdupq_n_s64(v39);
          v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_2500C1680)));
          if (vuzp1_s16(v45, *v41.i8).u8[0])
          {
            *(v43 - 2) = v39;
          }

          if (vuzp1_s16(v45, *&v41).i8[2])
          {
            *(v43 - 1) = v39 + 1;
          }

          if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_2500C1670)))).i32[1])
          {
            *v43 = v39 + 2;
            v43[1] = v39 + 3;
          }

          v39 += 4;
          v43 += 4;
        }

        while (v42 != v39);
      }

      goto LABEL_70;
    }

    if (v107 & 1) != 0 && (v106)
    {
      v81 = v105;
      memset(&v105, 0, sizeof(v105));
      goto LABEL_70;
    }

LABEL_92:
    v46 = std::__throw_bad_optional_access[abi:nn200100]();
    geom::internal::triangle_mesh_decimator_interface<double>::make(v46);
    return;
  }

LABEL_70:
  *v49 = *a7;
  *&v49[24] = v92;
  DWORD2(v50) = v94;
  v61 = v102;
  *&v49[8] = *__dst;
  *__dst = 0u;
  v92 = 0;
  v57 = 0u;
  v58 = 0u;
  v53 = v97;
  *__p = v98;
  v97 = 0u;
  v98 = 0u;
  v55 = v99;
  v56 = v100;
  v99 = 0u;
  v100 = 0u;
  *&v50 = __sz;
  __sz = 0;
  v94 = 0;
  *v51 = v95;
  *v52 = v96;
  v95 = 0u;
  v96 = 0u;
  v59 = 0u;
  v60 = v101;
  v101 = 0u;
  v62 = v103;
  v63 = v104;
  v103 = 0u;
  v102 = 0;
  v104 = 0;
  geom::triangle_mesh_atlas::triangle_mesh_atlas(v64, v82);
  *&v64[120] = v48;
  v65 = v38;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = v81;
  memset(&v81, 0, sizeof(v81));
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  geom::internal::triangle_mesh_decimator<double>::initialize_quadrics(v49);
  geom::internal::triangle_mesh_decimator<double>::initialize_edge_data(v49);
  geom::internal::triangle_mesh_decimator<float>::triangle_mesh_decimator(a8, v49);
  a8[552] = 1;
  geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v49);
  if (v81.__begin_)
  {
    v81.__end_ = v81.__begin_;
    operator delete(v81.__begin_);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }

  if (v86[1])
  {
    *&v87 = v86[1];
    operator delete(v86[1]);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  if (v83[1])
  {
    *&v84 = v83[1];
    operator delete(v83[1]);
  }

  if (v82[0])
  {
    v82[1] = v82[0];
    operator delete(v82[0]);
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v107)
  {
    if (v106 == 1)
    {
      if (v105.__begin_)
      {
        v105.__end_ = v105.__begin_;
        operator delete(v105.__begin_);
      }
    }

    geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&__sz);
  }
}

void geom::internal::triangle_mesh_decimator_interface<double>::make(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  geom::internal::triangle_mesh_decimator_interface<double>::make(a1, v6, a2, v5, v4, v3, a3);
}

uint64_t *geom::internal::triangle_mesh_decimator_interface<double>::decimate_one_edge(uint64_t **a1)
{
  result = *a1;
  if (result)
  {
    return geom::internal::triangle_mesh_decimator<double>::decimate_one_edge(result);
  }

  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<double>::decimate_one_edge(uint64_t *a1)
{
  v1 = a1[54];
  v2 = (a1[55] - v1) >> 4;
  if (!v2)
  {
    return 0;
  }

  v4 = *v1;
  v5 = v1[1];
  if (v2 == 1)
  {
    a1[55] = v1;
  }

  else
  {
    v7 = (v2 - 1);
    v8 = &v1[2 * v7];
    v9 = *v8;
    *v1 = v9;
    v1[1] = *(v8 + 1);
    *(a1[57] + 4 * v9) = 0;
    std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::resize(a1 + 54, v7);
    v10 = 0;
    v11 = a1[54];
    v12 = (a1[55] - v11) >> 4;
    for (i = 0; ; v10 = i)
    {
      v14 = (2 * v10) | 1;
      v15 = (v11 + 16 * v10);
      if (v14 < v12)
      {
        i = v10;
        if (*(v11 + 16 * v14 + 8) < v15[1])
        {
          i = (2 * v10) | 1u;
        }
      }

      v16 = 2 * v10 + 2;
      if (v16 < v12 && *(v11 + 16 * v16 + 8) < *(v11 + 16 * i + 8))
      {
        i = (2 * v10 + 2);
      }

      if (i == v10)
      {
        break;
      }

      v17 = (v11 + 16 * i);
      v18 = *v15;
      v19 = *(v15 + 1);
      *v15 = *v17;
      v15[1] = v17[1];
      *v17 = v18;
      *(v17 + 1) = v19;
      v20 = a1[57];
      *(v20 + 4 * *v15) = v10;
      *(v20 + 4 * *v17) = i;
    }
  }

  *(a1[57] + 4 * v4) = -1;
  if (v4 == -1 && v5 == INFINITY)
  {
    return 0;
  }

  return geom::internal::triangle_mesh_decimator<double>::decimate_edge(a1, v4);
}

uint64_t geom::internal::triangle_mesh_decimator_interface<double>::decimate_edge(uint64_t *a1, unsigned int a2)
{
  result = *a1;
  if (result)
  {
    return geom::internal::triangle_mesh_decimator<double>::decimate_edge(result, a2);
  }

  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<double>::decimate_edge(uint64_t a1, unsigned int a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(a1 + 216);
  if (a2 >= ((*(a1 + 224) - v3) >> 2))
  {
    result = 0;
    goto LABEL_11;
  }

  half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v3 + 4 * a2) / 3u, *(v3 + 4 * a2) % 3u);
  result = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge((a1 + 32), half_edge_for_face_vertex);
  if (result)
  {
    result = geom::internal::triangle_mesh_decimator<double>::is_edge_collapse_geometrically_safe(a1, a2);
    if (result)
    {
      if (((*(a1 + 296) - *(a1 + 288)) & 0x3FFFFFFFCLL) == 0 || (v8 = *(a1 + 216), v2 >= (*(a1 + 224) - v8) >> 2) || (v9 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v8 + 4 * v2) / 3u, *(v8 + 4 * v2) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_safe((a1 + 32), v9, (a1 + 504), (a1 + 528))) || (v10 = *(a1 + 408) + 48 * v2, result = geom::internal::triangle_mesh_decimator<double>::update_edge_uvs(a1, a2), result))
      {
        v11 = *(a1 + 216);
        if (v2 >= (*(a1 + 224) - v11) >> 2)
        {
          *v63 = -1;
        }

        else
        {
          v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v11 + 4 * v2) / 3u, *(v11 + 4 * v2) % 3u);
          geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 32), v12, v63);
        }

        v14 = *(a1 + 32);
        v15 = geom::triangle_mesh_connectivity::collapse_edge((a1 + 32), a2);
        v16 = v15;
        if (*(a1 + 4) != 1)
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 408) + 48 * v2;
        v18 = *(a1 + 8);
        v20 = *(v17 + 16);
        v19 = *(v17 + 32);
        v21 = v63[0];
        if (v63[0] == v15 || (v22 = (v18 + 32 * v63[0]), v23 = vsubq_f64(*v22, v20), v24 = vsubq_f64(v22[1], v19), sqrt(vmulq_f64(v24, v24).f64[0] + vaddvq_f64(vmulq_f64(v23, v23))) != 0.0))
        {
          if (v63[1] == v15)
          {
            goto LABEL_20;
          }

          v26 = (v18 + 32 * v63[1]);
          v27 = vsubq_f64(*v26, v20);
          v28 = vsubq_f64(v26[1], v19);
          v25 = v63[1];
          if (sqrt(vmulq_f64(v28, v28).f64[0] + vaddvq_f64(vmulq_f64(v27, v27))) != 0.0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v25 = v63[0];
          v21 = v63[1];
        }

        *(*(a1 + 480) + 4 * v21) = *(*(a1 + 480) + 4 * v25);
LABEL_20:
        if (v15 != -1)
        {
          v29 = *(v63 | (4 * (v15 == v63[0])));
          v30 = v15;
          v31 = *(*(a1 + 360) + v29) | *(*(a1 + 360) + v15);
          v32 = *(a1 + 408) + 48 * v2;
          v33 = *(v32 + 16);
          v34 = *(v32 + 32);
          v35 = (*(a1 + 8) + 32 * v15);
          *v35 = v33;
          v35[1] = v34;
          if (*a1 == 1)
          {
            geom::internal::triangle_mesh_decimator<double>::recompute_vertex_quadric(a1, v15, (a1 + 504), &v58);
            v36 = *(a1 + 384) + 80 * v30;
            if (v36 != &v58)
            {
              *v36 = v58;
              *(v36 + 16) = v59;
              *(v36 + 32) = v60;
              *(v36 + 48) = v61;
              *(v36 + 64) = v62;
            }
          }

          else
          {
            v37 = *(a1 + 384);
            v38 = (v37 + 80 * v29);
            v39 = (v37 + 80 * v15);
            v40 = vaddq_f64(v38[1], v39[1]);
            *v39 = vaddq_f64(*v38, *v39);
            v39[1] = v40;
            v41 = vaddq_f64(v38[3], v39[3]);
            v39[2] = vaddq_f64(v38[2], v39[2]);
            v39[3] = v41;
            v39[4] = vaddq_f64(v38[4], v39[4]);
          }

          *(*(a1 + 360) + v16) = v31;
          geom::triangle_mesh_connectivity::get_incident_edges_to_vertex((a1 + 32), v16, a1 + 528);
          v46 = *(a1 + 536) - *(a1 + 528);
          if (v46)
          {
            v47 = 0;
            v48 = v46 >> 2;
            if (v48 <= 1)
            {
              v49 = 1;
            }

            else
            {
              v49 = v48;
            }

            do
            {
              v50 = *(*(a1 + 528) + 4 * v47);
              v51 = *(a1 + 408) + 48 * v50;
              geom::internal::triangle_mesh_decimator<double>::make_edge_cost(a1, *(*(a1 + 528) + 4 * v47), &v58, *v51, v42, v43, v44, v45);
              v52 = v58;
              v53 = v60;
              *(v51 + 16) = v59;
              *(v51 + 32) = v53;
              *v51 = v52;
              *v51 = *v51 + 1.0e-12;
              v54 = *(*(a1 + 456) + 4 * v50);
              if (v54 == -1)
              {
                v57 = INFINITY;
                v56 = 0xFFFFFFFFLL;
              }

              else
              {
                v55 = *(a1 + 432) + 16 * v54;
                v56 = *v55;
                v57 = *(v55 + 8);
              }

              *&v58.f64[0] = v56;
              v58.f64[1] = v57;
              if (v56 == -1 && v57 == INFINITY)
              {
                LODWORD(v58.f64[0]) = v50;
              }

              v58.f64[1] = *v51;
              geom::indexed_priority_queue<unsigned int,double>::push_or_change_cost((a1 + 432), v58.f64);
              ++v47;
            }

            while (v49 != v47);
          }
        }

        result = *(a1 + 32) < v14;
      }
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::internal::triangle_mesh_decimator_interface<double>::get_simplified_geometry(uint64_t *a1, void *a2, std::vector<unsigned int> *a3, std::vector<int> *a4)
{
  a2[1] = *a2;
  a3->__end_ = a3->__begin_;
  a4->__end_ = a4->__begin_;
  v4 = *a1;
  if (v4)
  {
    geom::internal::copy_simplified_geometry<double>(v4, a2, a3, a4);
  }
}

void geom::internal::copy_simplified_geometry<double>(uint64_t a1, void *a2, std::vector<unsigned int> *a3, std::vector<int> *a4)
{
  __x = -1;
  v8 = *(a1 + 80) - *(a1 + 72);
  v47 = 0;
  v48 = 0;
  __p = 0;
  if ((v8 >> 2))
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v8 >> 2));
  }

  memset(&v45, 0, sizeof(v45));
  std::vector<unsigned int>::resize(&v45, *(a1 + 36), &__x);
  a4->__end_ = a4->__begin_;
  std::vector<unsigned int>::resize(a4, *(a1 + 32), &__x);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80) - v9;
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    begin = a4->__begin_;
    v15 = __p;
    v16 = (v10 >> 2);
    do
    {
      if (v13 > v11 && *(v9 + 4 * v11) != -1)
      {
        begin[v12] = v11;
        v15[v11] = v12++;
      }

      ++v11;
    }

    while (v16 != v11);
  }

  v17 = *(a1 + 48);
  v18 = (*(a1 + 56) - v17) >> 2;
  if ((v18 / 3))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v45.__begin_;
    do
    {
      if (v18 > v20 && *(v17 + 4 * v20) != -1)
      {
        v22[v21++] = v19;
      }

      v20 += 3;
      ++v19;
    }

    while (3 * (v18 / 3) != v20);
  }

  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, *(a1 + 32));
  v23 = *(a1 + 32);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = (*(a1 + 8) + 32 * a4->__begin_[i]);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*a2 + 32 * i);
      *v28 = v26;
      v28[1] = v27;
    }
  }

  std::vector<float>::resize(a3, (3 * *(a1 + 36)));
  v29 = *(a1 + 36);
  if (v29)
  {
    v30 = 0;
    v31 = v45.__begin_;
    v32 = *(a1 + 48);
    v33 = __p;
    v34 = 3 * v29;
    v35 = a3->__begin_;
    do
    {
      v36 = *v31++;
      v37 = (v32 + 4 * (3 * v36));
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v35[v30] = v33[v38];
      v35[(v30 + 1)] = v33[v39];
      v35[(v30 + 2)] = v33[v40];
      v30 += 3;
    }

    while (v34 != v30);
  }

  v41 = *(a1 + 480);
  if (*(a1 + 488) != v41)
  {
    v42 = a4->__begin_;
    v43 = a4->__end_ - a4->__begin_;
    if (v43)
    {
      v44 = v43 >> 2;
      if (v44 <= 1)
      {
        v44 = 1;
      }

      do
      {
        *v42 = *(v41 + 4 * *v42);
        ++v42;
        --v44;
      }

      while (v44);
    }
  }

  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void geom::internal::triangle_mesh_decimator_interface<double>::get_simplified_geometry(uint64_t *a1, void *a2, std::vector<unsigned int> *a3, int8x8_t *a4, void *a5, void *a6, std::vector<int> *a7)
{
  a2[1] = *a2;
  a3->__end_ = a3->__begin_;
  a4[1] = *a4;
  a5[1] = *a5;
  a6[1] = *a6;
  a7->__end_ = a7->__begin_;
  v8 = *a1;
  if (v8)
  {
    geom::internal::copy_simplified_geometry<double>(v8, a2, a3, a7);
    v12 = a1[1];
    v13 = (a1[2] - v12) >> 2;
    v14 = *a1 + 32;
    v15 = *a1 + 240;

    geom::internal::copy_simplified_uvs(v14, v15, v12, v13, a4, a5, a6);
  }
}

uint64_t geom::internal::triangle_mesh_decimator_interface<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v4);
      MEMORY[0x25305E3F0](v5, 0x10B0C40E87BB8D8);
      *a1 = 0;
    }

    if (*a2)
    {
      operator new();
    }

    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void geom::internal::simplify_triangle_mesh<float>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4)
{
  __p.__begin_ = 0;
  __p.__end_ = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8 = 0;
  geom::internal::triangle_mesh_decimator<float>::make(a1, a1 + 32, (a1 + 16), &__p, v10, v9, &v8, v11);
  if (v12 == 1)
  {
    memset(&__p, 0, sizeof(__p));
    geom::internal::decimate_mesh<float>(a2, v11);
    geom::internal::copy_simplified_geometry<float>(v11, a3, a4, &__p);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v12)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v11);
    }
  }

  else
  {
    a3[1] = *a3;
    a4->__end_ = a4->__begin_;
  }
}

uint64_t geom::internal::decimate_mesh<float>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = *(a2 + 36);
  }

  if (((*(a2 + 440) - *(a2 + 432)) & 0xFFFFFFFF0) != 0 && v2 > result)
  {
    do
    {
      result = geom::internal::triangle_mesh_decimator<float>::decimate_one_edge(a2);
    }

    while (((*(a2 + 440) - *(a2 + 432)) & 0xFFFFFFFF0) != 0 && *(a2 + 36) > v3);
  }

  return result;
}

void geom::internal::simplify_triangle_mesh<double>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4)
{
  __p.__begin_ = 0;
  __p.__end_ = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8 = 0;
  geom::internal::triangle_mesh_decimator<double>::make(a1, a1 + 32, (a1 + 16), &__p, v10, v9, &v8, v11);
  if (v12 == 1)
  {
    memset(&__p, 0, sizeof(__p));
    geom::internal::decimate_mesh<double>(a2, v11);
    geom::internal::copy_simplified_geometry<double>(v11, a3, a4, &__p);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v12)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v11);
    }
  }

  else
  {
    a3[1] = *a3;
    a4->__end_ = a4->__begin_;
  }
}

uint64_t geom::internal::decimate_mesh<double>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = *(a2 + 36);
  }

  if (((*(a2 + 440) - *(a2 + 432)) & 0xFFFFFFFF0) != 0 && v2 > result)
  {
    do
    {
      result = geom::internal::triangle_mesh_decimator<double>::decimate_one_edge(a2);
    }

    while (((*(a2 + 440) - *(a2 + 432)) & 0xFFFFFFFF0) != 0 && *(a2 + 36) > v3);
  }

  return result;
}

void geom::internal::simplify_triangle_mesh<float>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, int8x8_t *a5, void *a6, uint64_t *a7)
{
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 96);
  geom::internal::triangle_mesh_decimator<float>::make(a1, a1 + 32, (a1 + 16), a1 + 48, a1 + 64, a1 + 80, &v20, v16);
  if (v19 == 1)
  {
    memset(&__p, 0, sizeof(__p));
    geom::internal::decimate_mesh<float>(a2, v16);
    geom::internal::copy_simplified_geometry<float>(v16, a3, a4, &__p);
    geom::internal::copy_simplified_uvs(&v17, &v18, *(a1 + 64), *(a1 + 72), a5, a6, a7);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v19)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v16);
    }
  }

  else
  {
    a3[1] = *a3;
    v14 = *a7;
    a5[1] = *a5;
    a6[1] = *a6;
    a7[1] = v14;
  }
}

void geom::internal::simplify_triangle_mesh<double>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, int8x8_t *a5, void *a6, uint64_t *a7)
{
  v20 = 0;
  v21 = 0;
  v22 = *(a1 + 96);
  geom::internal::triangle_mesh_decimator<double>::make(a1, a1 + 32, (a1 + 16), a1 + 48, a1 + 64, a1 + 80, &v20, v16);
  if (v19 == 1)
  {
    memset(&__p, 0, sizeof(__p));
    geom::internal::decimate_mesh<double>(a2, v16);
    geom::internal::copy_simplified_geometry<double>(v16, a3, a4, &__p);
    geom::internal::copy_simplified_uvs(&v17, &v18, *(a1 + 64), *(a1 + 72), a5, a6, a7);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v19)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v16);
    }
  }

  else
  {
    a3[1] = *a3;
    v14 = *a7;
    a5[1] = *a5;
    a6[1] = *a6;
    a7[1] = v14;
  }
}

void geom::internal::simplify_and_correspond_triangle_mesh<float>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, std::vector<int> *a5)
{
  v14 = 2;
  v15 = 1;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  geom::internal::triangle_mesh_decimator<float>::make(a1, a1 + 32, (a1 + 16), v11, v10, v9, &v14, v12);
  if (v13)
  {
    geom::internal::decimate_mesh<float>(a2, v12);
    geom::internal::copy_simplified_geometry<float>(v12, a3, a4, a5);
    if (v13)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v12);
    }
  }

  else
  {
    a3[1] = *a3;
    a4->__end_ = a4->__begin_;
    a5->__end_ = a5->__begin_;
  }
}

void geom::internal::simplify_and_correspond_triangle_mesh<double>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, std::vector<int> *a5)
{
  v14 = 2;
  v15 = 1;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  geom::internal::triangle_mesh_decimator<double>::make(a1, a1 + 32, (a1 + 16), v11, v10, v9, &v14, v12);
  if (v13)
  {
    geom::internal::decimate_mesh<double>(a2, v12);
    geom::internal::copy_simplified_geometry<double>(v12, a3, a4, a5);
    if (v13)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v12);
    }
  }

  else
  {
    a3[1] = *a3;
    a4->__end_ = a4->__begin_;
    a5->__end_ = a5->__begin_;
  }
}

void geom::internal::simplify_and_correspond_triangle_mesh<float>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, int8x8_t *a5, void *a6, uint64_t *a7, std::vector<int> *a8)
{
  v21 = 2;
  v22 = 1;
  v23 = *(a1 + 96);
  geom::internal::triangle_mesh_decimator<float>::make(a1, a1 + 32, (a1 + 16), a1 + 48, a1 + 64, a1 + 80, &v21, v17);
  if (v20)
  {
    geom::internal::decimate_mesh<float>(a2, v17);
    geom::internal::copy_simplified_geometry<float>(v17, a3, a4, a8);
    geom::internal::copy_simplified_uvs(&v18, &v19, *(a1 + 64), *(a1 + 72), a5, a6, a7);
    if (v20)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v17);
    }
  }

  else
  {
    a3[1] = *a3;
    v16 = *a7;
    a5[1] = *a5;
    a6[1] = *a6;
    a7[1] = v16;
    a8->__end_ = a8->__begin_;
  }
}

void geom::internal::simplify_and_correspond_triangle_mesh<double>(uint64_t a1, uint64_t a2, void *a3, std::vector<unsigned int> *a4, int8x8_t *a5, void *a6, uint64_t *a7, std::vector<int> *a8)
{
  v21 = 2;
  v22 = 1;
  v23 = *(a1 + 96);
  geom::internal::triangle_mesh_decimator<double>::make(a1, a1 + 32, (a1 + 16), a1 + 48, a1 + 64, a1 + 80, &v21, v17);
  if (v20)
  {
    geom::internal::decimate_mesh<double>(a2, v17);
    geom::internal::copy_simplified_geometry<double>(v17, a3, a4, a8);
    geom::internal::copy_simplified_uvs(&v18, &v19, *(a1 + 64), *(a1 + 72), a5, a6, a7);
    if (v20)
    {
      geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(v17);
    }
  }

  else
  {
    a3[1] = *a3;
    v16 = *a7;
    a5[1] = *a5;
    a6[1] = *a6;
    a7[1] = v16;
    a8->__end_ = a8->__begin_;
  }
}

uint64_t _ZZN4geom8internal19copy_simplified_uvsERKNS_26triangle_mesh_connectivityERKNS_19triangle_mesh_atlasENS_5sliceIjEERNSt3__16vectorIDv2_fNS9_9allocatorISB_EEEERNSA_IjNSC_IjEEEESI_ENK3__0clERKSB_(int8x8_t **a1, float32x2_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = vcvts_n_u32_f32(COERCE_FLOAT(HIDWORD(*a2)), 0x20uLL) | (vcvts_n_u32_f32(COERCE_FLOAT(*a2), 0x20uLL) << 32);
  v6 = (*a1)[1];
  if (!*&v6)
  {
    v9 = (*&a1[1][1] - *a1[1]) >> 3;
    goto LABEL_33;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v10 = *(*v4 + 8 * v8);
  if (v10)
  {
    for (i = *v10; i; i = *i)
    {
      v12 = i[1];
      if (*&v12 == v5)
      {
        v13 = vsub_f32(i[2], v3);
        if (sqrtf(vaddv_f32(vmul_f32(v13, v13))) <= 0.00001)
        {
          return i[3].u32[0];
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (*&v12 >= *&v6)
          {
            *&v12 %= *&v6;
          }
        }

        else
        {
          *&v12 &= *&v6 - 1;
        }

        if (*&v12 != v8)
        {
          break;
        }
      }
    }
  }

  v14 = a1[1];
  v32 = (*(v14 + 8) - *v14) >> 3;
  if (v7.u32[0] > 1uLL)
  {
    v15 = v5;
    if (v5 >= *&v6)
    {
      v15 = v5 % *&v6;
    }
  }

  else
  {
    v15 = v5 & (*&v6 - 1);
  }

  v16 = *(*v4 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (*&v18 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (*&v18 >= *&v6)
      {
        *&v18 %= *&v6;
      }
    }

    else
    {
      *&v18 &= *&v6 - 1;
    }

    if (*&v18 != v15)
    {
      goto LABEL_33;
    }

LABEL_32:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_33;
    }
  }

  v19 = vsub_f32(v17[2], v3);
  if (sqrtf(vaddv_f32(vmul_f32(v19, v19))) > 0.00001)
  {
    goto LABEL_32;
  }

  v17[3].i32[0] = v32;
  v21 = *(v14 + 8);
  v20 = *(v14 + 16);
  if (v21 >= v20)
  {
    v23 = (v21 - *v14) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = v20 - *v14;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(v14, v26);
    }

    v27 = (8 * v23);
    *v27 = *a2;
    v22 = 8 * v23 + 8;
    v28 = *(v14 + 8) - *v14;
    v29 = v27 - v28;
    memcpy(v27 - v28, *v14, v28);
    v30 = *v14;
    *v14 = v29;
    *(v14 + 8) = v22;
    *(v14 + 16) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = *a2;
    v22 = &v21[1];
  }

  *(v14 + 8) = v22;
  return v32;
}

uint64_t geom::internal::triangle_mesh_decimator<float>::triangle_mesh_decimator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  std::vector<float>::vector[abi:nn200100]((a1 + 48), (a2 + 48));
  std::vector<float>::vector[abi:nn200100]((a1 + 72), (a2 + 72));
  std::vector<float>::vector[abi:nn200100]((a1 + 96), (a2 + 96));
  std::vector<float>::vector[abi:nn200100]((a1 + 120), (a2 + 120));
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  std::vector<float>::vector[abi:nn200100]((a1 + 192), (a2 + 192));
  std::vector<float>::vector[abi:nn200100]((a1 + 216), (a2 + 216));
  geom::triangle_mesh_atlas::triangle_mesh_atlas((a1 + 240), (a2 + 240));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v5 = *(a2 + 360);
  v4 = *(a2 + 368);
  if (v4 != v5)
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a1 + 360, v4 - v5);
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  std::vector<geom::internal::quadric>::__init_with_size[abi:nn200100]<geom::internal::quadric*,geom::internal::quadric*>(a1 + 384, *(a2 + 384), *(a2 + 392), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 392) - *(a2 + 384)) >> 4));
  std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::vector[abi:nn200100]((a1 + 408), (a2 + 408));
  std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::vector[abi:nn200100]((a1 + 432), (a2 + 432));
  std::vector<float>::vector[abi:nn200100]((a1 + 456), (a2 + 456));
  std::vector<float>::vector[abi:nn200100]((a1 + 480), (a2 + 480));
  std::vector<float>::vector[abi:nn200100]((a1 + 504), (a2 + 504));
  std::vector<float>::vector[abi:nn200100]((a1 + 528), (a2 + 528));
  return a1;
}

{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v4 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  v5 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v5;
  v6 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  v7 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v7;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v8;
  v9 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v9;
  v10 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v10;
  v11 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v11;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  LODWORD(v11) = *(a1 + 36);
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = v11;
  LODWORD(v11) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v11;
  v12 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v13;
  v14 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v14;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 192) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  geom::triangle_mesh_atlas::triangle_mesh_atlas((a1 + 240), a2 + 240);
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 424) = 0;
  *(a2 + 408) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  v15 = *(a1 + 440);
  *(a1 + 440) = *(a2 + 440);
  *(a2 + 440) = v15;
  v16 = *(a1 + 448);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = v16;
  v17 = *(a1 + 456);
  *(a1 + 456) = *(a2 + 456);
  *(a2 + 456) = v17;
  v18 = *(a1 + 464);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 464) = v18;
  v19 = *(a1 + 472);
  *(a1 + 472) = *(a2 + 472);
  *(a2 + 472) = v19;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 496) = 0;
  *(a2 + 480) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  return a1;
}

geom::triangle_mesh_atlas *geom::triangle_mesh_atlas::triangle_mesh_atlas(geom::triangle_mesh_atlas *this, const geom::triangle_mesh_atlas *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](this, v4 - *a2);
  }

  std::vector<double>::vector[abi:nn200100](this + 3, a2 + 3);
  std::vector<float>::vector[abi:nn200100](this + 6, a2 + 6);
  std::vector<float>::vector[abi:nn200100](this + 9, a2 + 9);
  std::vector<float>::vector[abi:nn200100](this + 12, a2 + 12);
  return this;
}

void std::vector<unsigned char>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::vector<geom::internal::quadric>::__init_with_size[abi:nn200100]<geom::internal::quadric*,geom::internal::quadric*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<geom::internal::quadric>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<geom::internal::quadric>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::quadric>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::quadric>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

_OWORD *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<geom::internal::quadric>,geom::internal::quadric*,geom::internal::quadric*,geom::internal::quadric*>(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    result[1] = a2[1];
    result[2] = a2[2];
    result[3] = a2[3];
    result[4] = a2[4];
    a2 += 5;
    result += 5;
  }

  return result;
}

void *std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 5);
  }

  return result;
}

void std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geom::internal::triangle_mesh_decimator<float>::~triangle_mesh_decimator(void *a1)
{
  v2 = a1[66];
  if (v2)
  {
    a1[67] = v2;
    operator delete(v2);
  }

  v3 = a1[63];
  if (v3)
  {
    a1[64] = v3;
    operator delete(v3);
  }

  v4 = a1[60];
  if (v4)
  {
    a1[61] = v4;
    operator delete(v4);
  }

  v5 = a1[57];
  if (v5)
  {
    a1[58] = v5;
    operator delete(v5);
  }

  v6 = a1[54];
  if (v6)
  {
    a1[55] = v6;
    operator delete(v6);
  }

  v7 = a1[51];
  if (v7)
  {
    a1[52] = v7;
    operator delete(v7);
  }

  v8 = a1[48];
  if (v8)
  {
    a1[49] = v8;
    operator delete(v8);
  }

  v9 = a1[45];
  if (v9)
  {
    a1[46] = v9;
    operator delete(v9);
  }

  v10 = a1[42];
  if (v10)
  {
    a1[43] = v10;
    operator delete(v10);
  }

  v11 = a1[39];
  if (v11)
  {
    a1[40] = v11;
    operator delete(v11);
  }

  v12 = a1[36];
  if (v12)
  {
    a1[37] = v12;
    operator delete(v12);
  }

  v13 = a1[33];
  if (v13)
  {
    a1[34] = v13;
    operator delete(v13);
  }

  v14 = a1[30];
  if (v14)
  {
    a1[31] = v14;
    operator delete(v14);
  }

  geom::triangle_mesh_connectivity::~triangle_mesh_connectivity((a1 + 4));
  v15 = a1[1];
  if (v15)
  {
    a1[2] = v15;
    operator delete(v15);
  }

  return a1;
}

__n128 geom::triangle_mesh_atlas::triangle_mesh_atlas(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  result = *(a2 + 96);
  *(a1 + 6) = result;
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<double>::triangle_mesh_decimator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  std::vector<float>::vector[abi:nn200100]((a1 + 48), (a2 + 48));
  std::vector<float>::vector[abi:nn200100]((a1 + 72), (a2 + 72));
  std::vector<float>::vector[abi:nn200100]((a1 + 96), (a2 + 96));
  std::vector<float>::vector[abi:nn200100]((a1 + 120), (a2 + 120));
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  std::vector<float>::vector[abi:nn200100]((a1 + 192), (a2 + 192));
  std::vector<float>::vector[abi:nn200100]((a1 + 216), (a2 + 216));
  geom::triangle_mesh_atlas::triangle_mesh_atlas((a1 + 240), (a2 + 240));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v5 = *(a2 + 360);
  v4 = *(a2 + 368);
  if (v4 != v5)
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a1 + 360, v4 - v5);
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  std::vector<geom::internal::quadric>::__init_with_size[abi:nn200100]<geom::internal::quadric*,geom::internal::quadric*>(a1 + 384, *(a2 + 384), *(a2 + 392), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 392) - *(a2 + 384)) >> 4));
  std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::vector[abi:nn200100]((a1 + 408), (a2 + 408));
  std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::vector[abi:nn200100]((a1 + 432), (a2 + 432));
  std::vector<float>::vector[abi:nn200100]((a1 + 456), (a2 + 456));
  std::vector<float>::vector[abi:nn200100]((a1 + 480), (a2 + 480));
  std::vector<float>::vector[abi:nn200100]((a1 + 504), (a2 + 504));
  std::vector<float>::vector[abi:nn200100]((a1 + 528), (a2 + 528));
  return a1;
}

void *std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4));
  }

  return result;
}

void std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

uint64_t geom::triangle_mesh_atlas::operator=(uint64_t a1, uint64_t a2)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1, a2);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 24, (a2 + 24));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 48, (a2 + 48));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 72, (a2 + 72));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 96, (a2 + 96));
  return a1;
}

uint64_t geom::internal::compute_vertex_masks<float>@<X0>(uint64_t this@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = this;
  v51 = *MEMORY[0x277D85DE8];
  v9 = *(this + 48) - *(this + 40);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if ((v9 >> 2))
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a5, (v9 >> 2));
  }

  if ((v9 & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    do
    {
      this = geom::triangle_mesh_half_edge_connectivity::is_boundary_vertex(v7, v10);
      if (this)
      {
        *(*a5 + v10) = 1;
        this = geom::triangle_mesh_half_edge_connectivity::get_incident_boundary_half_edges_to_boundary_vertex(v7, v10, &v50);
        if (v50.i32[0] == -1)
        {
          v13 = -1;
          v49 = -1;
        }

        else
        {
          this = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(v7, v50.u32[0]);
          v11 = this;
          if (v50.i32[1] == -1)
          {
            v12 = 0xFFFFFFFFLL;
          }

          else
          {
            this = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(v7, v50.u32[1]);
            v12 = 3 * this + BYTE4(this);
          }

          v14 = *(v7 + 20);
          v49 = *(v14 + 4 * (3 * v11 + BYTE4(v11)));
          v13 = *(v14 + 4 * v12);
        }

        v48 = v13;
        v15 = &v49;
        v16 = v47;
        v17 = 1;
        do
        {
          v18 = v17;
          v19 = *v15;
          v20 = *(v7 + 23);
          if (v19 >= (*(v7 + 24) - v20) >> 2)
          {
            v50.i64[0] = -1;
            v22 = 0xFFFFFFFFLL;
          }

          else
          {
            half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v7, *(v20 + 4 * v19) / 3u, *(v20 + 4 * v19) % 3u);
            this = geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v7, half_edge_for_face_vertex, &v50);
            v22 = v50.u32[0];
          }

          v17 = 0;
          *v16 = *(&v50 | (4 * (v22 == v10)));
          v15 = &v48;
          v16 = v46;
        }

        while ((v18 & 1) != 0);
        v23 = *a2;
        v24 = *(*a2 + 16 * v10);
        v25 = v47;
        v26 = &v50;
        v27 = 1;
        while (1)
        {
          v28 = v27;
          v29 = vsubq_f32(v24, *(v23 + 16 * *v25));
          *v26 = v29;
          v30 = vmulq_f32(v29, v29);
          v31 = v30.f32[2] + vaddv_f32(*v30.f32);
          if (v31 <= 0.0)
          {
            break;
          }

          v27 = 0;
          v32 = v31;
          v33 = vrsqrte_f32(LODWORD(v31));
          v34 = vmul_f32(v33, vrsqrts_f32(LODWORD(v32), vmul_f32(v33, v33)));
          *v26 = vmulq_n_f32(v29, vmul_f32(v34, vrsqrts_f32(LODWORD(v32), vmul_f32(v34, v34))).f32[0]);
          v25 = v46;
          v26 = &v45;
          if ((v28 & 1) == 0)
          {
            v35 = vmulq_f32(v50, v45);
            if ((v35.f32[2] + vaddv_f32(*v35.f32)) >= -0.5)
            {
              *(*a5 + v10) |= 2u;
            }

            break;
          }
        }
      }

      ++v10;
    }

    while (v10 != (v9 >> 2));
  }

  if (((a4[7] - a4[6]) & 0x3FFFFFFFCLL) != 0 && ((*(v7 + 6) - *(v7 + 5)) & 0x3FFFFFFFCLL) != 0)
  {
    v36 = 0;
    while (1)
    {
      v37 = *(*a4 + v36);
      if (v37 == 2)
      {
        break;
      }

      if ((v37 - 1) <= 1)
      {
        v38 = 4;
        goto LABEL_30;
      }

LABEL_31:
      if (++v36 >= ((*(v7 + 6) - *(v7 + 5)) >> 2))
      {
        goto LABEL_32;
      }
    }

    v38 = 8;
LABEL_30:
    *(*a5 + v36) |= v38;
    goto LABEL_31;
  }

LABEL_32:
  v39 = a3[1];
  if (v39)
  {
    v40 = *a3;
    v41 = 4 * v39;
    do
    {
      v42 = *v40++;
      *(*a5 + v42) |= 0x10u;
      v41 -= 4;
    }

    while (v41);
  }

  v43 = *MEMORY[0x277D85DE8];
  return this;
}

void geom::internal::triangle_mesh_decimator<float>::initialize_quadrics(void *a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = a1[10] - a1[9];
  v3 = ((a1[7] - a1[6]) >> 2) / 3uLL;
  a1[49] = a1[48];
  v4 = (v2 >> 2);
  std::vector<geom::internal::quadric>::resize(a1 + 48, v4);
  __p = 0;
  v53 = 0;
  v54 = 0;
  if ((v2 >> 2))
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v2 >> 2));
  }

  if ((v2 & 0x3FFFFFFFCLL) != 0)
  {
    v5 = a1[45];
    v6 = __p;
    do
    {
      v7 = *v5++;
      if ((v7 & 0xF) != 0)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      *v6++ = v8;
      --v4;
    }

    while (v4);
  }

  v9 = v3;
  if (v3)
  {
    v10 = 0;
    v46 = v3;
    do
    {
      v11 = (a1[6] + 4 * (3 * v10));
      v13 = v11[1];
      v56[0] = *v11;
      v12 = v56[0];
      v56[1] = v13;
      v14 = a1[1];
      v57 = v11[2];
      v15 = v57;
      v16 = (v14 + 16 * v13);
      v17 = (v14 + 16 * v57);
      v48 = (v14 + 16 * v56[0]);
      geom::internal::compute_plane_from_triangle<float>(v48, v16, v17);
      v18 = a1[48];
      v19 = (v18 + 80 * v12);
      v20 = (v18 + 80 * v13);
      v21 = (v18 + 80 * v15);
      v23 = vcvtq_f64_f32(vmul_n_f32(*v22.i8, *v22.i32));
      v24 = vextq_s8(v22, v22, 8uLL).u64[0];
      v25 = vcvtq_f64_f32(vmul_n_f32(v24, *v22.i32));
      v26 = vaddq_f64(v19[1], v25);
      *v19 = vaddq_f64(*v19, v23);
      v19[1] = v26;
      v27 = vaddq_f64(v20[1], v25);
      *v20 = vaddq_f64(*v20, v23);
      v20[1] = v27;
      v28 = vaddq_f64(v21[1], v25);
      *v21 = vaddq_f64(*v21, v23);
      v21[1] = v28;
      *&v25.f64[0] = vext_s8(*v22.i8, v24, 4uLL);
      v29 = vcvtq_f64_f32(vmul_lane_f32(*&v25.f64[0], *v22.i8, 1));
      v30 = vcvtq_f64_f32(vmul_f32(*&v25.f64[0], vrev64_s32(v24)));
      v31 = vaddq_f64(v19[3], v30);
      v19[2] = vaddq_f64(v19[2], v29);
      v19[3] = v31;
      v32 = vaddq_f64(v20[3], v30);
      v20[2] = vaddq_f64(v20[2], v29);
      v20[3] = v32;
      v33 = vaddq_f64(v21[3], v30);
      v21[2] = vaddq_f64(v21[2], v29);
      v21[3] = v33;
      v47 = v22;
      v34 = vcvtq_f64_f32(vmul_laneq_f32(v24, v22, 3));
      v19[4] = vaddq_f64(v19[4], v34);
      v20[4] = vaddq_f64(v20[4], v34);
      v21[4] = vaddq_f64(v21[4], v34);
      if (geom::triangle_mesh_half_edge_connectivity::is_boundary_face((a1 + 4), v10))
      {
        v36 = 0;
        v51 = v47;
        v55[0] = *v48;
        v55[1] = *v16;
        v55[2] = *v17;
        v37 = a1[45];
        v50[0] = (*(v37 + v12) & 0xF) != 0;
        v50[1] = (*(v37 + v13) & 0xF) != 0;
        v50[2] = (*(v37 + v15) & 0xF) != 0;
        do
        {
          v38 = v56[v36];
          v39 = *(__p + v38);
          geom::internal::compute_boundary_penalty_quadric<float>(v36, v50, v55, &v51, v49, v35);
          v40 = (a1[48] + 80 * v38);
          v41 = vaddq_f64(vmulq_n_f64(v49[1], v39), v40[1]);
          v42 = vaddq_f64(vmulq_n_f64(v49[2], v39), v40[2]);
          v43 = vaddq_f64(vmulq_n_f64(v49[3], v39), v40[3]);
          v44 = vmulq_n_f64(v49[4], v39);
          *v40 = vaddq_f64(vmulq_n_f64(v49[0], v39), *v40);
          v40[1] = v41;
          v40[2] = v42;
          v40[3] = v43;
          v40[4] = vaddq_f64(v44, v40[4]);
          ++v36;
        }

        while (v36 != 3);
        v9 = v46;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void geom::internal::triangle_mesh_decimator<float>::initialize_edge_data(uint64_t a1)
{
  v2 = (*(a1 + 224) - *(a1 + 216)) >> 2;
  memset(v33, 0, sizeof(v33));
  *__p = 0u;
  std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::reserve(__p, v2);
  std::vector<unsigned int>::resize((v33 + 8), v2, &geom::indexed_priority_queue<unsigned int,double>::k_invalid_index);
  v3 = *(a1 + 432);
  v4 = *__p;
  v5 = v33[0];
  *__p = v3;
  *&v33[0] = *(a1 + 448);
  v6 = *(a1 + 472);
  v7 = v33[1];
  v8 = *(a1 + 456);
  *(a1 + 432) = v4;
  *(a1 + 448) = v5;
  *(v33 + 8) = v8;
  *(a1 + 464) = v7;
  *(&v33[1] + 1) = v6;
  if (v8)
  {
    *&v33[1] = v8;
    operator delete(v8);
    v9 = __p[0];
    if (!__p[0])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v3;
  if (v3)
  {
LABEL_3:
    __p[1] = v9;
    operator delete(v9);
  }

LABEL_4:
  *(a1 + 416) = *(a1 + 408);
  std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::reserve((a1 + 408), v2);
  if (v2)
  {
    v14 = 0;
    do
    {
      geom::internal::triangle_mesh_decimator<float>::make_edge_cost(a1, v14, __p, INFINITY, v10, v11, v12, v13);
      v15 = *(a1 + 416);
      v16 = *(a1 + 424);
      if (v15 >= v16)
      {
        v19 = *(a1 + 408);
        v20 = (v15 - v19) >> 5;
        v21 = v20 + 1;
        if ((v20 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = v16 - v19;
        if (v22 >> 4 > v21)
        {
          v21 = v22 >> 4;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v23 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>(a1 + 408, v23);
        }

        v24 = (32 * v20);
        v25 = v33[0];
        *v24 = *__p;
        v24[1] = v25;
        v18 = 32 * v20 + 32;
        v26 = *(a1 + 408);
        v27 = *(a1 + 416) - v26;
        v28 = 32 * v20 - v27;
        memcpy(v24 - v27, v26, v27);
        v29 = *(a1 + 408);
        *(a1 + 408) = v28;
        *(a1 + 416) = v18;
        *(a1 + 424) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v17 = v33[0];
        *v15 = *__p;
        v15[1] = v17;
        v18 = (v15 + 2);
      }

      *(a1 + 416) = v18;
      v14 = (v14 + 1);
    }

    while (v2 != v14);
    v30 = 0;
    v31 = 0;
    do
    {
      LODWORD(__p[0]) = v30;
      __p[1] = *(*(a1 + 408) + v31);
      geom::indexed_priority_queue<unsigned int,double>::push_or_change_cost((a1 + 432), __p);
      v31 += 32;
      ++v30;
    }

    while (32 * v2 != v31);
  }
}

void *std::vector<geom::internal::quadric>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<geom::internal::quadric>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::vector<geom::internal::quadric>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<geom::internal::quadric>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 80 * a2;
  }
}

float32x4_t *geom::internal::compute_plane_from_triangle<float>(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *result);
  v4 = vsubq_f32(*a3, *result);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v3)), v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v6 = vmulq_f32(v5, v5);
  v7 = v6.f32[1] + (v6.f32[2] + v6.f32[0]);
  v8 = 0uLL;
  if (v7 > 0.0)
  {
    v9 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
    v10 = v7;
    v11 = vrsqrte_f32(LODWORD(v7));
    v12 = vmul_f32(v11, vrsqrts_f32(LODWORD(v10), vmul_f32(v11, v11)));
    v8 = vmulq_n_f32(v9, vmul_f32(v12, vrsqrts_f32(LODWORD(v10), vmul_f32(v12, v12))).f32[0]);
  }

  v13 = vmulq_f32(v8, *result);
  return result;
}

double geom::internal::compute_boundary_penalty_quadric<float>@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X3>, uint64_t a5@<X8>, int64x2_t a6@<Q7>)
{
  v6.i64[0] = 0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (*(a2 + a1) != 1)
  {
    return *v6.i64;
  }

  if (a1 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 + 1;
  }

  if (v7 == 2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    LOBYTE(v8) = v7 + 1;
  }

  if ((*(a2 + v7) & 1) == 0)
  {
    v8 = v8;
    if (*(a2 + v8) != 1)
    {
      return *v6.i64;
    }

    v6 = *(a3 + 16 * a1);
    v9 = vaddq_f32(v6, *a4);
    v31 = 0uLL;
    v32 = 0.0;
    v24 = 0.0;
    v30 = 0.0;
    v26 = 0.0;
    v28 = 0uLL;
    v29 = 0uLL;
    goto LABEL_15;
  }

  v6 = *(a3 + 16 * a1);
  v9 = vaddq_f32(v6, *a4);
  v10 = vsubq_f32(*(a3 + 16 * v7), v6);
  v11 = vsubq_f32(v9, v6);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v10)), v11, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v13 = vmulq_f32(v12, v12);
  v14 = v13.f32[1] + (v13.f32[2] + v13.f32[0]);
  v15 = 0uLL;
  if (v14 > 0.0)
  {
    v16 = v14;
    v17 = vrsqrte_f32(LODWORD(v14));
    v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
    v15 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]);
  }

  v19 = vmulq_f32(v6, v15);
  v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  v21 = -v20;
  v19.i64[0] = vmulq_f32(v15, v15).u64[0];
  *a6.i64 = v19.f32[0];
  *&v22 = (v20 * v15.f32[0]);
  v23 = v19.f32[1];
  v24 = vmuls_lane_f32(v15.f32[2], v15, 2);
  v25 = vmuls_lane_f32(v20, v15, 2);
  v26 = (v20 * v20);
  *a5 = a6.i64[0];
  v27 = vaddq_f64(vcvtq_f64_f32(vmul_n_f32(*&vextq_s8(v15, v15, 4uLL), v15.f32[0])), 0);
  *(a5 + 8) = v27;
  v28.f64[0] = 0.0 - *&v22;
  v22.i32[0] = vextq_s8(v15, v15, 8uLL).u32[0];
  v22.f32[1] = v21;
  *(a5 + 24) = v28.f64[0];
  *(a5 + 32) = v23;
  v29 = vaddq_f64(vcvtq_f64_f32(vmul_lane_f32(v22, *v15.f32, 1)), 0);
  *(a5 + 40) = v29;
  v30 = 0.0 - v25;
  *(a5 + 56) = v24;
  *(a5 + 64) = 0.0 - v25;
  *(a5 + 72) = v26;
  v8 = v8;
  if (*(a2 + v8))
  {
    v31 = vzip1q_s64(a6, v27);
    v28.f64[1] = v23;
    v32 = *&v27.i64[1];
LABEL_15:
    v33 = vsubq_f32(*(a3 + 16 * v8), v6);
    v34 = vsubq_f32(v9, v6);
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v33)), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v36 = vmulq_f32(v35, v35);
    v37 = v36.f32[1] + (v36.f32[2] + v36.f32[0]);
    v38 = 0uLL;
    if (v37 > 0.0)
    {
      v39 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
      v40 = v37;
      v41 = vrsqrte_f32(LODWORD(v37));
      v42 = vmul_f32(v41, vrsqrts_f32(LODWORD(v40), vmul_f32(v41, v41)));
      v38 = vmulq_n_f32(v39, vmul_f32(v42, vrsqrts_f32(LODWORD(v40), vmul_f32(v42, v42))).f32[0]);
    }

    v6 = vmulq_f32(v6, v38);
    v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
    *a5 = vaddq_f64(v31, vcvtq_f64_f32(vmul_n_f32(*v38.f32, v38.f32[0])));
    v43 = v32 + vmuls_lane_f32(v38.f32[0], v38, 2);
    v44.i32[1] = v38.i32[1];
    v44.f32[0] = -v6.f32[0];
    *(a5 + 16) = v43;
    *(a5 + 24) = vaddq_f64(v28, vcvtq_f64_f32(vmul_f32(*v38.f32, v44)));
    v45.i32[0] = vextq_s8(v38, v38, 8uLL).u32[0];
    v45.f32[1] = -v6.f32[0];
    *(a5 + 40) = vaddq_f64(v29, vcvtq_f64_f32(vmul_lane_f32(v45, *v38.f32, 1)));
    *(a5 + 56) = v24 + vmuls_lane_f32(v38.f32[2], v38, 2);
    *(a5 + 64) = v30 - vmuls_lane_f32(v6.f32[0], v38, 2);
    *v6.i64 = v26 + (v6.f32[0] * v6.f32[0]);
    *(a5 + 72) = v6.i64[0];
  }

  return *v6.i64;
}

void std::vector<geom::internal::quadric>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::quadric>>(a1, v9);
    }

    v11 = 80 * v6;
    v12 = 80 * ((80 * a2 - 80) / 0x50) + 80;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8);
    v15 = v11 + *a1 - v14;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::internal::quadric>,geom::internal::quadric*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

__n128 std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::internal::quadric>,geom::internal::quadric*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 32) = *(a2 + 32);
    *(a4 + 48) = *(a2 + 48);
    result = *(a2 + 64);
    *(a4 + 64) = result;
    a2 += 80;
    a4 += 80;
  }

  return result;
}

void *std::vector<geom::internal::triangle_mesh_decimator<float>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<float>::edge_cost>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::internal::triangle_mesh_decimator<float>::make_edge_cost(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float64x2_t a5@<Q4>, float64x2_t a6@<Q5>, float64x2_t a7@<Q6>, float64x2_t a8@<Q7>)
{
  v36 = *MEMORY[0x277D85DE8];
  *v35 = -1;
  v12 = a1[27];
  if (a2 >= ((a1[28] - v12) >> 2))
  {
    *v35 = -1;
    v14 = 0xFFFFFFFFLL;
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v12 + 4 * a2) / 3u, *(v12 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v35);
    v15 = v35[0];
    v14 = v35[1];
  }

  v16 = a1[1];
  v17 = *(v16 + 16 * v15);
  v18 = vsubq_f32(*(v16 + 16 * v14), v17);
  v19 = vmulq_f32(v18, v18);
  if (fabsf(v19.f32[2] + vaddv_f32(*v19.f32)) <= 1.0e-12)
  {
    v28 = 0.0;
  }

  else
  {
    v20 = a1[48];
    v21 = (v20 + 80 * v15);
    v22 = (v20 + 80 * v14);
    v23 = vaddq_f64(v21[1], v22[1]);
    v30 = vaddq_f64(*v21, *v22);
    v31 = v23;
    v24 = v22[2];
    v25 = v22[3];
    v26 = vaddq_f64(v21[3], v25);
    v32 = vaddq_f64(v21[2], v24);
    v33 = v26;
    v27 = v22[4];
    v34 = vaddq_f64(v21[4], v27);
    geom::internal::triangle_mesh_decimator<float>::make_contracted_position(a1, a2, v30.f64, a4, v27.f64[0], v24.f64[0], v25, a5, a6, a7, a8);
    v28 = v34.f64[1] + v32.f64[0] * v17.f32[1] * v17.f32[1] + v30.f64[0] * v17.f32[0] * v17.f32[0] + v33.f64[1] * v17.f32[2] * v17.f32[2] + (v31.f64[0] * v17.f32[0] * v17.f32[2] + v30.f64[1] * v17.f32[0] * v17.f32[1] + v32.f64[1] * v17.f32[1] * v17.f32[2] + v31.f64[1] * v17.f32[0] + v33.f64[0] * v17.f32[1] + v34.f64[0] * v17.f32[2]) * 2.0;
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }
  }

  *a3 = v28;
  *(a3 + 16) = v17;
  v29 = *MEMORY[0x277D85DE8];
}

void geom::indexed_priority_queue<unsigned int,double>::push_or_change_cost(uint64_t *a1, double *a2)
{
  v4 = *a2;
  v5 = a1[3];
  v6 = *(v5 + 4 * *a2);
  if (v6 == -1)
  {
    v18 = *a1;
    v19 = a1[1];
    v20 = v19 - *a1;
    v21 = v20 >> 4;
    *(v5 + 4 * v4) = v20 >> 4;
    v22 = a1[2];
    if (v19 >= v22)
    {
      if ((v21 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v31 = v22 - v18;
      v32 = v31 >> 3;
      if (v31 >> 3 <= (v21 + 1))
      {
        v32 = v21 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(a1, v33);
      }

      *(16 * v21) = *a2;
      v23 = 16 * v21 + 16;
      v34 = *a1;
      v35 = a1[1];
      v36 = 16 * v21 + *a1 - v35;
      if (*a1 != v35)
      {
        v37 = (16 * v21 + *a1 - v35);
        do
        {
          v38 = *v34++;
          *v37++ = v38;
        }

        while (v34 != v35);
        v34 = *a1;
      }

      *a1 = v36;
      a1[1] = v23;
      a1[2] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v19 = *a2;
      v23 = (v19 + 1);
    }

    a1[1] = v23;
    if (v21)
    {
      v39 = *a1;
      v40 = *(*a1 + (v20 & 0xFFFFFFFF0) + 8);
      do
      {
        v41 = v21 - 1;
        v42 = (v21 - 1) >> 1;
        v43 = (v39 + 16 * v42);
        v44 = v43[1];
        if (v44 <= v40)
        {
          break;
        }

        v45 = (v39 + 16 * v21);
        v46 = *v45;
        *v45 = *v43;
        v45[1] = v44;
        *v43 = v46;
        v47 = a1[3];
        *(v47 + 4 * *v45) = v21;
        v43[1] = v40;
        *(v47 + 4 * *v43) = v42;
        LODWORD(v21) = v41 >> 1;
      }

      while (v41 >= 2);
    }
  }

  else
  {
    v7 = *a1;
    v8 = *a1 + 16 * v6;
    v9 = *(v8 + 8);
    v10 = a2[1];
    if (v9 <= v10)
    {
      *v8 = v4;
      *(v8 + 8) = v10;
      if (v9 < v10)
      {
        v24 = (a1[1] - v7) >> 4;
        while (1)
        {
          v25 = (2 * v6) | 1;
          v26 = (v7 + 16 * v6);
          v27 = v6;
          if (v25 < v24)
          {
            v10 = v26[1];
            if (*(v7 + 16 * v25 + 8) >= v10)
            {
              v27 = v6;
            }

            else
            {
              v27 = (2 * v6) | 1u;
            }
          }

          v28 = 2 * v6 + 2;
          if (v28 < v24 && *(v7 + 16 * v28 + 8) < *(v7 + 16 * v27 + 8))
          {
            v27 = (2 * v6 + 2);
          }

          if (v27 == v6)
          {
            break;
          }

          v29 = (v7 + 16 * v27);
          v30 = *v26;
          *v26 = *v29;
          v26[1] = v29[1];
          *v29 = v30;
          v29[1] = v10;
          *(v5 + 4 * *v26) = v6;
          *(v5 + 4 * *v29) = v27;
          v6 = v27;
        }
      }
    }

    else
    {
      *v8 = v4;
      *(v8 + 8) = v10;
      if (v6)
      {
        do
        {
          v11 = v6 - 1;
          v12 = (v6 - 1) >> 1;
          v13 = (v7 + 16 * v12);
          v14 = v13[1];
          if (v14 <= a2[1])
          {
            break;
          }

          v15 = (v7 + 16 * v6);
          v16 = *v15;
          v17 = *(v15 + 1);
          *v15 = *v13;
          *(v15 + 1) = v14;
          *v13 = v16;
          *(v5 + 4 * *v15) = v6;
          *(v13 + 1) = v17;
          *(v5 + 4 * *v13) = v12;
          LODWORD(v6) = v11 >> 1;
        }

        while (v11 >= 2);
      }
    }
  }
}

void *std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::internal::triangle_mesh_decimator<float>::make_contracted_position(void *a1, uint64_t a2, double *a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, float64x2_t a11)
{
  v46 = *MEMORY[0x277D85DE8];
  v15 = a1[27];
  if (a2 >= ((a1[28] - v15) >> 2))
  {
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    *v45 = -1;
    v19 = 0xFFFFFFFFLL;
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v15 + 4 * a2) / 3u, *(v15 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v45);
    v18 = v45[0];
    v19 = v45[1];
  }

  v20 = a1[1];
  v21 = (v20 + 16 * v18);
  v22 = a1[45];
  v23 = *(v22 + v18);
  v24 = *(v22 + v19);
  if ((v23 & 0x10) != 0 && (v24 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v26 = (v20 + 16 * v19);
  if ((v23 & 0x10) == 0 && (v24 & 0x10) != 0)
  {
    goto LABEL_9;
  }

  v29 = v23 & 0xA;
  v30 = v24 & 0xA;
  if ((v23 & 0xA) != 0 && v30 == 0)
  {
    goto LABEL_6;
  }

  if ((v24 & 0xA) != 0 && v29 == 0)
  {
    goto LABEL_9;
  }

  v33 = v24 & 5;
  v34 = v23 & 5;
  if (v34 && !v33)
  {
LABEL_6:
    v25 = *v21;
    goto LABEL_10;
  }

  if (v33 && !v34)
  {
LABEL_9:
    v27 = *v26;
    goto LABEL_10;
  }

  if (*a1 < 2u)
  {
    if (v29)
    {
      v35 = v30 == 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = v35;
    if (v33)
    {
      v37 = v34 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (!v37 || (v36 & 1) == 0)
    {
      geom::internal::quadric::compute_optimal_position_along_edge<float>(a3, v21, v26, v17.f64[0], a5, a6, a7.f64[0], a8.f64[0], a9, a10, a11);
      goto LABEL_10;
    }

    v17.f64[0] = fabs(a4);
    if (v17.f64[0] <= 1.0e-12)
    {
      geom::internal::triangle_mesh_decimator<float>::optimize_position_for_aspect_ratio(a1, a2);
      goto LABEL_10;
    }

    DWORD2(v44) = 0;
    *&v44 = 0;
    if (geom::internal::quadric::optimal_position<float>(a3, &v44, v17, 1.0e-12, a6, a7, a8, a9.f64[0], a10))
    {
      goto LABEL_10;
    }

    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation(a1, a2, a3);
    v44 = v41;
LABEL_47:
    v42.i64[0] = 0x3F0000003F000000;
    v42.i64[1] = 0x3F0000003F000000;
    v43 = vmulq_f32(vaddq_f32(*v21, *v26), v42).u64[0];
    goto LABEL_10;
  }

  if (*a1 != 2)
  {
    goto LABEL_47;
  }

  v38 = geom::internal::quadric::cost<float>(a3, v21);
  if (v38 >= geom::internal::quadric::cost<float>(a3, v26))
  {
    v39 = v26;
  }

  else
  {
    v39 = v21;
  }

  v40 = *v39;
LABEL_10:
  v28 = *MEMORY[0x277D85DE8];
}

double geom::internal::quadric::cost<float>(double *a1, uint64_t a2)
{
  v2 = COERCE_FLOAT(*a2);
  v3 = COERCE_FLOAT(HIDWORD(*a2));
  v4 = COERCE_FLOAT(*(a2 + 8));
  result = a1[9] + a1[4] * v3 * v3 + *a1 * v2 * v2 + a1[7] * v4 * v4 + (a1[2] * v2 * v4 + a1[1] * v2 * v3 + a1[5] * v3 * v4 + a1[3] * v2 + a1[6] * v3 + a1[8] * v4) * 2.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double geom::internal::quadric::compute_optimal_position_along_edge<float>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9, float64x2_t a10, float64x2_t a11)
{
  v11 = *a2;
  v13 = vsubq_f32(*a3, *a2);
  v12 = vcvtq_f64_f32(*&v13.f64[0]);
  v13.f64[0] = *&v13.f64[1];
  *&v14.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  a9.f64[0] = *(a1 + 16);
  v14.f64[1] = *(a1 + 32);
  a10.f64[0] = *(a1 + 40);
  a11.f64[0] = *(a1 + 56);
  v15 = vmulq_f64(a9, v13);
  a9.f64[1] = a10.f64[0];
  v16 = vaddq_f64(vzip1q_s64(v15, vmulq_f64(a10, v13)), vpaddq_f64(vmulq_f64(*a1, v12), vmulq_f64(v14, v12)));
  v17 = vmulq_f64(v13, a11);
  v17.f64[0] = v17.f64[0] + vaddvq_f64(vmulq_f64(v12, a9));
  v20 = vmulq_f64(v12, v16);
  v18 = -(vmulq_f64(v13, v17).f64[0] + vaddvq_f64(v20));
  *v20.f64 = v18;
  v19 = fabsf(*v20.f64);
  v20.f64[0] = 0.5;
  if (v19 > 0.000001)
  {
    a11.f64[0] = *(a1 + 64);
    v21.f64[0] = *(a1 + 24);
    v21.f64[1] = *(a1 + 48);
    v20.f64[0] = v11.f32[2];
    v22 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v20, v17), vmulq_f64(v13, a11)), vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*v11.f32), v16), vmulq_f64(v12, v21)))) / v18;
    v20.f64[0] = 0.0;
    if (v22 >= 0.0)
    {
      if (v22 <= 1.0)
      {
        v20.f64[0] = v22;
      }

      else
      {
        v20.f64[0] = 1.0;
      }
    }
  }

  v23 = 1.0 - v20.f64[0];
  v24 = v20.f64[0];
  *&result = vmlaq_n_f32(vmulq_n_f32(*a3, v24), *a2, v23).u64[0];
  return result;
}

uint64_t geom::internal::quadric::optimal_position<float>(double *a1, uint64_t a2, float64x2_t a3, double a4, double a5, float64x2_t a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  v13 = *a1 * v12;
  v14 = a1[7];
  v15 = a1[2];
  v16 = v10 * v11 * v15 + v13 * v14 + v10 * v15 * v11 + -(*a1 * v11) * v11 + -(v10 * v10) * v14 + -(v15 * v12) * v15;
  v17 = 0;
  if (v16 > 0.0)
  {
    v18 = 1.0 / v16;
    v19.f64[0] = (v12 * v14 - v11 * v11) * (1.0 / v16);
    v20.f64[0] = (v14 * -v10 + v15 * v11) * v18;
    a3.f64[0] = (v10 * v11 + -v15 * v12) * v18;
    v21 = (v9 * v14 + -v15 * v15) * v18;
    a7.f64[0] = (v10 * v15 - *a1 * v11) * v18;
    a6.f64[0] = (v13 + -v10 * v10) * v18;
    v22 = fabs(v10);
    v23 = fabs(v15);
    v24 = fabs(v9) + v22 + v23;
    v25 = fabs(v11);
    v26 = fabs(v12) + v22 + v25;
    if (v24 < v26)
    {
      v24 = v26;
    }

    v27 = fabs(v14) + v25 + v23;
    if (v24 >= v27)
    {
      v27 = v24;
    }

    v28 = fabs(v20.f64[0]);
    v29 = fabs(a3.f64[0]);
    v30 = v29 + fabs(v19.f64[0]) + v28;
    v31 = fabs(a7.f64[0]);
    v32 = v31 + v28 + fabs(v21);
    if (v30 < v32)
    {
      v30 = v32;
    }

    v33 = fabs(a6.f64[0]) + v29 + v31;
    if (v30 < v33)
    {
      v30 = v33;
    }

    v34 = v27 * v30;
    if (v34 > 0.0 && v34 <= 1000000.0)
    {
      v19.f64[1] = v20.f64[0];
      v20.f64[1] = v21;
      v35.f64[0] = a1[3];
      a9.f64[0] = a1[8];
      v35.f64[1] = a1[6];
      v36 = vmulq_f64(a3, a9);
      a3.f64[1] = a7.f64[0];
      v37 = vaddq_f64(vzip1q_s64(v36, vmulq_f64(a7, a9)), vpaddq_f64(vmulq_f64(v19, v35), vmulq_f64(v20, v35)));
      *v37.f32 = vcvt_f32_f64(v37);
      v38 = vmulq_f64(a6, a9).f64[0] + vaddvq_f64(vmulq_f64(a3, v35));
      *(a2 + 8) = -v38;
      *a2 = vnegq_f32(v37).u64[0];
      return 1;
    }
  }

  return v17;
}

void geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation(void *a1, unsigned int a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 4);
  v7 = a1[1];
  v42[0] = (a1 + 4);
  v42[1] = v7;
  v47 = 0;
  v8 = a2;
  v9 = a1[27];
  if (a2 < ((a1[28] - v9) >> 2))
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v9 + 4 * a2) / 3u, *(v9 + 4 * a2) % 3u);
    if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v6, half_edge_for_face_vertex))
    {
      geom::vertex_placement_constraint_factory<float>::add_boundary_preservation(v42, a2, v44);
      v11 = v47;
      if (v47 > 2u)
      {
        goto LABEL_26;
      }

      v12 = v42[0];
      v13 = *(v42[0] + 23);
      if (v8 >= (*(v42[0] + 24) - v13) >> 2)
      {
        goto LABEL_25;
      }

      v14 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v42[0], *(v13 + 4 * v8) / 3u, *(v13 + 4 * v8) % 3u);
      if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v12, v14))
      {
        goto LABEL_25;
      }

      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v43 = 0uLL;
      v48.i64[0] = &unk_2862910C8;
      v48.i64[1] = &v51;
      v49 = &v43;
      v50 = &v48;
      geom::vertex_placement_constraint_factory<float>::loop_edge_boundaries(v42, a2, &v48);
LABEL_24:
      _ZNSt3__110__function12__value_funcIFvPKDv3_fEED2B8nn200100Ev(&v48);
      geom::vertex_placement_constraints<float>::add_objective_function(v44, &v51, &v43);
LABEL_25:
      v11 = v47;
      goto LABEL_26;
    }
  }

  v48 = 0uLL;
  v43.i32[0] = 0;
  v51.i64[0] = &unk_286291148;
  v51.i64[1] = &v48;
  *&v52 = &v43;
  *(&v52 + 1) = &v51;
  geom::vertex_placement_constraint_factory<float>::loop_edge_triangles(v42, a2, &v51);
  _ZNSt3__110__function12__value_funcIFvPKDv3_fEED2B8nn200100Ev(&v51);
  v15.i32[0] = v43.i32[0];
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v39 = v15.i32[0];
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v15.i32[0] = v39;
  }

  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v40 = v15.i32[0];
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v15.i32[0] = v40;
  }

  v11 = v47;
  if (v47)
  {
    if (v47 == 1)
    {
      v25 = vmulq_f32(*v44, *v44);
      v17 = v48;
      v26 = vmulq_f32(v17, v17);
      *v25.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8)));
      v27 = vmulq_f32(*v44, v48);
      *v26.i32 = vaddv_f32(*v27.f32);
      if (((v27.f32[2] + *v26.i32) * (v27.f32[2] + *v26.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v25.i8, *v25.i8, 1).f32[0]))
      {
        goto LABEL_19;
      }

LABEL_22:
      v48.i32[2] = 0;
      v48.i64[0] = 0;
      v41 = 0;
      geom::internal::quadric::convert_to_quadratic_form<float>(a3, &v51, &v48, &v41, v15);
      v43 = vnegq_f32(v48);
      geom::vertex_placement_constraints<float>::add_objective_function(v44, &v51, &v43);
      v11 = v47;
      if (v47 > 2u)
      {
        goto LABEL_26;
      }

      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v43 = 0uLL;
      v48.i64[0] = &unk_2862911C8;
      v48.i64[1] = &v51;
      v49 = &v43;
      v50 = &v48;
      geom::vertex_placement_constraint_factory<float>::loop_edge_triangles(v42, a2, &v48);
      goto LABEL_24;
    }

    if (v47 != 2)
    {
      goto LABEL_26;
    }

    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), vnegq_f32(*v44)), v45, vextq_s8(vuzp1q_s32(*v44, *v44), *v44, 0xCuLL));
    v17 = v48;
    v18 = vmulq_f32(v48, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
    v19 = vaddv_f32(*v18.f32);
    v20 = (v18.f32[2] + v19) * (v18.f32[2] + v19);
    v21 = vmulq_f32(v16, v16);
    v22 = vmulq_f32(v17, v17);
    v23 = vadd_f32(vzip1_s32(*v22.i8, *&vextq_s8(v21, v21, 8uLL)), vext_s8(*v22.i8, *v21.i8, 4uLL));
    v22.i32[0] = vextq_s8(v22, v22, 8uLL).u32[0];
    v22.i32[1] = v21.i32[1];
    *v21.i8 = vadd_f32(*v22.i8, v23);
    v24 = *&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * vmul_lane_f32(*v21.i8, *v21.i8, 1).f32[0];
  }

  else
  {
    v17 = v48;
    v28 = vmulq_f32(v17, v17);
    v20 = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
    v24 = 0.00001;
  }

  if (v20 <= v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  *&v44[4 * v47] = v17;
  v29 = v47;
  v30 = 2;
  if (v47 < 2uLL)
  {
    v30 = v47;
  }

  *((v44 | (4 * v30)) + 0x30) = v15.i32[0];
  v11 = v29 + 1;
  v47 = v11;
  if (v11 <= 2u)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v11 == 3)
  {
    v31 = vzip1q_s32(*v44, v46);
    v55.columns[0] = vzip1q_s32(v31, v45);
    v55.columns[2] = vzip1q_s32(vzip2q_s32(*v44, v46), vdupq_laneq_s32(v45, 2));
    v55.columns[1] = vzip2q_s32(v31, vdupq_lane_s32(*v45.i8, 1));
    __invert_f3(v55);
  }

  else
  {
    v32 = a1[27];
    if (v8 >= (a1[28] - v32) >> 2)
    {
      v34 = 0xFFFFFFFFLL;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      v33 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v6, *(v32 + 4 * v8) / 3u, *(v32 + 4 * v8) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v6, v33, v44);
      v35 = v44[0];
      v34 = v44[1];
    }

    v36.i64[0] = 0x3F0000003F000000;
    v36.i64[1] = 0x3F0000003F000000;
    v37 = vmulq_f32(vaddq_f32(*(a1[1] + 16 * v35), *(a1[1] + 16 * v34)), v36).u64[0];
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t geom::vertex_placement_constraint_factory<float>::add_shape_optimization(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = *(*a1 + 184);
  v8 = (*(*a1 + 192) - v7) >> 2;
  if (v8 <= a2)
  {
    *v50 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v5, half_edge_for_face_vertex, v50);
    v5 = *a1;
    v7 = *(*a1 + 184);
    v8 = (*(*a1 + 192) - v7) >> 2;
  }

  if (v8 <= v6 || (v10 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, *(v7 + 4 * v6) / 3u, *(v7 + 4 * v6) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v5, v10)))
  {
    half_edge_face = -1;
    goto LABEL_16;
  }

  v11 = *(*(v5 + 23) + 4 * v6);
  v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, v11 / 3, v11 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, v12);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v5, v12))
  {
LABEL_16:
    v18 = -1;
    goto LABEL_17;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(v5, v12);
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, half_edge_twin);
  v16 = 0;
  v17 = *(*a1 + 16) + 4 * (3 * v15);
  v45.i64[0] = *v17;
  v45.i32[2] = *(v17 + 8);
  while (1)
  {
    v18 = v45.i32[v16];
    if (v18 != v50[0] && v18 != v50[1])
    {
      break;
    }

    if (++v16 == 3)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v20 = 0;
  v21 = *a1;
  v22 = *(*a1 + 16) + 4 * (3 * half_edge_face);
  v45.i64[0] = *v22;
  v45.i32[2] = *(v22 + 8);
  while (1)
  {
    v23 = v45.i32[v20];
    if (v23 != v50[0] && v23 != v50[1])
    {
      break;
    }

    if (++v20 == 3)
    {
      v23 = -1;
      break;
    }
  }

  v44 = 0uLL;
  __p = 0;
  v42 = 0;
  v43 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(v21, v50[0], &__p);
  v25 = __p;
  v26 = 0.0;
  v27 = 0uLL;
  if (__p != v42)
  {
    do
    {
      v28 = *v25;
      if (v28 != v50[1])
      {
        v27 = vaddq_f32(*(*(a1 + 8) + 16 * v28), v27);
        v44 = v27;
        v26 = v26 + 1.0;
      }

      ++v25;
    }

    while (v25 != v42);
  }

  v39 = v27;
  v40 = v26;
  geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(*a1, v50[1], &__p);
  v29 = __p;
  if (__p == v42)
  {
    v31 = v40;
  }

  else
  {
    v30 = v39;
    v31 = v40;
    do
    {
      v32 = *v29;
      if (*v29 != v18 && v32 != v23 && v32 != v50[0])
      {
        v30 = vaddq_f32(*(*(a1 + 8) + 16 * v32), v30);
        v44 = v30;
        v31 = v31 + 1.0;
      }

      ++v29;
    }

    while (v29 != v42);
  }

  LODWORD(v35) = 0;
  *(&v35 + 1) = v31;
  v45.i32[2] = 0;
  v45.i64[0] = LODWORD(v31);
  v47 = 0;
  v46 = v35;
  v49 = v31;
  v48 = 0;
  geom::vertex_placement_constraints<float>::add_objective_function(a3, &v45, &v44);
  v36 = *(a3 + 64);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t geom::vertex_placement_constraints<float>::add_objective_function(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *(a1 + 64);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (!*(a1 + 64))
      {
        v4 = a3->i32[0];
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v208 = a1;
          v196 = a2;
          v184 = a3;
          v172 = v4;
          geom::vertex_placement_constraints<float>::add_objective_function();
          v4 = v172;
          a3 = v184;
          a2 = v196;
          a1 = v208;
        }

        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v209 = a1;
          v197 = a2;
          v185 = a3;
          v173 = v4;
          geom::vertex_placement_constraints<float>::add_objective_function();
          v4 = v173;
          a3 = v185;
          a2 = v197;
          a1 = v209;
        }

        v5 = *(a1 + 64);
        if (v5 == 2)
        {
          v99 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
          v6 = *a2;
          v100 = vmulq_f32(*a2, vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL));
          v101 = vaddv_f32(*v100.f32);
          v8 = (v100.f32[2] + v101) * (v100.f32[2] + v101);
          v102 = vmulq_f32(v99, v99);
          v103 = vmulq_f32(v6, v6);
          v104 = vadd_f32(vzip1_s32(*v103.i8, *&vextq_s8(v102, v102, 8uLL)), vext_s8(*v103.i8, *v102.i8, 4uLL));
          v103.i32[0] = vextq_s8(v103, v103, 8uLL).u32[0];
          v103.i32[1] = v102.i32[1];
          *v102.i8 = vadd_f32(*v103.i8, v104);
          v9 = *&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * vmul_lane_f32(*v102.i8, *v102.i8, 1).f32[0];
        }

        else
        {
          if (v5 == 1)
          {
            v90 = vmulq_f32(*a1, *a1);
            v6 = *a2;
            v91 = vmulq_f32(v6, v6);
            *v90.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v90, v90, 8uLL), *&vextq_s8(v91, v91, 8uLL)), vadd_f32(vzip1_s32(*v90.i8, *v91.i8), vzip2_s32(*v90.i8, *v91.i8)));
            v92 = vmulq_f32(*a1, *a2);
            *v91.i32 = vaddv_f32(*v92.f32);
            if (((v92.f32[2] + *v91.i32) * (v92.f32[2] + *v91.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v90.i8, *v90.i8, 1).f32[0]))
            {
LABEL_65:
              *(a1 + 16 * *(a1 + 64)) = v6;
              v105 = *(a1 + 64);
              v106 = 2;
              if (v105 < 2)
              {
                v106 = *(a1 + 64);
              }

              *(a1 + 4 * v106 + 48) = v4;
              *(a1 + 64) = v105 + 1;
              v93 = 1;
LABEL_68:
              v107 = a3->i32[1];
              if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
              {
                v210 = a1;
                v198 = a2;
                v186 = a3;
                v174 = v93;
                v162 = v107;
                geom::vertex_placement_constraints<float>::add_objective_function();
                v107 = v162;
                v93 = v174;
                a3 = v186;
                a2 = v198;
                a1 = v210;
              }

              if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
              {
                v211 = a1;
                v199 = a2;
                v187 = a3;
                v175 = v93;
                v163 = v107;
                geom::vertex_placement_constraints<float>::add_objective_function();
                v107 = v163;
                v93 = v175;
                a3 = v187;
                a2 = v199;
                a1 = v211;
              }

              v108 = *(a1 + 64);
              if (v108 == 2)
              {
                v117 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
                v109 = a2[1];
                v118 = vmulq_f32(v109, vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL));
                v119 = vaddv_f32(*v118.f32);
                v111 = (v118.f32[2] + v119) * (v118.f32[2] + v119);
                v120 = vmulq_f32(v117, v117);
                v121 = vmulq_f32(v109, v109);
                v122 = vadd_f32(vzip1_s32(*v121.i8, *&vextq_s8(v120, v120, 8uLL)), vext_s8(*v121.i8, *v120.i8, 4uLL));
                v121.i32[0] = vextq_s8(v121, v121, 8uLL).u32[0];
                v121.i32[1] = v120.i32[1];
                *v120.i8 = vadd_f32(*v121.i8, v122);
                v112 = *&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * vmul_lane_f32(*v120.i8, *v120.i8, 1).f32[0];
              }

              else
              {
                if (v108 == 1)
                {
                  v113 = vmulq_f32(*a1, *a1);
                  v109 = a2[1];
                  v114 = vmulq_f32(v109, v109);
                  *v113.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v113, v113, 8uLL), *&vextq_s8(v114, v114, 8uLL)), vadd_f32(vzip1_s32(*v113.i8, *v114.i8), vzip2_s32(*v113.i8, *v114.i8)));
                  v115 = vmulq_f32(*a1, v109);
                  *v114.i32 = vaddv_f32(*v115.f32);
                  if (((v115.f32[2] + *v114.i32) * (v115.f32[2] + *v114.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v113.i8, *v113.i8, 1).f32[0]))
                  {
LABEL_80:
                    *(a1 + 16 * *(a1 + 64)) = v109;
                    v123 = *(a1 + 64);
                    v124 = 2;
                    if (v123 < 2)
                    {
                      v124 = *(a1 + 64);
                    }

                    *(a1 + 4 * v124 + 48) = v107;
                    *(a1 + 64) = v123 + 1;
                    v116 = 1;
LABEL_83:
                    v89 = a3->f32[2];
                    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
                    {
                      v212 = a1;
                      v200 = a2;
                      v176 = v93;
                      v188 = v89;
                      v164 = v116;
                      geom::vertex_placement_constraints<float>::add_objective_function();
                      v116 = v164;
                      v89 = v188;
                      v93 = v176;
                      a2 = v200;
                      a1 = v212;
                    }

                    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
                    {
                      v213 = a1;
                      v201 = a2;
                      v177 = v93;
                      v189 = v89;
                      v165 = v116;
                      geom::vertex_placement_constraints<float>::add_objective_function();
                      v116 = v165;
                      v89 = v189;
                      v93 = v177;
                      a2 = v201;
                      a1 = v213;
                    }

                    v58 = v93 | v116;
                    v125 = *(a1 + 64);
                    if (v125 == 2)
                    {
                      v134 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
                      v126 = a2[2];
                      v135 = vmulq_f32(v126, vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL));
                      v136 = vaddv_f32(*v135.f32);
                      v128 = (v135.f32[2] + v136) * (v135.f32[2] + v136);
                      v137 = vmulq_f32(v134, v134);
                      v138 = vmulq_f32(v126, v126);
                      v139 = vadd_f32(vzip1_s32(*v138.i8, *&vextq_s8(v137, v137, 8uLL)), vext_s8(*v138.i8, *v137.i8, 4uLL));
                      v138.i32[0] = vextq_s8(v138, v138, 8uLL).u32[0];
                      v138.i32[1] = v137.i32[1];
                      *v137.i8 = vadd_f32(*v138.i8, v139);
                      v129 = *&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * vmul_lane_f32(*v137.i8, *v137.i8, 1).f32[0];
                    }

                    else
                    {
                      if (v125 == 1)
                      {
                        v130 = vmulq_f32(*a1, *a1);
                        v126 = a2[2];
                        v131 = vmulq_f32(v126, v126);
                        *v130.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v130, v130, 8uLL), *&vextq_s8(v131, v131, 8uLL)), vadd_f32(vzip1_s32(*v130.i8, *v131.i8), vzip2_s32(*v130.i8, *v131.i8)));
                        v132 = vmulq_f32(*a1, v126);
                        *v131.i32 = vaddv_f32(*v132.f32);
                        if (((v132.f32[2] + *v131.i32) * (v132.f32[2] + *v131.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v130.i8, *v130.i8, 1).f32[0]))
                        {
LABEL_95:
                          *(a1 + 16 * *(a1 + 64)) = v126;
                          goto LABEL_96;
                        }

LABEL_92:
                        v133 = 0;
                        return v58 | v133;
                      }

                      if (*(a1 + 64))
                      {
                        goto LABEL_92;
                      }

                      v126 = a2[2];
                      v127 = vmulq_f32(v126, v126);
                      v128 = sqrtf(v127.f32[2] + vaddv_f32(*v127.f32));
                      v129 = 0.00001;
                    }

                    if (v128 > v129)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_92;
                  }

LABEL_77:
                  v116 = 0;
                  goto LABEL_83;
                }

                if (*(a1 + 64))
                {
                  goto LABEL_77;
                }

                v109 = a2[1];
                v110 = vmulq_f32(v109, v109);
                v111 = sqrtf(v110.f32[2] + vaddv_f32(*v110.f32));
                v112 = 0.00001;
              }

              if (v111 > v112)
              {
                goto LABEL_80;
              }

              goto LABEL_77;
            }

LABEL_60:
            v93 = 0;
            goto LABEL_68;
          }

          if (*(a1 + 64))
          {
            goto LABEL_60;
          }

          v6 = *a2;
          v7 = vmulq_f32(v6, v6);
          v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
          v9 = 0.00001;
        }

        if (v8 > v9)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      return 0;
    }

    v10 = *a1;
    v11 = COERCE_FLOAT(*(a1 + 8));
    v12 = fabsf(v11);
    LODWORD(v13) = HIDWORD(*a1);
    v14 = -v11;
    if (v12 <= 0.00000011921)
    {
      v15 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v13), v10);
    }

    else
    {
      v15.i32[0] = 0;
      v15.f32[1] = v14;
      v15.i64[1] = v10.u32[1];
    }

    v29 = vmulq_f32(v15, v15);
    *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
    *v29.f32 = vrsqrte_f32(v30);
    *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
    v31 = vmulq_n_f32(v15, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
    if (v12 <= 0.00000011921)
    {
      v32 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v13), v10);
    }

    else
    {
      v32.i32[0] = 0;
      v32.f32[1] = v14;
      v32.i64[1] = v10.u32[1];
    }

    v33 = vmulq_f32(v32, v32);
    v34 = vaddv_f32(*v33.f32);
    *v33.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34));
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32)));
    v35 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32))).f32[0]);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v10)), v35, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
    v37 = vuzp1q_s32(v36, v36);
    v38 = vmulq_f32(v36, v36);
    *&v39 = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
    *v38.f32 = vrsqrte_f32(v39);
    *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
    LODWORD(v40) = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).u32[0];
    v41 = a2[1];
    v42 = a2[2];
    v43 = vmulq_n_f32(*a2, v31.f32[0]);
    v44 = *a3;
    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
    {
      v202 = a1;
      v190 = a2;
      v178 = a3;
      v156 = v43;
      v166 = v31;
      v148 = v40;
      v151 = v44;
      v143 = v37;
      v144 = v36;
      v146 = v42;
      v142 = v41;
      geom::vertex_placement_constraints<float>::add_objective_function();
      v41 = v142;
      v37 = v143;
      v42 = v146;
      v40 = v148;
      v36 = v144;
      v44 = v151;
      v43 = v156;
      v31 = v166;
      a3 = v178;
      a2 = v190;
      a1 = v202;
    }

    v45 = vmlaq_lane_f32(v43, v41, *v31.f32, 1);
    v46 = vextq_s8(v37, v36, 0xCuLL);
    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
    {
      v203 = a1;
      v191 = a2;
      v179 = a3;
      v157 = v45;
      v167 = v31;
      v149 = v40;
      v152 = v44;
      v145 = v46;
      v147 = v42;
      geom::vertex_placement_constraints<float>::add_objective_function();
      v46 = v145;
      v42 = v147;
      v40 = v149;
      v44 = v152;
      v45 = v157;
      v31 = v167;
      a3 = v179;
      a2 = v191;
      a1 = v203;
    }

    v47 = vmlaq_laneq_f32(v45, v42, v31, 2);
    v48 = vmulq_n_f32(v46, v40);
    v49 = *(a1 + 64);
    if (v49 == 2)
    {
      v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
      v68 = vmulq_f32(v47, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
      v69 = vaddv_f32(*v68.f32);
      v68.f32[0] = (v68.f32[2] + v69) * (v68.f32[2] + v69);
      v70 = vmulq_f32(v67, v67);
      v71 = vmulq_f32(v47, v47);
      if (v68.f32[0] > (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * ((v71.f32[2] + vaddv_f32(*v71.f32)) * (v70.f32[1] + (v70.f32[2] + v70.f32[0])))))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v49 != 1)
      {
        if (*(a1 + 64))
        {
          goto LABEL_45;
        }

        v50 = vmulq_f32(v47, v47);
        if (sqrtf(v50.f32[2] + vaddv_f32(*v50.f32)) <= 0.00001)
        {
          goto LABEL_45;
        }

LABEL_37:
        v54 = vmulq_f32(v31, v44);
        v55 = vaddv_f32(*v54.f32);
        *(a1 + 16 * *(a1 + 64)) = v47;
        v56 = *(a1 + 64);
        v57 = 2;
        if (v56 < 2)
        {
          v57 = *(a1 + 64);
        }

        *(a1 + 4 * v57 + 48) = v54.f32[2] + v55;
        *(a1 + 64) = v56 + 1;
        v58 = 1;
LABEL_46:
        v72 = a2[1];
        v73 = a2[2];
        v74 = vmulq_n_f32(*a2, v48.f32[0]);
        v75 = *a3;
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v204 = a1;
          v192 = v58;
          v168 = v74;
          v180 = v48;
          v158 = v75;
          v150 = v72;
          v153 = v73;
          geom::vertex_placement_constraints<float>::add_objective_function();
          v72 = v150;
          v73 = v153;
          v75 = v158;
          v74 = v168;
          v48 = v180;
          v58 = v192;
          a1 = v204;
        }

        v76 = vmlaq_lane_f32(v74, v72, *v48.f32, 1);
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v205 = a1;
          v193 = v58;
          v169 = v76;
          v181 = v48;
          v159 = v75;
          v154 = v73;
          geom::vertex_placement_constraints<float>::add_objective_function();
          v73 = v154;
          v75 = v159;
          v76 = v169;
          v48 = v181;
          v58 = v193;
          a1 = v205;
        }

        v77 = vmlaq_laneq_f32(v76, v73, v48, 2);
        v78 = *(a1 + 64);
        if (v78 == 2)
        {
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
          v84 = vmulq_f32(v77, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
          v85 = vaddv_f32(*v84.f32);
          v84.f32[0] = (v84.f32[2] + v85) * (v84.f32[2] + v85);
          v86 = vmulq_f32(v83, v83);
          v87 = vmulq_f32(v77, v77);
          if (v84.f32[0] <= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * ((v87.f32[2] + vaddv_f32(*v87.f32)) * (v86.f32[1] + (v86.f32[2] + v86.f32[0])))))
          {
            goto LABEL_92;
          }
        }

        else if (v78 == 1)
        {
          v80 = vmulq_f32(*a1, *a1);
          v81 = vmulq_f32(v77, v77);
          *v80.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v81, v81, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v81.i8, *v80.i8), vzip2_s32(*v81.i8, *v80.i8)));
          v82 = vmulq_f32(v77, *a1);
          *v81.i32 = vaddv_f32(*v82.f32);
          if (((v82.f32[2] + *v81.i32) * (v82.f32[2] + *v81.i32)) >= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v80.i8, *v80.i8, 1).f32[0]))
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (*(a1 + 64))
          {
            goto LABEL_92;
          }

          v79 = vmulq_f32(v77, v77);
          if (sqrtf(v79.f32[2] + vaddv_f32(*v79.f32)) <= 0.00001)
          {
            goto LABEL_92;
          }
        }

        v88 = vmulq_f32(v48, v75);
        v89 = v88.f32[2] + vaddv_f32(*v88.f32);
        *(a1 + 16 * *(a1 + 64)) = v77;
LABEL_96:
        v140 = *(a1 + 64);
        v141 = 2;
        if (v140 < 2)
        {
          v141 = *(a1 + 64);
        }

        *(a1 + 4 * v141 + 48) = v89;
        *(a1 + 64) = v140 + 1;
        v133 = 1;
        return v58 | v133;
      }

      v51 = vmulq_f32(*a1, *a1);
      v52 = vmulq_f32(v47, v47);
      *v51.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v51, v51, 8uLL)), vadd_f32(vzip1_s32(*v52.i8, *v51.i8), vzip2_s32(*v52.i8, *v51.i8)));
      v53 = vmulq_f32(v47, *a1);
      *v52.i32 = vaddv_f32(*v53.f32);
      if (((v53.f32[2] + *v52.i32) * (v53.f32[2] + *v52.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v51.i8, *v51.i8, 1).f32[0]))
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    v58 = 0;
    goto LABEL_46;
  }

  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmulq_f32(v16, v16);
  *&v19 = v18.f32[1] + (v18.f32[2] + v18.f32[0]);
  *v18.f32 = vrsqrte_f32(v19);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
  v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  v21 = a2[1];
  v22 = a2[2];
  v23 = vmulq_n_f32(*a2, v20.f32[0]);
  v24 = *a3;
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v206 = a1;
    v182 = v20;
    v194 = v23;
    v160 = v22;
    v170 = v24;
    v155 = v21;
    geom::vertex_placement_constraints<float>::add_objective_function();
    v21 = v155;
    v22 = v160;
    v24 = v170;
    v20 = v182;
    v23 = v194;
    a1 = v206;
  }

  v25 = vmlaq_lane_f32(v23, v21, *v20.f32, 1);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v207 = a1;
    v183 = v20;
    v195 = v25;
    v161 = v22;
    v171 = v24;
    geom::vertex_placement_constraints<float>::add_objective_function();
    v22 = v161;
    v24 = v171;
    v20 = v183;
    v25 = v195;
    a1 = v207;
  }

  v26 = vmlaq_laneq_f32(v25, v22, v20, 2);
  v27 = *(a1 + 64);
  if (v27 == 2)
  {
    v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 16), *(a1 + 16)), *(a1 + 16), 0xCuLL), vnegq_f32(*a1)), *(a1 + 16), vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL));
    v95 = vmulq_f32(v26, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
    v96 = vaddv_f32(*v95.f32);
    v95.f32[0] = (v95.f32[2] + v96) * (v95.f32[2] + v96);
    v97 = vmulq_f32(v94, v94);
    v98 = vmulq_f32(v26, v26);
    if (v95.f32[0] <= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * ((v98.f32[2] + vaddv_f32(*v98.f32)) * (v97.f32[1] + (v97.f32[2] + v97.f32[0])))))
    {
      return 0;
    }
  }

  else if (v27 == 1)
  {
    v59 = vmulq_f32(*a1, *a1);
    v60 = vmulq_f32(v26, v26);
    *v59.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v59.i8), vzip2_s32(*v60.i8, *v59.i8)));
    v61 = vmulq_f32(v26, *a1);
    *v60.i32 = vaddv_f32(*v61.f32);
    if (((v61.f32[2] + *v60.i32) * (v61.f32[2] + *v60.i32)) >= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v59.i8, *v59.i8, 1).f32[0]))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64))
    {
      return 0;
    }

    v28 = vmulq_f32(v26, v26);
    if (sqrtf(v28.f32[2] + vaddv_f32(*v28.f32)) <= 0.00001)
    {
      return 0;
    }
  }

  v62 = vmulq_f32(v20, v24);
  v63 = v62.f32[2] + vaddv_f32(*v62.f32);
  *(a1 + 16 * *(a1 + 64)) = v26;
  v64 = *(a1 + 64);
  v65 = 2;
  if (v64 < 2)
  {
    v65 = *(a1 + 64);
  }

  *(a1 + 4 * v65 + 48) = v63;
  *(a1 + 64) = v64 + 1;
  return 1;
}

uint64_t geom::vertex_placement_constraint_factory<float>::add_boundary_preservation(geom::triangle_mesh_half_edge_connectivity **a1, unsigned int a2, uint64_t a3)
{
  v58[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 23);
  if (a2 >= ((*(*a1 + 24) - v5) >> 2) || (half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v5 + 4 * a2) / 3u, *(v5 + 4 * a2) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v4, half_edge_for_face_vertex)))
  {
    LOBYTE(v18) = *(a3 + 64);
    goto LABEL_13;
  }

  v57 = 0uLL;
  v56 = 0uLL;
  v58[0] = &unk_286291038;
  v58[1] = &v57;
  v58[2] = &v56;
  v58[3] = v58;
  geom::vertex_placement_constraint_factory<float>::loop_edge_boundaries(a1, a2, v58);
  _ZNSt3__110__function12__value_funcIFvPKDv3_fEED2B8nn200100Ev(v58);
  v9 = v57;
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v57)), v56, vextq_s8(vuzp1q_s32(v9, v9), v57, 0xCuLL));
  v11 = vuzp1q_s32(v10, v10);
  v12 = vmulq_f32(v9, v9);
  v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v49 = v13;
    v52 = v10;
    v47 = v11;
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v11 = v47;
    v13 = v49;
    v10 = v52;
  }

  v14 = vextq_s8(v11, v10, 0xCuLL);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v48 = v14;
    v50 = v13;
    v53 = v10;
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v13 = v50;
    v10 = v53;
    v14 = v48;
  }

  v15 = vmulq_n_f32(v14, v13);
  v16 = *(a3 + 64);
  if (v16 == 2)
  {
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a3 + 16), *(a3 + 16)), *(a3 + 16), 0xCuLL), vnegq_f32(*a3)), *(a3 + 16), vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL));
    v38 = vmulq_f32(v15, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
    v39 = vaddv_f32(*v38.f32);
    v38.f32[0] = (v38.f32[2] + v39) * (v38.f32[2] + v39);
    v40 = vmulq_f32(v37, v37);
    v41 = vmulq_f32(v15, v15);
    if (v38.f32[0] > (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * ((v41.f32[2] + vaddv_f32(*v41.f32)) * (v40.f32[1] + (v40.f32[2] + v40.f32[0])))))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v16 != 1)
    {
      if (*(a3 + 64))
      {
        goto LABEL_18;
      }

      v17 = vmulq_f32(v15, v15);
      if (sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) <= 0.00001)
      {
        goto LABEL_18;
      }

LABEL_15:
      v24 = vmulq_f32(v10, v10);
      v25 = -(v24.f32[1] + (v24.f32[2] + v24.f32[0]));
      *(a3 + 16 * *(a3 + 64)) = v15;
      v26 = *(a3 + 64);
      v27 = 2;
      if (v26 < 2)
      {
        v27 = *(a3 + 64);
      }

      *(a3 + 4 * v27 + 48) = v25;
      *(a3 + 64) = v26 + 1;
      goto LABEL_18;
    }

    v21 = vmulq_f32(*a3, *a3);
    v22 = vmulq_f32(v15, v15);
    *v21.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v22.i8, *v21.i8), vzip2_s32(*v22.i8, *v21.i8)));
    v23 = vmulq_f32(v15, *a3);
    *v22.i32 = vaddv_f32(*v23.f32);
    if (((v23.f32[2] + *v22.i32) * (v23.f32[2] + *v22.i32)) < (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v21.i8, *v21.i8, 1).f32[0]))
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v57)), v14, vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL));
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v54 = v28;
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v28 = v54;
  }

  v29 = vuzp1q_s32(v28, v28);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v51 = v29;
    v55 = v28;
    geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation();
    v29 = v51;
    v28 = v55;
  }

  v30 = vextq_s8(v29, v28, 0xCuLL);
  v18 = *(a3 + 64);
  if (v18 == 2)
  {
    v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a3 + 16), *(a3 + 16)), *(a3 + 16), 0xCuLL), vnegq_f32(*a3)), *(a3 + 16), vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL));
    v43 = vmulq_f32(v28, v42);
    v44 = vmulq_f32(v42, v42);
    v45 = vmulq_f32(v28, v28);
    if (((v43.f32[1] + (v43.f32[2] + v43.f32[0])) * (v43.f32[1] + (v43.f32[2] + v43.f32[0]))) <= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared * ((v45.f32[1] + (v45.f32[2] + v45.f32[0])) * (v44.f32[1] + (v44.f32[2] + v44.f32[0])))))
    {
      LOBYTE(v18) = 2;
      goto LABEL_13;
    }
  }

  else if (v18 == 1)
  {
    v32 = vmulq_f32(*a3, *a3);
    v33 = vmulq_f32(v28, v28);
    v34 = vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *v32.i8);
    v35 = vext_s8(*v33.i8, *&vextq_s8(v32, v32, 8uLL), 4uLL);
    v33.i32[1] = v32.i32[1];
    *v32.i8 = vadd_f32(v35, vadd_f32(v34, *v33.i8));
    v36 = vmulq_f32(v30, *a3);
    *v33.i32 = vaddv_f32(*v36.f32);
    if (((v36.f32[2] + *v33.i32) * (v36.f32[2] + *v33.i32)) >= (*&_ZZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared * vmul_lane_f32(*v32.i8, *v32.i8, 1).f32[0]))
    {
      LOBYTE(v18) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a3 + 64))
    {
      goto LABEL_13;
    }

    v31 = vmulq_f32(v28, v28);
    if (sqrtf(v31.f32[1] + (v31.f32[2] + v31.f32[0])) <= 0.00001)
    {
      LOBYTE(v18) = 0;
      goto LABEL_13;
    }
  }

  *(a3 + 16 * v18) = v30;
  v18 = *(a3 + 64);
  v46 = 2;
  if (v18 < 2)
  {
    v46 = *(a3 + 64);
  }

  *(a3 + 4 * v46 + 48) = 0;
  LOBYTE(v18) = v18 + 1;
  *(a3 + 64) = v18;
LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

float geom::internal::quadric::convert_to_quadratic_form<float>(uint64_t a1, uint64_t a2, float64x2_t *a3, float *a4, int32x4_t a5)
{
  a5.i64[0] = *a1;
  v5.f64[0] = *(a1 + 8);
  *a5.i32 = *a1;
  v6.f64[0] = *(a1 + 16);
  v5.f64[1] = *(a1 + 32);
  *&v5.f64[0] = vcvt_f32_f64(v5);
  v6.f64[1] = *(a1 + 40);
  *&v6.f64[0] = vcvt_f32_f64(v6);
  v7 = *(a1 + 56);
  *(a2 + 8) = LODWORD(v6.f64[0]);
  *(a2 + 24) = HIDWORD(v6.f64[0]);
  HIDWORD(v6.f64[0]) = vdup_lane_s32(*&v6.f64[0], 1).u32[0];
  *a2 = vzip1q_s32(a5, v5).u64[0];
  *(a2 + 16) = v5.f64[0];
  *(a2 + 40) = v7;
  *(a2 + 32) = v6.f64[0];
  v8.f64[0] = *(a1 + 24);
  v8.f64[1] = *(a1 + 48);
  *&v8.f64[0] = vcvt_f32_f64(v8);
  *v5.f64 = *(a1 + 64);
  LODWORD(v8.f64[1]) = LODWORD(v5.f64[0]);
  *a3 = v8;
  result = *(a1 + 72);
  *a4 = result;
  return result;
}

void geom::vertex_placement_constraint_factory<float>::loop_edge_boundaries(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 184);
  if (a2 >= ((*(*a1 + 192) - v7) >> 2))
  {
    *v31 = -1;
    v9 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v6, half_edge_for_face_vertex, v31);
    v6 = *a1;
    v9 = v31[0];
  }

  __p = 0;
  v28 = 0;
  v29 = 0;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(v6, v9, &__p);
  v10 = __p;
  if (*__p == a2)
  {
    v10 = v28 - 4;
  }

  v11 = *v10;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(*a1, v31[1], &__p);
  v12 = __p;
  if (*__p == a2)
  {
    v12 = v28 - 4;
  }

  v13 = *v12;
  v14 = v31[0];
  v15 = v31[1];
  v30[9] = v31[0];
  v30[10] = v31[1];
  v26 = -1;
  v16 = 1;
  v17 = 0xFFFFFFFFLL;
  do
  {
    v18 = v16;
    v19 = *a1;
    v20 = *(*a1 + 184);
    if (v11 >= (*(*a1 + 192) - v20) >> 2)
    {
      *v31 = -1;
      v22 = -1;
    }

    else
    {
      v21 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v20 + 4 * v11) / 3u, *(v20 + 4 * v11) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v19, v21, v31);
      v22 = v31[0];
    }

    if (v22 == v14 || v31[1] == v14)
    {
      v17 = *(v31 | (4 * (v22 == v14)));
    }

    else if (v22 == v15 || v31[1] == v15)
    {
      v26 = *(v31 | (4 * (v22 == v15)));
    }

    v16 = 0;
    v11 = v13;
  }

  while ((v18 & 1) != 0);
  v30[11] = v26;
  for (i = 1; i != 4; ++i)
  {
    v24 = *(a1 + 8);
    *v30 = *(v24 + 16 * v17);
    v17 = v30[i + 8];
    *&v30[4] = *(v24 + 16 * v17);
    _ZNKSt3__18functionIFvPKDv3_fEEclES3_(a3, v30);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(geom::triangle_mesh_half_edge_connectivity *a1, unsigned int a2, uint64_t a3)
{
  geom::triangle_mesh_half_edge_connectivity::get_incident_outgoing_half_edges_to_vertex(a1, a2, a3);
  v5 = *(a3 + 8);
  if (v5 != *a3)
  {
    is_boundary_half_edge = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a1, **a3);
    v5 = *(a3 + 8);
    if (is_boundary_half_edge)
    {
      face_and_face_vertex_for_half_edge = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(a1, *(v5 - 4));
      v8 = BYTE4(face_and_face_vertex_for_half_edge) - 1;
      if ((face_and_face_vertex_for_half_edge & 0xFF00000000) == 0)
      {
        v8 = 2;
      }

      half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a1, face_and_face_vertex_for_half_edge, v8);
      std::vector<unsigned int>::push_back[abi:nn200100](a3, &half_edge_for_face_vertex);
      v5 = *(a3 + 8);
    }
  }

  v9 = *a3;
  v10 = v5 - *a3;
  if (v10)
  {
    v11 = 0;
    v12 = v10 >> 2;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    do
    {
      v14 = v9[v11];
      if (v14 == -1)
      {
        v16 = 0xFFFFFFFFLL;
      }

      else
      {
        v15 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(a1, v14);
        v16 = 3 * v15 + BYTE4(v15);
        v9 = *a3;
      }

      v9[v11++] = *(*(a1 + 20) + 4 * v16);
    }

    while (v13 != v11);
  }
}

uint64_t _ZNKSt3__18functionIFvPKDv3_fEEclES3_(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x24FFE5A5CLL);
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float32x4_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float32x4_t **a2)
{
  v2 = *a2;
  **(a1 + 8) = vaddq_f32(vsubq_f32((*a2)[1], **a2), **(a1 + 8));
  v3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v2, *v2), *v2, 0xCuLL), vnegq_f32(v2[1])), *v2, vextq_s8(vuzp1q_s32(v2[1], v2[1]), v2[1], 0xCuLL));
  v4 = *(a1 + 16);
  result = vaddq_f32(*v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  *v4 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_preservationEjRNS_28vertex_placement_constraintsIfEEEUlPKDv3_fE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function12__value_funcIFvPKDv3_fEED2B8nn200100Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862910C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float32x4_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float32x4_t **a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  _Q2 = **a2;
  v9 = (*a2)[1];
  _Q0 = vsubq_f32(v9, _Q2);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), vnegq_f32(v9)), _Q2, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  _Q2.i32[0] = _Q0.i32[1];
  __asm { FMLA            S3, S2, V0.S[1] }

  *a8.f32 = vneg_f32(*_Q0.f32);
  a9.f32[0] = vmuls_lane_f32(a8.f32[0], *_Q0.f32, 1);
  *a8.f32 = vmul_laneq_f32(*a8.f32, _Q0, 2);
  _Q3.i32[1] = a9.i32[0];
  _Q3.i64[1] = a8.i64[0];
  a9.f32[1] = COERCE_FLOAT(vmulq_f32(_Q0, _Q0).i32[2]) + (_Q0.f32[0] * _Q0.f32[0]);
  a9.i32[2] = a8.i32[1];
  a8.f32[2] = vmuls_lane_f32(_Q0.f32[1], *_Q0.f32, 1) + (_Q0.f32[0] * _Q0.f32[0]);
  v19 = *(a1 + 8);
  v20 = vaddq_f32(*v19, _Q3);
  v21 = vaddq_f32(v19[1], a9);
  v22 = vaddq_f32(v19[2], a8);
  v19->i32[2] = v20.i32[2];
  v19->i64[0] = v20.i64[0];
  v19[1].i32[2] = v21.i32[2];
  v19[1].i64[0] = v21.i64[0];
  v19[2].i32[2] = v22.i32[2];
  v19[2].i64[0] = v22.i64[0];
  v23 = *(a1 + 16);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(_Q0)), v13, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  result = vsubq_f32(*v23, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
  *v23 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIfE25add_boundary_optimizationEjRNS_28vertex_placement_constraintsIfEEEUlPKDv3_fE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void geom::vertex_placement_constraint_factory<float>::loop_edge_triangles(geom::triangle_mesh_half_edge_connectivity **a1, unsigned int a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = *(*a1 + 23);
  v8 = (*(*a1 + 24) - v7) >> 2;
  if (v8 <= a2)
  {
    *v40 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v5, half_edge_for_face_vertex, v40);
    v5 = *a1;
    v7 = *(*a1 + 23);
    v8 = (*(*a1 + 24) - v7) >> 2;
  }

  if (v8 <= v6 || (v10 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, *(v7 + 4 * v6) / 3u, *(v7 + 4 * v6) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v5, v10)))
  {
    half_edge_face = -1;
    goto LABEL_9;
  }

  v11 = *(*(v5 + 23) + 4 * v6);
  v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, v11 / 3, v11 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, v12);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v5, v12))
  {
LABEL_9:
    v15 = -1;
    goto LABEL_10;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(v5, v12);
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, half_edge_twin);
LABEL_10:
  v34 = 0;
  v35 = 0;
  v36 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v40[0], &v34);
  v16 = v34;
  v17 = v35;
  while (v16 != v17)
  {
    v18 = *v16++;
    v19 = a1[1];
    v20 = (*(*a1 + 2) + 4 * (3 * v18));
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v37 = *(v19 + v21);
    v38 = *(v19 + v22);
    v39 = *(v19 + v23);
    _ZNKSt3__18functionIFvPKDv3_fEEclES3_(a3, &v37);
  }

  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v40[1], &v34);
  v24 = v34;
  v25 = v35;
  if (v34 != v35)
  {
    do
    {
      v26 = *v24;
      if (*v24 != half_edge_face && v26 != v15)
      {
        v28 = a1[1];
        v29 = (*(*a1 + 2) + 4 * (3 * v26));
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v37 = *(v28 + v30);
        v38 = *(v28 + v31);
        v39 = *(v28 + v32);
        _ZNKSt3__18functionIFvPKDv3_fEEclES3_(a3, &v37);
      }

      ++v24;
    }

    while (v24 != v25);
    v24 = v34;
  }

  if (v24)
  {
    v35 = v24;
    operator delete(v24);
  }

  v33 = *MEMORY[0x277D85DE8];
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291148;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float32x4_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = (*a2)[1];
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vmlaq_f32(vmulq_f32(v6, vnegq_f32(v3)), v4, v5);
  v8 = (*a2)[2];
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vaddq_f32(vmlaq_f32(vmulq_f32(v5, vnegq_f32(v8)), v3, v9), vaddq_f32(v7, vmlaq_f32(vmulq_f32(v9, vnegq_f32(v4)), v8, v6)));
  **(a1 + 8) = vaddq_f32(**(a1 + 8), vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v11 = vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v2[2]);
  v12 = *(a1 + 16);
  result = *v12 + (v11.f32[2] + vaddv_f32(*v11.f32));
  *v12 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_preservationEjRNS_28vertex_placement_constraintsIfEEEUlPKDv3_fE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862911C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float32x4_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = vsubq_f32((*a2)[1], v3);
  v5 = vsubq_f32((*a2)[2], v3);
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(v4)), v5, v6);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v6.f32[0] = vmuls_lane_f32(v8.f32[2], v8, 2);
  v7.f32[0] = vmuls_lane_f32(v8.f32[0], v8, 2);
  v6.i32[1] = v7.i32[0];
  v10 = vmulq_f32(v8, v8).u64[0];
  *v8.f32 = vmul_f32(*v8.f32, *&vextq_s8(v8, v8, 4uLL));
  v6.i32[2] = v8.i32[1];
  **(a1 + 8) = vaddq_f32(**(a1 + 8), v6);
  *v6.f32 = vzip1_s32(*v7.f32, v10);
  v6.i64[1] = v8.i64[0];
  *(*(a1 + 8) + 16) = vaddq_f32(*(*(a1 + 8) + 16), v6);
  *v8.f32 = vrev64_s32(*v8.f32);
  v8.i32[2] = v10.i32[1];
  *(*(a1 + 8) + 32) = vaddq_f32(*(*(a1 + 8) + 32), v8);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v2[1], v2[1]), v2[1], 0xCuLL), vnegq_f32(*v2)), v2[1], vextq_s8(vuzp1q_s32(*v2, *v2), *v2, 0xCuLL));
  v12 = vmulq_f32(v2[2], vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  result = v12.f32[2] + vaddv_f32(*v12.f32);
  **(a1 + 16) = vmlaq_n_f32(**(a1 + 16), v9, result);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIfEEEUlPKDv3_fE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIfE23add_volume_optimizationEjRNS_28vertex_placement_constraintsIfEEEUlPKDv3_fE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::__append(a1, a2 - v2);
  }
}

void std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = -1;
        *(v4 + 8) = 0x7FF0000000000000;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(a1, v10);
    }

    v12 = 16 * v8 + 16 * a2;
    v13 = 16 * v8;
    do
    {
      *v13 = -1;
      *(v13 + 8) = 0x7FF0000000000000;
      v13 += 16;
    }

    while (v13 != v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 16 * v8 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = (16 * v8 + *a1 - v15);
      do
      {
        v18 = *v14++;
        *v17++ = v18;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v12;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

BOOL geom::internal::triangle_mesh_decimator<float>::is_edge_collapse_geometrically_safe(void *a1, unsigned int a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a1[51];
  v6 = a1[27];
  if (a2 >= ((a1[28] - v6) >> 2))
  {
    *v78 = -1;
    v9 = -1;
    v8 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v6 + 4 * a2) / 3u, *(v6 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v78);
    v8 = v78[0];
    v9 = v78[1];
  }

  v10 = (v5 + 32 * v4);
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v8, (a1 + 63));
  v11 = a1[63];
  v12 = a1[64];
  if (v11 != v12)
  {
    v13 = a1[1];
    v14 = a1[6];
    v15 = v10[1];
    do
    {
      v16 = (v14 + 4 * (3 * *v11));
      v17 = *v16;
      *v79 = *v16;
      *&v79[4] = *(v16 + 1);
      v18 = *&v79[4] == v8 ? 1 : 2;
      v19 = v17 == v8 ? 0 : v18;
      v20 = v19 == 2 ? 0 : v19 + 1;
      v21 = *&v79[4 * v20];
      if (v21 != v9)
      {
        v22 = (v19 - 1);
        v23 = v17 == v8 ? 2 : v22;
        v24 = *&v79[4 * v23];
        if (v24 != v9)
        {
          v25 = *(v13 + 16 * v21);
          v26 = *(v13 + 16 * v8);
          v27 = *(v13 + 16 * v24);
          v28 = vsubq_f32(v25, v26);
          v29 = vsubq_f32(v27, v26);
          v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v28)), v29, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
          v31 = vsubq_f32(v25, v15);
          v32 = vsubq_f32(v27, v15);
          v33 = vmulq_f32(v30, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL)));
          if ((v33.f32[1] + (v33.f32[2] + v33.f32[0])) <= 0.0)
          {
            goto LABEL_42;
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v35 = v78[0];
  v34 = v78[1];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v78[1], (a1 + 63));
  v36 = a1[63];
  v37 = a1[64];
  if (v36 != v37)
  {
    v38 = a1[1];
    v39 = a1[6];
    v40 = v10[1];
    do
    {
      v41 = (v39 + 4 * (3 * *v36));
      v42 = *v41;
      *v79 = *v41;
      *&v79[4] = *(v41 + 1);
      v43 = *&v79[4] == v34 ? 1 : 2;
      v44 = v42 == v34 ? 0 : v43;
      v45 = v44 == 2 ? 0 : v44 + 1;
      v46 = *&v79[4 * v45];
      if (v46 != v35)
      {
        v47 = (v44 - 1);
        v48 = v42 == v34 ? 2 : v47;
        v49 = *&v79[4 * v48];
        if (v49 != v35)
        {
          v50 = *(v38 + 16 * v46);
          v51 = *(v38 + 16 * v34);
          v52 = *(v38 + 16 * v49);
          v53 = vsubq_f32(v50, v51);
          v54 = vsubq_f32(v52, v51);
          v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vnegq_f32(v53)), v54, vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL));
          v56 = vsubq_f32(v50, v40);
          v57 = vsubq_f32(v52, v40);
          v58 = vmulq_f32(v55, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vnegq_f32(v56)), v57, vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL)));
          if ((v58.f32[1] + (v58.f32[2] + v58.f32[0])) <= 0.0)
          {
            goto LABEL_42;
          }
        }
      }

      ++v36;
    }

    while (v36 != v37);
  }

  v59 = a1[45];
  v60 = *(v59 + v78[0]);
  v61 = *(v59 + v78[1]);
  if ((v60 & 0x10) != 0 && (v61 & 0x10) != 0)
  {
LABEL_42:
    result = 0;
    goto LABEL_63;
  }

  if (((a1[37] - a1[36]) & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_62;
  }

  if (v60 == 4 && v61 == 4)
  {
    v64 = a1[27];
    if (v4 < (a1[28] - v64) >> 2)
    {
      v65 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v64 + 4 * v4) / 3u, *(v64 + 4 * v4) % 3u);
      if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge((a1 + 4), v65))
      {
        v66 = *(a1[27] + 4 * v4);
        v67 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), v66 / 3, v66 % 3);
        v77[0] = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), v67);
        if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge((a1 + 4), v67))
        {
          half_edge_face = -1;
          v69 = 1;
        }

        else
        {
          half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin((a1 + 4), v67);
          half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), half_edge_twin);
          v69 = 2;
        }

        v71 = 0;
        v77[1] = half_edge_face;
        v72 = a1[6];
        v73 = a1[45];
LABEL_55:
        v74 = 0;
        v75 = v72 + 4 * (3 * v77[v71]);
        *v79 = *v75;
        *&v79[8] = *(v75 + 8);
        while ((*(v73 + *&v79[v74]) & 8) == 0)
        {
          v74 += 4;
          if (v74 == 12)
          {
            if (++v71 != v69)
            {
              goto LABEL_55;
            }

            goto LABEL_59;
          }
        }

        goto LABEL_42;
      }
    }
  }

LABEL_59:
  if ((v60 & 5) == 0 || (v61 & 5) == 0 || (result = geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts((a1 + 30), (a1 + 4), a2)))
  {
LABEL_62:
    result = 1;
  }

LABEL_63:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<float>::update_edge_uvs(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 5) == 1 && ((v4 = *(a1 + 216), a2 >= ((*(a1 + 224) - v4) >> 2)) ? (*v16 = -1, v6 = 0xFFFFFFFFLL) : (half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v4 + 4 * a2) / 3u, *(v4 + 4 * a2) % 3u), geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 32), half_edge_for_face_vertex, v16), v6 = v16[0]), (v7 = *(a1 + 360), (*(v7 + v6) & 0xC) != 0) && (*(v7 + v16[1]) & 0xC) != 0))
  {
    v8 = 0;
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    geom::triangle_mesh_atlas::edge_incident_wedges(a1 + 240, (a1 + 32), a2, &v15, &v12);
    memset(__p, 0, sizeof(__p));
    if (v15.__end_ != v15.__begin_)
    {
      std::vector<double>::__vallocate[abi:nn200100](__p, v15.__end_ - v15.__begin_);
    }

    v8 = 1;
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v15.__begin_)
    {
      v15.__end_ = v15.__begin_;
      operator delete(v15.__begin_);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void geom::internal::triangle_mesh_decimator<float>::recompute_vertex_quadric(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, a2, a3);
  *(a4 + 72) = 0;
  v7 = 0uLL;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  v8 = *a3;
  v41 = a3[1];
  if (*a3 == v41)
  {
    v12.f64[0] = 0.0;
  }

  else
  {
    v40 = a4;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = v7;
      v51 = v11;
      v43 = v10;
      v45 = v9;
      v47 = v12;
      v13 = 0;
      v14 = (a1[6] + 4 * (3 * *v8));
      v15 = *v14;
      v16 = v14[1];
      v62[0] = *v14;
      v62[1] = v16;
      v17 = v14[2];
      v62[2] = v14[2];
      v18 = a1[1];
      v19 = -1;
      do
      {
        if (v62[v13] == a2)
        {
          v19 = v13;
        }

        ++v13;
      }

      while (v13 != 3);
      v20 = (v18 + 16 * v15);
      v21 = (v18 + 16 * v16);
      v22 = (v18 + 16 * v17);
      geom::internal::compute_plane_from_triangle<float>(v20, v21, v22);
      v24 = vdupq_laneq_s32(v23, 2);
      v24.i32[3] = v23.i32[1];
      v25 = v23;
      v25.i32[0] = v23.i32[3];
      v26 = vmulq_f32(v24, v25);
      v27 = vcvt_hight_f64_f32(v26);
      v28 = vcvtq_f64_f32(*v26.f32);
      v29 = vzip2q_s64(v28, v27);
      *&v27.f64[1] = v28.i64[0];
      v30 = v23;
      v30.i32[2] = v23.i32[0];
      v31 = vextq_s8(v23, v23, 4uLL);
      v32 = vmulq_f32(v30, vuzp2q_s32(v31, vuzp2q_s32(v31, v23)));
      v33 = vcvtq_f64_f32(*v32.f32);
      v9 = vaddq_f64(v45, vcvtq_f64_f32(vmul_f32(*v23.i8, __PAIR64__(v23.u32[1], vextq_s8(*&v23, *&v23, 8uLL).u32[1]))));
      v10 = vaddq_f64(v43, v27);
      v7 = vaddq_f64(v49, v29);
      v12 = vaddq_f64(v47, vcvt_hight_f64_f32(v32));
      v11 = vaddq_f64(v51, v33);
      v34 = a1[45];
      if ((*(v34 + a2) & 0xF) != 0)
      {
        v60 = v23;
        v61[0] = *v20;
        v61[1] = *v21;
        v61[2] = *v22;
        v59[0] = (*(v34 + v15) & 0xF) != 0;
        v59[1] = (*(v34 + v16) & 0xF) != 0;
        v59[2] = (*(v34 + v17) & 0xF) != 0;
        v35 = *(v34 + a2);
        v48 = v12;
        v50 = v7;
        v44 = v10;
        v46 = v9;
        v52 = v11;
        geom::internal::compute_boundary_penalty_quadric<float>(v19, v59, v61, &v60, &v53, v10);
        v36.f64[0] = v53;
        if ((v35 & 0xF) != 0)
        {
          v37 = 1.0;
        }

        else
        {
          v37 = 0.0;
        }

        v36.f64[1] = v58;
        v38 = vmulq_n_f64(vextq_s8(v54, v54, 8uLL), v37);
        v9 = vaddq_f64(v46, vmulq_n_f64(v55, v37));
        v10 = vaddq_f64(v44, vmulq_n_f64(v57, v37));
        v7 = vaddq_f64(v50, vmulq_n_f64(v56, v37));
        v12 = vaddq_f64(v48, vmulq_n_f64(v36, v37));
        v11 = vaddq_f64(v52, v38);
      }

      ++v8;
    }

    while (v8 != v41);
    a4 = v40;
    *(v40 + 8) = vextq_s8(v11, v11, 8uLL);
    *(v40 + 24) = v9;
    *(v40 + 40) = v7;
    *(v40 + 56) = v10;
    *(v40 + 72) = v12.f64[1];
  }

  *a4 = v12.f64[0];
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t geom::internal::compute_vertex_masks<double>@<X0>(uint64_t this@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>, __int128 a6, uint64_t a7, uint64_t a8)
{
  v10 = this;
  v53 = *MEMORY[0x277D85DE8];
  v12 = *(this + 48) - *(this + 40);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if ((v12 >> 2))
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a5, (v12 >> 2));
  }

  if ((v12 & 0x3FFFFFFFCLL) != 0)
  {
    v13 = 0;
    do
    {
      this = geom::triangle_mesh_half_edge_connectivity::is_boundary_vertex(v10, v13);
      if (this)
      {
        *(*a5 + v13) = 1;
        this = geom::triangle_mesh_half_edge_connectivity::get_incident_boundary_half_edges_to_boundary_vertex(v10, v13, vars0);
        if (vars0[0] == -1)
        {
          v16 = -1;
          v51 = -1;
        }

        else
        {
          this = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(v10, vars0[0]);
          v14 = this;
          if (vars0[1] == -1)
          {
            v15 = 0xFFFFFFFFLL;
          }

          else
          {
            this = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(v10, vars0[1]);
            v15 = 3 * this + BYTE4(this);
          }

          v17 = *(v10 + 20);
          v51 = *(v17 + 4 * (3 * v14 + BYTE4(v14)));
          v16 = *(v17 + 4 * v15);
        }

        v50 = v16;
        v18 = &v51;
        v19 = (&v49 + 4);
        v20 = 1;
        do
        {
          v21 = v20;
          v22 = *v18;
          v23 = *(v10 + 23);
          if (v22 >= (*(v10 + 24) - v23) >> 2)
          {
            *vars0 = -1;
            v25 = 0xFFFFFFFFLL;
          }

          else
          {
            half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v10, *(v23 + 4 * v22) / 3u, *(v23 + 4 * v22) % 3u);
            this = geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v10, half_edge_for_face_vertex, vars0);
            v25 = vars0[0];
          }

          v20 = 0;
          *v19 = *(vars0 | (4 * (v25 == v13)));
          v18 = &v50;
          v19 = &v49;
        }

        while ((v21 & 1) != 0);
        v26 = *a2;
        v27 = (*a2 + 32 * v13);
        v29 = *v27;
        v28 = v27[1];
        v30 = &v49 + 1;
        v31 = vars0;
        v32 = 1;
        while (1)
        {
          v33 = v32;
          v34 = (v26 + 32 * *v30);
          v35 = vsubq_f64(v29, *v34);
          v36 = vsubq_f64(v28, v34[1]);
          *v31 = v35;
          *(v31 + 1) = v36;
          v37 = vmulq_f64(v36, v36).f64[0] + vaddvq_f64(vmulq_f64(v35, v35));
          if (v37 <= 0.0)
          {
            break;
          }

          v32 = 0;
          v38 = 1.0 / sqrt(v37);
          *v31 = vmulq_n_f64(v35, v38);
          *(v31 + 1) = vmulq_n_f64(v36, v38);
          v30 = &v49;
          v31 = v48;
          if ((v33 & 1) == 0)
          {
            if (vmulq_f64(a6, v48[1]).f64[0] + vaddvq_f64(vmulq_f64(*vars0, v48[0])) >= -0.5)
            {
              *(*a5 + v13) |= 2u;
            }

            break;
          }
        }
      }

      ++v13;
    }

    while (v13 != (v12 >> 2));
  }

  if (((a4[7] - a4[6]) & 0x3FFFFFFFCLL) != 0 && ((*(v10 + 6) - *(v10 + 5)) & 0x3FFFFFFFCLL) != 0)
  {
    v39 = 0;
    while (1)
    {
      v40 = *(*a4 + v39);
      if (v40 == 2)
      {
        break;
      }

      if ((v40 - 1) <= 1)
      {
        v41 = 4;
        goto LABEL_30;
      }

LABEL_31:
      if (++v39 >= ((*(v10 + 6) - *(v10 + 5)) >> 2))
      {
        goto LABEL_32;
      }
    }

    v41 = 8;
LABEL_30:
    *(*a5 + v39) |= v41;
    goto LABEL_31;
  }

LABEL_32:
  v42 = a3[1];
  if (v42)
  {
    v43 = *a3;
    v44 = 4 * v42;
    do
    {
      v45 = *v43++;
      *(*a5 + v45) |= 0x10u;
      v44 -= 4;
    }

    while (v44);
  }

  v46 = *MEMORY[0x277D85DE8];
  return this;
}

void geom::internal::triangle_mesh_decimator<double>::initialize_quadrics(void *a1)
{
  v133 = *MEMORY[0x277D85DE8];
  v1 = a1[10] - a1[9];
  v2 = ((a1[7] - a1[6]) >> 2) / 3uLL;
  a1[49] = a1[48];
  v3 = (v1 >> 2);
  std::vector<geom::internal::quadric>::resize(a1 + 48, v3);
  __p = 0;
  v128 = 0;
  v129 = 0;
  if ((v1 >> 2))
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v1 >> 2));
  }

  v4 = a1;
  if ((v1 & 0x3FFFFFFFCLL) != 0)
  {
    v5 = a1[45];
    v6 = __p;
    do
    {
      v7 = *v5++;
      if ((v7 & 0xF) != 0)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      *v6++ = v8;
      --v3;
    }

    while (v3);
  }

  v122 = v2;
  if (v2)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4[6] + 4 * (3 * v9));
      v12 = v10[1];
      v131[0] = *v10;
      v11 = v131[0];
      v131[1] = v12;
      v132 = v10[2];
      v13 = v132;
      v14 = v4[1];
      v15 = (v14 + 32 * v131[0]);
      v16 = (v14 + 32 * v12);
      v17 = (v14 + 32 * v132);
      v18 = v15[1];
      v19 = vsubq_f64(*v16, *v15);
      v20 = vsubq_f64(v16[1], v18);
      v21 = vsubq_f64(*v17, *v15);
      v22 = vsubq_f64(v17[1], v18);
      v23 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v20), v21, 1), v22, v19, 1);
      v22.f64[1] = v21.f64[0];
      v20.f64[1] = v19.f64[0];
      v24 = vmlaq_f64(vmulq_f64(v22, vnegq_f64(v19)), v21, v20);
      v25 = vmulq_f64(v24, v24);
      v26 = v25.f64[1] + vmulq_f64(v23, v23).f64[0] + v25.f64[0];
      v27 = 0uLL;
      v28 = 0uLL;
      if (v26 > 0.0)
      {
        v29 = vextq_s8(v24, v24, 8uLL);
        v23.f64[1] = v24.f64[0];
        v24.f64[0] = 1.0 / sqrt(v26);
        v28 = vmulq_f64(v29, v24);
        v27 = vmulq_n_f64(v23, v24.f64[0]);
      }

      v30 = vmulq_f64(v18, v28).f64[0] + vaddvq_f64(vmulq_f64(*v15, v27));
      v31 = -v30;
      v32 = vmuld_n_f64(v27.f64[0], v28.f64[0]);
      v33 = -v30 * v28.f64[0];
      v34 = v30 * v30;
      v35 = v4[48];
      v36 = (v35 + 80 * v131[0]);
      v37 = v34 + v36[4].f64[1];
      v36[4].f64[0] = v33 + v36[4].f64[0];
      v36[4].f64[1] = v37;
      v38 = (v35 + 80 * v12);
      v39 = v34 + v38[4].f64[1];
      v38[4].f64[0] = v33 + v38[4].f64[0];
      v38[4].f64[1] = v39;
      v40 = vmulq_n_f64(v27, v27.f64[0]);
      v41.f64[1] = v27.f64[1];
      v41.f64[0] = v31;
      v42 = vmulq_f64(v27, v41);
      v43 = vdupq_lane_s64(*&v42.f64[0], 0);
      v43.f64[0] = v32;
      v44 = vaddq_f64(v43, v36[1]);
      *v36 = vaddq_f64(v40, *v36);
      v36[1] = v44;
      v45 = vaddq_f64(v43, v38[1]);
      v43.f64[0] = vmuld_n_f64(v28.f64[0], v28.f64[0]);
      v46 = v35 + 80 * v13;
      *v38 = vaddq_f64(v40, *v38);
      v38[1] = v45;
      *v46 = vaddq_f64(v40, *v46);
      v40.f64[0] = v36[3].f64[0];
      v47 = v43.f64[0] + v36[3].f64[1];
      *(v46 + 16) = v32 + *(v46 + 16);
      v124 = v28;
      v125 = v27;
      v48.f64[0] = v28.f64[0];
      v48.f64[1] = v31;
      v49 = vmulq_laneq_f64(v48, v27, 1);
      v50 = vextq_s8(v42, v49, 8uLL);
      v36[2] = vaddq_f64(v50, v36[2]);
      v36[3].f64[0] = v49.f64[1] + v40.f64[0];
      v36[3].f64[1] = v47;
      v51 = vaddq_f64(v50, v38[2]);
      v50.f64[0] = v38[3].f64[0];
      v52 = v43.f64[0] + v38[3].f64[1];
      v38[2] = v51;
      *(v46 + 24) = vaddq_f64(v42, *(v46 + 24));
      v38[3].f64[0] = v49.f64[1] + v50.f64[0];
      v38[3].f64[1] = v52;
      *(v46 + 40) = vaddq_f64(v49, *(v46 + 40));
      v48.f64[0] = *(v46 + 64);
      *(v46 + 56) = v43.f64[0] + *(v46 + 56);
      *(v46 + 64) = v33 + v48.f64[0];
      *(v46 + 72) = v34 + *(v46 + 72);
      is_boundary_face = geom::triangle_mesh_half_edge_connectivity::is_boundary_face((v4 + 4), v9);
      v4 = a1;
      if (is_boundary_face)
      {
        break;
      }

LABEL_37:
      if (++v9 == v122)
      {
        goto LABEL_38;
      }
    }

    v54 = 0;
    v55 = v15[1];
    v130[0] = *v15;
    v130[1] = v55;
    v56 = v16[1];
    v130[2] = *v16;
    v130[3] = v56;
    v57 = v17[1];
    v130[4] = *v17;
    v130[5] = v57;
    v58 = a1[45];
    v126[0] = (*(v58 + v11) & 0xF) != 0;
    v59 = (*(v58 + v12) & 0xF) != 0;
    LOBYTE(v58) = *(v58 + v13);
    v126[1] = v59;
    v126[2] = (v58 & 0xF) != 0;
    v60 = __p;
    v61 = a1[48];
    while (1)
    {
      if (v126[v54])
      {
        v62 = v54 + 1;
        if (v54 == 2)
        {
          v63 = 0;
        }

        else
        {
          v63 = v54 + 1;
        }

        if (v63 == 2)
        {
          LOBYTE(v64) = 0;
        }

        else
        {
          LOBYTE(v64) = v63 + 1;
        }

        if (v126[v63])
        {
          v65 = &v130[2 * v54];
          v66 = *v65;
          v67 = v65[1];
          v68 = &v130[2 * v63];
          v69 = vsubq_f64(*v68, *v65);
          v70 = vsubq_f64(v68[1], v67);
          v71 = vsubq_f64(vaddq_f64(v125, *v65), *v65);
          v72 = vsubq_f64(vaddq_f64(v124, v67), v67);
          v73.f64[0] = v72.f64[0];
          v73.f64[1] = v71.f64[0];
          v74 = vnegq_f64(v70);
          v70.f64[1] = v69.f64[0];
          v75 = vmlaq_f64(vmulq_f64(v73, vnegq_f64(v69)), v71, v70);
          v76 = vmlaq_laneq_f64(vmulq_laneq_f64(v74, v71, 1), v72, v69, 1);
          v77 = vmulq_f64(v75, v75);
          v78 = v77.f64[1] + vmulq_f64(v76, v76).f64[0] + v77.f64[0];
          v79 = 0uLL;
          v80 = 0uLL;
          if (v78 > 0.0)
          {
            v81 = vextq_s8(v75, v75, 8uLL);
            v76.f64[1] = v75.f64[0];
            v75.f64[0] = 1.0 / sqrt(v78);
            v80 = vmulq_f64(v81, v75);
            v79 = vmulq_n_f64(v76, v75.f64[0]);
          }

          v82 = vmulq_f64(v67, v80).f64[0] + vaddvq_f64(vmulq_f64(v66, v79));
          v90.f64[0] = vmuld_n_f64(v79.f64[0], v79.f64[0]);
          v83 = vmuld_lane_f64(v79.f64[1], v79, 1);
          v84 = vmuld_n_f64(v80.f64[0], v80.f64[0]);
          v85 = v82 * v82;
          v86 = vmuld_lane_f64(v79.f64[0], v79, 1) + 0.0;
          v87 = vmuld_n_f64(v79.f64[0], v80.f64[0]) + 0.0;
          v91.f64[0] = 0.0 - v82 * v79.f64[0];
          v88 = vmuld_lane_f64(v80.f64[0], v79, 1) + 0.0;
          v92.f64[0] = 0.0 - vmuld_lane_f64(v82, v79, 1);
          v89 = 0.0 - v82 * v80.f64[0];
          v64 = v64;
          v90.f64[1] = v86;
          v91.f64[1] = v83;
          v92.f64[1] = v84;
          if ((v126[v64] & 1) == 0)
          {
            goto LABEL_34;
          }

          v93 = vextq_s8(v71, v71, 8uLL).u64[0];
          v94 = vextq_s8(v73, v73, 8uLL).u64[0];
          v95 = vdupq_laneq_s64(v71, 1);
          goto LABEL_31;
        }

        v64 = v64;
        if (v126[v64] == 1)
        {
          v96 = &v130[2 * v54];
          v66 = *v96;
          v67 = v96[1];
          v71 = vsubq_f64(vaddq_f64(v125, *v96), *v96);
          v72 = vsubq_f64(vaddq_f64(v124, v67), v67);
          v95 = vextq_s8(v71, v71, 8uLL);
          v73.f64[0] = v72.f64[0];
          v73.f64[1] = v71.f64[0];
          v94 = vextq_s8(v73, v73, 8uLL).u64[0];
          v90 = 0uLL;
          v87 = 0.0;
          v93 = *&v95.f64[0];
          v88 = 0.0;
          v89 = 0.0;
          v85 = 0.0;
          v91 = 0uLL;
          v92 = 0uLL;
LABEL_31:
          v97 = &v130[2 * v64];
          v98 = vsubq_f64(*v97, v66);
          v99 = vsubq_f64(v97[1], v67);
          v100 = vnegq_f64(v99);
          v99.f64[1] = v98.f64[0];
          *&v73.f64[1] = v94;
          *&v71.f64[1] = v93;
          v101 = vmlaq_f64(vmulq_f64(v73, vnegq_f64(v98)), v71, v99);
          v102 = vmlaq_laneq_f64(vmulq_f64(v95, v100), v72, v98, 1);
          v103 = vmulq_f64(v101, v101);
          v104 = v103.f64[1] + vmulq_f64(v102, v102).f64[0] + v103.f64[0];
          v105 = 0uLL;
          v106 = 0uLL;
          if (v104 > 0.0)
          {
            v102.f64[1] = v101.f64[0];
            v105.f64[0] = 1.0 / sqrt(v104);
            v106 = vmulq_f64(vextq_s8(v101, v101, 8uLL), v105);
            v105 = vmulq_n_f64(v102, v105.f64[0]);
          }

          v107 = vmulq_f64(v67, v106).f64[0] + vaddvq_f64(vmulq_f64(v66, v105));
          v108 = vmuld_n_f64(v105.f64[0], v106.f64[0]);
          v109 = vmuld_lane_f64(v106.f64[0], v105, 1);
          v90 = vaddq_f64(v90, vmulq_n_f64(v105, v105.f64[0]));
          v110.f64[1] = v105.f64[1];
          v110.f64[0] = v107;
          v111 = vmulq_f64(v105, v110);
          v112 = vaddq_f64(v91, v111);
          *&v91.f64[0] = *&vsubq_f64(v91, v111);
          v91.f64[1] = v112.f64[1];
          v113 = vextq_s8(v105, v106, 8uLL);
          v112.f64[1] = v113.f64[1];
          v112.f64[0] = v107;
          v87 = v87 + v108;
          v114 = vmulq_f64(v113, v112);
          v115 = vaddq_f64(v92, v114);
          *&v92.f64[0] = *&vsubq_f64(v92, v114);
          v92.f64[1] = v115.f64[1];
          v88 = v88 + v109;
          v89 = v89 - v107 * v106.f64[0];
          v85 = v85 + v107 * v107;
          goto LABEL_34;
        }

        v90 = 0uLL;
      }

      else
      {
        v90 = 0uLL;
        v62 = v54 + 1;
      }

      v87 = 0.0;
      v88 = 0.0;
      v89 = 0.0;
      v85 = 0.0;
      v91 = 0uLL;
      v92 = 0uLL;
LABEL_34:
      v116 = v131[v54];
      v117 = v60[v116];
      v118 = v61 + 80 * v116;
      *v118 = vaddq_f64(vmulq_n_f64(v90, v117), *v118);
      *(v118 + 16) = v87 * v117 + *(v118 + 16);
      *(v118 + 24) = vaddq_f64(vmulq_n_f64(v91, v117), *(v118 + 24));
      *(v118 + 40) = v88 * v117 + *(v118 + 40);
      *(v118 + 48) = vaddq_f64(vmulq_n_f64(v92, v117), *(v118 + 48));
      v119 = v89 * v117 + *(v118 + 64);
      v120 = v85 * v117 + *(v118 + 72);
      *(v118 + 64) = v119;
      *(v118 + 72) = v120;
      v54 = v62;
      if (v62 == 3)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (__p)
  {
    v128 = __p;
    operator delete(__p);
  }

  v121 = *MEMORY[0x277D85DE8];
}

void geom::internal::triangle_mesh_decimator<double>::initialize_edge_data(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = (*(a1 + 224) - *(a1 + 216)) >> 2;
  memset(v36, 0, sizeof(v36));
  *__p = 0u;
  std::vector<geom::indexed_priority_queue<unsigned int,double>::key,std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>::reserve(__p, v2);
  std::vector<unsigned int>::resize((v36 + 8), v2, &geom::indexed_priority_queue<unsigned int,double>::k_invalid_index);
  v3 = *(a1 + 432);
  v4 = *__p;
  v5 = v36[0];
  *__p = v3;
  *&v36[0] = *(a1 + 448);
  v6 = *(a1 + 472);
  v7 = v36[1];
  v8 = *(a1 + 456);
  *(a1 + 432) = v4;
  *(a1 + 448) = v5;
  *(v36 + 8) = v8;
  *(a1 + 464) = v7;
  *(&v36[1] + 1) = v6;
  if (v8)
  {
    *&v36[1] = v8;
    operator delete(v8);
    v9 = __p[0];
    if (!__p[0])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v3;
  if (v3)
  {
LABEL_3:
    __p[1] = v9;
    operator delete(v9);
  }

LABEL_4:
  *(a1 + 416) = *(a1 + 408);
  std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::reserve((a1 + 408), v2);
  if (v2)
  {
    v14 = 0;
    do
    {
      geom::internal::triangle_mesh_decimator<double>::make_edge_cost(a1, v14, __p, INFINITY, v10, v11, v12, v13);
      v15 = *(a1 + 416);
      v16 = *(a1 + 424);
      if (v15 >= v16)
      {
        v20 = *(a1 + 408);
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v20) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v20) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x2AAAAAAAAAAAAAALL)
        {
          v24 = 0x555555555555555;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>(a1 + 408, v24);
        }

        v25 = 48 * v21;
        v26 = *__p;
        v27 = v36[1];
        *(v25 + 16) = v36[0];
        *(v25 + 32) = v27;
        *v25 = v26;
        v19 = 48 * v21 + 48;
        v28 = *(a1 + 408);
        v29 = *(a1 + 416) - v28;
        v30 = 48 * v21 - v29;
        memcpy((v25 - v29), v28, v29);
        v31 = *(a1 + 408);
        *(a1 + 408) = v30;
        *(a1 + 416) = v19;
        *(a1 + 424) = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        v17 = *__p;
        v18 = v36[1];
        v15[1] = v36[0];
        v15[2] = v18;
        *v15 = v17;
        v19 = (v15 + 3);
      }

      *(a1 + 416) = v19;
      ++v14;
    }

    while (v2 != v14);
    v32 = 0;
    v33 = 0;
    do
    {
      LODWORD(__p[0]) = v32;
      __p[1] = *(*(a1 + 408) + v33);
      geom::indexed_priority_queue<unsigned int,double>::push_or_change_cost((a1 + 432), __p);
      v33 += 48;
      ++v32;
    }

    while (48 * v2 != v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void *std::vector<geom::internal::triangle_mesh_decimator<double>::edge_cost,std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::internal::triangle_mesh_decimator<double>::edge_cost>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::internal::triangle_mesh_decimator<double>::make_edge_cost(void *a1@<X0>, unsigned int a2@<W1>, float64x2_t *a3@<X8>, double a4@<D0>, float64x2_t a5@<Q4>, float64x2_t a6@<Q5>, float64x2_t a7@<Q6>, float64x2_t a8@<Q7>)
{
  v47 = *MEMORY[0x277D85DE8];
  *v46 = -1;
  v12 = a1[27];
  if (a2 >= ((a1[28] - v12) >> 2))
  {
    *v46 = -1;
    v14 = 0xFFFFFFFFLL;
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v12 + 4 * a2) / 3u, *(v12 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v46);
    v15 = v46[0];
    v14 = v46[1];
  }

  v16 = a1[1];
  v17 = (v16 + 32 * v15);
  v18 = (v16 + 32 * v14);
  _Q1 = *v17;
  v19 = v17[1];
  v21 = vsubq_f64(*v18, *v17);
  v22 = vsubq_f64(v18[1], v19);
  if (fabs(vmulq_f64(v22, v22).f64[0] + vaddvq_f64(vmulq_f64(v21, v21))) <= 1.0e-12)
  {
    v38 = 0.0;
  }

  else
  {
    v23 = a1[48];
    v24 = (v23 + 80 * v15);
    v25 = (v23 + 80 * v14);
    v26 = vaddq_f64(v24[1], v25[1]);
    v42[0] = vaddq_f64(*v24, *v25);
    v42[1] = v26;
    v27 = v25[2];
    v28 = v25[3];
    v29 = vaddq_f64(v24[3], v28);
    v43 = vaddq_f64(v24[2], v27);
    v44 = v29;
    v45 = vaddq_f64(v24[4], v25[4]);
    geom::internal::triangle_mesh_decimator<double>::make_contracted_position(a1, a2, v42, &v40, a4, v27.f64[0], v28, a5, a6, a7, a8);
    _Q1 = v40;
    v19 = v41;
    _D6 = v44.f64[0];
    _D3 = *(v42 + 1) * v40.f64[0];
    __asm
    {
      FMLA            D4, D3, V1.D[1]
      FMLA            D3, D6, V1.D[1]
    }

    v38 = v45.f64[1] + vmuld_lane_f64(vmuld_lane_f64(v43.f64[0], v40, 1), v40, 1) + *v42 * v40.f64[0] * v40.f64[0] + v44.f64[1] * v41.f64[0] * v41.f64[0] + (_D3 + v45.f64[0] * v41.f64[0]) * 2.0;
    if (v38 < 0.0)
    {
      v38 = 0.0;
    }
  }

  a3->f64[0] = v38;
  a3[1] = _Q1;
  a3[2] = v19;
  v39 = *MEMORY[0x277D85DE8];
}

void geom::internal::triangle_mesh_decimator<double>::make_contracted_position(void *a1@<X0>, unsigned int a2@<W1>, double *a3@<X2>, float64x2_t *a4@<X8>, double a5@<D0>, double a6@<D2>, float64x2_t a7@<Q3>, float64x2_t a8@<Q4>, float64x2_t a9@<Q5>, float64x2_t a10@<Q6>, float64x2_t a11@<Q7>)
{
  v53 = *MEMORY[0x277D85DE8];
  v16 = a1[27];
  if (a2 >= ((a1[28] - v16) >> 2))
  {
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    *v52 = -1;
    v20 = 0xFFFFFFFFLL;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v16 + 4 * a2) / 3u, *(v16 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v52);
    v19 = v52[0];
    v20 = v52[1];
  }

  v21 = a1[1];
  v22 = v21 + 32 * v19;
  v23 = a1[45];
  v24 = *(v23 + v19);
  v25 = *(v23 + v20);
  if ((v24 & 0x10) != 0 && (v25 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v28 = (v21 + 32 * v20);
  if ((v24 & 0x10) == 0 && (v25 & 0x10) != 0)
  {
    goto LABEL_9;
  }

  v30 = v24 & 0xA;
  v31 = v25 & 0xA;
  if ((v24 & 0xA) != 0 && v31 == 0)
  {
    goto LABEL_6;
  }

  if ((v25 & 0xA) != 0 && v30 == 0)
  {
LABEL_9:
    v27 = *v28;
    v26 = v28[1];
    goto LABEL_10;
  }

  v34 = v25 & 5;
  v35 = v24 & 5;
  if (!v35 || v34)
  {
    if (!v34 || v35)
    {
      if (*a1 >= 2u)
      {
        if (*a1 == 2)
        {
          v39.f64[0] = geom::internal::quadric::cost<double>(a3, v22);
          v46 = v39;
          v40.f64[0] = geom::internal::quadric::cost<double>(a3, v28);
          v41 = vcgtq_f64(v40, v46);
          v26 = vbslq_s8(v41, *(v22 + 16), v28[1]);
          v27 = vbslq_s8(vdupq_lane_s64(v41.i64[0], 0), *v22, *v28);
          goto LABEL_10;
        }
      }

      else
      {
        if (v30)
        {
          v36 = v31 == 0;
        }

        else
        {
          v36 = 1;
        }

        v37 = v36;
        if (v34)
        {
          v38 = v35 == 0;
        }

        else
        {
          v38 = 1;
        }

        if (!v38 || (v37 & 1) == 0)
        {
          geom::internal::quadric::compute_optimal_position_along_edge<double>(a3, v22, v28, v51, v18, a7, a9, a11);
          v27 = v51[0];
          v26 = v51[1];
          goto LABEL_10;
        }

        v18.f64[0] = fabs(a5);
        if (v18.f64[0] <= 1.0e-12)
        {
          geom::internal::triangle_mesh_decimator<double>::optimize_position_for_aspect_ratio(a1, a2, v50);
          v27 = v50[0];
          v26 = v50[1];
          goto LABEL_10;
        }

        v49.f64[0] = 0.0;
        v48 = 0uLL;
        if (geom::internal::quadric::optimal_position<double>(a3, &v48, v18, 1.0e-12, a6, a7, a8, a9.f64[0], a10))
        {
          v27 = v48;
          v26 = v49;
          goto LABEL_10;
        }

        geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation(a1, a2, a3, v47);
        v48 = v47[0];
        v49 = v47[1];
      }

      __asm { FMOV            V2.2D, #0.5 }

      v26 = vmulq_f64(vaddq_f64(*(v22 + 16), v28[1]), _Q2);
      v27 = vmulq_f64(vaddq_f64(*v22, *v28), _Q2);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_6:
  v27 = *v22;
  v26 = *(v22 + 16);
LABEL_10:
  *a4 = v27;
  a4[1] = v26;
  v29 = *MEMORY[0x277D85DE8];
}

double geom::internal::quadric::cost<double>(uint64_t a1, float64x2_t *a2)
{
  _Q1 = *a2;
  v3 = *(a1 + 40);
  _D6 = *(a1 + 48);
  _D3 = *(a1 + 8) * a2->f64[0];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  __asm
  {
    FMLA            D4, D3, V1.D[1]
    FMLA            D3, D6, V1.D[1]
  }

  result = *(a1 + 72) + vmuld_lane_f64(vmuld_lane_f64(*(a1 + 32), *a2, 1), *a2, 1) + *a1 * a2->f64[0] * a2->f64[0] + a2[1].f64[0] * *(a1 + 56) * a2[1].f64[0] + (_D3 + *(a1 + 64) * a2[1].f64[0]) * 2.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double geom::internal::quadric::compute_optimal_position_along_edge<double>@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>, float64x2_t a5@<Q0>, float64x2_t a6@<Q3>, float64x2_t a7@<Q5>, float64x2_t a8@<Q7>)
{
  a5.f64[0] = a2[1].f64[0];
  v9 = *a2;
  v10 = vsubq_f64(*a3, *a2);
  a6.f64[0] = a3[1].f64[0] - a5.f64[0];
  a7.f64[0] = *(a1 + 16);
  *&v11.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  v11.f64[1] = *(a1 + 32);
  a8.f64[0] = *(a1 + 40);
  v8.f64[0] = *(a1 + 56);
  v12 = vmulq_f64(a7, a6);
  a7.f64[1] = a8.f64[0];
  v13 = vaddq_f64(vzip1q_s64(v12, vmulq_f64(a6, a8)), vpaddq_f64(vmulq_f64(*a1, v10), vmulq_f64(v10, v11)));
  v14 = vmulq_f64(v10, a7);
  v14.f64[0] = vmulq_f64(a6, v8).f64[0] + vaddvq_f64(v14);
  v15 = vmulq_f64(a6, v14).f64[0] + vaddvq_f64(vmulq_f64(v10, v13));
  v16 = 0.5;
  if (fabs(v15) > 0.000001)
  {
    v8.f64[0] = *(a1 + 64);
    v17.f64[0] = *(a1 + 24);
    v17.f64[1] = *(a1 + 48);
    *&v9.f64[1] = vextq_s8(v9, v9, 8uLL).u64[0];
    v18 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(a5, v14), vmulq_f64(a6, v8)), vpaddq_f64(vmulq_f64(v9, v13), vmulq_f64(v10, v17)))) / -v15;
    v16 = 0.0;
    if (v18 >= 0.0)
    {
      v16 = v18;
      if (v18 > 1.0)
      {
        v16 = 1.0;
      }
    }
  }

  result = 1.0 - v16;
  v20 = vmlaq_n_f64(vmulq_n_f64(a3[1], v16), a2[1], 1.0 - v16);
  *a4 = vmlaq_n_f64(vmulq_n_f64(*a3, v16), *a2, 1.0 - v16);
  a4[1] = v20;
  return result;
}

void geom::internal::triangle_mesh_decimator<double>::optimize_position_for_aspect_ratio(void *a1@<X0>, unsigned int a2@<W1>, float64x2_t *a3@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = (a1 + 4);
  v28[0] = a1 + 4;
  v28[1] = v6;
  v49 = 0;
  if (geom::vertex_placement_constraint_factory<double>::add_shape_optimization(v28, a2, v41) == 3)
  {
    if (v49 == 3)
    {
      v35 = vzip1q_s64(*v41, v43);
      v36 = v45;
      v37 = vzip2q_s64(*v41, v43);
      v38 = vdupq_laneq_s64(v45, 1);
      v39 = vzip1q_s64(v42, v44);
      v40 = v46;
      __invert_d3();
      v9 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v47.f64[0]), v32, v47, 1), v34, *&v48);
      v8 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v29, v47.f64[0]), v31, v47, 1), v33, *&v48);
    }

    else if (v49 == 2)
    {
      v24 = vmulq_f64(v42, v42);
      *v24.i64 = *v24.i64 + vaddvq_f64(vmulq_f64(*v41, *v41));
      v51.columns[1] = vaddq_f64(vzip1q_s64(vmulq_f64(v42, v44), vmulq_f64(v44, v44)), vpaddq_f64(vmulq_f64(*v41, v43), vmulq_f64(v43, v43)));
      v51.columns[0] = vzip1q_s64(v24, v51.columns[1]);
      v27 = v47;
      v25 = __invert_d2(v51);
      v26 = vmlaq_laneq_f64(vmulq_n_f64(v25.columns[0], v27.f64[0]), v25.columns[1], v27, 1);
      v9 = vmlaq_n_f64(vmulq_laneq_f64(v44, v26, 1), v42, v26.f64[0]);
      v8 = vmlaq_n_f64(vmulq_laneq_f64(v43, v26, 1), *v41, v26.f64[0]);
    }

    else
    {
      v8 = 0uLL;
      v9 = 0uLL;
      if (v49 == 1)
      {
        v10 = v47.f64[0] / (vmulq_f64(v42, v42).f64[0] + vaddvq_f64(vmulq_f64(*v41, *v41)));
        v9 = vmulq_n_f64(v42, v10);
        v8 = vmulq_n_f64(*v41, v10);
      }
    }
  }

  else
  {
    v11 = a1[27];
    if (a2 >= ((a1[28] - v11) >> 2))
    {
      v13 = 0xFFFFFFFFLL;
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v7, *(v11 + 4 * a2) / 3u, *(v11 + 4 * a2) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v7, half_edge_for_face_vertex, v41);
      v14 = v41[0];
      v13 = v41[1];
    }

    v15 = a1[1];
    v16 = (v15 + 32 * v14);
    v17 = (v15 + 32 * v13);
    __asm { FMOV            V2.2D, #0.5 }

    v9 = vmulq_f64(vaddq_f64(v16[1], v17[1]), _Q2);
    v8 = vmulq_f64(vaddq_f64(*v16, *v17), _Q2);
  }

  *a3 = v8;
  a3[1] = v9;
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t geom::internal::quadric::optimal_position<double>(double *a1, float64x2_t *a2, float64x2_t a3, double a4, double a5, float64x2_t a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  v13 = *a1 * v12;
  v14 = a1[7];
  v15 = a1[2];
  v16 = v10 * v11 * v15 + v13 * v14 + v10 * v15 * v11 + -(*a1 * v11) * v11 + -(v10 * v10) * v14 + -(v15 * v12) * v15;
  v17 = 0;
  if (v16 > 0.0)
  {
    v18 = 1.0 / v16;
    v19.f64[0] = (v12 * v14 - v11 * v11) * (1.0 / v16);
    v20.f64[0] = (v14 * -v10 + v15 * v11) * v18;
    a3.f64[0] = (v10 * v11 + -v15 * v12) * v18;
    v21 = (v9 * v14 + -v15 * v15) * v18;
    a7.f64[0] = (v10 * v15 - *a1 * v11) * v18;
    a6.f64[0] = (v13 + -v10 * v10) * v18;
    v22 = fabs(v10);
    v23 = fabs(v15);
    v24 = fabs(v9) + v22 + v23;
    v25 = fabs(v11);
    v26 = fabs(v12) + v22 + v25;
    if (v24 < v26)
    {
      v24 = v26;
    }

    v27 = fabs(v14) + v25 + v23;
    if (v24 >= v27)
    {
      v27 = v24;
    }

    v28 = fabs(v20.f64[0]);
    v29 = fabs(a3.f64[0]);
    v30 = v29 + fabs(v19.f64[0]) + v28;
    v31 = fabs(a7.f64[0]);
    v32 = v31 + v28 + fabs(v21);
    if (v30 < v32)
    {
      v30 = v32;
    }

    v33 = fabs(a6.f64[0]) + v29 + v31;
    if (v30 < v33)
    {
      v30 = v33;
    }

    v34 = v27 * v30;
    if (v34 > 0.0 && v34 <= 1000000.0)
    {
      v19.f64[1] = v20.f64[0];
      v20.f64[1] = v21;
      v35.f64[0] = a1[3];
      a9.f64[0] = a1[8];
      v35.f64[1] = a1[6];
      v36 = vmulq_f64(a3, a9);
      a3.f64[1] = a7.f64[0];
      a2[1].f64[0] = -(vmulq_f64(a6, a9).f64[0] + vaddvq_f64(vmulq_f64(a3, v35)));
      *a2 = vnegq_f64(vaddq_f64(vzip1q_s64(v36, vmulq_f64(a7, a9)), vpaddq_f64(vmulq_f64(v19, v35), vmulq_f64(v20, v35))));
      return 1;
    }
  }

  return v17;
}

void geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, float64x2_t *a4@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 4);
  v9 = a1[1];
  v62[0] = (a1 + 4);
  v62[1] = v9;
  v77 = 0;
  v10 = a2;
  v11 = a1[27];
  if (a2 < ((a1[28] - v11) >> 2))
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v11 + 4 * a2) / 3u, *(v11 + 4 * a2) % 3u);
    if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v8, half_edge_for_face_vertex))
    {
      geom::vertex_placement_constraint_factory<double>::add_boundary_preservation(v62, a2, v69);
      v13 = v77;
      if (v77 > 2u)
      {
        goto LABEL_26;
      }

      v14 = v62[0];
      v15 = *(v62[0] + 23);
      if (v10 >= (*(v62[0] + 24) - v15) >> 2)
      {
        goto LABEL_25;
      }

      v16 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v62[0], *(v15 + 4 * v10) / 3u, *(v15 + 4 * v10) % 3u);
      if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v14, v16))
      {
        goto LABEL_25;
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v82 = 0u;
      v83 = 0u;
      v78 = COERCE_DOUBLE(&unk_2862912D8);
      v79 = &v63;
      v80 = &v82;
      v81 = &v78;
      geom::vertex_placement_constraint_factory<double>::loop_edge_boundaries(v62, a2, &v78);
LABEL_24:
      _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(&v78);
      geom::vertex_placement_constraints<double>::add_objective_function(v69, &v63, &v82, v39, v40, v41, v42, v43, v44);
LABEL_25:
      v13 = v77;
      goto LABEL_26;
    }
  }

  v63 = 0u;
  v64 = 0u;
  v78 = 0.0;
  *&v82.f64[0] = &unk_286291358;
  *&v82.f64[1] = &v63;
  *&v83.f64[0] = &v78;
  *&v83.f64[1] = &v82;
  geom::vertex_placement_constraint_factory<double>::loop_edge_triangles(v62, a2, &v82);
  _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(&v82);
  v17 = v78;
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v60 = v17;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v17 = v60;
  }

  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v61 = v17;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v17 = v61;
  }

  v13 = v77;
  if (!v77)
  {
    v24 = v63;
    v23 = v64;
    v28 = vmulq_f64(v23, v23);
    if (sqrt(v28.f64[0] + vaddvq_f64(vmulq_f64(v24, v24))) > 0.000001)
    {
      goto LABEL_19;
    }

LABEL_22:
    v34 = *(a3 + 16);
    *&v35.f64[0] = vdupq_laneq_s64(v34, 1).u64[0];
    v28.f64[0] = *(a3 + 40);
    v36.i64[0] = *(a3 + 16);
    v36.i64[1] = *&v28.f64[0];
    v37.i64[0] = vdupq_laneq_s64(*a3, 1).u64[0];
    v38 = *(a3 + 56);
    v37.i64[1] = *(a3 + 32);
    v63 = *a3;
    v64 = v34;
    v65 = v37;
    v66 = v28;
    v67 = v36;
    v68 = v38;
    v35.f64[1] = *(a3 + 48);
    v82 = vnegq_f64(v35);
    v83 = vnegq_f64(vdupq_laneq_s64(v38, 1));
    geom::vertex_placement_constraints<double>::add_objective_function(v69, &v63, &v82, v83.f64[0], v82.f64[0], v35, v28.f64[0], *v36.i64, v37);
    v13 = v77;
    if (v77 > 2u)
    {
      goto LABEL_26;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v82 = 0u;
    v83 = 0u;
    v78 = COERCE_DOUBLE(&unk_2862913D8);
    v79 = &v63;
    v80 = &v82;
    v81 = &v78;
    geom::vertex_placement_constraint_factory<double>::loop_edge_triangles(v62, a2, &v78);
    goto LABEL_24;
  }

  if (v77 == 1)
  {
    v24 = v63;
    v23 = v64;
    v29 = vaddq_f64(vzip1q_s64(vmulq_f64(v70, v70), vmulq_f64(v23, v23)), vpaddq_f64(vmulq_f64(*v69, *v69), vmulq_f64(v24, v24)));
    v30 = vmulq_f64(v70, v64).f64[0];
    v28 = vmulq_f64(*v69, v63);
    v28.f64[0] = vaddvq_f64(v28);
    if ((v30 + v28.f64[0]) * (v30 + v28.f64[0]) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v29, v29, 1).f64[0])
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v77 != 2)
  {
    goto LABEL_26;
  }

  v18.f64[0] = v70.f64[0];
  v19.f64[0] = v72.f64[0];
  v19.f64[1] = v71.f64[0];
  v20 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v70), v71, 1), v72, *v69, 1);
  v18.f64[1] = *v69;
  v21 = vmlaq_f64(vmulq_f64(v19, vnegq_f64(*v69)), v71, v18);
  v22 = vmulq_f64(v20, v20);
  v20.f64[1] = v21.f64[0];
  v24 = v63;
  v23 = v64;
  v19.f64[0] = vmulq_laneq_f64(v64, v21, 1).f64[0];
  v20.f64[0] = vaddvq_f64(vmulq_f64(v63, v20));
  v19.f64[0] = (v19.f64[0] + v20.f64[0]) * (v19.f64[0] + v20.f64[0]);
  v25 = vmulq_f64(v21, v21);
  *&v20.f64[0] = *&vmulq_f64(v23, v23);
  v26 = vmulq_f64(v24, v24);
  *&v20.f64[1] = v25.i64[1];
  v27 = vaddq_f64(v20, vaddq_f64(vzip1q_s64(v26, v22), vextq_s8(v26, v25, 8uLL)));
  v28 = vmulq_laneq_f64(v27, v27, 1);
  if (v19.f64[0] <= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * v28.f64[0])
  {
    goto LABEL_22;
  }

LABEL_19:
  v31 = &v69[8 * v77];
  *v31 = v24;
  *(v31 + 1) = v23;
  v32 = v77;
  v33 = 2;
  if (v77 < 2uLL)
  {
    v33 = v77;
  }

  v75.f64[v33] = v17;
  v13 = v32 + 1;
  v77 = v13;
  if (v13 <= 2u)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v13 == 3)
  {
    v63 = vzip1q_s64(*v69, v71);
    v64 = v73;
    v65 = vzip2q_s64(*v69, v71);
    v66 = vdupq_laneq_s64(v73, 1);
    v67 = vzip1q_s64(v70, v72);
    v68 = v74;
    __invert_d3();
    v45 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v83, v75.f64[0]), v85, v75, 1), v87, *&v76);
    v46 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v82, v75.f64[0]), v84, v75, 1), v86, *&v76);
  }

  else
  {
    v47 = a1[27];
    if (v10 >= (a1[28] - v47) >> 2)
    {
      v49 = 0xFFFFFFFFLL;
      v50 = 0xFFFFFFFFLL;
    }

    else
    {
      v48 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v8, *(v47 + 4 * v10) / 3u, *(v47 + 4 * v10) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v8, v48, v69);
      v50 = v69[0];
      v49 = v69[1];
    }

    v51 = a1[1];
    v52 = (v51 + 32 * v50);
    v53 = (v51 + 32 * v49);
    __asm { FMOV            V2.2D, #0.5 }

    v45 = vmulq_f64(vaddq_f64(v52[1], v53[1]), _Q2);
    v46 = vmulq_f64(vaddq_f64(*v52, *v53), _Q2);
  }

  *a4 = v46;
  a4[1] = v45;
  v59 = *MEMORY[0x277D85DE8];
}

uint64_t geom::vertex_placement_constraint_factory<double>::add_shape_optimization(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = *(*a1 + 184);
  v8 = (*(*a1 + 192) - v7) >> 2;
  if (v8 <= a2)
  {
    *v56 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v5, half_edge_for_face_vertex, v56);
    v5 = *a1;
    v7 = *(*a1 + 184);
    v8 = (*(*a1 + 192) - v7) >> 2;
  }

  if (v8 <= v6 || (v10 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, *(v7 + 4 * v6) / 3u, *(v7 + 4 * v6) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v5, v10)))
  {
    half_edge_face = -1;
    goto LABEL_16;
  }

  v11 = *(*(v5 + 23) + 4 * v6);
  v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, v11 / 3, v11 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, v12);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v5, v12))
  {
LABEL_16:
    v18 = -1;
    goto LABEL_17;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(v5, v12);
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, half_edge_twin);
  v16 = 0;
  v17 = *(*a1 + 16) + 4 * (3 * v15);
  v52[0].f64[0] = *v17;
  LODWORD(v52[0].f64[1]) = *(v17 + 8);
  while (1)
  {
    v18 = *(v52[0].f64 + v16);
    if (v18 != v56[0] && v18 != v56[1])
    {
      break;
    }

    v16 += 4;
    if (v16 == 12)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v20 = 0;
  v21 = *a1;
  v22 = *(*a1 + 16) + 4 * (3 * half_edge_face);
  v52[0].f64[0] = *v22;
  LODWORD(v52[0].f64[1]) = *(v22 + 8);
  while (1)
  {
    v23 = *(v52[0].f64 + v20);
    if (v23 != v56[0] && v23 != v56[1])
    {
      break;
    }

    v20 += 4;
    if (v20 == 12)
    {
      v23 = -1;
      break;
    }
  }

  v50 = 0u;
  v51 = 0u;
  __p = 0;
  v48 = 0;
  v49 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(v21, v56[0], &__p);
  v26 = __p;
  if (__p == v48)
  {
    *&v25 = 0;
    v28 = 0uLL;
    v27 = 0uLL;
  }

  else
  {
    v27 = 0uLL;
    *&v25 = 0;
    v28 = 0uLL;
    do
    {
      v29 = *v26;
      if (v29 != v56[1])
      {
        v30 = (*(a1 + 8) + 32 * v29);
        v27 = vaddq_f64(*v30, v27);
        v28 = vaddq_f64(v30[1], v28);
        v50 = v27;
        v51 = v28;
        *&v25 = *&v25 + 1.0;
      }

      ++v26;
    }

    while (v26 != v48);
  }

  v44 = v28;
  v45 = v27;
  v46 = v25;
  geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(*a1, v56[1], &__p);
  v34 = __p;
  if (__p == v48)
  {
    v35 = v46;
  }

  else
  {
    v32 = v45;
    v35 = v46;
    v33 = v44;
    do
    {
      v36 = *v34;
      if (v36 != v18 && v36 != v23 && v36 != v56[0])
      {
        v39 = (*(a1 + 8) + 32 * v36);
        v31 = *v39;
        v32 = vaddq_f64(*v39, v32);
        v33 = vaddq_f64(v39[1], v33);
        v50 = v32;
        v51 = v33;
        *&v35 = *&v35 + 1.0;
      }

      ++v34;
    }

    while (v34 != v48);
  }

  v40.f64[0] = 0.0;
  v52[0] = v35;
  v52[1] = 0u;
  v52[3] = 0u;
  *&v40.f64[1] = v35;
  v52[2] = v40;
  v53 = 0;
  v54 = 0;
  v55 = v35;
  geom::vertex_placement_constraints<double>::add_objective_function(a3, v52, &v50, 0.0, *&v35, v31, v32.f64[0], *&v35, v33);
  v41 = *(a3 + 128);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t geom::vertex_placement_constraints<double>::add_objective_function(uint64_t a1, float64x2_t *a2, float64x2_t *a3, double a4, double a5, int64x2_t a6, double a7, double a8, int64x2_t a9)
{
  v9 = *(a1 + 128);
  if (v9 != 2)
  {
    if (v9 != 1)
    {
      if (!*(a1 + 128))
      {
        v10 = *&a3->f64[0];
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v269 = a1;
          v257 = a2;
          v245 = a3;
          v233 = v10;
          geom::vertex_placement_constraints<double>::add_objective_function();
          v10 = v233;
          a3 = v245;
          a2 = v257;
          a1 = v269;
        }

        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v270 = a1;
          v258 = a2;
          v246 = a3;
          v234 = v10;
          geom::vertex_placement_constraints<double>::add_objective_function();
          v10 = v234;
          a3 = v246;
          a2 = v258;
          a1 = v270;
        }

        v11 = *(a1 + 128);
        if (v11 == 2)
        {
          v135 = *(a1 + 16);
          v136 = *(a1 + 32);
          v137.f64[0] = *(a1 + 48);
          v137.f64[1] = *(a1 + 32);
          v138 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v135), v136, 1), *(a1 + 48), *a1, 1);
          v135.f64[1] = *a1;
          v139 = vmlaq_f64(vmulq_f64(v137, vnegq_f64(*a1)), v136, v135);
          v140 = vmulq_f64(v138, v138);
          v138.f64[1] = v139.f64[0];
          v12 = *a2;
          v13 = a2[1];
          v137.f64[0] = vmulq_laneq_f64(v13, v139, 1).f64[0];
          v138.f64[0] = vaddvq_f64(vmulq_f64(*a2, v138));
          v137.f64[0] = (v137.f64[0] + v138.f64[0]) * (v137.f64[0] + v138.f64[0]);
          v141 = vmulq_f64(v139, v139);
          *&v138.f64[0] = *&vmulq_f64(v13, v13);
          v142 = vmulq_f64(v12, v12);
          *&v138.f64[1] = v141.i64[1];
          v143 = vaddq_f64(v138, vaddq_f64(vzip1q_s64(v142, v140), vextq_s8(v142, v141, 8uLL)));
          if (v137.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v143, v143, 1).f64[0])
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v11 != 1)
          {
            if (*(a1 + 128))
            {
              goto LABEL_67;
            }

            v12 = *a2;
            v13 = a2[1];
            if (sqrt(vmulq_f64(v13, v13).f64[0] + vaddvq_f64(vmulq_f64(v12, v12))) <= 0.000001)
            {
              goto LABEL_67;
            }

LABEL_61:
            v121 = (a1 + 32 * v11);
            *v121 = v12;
            v121[1] = v13;
            v122 = *(a1 + 128);
            v123 = 2;
            if (v122 < 2)
            {
              v123 = *(a1 + 128);
            }

            *(a1 + 8 * v123 + 96) = v10;
            *(a1 + 128) = v122 + 1;
            v124 = 1;
LABEL_68:
            v144 = *&a3->f64[1];
            if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
            {
              v271 = a1;
              v259 = a2;
              v247 = a3;
              v235 = v124;
              v223 = v144;
              geom::vertex_placement_constraints<double>::add_objective_function();
              v144 = v223;
              v124 = v235;
              a3 = v247;
              a2 = v259;
              a1 = v271;
            }

            if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
            {
              v272 = a1;
              v260 = a2;
              v248 = a3;
              v236 = v124;
              v224 = v144;
              geom::vertex_placement_constraints<double>::add_objective_function();
              v144 = v224;
              v124 = v236;
              a3 = v248;
              a2 = v260;
              a1 = v272;
            }

            v145 = *(a1 + 128);
            if (v145 == 2)
            {
              v155 = *(a1 + 16);
              v156 = *(a1 + 32);
              v157.f64[0] = *(a1 + 48);
              v157.f64[1] = *(a1 + 32);
              v158 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v155), v156, 1), *(a1 + 48), *a1, 1);
              v155.f64[1] = *a1;
              v159 = vmlaq_f64(vmulq_f64(v157, vnegq_f64(*a1)), v156, v155);
              v160 = vmulq_f64(v158, v158);
              v158.f64[1] = v159.f64[0];
              v146 = a2[2];
              v147 = a2[3];
              v157.f64[0] = vmulq_laneq_f64(v147, v159, 1).f64[0];
              v158.f64[0] = vaddvq_f64(vmulq_f64(v146, v158));
              v157.f64[0] = (v157.f64[0] + v158.f64[0]) * (v157.f64[0] + v158.f64[0]);
              v161 = vmulq_f64(v159, v159);
              *&v158.f64[0] = *&vmulq_f64(v147, v147);
              v162 = vmulq_f64(v146, v146);
              *&v158.f64[1] = v161.i64[1];
              v163 = vaddq_f64(v158, vaddq_f64(vzip1q_s64(v162, v160), vextq_s8(v162, v161, 8uLL)));
              if (v157.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v163, v163, 1).f64[0])
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (v145 != 1)
              {
                if (*(a1 + 128))
                {
                  goto LABEL_82;
                }

                v146 = a2[2];
                v147 = a2[3];
                if (sqrt(vmulq_f64(v147, v147).f64[0] + vaddvq_f64(vmulq_f64(v146, v146))) <= 0.000001)
                {
                  goto LABEL_82;
                }

LABEL_78:
                v151 = (a1 + 32 * v145);
                *v151 = v146;
                v151[1] = v147;
                v152 = *(a1 + 128);
                v153 = 2;
                if (v152 < 2)
                {
                  v153 = *(a1 + 128);
                }

                *(a1 + 8 * v153 + 96) = v144;
                *(a1 + 128) = v152 + 1;
                v154 = 1;
LABEL_83:
                v116 = a3[1].f64[0];
                if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
                {
                  v273 = a1;
                  v261 = a2;
                  v237 = v124;
                  v249 = v116;
                  v225 = v154;
                  geom::vertex_placement_constraints<double>::add_objective_function();
                  v154 = v225;
                  v116 = v249;
                  v124 = v237;
                  a2 = v261;
                  a1 = v273;
                }

                if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
                {
                  v274 = a1;
                  v262 = a2;
                  v238 = v124;
                  v250 = v116;
                  v226 = v154;
                  geom::vertex_placement_constraints<double>::add_objective_function();
                  v154 = v226;
                  v116 = v250;
                  v124 = v238;
                  a2 = v262;
                  a1 = v274;
                }

                v73 = v124 | v154;
                v164 = *(a1 + 128);
                if (v164 == 2)
                {
                  v174 = *(a1 + 16);
                  v175 = *(a1 + 32);
                  v176.f64[0] = *(a1 + 48);
                  v176.f64[1] = *(a1 + 32);
                  v177 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v174), v175, 1), *(a1 + 48), *a1, 1);
                  v174.f64[1] = *a1;
                  v178 = vmlaq_f64(vmulq_f64(v176, vnegq_f64(*a1)), v175, v174);
                  v179 = vmulq_f64(v177, v177);
                  v177.f64[1] = v178.f64[0];
                  v165 = a2[4];
                  v166 = a2[5];
                  v176.f64[0] = vmulq_laneq_f64(v166, v178, 1).f64[0];
                  v177.f64[0] = vaddvq_f64(vmulq_f64(v165, v177));
                  v176.f64[0] = (v176.f64[0] + v177.f64[0]) * (v176.f64[0] + v177.f64[0]);
                  v180 = vmulq_f64(v178, v178);
                  *&v177.f64[0] = *&vmulq_f64(v166, v166);
                  v181 = vmulq_f64(v165, v165);
                  *&v177.f64[1] = v180.i64[1];
                  v182 = vaddq_f64(v177, vaddq_f64(vzip1q_s64(v181, v179), vextq_s8(v181, v180, 8uLL)));
                  if (v176.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v182, v182, 1).f64[0])
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  if (v164 != 1)
                  {
                    if (*(a1 + 128))
                    {
                      goto LABEL_98;
                    }

                    v165 = a2[4];
                    v166 = a2[5];
                    if (sqrt(vmulq_f64(v166, v166).f64[0] + vaddvq_f64(vmulq_f64(v165, v165))) <= 0.000001)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_93;
                  }

                  v167 = *(a1 + 16);
                  v165 = a2[4];
                  v166 = a2[5];
                  v168 = vaddq_f64(vzip1q_s64(vmulq_f64(v167, v167), vmulq_f64(v166, v166)), vpaddq_f64(vmulq_f64(*a1, *a1), vmulq_f64(v165, v165)));
                  v167.f64[0] = vmulq_f64(v167, v166).f64[0];
                  v169 = vaddvq_f64(vmulq_f64(*a1, v165));
                  if ((v167.f64[0] + v169) * (v167.f64[0] + v169) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v168, v168, 1).f64[0])
                  {
LABEL_93:
                    v170 = (a1 + 32 * v164);
                    *v170 = v165;
                    v170[1] = v166;
                    goto LABEL_94;
                  }
                }

LABEL_98:
                v173 = 0;
                return v73 | v173;
              }

              v148 = *(a1 + 16);
              v146 = a2[2];
              v147 = a2[3];
              v149 = vaddq_f64(vzip1q_s64(vmulq_f64(v148, v148), vmulq_f64(v147, v147)), vpaddq_f64(vmulq_f64(*a1, *a1), vmulq_f64(v146, v146)));
              v148.f64[0] = vmulq_f64(v148, v147).f64[0];
              v150 = vaddvq_f64(vmulq_f64(*a1, v146));
              if ((v148.f64[0] + v150) * (v148.f64[0] + v150) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v149, v149, 1).f64[0])
              {
                goto LABEL_78;
              }
            }

LABEL_82:
            v154 = 0;
            goto LABEL_83;
          }

          v118 = *(a1 + 16);
          v12 = *a2;
          v13 = a2[1];
          v119 = vaddq_f64(vzip1q_s64(vmulq_f64(v118, v118), vmulq_f64(v13, v13)), vpaddq_f64(vmulq_f64(*a1, *a1), vmulq_f64(v12, v12)));
          v118.f64[0] = vmulq_f64(v118, v13).f64[0];
          v120 = vaddvq_f64(vmulq_f64(*a1, *a2));
          if ((v118.f64[0] + v120) * (v118.f64[0] + v120) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v119, v119, 1).f64[0])
          {
            goto LABEL_61;
          }
        }

LABEL_67:
        v124 = 0;
        goto LABEL_68;
      }

      return 0;
    }

    v15 = *a1;
    v14 = *(a1 + 16);
    v16 = fabs(v14.f64[0]);
    v17 = *(a1 + 8);
    if (v16 <= 2.22044605e-16)
    {
      *a9.i64 = -v17;
      v19 = 0uLL;
      v18 = vzip1q_s64(a9, v15);
    }

    else
    {
      v18.f64[0] = 0.0;
      v18.f64[1] = -v14.f64[0];
      v19 = vdupq_laneq_s64(v15, 1);
    }

    v37 = vmulq_f64(v19, v19);
    v37.f64[0] = 1.0 / sqrt(v37.f64[0] + vaddvq_f64(vmulq_f64(v18, v18)));
    v38 = vmulq_f64(v19, v37);
    v39 = vmulq_n_f64(v18, v37.f64[0]);
    v40 = vextq_s8(v39, v39, 8uLL);
    if (v16 <= 2.22044605e-16)
    {
      *a6.i64 = -v17;
      v41 = 0uLL;
      v42 = vzip1q_s64(a6, v15);
    }

    else
    {
      v41 = vdupq_laneq_s64(v15, 1);
      v42.f64[0] = 0.0;
      v42.f64[1] = -v14.f64[0];
    }

    v43 = vmulq_f64(v41, v41);
    v52 = vmulq_f64(v42, v42);
    v43.f64[0] = 1.0 / sqrt(v43.f64[0] + vaddvq_f64(v52));
    v44 = vmulq_n_f64(v42, v43.f64[0]);
    v45 = vmulq_f64(v41, v43);
    v46.f64[0] = v45.f64[0];
    v46.f64[1] = v44.f64[0];
    v47 = vnegq_f64(v14);
    v14.f64[1] = *a1;
    v48 = vmlaq_laneq_f64(vmulq_laneq_f64(v47, v44, 1), v45, v15, 1);
    v49 = vmlaq_f64(vmulq_f64(v46, vnegq_f64(v15)), v44, v14);
    v50 = vmulq_f64(v49, v49);
    v51 = vmulq_f64(v48, v48).f64[0];
    v48.f64[1] = v49.f64[0];
    v52.f64[0] = 1.0 / sqrt(v50.f64[1] + v51 + v50.f64[0]);
    v53 = vmulq_n_f64(v48, v52.f64[0]);
    v54 = a2[5];
    v55 = vmlaq_f64(vmulq_f64(v39, a2[1]), v40, a2[3]);
    v56 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*a2, v39.f64[0]), a2[2], v40.f64[0]), a2[4], v38.f64[0]);
    v58 = *a3;
    v57 = a3[1];
    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
    {
      v263 = a1;
      v251 = a2;
      v239 = a3;
      v227 = v53;
      v199 = v39.f64[0];
      v205 = v38;
      v191 = v56;
      v195 = v40.f64[0];
      v187 = v57;
      v189 = v55;
      v185 = v58;
      v211 = v52;
      v217 = v49;
      v183 = v54;
      geom::vertex_placement_constraints<double>::add_objective_function();
      v54 = v183;
      v58 = v185;
      v52 = v211;
      v49 = v217;
      v57 = v187;
      v55 = v189;
      v56 = v191;
      v40.f64[0] = v195;
      v39.f64[0] = v199;
      v38 = v205;
      v53 = v227;
      a3 = v239;
      a2 = v251;
      a1 = v263;
    }

    v59 = vextq_s8(v53, v53, 8uLL);
    v60 = vmulq_laneq_f64(v52, v49, 1);
    v61 = vmlaq_f64(v55, v38, v54);
    *&v62 = vextq_s8(v56, v56, 8uLL).u64[0];
    if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
    {
      v264 = a1;
      v252 = a2;
      v240 = a3;
      v218 = v60;
      v228 = v53;
      v212 = v59;
      v200 = v39.f64[0];
      v206 = v38;
      v192 = v56;
      v196 = v40.f64[0];
      v188 = v57;
      v190 = v61;
      v184 = v62;
      v186 = v58;
      geom::vertex_placement_constraints<double>::add_objective_function();
      v62 = v184;
      v58 = v186;
      v57 = v188;
      v61 = v190;
      v56 = v192;
      v40.f64[0] = v196;
      v39.f64[0] = v200;
      v38 = v206;
      v59 = v212;
      v60 = v218;
      v53 = v228;
      a3 = v240;
      a2 = v252;
      a1 = v264;
    }

    v63 = *(a1 + 128);
    if (v63 == 2)
    {
      v83 = *(a1 + 16);
      v84 = *(a1 + 32);
      v85 = *(a1 + 48);
      v86 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v83), v84, 1), v85, *a1, 1);
      v85.f64[1] = *(a1 + 32);
      v83.f64[1] = *a1;
      v87 = vmlaq_f64(vmulq_f64(v85, vnegq_f64(*a1)), v84, v83);
      v88 = vmulq_f64(v86, v86);
      v86.f64[1] = v87.f64[0];
      v84.f64[0] = v56.f64[0];
      v84.f64[1] = v62;
      v89 = vmulq_f64(v84, v86);
      v86.f64[0] = vmulq_laneq_f64(v61, v87, 1).f64[0];
      v89.f64[0] = vaddvq_f64(v89);
      v89.f64[0] = (v86.f64[0] + v89.f64[0]) * (v86.f64[0] + v89.f64[0]);
      v90 = vmulq_f64(v87, v87);
      v91 = vmulq_f64(v84, v84);
      *&v86.f64[0] = *&vmulq_f64(v61, v61);
      *&v86.f64[1] = v90.i64[1];
      v92 = vaddq_f64(v86, vaddq_f64(vzip1q_s64(v91, v88), vextq_s8(v91, v90, 8uLL)));
      if (v89.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v92, v92, 1).f64[0])
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v63 != 1)
      {
        if (*(a1 + 128))
        {
          goto LABEL_46;
        }

        v64.f64[0] = v56.f64[0];
        v64.f64[1] = v62;
        if (sqrt(vmulq_f64(v61, v61).f64[0] + vaddvq_f64(vmulq_f64(v64, v64))) <= 0.000001)
        {
          goto LABEL_46;
        }

LABEL_38:
        v39.f64[1] = v40.f64[0];
        v69 = vmulq_f64(v38, v57).f64[0] + vaddvq_f64(vmulq_f64(v39, v58));
        v70 = (a1 + 32 * v63);
        *v70 = v56;
        v70[1] = v61;
        v71 = *(a1 + 128);
        v72 = 2;
        if (v71 < 2)
        {
          v72 = *(a1 + 128);
        }

        *(a1 + 8 * v72 + 96) = v69;
        *(a1 + 128) = v71 + 1;
        v73 = 1;
LABEL_47:
        v93 = a2[5];
        v94 = vmlaq_f64(vmulq_f64(v53, a2[1]), v59, a2[3]);
        v95 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*a2, v53.f64[0]), a2[2], v59.f64[0]), a2[4], v60.f64[0]);
        v97 = *a3;
        v96 = a3[1];
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v265 = a1;
          v253 = v73;
          v219 = v60;
          v229 = v53.f64[0];
          v213 = v59.f64[0];
          v241 = v95;
          v201 = v96;
          v207 = v94;
          v193 = v93;
          v197 = v97;
          geom::vertex_placement_constraints<double>::add_objective_function();
          v93 = v193;
          v97 = v197;
          v96 = v201;
          v94 = v207;
          v53.f64[0] = v229;
          v95 = v241;
          v59.f64[0] = v213;
          v60 = v219;
          v73 = v253;
          a1 = v265;
        }

        v98 = vmlaq_f64(v94, v60, v93);
        *&v99 = vextq_s8(v95, v95, 8uLL).u64[0];
        if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
        {
          v266 = a1;
          v254 = v73;
          v220 = v60;
          v230 = v53.f64[0];
          v214 = v59.f64[0];
          v242 = v95;
          v202 = v96;
          v208 = v98;
          v194 = v99;
          v198 = v97;
          geom::vertex_placement_constraints<double>::add_objective_function();
          v99 = v194;
          v97 = v198;
          v96 = v202;
          v98 = v208;
          v53.f64[0] = v230;
          v95 = v242;
          v59.f64[0] = v214;
          v60 = v220;
          v73 = v254;
          a1 = v266;
        }

        v100 = *(a1 + 128);
        if (v100 == 2)
        {
          v106 = *(a1 + 16);
          v107 = *(a1 + 32);
          v108 = *(a1 + 48);
          v109 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v106), v107, 1), v108, *a1, 1);
          v108.f64[1] = *(a1 + 32);
          v106.f64[1] = *a1;
          v110 = vmlaq_f64(vmulq_f64(v108, vnegq_f64(*a1)), v107, v106);
          v111 = vmulq_f64(v109, v109);
          v109.f64[1] = v110.f64[0];
          v107.f64[0] = v95.f64[0];
          v107.f64[1] = v99;
          v112 = vmulq_f64(v107, v109);
          v109.f64[0] = vmulq_laneq_f64(v98, v110, 1).f64[0];
          v112.f64[0] = vaddvq_f64(v112);
          v112.f64[0] = (v109.f64[0] + v112.f64[0]) * (v109.f64[0] + v112.f64[0]);
          v113 = vmulq_f64(v110, v110);
          v114 = vmulq_f64(v107, v107);
          *&v109.f64[0] = *&vmulq_f64(v98, v98);
          *&v109.f64[1] = v113.i64[1];
          v115 = vaddq_f64(v109, vaddq_f64(vzip1q_s64(v114, v111), vextq_s8(v114, v113, 8uLL)));
          if (v112.f64[0] <= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v115, v115, 1).f64[0])
          {
            goto LABEL_98;
          }
        }

        else if (v100 == 1)
        {
          v102 = *(a1 + 16);
          v103.f64[0] = v95.f64[0];
          v103.f64[1] = v99;
          v104 = vaddq_f64(vzip1q_s64(vmulq_f64(v98, v98), vmulq_f64(v102, v102)), vpaddq_f64(vmulq_f64(v103, v103), vmulq_f64(*a1, *a1)));
          v102.f64[0] = vmulq_f64(v98, v102).f64[0];
          v105 = vaddvq_f64(vmulq_f64(v95, *a1));
          if ((v102.f64[0] + v105) * (v102.f64[0] + v105) >= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v104, v104, 1).f64[0])
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (*(a1 + 128))
          {
            goto LABEL_98;
          }

          v101.f64[0] = v95.f64[0];
          v101.f64[1] = v99;
          if (sqrt(vmulq_f64(v98, v98).f64[0] + vaddvq_f64(vmulq_f64(v101, v101))) <= 0.000001)
          {
            goto LABEL_98;
          }
        }

        v53.f64[1] = v59.f64[0];
        v116 = vmulq_f64(v60, v96).f64[0] + vaddvq_f64(vmulq_f64(v53, v97));
        v117 = (a1 + 32 * v100);
        *v117 = v95;
        v117[1] = v98;
LABEL_94:
        v171 = *(a1 + 128);
        v172 = 2;
        if (v171 < 2)
        {
          v172 = *(a1 + 128);
        }

        *(a1 + 8 * v172 + 96) = v116;
        *(a1 + 128) = v171 + 1;
        v173 = 1;
        return v73 | v173;
      }

      v65 = *(a1 + 16);
      v66.f64[0] = v56.f64[0];
      v66.f64[1] = v62;
      v67 = vaddq_f64(vzip1q_s64(vmulq_f64(v61, v61), vmulq_f64(v65, v65)), vpaddq_f64(vmulq_f64(v66, v66), vmulq_f64(*a1, *a1)));
      v65.f64[0] = vmulq_f64(v61, v65).f64[0];
      v68 = vaddvq_f64(vmulq_f64(v56, *a1));
      if ((v65.f64[0] + v68) * (v65.f64[0] + v68) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v67, v67, 1).f64[0])
      {
        goto LABEL_38;
      }
    }

LABEL_46:
    v73 = 0;
    goto LABEL_47;
  }

  v20 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v20), v21, 1), v22, *a1, 1);
  v22.f64[1] = *(a1 + 32);
  v20.f64[1] = *a1;
  v24 = vmlaq_f64(vmulq_f64(v22, vnegq_f64(*a1)), v21, v20);
  v25 = vmulq_f64(v24, v24);
  v21.f64[0] = vmulq_f64(v23, v23).f64[0];
  v23.f64[1] = v24.f64[0];
  v25.f64[0] = 1.0 / sqrt(v25.f64[1] + v21.f64[0] + v25.f64[0]);
  v26 = vmulq_laneq_f64(v25, v24, 1);
  v27 = vmulq_n_f64(v23, v25.f64[0]);
  v28 = a2[5];
  v29 = vmlaq_laneq_f64(vmulq_f64(a2[1], v27), a2[3], v27, 1);
  v30 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a2, v27.f64[0]), a2[2], v27, 1), a2[4], v26.f64[0]);
  v31 = *a3;
  v32 = a3[1];
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v267 = a1;
    v243 = v27;
    v255 = v26;
    v221 = v29;
    v231 = v30;
    v215 = v31;
    v203 = v28;
    v209 = v32;
    geom::vertex_placement_constraints<double>::add_objective_function();
    v28 = v203;
    v32 = v209;
    v31 = v215;
    v29 = v221;
    v30 = v231;
    v27 = v243;
    v26 = v255;
    a1 = v267;
  }

  v33 = vmlaq_f64(v29, v26, v28);
  *&v34 = vextq_s8(v30, v30, 8uLL).u64[0];
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v268 = a1;
    v244 = v27;
    v256 = v26;
    v222 = v33;
    v232 = v30;
    v216 = v31;
    v204 = v34;
    v210 = v32;
    geom::vertex_placement_constraints<double>::add_objective_function();
    v34 = v204;
    v32 = v210;
    v31 = v216;
    v33 = v222;
    v30 = v232;
    v27 = v244;
    v26 = v256;
    a1 = v268;
  }

  v35 = *(a1 + 128);
  if (v35 == 2)
  {
    v125 = *(a1 + 16);
    v126 = *(a1 + 32);
    v127 = *(a1 + 48);
    v128 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v125), v126, 1), v127, *a1, 1);
    v127.f64[1] = *(a1 + 32);
    v125.f64[1] = *a1;
    v129 = vmlaq_f64(vmulq_f64(v127, vnegq_f64(*a1)), v126, v125);
    v130 = vmulq_f64(v128, v128);
    v128.f64[1] = v129.f64[0];
    v126.f64[0] = v30.f64[0];
    v126.f64[1] = v34;
    v131 = vmulq_f64(v126, v128);
    v128.f64[0] = vmulq_laneq_f64(v33, v129, 1).f64[0];
    v131.f64[0] = vaddvq_f64(v131);
    v131.f64[0] = (v128.f64[0] + v131.f64[0]) * (v128.f64[0] + v131.f64[0]);
    v132 = vmulq_f64(v129, v129);
    v133 = vmulq_f64(v126, v126);
    *&v128.f64[0] = *&vmulq_f64(v33, v33);
    *&v128.f64[1] = v132.i64[1];
    v134 = vaddq_f64(v128, vaddq_f64(vzip1q_s64(v133, v130), vextq_s8(v133, v132, 8uLL)));
    if (v131.f64[0] <= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v134, v134, 1).f64[0])
    {
      return 0;
    }
  }

  else if (v35 == 1)
  {
    v74 = *(a1 + 16);
    v75.f64[0] = v30.f64[0];
    v75.f64[1] = v34;
    v76 = vaddq_f64(vzip1q_s64(vmulq_f64(v33, v33), vmulq_f64(v74, v74)), vpaddq_f64(vmulq_f64(v75, v75), vmulq_f64(*a1, *a1)));
    v74.f64[0] = vmulq_f64(v33, v74).f64[0];
    v77 = vaddvq_f64(vmulq_f64(v30, *a1));
    if ((v74.f64[0] + v77) * (v74.f64[0] + v77) >= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v76, v76, 1).f64[0])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128))
    {
      return 0;
    }

    v36.f64[0] = v30.f64[0];
    v36.f64[1] = v34;
    if (sqrt(vmulq_f64(v33, v33).f64[0] + vaddvq_f64(vmulq_f64(v36, v36))) <= 0.000001)
    {
      return 0;
    }
  }

  v78 = vmulq_f64(v32, v26).f64[0] + vaddvq_f64(vmulq_f64(v31, v27));
  v79 = (a1 + 32 * v35);
  *v79 = v30;
  v79[1] = v33;
  v80 = *(a1 + 128);
  v81 = 2;
  if (v80 < 2)
  {
    v81 = *(a1 + 128);
  }

  *(a1 + 8 * v81 + 96) = v78;
  *(a1 + 128) = v80 + 1;
  return 1;
}