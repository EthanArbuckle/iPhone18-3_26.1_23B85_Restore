int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *,0>(int *result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a2 <= *result;
  if (*a2 == *result)
  {
    v5 = a2[1];
    v6 = result[1];
    v4 = v5 <= v6;
    if (v5 == v6)
    {
      v4 = a2[2] <= result[2];
    }
  }

  if (v4)
  {
    v11 = *a3 <= v3;
    if (*a3 == v3)
    {
      v12 = a3[1];
      v13 = a2[1];
      v11 = v12 <= v13;
      if (v12 == v13)
      {
        v11 = a3[2] <= a2[2];
      }
    }

    if (!v11)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *a2 <= *result;
      if (*a2 == *result)
      {
        v16 = a2[1];
        v17 = result[1];
        v15 = v16 <= v17;
        if (v16 == v17)
        {
          v15 = a2[2] <= result[2];
        }
      }

      if (!v15)
      {
        v18 = *result;
        *result = *a2;
        *a2 = v18;
      }
    }
  }

  else
  {
    v7 = *a3 <= v3;
    if (*a3 == v3)
    {
      v8 = a3[1];
      v9 = a2[1];
      v7 = v8 <= v9;
      if (v8 == v9)
      {
        v7 = a3[2] <= a2[2];
      }
    }

    if (!v7)
    {
      v10 = *result;
      *result = *a3;
LABEL_24:
      *a3 = v10;
      return result;
    }

    v19 = *result;
    *result = *a2;
    *a2 = v19;
    v20 = *a3 <= *a2;
    if (*a3 == *a2)
    {
      v21 = a3[1];
      v22 = a2[1];
      v20 = v21 <= v22;
      if (v21 == v22)
      {
        v20 = a3[2] <= a2[2];
      }
    }

    if (!v20)
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_24;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  v11 = *a4 <= *a3;
  if (*a4 == *a3)
  {
    v12 = a4[1];
    v13 = a3[1];
    v11 = v12 <= v13;
    if (v12 == v13)
    {
      v11 = a4[2] <= a3[2];
    }
  }

  if (!v11)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = *a3 <= *a2;
    if (*a3 == *a2)
    {
      v15 = a3[1];
      v16 = a2[1];
      v14 = v15 <= v16;
      if (v15 == v16)
      {
        v14 = a3[2] <= a2[2];
      }
    }

    if (!v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v17 = *a2 <= *a1;
      if (*a2 == *a1)
      {
        v18 = a2[1];
        v19 = a1[1];
        v17 = v18 <= v19;
        if (v18 == v19)
        {
          v17 = a2[2] <= a1[2];
        }
      }

      if (!v17)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  v20 = *a5 <= *a4;
  if (*a5 == *a4)
  {
    v21 = a5[1];
    v22 = a4[1];
    v20 = v21 <= v22;
    if (v21 == v22)
    {
      v20 = a5[2] <= a4[2];
    }
  }

  if (!v20)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    v23 = *a4 <= *a3;
    if (*a4 == *a3)
    {
      v24 = a4[1];
      v25 = a3[1];
      v23 = v24 <= v25;
      if (v24 == v25)
      {
        v23 = a4[2] <= a3[2];
      }
    }

    if (!v23)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      v26 = *a3 <= *a2;
      if (*a3 == *a2)
      {
        v27 = a3[1];
        v28 = a2[1];
        v26 = v27 <= v28;
        if (v27 == v28)
        {
          v26 = a3[2] <= a2[2];
        }
      }

      if (!v26)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        v29 = *a2 <= *a1;
        if (*a2 == *a1)
        {
          v30 = a2[1];
          v31 = a1[1];
          v29 = v30 <= v31;
          if (v30 == v31)
          {
            v29 = a2[2] <= a1[2];
          }
        }

        if (!v29)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        v23 = a2 - 4;
        v24 = *(a2 - 4);
        v25 = a1[8];
        v26 = v24 <= v25;
        if (v24 == v25)
        {
          v27 = *(a2 - 3);
          v28 = a1[9];
          v26 = v27 <= v28;
          if (v27 == v28)
          {
            v26 = *(a2 - 2) <= a1[10];
          }
        }

        if (!v26)
        {
          v29 = *(a1 + 2);
          *(a1 + 2) = *v23;
          *v23 = v29;
          v30 = a1[8];
          v31 = a1[4];
          v32 = v30 <= v31;
          if (v30 == v31)
          {
            v33 = a1[9];
            v34 = a1[5];
            v32 = v33 <= v34;
            if (v33 == v34)
            {
              v32 = a1[10] <= a1[6];
            }
          }

          if (!v32)
          {
            v35 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v35;
            v36 = a1[4];
            v37 = v36 <= *a1;
            if (v36 == *a1)
            {
              v38 = a1[5];
              v39 = a1[1];
              v37 = v38 <= v39;
              if (v38 == v39)
              {
                v37 = a1[6] <= a1[2];
              }
            }

            if (!v37)
            {
              v40 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v40;
            }
          }
        }

        return 1;
      case 5:
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
      v5 = a2 - 4;
      v6 = *(a2 - 4);
      v7 = v6 <= *a1;
      if (v6 == *a1)
      {
        v8 = *(a2 - 3);
        v9 = a1[1];
        v7 = v8 <= v9;
        if (v8 == v9)
        {
          v7 = *(a2 - 2) <= a1[2];
        }
      }

      if (!v7)
      {
        v10 = *a1;
        *a1 = *v5;
        *v5 = v10;
      }

      return 1;
    }
  }

  v11 = a1 + 8;
  v12 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *v12;
    if (*v12 == *v11)
    {
      v16 = v12[1];
      v17 = v11[1];
      if (v16 == v17)
      {
        if (v12[2] <= v11[2])
        {
          goto LABEL_35;
        }
      }

      else if (v16 <= v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v15 <= *v11)
      {
        goto LABEL_35;
      }

      v16 = v12[1];
    }

    v18 = *(v12 + 1);
    *v12 = *v11;
    v19 = v13;
    while (1)
    {
      v20 = *(a1 + v19 + 16);
      v21 = v15 <= v20;
      if (v15 != v20)
      {
        goto LABEL_27;
      }

      v22 = *(a1 + v19 + 20);
      if (v16 == v22)
      {
        v21 = v18 <= *(a1 + v19 + 24);
LABEL_27:
        if (v21)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v16 <= v22)
      {
        break;
      }

LABEL_31:
      v11 -= 4;
      *(a1 + v19 + 32) = *(a1 + v19 + 16);
      v19 -= 16;
      if (v19 == -32)
      {
        v11 = a1;
        goto LABEL_34;
      }
    }

    v11 = (a1 + v19 + 32);
LABEL_34:
    *v11 = v15;
    v11[1] = v16;
    *(v11 + 1) = v18;
    if (++v14 != 8)
    {
LABEL_35:
      v11 = v12;
      v13 += 16;
      v12 += 4;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    return v12 + 4 == a2;
  }
}

void *std::vector<std::vector<int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::unordered_set<int>>::__init_with_size[abi:ne200100]<std::unordered_set<int> const*,std::unordered_set<int> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D262EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::unordered_set<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unordered_set<int>>,std::unordered_set<int> const*,std::unordered_set<int> const*,std::unordered_set<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::unordered_set<int>::unordered_set(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25D262FCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, i + 4);
  }

  return a1;
}

void std::vector<std::unordered_set<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v213 = a2 - 1;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

              case 4:
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = *(a2 - 1);
                v104 = v10[2];
                v105 = a3[1];
                v106 = **a3;
                do
                {
                  v107 = *(*(v106 + 24 * *v105) + 4 * v100);
                  if (v107 == v103)
                  {
                    v102 = v100;
                  }

                  if (v107 == v104)
                  {
                    v101 = v100;
                  }

                  ++v100;
                }

                while (v100 != 6);
                if (v102 < v101)
                {
                  v108 = 0;
                  v109 = 0;
                  v110 = 0;
                  v10[2] = v103;
                  *(a2 - 1) = v104;
                  v112 = v10[1];
                  v111 = v10[2];
                  do
                  {
                    v113 = *(*(v106 + 24 * *v105) + 4 * v108);
                    if (v113 == v111)
                    {
                      v110 = v108;
                    }

                    if (v113 == v112)
                    {
                      v109 = v108;
                    }

                    ++v108;
                  }

                  while (v108 != 6);
                  if (v110 < v109)
                  {
                    v114 = 0;
                    v115 = 0;
                    v116 = 0;
                    v10[1] = v111;
                    v10[2] = v112;
                    v117 = *v10;
                    v118 = *(v106 + 24 * *v105);
                    do
                    {
                      v119 = *(v118 + 4 * v114);
                      if (v119 == v111)
                      {
                        v116 = v114;
                      }

                      if (v119 == v117)
                      {
                        v115 = v114;
                      }

                      ++v114;
                    }

                    while (v114 != 6);
                    if (v116 < v115)
                    {
                      *v10 = v111;
                      v10[1] = v117;
                    }
                  }
                }

                return result;
              case 5:
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v94 = 0;
              v95 = 0;
              v96 = 0;
              v97 = *(a2 - 1);
              v98 = *v10;
              do
              {
                v99 = *(*(**a3 + 24 * *a3[1]) + 4 * v94);
                if (v99 == v97)
                {
                  v96 = v94;
                }

                if (v99 == v98)
                {
                  v95 = v94;
                }

                ++v94;
              }

              while (v94 != 6);
              if (v96 < v95)
              {
                *v10 = v97;
                *(a2 - 1) = v98;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v120 = v10 + 1;
                if (v10 + 1 != a2)
                {
                  v121 = a3[1];
                  v122 = **a3;
                  v123 = v10;
                  do
                  {
                    v124 = 0;
                    v125 = 0;
                    v126 = 0;
                    v127 = v123;
                    v123 = v120;
                    v129 = *v127;
                    v128 = v127[1];
                    result = *(v122 + 24 * *v121);
                    do
                    {
                      v130 = *(result + 4 * v124);
                      if (v130 == v128)
                      {
                        v126 = v124;
                      }

                      if (v130 == v129)
                      {
                        v125 = v124;
                      }

                      ++v124;
                    }

                    while (v124 != 6);
                    if (v126 < v125)
                    {
                      v131 = v123;
                      while (1)
                      {
                        *v131 = v129;
                        if (v127 == v10)
                        {
                          break;
                        }

                        v131 = v127;
                        v132 = 0;
                        v133 = 0;
                        LODWORD(result) = 0;
                        v134 = *--v127;
                        v129 = v134;
                        do
                        {
                          v135 = *(*(v122 + 24 * *v121) + 4 * v132);
                          if (v135 == v128)
                          {
                            result = v132;
                          }

                          else
                          {
                            result = result;
                          }

                          if (v135 == v129)
                          {
                            v133 = v132;
                          }

                          ++v132;
                        }

                        while (v132 != 6);
                        if (result >= v133)
                        {
                          goto LABEL_188;
                        }
                      }

                      v131 = v10;
LABEL_188:
                      *v131 = v128;
                    }

                    v120 = v123 + 1;
                  }

                  while (v123 + 1 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v198 = v10 + 1;
              if (v10 + 1 != a2)
              {
                v199 = a3[1];
                v200 = **a3;
                do
                {
                  v201 = 0;
                  v202 = 0;
                  v203 = 0;
                  v204 = v9;
                  v9 = v198;
                  v206 = *v204;
                  v205 = v204[1];
                  do
                  {
                    result = *(*(v200 + 24 * *v199) + 4 * v201);
                    if (result == v205)
                    {
                      v203 = v201;
                    }

                    if (result == v206)
                    {
                      v202 = v201;
                    }

                    ++v201;
                  }

                  while (v201 != 6);
                  if (v203 < v202)
                  {
                    v207 = v9;
                    do
                    {
                      v208 = 0;
                      v209 = 0;
                      v210 = 0;
                      *v207 = v206;
                      v207 = v204;
                      v211 = *--v204;
                      v206 = v211;
                      result = *(v200 + 24 * *v199);
                      do
                      {
                        v212 = *(result + 4 * v208);
                        if (v212 == v205)
                        {
                          v210 = v208;
                        }

                        if (v212 == v206)
                        {
                          v209 = v208;
                        }

                        ++v208;
                      }

                      while (v208 != 6);
                    }

                    while (v210 < v209);
                    *v207 = v205;
                  }

                  v198 = v9 + 1;
                }

                while (v9 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v136 = (v11 - 2) >> 1;
              v137 = *a3;
              v138 = a3[1];
              v139 = v136;
              do
              {
                v140 = v139;
                if (v136 >= v139)
                {
                  v141 = (2 * v139) | 1;
                  v142 = &v10[v141];
                  if (2 * v140 + 2 >= v11)
                  {
                    v146 = *v137;
                    v147 = *(*v137 + 24 * *v138);
                  }

                  else
                  {
                    v143 = 0;
                    v144 = 0;
                    v145 = 0;
                    v146 = *v137;
                    v147 = *(*v137 + 24 * *v138);
                    do
                    {
                      v148 = *(v147 + 4 * v143);
                      if (v148 == *v142)
                      {
                        v145 = v143;
                      }

                      if (v148 == v142[1])
                      {
                        v144 = v143;
                      }

                      ++v143;
                    }

                    while (v143 != 6);
                    if (v145 < v144)
                    {
                      ++v142;
                      v141 = 2 * v140 + 2;
                    }
                  }

                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  v152 = &v10[v140];
                  v153 = *v142;
                  v154 = *v152;
                  do
                  {
                    v155 = *(v147 + 4 * v149);
                    if (v155 == v153)
                    {
                      v151 = v149;
                    }

                    if (v155 == v154)
                    {
                      v150 = v149;
                    }

                    ++v149;
                  }

                  while (v149 != 6);
                  if (v151 >= v150)
                  {
                    do
                    {
                      v156 = v142;
                      *v152 = v153;
                      if (v136 < v141)
                      {
                        break;
                      }

                      v157 = (2 * v141) | 1;
                      v142 = &v10[v157];
                      v141 = 2 * v141 + 2;
                      v158 = *v138;
                      if (v141 >= v11)
                      {
                        v162 = *(v146 + 24 * v158);
                        v141 = v157;
                      }

                      else
                      {
                        v159 = 0;
                        v160 = 0;
                        v161 = 0;
                        v162 = *(v146 + 24 * v158);
                        do
                        {
                          v163 = *(v162 + 4 * v159);
                          if (v163 == *v142)
                          {
                            v161 = v159;
                          }

                          if (v163 == v142[1])
                          {
                            v160 = v159;
                          }

                          ++v159;
                        }

                        while (v159 != 6);
                        if (v161 >= v160)
                        {
                          v141 = v157;
                        }

                        else
                        {
                          ++v142;
                        }
                      }

                      v164 = 0;
                      v165 = 0;
                      v166 = 0;
                      v153 = *v142;
                      do
                      {
                        v167 = *(v162 + 4 * v164);
                        if (v167 == v153)
                        {
                          v166 = v164;
                        }

                        if (v167 == v154)
                        {
                          v165 = v164;
                        }

                        ++v164;
                      }

                      while (v164 != 6);
                      v152 = v156;
                    }

                    while (v166 >= v165);
                    *v156 = v154;
                  }
                }

                v139 = v140 - 1;
              }

              while (v140);
              do
              {
                result = 0;
                v168 = *v10;
                v170 = *a3;
                v169 = a3[1];
                v171 = v10;
                do
                {
                  v172 = &v171[result];
                  v173 = v172 + 1;
                  v174 = (2 * result) | 1;
                  result = 2 * result + 2;
                  if (result >= v11)
                  {
                    result = v174;
                  }

                  else
                  {
                    v175 = 0;
                    v176 = 0;
                    v177 = 0;
                    v180 = v172[2];
                    v179 = v172 + 2;
                    v178 = v180;
                    v181 = *v170;
                    do
                    {
                      v182 = *(*(*v170 + 24 * *v169) + 4 * v175);
                      if (v182 == *(v179 - 1))
                      {
                        v177 = v175;
                      }

                      if (v182 == v178)
                      {
                        v176 = v175;
                      }

                      ++v175;
                    }

                    while (v175 != 6);
                    if (v177 >= v176)
                    {
                      result = v174;
                    }

                    else
                    {
                      v173 = v179;
                    }
                  }

                  *v171 = *v173;
                  v171 = v173;
                }

                while (result <= ((v11 - 2) >> 1));
                if (v173 == --a2)
                {
                  *v173 = v168;
                }

                else
                {
                  *v173 = *a2;
                  *a2 = v168;
                  v183 = (v173 - v10 + 4) >> 2;
                  v184 = v183 < 2;
                  v185 = v183 - 2;
                  if (!v184)
                  {
                    result = 0;
                    v186 = 0;
                    v187 = 0;
                    v188 = v185 >> 1;
                    v189 = &v10[v188];
                    v190 = *v189;
                    v191 = *v173;
                    v192 = *v170;
                    do
                    {
                      v193 = *(*(v192 + 24 * *v169) + 4 * result);
                      if (v193 == v190)
                      {
                        v187 = result;
                      }

                      if (v193 == v191)
                      {
                        v186 = result;
                      }

                      ++result;
                    }

                    while (result != 6);
                    if (v187 < v186)
                    {
                      do
                      {
                        v194 = v189;
                        *v173 = v190;
                        if (!v188)
                        {
                          break;
                        }

                        v195 = 0;
                        LODWORD(result) = 0;
                        v196 = 0;
                        v188 = (v188 - 1) >> 1;
                        v189 = &v10[v188];
                        v190 = *v189;
                        do
                        {
                          v197 = *(*(v192 + 24 * *v169) + 4 * v195);
                          if (v197 == v190)
                          {
                            v196 = v195;
                          }

                          if (v197 == v191)
                          {
                            result = v195;
                          }

                          else
                          {
                            result = result;
                          }

                          ++v195;
                        }

                        while (v195 != 6);
                        v173 = v194;
                      }

                      while (v196 < result);
                      *v194 = v191;
                    }
                  }
                }

                v184 = v11-- <= 2;
              }

              while (!v184);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
          }

          else
          {
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
          }

          --a4;
          v15 = *v9;
          v16 = a3[1];
          v17 = *v16;
          v18 = **a3;
          if (a5)
          {
            v19 = *(v18 + 24 * v17);
            break;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v19 = *(v18 + 24 * v17);
          do
          {
            v23 = *(v19 + 4 * v20);
            if (v23 == *(v9 - 1))
            {
              v22 = v20;
            }

            if (v23 == v15)
            {
              v21 = v20;
            }

            ++v20;
          }

          while (v20 != 6);
          if (v22 < v21)
          {
            break;
          }

          v60 = 0;
          v61 = 0;
          v62 = 0;
          do
          {
            v63 = *(v19 + 4 * v60);
            if (v63 == v15)
            {
              v62 = v60;
            }

            if (v63 == *v213)
            {
              v61 = v60;
            }

            ++v60;
          }

          while (v60 != 6);
          v10 = v9;
          if (v62 >= v61)
          {
            do
            {
              if (++v10 >= a2)
              {
                break;
              }

              v70 = 0;
              v71 = 0;
              v72 = 0;
              do
              {
                v73 = *(v19 + 4 * v70);
                if (v73 == v15)
                {
                  v72 = v70;
                }

                if (v73 == *v10)
                {
                  v71 = v70;
                }

                ++v70;
              }

              while (v70 != 6);
            }

            while (v72 >= v71);
          }

          else
          {
            v10 = v9;
            do
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v68 = v10[1];
              ++v10;
              v67 = v68;
              do
              {
                v69 = *(v19 + 4 * v64);
                if (v69 == v15)
                {
                  v66 = v64;
                }

                if (v69 == v67)
                {
                  v65 = v64;
                }

                ++v64;
              }

              while (v64 != 6);
            }

            while (v66 >= v65);
          }

          v74 = a2;
          if (v10 < a2)
          {
            v74 = a2;
            do
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v79 = *--v74;
              v78 = v79;
              do
              {
                v80 = *(v19 + 4 * v75);
                if (v80 == v15)
                {
                  v77 = v75;
                }

                if (v80 == v78)
                {
                  v76 = v75;
                }

                ++v75;
              }

              while (v75 != 6);
            }

            while (v77 < v76);
          }

          if (v10 < v74)
          {
            v81 = *v10;
            v82 = *v74;
            do
            {
              *v10 = v82;
              *v74 = v81;
              v83 = *(v18 + 24 * *v16);
              do
              {
                v84 = 0;
                v85 = 0;
                v86 = 0;
                v87 = v10[1];
                ++v10;
                v81 = v87;
                do
                {
                  v88 = *(v83 + 4 * v84);
                  if (v88 == v15)
                  {
                    v86 = v84;
                  }

                  if (v88 == v81)
                  {
                    v85 = v84;
                  }

                  ++v84;
                }

                while (v84 != 6);
              }

              while (v86 >= v85);
              do
              {
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v92 = *--v74;
                v82 = v92;
                do
                {
                  result = *(v83 + 4 * v89);
                  if (result == v15)
                  {
                    v91 = v89;
                  }

                  if (result == v82)
                  {
                    v90 = v89;
                  }

                  ++v89;
                }

                while (v89 != 6);
              }

              while (v91 < v90);
            }

            while (v10 < v74);
          }

          v93 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v93;
          }

          a5 = 0;
          *v93 = v15;
        }

        v24 = v9;
        do
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = v24;
          v30 = v24[1];
          ++v24;
          v29 = v30;
          do
          {
            v31 = *(v19 + 4 * v25);
            if (v31 == v29)
            {
              v27 = v25;
            }

            if (v31 == v15)
            {
              v26 = v25;
            }

            ++v25;
          }

          while (v25 != 6);
        }

        while (v27 < v26);
        v32 = a2;
        if (v28 == v9)
        {
          v32 = a2;
          do
          {
            if (v24 >= v32)
            {
              break;
            }

            v39 = 0;
            v40 = 0;
            v41 = 0;
            v43 = *--v32;
            v42 = v43;
            do
            {
              v44 = *(v19 + 4 * v39);
              if (v44 == v42)
              {
                v41 = v39;
              }

              if (v44 == v15)
              {
                v40 = v39;
              }

              ++v39;
            }

            while (v39 != 6);
          }

          while (v41 >= v40);
        }

        else
        {
          do
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v37 = *--v32;
            v36 = v37;
            do
            {
              v38 = *(v19 + 4 * v33);
              if (v38 == v36)
              {
                v35 = v33;
              }

              if (v38 == v15)
              {
                v34 = v33;
              }

              ++v33;
            }

            while (v33 != 6);
          }

          while (v35 >= v34);
        }

        if (v24 < v32)
        {
          v45 = *v32;
          v46 = v24;
          v47 = v32;
          do
          {
            *v46 = v45;
            *v47 = v29;
            v48 = *(v18 + 24 * *v16);
            do
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v28 = v46;
              v52 = v46[1];
              ++v46;
              v29 = v52;
              do
              {
                v53 = *(v48 + 4 * v49);
                if (v53 == v29)
                {
                  v51 = v49;
                }

                if (v53 == v15)
                {
                  v50 = v49;
                }

                ++v49;
              }

              while (v49 != 6);
            }

            while (v51 < v50);
            do
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = *--v47;
              v45 = v57;
              do
              {
                v58 = *(v48 + 4 * v54);
                if (v58 == v45)
                {
                  v56 = v54;
                }

                if (v58 == v15)
                {
                  v55 = v54;
                }

                ++v54;
              }

              while (v54 != 6);
            }

            while (v56 >= v55);
          }

          while (v46 < v47);
        }

        if (v28 != v9)
        {
          *v9 = *v28;
        }

        *v28 = v15;
        if (v24 >= v32)
        {
          break;
        }

