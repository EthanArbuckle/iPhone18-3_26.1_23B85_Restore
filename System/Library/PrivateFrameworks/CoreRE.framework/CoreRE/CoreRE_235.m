void std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(*a1);
    std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::__emplace_unique_key_args<re::Vector2<float>,std::piecewise_construct_t const&,std::tuple<re::Vector2<float> const&>,std::tuple<>>(uint64_t a1, float a2, float a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

LABEL_5:
      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_15;
      }
    }

    if (v5 != a2)
    {
      if (v5 >= a2)
      {
        return v3;
      }

      goto LABEL_14;
    }

    v6 = *(v3 + 9);
    if (v6 > a3)
    {
      goto LABEL_5;
    }

    if (v5 >= a2 && v6 >= a3)
    {
      return v3;
    }

LABEL_14:
    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_15;
    }
  }
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v11);
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

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v9);
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

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result[4], v11);
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

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result[4], v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(uint64_t result, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v6 = a3;
  v8 = result;
LABEL_2:
  v181 = (a2 - 16);
  v164 = (a2 - 48);
  v167 = (a2 - 32);
  v177 = a2;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          v64 = v6[1];
          v65 = **v6;

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, (v8 + 16), v181, v65, v64);
        case 4uLL:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, v8 + 16, v8 + 32, v181, v6);
        case 5uLL:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, v8 + 16, v8 + 32, v8 + 48, v181, v6);
      }

      goto LABEL_10;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      break;
    }

LABEL_10:
    v179 = v8;
    if (v9 <= 23)
    {
      v66 = v8 + 16;
      v68 = v8 == a2 || v66 == a2;
      if (a5)
      {
        if (v68)
        {
          return result;
        }

        v69 = 0;
        v70 = v6[1];
        v71 = **v6;
        v72 = v8;
        while (1)
        {
          v73 = v72;
          v72 = v66;
          v74 = (v71 + 72 * *v73);
          v75 = *v70;
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v71 + 72 * *(v73 + 16)), *v70, *(v73 + 24));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v74, v75, *(v73 + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result != -1)
            {
              goto LABEL_216;
            }

            v76 = *(v73 + 24);
          }

          else
          {
            v76 = *(v73 + 24);
            if (v76 == *(v73 + 8))
            {
              if (v76)
              {
                if (*v72 <= *v73)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                if (*v72 >= *v73)
                {
                  goto LABEL_216;
                }

                v76 = 0;
              }
            }

            else if (v76)
            {
              goto LABEL_216;
            }
          }

          v77 = *(v73 + 16);
          *(v73 + 16) = *v73;
          *(v72 + 8) = *(v73 + 8);
          v78 = v8;
          if (v73 == v8)
          {
            goto LABEL_215;
          }

          v182 = v72;
          v187 = v77;
          v79 = (v71 + 72 * v77);
          v80 = v69;
          while (1)
          {
            v81 = v8 + v80;
            v82 = (v71 + 72 * *(v81 - 16));
            v83 = *v70;
            re::pathprocessing::ContinuousEdge::getIndex(&v192, v79, *v70, v76);
            re::pathprocessing::ContinuousEdge::getIndex(&v191, v82, v83, *(v81 - 8));
            result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
            if (result)
            {
              if (result != -1)
              {
                goto LABEL_213;
              }

              goto LABEL_211;
            }

            if (v76 != *(v81 - 8))
            {
              if (v76)
              {
                v8 = v179;
                v78 = v179 + v80;
                goto LABEL_214;
              }

              goto LABEL_211;
            }

            v84 = *(v81 - 16);
            if (!v76)
            {
              break;
            }

            if (v187 <= v84)
            {
              goto LABEL_213;
            }

LABEL_211:
            v73 -= 16;
            v85 = v179 + v80;
            *v85 = *(v81 - 16);
            v86 = *(v81 - 8);
            v8 = v179;
            *(v85 + 8) = v86;
            v80 -= 16;
            if (!v80)
            {
              v78 = v179;
              goto LABEL_214;
            }
          }

          if (v187 < v84)
          {
            goto LABEL_211;
          }

LABEL_213:
          v78 = v73;
          v8 = v179;
LABEL_214:
          v72 = v182;
          v77 = v187;
LABEL_215:
          *v78 = v77;
          *(v78 + 8) = v76;
LABEL_216:
          v66 = v72 + 16;
          v69 += 16;
          if (v72 + 16 == v177)
          {
            return result;
          }
        }
      }

      if (v68)
      {
        return result;
      }

      v150 = *v6;
      v151 = v6[1];
      v152 = *v150;
      while (1)
      {
        v153 = v8;
        v8 = v66;
        v154 = (v152 + 72 * *v153);
        v155 = *v151;
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v152 + 72 * *(v153 + 16)), *v151, *(v153 + 24));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v154, v155, *(v153 + 8));
        result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (result)
        {
          if (result != -1)
          {
            goto LABEL_349;
          }

          v156 = *(v153 + 24);
        }

        else
        {
          v156 = *(v153 + 24);
          if (v156 == *(v153 + 8))
          {
            if (v156)
            {
              if (*v8 <= *v153)
              {
                goto LABEL_349;
              }
            }

            else
            {
              if (*v8 >= *v153)
              {
                goto LABEL_349;
              }

              v156 = 0;
            }
          }

          else if (v156)
          {
            goto LABEL_349;
          }
        }

        v180 = v8;
        v157 = *v8;
        do
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v158 = v153;
                *(v153 + 16) = *v153;
                *(v153 + 24) = *(v153 + 8);
                v159 = *(v153 - 16);
                v153 -= 16;
                v160 = *v151;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, (v152 + 72 * v157), *v151, v156);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v152 + 72 * v159), v160, *(v158 - 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result != -1)
                {
                  goto LABEL_348;
                }
              }

              if (v156 == *(v158 - 8))
              {
                break;
              }

              if (v156)
              {
                goto LABEL_348;
              }
            }

            if (!v156)
            {
              break;
            }

            if (v157 <= *v153)
            {
              goto LABEL_348;
            }
          }
        }

        while (v157 < *v153);
LABEL_348:
        *v158 = v157;
        *(v158 + 8) = v156;
        a2 = v177;
        v8 = v180;
LABEL_349:
        v66 = v8 + 16;
        if (v8 + 16 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v8 == a2)
      {
        return result;
      }

      v188 = (a2 - v8) >> 4;
      v87 = v10 >> 1;
      v88 = v6[1];
      v165 = *v6;
      v89 = v10 >> 1;
      while (1)
      {
        v90 = v89;
        if (v87 < v89)
        {
          goto LABEL_273;
        }

        v91 = (2 * v89) | 1;
        v92 = v8 + 16 * v91;
        v93 = 2 * v89 + 2;
        v94 = *v165;
        v95 = *v88;
        v175 = v89;
        if (v93 >= v188)
        {
          goto LABEL_225;
        }

        v96 = (v94 + 72 * *(v92 + 16));
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v95, *(v92 + 8));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v96, v95, *(v92 + 24));
        v97 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (!v97)
        {
          break;
        }

        v90 = v175;
        if (v97 == -1)
        {
          goto LABEL_224;
        }

LABEL_225:
        v98 = v8 + 16 * v90;
        v99 = (v94 + 72 * *v98);
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v95, *(v92 + 8));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v99, v95, *(v98 + 8));
        result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (result)
        {
          v90 = v175;
          if (result == -1)
          {
            goto LABEL_273;
          }

          v100 = *(v98 + 8);
          v101 = *(v92 + 8);
        }

        else
        {
          v101 = *(v92 + 8);
          v100 = *(v98 + 8);
          if (v101 == v100)
          {
            v102 = *v92;
            v103 = *v98;
            if (v101)
            {
              v100 = *(v92 + 8);
              v104 = v102 > v103;
              v90 = v175;
              if (v104)
              {
                goto LABEL_273;
              }
            }

            else
            {
              v107 = v102 >= v103;
              v90 = v175;
              if (!v107)
              {
                goto LABEL_273;
              }

              v101 = 0;
              v100 = 0;
            }
          }

          else
          {
            v90 = v175;
            if (!v101)
            {
              goto LABEL_273;
            }
          }
        }

        v108 = *v98;
        *v98 = *v92;
        *(v98 + 8) = v101;
        v168 = v108;
        if (v87 < v91)
        {
          goto LABEL_272;
        }

        v183 = (v94 + 72 * v108);
        v171 = v100;
        while (1)
        {
          v109 = v92;
          v110 = 2 * v91;
          v91 = (2 * v91) | 1;
          v92 = v8 + 16 * v91;
          v111 = v110 + 2;
          v112 = *v88;
          if (v110 + 2 >= v188)
          {
            goto LABEL_250;
          }

          v113 = v88;
          v114 = v87;
          v115 = (v94 + 72 * *(v92 + 16));
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v112, *(v92 + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v115, v112, *(v92 + 24));
          v116 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v116)
          {
            v87 = v114;
            v88 = v113;
            v100 = v171;
            if (v116 != -1)
            {
              goto LABEL_250;
            }

LABEL_249:
            v92 += 16;
            v91 = v111;
            goto LABEL_250;
          }

          v119 = *(v92 + 8);
          if (v119 == *(v92 + 24))
          {
            v120 = *(v92 + 16);
            v87 = v114;
            v88 = v113;
            if (v119)
            {
              v100 = v171;
              if (*v92 > v120)
              {
                goto LABEL_249;
              }
            }

            else
            {
              v100 = v171;
              if (*v92 < v120)
              {
                goto LABEL_249;
              }
            }
          }

          else
          {
            v87 = v114;
            v88 = v113;
            v100 = v171;
            if (!v119)
            {
              goto LABEL_249;
            }
          }

LABEL_250:
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v112, *(v92 + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v183, v112, v100);
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result == -1)
            {
              v92 = v109;
              v8 = v179;
              goto LABEL_272;
            }

            v117 = *(v92 + 8);
            v8 = v179;
            goto LABEL_266;
          }

          v117 = *(v92 + 8);
          if (v117 != v100)
          {
            v8 = v179;
            if (!v117)
            {
              break;
            }

            goto LABEL_266;
          }

          v118 = *v92;
          v8 = v179;
          if (v117)
          {
            v117 = v100;
            if (v118 > v168)
            {
              break;
            }

            goto LABEL_266;
          }

          v117 = v100;
          if (v118 < v168)
          {
            break;
          }

LABEL_266:
          *v109 = *v92;
          *(v109 + 8) = v117;
          if (v87 < v91)
          {
            goto LABEL_272;
          }
        }

        v92 = v109;
LABEL_272:
        *v92 = v168;
        *(v92 + 8) = v100;
        v90 = v175;
LABEL_273:
        v89 = v90 - 1;
        if (!v90)
        {
          v121 = a3;
          v166 = *a3;
          v169 = a3[1];
          v122 = v177;
          v123 = v188;
          while (1)
          {
            v124 = 0;
            v176 = *v8;
            v178 = v122;
            v172 = *(v8 + 8);
            v184 = v121[1];
            v189 = *v121;
            v125 = v8;
            do
            {
              v126 = v125;
              v127 = v125 + 16 * v124;
              v125 = v127 + 16;
              v128 = 2 * v124;
              v124 = (2 * v124) | 1;
              v129 = v128 + 2;
              if (v128 + 2 >= v123)
              {
                goto LABEL_282;
              }

              v130 = (v127 + 32);
              v131 = (*v189 + 72 * *(v127 + 32));
              v132 = *v184;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, (*v189 + 72 * *(v127 + 16)), *v184, *(v127 + 24));
              re::pathprocessing::ContinuousEdge::getIndex(&v191, v131, v132, *(v127 + 40));
              result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (result)
              {
                if (result != -1)
                {
                  goto LABEL_282;
                }

LABEL_281:
                v125 = v127 + 32;
                v124 = v129;
                goto LABEL_282;
              }

              v133 = *(v127 + 24);
              if (v133 == *(v127 + 40))
              {
                if (v133)
                {
                  if (*v125 > *v130)
                  {
                    goto LABEL_281;
                  }
                }

                else if (*v125 < *v130)
                {
                  goto LABEL_281;
                }
              }

              else if (!v133)
              {
                goto LABEL_281;
              }

LABEL_282:
              *v126 = *v125;
              *(v126 + 8) = *(v125 + 8);
            }

            while (v124 <= ((v123 - 2) >> 1));
            if (v125 == v178 - 16)
            {
              *v125 = v176;
              *(v125 + 8) = v172;
              goto LABEL_321;
            }

            *v125 = *(v178 - 16);
            *(v125 + 8) = *(v178 - 8);
            *(v178 - 16) = v176;
            *(v178 - 8) = v172;
            v134 = (v125 - v179 + 16) >> 4;
            v135 = v134 - 2;
            if (v134 < 2)
            {
              goto LABEL_321;
            }

            v136 = v135 >> 1;
            v137 = v179 + 16 * (v135 >> 1);
            v185 = *v166;
            v190 = v123;
            v138 = (*v166 + 72 * *v125);
            v139 = *v169;
            re::pathprocessing::ContinuousEdge::getIndex(&v192, (*v166 + 72 * *v137), *v169, *(v137 + 8));
            re::pathprocessing::ContinuousEdge::getIndex(&v191, v138, v139, *(v125 + 8));
            result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
            if (result)
            {
              v123 = v190;
              if (result != -1)
              {
                goto LABEL_321;
              }

              v140 = *(v125 + 8);
              v141 = *(v137 + 8);
            }

            else
            {
              v141 = *(v137 + 8);
              v140 = *(v125 + 8);
              if (v141 == v140)
              {
                v142 = *v137;
                v143 = *v125;
                v123 = v190;
                if (v141)
                {
                  v140 = *(v137 + 8);
                  if (v142 <= v143)
                  {
                    goto LABEL_321;
                  }
                }

                else
                {
                  if (v142 >= v143)
                  {
                    goto LABEL_321;
                  }

                  v141 = 0;
                  v140 = 0;
                }
              }

              else
              {
                v123 = v190;
                if (v141)
                {
                  goto LABEL_321;
                }
              }
            }

            v144 = *v125;
            *v125 = *v137;
            *(v125 + 8) = v141;
            if (v135 < 2)
            {
              goto LABEL_320;
            }

            while (2)
            {
              v145 = v137;
              v146 = v136 - 1;
              v136 = (v136 - 1) >> 1;
              v137 = v179 + 16 * v136;
              v147 = *v169;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, (v185 + 72 * *v137), *v169, *(v137 + 8));
              re::pathprocessing::ContinuousEdge::getIndex(&v191, (v185 + 72 * v144), v147, v140);
              result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (result)
              {
                if (result != -1)
                {
                  break;
                }

                v148 = *(v137 + 8);
                goto LABEL_317;
              }

              v148 = *(v137 + 8);
              if (v148 != v140)
              {
                if (v148)
                {
                  break;
                }

                goto LABEL_317;
              }

              v149 = *v137;
              if (v148)
              {
                v148 = v140;
                if (v149 <= v144)
                {
                  break;
                }

                goto LABEL_317;
              }

              v148 = v140;
              if (v149 < v144)
              {
LABEL_317:
                *v145 = *v137;
                *(v145 + 8) = v148;
                if (v146 <= 1)
                {
                  goto LABEL_320;
                }

                continue;
              }

              break;
            }

            v137 = v145;
LABEL_320:
            *v137 = v144;
            *(v137 + 8) = v140;
            v123 = v190;
LABEL_321:
            v122 = v178 - 16;
            v104 = v123-- <= 2;
            v8 = v179;
            v121 = a3;
            if (v104)
            {
              return result;
            }
          }
        }
      }

      v105 = *(v92 + 8);
      if (v105 == *(v92 + 24))
      {
        v106 = *(v92 + 16);
        if (v105)
        {
          v90 = v175;
          if (*v92 <= v106)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v90 = v175;
          if (*v92 >= v106)
          {
            goto LABEL_225;
          }
        }
      }

      else
      {
        v90 = v175;
        if (v105)
        {
          goto LABEL_225;
        }
      }

LABEL_224:
      v92 += 16;
      v91 = v93;
      goto LABEL_225;
    }

    v11 = v9 >> 1;
    v12 = v8 + 16 * (v9 >> 1);
    v13 = v6[1];
    v14 = **v6;
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 16 * (v9 >> 1)), v8, v181, v14, v13);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, (v8 + 16 * (v9 >> 1)), v181, v14, v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 16), (v12 - 16), v167, **v6, v6[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 32), (v8 + 16 + 16 * v11), v164, **v6, v6[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v12 - 16), v12, (v8 + 16 + 16 * v11), **v6, v6[1]);
      v15 = *v8;
      *v8 = *v12;
      *v12 = v15;
      LODWORD(v15) = *(v8 + 8);
      *(v8 + 8) = *(v12 + 8);
      *(v12 + 8) = v15;
    }

    v16 = v6[1];
    v17 = **v6;
    v186 = v16;
    v18 = *v16;
    v174 = a4 - 1;
    if (a5)
    {
      goto LABEL_18;
    }

    v19 = (v17 + 72 * *v8);
    re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *(v8 - 16)), v18, *(v8 - 8));
    re::pathprocessing::ContinuousEdge::getIndex(&v191, v19, v18, *(v8 + 8));
    v20 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
    if (v20)
    {
      if (v20 != -1)
      {
        goto LABEL_94;
      }

LABEL_18:
      v21 = 0;
      v22 = *v8;
      v23 = *(v8 + 8);
      v24 = (v17 + 72 * *v8);
      while (1)
      {
        v25 = v8 + v21;
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *(v8 + v21 + 16)), v18, *(v8 + v21 + 24));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
        v26 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (v26)
        {
          if (v26 != -1)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v27 = *(v25 + 24);
        if (v27 == v23)
        {
          break;
        }

        if (v27)
        {
          goto LABEL_30;
        }

LABEL_29:
        v21 += 16;
      }

      v28 = *(v25 + 16);
      if (v27)
      {
        if (v28 <= v22)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v28 < v22)
      {
        goto LABEL_29;
      }

LABEL_30:
      v29 = v8 + v21 + 16;
      i = v181;
      if (v21)
      {
        while (1)
        {
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *i), v18, *(i + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
          v31 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v31)
          {
            if (v31 == -1)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v32 = *(i + 8);
            if (v32 == v23)
            {
              if (v32)
              {
                if (*i > v22)
                {
                  goto LABEL_59;
                }
              }

              else if (*i < v22)
              {
                goto LABEL_59;
              }
            }

            else if (!v32)
            {
              goto LABEL_59;
            }
          }

          i -= 16;
        }
      }

      i = v177;
      if (v29 < v177)
      {
        for (i = v181; ; i -= 16)
        {
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *i), v18, *(i + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
          v33 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v33)
          {
            if (v29 >= i || v33 == -1)
            {
              break;
            }
          }

          else
          {
            v34 = *(i + 8);
            if (v34 == v23)
            {
              v35 = *i;
              if (v34)
              {
                if (v29 >= i || v35 > v22)
                {
                  break;
                }
              }

              else if (v29 >= i || v35 < v22)
              {
                break;
              }
            }

            else if (v29 >= i || !v34)
            {
              break;
            }
          }
        }
      }

LABEL_59:
      v8 += v21 + 16;
      if (v29 < i)
      {
        v36 = i;
        do
        {
          v37 = *v8;
          *v8 = *v36;
          *v36 = v37;
          LODWORD(v37) = *(v8 + 8);
          *(v8 + 8) = *(v36 + 8);
          *(v36 + 8) = v37;
          v38 = *v186;
          do
          {
            while (1)
            {
              while (1)
              {
                v39 = *(v8 + 16);
                v8 += 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * v39), v38, *(v8 + 8));
                re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v38, v23);
                v40 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!v40)
                {
                  break;
                }

                if (v40 != -1)
                {
                  goto LABEL_72;
                }
              }

              v41 = *(v8 + 8);
              if (v41 != v23)
              {
                break;
              }

              if (v41)
              {
                if (*v8 <= v22)
                {
                  goto LABEL_72;
                }
              }

              else if (*v8 >= v22)
              {
                goto LABEL_72;
              }
            }
          }

          while (!v41);
          do
          {
            while (1)
            {
              while (1)
              {
LABEL_72:
                while (1)
                {
                  v42 = *(v36 - 16);
                  v36 -= 16;
                  re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * v42), v38, *(v36 + 8));
                  re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v38, v23);
                  v43 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                  if (!v43)
                  {
                    break;
                  }

                  if (v43 == -1)
                  {
                    goto LABEL_82;
                  }
                }

                v44 = *(v36 + 8);
                if (v44 == v23)
                {
                  break;
                }

                if (!v44)
                {
                  goto LABEL_82;
                }
              }

              if (!v44)
              {
                break;
              }

              if (*v36 > v22)
              {
                goto LABEL_82;
              }
            }
          }

          while (*v36 >= v22);
LABEL_82:
          ;
        }

        while (v8 < v36);
      }

      if (v8 - 16 != v179)
      {
        *v179 = *(v8 - 16);
        *(v179 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v22;
      *(v8 - 8) = v23;
      a4 = v174;
      a2 = v177;
      v6 = a3;
      if (v29 < i)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(v179, v8 - 16, a3, v174, a5 & 1);
        a5 = 0;
      }

      else
      {
        v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(v179, v8 - 16, a3);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(v8, v177, a3);
        if (result)
        {
          a2 = v8 - 16;
          v8 = v179;
          if (v45)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v45)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      v46 = *(v8 - 8);
      if (v46 == *(v8 + 8))
      {
        v47 = *(v8 - 16);
        if (v46)
        {
          if (v47 > *v8)
          {
            goto LABEL_18;
          }
        }

        else if (v47 < *v8)
        {
          goto LABEL_18;
        }
      }

      else if (!v46)
      {
        goto LABEL_18;
      }

LABEL_94:
      v48 = *v8;
      v49 = *(v8 + 8);
      v50 = (v17 + 72 * *v8);
      v51 = (v17 + 72 * *(v177 - 16));
      re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
      re::pathprocessing::ContinuousEdge::getIndex(&v191, v51, v18, *(v177 - 8));
      result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
      if (result)
      {
        if (result != -1)
        {
          goto LABEL_96;
        }

        do
        {
          while (1)
          {
            while (1)
            {
LABEL_115:
              while (1)
              {
                v53 = *(v8 + 16);
                v8 += 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v53), v18, *(v8 + 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result == -1)
                {
                  goto LABEL_125;
                }
              }

              if (v49 == *(v8 + 8))
              {
                break;
              }

              if (!v49)
              {
                goto LABEL_125;
              }
            }

            if (!v49)
            {
              break;
            }

            if (v48 > *v8)
            {
              goto LABEL_125;
            }
          }
        }

        while (v48 >= *v8);
      }

      else
      {
        if (v49 == *(v177 - 8))
        {
          if (v49)
          {
            if (v48 > *v181)
            {
              goto LABEL_115;
            }
          }

          else if (v48 < *v181)
          {
            goto LABEL_115;
          }
        }

        else if (!v49)
        {
          goto LABEL_115;
        }

LABEL_96:
        while (1)
        {
          v8 += 16;
          if (v8 >= v177)
          {
            break;
          }

          v52 = (v17 + 72 * *v8);
          re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v52, v18, *(v8 + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result == -1)
            {
              break;
            }
          }

          else if (v49 == *(v8 + 8))
          {
            if (v49)
            {
              if (v48 > *v8)
              {
                break;
              }
            }

            else if (v48 < *v8)
            {
              break;
            }
          }

          else if (!v49)
          {
            break;
          }
        }
      }

