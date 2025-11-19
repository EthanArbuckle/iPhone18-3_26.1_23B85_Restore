void sub_25A303DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 - 40) = v16 - 64;
  _Unwind_Resume(a1);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<char,void *> *>,std::__hash_const_iterator<std::__hash_node<char,void *> *>>(_BYTE *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    *v5++ = *(a2 + 16);
    a2 = *a2;
  }

  *v5 = 0;
  return result;
}

uint64_t **std::__introsort<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,false>(uint64_t **result, char *a2, void **a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2;
    v166 = a2 - 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v8 - v7;
          v10 = v8 - v7 - 2;
          if (v8 - v7 > 2)
          {
            switch(v9)
            {
              case 3:
              case 4:
              case 5:
            }
          }

          else
          {
            if ((v8 - v7) < 2)
            {
              return result;
            }

            v8 = a2;
            if (v9 == 2)
            {
              v82 = *v7;
              v176 = *(a2 - 1);
              v175 = v82;
              v83 = *a3;
              v177 = &v176;
              v84 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v83, &v176) + 5);
              v85 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v85, &v175);
              if (v84 < *(result + 5))
              {
                v86 = *v7;
                *v7 = *(a2 - 1);
                *(a2 - 1) = v86;
              }

              return result;
            }
          }

          v174 = v7;
          if (v9 <= 23)
          {
            v87 = v7 + 1;
            v88 = v7 == v8 || v87 == v8;
            v89 = v88;
            if (a5)
            {
              if ((v89 & 1) == 0)
              {
                v90 = 0;
                v91 = v7;
                do
                {
                  v92 = v91[1];
                  v93 = *v91;
                  v91 = v87;
                  v176 = v92;
                  v175 = v93;
                  v94 = *a3;
                  v177 = &v176;
                  v95 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v94, &v176) + 5);
                  v96 = *a3;
                  v177 = &v175;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v96, &v175);
                  if (v95 < *(result + 5))
                  {
                    v97 = *v91;
                    v98 = v90;
                    while (1)
                    {
                      v7[v98 + 1] = v7[v98];
                      if (!v98)
                      {
                        break;
                      }

                      v99 = v7[v98 - 1];
                      v176 = v97;
                      v175 = v99;
                      v100 = *a3;
                      v177 = &v176;
                      v101 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v100, &v176) + 5);
                      v102 = *a3;
                      v177 = &v175;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v102, &v175);
                      --v98;
                      v103 = v101 < *(result + 5);
                      v7 = v174;
                      if (!v103)
                      {
                        v104 = &v174[v98 + 1];
                        goto LABEL_79;
                      }
                    }

                    v104 = v7;
LABEL_79:
                    *v104 = v97;
                  }

                  v87 = v91 + 1;
                  ++v90;
                }

                while (v91 + 1 != a2);
              }
            }

            else if ((v89 & 1) == 0)
            {
              do
              {
                v154 = v7[1];
                v155 = *v7;
                v7 = v87;
                v176 = v154;
                v175 = v155;
                v156 = *a3;
                v177 = &v176;
                v157 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v156, &v176) + 5);
                v158 = *a3;
                v177 = &v175;
                result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v158, &v175);
                if (v157 < *(result + 5))
                {
                  v159 = *v7;
                  v160 = v7;
                  do
                  {
                    v161 = v160;
                    v162 = *--v160;
                    *v161 = v162;
                    LOBYTE(v161) = *(v161 - 2);
                    v176 = v159;
                    v175 = v161;
                    v163 = *a3;
                    v177 = &v176;
                    v164 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v163, &v176) + 5);
                    v165 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v165, &v175);
                  }

                  while (v164 < *(result + 5));
                  *v160 = v159;
                }

                v87 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v7 != v8)
            {
              v105 = v10 >> 1;
              v171 = v105;
              do
              {
                v106 = v105;
                if (v171 >= v105)
                {
                  v107 = (2 * v105) | 1;
                  v108 = &v7[v107];
                  v109 = 2 * v105 + 2;
                  v167 = v105;
                  if (v109 < v9)
                  {
                    v110 = v108[1];
                    v176 = *v108;
                    v175 = v110;
                    v111 = *a3;
                    v177 = &v176;
                    v112 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v111, &v176) + 5);
                    v113 = *a3;
                    v177 = &v175;
                    v114 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v113, &v175);
                    v106 = v167;
                    if (v112 < *(v114 + 5))
                    {
                      ++v108;
                      v107 = v109;
                    }
                  }

                  v115 = &v7[v106];
                  v116 = v7[v106];
                  v176 = *v108;
                  v175 = v116;
                  v117 = *a3;
                  v177 = &v176;
                  v118 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v117, &v176) + 5);
                  v119 = *a3;
                  v177 = &v175;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v119, &v175);
                  v106 = v167;
                  if (v118 >= *(result + 5))
                  {
                    v169 = *v115;
                    do
                    {
                      v120 = v108;
                      *v115 = *v108;
                      if (v171 < v107)
                      {
                        break;
                      }

                      v121 = (2 * v107) | 1;
                      v108 = &v174[v121];
                      v122 = 2 * v107 + 2;
                      if (v122 < v9)
                      {
                        v123 = v108[1];
                        v176 = *v108;
                        v175 = v123;
                        v124 = *a3;
                        v177 = &v176;
                        v125 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v124, &v176) + 5);
                        v126 = *a3;
                        v177 = &v175;
                        if (v125 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v126, &v175) + 5))
                        {
                          ++v108;
                          v121 = v122;
                        }
                      }

                      v176 = *v108;
                      v175 = v169;
                      v127 = *a3;
                      v177 = &v176;
                      v128 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v127, &v176) + 5);
                      v129 = *a3;
                      v177 = &v175;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v129, &v175);
                      v115 = v120;
                      v107 = v121;
                    }

                    while (v128 >= *(result + 5));
                    *v120 = v169;
                    v7 = v174;
                    v106 = v167;
                  }
                }

                v105 = v106 - 1;
              }

              while (v106);
              do
              {
                v130 = 0;
                v172 = *v7;
                do
                {
                  v131 = &v7[v130];
                  v132 = &v7[v130 + 1];
                  v133 = (2 * v130) | 1;
                  v134 = 2 * v130 + 2;
                  if (v134 >= v9)
                  {
                    v130 = (2 * v130) | 1;
                  }

                  else
                  {
                    v136 = v131[2];
                    v135 = v131 + 2;
                    v176 = *(v135 - 1);
                    v175 = v136;
                    v137 = *a3;
                    v177 = &v176;
                    v138 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v137, &v176) + 5);
                    v139 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v139, &v175);
                    if (v138 >= *(result + 5))
                    {
                      v130 = v133;
                    }

                    else
                    {
                      v132 = v135;
                      v130 = v134;
                    }
                  }

                  *v7 = *v132;
                  v7 = v132;
                }

                while (v130 <= ((v9 - 2) >> 1));
                v140 = a2 - 1;
                v88 = v132 == --a2;
                if (v88)
                {
                  *v132 = v172;
                }

                else
                {
                  *v132 = *v140;
                  *v140 = v172;
                  v141 = v132 - v174 - 1;
                  if (v132 - v174 + 1 >= 2)
                  {
                    v142 = &v174[v141 >> 1];
                    v143 = *v132;
                    v176 = *v142;
                    v175 = v143;
                    v144 = *a3;
                    v177 = &v176;
                    v145 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v144, &v176) + 5);
                    v146 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v146, &v175);
                    if (v145 < *(result + 5))
                    {
                      v147 = v141 >> 1;
                      v148 = *v132;
                      do
                      {
                        v149 = v142;
                        *v132 = *v142;
                        if (!v147)
                        {
                          break;
                        }

                        v150 = v147 - 1;
                        v147 = (v147 - 1) >> 1;
                        v142 = &v174[v150 >> 1];
                        v176 = *v142;
                        v175 = v148;
                        v151 = *a3;
                        v177 = &v176;
                        v152 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v151, &v176) + 5);
                        v153 = *a3;
                        v177 = &v175;
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v153, &v175);
                        v132 = v149;
                      }

                      while (v152 < *(result + 5));
                      *v149 = v148;
                    }
                  }
                }

                v103 = v9-- <= 2;
                v7 = v174;
              }

              while (!v103);
            }

            return result;
          }

          v11 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
          }

          else
          {
            v12 = v9 >> 1;
            v13 = v7 + 1;
            v14 = a4;
            v15 = &v7[v12];
            v16 = &v7[v12 - 1];
            v17 = v16;
            v7 = v174;
            v18 = *v174;
            *v174 = *v15;
            *v15 = v18;
            a4 = v14;
            v8 = a2;
          }

          v19 = a4 - 1;
          if (a5)
          {
            break;
          }

          v20 = *v7;
          v176 = *(v7 - 1);
          v175 = v20;
          v21 = *a3;
          v177 = &v176;
          v22 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v176) + 5);
          v23 = *a3;
          v177 = &v175;
          if (v22 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v23, &v175) + 5))
          {
            break;
          }

          v53 = v19;
          v54 = *v7;
          v55 = *v166;
          v176 = *v7;
          v175 = v55;
          v56 = *a3;
          v177 = &v176;
          v57 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v56, &v176) + 5);
          v58 = *a3;
          v177 = &v175;
          result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v58, &v175);
          if (v57 >= *(result + 5))
          {
            v63 = v7 + 1;
            do
            {
              v7 = v63;
              if (v63 >= v8)
              {
                break;
              }

              ++v63;
              v64 = *v7;
              v176 = v54;
              v175 = v64;
              v65 = *a3;
              v177 = &v176;
              v66 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v65, &v176) + 5);
              v67 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v67, &v175);
            }

            while (v66 >= *(result + 5));
          }

          else
          {
            do
            {
              v59 = *++v7;
              v176 = v54;
              v175 = v59;
              v60 = *a3;
              v177 = &v176;
              v61 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v60, &v176) + 5);
              v62 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v62, &v175);
            }

            while (v61 >= *(result + 5));
          }

          if (v7 < v8)
          {
            v8 = a2;
            do
            {
              v68 = *--v8;
              v176 = v54;
              v175 = v68;
              v69 = *a3;
              v177 = &v176;
              v70 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v69, &v176) + 5);
              v71 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v71, &v175);
            }

            while (v70 < *(result + 5));
          }

          a4 = v53;
          while (v7 < v8)
          {
            v72 = *v7;
            *v7 = *v8;
            *v8 = v72;
            do
            {
              v73 = *++v7;
              v176 = v54;
              v175 = v73;
              v74 = *a3;
              v177 = &v176;
              v75 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v74, &v176) + 5);
              v76 = *a3;
              v177 = &v175;
            }

            while (v75 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v76, &v175) + 5));
            do
            {
              v77 = *--v8;
              v176 = v54;
              v175 = v77;
              v78 = *a3;
              v177 = &v176;
              v79 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v78, &v176) + 5);
              v80 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v80, &v175);
            }

            while (v79 < *(result + 5));
          }

          v81 = v7 - 1;
          if (v7 - 1 != v174)
          {
            *v174 = *v81;
          }

          a5 = 0;
          *v81 = v54;
          v8 = a2;
        }

        v170 = v19;
        v24 = 0;
        v25 = *v7;
        do
        {
          v176 = v7[v24 + 1];
          v175 = v25;
          v26 = *a3;
          v177 = &v176;
          v27 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v176) + 5);
          v28 = *a3;
          v177 = &v175;
          ++v24;
        }

        while (v27 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v28, &v175) + 5));
        v29 = &v7[v24];
        v30 = v8;
        if (v24 == 1)
        {
          v30 = v8;
          do
          {
            if (v29 >= v30)
            {
              break;
            }

            v35 = *--v30;
            v176 = v35;
            v175 = v25;
            v36 = *a3;
            v177 = &v176;
            v37 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v36, &v176) + 5);
            v38 = *a3;
            v177 = &v175;
          }

          while (v37 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v38, &v175) + 5));
        }

        else
        {
          do
          {
            v31 = *--v30;
            v176 = v31;
            v175 = v25;
            v32 = *a3;
            v177 = &v176;
            v33 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v32, &v176) + 5);
            v34 = *a3;
            v177 = &v175;
          }

          while (v33 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v34, &v175) + 5));
        }

        if (v29 >= v30)
        {
          v50 = v29 - 1;
        }

        else
        {
          v39 = v29;
          v40 = v30;
          do
          {
            v41 = *v39;
            *v39 = *v40;
            *v40 = v41;
            do
            {
              v42 = *++v39;
              v176 = v42;
              v175 = v25;
              v43 = *a3;
              v177 = &v176;
              v44 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v43, &v176) + 5);
              v45 = *a3;
              v177 = &v175;
            }

            while (v44 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v45, &v175) + 5));
            do
            {
              v46 = *--v40;
              v176 = v46;
              v175 = v25;
              v47 = *a3;
              v177 = &v176;
              v48 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v47, &v176) + 5);
              v49 = *a3;
              v177 = &v175;
            }

            while (v48 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v49, &v175) + 5));
          }

          while (v39 < v40);
          v50 = v39 - 1;
          v8 = a2;
        }

        if (v50 != v174)
        {
          *v174 = *v50;
        }

        *v50 = v25;
        v51 = v29 >= v30;
        a4 = v170;
        if (v51)
        {
          break;
        }

LABEL_39:
        a5 = 0;
        v7 = v50 + 1;
      }

      v7 = v50 + 1;
      if (result)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_39;
      }
    }

    a2 = v50;
    v7 = v174;
    if (!v52)
    {
      continue;
    }

    return result;
  }
}

uint64_t **std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, void **a4)
{
  v8 = *a1;
  v33 = *a2;
  v32 = v8;
  v9 = *a4;
  v34 = &v33;
  v10 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v9, &v33) + 5);
  v11 = *a4;
  v34 = &v32;
  v12 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v32);
  v13 = *a3;
  v14 = *a2;
  if (v10 >= *(v12 + 5))
  {
    v33 = *a3;
    v32 = v14;
    v20 = *a4;
    v34 = &v33;
    v21 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v20, &v33) + 5);
    v22 = *a4;
    v34 = &v32;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v22, &v32);
    if (v21 < *(result + 5))
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *a1;
      v33 = *a2;
      v32 = v24;
      v25 = *a4;
      v34 = &v33;
      v26 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v25, &v33) + 5);
      v27 = *a4;
      v34 = &v32;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v27, &v32);
      if (v26 < *(result + 5))
      {
        v28 = *a1;
        *a1 = *a2;
        *a2 = v28;
      }
    }
  }

  else
  {
    v33 = *a3;
    v32 = v14;
    v15 = *a4;
    v34 = &v33;
    v16 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v15, &v33) + 5);
    v17 = *a4;
    v34 = &v32;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, &v32);
    v19 = *a1;
    if (v16 >= *(result + 5))
    {
      *a1 = *a2;
      *a2 = v19;
      v33 = *a3;
      v32 = v19;
      v29 = *a4;
      v34 = &v33;
      v30 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v29, &v33) + 5);
      v31 = *a4;
      v34 = &v32;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v31, &v32);
      if (v30 >= *(result + 5))
      {
        return result;
      }

      v19 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v19;
  }

  return result;
}