LABEL_73:
        a5 = 0;
        v10 = v28 + 1;
      }

      v10 = v28 + 1;
      if (result)
      {
        break;
      }

      if (!v59)
      {
        goto LABEL_73;
      }
    }

    a2 = v28;
    if (!v59)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,0>(int *result, int *a2, int *a3, uint64_t **a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = a4[1];
  v9 = *result;
  v10 = **a4;
  v11 = *(v10 + 24 * *v8);
  do
  {
    v12 = *(v11 + 4 * v4);
    if (v12 == v7)
    {
      v6 = v4;
    }

    if (v12 == v9)
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 6);
  v13 = *a3;
  if (v6 >= v5)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v11 + 4 * v18);
      if (v21 == v13)
      {
        v20 = v18;
      }

      if (v21 == v7)
      {
        v19 = v18;
      }

      ++v18;
    }

    while (v18 != 6);
    if (v20 < v19)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *a2 = v13;
      *a3 = v7;
      v25 = *a2;
      v26 = *result;
      v27 = *(v10 + 24 * *v8);
      do
      {
        v28 = *(v27 + 4 * v22);
        if (v28 == v25)
        {
          v24 = v22;
        }

        if (v28 == v26)
        {
          v23 = v22;
        }

        ++v22;
      }

      while (v22 != 6);
      if (v24 < v23)
      {
        *result = v25;
        *a2 = v26;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v11 + 4 * v14);
      if (v17 == v13)
      {
        v16 = v14;
      }

      if (v17 == v7)
      {
        v15 = v14;
      }

      ++v14;
    }

    while (v14 != 6);
    if (v16 < v15)
    {
      *result = v13;
LABEL_39:
      *a3 = v9;
      return result;
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    *result = v7;
    *a2 = v9;
    v32 = *a3;
    v33 = *(v10 + 24 * *v8);
    do
    {
      v34 = *(v33 + 4 * v29);
      if (v34 == v32)
      {
        v31 = v29;
      }

      if (v34 == v9)
      {
        v30 = v29;
      }

      ++v29;
    }

    while (v29 != 6);
    if (v31 < v30)
    {
      *a2 = v32;
      goto LABEL_39;
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *a4;
  v17 = *a3;
  v18 = a6[1];
  v19 = **a6;
  v20 = *(v19 + 24 * *v18);
  do
  {
    v21 = *(v20 + 4 * v13);
    if (v21 == v16)
    {
      v15 = v13;
    }

    if (v21 == v17)
    {
      v14 = v13;
    }

    ++v13;
  }

  while (v13 != 6);
  if (v15 < v14)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *a3 = v16;
    *a4 = v17;
    v25 = *a3;
    v26 = *a2;
    v20 = *(v19 + 24 * *v18);
    do
    {
      v27 = *(v20 + 4 * v22);
      if (v27 == v25)
      {
        v24 = v22;
      }

      if (v27 == v26)
      {
        v23 = v22;
      }

      ++v22;
    }

    while (v22 != 6);
    if (v24 < v23)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *a2 = v25;
      *a3 = v26;
      v31 = *a2;
      v32 = *a1;
      v20 = *(v19 + 24 * *v18);
      do
      {
        v33 = *(v20 + 4 * v28);
        if (v33 == v31)
        {
          v30 = v28;
        }

        if (v33 == v32)
        {
          v29 = v28;
        }

        ++v28;
      }

      while (v28 != 6);
      if (v30 < v29)
      {
        *a1 = v31;
        *a2 = v32;
        v20 = *(v19 + 24 * *v18);
      }
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = *a5;
  v38 = *a4;
  do
  {
    v39 = *(v20 + 4 * v34);
    if (v39 == v37)
    {
      v36 = v34;
    }

    if (v39 == v38)
    {
      v35 = v34;
    }

    ++v34;
  }

  while (v34 != 6);
  if (v36 < v35)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    *a4 = v37;
    *a5 = v38;
    v43 = *a4;
    v44 = *a3;
    do
    {
      v45 = *(*(v19 + 24 * *v18) + 4 * v40);
      if (v45 == v43)
      {
        v42 = v40;
      }

      if (v45 == v44)
      {
        v41 = v40;
      }

      ++v40;
    }

    while (v40 != 6);
    if (v42 < v41)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *a3 = v43;
      *a4 = v44;
      v49 = *a3;
      v50 = *a2;
      do
      {
        v51 = *(*(v19 + 24 * *v18) + 4 * v46);
        if (v51 == v49)
        {
          v48 = v46;
        }

        if (v51 == v50)
        {
          v47 = v46;
        }

        ++v46;
      }

      while (v46 != 6);
      if (v48 < v47)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *a2 = v49;
        *a3 = v50;
        v55 = *a2;
        v56 = *a1;
        v57 = *(v19 + 24 * *v18);
        do
        {
          v58 = *(v57 + 4 * v52);
          if (v58 == v55)
          {
            v54 = v52;
          }

          if (v58 == v56)
          {
            v53 = v52;
          }

          ++v52;
        }

        while (v52 != 6);
        if (v54 < v53)
        {
          *a1 = v55;
          *a2 = v56;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *>(int *a1, int *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        break;
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = *(a2 - 1);
        v34 = a1[2];
        v35 = a3[1];
        v36 = **a3;
        do
        {
          v37 = *(*(v36 + 24 * *v35) + 4 * v30);
          if (v37 == v33)
          {
            v32 = v30;
          }

          if (v37 == v34)
          {
            v31 = v30;
          }

          ++v30;
        }

        while (v30 != 6);
        if (v32 < v31)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          a1[2] = v33;
          *(a2 - 1) = v34;
          v42 = a1[1];
          v41 = a1[2];
          do
          {
            v43 = *(*(v36 + 24 * *v35) + 4 * v38);
            if (v43 == v41)
            {
              v40 = v38;
            }

            if (v43 == v42)
            {
              v39 = v38;
            }

            ++v38;
          }

          while (v38 != 6);
          if (v40 < v39)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            a1[1] = v41;
            a1[2] = v42;
            v47 = *a1;
            v48 = *(v36 + 24 * *v35);
            do
            {
              v49 = *(v48 + 4 * v44);
              if (v49 == v41)
              {
                v46 = v44;
              }

              if (v49 == v47)
              {
                v45 = v44;
              }

              ++v44;
            }

            while (v44 != 6);
            if (v46 < v45)
            {
              *a1 = v41;
              a1[1] = v47;
            }
          }
        }

        return 1;
      case 5:
        break;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a2 - 1);
    v11 = *a1;
    do
    {
      v12 = *(*(**a3 + 24 * *a3[1]) + 4 * v7);
      if (v12 == v10)
      {
        v9 = v7;
      }

      if (v12 == v11)
      {
        v8 = v7;
      }

      ++v7;
    }

    while (v7 != 6);
    if (v9 < v8)
    {
      *a1 = v10;
      *(a2 - 1) = v11;
    }

    return 1;
  }

LABEL_17:
  v13 = a1 + 2;
  v14 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = a3[1];
  v17 = **a3;
  while (1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v14;
    v22 = *v13;
    do
    {
      v23 = *(*(v17 + 24 * *v16) + 4 * v18);
      if (v23 == v21)
      {
        v20 = v18;
      }

      if (v23 == v22)
      {
        v19 = v18;
      }

      ++v18;
    }

    while (v18 != 6);
    if (v20 < v19)
    {
      v24 = v14;
      while (1)
      {
        *v24 = v22;
        if (v13 == a1)
        {
          break;
        }

        v24 = v13;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = *--v13;
        v22 = v28;
        do
        {
          v29 = *(*(v17 + 24 * *v16) + 4 * v25);
          if (v29 == v21)
          {
            v27 = v25;
          }

          if (v29 == v22)
          {
            v26 = v25;
          }

          ++v25;
        }

        while (v25 != 6);
        if (v27 >= v26)
        {
          goto LABEL_37;
        }
      }

      v24 = a1;
LABEL_37:
      *v24 = v21;
      if (++v15 == 8)
      {
        return v14 + 1 == a2;
      }
    }

    v13 = v14++;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_25D26460C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<NSString * {__strong}>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

float OU3DObjectRGBSizeRefiner::ComputeOverlapScore<float>(int a1, void *a2, uint64_t *a3, box3d *a4)
{
  v4 = 0;
  v5 = *a3;
  v6 = 0.0;
  do
  {
    if (*(v5 + v4))
    {
      v7 = *(*a2 + 4 * v4);
      if (v7 != 0.0)
      {
        v6 = v6 + ((v7 * *(v5 + v4)) / 255.0);
      }
    }

    ++v4;
  }

  while (v4 != 49152);
  v8 = v6;
  v9 = boxVolume(a4);
  return v8 / (pow(v9, 0.125) * 10000.0);
}

float OU3DObjectRGBSizeRefiner::ComputeOverlapScore<unsigned char>(int a1, void *a2, uint64_t *a3, box3d *a4)
{
  v4 = 0;
  v5 = *a3;
  v6 = 0.0;
  do
  {
    v7 = *(*a2 + v4);
    if (*(v5 + v4))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v6 = v6 + ((*(v5 + v4) * v7) / 255.0);
    }

    ++v4;
  }

  while (v4 != 49152);
  v9 = v6;
  v10 = boxVolume(a4);
  return v9 / (pow(v10, 0.125) * 10000.0);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void *utils::OUImageUtils::ResizeImageRGBA(utils::OUImageUtils *this, CVPixelBufferRef pixelBuffer, int a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v6 = PixelFormatType;
  if (PixelFormatType != 1111970369 && PixelFormatType != 1380401729)
  {
    v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  kdebug_trace();
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v9 = Height;
  if (Width > Height)
  {
    v10 = a3;
  }

  else
  {
    v10 = ((Height / Width) * a3);
  }

  if (Width > Height)
  {
    v11 = ((Width / Height) * a3);
  }

  else
  {
    v11 = a3;
  }

  if (MEMORY[0x25F895950](&dest, v10, v11, 32, 0))
  {
    v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  *color = -16777216;
  vImageBufferFill_ARGB8888(&dest, color, 0);
  src.data = CVPixelBufferGetBaseAddress(pixelBuffer);
  src.height = v9;
  src.width = Width;
  src.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (vImageScale_ARGB8888(&src, &dest, 0, 0))
  {
    v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  src.data = 0;
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], dest.width, dest.height, v6, dest.data, dest.rowBytes, 0, 0, 0, &src))
  {
    free(dest.data);
    v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  kdebug_trace();
  return src.data;
}

CVPixelBufferRef utils::OUImageUtils::SquareCropImage(void **a1, __CVBuffer *a2, unsigned int a3, double a4, int32x2_t a5)
{
  v5 = LODWORD(a4);
  v6 = HIDWORD(a4);
  v7 = a5.i32[0];
  v8 = a5.i32[1];
  if ((LODWORD(a4) | a5.i32[0] | HIDWORD(a4) | a5.i32[1]) < 0)
  {
    return 0;
  }

  kdebug_trace();
  v12 = v7 - v8;
  if (v7 - v8 < 0)
  {
    v12 = v8 - v7;
  }

  v13 = v12 >> 1;
  HIDWORD(v14) = HIDWORD(a4);
  LODWORD(v15) = LODWORD(a4);
  HIDWORD(v15) = v13 + v6;
  v16 = COERCE_DOUBLE(vdup_lane_s32(a5, 0));
  LODWORD(v14) = v13 + v5;
  v17 = v14;
  v18 = COERCE_DOUBLE(vdup_lane_s32(a5, 1));
  if (v7 > v8)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = utils::OUImageUtils::CropAndResizeImage(a1, a2, v15, v16, COERCE_DOUBLE(vdup_n_s32(a3)));
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v21 = v19;
  kdebug_trace();
  return v21;
}

CVPixelBufferRef utils::OUImageUtils::CropAndResizeImage(void **a1, CVPixelBufferRef pixelBuffer, double a3, double a4, double a5)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v9 = PixelFormatType;
  v10 = 4;
  if (PixelFormatType != 1380401729 && PixelFormatType != 1111970369)
  {
    if (PixelFormatType != 24)
    {
      v16 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        utils::OUImageUtils::CropAndResizeImage();
      }

      goto LABEL_14;
    }

    v10 = 3;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v13.i64[0] = SLODWORD(a4);
  v13.i64[1] = SHIDWORD(a4);
  *&src.height = vextq_s8(v13, v13, 8uLL);
  src.rowBytes = BytesPerRow;
  src.data = &BaseAddress[v10 * LODWORD(a3) + HIDWORD(a3) * BytesPerRow];
  dest.data = utils::OUImageUtils::FindOrCreateBuffer(a1, SLODWORD(a5), SHIDWORD(a5), v10);
  dest.height = SHIDWORD(a5);
  dest.width = SLODWORD(a5);
  dest.rowBytes = v10 * SLODWORD(a5);
  v14 = vImageScale_ARGB8888(&src, &dest, a1[3], 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  if (v14)
  {
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::CropAndResizeImage();
    }

    free(dest.data);
    return 0;
  }

  v20 = 0;
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], SLODWORD(a5), SHIDWORD(a5), v9, dest.data, dest.rowBytes, 0, 0, 0, &v20))
  {
    free(dest.data);
    v16 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::CropAndResizeImage();
    }

LABEL_14:

    return 0;
  }

  return v20;
}

CVPixelBufferRef utils::OUImageUtils::CropImage(void **a1, __CVBuffer *a2, double a3, double a4)
{
  kdebug_trace();
  v8 = utils::OUImageUtils::CropAndResizeImage(a1, a2, a3, a4, a4);
  kdebug_trace();
  return v8;
}

void *utils::OUImageUtils::FindOrCreateBuffer(utils::OUImageUtils *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *this; i != *(this + 1); i += 4)
  {
    v9 = i[3];
    if (*i == a2 && i[1] == a3 && i[2] == a4 && v9 != 0)
    {
      return v9;
    }
  }

  v13 = malloc_type_malloc(a3 * a2 * a4, 0x100004077774924uLL);
  v9 = v13;
  v14 = *(this + 1);
  v15 = *(this + 2);
  if (v14 >= v15)
  {
    v17 = (v14 - *this) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v19 = v15 - *this;
    if (v19 >> 4 > v18)
    {
      v18 = v19 >> 4;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<utils::OUImageUtils::PreAllocateInfo>>(this, v20);
    }

    v21 = (32 * v17);
    *v21 = a2;
    v21[1] = a3;
    v21[2] = a4;
    v21[3] = v13;
    v16 = 32 * v17 + 32;
    v22 = *(this + 1) - *this;
    v23 = (32 * v17 - v22);
    memcpy(v23, *this, v22);
    v24 = *this;
    *this = v23;
    *(this + 1) = v16;
    *(this + 2) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v14 = a2;
    v14[1] = a3;
    v16 = (v14 + 4);
    v14[2] = a4;
    v14[3] = v13;
  }

  *(this + 1) = v16;
  return v9;
}