LABEL_125:
      j = v177;
      if (v8 < v177)
      {
        for (j = v181; ; j -= 16)
        {
          v55 = (v17 + 72 * *j);
          re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v55, v18, *(j + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result != -1)
            {
              break;
            }
          }

          else if (v49 == *(j + 8))
          {
            if (v49)
            {
              if (v48 <= *j)
              {
                break;
              }
            }

            else if (v48 >= *j)
            {
              break;
            }
          }

          else if (v49)
          {
            break;
          }
        }
      }

LABEL_159:
      while (v8 < j)
      {
        v56 = *v8;
        *v8 = *j;
        *j = v56;
        LODWORD(v56) = *(v8 + 8);
        *(v8 + 8) = *(j + 8);
        *(j + 8) = v56;
        v57 = *v186;
        do
        {
          while (1)
          {
            while (1)
            {
              v58 = *(v8 + 16);
              v8 += 16;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v57, v49);
              re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v58), v57, *(v8 + 8));
              v59 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (!v59)
              {
                break;
              }

              if (v59 == -1)
              {
                goto LABEL_149;
              }
            }

            if (v49 != *(v8 + 8))
            {
              break;
            }

            if (v49)
            {
              if (v48 > *v8)
              {
                goto LABEL_149;
              }
            }

            else if (v48 < *v8)
            {
              goto LABEL_149;
            }
          }
        }

        while (v49);
        do
        {
          while (1)
          {
            while (1)
            {
LABEL_149:
              while (1)
              {
                v60 = *(j - 16);
                j -= 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v57, v49);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v60), v57, *(j + 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result != -1)
                {
                  goto LABEL_159;
                }
              }

              if (v49 == *(j + 8))
              {
                break;
              }

              if (v49)
              {
                goto LABEL_159;
              }
            }

            if (!v49)
            {
              break;
            }

            if (v48 <= *j)
            {
              goto LABEL_159;
            }
          }
        }

        while (v48 < *j);
      }

      if (v8 - 16 != v179)
      {
        *v179 = *(v8 - 16);
        *(v179 + 8) = *(v8 - 8);
      }

      a5 = 0;
      *(v8 - 16) = v48;
      *(v8 - 8) = v49;
      a4 = v174;
      a2 = v177;
      v6 = a3;
    }
  }

  v61 = **v6;
  v62 = (v61 + 72 * *v8);
  v63 = *v6[1];
  re::pathprocessing::ContinuousEdge::getIndex(&v192, (v61 + 72 * *(a2 - 16)), v63, *(a2 - 8));
  re::pathprocessing::ContinuousEdge::getIndex(&v191, v62, v63, *(v8 + 8));
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else
  {
    v161 = *(a2 - 8);
    if (v161 == *(v8 + 8))
    {
      v162 = *(a2 - 16);
      if (v161)
      {
        if (v162 <= *v8)
        {
          return result;
        }
      }

      else if (v162 >= *v8)
      {
        return result;
      }
    }

    else if (v161)
    {
      return result;
    }
  }

  v163 = *v8;
  *v8 = *(a2 - 16);
  *(a2 - 16) = v163;
  LODWORD(v163) = *(v8 + 8);
  *(v8 + 8) = *(a2 - 8);
  *(a2 - 8) = v163;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v33 = *a2;
  v9 = (a4 + 72 * *a2);
  v10 = *a1;
  v11 = (a4 + 72 * *a1);
  v12 = *(a2 + 2);
  v13 = *a5;
  re::pathprocessing::ContinuousEdge::getIndex(&v35, v9, *a5, v12);
  v14 = *(a1 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v11, v13, v14);
  v15 = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (!v15)
  {
    if (v12 == v14)
    {
      if (v12)
      {
        if (v33 <= v10)
        {
          goto LABEL_3;
        }
      }

      else if (v33 >= v10)
      {
        goto LABEL_3;
      }
    }

    else if (v12)
    {
      goto LABEL_3;
    }

LABEL_15:
    v30 = *a3;
    v31 = v10;
    v19 = *(a3 + 2);
    re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), v13, v19);
    re::pathprocessing::ContinuousEdge::getIndex(&v34, v9, v13, v12);
    result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
    if (result)
    {
      if (result == -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v19 == v12)
      {
        if (v19)
        {
          if (v30 <= v33)
          {
            goto LABEL_45;
          }
        }

        else if (v30 >= v33)
        {
          v12 = 0;
          goto LABEL_45;
        }

LABEL_40:
        *a1 = v30;
        *a3 = v31;
        *(a1 + 2) = v19;
        goto LABEL_57;
      }

      if (!v19)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    *a1 = v33;
    *a2 = v31;
    *(a1 + 2) = v12;
    *(a2 + 2) = v14;
    v27 = *a3;
    v28 = *(a3 + 2);
    v29 = *a5;
    re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), *a5, v28);
    re::pathprocessing::ContinuousEdge::getIndex(&v34, v11, v29, v14);
    result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
    if (result)
    {
      if (result != -1)
      {
        return result;
      }
    }

    else if (v28 == v14)
    {
      if (v28)
      {
        if (v27 <= v31)
        {
          return result;
        }
      }

      else
      {
        if (v27 >= v31)
        {
          return result;
        }

        v14 = 0;
      }
    }

    else if (v28)
    {
      return result;
    }

    *a2 = v27;
    *a3 = v31;
    *(a2 + 2) = v28;
LABEL_57:
    *(a3 + 2) = v14;
    return result;
  }

  if (v15 == -1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v16 = *a3;
  v17 = *(a3 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), v13, v17);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v9, v13, v12);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v17 == v12)
  {
    if (v17)
    {
      if (v16 <= v33)
      {
        return result;
      }
    }

    else
    {
      if (v16 >= v33)
      {
        return result;
      }

      v12 = 0;
    }
  }

  else if (v17)
  {
    return result;
  }

  *a2 = v16;
  *a3 = v33;
  *(a2 + 2) = v17;
  *(a3 + 2) = v12;
  v20 = *a2;
  v21 = (a4 + 72 * *a2);
  v22 = *a1;
  v23 = (a4 + 72 * *a1);
  v24 = *(a2 + 2);
  v25 = *a5;
  re::pathprocessing::ContinuousEdge::getIndex(&v35, v21, *a5, v24);
  v26 = *(a1 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v23, v25, v26);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (v24 != v26)
  {
    if (v24)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!v24)
  {
    if (v20 >= v22)
    {
      return result;
    }

    v26 = 0;
    goto LABEL_43;
  }

  v26 = v24;
  if (v20 > v22)
  {
LABEL_43:
    *a1 = v20;
    *a2 = v22;
    *(a1 + 2) = v24;
    *(a2 + 2) = v26;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a2, a3, **a5, a5[1]);
  v8 = *a4;
  v9 = a5[1];
  v10 = **a5;
  v11 = *a3;
  v12 = (v10 + 72 * *a3);
  v13 = *(a4 + 8);
  v14 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a4), *v9, v13);
  v15 = *(a3 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v12, v14, v15);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v13 == v15)
  {
    if (v13)
    {
      v15 = v13;
      if (v8 <= v11)
      {
        return result;
      }
    }

    else
    {
      if (v8 >= v11)
      {
        return result;
      }

      v15 = 0;
    }
  }

  else if (v13)
  {
    return result;
  }

  *a3 = v8;
  *a4 = v11;
  *(a3 + 8) = v13;
  *(a4 + 8) = v15;
  v17 = *a3;
  v18 = *a2;
  v19 = (v10 + 72 * *a2);
  v20 = *(a3 + 8);
  v21 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a3), *v9, v20);
  v22 = *(a2 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v19, v21, v22);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v20 == v22)
  {
    if (v20)
    {
      v22 = v20;
      if (v17 <= v18)
      {
        return result;
      }
    }

    else
    {
      if (v17 >= v18)
      {
        return result;
      }

      v22 = 0;
    }
  }

  else if (v20)
  {
    return result;
  }

  *a2 = v17;
  *a3 = v18;
  *(a2 + 8) = v20;
  *(a3 + 8) = v22;
  v23 = *a2;
  v24 = *a1;
  v25 = (v10 + 72 * *a1);
  v26 = *(a2 + 8);
  v27 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a2), *v9, v26);
  v28 = *(a1 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v25, v27, v28);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v26 != v28)
  {
    if (v26)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!v26)
  {
    if (v23 >= v24)
    {
      return result;
    }

    v28 = 0;
    goto LABEL_34;
  }

  v28 = v26;
  if (v23 > v24)
  {
LABEL_34:
    *a1 = v23;
    *a2 = v24;
    *(a1 + 8) = v26;
    *(a2 + 8) = v28;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a2, a3, a4, a6);
  v10 = *a5;
  v11 = a6[1];
  v12 = **a6;
  v13 = *a4;
  v14 = (v12 + 72 * *a4);
  v15 = *(a5 + 2);
  v39 = v11;
  v16 = *v11;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a5), *v11, v15);
  v17 = *(a4 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v14, v16, v17);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v15 == v17)
  {
    if (v15)
    {
      v17 = v15;
      if (v10 <= v13)
      {
        return result;
      }
    }

    else
    {
      if (v10 >= v13)
      {
        return result;
      }

      v17 = 0;
    }
  }

  else if (v15)
  {
    return result;
  }

  *a4 = v10;
  *a5 = v13;
  *(a4 + 8) = v15;
  *(a5 + 2) = v17;
  v19 = *a4;
  v20 = *a3;
  v21 = (v12 + 72 * *a3);
  v22 = *(a4 + 8);
  v23 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a4), *v39, v22);
  v24 = *(a3 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v21, v23, v24);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v22 == v24)
  {
    if (v22)
    {
      v24 = v22;
      if (v19 <= v20)
      {
        return result;
      }
    }

    else
    {
      if (v19 >= v20)
      {
        return result;
      }

      v24 = 0;
    }
  }

  else if (v22)
  {
    return result;
  }

  *a3 = v19;
  *a4 = v20;
  *(a3 + 8) = v22;
  *(a4 + 8) = v24;
  v25 = *a3;
  v26 = *a2;
  v27 = (v12 + 72 * *a2);
  v28 = *(a3 + 8);
  v29 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a3), *v39, v28);
  v30 = *(a2 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v27, v29, v30);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v28 == v30)
  {
    if (v28)
    {
      v30 = v28;
      if (v25 <= v26)
      {
        return result;
      }
    }

    else
    {
      if (v25 >= v26)
      {
        return result;
      }

      v30 = 0;
    }
  }

  else if (v28)
  {
    return result;
  }

  *a2 = v25;
  *a3 = v26;
  *(a2 + 8) = v28;
  *(a3 + 8) = v30;
  v31 = *a2;
  v32 = *a1;
  v33 = (v12 + 72 * *a1);
  v34 = *(a2 + 8);
  v35 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a2), *v39, v34);
  v36 = *(a1 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v33, v35, v36);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (v34 != v36)
  {
    if (v34)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!v34)
  {
    if (v31 >= v32)
    {
      return result;
    }

    v36 = 0;
    goto LABEL_45;
  }

  v36 = v34;
  if (v31 > v32)
  {
LABEL_45:
    *a1 = v31;
    *a2 = v32;
    *(a1 + 8) = v34;
    *(a2 + 8) = v36;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, (a1 + 16), (a2 - 16), **a3, a3[1]);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16), a3);
        return 1;
    }

LABEL_12:
    v15 = a1 + 32;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, (a1 + 16), (a1 + 32), **a3, a3[1]);
    v16 = a1 + 48;
    if (a1 + 48 == v4)
    {
      return 1;
    }

    v17 = 0;
    v34 = 0;
    v36 = a3[1];
    v18 = **a3;
    v32 = v4;
    while (1)
    {
      v35 = *v16;
      v19 = (v18 + 72 * *v16);
      v20 = (v18 + 72 * *v15);
      v21 = *v36;
      re::pathprocessing::ContinuousEdge::getIndex(&v38, v19, *v36, *(v16 + 8));
      re::pathprocessing::ContinuousEdge::getIndex(&v37, v20, v21, *(v15 + 8));
      v22 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
      if (v22)
      {
        if (v22 != -1)
        {
          goto LABEL_39;
        }

        v23 = *(v16 + 8);
      }

      else
      {
        v23 = *(v16 + 8);
        if (v23 == *(v15 + 8))
        {
          v24 = *v15;
          if (v23)
          {
            if (v35 <= v24)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v35 >= v24)
            {
              goto LABEL_39;
            }

            v23 = 0;
          }
        }

        else if (v23)
        {
          goto LABEL_39;
        }
      }

      *v16 = *v15;
      *(v16 + 8) = *(v15 + 8);
      v33 = v17;
      v25 = v17;
      do
      {
        v26 = a1 + v25;
        v27 = (v18 + 72 * *(a1 + v25 + 16));
        v28 = *v36;
        re::pathprocessing::ContinuousEdge::getIndex(&v38, v19, *v36, v23);
        re::pathprocessing::ContinuousEdge::getIndex(&v37, v27, v28, *(a1 + v25 + 24));
        v29 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
        if (v29)
        {
          if (v29 != -1)
          {
            goto LABEL_38;
          }
        }

        else if (v23 == *(v26 + 24))
        {
          v30 = *(v26 + 16);
          if (v23)
          {
            if (v35 <= v30)
            {
              v15 = a1 + v25 + 32;
              goto LABEL_38;
            }
          }

          else if (v35 >= v30)
          {
            goto LABEL_38;
          }
        }

        else if (v23)
        {
          goto LABEL_38;
        }

        v15 -= 16;
        *(v26 + 32) = *(v26 + 16);
        *(a1 + v25 + 40) = *(v26 + 24);
        v25 -= 16;
      }

      while (v25 != -32);
      v15 = a1;
LABEL_38:
      v4 = v32;
      v17 = v33;
      *v15 = v35;
      *(v15 + 8) = v23;
      if (++v34 == 8)
      {
        return v16 + 16 == v32;
      }

LABEL_39:
      v15 = v16;
      v17 += 16;
      v16 += 16;
      if (v16 == v4)
      {
        return 1;
      }
    }
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 - 16);
  v8 = **a3;
  v9 = *a1;
  v10 = (v8 + 72 * *a1);
  v11 = *(a2 - 8);
  v12 = *a3[1];
  re::pathprocessing::ContinuousEdge::getIndex(&v38, (v8 + 72 * v7), v12, v11);
  v13 = *(a1 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v37, v10, v12, v13);
  v14 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
  if (v14)
  {
    if (v14 == -1)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v11 != v13)
  {
    if (!v11)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v11)
  {
    v13 = v11;
    if (v7 > v9)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v7 >= v9)
  {
    return 1;
  }

  v13 = 0;
LABEL_52:
  *a1 = v7;
  *(v4 - 16) = v9;
  *(a1 + 8) = v11;
  result = 1;
  *(v4 - 8) = v13;
  return result;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::deque<unsigned long>::~deque[abi:nn200100]((v4 - 72));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<unsigned long>::~deque[abi:nn200100](void *a1)
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

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousEdge>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousEdge>,re::pathprocessing::ContinuousEdge*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = v4[1];
      *(a3 + 16) = v4[2];
      v5 = v4[4];
      *(a3 + 24) = v4[3];
      *v4 = 0uLL;
      *(v4 + 1) = 0uLL;
      *(a3 + 32) = v5;
      *(a3 + 40) = v4[5];
      v4[4] = 0;
      v4[5] = 0;
      v6 = *(v4 + 3);
      *(a3 + 64) = *(v4 + 64);
      *(a3 + 48) = v6;
      v4 += 9;
      a3 += 72;
    }

    while (v4 != a2);
    do
    {
      result = (std::deque<unsigned long>::~deque[abi:nn200100](result) + 72);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<re::pathprocessing::ContinuousEdge>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::deque<unsigned long>::~deque[abi:nn200100]((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousVertex>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousVertex>,re::pathprocessing::ContinuousVertex*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::pathprocessing::ContinuousVertex>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::deque<unsigned long>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(v2, v17);
    }
  }

  return result;
}

void *std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(v2, v16);
    }
  }

  return result;
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v23, a2, (*a1 + 4096), *a5, *(a5 + 8));
    *a5 = v24;
    v12 = *a5;
    v13 = *(a5 + 8);
    if (v11 != a3)
    {
      v22 = a4;
      do
      {
        v14 = 0;
        v15 = *v11;
        v17 = *v12++;
        v16 = v17;
        while (1)
        {
          v18 = v16 - v13 + 4096;
          if ((4096 - v14) >> 3 >= v18 >> 3)
          {
            v19 = v18 >> 3;
          }

          else
          {
            v19 = (4096 - v14) >> 3;
          }

          if (v19)
          {
            memmove(v13, &v15[v14], 8 * v19);
          }

          v14 += 8 * v19;
          if (v14 == 4096)
          {
            break;
          }

          v20 = *v12++;
          v16 = v20;
          v13 = v20;
        }

        v13 += 8 * v19;
        if (*(v12 - 1) + 4096 == v13)
        {
          v13 = *v12;
        }

        else
        {
          --v12;
        }

        *a5 = v12;
        *(a5 + 8) = v13;
        ++v11;
      }

      while (v11 != a3);
      a4 = v22;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v23, a2, v9, v7, v8);
  result = *&v24;
  *a5 = v24;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(__n128 *a1, char **a2, char *a3, char **a4, char *a5, void *a6, char *a7)
{
  if (a2 == a4)
  {
    v11 = a3;
    v12 = a5;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v16 = a4 - 1;
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v27, *a4, a5, a6, a7);
    v18 = v28.n128_u64[1];
    v17 = v28.n128_u64[0];
    if (v16 != a2)
    {
      v19 = *v28.n128_u64[0];
      do
      {
        v20 = *v16;
        v21 = *v16 + 4096;
        while (1)
        {
          v22 = v18 - v19;
          if ((v21 - v20) >> 3 >= v22 >> 3)
          {
            v23 = v22 >> 3;
          }

          else
          {
            v23 = (v21 - v20) >> 3;
          }

          v21 -= 8 * v23;
          v18 -= 8 * v23;
          if (v23)
          {
            memmove(v18, v21, 8 * v23);
          }

          if (v21 == v20)
          {
            break;
          }

          v24 = *--v17;
          v19 = v24;
          v18 = v24 + 4096;
        }

        v19 = *v17;
        if ((*v17 + 4096) == v18)
        {
          v25 = v17[1];
          ++v17;
          v19 = v25;
          v18 = v25;
        }

        --v16;
      }

      while (v16 != a2);
    }

    v12 = *v16 + 4096;
    v11 = a3;
    v13 = v17;
    v14 = v18;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v27, v11, v12, v13, v14);
  result = v28;
  a1->n128_u64[0] = a4;
  a1->n128_u64[1] = a5;
  a1[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      v11 -= 8 * v13;
      a5 -= 8 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 8 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *std::__split_buffer<re::pathprocessing::Node const**>::emplace_back<re::pathprocessing::Node const**&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL re::pathprocessing::BezierUtils::lineCrossBezierHull(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (result)
  {
    if (result)
    {
    }
  }

  return result;
}

BOOL re::pathprocessing::anonymous namespace::rightToOrOnLine(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = vsub_f32(*a2, *a1);
  v5 = vsub_f32(*a3, *a1);
  v6 = (-v4.f32[1] * v5.f32[0]) + (v4.f32[0] * v5.f32[1]);
  v7 = vsub_f32(*a4, *a1);
  v8 = (-v4.f32[1] * v7.f32[0]) + (v4.f32[0] * v7.f32[1]);
  v9 = v6 > 0.0001;
  if (v6 < -0.0001)
  {
    v9 = 0;
  }

  if (v9 && v8 > 0.0001 && v8 >= -0.0001)
  {
    return 0;
  }

  v10 = v8 < -0.0001;
  v11 = v6 < -0.0001;
  if (v6 > 0.0001)
  {
    v11 = 1;
  }

  if (v8 > 0.0001)
  {
    v10 = 1;
  }

  if (!v11 && !v10)
  {
    return 0;
  }

  if (v6 < -0.0001 && v8 < -0.0001)
  {
    return 1;
  }

  v14 = vabs_f32(v4);
  v15 = vmvn_s8(vcge_f32(v14, vdup_lane_s32(v14, 1))).u8[0];
  v16 = vadd_f32(vmul_n_f32(*a4, v6 / (v6 - v8)), vmul_n_f32(*a3, 1.0 - (v6 / (v6 - v8))));
  v27 = v16;
  if (!v11)
  {
    if (v8 >= -0.0001)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v10)
  {
    v17 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v15 & 1)));
    v18 = a1->f32[v15 & 1];
    v19 = a2->f32[v15 & 1];
    if (v18 <= v19)
    {
      v20 = a1->f32[v15 & 1];
    }

    else
    {
      v20 = a2->f32[v15 & 1];
    }

    if (v18 <= v19)
    {
      v18 = a2->f32[v15 & 1];
    }

    if ((v20 + -0.0001) >= v17 || (v18 + 0.0001) <= v17)
    {
      if (v9)
      {
        *a3 = v16;
      }

      else
      {
        *a4 = v16;
      }
    }

    return 1;
  }

  if (v6 < -0.0001)
  {
    return 1;
  }

LABEL_34:
  v22 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v15 & 1)));
  v23 = a1->f32[v15 & 1];
  v24 = a2->f32[v15 & 1];
  if (v23 <= v24)
  {
    v25 = a1->f32[v15 & 1];
  }

  else
  {
    v25 = a2->f32[v15 & 1];
  }

  if (v23 <= v24)
  {
    v23 = a2->f32[v15 & 1];
  }

  return (v23 + -0.0001) > v22 && (v25 + 0.0001) < v22;
}

BOOL re::pathprocessing::BezierUtils::bezierHullOverlap(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = vsub_f32(v3, *a1);
  v5 = vsub_f32(v2, *a1);
  v6 = a2[1];
  v7 = a2[2];
  v8 = vsub_f32(v7, *a2);
  v9 = vsub_f32(v6, *a2);
  v10 = vmla_f32(vmul_f32(vzip1_s32(v5, v9), vneg_f32(vzip2_s32(v4, v8))), vzip2_s32(v5, v9), vzip1_s32(v4, v8));
  if ((vcgt_f32(v10, vdup_lane_s32(v10, 1)).u8[0] & 1) == 0)
  {
    v18 = *a1;
    v19 = a1[1];
    if (!re::pathprocessing::BezierUtils::lineCrossBezierHull(a2, *a1, v2) && !re::pathprocessing::BezierUtils::lineCrossBezierHull(a2, v19, v3))
    {
      v14 = a2;
      v15 = v3;
      v16 = v18;
      goto LABEL_9;
    }

    return 1;
  }

  v12 = *a2;
  v13 = a2[1];
  if (re::pathprocessing::BezierUtils::lineCrossBezierHull(a1, *a2, v6) || re::pathprocessing::BezierUtils::lineCrossBezierHull(a1, v13, v7))
  {
    return 1;
  }

  v14 = a1;
  v15 = v7;
  v16 = v12;
LABEL_9:

  return re::pathprocessing::BezierUtils::lineCrossBezierHull(v14, v15, v16);
}