uint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, char *a4, void **a5)
{
  v10 = *a3;
  v27 = *a4;
  v26 = v10;
  v11 = *a5;
  v28 = &v27;
  v12 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v27) + 5);
  v13 = *a5;
  v28 = &v26;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v13, &v26);
  if (v12 < *(result + 5))
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    v16 = *a2;
    v27 = *a3;
    v26 = v16;
    v17 = *a5;
    v28 = &v27;
    v18 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, &v27) + 5);
    v19 = *a5;
    v28 = &v26;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v26);
    if (v18 < *(result + 5))
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = *a1;
      v27 = *a2;
      v26 = v21;
      v22 = *a5;
      v28 = &v27;
      v23 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v22, &v27) + 5);
      v24 = *a5;
      v28 = &v26;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v26);
      if (v23 < *(result + 5))
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
      }
    }
  }

  return result;
}

uint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, char *a4, char *a5, void **a6)
{
  v12 = *a4;
  v34 = *a5;
  v33 = v12;
  v13 = *a6;
  v35 = &v34;
  v14 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v13, &v34) + 5);
  v15 = *a6;
  v35 = &v33;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v15, &v33);
  if (v14 < *(result + 5))
  {
    v17 = *a4;
    *a4 = *a5;
    *a5 = v17;
    v18 = *a3;
    v34 = *a4;
    v33 = v18;
    v19 = *a6;
    v35 = &v34;
    v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v34) + 5);
    v21 = *a6;
    v35 = &v33;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v33);
    if (v20 < *(result + 5))
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = *a2;
      v34 = *a3;
      v33 = v23;
      v24 = *a6;
      v35 = &v34;
      v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v34) + 5);
      v26 = *a6;
      v35 = &v33;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v33);
      if (v25 < *(result + 5))
      {
        v27 = *a2;
        *a2 = *a3;
        *a3 = v27;
        v28 = *a1;
        v34 = *a2;
        v33 = v28;
        v29 = *a6;
        v35 = &v34;
        v30 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v29, &v34) + 5);
        v31 = *a6;
        v35 = &v33;
        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v31, &v33);
        if (v30 < *(result + 5))
        {
          v32 = *a1;
          *a1 = *a2;
          *a2 = v32;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *>(char *a1, char *a2, void **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (a2 - a1 <= 2)
  {
    if ((a2 - a1) >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v32 = *(a2 - 1);
        v31 = v7;
        v8 = *a3;
        v33 = &v32;
        v9 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v8, &v32) + 5);
        v10 = *a3;
        v33 = &v31;
        if (v9 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, &v31) + 5))
        {
          v11 = *a1;
          *a1 = *(v4 - 1);
          *(v4 - 1) = v11;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v12 = a1 + 2;
  v13 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v14 = 0;
  v15 = 3;
  v29 = v4;
  while (1)
  {
    v16 = *v12;
    v32 = *v13;
    v31 = v16;
    v17 = *a3;
    v33 = &v32;
    v18 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, &v32) + 5);
    v19 = *a3;
    v33 = &v31;
    if (v18 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v31) + 5))
    {
      v30 = v14;
      v20 = *v13;
      v21 = v15;
      while (1)
      {
        v22 = &a1[v21];
        a1[v21] = a1[v21 - 1];
        if (!--v21)
        {
          break;
        }

        v23 = *(v22 - 2);
        v32 = v20;
        v31 = v23;
        v24 = *a3;
        v33 = &v32;
        v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v32) + 5);
        v26 = *a3;
        v33 = &v31;
        if (v25 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v31) + 5))
        {
          v27 = &a1[v21];
          goto LABEL_19;
        }
      }

      v27 = a1;
LABEL_19:
      *v27 = v20;
      v14 = v30 + 1;
      v4 = v29;
      if (v30 == 7)
      {
        return v13 + 1 == v29;
      }
    }

    v12 = v13;
    ++v15;
    if (++v13 == v4)
    {
      return 1;
    }
  }
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::PathNode>>::construct[abi:ne200100]<mlx::core::anonymous namespace::PathNode,std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript&,std::vector<int>,void,0>(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  std::unordered_set<char>::unordered_set(v10, a3 + 24);
  v7 = *(a4 + 2);
  v8 = *a4;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *a1 = v11;
  *(a1 + 16) = v12;
  v11 = 0uLL;
  v12 = 0;
  *(a1 + 24) = v9;
  memset(&v9, 0, sizeof(v9));
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 48, v10);
  *(a1 + 88) = v8;
  *(a1 + 104) = v7;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v10);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v13 = &v11;
}

void sub_25A305734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 - 40) = v16 - 64;
  _Unwind_Resume(a1);
}

void *std::vector<mlx::core::anonymous namespace::PathNode>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4);
    if (v3 < 0x24924924924924ALL)
    {
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25A3058A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void std::vector<mlx::core::anonymous namespace::PathNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 112;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
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

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::pair<std::vector<std::string>,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__erase_unique<char>(void *a1, char *a2)
{
  result = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void mlx::core::anonymous namespace::batch_tensordot(mlx::core::array,mlx::core::array,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(mlx::core ***a1, uint64_t **a2, uint64_t *a3, char **a4, char **a5)
{
  v10 = *a3;
  v11 = a3[1];
  __dst = 0;
  v28 = 0;
  v26 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v26, v10, v11, (v11 - v10) >> 2);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v26, __dst, *a4, a4[1], (a4[1] - *a4) >> 2);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v26, __dst, *a5, a5[1], (a5[1] - *a5) >> 2);
  v25 = 1;
  v13 = *a4;
  v12 = a4[1];
  if (v13 != v12)
  {
    v14 = 1;
    do
    {
      v14 *= mlx::core::array::shape(a2, *v13);
      v25 = v14;
      v13 += 4;
    }

    while (v13 != v12);
  }

  v24 = 1;
  v16 = *a5;
  v15 = a5[1];
  if (v16 != v15)
  {
    v17 = 1;
    do
    {
      v17 *= mlx::core::array::shape(a2, *v16);
      v24 = v17;
      v16 += 4;
    }

    while (v16 != v15);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v19 = *a3;
  v18 = a3[1];
  while (v19 != v18)
  {
    v21[0] = mlx::core::array::shape(a2, *v19);
    std::vector<int>::push_back[abi:ne200100](v22, v21);
    ++v19;
  }

  std::vector<int>::push_back[abi:ne200100](v22, &v25);
  std::vector<int>::push_back[abi:ne200100](v22, &v24);
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, v26, __dst, (__dst - v26) >> 2);
  mlx::core::transpose(a2, v20, **a1, (*a1)[1]);
}

void sub_25A305E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a15);
  if (a12)
  {
    operator delete(a12);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__introsort<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,false>(uint64_t **result, char *a2, void **a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v137 = a2 - 8;
    v140 = a2;
    v134 = (a2 - 24);
    v135 = (a2 - 16);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = &a2[-v8] >> 3;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
              case 4:
              case 5:
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v62 = *a3;
              v144 = v137;
              v63 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v62, v137) + 5);
              v64 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v64, v8);
              if (v63 < *(result + 5))
              {
                v65 = *v8;
                *v8 = *(a2 - 8);
                *(a2 - 8) = v65;
                v66 = *(v8 + 4);
                *(v8 + 4) = *(a2 - 1);
                *(a2 - 1) = v66;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            if (a5)
            {
              if (v8 != a2)
              {
                v67 = (v8 + 8);
                if ((v8 + 8) != a2)
                {
                  v68 = 0;
                  v69 = v8;
                  do
                  {
                    v70 = v69;
                    v69 = v67;
                    v71 = *a3;
                    v144 = v67;
                    v72 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v71, v67) + 5);
                    v73 = *a3;
                    v144 = v70;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v73, v70);
                    if (v72 < *(result + 5))
                    {
                      v143 = *v69;
                      v74 = v68;
                      while (1)
                      {
                        v75 = v8 + v74;
                        *(v75 + 8) = *(v8 + v74);
                        *(v75 + 12) = *(v8 + v74 + 4);
                        if (!v74)
                        {
                          break;
                        }

                        v74 -= 8;
                        v76 = *a3;
                        v144 = &v143;
                        v77 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v76, &v143) + 5);
                        v78 = *a3;
                        v144 = (v74 + v8);
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v78, (v74 + v8));
                        if (v77 >= *(result + 5))
                        {
                          v79 = v8 + v74 + 8;
                          goto LABEL_71;
                        }
                      }

                      v79 = v8;
LABEL_71:
                      *v79 = v143;
                      *(v79 + 4) = HIDWORD(v143);
                    }

                    v67 = v69 + 8;
                    v68 += 8;
                  }

                  while (v69 + 8 != v140);
                }
              }
            }

            else if (v8 != a2)
            {
              v124 = (v8 + 8);
              if ((v8 + 8) != a2)
              {
                v125 = v8 - 8;
                do
                {
                  v126 = v8;
                  v8 = v124;
                  v127 = *a3;
                  v144 = v124;
                  v128 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v127, v124) + 5);
                  v129 = *a3;
                  v144 = v126;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v129, v126);
                  if (v128 < *(result + 5))
                  {
                    v143 = *v8;
                    v130 = v125;
                    do
                    {
                      *(v130 + 16) = *(v130 + 8);
                      *(v130 + 20) = *(v130 + 12);
                      v131 = *a3;
                      v144 = &v143;
                      v132 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v131, &v143) + 5);
                      v133 = *a3;
                      v144 = v130;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v133, v130);
                      v130 -= 8;
                    }

                    while (v132 < *(result + 5));
                    *(v130 + 16) = v143;
                    *(v130 + 20) = HIDWORD(v143);
                  }

                  v124 = (v8 + 8);
                  v125 += 8;
                }

                while ((v8 + 8) != a2);
              }
            }

            return result;
          }

          v142 = v8;
          if (!a4)
          {
            if (v8 != a2)
            {
              v80 = v10 >> 1;
              v81 = v10 >> 1;
              do
              {
                v82 = v81;
                if (v80 >= v81)
                {
                  v83 = (2 * v81) | 1;
                  v84 = v8 + 8 * v83;
                  v85 = 2 * v81 + 2;
                  v138 = v81;
                  if (v85 < v9)
                  {
                    v86 = *a3;
                    v144 = (v8 + 8 * v83);
                    v87 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v86, v144) + 5);
                    v88 = *a3;
                    v144 = (v84 + 8);
                    v89 = v87 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v88, (v84 + 8)) + 5);
                    v82 = v138;
                    if (v89)
                    {
                      v84 += 8;
                      v83 = v85;
                    }
                  }

                  v90 = v8 + 8 * v82;
                  v91 = *a3;
                  v144 = v84;
                  v92 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v91, v84) + 5);
                  v93 = *a3;
                  v144 = v90;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v93, v90);
                  if (v92 >= *(result + 5))
                  {
                    v143 = *v90;
                    do
                    {
                      v94 = v84;
                      *v90 = *v84;
                      *(v90 + 4) = *(v84 + 4);
                      if (v80 < v83)
                      {
                        break;
                      }

                      v95 = (2 * v83) | 1;
                      v84 = v8 + 8 * v95;
                      v96 = 2 * v83 + 2;
                      if (v96 < v9)
                      {
                        v97 = *a3;
                        v144 = (v8 + 8 * v95);
                        v98 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v97, v144) + 5);
                        v99 = *a3;
                        v144 = (v84 + 8);
                        if (v98 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v99, (v84 + 8)) + 5))
                        {
                          v84 += 8;
                          v95 = v96;
                        }
                      }

                      v100 = *a3;
                      v144 = v84;
                      v101 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v100, v84) + 5);
                      v102 = *a3;
                      v144 = &v143;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v102, &v143);
                      v90 = v94;
                      v83 = v95;
                      v89 = v101 < *(result + 5);
                      v8 = v142;
                    }

                    while (!v89);
                    *v94 = v143;
                    *(v94 + 4) = HIDWORD(v143);
                    v82 = v138;
                  }
                }

                v81 = v82 - 1;
              }

              while (v82);
              v103 = v140;
              do
              {
                v104 = 0;
                v139 = *v8;
                v141 = v103;
                do
                {
                  v105 = v8 + 8 * v104;
                  v106 = (v105 + 8);
                  v107 = (2 * v104) | 1;
                  v108 = 2 * v104 + 2;
                  if (v108 < v9)
                  {
                    v109 = (v105 + 16);
                    v110 = *a3;
                    v144 = (v105 + 8);
                    v111 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v110, (v105 + 8)) + 5);
                    v112 = *a3;
                    v144 = v109;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v112, v109);
                    if (v111 < *(result + 5))
                    {
                      v106 = v109;
                      v107 = v108;
                    }
                  }

                  *v8 = *v106;
                  *(v8 + 4) = *(v106 + 1);
                  v8 = v106;
                  v104 = v107;
                }

                while (v107 <= ((v9 - 2) >> 1));
                v103 -= 8;
                if (v106 == v141 - 8)
                {
                  *v106 = v139;
                  *(v106 + 1) = HIDWORD(v139);
                  v8 = v142;
                }

                else
                {
                  *v106 = *(v141 - 8);
                  *(v106 + 1) = *(v141 - 1);
                  *(v141 - 8) = v139;
                  *(v141 - 1) = HIDWORD(v139);
                  v8 = v142;
                  v113 = &v106[-v142 + 8] >> 3;
                  v89 = v113 < 2;
                  v114 = v113 - 2;
                  if (!v89)
                  {
                    v115 = v114 >> 1;
                    v116 = v142 + 8 * (v114 >> 1);
                    v117 = *a3;
                    v144 = v116;
                    v118 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v117, v116) + 5);
                    v119 = *a3;
                    v144 = v106;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v119, v106);
                    if (v118 < *(result + 5))
                    {
                      v143 = *v106;
                      do
                      {
                        v120 = v116;
                        *v106 = *v116;
                        *(v106 + 1) = *(v116 + 4);
                        if (!v115)
                        {
                          break;
                        }

                        v115 = (v115 - 1) >> 1;
                        v116 = v142 + 8 * v115;
                        v121 = *a3;
                        v144 = v116;
                        v122 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v121, v116) + 5);
                        v123 = *a3;
                        v144 = &v143;
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v123, &v143);
                        v106 = v120;
                      }

                      while (v122 < *(result + 5));
                      *v120 = v143;
                      *(v120 + 4) = HIDWORD(v143);
                    }
                  }
                }

                v89 = v9-- <= 2;
              }

              while (!v89);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = v8 + 8 * (v9 >> 1);
          if (v9 < 0x81)
          {
          }

          else
          {
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
            v14 = *(v8 + 4);
            *(v8 + 4) = *(v12 + 4);
            *(v12 + 4) = v14;
          }

          --a4;
          a2 = v140;
          if (a5)
          {
            break;
          }

          v15 = *a3;
          v144 = (v8 - 8);
          v16 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v15, (v8 - 8)) + 5);
          v17 = *a3;
          v144 = v8;
          if (v16 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, v8) + 5))
          {
            break;
          }

          v143 = *v8;
          v40 = *a3;
          v144 = &v143;
          v41 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v40, &v143) + 5);
          v42 = *a3;
          v144 = v137;
          result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v42, v137);
          if (v41 >= *(result + 5))
          {
            v46 = v8 + 8;
            do
            {
              v8 = v46;
              if (v46 >= v140)
              {
                break;
              }

              v47 = *a3;
              v144 = &v143;
              v48 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v47, &v143) + 5);
              v49 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v49, v8);
              v46 = v8 + 8;
            }

            while (v48 >= *(result + 5));
          }

          else
          {
            do
            {
              v8 += 8;
              v43 = *a3;
              v144 = &v143;
              v44 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v43, &v143) + 5);
              v45 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v45, v8);
            }

            while (v44 >= *(result + 5));
          }

          v50 = v140;
          if (v8 < v140)
          {
            v50 = v140;
            do
            {
              v50 -= 8;
              v51 = *a3;
              v144 = &v143;
              v52 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v51, &v143) + 5);
              v53 = *a3;
              v144 = v50;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v53, v50);
            }

            while (v52 < *(result + 5));
          }

          while (v8 < v50)
          {
            v54 = *v8;
            *v8 = *v50;
            *v50 = v54;
            v55 = *(v8 + 4);
            *(v8 + 4) = *(v50 + 1);
            *(v50 + 1) = v55;
            do
            {
              v8 += 8;
              v56 = *a3;
              v144 = &v143;
              v57 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v56, &v143) + 5);
              v58 = *a3;
              v144 = v8;
            }

            while (v57 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v58, v8) + 5));
            do
            {
              v50 -= 8;
              v59 = *a3;
              v144 = &v143;
              v60 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v59, &v143) + 5);
              v61 = *a3;
              v144 = v50;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v61, v50);
            }

            while (v60 < *(result + 5));
          }

          if (v8 - 8 != v142)
          {
            *v142 = *(v8 - 8);
            *(v142 + 4) = *(v8 - 4);
          }

          a5 = 0;
          *(v8 - 8) = v143;
          *(v8 - 4) = HIDWORD(v143);
        }

        v18 = 0;
        v143 = *v8;
        do
        {
          v18 += 8;
          v19 = *a3;
          v144 = (v18 + v8);
          v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, (v18 + v8)) + 5);
          v21 = *a3;
          v144 = &v143;
        }

        while (v20 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v143) + 5));
        v22 = v8 + v18;
        v23 = v140;
        if (v18 == 8)
        {
          v23 = v140;
          do
          {
            if (v22 >= v23)
            {
              break;
            }

            v23 -= 8;
            v27 = *a3;
            v144 = v23;
            v28 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v27, v23) + 5);
            v29 = *a3;
            v144 = &v143;
          }

          while (v28 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v29, &v143) + 5));
        }

        else
        {
          do
          {
            v23 -= 8;
            v24 = *a3;
            v144 = v23;
            v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, v23) + 5);
            v26 = *a3;
            v144 = &v143;
          }

          while (v25 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v143) + 5));
        }

        v8 += v18;
        if (v22 < v23)
        {
          v30 = v23;
          do
          {
            v31 = *v8;
            *v8 = *v30;
            *v30 = v31;
            v32 = *(v8 + 4);
            *(v8 + 4) = *(v30 + 1);
            *(v30 + 1) = v32;
            do
            {
              v8 += 8;
              v33 = *a3;
              v144 = v8;
              v34 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v33, v8) + 5);
              v35 = *a3;
              v144 = &v143;
            }

            while (v34 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v35, &v143) + 5));
            do
            {
              v30 -= 8;
              v36 = *a3;
              v144 = v30;
              v37 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v36, v30) + 5);
              v38 = *a3;
              v144 = &v143;
            }

            while (v37 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v38, &v143) + 5));
          }

          while (v8 < v30);
        }

        if (v8 - 8 != v142)
        {
          *v142 = *(v8 - 8);
          *(v142 + 4) = *(v8 - 4);
        }

        *(v8 - 8) = v143;
        *(v8 - 4) = HIDWORD(v143);
        if (v22 >= v23)
        {
          break;
        }