uint64_t utils::ConvertCVPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()(a1, v9);
  utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()(a2, __p);
  v6 = std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(a3, v9[0], __p[0]);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v6;
}

void sub_25D26527C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    result = std::vector<vImage_Buffer>::vector[abi:ne200100](a2, PlaneCount);
    if (!PlaneCount)
    {
      return result;
    }
  }

  else
  {
    PlaneCount = 1;
    std::vector<vImage_Buffer>::vector[abi:ne200100](a2, 1uLL);
  }

  v6 = 0;
  for (i = 0; i != PlaneCount; ++i)
  {
    *(*a2 + v6 + 16) = CVPixelBufferGetWidthOfPlane(a1, i);
    *(*a2 + v6 + 8) = CVPixelBufferGetHeightOfPlane(a1, i);
    *(*a2 + v6 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
    result = CVPixelBufferGetBaseAddressOfPlane(a1, i);
    *(*a2 + v6) = result;
    v6 += 32;
  }

  return result;
}

void sub_25D265390(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t utils::ConvertDepthF32ToU16(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v9[0] = &unk_286EBC6F0;
  v9[3] = v9;
  v6 = utils::ConvertCVPixelBuffer(this, v5, v9);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25D2654B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CVPixelBufferRef utils::anonymous namespace::CheckCVPixelBuffers(utils::_anonymous_namespace_ *this, __CVBuffer *a2, CVPixelBufferRef *a3, __CVBuffer **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid in_buffer.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v4 = a4;
  if (CVPixelBufferGetPixelFormatType(this) != a2)
  {
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v16, &unk_25D2878C2);
    __cxa_throw(v16, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (*a3)
  {
    result = CVPixelBufferGetPixelFormatType(*a3);
    if (result != v4)
    {
      v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v9, &unk_25D2878C2);
      __cxa_throw(v9, off_2799C3FC0, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "OUImageUtils";
      _os_log_impl(&dword_25D1DB000, v10, OS_LOG_TYPE_INFO, "[%s] creating out_buffer; user is responsible to release the buffer.", &v17, 0xCu);
    }

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, 0);
    result = CreateCVPixelBuffer(WidthOfPlane, HeightOfPlane);
    *a3 = result;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t utils::ConvertColor32BGRATo420f(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11 = *ymmword_25D279C10;
  if ((byte_27FC2EDA0 & 1) == 0)
  {
    v5 = *MEMORY[0x277CB86C8];
    utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info = 0u;
    *algn_27FC2ED30 = 0u;
    xmmword_27FC2ED40 = 0u;
    unk_27FC2ED50 = 0u;
    xmmword_27FC2ED60 = 0u;
    unk_27FC2ED70 = 0u;
    xmmword_27FC2ED80 = 0u;
    unk_27FC2ED90 = 0u;
    byte_27FC2EDA0 = 1;
    if (vImageConvert_ARGBToYpCbCr_GenerateConversion(v5, &v11, &utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info, kvImageARGB8888, kvImage420Yp8_CbCr8, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "failed to create conversion info.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v6 = *a2;
  v12[0] = &unk_286EBC780;
  v12[3] = v12;
  v7 = utils::ConvertCVPixelBuffer(this, v6, v12);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v12);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t utils::ConvertColor420fTo32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11 = *ymmword_25D279C10;
  if ((byte_27FC2EE30 & 1) == 0)
  {
    v5 = *MEMORY[0x277CB86E0];
    utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info = 0u;
    unk_27FC2EDC0 = 0u;
    xmmword_27FC2EDD0 = 0u;
    unk_27FC2EDE0 = 0u;
    xmmword_27FC2EDF0 = 0u;
    unk_27FC2EE00 = 0u;
    xmmword_27FC2EE10 = 0u;
    unk_27FC2EE20 = 0u;
    byte_27FC2EE30 = 1;
    if (vImageConvert_YpCbCrToARGB_GenerateConversion(v5, &v11, &utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "failed to create conversion info.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v6 = *a2;
  v12[0] = &unk_286EBC800;
  v12[3] = v12;
  v7 = utils::ConvertCVPixelBuffer(this, v6, v12);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v12);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t utils::ConvertLabelL008To32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v6 = CVPixelBufferGetBaseAddress(*a2);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v10 = CVPixelBufferGetBytesPerRow(*a2);
  bzero(v6, v10 * Height);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v12 = 0;
        v13 = 2;
        do
        {
          v6[v13] = BaseAddress[v12++];
          v13 += 4;
        }

        while (Width != v12);
      }

      BaseAddress += BytesPerRow;
      v6 += v10;
    }
  }

  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  v14 = *a2;

  return CVPixelBufferUnlockBaseAddress(v14, 0);
}

uint64_t utils::ConvertConfidenceL00fToVote32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v6 = CVPixelBufferGetBaseAddress(*a2);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v10 = CVPixelBufferGetBytesPerRow(*a2);
  bzero(v6, v10 * Height);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v12 = 0;
        v13 = Width;
        do
        {
          if (*&BaseAddress[v12] > 0.0)
          {
            v6[v12 + 2] = 1;
          }

          v12 += 4;
          --v13;
        }

        while (v13);
      }

      BaseAddress += BytesPerRow;
      v6 += v10;
    }
  }

  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  v14 = *a2;

  return CVPixelBufferUnlockBaseAddress(v14, 0);
}

void utils::WriteToTiff(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = a5;
  v9 = MEMORY[0x277CBEBC0];
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  v12 = [v9 fileURLWithPath:v11];

  v13 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1];
  [v14 writeTIFFRepresentationOfImage:v13 toURL:v12 format:a3 colorSpace:a4 options:MEMORY[0x277CBEC10] error:0];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<utils::OUImageUtils::PreAllocateInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<vImage_Buffer>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vImage_Buffer>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D265E24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vImage_Buffer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<utils::ConvertDepthF32ToU16(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertDepthF32ToU16(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

vImage_Error std::__function::__func<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, const vImage_Buffer **a2, const vImage_Buffer **a3)
{
  v3 = *a2;
  v4 = *a3;
  *permuteMap = 66051;
  if ((byte_27FC2EDA0 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return vImageConvert_ARGB8888To420Yp8_CbCr8(v3, v4, v4 + 1, &utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info, permuteMap, 0);
}

uint64_t std::__function::__func<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

vImage_Error std::__function::__func<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, const vImage_Buffer **a2, const vImage_Buffer **a3)
{
  v3 = *a2;
  v4 = *a3;
  *permuteMap = 66051;
  if ((byte_27FC2EE30 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return vImageConvert_420Yp8_CbCr8ToARGB8888(v3, v3 + 1, v4, &utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info, permuteMap, 0xFFu, 0);
}

uint64_t std::__function::__func<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id GenerateCIImage(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBF758]) initWithMTLTexture:v1 options:0];

  return v2;
}

void DownloadMTLTexture(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 width];
    v6 = [v4 height];
    v7 = *a2;
    memset(v8, 0, 24);
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = 1;
    [v4 getBytes:v7 bytesPerRow:objc_msgSend(v4 fromRegion:"width") mipmapLevel:{v8, 0}];
  }
}

BOOL IsObjectBelongType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = *a2 + 8;
    do
    {
      v6 = *(v5 - 8);
      v7 = v6 == v3;
      v8 = v6 == v3 || v5 == v4;
      v5 += 8;
    }

    while (!v8);
  }

  return v7;
}

__CFString *ObjectTypeConversion(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"Shelf"])
  {
    v2 = @"Cabinet";
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v2;
}

uint64_t utils::OUFrameWriter::OUFrameWriter(uint64_t a1, std::string *a2, uint64_t a3, char a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  v5 = (a1 + 40);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>((a1 + 40), a2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = (a1 + 64);
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0u;
  v7 = (a1 + 176);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  buf.__pn_.__r_.__value_.__s.__data_[0] = 48;
  v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v22, &buf);
  *(v8 + *(*v8 - 24) + 24) = 8;
  MEMORY[0x25F894C80]();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v21, &buf);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = buf;
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v5->__pn_, a1 + 8);
  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "cvplayer");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, v5, &buf);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&buf.__pn_.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&buf.__pn_.__r_.__value_.__l + 2);
  *(&buf.__pn_.__r_.__value_.__s + 23) = 0;
  buf.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(v5, 0);
  if (buf.__pn_.__r_.__value_.__s.__data_[0] && buf.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v5;
      if (*(a1 + 63) < 0)
      {
        v10 = v5->__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
      WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v10;
      _os_log_impl(&dword_25D1DB000, v9, OS_LOG_TYPE_INFO, "[%s] path %s already exists; override existing dataset.", &buf, 0x16u);
    }
  }

  else
  {
    if (std::__fs::filesystem::__create_directories(v5, 0))
    {
      goto LABEL_17;
    }

    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      utils::OUFrameWriter::OUFrameWriter(a1, v5, v9);
    }
  }

LABEL_17:
  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "color");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 64, &buf);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "depth");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 64, &buf);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "label");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 64, &buf);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "vote");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 64, &buf);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBF740]);
  v12 = *(a1 + 224);
  *(a1 + 224) = v11;

  *(a1 + 232) = CGColorSpaceCreateDeviceRGB();
  *(a1 + 240) = CGColorSpaceCreateDeviceGray();
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = *v7;
  *v7 = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = *(a1 + 184);
  *(a1 + 184) = v15;

  v21[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v17;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](&v26);
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25D2669A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v18 - 73) < 0)
  {
    operator delete(*(v18 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);

  if (*(v15 + 87) < 0)
  {
    operator delete(*v17);
  }

  if (*(v15 + 63) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_25D266CFC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_25D266EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](a1 + 128);
  return a1;
}

void utils::OUFrameWriter::~OUFrameWriter(utils::OUFrameWriter *this)
{
  CVPixelBufferRelease(*(this + 24));
  CVPixelBufferRelease(*(this + 25));
  CVPixelBufferRelease(*(this + 26));
  CVPixelBufferRelease(*(this + 27));
  CGColorSpaceRelease(*(this + 29));
  CGColorSpaceRelease(*(this + 30));

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void utils::OUFrameWriter::Write(utils::OUFrameWriter *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *a1 + 1;
  *a1 = v6;
  utils::OUFrameWriter::WriteFrame(a1, v8, v6);
  v7 = *a1;
  utils::OUFrameWriter::WriteKeyframe(a1, v5);
}

void utils::OUFrameWriter::WriteFrame(utils::OUFrameWriter *this, _OUFrame *a2, unint64_t a3)
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v112 = v5;
    v7 = [(_OUFrame *)v5 sceneCamera];
    v113 = v7;
    [v7 imageResolution];
    v123 = v8;
    [v7 imageResolution];
    v120 = v9;
    Width = CVPixelBufferGetWidth([(_OUFrame *)v6 sceneDepthBuffer]);
    Height = CVPixelBufferGetHeight([(_OUFrame *)v6 sceneDepthBuffer]);
    v12 = Height;
    v14 = v123 != Width || Height != v120;
    [v7 intrinsics];
    if (v14)
    {
      v110 = v15;
      v114 = v16;
      v116 = v17;
      v18.f64[0] = v123;
      v18.f64[1] = v120;
      v19.i64[0] = Width;
      v19.i64[1] = v12;
      v20 = vdivq_f64(vcvtq_f64_u64(v19), v18);
      v21 = v20.f64[1];
      v108 = v20;
      if (vabdd_f64(v20.f64[0], v20.f64[1]) > 0.000001)
      {
        v22 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "OUFrameWriter";
          _os_log_impl(&dword_25D1DB000, v22, OS_LOG_TYPE_INFO, "[%s] downsample factor is not the same in x and y direction.", buf, 0xCu);
        }
      }

      *&v23 = v108.f64[0] * v110.f32[0];
      v24.i64[0] = __PAIR64__(v110.u32[1], v23);
      v24.i64[1] = v110.u32[2];
      v121 = v24;
      *&v25 = v21 * v114.f32[1];
      v26.i64[0] = __PAIR64__(v25, v114.u32[0]);
      v26.i64[1] = v114.u32[2];
      v124 = v26;
      *v24.f32 = vcvt_f32_f64(vmulq_f64(v108, vcvtq_f64_f32(*v116.i8)));
      v24.i64[1] = vextq_s8(v116, v116, 8uLL).u32[0];
      v117 = v24;
    }

    else
    {
      v15.i32[3] = 0;
      v16.i32[3] = 0;
      v17.i32[3] = 0;
      v117 = v17;
      v121 = v15;
      v124 = v16;
    }

    if (*(this + 160) != 1)
    {
      goto LABEL_22;
    }

    v27 = vceq_s32(*(this + 96), __PAIR64__(v12, Width));
    if ((vpmin_u32(v27, v27).u32[0] & 0x80000000) != 0)
    {
      v28 = vandq_s8(vandq_s8(vceqq_f32(*(this + 8), v124), vceqq_f32(*(this + 7), v121)), vceqq_f32(*(this + 9), v117));
      v28.i32[3] = v28.i32[2];
      if ((vminvq_u32(v28) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    v29 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "OUFrameWriter";
      _os_log_impl(&dword_25D1DB000, v29, OS_LOG_TYPE_INFO, "[%s] camera parameter have changed; the latest one will be saved.", buf, 0xCu);
    }

    if (*(this + 160))
    {
LABEL_21:
      *(this + 7) = v121;
      *(this + 8) = v124;
      *(this + 9) = v117;
    }

    else
    {
LABEL_22:
      *(this + 7) = v121;
      *(this + 8) = v124;
      *(this + 9) = v117;
      *(this + 160) = 1;
    }

    *(this + 12) = __PAIR64__(v12, Width);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138, "camera.txt");
    std::__fs::filesystem::operator/[abi:ne200100](&v138, this + 64, &v140);
    std::ofstream::basic_ofstream(buf);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if ((*(this + 160) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v30 = MEMORY[0x25F894C70](buf, *(this + 12));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ", 1);
    v32 = MEMORY[0x25F894C70](v31, *(this + 25));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
    v33 = *(this + 28);
    v34 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
    v35 = *(this + 33);
    v36 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
    v37 = *(this + 36);
    v38 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
    v39 = *(this + 37);
    std::ostream::operator<<();
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
    }

    if (*(this + 31) >= 0)
    {
      v40 = *(this + 31);
    }

    else
    {
      v40 = *(this + 2);
    }

    v41 = &v138;
    std::string::basic_string[abi:ne200100](&v138, v40 + 1);
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v138.__r_.__value_.__r.__words[0];
    }

    if (v40)
    {
      if (*(this + 31) >= 0)
      {
        v42 = this + 8;
      }

      else
      {
        v42 = *(this + 1);
      }

      memmove(v41, v42, v40);
    }

    *(&v41->__r_.__value_.__l.__data_ + v40) = 95;
    std::to_string(&v136, a3);
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v136;
    }

    else
    {
      v43 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v136.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v138, v43, size);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v140, ".tiff", 5uLL);
    v48 = *&v47->__r_.__value_.__l.__data_;
    v127.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v127.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v136, "color");
    std::__fs::filesystem::operator/[abi:ne200100](&v136, this + 64, &v138);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v134.__pn_, &v127);
    std::__fs::filesystem::operator/[abi:ne200100](&v134, &v138, &v140);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v126, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v126 = v140;
    }

    if (SHIBYTE(v134.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    v49 = [(_OUFrame *)v6 GetSceneColorBufferBGRA];
    v50 = v49;
    v51 = MEMORY[0x277CBF970];
    if (v14)
    {
      CVPixelBuffer = *(this + 24);
      if (!CVPixelBuffer)
      {
        CVPixelBuffer = CreateCVPixelBuffer(Width, v12);
        *(this + 24) = CVPixelBuffer;
      }

      v140.__r_.__value_.__r.__words[0] = &unk_286EBC880;
      v141 = &v140;
      v53 = utils::ConvertCVPixelBuffer(v50, CVPixelBuffer, &v140);
      std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](&v140);
      if (v53)
      {
        v54 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          LODWORD(v140.__r_.__value_.__l.__data_) = 136315138;
          *(v140.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
          _os_log_impl(&dword_25D1DB000, v54, OS_LOG_TYPE_INFO, "[%s] failed to downsample color image.", &v140, 0xCu);
        }
      }

      else
      {
        utils::WriteToTiff(*(this + 24), &v126, *v51, *(this + 29), *(this + 28));
      }
    }

    else
    {
      utils::WriteToTiff(v49, &v126, *MEMORY[0x277CBF970], *(this + 29), *(this + 28));
    }

    v55 = [(_OUFrame *)v6 sceneDepthBuffer];
    if (utils::ConvertDepthF32ToU16(v55, this + 25, v56))
    {
      v57 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        LODWORD(v140.__r_.__value_.__l.__data_) = 136315138;
        *(v140.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
        _os_log_impl(&dword_25D1DB000, v57, OS_LOG_TYPE_INFO, "[%s] failed to convert depth image.", &v140, 0xCu);
      }
    }

    else
    {
      v58 = *(this + 25);
      std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v134.__pn_, "depth");
      std::__fs::filesystem::operator/[abi:ne200100](&v134, this + 64, &v136);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v127);
      std::__fs::filesystem::operator/[abi:ne200100](&__p, &v136, &v138);
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v140, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
      }

      else
      {
        v140 = v138;
      }

      utils::WriteToTiff(v58, &v140, *MEMORY[0x277CBF980], *(this + 30), *(this + 28));
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__pn_.__r_.__value_.__l.__data_);
      }
    }

    v59 = [(_OUFrame *)v6 semanticLabelBuffer];
    utils::ConvertLabelL008To32BGRA(v59, this + 26, v60);
    v61 = *(this + 26);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v134.__pn_, "label");
    std::__fs::filesystem::operator/[abi:ne200100](&v134, this + 64, &v136);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v127);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &v136, &v138);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v140, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    }

    else
    {
      v140 = v138;
    }

    v62 = *v51;
    utils::WriteToTiff(v61, &v140, v62, *(this + 29), *(this + 28));
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v134.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__pn_.__r_.__value_.__l.__data_);
    }

    v63 = [(_OUFrame *)v6 semanticConfidenceBuffer];
    utils::ConvertConfidenceL00fToVote32BGRA(v63, this + 27, v64);
    v65 = *(this + 27);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v134.__pn_, "vote");
    std::__fs::filesystem::operator/[abi:ne200100](&v134, this + 64, &v136);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v127);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &v136, &v138);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v140, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    }

    else
    {
      v140 = v138;
    }

    utils::WriteToTiff(v65, &v140, v62, *(this + 29), *(this + 28));
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v134.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__pn_.__r_.__value_.__l.__data_);
    }

    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *this];
    v67 = *(this + 22);
    v128 = @"timestamp";
    v68 = MEMORY[0x277CCABB0];
    v115 = v66;
    [(_OUFrame *)v6 timestamp];
    v69 = [v68 numberWithDouble:?];
    v129 = v69;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
    [v67 setObject:v70 forKey:v66];

    v71 = *(this + 22);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138, "image_meta.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v138, this + 64, &v140);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v73 = *(this + 23);
    v74 = *(this + 32);
    if (v74 == 1)
    {
      v94 = [(_OUFrame *)v6 sceneCamera];
      [v94 pose];
    }

    else
    {
      [(_OUFrame *)v6 GetSceneCameraPoseInVisionWorld];
    }

    v122 = v76;
    v125 = v75;
    v118 = v78;
    v119 = v77;
    v138.__r_.__value_.__r.__words[0] = [MEMORY[0x277CCABB0] numberWithFloat:*&v75];
    v96 = v74;
    v111 = v138.__r_.__value_.__r.__words[0];
    v138.__r_.__value_.__l.__size_ = [MEMORY[0x277CCABB0] numberWithFloat:*&v122];
    v109 = v138.__r_.__value_.__l.__size_;
    [MEMORY[0x277CCABB0] numberWithFloat:*&v119];
    v107 = v95 = v73;
    v138.__r_.__value_.__r.__words[2] = v107;
    v106 = [MEMORY[0x277CCABB0] numberWithFloat:*&v118];
    v139 = v106;
    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:4];
    v140.__r_.__value_.__r.__words[0] = v105;
    HIDWORD(v79) = DWORD1(v125);
    LODWORD(v79) = DWORD1(v125);
    v104 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
    v136.__r_.__value_.__r.__words[0] = v104;
    HIDWORD(v80) = DWORD1(v122);
    LODWORD(v80) = DWORD1(v122);
    v103 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
    v136.__r_.__value_.__l.__size_ = v103;
    HIDWORD(v81) = DWORD1(v119);
    LODWORD(v81) = DWORD1(v119);
    v102 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
    v136.__r_.__value_.__r.__words[2] = v102;
    HIDWORD(v82) = DWORD1(v118);
    LODWORD(v82) = DWORD1(v118);
    v101 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
    v137 = v101;
    v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:4];
    v140.__r_.__value_.__l.__size_ = v100;
    v99 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v125), DWORD2(v125)))}];
    v134.__pn_.__r_.__value_.__r.__words[0] = v99;
    v98 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v122), DWORD2(v122)))}];
    v134.__pn_.__r_.__value_.__l.__size_ = v98;
    v97 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v119), DWORD2(v119)))}];
    v134.__pn_.__r_.__value_.__r.__words[2] = v97;
    v83 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v118), DWORD2(v118)))}];
    v135 = v83;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:4];
    v140.__r_.__value_.__r.__words[2] = v84;
    v85 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v125), HIDWORD(v125)))}];
    __p.__r_.__value_.__r.__words[0] = v85;
    v86 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v122), HIDWORD(v122)))}];
    __p.__r_.__value_.__l.__size_ = v86;
    v87 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v119), HIDWORD(v119)))}];
    __p.__r_.__value_.__r.__words[2] = v87;
    v88 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v118), HIDWORD(v118)))}];
    v133 = v88;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&__p count:4];
    v141 = v89;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:4];

    v6 = v112;
    [v95 setObject:v90 forKey:v115];

    if (v96)
    {
    }

    v91 = *(this + 23);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138, "pose.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v138, this + 64, &v140);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    *buf = *MEMORY[0x277D82810];
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82810] + 24);
    MEMORY[0x25F894BD0](&buf[8]);
    std::ostream::~ostream();
    MEMORY[0x25F894D60](&v131);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25D268114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (*(v57 - 169) < 0)
  {
    operator delete(*(v57 - 192));
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  if (*(v57 - 233) < 0)
  {
    operator delete(*(v57 - 256));
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::ofstream::~ofstream(&a57, MEMORY[0x277D82810]);
  MEMORY[0x25F894D60](&STACK[0x2F0]);

  _Unwind_Resume(a1);
}

void utils::OUFrameWriter::WriteKeyframe(void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v25 = a2;
  if (v25)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v25, "count")}];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = v25;
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = *v37;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v37 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v36 + 1) + 8 * i);
          v9 = OUKeyframeToDictionary(v8);
          v10 = [v8 identifier];
          v11 = [v10 UUIDString];
          [v3 setObject:v9 forKey:v11];
        }

        v5 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v5);
    }

    v12 = a1[22];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *a1];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = [v14 objectForKeyedSubscript:@"timestamp"];

    v16 = &unk_286EC2260;
    if (v15)
    {
      v16 = v15;
    }

    v40[0] = @"timestamp";
    v40[1] = @"objects";
    v41[0] = v16;
    v41[1] = MEMORY[0x277CBEBF8];
    v40[2] = @"keyframes";
    v41[2] = v3;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v30);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "fp_input_", 9);
    pn.__r_.__value_.__s.__data_[0] = 48;
    v19 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, &pn);
    *(v19 + *(*v19 - 24) + 24) = 3;
    v20 = MEMORY[0x25F894C80]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".plist", 6);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v30, &v26);
    v27 = v26;
    memset(&v26, 0, sizeof(v26));
    std::__fs::filesystem::operator/[abi:ne200100](&v27, (a1 + 5), &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      pn = __p.__pn_;
    }

    if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__pn_.__r_.__value_.__l.__data_);
    }

    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_pn = &pn;
    }

    else
    {
      p_pn = pn.__r_.__value_.__r.__words[0];
    }

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_pn];
    [v17 writeToFile:v22 atomically:1];

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v30[0] = *MEMORY[0x277D82818];
    v23 = *(MEMORY[0x277D82818] + 72);
    *(v30 + *(v30[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v31 = v23;
    v32 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v35);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_25D2689C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a36);

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x25F894BC0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D268C68(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void utils::anonymous namespace::WriteToJson(utils::_anonymous_namespace_ *this, NSDictionary *a2, const std::__fs::filesystem::path *a3)
{
  v8 = this;
  v4 = MEMORY[0x277CBEB78];
  if (SHIBYTE(a2[2].super.isa) >= 0)
  {
    isa = a2;
  }

  else
  {
    isa = a2->super.isa;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:isa];
  v7 = [v4 outputStreamToFileAtPath:v6 append:0];

  [v7 open];
  [MEMORY[0x277CCAAA0] writeJSONObject:v8 toStream:v7 options:0 error:0];
  [v7 close];
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x25F894BD0](a1 + 1);

  return std::ostream::~ostream();
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_25D268F1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F894D10](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25D268FCC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

std::string *std::__fs::filesystem::path::append[abi:ne200100]<std::string>(std::string *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_9;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_9;
    }
  }

  if (*v4 == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

LABEL_12:
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 8);
  }

  std::string::append[abi:ne200100]<char const*,0>(this, v6, (v6 + v5));
  return this;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_25D26923C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<utils::OUFrameWriter::WriteFrame(_OUFrame *,unsigned long)::$_0,std::allocator<utils::OUFrameWriter::WriteFrame(_OUFrame *,unsigned long)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _GLOBAL__sub_I_DataFileIO_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void ou3dor::OU3DORParser::OU3DORParser(ou3dor::OU3DORParser *this)
{
  OU3DORIDTree::OU3DORIDTree(this);
  std::string::basic_string[abi:ne200100]<0>(&v1, "Chair");
}