uint64_t re::pathprocessing::IndexedMesh::IndexedMesh(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = 0x7F0000007FLL;
  v7 = vneg_f32(0x7F0000007FLL);
  *a1 = v7;
  *(a1 + 8) = 0x7F0000007FLL;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a1 + 72;
  collection_2f = geom_create_collection_2f();
  v9 = *a2;
  v10 = a2[1];
  v73 = a3;
  if (*a2 != v10)
  {
    while (1)
    {
      v11 = *v9;
      if ((v11 - 76) < 2)
      {
        goto LABEL_8;
      }

      if (v11 == 81)
      {
        break;
      }

      if (v11 == 67)
      {
        v12 = *(v9 + 8);
        v7 = vminnm_f32(v7, v12);
        v6 = vmaxnm_f32(v6, v12);
        v13 = 16;
LABEL_7:
        v14 = *&v9[v13];
        v7 = vminnm_f32(v7, v14);
        v6 = vmaxnm_f32(v6, v14);
LABEL_8:
        v15 = *(v9 + 24);
        v7 = vminnm_f32(v7, v15);
        v6 = vmaxnm_f32(v6, v15);
      }

      v9 += 32;
      if (v9 == v10)
      {
        v16 = v7;
        v17 = v6;
        goto LABEL_12;
      }
    }

    v13 = 8;
    goto LABEL_7;
  }

  v17 = 0xFF800000FF800000;
  v16 = 0x7F8000007F800000;
LABEL_12:
  *a1 = v16;
  *(a1 + 8) = v17;
  v19 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    v20 = -1;
    v21 = -1;
    v74 = v18;
    do
    {
      v22 = v19->u8[0];
      if (v22 <= 0x4C)
      {
        if (v22 == 67)
        {
          v82 = 0uLL;
          *&v83 = 0;
          monotonic_intervals_2f = geom_cubic_bezier_find_monotonic_intervals_2f();
          v32 = monotonic_intervals_2f - 1;
          if (monotonic_intervals_2f != 1)
          {
            v33 = 0;
            do
            {
              ++v33;
              geom_cubic_bezier_extract_2f();
              geom_cubic_bezier_fit_with_quadratic_beziers_2f();
              v34 = geom_collection_size_2f();
              v35 = geom_collection_data_2f();
              if (v34)
              {
                v36 = (v35 + 16);
                v37 = 1;
                do
                {
                  v77.__begin_ = *(v36 - 1);
                  v38 = *v36;
                  v36 += 3;
                  __p[0] = v38;
                  v21 = re::pathprocessing::IndexedMesh::addBezierTo(a1, v21, &v77, __p);
                  v39 = v37 + 2;
                  v37 += 3;
                }

                while (v39 < v34);
              }
            }

            while (v33 != v32);
          }

          v18 = v74;
        }

        else if (v22 == 76)
        {
          *&v82 = vsub_f32(v19[3], *a1);
          v26 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, &v82);
          re::pathprocessing::IndexedMesh::addLineTo(a1, v21, v26);
          v21 = v26;
        }
      }

      else
      {
        switch(v22)
        {
          case 'Z':
            if (v21 != v20)
            {
              v28 = *(a1 + 48);
              v27 = *(a1 + 56);
              if (v28 >= v27)
              {
                v40 = *(a1 + 40);
                v41 = v28 - v40;
                v42 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v40) >> 3);
                v43 = v42 + 1;
                if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_82;
                }

                v44 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v40) >> 3);
                if (2 * v44 > v43)
                {
                  v43 = 2 * v44;
                }

                if (v44 >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v43;
                }

                if (v45)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v45);
                }

                v52 = 24 * v42;
                *v52 = v21;
                *(v52 + 8) = -1;
                *(v52 + 16) = v20;
                v29 = 24 * v42 + 24;
                v53 = v52 - v41;
                memcpy((v52 - v41), v40, v41);
                v54 = *(a1 + 40);
                *(a1 + 40) = v53;
                *(a1 + 48) = v29;
                *(a1 + 56) = 0;
                if (v54)
                {
                  operator delete(v54);
                }

                v18 = v74;
              }

              else
              {
                *v28 = v21;
                v28[1] = -1;
                v29 = (v28 + 3);
                v28[2] = v20;
              }

              *(a1 + 48) = v29;
            }

            v21 = v20;
            break;
          case 'Q':
            v30 = *a1;
            *&v82 = vsub_f32(v19[1], *a1);
            v77.__begin_ = vsub_f32(v19[3], v30);
            v21 = re::pathprocessing::IndexedMesh::addBezierTo(a1, v21, &v82, &v77);
            break;
          case 'M':
            if (v20 != v21)
            {
              v24 = *(a1 + 48);
              v23 = *(a1 + 56);
              if (v24 >= v23)
              {
                v46 = *(a1 + 40);
                v47 = v24 - v46;
                v48 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v46) >> 3);
                v49 = v48 + 1;
                if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_82;
                }

                v50 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v46) >> 3);
                if (2 * v50 > v49)
                {
                  v49 = 2 * v50;
                }

                if (v50 >= 0x555555555555555)
                {
                  v51 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v51);
                }

                v55 = 24 * v48;
                *v55 = v21;
                *(v55 + 8) = -1;
                *(v55 + 16) = v20;
                v25 = 24 * v48 + 24;
                v56 = v55 - v47;
                memcpy((v55 - v47), v46, v47);
                v57 = *(a1 + 40);
                *(a1 + 40) = v56;
                *(a1 + 48) = v25;
                *(a1 + 56) = 0;
                if (v57)
                {
                  operator delete(v57);
                }

                v18 = v74;
              }

              else
              {
                *v24 = v21;
                v24[1] = -1;
                v25 = (v24 + 3);
                v24[2] = v20;
              }

              *(a1 + 48) = v25;
            }

            *&v82 = vsub_f32(v19[3], *a1);
            v21 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, &v82);
            v20 = v21;
            break;
        }
      }

      v19 += 4;
    }

    while (v19 != v18);
    if (v20 != v21)
    {
      v59 = *(a1 + 48);
      v58 = *(a1 + 56);
      if (v59 >= v58)
      {
        v61 = *(a1 + 40);
        v62 = v59 - v61;
        v63 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v61) >> 3);
        v64 = v63 + 1;
        if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_82:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v65 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v61) >> 3);
        if (2 * v65 > v64)
        {
          v64 = 2 * v65;
        }

        if (v65 >= 0x555555555555555)
        {
          v66 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v66 = v64;
        }

        if (v66)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v66);
        }

        v67 = 24 * v63;
        *v67 = v21;
        *(v67 + 8) = -1;
        *(v67 + 16) = v20;
        v60 = 24 * v63 + 24;
        v68 = v67 - v62;
        memcpy((v67 - v62), v61, v62);
        v69 = *(a1 + 40);
        *(a1 + 40) = v68;
        *(a1 + 48) = v60;
        *(a1 + 56) = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v59 = v21;
        v59[1] = -1;
        v59[2] = v20;
        v60 = (v59 + 3);
      }

      *(a1 + 48) = v60;
    }
  }

  os_release(collection_2f);
  if (v73)
  {
    v71 = *(a1 + 40);
    v70 = *(a1 + 48);
    if (v70 != v71)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - v71) >> 3) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    memset(v75, 0, sizeof(v75));
    v76 = 1065353216;
    memset(v81, 0, sizeof(v81));
    *__p = 0u;
    *v79 = 0u;
    v80 = 1065353216;
    __p[0] = 0;
    *&v82 = v81;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v82);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(v75);
  }

  return a1;
}

uint64_t re::pathprocessing::IndexedMesh::getOrAddIndex(void *a1, float *a2)
{
  v5 = (a1 + 9);
  v4 = a1[9];
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = (a1 + 9);
  do
  {
    v7 = re::pathprocessing::MathUtils::lexicographicalApproxLess(v4 + 8, a2);
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v4;
    }

    v4 = *&v4[v8];
  }

  while (v4);
  if (v6 != v5 && !re::pathprocessing::MathUtils::lexicographicalApproxLess(a2, v6 + 8))
  {
    return *(v6 + 5);
  }

LABEL_11:
  v9 = (a1[3] - a1[2]) >> 3;
  std::vector<re::Vector2<float>>::push_back[abi:nn200100]((a1 + 2), a2);
  v10 = a1[9];
  if (!v10)
  {
    goto LABEL_17;
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      if (!re::pathprocessing::MathUtils::lexicographicalApproxLess(a2, v10 + 8))
      {
        break;
      }

      v10 = *v11;
      v5 = v11;
      if (!*v11)
      {
        goto LABEL_17;
      }
    }

    if (!re::pathprocessing::MathUtils::lexicographicalApproxLess(v11 + 8, a2))
    {
      break;
    }

    v5 = v11 + 2;
    v10 = *(v11 + 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (!*v5)
  {
LABEL_17:
    operator new();
  }

  *(*v5 + 40) = v9;
  return v9;
}

uint64_t re::pathprocessing::IndexedMesh::addBezierTo(re::pathprocessing::IndexedMesh *a1, uint64_t a2, uint64_t *a3, float *a4)
{
  v8 = a1 + 16;
  v9 = *a3;
  v27[0] = *(*(a1 + 2) + 8 * a2);
  v27[1] = v9;
  v27[2] = *a4;
  v10 = re::pathprocessing::Bezier2::geometryType(v27);
  if (v10 == 1)
  {
    return a2;
  }

  if (v10 == 2)
  {
    v11 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, a4);
    re::pathprocessing::IndexedMesh::addLineTo(a1, a2, v11);
  }

  else
  {
    v12 = (*(a1 + 3) - *(a1 + 2)) >> 3;
    std::vector<re::Vector2<float>>::push_back[abi:nn200100](v8, a3);
    v13 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, a4);
    v11 = v13;
    v15 = *(a1 + 6);
    v14 = *(a1 + 7);
    if (v15 >= v14)
    {
      v17 = *(a1 + 5);
      v18 = v15 - v17;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v22);
      }

      v23 = 24 * v19;
      *v23 = a2;
      *(v23 + 8) = v12;
      *(v23 + 16) = v11;
      v16 = 24 * v19 + 24;
      v24 = v23 - v18;
      memcpy((v23 - v18), v17, v18);
      v25 = *(a1 + 5);
      *(a1 + 5) = v24;
      *(a1 + 6) = v16;
      *(a1 + 7) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = a2;
      v15[1] = v12;
      v16 = (v15 + 3);
      v15[2] = v13;
    }

    *(a1 + 6) = v16;
  }

  return v11;
}

void std::vector<re::Vector2<float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v10);
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

uint64_t re::pathprocessing::IndexedMesh::addLineTo(re::pathprocessing::IndexedMesh *this, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v7 = *(this + 6);
    v6 = *(this + 7);
    if (v7 >= v6)
    {
      v9 = *(this + 5);
      v10 = v7 - v9;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v14);
      }

      v15 = 24 * v11;
      *v15 = a2;
      *(v15 + 8) = -1;
      *(v15 + 16) = a3;
      v8 = 24 * v11 + 24;
      v16 = v15 - v10;
      memcpy((v15 - v10), v9, v10);
      v17 = *(this + 5);
      *(this + 5) = v16;
      *(this + 6) = v8;
      *(this + 7) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7 = a2;
      *(v7 + 1) = -1;
      *(v7 + 2) = a3;
      v8 = (v7 + 24);
    }

    *(this + 6) = v8;
  }

  return a3;
}

void re::pathprocessing::IndexedMesh::flatten(void *a1, uint64_t *a2, std::vector<int> *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  std::vector<re::pathprocessing::Bezier2>::resize(a2, v8);
  std::vector<unsigned int>::resize(a3, v8);
  if (v6 != v7)
  {
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    }

    while (1)
    {
      v12 = (a1[5] + v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      if (v13 == -1 || v14 != -1)
      {
        goto LABEL_13;
      }

      if (v15 == -1)
      {
        break;
      }

      v17 = a1[2];
      v18 = *(v17 + 8 * v13);
      v19 = *(v17 + 8 * v15);
      v20 = *a2;
      v21 = (*a2 + v9);
      *v21 = v18;
      v21[1] = vadd_f32(vmul_f32(v18, 0x3F0000003F000000), vmul_f32(v19, 0x3F0000003F000000));
      v22 = 2;
LABEL_14:
      *(v20 + v9 + 16) = v19;
      a3->__begin_[v10++] = v22;
      v9 += 24;
      if (v11 == v10)
      {
        return;
      }
    }

    v14 = -1;
LABEL_13:
    v23 = a1[2];
    v24 = *(v23 + 8 * v13);
    v25 = *(v23 + 8 * v14);
    v19 = *(v23 + 8 * v15);
    v20 = *a2;
    v26 = (*a2 + v9);
    *v26 = v24;
    v26[1] = v25;
    v22 = 3;
    goto LABEL_14;
  }
}

void std::vector<re::pathprocessing::Bezier2>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<re::pathprocessing::Bezier2>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::pathprocessing::Bezier2>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
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

uint64_t *std::__tree<std::__value_type<float,unsigned long>,std::__map_value_compare<float,std::__value_type<float,unsigned long>,re::pathprocessing::MathUtils::LexApproxCompare,true>,std::allocator<std::__value_type<float,unsigned long>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if ((a2 + 0.0001) >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if ((v4 + 0.0001) >= a2)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
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

void *std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(void *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    std::deque<unsigned long>::__add_back_capacity(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 8 * (v9 & 0x1FF);
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += (v16 - v12) >> 3;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

uint64_t std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
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

void *std::deque<unsigned long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<unsigned long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

float32x2_t re::pathprocessing::Bezier2::curveBetween@<D0>(float32x2_t *this@<X0>, float a2@<S0>, float a3@<S1>, float32x2_t *a4@<X8>)
{
  v4 = *this;
  v5 = this[1];
  v6 = this[2];
  v7 = vadd_f32(vadd_f32(vmul_n_f32(*this, (1.0 - a2) * (1.0 - a2)), vmul_n_f32(v5, (a2 + a2) * (1.0 - a2))), vmul_n_f32(v6, a2 * a2));
  *a4 = v7;
  a4[1] = vadd_f32(vmul_n_f32(v7, 1.0 - ((a3 - a2) / (1.0 - a2))), vmul_n_f32(vadd_f32(vmul_n_f32(v5, 1.0 - a2), vmul_n_f32(v6, a2)), (a3 - a2) / (1.0 - a2)));
  result = vadd_f32(vadd_f32(vmul_n_f32(v4, (1.0 - a3) * (1.0 - a3)), vmul_n_f32(v5, (a3 + a3) * (1.0 - a3))), vmul_n_f32(v6, a3 * a3));
  a4[2] = result;
  return result;
}

uint64_t re::pathprocessing::Bezier2::geometryType(re::pathprocessing::Bezier2 *this)
{
  result = re::pathprocessing::Bezier2::isfinite(this);
  if (result)
  {
    if (re::pathprocessing::Bezier2::isPoint(this))
    {
      return 1;
    }

    else if (re::pathprocessing::Bezier2::isLine(this))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL re::pathprocessing::Bezier2::isfinite(re::pathprocessing::Bezier2 *this)
{
  if ((*this & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(this + 1) & 0x7FFFFFFFu) < 0x7F800000 || (*(this + 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(this + 3) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 1;
  }

  if ((*(this + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return (*(this + 5) & 0x7FFFFFFFu) < 0x7F800000;
  }

  return 0;
}

BOOL re::pathprocessing::Bezier2::isPoint(re::pathprocessing::Bezier2 *this)
{
  v1 = *this;
  v2 = *(this + 2);
  if (*this != v2 && vabds_f32(v1, v2) > 0.0001)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 3);
  if (v3 != v4 && vabds_f32(v3, v4) > 0.0001)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (v2 != v5 && vabds_f32(v2, v5) > 0.0001)
  {
    return 0;
  }

  v6 = *(this + 5);
  if (v4 != v6 && vabds_f32(v4, v6) > 0.0001)
  {
    return 0;
  }

  if (v1 != v5 && vabds_f32(v1, v5) > 0.0001)
  {
    return 0;
  }

  if (vabds_f32(v3, v6) <= 0.0001)
  {
    return 1;
  }

  return v3 == v6;
}

BOOL re::pathprocessing::Bezier2::isLine(float32x2_t *this)
{
  if (re::pathprocessing::Bezier2::isPoint(this))
  {
    return 0;
  }

  v3 = this[1];
  v4 = vsub_f32(v3, *this);
  v5 = vmul_f32(v4, v4);
  v6 = this[2];
  v7 = vsub_f32(v6, v3);
  v8 = vmul_f32(v7, v7);
  v9 = vsqrt_f32(vadd_f32(vzip1_s32(v5, v8), vzip2_s32(v5, v8)));
  v10 = vsub_f32(*this, v6);
  v11 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  if (v9.f32[0] <= v9.f32[1])
  {
    v12 = v9.f32[1];
  }

  else
  {
    v12 = v9.f32[0];
  }

  if (v9.f32[0] > v9.f32[1])
  {
    v9.f32[0] = v9.f32[1];
  }

  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 <= v11)
  {
    v11 = v12;
  }

  return fabsf(((v9.f32[0] + v11) / v13) + -1.0) < 0.0001;
}

BOOL re::pathprocessing::Bezier2::enclosingTriangleOverlaps(float32x2_t *this, float32x2_t *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = this[2];
  *v5.f32 = vminnm_f32(vminnm_f32(*this, v3), v4);
  v6 = vmaxnm_f32(vmaxnm_f32(*this, v3), v4);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = vminnm_f32(vminnm_f32(*a2, v8), v9);
  *v11.f32 = vmaxnm_f32(vmaxnm_f32(*a2, v8), v9);
  v5.i64[1] = __PAIR64__(v10.u32[0], v10.u32[1]);
  v11.i64[1] = __PAIR64__(v6.u32[0], v6.u32[1]);
  if ((vminv_u16(vmovn_s32(vcgeq_f32(v11, v5))) & 1) == 0)
  {
    return 0;
  }

  isLine = re::pathprocessing::Bezier2::isLine(this);
  v15 = re::pathprocessing::Bezier2::isLine(a2);
  v16 = !v15;
  if (isLine && !v16)
  {
    return 0;
  }

  if (isLine && !v15)
  {
    v21 = v2;
    v22 = v4;
    v23 = vsub_f32(v8, v7);
    v24 = vsub_f32(v9, v8);
    if (((-v23.f32[1] * v24.f32[0]) + (v23.f32[0] * v24.f32[1])) >= 0.0)
    {
      *&v30 = v9;
      *(&v30 + 1) = v8;
      v31 = v7;
      return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
    }

    v30 = *a2->f32;
    v25 = a2[2];
LABEL_13:
    v31 = v25;
    return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
  }

  v18 = vsub_f32(v3, v2);
  v19 = vsub_f32(v4, v3);
  v20 = (-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1]);
  if (((isLine | v16) & 1) == 0)
  {
    v21 = v7;
    v22 = v9;
    if (v20 >= 0.0)
    {
      *&v30 = v4;
      *(&v30 + 1) = v3;
      v31 = v2;
      return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
    }

    v30 = *this->f32;
    v25 = this[2];
    goto LABEL_13;
  }

  if (v20 >= 0.0)
  {
    *&v30 = v4;
    *(&v30 + 1) = v3;
    v31 = v2;
  }

  else
  {
    v30 = *this->f32;
    v31 = this[2];
  }

  v26 = vsub_f32(v8, v7);
  v27 = vsub_f32(v9, v8);
  if (((-v26.f32[1] * v27.f32[0]) + (v26.f32[0] * v27.f32[1])) >= 0.0)
  {
    *&v28 = v9;
    *(&v28 + 1) = v8;
    v29 = v7;
  }

  else
  {
    v28 = *a2->f32;
    v29 = a2[2];
  }

  return re::pathprocessing::BezierUtils::bezierHullOverlap(&v30, &v28);
}

void re::pathprocessing::Bezier2::removeOverlaps(__int128 *a1, __int128 *a2)
{
  v4[8] = *MEMORY[0x1E69E9840];
  re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(v3, a1, 0.0, 1.0);
  re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(v4, a2, 0.0, 1.0);
  operator new();
}

float32x2_t *re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(float32x2_t *a1, __int128 *a2, float a3, float a4)
{
  a1->f32[0] = a3;
  a1->f32[1] = a4;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5 = *a2;
  a1[7] = a2[1];
  *a1[5].f32 = v5;
  re::pathprocessing::Bezier2::curveBetween(a1 + 5, a3, a4, &v17);
  *a1[2].f32 = v17;
  a1[4] = v18;
  v6 = a1[3];
  v7 = vsub_f32(a1[2], v6);
  v8 = vmul_f32(v7, v7);
  v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v8.i32[0] = vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).u32[0];
  v11 = vsub_f32(a1[4], v6);
  v12 = vmul_f32(v11, v11);
  v13 = vmul_n_f32(v7, v8.f32[0]);
  v8.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
  v14 = vrsqrte_f32(v8.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v8.u32[0], vmul_f32(v14, v14)));
  a1[1].f32[0] = (vaddv_f32(vmul_f32(v13, vmul_n_f32(v11, vmul_f32(v15, vrsqrts_f32(v8.u32[0], vmul_f32(v15, v15))).f32[0]))) * 0.5) + 0.5;
  return a1;
}

void std::vector<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier,std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = (v3 - *a1) >> 6;
    v10 = v9 + 1;
    if ((v9 + 1) >> 58)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - *a1;
    if (v11 >> 5 > v10)
    {
      v10 = v11 >> 5;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v12 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>(v12);
    }

    v13 = (v9 << 6);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[3];
    v13[2] = a2[2];
    v13[3] = v16;
    *v13 = v14;
    v13[1] = v15;
    v8 = (v9 << 6) + 64;
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy(v13 - v17, *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
  }

  *(a1 + 8) = v8;
}

float32x2_t re::pathprocessing::Bezier2::tangentAt(float32x2_t *a1, int a2, float a3)
{
  isLine = re::pathprocessing::Bezier2::isLine(a1);
  v7 = *a1;
  if (isLine)
  {
    result = vsub_f32(a1[2], v7);
    if (a2)
    {
      return result;
    }
  }

  else
  {
    result = vadd_f32(vmul_n_f32(vsub_f32(a1[1], v7), (1.0 - a3) + (1.0 - a3)), vmul_n_f32(vsub_f32(a1[2], a1[1]), a3 + a3));
    if (a2)
    {
      return result;
    }
  }

  v9 = vmul_f32(result, result);
  v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
  return vmul_n_f32(result, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
}

uint64_t *re::pathprocessing::Bezier2::split@<X0>(float32x2_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (*a2 == v4)
  {
    v22 = *a1->f32;
    v23 = a1[2];
    return std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](a3, &v22, 1uLL);
  }

  else
  {
    result = std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](a3, ((v4 - *a2) >> 2) + 1);
    v7 = *a2;
    if (a2[1] != *a2)
    {
      v8 = 0;
      v9 = 0;
      v10 = *result;
      v11 = 0.0;
      do
      {
        v12 = *(v7 + 4 * v9);
        v13 = (v12 - v11) / (1.0 - v11);
        v14 = *v3;
        v15 = v3[2];
        v16 = v3[1];
        v17 = (v10 + v8);
        *v17 = *v3;
        v18 = vadd_f32(vmul_n_f32(v16, v13), vmul_n_f32(v14, 1.0 - v13));
        v19 = vadd_f32(vmul_n_f32(v15, v13), vmul_n_f32(v16, 1.0 - v13));
        v20 = vadd_f32(vmul_n_f32(v19, v13), vmul_n_f32(v18, 1.0 - v13));
        v17[1] = v18;
        v17[2] = v20;
        ++v9;
        v21 = (*result + v8);
        v21[3] = v20;
        v21[4] = v19;
        v21[5] = v15;
        v10 = *result;
        v3 = (*result + 24 * v9);
        v7 = *a2;
        v8 += 24;
        v11 = v12;
      }

      while (v9 < (a2[1] - *a2) >> 2);
    }
  }

  return result;
}

uint64_t re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(re::pathprocessing::Bezier2 *this, float a2)
{
  v4 = *(this + 5);
  v5 = *(this + 1);
  if (v4 >= v5)
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = *(this + 5);
  }

  if (v5 >= v4)
  {
    v7 = *(this + 1);
  }

  else
  {
    v7 = *(this + 5);
  }

  if (v6 > 0.0)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    LODWORD(v8) = 0;
    if (v7 > 0.0)
    {
      v18[4] = v2;
      v18[5] = v3;
      re::pathprocessing::Polynomial::setCoefficients(v16, 0.0, 0.0, v5 + *(this + 3) * -2.0 + v4, *(this + 3) - v5 + *(this + 3) - v5, v5);
      if (v17)
      {
        v9 = 0;
        v10 = 8 * v17;
        do
        {
          v11 = *&v16[v9 + 5];
          v12 = v9 + 1;
          *(v18 + v9++) = v11;
          v10 -= 8;
        }

        while (v10);
        LODWORD(v8) = v18[0];
        if (v12 == 2)
        {
          v13 = vabds_f32(0.5, *v18);
          if (v13 > 1.0)
          {
            v13 = 1.0;
          }

          v14 = vabds_f32(0.5, *(v18 + 1));
          if (v14 > 1.0)
          {
            v14 = 1.0;
          }

          if (v13 >= v14)
          {
            return HIDWORD(v18[0]);
          }
        }

        else if (v12 != 1)
        {
          LODWORD(v8) = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }
  }

  return v8;
}

uint64_t re::pathprocessing::Bezier2::intersectLineSegment(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  result = geom_intersect_line_segment_quadratic_bezier_2f();
  if (result)
  {
    v7 = result;
    *(&__dst + 1) = result;
    v8 = 4 * result;
    memcpy(&__dst, __src, v8);
    *a3 = __dst;
    *(&__dst + 1) = v7;
    memcpy(&__dst, v10, v8);
    *a4 = __dst;
    return 2;
  }

  return result;
}

uint64_t re::pathprocessing::Bezier2::intersectRay(re::pathprocessing::Bezier2 *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (re::pathprocessing::Bezier2::isPoint(a1))
  {
    return *v80;
  }

  if (re::pathprocessing::Bezier2::isLine(a1))
  {
    v9 = *(a1 + 16);
    v10 = vsub_f32(v9, *a1);
    v11 = *a3;
    LODWORD(v12) = HIDWORD(*a3);
    if (fabsf((-v10.f32[1] * COERCE_FLOAT(*a3)) + (v10.f32[0] * v12)) >= 0.0001)
    {
      v13 = vsub_f32(*a1, *a2);
      v14 = vsub_f32(v9, *a2);
      v15 = vmla_n_f32(vmul_n_f32(vzip1_s32(v13, v14), -v12), vzip2_s32(v13, v14), v11.f32[0]);
      v16 = vcgt_f32(vdup_n_s32(0x38D1B717u), vabs_f32(v15));
      if ((v16.i8[4] & 1) != 0 || (v16.i8[0] & 1) != 0 || (veor_s8(vdup_lane_s32(v15, 1), v15).u32[0] & 0x80000000) != 0)
      {
        v17 = vdiv_f32(v15, vsub_f32(v15, vdup_lane_s32(v15, 1))).f32[0];
        v18 = vabs_f32(v11);
        v19 = *&vmvn_s8(vcge_f32(v18, vdup_lane_s32(v18, 1))) & 1;
        v20 = 1.0;
        if (((((*(a1 + v19 + 4) * v17) + (*(a1 + v19) * (1.0 - v17))) - a2->f32[v19]) / a3->f32[v19]) >= -0.0001)
        {
          if (v17 <= 1.0)
          {
            v20 = v17;
          }

          if (v17 < 0.0)
          {
            v20 = 0.0;
          }

          v80[0] = v20;
        }
      }
    }

    return *v80;
  }

  v21 = 0;
  *v8.f32 = *a2;
  v22 = *a3;
  v23 = vsub_f32(vadd_f32(*a3, *a2), *a2);
  *v7.i8 = vmul_n_f32(v23, 1.0 / sqrtf(vaddv_f32(vmul_f32(v23, v23))));
  v24 = v8;
  v24.i32[0] = *a2;
  v25 = vnegq_f32(v24);
  v25.i32[2] = 1.0;
  v26.i64[1] = 0;
  v28 = vtrn1q_s32(0, v7);
  v26.i32[0] = v7.i32[0];
  v27.i32[3] = 0;
  __dst = xmmword_1E3047670;
  v83 = xmmword_1E3047680;
  v84 = v25;
  v28.i32[0] = v7.i32[1];
  do
  {
    v29 = *(&__dst + v21);
    v26.f32[1] = -*&v7.i32[1];
    v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v29.f32[0]), v28, *v29.f32, 1), xmmword_1E30476A0, v29, 2);
    *(&__src + v21) = v30;
    v21 += 16;
  }

  while (v21 != 48);
  v75 = *v8.f32;
  v31 = 0;
  v32 = __src;
  v33 = v86;
  v29.i64[0] = *a1;
  v30.i64[0] = *(a1 + 1);
  v27.i64[0] = *(a1 + 2);
  v29.i32[2] = 1.0;
  v30.i32[2] = 1.0;
  v27.i32[2] = 1.0;
  v34 = v87;
  __dst = v29;
  v83 = v30;
  v84 = v27;
  do
  {
    *(&__src + v31) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&__dst + v31))), v33, *(&__dst + v31), 1), v34, *(&__dst + v31), 2);
    v31 += 16;
  }

  while (v31 != 48);
  v35.f32[0] = __src.f32[0] / __src.f32[2];
  v76 = vdiv_f32(*v86.i8, vdup_laneq_s32(v86, 2));
  v77 = __src.f32[1] / __src.f32[2];
  v35.f32[1] = __src.f32[1] / __src.f32[2];
  v72 = __src.f32[0] / __src.f32[2];
  v74 = v35;
  v81[0] = v35;
  v81[1] = v76;
  v79 = vdiv_f32(*v87.i8, vdup_laneq_s32(v87, 2));
  v81[2] = v79;
  if (re::pathprocessing::Bezier2::isLine(v81))
  {
    if (v77 == 0.0 && v79.f32[1] == 0.0)
    {
      return *v80;
    }

    v38 = vsub_f32(v79, v74);
    v39 = vdup_lane_s32(v38, 0);
    v39.f32[0] = v72 + 1.0;
    v38.f32[0] = v77;
    v40 = vmla_f32(vmul_f32(v39, COERCE_FLOAT32X2_T(-COERCE_DOUBLE(0x8000000080000000))), COERCE_FLOAT32X2_T(-2.00000048), v38);
    v41 = vdiv_f32(v40, vdup_lane_s32(v40, 1)).f32[0];
    if (v41 <= 0.0 || v41 >= 1.0)
    {
      return *v80;
    }

    *&__dst = v41;
    __src.i64[0] = __dst;
    __src.i64[1] = 1;
    v43 = &__src.f32[1];
    v44 = v75;
    goto LABEL_47;
  }

  _V6.S[1] = v76.i32[1];
  _S1 = -2.0;
  __asm { FMLA            S2, S1, V6.S[1] }

  *v36.i32 = (v77 - v76.f32[1]) / (_S2 + v79.f32[1]);
  if (*v36.i32 > 0.0 && *v36.i32 < 1.0)
  {
    *v37.i32 = 1.0 - *v36.i32;
    v55 = vdup_lane_s32(v37, 0);
    v56 = vdup_lane_s32(v36, 0);
    v73 = 1.0 - *v36.i32;
    v78 = (v77 - v76.f32[1]) / (_S2 + v79.f32[1]);
    v57 = vadd_f32(vmul_n_f32(v79, *v36.i32 * *v36.i32), vadd_f32(vmul_n_f32(v74, *v37.i32 * *v37.i32), vmul_n_f32(v76, (*v36.i32 + *v36.i32) * (1.0 - *v36.i32))));
    *__src.f32 = v74;
    *&__src.u32[2] = vadd_f32(vmul_n_f32(v76, *v36.i32), vmul_n_f32(v74, 1.0 - *v36.i32));
    *v86.i8 = v57;
    v88 = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(&__src, __src.f32[2]);
    v89 = v58;
    if (v58)
    {
      v59 = 0;
      v60 = 4 * v58;
      do
      {
        v61 = v59 + 1;
        *(&__dst + v59) = v78 * *(&v88 + v59);
        ++v59;
        v60 -= 4;
      }

      while (v60);
    }

    else
    {
      v61 = 0;
    }

    *__src.f32 = v57;
    *&__src.u32[2] = vadd_f32(vmul_f32(v79, v56), vmul_f32(v76, v55));
    *v86.i8 = v79;
    v88 = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(&__src, __src.f32[2]);
    v89 = v62;
    if (v62)
    {
      v63 = 4 * v62;
      v64 = &v88;
      v44 = v75;
      do
      {
        v65 = *v64++;
        v54 = v61 + 1;
        *(&__dst + v61++) = v78 + (v65 * v73);
        v63 -= 4;
      }

      while (v63);
      goto LABEL_45;
    }

    v54 = v61;
  }

  else
  {
    __src.i64[0] = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(v81, 1.0);
    __src.i64[1] = v52;
    if (v52)
    {
      v53 = (v52 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(&__dst, &__src, 4 * (v52 - 1) + 4);
      v54 = v53 + 1;
    }

    else
    {
      v54 = 0;
    }
  }

  v44 = v75;
LABEL_45:
  __src.i64[0] = __dst;
  __src.i64[1] = v54;
  if (!v54)
  {
    return *v80;
  }

  v43 = &__src.f32[v54];
LABEL_47:
  v66 = 0;
  v67 = *a1;
  v68 = *(a1 + 8);
  p_src = &__src;
  v70 = *(a1 + 16);
  do
  {
    v71 = *p_src;
    if (vaddv_f32(vmul_f32(v22, vsub_f32(vadd_f32(vmul_n_f32(v70, v71 * v71), vadd_f32(vmul_n_f32(v67, (1.0 - *p_src) * (1.0 - *p_src)), vmul_n_f32(v68, (v71 + v71) * (1.0 - *p_src)))), v44))) > 0.0)
    {
      v80[v66++] = v71;
    }

    ++p_src;
  }

  while (p_src != v43);
  return *v80;
}