LABEL_36:
        a5 = 0;
      }

      if (result)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_36;
      }
    }

    a2 = (v8 - 8);
    v8 = v142;
    if (!v39)
    {
      continue;
    }

    return result;
  }
}

uint64_t **std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a2) + 5);
  v9 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a1) + 5);
  v10 = *a4;
  if (v8 < v9)
  {
    v11 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, a3) + 5);
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a2);
    v13 = *a1;
    if (v11 >= *(result + 5))
    {
      *a1 = *a2;
      v22 = *(a2 + 4);
      *a2 = v13;
      v23 = *(a1 + 4);
      *(a1 + 4) = v22;
      *(a2 + 4) = v23;
      v24 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a3) + 5);
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a2);
      if (v24 >= *(result + 5))
      {
        return result;
      }

      v25 = *a2;
      *a2 = *a3;
      *a3 = v25;
      v14 = (a3 + 4);
      v15 = (a2 + 4);
    }

    else
    {
      *a1 = *a3;
      *a3 = v13;
      v14 = (a3 + 4);
      v15 = (a1 + 4);
    }

    v19 = v14;
    goto LABEL_10;
  }

  v16 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, a3) + 5);
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a2);
  if (v16 < *(result + 5))
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    v19 = (a2 + 4);
    v18 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v18;
    v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a2) + 5);
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a4, a1);
    if (v20 < *(result + 5))
    {
      v21 = *a1;
      *a1 = *a2;
      v15 = (a1 + 4);
      *a2 = v21;
LABEL_10:
      v26 = *v15;
      *v15 = *v19;
      *v19 = v26;
    }
  }

  return result;
}

uint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v10 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a4) + 5);
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a3);
  if (v10 < *(result + 5))
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    v13 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 4);
    *(a4 + 4) = v13;
    v14 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a3) + 5);
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a2);
    if (v14 < *(result + 5))
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v16;
      v17 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a2) + 5);
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a5, a1);
      if (v17 < *(result + 5))
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
        v19 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v19;
      }
    }
  }

  return result;
}

uint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v12 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a5) + 5);
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a4);
  if (v12 < *(result + 5))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    v15 = *(a4 + 4);
    *(a4 + 4) = *(a5 + 4);
    *(a5 + 4) = v15;
    v16 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a4) + 5);
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a3);
    if (v16 < *(result + 5))
    {
      v17 = *a3;
      *a3 = *a4;
      *a4 = v17;
      v18 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 4);
      *(a4 + 4) = v18;
      v19 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a3) + 5);
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a2);
      if (v19 < *(result + 5))
      {
        v20 = *a2;
        *a2 = *a3;
        *a3 = v20;
        v21 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v21;
        v22 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a2) + 5);
        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(*a6, a1);
        if (v22 < *(result + 5))
        {
          v23 = *a1;
          *a1 = *a2;
          *a2 = v23;
          v24 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *>(uint64_t a1, char *a2, void **a3)
{
  v6 = &a2[-a1] >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v30 = a2 - 8;
        v8 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v7, a2 - 8) + 5);
        v9 = *a3;
        v30 = a1;
        if (v8 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v9, a1) + 5))
        {
          v10 = *a1;
          *a1 = *(a2 - 8);
          *(a2 - 8) = v10;
          v11 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          *(a2 - 1) = v11;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v12 = (a1 + 16);
  v13 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v28 = a2;
  while (1)
  {
    v16 = *a3;
    v30 = v13;
    v17 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v16, v13) + 5);
    v18 = *a3;
    v30 = v12;
    if (v17 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v18, v12) + 5))
    {
      break;
    }

    v26 = v28;
LABEL_21:
    v12 = v13;
    v14 += 8;
    v13 += 8;
    if (v13 == v26)
    {
      return 1;
    }
  }

  v29 = *v13;
  v19 = v14;
  while (1)
  {
    v20 = a1 + v19;
    *(v20 + 24) = *(a1 + v19 + 16);
    *(v20 + 28) = *(a1 + v19 + 20);
    if (v19 == -16)
    {
      break;
    }

    v21 = (v20 + 8);
    v22 = *a3;
    v30 = &v29;
    v23 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v22, &v29) + 5);
    v24 = *a3;
    v30 = v21;
    v19 -= 8;
    if (v23 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, v21) + 5))
    {
      v25 = a1 + v19 + 24;
      goto LABEL_20;
    }
  }

  v25 = a1;
LABEL_20:
  *v25 = v29;
  *(v25 + 4) = HIDWORD(v29);
  ++v15;
  v26 = v28;
  if (v15 != 8)
  {
    goto LABEL_21;
  }

  return v13 + 8 == v28;
}

void std::vector<mlx::core::anonymous namespace::Subscript>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

const char *mlx::core::dtype_to_string(unsigned int a1)
{
  if (a1 < 0xD)
  {
    return (&off_279921578)[a1 & 0xF];
  }

  if (a1 == 13)
  {
    return "complex64";
  }

  return "(unknown)";
}

void sub_25A3081B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52)
{
  std::ostringstream::~ostringstream(&a13);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a52);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void mlx::core::save(std::string *__str)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 3)
    {
      goto LABEL_13;
    }
  }

  else if (size <= 3)
  {
    goto LABEL_13;
  }

  std::string::basic_string(&v4, __str, size - 4, 4uLL, &v5);
  if ((SHIBYTE(v4.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v4.__r_.__value_.__l.__data_) != 2037411374)
    {
      goto LABEL_13;
    }

LABEL_14:
    std::allocate_shared[abi:ne200100]<mlx::core::io::FileWriter,std::allocator<mlx::core::io::FileWriter>,std::string,0>();
  }

  if (v4.__r_.__value_.__l.__size_ == 4)
  {
    v3 = *v4.__r_.__value_.__l.__data_;
    operator delete(v4.__r_.__value_.__l.__data_);
    if (v3 == 2037411374)
    {
      goto LABEL_14;
    }
  }

  else
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

LABEL_13:
  std::string::append(__str, ".npy", 4uLL);
  goto LABEL_14;
}

void sub_25A308534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  mlx::core::array::~array(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void mlx::core::load(void *a1, uint64_t a2, uint64_t a3)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!(*(**a1 + 8))(*a1) || ((***a1)() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v54 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Failed to open ", &__dst, &v72);
    MEMORY[0x25F851100](exception, &v72, v54);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v69 = mlx::core::to_stream(a2, a3, 0);
  v70 = v6;
  v72.__r_.__value_.__r.__words[0] = 0;
  if (mlx::core::operator!=(&v69 + 1, &v72))
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v55, "[load] Must run on a CPU stream.");
    __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(**a1 + 32))(*a1, &v73, 8);
  if (v73 != 1297436307 || v74 != 22864)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v57 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Invalid header in ", &__dst, &v72);
    MEMORY[0x25F851100](v56, &v72, v57);
    __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v75;
  if (v75 - 3 <= 0xFFFFFFFD)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v59 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Unsupported npy format version in ", &__dst, &v72);
    MEMORY[0x25F851100](v58, &v72, v59);
    __cxa_throw(v58, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v75 == 1)
  {
    LOWORD(v72.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v72, 2);
    data_low = LOWORD(v72.__r_.__value_.__l.__data_);
  }

  else
  {
    LODWORD(v72.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v72, 4);
    data_low = LODWORD(v72.__r_.__value_.__l.__data_);
  }

  std::vector<char>::vector[abi:ne200100](&v68, data_low + 1);
  (*(**a1 + 32))(*a1, v68, data_low);
  v68[data_low] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, v68);
  std::string::basic_string(&v66, &__str, 0xBuLL, 3uLL, &v72);
  size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  v11 = v66.__r_.__value_.__r.__words[0];
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v66;
  }

  else
  {
    v12 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v66.__r_.__value_.__l.__size_;
  }

  v13 = v12->__r_.__value_.__s.__data_[0];
  v64.__r_.__value_.__r.__words[0] = v12;
  v64.__r_.__value_.__l.__size_ = size;
  if (size != 2)
  {
    if (size != 3)
    {
      goto LABEL_33;
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v66;
    }

    v12 = (&v11->__r_.__value_.__l.__data_ + 1);
  }

  if (LOWORD(v12->__r_.__value_.__l.__data_) == 12886)
  {
    goto LABEL_40;
  }

  v14 = v12->__r_.__value_.__s.__data_[1];
  v15 = v12->__r_.__value_.__s.__data_[0];
  if (v15 <= 101)
  {
    if (v15 == 98)
    {
      LOBYTE(v16) = v14 - 49;
      if (v16 < 8u)
      {
        v16 = v16;
        v17 = &unk_25A9BF220;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v15 == 99)
    {
      goto LABEL_40;
    }
  }

  else
  {
    switch(v15)
    {
      case 'f':
        goto LABEL_40;
      case 'i':
        LOBYTE(v16) = v14 - 49;
        if (v16 < 8u)
        {
          v16 = v16;
          v17 = &unk_25A9BF260;
          goto LABEL_39;
        }

LABEL_40:
        v60 = *(__str.__r_.__value_.__r.__words[0] + 34);
        memset(&v72, 0, sizeof(v72));
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __str.__r_.__value_.__l.__size_;
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (v21)
        {
          v22 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
          v23 = v21;
          do
          {
            v24 = v23;
            if (!v23)
            {
              break;
            }

            v25 = v22[v23--];
          }

          while (v25 != 40);
          while (v21)
          {
            v26 = v22[v21--];
            if (v26 == 41)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          v24 = 0;
        }

        v21 = -1;
LABEL_53:
        std::string::basic_string(&__dst, &__str, v24, v21 - v24, &v64);
        v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = __dst.__r_.__value_.__l.__size_;
        }

        if (!v27)
        {
LABEL_93:
          v43 = 12;
          if (v8 == 1)
          {
            v43 = 10;
          }

          v44 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = __str.__r_.__value_.__l.__size_;
          }

          __idx = v44 + v43;
          v62 = v13 == 62;
          v45 = v72.__r_.__value_.__r.__words[0];
          if (v60 == 84)
          {
            v46 = v72.__r_.__value_.__l.__size_;
            if (v72.__r_.__value_.__r.__words[0] != v72.__r_.__value_.__l.__size_)
            {
              v47 = (v72.__r_.__value_.__l.__size_ - 4);
              if (v72.__r_.__value_.__l.__size_ - 4 > v72.__r_.__value_.__r.__words[0])
              {
                v48 = v72.__r_.__value_.__r.__words[0] + 4;
                do
                {
                  v49 = *(v48 - 4);
                  *(v48 - 4) = *v47;
                  *v47-- = v49;
                  v50 = v48 >= v47;
                  v48 += 4;
                }

                while (!v50);
              }
            }
          }

          else
          {
            v46 = v72.__r_.__value_.__l.__size_;
          }

          memset(__p, 0, sizeof(__p));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v45, v46, (v46 - v45) >> 2);
          std::allocate_shared[abi:ne200100]<mlx::core::Load,std::allocator<mlx::core::Load>,mlx::core::Stream &,std::shared_ptr<mlx::core::io::Reader> &,unsigned long &,BOOL &,0>();
        }

        while (1)
        {
          __idx = 0;
          v28 = std::stoi(&__dst, &__idx, 10);
          v29 = v72.__r_.__value_.__l.__size_;
          if (v72.__r_.__value_.__l.__size_ >= v72.__r_.__value_.__r.__words[2])
          {
            v31 = v72.__r_.__value_.__r.__words[0];
            v32 = v72.__r_.__value_.__l.__size_ - v72.__r_.__value_.__r.__words[0];
            v33 = (v72.__r_.__value_.__l.__size_ - v72.__r_.__value_.__r.__words[0]) >> 2;
            v34 = v33 + 1;
            if ((v33 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v35 = v72.__r_.__value_.__r.__words[2] - v72.__r_.__value_.__r.__words[0];
            if ((v72.__r_.__value_.__r.__words[2] - v72.__r_.__value_.__r.__words[0]) >> 1 > v34)
            {
              v34 = v35 >> 1;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v36 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v72, v36);
            }

            *(4 * v33) = v28;
            v30 = 4 * v33 + 4;
            memcpy(0, v31, v32);
            v37 = v72.__r_.__value_.__r.__words[0];
            v72.__r_.__value_.__r.__words[0] = 0;
            *&v72.__r_.__value_.__r.__words[1] = v30;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v72.__r_.__value_.__l.__size_ = v28;
            v30 = v29 + 4;
          }

          v72.__r_.__value_.__l.__size_ = v30;
          v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = __dst.__r_.__value_.__l.__size_;
          }

          if (__idx + 2 <= v38)
          {
            std::string::basic_string(&v64, &__dst, __idx + 2, 0xFFFFFFFFFFFFFFFFLL, &v63);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            __dst = v64;
            goto LABEL_90;
          }

          std::string::basic_string(&v64, &__dst, __idx, 0xFFFFFFFFFFFFFFFFLL, &v63);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v64;
          v39 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v39 = __dst.__r_.__value_.__l.__size_;
          }

          if (v39)
          {
            if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) != 1)
              {
                goto LABEL_107;
              }

              v40 = __dst.__r_.__value_.__s.__data_[0];
              if (__dst.__r_.__value_.__s.__data_[0] == 32)
              {
                goto LABEL_87;
              }