void sub_25D26AD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  OU3DORIDTree::~OU3DORIDTree(v20);
  _Unwind_Resume(a1);
}

void ou3dor::OU3DORParser::ParseNetworkOutput(OU3DORIDTree::Node **a1@<X0>, void *a2@<X1>, const void **a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2[1] - *a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v4 == 188)
  {
    Node = OU3DORIDTree::FindNode(a1, a3);
    v7 = *(Node + 24);
    for (i = *(Node + 32); v7 != i; ++v7)
    {
      v8 = *v7;
      if (*(*v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v41.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v41.__r_.__value_.__l.__data_ = v9;
      }

      Range = OU3DORIDTree::FindRange(a1, &v41.__r_.__value_.__l.__data_);
      __src = 0;
      v39 = 0;
      v40 = 0;
      v11 = expf(*(*a2 + 4 * Range));
      if (Range <= SHIDWORD(Range))
      {
        v13 = 0;
        v14 = 4 * Range;
        v12 = Range;
        do
        {
          v15 = expf(*(*a2 + v14));
          if (v13 >= v40)
          {
            v16 = __src;
            v17 = v13 - __src;
            v18 = (v13 - __src) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v20 = v40 - __src;
            if ((v40 - __src) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v21);
            }

            v22 = v18;
            v23 = (4 * v18);
            v24 = &v23[-v22];
            *v23 = v15;
            v13 = v23 + 1;
            memcpy(v24, v16, v17);
            v25 = __src;
            __src = v24;
            v39 = v13;
            v40 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v13++ = v15;
          }

          v39 = v13;
          if (*(v13 - 1) >= v11)
          {
            v12 = Range;
            v11 = *(v13 - 1);
          }

          v14 += 4;
          LODWORD(Range) = Range + 1;
        }

        while (HIDWORD(Range) + 1 != Range);
      }

      else
      {
        v12 = Range;
      }

      LODWORD(v42.__r_.__value_.__l.__data_) = v12;
      {
        v26 = __src;
        v27 = 0.0;
        while (v26 != v39)
        {
          v28 = *v26++;
          v27 = v27 + v28;
        }

        NodeBasedOnID = OU3DORIDTree::FindNodeBasedOnID(a1, v12);
        if (NodeBasedOnID)
        {
          OU3DORIDTree::GetRootToNodePath(a1, v12, 45, &v37);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v42, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          }

          else
          {
            v42 = v41;
          }

          if (*(NodeBasedOnID + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v43, *NodeBasedOnID, *(NodeBasedOnID + 1));
          }

          else
          {
            v31 = *NodeBasedOnID;
            v43.__r_.__value_.__r.__words[2] = *(NodeBasedOnID + 2);
            *&v43.__r_.__value_.__l.__data_ = v31;
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v37;
          }

          v32 = v11 / v27;
          v45 = v32;
          std::vector<ou3dor::OU3DORParser::AttibuteInfo>::push_back[abi:ne200100](a4, &v42);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v30 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v42.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v42.__r_.__value_.__r.__words[0]) = v12;
            _os_log_error_impl(&dword_25D1DB000, v30, OS_LOG_TYPE_ERROR, "There is no node for id: %d", &v42, 8u);
          }
        }
      }

      if (__src)
      {
        v39 = __src;
        operator delete(__src);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_25D26B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  a31 = a12;
  std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ou3dor::OU3DORParser::AttibuteInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__emplace_back_slow_path<ou3dor::OU3DORParser::AttibuteInfo const&>(a1, a2);
  }

  else
  {
    std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__construct_one_at_end[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

float std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__construct_one_at_end[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  result = *(a2 + 18);
  *(v4 + 72) = result;
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_25D26BA54(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__emplace_back_slow_path<ou3dor::OU3DORParser::AttibuteInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  *(v7 + 72) = *(a2 + 18);
  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(&v17);
  return v16;
}

void sub_25D26BC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 47) < 0)
  {
    operator delete(*(v4 + 24));
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(a4 + 72) = *(v7 + 72);
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(v5, v4 - 80);
  }
}

void ou3dor::OU3DORParser::AttibuteInfo::~AttibuteInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

uint64_t std::unordered_set<ou3dor::PartAttributeID>::unordered_set(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void _GLOBAL__sub_I_OU3DORParser_mm()
{
  v98 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  *(&v3 + 1) = @"Chair-chair_type-dining";
  LODWORD(v4) = 2;
  *(&v4 + 1) = @"Chair-chair_type-swivel";
  LODWORD(v5) = 3;
  *(&v5 + 1) = @"Chair-chair_type-other";
  LODWORD(v6) = 4;
  *(&v6 + 1) = @"Chair-chair_leg_type-four";
  LODWORD(v7) = 5;
  *(&v7 + 1) = @"Chair-chair_leg_type-star";
  LODWORD(v8) = 6;
  v9 = @"Chair-chair_leg_type-other";
  v10 = 7;
  v11 = @"Chair-chair_arm_type-missing";
  v12 = 8;
  v13 = @"Chair-chair_arm_type-existing";
  v14 = 9;
  v15 = @"Chair-chair_back_type-missing";
  v16 = 10;
  v17 = @"Chair-chair_back_type-existing";
  v18 = 11;
  v19 = @"Chair-chair_seat_height-tall_seat";
  v20 = 12;
  v21 = @"Chair-chair_seat_height-normal/low_seat";
  v22 = 13;
  v23 = @"Chair-chair_seat_shape-rectangular";
  v24 = 14;
  v25 = @"Chair-chair_seat_shape-round";
  v26 = 15;
  v27 = @"Chair-chair_seat_shape-none";
  v28 = 16;
  v29 = @"Sofa-sofa_type-rectangular";
  v30 = 17;
  v31 = @"Sofa-sofa_type-lShaped";
  v32 = 18;
  v33 = @"Sofa-sofa_type-singleSeat";
  v34 = 19;
  v35 = @"Sofa-sofa_type-lShapedMain";
  v36 = 20;
  v37 = @"Sofa-sofa_type-lShapedExtension";
  v38 = 21;
  v39 = @"Sofa-sofa_type-lShapedMiddle";
  v40 = 22;
  v41 = @"Sofa-sofa_type-other";
  v42 = 23;
  v43 = @"Sofa-sofa_arm_type-missing";
  v44 = 24;
  v45 = @"Sofa-sofa_arm_type-two_arms";
  v46 = 25;
  v47 = @"Sofa-sofa_arm_type-none";
  v48 = 26;
  v49 = @"Sofa-sofa_back_type-missing";
  v50 = 27;
  v51 = @"Sofa-sofa_back_type-existing";
  v52 = 28;
  v53 = @"Table-table_type-desk";
  v54 = 29;
  v55 = @"Table-table_type-coffee";
  v56 = 30;
  v57 = @"Table-table_type-dining";
  v58 = 31;
  v59 = @"Table-table_type-other";
  v60 = 32;
  v61 = @"Table-table_shape-rectangular";
  v62 = 33;
  v63 = @"Table-table_shape-lShaped";
  v64 = 34;
  v65 = @"Table-table_shape-circularElliptic";
  v66 = 35;
  v67 = @"Table-table_shape-other";
  v68 = 36;
  v69 = @"Table-table_leg_type-two_leg";
  v70 = 37;
  v71 = @"Table-table_leg_type-four_leg";
  v72 = 38;
  v73 = @"Table-table_leg_type-none";
  v74 = 39;
  v75 = @"Table-table_attribute-with_storage";
  v76 = 40;
  v77 = @"Table-table_attribute-without_storage";
  v78 = 41;
  v79 = @"Cabinet-cabinet_type-standalone_cabinet";
  v80 = 42;
  v81 = @"Cabinet-cabinet_type-kitchen_cabinet";
  v82 = 43;
  v83 = @"Cabinet-cabinet_type-nightstand";
  v84 = 44;
  v85 = @"Cabinet-cabinet_type-none";
  v86 = 45;
  v87 = @"Cabinet-cabinet_attribute-no_countertop";
  v88 = 46;
  v89 = @"Cabinet-cabinet_attribute-with_countertop";
  v90 = 100;
  v91 = @"Sofa-sofa_arm_type-existing";
  v92 = 101;
  LODWORD(v3) = 0;
  v93 = @"Storage-storage_type-cabinet";
  v94 = 102;
  v95 = @"Storage-storage_type-shelf";
  v96 = 103;
  v97 = @"Chair-chair_type-stool";
  std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::unordered_map(&ou3dor::k3DORSupportedAttributeTypeMap, &v3, 50);
  for (i = 792; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::~unordered_map[abi:ne200100], &ou3dor::k3DORSupportedAttributeTypeMap, &dword_25D1DB000);
  v5 = xmmword_25D279F60;
  v6 = unk_25D279F70;
  v7 = xmmword_25D279F80;
  v3 = xmmword_25D279F40;
  v4 = unk_25D279F50;
  v8 = 0x2E0000002DLL;
  objc_autoreleasePoolPop(v0);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25D26C55C(_Unwind_Exception *a1)
{
  for (i = 792; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void ou3dor::Object3DEncoder::Object3DEncoder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_286EBC900;
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 4);
  *(a1 + 88) = 0u;
  *(a1 + 40) = v4;
  *(a1 + 8) = v2;
  *(a1 + 24) = v3;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x25F894AD0](exception, "[3DOR] failed to get the bundle.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25D26C7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v15[15];
  v15[15] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v15[14];
  v15[14] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *v18;
  if (*v18)
  {
    v15[12] = v22;
    operator delete(v22);
  }

  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void ou3dor::Object3DEncoder::Process(ou3dor::Object3DEncoder *a1, void *a2, __int128 **a3)
{
  v6 = a2;
  ou3dor::Object3DEncoder::AddView(a1, v6, a3);
  v5 = [v6 sceneColorBuffer];
  [v6 deviceOrientation];
  ou3dor::Object3DEncoder::ExtractImageFeatures(a1, v5);
}

void ou3dor::Object3DEncoder::AddView(uint64_t a1, void *a2, __int128 **a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v75 = a2;
  v4 = [v75 sceneCamera];
  v74 = v4;
  [v4 intrinsics];
  v73 = v5;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane([v75 sceneColorBuffer], 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane([v75 sceneColorBuffer], 0);
  Width = CVPixelBufferGetWidth([v75 semanticLabelBuffer]);
  Height = CVPixelBufferGetHeight([v75 semanticLabelBuffer]);
  v10 = Height;
  LODWORD(v11) = 1147207680;
  v12 = v73;
  if (*&v73 <= 900.0 || (LODWORD(v11) = 1040746633, (Width / WidthOfPlane) == 0.13333) && (*&v12 = Height / HeightOfPlane, *&v12 == 0.13333))
  {
    [v4 pose];
    v71 = v14;
    [v4 pose];
    v17 = *a3;
    v16 = a3[1];
    if (*a3 == v16)
    {
      goto LABEL_52;
    }

    v72 = __PAIR64__(v10, Width);
    v18 = v15;
    v19 = vdup_n_s32(0x3E088889u);
    while (1)
    {
      v20 = *(v17 + 18);
      if (!v20)
      {
        v45 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25D1DB000, v45, OS_LOG_TYPE_INFO, "[3DOR] can't add view for object w/o uuid, skipping", buf, 2u);
        }

        goto LABEL_51;
      }

      v21 = v74;
      [v21 pose];
      v103 = __invert_f4(v102);
      v82 = v103.columns[1];
      v83 = v103.columns[0];
      v80 = v103.columns[3];
      v81 = v103.columns[2];
      [v21 imageResolution];
      v23 = v22;
      [v21 imageResolution];
      v24 = 0;
      v25 = 0;
      *&v26 = v23;
      *&v27 = v27;
      v77 = LODWORD(v27);
      v78 = v26;
      v79 = __PAIR64__(LODWORD(v27), v26);
      v28 = 0x80000000800000;
      v29 = vneg_f32(0x80000000800000);
      while (1)
      {
        v30 = vaddq_f32(v80, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(v17[v24])), v82, *&v17[v24], 1), v81, v17[v24], 2));
        v84 = v30;
        v30.i32[0] = v30.i32[2];
        if (v30.f32[2] <= 0.0)
        {
          break;
        }

        [v21 intrinsics];
        v34 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v84.f32[0]), v32, *v84.f32, 1), v33, v84, 2);
        if (fabsf(*&v34.i32[2]) >= 0.000001)
        {
          *v35.f32 = vdiv_f32(*v34.i8, vdup_laneq_s32(v34, 2));
          v29 = vbsl_s8(vcgt_f32(v29, *v35.f32), *v35.f32, v29);
          v28 = vbsl_s8(vcgt_f32(*v35.f32, v28), *v35.f32, v28);
          v35.i64[1] = v35.i64[0];
          v36.i32[0] = vmovn_s32(vcgeq_f32(v79, v35)).u32[0];
          v36.i32[1] = vmovn_s32(vcgeq_f32(v35, v79)).i32[1];
          v25 += vminv_u16(v36) & 1;
        }

        if (++v24 == 8)
        {
          v37 = vcvt_s32_f32(v29);
          v38 = vcvt_s32_f32(__PAIR64__(v77, v78));
          v39 = vcvt_s32_f32(v28);
          *&v40 = vand_s8(vcgez_s32(v37), vmin_s32(v38, v37));
          v41 = __PAIR64__(v38.u32[1], v39.u32[0]);
          v38.i32[1] = v39.i32[1];
          DWORD2(v91[1]) = v25;
          v42 = v40;
          v43 = DWORD1(v40);
          *v85.f32 = vsub_s32(vand_s8(vcgez_s32(v39), vmin_s32(v38, v41)), *&v40);
          *(&v40 + 1) = v85.i64[0];
          *(&v91[1] + 12) = v40;
          v44 = v25;
          goto LABEL_20;
        }
      }

      v43 = 0;
      v42 = 0;
      v44 = 0;
      memset(&v91[1] + 8, 0, 20);
      v85.i64[0] = 0;