uint64_t re::pathprocessing::Bezier2::intersectCurveWithCurve(float32x2_t *a1, float32x2_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = vsub_f32(a2[1], *a2);
  v11 = vsub_f32(a2[2], *a2);
  v12 = 1.0 / ((-v10.f32[1] * v11.f32[0]) + (v10.f32[0] * v11.f32[1]));
  v13 = 0.5 / vaddv_f32(vmul_f32(v10, v10));
  v11.f32[0] = 1.0 - ((vmuls_lane_f32(v10.f32[1], v11, 1) + (v11.f32[0] * v10.f32[0])) * v13);
  v14 = vsub_f32(*a1, *a2);
  v15 = v12 * ((-v10.f32[1] * v14.f32[0]) + (v10.f32[0] * v14.f32[1]));
  v16 = (v11.f32[0] * v15) + ((vmuls_lane_f32(v10.f32[1], v14, 1) + (v14.f32[0] * v10.f32[0])) * v13);
  v17 = vsub_f32(a1[1], *a2);
  v18 = v12 * ((-v10.f32[1] * v17.f32[0]) + (v10.f32[0] * v17.f32[1]));
  v19 = (v11.f32[0] * v18) + ((vmuls_lane_f32(v10.f32[1], v17, 1) + (v17.f32[0] * v10.f32[0])) * v13);
  v20 = vsub_f32(a1[2], *a2);
  v17.f32[0] = v12 * ((-v10.f32[1] * v20.f32[0]) + (v10.f32[0] * v20.f32[1]));
  v21 = (v11.f32[0] * v17.f32[0]) + ((vmuls_lane_f32(v10.f32[1], v20, 1) + (v20.f32[0] * v10.f32[0])) * v13);
  v22 = v16;
  v23 = v15;
  v24 = v19;
  v25 = v18;
  v26 = v17.f32[0];
  if (fabs(v16 + v19 * -2.0 + v21) < 0.005 && ((v27 = v24 + v24 + v22 * -2.0, v28 = v23 + v25 * -2.0 + v26, v29 = v27 * v27, v30 = v28 / (v27 * v27), v30 == 1.0) || fabs(v30 + -1.0) <= 0.005) && ((v31 = v25 + v25 + v23 * -2.0, v32 = (v28 + v28) * v22 / v29, v32 - v31 / v27 == 0.0) || vabdd_f64(v32, v31 / v27) <= 0.005) && ((v33 = v22 * v22 * v28 / v29 - v31 * v22 / v27 + v23, v33 == 0.0) || fabs(v33) <= 0.005))
  {
    v53 = 0;
    v57 = 0;
    result = re::pathprocessing::LineSegment::rangeOverlaps(&v52, v56, v16, v21, 0.0, 1.0);
    v45 = v53;
    if (v53)
    {
      v46 = v56;
      v47 = &v52;
      do
      {
        v48 = *v47++;
        v49 = *(a3 + 8);
        *(a3 + 8) = v49 + 1;
        *(a3 + 4 * v49) = v48;
        v50 = *v46++;
        v51 = *(a4 + 8);
        *(a4 + 8) = v51 + 1;
        *(a4 + 4 * v51) = v50;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    re::pathprocessing::Polynomial::setCoefficients(&v52, v22 * 4.0 * v24 - v22 * v22 + v22 * -2.0 * v21 + v24 * -4.0 * v24 + v24 * 4.0 * v21 - v21 * v21, v22 * -12.0 * v24 + v22 * 4.0 * v22 + v21 * 4.0 * v22 + v24 * 8.0 * v24 + v21 * -4.0 * v24, v22 * 12.0 * v24 + v22 * -6.0 * v22 + v21 * -2.0 * v22 + v24 * -4.0 * v24 + v23 + v25 * -2.0 + v26, v24 * -4.0 * v22 + v22 * 4.0 * v22 + v23 * -2.0 + v25 * 2.0, v23 - v22 * v22);
    if (v55)
    {
      result = 0;
      v35 = 8 * v55;
      v36 = &v54;
      do
      {
        v37 = *v36;
        if (fabsf(v37) >= 0.0001 || (v38 = vceq_f32(a2[2], *a1), (vpmin_u32(v38, v38).u32[0] & 0x80000000) == 0))
        {
          if (v37 != 1.0 && fabsf(v37 + -1.0) > 0.0001 || (v39 = vceq_f32(a1[2], *a2), (vpmin_u32(v39, v39).u32[0] & 0x80000000) == 0))
          {
            v40 = (v21 * (v37 * v37)) + ((v16 * ((1.0 - v37) * (1.0 - v37))) + (v19 * ((v37 + v37) * (1.0 - v37))));
            if (a5 == 1 || (v37 > 0.0 ? (v43 = v37 < 1.0) : (v43 = 0), v43 && (v40 > 0.0 ? (v44 = v40 < 1.0) : (v44 = 0), v44)))
            {
              v41 = *(a3 + 8);
              *(a3 + 8) = v41 + 1;
              *(a3 + 4 * v41) = v37;
              v42 = *(a4 + 8);
              *(a4 + 8) = v42 + 1;
              *(a4 + 4 * v42) = v40;
              result = 2;
            }
          }
        }

        ++v36;
        v35 -= 8;
      }

      while (v35);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::pathprocessing::Polynomial::setCoefficients(re::pathprocessing::Polynomial *this, double a2, double a3, double a4, double a5, double a6)
{
  *(this + 19) = 0;
  *this = a6;
  *(this + 1) = a5;
  *(this + 2) = a4;
  *(this + 3) = a3;
  *(this + 4) = a2;
  v7 = 4;
  while (fabs(*(this + v7)) < 0.00001)
  {
    *(this + v7--) = 0;
    if (v7 == -1)
    {
      *(this + 18) = 0;
      return;
    }
  }

  *(this + 18) = v7;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v37 = *(this + 3);
      v38 = *(this + 2) / v37;
      v39 = *(this + 1) / v37;
      v40 = v39 + v38 * v38 / -3.0;
      v41 = *this / v37 + v38 * (v39 * -9.0 + (v38 + v38) * v38) / 27.0;
      v42 = v40 * (v40 * v40);
      v43 = v42 * 4.0 / 27.0 + v41 * v41;
      v44 = v38 / -3.0;
      if (v43 < 0.0)
      {
        v45 = sqrt(v40 / -3.0);
        v46 = acos(v41 * sqrt(-27.0 / v42) * -0.5);
        v47 = __sincos_stret(v46 / 3.0);
        *(this + 5) = v44 + v45 * (v47.__cosval + v47.__cosval);
        *(this + 6) = v44 - v45 * (v47.__cosval + v47.__sinval * 1.73205081);
        v12 = v44 + v45 * (v47.__sinval * 1.73205081 - v47.__cosval);
        v13 = 3;
        v14 = 2;
        goto LABEL_51;
      }

      v55 = sqrt(v43);
      v56 = (-v41 - v55) * 0.5;
      v57 = cbrt((v55 - v41) * 0.5);
      v58 = cbrt(v56);
      v14 = 0;
      v12 = v44 + v57 + v58;
LABEL_50:
      v13 = 1;
      goto LABEL_51;
    }

    if (v7 != 4)
    {
      return;
    }

    v15 = *(this + 4);
    v16 = *(this + 3) / v15;
    v17 = *(this + 2) / v15;
    v18 = *(this + 1) / v15;
    v19 = *this / v15;
    v20 = v19 * -4.0;
    re::pathprocessing::Polynomial::setCoefficients(&v59, 0.0, 1.0, -v17, v19 * -4.0 + v16 * v18, v17 * 4.0 * v19 + -(v16 * v16) * v19 - v18 * v18);
    v21 = v16 * v16 * 0.25 - v17 + v60;
    if (fabs(v21) <= 0.00001 || v21 == 0.0)
    {
      v21 = 0.0;
    }

    if (v21 <= 0.0)
    {
      if (v21 < 0.0)
      {
        return;
      }

      v48 = v20 + v60 * v60;
      if (v48 != 0.0 && fabs(v48) > 0.00001)
      {
        return;
      }

      if (v48 < 0.0)
      {
        v48 = 0.0;
      }

      v49 = sqrt(v48);
      v50 = v49 + v49;
      v51 = v16 * (v16 * 3.0) * 0.25 + v17 * -2.0;
      if (v51 + v50 > 0.00001)
      {
        v52 = sqrt(v51 + v50) * 0.5;
        v53 = *(this + 19);
        *(this + v53 + 5) = v16 * -0.25 + v52;
        *(this + 19) = v53 + 2;
        *(this + (v53 + 1) + 5) = v16 * -0.25 - v52;
      }

      v54 = v51 - v50;
      if (v54 <= 0.00001)
      {
        return;
      }

      v34 = sqrt(v54) * 0.5 + v16 * -0.25;
      v33 = *(this + 19);
      *(this + v33 + 5) = v34;
    }

    else
    {
      v23 = sqrt(v21);
      v24 = v16 * (v16 * 3.0) * 0.25 - v23 * v23 + v17 * -2.0;
      v25 = (v18 * -8.0 + v16 * 4.0 * v17 - v16 * v16 * v16) / (v23 * 4.0);
      v26 = v24 + v25;
      if (fabs(v24 + v25) <= 0.00001 || v26 == 0.0)
      {
        v26 = 0.0;
      }

      if (vabdd_f64(v24, v25) <= 0.00001 || v24 - v25 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24 - v25;
      }

      if (v26 >= 0.0)
      {
        v30 = sqrt(v26);
        v31 = *(this + 19);
        *(this + v31 + 5) = v16 * -0.25 + (v23 + v30) * 0.5;
        *(this + 19) = v31 + 2;
        *(this + (v31 + 1) + 5) = v16 * -0.25 + (v23 - v30) * 0.5;
      }

      if (v29 < 0.0)
      {
        return;
      }

      v32 = sqrt(v29);
      v33 = *(this + 19);
      *(this + v33 + 5) = v16 * -0.25 + (v32 - v23) * 0.5;
      v34 = v16 * -0.25 - (v23 + v32) * 0.5;
    }

    *(this + 19) = v33 + 2;
    *(this + (v33 + 1) + 5) = v34;
    return;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      return;
    }

    v8 = *(this + 2);
    v9 = *(this + 1) / v8;
    v10 = *this / v8 * -4.0 + v9 * v9;
    if (v10 > 0.0)
    {
      v11 = sqrt(v10);
      *(this + 5) = (v11 - v9) * 0.5;
      v12 = (-v9 - v11) * 0.5;
      v13 = 2;
      v14 = 1;
LABEL_51:
      *(this + 19) = v13;
      *(this + v14 + 5) = v12;
      return;
    }

    if (v10 != 0.0)
    {
      return;
    }

    v14 = 0;
    v12 = v9 * -0.5;
    goto LABEL_50;
  }

  v35 = *(this + 1);
  if (v35 != 0.0)
  {
    v36 = -*this / v35;
    *(this + 19) = 1;
    *(this + 5) = v36;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v11 = a2 - 12;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 6;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = a2[-4].n128_u32[2];
        if (result.n128_f32[0] < *(v12 + 8))
        {
          v350 = *(v12 + 32);
          v386 = *(v12 + 48);
          v284 = *v12;
          v318 = *(v12 + 16);
          v152 = a2[-4];
          v153 = a2[-3];
          v154 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v154;
          *v12 = v152;
          *(v12 + 16) = v153;
          result = v284;
          a2[-2] = v350;
          a2[-1] = v386;
          a2[-4] = v284;
          a2[-3] = v318;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v162 = *(v12 + 72);
      v163 = *(v12 + 136);
      if (v162 >= *(v12 + 8))
      {
        if (v163 < v162)
        {
          v219 = *(v12 + 96);
          result = *(v12 + 112);
          v221 = *(v12 + 64);
          v220 = *(v12 + 80);
          v222 = *(v12 + 144);
          *(v12 + 64) = *(v12 + 128);
          *(v12 + 80) = v222;
          v223 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v223;
          *(v12 + 128) = v221;
          *(v12 + 144) = v220;
          *(v12 + 160) = v219;
          *(v12 + 176) = result;
          if (*(v12 + 72) < *(v12 + 8))
          {
            v357 = *(v12 + 32);
            v393 = *(v12 + 48);
            v290 = *v12;
            v325 = *(v12 + 16);
            v224 = *(v12 + 80);
            *v12 = *(v12 + 64);
            *(v12 + 16) = v224;
            v225 = *(v12 + 112);
            *(v12 + 32) = *(v12 + 96);
            *(v12 + 48) = v225;
            result = v290;
            *(v12 + 96) = v357;
            *(v12 + 112) = v393;
            *(v12 + 64) = v290;
            *(v12 + 80) = v325;
          }
        }
      }

      else if (v163 >= v162)
      {
        v360 = *(v12 + 32);
        v396 = *(v12 + 48);
        v293 = *v12;
        v328 = *(v12 + 16);
        v236 = *(v12 + 80);
        *v12 = *(v12 + 64);
        *(v12 + 16) = v236;
        v237 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v237;
        *(v12 + 96) = v360;
        *(v12 + 112) = v396;
        *(v12 + 64) = v293;
        *(v12 + 80) = v328;
        if (v163 < *(v12 + 72))
        {
          v238 = *(v12 + 96);
          result = *(v12 + 112);
          v240 = *(v12 + 64);
          v239 = *(v12 + 80);
          v241 = *(v12 + 144);
          *(v12 + 64) = *(v12 + 128);
          *(v12 + 80) = v241;
          v242 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v242;
          *(v12 + 128) = v240;
          *(v12 + 144) = v239;
          *(v12 + 160) = v238;
          *(v12 + 176) = result;
        }
      }

      else
      {
        v352 = *(v12 + 32);
        v388 = *(v12 + 48);
        v286 = *v12;
        v320 = *(v12 + 16);
        v164 = *(v12 + 144);
        *v12 = *(v12 + 128);
        *(v12 + 16) = v164;
        v165 = *(v12 + 176);
        *(v12 + 32) = *(v12 + 160);
        *(v12 + 48) = v165;
        result = v286;
        *(v12 + 160) = v352;
        *(v12 + 176) = v388;
        *(v12 + 128) = v286;
        *(v12 + 144) = v320;
      }

      result.n128_u32[0] = a2[-4].n128_u32[2];
      if (result.n128_f32[0] >= *(v12 + 136))
      {
        return result;
      }

      result = *(v12 + 128);
      v329 = *(v12 + 144);
      v361 = *(v12 + 160);
      v397 = *(v12 + 176);
      v244 = a2[-2];
      v243 = a2[-1];
      v245 = a2[-3];
      *(v12 + 128) = *v9;
      *(v12 + 144) = v245;
      *(v12 + 160) = v244;
      *(v12 + 176) = v243;
      a2[-2] = v361;
      a2[-1] = v397;
      *v9 = result;
      a2[-3] = v329;
      result.n128_u32[0] = *(v12 + 136);
      if (result.n128_f32[0] >= *(v12 + 72))
      {
        return result;
      }

      v246 = *(v12 + 96);
      result = *(v12 + 112);
      v248 = *(v12 + 64);
      v247 = *(v12 + 80);
      v249 = *(v12 + 144);
      *(v12 + 64) = *(v12 + 128);
      *(v12 + 80) = v249;
      v250 = *(v12 + 176);
      *(v12 + 96) = *(v12 + 160);
      *(v12 + 112) = v250;
      *(v12 + 128) = v248;
      *(v12 + 144) = v247;
      *(v12 + 160) = v246;
      *(v12 + 176) = result;
LABEL_185:
      result.n128_u32[0] = *(v12 + 72);
      if (result.n128_f32[0] < *(v12 + 8))
      {
        v362 = *(v12 + 32);
        v398 = *(v12 + 48);
        v294 = *v12;
        v330 = *(v12 + 16);
        v251 = *(v12 + 80);
        *v12 = *(v12 + 64);
        *(v12 + 16) = v251;
        v252 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v252;
        result = v294;
        *(v12 + 96) = v362;
        *(v12 + 112) = v398;
        *(v12 + 64) = v294;
        *(v12 + 80) = v330;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(v12, (v12 + 64), (v12 + 128), (v12 + 192), &a2[-4], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v166 = (v12 + 64);
      v168 = v12 == a2 || v166 == a2;
      if (a4)
      {
        if (!v168)
        {
          v169 = 0;
          v170 = v12;
          do
          {
            v171 = v166;
            result.n128_u32[0] = *(v170 + 72);
            if (result.n128_f32[0] < *(v170 + 8))
            {
              v172 = v166->n128_u64[0];
              v287 = *(v170 + 76);
              v321 = *(v170 + 92);
              v353 = *(v170 + 108);
              v389 = *(v170 + 124);
              v173 = v169;
              while (1)
              {
                v174 = (v12 + v173);
                v175 = *(v12 + v173 + 16);
                *(v174 + 4) = *(v12 + v173);
                *(v174 + 5) = v175;
                v176 = *(v12 + v173 + 48);
                *(v174 + 6) = *(v12 + v173 + 32);
                *(v174 + 7) = v176;
                if (!v173)
                {
                  break;
                }

                v173 -= 64;
                if (result.n128_f32[0] >= *(v174 - 14))
                {
                  v177 = v12 + v173 + 64;
                  goto LABEL_129;
                }
              }

              v177 = v12;
LABEL_129:
              *v177 = v172;
              *(v177 + 8) = result.n128_u32[0];
              result = v287;
              *(v177 + 60) = v389;
              *(v177 + 44) = v353;
              *(v177 + 28) = v321;
              *(v177 + 12) = v287;
            }

            v166 = v171 + 4;
            v169 += 64;
            v170 = v171;
          }

          while (&v171[4] != a2);
        }
      }

      else if (!v168)
      {
        do
        {
          v226 = v166;
          result.n128_u32[0] = *(a1 + 72);
          if (result.n128_f32[0] < *(a1 + 8))
          {
            v227 = v166->n128_u64[0];
            v291 = *(a1 + 76);
            v326 = *(a1 + 92);
            v358 = *(a1 + 108);
            v394 = *(a1 + 124);
            do
            {
              v228 = v166[-3];
              *v166 = v166[-4];
              v166[1] = v228;
              v229 = v166[-1];
              v166[2] = v166[-2];
              v166[3] = v229;
              v230 = v166[-8].n128_f32[2];
              v166 -= 4;
            }

            while (result.n128_f32[0] < v230);
            v166->n128_u64[0] = v227;
            v166->n128_u32[2] = result.n128_u32[0];
            result = v291;
            v166[3].n128_u32[3] = v394;
            *(v166 + 44) = v358;
            *(v166 + 28) = v326;
            *(v166 + 12) = v291;
          }

          v166 = (v226 + 64);
          a1 = v226;
        }

        while ((v226 + 64) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v178 = (v13 - 2) >> 1;
        v179 = v178;
        do
        {
          v180 = v179;
          if (v178 >= v179)
          {
            v181 = (2 * v179) | 1;
            v182 = v12 + (v181 << 6);
            if (2 * v180 + 2 < v13 && *(v182 + 8) < *(v182 + 72))
            {
              v182 += 64;
              v181 = 2 * v180 + 2;
            }

            v183 = v12 + (v180 << 6);
            v184 = *(v183 + 8);
            if (*(v182 + 8) >= v184)
            {
              v185 = *v183;
              v390 = *(v183 + 60);
              v322 = *(v183 + 28);
              v354 = *(v183 + 44);
              v288 = *(v183 + 12);
              do
              {
                v186 = v183;
                v183 = v182;
                v187 = *v182;
                v188 = *(v182 + 16);
                v189 = *(v182 + 48);
                v186[2] = *(v182 + 32);
                v186[3] = v189;
                *v186 = v187;
                v186[1] = v188;
                if (v178 < v181)
                {
                  break;
                }

                v190 = 2 * v181;
                v181 = (2 * v181) | 1;
                v182 = v12 + (v181 << 6);
                v191 = v190 + 2;
                if (v191 < v13 && *(v182 + 8) < *(v182 + 72))
                {
                  v182 += 64;
                  v181 = v191;
                }
              }

              while (*(v182 + 8) >= v184);
              *v183 = v185;
              *(v183 + 8) = v184;
              *(v183 + 60) = v390;
              *(v183 + 44) = v354;
              *(v183 + 28) = v322;
              *(v183 + 12) = v288;
            }
          }

          v179 = v180 - 1;
        }

        while (v180);
        do
        {
          v192 = 0;
          v355 = *(v12 + 32);
          v391 = *(v12 + 48);
          v289 = *v12;
          v323 = *(v12 + 16);
          v193 = v12;
          do
          {
            v194 = &v193[4 * v192];
            v195 = (v194 + 16);
            v196 = (2 * v192) | 1;
            v192 = 2 * v192 + 2;
            if (v192 >= v13)
            {
              v192 = v196;
            }

            else
            {
              v197 = v194[18];
              v198 = v194[34];
              v199 = (v194 + 32);
              if (v197 >= v198)
              {
                v192 = v196;
              }

              else
              {
                v195 = v199;
              }
            }

            v200 = *v195;
            v201 = v195[1];
            v202 = v195[3];
            v193[2] = v195[2];
            v193[3] = v202;
            *v193 = v200;
            v193[1] = v201;
            v193 = v195;
          }

          while (v192 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v195 == a2)
          {
            result = v289;
            v195[2] = v355;
            v195[3] = v391;
            *v195 = v289;
            v195[1] = v323;
          }

          else
          {
            v203 = *a2;
            v204 = a2[1];
            v205 = a2[3];
            v195[2] = a2[2];
            v195[3] = v205;
            *v195 = v203;
            v195[1] = v204;
            result = v289;
            a2[2] = v355;
            a2[3] = v391;
            *a2 = v289;
            a2[1] = v323;
            v206 = (&v195[4] - v12) >> 6;
            v207 = v206 < 2;
            v208 = v206 - 2;
            if (!v207)
            {
              v209 = v208 >> 1;
              v210 = v12 + (v209 << 6);
              result.n128_u32[0] = v195->n128_u32[2];
              if (*(v210 + 8) < result.n128_f32[0])
              {
                v211 = v195->n128_u64[0];
                v264 = v195[3].n128_i32[3];
                v258 = *(v195 + 28);
                v261 = *(v195 + 44);
                v255 = *(v195 + 12);
                do
                {
                  v212 = v195;
                  v195 = v210;
                  v213 = *v210;
                  v214 = *(v210 + 16);
                  v215 = *(v210 + 48);
                  v212[2] = *(v210 + 32);
                  v212[3] = v215;
                  *v212 = v213;
                  v212[1] = v214;
                  if (!v209)
                  {
                    break;
                  }

                  v209 = (v209 - 1) >> 1;
                  v210 = v12 + (v209 << 6);
                }

                while (*(v210 + 8) < result.n128_f32[0]);
                v195->n128_u64[0] = v211;
                v195->n128_u32[2] = result.n128_u32[0];
                result = v255;
                v195[3].n128_u32[3] = v264;
                *(v195 + 44) = v261;
                *(v195 + 28) = v258;
                *(v195 + 12) = v255;
              }
            }
          }

          v207 = v13-- <= 2;
        }

        while (!v207);
      }

      return result;
    }

    v14 = v12 + (v13 >> 1 << 6);
    v15 = a2[-4].n128_f32[2];
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 8);
      if (v16 >= *(v12 + 8))
      {
        if (v15 < v16)
        {
          v333 = *(v14 + 32);
          v365 = *(v14 + 48);
          v267 = *v14;
          v297 = *(v14 + 16);
          v24 = *v9;
          v25 = a2[-3];
          v26 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v26;
          *v14 = v24;
          *(v14 + 16) = v25;
          a2[-2] = v333;
          a2[-1] = v365;
          *v9 = v267;
          a2[-3] = v297;
          if (*(v14 + 8) < *(v12 + 8))
          {
            v334 = *(v12 + 32);
            v366 = *(v12 + 48);
            v268 = *v12;
            v298 = *(v12 + 16);
            v27 = *v14;
            v28 = *(v14 + 16);
            v29 = *(v14 + 48);
            *(v12 + 32) = *(v14 + 32);
            *(v12 + 48) = v29;
            *v12 = v27;
            *(v12 + 16) = v28;
            *(v14 + 32) = v334;
            *(v14 + 48) = v366;
            *v14 = v268;
            *(v14 + 16) = v298;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v331 = *(v12 + 32);
          v363 = *(v12 + 48);
          v265 = *v12;
          v295 = *(v12 + 16);
          v17 = *v9;
          v18 = a2[-3];
          v19 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v19;
          *v12 = v17;
          *(v12 + 16) = v18;
          goto LABEL_26;
        }

        v337 = *(v12 + 32);
        v369 = *(v12 + 48);
        v271 = *v12;
        v301 = *(v12 + 16);
        v36 = *v14;
        v37 = *(v14 + 16);
        v38 = *(v14 + 48);
        *(v12 + 32) = *(v14 + 32);
        *(v12 + 48) = v38;
        *v12 = v36;
        *(v12 + 16) = v37;
        *(v14 + 32) = v337;
        *(v14 + 48) = v369;
        *v14 = v271;
        *(v14 + 16) = v301;
        if (a2[-4].n128_f32[2] < *(v14 + 8))
        {
          v331 = *(v14 + 32);
          v363 = *(v14 + 48);
          v265 = *v14;
          v295 = *(v14 + 16);
          v39 = *v9;
          v40 = a2[-3];
          v41 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v41;
          *v14 = v39;
          *(v14 + 16) = v40;
LABEL_26:
          a2[-2] = v331;
          a2[-1] = v363;
          *v9 = v265;
          a2[-3] = v295;
        }
      }

      v42 = (v14 - 64);
      v43 = *(v14 - 56);
      v44 = a2[-8].n128_f32[2];
      if (v43 >= *(v12 + 72))
      {
        if (v44 < v43)
        {
          v338 = *(v14 - 32);
          v370 = *(v14 - 16);
          v272 = *v42;
          v302 = *(v14 - 48);
          v52 = *v10;
          v53 = a2[-7];
          v54 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v54;
          *v42 = v52;
          *(v14 - 48) = v53;
          a2[-6] = v338;
          a2[-5] = v370;
          *v10 = v272;
          a2[-7] = v302;
          if (*(v14 - 56) < *(v12 + 72))
          {
            v55 = *(v12 + 64);
            v303 = *(v12 + 80);
            v56 = *(v12 + 96);
            v371 = *(v12 + 112);
            v58 = *(v14 - 32);
            v57 = *(v14 - 16);
            v59 = *(v14 - 48);
            *(v12 + 64) = *v42;
            *(v12 + 80) = v59;
            *(v12 + 96) = v58;
            *(v12 + 112) = v57;
            *(v14 - 32) = v56;
            *(v14 - 16) = v371;
            *v42 = v55;
            *(v14 - 48) = v303;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 64);
          v46 = *(v12 + 80);
          v47 = *(v12 + 96);
          v48 = *(v12 + 112);
          v50 = a2[-6];
          v49 = a2[-5];
          v51 = a2[-7];
          *(v12 + 64) = *v10;
          *(v12 + 80) = v51;
          *(v12 + 96) = v50;
          *(v12 + 112) = v49;
          goto LABEL_38;
        }

        v66 = *(v12 + 64);
        v305 = *(v12 + 80);
        v67 = *(v12 + 96);
        v373 = *(v12 + 112);
        v69 = *(v14 - 32);
        v68 = *(v14 - 16);
        v70 = *(v14 - 48);
        *(v12 + 64) = *v42;
        *(v12 + 80) = v70;
        *(v12 + 96) = v69;
        *(v12 + 112) = v68;
        *(v14 - 32) = v67;
        *(v14 - 16) = v373;
        *v42 = v66;
        *(v14 - 48) = v305;
        if (a2[-8].n128_f32[2] < *(v14 - 56))
        {
          v340 = *(v14 - 32);
          v374 = *(v14 - 16);
          v274 = *v42;
          v306 = *(v14 - 48);
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v73;
          *v42 = v71;
          *(v14 - 48) = v72;
          v45 = v274;
          v46 = v306;
          v47 = v340;
          v48 = v374;
LABEL_38:
          a2[-6] = v47;
          a2[-5] = v48;
          *v10 = v45;
          a2[-7] = v46;
        }
      }

      v74 = (v14 + 64);
      v75 = *(v14 + 72);
      v76 = a2[-12].n128_f32[2];
      if (v75 >= *(v12 + 136))
      {
        if (v76 < v75)
        {
          v341 = *(v14 + 96);
          v375 = *(v14 + 112);
          v275 = *v74;
          v307 = *(v14 + 80);
          v84 = *v11;
          v85 = a2[-11];
          v86 = a2[-9];
          *(v14 + 96) = a2[-10];
          *(v14 + 112) = v86;
          *v74 = v84;
          *(v14 + 80) = v85;
          a2[-10] = v341;
          a2[-9] = v375;
          *v11 = v275;
          a2[-11] = v307;
          if (*(v14 + 72) < *(v12 + 136))
          {
            v87 = *(v12 + 128);
            v308 = *(v12 + 144);
            v88 = *(v12 + 160);
            v376 = *(v12 + 176);
            v90 = *(v14 + 96);
            v89 = *(v14 + 112);
            v91 = *(v14 + 80);
            *(v12 + 128) = *v74;
            *(v12 + 144) = v91;
            *(v12 + 160) = v90;
            *(v12 + 176) = v89;
            *(v14 + 96) = v88;
            *(v14 + 112) = v376;
            *v74 = v87;
            *(v14 + 80) = v308;
          }
        }
      }

      else
      {
        if (v76 < v75)
        {
          v77 = *(v12 + 128);
          v78 = *(v12 + 144);
          v79 = *(v12 + 160);
          v80 = *(v12 + 176);
          v82 = a2[-10];
          v81 = a2[-9];
          v83 = a2[-11];
          *(v12 + 128) = *v11;
          *(v12 + 144) = v83;
          *(v12 + 160) = v82;
          *(v12 + 176) = v81;
          goto LABEL_47;
        }

        v92 = *(v12 + 128);
        v309 = *(v12 + 144);
        v93 = *(v12 + 160);
        v377 = *(v12 + 176);
        v95 = *(v14 + 96);
        v94 = *(v14 + 112);
        v96 = *(v14 + 80);
        *(v12 + 128) = *v74;
        *(v12 + 144) = v96;
        *(v12 + 160) = v95;
        *(v12 + 176) = v94;
        *(v14 + 96) = v93;
        *(v14 + 112) = v377;
        *v74 = v92;
        *(v14 + 80) = v309;
        if (a2[-12].n128_f32[2] < *(v14 + 72))
        {
          v342 = *(v14 + 96);
          v378 = *(v14 + 112);
          v276 = *v74;
          v310 = *(v14 + 80);
          v97 = *v11;
          v98 = a2[-11];
          v99 = a2[-9];
          *(v14 + 96) = a2[-10];
          *(v14 + 112) = v99;
          *v74 = v97;
          *(v14 + 80) = v98;
          v77 = v276;
          v78 = v310;
          v79 = v342;
          v80 = v378;
LABEL_47:
          a2[-10] = v79;
          a2[-9] = v80;
          *v11 = v77;
          a2[-11] = v78;
        }
      }

      v100 = *(v14 + 8);
      v101 = *(v14 + 72);
      if (v100 >= *(v14 - 56))
      {
        if (v101 < v100)
        {
          v344 = *(v14 + 32);
          v380 = *(v14 + 48);
          v278 = *v14;
          v312 = *(v14 + 16);
          v104 = *(v14 + 80);
          *v14 = *v74;
          *(v14 + 16) = v104;
          v105 = *(v14 + 112);
          *(v14 + 32) = *(v14 + 96);
          *(v14 + 48) = v105;
          *(v14 + 96) = v344;
          *(v14 + 112) = v380;
          *v74 = v278;
          *(v14 + 80) = v312;
          if (*(v14 + 8) < *(v14 - 56))
          {
            v345 = *(v14 - 32);
            v381 = *(v14 - 16);
            v279 = *v42;
            v313 = *(v14 - 48);
            v106 = *(v14 + 16);
            *v42 = *v14;
            *(v14 - 48) = v106;
            v107 = *(v14 + 48);
            *(v14 - 32) = *(v14 + 32);
            *(v14 - 16) = v107;
            *(v14 + 32) = v345;
            *(v14 + 48) = v381;
            *v14 = v279;
            *(v14 + 16) = v313;
          }
        }
      }

      else
      {
        if (v101 < v100)
        {
          v343 = *(v14 - 32);
          v379 = *(v14 - 16);
          v277 = *v42;
          v311 = *(v14 - 48);
          v102 = *(v14 + 80);
          *v42 = *v74;
          *(v14 - 48) = v102;
          v103 = *(v14 + 112);
          *(v14 - 32) = *(v14 + 96);
          *(v14 - 16) = v103;
          goto LABEL_56;
        }

        v346 = *(v14 - 32);
        v382 = *(v14 - 16);
        v280 = *v42;
        v314 = *(v14 - 48);
        v108 = *(v14 + 16);
        *v42 = *v14;
        *(v14 - 48) = v108;
        v109 = *(v14 + 48);
        *(v14 - 32) = *(v14 + 32);
        *(v14 - 16) = v109;
        *(v14 + 32) = v346;
        *(v14 + 48) = v382;
        *v14 = v280;
        *(v14 + 16) = v314;
        if (*(v14 + 72) < *(v14 + 8))
        {
          v343 = *(v14 + 32);
          v379 = *(v14 + 48);
          v277 = *v14;
          v311 = *(v14 + 16);
          v110 = *(v14 + 80);
          *v14 = *v74;
          *(v14 + 16) = v110;
          v111 = *(v14 + 112);
          *(v14 + 32) = *(v14 + 96);
          *(v14 + 48) = v111;
LABEL_56:
          *(v14 + 96) = v343;
          *(v14 + 112) = v379;
          *v74 = v277;
          *(v14 + 80) = v311;
        }
      }

      v347 = *(v12 + 32);
      v383 = *(v12 + 48);
      v281 = *v12;
      v315 = *(v12 + 16);
      v112 = *v14;
      v113 = *(v14 + 16);
      v114 = *(v14 + 48);
      *(v12 + 32) = *(v14 + 32);
      *(v12 + 48) = v114;
      *v12 = v112;
      *(v12 + 16) = v113;
      *(v14 + 32) = v347;
      *(v14 + 48) = v383;
      *v14 = v281;
      *(v14 + 16) = v315;
      goto LABEL_58;
    }

    v20 = *(v12 + 8);
    if (v20 >= *(v14 + 8))
    {
      if (v15 < v20)
      {
        v335 = *(v12 + 32);
        v367 = *(v12 + 48);
        v269 = *v12;
        v299 = *(v12 + 16);
        v30 = *v9;
        v31 = a2[-3];
        v32 = a2[-1];
        *(v12 + 32) = a2[-2];
        *(v12 + 48) = v32;
        *v12 = v30;
        *(v12 + 16) = v31;
        a2[-2] = v335;
        a2[-1] = v367;
        *v9 = v269;
        a2[-3] = v299;
        if (*(v12 + 8) < *(v14 + 8))
        {
          v336 = *(v14 + 32);
          v368 = *(v14 + 48);
          v270 = *v14;
          v300 = *(v14 + 16);
          v33 = *v12;
          v34 = *(v12 + 16);
          v35 = *(v12 + 48);
          *(v14 + 32) = *(v12 + 32);
          *(v14 + 48) = v35;
          *v14 = v33;
          *(v14 + 16) = v34;
          *(v12 + 32) = v336;
          *(v12 + 48) = v368;
          *v12 = v270;
          *(v12 + 16) = v300;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v20)
    {
      v332 = *(v14 + 32);
      v364 = *(v14 + 48);
      v266 = *v14;
      v296 = *(v14 + 16);
      v21 = *v9;
      v22 = a2[-3];
      v23 = a2[-1];
      *(v14 + 32) = a2[-2];
      *(v14 + 48) = v23;
      *v14 = v21;
      *(v14 + 16) = v22;
LABEL_35:
      a2[-2] = v332;
      a2[-1] = v364;
      *v9 = v266;
      a2[-3] = v296;
      goto LABEL_58;
    }

    v339 = *(v14 + 32);
    v372 = *(v14 + 48);
    v273 = *v14;
    v304 = *(v14 + 16);
    v60 = *v12;
    v61 = *(v12 + 16);
    v62 = *(v12 + 48);
    *(v14 + 32) = *(v12 + 32);
    *(v14 + 48) = v62;
    *v14 = v60;
    *(v14 + 16) = v61;
    *(v12 + 32) = v339;
    *(v12 + 48) = v372;
    *v12 = v273;
    *(v12 + 16) = v304;
    if (a2[-4].n128_f32[2] < *(v12 + 8))
    {
      v332 = *(v12 + 32);
      v364 = *(v12 + 48);
      v266 = *v12;
      v296 = *(v12 + 16);
      v63 = *v9;
      v64 = a2[-3];
      v65 = a2[-1];
      *(v12 + 32) = a2[-2];
      *(v12 + 48) = v65;
      *v12 = v63;
      *(v12 + 16) = v64;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v115 = *(v12 + 8);
LABEL_61:
      v116 = 0;
      v117 = *v12;
      v262 = *(v12 + 60);
      v256 = *(v12 + 28);
      v259 = *(v12 + 44);
      v253 = *(v12 + 12);
      do
      {
        v118 = *(v12 + v116 + 72);
        v116 += 64;
      }

      while (v118 < v115);
      v119 = v12 + v116;
      v120 = a2;
      if (v116 == 64)
      {
        v123 = a2;
        while (v119 < v123)
        {
          v121 = v123 - 4;
          v124 = v123[-4].n128_f32[2];
          v123 -= 4;
          if (v124 < v115)
          {
            goto LABEL_71;
          }
        }

        v121 = v123;
      }

      else
      {
        do
        {
          v121 = v120 - 4;
          v122 = v120[-4].n128_f32[2];
          v120 -= 4;
        }

        while (v122 >= v115);
      }

LABEL_71:
      v12 = v119;
      if (v119 < v121)
      {
        v125 = v121;
        do
        {
          v348 = *(v12 + 32);
          v384 = *(v12 + 48);
          v282 = *v12;
          v316 = *(v12 + 16);
          v126 = *v125;
          v127 = *(v125 + 1);
          v128 = *(v125 + 3);
          *(v12 + 32) = *(v125 + 2);
          *(v12 + 48) = v128;
          *v12 = v126;
          *(v12 + 16) = v127;
          *(v125 + 2) = v348;
          *(v125 + 3) = v384;
          *v125 = v282;
          *(v125 + 1) = v316;
          do
          {
            v129 = *(v12 + 72);
            v12 += 64;
          }

          while (v129 < v115);
          do
          {
            v130 = *(v125 - 14);
            v125 -= 16;
          }

          while (v130 >= v115);
        }

        while (v12 < v125);
      }

      if (v12 - 64 != a1)
      {
        v131 = *(v12 - 64);
        v132 = *(v12 - 48);
        v133 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v133;
        *a1 = v131;
        *(a1 + 16) = v132;
      }

      *(v12 - 64) = v117;
      *(v12 - 56) = v115;
      *(v12 - 4) = v262;
      *(v12 - 20) = v259;
      *(v12 - 36) = v256;
      *(v12 - 52) = v253;
      if (v119 < v121)
      {
        goto LABEL_82;
      }

      v134 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(a1, v12 - 64, v253);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(v12, a2, v135))
      {
        a2 = (v12 - 64);
        if (!v134)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v134)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(a1, v12 - 64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v115 = *(v12 + 8);
      if (*(v12 - 56) < v115)
      {
        goto LABEL_61;
      }

      v136 = *v12;
      v263 = *(v12 + 60);
      v257 = *(v12 + 28);
      v260 = *(v12 + 44);
      v254 = *(v12 + 12);
      if (v115 >= a2[-4].n128_f32[2])
      {
        v139 = v12 + 64;
        do
        {
          v12 = v139;
          if (v139 >= a2)
          {
            break;
          }

          v140 = *(v139 + 8);
          v139 += 64;
        }

        while (v115 >= v140);
      }

      else
      {
        v137 = v12;
        do
        {
          v12 = v137 + 64;
          v138 = *(v137 + 72);
          v137 += 64;
        }

        while (v115 >= v138);
      }

      v141 = a2;
      if (v12 < a2)
      {
        v142 = a2;
        do
        {
          v141 = &v142[-4];
          v143 = v142[-4].n128_f32[2];
          v142 -= 4;
        }

        while (v115 < v143);
      }

      while (v12 < v141)
      {
        v349 = *(v12 + 32);
        v385 = *(v12 + 48);
        v283 = *v12;
        v317 = *(v12 + 16);
        v144 = *v141;
        v145 = *(v141 + 1);
        v146 = *(v141 + 3);
        *(v12 + 32) = *(v141 + 2);
        *(v12 + 48) = v146;
        *v12 = v144;
        *(v12 + 16) = v145;
        *(v141 + 2) = v349;
        *(v141 + 3) = v385;
        *v141 = v283;
        *(v141 + 1) = v317;
        do
        {
          v147 = *(v12 + 72);
          v12 += 64;
        }

        while (v115 >= v147);
        do
        {
          v148 = *(v141 - 14);
          v141 -= 16;
        }

        while (v115 < v148);
      }

      if (v12 - 64 != a1)
      {
        v149 = *(v12 - 64);
        v150 = *(v12 - 48);
        v151 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v151;
        *a1 = v149;
        *(a1 + 16) = v150;
      }

      a4 = 0;
      *(v12 - 64) = v136;
      *(v12 - 56) = v115;
      result = v254;
      *(v12 - 4) = v263;
      *(v12 - 20) = v260;
      *(v12 - 36) = v257;
      *(v12 - 52) = v254;
    }
  }

  result.n128_u32[0] = *(v12 + 72);
  v155 = a2[-4].n128_f32[2];
  if (result.n128_f32[0] >= *(v12 + 8))
  {
    if (v155 >= result.n128_f32[0])
    {
      return result;
    }

    result = *(v12 + 64);
    v324 = *(v12 + 80);
    v356 = *(v12 + 96);
    v392 = *(v12 + 112);
    v217 = a2[-2];
    v216 = a2[-1];
    v218 = a2[-3];
    *(v12 + 64) = *v9;
    *(v12 + 80) = v218;
    *(v12 + 96) = v217;
    *(v12 + 112) = v216;
    a2[-2] = v356;
    a2[-1] = v392;
    *v9 = result;
    a2[-3] = v324;
    goto LABEL_185;
  }

  if (v155 >= result.n128_f32[0])
  {
    v359 = *(v12 + 32);
    v395 = *(v12 + 48);
    v292 = *v12;
    v327 = *(v12 + 16);
    v231 = *(v12 + 80);
    *v12 = *(v12 + 64);
    *(v12 + 16) = v231;
    v232 = *(v12 + 112);
    *(v12 + 32) = *(v12 + 96);
    *(v12 + 48) = v232;
    result = v292;
    *(v12 + 96) = v359;
    *(v12 + 112) = v395;
    *(v12 + 64) = v292;
    *(v12 + 80) = v327;
    result.n128_u32[0] = a2[-4].n128_u32[2];
    if (result.n128_f32[0] >= *(v12 + 72))
    {
      return result;
    }

    result = *(v12 + 64);
    v159 = *(v12 + 80);
    v160 = *(v12 + 96);
    v161 = *(v12 + 112);
    v234 = a2[-2];
    v233 = a2[-1];
    v235 = a2[-3];
    *(v12 + 64) = *v9;
    *(v12 + 80) = v235;
    *(v12 + 96) = v234;
    *(v12 + 112) = v233;
  }

  else
  {
    v351 = *(v12 + 32);
    v387 = *(v12 + 48);
    v285 = *v12;
    v319 = *(v12 + 16);
    v156 = *v9;
    v157 = a2[-3];
    v158 = a2[-1];
    *(v12 + 32) = a2[-2];
    *(v12 + 48) = v158;
    *v12 = v156;
    *(v12 + 16) = v157;
    result = v285;
    v159 = v319;
    v160 = v351;
    v161 = v387;
  }

  a2[-2] = v160;
  a2[-1] = v161;
  *v9 = result;
  a2[-3] = v159;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(float *a1, float *a2, float *a3, float *a4, __int128 *a5, __n128 result)
{
  v6 = a2[2];
  v7 = a3[2];
  if (v6 >= a1[2])
  {
    if (v7 < v6)
    {
      v14 = *(a2 + 2);
      result = *(a2 + 12);
      v16 = *a2;
      v15 = *(a2 + 1);
      v17 = *(a3 + 3);
      v19 = *a3;
      v18 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v17;
      *a2 = v19;
      *(a2 + 1) = v18;
      *a3 = v16;
      *(a3 + 1) = v15;
      *(a3 + 2) = v14;
      *(a3 + 3) = result;
      if (a2[2] < a1[2])
      {
        v20 = *(a1 + 2);
        result = *(a1 + 12);
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = *(a2 + 3);
        v25 = *a2;
        v24 = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v23;
        *a1 = v25;
        *(a1 + 1) = v24;
        *a2 = v22;
        *(a2 + 1) = v21;
        *(a2 + 2) = v20;
        *(a2 + 3) = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 2);
      result = *(a1 + 12);
      v10 = *a1;
      v9 = *(a1 + 1);
      v11 = *(a3 + 3);
      v13 = *a3;
      v12 = *(a3 + 1);
      *(a1 + 2) = *(a3 + 2);
      *(a1 + 3) = v11;
      *a1 = v13;
      *(a1 + 1) = v12;
LABEL_9:
      *a3 = v10;
      *(a3 + 1) = v9;
      *(a3 + 2) = v8;
      *(a3 + 3) = result;
      goto LABEL_10;
    }

    v26 = *(a1 + 2);
    result = *(a1 + 12);
    v28 = *a1;
    v27 = *(a1 + 1);
    v29 = *(a2 + 3);
    v31 = *a2;
    v30 = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v29;
    *a1 = v31;
    *(a1 + 1) = v30;
    *a2 = v28;
    *(a2 + 1) = v27;
    *(a2 + 2) = v26;
    *(a2 + 3) = result;
    if (a3[2] < a2[2])
    {
      v8 = *(a2 + 2);
      result = *(a2 + 12);
      v10 = *a2;
      v9 = *(a2 + 1);
      v32 = *(a3 + 3);
      v34 = *a3;
      v33 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v32;
      *a2 = v34;
      *(a2 + 1) = v33;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[2] < a3[2])
  {
    v35 = *(a3 + 2);
    result = *(a3 + 12);
    v37 = *a3;
    v36 = *(a3 + 1);
    v38 = *(a4 + 3);
    v40 = *a4;
    v39 = *(a4 + 1);
    *(a3 + 2) = *(a4 + 2);
    *(a3 + 3) = v38;
    *a3 = v40;
    *(a3 + 1) = v39;
    *a4 = v37;
    *(a4 + 1) = v36;
    *(a4 + 2) = v35;
    *(a4 + 3) = result;
    if (a3[2] < a2[2])
    {
      v41 = *(a2 + 2);
      result = *(a2 + 12);
      v43 = *a2;
      v42 = *(a2 + 1);
      v44 = *(a3 + 3);
      v46 = *a3;
      v45 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v44;
      *a2 = v46;
      *(a2 + 1) = v45;
      *a3 = v43;
      *(a3 + 1) = v42;
      *(a3 + 2) = v41;
      *(a3 + 3) = result;
      if (a2[2] < a1[2])
      {
        v47 = *(a1 + 2);
        result = *(a1 + 12);
        v49 = *a1;
        v48 = *(a1 + 1);
        v50 = *(a2 + 3);
        v52 = *a2;
        v51 = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v50;
        *a1 = v52;
        *(a1 + 1) = v51;
        *a2 = v49;
        *(a2 + 1) = v48;
        *(a2 + 2) = v47;
        *(a2 + 3) = result;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 2);
  if (result.n128_f32[0] < a4[2])
  {
    v53 = *(a4 + 2);
    result = *(a4 + 12);
    v55 = *a4;
    v54 = *(a4 + 1);
    v56 = a5[3];
    v58 = *a5;
    v57 = a5[1];
    *(a4 + 2) = a5[2];
    *(a4 + 3) = v56;
    *a4 = v58;
    *(a4 + 1) = v57;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = v53;
    a5[3] = result;
    result.n128_f32[0] = a4[2];
    if (result.n128_f32[0] < a3[2])
    {
      v59 = *(a3 + 2);
      result = *(a3 + 12);
      v61 = *a3;
      v60 = *(a3 + 1);
      v62 = *(a4 + 3);
      v64 = *a4;
      v63 = *(a4 + 1);
      *(a3 + 2) = *(a4 + 2);
      *(a3 + 3) = v62;
      *a3 = v64;
      *(a3 + 1) = v63;
      *a4 = v61;
      *(a4 + 1) = v60;
      *(a4 + 2) = v59;
      *(a4 + 3) = result;
      result.n128_f32[0] = a3[2];
      if (result.n128_f32[0] < a2[2])
      {
        v65 = *(a2 + 2);
        result = *(a2 + 12);
        v67 = *a2;
        v66 = *(a2 + 1);
        v68 = *(a3 + 3);
        v70 = *a3;
        v69 = *(a3 + 1);
        *(a2 + 2) = *(a3 + 2);
        *(a2 + 3) = v68;
        *a2 = v70;
        *(a2 + 1) = v69;
        *a3 = v67;
        *(a3 + 1) = v66;
        *(a3 + 2) = v65;
        *(a3 + 3) = result;
        result.n128_f32[0] = a2[2];
        if (result.n128_f32[0] < a1[2])
        {
          v71 = *(a1 + 2);
          result = *(a1 + 12);
          v73 = *a1;
          v72 = *(a1 + 1);
          v74 = *(a2 + 3);
          v76 = *a2;
          v75 = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = v74;
          *a1 = v76;
          *(a1 + 1) = v75;
          *a2 = v73;
          *(a2 + 1) = v72;
          *(a2 + 2) = v71;
          *(a2 + 3) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 6;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = (a2 - 64);
      v13 = *(a1 + 72);
      v14 = *(a2 - 56);
      if (v13 < *(a1 + 8))
      {
        if (v14 >= v13)
        {
          v73 = *(a1 + 32);
          v72 = *(a1 + 48);
          v75 = *a1;
          v74 = *(a1 + 16);
          v76 = *(a1 + 80);
          *a1 = *(a1 + 64);
          *(a1 + 16) = v76;
          v77 = *(a1 + 112);
          *(a1 + 32) = *(a1 + 96);
          *(a1 + 48) = v77;
          *(a1 + 64) = v75;
          *(a1 + 80) = v74;
          *(a1 + 96) = v73;
          *(a1 + 112) = v72;
          if (*(a2 - 56) >= *(a1 + 72))
          {
            return 1;
          }

          v16 = *(a1 + 96);
          v15 = *(a1 + 112);
          v18 = *(a1 + 64);
          v17 = *(a1 + 80);
          v78 = *(a2 - 16);
          v80 = *v12;
          v79 = *(a2 - 48);
          *(a1 + 96) = *(a2 - 32);
          *(a1 + 112) = v78;
          *(a1 + 64) = v80;
          *(a1 + 80) = v79;
        }

        else
        {
          v16 = *(a1 + 32);
          v15 = *(a1 + 48);
          v18 = *a1;
          v17 = *(a1 + 16);
          v19 = *(a2 - 16);
          v21 = *v12;
          v20 = *(a2 - 48);
          *(a1 + 32) = *(a2 - 32);
          *(a1 + 48) = v19;
          *a1 = v21;
          *(a1 + 16) = v20;
        }

        *v12 = v18;
        *(a2 - 48) = v17;
        result = 1;
        *(a2 - 32) = v16;
        *(a2 - 16) = v15;
        return result;
      }

      if (v14 >= v13)
      {
        return 1;
      }

      v42 = *(a1 + 96);
      v41 = *(a1 + 112);
      v44 = *(a1 + 64);
      v43 = *(a1 + 80);
      v45 = *(a2 - 16);
      v47 = *v12;
      v46 = *(a2 - 48);
      *(a1 + 96) = *(a2 - 32);
      *(a1 + 112) = v45;
      *(a1 + 64) = v47;
      *(a1 + 80) = v46;
      *v12 = v44;
      *(a2 - 48) = v43;
      *(a2 - 32) = v42;
      *(a2 - 16) = v41;
LABEL_50:
      if (*(a1 + 72) < *(a1 + 8))
      {
        v122 = *(a1 + 32);
        v121 = *(a1 + 48);
        v124 = *a1;
        v123 = *(a1 + 16);
        v125 = *(a1 + 80);
        *a1 = *(a1 + 64);
        *(a1 + 16) = v125;
        v126 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v126;
        *(a1 + 64) = v124;
        *(a1 + 80) = v123;
        *(a1 + 96) = v122;
        *(a1 + 112) = v121;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), (a2 - 64), a3);
      return 1;
    }

    v32 = *(a1 + 72);
    v33 = *(a1 + 8);
    v34 = *(a1 + 136);
    if (v32 >= v33)
    {
      if (v34 < v32)
      {
        v61 = *(a1 + 96);
        v60 = *(a1 + 112);
        v63 = *(a1 + 64);
        v62 = *(a1 + 80);
        v64 = *(a1 + 144);
        *(a1 + 64) = *(a1 + 128);
        *(a1 + 80) = v64;
        v65 = *(a1 + 176);
        *(a1 + 96) = *(a1 + 160);
        *(a1 + 112) = v65;
        *(a1 + 128) = v63;
        *(a1 + 144) = v62;
        *(a1 + 160) = v61;
        *(a1 + 176) = v60;
        if (*(a1 + 72) < v33)
        {
          v67 = *(a1 + 32);
          v66 = *(a1 + 48);
          v69 = *a1;
          v68 = *(a1 + 16);
          v70 = *(a1 + 80);
          *a1 = *(a1 + 64);
          *(a1 + 16) = v70;
          v71 = *(a1 + 112);
          *(a1 + 32) = *(a1 + 96);
          *(a1 + 48) = v71;
          *(a1 + 64) = v69;
          *(a1 + 80) = v68;
          *(a1 + 96) = v67;
          *(a1 + 112) = v66;
        }
      }

      goto LABEL_47;
    }

    if (v34 >= v32)
    {
      v100 = *(a1 + 32);
      v99 = *(a1 + 48);
      v102 = *a1;
      v101 = *(a1 + 16);
      v103 = *(a1 + 80);
      *a1 = *(a1 + 64);
      *(a1 + 16) = v103;
      v104 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v104;
      *(a1 + 64) = v102;
      *(a1 + 80) = v101;
      *(a1 + 96) = v100;
      *(a1 + 112) = v99;
      if (v34 >= *(a1 + 72))
      {
        goto LABEL_47;
      }

      v36 = *(a1 + 96);
      v35 = *(a1 + 112);
      v38 = *(a1 + 64);
      v37 = *(a1 + 80);
      v105 = *(a1 + 144);
      *(a1 + 64) = *(a1 + 128);
      *(a1 + 80) = v105;
      v106 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v106;
    }

    else
    {
      v36 = *(a1 + 32);
      v35 = *(a1 + 48);
      v38 = *a1;
      v37 = *(a1 + 16);
      v39 = *(a1 + 144);
      *a1 = *(a1 + 128);
      *(a1 + 16) = v39;
      v40 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v40;
    }

    *(a1 + 128) = v38;
    *(a1 + 144) = v37;
    *(a1 + 160) = v36;
    *(a1 + 176) = v35;
LABEL_47:
    if (*(a2 - 56) >= *(a1 + 136))
    {
      return 1;
    }

    v107 = (a2 - 64);
    v109 = *(a1 + 160);
    v108 = *(a1 + 176);
    v111 = *(a1 + 128);
    v110 = *(a1 + 144);
    v112 = *(a2 - 16);
    v114 = *(a2 - 64);
    v113 = *(a2 - 48);
    *(a1 + 160) = *(a2 - 32);
    *(a1 + 176) = v112;
    *(a1 + 128) = v114;
    *(a1 + 144) = v113;
    *v107 = v111;
    v107[1] = v110;
    v107[2] = v109;
    v107[3] = v108;
    if (*(a1 + 136) >= *(a1 + 72))
    {
      return 1;
    }

    v116 = *(a1 + 96);
    v115 = *(a1 + 112);
    v118 = *(a1 + 64);
    v117 = *(a1 + 80);
    v119 = *(a1 + 144);
    *(a1 + 64) = *(a1 + 128);
    *(a1 + 80) = v119;
    v120 = *(a1 + 176);
    *(a1 + 96) = *(a1 + 160);
    *(a1 + 112) = v120;
    *(a1 + 128) = v118;
    *(a1 + 144) = v117;
    *(a1 + 160) = v116;
    *(a1 + 176) = v115;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 56) < *(a1 + 8))
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 48);
      v7 = *a1;
      v6 = *(a1 + 16);
      v8 = *(a2 - 16);
      v10 = *(a2 - 64);
      v9 = *(a2 - 48);
      *(a1 + 32) = *(a2 - 32);
      *(a1 + 48) = v8;
      *a1 = v10;
      *(a1 + 16) = v9;
      *(a2 - 64) = v7;
      *(a2 - 48) = v6;
      result = 1;
      *(a2 - 32) = v5;
      *(a2 - 16) = v4;
      return result;
    }

    return 1;
  }

LABEL_13:
  v22 = a1 + 128;
  v23 = *(a1 + 72);
  v24 = *(a1 + 8);
  v25 = *(a1 + 136);
  if (v23 >= v24)
  {
    if (v25 < v23)
    {
      v49 = *(a1 + 96);
      v48 = *(a1 + 112);
      v51 = *(a1 + 64);
      v50 = *(a1 + 80);
      v52 = *(a1 + 144);
      *(a1 + 64) = *v22;
      *(a1 + 80) = v52;
      v53 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v53;
      *v22 = v51;
      *(a1 + 144) = v50;
      *(a1 + 160) = v49;
      *(a1 + 176) = v48;
      if (*(a1 + 72) < v24)
      {
        v55 = *(a1 + 32);
        v54 = *(a1 + 48);
        v57 = *a1;
        v56 = *(a1 + 16);
        v58 = *(a1 + 80);
        *a1 = *(a1 + 64);
        *(a1 + 16) = v58;
        v59 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v59;
        *(a1 + 64) = v57;
        *(a1 + 80) = v56;
        *(a1 + 96) = v55;
        *(a1 + 112) = v54;
      }
    }
  }

  else
  {
    if (v25 >= v23)
    {
      v82 = *(a1 + 32);
      v81 = *(a1 + 48);
      v84 = *a1;
      v83 = *(a1 + 16);
      v85 = *(a1 + 80);
      *a1 = *(a1 + 64);
      *(a1 + 16) = v85;
      v86 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v86;
      *(a1 + 64) = v84;
      *(a1 + 80) = v83;
      *(a1 + 96) = v82;
      *(a1 + 112) = v81;
      if (v25 >= *(a1 + 72))
      {
        goto LABEL_33;
      }

      v27 = *(a1 + 96);
      v26 = *(a1 + 112);
      v29 = *(a1 + 64);
      v28 = *(a1 + 80);
      v87 = *(a1 + 144);
      *(a1 + 64) = *v22;
      *(a1 + 80) = v87;
      v88 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v88;
    }

    else
    {
      v27 = *(a1 + 32);
      v26 = *(a1 + 48);
      v29 = *a1;
      v28 = *(a1 + 16);
      v30 = *(a1 + 144);
      *a1 = *v22;
      *(a1 + 16) = v30;
      v31 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v31;
    }

    *v22 = v29;
    *(a1 + 144) = v28;
    *(a1 + 160) = v27;
    *(a1 + 176) = v26;
  }

LABEL_33:
  v89 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v90 = 0;
  v91 = 0;
  while (1)
  {
    v92 = *(v89 + 8);
    if (v92 < *(v22 + 8))
    {
      v93 = *v89;
      v127 = *(v89 + 12);
      v128 = *(v89 + 28);
      v129 = *(v89 + 44);
      v130 = *(v89 + 60);
      v94 = v90;
      while (1)
      {
        v95 = a1 + v94;
        v96 = *(a1 + v94 + 144);
        *(v95 + 192) = *(a1 + v94 + 128);
        *(v95 + 208) = v96;
        v97 = *(a1 + v94 + 176);
        *(v95 + 224) = *(a1 + v94 + 160);
        *(v95 + 240) = v97;
        if (v94 == -128)
        {
          break;
        }

        v94 -= 64;
        if (v92 >= *(v95 + 72))
        {
          v98 = a1 + v94 + 192;
          goto LABEL_41;
        }
      }

      v98 = a1;
LABEL_41:
      *v98 = v93;
      *(v98 + 8) = v92;
      *(v98 + 12) = v127;
      *(v98 + 28) = v128;
      *(v98 + 44) = v129;
      *(v98 + 60) = v130;
      if (++v91 == 8)
      {
        return v89 + 64 == a2;
      }
    }

    v22 = v89;
    v90 += 64;
    v89 += 64;
    if (v89 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = &a2[-4];
  v10 = &a2[-8];
  v11 = &a2[-12];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 6;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v150 = a2[-4].n128_f32[0];
        v149 = a2 - 4;
        result.n128_f32[0] = v150;
        if (v150 >= *v12)
        {
          return result;
        }

LABEL_106:
        v343 = *(v12 + 32);
        v376 = *(v12 + 48);
        v279 = *v12;
        v312 = *(v12 + 16);
        v154 = *v149;
        v155 = v149[1];
        v156 = v149[3];
        *(v12 + 32) = v149[2];
        *(v12 + 48) = v156;
        *v12 = v154;
        *(v12 + 16) = v155;
        result = v279;
        v157 = v312;
        v158 = v343;
        v159 = v376;
LABEL_107:
        v149[2] = v158;
        v149[3] = v159;
        *v149 = result;
        v149[1] = v157;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v151 = (v12 + 64);
      v160 = *(v12 + 64);
      v161 = (v12 + 128);
      v162 = *(v12 + 128);
      if (v160 >= *v12)
      {
        if (v162 < v160)
        {
          v216 = *(v12 + 96);
          result = *(v12 + 112);
          v218 = *v151;
          v217 = *(v12 + 80);
          v219 = *(v12 + 144);
          *v151 = *v161;
          *(v12 + 80) = v219;
          v220 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v220;
          *v161 = v218;
          *(v12 + 144) = v217;
          *(v12 + 160) = v216;
          *(v12 + 176) = result;
          if (*(v12 + 64) < *v12)
          {
            v348 = *(v12 + 32);
            v380 = *(v12 + 48);
            v284 = *v12;
            v318 = *(v12 + 16);
            v221 = *(v12 + 80);
            *v12 = *v151;
            *(v12 + 16) = v221;
            v222 = *(v12 + 112);
            *(v12 + 32) = *(v12 + 96);
            *(v12 + 48) = v222;
            result = v284;
            *(v12 + 96) = v348;
            *(v12 + 112) = v380;
            *v151 = v284;
            *(v12 + 80) = v318;
          }
        }
      }

      else if (v162 >= v160)
      {
        v351 = *(v12 + 32);
        v382 = *(v12 + 48);
        v287 = *v12;
        v321 = *(v12 + 16);
        v233 = *(v12 + 80);
        *v12 = *v151;
        *(v12 + 16) = v233;
        v234 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v234;
        *(v12 + 96) = v351;
        *(v12 + 112) = v382;
        *v151 = v287;
        *(v12 + 80) = v321;
        if (v162 < *(v12 + 64))
        {
          v235 = *(v12 + 96);
          result = *(v12 + 112);
          v237 = *v151;
          v236 = *(v12 + 80);
          v238 = *(v12 + 144);
          *v151 = *v161;
          *(v12 + 80) = v238;
          v239 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v239;
          *v161 = v237;
          *(v12 + 144) = v236;
          *(v12 + 160) = v235;
          *(v12 + 176) = result;
        }
      }

      else
      {
        v344 = *(v12 + 32);
        v377 = *(v12 + 48);
        v280 = *v12;
        v313 = *(v12 + 16);
        v163 = *(v12 + 144);
        *v12 = *v161;
        *(v12 + 16) = v163;
        v164 = *(v12 + 176);
        *(v12 + 32) = *(v12 + 160);
        *(v12 + 48) = v164;
        result = v280;
        *(v12 + 160) = v344;
        *(v12 + 176) = v377;
        *v161 = v280;
        *(v12 + 144) = v313;
      }

      result.n128_u32[0] = *v9;
      if (*v9 >= v161->n128_f32[0])
      {
        return result;
      }

      result = *v161;
      v322 = *(v12 + 144);
      v240 = *(v12 + 160);
      v383 = *(v12 + 176);
      v242 = a2[-2];
      v241 = a2[-1];
      v243 = a2[-3];
      *v161 = *v9;
      *(v12 + 144) = v243;
      *(v12 + 160) = v242;
      *(v12 + 176) = v241;
      a2[-2] = v240;
      a2[-1] = v383;
      *v9 = result;
      a2[-3] = v322;
      result.n128_u32[0] = v161->n128_u32[0];
      if (v161->n128_f32[0] >= v151->n128_f32[0])
      {
        return result;
      }

      v244 = *(v12 + 96);
      result = *(v12 + 112);
      v246 = *v151;
      v245 = *(v12 + 80);
      v247 = *(v12 + 144);
      *v151 = *v161;
      *(v12 + 80) = v247;
      v248 = *(v12 + 176);
      *(v12 + 96) = *(v12 + 160);
      *(v12 + 112) = v248;
      *v161 = v246;
      *(v12 + 144) = v245;
      *(v12 + 160) = v244;
      *(v12 + 176) = result;
LABEL_179:
      result.n128_u32[0] = *(v12 + 64);
      if (result.n128_f32[0] < *v12)
      {
        v352 = *(v12 + 32);
        v384 = *(v12 + 48);
        v288 = *v12;
        v323 = *(v12 + 16);
        v249 = v151[1];
        *v12 = *v151;
        *(v12 + 16) = v249;
        v250 = v151[3];
        *(v12 + 32) = v151[2];
        *(v12 + 48) = v250;
        result = v288;
        v151[2] = v352;
        v151[3] = v384;
        *v151 = v288;
        v151[1] = v323;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(v12, (v12 + 64), (v12 + 128), (v12 + 192), a2 - 4, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v165 = (v12 + 64);
      v167 = v12 == a2 || v165 == a2;
      if (a4)
      {
        if (!v167)
        {
          v168 = 0;
          v169 = v12;
          do
          {
            v170 = v165;
            result.n128_u32[0] = *(v169 + 64);
            if (result.n128_f32[0] < *v169)
            {
              v281 = *(v169 + 68);
              v314 = *(v169 + 84);
              *v345 = *(v169 + 100);
              *&v345[12] = *(v169 + 112);
              v171 = v168;
              while (1)
              {
                v172 = (v12 + v171);
                v173 = *(v12 + v171 + 16);
                *(v172 + 4) = *(v12 + v171);
                *(v172 + 5) = v173;
                v174 = *(v12 + v171 + 48);
                *(v172 + 6) = *(v12 + v171 + 32);
                *(v172 + 7) = v174;
                if (!v171)
                {
                  break;
                }

                v171 -= 64;
                if (result.n128_f32[0] >= *(v172 - 16))
                {
                  v175 = v12 + v171 + 64;
                  goto LABEL_126;
                }
              }

              v175 = v12;
LABEL_126:
              *v175 = result.n128_u32[0];
              result = v281;
              *(v175 + 48) = *&v345[12];
              *(v175 + 36) = *v345;
              *(v175 + 20) = v314;
              *(v175 + 4) = v281;
            }

            v165 = v170 + 4;
            v168 += 64;
            v169 = v170;
          }

          while (&v170[4] != a2);
        }
      }

      else if (!v167)
      {
        do
        {
          v223 = v165;
          result.n128_u32[0] = *(a1 + 64);
          if (result.n128_f32[0] < *a1)
          {
            v285 = *(a1 + 68);
            v319 = *(a1 + 84);
            *v349 = *(a1 + 100);
            *&v349[12] = *(a1 + 112);
            v224 = v165;
            do
            {
              v225 = v224[-3];
              *v224 = v224[-4];
              v224[1] = v225;
              v226 = v224[-1];
              v224[2] = v224[-2];
              v224[3] = v226;
              v227 = v224[-8].n128_f32[0];
              v224 -= 4;
            }

            while (result.n128_f32[0] < v227);
            v224->n128_u32[0] = result.n128_u32[0];
            result = v285;
            v224[3] = *&v349[12];
            *(v224 + 36) = *v349;
            *(v224 + 20) = v319;
            *(v224 + 4) = v285;
          }

          v165 += 4;
          a1 = v223;
        }

        while ((v223 + 64) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v176 = (v13 - 2) >> 1;
        v177 = v176;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = v12 + (v179 << 6);
            if (2 * v178 + 2 < v13 && *v180 < *(v180 + 64))
            {
              v180 += 64;
              v179 = 2 * v178 + 2;
            }

            v181 = v12 + (v178 << 6);
            v182 = *v181;
            if (*v180 >= *v181)
            {
              *&v346[12] = *(v181 + 48);
              v315 = *(v181 + 20);
              *v346 = *(v181 + 36);
              v282 = *(v181 + 4);
              do
              {
                v183 = v181;
                v181 = v180;
                v184 = *v180;
                v185 = *(v180 + 16);
                v186 = *(v180 + 48);
                v183[2] = *(v180 + 32);
                v183[3] = v186;
                *v183 = v184;
                v183[1] = v185;
                if (v176 < v179)
                {
                  break;
                }

                v187 = 2 * v179;
                v179 = (2 * v179) | 1;
                v180 = v12 + (v179 << 6);
                v188 = v187 + 2;
                if (v188 < v13 && *v180 < *(v180 + 64))
                {
                  v180 += 64;
                  v179 = v188;
                }
              }

              while (*v180 >= v182);
              *v181 = v182;
              *(v181 + 48) = *&v346[12];
              *(v181 + 36) = *v346;
              *(v181 + 20) = v315;
              *(v181 + 4) = v282;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        do
        {
          v189 = 0;
          v347 = *(v12 + 32);
          v378 = *(v12 + 48);
          v283 = *v12;
          v316 = *(v12 + 16);
          v190 = v12;
          do
          {
            v191 = v190;
            v192 = &v190[4 * v189];
            v190 = v192 + 4;
            v193 = 2 * v189;
            v189 = (2 * v189) | 1;
            v194 = v193 + 2;
            if (v194 < v13)
            {
              v196 = v192[8].n128_f32[0];
              v195 = v192 + 8;
              if (v195[-4].n128_f32[0] < v196)
              {
                v190 = v195;
                v189 = v194;
              }
            }

            v197 = *v190;
            v198 = v190[1];
            v199 = v190[3];
            v191[2] = v190[2];
            v191[3] = v199;
            *v191 = v197;
            v191[1] = v198;
          }

          while (v189 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v190 == a2)
          {
            result = v283;
            v190[2] = v347;
            v190[3] = v378;
            *v190 = v283;
            v190[1] = v316;
          }

          else
          {
            v200 = *a2;
            v201 = a2[1];
            v202 = a2[3];
            v190[2] = a2[2];
            v190[3] = v202;
            *v190 = v200;
            v190[1] = v201;
            result = v283;
            a2[2] = v347;
            a2[3] = v378;
            *a2 = v283;
            a2[1] = v316;
            v203 = (&v190[4] - v12) >> 6;
            v204 = v203 < 2;
            v205 = v203 - 2;
            if (!v204)
            {
              v206 = v205 >> 1;
              v207 = (v12 + (v206 << 6));
              result.n128_u32[0] = v190->n128_u32[0];
              if (v207->n128_f32[0] < v190->n128_f32[0])
              {
                *&v259[12] = v190[3];
                v256 = *(v190 + 20);
                *v259 = *(v190 + 36);
                v253 = *(v190 + 4);
                do
                {
                  v208 = v190;
                  v190 = v207;
                  v209 = *v207;
                  v210 = v207[1];
                  v211 = v207[3];
                  v208[2] = v207[2];
                  v208[3] = v211;
                  *v208 = v209;
                  v208[1] = v210;
                  if (!v206)
                  {
                    break;
                  }

                  v206 = (v206 - 1) >> 1;
                  v207 = (v12 + (v206 << 6));
                }

                while (v207->n128_f32[0] < result.n128_f32[0]);
                v190->n128_u32[0] = result.n128_u32[0];
                result = v253;
                v190[3] = *&v259[12];
                *(v190 + 36) = *v259;
                *(v190 + 20) = v256;
                *(v190 + 4) = v253;
              }
            }
          }

          v204 = v13-- <= 2;
        }

        while (!v204);
      }

      return result;
    }

    v14 = v12 + (v13 >> 1 << 6);
    v15 = v14;
    v16 = *v9;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v326 = *(v14 + 32);
          v355 = *(v14 + 48);
          v262 = *v14;
          v291 = *(v14 + 16);
          v25 = *v9;
          v26 = a2[-3];
          v27 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v27;
          *v14 = v25;
          *(v14 + 16) = v26;
          a2[-2] = v326;
          a2[-1] = v355;
          *v9 = v262;
          a2[-3] = v291;
          if (*v14 < *v12)
          {
            v327 = *(v12 + 32);
            v356 = *(v12 + 48);
            v263 = *v12;
            v292 = *(v12 + 16);
            v28 = *v14;
            v29 = *(v14 + 16);
            v30 = *(v14 + 48);
            *(v12 + 32) = *(v14 + 32);
            *(v12 + 48) = v30;
            *v12 = v28;
            *(v12 + 16) = v29;
            *(v14 + 32) = v327;
            *(v14 + 48) = v356;
            *v14 = v263;
            *(v14 + 16) = v292;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v324 = *(v12 + 32);
          v353 = *(v12 + 48);
          v260 = *v12;
          v289 = *(v12 + 16);
          v18 = *v9;
          v19 = a2[-3];
          v20 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v20;
          *v12 = v18;
          *(v12 + 16) = v19;
          goto LABEL_26;
        }

        v330 = *(v12 + 32);
        v359 = *(v12 + 48);
        v266 = *v12;
        v295 = *(v12 + 16);
        v37 = *v14;
        v38 = *(v14 + 16);
        v39 = *(v14 + 48);
        *(v12 + 32) = *(v14 + 32);
        *(v12 + 48) = v39;
        *v12 = v37;
        *(v12 + 16) = v38;
        *(v14 + 32) = v330;
        *(v14 + 48) = v359;
        *v14 = v266;
        *(v14 + 16) = v295;
        if (*v9 < *v14)
        {
          v324 = *(v14 + 32);
          v353 = *(v14 + 48);
          v260 = *v14;
          v289 = *(v14 + 16);
          v40 = *v9;
          v41 = a2[-3];
          v42 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v42;
          *v14 = v40;
          *(v14 + 16) = v41;
LABEL_26:
          a2[-2] = v324;
          a2[-1] = v353;
          *v9 = v260;
          a2[-3] = v289;
        }
      }

      v43 = (v12 + 64);
      v44 = (v14 - 64);
      v45 = *(v14 - 64);
      v46 = *v10;
      if (v45 >= *(v12 + 64))
      {
        if (v46 < v45)
        {
          v331 = *(v14 - 32);
          v360 = *(v14 - 16);
          v267 = *v44;
          v296 = *(v14 - 48);
          v54 = *v10;
          v55 = a2[-7];
          v56 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v56;
          *v44 = v54;
          *(v14 - 48) = v55;
          a2[-6] = v331;
          a2[-5] = v360;
          *v10 = v267;
          a2[-7] = v296;
          if (v44->n128_f32[0] < *v43)
          {
            v57 = *v43;
            v297 = *(v12 + 80);
            v58 = *(v12 + 96);
            v361 = *(v12 + 112);
            v60 = *(v14 - 32);
            v59 = *(v14 - 16);
            v61 = *(v14 - 48);
            *v43 = *v44;
            *(v12 + 80) = v61;
            *(v12 + 96) = v60;
            *(v12 + 112) = v59;
            *(v14 - 32) = v58;
            *(v14 - 16) = v361;
            *v44 = v57;
            *(v14 - 48) = v297;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *v43;
          v48 = *(v12 + 80);
          v49 = *(v12 + 96);
          v50 = *(v12 + 112);
          v52 = a2[-6];
          v51 = a2[-5];
          v53 = a2[-7];
          *v43 = *v10;
          *(v12 + 80) = v53;
          *(v12 + 96) = v52;
          *(v12 + 112) = v51;
          goto LABEL_38;
        }

        v68 = *v43;
        v299 = *(v12 + 80);
        v69 = *(v12 + 96);
        v363 = *(v12 + 112);
        v71 = *(v14 - 32);
        v70 = *(v14 - 16);
        v72 = *(v14 - 48);
        *v43 = *v44;
        *(v12 + 80) = v72;
        *(v12 + 96) = v71;
        *(v12 + 112) = v70;
        *(v14 - 32) = v69;
        *(v14 - 16) = v363;
        *v44 = v68;
        *(v14 - 48) = v299;
        if (*v10 < v44->n128_f32[0])
        {
          v333 = *(v14 - 32);
          v364 = *(v14 - 16);
          v269 = *v44;
          v300 = *(v14 - 48);
          v73 = *v10;
          v74 = a2[-7];
          v75 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v75;
          *v44 = v73;
          *(v14 - 48) = v74;
          v47 = v269;
          v48 = v300;
          v49 = v333;
          v50 = v364;
LABEL_38:
          a2[-6] = v49;
          a2[-5] = v50;
          *v10 = v47;
          a2[-7] = v48;
        }
      }

      v76 = (v12 + 128);
      v78 = *(v14 + 64);
      v77 = (v14 + 64);
      v79 = v78;
      v80 = *v11;
      if (v78 >= *(v12 + 128))
      {
        if (v80 < v79)
        {
          v334 = v77[2];
          v365 = v77[3];
          v270 = *v77;
          v301 = v77[1];
          v88 = *v11;
          v89 = a2[-11];
          v90 = a2[-9];
          v77[2] = a2[-10];
          v77[3] = v90;
          *v77 = v88;
          v77[1] = v89;
          a2[-10] = v334;
          a2[-9] = v365;
          *v11 = v270;
          a2[-11] = v301;
          if (v77->n128_f32[0] < *v76)
          {
            v91 = *v76;
            v302 = *(v12 + 144);
            v92 = *(v12 + 160);
            v366 = *(v12 + 176);
            v94 = v77[2];
            v93 = v77[3];
            v95 = v77[1];
            *v76 = *v77;
            *(v12 + 144) = v95;
            *(v12 + 160) = v94;
            *(v12 + 176) = v93;
            v77[2] = v92;
            v77[3] = v366;
            *v77 = v91;
            v77[1] = v302;
          }
        }
      }

      else
      {
        if (v80 < v79)
        {
          v81 = *v76;
          v82 = *(v12 + 144);
          v83 = *(v12 + 160);
          v84 = *(v12 + 176);
          v86 = a2[-10];
          v85 = a2[-9];
          v87 = a2[-11];
          *v76 = *v11;
          *(v12 + 144) = v87;
          *(v12 + 160) = v86;
          *(v12 + 176) = v85;
          goto LABEL_47;
        }

        v96 = *v76;
        v303 = *(v12 + 144);
        v97 = *(v12 + 160);
        v367 = *(v12 + 176);
        v99 = v77[2];
        v98 = v77[3];
        v100 = v77[1];
        *v76 = *v77;
        *(v12 + 144) = v100;
        *(v12 + 160) = v99;
        *(v12 + 176) = v98;
        v77[2] = v97;
        v77[3] = v367;
        *v77 = v96;
        v77[1] = v303;
        if (*v11 < v77->n128_f32[0])
        {
          v335 = v77[2];
          v368 = v77[3];
          v271 = *v77;
          v304 = v77[1];
          v101 = *v11;
          v102 = a2[-11];
          v103 = a2[-9];
          v77[2] = a2[-10];
          v77[3] = v103;
          *v77 = v101;
          v77[1] = v102;
          v81 = v271;
          v82 = v304;
          v83 = v335;
          v84 = v368;
LABEL_47:
          a2[-10] = v83;
          a2[-9] = v84;
          *v11 = v81;
          a2[-11] = v82;
        }
      }

      v104 = *v15;
      v105 = v77->n128_f32[0];
      if (*v15 >= v44->n128_f32[0])
      {
        if (v105 < v104)
        {
          v337 = *(v15 + 32);
          v370 = *(v15 + 48);
          v273 = *v15;
          v306 = *(v15 + 16);
          v108 = v77[1];
          *v15 = *v77;
          *(v15 + 16) = v108;
          v109 = v77[3];
          *(v15 + 32) = v77[2];
          *(v15 + 48) = v109;
          v77[2] = v337;
          v77[3] = v370;
          *v77 = v273;
          v77[1] = v306;
          if (*v15 < v44->n128_f32[0])
          {
            v338 = v44[2];
            v371 = v44[3];
            v274 = *v44;
            v307 = v44[1];
            v110 = *(v15 + 16);
            *v44 = *v15;
            v44[1] = v110;
            v111 = *(v15 + 48);
            v44[2] = *(v15 + 32);
            v44[3] = v111;
            *(v15 + 32) = v338;
            *(v15 + 48) = v371;
            *v15 = v274;
            *(v15 + 16) = v307;
          }
        }
      }

      else
      {
        if (v105 < v104)
        {
          v336 = v44[2];
          v369 = v44[3];
          v272 = *v44;
          v305 = v44[1];
          v106 = v77[1];
          *v44 = *v77;
          v44[1] = v106;
          v107 = v77[3];
          v44[2] = v77[2];
          v44[3] = v107;
          goto LABEL_56;
        }

        v339 = v44[2];
        v372 = v44[3];
        v275 = *v44;
        v308 = v44[1];
        v112 = *(v15 + 16);
        *v44 = *v15;
        v44[1] = v112;
        v113 = *(v15 + 48);
        v44[2] = *(v15 + 32);
        v44[3] = v113;
        *(v15 + 32) = v339;
        *(v15 + 48) = v372;
        *v15 = v275;
        *(v15 + 16) = v308;
        if (v77->n128_f32[0] < *v15)
        {
          v336 = *(v15 + 32);
          v369 = *(v15 + 48);
          v272 = *v15;
          v305 = *(v15 + 16);
          v114 = v77[1];
          *v15 = *v77;
          *(v15 + 16) = v114;
          v115 = v77[3];
          *(v15 + 32) = v77[2];
          *(v15 + 48) = v115;
LABEL_56:
          v77[2] = v336;
          v77[3] = v369;
          *v77 = v272;
          v77[1] = v305;
        }
      }

      v340 = *(v12 + 32);
      v373 = *(v12 + 48);
      v276 = *v12;
      v309 = *(v12 + 16);
      v116 = *v15;
      v117 = *(v15 + 16);
      v118 = *(v15 + 48);
      *(v12 + 32) = *(v15 + 32);
      *(v12 + 48) = v118;
      *v12 = v116;
      *(v12 + 16) = v117;
      *(v15 + 32) = v340;
      *(v15 + 48) = v373;
      *v15 = v276;
      *(v15 + 16) = v309;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 >= *v14)
    {
      if (v16 < v21)
      {
        v328 = *(v12 + 32);
        v357 = *(v12 + 48);
        v264 = *v12;
        v293 = *(v12 + 16);
        v31 = *v9;
        v32 = a2[-3];
        v33 = a2[-1];
        *(v12 + 32) = a2[-2];
        *(v12 + 48) = v33;
        *v12 = v31;
        *(v12 + 16) = v32;
        a2[-2] = v328;
        a2[-1] = v357;
        *v9 = v264;
        a2[-3] = v293;
        if (*v12 < *v14)
        {
          v329 = *(v14 + 32);
          v358 = *(v14 + 48);
          v265 = *v14;
          v294 = *(v14 + 16);
          v34 = *v12;
          v35 = *(v12 + 16);
          v36 = *(v12 + 48);
          *(v14 + 32) = *(v12 + 32);
          *(v14 + 48) = v36;
          *v14 = v34;
          *(v14 + 16) = v35;
          *(v12 + 32) = v329;
          *(v12 + 48) = v358;
          *v12 = v265;
          *(v12 + 16) = v294;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v21)
    {
      v332 = *(v14 + 32);
      v362 = *(v14 + 48);
      v268 = *v14;
      v298 = *(v14 + 16);
      v62 = *v12;
      v63 = *(v12 + 16);
      v64 = *(v12 + 48);
      *(v14 + 32) = *(v12 + 32);
      *(v14 + 48) = v64;
      *v14 = v62;
      *(v14 + 16) = v63;
      *(v12 + 32) = v332;
      *(v12 + 48) = v362;
      *v12 = v268;
      *(v12 + 16) = v298;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v325 = *(v12 + 32);
      v354 = *(v12 + 48);
      v261 = *v12;
      v290 = *(v12 + 16);
      v65 = *v9;
      v66 = a2[-3];
      v67 = a2[-1];
      *(v12 + 32) = a2[-2];
      *(v12 + 48) = v67;
      *v12 = v65;
      *(v12 + 16) = v66;
    }

    else
    {
      v325 = *(v14 + 32);
      v354 = *(v14 + 48);
      v261 = *v14;
      v290 = *(v14 + 16);
      v22 = *v9;
      v23 = a2[-3];
      v24 = a2[-1];
      *(v14 + 32) = a2[-2];
      *(v14 + 48) = v24;
      *v14 = v22;
      *(v14 + 16) = v23;
    }

    a2[-2] = v325;
    a2[-1] = v354;
    *v9 = v261;
    a2[-3] = v290;
LABEL_58:
    --a3;
    v119 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 64) < v119)
    {
      v120 = 0;
      *&v257[12] = *(v12 + 48);
      v254 = *(v12 + 20);
      *v257 = *(v12 + 36);
      v251 = *(v12 + 4);
      do
      {
        v121 = *(v12 + v120 + 64);
        v120 += 64;
      }

      while (v121 < v119);
      v122 = v12 + v120;
      v123 = a2;
      if (v120 == 64)
      {
        v123 = a2;
        do
        {
          if (v122 >= v123)
          {
            break;
          }

          v125 = v123[-4].n128_f32[0];
          v123 -= 4;
        }

        while (v125 >= v119);
      }

      else
      {
        do
        {
          v124 = v123[-4].n128_f32[0];
          v123 -= 4;
        }

        while (v124 >= v119);
      }

      v12 += v120;
      if (v122 < v123)
      {
        v126 = v123;
        do
        {
          v341 = *(v12 + 32);
          v374 = *(v12 + 48);
          v277 = *v12;
          v310 = *(v12 + 16);
          v127 = *v126;
          v128 = *(v126 + 1);
          v129 = *(v126 + 3);
          *(v12 + 32) = *(v126 + 2);
          *(v12 + 48) = v129;
          *v12 = v127;
          *(v12 + 16) = v128;
          *(v126 + 2) = v341;
          *(v126 + 3) = v374;
          *v126 = v277;
          *(v126 + 1) = v310;
          do
          {
            v130 = *(v12 + 64);
            v12 += 64;
          }

          while (v130 < v119);
          do
          {
            v131 = *(v126 - 16);
            v126 -= 16;
          }

          while (v131 >= v119);
        }

        while (v12 < v126);
      }

      if (v12 - 64 != a1)
      {
        v132 = *(v12 - 64);
        v133 = *(v12 - 48);
        v134 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v134;
        *a1 = v132;
        *(a1 + 16) = v133;
      }

      *(v12 - 64) = v119;
      *(v12 - 16) = *&v257[12];
      *(v12 - 28) = *v257;
      *(v12 - 44) = v254;
      *(v12 - 60) = v251;
      if (v122 < v123)
      {
        goto LABEL_79;
      }

      v135 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(a1, v12 - 64, v251);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(v12, a2, v136))
      {
        a2 = (v12 - 64);
        if (!v135)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v135)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(a1, v12 - 64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      *&v258[12] = *(v12 + 48);
      v255 = *(v12 + 20);
      *v258 = *(v12 + 36);
      v252 = *(v12 + 4);
      if (v119 >= *v9)
      {
        v138 = v12 + 64;
        do
        {
          v12 = v138;
          if (v138 >= a2)
          {
            break;
          }

          v138 += 64;
        }

        while (v119 >= *v12);
      }

      else
      {
        do
        {
          v137 = *(v12 + 64);
          v12 += 64;
        }

        while (v119 >= v137);
      }

      v139 = a2;
      if (v12 < a2)
      {
        v139 = a2;
        do
        {
          v140 = *(v139 - 16);
          v139 -= 4;
        }

        while (v119 < v140);
      }

      while (v12 < v139)
      {
        v342 = *(v12 + 32);
        v375 = *(v12 + 48);
        v278 = *v12;
        v311 = *(v12 + 16);
        v141 = *v139;
        v142 = v139[1];
        v143 = v139[3];
        *(v12 + 32) = v139[2];
        *(v12 + 48) = v143;
        *v12 = v141;
        *(v12 + 16) = v142;
        v139[2] = v342;
        v139[3] = v375;
        *v139 = v278;
        v139[1] = v311;
        do
        {
          v144 = *(v12 + 64);
          v12 += 64;
        }

        while (v119 >= v144);
        do
        {
          v145 = *(v139 - 16);
          v139 -= 4;
        }

        while (v119 < v145);
      }

      if (v12 - 64 != a1)
      {
        v146 = *(v12 - 64);
        v147 = *(v12 - 48);
        v148 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v148;
        *a1 = v146;
        *(a1 + 16) = v147;
      }

      a4 = 0;
      *(v12 - 64) = v119;
      result = v252;
      *(v12 - 16) = *&v258[12];
      *(v12 - 28) = *v258;
      *(v12 - 44) = v255;
      *(v12 - 60) = v252;
    }
  }

  v151 = (v12 + 64);
  result.n128_u32[0] = *(v12 + 64);
  v152 = a2[-4].n128_f32[0];
  v149 = a2 - 4;
  v153 = v152;
  if (result.n128_f32[0] >= *v12)
  {
    if (v153 >= result.n128_f32[0])
    {
      return result;
    }

    result = *v151;
    v317 = *(v12 + 80);
    v212 = *(v12 + 96);
    v379 = *(v12 + 112);
    v214 = v149[2];
    v213 = v149[3];
    v215 = v149[1];
    *v151 = *v149;
    *(v12 + 80) = v215;
    *(v12 + 96) = v214;
    *(v12 + 112) = v213;
    v149[2] = v212;
    v149[3] = v379;
    *v149 = result;
    v149[1] = v317;
    goto LABEL_179;
  }

  if (v153 < result.n128_f32[0])
  {
    goto LABEL_106;
  }

  v350 = *(v12 + 32);
  v381 = *(v12 + 48);
  v286 = *v12;
  v320 = *(v12 + 16);
  v228 = *(v12 + 80);
  *v12 = *v151;
  *(v12 + 16) = v228;
  v229 = *(v12 + 112);
  *(v12 + 32) = *(v12 + 96);
  *(v12 + 48) = v229;
  result = v286;
  *(v12 + 96) = v350;
  *(v12 + 112) = v381;
  *v151 = v286;
  *(v12 + 80) = v320;
  result.n128_u32[0] = v149->n128_u32[0];
  if (v149->n128_f32[0] < *(v12 + 64))
  {
    result = *v151;
    v157 = *(v12 + 80);
    v158 = *(v12 + 96);
    v159 = *(v12 + 112);
    v231 = v149[2];
    v230 = v149[3];
    v232 = v149[1];
    *v151 = *v149;
    *(v12 + 80) = v232;
    *(v12 + 96) = v231;
    *(v12 + 112) = v230;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(__int128 *a1, float *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2;
  v7 = a3->n128_f32[0];
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      v14 = *(a2 + 8);
      result = *(a2 + 12);
      v16 = *a2;
      v15 = *(a2 + 4);
      v17 = a3[3];
      v19 = *a3;
      v18 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v17;
      *a2 = v19;
      *(a2 + 1) = v18;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = v14;
      a3[3] = result;
      if (*a2 < *a1)
      {
        v20 = a1[2];
        result = a1[3];
        v22 = *a1;
        v21 = a1[1];
        v23 = *(a2 + 3);
        v25 = *a2;
        v24 = *(a2 + 1);
        a1[2] = *(a2 + 2);
        a1[3] = v23;
        *a1 = v25;
        a1[1] = v24;
        *a2 = v22;
        *(a2 + 1) = v21;
        *(a2 + 2) = v20;
        *(a2 + 3) = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[2];
      result = a1[3];
      v10 = *a1;
      v9 = a1[1];
      v11 = a3[3];
      v13 = *a3;
      v12 = a3[1];
      a1[2] = a3[2];
      a1[3] = v11;
      *a1 = v13;
      a1[1] = v12;
LABEL_9:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = v8;
      a3[3] = result;
      goto LABEL_10;
    }

    v26 = a1[2];
    result = a1[3];
    v28 = *a1;
    v27 = a1[1];
    v29 = *(a2 + 3);
    v31 = *a2;
    v30 = *(a2 + 1);
    a1[2] = *(a2 + 2);
    a1[3] = v29;
    *a1 = v31;
    a1[1] = v30;
    *a2 = v28;
    *(a2 + 1) = v27;
    *(a2 + 2) = v26;
    *(a2 + 3) = result;
    if (a3->n128_f32[0] < *a2)
    {
      v8 = *(a2 + 2);
      result = *(a2 + 12);
      v10 = *a2;
      v9 = *(a2 + 1);
      v32 = a3[3];
      v34 = *a3;
      v33 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v32;
      *a2 = v34;
      *(a2 + 1) = v33;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[0] < a3->n128_f32[0])
  {
    v35 = a3[2];
    result = a3[3];
    v37 = *a3;
    v36 = a3[1];
    v38 = a4[3];
    v40 = *a4;
    v39 = a4[1];
    a3[2] = a4[2];
    a3[3] = v38;
    *a3 = v40;
    a3[1] = v39;
    *a4 = v37;
    a4[1] = v36;
    a4[2] = v35;
    a4[3] = result;
    if (a3->n128_f32[0] < *a2)
    {
      v41 = *(a2 + 8);
      result = *(a2 + 12);
      v43 = *a2;
      v42 = *(a2 + 4);
      v44 = a3[3];
      v46 = *a3;
      v45 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v44;
      *a2 = v46;
      *(a2 + 1) = v45;
      *a3 = v43;
      a3[1] = v42;
      a3[2] = v41;
      a3[3] = result;
      if (*a2 < *a1)
      {
        v47 = a1[2];
        result = a1[3];
        v49 = *a1;
        v48 = a1[1];
        v50 = *(a2 + 3);
        v52 = *a2;
        v51 = *(a2 + 1);
        a1[2] = *(a2 + 2);
        a1[3] = v50;
        *a1 = v52;
        a1[1] = v51;
        *a2 = v49;
        *(a2 + 1) = v48;
        *(a2 + 2) = v47;
        *(a2 + 3) = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[0];
  if (a5->n128_f32[0] < a4->n128_f32[0])
  {
    v53 = a4[2];
    result = a4[3];
    v55 = *a4;
    v54 = a4[1];
    v56 = a5[3];
    v58 = *a5;
    v57 = a5[1];
    a4[2] = a5[2];
    a4[3] = v56;
    *a4 = v58;
    a4[1] = v57;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = v53;
    a5[3] = result;
    result.n128_u32[0] = a4->n128_u32[0];
    if (a4->n128_f32[0] < a3->n128_f32[0])
    {
      v59 = a3[2];
      result = a3[3];
      v61 = *a3;
      v60 = a3[1];
      v62 = a4[3];
      v64 = *a4;
      v63 = a4[1];
      a3[2] = a4[2];
      a3[3] = v62;
      *a3 = v64;
      a3[1] = v63;
      *a4 = v61;
      a4[1] = v60;
      a4[2] = v59;
      a4[3] = result;
      result.n128_u32[0] = a3->n128_u32[0];
      if (a3->n128_f32[0] < *a2)
      {
        v65 = *(a2 + 8);
        result = *(a2 + 12);
        v67 = *a2;
        v66 = *(a2 + 4);
        v68 = a3[3];
        v70 = *a3;
        v69 = a3[1];
        *(a2 + 2) = a3[2];
        *(a2 + 3) = v68;
        *a2 = v70;
        *(a2 + 1) = v69;
        *a3 = v67;
        a3[1] = v66;
        a3[2] = v65;
        a3[3] = result;
        result.n128_f32[0] = *a2;
        if (*a2 < *a1)
        {
          v71 = a1[2];
          result = a1[3];
          v73 = *a1;
          v72 = a1[1];
          v74 = *(a2 + 3);
          v76 = *a2;
          v75 = *(a2 + 1);
          a1[2] = *(a2 + 2);
          a1[3] = v74;
          *a1 = v76;
          a1[1] = v75;
          *a2 = v73;
          *(a2 + 1) = v72;
          *(a2 + 2) = v71;
          *(a2 + 3) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 6;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 64);
      v7 = *(a1 + 64);
      v8 = *(a2 - 64);
      v4 = (a2 - 64);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 < v7)
        {
LABEL_12:
          v11 = *(a1 + 32);
          v10 = *(a1 + 48);
          v13 = *a1;
          v12 = *(a1 + 16);
          v14 = v4[3];
          v16 = *v4;
          v15 = v4[1];
          *(a1 + 32) = v4[2];
          *(a1 + 48) = v14;
          *a1 = v16;
          *(a1 + 16) = v15;
LABEL_13:
          *v4 = v13;
          v4[1] = v12;
          result = 1;
          v4[2] = v11;
          v4[3] = v10;
          return result;
        }

        v72 = *(a1 + 32);
        v71 = *(a1 + 48);
        v74 = *a1;
        v73 = *(a1 + 16);
        v75 = *(a1 + 80);
        *a1 = *v6;
        *(a1 + 16) = v75;
        v76 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v76;
        *v6 = v74;
        *(a1 + 80) = v73;
        *(a1 + 96) = v72;
        *(a1 + 112) = v71;
        if (*v4 < *(a1 + 64))
        {
          v11 = *(a1 + 96);
          v10 = *(a1 + 112);
          v13 = *v6;
          v12 = *(a1 + 80);
          v77 = v4[3];
          v79 = *v4;
          v78 = v4[1];
          *(a1 + 96) = v4[2];
          *(a1 + 112) = v77;
          *v6 = v79;
          *(a1 + 80) = v78;
          goto LABEL_13;
        }

        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v41 = *(a1 + 96);
      v40 = *(a1 + 112);
      v43 = *v6;
      v42 = *(a1 + 80);
      v44 = v4[3];
      v46 = *v4;
      v45 = v4[1];
      *(a1 + 96) = v4[2];
      *(a1 + 112) = v44;
      *v6 = v46;
      *(a1 + 80) = v45;
      *v4 = v43;
      v4[1] = v42;
      v4[2] = v41;
      v4[3] = v40;
LABEL_50:
      if (*(a1 + 64) < *a1)
      {
        v119 = *(a1 + 32);
        v118 = *(a1 + 48);
        v121 = *a1;
        v120 = *(a1 + 16);
        v122 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v122;
        v123 = v6[3];
        *(a1 + 32) = v6[2];
        *(a1 + 48) = v123;
        *v6 = v121;
        v6[1] = v120;
        result = 1;
        v6[2] = v119;
        v6[3] = v118;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), (a2 - 64), a3);
      return 1;
    }

    v6 = (a1 + 64);
    v29 = *(a1 + 64);
    v30 = (a1 + 128);
    v31 = *(a1 + 128);
    v32 = (a2 - 64);
    v33 = *a1;
    if (v29 >= *a1)
    {
      if (v31 < v29)
      {
        v60 = *(a1 + 96);
        v59 = *(a1 + 112);
        v62 = *v6;
        v61 = *(a1 + 80);
        v63 = *(a1 + 144);
        *v6 = *v30;
        *(a1 + 80) = v63;
        v64 = *(a1 + 176);
        *(a1 + 96) = *(a1 + 160);
        *(a1 + 112) = v64;
        *v30 = v62;
        *(a1 + 144) = v61;
        *(a1 + 160) = v60;
        *(a1 + 176) = v59;
        if (*v6 < v33)
        {
          v66 = *(a1 + 32);
          v65 = *(a1 + 48);
          v68 = *a1;
          v67 = *(a1 + 16);
          v69 = *(a1 + 80);
          *a1 = *v6;
          *(a1 + 16) = v69;
          v70 = *(a1 + 112);
          *(a1 + 32) = *(a1 + 96);
          *(a1 + 48) = v70;
          *v6 = v68;
          *(a1 + 80) = v67;
          *(a1 + 96) = v66;
          *(a1 + 112) = v65;
        }
      }

      goto LABEL_47;
    }

    if (v31 >= v29)
    {
      v98 = *(a1 + 32);
      v97 = *(a1 + 48);
      v100 = *a1;
      v99 = *(a1 + 16);
      v101 = *(a1 + 80);
      *a1 = *v6;
      *(a1 + 16) = v101;
      v102 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v102;
      *v6 = v100;
      *(a1 + 80) = v99;
      *(a1 + 96) = v98;
      *(a1 + 112) = v97;
      if (v31 >= *(a1 + 64))
      {
        goto LABEL_47;
      }

      v35 = *(a1 + 96);
      v34 = *(a1 + 112);
      v37 = *v6;
      v36 = *(a1 + 80);
      v103 = *(a1 + 144);
      *v6 = *v30;
      *(a1 + 80) = v103;
      v104 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v104;
    }

    else
    {
      v35 = *(a1 + 32);
      v34 = *(a1 + 48);
      v37 = *a1;
      v36 = *(a1 + 16);
      v38 = *(a1 + 144);
      *a1 = *v30;
      *(a1 + 16) = v38;
      v39 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v39;
    }

    *v30 = v37;
    *(a1 + 144) = v36;
    *(a1 + 160) = v35;
    *(a1 + 176) = v34;
LABEL_47:
    if (*v32 >= *v30)
    {
      return 1;
    }

    v106 = *(a1 + 160);
    v105 = *(a1 + 176);
    v108 = *v30;
    v107 = *(a1 + 144);
    v109 = *(a2 - 16);
    v111 = *v32;
    v110 = *(a2 - 48);
    *(a1 + 160) = *(a2 - 32);
    *(a1 + 176) = v109;
    *v30 = v111;
    *(a1 + 144) = v110;
    *v32 = v108;
    *(a2 - 48) = v107;
    *(a2 - 32) = v106;
    *(a2 - 16) = v105;
    if (*v30 >= *v6)
    {
      return 1;
    }

    v113 = *(a1 + 96);
    v112 = *(a1 + 112);
    v115 = *v6;
    v114 = *(a1 + 80);
    v116 = *(a1 + 144);
    *v6 = *v30;
    *(a1 + 80) = v116;
    v117 = *(a1 + 176);
    *(a1 + 96) = *(a1 + 160);
    *(a1 + 112) = v117;
    *v30 = v115;
    *(a1 + 144) = v114;
    *(a1 + 160) = v113;
    *(a1 + 176) = v112;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 64);
    v4 = (a2 - 64);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v18 = (a1 + 128);
  v19 = *(a1 + 128);
  v20 = (a1 + 64);
  v21 = *(a1 + 64);
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 < v21)
    {
      v48 = *(a1 + 96);
      v47 = *(a1 + 112);
      v50 = *v20;
      v49 = *(a1 + 80);
      v51 = *(a1 + 144);
      *v20 = *v18;
      *(a1 + 80) = v51;
      v52 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v52;
      *v18 = v50;
      *(a1 + 144) = v49;
      *(a1 + 160) = v48;
      *(a1 + 176) = v47;
      if (*v20 < v22)
      {
        v54 = *(a1 + 32);
        v53 = *(a1 + 48);
        v56 = *a1;
        v55 = *(a1 + 16);
        v57 = *(a1 + 80);
        *a1 = *v20;
        *(a1 + 16) = v57;
        v58 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v58;
        *v20 = v56;
        *(a1 + 80) = v55;
        *(a1 + 96) = v54;
        *(a1 + 112) = v53;
      }
    }
  }

  else
  {
    if (v19 >= v21)
    {
      v81 = *(a1 + 32);
      v80 = *(a1 + 48);
      v83 = *a1;
      v82 = *(a1 + 16);
      v84 = *(a1 + 80);
      *a1 = *v20;
      *(a1 + 16) = v84;
      v85 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v85;
      *v20 = v83;
      *(a1 + 80) = v82;
      *(a1 + 96) = v81;
      *(a1 + 112) = v80;
      if (v19 >= *(a1 + 64))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 96);
      v23 = *(a1 + 112);
      v26 = *v20;
      v25 = *(a1 + 80);
      v86 = *(a1 + 144);
      *v20 = *v18;
      *(a1 + 80) = v86;
      v87 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v87;
    }

    else
    {
      v24 = *(a1 + 32);
      v23 = *(a1 + 48);
      v26 = *a1;
      v25 = *(a1 + 16);
      v27 = *(a1 + 144);
      *a1 = *v18;
      *(a1 + 16) = v27;
      v28 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v28;
    }

    *v18 = v26;
    *(a1 + 144) = v25;
    *(a1 + 160) = v24;
    *(a1 + 176) = v23;
  }

LABEL_33:
  v88 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v89 = 0;
  v90 = 0;
  while (1)
  {
    v91 = *v88;
    if (*v88 < *v18)
    {
      v124 = *(v88 + 4);
      v125 = *(v88 + 20);
      *v126 = *(v88 + 36);
      *&v126[12] = *(v88 + 48);
      v92 = v89;
      while (1)
      {
        v93 = a1 + v92;
        v94 = *(a1 + v92 + 144);
        *(v93 + 192) = *(a1 + v92 + 128);
        *(v93 + 208) = v94;
        v95 = *(a1 + v92 + 176);
        *(v93 + 224) = *(a1 + v92 + 160);
        *(v93 + 240) = v95;
        if (v92 == -128)
        {
          break;
        }

        v92 -= 64;
        if (v91 >= *(v93 + 64))
        {
          v96 = a1 + v92 + 192;
          goto LABEL_41;
        }
      }

      v96 = a1;
LABEL_41:
      *v96 = v91;
      *(v96 + 4) = v124;
      *(v96 + 20) = v125;
      *(v96 + 36) = *v126;
      *(v96 + 48) = *&v126[12];
      if (++v90 == 8)
      {
        return v88 + 64 == a2;
      }
    }

    v18 = v88;
    v89 += 64;
    v88 += 64;
    if (v88 == a2)
    {
      return 1;
    }
  }
}