LABEL_85:
              if (v40 != 44)
              {
LABEL_107:
                v51 = __cxa_allocate_exception(0x10uLL);
                (*(**a1 + 48))(&v63);
                v52 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Unknown error while parsing header in ", &v63, &v64);
                MEMORY[0x25F851100](v51, &v64, v52);
                __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              goto LABEL_86;
            }

            if (__dst.__r_.__value_.__l.__size_ != 1)
            {
              goto LABEL_107;
            }

            v40 = *__dst.__r_.__value_.__l.__data_;
            if (v40 != 32)
            {
              goto LABEL_85;
            }
          }

LABEL_86:
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = 0;
            p_dst = __dst.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_87:
          *(&__dst.__r_.__value_.__s + 23) = 0;
          p_dst = &__dst;
LABEL_89:
          p_dst->__r_.__value_.__s.__data_[0] = 0;
LABEL_90:
          v42 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v42 = __dst.__r_.__value_.__l.__size_;
          }

          if (!v42)
          {
            goto LABEL_93;
          }
        }

      case 'u':
        LOBYTE(v16) = v14 - 49;
        if (v16 < 8u)
        {
          v16 = v16;
          v17 = &unk_25A9BF2A0;
LABEL_39:
          v19 = v17[v16];
          goto LABEL_40;
        }

        goto LABEL_40;
    }
  }