LABEL_20:

      if (*(a1 + 8) > v44)
      {
        goto LABEL_51;
      }

      v46.i32[1] = v85.i32[1];
      if (v85.i32[0] <= v85.i32[1])
      {
        v47 = v85.i32[1];
      }

      else
      {
        v47 = v85.i32[0];
      }

      if (v42 >= WidthOfPlane - v47)
      {
        LODWORD(v48) = WidthOfPlane - v47;
      }

      else
      {
        LODWORD(v48) = v42;
      }

      if (WidthOfPlane - v47 >= 0)
      {
        v48 = v48;
      }

      else
      {
        v48 = 0;
      }

      if (v43 >= HeightOfPlane - v47)
      {
        v49 = HeightOfPlane - v47;
      }

      else
      {
        v49 = v43;
      }

      if (HeightOfPlane - v47 >= 0)
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = v42 + v47;
      if (v42 + v47 >= WidthOfPlane)
      {
        v51 = WidthOfPlane;
      }

      v52 = (v51 - v48);
      v53 = v43 + v47;
      if (v53 >= HeightOfPlane)
      {
        v53 = HeightOfPlane;
      }

      v54 = (v53 - v50);
      v55 = v52 | (v54 << 32);
      v56 = v48 | (v50 << 32);
      *&v91[0] = v56;
      *(&v91[0] + 1) = v55;
      v46.i32[0] = 1147207680;
      *v57.i64 = v73;
      if (*&v73 > 900.0)
      {
        HIDWORD(v91[1]) = ((v42 * 0.13333) + 0.5);
        LODWORD(v91[2]) = ((v43 * 0.13333) + 0.5);
        DWORD1(v91[2]) = ((v85.i32[0] * 0.13333) + 0.5);
        DWORD2(v91[2]) = ((v85.i32[1] * 0.13333) + 0.5);
        v58 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v19, vcvt_f32_s32(__PAIR64__(v52, v48))));
        v57 = vshll_n_s32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v19, vcvt_f32_s32(__PAIR64__(v54, v50)))), 0x20uLL);
        v59.i64[0] = v58.u32[0];
        v59.i64[1] = v58.u32[1];
        v46 = vorrq_s8(v57, v59);
        v91[0] = v46;
      }

      v60 = [v75 semanticLabelBuffer];
      v61 = std::map<NSString * {__strong},std::set<unsigned char>>::at(&kObjectTypeToSemanticLabels, v17 + 16);
      ou3dor::Object3DEncoder::ComputeSemanticMaskAndScore(v60, v91, &v91[1] + 3, v61, &v88, v72);
      v62 = v90;
      v63 = v88;
      if (v90 >= 10.0)
      {
        break;
      }

      if (v88)
      {
        v64 = v88;
LABEL_50:
        operator delete(v64);
      }

LABEL_51:

      v17 += 14;
      if (v17 == v16)
      {
        goto LABEL_52;
      }
    }

    v65 = *v17;
    v66 = vmul_f32(vadd_f32(*v17, v17[2]), 0x3F0000003F000000);
    v67 = atan2f(v66.f32[1] - v18, v66.f32[0] - v71);
    if (v67 < 0.0)
    {
      v67 = v67 + 6.2832;
    }

    *buf = (v67 * 0.95493);
    v93 = __PAIR64__(LODWORD(v62), DWORD2(v91[1]));
    v94 = v63;
    v95 = v89;
    v88 = 0;
    v89 = 0uLL;
    v96 = v56;
    v97 = v55;
    v98 = v91[0];
    v99 = 0;
    v100 = 0;
    v68 = [v20 UUIDString];
    v69 = v68;
    std::string::basic_string[abi:ne200100]<0>(__p, [v68 UTF8String]);
    ou3dor::Object3DEncoder::AddToObjects(a1, buf, __p);
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }

    v64 = v94;
    if (!v94)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v93 = "Object3DEncoder";
    _os_log_impl(&dword_25D1DB000, v13, OS_LOG_TYPE_INFO, "[3DOR][%s] image resolution ratio != resize scale; will not extract embeddings", buf, 0xCu);
  }

LABEL_52:
  v70 = *MEMORY[0x277D85DE8];
}

void ou3dor::Object3DEncoder::ExtractImageFeatures(ou3dor::Object3DEncoder *this, __CVBuffer *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "input_1");
  std::string::basic_string[abi:ne200100]<0>(&v4, "var_354");
  v2 = *(this + 14);
  OUDnnInferenceInterface::GetInputSpan<half,void>();
}

void sub_25D26D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::ExtractObjectFeatures(ou3dor::Object3DEncoder *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "feat_1");
  std::string::basic_string[abi:ne200100]<0>(&__p, "var_351");
  v2 = *(this + 15);
  OUDnnInferenceInterface::GetInputSpan<half,void>();
}

void sub_25D26D97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::SetEmbeddings(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v2)
  {
    v30 = *v35;
    do
    {
      v31 = v2;
      for (i = 0; i != v31; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v34 + 1) + 8 * i);
        v4 = [v32 identifier];
        v5 = v4 == 0;

        if (!v5)
        {
          v6 = [v32 identifier];
          v7 = [v6 UUIDString];
          v8 = v7;
          v9 = [v7 UTF8String];

          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v10 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 48), __p);
          v11 = v10;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if (!v11)
            {
              goto LABEL_21;
            }
          }

          else if (!v10)
          {
            goto LABEL_21;
          }

          v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v11 + 10)];
          if (*(v11 + 10) >= 1)
          {
            v13 = 0;
            do
            {
              v14 = &v11[74 * v13 + 6];
              if ((*(v14 + 584) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              memcpy(__p, (v14 + 72), sizeof(__p));
              v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
              for (j = 0; j != 512; j += 2)
              {
                LOWORD(_D0) = *(__p + j);
                __asm { FCVT            S0, H0 }

                v22 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
                [v15 addObject:v22];
              }

              [v12 addObject:v15];

              ++v13;
            }

            while (v13 < *(v11 + 10));
          }

          [v32 setEmbedding2d:v12];
          if ((v11[366] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          memcpy(__p, v11 + 302, sizeof(__p));
          v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
          for (k = 0; k != 512; k += 2)
          {
            LOWORD(_D0) = *(__p + k);
            __asm { FCVT            S0, H0 }

            v26 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
            [v23 addObject:v26];
          }

          [v32 setEmbedding3d:v23];
        }

LABEL_21:
      }

      v2 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v2);
  }

  v27 = *MEMORY[0x277D85DE8];
}

float ou3dor::Object3DEncoder::ComputeSemanticMaskAndScore@<S0>(__CVBuffer *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, int32x2_t a6@<D0>)
{
  v8 = a1;
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  CVPixelBufferLockBaseAddress(v8, 1uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
  BaseAddress = CVPixelBufferGetBaseAddress(v8);
  v12 = a2[3] * a2[2];
  v29 = 0;
  std::vector<BOOL>::vector(&v30, v12);
  v13 = a2[3];
  if (v13 < 1)
  {
    v22 = 0.0;
  }

  else
  {
    v25 = v8;
    v26 = a5;
    v14 = 0;
    LODWORD(v8) = 0;
    v15 = 0;
    v16 = a2[1];
    v17 = &BaseAddress[BytesPerRow * v16 + *a2];
    v18 = a2[2];
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = *a2;
        v8 = v8;
        do
        {
          if (v20 + v19 >= *a3 && v20 + v19 < a3[2] + *a3)
          {
            v21 = a3[1];
            if (v16 >= v21 && v16 < a3[3] + v21)
            {
              v29 = v17[v19];
              if (std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(a4, &v29))
              {
                *(v30 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
                ++v15;
              }

              v18 = a2[2];
            }
          }

          v8 = (v8 + 1);
          ++v19;
        }

        while (v19 < v18);
        v13 = a2[3];
      }

      v17 += BytesPerRow;
      ++v14;
      LODWORD(v16) = v16 + 1;
    }

    while (v14 < v13);
    v22 = (765 * v15);
    v8 = v25;
    a5 = v26;
  }

  CVPixelBufferUnlockBaseAddress(v8, 1uLL);
  *a5 = v30;
  result = roundf((v22 / vmul_lane_s32(a6, a6, 1).i32[0]) * 100.0) / 100.0;
  *(a5 + 8) = v31;
  *(a5 + 24) = result;
  return result;
}

void ou3dor::Object3DEncoder::AddToObjects(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 48), a3);
  if (v6)
  {

    ou3dor::Object3DEncoder::AddToObject(v6, a2, v6 + 10);
  }

  else
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a3);
    v8 = *a2;
    *(v7 + 14) = *(a2 + 8);
    v7[6] = v8;
    std::vector<BOOL>::__move_assign((v7 + 8), a2 + 16);
    memcpy(v7 + 11, (a2 + 40), 0x221uLL);
    *(v7 + 10) = 1;
  }
}

uint64_t ou3dor::Object3DEncoder::CalculateBinIdx(float32x2_t *a1, float32x2_t a2)
{
  v2 = *a1->f32;
  *&v2 = vsub_f32(vmul_f32(vadd_f32(*a1, a1[4]), 0x3F0000003F000000), a2);
  v3 = atan2f(*(&v2 + 1), *&v2);
  if (v3 < 0.0)
  {
    v3 = v3 + 6.2832;
  }

  return (v3 * 0.95493);
}

void ou3dor::Object3DEncoder::AddToObject(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = a3 + 2;
  v6 = (*a3)++;
  v7 = &a3[148 * v6 + 2];
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  std::vector<BOOL>::__move_assign(v7 + 16, (a2 + 2));
  memcpy((v7 + 40), a2 + 5, 0x221uLL);
  v9 = *a3;
  v10 = 126 - 2 * __clz(v9);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(v5, &v5[148 * v9], v11, 1);
  v12 = *a3;
  if (v12 >= 4)
  {
    LOBYTE(__p) = 0;
    std::vector<BOOL>::vector(&v28, v12);
    std::vector<BOOL>::vector(&__p, 6);
    v13 = *a3;
    v14 = v28;
    if (v13 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = __p;
      do
      {
        v18 = *v5;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        v21 = v17[v19];
        if ((v20 & v21) == 0)
        {
          v17[v19] = v20 | v21;
          *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          ++v16;
        }

        if (++v15 >= v13)
        {
          break;
        }

        v5 += 148;
      }

      while (v16 < 3);
      if (v13 != 1 && v16 <= 2)
      {
        v22 = 1;
        do
        {
          v23 = v14[v22 >> 6];
          if ((v23 & (1 << v22)) == 0)
          {
            v14[v22 >> 6] = v23 | (1 << v22);
            ++v16;
          }

          ++v22;
        }

        while (v22 < v13 && v16 < 3);
      }
    }

    v24 = 0;
    v25 = a3 - 146;
    do
    {
      v26 = *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
      ++v24;
      v25 += 148;
    }

    while ((v26 & 1) != 0);
    if (v24 < v13)
    {
      do
      {
        *v25 = *(v25 + 74);
        v25[2] = v25[150];
        std::vector<BOOL>::operator=((v25 + 4), (v25 + 152));
        memcpy(v25 + 10, v25 + 158, 0x221uLL);
        v25 += 148;
        LODWORD(v24) = v24 + 1;
      }

      while (*a3 > v24);
    }

    *a3 = v16;
    if (__p)
    {
      operator delete(__p);
    }

    if (v28)
    {
      operator delete(v28);
    }
  }
}

void sub_25D26E338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::~Object3DEncoder(ou3dor::Object3DEncoder *this)
{
  ou3dor::Object3DEncoder::~Object3DEncoder(this);

  JUMPOUT(0x25F894DE0);
}

{
  *this = &unk_286EBC900;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(this + 48);
}

void *std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(void *a1, id *a2, uint64_t a3)
{
  *a1 = *a2;
  std::unordered_set<SemanticLabelv5>::unordered_set((a1 + 1), a3);
  return a1;
}