LABEL_33:
  v18 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string<std::string_view,0>(&__dst, &v64);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[from_str] Invalid array protocol type-string: ", &__dst, &v72);
  std::logic_error::logic_error(v18, &v72);
  v18->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A308FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v51 - 113) < 0)
  {
    operator delete(*(v51 - 136));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
    if ((v50 & 1) == 0)
    {
LABEL_8:
      if (a43 < 0)
      {
        operator delete(__p);
      }

      if (a49 < 0)
      {
        operator delete(a44);
      }

      v53 = *(v51 - 200);
      if (v53)
      {
        *(v51 - 192) = v53;
        operator delete(v53);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  goto LABEL_8;
}

void sub_25A309284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::io::thread_pool(mlx::core::io *this)
{
  {
    ThreadPool::ThreadPool(&mlx::core::io::thread_pool(void)::pool_, 4);
    __cxa_atexit(ThreadPool::~ThreadPool, &mlx::core::io::thread_pool(void)::pool_, &dword_25A232000);
  }

  return &mlx::core::io::thread_pool(void)::pool_;
}

void *mlx::core::io::ParallelFileReader::thread_pool(mlx::core::io::ParallelFileReader *this)
{
  {
    ThreadPool::ThreadPool(&mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool, 4);
    __cxa_atexit(ThreadPool::~ThreadPool, &mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool, &dword_25A232000);
  }

  return &mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool;
}

ssize_t mlx::core::io::ParallelFileReader::read(ssize_t this, char *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      this = read(*(v5 + 8), a2, v6);
      if (this <= 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[read] Unable to read ", 22);
        v8 = MEMORY[0x25F851380](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " bytes from file.", 17);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      a2 += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

void sub_25A3095A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::io::ParallelFileReader::read(mlx::core::io::ParallelFileReader *this, char *__buf, size_t __nbyte, off_t a4)
{
  v4 = *(this + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (__nbyte)
  {
    v6 = __nbyte;
    if (__nbyte >> 25)
    {
      mlx::core::io::ParallelFileReader::thread_pool(this);
      operator new();
    }

    while (v6)
    {
      v8 = pread(v4, __buf, v6, a4);
      __buf += v8;
      v6 -= v8;
      if (v8 <= 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[read] Unable to read from file.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }
  }

  v9 = v13;
  v10 = v14;
  while (v9 != v10)
  {
    if ((std::future<BOOL>::get(v9) & 1) == 0)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "[read] Unable to read from file.");
      __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    ++v9;
  }

  v16 = &v13;
  std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_25A3099CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::future<BOOL>::get(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_25A309B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::io::ParallelFileReader::~ParallelFileReader(mlx::core::io::ParallelFileReader *this)
{
  mlx::core::io::ParallelFileReader::~ParallelFileReader(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BF1458;
  close(*(this + 2));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_25A309C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ThreadPool::ThreadPool(ThreadPool *this, uint64_t a2)
{
  *(this + 9) = 850045863;
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 1018212795;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  if (a2)
  {
    if (*(this + 2))
    {
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_();
    }

    v2 = -*this >> 3;
    if (!((v2 + 1) >> 61))
    {
      v3 = -*this;
      v4 = v3 >> 2;
      if (v3 >> 2 <= (v2 + 1))
      {
        v4 = v2 + 1;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      if (v5)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(this, v5);
      }

      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25A309DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::condition_variable::~condition_variable(v14);
  std::mutex::~mutex(v13);
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100]((v12 + 24));
  a11 = v12;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::future<BOOL>>::__emplace_back_slow_path<std::future<BOOL>>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(&v13);
  return v12;
}

void sub_25A309F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    if (a2 != a3)
    {
      do
      {
        v7 = *v5;
        if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_ullong *std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::io::FileWriter>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<mlx::core::io::FileWriter>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF14D8;
  std::construct_at[abi:ne200100]<mlx::core::io::FileWriter,std::string,mlx::core::io::FileWriter*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::io::FileWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF14D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::io::FileWriter,std::string,mlx::core::io::FileWriter*>(uint64_t a1, __int128 *a2)
{
  v6 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *a1 = &unk_286BE60E0;
  if (v6 >= 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5;
  }

  *(a1 + 8) = open(v3, 1537, 420);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return a1;
}

void sub_25A30A4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Load>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::shared_ptr<mlx::core::io::Reader> &,unsigned long &,BOOL &,std::allocator<mlx::core::Load>,0>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_286BEA908;
  v5 = *a2;
  v6 = *(a2 + 2);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v10 = *a5;
  *(result + 40) = v6;
  *(result + 24) = &unk_286BF3000;
  *(result + 32) = v5;
  *(result + 48) = v8;
  *(result + 56) = v7;
  *(result + 64) = v9;
  *(result + 72) = v10;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::io::ParallelFileReader>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<mlx::core::io::ParallelFileReader>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEAB38;
  std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string,mlx::core::io::ParallelFileReader*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string,mlx::core::io::ParallelFileReader*>(uint64_t a1, __int128 *a2)
{
  v6 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *a1 = &unk_286BF1458;
  if (v6 >= 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5;
  }

  *(a1 + 8) = open(v3, 0, v5);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return a1;
}

void sub_25A30A750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::packaged_task<BOOL ()(void)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<std::packaged_task<BOOL ()(void)>>::__on_zero_shared(uint64_t a1)
{
  std::promise<BOOL>::~promise((a1 + 56));

  return std::__packaged_task_function<BOOL ()(void)>::~__packaged_task_function((a1 + 24));
}

__n128 std::__packaged_task_func<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>,std::allocator<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>>,BOOL ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__packaged_task_func<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>,std::allocator<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  do
  {
    v5 = v2;
    if (!v2)
    {
      break;
    }

    v6 = pread(*(a1 + 8), v4, v2, v3);
    v4 += v6;
    v2 = v5 - v6;
  }

  while (v6 > 0);
  return v5 == 0;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__packaged_task_function<BOOL ()(void)>::~__packaged_task_function(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x25F851250](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x25F851260](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void *std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF1628;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF1628;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF1628;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::packaged_task<BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  if ((*(v1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(v1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  LOBYTE(v5.__ptr_) = (*(**(a1 + 24) + 40))(*(a1 + 24));
  std::promise<BOOL>::set_value(v2, &v5);
}

void sub_25A30AF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::promise<BOOL>::set_exception(v9, &a9);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x25A30AF1CLL);
}

void sub_25A30AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

void std::promise<BOOL>::set_exception(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<BOOL>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_25A30B150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void mlx::core::load_gguf()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_gguf] Compile with MLX_BUILD_GGUF=ON to enable GGUF support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::save_gguf()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_gguf] Compile with MLX_BUILD_GGUF=ON to enable GGUF support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::load_safetensors()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::save_safetensors()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::all_sum(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  LOBYTE(v17[0]) = 0;
  v18 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v17[0] = *a2;
    v17[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v19);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, v12[1], (v12[1] - *v12) >> 2);
    v14 = (*a1)[7];
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25A30B59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::anonymous namespace::to_group(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    *a2 = *a1;
    a2[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 3;
    LODWORD(__p) = 7958113;
    mlx::core::distributed::init(0, &__p, a2);
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_25A30B69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::distributed::all_max(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  LOBYTE(v17[0]) = 0;
  v18 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v17[0] = *a2;
    v17[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v19);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, v12[1], (v12[1] - *v12) >> 2);
    v14 = (*a1)[7];
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25A30B8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::all_min(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  LOBYTE(v17[0]) = 0;
  v18 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v17[0] = *a2;
    v17[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v19);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, v12[1], (v12[1] - *v12) >> 2);
    v14 = (*a1)[7];
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25A30BB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::all_gather(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  LOBYTE(v30[0]) = 0;
  v31 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v30[0] = *a2;
    v30[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (mlx::core::distributed::Group::size(&v32) != 1)
  {
    v12 = *a1;
    v28 = 0;
    v29 = 0;
    __src = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__src, *v12, v12[1], (v12[1] - *v12) >> 2);
    if (v28 == __src)
    {
      v14 = mlx::core::distributed::Group::size(&v32);
      v15 = v28;
      if (v28 >= v29)
      {
        v17 = __src;
        v18 = v28 - __src;
        v19 = (v28 - __src) >> 2;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v21 = v29 - __src;
        if ((v29 - __src) >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
        v23 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v23);
        }

        *(4 * v19) = v14;
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v24 = __src;
        __src = 0;
        v28 = v16;
        v29 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v28 = v14;
        v16 = (v15 + 4);
      }

      v28 = v16;
    }

    else
    {
      v13 = mlx::core::distributed::Group::size(&v32);
      *__src *= v13;
    }

    __src = 0;
    v28 = 0;
    v29 = 0;
    v25 = (*a1)[7];
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllGather,std::allocator<mlx::core::distributed::AllGather>,mlx::core::Stream,mlx::core::distributed::Group &,0>();
  }

  v11 = a1[1];
  *a5 = *a1;
  a5[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_25A30BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v24 - 120))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_25A30BF3C()
{
  if (v0)
  {
    if (v1)
    {
      JUMPOUT(0x25A30BF2CLL);
    }
  }

  JUMPOUT(0x25A30BF34);
}

void mlx::core::distributed::send(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a2;
  LOBYTE(v24[0]) = 0;
  v25 = 0;
  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v5 = *(a3 + 8);
    v24[0] = *a3;
    v24[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (mlx::core::distributed::Group::size(&v26) != 1)
  {
    if ((a2 & 0x80000000) == 0 && mlx::core::distributed::Group::size(&v26) > a2)
    {
      v11 = *a1;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v11, v11[1], (v11[1] - *v11) >> 2);
      v12 = (*a1)[7];
      v20 = mlx::core::to_stream(a4, a5, 0);
      v21 = v13;
      std::allocate_shared[abi:ne200100]<mlx::core::distributed::Send,std::allocator<mlx::core::distributed::Send>,mlx::core::Stream,mlx::core::distributed::Group &,int &,0>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v23);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Invalid destination=", 20);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " for a group of size ", 21);
    v17 = mlx::core::distributed::Group::size(&v26);
    MEMORY[0x25F851360](v16, v17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v23, &v28);
    std::logic_error::logic_error(exception, &v28);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v19, "Cannot send to a singleton group");
  v19->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v19, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30C250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a21);
      if (*(v24 - 120))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  LOBYTE(v23[0]) = 0;
  v24 = 0;
  v11 = *(a4 + 16);
  if (v11 == 1)
  {
    v6 = *(a4 + 8);
    v23[0] = *a4;
    v23[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = 1;
  }

  if (v6 && v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (mlx::core::distributed::Group::size(&v25) != 1)
  {
    if ((a3 & 0x80000000) == 0 && mlx::core::distributed::Group::size(&v25) > a3)
    {
      *__p = *a1;
      v20 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v21.__r_.__value_.__r.__words[0] = mlx::core::to_stream(a5, a6, 0);
      LODWORD(v21.__r_.__value_.__r.__words[1]) = v12;
      std::allocate_shared[abi:ne200100]<mlx::core::distributed::Recv,std::allocator<mlx::core::distributed::Recv>,mlx::core::Stream,mlx::core::distributed::Group &,int &,0>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Invalid source=", 15);
    v14 = MEMORY[0x25F851360](v13, a3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " for a group of size ", 21);
    v16 = mlx::core::distributed::Group::size(&v25);
    MEMORY[0x25F851360](v15, v16);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v22, &v21);
    std::logic_error::logic_error(exception, &v21);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v18, "Cannot recv from a singleton group");
  v18->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30C5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      if (*(v27 - 104))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(v27 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void mlx::core::distributed::recv_like(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v10, v10[1], (v10[1] - *v10) >> 2);
  v11 = (*a1)[7];
  LOBYTE(v13[0]) = 0;
  v14 = 0;
  if (*(a3 + 16) == 1)
  {
    v12 = *(a3 + 8);
    v13[0] = *a3;
    v13[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = 1;
  }

  mlx::core::distributed::recv(__p, v11 & 0xFFFFFFFFFFLL, a2, v13, a4, a5);
}

void sub_25A30C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  mlx::core::distributed::recv_like(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::distributed::AllReduce>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,std::allocator<mlx::core::distributed::AllReduce>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF16A8;
  std::construct_at[abi:ne200100]<mlx::core::distributed::AllReduce,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,mlx::core::distributed::AllReduce*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::AllReduce>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF16A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::AllReduce,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,mlx::core::distributed::AllReduce*>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::AllReduce::AllReduce(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30C98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::AllReduce::AllReduce(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFAF8;
  *(a1 + 40) = a5;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::AllGather>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,std::allocator<mlx::core::distributed::AllGather>,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF1770;
  std::construct_at[abi:ne200100]<mlx::core::distributed::AllGather,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllGather*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::AllGather>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::AllGather,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllGather*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *a3;
  v8 = a3[1];
  v11 = v9;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::AllGather::AllGather(a1, v6, v7, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return a1;
}

void sub_25A30CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::AllGather::AllGather(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *a1 = &unk_286BFFB70;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::Send>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,int &,std::allocator<mlx::core::distributed::Send>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF17C0;
  std::construct_at[abi:ne200100]<mlx::core::distributed::Send,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Send*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::Send>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF17C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::Send,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Send*>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::Send::Send(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30CEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::Send::Send(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFBE8;
  *(a1 + 40) = a5;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::Recv>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,int &,std::allocator<mlx::core::distributed::Recv>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF1810;
  std::construct_at[abi:ne200100]<mlx::core::distributed::Recv,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Recv*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::Recv>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::Recv,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Recv*>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::Recv::Recv(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::Recv::Recv(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFC60;
  *(a1 + 40) = a5;
  return a1;
}

void mlx::core::distributed::AllReduce::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  switch(v6)
  {
    case 5:
      v12 = *a2;
      v13 = *(a1 + 32);
      v19 = *(a1 + 24);
      v20 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = 1;
      mlx::core::distributed::all_max(v12, &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v25, v29, &v30, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v25, a3);
      v28 = &v25;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v28);
      mlx::core::array::~array(v29);
      if (v21 == 1)
      {
        v9 = v20;
        if (v20)
        {
          goto LABEL_18;
        }
      }

      break;
    case 4:
      v10 = *a2;
      v11 = *(a1 + 32);
      v16 = *(a1 + 24);
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 1;
      mlx::core::distributed::all_min(v10, &v16, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v25, v29, &v30, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v25, a3);
      v28 = &v25;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v28);
      mlx::core::array::~array(v29);
      if (v18 == 1)
      {
        v9 = v17;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      break;
    case 2:
      v7 = *a2;
      v8 = *(a1 + 32);
      v22 = *(a1 + 24);
      v23 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = 1;
      mlx::core::distributed::all_sum(v7, &v22, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v25, v29, &v30, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v25, a3);
      v28 = &v25;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v28);
      mlx::core::array::~array(v29);
      if (v24 != 1)
      {
        break;
      }

      v9 = v23;
      if (!v23)
      {
        break;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Only all reduce sum, max and min are supported for now");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void mlx::core::distributed::AllReduce::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  switch(v4)
  {
    case 5:
      v10 = *a2;
      v11 = *(a1 + 32);
      v17 = *(a1 + 24);
      v18 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = 1;
      mlx::core::distributed::all_max(v10, &v17, *(a1 + 8), *(a1 + 16) | 0x100000000, v23);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v23, &v24, 1uLL);
      mlx::core::array::~array(v23);
      if (v19 == 1)
      {
        v7 = v18;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      break;
    case 4:
      v8 = *a2;
      v9 = *(a1 + 32);
      v14 = *(a1 + 24);
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 1;
      mlx::core::distributed::all_min(v8, &v14, *(a1 + 8), *(a1 + 16) | 0x100000000, v23);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v23, &v24, 1uLL);
      mlx::core::array::~array(v23);
      if (v16 == 1)
      {
        v7 = v15;
        if (v15)
        {
          goto LABEL_18;
        }
      }

      break;
    case 2:
      v5 = *a2;
      v6 = *(a1 + 32);
      v20 = *(a1 + 24);
      v21 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = 1;
      mlx::core::distributed::all_sum(v5, &v20, *(a1 + 8), *(a1 + 16) | 0x100000000, v23);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v23, &v24, 1uLL);
      mlx::core::array::~array(v23);
      if (v22 != 1)
      {
        break;
      }

      v7 = v21;
      if (!v21)
      {
        break;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Only all reduce sum, max and min are supported for now");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mlx::core::distributed::AllReduce::vjp@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void mlx::core::distributed::AllGather::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a1 + 32);
  v10 = *(a1 + 24);
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 1;
  mlx::core::distributed::all_gather(v7, &v10, *(a1 + 8), *(a1 + 16) | 0x100000000, v15);
  memset(v13, 0, sizeof(v13));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v13, v15, &v16, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v13, a3);
  v14 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  mlx::core::array::~array(v15);
  if (v12 == 1 && v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_25A30D930(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  if (a4 == 1)
  {
    if (a3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a3);
    }
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::AllGather::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a1 + 32);
  v8 = *(a1 + 24);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 1;
  mlx::core::distributed::all_gather(v5, &v8, *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v11, &v12, 1uLL);
  mlx::core::array::~array(v11);
  if (v10 == 1 && v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A30DA4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a4 == 1)
  {
    if (a3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a3);
    }
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::AllGather::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const void ****a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v28 = *(a1 + 24);
  v29 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = ((**a2)[1] - ***a2) >> 2;
  LODWORD(v23) = 0;
  std::vector<int>::vector[abi:ne200100](&v26, v8);
  v9 = **a2;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, *v9, v9[1], (v9[1] - *v9) >> 2);
  v10 = mlx::core::distributed::Group::rank(&v28);
  v11 = v23;
  v12 = *v23 * v10;
  v13 = v26;
  *v26 = v12;
  *v11 += v12;
  v14 = *a3;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v13, v27, (v27 - v13) >> 2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v23, v24, (v24 - v23) >> 2);
  mlx::core::slice(v14, &v20, &__p, v15, 0, v30);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v30, &v31, 1uLL);
  mlx::core::array::~array(v30);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25A30DC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  mlx::core::array::~array((v20 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 64);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::Send::vmap(uint64_t a1, uint64_t ***a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6[0] = *(a1 + 24);
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 1;
  mlx::core::distributed::send(v3, v4, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A30DDC4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  if (a4 == 1)
  {
    if (a3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a3);
    }
  }

  _Unwind_Resume(a1);
}

void *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25A30DE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::distributed::is_available(mlx::core::distributed *this)
{
  is_available = mlx::core::distributed::mpi::is_available(this);
  if (is_available)
  {
    return 1;
  }

  return mlx::core::distributed::ring::is_available(is_available);
}

double mlx::core::distributed::Group::split@<D0>(mlx::core::distributed::Group *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 32))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void mlx::core::distributed::init(mlx::core::distributed::mpi *a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    mlx::core::distributed::init();
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&xmmword_27FA05DB8, a2);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v7;
    return;
  }

  v44 = 0;
  v45 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *a2, *(a2 + 1));
    v9 = *(a2 + 23);
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 1) != 3)
      {
        goto LABEL_17;
      }

      v11 = *a2;
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(a2 + 23);
    v43 = *a2;
  }

  v10 = 0;
  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v11 = a2;
LABEL_12:
  v12 = *v11;
  v13 = *(v11 + 2);
  if (v12 == 28781 && v13 == 105)
  {
    mlx::core::distributed::mpi::init(a1, __p);
LABEL_42:
    v25 = __p[0];
    v44 = __p[0];
    v45 = __p[1];
LABEL_48:
    if (!v25)
    {
      operator new();
    }

    goto LABEL_49;
  }

LABEL_16:
  if (v10)
  {
LABEL_17:
    if (*(a2 + 1) != 4)
    {
LABEL_23:
      if (*(a2 + 1) != 3)
      {
        goto LABEL_67;
      }

      v17 = *a2;
      goto LABEL_26;
    }

    v15 = *a2;
    v16 = 1;
    goto LABEL_21;
  }

  if (v9 != 4)
  {
    goto LABEL_25;
  }

  v16 = 0;
  v15 = a2;
LABEL_21:
  if (*v15 == 1735289202)
  {
    mlx::core::distributed::ring::init(a1, __p);
    goto LABEL_42;
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_25:
  v17 = a2;
  if (v9 != 3)
  {
    goto LABEL_67;
  }

LABEL_26:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 28257 || v19 != 121)
  {
LABEL_67:
    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[distributed] The only valid values for backend are 'any', 'mpi' ", 65);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "and 'ring' but '", 16);
    v32 = *(a2 + 23);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    if (v32 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 1);
    }

    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "' was provided.", 15);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&__p[1], &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::distributed::ring::init(0, __p);
  v21 = __p[0];
  v22 = __p[1];
  v44 = __p[0];
  v45 = __p[1];
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    v43.__r_.__value_.__l.__size_ = 4;
    v23 = v43.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v43.__r_.__value_.__s + 23) = 4;
    v23 = &v43;
  }

  strcpy(v23, "ring");
  if (!v21)
  {
    mlx::core::distributed::mpi::init(0, __p);
    v25 = __p[0];
    v24 = __p[1];
    __p[0] = 0;
    __p[1] = 0;
    v44 = v25;
    v45 = v24;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      v43.__r_.__value_.__l.__size_ = 3;
      v26 = v43.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v43.__r_.__value_.__s + 23) = 3;
      v26 = &v43;
    }

    LODWORD(v26->__r_.__value_.__l.__data_) = 6910061;
    if (!v25 && a1)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v37, "[distributed] Couldn't initialize any backend");
      __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    goto LABEL_48;
  }

LABEL_49:
  std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::pair[abi:ne200100]<char const(&)[4],std::shared_ptr<mlx::core::distributed::detail::GroupImpl>&,0>(__p, "any", &v44);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(&xmmword_27FA05DB8, __p);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&v43.__r_.__value_.__l.__data_;
  v27 = v43.__r_.__value_.__r.__words[2];
  memset(&v43, 0, sizeof(v43));
  v40 = v27;
  v41 = v44;
  v42 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(&xmmword_27FA05DB8, __p);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v44;
  v28 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = v29;
  a3[1] = v28;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }
}

void sub_25A30E52C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
      MEMORY[0x25F8516C0](va);
      if (*(v24 - 89) < 0)
      {
        operator delete(*(v24 - 112));
      }

      v26 = *(v24 - 72);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::pair[abi:ne200100]<char const(&)[4],std::shared_ptr<mlx::core::distributed::detail::GroupImpl>&,0>(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<mlx::core::distributed::detail::EmptyGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::detail::EmptyGroup::split(mlx::core::distributed::detail::EmptyGroup *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot split the distributed group further.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_sum()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_gather()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::send()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::recv()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_max()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_min()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>();
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

void sub_25A30ED70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void mlx::core::Primitive::jvp(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::jvp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30EFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::vjp(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::vjp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::vmap(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::vmap] Not implemented for ", 38);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::output_shapes(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::output_shapes] ", 27);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " cannot infer output shapes.", 28);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::sign(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Abs::jvp();
  }

  mlx::core::Abs::jvp();
}

void sub_25A30FAB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::abs(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Abs::vmap();
  }

  mlx::core::Abs::vmap();
}

void sub_25A30FBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Add::jvp(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 >= 0x11uLL)
  {
    mlx::core::add(v5, v5 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v8, &v9, 1uLL);
  mlx::core::array::~array(v8);
  v7 = *MEMORY[0x277D85DE8];
}

void mlx::core::Add::vjp(uint64_t **a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v3 = *a1;
    v4 = a1[1];
    v5 = *MEMORY[0x277D85DE8];

    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a3, v3, v4, (v4 - v3) >> 4);
  }

  else
  {
    v6 = **a1;
    v7 = (*a1)[1];
    v11[0] = v6;
    v11[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v8 = (*a1)[1];
      v12 = **a1;
      v13 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = v6;
      v13 = 0;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v11, &v14, 2uLL);
    for (i = 2; i != -2; i -= 2)
    {
      mlx::core::array::~array(&v11[i]);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

void sub_25A30FE18(_Unwind_Exception *a1)
{
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v1 + i));
  }

  _Unwind_Resume(a1);
}

void mlx::core::Add::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::add(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A30FF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::vmap_binary_op(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(a1 + 8) - *a1 != 32)
  {
  }

  v6 = *a2;
  if (a2[1] - *a2 != 8)
  {
  }

  if (*v6 == -1 && v6[1] == -1)
  {
    v39 = v5[1];
    *a4 = *v5;
    *(a4 + 8) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
    }

    v40 = v5[3];
    *(a4 + 16) = v5[2];
    *(a4 + 24) = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(v40 + 1, 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = -1;
  }

  else
  {
    v8 = *v5;
    v9 = v5[1];
    *&v50 = *v5;
    *(&v50 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
      v5 = *a1;
    }

    v11 = v5[2];
    v10 = v5[3];
    *&v49 = v11;
    *(&v49 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    v12 = (v8[1] - *v8) >> 2;
    v14 = **a2;
    v13 = (*a2)[1];
    if (v14 == -1)
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = (v8[1] - *v8) >> 2;
    }

    v16 = (v11[1] - *v11) >> 2;
    if (v13 == -1)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v16;
    }

    if (v15 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v46 = *a3;
    v47 = *(a3 + 8);
    v48 = v18;
    v19 = v13 + v18 - v16;
    __x = v19;
    v44[0] = v8;
    v44[1] = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *&v42.__begin_;
    v42.__begin_ = 0;
    v42.__end_ = 0;
    v21 = *(&v50 + 1);
    v50 = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    mlx::core::array::~array(&v42);
    mlx::core::array::~array(v44);
    v43 = v49;
    if (*(&v49 + 1))
    {
      atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v22 = v14 + v18 - v12;
    v23 = *&v42.__begin_;
    v42.__begin_ = 0;
    v42.__end_ = 0;
    v24 = *(&v49 + 1);
    v49 = v23;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    mlx::core::array::~array(&v42);
    mlx::core::array::~array(&v43);
    if (v19 != v22)
    {
      std::vector<int>::vector[abi:ne200100](&v42, (*(v49 + 8) - *v49) >> 2);
      begin = v42.__begin_;
      end = v42.__end_;
      if (v42.__begin_ != v42.__end_)
      {
        v27 = 0;
        v28 = (v42.__end_ - v42.__begin_ - 4) >> 2;
        v29 = vdupq_n_s64(v28);
        v30 = (v28 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v31 = v42.__begin_ + 2;
        do
        {
          v32 = vdupq_n_s64(v27);
          v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_25A99B0D0)));
          if (vuzp1_s16(v33, *v29.i8).u8[0])
          {
            *(v31 - 2) = v27;
          }

          if (vuzp1_s16(v33, *&v29).i8[2])
          {
            *(v31 - 1) = v27 + 1;
          }

          if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_25A99B0C0)))).i32[1])
          {
            *v31 = v27 + 2;
            v31[1] = v27 + 3;
          }

          v27 += 4;
          v31 += 4;
        }

        while (v30 != v27);
      }

      v34 = &begin[v19];
      v35 = (end - (v34 + 1));
      if (end != v34 + 1)
      {
        memmove(v34, v34 + 1, end - (v34 + 1));
        begin = v42.__begin_;
      }

      v42.__end_ = &v35[v34];
      v36.__i_ = &begin[v22];
      std::vector<int>::insert(&v42, v36, &__x);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v42.__begin_, v42.__end_, v42.__end_ - v42.__begin_);
      mlx::core::transpose(&v49, __p, *a3, *(a3 + 8) | 0x100000000);
    }

    v37 = *(&v50 + 1);
    *a4 = v50;
    *(a4 + 8) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = *(&v49 + 1);
    *(a4 + 16) = v49;
    *(a4 + 24) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = v22;
    mlx::core::array::~array(&v49);
    mlx::core::array::~array(&v50);
  }
}

void sub_25A310378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  mlx::core::array::~array((v20 - 80));
  mlx::core::array::~array((v20 - 64));
  _Unwind_Resume(a1);
}

void mlx::core::AddMM::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v9 = *a3;
  std::vector<int>::vector[abi:ne200100](&v33, (*(**a3 + 8) - ***a3) >> 2);
  v10 = v33;
  v11 = v34;
  if (v33 != v34)
  {
    v12 = 0;
    v13 = (v34 - v33 - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = v33 + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  v19 = *(v11 - 2);
  *(v11 - 2) = *(v11 - 1);
  *(v11 - 1) = v19;
  v20 = *a4;
  v21 = *(a4 + 8);
  if (*a4 != v21)
  {
    do
    {
      if (*v20 == 1)
      {
        v25 = v9[1];
        *&v32 = *v9;
        *(&v32 + 1) = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 20) != 1.0)
        {
          v26 = *(*v9 + 56);
          mlx::core::array::array<float>();
        }

        v27 = *a2;
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v33, v34, (v34 - v33) >> 2);
        mlx::core::transpose(v27, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (!*v20)
      {
        v22 = v9[1];
        *&v32 = *v9;
        *(&v32 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 20) != 1.0)
        {
          v23 = *(*v9 + 56);
          mlx::core::array::array<float>();
        }

        v24 = *a2;
        memset(v31, 0, sizeof(v31));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v31, v33, v34, (v34 - v33) >> 2);
        mlx::core::transpose(v24 + 2, v31, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v28 = v9[1];
      *&v32 = *v9;
      *(&v32 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 24) != 1.0)
      {
        v29 = *(*v9 + 56);
        mlx::core::array::array<float>();
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, &v32);
      mlx::core::array::~array(&v32);
      ++v20;
    }

    while (v20 != v21);
    v10 = v33;
  }

  if (v10)
  {
    v34 = v10;
    operator delete(v10);
  }
}

void *mlx::core::AddMM::jvp@<X0>(void *result@<X0>, uint64_t ***a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t ***a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v6 + 4 * v12);
      v14 = *a5;
      v15 = a5[1];
      if (v13 == 1)
      {
        if (v14 != v15)
        {
          v19 = v14[1];
          v24[0] = *v14;
          v24[1] = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
          }

          v20 = (*a2)[1];
          v23[0] = **a2;
          v23[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

          v21 = *(*a3 + v11);
          v22 = v21;
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v25 = 1065353216;
          v26 = 1065353216;
          mlx::core::addmm(v24, v23, &v22, &v26, &v25, v10[1], *(v10 + 4) | 0x100000000);
        }

        mlx::core::matmul(*a2, (*a3 + v11), v10[1], *(v10 + 4) | 0x100000000);
      }

      if (!v13)
      {
        if (v14 != v15)
        {
          v16 = v14[1];
          v29[0] = *v14;
          v29[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
          }

          v17 = *(*a3 + v11);
          v28 = v17;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v18 = (*a2)[3];
          v27[0] = (*a2)[2];
          v27[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
          }

          v25 = 1065353216;
          v26 = 1065353216;
          mlx::core::addmm(v29, &v28, v27, &v26, &v25, v10[1], *(v10 + 4) | 0x100000000);
        }

        mlx::core::matmul((*a3 + v11), *a2 + 2, v10[1], *(v10 + 4) | 0x100000000);
      }

      if (v14 != v15)
      {
        mlx::core::add(v14, (*a3 + v11), v10[1], *(v10 + 4) | 0x100000000);
      }

      result = std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, (*a3 + v11));
      ++v12;
      v6 = *a4;
      v11 += 16;
    }

    while (v12 < (a4[1] - *a4) >> 2);
  }

  return result;
}

void sub_25A310B88(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v2 - 96));
  *(v2 - 96) = v1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  _Unwind_Resume(a1);
}

void mlx::core::AddMM::vmap(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = **a3;
  if (v7 < 1)
  {
    v8 = v6[1];
    v23 = *v6;
    v24 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v6, v7, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v23);
  }

  v9 = *a2;
  v10 = (*a3)[1];
  if (v10 < 1)
  {
    v11 = v9[3];
    v21 = v9[2];
    v22 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis((v9 + 2), v10, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v21);
  }

  v12 = *a2;
  v13 = (*a3)[2];
  if (v13 < 1)
  {
    v14 = v12[4];
    v15 = v12[5];
    v19 = v14;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis((v12 + 4), v13, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v19);
    v14 = v19;
  }

  v18[0] = v14;
  v18[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v17[0] = v23;
  v17[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
  }

  v16[0] = v21;
  v16[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::addmm(v18, v17, v16, a1 + 20, a1 + 24, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A310E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  mlx::core::array::~array((v22 - 104));
  mlx::core::array::~array((v22 - 88));
  _Unwind_Resume(a1);
}

void mlx::core::Arange::output_shapes(double *a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = vcvtpd_s64_f64((a1[4] - a1[3]) / a1[5]);
  v5 = v3 & ~(v3 >> 31);
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v5, &__p, 1uLL);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v9, 1uLL);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A311028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcCos::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcCos::jvp();
  }

  mlx::core::ArcCos::jvp();
}

void sub_25A3111F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCos::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arccos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcCos::vmap();
  }

  mlx::core::ArcCos::vmap();
}

void sub_25A311344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCosh::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcCosh::jvp();
  }

  mlx::core::ArcCosh::jvp();
}

void sub_25A3114FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCosh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arccosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcCosh::vmap();
  }

  mlx::core::ArcCosh::vmap();
}

void sub_25A311644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSin::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcSin::jvp();
  }

  mlx::core::ArcSin::jvp();
}

void sub_25A3117FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSin::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arcsin(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcSin::vmap();
  }

  mlx::core::ArcSin::vmap();
}

void sub_25A311944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSinh::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcSinh::jvp();
  }

  mlx::core::ArcSinh::jvp();
}

void sub_25A311AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSinh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arcsinh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcSinh::vmap();
  }

  mlx::core::ArcSinh::vmap();
}

void sub_25A311C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcTan::jvp();
  }

  mlx::core::ArcTan::jvp();
}

void sub_25A311DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arctan(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan::vmap();
  }

  mlx::core::ArcTan::vmap();
}

void sub_25A311F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan2::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 32)
  {
    if (a4[1] - *a4 == 8)
    {
      mlx::core::square(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan2::jvp();
  }

  mlx::core::ArcTan2::jvp();
}

void sub_25A312108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -32;
  do
  {
    mlx::core::array::~array(v17);
    v17 = (v19 - 16);
    v18 += 16;
  }

  while (v18);
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan2::vmap(uint64_t a1, void *a2, uint64_t a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    if (*(a3 + 8) - *a3 == 8)
    {
      mlx::core::arctan2(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan2::vmap();
  }

  mlx::core::ArcTan2::vmap();
}

void sub_25A3122E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTanh::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ArcTanh::jvp();
  }

  mlx::core::ArcTanh::jvp();
}

void sub_25A3124A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTanh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arctanh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTanh::vmap();
  }

  mlx::core::ArcTanh::vmap();
}

void sub_25A3125E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArgPartition::vmap(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v5 = **a3;
      v6 = *(a1 + 24);
      if (v5 >= 0 && v5 <= v6)
      {
        v8 = (v6 + 1);
      }

      else
      {
        v8 = v6;
      }

      mlx::core::argpartition(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArgPartition::vmap();
  }

  mlx::core::ArgPartition::vmap();
}

void sub_25A312714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A3127DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A312890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ArgReduce::vmap(uint64_t a1, uint64_t ***a2, int **a3)
{
  v5 = **a3;
  v7 = *(a1 + 20);
  v6 = *(a1 + 24);
  if (v5 < 0 || v6 < v5)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = *a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    mlx::core::argmax(v10, v9, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::argmin(v10, v9, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A3129DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a10);
  a10 = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25A312AAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A312B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ArgSort::vmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v5 = **a3;
      v6 = *(a1 + 20);
      if (v5 >= 0 && v5 <= v6)
      {
        v8 = (v6 + 1);
      }

      else
      {
        v8 = v6;
      }

      mlx::core::argsort(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArgSort::vmap();
  }

  mlx::core::ArgSort::vmap();
}

void sub_25A312C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArgReduce::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = **a2;
  v9 = 0uLL;
  v8 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v8, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = v8;
  *(v8 + *(a1 + 24)) = 1;
  v11 = v9;
  __p = v6;
  v8 = 0;
  v9 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v12, 1uLL);
  if (__p)
  {
    *&v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    *&v9 = v8;
    operator delete(v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A312D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::AsType::vjp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) != *(**a3 + 14))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[astype] Type of cotangents does not match primal output type.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v5 = (*a3)[1];
  v8[0] = **a3;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v8, *(**a2 + 56), *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v9, &v10, 1uLL);
  mlx::core::array::~array(v9);
  mlx::core::array::~array(v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlx::core::AsType::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v6[0] = **a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v6, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  mlx::core::array::~array(v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_25A312FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::AsType::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = (*a2)[1];
  v8[0] = **a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v8, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
  memset(v9, 0, sizeof(v9));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v9, v11, &v12, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v9, a3);
  v10 = v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  mlx::core::array::~array(v11);
  mlx::core::array::~array(v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A3130E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::AsStrided::vjp(uint64_t a1, uint64_t ***a2, uint64_t a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 == 4)
  {
    v4 = *(**a2 + 12);
    v5 = *(**a3 + 48);
    mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::AsStrided::vjp();
}

void sub_25A313504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  mlx::core::array::~array((v27 - 96));
  mlx::core::array::~array(&a27);
  mlx::core::array::~array((v27 - 128));
  mlx::core::array::~array((v27 - 112));
  _Unwind_Resume(a1);
}

void mlx::core::scatter_add(uint64_t **a1, void *a2, uint64_t **a3, int a4, mlx::core *a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v15[0] = *a2;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v14, 0, sizeof(v14));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v14, v15, &v16, 1uLL);
  v12 = a4;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v12, __p, 1uLL);
  mlx::core::scatter_add(a1, v14, a3, __p, a5, a6);
}

void sub_25A313710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(&a16);
  _Unwind_Resume(a1);
}

void mlx::core::AsStrided::jvp(uint64_t a1, void *a2, void **a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = (*a3)[1];
    v7[0] = **a3;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v6, 0, sizeof(v6));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
    mlx::core::as_strided(v7, v6, __p, *(a1 + 72), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::AsStrided::jvp();
}

void sub_25A31388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array((v16 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  mlx::core::array::~array(&a16);
  _Unwind_Resume(a1);
}

BOOL mlx::core::AsStrided::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10))
  {
    return a1[9] == a2[9];
  }

  else
  {
    return 0;
  }
}

void *mlx::core::BitwiseBinary::print(void *result, void *a2)
{
  v2 = *(result + 5);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v4 = "BitwiseOr";
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, 9);
    }

    v3 = "BitwiseAnd";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  if (v2 == 2)
  {
    v3 = "BitwiseXor";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      return result;
    }

    v3 = "RightShift";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  v4 = "LeftShift";
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, 9);
}