uint64_t std::unordered_set<SemanticLabelv5>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<SemanticLabelv5,std::hash<SemanticLabelv5>,std::equal_to<SemanticLabelv5>,std::allocator<SemanticLabelv5>>::__emplace_unique_key_args<SemanticLabelv5,SemanticLabelv5 const&>(a1, i + 16);
  }

  return a1;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D26E4D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(uint64_t result, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = a2;
  n = result;
  __dst[69] = *MEMORY[0x277D85DE8];
  v106 = a2;
  v107 = result;
  while (1)
  {
    v8 = v6 - n;
    v9 = 0x14C1BACF914C1BADLL * ((v6 - n) >> 4);
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      goto LABEL_178;
    }

    if (v9 == 2)
    {
      v106 = v6 - 74;
      v61 = *(v6 - 146);
      v62 = *(n + 2);
      if (v61 > v62 || v61 == v62 && *(v6 - 147) > *(n + 1))
      {
        v63 = &v107;
        v64 = &v106;
        goto LABEL_133;
      }

      goto LABEL_178;
    }

LABEL_9:
    if (v8 <= 14207)
    {
      v71 = n + 74;
      v73 = n == v6 || v71 == v6;
      if (a4)
      {
        if (v73)
        {
          goto LABEL_178;
        }

        v74 = 0;
        v75 = n;
        while (1)
        {
          v76 = v75;
          v75 = v71;
          v77 = *(v76 + 150);
          v78 = *(v76 + 2);
          if (v77 > v78)
          {
            break;
          }

          if (v77 == v78)
          {
            v79 = *(v76 + 149);
            if (v79 > *(v76 + 1))
            {
              goto LABEL_147;
            }
          }

LABEL_160:
          v71 = v75 + 74;
          v74 += 592;
          if (v75 + 74 == v6)
          {
            goto LABEL_178;
          }
        }

        v79 = *(v76 + 149);
LABEL_147:
        v101 = *(v76 + 148);
        v80 = v76[76];
        v81 = v76[77];
        v104 = v76[78];
        v76[76] = 0;
        v76[78] = 0;
        v76[77] = 0;
        memcpy(__dst, v76 + 79, 0x221uLL);
        *v75 = *v76;
        *(v75 + 2) = *(v76 + 2);
        v82 = (v76 + 2);
        std::vector<BOOL>::__move_assign((v75 + 2), (v76 + 2));
        v83 = v76 + 5;
        memcpy(v75 + 5, v76 + 5, 0x221uLL);
        if (v76 == n)
        {
          v76 = n;
        }

        else
        {
          v98 = v81;
          v99 = v75;
          v84 = v74;
          do
          {
            v85 = n + v84;
            v86 = *(n + v84 - 584);
            if (v77 <= v86)
            {
              if (v77 != v86)
              {
                v76 = (n + v84);
                v83 = (n + v84 + 40);
                v82 = n + v84 + 16;
                goto LABEL_156;
              }

              if (v79 <= *(n + v84 - 588))
              {
                goto LABEL_156;
              }
            }

            *v85 = *(v85 - 74);
            *(v85 + 2) = *(v85 - 146);
            v82 = (v76 - 72);
            std::vector<BOOL>::__move_assign((v85 + 16), (v85 - 576));
            v83 = v76 - 69;
            memcpy(v85 + 40, v85 - 552, 0x221uLL);
            v76 -= 74;
            v84 -= 592;
          }

          while (v84);
          v83 = n + 5;
          v76 = n;
LABEL_156:
          v75 = v99;
          v81 = v98;
        }

        *v76 = v101;
        *(v76 + 1) = v79;
        *(v76 + 2) = v77;
        if (*v82)
        {
          operator delete(*v82);
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
        }

        *v82 = v80;
        v76[3] = v81;
        v76[4] = v104;
        result = memcpy(v83, __dst, 0x221uLL);
        goto LABEL_160;
      }

      if (v73)
      {
        goto LABEL_178;
      }

      v87 = n + 3;
      while (1)
      {
        v88 = n;
        n = v71;
        v89 = *(v88 + 150);
        v90 = *(v88 + 2);
        if (v89 > v90)
        {
          break;
        }

        if (v89 == v90)
        {
          v91 = *(v88 + 149);
          if (v91 > *(v88 + 1))
          {
            goto LABEL_169;
          }
        }

LABEL_177:
        v71 = n + 74;
        v87 += 74;
        if (n + 74 == v6)
        {
          goto LABEL_178;
        }
      }

      v91 = *(v88 + 149);
LABEL_169:
      v92 = *v71;
      v93 = v88[76];
      v105 = *(v88 + 77);
      v88[76] = 0;
      v88[78] = 0;
      v88[77] = 0;
      memcpy(__dst, v88 + 79, 0x221uLL);
      for (i = v87; ; i -= 74)
      {
        i[71] = *(i - 3);
        *(i + 144) = *(i - 4);
        std::vector<BOOL>::__move_assign((i + 73), (i - 1));
        memcpy(i + 76, i + 2, 0x221uLL);
        v95 = *(i - 152);
        if (v89 <= v95 && (v89 != v95 || v91 <= *(i - 153)))
        {
          break;
        }
      }

      *(i - 6) = v92;
      *(i - 5) = v91;
      *(i - 4) = v89;
      v96 = *(i - 1);
      if (v96)
      {
        operator delete(v96);
      }

      *(i - 1) = v93;
      *i = v105;
      result = memcpy(i + 2, __dst, 0x221uLL);
      goto LABEL_177;
    }

    if (!a3)
    {
      result = std::__partial_sort[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &>(n, v6, v6);
      goto LABEL_178;
    }

    v10 = v9 >> 1;
    v11 = &n[74 * (v9 >> 1)];
    v12 = (v6 - 74);
    if (v8 < 0x12801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(v11, n, v12);
      v13 = v107;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(n, v11, v12);
      v13 = v107;
      v14 = v107 + 592 * v10;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>((v107 + 592), v14 - 592, (v106 - 148));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>((v107 + 1184), v14 + 592, (v106 - 222));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>((v14 - 592), v14, v14 + 592);
      v110 = *v107;
      v15 = *(v107 + 16);
      v111 = *(v107 + 8);
      v16 = *(v107 + 24);
      v17 = *(v107 + 32);
      *(v107 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      memcpy(__dst, (v13 + 40), 0x221uLL);
      v18 = *(v14 + 8);
      *v13 = *v14;
      *(v13 + 8) = v18;
      std::vector<BOOL>::__move_assign(v13 + 16, v14 + 16);
      memcpy((v13 + 40), (v14 + 40), 0x221uLL);
      *v14 = v110;
      *(v14 + 8) = v111;
      v19 = *(v14 + 16);
      if (v19)
      {
        operator delete(v19);
      }

      *(v14 + 16) = v15;
      *(v14 + 24) = v16;
      *(v14 + 32) = v17;
      memcpy((v14 + 40), __dst, 0x221uLL);
    }

    --a3;
    if (a4)
    {
      v102 = a4;
      v20 = *(v13 + 8);
    }

    else
    {
      v21 = *(v13 - 584);
      v20 = *(v13 + 8);
      if (v21 <= v20 && (v21 != v20 || *(v13 - 588) <= *(v13 + 4)))
      {
        v41 = v106;
        v109 = v106;
        v43 = *v13;
        v42 = *(v13 + 4);
        v44 = *(v13 + 16);
        v103 = *(v13 + 24);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        memcpy(__dst, (v13 + 40), 0x221uLL);
        v45 = *(v41 - 146);
        if (v20 > v45 || v20 == v45 && v42 > *(v41 - 147))
        {
          v46 = *(v13 + 600);
          if (v20 <= v46)
          {
            v52 = v13 + 596;
            do
            {
              if (v20 == v46 && v42 > *v52)
              {
                break;
              }

              v46 = *(v52 + 596);
              v52 += 592;
            }

            while (v20 <= v46);
            j = (v52 - 4);
          }

          else
          {
            j = (v13 + 592);
          }
        }

        else
        {
          for (j = (v13 + 592); j < v41; j += 74)
          {
            v51 = *(j + 2);
            if (v20 > v51 || v20 == v51 && v42 > *(j + 1))
            {
              break;
            }
          }
        }

        v110 = j;
        if (j < v41)
        {
          for (k = v41 - 147; v20 > v45 || v20 == v45 && v42 > *(k + 147); k -= 74)
          {
            v45 = *k;
          }

          v41 = k + 73;
          v109 = (k + 73);
        }

        if (j < v41)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v110, &v109);
            v54 = v110[150];
            if (v20 <= v54)
            {
              v55 = v110 + 149;
              do
              {
                if (v20 == v54 && v42 > *v55)
                {
                  break;
                }

                v54 = v55[149];
                v55 += 148;
              }

              while (v20 <= v54);
              j = (v55 - 1);
            }

            else
            {
              j = (v110 + 148);
            }

            v110 = j;
            v56 = v109;
            do
            {
              do
              {
                v56 -= 74;
                v57 = *(v56 + 2);
              }

              while (v20 > v57);
            }

            while (v20 == v57 && v42 > *(v56 + 1));
            v109 = v56;
          }

          while (j < v56);
        }

        v58 = j - 74;
        if (j - 74 != v13)
        {
          v59 = *v58;
          *(v13 + 8) = *(j - 146);
          *v13 = v59;
          std::vector<BOOL>::__move_assign(v13 + 16, (j - 72));
          memcpy((v13 + 40), j - 69, 0x221uLL);
        }

        *v58 = v43;
        *(j - 147) = v42;
        *(j - 146) = v20;
        v60 = *(j - 72);
        if (v60)
        {
          operator delete(v60);
        }

        *(j - 72) = v44;
        *(j - 71) = v103;
        result = memcpy(j - 69, __dst, 0x221uLL);
        a4 = 0;
        n = v110;
        goto LABEL_115;
      }

      v102 = a4;
    }

    v22 = v106;
    v24 = *v13;
    v23 = *(v13 + 4);
    v25 = *(v13 + 16);
    v100 = *(v13 + 24);
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    memcpy(__dst, (v13 + 40), 0x221uLL);
    for (m = 0; ; m += 592)
    {
      v27 = *(v13 + m + 600);
      if (v27 <= v20 && (v27 != v20 || *(v13 + m + 596) <= v23))
      {
        break;
      }
    }

    v28 = (v13 + m + 592);
    v110 = v28;
    if (m)
    {
      v29 = *(v22 - 146);
      if (v29 <= v20)
      {
        v32 = v22 - 147;
        do
        {
          if (v29 == v20 && *(v32 + 147) > v23)
          {
            break;
          }

          v29 = *v32;
          v32 -= 74;
        }

        while (v29 <= v20);
        v22 = v32 + 73;
      }

      else
      {
        v22 -= 74;
      }
    }

    else if (v28 < v22)
    {
      v30 = v22 - 74;
      v31 = *(v22 - 146);
      if (v31 <= v20)
      {
        v48 = v22 - 147;
        do
        {
          v49 = (v48 + 73);
          if (v31 == v20)
          {
            if (*(v48 + 147) > v23 || v28 >= v49)
            {
              goto LABEL_32;
            }
          }

          else if (v28 >= v49)
          {
            break;
          }

          v30 -= 74;
          v31 = *v48;
          v48 -= 74;
        }

        while (v31 <= v20);
        v22 = v48 + 73;
      }

      else
      {
LABEL_32:
        v22 = v30;
      }
    }

    v109 = v22;
    n = v28;
    if (v28 < v22)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v110, &v109);
        for (n = (v110 + 148); ; n += 74)
        {
          v33 = *(n + 2);
          if (v33 <= v20 && (v33 != v20 || *(n + 1) <= v23))
          {
            break;
          }
        }

        v110 = n;
        v34 = *(v109 - 146);
        if (v34 <= v20)
        {
          v36 = (v109 - 294);
          do
          {
            if (v34 == v20 && *(v36 + 147) > v23)
            {
              break;
            }

            v34 = *v36;
            v36 -= 74;
          }

          while (v34 <= v20);
          v35 = v36 + 73;
        }

        else
        {
          v35 = (v109 - 148);
        }

        v109 = v35;
      }

      while (n < v35);
    }

    v37 = n - 74;
    if (n - 74 != v13)
    {
      v38 = *v37;
      *(v13 + 8) = *(n - 146);
      *v13 = v38;
      std::vector<BOOL>::__move_assign(v13 + 16, (n - 72));
      memcpy((v13 + 40), n - 69, 0x221uLL);
    }

    *v37 = v24;
    *(n - 147) = v23;
    *(n - 146) = v20;
    v39 = *(n - 72);
    if (v39)
    {
      operator delete(v39);
    }

    *(n - 72) = v25;
    *(n - 71) = v100;
    memcpy(n - 69, __dst, 0x221uLL);
    a4 = v102;
    if (v28 < v22)
    {
      goto LABEL_57;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v107, (n - 74));
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(n, v106);
    if (!result)
    {
      if (!v40)
      {
LABEL_57:
        result = std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(v107, n - 74, a3, v102 & 1);
        a4 = 0;
      }

LABEL_115:
      v107 = n;
      goto LABEL_116;
    }

    if (v40)
    {
      goto LABEL_178;
    }

    v106 = n - 74;
    n = v107;
LABEL_116:
    v6 = v106;
  }

  if (v9 == 3)
  {
    v106 = v6 - 74;
    result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(n, (n + 74), (v6 - 74));
    goto LABEL_178;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
      v106 = v6 - 74;
      result = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(n, (n + 74), (n + 148), (n + 222), (v6 - 74));
      goto LABEL_178;
    }

    goto LABEL_9;
  }

  v106 = v6 - 74;
  __dst[0] = n;
  v109 = (n + 148);
  v110 = (n + 74);
  v108 = v6 - 74;
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(n, (n + 74), (n + 148));
  v65 = *(v6 - 146);
  v66 = *(n + 298);
  if (v65 > v66 || v65 == v66 && *(v6 - 147) > *(n + 297))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v109, &v108);
    v67 = v109[2];
    v68 = *(n + 150);
    if (v67 > v68 || v67 == v68 && *(v109 + 1) > *(n + 149))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v110, &v109);
      v69 = v110[2];
      v70 = *(n + 2);
      if (v69 > v70 || v69 == v70 && *(v110 + 1) > *(n + 1))
      {
        v63 = __dst;
        v64 = &v110;
LABEL_133:
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v63, v64);
      }
    }
  }

LABEL_178:
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(uint64_t **a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v11 = **a1;
  v4 = (*a1)[2];
  v12 = *(*a1 + 2);
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  memcpy(__dst, v2 + 5, sizeof(__dst));
  v7 = *(v3 + 8);
  *v2 = *v3;
  *(v2 + 2) = v7;
  std::vector<BOOL>::__move_assign((v2 + 2), v3 + 16);
  memcpy(v2 + 5, (v3 + 40), 0x221uLL);
  *v3 = v11;
  *(v3 + 8) = v12;
  v8 = *(v3 + 16);
  if (v8)
  {
    operator delete(v8);
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  result = memcpy((v3 + 40), __dst, 0x221uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

float *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(float *result, uint64_t a2, uint64_t a3)
{
  v15 = result;
  v13 = a3;
  v14 = a2;
  v3 = *(a2 + 8);
  v4 = result[2];
  if (v3 > v4 || v3 == v4 && *(a2 + 4) > *(result + 1))
  {
    v5 = *(a3 + 8);
    if (v5 > v3 || v5 == v3 && *(a3 + 4) > *(a2 + 4))
    {
      v6 = &v15;
LABEL_19:
      v10 = &v13;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v6, v10);
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v15, &v14);
    v11 = *(v13 + 8);
    v12 = v14[2];
    if (v11 > v12 || v11 == v12 && *(v13 + 4) > *(v14 + 1))
    {
      v6 = &v14;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *(a3 + 8);
    if (v7 > v3 || v7 == v3 && *(a3 + 4) > *(a2 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v14, &v13);
      v8 = v14[2];
      v9 = v15[2];
      if (v8 > v9 || v8 == v9 && *(v14 + 1) > *(v15 + 1))
      {
        v6 = &v15;
        v10 = &v14;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v6, v10);
      }
    }
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a1;
  v26 = a4;
  v27 = a3;
  v25 = a5;
  v33 = a1;
  v31 = a3;
  v32 = a2;
  v30 = a4;
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a2, a3);
  v11 = *(a4 + 8);
  v12 = *(a3 + 8);
  if (v11 > v12 || v11 == v12 && *(a4 + 4) > *(a3 + 4))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v31, &v30);
    v13 = v31[2];
    v14 = *(a2 + 8);
    if (v13 > v14 || v13 == v14 && *(v31 + 1) > *(a2 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v32, &v31);
      v15 = v32[2];
      v16 = *(a1 + 8);
      if (v15 > v16 || v15 == v16 && *(v32 + 1) > *(a1 + 4))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v33, &v32);
      }
    }
  }

  v17 = *(a5 + 8);
  v18 = *(a4 + 8);
  if (v17 > v18 || v17 == v18 && *(a5 + 4) > *(a4 + 4))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v26, &v25);
    v19 = v26[2];
    v20 = *(a3 + 8);
    if (v19 > v20 || v19 == v20 && *(v26 + 1) > *(a3 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v27, &v26);
      v21 = v27[2];
      v22 = *(a2 + 8);
      if (v21 > v22 || v21 == v22 && *(v27 + 1) > *(a2 + 4))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v28, &v27);
        v23 = v28[2];
        v24 = *(a1 + 8);
        if (v23 > v24 || v23 == v24 && *(v28 + 1) > *(a1 + 4))
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v29, &v28);
        }
      }
    }
  }

  return result;
}

int *std::__partial_sort[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &>(int *result, uint64_t *a2, uint64_t *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v54 = result;
    v6 = a2 - result;
    v7 = 0x14C1BACF914C1BADLL * ((a2 - result) >> 4);
    if (a2 - result >= 593)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = &result[148 * v8];
      do
      {
        result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v5, v7, v10);
        v10 -= 148;
        --v9;
      }

      while (v9);
    }

    v53 = v4;
    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        v12 = *(v11 + 2);
        v13 = v54[2];
        if (v12 > v13 || v12 == v13 && *(v11 + 1) > *(v54 + 1))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v53, &v54);
          result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v54, v7, v54);
          v11 = v53;
        }

        v11 += 74;
        v53 = v11;
      }

      while (v11 != a3);
      v5 = v54;
      v6 = v4 - v54;
    }

    if (v6 >= 593)
    {
      v14 = 0x14C1BACF914C1BADLL * (v6 >> 4);
      do
      {
        v15 = v4;
        v55 = *v5;
        v56 = v5[2];
        v16 = *(v5 + 3);
        v51 = *(v5 + 2);
        v17 = *(v5 + 4);
        *(v5 + 3) = 0;
        *(v5 + 4) = 0;
        *(v5 + 2) = 0;
        memcpy(__dst, v5 + 10, 0x221uLL);
        v18 = 0;
        v19 = v5;
        do
        {
          v20 = v19;
          v21 = &v19[148 * v18];
          v19 = v21 + 148;
          v22 = 2 * v18;
          v18 = (2 * v18) | 1;
          v23 = v22 + 2;
          if (v23 < v14)
          {
            v24 = *(v21 + 150);
            v25 = *(v21 + 298);
            if (v24 > v25 || v24 == v25 && v21[149] > v21[297])
            {
              v19 = v21 + 296;
              v18 = v23;
            }
          }

          v26 = *v19;
          v20[2] = v19[2];
          *v20 = v26;
          std::vector<BOOL>::__move_assign((v20 + 4), (v19 + 4));
          memcpy(v20 + 10, v19 + 10, 0x221uLL);
        }

        while (v18 <= ((v14 - 2) >> 1));
        v4 = v15 - 74;
        if (v19 == (v15 - 74))
        {
          v33 = v55;
          v19[2] = v56;
          *v19 = v33;
          v34 = *(v19 + 2);
          if (v34)
          {
            operator delete(v34);
          }

          *(v19 + 2) = v51;
          *(v19 + 3) = v16;
          *(v19 + 4) = v17;
          v35 = v19 + 10;
          v36 = __dst;
        }

        else
        {
          v27 = *v4;
          v19[2] = *(v15 - 146);
          *v19 = v27;
          std::vector<BOOL>::__move_assign((v19 + 4), (v15 - 72));
          memcpy(v19 + 10, v15 - 69, 0x221uLL);
          *v4 = v55;
          *(v15 - 146) = v56;
          if (*(v15 - 72))
          {
            operator delete(*(v15 - 72));
          }

          *(v15 - 72) = v51;
          *(v15 - 71) = v16;
          *(v15 - 70) = v17;
          result = memcpy(v15 - 69, __dst, 0x221uLL);
          if ((v19 + 148) - v5 < 593)
          {
            continue;
          }

          v28 = 0x14C1BACF914C1BADLL * (((v19 + 148) - v5) >> 4) - 2;
          v29 = v28 >> 1;
          v30 = &v5[148 * (v28 >> 1)];
          v31 = *(v30 + 2);
          v32 = *(v19 + 2);
          if (v31 <= v32)
          {
            if (v31 != v32)
            {
              continue;
            }

            v52 = v19[1];
            if (v30[1] <= v52)
            {
              continue;
            }
          }

          else
          {
            v52 = v19[1];
          }

          v47 = *v19;
          v49 = *(v19 + 3);
          v50 = *(v19 + 2);
          v48 = *(v19 + 4);
          *(v19 + 2) = 0;
          *(v19 + 3) = 0;
          *(v19 + 4) = 0;
          memcpy(__src, v19 + 10, 0x221uLL);
          v37 = v30[2];
          *v19 = *v30;
          v19[2] = v37;
          v38 = v30 + 4;
          std::vector<BOOL>::__move_assign((v19 + 4), (v30 + 4));
          v39 = v30 + 10;
          memcpy(v19 + 10, v30 + 10, 0x221uLL);
          if (v28 >= 2)
          {
            while (1)
            {
              v41 = v29 - 1;
              v29 = (v29 - 1) >> 1;
              v40 = &v5[148 * v29];
              v42 = *(v40 + 2);
              if (v42 <= v32 && (v42 != v32 || v40[1] <= v52))
              {
                break;
              }

              v43 = *v40;
              v30[2] = v40[2];
              *v30 = v43;
              v38 = v40 + 4;
              std::vector<BOOL>::__move_assign((v30 + 4), (v40 + 4));
              v39 = v40 + 10;
              memcpy(v30 + 10, v40 + 10, 0x221uLL);
              v30 = &v5[148 * v29];
              if (v41 <= 1)
              {
                goto LABEL_39;
              }
            }
          }

          v40 = v30;
LABEL_39:
          *v40 = v47;
          v40[1] = v52;
          *(v40 + 2) = v32;
          v44 = *(v40 + 2);
          if (v44)
          {
            operator delete(v44);
            v38[1] = 0;
            v38[2] = 0;
          }

          *v38 = v50;
          *(v40 + 3) = v49;
          *(v40 + 4) = v48;
          v36 = __src;
          v35 = v39;
        }

        result = memcpy(v35, v36, 0x221uLL);
      }

      while (v14-- > 2);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __dst[69] = *MEMORY[0x277D85DE8];
  v35 = a2;
  v36 = a1;
  v4 = 0x14C1BACF914C1BADLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a2 - 592);
        goto LABEL_46;
      case 4:
        v39 = (a1 + 592);
        __dst[0] = a1;
        v37 = a2 - 592;
        v38 = (a1 + 1184);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184);
        v23 = *(v2 - 584);
        v24 = *(a1 + 1192);
        if (v23 <= v24 && (v23 != v24 || *(v2 - 588) <= *(a1 + 1188)))
        {
          goto LABEL_46;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v38, &v37);
        v25 = v38[2];
        v26 = *(a1 + 600);
        if (v25 <= v26 && (v25 != v26 || *(v38 + 1) <= *(a1 + 596)))
        {
          goto LABEL_46;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v39, &v38);
        v27 = v39[2];
        v28 = *(a1 + 8);
        if (v27 <= v28 && (v27 != v28 || *(v39 + 1) <= *(a1 + 4)))
        {
          goto LABEL_46;
        }

        v7 = __dst;
        v8 = &v39;