void mlx::core::BitwiseBinary::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[11] = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v5[0], *(v5[0] + 8), (*(v5[0] + 8) - *v5[0]) >> 2);
  v3 = *(v5[0] + 56);
  operator new();
}

void sub_25A313C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v26 - 72));
  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v26 - 104 + i));
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  mlx::core::array::~array((v25 + 16));
  mlx::core::array::~array(&a25);
  _Unwind_Resume(a1);
}

void mlx::core::BitwiseBinary::jvp(uint64_t a1, void *a2, uint64_t ***a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    mlx::core::zeros_like(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::BitwiseBinary::jvp();
}

void sub_25A313DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::broadcast_vjp(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = ((((*a2)[1] - **a2) >> 2) - ((*(*a1 + 8) - **a1) >> 2));
  std::vector<int>::vector[abi:ne200100](&v25, v8);
  v9 = v25;
  v10 = v26;
  if (v25 != v26)
  {
    v11 = 0;
    v12 = (v26 - v25 - 4) >> 2;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v15 = v25 + 8;
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25A99B0D0)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25A99B0C0)))).i32[1])
      {
        *v15 = v11 + 2;
        v15[1] = v11 + 3;
      }

      v11 += 4;
      v15 += 4;
    }

    while (v14 != v11);
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v9, v10, (v10 - v9) >> 2);
  LODWORD(v27[0]) = v8;
  if (v8 < ((*a2)[1] - **a2) >> 2)
  {
    LODWORD(v18) = v8;
    do
    {
      v19 = *(*v7 + 4 * (v18 - v8));
      if (v19 != mlx::core::array::shape(a2, v18))
      {
        std::vector<int>::push_back[abi:ne200100](&__p, v27);
      }

      v18 = SLODWORD(v27[0]) + 1;
      ++LODWORD(v27[0]);
    }

    while (v18 < ((*a2)[1] - **a2) >> 2);
  }

  mlx::core::sum(a2, &__p, 1, *a3, *(a3 + 8) | 0x100000000, v21);
  mlx::core::squeeze(v21, &v25, *a3, *(a3 + 8) | 0x100000000, v27);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v27, &v28, 1uLL);
  mlx::core::array::~array(v27);
  mlx::core::array::~array(v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_25A3140A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  mlx::core::array::~array(&a18);
  mlx::core::array::~array(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Broadcast::jvp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v4, v5, (v5 - v4) >> 2);
  v6 = *(**a3 + 56);
  std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream const&,std::vector<int> &,0>();
}

void sub_25A314268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  mlx::core::array::~array((v19 - 72));
  a19 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Broadcast::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v7 = *a2;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = *(a1 + 24);
    v9 = ((*(a1 + 32) - v8) >> 2) - (((*v7)[1] - **v7) >> 2) + 1;
    if (v9 < 0)
    {
      mlx::core::Broadcast::vmap();
    }

    v10 = v9 + v6;
    v11 = (v8 + 4 * (v9 + v6));
    __x[0] = mlx::core::array::shape(*a2, **a3);
    v12.__i_ = v11;
    std::vector<int>::insert((a1 + 24), v12, __x);
    v6 = v10;
  }

  mlx::core::broadcast_to(v7, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
  *__x = 0;
  v19 = 0;
  v20 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__x, v21, &v22, 1uLL);
  v14 = v6;
  v16 = 0;
  v17 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v14, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __x, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  __p = __x;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v21);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_25A314450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(&a16);
  _Unwind_Resume(a1);
}

BOOL mlx::core::Broadcast::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

double mlx::core::Broadcast::output_shape@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = **a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *v4, v4[1], (v4[1] - *v4) >> 2);
  v6 = *a1;
  if (*(a1 + 8) - *a1 >= 0x11uLL)
  {
    v7 = 1;
    v8 = 2;
    do
    {
      mlx::core::broadcast_shapes(a2, v6[v8], &v10);
      v9 = *a2;
      if (*a2)
      {
        a2[1] = v9;
        operator delete(v9);
      }

      result = *&v10;
      *a2 = v10;
      a2[2] = v11;
      ++v7;
      v6 = *a1;
      v8 += 2;
    }

    while (v7 < (*(a1 + 8) - *a1) >> 4);
  }

  return result;
}

void sub_25A314598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Broadcast::output_shapes(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 > 0x10uLL)
  {
    mlx::core::Broadcast::output_shape(a2, &__p);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v13, 1uLL);
    goto LABEL_10;
  }

  mlx::core::broadcast_shapes(**a2, (a1 + 24), &__p);
  v5 = __p;
  v6 = *(a1 + 24);
  if (v11 - __p == *(a1 + 32) - v6)
  {
    v7 = memcmp(__p, v6, v11 - __p) == 0;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (__p)
  {
LABEL_7:
    v11 = v5;
    operator delete(v5);
  }

LABEL_8:
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[Broadcast] Unable to infer broadcast shape");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v13, 1uLL);
LABEL_10:
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void mlx::core::BroadcastAxes::jvp(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  mlx::core::BroadcastAxes::output_shape(a2, (a1 + 24), __p);
  v4 = *(**a3 + 56);
  std::allocate_shared[abi:ne200100]<mlx::core::BroadcastAxes,std::allocator<mlx::core::BroadcastAxes>,mlx::core::Stream const&,std::vector<int> &,0>();
}

void sub_25A3148C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17)
{
  mlx::core::array::~array((v17 - 56));
  *(v17 - 64) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 64));
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::BroadcastAxes::output_shape(uint64_t ***a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    do
    {
      v8 = *v6;
      *__x = 0;
      v29 = 0;
      v30 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__x, *v8, v8[1], (v8[1] - *v8) >> 2);
      v9 = *a2;
      v10 = a2[1];
      if (v10 != *a2)
      {
        v11 = v29;
        do
        {
          v12 = *--v10;
          v13 = *__x + (*v6)[1] - **v6 + 4 * v12;
          v14 = v11 - v13 - 4;
          if (v11 != (v13 + 4))
          {
            memmove(v13, (v13 + 4), v11 - v13 - 4);
            v9 = *a2;
          }

          v11 = (v13 + v14);
          v29 = (v13 + v14);
        }

        while (v10 != v9);
      }

      mlx::core::broadcast_shapes(a3, __x, &v26);
      v15 = *a3;
      if (*a3)
      {
        a3[1] = v15;
        operator delete(v15);
      }

      *a3 = v26;
      v16 = *__x;
      a3[2] = v27;
      if (v16)
      {
        v29 = v16;
        operator delete(v16);
      }

      v6 += 2;
    }

    while (v6 != v7);
    v17 = *a3;
    v18 = a3[1];
  }

  v20 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    v21 = 4 * (((v18 - v17) >> 2) + ((v19 - v20) >> 2));
    do
    {
      v22 = *v20;
      v23 = *a3;
      v24 = mlx::core::array::shape(*a1, *v20);
      v25.__i_ = (v21 + v23 + 4 * v22);
      __x[0] = v24;
      std::vector<int>::insert(a3, v25, __x);
      ++v20;
    }

    while (v20 != v19);
  }
}

void sub_25A314ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::BroadcastAxes::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[BroadcastAxes] VMAP NYI");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

BOOL mlx::core::BroadcastAxes::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::BroadcastAxes::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::BroadcastAxes::output_shape(a2, (a1 + 24), __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v6, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A314C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Ceil::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Ceil::jvp();
  }

  mlx::core::Ceil::jvp();
}

void sub_25A314D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Ceil::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::ceil(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Ceil::vmap();
  }

  mlx::core::Ceil::vmap();
}

void sub_25A314E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Cholesky::vmap(uint64_t a1, uint64_t *a2, int **a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a3 < 1)
  {
    v5 = *(v4 + 8);
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v4, **a3, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  }

  mlx::core::linalg::cholesky(v6, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void mlx::core::Eigh::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v13[11] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v5 = **a3;
      if (((*(*v4 + 8) - **v4) >> 2) - 2 <= v5)
      {
        mlx::core::moveaxis(v4, v5, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        LODWORD(v5) = 0;
      }

      else
      {
        v6 = v4[1];
        v13[0] = *v4;
        v13[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
          LODWORD(v5) = **a3;
        }
      }

      v12 = v5;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (*(a1 + 48) == 1)
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v8, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v8 = *(a1 + 24);
        }

        mlx::core::linalg::eigh(v13, &v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        __p = *(a1 + 24);
      }

      mlx::core::linalg::eigvalsh(v13, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Eigh::vmap();
  }

  mlx::core::Eigh::vmap();
}

void sub_25A3152C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v27 - 80) = &a23;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 80));
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::Eigh::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = v13 - 4;
  v13 -= 4;
  if (*(a1 + 48) == 1)
  {
    __p = v12;
    v16 = v7;
    v17 = v14;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v8 = **a2;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *v8, v8[1], (v8[1] - *v8) >> 2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v20, 2uLL);
    for (i = 0; i != -6; i -= 3)
    {
      v10 = v19[i - 1];
      if (v10)
      {
        v19[i] = v10;
        operator delete(v10);
      }
    }
  }

  else
  {
    __p = v12;
    v16 = v7;
    v17 = v14;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v18, 1uLL);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25A3154F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -48;
  while (1)
  {
    v19 = *(v17 - 1);
    if (v19)
    {
      *v17 = v19;
      operator delete(v19);
    }

    v17 -= 3;
    v18 += 24;
    if (!v18)
    {
      if (__p)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

BOOL mlx::core::Eigh::is_equivalent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = *(a2 + 47);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 32);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  return !memcmp(v8, v9, v3) && *(a1 + 48) == *(a2 + 48);
}

void mlx::core::Concatenate::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const void ****a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  v9 = *a3;
  v10 = ((**a3)[1] - ***a3) >> 2;
  LODWORD(v33) = 0;
  std::vector<int>::vector[abi:ne200100](&v36, v10);
  v11 = *v9;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v11, v11[1], (v11[1] - *v11) >> 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LODWORD(v29[0]) = 0;
  std::vector<int>::push_back[abi:ne200100](&v30, v29);
  v13 = *a2;
  v12 = a2[1];
  while (v13 != v12)
  {
    LODWORD(v29[0]) = mlx::core::array::shape(v13, *(a1 + 20));
    std::vector<int>::push_back[abi:ne200100](&v30, v29);
    v13 += 2;
  }

  v14 = v30;
  v15 = v31;
  v16 = v30 + 4;
  if (v30 != v31 && v16 != v31)
  {
    v18 = *v30;
    do
    {
      v18 += *v16;
      *v16++ = v18;
    }

    while (v16 != v15);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v20 = *a4;
  v19 = a4[1];
  if (v20 != v19)
  {
    do
    {
      v21 = v30 + 4 * *v20;
      v22 = v36;
      v36[*(a1 + 20)] = *v21;
      *(v33 + *(a1 + 20)) = v21[1];
      v27 = 0;
      v28 = 0;
      v26 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, v22, v37, (v37 - v22) >> 2);
      __p = 0;
      v24 = 0;
      v25 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v33, v34, (v34 - v33) >> 2);
      mlx::core::slice(v9, &v26, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      std::vector<mlx::core::array>::push_back[abi:ne200100](a5, v29);
      mlx::core::array::~array(v29);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      ++v20;
    }

    while (v20 != v19);
    v14 = v30;
  }

  if (v14)
  {
    v31 = v14;
    operator delete(v14);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_25A315804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Concatenate::jvp(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  std::vector<int>::vector[abi:ne200100](&__p, (a4[1] - *a4) >> 2);
  v10 = __p;
  v11 = v34;
  if (__p != v34)
  {
    v12 = 0;
    v13 = (v34 - __p - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = __p + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  v19 = 126 - 2 * __clz(v11 - v10);
  v30 = a4;
  if (v11 == v10)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,false>(v10, v11, &v30, v20, 1);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v21 = *a2;
  if (a2[1] == *a2)
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (v24 >= ((a4[1] - *a4) >> 2) || (v25 = *(__p + v24), v23 != *(*a4 + 4 * v25)))
      {
        mlx::core::zeros_like((v21 + v22), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(&v30, (*a3 + 16 * v25));
      ++v24;
      ++v23;
      v21 = *a2;
      v22 += 16;
    }

    while (v23 < (a2[1] - *a2) >> 4);
    v26 = v30;
    v27 = v31;
  }

  memset(v29, 0, sizeof(v29));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v29, v26, v27, (v27 - v26) >> 4);
  mlx::core::concatenate(v29, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v36);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v36, &v37, 1uLL);
  mlx::core::array::~array(v36);
  v35 = v29;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v35);
  v36[0] = &v30;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v36);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_25A315B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char *a19, char *a20)
{
  mlx::core::array::~array(&a20);
  a19 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  a20 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Concatenate::vmap(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (v8)
  {
    v10 = 0;
    v11 = v8 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *v7++;
      v12 = v13;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v10 += 16;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    mlx::core::array::shape((*a2 + v10), v12);
    v15 = *(a1 + 20);
    if (v15 < v12)
    {
      v16 = v15;
    }

    else
    {
      v16 = (v15 + 1);
    }

    v17 = *(*a2 + v10);
    v30 = 0;
    v31 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v17, v17[1], (v17[1] - *v17) >> 2);
    v18 = *a3;
    if (a3[1] != *a3)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v18[v20];
        if ((v21 & 0x80000000) != 0)
        {
          v22 = mlx::core::array::shape((*a2 + v19), *(a1 + 20));
          *(__p + v16) = v22;
          mlx::core::expand_dims((*a2 + v19), v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        if (v12 == v21)
        {
          std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(&v33, (*a2 + v19));
        }

        else
        {
          mlx::core::moveaxis(*a2 + v19, v21, v12, *(a1 + 8), *(a1 + 16) | 0x100000000, v37);
          std::vector<mlx::core::array>::push_back[abi:ne200100](&v33, v37);
          mlx::core::array::~array(v37);
        }

        ++v20;
        v18 = *a3;
        v19 += 16;
      }

      while (v20 < a3[1] - *a3);
    }

    memset(v28, 0, sizeof(v28));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v28, v33, v34, (v34 - v33) >> 4);
    mlx::core::concatenate(v28, v16, *(a1 + 8), *(a1 + 16) | 0x100000000, v36);
    v37[0] = 0;
    v37[1] = 0;
    v38[0] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v37, v36, v37, 1uLL);
    v24 = v12;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v25, &v24, &v25, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v37, &v25);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    v25 = v37;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v25);
    mlx::core::array::~array(v36);
    v25 = v28;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v25);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    v14 = &v33;
  }

  else
  {
LABEL_6:
    memset(v32, 0, sizeof(v32));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v32, *a2, a2[1], (a2[1] - *a2) >> 4);
    mlx::core::concatenate(v32, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v37);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v33, v37, v38, 1uLL);
    LODWORD(v25) = -1;
    v30 = 0;
    v31 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v25, &v25 + 4, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v33, &__p);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    __p = &v33;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
    mlx::core::array::~array(v37);
    v14 = v32;
  }

  __p = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_25A315F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = (v25 - 112);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(&a25);
  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void mlx::core::Concatenate::output_shapes(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v14 = 0uLL;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = *a2;
  if (*(a2 + 8) - *a2 <= 0x10uLL)
  {
    v11 = v13;
  }

  else
  {
    v8 = 1;
    v9 = 2;
    do
    {
      v10 = mlx::core::array::shape(&v7[v9], *(a1 + 20));
      v11 = v13;
      *(v13 + *(a1 + 20)) += v10;
      ++v8;
      v7 = *a2;
      v9 += 2;
    }

    while (v8 < (*(a2 + 8) - *a2) >> 4);
  }

  v16 = v14;
  __p = v11;
  v13 = 0;
  v14 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v17, 1uLL);
  if (__p)
  {
    *&v16 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    *&v14 = v13;
    operator delete(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25A3161B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Conjugate::vmap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Conjugate::vmap();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Conjugate::vmap();
  }

  mlx::core::conjugate(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v7, v9, &v10, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v7, a3);
  v8 = v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v8);
  mlx::core::array::~array(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A3162E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Contiguous::vjp@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

uint64_t mlx::core::Contiguous::jvp@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void sub_25A316414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::conv_weight_backward_patches(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = ((*a1)[1] - **a1) >> 2;
  LODWORD(v40) = 0;
  std::vector<int>::vector[abi:ne200100](&v39, v7);
  v8 = *a1;
  memset(v38, 0, sizeof(v38));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v38, *v8, v8[1], (v8[1] - *v8) >> 2);
  v9 = *a1;
  memset(v37, 0, sizeof(v37));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v37, *v9, v9[1], (v9[1] - *v9) >> 2);
  v10 = ((*a1)[1] - **a1) >> 2;
  if (v10 - 1 >= 2)
  {
    v11 = *a5;
    v12 = (v39 + 4);
    v13 = (v38[0] + 4);
    v14 = (v37[0] + 4);
    v15 = v10 - 2;
    do
    {
      *v14++ += 2 * *v11;
      *v13++ += *v11;
      v16 = *v11++;
      *v12++ += v16;
      --v15;
    }

    while (v15);
  }

  v40 = 1;
  std::vector<long long>::vector[abi:ne200100](&v36, v10);
  v17 = (*a1)[1] - **a1;
  v18 = (v17 >> 2) - 2;
  if (((v17 >> 2) - 2) >= 0)
  {
    v19 = v36;
    v20 = *(v36 + 8 * v18 + 8);
    v21 = v37[0] + 4;
    do
    {
      v20 *= *(v21 + 4 * v18);
      *(v19 + 8 * v18--) = v20;
    }

    while (v18 != -1);
  }

  LODWORD(v40) = 0;
  std::vector<int>::vector[abi:ne200100](&v34, (v17 >> 2) - 2);
  if (v34 != v35)
  {
    v22 = 0;
    v23 = (v35 - v34 - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v26 = (v34 + 8);
    do
    {
      v27 = vdupq_n_s64(v22);
      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_25A99B0D0)));
      if (vuzp1_s16(v28, *v24.i8).u8[0])
      {
        *(v26 - 2) = v22 + 1;
      }

      if (vuzp1_s16(v28, *&v24).i8[2])
      {
        *(v26 - 1) = v22 + 2;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_25A99B0C0)))).i32[1])
      {
        *v26 = v22 + 3;
        v26[1] = v22 + 4;
      }

      v22 += 4;
      v26 += 4;
    }

    while (v25 != v22);
  }

  v29 = *a5;
  v30 = a5[1];
  v31 = (v30 - *a5) >> 2;
  memset(v33, 0, sizeof(v33));
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v33, v29, v30, v31);
  v32 = (*a1)[7];
  mlx::core::array::array<int>();
}

void sub_25A316B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v41);
  mlx::core::array::~array(&a19);
  mlx::core::array::~array(&a29);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  mlx::core::array::~array(&a38);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  v44 = *(v42 - 256);
  if (v44)
  {
    *(v42 - 248) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 232);
  if (v45)
  {
    *(v42 - 224) = v45;
    operator delete(v45);
  }

  v46 = *(v42 - 208);
  if (v46)
  {
    *(v42 - 200) = v46;
    operator delete(v46);
  }

  v47 = *(v42 - 184);
  if (v47)
  {
    *(v42 - 176) = v47;
    operator delete(v47);
  }

  v48 = *(v42 - 160);
  if (v48)
  {
    *(v42 - 152) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::Convolution::vjp@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Convolution::vjp();
  }

  v6 = result;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v60[0] = result;
  v9 = *a4;
  v8 = *(a4 + 8);
  if (*a4 != v8)
  {
    v47 = *(a4 + 8);
    do
    {
      if (!*v9)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
        v20 = v57;
        v21 = v58;
        if (v58 == v57)
        {
          v29 = (v58 - v57) >> 2;
        }

        else
        {
          v22 = 0;
          do
          {
            v23 = *(*(v6 + 72) + 4 * v22);
            v24 = mlx::core::array::shape(v5 + 2, v22 + 1);
            *(v57 + 4 * v22) = (v24 - 1) * v23 - *(*(v6 + 24) + 4 * v22);
            v25 = *(*(v6 + 96) + 4 * v22);
            v26 = mlx::core::array::shape(v5, v22 + 1);
            v27 = *(*(v6 + 48) + 4 * v22);
            v28 = mlx::core::array::shape(v7, v22 + 1);
            v54[v22] = v27 - v27 * v28 + (v26 - 1) * v25 + *(*(v6 + 24) + 4 * v22);
            v20 = v57;
            v21 = v58;
            v29 = (v58 - v57) >> 2;
            ++v22;
          }

          while (v29 > v22);
        }

        if (v20 == v21)
        {
          v38 = 0;
        }

        else
        {
          LOBYTE(v38) = 0;
          v39 = v20;
          do
          {
            v40 = *v39++;
            v38 = v38 & 1 | (v40 >> 31);
          }

          while (v39 != v21);
        }

        for (i = v54; i != v55; ++i)
        {
          v42 = *i;
          v38 = v38 & 1 | (v42 >> 31);
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, v20, v21, v29);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, v54, v55, v55 - v54);
        if (v38)
        {
          v43 = v51;
          v44 = v52;
          while (v43 != v44)
          {
            *v43 &= ~(*v43 >> 31);
            ++v43;
          }

          v45 = v48;
          v46 = v49;
          while (v45 != v46)
          {
            *v45 &= ~(*v45 >> 31);
            ++v45;
          }
        }

        mlx::core::Convolution::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(v60, v5 + 2, 0, 1);
      }

      if (*v9 == 1)
      {
        v10 = *(result + 96);
        v11 = *(result + 104);
        v12 = v11 - v10;
        if (v11 == v10)
        {
          goto LABEL_17;
        }

        v13 = 0;
        v14 = v12 >> 2;
        v15 = v14 <= 1 ? 1 : v14;
        v16 = 1;
        do
        {
          v17 = *(v10 + 4 * v13) == 1 && *(*(result + 72) + 4 * v13) == 1;
          v16 &= v17;
          ++v13;
        }

        while (v15 != v13);
        if (v16)
        {
LABEL_17:
          if ((*(result + 124) & 1) == 0 && *(result + 120) == 1)
          {
            v18 = *(result + 8);
            v19 = *(result + 16) | 0x100000000;
            mlx::core::conv_weight_backward_patches(v5, (v5 + 2), v7, result + 48, (result + 24));
          }
        }

        v57 = 0;
        v58 = 0;
        v59 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
        if (v55 != v54)
        {
          v30 = 0;
          do
          {
            v31 = *(*(v6 + 96) + 4 * v30);
            v32 = mlx::core::array::shape(v5, v30 + 1);
            v33 = *(*(v6 + 48) + 4 * v30);
            v34 = mlx::core::array::shape(v7, v30 + 1);
            v35 = *(*(v6 + 72) + 4 * v30);
            v36 = mlx::core::array::shape(v5 + 2, v30 + 1);
            v37 = v54;
            v54[v30] = (v36 - 1) * v35 + (v34 - 1) * v33 - (*(*(v6 + 24) + 4 * v30) + (v32 - 1) * v31);
            ++v30;
          }

          while (v30 < (v55 - v37) >> 2);
        }

        mlx::core::swapaxes(v7, 0, 0xFFFFFFFFLL, *(v6 + 8), *(v6 + 16) | 0x100000000);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void sub_25A317818(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v2 - 128));
  *(v2 - 128) = v1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v2 - 128));
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(void *a1, uint64_t **a2, int a3, uint64_t a4)
{
  v5 = *a1;
  v6 = (*a1 + 120);
  if (*v6 >= 2)
  {
    v9 = *a2;
    memset(&v18, 0, sizeof(v18));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *v9, v9[1], (v9[1] - *v9) >> 2);
    v10 = (((v18.__end_ - v18.__begin_) >> 2) - 1) & (a3 >> 31);
    v11.__i_ = &v18.__begin_[v10];
    std::vector<int>::insert(&v18, v11, v6);
    begin = v18.__begin_;
    v18.__begin_[v10 + 1] /= *(v5 + 120);
    __p = begin;
    v16 = *&v18.__end_;
    memset(&v18, 0, sizeof(v18));
    mlx::core::reshape(a2, &__p, *(v5 + 8), *(v5 + 16) | 0x100000000, v17);
    mlx::core::swapaxes(v17, a4, 0xFFFFFFFFLL, *(v5 + 8), *(v5 + 16) | 0x100000000);
  }

  v13 = *(v5 + 8);
  v14 = *(v5 + 16) | 0x100000000;

  mlx::core::swapaxes(a2, 0, 0xFFFFFFFFLL, v13, v14);
}

void sub_25A317CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  mlx::core::array::~array(&a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vmap(uint64_t a1, void **a2, unsigned int **a3)
{
  v38[9] = *MEMORY[0x277D85DE8];
  v38[0] = a1;
  v5 = **a3;
  v6 = (*a3)[1];
  v7 = *a2;
  v8 = **a2;
  v9 = (*a2)[1];
  *&v37 = v8;
  *(&v37 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v7 = *a2;
  }

  v11 = v7[2];
  v10 = v7[3];
  *&v36 = v11;
  *(&v36 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  if ((v5 & 0x80000000) == 0 && v6 < 0)
  {
    v12 = **a3;
    if (v12 >= 1)
    {
      mlx::core::moveaxis(&v37, v12, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
      v13 = v35;
      v35 = 0uLL;
      v14 = *(&v37 + 1);
      v37 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      mlx::core::array::~array(&v35);
    }

    mlx::core::flatten(&v37, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v35, &v36, *(a1 + 120));
  }

  if ((v5 & 0x80000000) != 0 && (v6 & 0x80000000) == 0)
  {
    v15 = (*a3)[1];
    if (v15 >= 1)
    {
      mlx::core::moveaxis(&v36, v15, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
      v16 = v35;
      v35 = 0uLL;
      v17 = *(&v36 + 1);
      v36 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      mlx::core::array::~array(&v35);
    }

    mlx::core::flatten(&v36, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v35, *(a1 + 120));
  }

  v18 = v5 >> 31;
  if (v6 < 0)
  {
    LOBYTE(v18) = 1;
  }

  if (v18)
  {
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v36, *(a1 + 120));
  }

  v19 = **a3;
  v21 = v8;
  v20 = *v8;
  v22 = (v21[1] - v20) >> 2;
  v23 = v19 + v22;
  if (v19 >= 0)
  {
    v23 = **a3;
  }

  if (v22 > v23)
  {
    v24 = *(v20 + 4 * v23);
    mlx::core::moveaxis(&v37, v19, 4294967294, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
    v25 = v35;
    v35 = 0uLL;
    v26 = *(&v37 + 1);
    v37 = v25;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    mlx::core::array::~array(&v35);
    mlx::core::flatten(&v37, 4294967294, -1, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
    v27 = v35;
    v35 = 0uLL;
    v28 = *(&v37 + 1);
    v37 = v27;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    mlx::core::array::~array(&v35);
    v29 = (*a3)[1];
    if (v29 >= 1)
    {
      mlx::core::moveaxis(&v36, v29, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
      v30 = v35;
      v35 = 0uLL;
      v31 = *(&v36 + 1);
      v36 = v30;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      mlx::core::array::~array(&v35);
    }

    if (*(v36 + 8) - *v36 > 4uLL)
    {
      v32 = *(*v36 + 4);
      mlx::core::flatten(&v36, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
      v33 = v35;
      v35 = 0uLL;
      v34 = *(&v36 + 1);
      v36 = v33;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      mlx::core::array::~array(&v35);
      mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v36, (*(a1 + 120) * v24));
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A318478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a25);
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t *a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  v7 = *a1;
  memset(v11, 0, sizeof(v11));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v11, *(v7 + 48), *(v7 + 56), (*(v7 + 56) - *(v7 + 48)) >> 2);
  memset(v10, 0, sizeof(v10));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
  memset(v9, 0, sizeof(v9));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *(v7 + 72), *(v7 + 80), (*(v7 + 80) - *(v7 + 72)) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(v7 + 96), *(v7 + 104), (*(v7 + 104) - *(v7 + 96)) >> 2);
  mlx::core::conv_general(a2, a3, v11, v10, v9, __p, a4, *(v7 + 124), *(v7 + 8), *(v7 + 16) | 0x100000000);
}

void sub_25A3186E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL mlx::core::Convolution::is_equivalent(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  if (v6 != *(v8 + 8) - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56) - v9;
  v11 = *(a2 + 48);
  if (v10 != *(a2 + 56) - v11)
  {
    return 0;
  }

  if (!memcmp(v9, v11, v10) && (v12 = *(a1 + 72), v13 = *(a1 + 80) - v12, v14 = *(a2 + 72), v13 == *(a2 + 80) - v14) && !memcmp(v12, v14, v13) && (v15 = *(a1 + 96), v16 = *(a1 + 104) - v15, v17 = *(a2 + 96), v16 == *(a2 + 104) - v17) && !memcmp(v15, v17, v16) && *(a1 + 120) == *(a2 + 120))
  {
    return *(a1 + 124) == *(a2 + 124);
  }

  else
  {
    return 0;
  }
}