LABEL_45:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v7, v8);
        goto LABEL_46;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184, a1 + 1776, a2 - 592);
        goto LABEL_46;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_46;
    }

    if (v4 == 2)
    {
      v35 = a2 - 592;
      v5 = *(a2 - 584);
      v6 = *(a1 + 8);
      if (v5 <= v6 && (v5 != v6 || *(a2 - 588) <= *(a1 + 4)))
      {
        goto LABEL_46;
      }

      v7 = &v36;
      v8 = &v35;
      goto LABEL_45;
    }
  }

  v9 = (a1 + 1184);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184);
  v10 = a1 + 1776;
  if (a1 + 1776 != v2)
  {
    v11 = 0;
    v12 = (a1 + 1224);
    do
    {
      v13 = *(v10 + 8);
      v14 = v9[2];
      if (v13 <= v14)
      {
        if (v13 != v14)
        {
          goto LABEL_33;
        }

        v15 = *(v10 + 4);
        if (v15 <= *(v9 + 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v15 = *(v10 + 4);
      }

      v31 = *v10;
      v33 = *(v10 + 24);
      v34 = *(v10 + 16);
      v32 = *(v10 + 32);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      memcpy(__dst, (v10 + 40), 0x221uLL);
      *v10 = *v9;
      *(v10 + 8) = v9[2];
      v16 = v9 + 4;
      std::vector<BOOL>::__move_assign(v10 + 16, (v9 + 4));
      v17 = v9 + 10;
      memcpy((v10 + 40), v9 + 10, 0x221uLL);
      v18 = v36;
      if (v9 != v36)
      {
        v19 = v12;
        v20 = v9;
        while (1)
        {
          v21 = *(v19 - 156);
          if (v13 <= v21)
          {
            if (v13 != v21)
            {
              v9 = v20;
              goto LABEL_28;
            }

            if (v15 <= *(v19 - 157))
            {
              break;
            }
          }

          v9 = v20 - 148;
          v22 = v19 - 158;
          *(v19 - 5) = *(v19 - 79);
          *(v19 - 8) = *(v19 - 156);
          v16 = v20 - 144;
          std::vector<BOOL>::__move_assign((v19 - 6), (v19 - 154));
          v17 = v19 - 148;
          memcpy(v19, v19 - 148, 0x221uLL);
          v19 -= 148;
          v20 = v9;
          if (v22 == v18)
          {
            goto LABEL_29;
          }
        }

        v16 = v19 - 6;
        v9 = v19 - 10;
LABEL_28:
        v17 = v19;
      }

LABEL_29:
      *v9 = v31;
      *(v9 + 1) = v15;
      v9[2] = v13;
      if (*v16)
      {
        operator delete(*v16);
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
      }

      *v16 = v34;
      *(v9 + 3) = v33;
      *(v9 + 4) = v32;
      memcpy(v17, __dst, 0x221uLL);
      if (++v11 == 8)
      {
        result = v10 + 592 == v35;
        goto LABEL_47;
      }

      v2 = v35;
LABEL_33:
      v9 = v10;
      v12 += 148;
      v10 += 592;
    }

    while (v10 != v2);
  }

LABEL_46:
  result = 1;
LABEL_47:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

char *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(char *result, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x14C1BACF914C1BADLL * ((a3 - result) >> 4))
    {
      v8 = (0x2983759F2298375ALL * ((a3 - result) >> 4)) | 1;
      v9 = &result[592 * v8];
      if (0x2983759F2298375ALL * ((a3 - result) >> 4) + 2 < a2)
      {
        v10 = *(v9 + 2);
        v11 = *(v9 + 150);
        if (v10 > v11 || v10 == v11 && *(v9 + 1) > *(v9 + 149))
        {
          v9 += 592;
          v8 = 0x2983759F2298375ALL * ((a3 - result) >> 4) + 2;
        }
      }

      v12 = *(v9 + 2);
      v13 = *(a3 + 2);
      if (v12 <= v13)
      {
        if (v12 == v13)
        {
          v14 = a3[1];
          if (*(v9 + 1) > v14)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v14 = a3[1];
        }

        v27 = *a3;
        v29 = *(a3 + 3);
        v30 = *(a3 + 2);
        v28 = *(a3 + 4);
        *(a3 + 2) = 0;
        *(a3 + 3) = 0;
        *(a3 + 4) = 0;
        memcpy(__dst, a3 + 10, sizeof(__dst));
        v15 = *(v9 + 2);
        *a3 = *v9;
        a3[2] = v15;
        v16 = v9 + 16;
        std::vector<BOOL>::__move_assign((a3 + 4), (v9 + 16));
        v17 = v9 + 40;
        memcpy(a3 + 10, v9 + 40, 0x221uLL);
        if (v6 >= v8)
        {
          while (1)
          {
            v21 = 2 * v8;
            v8 = (2 * v8) | 1;
            v18 = &v5[592 * v8];
            v22 = v21 + 2;
            if (v22 < a2)
            {
              v23 = *(v18 + 2);
              v24 = *(v18 + 150);
              if (v23 > v24 || v23 == v24 && *(v18 + 1) > *(v18 + 149))
              {
                v18 += 592;
                v8 = v22;
              }
            }

            v25 = *(v18 + 2);
            if (v25 > v13 || v25 == v13 && *(v18 + 1) > v14)
            {
              break;
            }

            v26 = *v18;
            *(v9 + 2) = *(v18 + 2);
            *v9 = v26;
            v16 = v18 + 16;
            std::vector<BOOL>::__move_assign((v9 + 16), (v18 + 16));
            v17 = v18 + 40;
            memcpy(v9 + 40, v18 + 40, 0x221uLL);
            v9 = v18;
            if (v6 < v8)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v9;
LABEL_14:
        *v18 = v27;
        *(v18 + 1) = v14;
        *(v18 + 2) = v13;
        v19 = *(v18 + 2);
        if (v19)
        {
          operator delete(v19);
          v16[1] = 0;
          v16[2] = 0;
        }

        *v16 = v30;
        *(v18 + 3) = v29;
        *(v18 + 4) = v28;
        result = memcpy(v17, __dst, 0x221uLL);
      }
    }
  }

LABEL_17:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::map[abi:ne200100](void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>(void *a1, void *a2, unint64_t *a3)
{
  result = *std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__find_equal<NSString * {__strong}>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__construct_node<std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>();
  }

  return result;
}

void sub_25D27006C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100](void *a1, id *a2)
{
  v3 = (a2 + 1);
  *a1 = *a2;
  std::unordered_set<SemanticLabelv5>::unordered_set((a1 + 1), v3);
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a2 + 5));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(a1, a2[1]);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>::~pair(uint64_t a1)
{
  for (i = 1824; i != -544; i -= 592)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      operator delete(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25D2704CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D270580(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6ou3dor15Object3DEncoder15ObjectWithViewsILm3EEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSG_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSP_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  bzero(&this[1], 0xB50uLL);
  for (i = 0; i != 2368; i += 592)
  {
    v6 = this + i;
    *(v6 + 6) = 0;
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    v6[104] = 0;
    v6[616] = 0;
  }

  this[100].__r_.__value_.__s.__data_[0] = 0;
  this[121].__r_.__value_.__s.__data_[8] = 0;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    for (i = 230; i != -66; i -= 74)
    {
      v4 = __p[i];
      if (v4)
      {
        operator delete(v4);
      }
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _GLOBAL__sub_I_Object3DEncoder_mm()
{
  v121[7] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v65) = 0;
  *(&v65 + 1) = @"Unknown";
  LODWORD(v66) = 1;
  *(&v66 + 1) = *(&v65 + 1);
  LODWORD(v67) = 2;
  *(&v67 + 1) = *(&v66 + 1);
  LODWORD(v68) = 3;
  *(&v68 + 1) = *(&v67 + 1);
  LODWORD(v69) = 4;
  *(&v69 + 1) = *(&v68 + 1);
  LODWORD(v70) = 5;
  *(&v70 + 1) = *(&v69 + 1);
  LODWORD(v71) = 6;
  v22 = @"Door";
  *(&v71 + 1) = v22;
  LODWORD(v72) = 7;
  v21 = @"Window";
  *(&v72 + 1) = v21;
  LODWORD(v73) = 8;
  *(&v73 + 1) = *(&v70 + 1);
  LODWORD(v74) = 9;
  v19 = @"Fireplace";
  *(&v74 + 1) = v19;
  LODWORD(v75) = 10;
  *(&v75 + 1) = *(&v73 + 1);
  LODWORD(v76) = 11;
  *(&v76 + 1) = *(&v75 + 1);
  LODWORD(v77) = 12;
  v20 = @"Stairs";
  *(&v77 + 1) = v20;
  LODWORD(v78) = 13;
  v15 = @"Bed";
  *(&v78 + 1) = v15;
  LODWORD(v79) = 14;
  v80 = @"Cabinet";
  LODWORD(v81) = 15;
  v18 = @"Chair";
  v82 = v18;
  v83 = 16;
  v84 = v80;
  v85 = 17;
  v86 = v84;
  LODWORD(v87) = 18;
  v17 = @"Sofa";
  v88 = v17;
  v89 = 19;
  v16 = @"Table";
  v90 = v16;
  v91 = 20;
  v14 = @"Toilet";
  v92 = v14;
  LODWORD(v93[0]) = 21;
  v12 = @"Sink";
  v93[1] = v12;
  v94 = 22;
  v13 = @"Bathtub";
  v95 = v13;
  v96 = 23;
  v97 = *(&v76 + 1);
  LODWORD(v98[0]) = 24;
  v0 = @"Refrigerator";
  v98[1] = v0;
  v99 = 25;
  v1 = @"Stove";
  v100 = v1;
  v101 = 26;
  v2 = @"Washer";
  v102 = v2;
  LODWORD(v103[0]) = 27;
  v3 = @"Oven";
  v103[1] = v3;
  v104 = 28;
  v4 = @"Dishwasher";
  v105 = v4;
  v106 = 29;
  v107 = v97;
  LODWORD(v108[0]) = 30;
  v5 = v86;
  v108[1] = v5;
  v109 = 31;
  v110 = v107;
  v111 = 32;
  v11 = @"Screen";
  v112 = v11;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v65, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v75 = xmmword_25D27A068;
  v76 = unk_25D27A078;
  v77 = xmmword_25D27A088;
  v78 = unk_25D27A098;
  v71 = xmmword_25D27A028;
  v72 = unk_25D27A038;
  v73 = xmmword_25D27A048;
  v74 = unk_25D27A058;
  v67 = xmmword_25D279FE8;
  v68 = unk_25D279FF8;
  v69 = xmmword_25D27A008;
  v70 = unk_25D27A018;
  v65 = xmmword_25D279FC8;
  v66 = unk_25D279FD8;
  v79 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v65, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v65) = 0;
  *(&v65 + 1) = v5;
  LODWORD(v66) = 1;
  *(&v66 + 1) = v0;
  LODWORD(v67) = 2;
  *(&v67 + 1) = @"Shelf";
  LODWORD(v68) = 3;
  *(&v68 + 1) = v1;
  LODWORD(v69) = 4;
  *(&v69 + 1) = v15;
  LODWORD(v70) = 5;
  *(&v70 + 1) = v12;
  LODWORD(v71) = 6;
  *(&v71 + 1) = v2;
  LODWORD(v72) = 7;
  *(&v72 + 1) = v14;
  LODWORD(v73) = 8;
  *(&v73 + 1) = v13;
  LODWORD(v74) = 9;
  *(&v74 + 1) = v3;
  LODWORD(v75) = 10;
  *(&v75 + 1) = v4;
  LODWORD(v76) = 11;
  *(&v76 + 1) = v19;
  LODWORD(v77) = 12;
  *(&v77 + 1) = @"Stool";
  LODWORD(v78) = 13;
  *(&v78 + 1) = v18;
  LODWORD(v79) = 14;
  v80 = v16;
  LODWORD(v81) = 15;
  v82 = v11;
  v83 = 16;
  v84 = v17;
  v85 = 17;
  v86 = v20;
  LODWORD(v87) = 18;
  v88 = v21;
  v89 = 19;
  v90 = v22;
  v91 = 20;
  v92 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v65, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  v62 = 4366;
  v63 = 30;
  std::unordered_set<SemanticLabelv5>::unordered_set(v64, &v62, 3);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v65, &OU3DObjectTypeCabinet, v64);
  v60 = 24;
  std::unordered_set<SemanticLabelv5>::unordered_set(v61, &v60, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v68, &OU3DObjectTypeRefrigerator, v61);
  v57 = 4366;
  v58 = 30;
  std::unordered_set<SemanticLabelv5>::unordered_set(v59, &v57, 3);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v71, &OU3DObjectTypeShelf, v59);
  v55 = 25;
  std::unordered_set<SemanticLabelv5>::unordered_set(v56, &v55, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v74, &OU3DObjectTypeStove, v56);
  v53 = 13;
  std::unordered_set<SemanticLabelv5>::unordered_set(v54, &v53, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v77, &OU3DObjectTypeBed, v54);
  v51 = 21;
  std::unordered_set<SemanticLabelv5>::unordered_set(v52, &v51, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v81, &OU3DObjectTypeSink, v52);
  v49 = 26;
  std::unordered_set<SemanticLabelv5>::unordered_set(v50, &v49, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v87, &OU3DObjectTypeWasher, v50);
  v47 = 20;
  std::unordered_set<SemanticLabelv5>::unordered_set(v48, &v47, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v93, &OU3DObjectTypeToilet, v48);
  v45 = 22;
  std::unordered_set<SemanticLabelv5>::unordered_set(v46, &v45, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v98, &OU3DObjectTypeBathtub, v46);
  v43 = 27;
  std::unordered_set<SemanticLabelv5>::unordered_set(v44, &v43, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v103, &OU3DObjectTypeOven, v44);
  v41 = 28;
  std::unordered_set<SemanticLabelv5>::unordered_set(v42, &v41, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v108, &OU3DObjectTypeDishwasher, v42);
  v39 = 9;
  std::unordered_set<SemanticLabelv5>::unordered_set(v40, &v39, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v113, &OU3DObjectTypeFireplace, v40);
  v37 = 15;
  std::unordered_set<SemanticLabelv5>::unordered_set(v38, &v37, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v114, &OU3DObjectTypeStool, v38);
  v35 = 15;
  std::unordered_set<SemanticLabelv5>::unordered_set(v36, &v35, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v115, &OU3DObjectTypeChair, v36);
  v33 = 19;
  std::unordered_set<SemanticLabelv5>::unordered_set(v34, &v33, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v116, &OU3DObjectTypeTable, v34);
  v31 = 32;
  std::unordered_set<SemanticLabelv5>::unordered_set(v32, &v31, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v117, &OU3DObjectTypeScreen, v32);
  v29 = 18;
  std::unordered_set<SemanticLabelv5>::unordered_set(v30, &v29, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v118, &OU3DObjectTypeSofa, v30);
  v27 = 12;
  std::unordered_set<SemanticLabelv5>::unordered_set(v28, &v27, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v119, &OU3DObjectTypeStairs, v28);
  v25 = 7;
  std::unordered_set<SemanticLabelv5>::unordered_set(v26, &v25, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v120, &OU3DObjectTypeWindow, v26);
  v23 = 6;
  std::unordered_set<SemanticLabelv5>::unordered_set(v24, &v23, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v121, &OU3DObjectTypeDoor, v24);
  std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::map[abi:ne200100](kObjectTypeToSemanticLabels, &v65, 20);
  v8 = 960;
  do
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v64[v8]);

    v8 -= 48;
  }

  while (v8);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v24);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v26);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v28);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v30);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v34);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v40);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v42);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v44);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v46);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v48);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v50);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v54);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v56);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v59);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v61);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v64);
  __cxa_atexit(std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::~map[abi:ne200100], kObjectTypeToSemanticLabels, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25D271318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = v72 + 920;
  v75 = -960;
  do
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v74);

    v74 -= 48;
    v75 += 48;
  }

  while (v75);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a24);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a30);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a36);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a42);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a48);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a54);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a60);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a66);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a72);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x228]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x258]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x288]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2B8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2E8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x318]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x348]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x378]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x3A8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x3D8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x408]);
  _Unwind_Resume(a1);
}

CVPixelBufferRef CreateCVPixelBuffer(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  poolOut = 0;
  v15[0] = *MEMORY[0x277CC4E30];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v16[0] = v4;
  v15[1] = *MEMORY[0x277CC4EC8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v16[1] = v5;
  v15[2] = *MEMORY[0x277CC4DD8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v15[3] = *MEMORY[0x277CC4DE8];
  v16[2] = v6;
  v16[3] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v8 = *MEMORY[0x277CBECE8];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v7, &poolOut);
  if (CVPixelBufferPoolCreatePixelBuffer(v8, poolOut, &pixelBufferOut))
  {
    v11 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CreateCVPixelBuffer(v11);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, &unk_25D2878C2);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CVPixelBufferPoolRelease(poolOut);
  result = pixelBufferOut;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

float GetVoteWeight(float a1, float a2)
{
  v2 = vabds_f32(a1, a2);
  result = 3.0;
  if (v2 >= 0.1)
  {
    result = 2.0;
    if (v2 >= 0.2)
    {
      result = 0.0;
      if (v2 < 0.3)
      {
        return 1.0;
      }
    }
  }

  return result;
}

unint64_t HistogramMaxBin(float **a1, uint64_t a2, float a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (v8 == v7 || v7 - v8 != *(a2 + 8) - *a2)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v9 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>,std::__identity,std::__less<void,void>>(v8, v7);
    std::vector<float>::vector[abi:ne200100](&__p, (vcvtms_s32_f32(((*v10 + a3) - *v9) / a3) + 1));
    v11 = *a1;
    v12 = __p;
    v13 = a1[1] - *a1;
    if (v13)
    {
      v14 = v13 >> 2;
      v15 = *a2;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        v16 = *v11++;
        v17 = vcvtms_s32_f32((v16 - *v9) / a3);
        v18 = *v15++;
        v12[v17] = v18 + v12[v17];
        --v14;
      }

      while (v14);
    }

    if (v12 == v30)
    {
      v20 = v12;
    }

    else
    {
      v19 = v12 + 1;
      v20 = v12;
      if (v12 + 1 != v30)
      {
        v21 = *v12;
        v20 = v12;
        v22 = v12 + 1;
        do
        {
          v23 = *v22++;
          v24 = v23;
          if (v21 < v23)
          {
            v21 = v24;
            v20 = v19;
          }

          v19 = v22;
        }

        while (v22 != v30);
      }
    }

    v27 = *v9 + ((v20 - v12) * a3);
    v25 = *v20;
    if (v12)
    {
      v30 = v12;
      operator delete(v12);
    }

    v26 = LODWORD(v27) << 32;
  }

  return v26 | v25;
}

void SmoothObjectUponHistory(OU3DObject *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_25;
  }

  v5 = [(OU3DObject *)v3 refined_box_history];

  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [(OU3DObject *)v4 refined_box_history];
  v7 = [v6 count];

  if (v7 < 3)
  {
    goto LABEL_25;
  }

  v8 = [(OU3DObject *)v4 refined_box_history];
  v9 = v7 - 1;
  v10 = [v8 objectAtIndexedSubscript:v7 - 1];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = [(OU3DObject *)v4 refined_box_history];
  v12 = [v11 objectAtIndexedSubscript:v9];
  v13 = [v12 refinedBox];

  if (!v13)
  {
LABEL_25:
    *a2 = 0;
    *(a2 + 128) = 0;
    goto LABEL_26;
  }

  v8 = [(OU3DObject *)v4 refined_box_history];
  v14 = [v8 objectAtIndexedSubscript:v9];
  v15 = [v14 preRefinedBox];
  if (!v15)
  {

LABEL_24:
    goto LABEL_25;
  }

  v16 = [(OU3DObject *)v4 refined_box_history];
  v17 = [v16 objectAtIndexedSubscript:v9];
  v18 = [v17 preRefinedBox];
  v19 = [v18 count];

  if (v19 != 8)
  {
    goto LABEL_25;
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v20 = [(OU3DObject *)v4 refined_box_history];
  v21 = [v20 objectAtIndexedSubscript:v9];
  v22 = [v21 preRefinedBox];
  box3dFromNSArray(v22, &v131);

  box3dToCentroidSizeAngle(&v131, __p);
  v23 = *(__p[0] + 6);
  __p[1] = __p[0];
  operator delete(__p[0]);
  if (v23 < -9.0)
  {
    goto LABEL_25;
  }

  v129 = 0;
  v128 = 0;
  v130 = 0;
  v126 = 0;
  v125 = 0;
  v127 = 0;
  v123 = 0;
  v122 = 0;
  v124 = 0;
  v120 = 0;
  v119 = 0;
  v121 = 0;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v24 = [(OU3DObject *)v4 refined_box_history];
  v25 = [v24 countByEnumeratingWithState:&v115 objects:v143 count:16];
  if (v25)
  {
    v26 = *v116;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v116 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v115 + 1) + 8 * i);
        v29 = [v28 refinedBox];
        if (v29)
        {
          v30 = [v28 refinedBox];
          v31 = [v30 count] == 8;

          if (v31)
          {
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v32 = [v28 refinedBox];
            box3dFromNSArray(v32, &v131);

            box3dToCentroidSizeAngle(&v131, __p);
            v33 = *(__p[0] + 6);
            __p[1] = __p[0];
            operator delete(__p[0]);
            *v100 = v33;
            if (vabds_f32(v33, v23) < 0.2)
            {
              std::vector<float>::push_back[abi:ne200100](&v119, v100);
              std::vector<box3d>::push_back[abi:ne200100](&v122, &v131);
            }

            std::vector<float>::push_back[abi:ne200100](&v125, v100);
            std::vector<box3d>::push_back[abi:ne200100](&v128, &v131);
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v115 objects:v143 count:16];
    }

    while (v25);
  }

  v34 = (v123 - v122) >> 7;
  if (v34 > 2)
  {
    v38 = rotationZMatrix(v23);
    v114.columns[0].i32[2] = v39;
    v114.columns[1].i32[2] = v40;
    *v114.columns[0].i64 = v38;
    v114.columns[1].i64[0] = v41;
    v114.columns[2].i32[2] = v42;
    v114.columns[2].i64[0] = v43;
    std::vector<box3d>::vector[abi:ne200100](&v112, v34);
    v44 = 0;
    v45 = v34;
    do
    {
      rotateBoxCorners(&v114, (v122 + v44), &v131);
      v46 = (v112 + v44);
      v47 = v131;
      v48 = v132;
      v49 = v134;
      v46[2] = v133;
      v46[3] = v49;
      v46[1] = v48;
      v50 = v138;
      v52 = v135;
      v51 = v136;
      v46[6] = v137;
      v46[7] = v50;
      v46[4] = v52;
      v46[5] = v51;
      *v46 = v47;
      v44 += 128;
      --v45;
    }

    while (v45);
    v53 = [(OU3DObject *)v4 refined_box_history];
    v54 = [v53 lastObject];
    v55 = [v54 preRefinedBox];

    if (v55)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      box3dFromNSArray(v55, __p);
      rotateBoxCorners(&v114, __p, &v131);
      *__p = xmmword_25D27A100;
      v140 = xmmword_25D27A110;
      v141 = xmmword_25D27A120;
      v110 = 0;
      v111 = 0;
      v109 = 0;
      std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(&v109, __p, v142, 6uLL);
      std::vector<float>::vector[abi:ne200100](v108, (v110 - v109) >> 3);
      v59 = v109;
      if (v110 != v109)
      {
        v60 = 0;
        do
        {
          v61 = &v59[8 * v60];
          v62 = *(v61 + 1);
          v63 = *v61;
          std::vector<float>::vector[abi:ne200100](__p, v34);
          std::vector<float>::vector[abi:ne200100](v100, v34);
          v64 = v112 + 16 * v63;
          v65 = __p[0];
          v66 = v100[0];
          v67 = v34;
          do
          {
            v68 = *&v64[4 * (v62 & 3)];
            *v65 = v68;
            v69 = vabds_f32(v68, *((&v131 + v63) & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3))));
            v70 = 3.0;
            if (v69 >= 0.1)
            {
              v70 = 2.0;
              if (v69 >= 0.2)
              {
                if (v69 >= 0.3)
                {
                  v70 = 0.0;
                }

                else
                {
                  v70 = 1.0;
                }
              }
            }

            *v66++ = v70;
            ++v65;
            v64 += 128;
            --v67;
          }

          while (v67);
          v71 = HistogramMaxBin(__p, v100, 0.05);
          *(v108[0] + v60) = HIDWORD(v71);
          if (v100[0])
          {
            v100[1] = v100[0];
            operator delete(v100[0]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v60;
          v59 = v109;
        }

        while (v60 < (v110 - v109) >> 3);
      }

      v58.n128_u32[0] = *v108[0];
      LODWORD(v57) = *(v108[0] + 3);
      v72 = *(v108[0] + 4);
      v73 = *(v108[0] + 5);
      v74 = *(v108[0] + 4);
      v75 = v58;
      v75.n128_u32[1] = v57;
      v75.n128_u64[0] = vmul_f32(vadd_f32(v74, v75.n128_u64[0]), 0x3F0000003F000000);
      v75.n128_f32[2] = (v72 + v73) * 0.5;
      v95 = v58.n128_u64[0];
      v96 = v57;
      *v56.i32 = v74.f32[0] - *v108[0];
      v97 = v74;
      *&v56.i32[1] = *&v57 - v74.f32[1];
      *&v56.i32[2] = v73 - v72;
      v141 = 0u;
      memset(v142, 0, sizeof(v142));
      *__p = 0u;
      v140 = 0u;
      v76 = vzip1q_s32(v114.columns[0], v114.columns[2]);
      v98.columns[0] = vzip1q_s32(v76, v114.columns[1]);
      v98.columns[1] = vzip2q_s32(v76, vdupq_lane_s32(*v114.columns[1].f32, 1));
      v98.columns[2] = vzip1q_s32(vzip2q_s32(v114.columns[0], v114.columns[2]), vdupq_laneq_s32(v114.columns[1], 2));
      centroidSizeAngleToBox3d(v100, v75, v56, 0.0);
      rotateBoxCorners(&v98, v100, __p);
      v77 = 0;
      while (1)
      {
        v78 = vsubq_f32(*&__p[v77], *&v123[v77 * 8 - 128]);
        v79 = vmulq_f32(v78, v78);
        if (sqrtf(v79.f32[2] + vaddv_f32(*v79.f32)) > 0.15)
        {
          break;
        }

        v77 += 2;
        if (v77 == 16)
        {
          goto LABEL_52;
        }
      }

      v81 = [(OU3DObject *)v4 refined_box_history:0.15];
      v82 = [v81 lastObject];
      [v82 setIsOutlier:1];

LABEL_52:
      v83 = v113[-7];
      v84 = v113[-6];
      LODWORD(v85) = v113[-8].i64[1];
      if (vabds_f32(v85, v72) >= 0.1)
      {
        v85 = v72;
      }

      v86 = *&v113[-4].i32[2];
      if (vabds_f32(v86, v73) >= 0.1)
      {
        v86 = v73;
      }

      v84.i32[1] = HIDWORD(v113[-7].i64[0]);
      v87 = vdup_n_s32(0x3DCCCCCDu);
      v88 = vbsl_s8(vcgt_f32(v87, vabd_f32(*v84.i8, __PAIR64__(v97.u32[1], v95))), *v84.i8, __PAIR64__(v97.u32[1], v95));
      v83.i32[1] = HIDWORD(v113[-8].i64[0]);
      v89.n128_u32[3] = HIDWORD(v96);
      *v83.i8 = vbsl_s8(vcgt_f32(v87, vabd_f32(*v83.i8, __PAIR64__(v96, v97.u32[0]))), *v83.i8, __PAIR64__(v96, v97.u32[0]));
      v89.n128_u64[0] = vmul_f32(vadd_f32(*v83.i8, v88), 0x3F0000003F000000);
      v89.n128_f32[2] = (v85 + v86) * 0.5;
      *v83.i8 = vsub_f32(*v83.i8, v88);
      *&v83.i32[2] = v86 - v85;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      *v100 = 0u;
      v101 = 0u;
      v90 = vzip1q_s32(v114.columns[0], v114.columns[2]);
      v99.columns[0] = vzip1q_s32(v90, v114.columns[1]);
      v99.columns[1] = vzip2q_s32(v90, vdupq_lane_s32(*v114.columns[1].f32, 1));
      v99.columns[2] = vzip1q_s32(vzip2q_s32(v114.columns[0], v114.columns[2]), vdupq_laneq_s32(v114.columns[1], 2));
      centroidSizeAngleToBox3d(&v98, v89, v83, 0.0);
      rotateBoxCorners(&v99, &v98, v100);
      v91 = v105;
      *(a2 + 64) = v104;
      *(a2 + 80) = v91;
      v92 = v107;
      *(a2 + 96) = v106;
      *(a2 + 112) = v92;
      v93 = v101;
      *a2 = *v100;
      *(a2 + 16) = v93;
      v94 = v103;
      *(a2 + 32) = v102;
      *(a2 + 48) = v94;
      *(a2 + 128) = 1;
      if (v108[0])
      {
        v108[1] = v108[0];
        operator delete(v108[0]);
      }

      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }
    }

    else
    {
      v80 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        SmoothObjectUponHistory(v80);
      }

      *a2 = 0;
      *(a2 + 128) = 0;
    }

    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }
  }

  else
  {
    v35 = [(OU3DObject *)v4 refined_box_history];
    v36 = [v35 lastObject];
    [v36 setIsOutlier:0];

    *a2 = 0;
    *(a2 + 128) = 0;
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
}

void sub_25D27230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a57)
  {
    operator delete(a57);
  }

  if (a60)
  {
    operator delete(a60);
  }

  v65 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v65;
    operator delete(v65);
  }

  v66 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v66;
    operator delete(v66);
  }

  v67 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v68;
    operator delete(v68);
  }

  _Unwind_Resume(a1);
}

float *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>,std::__identity,std::__less<void,void>>(float *result, float *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 >= *result)
      {
        *v6;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

dispatch_queue_t CreateFixedPrioritySerialDispatchQueue(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, os_workgroup_t *a5)
{
  v8 = v6 = a2;
  dispatch_workloop_set_qos_class_floor();
  if (*a5)
  {
    dispatch_workloop_set_os_workgroup(v8, *a5);
  }

  dispatch_activate(v8);
  v9 = dispatch_queue_attr_make_with_qos_class(0, v6, 0);
  v10 = dispatch_queue_create_with_target_V2(a1, v9, v8);

  return v10;
}

dispatch_queue_t CreateFixedPrioritySerialDispatchQueue(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, os_workgroup_t *a4)
  v6 = {;
  dispatch_workloop_set_scheduler_priority();
  if (*a4)
  {
    dispatch_workloop_set_os_workgroup(v6, *a4);
  }

  dispatch_activate(v6);
  v7 = dispatch_queue_create_with_target_V2(a1, 0, v6);

  return v7;
}

id CreateWorkGroup(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = os_workgroup_attr_set_flags();
  if (v1)
  {
    v2 = v1;
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CreateWorkGroup(v2, v3);
    }

    v4 = 0;
  }

  else
  {
    v4 = os_workgroup_create();
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

dispatch_workloop_t anonymous namespace::CreateWorkloop(_anonymous_namespace_ *this, const char *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, ".workloop");
  if (this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, this);
    v3 = std::string::append(&v10, ".workloop", 9uLL);
    v4 = v3->__r_.__value_.__r.__words[0];
    v14[0] = v3->__r_.__value_.__l.__size_;
    *(v14 + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
    v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v13 < 0)
    {
      operator delete(__p);
    }

    __p = v4;
    *v12 = v14[0];
    *&v12[7] = *(v14 + 7);
    v13 = v5;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  inactive = dispatch_workloop_create_inactive(p_p);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];

  return inactive;
}

void sub_25D27293C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void LoadRGBToDictionary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void LoadSemanticToDictionary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void LoadSemanticConfToDictionary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void LoadDepthToDictionary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FindImageFilePath(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "Loaded image file %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void GenerateOUFramesFromCvplayer_cold_2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "The camera timestamps and poses have different numbers: %zu vs %zu", buf, 0x16u);
}

void OU3DKitchenObjectMerger::AlignSinkWithDishwasher(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD] Warning, sink and washer doesn't align, skip crop.", buf, 2u);
}

void ou3dod::HistoryMergeInfo::Get()
{
  {
    ou3dod::HistoryMergeInfo::Get(void)::history_merge_info = 0u;
    unk_27FC2E8A0 = 0u;
    dword_27FC2E8B0 = 1065353216;
    unk_27FC2E8B8 = 0u;
    unk_27FC2E8C8 = 0u;
    dword_27FC2E8D8 = 1065353216;
    __cxa_atexit(ou3dod::HistoryMergeInfo::~HistoryMergeInfo, &ou3dod::HistoryMergeInfo::Get(void)::history_merge_info, &dword_25D1DB000);
  }
}

void ou3dor::OU3DLShapeSofaOfflineMerger::MergeLShape(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] need_merge_list size %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void ou3dod::J4InputSpecialHandling(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[3DOD] input size is less than target_num_voxel %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ou3dod::J4OutputSpecialHandling(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[3DOD] input size is less than min_capacity %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] offline network embedding feature not matched", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] offline network rgb feature input not allocated", v2, v3, v4, v5, v6);
}

{
    ;
  }
}

void ou3dod::OU3DAnchorFreeDetector::Preprocess(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "OU3DAnchorFreeDetector";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOD][%s] Invalid point cloud.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void OUEspressoV2Inference::LoadModel(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "OUEspressoV2Inference";
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[%s] Unexpected num_functions=%lu", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ou3dod::PrintBoxCorner(_OWORD *a1, NSObject *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = COERCE_FLOAT(*a1);
  v3 = COERCE_FLOAT(HIDWORD(*a1));
  v4 = COERCE_FLOAT(a1[1]);
  v5 = COERCE_FLOAT(HIDWORD(*(a1 + 2)));
  v6 = a1[2];
  v7 = a1[3];
  v9 = 134219776;
  v10 = v2;
  v11 = 2048;
  v12 = v3;
  v13 = 2048;
  v14 = v4;
  v15 = 2048;
  v16 = v5;
  v17 = 2048;
  v18 = *&v6;
  v19 = 2048;
  v20 = *(&v6 + 1);
  v21 = 2048;
  v22 = *&v7;
  v23 = 2048;
  v24 = *(&v7 + 1);
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] corner: %f, %f, %f, %f, %f, %f, %f, %f", &v9, 0x52u);
  v8 = *MEMORY[0x277D85DE8];
}

void ou3dod::AdjustBoxCornerOrder(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] nearest_box1_corner_idx: %d, nearest_box2_corner_idx: %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

void ou3dod::MaybeClipExtendLShapeObjects()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] not l shape fill", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] skip filling the corner box", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] force merge extend corner", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] skip filling the corner box because less points", v2, v3, v4, v5, v6);
}

void ou3dod::MaybeClipExtendLShapeObjects(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] less point %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ou3dod::MaybeClipExtendLShapeObjects(uint8_t *buf, NSObject *a2, float a3)
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] overlap ratio %f", buf, 0xCu);
}

void ou3dor::OU3DOREspressoV2Interface::LoadModel(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "Network path not found: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void ou3dor::CadModelRetriever::CadModelRetriever(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CadModelRetriever";
  v4 = 2048;
  v5 = 256;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] incorrect size of asset embeddings, must be multiple of %lu.", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "CadModelRetriever";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] Mismatch size for asset tables.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ou3dor::CadModelRetriever::RetrieveCadModel(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "CadModelRetriever";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] mismatching object embedding dimension.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void isBoxRectangle()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ou3dod::OU3DSparseSSDetector::Preprocess(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "SparseSSD";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOD][%s] Invalid point cloud.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ou3dod::OU3DLShapeObjectMerger::MergeLShape(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] history_l_shape_uuids_paired_ %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void ou3dod::OU3DLShapeObjectMerger::MergeLShape(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] merge previous pair", buf, 2u);
}

void ou3dor::OU3DObjectRepresentation::RotateImage()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "Generating upright image starts", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[OUFrame Error]: invalid device orientation. Skip data saving.", v2, v3, v4, v5, v6);
}

void ou3dor::OU3DObjectRepresentation::AddObjectRepresentation(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[OR] The %@ has no raw box.", buf, 0xCu);
}

{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[OR] The %@ is not considered for 3dor", buf, 0xCu);
}

void ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image shape w %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image tensor shape h %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image number of elements %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel input bind is invalid.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel pixel format not matched", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel number of pixel not matched", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel image crop size not matched", v2, v3, v4, v5, v6);
}

{
    ;
  }
}

void OU3DObjectRGBSizeRefiner::ShouldRefineObject()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s does not need refine. ", v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s fov length is not reached", v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s is not supported. ", v4, v5);
}

void OU3DObjectRGBSizeRefiner::ShouldRefineObject(void *a1, uint8_t *buf, os_log_t log, float a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD RGB Refine] Object uuid: %@ Distance: %f is out of maximum range", buf, 0x16u);
}

void OU3DObjectRGBSizeRefiner::IsBoxInFOVCorner(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  *(buf + 9) = 1024;
  *(buf + 5) = 5;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD RGB Refine] Object uuid: %s number of visible corners: %d is less than required: %d.", buf, 0x18u);
}

void utils::OUImageUtils::ResizeImageRGBA()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void utils::OUImageUtils::CropAndResizeImage()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void utils::anonymous namespace::CheckCVPixelBuffers()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void utils::OUFrameWriter::OUFrameWriter(uint64_t a1, void *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 63) < 0)
  {
    a2 = *a2;
  }

  v4 = 136315394;
  v5 = "OUFrameWriter";
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[%s] failed to create output directory %s.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void CreateWorkGroup(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "ERROR [createWorkGroup]: Failed to set workgroup flags with error (%d)\n", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void utils::RotateInPlace<half,void>()
{
    ;
  }
}

void ou3dod::PreprocessDense<half,true>()
{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetInputSpan<half,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetInputSpan<float,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetOutputSpan<half,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetOutputSpan<float,void>()
{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<float>()
{
    ;
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}