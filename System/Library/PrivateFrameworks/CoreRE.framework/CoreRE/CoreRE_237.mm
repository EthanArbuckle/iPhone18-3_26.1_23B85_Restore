void std::vector<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(&v22, v12, v9, a1);
    v13 = v24;
    v15 = a2[1];
    v14 = a2[2];
    *v24 = *a2;
    *(v13 + 16) = v15;
    *(v13 + 32) = v14;
    *&v24 = v13 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = &v23[-v16];
    memcpy(&v23[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    v19 = *(a1 + 16);
    v20 = v24;
    *(a1 + 8) = v24;
    *&v24 = v18;
    *(&v24 + 1) = v19;
    v22 = v18;
    v23 = v18;
    if (v18)
    {
      v21 = v20;
      operator delete(v18);
      v20 = v21;
    }

    v8 = v20;
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v5[1] = a2[1];
    v5[2] = v7;
    *v5 = v6;
    v8 = v5 + 3;
  }

  *(a1 + 8) = v8;
}

void re::pathprocessing::getBezierIslands(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v19, 0, sizeof(v19));
  re::pathprocessing::IndexedMesh::flatten(a1, &v20, &v19);
  re::pathprocessing::PathTopologyGenerator::getLoops(&v20, &v19, a2, v16);
  if (v16[0])
  {
    v6 = v17;
    if (v17 == *(&v17 + 1))
    {
LABEL_6:
      v8 = v18[0];
      v17 = 0uLL;
      v18[0] = 0;
      *a3 = 1;
      *(a3 + 8) = v6;
      *(a3 + 24) = v8;
      v13 = 0;
      v12 = 0uLL;
      v23 = &v12;
      std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v23);
    }

    else
    {
      v7 = v17;
      while (*v7 != v7[1])
      {
        v7 += 6;
        if (v7 == *(&v17 + 1))
        {
          goto LABEL_6;
        }
      }

      v9 = v12;
      v10 = v13;
      v11 = v14;
      *a3 = 0;
      *(a3 + 8) = 4;
      *(a3 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
      *(a3 + 48) = v11;
    }
  }

  else
  {
    v12 = v17;
    re::DynamicString::DynamicString(&v13, v18);
    *a3 = 0;
    *(a3 + 8) = v12;
    *(a3 + 24) = v13;
    *(a3 + 48) = v15;
    *(a3 + 32) = v14;
  }

  re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(v16);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void *std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 48 * a3;
  result[2] = 48 * a3;
  result[3] = 0;
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[0];
        if (result.n128_f32[0] < *(v12 + 32))
        {
          *v251 = *(v12 + 16);
          *&v251[16] = *(v12 + 32);
          v217 = *v12;
          v118 = a2[-3];
          v119 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v118;
          *(v12 + 16) = v119;
          result = v217;
          *(a2 - 20) = *&v251[12];
          a2[-3] = v217;
          a2[-2] = *v251;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v124 = *(v12 + 80);
      v125 = *(v12 + 128);
      if (v124 >= *(v12 + 32))
      {
        if (v125 < v124)
        {
          v174 = *(v12 + 48);
          *v258 = *(v12 + 64);
          *&v258[16] = *(v12 + 80);
          v175 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v175;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v174;
          *(v12 + 112) = *v258;
          result = *&v258[12];
          *(v12 + 124) = *&v258[12];
          if (*(v12 + 80) < *(v12 + 32))
          {
            *v259 = *(v12 + 16);
            *&v259[16] = *(v12 + 32);
            v223 = *v12;
            v176 = *(v12 + 64);
            *v12 = *(v12 + 48);
            *(v12 + 16) = v176;
            *(v12 + 28) = *(v12 + 76);
            *(v12 + 48) = v223;
            *(v12 + 64) = *v259;
            result = *&v259[12];
            *(v12 + 76) = *&v259[12];
          }
        }
      }

      else
      {
        if (v125 < v124)
        {
          *v253 = *(v12 + 16);
          *&v253[16] = *(v12 + 32);
          v219 = *v12;
          v126 = *(v12 + 112);
          *v12 = *(v12 + 96);
          *(v12 + 16) = v126;
          *(v12 + 28) = *(v12 + 124);
          *(v12 + 96) = v219;
          *(v12 + 112) = *v253;
          goto LABEL_184;
        }

        *v262 = *(v12 + 16);
        *&v262[16] = *(v12 + 32);
        v226 = *v12;
        v184 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v184;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v226;
        *(v12 + 64) = *v262;
        *(v12 + 76) = *&v262[12];
        if (v125 < *(v12 + 80))
        {
          v185 = *(v12 + 48);
          *v253 = *(v12 + 64);
          *&v253[16] = *(v12 + 80);
          v186 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v186;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v185;
          *(v12 + 112) = *v253;
LABEL_184:
          result = *&v253[12];
          *(v12 + 124) = *&v253[12];
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[0];
      if (result.n128_f32[0] >= *(v12 + 128))
      {
        return result;
      }

      *v263 = *(v12 + 112);
      *&v263[16] = *(v12 + 128);
      result = *(v12 + 96);
      v188 = *v9;
      v187 = a2[-2];
      *(v12 + 124) = *(a2 - 20);
      *(v12 + 96) = v188;
      *(v12 + 112) = v187;
      *(a2 - 20) = *&v263[12];
      *v9 = result;
      a2[-2] = *v263;
      result.n128_u32[0] = *(v12 + 128);
      if (result.n128_f32[0] >= *(v12 + 80))
      {
        return result;
      }

      v189 = *(v12 + 48);
      *v264 = *(v12 + 64);
      *&v264[16] = *(v12 + 80);
      v190 = *(v12 + 112);
      *(v12 + 48) = *(v12 + 96);
      *(v12 + 64) = v190;
      *(v12 + 76) = *(v12 + 124);
      *(v12 + 96) = v189;
      *(v12 + 112) = *v264;
      result = *&v264[12];
      *(v12 + 124) = *&v264[12];
LABEL_188:
      result.n128_u32[0] = *(v12 + 80);
      if (result.n128_f32[0] < *(v12 + 32))
      {
        *v265 = *(v12 + 16);
        *&v265[16] = *(v12 + 32);
        v227 = *v12;
        v191 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v191;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v227;
        *(v12 + 64) = *v265;
        result = *&v265[12];
        *(v12 + 76) = *&v265[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,0>(v12, (v12 + 48), (v12 + 96), (v12 + 144), &a2[-3]).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 1151)
    {
      v127 = (v12 + 48);
      v129 = v12 == a2 || v127 == a2;
      if (a4)
      {
        if (!v129)
        {
          v130 = 0;
          v131 = v12;
          do
          {
            v132 = v127;
            result.n128_u32[0] = *(v131 + 80);
            if (result.n128_f32[0] < *(v131 + 32))
            {
              v220 = *v127;
              v254 = v127[1];
              v133 = *(v131 + 84);
              v134 = v130;
              while (1)
              {
                v135 = (v12 + v134);
                v136 = *(v12 + v134 + 16);
                v135[3] = *(v12 + v134);
                v135[4] = v136;
                *(v135 + 76) = *(v12 + v134 + 28);
                if (!v134)
                {
                  break;
                }

                v134 -= 48;
                if (result.n128_f32[0] >= *(v135 - 4))
                {
                  v137 = v12 + v134 + 48;
                  goto LABEL_130;
                }
              }

              v137 = v12;
LABEL_130:
              *v137 = v220;
              *(v137 + 16) = v254;
              *(v137 + 32) = result.n128_u32[0];
              *(v137 + 36) = v133;
            }

            v127 = v132 + 3;
            v130 += 48;
            v131 = v132;
          }

          while (&v132[3] != a2);
        }
      }

      else if (!v129)
      {
        do
        {
          v177 = v127;
          result.n128_u32[0] = *(a1 + 80);
          if (result.n128_f32[0] < *(a1 + 32))
          {
            v224 = *v127;
            v260 = v127[1];
            v178 = *(a1 + 84);
            do
            {
              v179 = v127[-2];
              *v127 = v127[-3];
              v127[1] = v179;
              *(v127 + 28) = *(v127 - 20);
              v180 = v127[-4].n128_f32[0];
              v127 -= 3;
            }

            while (result.n128_f32[0] < v180);
            *v127 = v224;
            v127[1] = v260;
            v127[2].n128_u32[0] = result.n128_u32[0];
            *(v127[2].n128_u64 + 4) = v178;
          }

          v127 = (v177 + 48);
          a1 = v177;
        }

        while ((v177 + 48) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v138 = (v14 - 2) >> 1;
        v139 = v138;
        do
        {
          v140 = v139;
          if (v138 >= v139)
          {
            v141 = (2 * v139) | 1;
            v142 = v12 + 48 * v141;
            if (2 * v140 + 2 < v14 && *(v142 + 32) < *(v142 + 80))
            {
              v142 += 48;
              v141 = 2 * v140 + 2;
            }

            v143 = v12 + 48 * v140;
            v144 = *(v143 + 32);
            if (*(v142 + 32) >= v144)
            {
              v221 = *v143;
              v255 = *(v143 + 16);
              v145 = *(v143 + 36);
              do
              {
                v146 = v143;
                v143 = v142;
                v147 = *v142;
                v148 = *(v142 + 16);
                *(v146 + 28) = *(v142 + 28);
                *v146 = v147;
                v146[1] = v148;
                if (v138 < v141)
                {
                  break;
                }

                v149 = 2 * v141;
                v141 = (2 * v141) | 1;
                v142 = v12 + 48 * v141;
                v150 = v149 + 2;
                if (v150 < v14 && *(v142 + 32) < *(v142 + 80))
                {
                  v142 += 48;
                  v141 = v150;
                }
              }

              while (*(v142 + 32) >= v144);
              *v143 = v221;
              *(v143 + 16) = v255;
              *(v143 + 32) = v144;
              *(v143 + 36) = v145;
            }
          }

          v139 = v140 - 1;
        }

        while (v140);
        v151 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        do
        {
          v152 = 0;
          *v256 = *(v12 + 16);
          *&v256[16] = *(v12 + 32);
          v222 = *v12;
          v153 = v12;
          do
          {
            v154 = &v153[3 * v152];
            v155 = (v154 + 12);
            v156 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v151)
            {
              v152 = v156;
            }

            else
            {
              v157 = v154[20];
              v158 = v154[32];
              v159 = (v154 + 24);
              if (v157 >= v158)
              {
                v152 = v156;
              }

              else
              {
                v155 = v159;
              }
            }

            v160 = *v155;
            v161 = v155[1];
            *(v153 + 28) = *(&v155[1] + 12);
            *v153 = v160;
            v153[1] = v161;
            v153 = v155;
          }

          while (v152 <= ((v151 - 2) >> 1));
          a2 -= 3;
          if (v155 == a2)
          {
            result = v222;
            *(v155 + 28) = *&v256[12];
            *v155 = v222;
            v155[1] = *v256;
          }

          else
          {
            v162 = *a2;
            v163 = a2[1];
            *(v155 + 28) = *(a2 + 28);
            *v155 = v162;
            v155[1] = v163;
            result = v222;
            *(a2 + 28) = *&v256[12];
            *a2 = v222;
            a2[1] = *v256;
            v164 = &v155[3] - v12;
            if (v164 >= 49)
            {
              v165 = (-2 - 0x5555555555555555 * (v164 >> 4)) >> 1;
              v166 = v12 + 48 * v165;
              result.n128_u32[0] = v155[2].n128_u32[0];
              if (*(v166 + 32) < result.n128_f32[0])
              {
                v194 = *v155;
                v197 = v155[1];
                v167 = *(v155[2].n128_u64 + 4);
                do
                {
                  v168 = v155;
                  v155 = v166;
                  v169 = *v166;
                  v170 = *(v166 + 16);
                  *(v168 + 28) = *(v166 + 28);
                  *v168 = v169;
                  v168[1] = v170;
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = v12 + 48 * v165;
                }

                while (*(v166 + 32) < result.n128_f32[0]);
                *v155 = v194;
                v155[1] = v197;
                v155[2].n128_u32[0] = result.n128_u32[0];
                *(v155[2].n128_u64 + 4) = v167;
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 48 * (v14 >> 1);
    v17 = a2[-1].n128_f32[0];
    if (v13 >= 0x1801)
    {
      v18 = *(v16 + 32);
      if (v18 >= *(v12 + 32))
      {
        if (v17 < v18)
        {
          *v230 = *(v16 + 16);
          *&v230[16] = *(v16 + 32);
          v200 = *v16;
          v24 = *v9;
          v25 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 20) = *&v230[12];
          *v9 = v200;
          a2[-2] = *v230;
          if (*(v16 + 32) < *(v12 + 32))
          {
            *v231 = *(v12 + 16);
            *&v231[16] = *(v12 + 32);
            v201 = *v12;
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 28) = *(v16 + 28);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 28) = *&v231[12];
            *v16 = v201;
            *(v16 + 16) = *v231;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          *v228 = *(v12 + 16);
          *&v228[16] = *(v12 + 32);
          v198 = *v12;
          v19 = *v9;
          v20 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        *v234 = *(v12 + 16);
        *&v234[16] = *(v12 + 32);
        v204 = *v12;
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 28) = *(v16 + 28);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 28) = *&v234[12];
        *v16 = v204;
        *(v16 + 16) = *v234;
        if (a2[-1].n128_f32[0] < *(v16 + 32))
        {
          *v228 = *(v16 + 16);
          *&v228[16] = *(v16 + 32);
          v198 = *v16;
          v34 = *v9;
          v35 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 20) = *&v228[12];
          *v9 = v198;
          a2[-2] = *v228;
        }
      }

      v36 = v12 + 48 * v15;
      v37 = (v36 - 48);
      v38 = *(v36 - 16);
      v39 = a2[-4].n128_f32[0];
      if (v38 >= *(v12 + 80))
      {
        if (v39 < v38)
        {
          *v236 = *(v36 - 32);
          *&v236[16] = *(v36 - 16);
          v205 = *v37;
          v44 = *v10;
          v45 = a2[-5];
          *(v36 - 20) = *(a2 - 68);
          *v37 = v44;
          *(v36 - 32) = v45;
          *(a2 - 68) = *&v236[12];
          *v10 = v205;
          a2[-5] = *v236;
          if (*(v36 - 16) < *(v12 + 80))
          {
            *v237 = *(v12 + 64);
            *&v237[16] = *(v12 + 80);
            v46 = *(v12 + 48);
            v48 = *v37;
            v47 = *(v36 - 32);
            *(v12 + 76) = *(v36 - 20);
            *(v12 + 48) = v48;
            *(v12 + 64) = v47;
            *(v36 - 20) = *&v237[12];
            *v37 = v46;
            *(v36 - 32) = *v237;
          }
        }
      }

      else
      {
        if (v39 < v38)
        {
          v40 = *(v12 + 64);
          *&v235[12] = v40.n128_u32[3];
          *&v235[16] = *(v12 + 80);
          v41 = *(v12 + 48);
          v43 = *v10;
          v42 = a2[-5];
          *(v12 + 76) = *(a2 - 68);
          *(v12 + 48) = v43;
          *(v12 + 64) = v42;
          goto LABEL_38;
        }

        *v239 = *(v12 + 64);
        *&v239[16] = *(v12 + 80);
        v53 = *(v12 + 48);
        v55 = *v37;
        v54 = *(v36 - 32);
        *(v12 + 76) = *(v36 - 20);
        *(v12 + 48) = v55;
        *(v12 + 64) = v54;
        *(v36 - 20) = *&v239[12];
        *v37 = v53;
        *(v36 - 32) = *v239;
        if (a2[-4].n128_f32[0] < *(v36 - 16))
        {
          *v235 = *(v36 - 32);
          *&v235[16] = *(v36 - 16);
          v207 = *v37;
          v56 = *v10;
          v57 = a2[-5];
          *(v36 - 20) = *(a2 - 68);
          *v37 = v56;
          *(v36 - 32) = v57;
          v41 = v207;
          v40 = *v235;
LABEL_38:
          *(a2 - 68) = *&v235[12];
          *v10 = v41;
          a2[-5] = v40;
        }
      }

      v58 = v12 + 48 * v15;
      v59 = (v58 + 48);
      v60 = *(v58 + 80);
      v61 = a2[-7].n128_f32[0];
      if (v60 >= *(v12 + 128))
      {
        if (v61 < v60)
        {
          *v241 = *(v58 + 64);
          *&v241[16] = *(v58 + 80);
          v208 = *v59;
          v66 = *v11;
          v67 = a2[-8];
          *(v58 + 76) = *(a2 - 116);
          *v59 = v66;
          *(v58 + 64) = v67;
          *(a2 - 116) = *&v241[12];
          *v11 = v208;
          a2[-8] = *v241;
          if (*(v58 + 80) < *(v12 + 128))
          {
            *v242 = *(v12 + 112);
            *&v242[16] = *(v12 + 128);
            v68 = *(v12 + 96);
            v70 = *v59;
            v69 = *(v58 + 64);
            *(v12 + 124) = *(v58 + 76);
            *(v12 + 96) = v70;
            *(v12 + 112) = v69;
            *(v58 + 76) = *&v242[12];
            *v59 = v68;
            *(v58 + 64) = *v242;
          }
        }
      }

      else
      {
        if (v61 < v60)
        {
          v62 = *(v12 + 112);
          *&v240[12] = v62.n128_u32[3];
          *&v240[16] = *(v12 + 128);
          v63 = *(v12 + 96);
          v65 = *v11;
          v64 = a2[-8];
          *(v12 + 124) = *(a2 - 116);
          *(v12 + 96) = v65;
          *(v12 + 112) = v64;
          goto LABEL_47;
        }

        *v243 = *(v12 + 112);
        *&v243[16] = *(v12 + 128);
        v71 = *(v12 + 96);
        v73 = *v59;
        v72 = *(v58 + 64);
        *(v12 + 124) = *(v58 + 76);
        *(v12 + 96) = v73;
        *(v12 + 112) = v72;
        *(v58 + 76) = *&v243[12];
        *v59 = v71;
        *(v58 + 64) = *v243;
        if (a2[-7].n128_f32[0] < *(v58 + 80))
        {
          *v240 = *(v58 + 64);
          *&v240[16] = *(v58 + 80);
          v209 = *v59;
          v74 = *v11;
          v75 = a2[-8];
          *(v58 + 76) = *(a2 - 116);
          *v59 = v74;
          *(v58 + 64) = v75;
          v63 = v209;
          v62 = *v240;
LABEL_47:
          *(a2 - 116) = *&v240[12];
          *v11 = v63;
          a2[-8] = v62;
        }
      }

      v76 = *(v16 + 32);
      v77 = *(v58 + 80);
      if (v76 >= v37[2].n128_f32[0])
      {
        if (v77 < v76)
        {
          *v245 = *(v16 + 16);
          *&v245[16] = *(v16 + 32);
          v211 = *v16;
          v79 = *(v58 + 64);
          *v16 = *v59;
          *(v16 + 16) = v79;
          *(v16 + 28) = *(v58 + 76);
          *(v58 + 76) = *&v245[12];
          *v59 = v211;
          *(v58 + 64) = *v245;
          if (*(v16 + 32) < v37[2].n128_f32[0])
          {
            *v246 = v37[1];
            *&v246[16] = v37[2];
            v212 = *v37;
            v80 = *(v16 + 16);
            *v37 = *v16;
            v37[1] = v80;
            *(v37 + 28) = *(v16 + 28);
            *(v16 + 28) = *&v246[12];
            *v16 = v212;
            *(v16 + 16) = *v246;
          }
        }
      }

      else
      {
        if (v77 < v76)
        {
          *v244 = v37[1];
          *&v244[16] = v37[2];
          v210 = *v37;
          v78 = *(v58 + 64);
          *v37 = *v59;
          v37[1] = v78;
          *(v37 + 28) = *(v58 + 76);
          goto LABEL_56;
        }

        *v247 = v37[1];
        *&v247[16] = v37[2];
        v213 = *v37;
        v81 = *(v16 + 16);
        *v37 = *v16;
        v37[1] = v81;
        *(v37 + 28) = *(v16 + 28);
        *(v16 + 28) = *&v247[12];
        *v16 = v213;
        *(v16 + 16) = *v247;
        if (*(v58 + 80) < *(v16 + 32))
        {
          *v244 = *(v16 + 16);
          *&v244[16] = *(v16 + 32);
          v210 = *v16;
          v82 = *(v58 + 64);
          *v16 = *v59;
          *(v16 + 16) = v82;
          *(v16 + 28) = *(v58 + 76);
LABEL_56:
          *(v58 + 76) = *&v244[12];
          *v59 = v210;
          *(v58 + 64) = *v244;
        }
      }

      *v248 = *(v12 + 16);
      *&v248[16] = *(v12 + 32);
      v214 = *v12;
      v83 = *v16;
      v84 = *(v16 + 16);
      *(v12 + 28) = *(v16 + 28);
      *v12 = v83;
      *(v12 + 16) = v84;
      result = v214;
      *(v16 + 28) = *&v248[12];
      *v16 = v214;
      *(v16 + 16) = *v248;
      goto LABEL_58;
    }

    v21 = *(v12 + 32);
    if (v21 >= *(v16 + 32))
    {
      if (v17 < v21)
      {
        *v232 = *(v12 + 16);
        *&v232[16] = *(v12 + 32);
        v202 = *v12;
        v28 = *v9;
        v29 = a2[-2];
        *(v12 + 28) = *(a2 - 20);
        *v12 = v28;
        *(v12 + 16) = v29;
        result = v202;
        *(a2 - 20) = *&v232[12];
        *v9 = v202;
        a2[-2] = *v232;
        if (*(v12 + 32) < *(v16 + 32))
        {
          *v233 = *(v16 + 16);
          *&v233[16] = *(v16 + 32);
          v203 = *v16;
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 28) = *(v12 + 28);
          *v16 = v30;
          *(v16 + 16) = v31;
          result = v203;
          *(v12 + 28) = *&v233[12];
          *v12 = v203;
          *(v12 + 16) = *v233;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      *v229 = *(v16 + 16);
      *&v229[16] = *(v16 + 32);
      v199 = *v16;
      v22 = *v9;
      v23 = a2[-2];
      *(v16 + 28) = *(a2 - 20);
      *v16 = v22;
      *(v16 + 16) = v23;
LABEL_35:
      result = v199;
      *(a2 - 20) = *&v229[12];
      *v9 = v199;
      a2[-2] = *v229;
      goto LABEL_58;
    }

    *v238 = *(v16 + 16);
    *&v238[16] = *(v16 + 32);
    v206 = *v16;
    v49 = *v12;
    v50 = *(v12 + 16);
    *(v16 + 28) = *(v12 + 28);
    *v16 = v49;
    *(v16 + 16) = v50;
    result = v206;
    *(v12 + 28) = *&v238[12];
    *v12 = v206;
    *(v12 + 16) = *v238;
    if (a2[-1].n128_f32[0] < *(v12 + 32))
    {
      *v229 = *(v12 + 16);
      *&v229[16] = *(v12 + 32);
      v199 = *v12;
      v51 = *v9;
      v52 = a2[-2];
      *(v12 + 28) = *(a2 - 20);
      *v12 = v51;
      *(v12 + 16) = v52;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 32);
LABEL_61:
      v85 = 0;
      v192 = *v12;
      v195 = *(v12 + 16);
      v86 = *(v12 + 36);
      do
      {
        v87 = *(v12 + v85 + 80);
        v85 += 48;
      }

      while (v87 < result.n128_f32[0]);
      v88 = v12 + v85;
      v89 = a2;
      if (v85 == 48)
      {
        v92 = a2;
        while (v88 < v92)
        {
          v90 = v92 - 3;
          v93 = v92[-1].n128_f32[0];
          v92 -= 3;
          if (v93 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v90 = v92;
      }

      else
      {
        do
        {
          v90 = v89 - 3;
          v91 = v89[-1].n128_f32[0];
          v89 -= 3;
        }

        while (v91 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v88;
      if (v88 < v90)
      {
        v94 = v90;
        do
        {
          *v249 = *(v12 + 16);
          *&v249[16] = *(v12 + 32);
          v215 = *v12;
          v95 = *v94;
          v96 = v94[1];
          *(v12 + 28) = *(v94 + 28);
          *v12 = v95;
          *(v12 + 16) = v96;
          *(v94 + 28) = *&v249[12];
          *v94 = v215;
          v94[1] = *v249;
          do
          {
            v97 = *(v12 + 80);
            v12 += 48;
          }

          while (v97 < result.n128_f32[0]);
          do
          {
            v98 = v94[-1].n128_f32[0];
            v94 -= 3;
          }

          while (v98 >= result.n128_f32[0]);
        }

        while (v12 < v94);
      }

      v99 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v100 = *v99;
        v101 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v100;
        *(a1 + 16) = v101;
      }

      *v99 = v192;
      *(v12 - 32) = v195;
      *(v12 - 16) = result.n128_u32[0];
      *(v12 - 12) = v86;
      if (v88 < v90)
      {
        goto LABEL_82;
      }

      v102 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *>(a1, v12 - 48);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *>(v12, a2))
      {
        a2 = (v12 - 48);
        if (!v102)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v102)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(a1, v12 - 48, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 32);
      if (*(v12 - 16) < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v193 = *v12;
      v196 = *(v12 + 16);
      if (result.n128_f32[0] >= a2[-1].n128_f32[0])
      {
        v105 = v12 + 48;
        do
        {
          v12 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v106 = *(v105 + 32);
          v105 += 48;
        }

        while (result.n128_f32[0] >= v106);
      }

      else
      {
        v103 = v12;
        do
        {
          v12 = v103 + 48;
          v104 = *(v103 + 80);
          v103 += 48;
        }

        while (result.n128_f32[0] >= v104);
      }

      v107 = a2;
      if (v12 < a2)
      {
        v108 = a2;
        do
        {
          v107 = v108 - 3;
          v109 = v108[-1].n128_f32[0];
          v108 -= 3;
        }

        while (result.n128_f32[0] < v109);
      }

      v110 = *(a1 + 36);
      while (v12 < v107)
      {
        *v250 = *(v12 + 16);
        *&v250[16] = *(v12 + 32);
        v216 = *v12;
        v111 = *v107;
        v112 = v107[1];
        *(v12 + 28) = *(v107 + 28);
        *v12 = v111;
        *(v12 + 16) = v112;
        *(v107 + 28) = *&v250[12];
        *v107 = v216;
        v107[1] = *v250;
        do
        {
          v113 = *(v12 + 80);
          v12 += 48;
        }

        while (result.n128_f32[0] >= v113);
        do
        {
          v114 = v107[-1].n128_f32[0];
          v107 -= 3;
        }

        while (result.n128_f32[0] < v114);
      }

      v115 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v116 = *v115;
        v117 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v116;
        *(a1 + 16) = v117;
      }

      a4 = 0;
      *v115 = v193;
      *(v12 - 32) = v196;
      *(v12 - 16) = result.n128_u32[0];
      *(v12 - 12) = v110;
    }
  }

  result.n128_u32[0] = *(v12 + 80);
  v120 = a2[-1].n128_f32[0];
  if (result.n128_f32[0] >= *(v12 + 32))
  {
    if (v120 >= result.n128_f32[0])
    {
      return result;
    }

    *v257 = *(v12 + 64);
    *&v257[16] = *(v12 + 80);
    result = *(v12 + 48);
    v173 = *v9;
    v172 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v173;
    *(v12 + 64) = v172;
    *(a2 - 20) = *&v257[12];
    *v9 = result;
    a2[-2] = *v257;
    goto LABEL_188;
  }

  if (v120 >= result.n128_f32[0])
  {
    *v261 = *(v12 + 16);
    *&v261[16] = *(v12 + 32);
    v225 = *v12;
    v181 = *(v12 + 64);
    *v12 = *(v12 + 48);
    *(v12 + 16) = v181;
    *(v12 + 28) = *(v12 + 76);
    *(v12 + 48) = v225;
    *(v12 + 64) = *v261;
    result = *&v261[12];
    *(v12 + 76) = *&v261[12];
    result.n128_u32[0] = a2[-1].n128_u32[0];
    if (result.n128_f32[0] >= *(v12 + 80))
    {
      return result;
    }

    v123 = *(v12 + 64);
    *&v252[12] = v123.n128_u32[3];
    *&v252[16] = *(v12 + 80);
    result = *(v12 + 48);
    v183 = *v9;
    v182 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v183;
    *(v12 + 64) = v182;
  }

  else
  {
    *v252 = *(v12 + 16);
    *&v252[16] = *(v12 + 32);
    v218 = *v12;
    v121 = *v9;
    v122 = a2[-2];
    *(v12 + 28) = *(a2 - 20);
    *v12 = v121;
    *(v12 + 16) = v122;
    result = v218;
    v123 = *v252;
  }

  *(a2 - 20) = *&v252[12];
  *v9 = result;
  a2[-2] = v123;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,0>(_OWORD *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  if (v5 >= *(a1 + 8))
  {
    if (v6 < v5)
    {
      v11 = *a2;
      *v44 = a2[1];
      *&v44[16] = a2[2];
      v12 = *(a3 + 28);
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      *(a2 + 28) = v12;
      *a3 = v11;
      a3[1] = *v44;
      result = *&v44[12];
      *(a3 + 28) = *&v44[12];
      if (*(a2 + 8) < *(a1 + 8))
      {
        v15 = *a1;
        *v45 = a1[1];
        *&v45[16] = a1[2];
        v16 = *(a2 + 28);
        v17 = a2[1];
        *a1 = *a2;
        a1[1] = v17;
        *(a1 + 28) = v16;
        *a2 = v15;
        a2[1] = *v45;
        result = *&v45[12];
        *(a2 + 28) = *&v45[12];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = a1[1];
      v8 = *a1;
      *v54 = HIDWORD(v7);
      *&v54[4] = a1[2];
      v9 = *(a3 + 28);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      *(a1 + 28) = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      result = *v54;
      *(a3 + 28) = *v54;
      goto LABEL_10;
    }

    v18 = *a1;
    *v46 = a1[1];
    *&v46[16] = a1[2];
    v19 = *(a2 + 28);
    v20 = a2[1];
    *a1 = *a2;
    a1[1] = v20;
    *(a1 + 28) = v19;
    *a2 = v18;
    a2[1] = *v46;
    result = *&v46[12];
    *(a2 + 28) = *&v46[12];
    if (*(a3 + 8) < *(a2 + 8))
    {
      v7 = a2[1];
      v8 = *a2;
      *v54 = HIDWORD(v7);
      *&v54[4] = a2[2];
      v21 = *(a3 + 28);
      v22 = a3[1];
      *a2 = *a3;
      a2[1] = v22;
      *(a2 + 28) = v21;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 8) < *(a3 + 8))
  {
    v23 = *a3;
    *v47 = a3[1];
    *&v47[16] = a3[2];
    v24 = *(a4 + 28);
    v25 = a4[1];
    *a3 = *a4;
    a3[1] = v25;
    *(a3 + 28) = v24;
    *a4 = v23;
    a4[1] = *v47;
    result = *&v47[12];
    *(a4 + 28) = *&v47[12];
    if (*(a3 + 8) < *(a2 + 8))
    {
      v26 = *a2;
      *v48 = a2[1];
      *&v48[16] = a2[2];
      v27 = *(a3 + 28);
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      *(a2 + 28) = v27;
      *a3 = v26;
      a3[1] = *v48;
      result = *&v48[12];
      *(a3 + 28) = *&v48[12];
      if (*(a2 + 8) < *(a1 + 8))
      {
        v29 = *a1;
        *v49 = a1[1];
        *&v49[16] = a1[2];
        v30 = *(a2 + 28);
        v31 = a2[1];
        *a1 = *a2;
        a1[1] = v31;
        *(a1 + 28) = v30;
        *a2 = v29;
        a2[1] = *v49;
        result = *&v49[12];
        *(a2 + 28) = *&v49[12];
      }
    }
  }

  result.n128_u32[0] = *(a5 + 8);
  if (result.n128_f32[0] < *(a4 + 8))
  {
    v32 = *a4;
    *v50 = a4[1];
    *&v50[16] = a4[2];
    v33 = *(a5 + 28);
    v34 = a5[1];
    *a4 = *a5;
    a4[1] = v34;
    *(a4 + 28) = v33;
    *a5 = v32;
    a5[1] = *v50;
    result = *&v50[12];
    *(a5 + 28) = *&v50[12];
    result.n128_u32[0] = *(a4 + 8);
    if (result.n128_f32[0] < *(a3 + 8))
    {
      v35 = *a3;
      *v51 = a3[1];
      *&v51[16] = a3[2];
      v36 = *(a4 + 28);
      v37 = a4[1];
      *a3 = *a4;
      a3[1] = v37;
      *(a3 + 28) = v36;
      *a4 = v35;
      a4[1] = *v51;
      result = *&v51[12];
      *(a4 + 28) = *&v51[12];
      result.n128_u32[0] = *(a3 + 8);
      if (result.n128_f32[0] < *(a2 + 8))
      {
        v38 = *a2;
        *v52 = a2[1];
        *&v52[16] = a2[2];
        v39 = *(a3 + 28);
        v40 = a3[1];
        *a2 = *a3;
        a2[1] = v40;
        *(a2 + 28) = v39;
        *a3 = v38;
        a3[1] = *v52;
        result = *&v52[12];
        *(a3 + 28) = *&v52[12];
        result.n128_u32[0] = *(a2 + 8);
        if (result.n128_f32[0] < *(a1 + 8))
        {
          v41 = *a1;
          *v53 = a1[1];
          *&v53[16] = a1[2];
          v42 = *(a2 + 28);
          v43 = a2[1];
          *a1 = *a2;
          a1[1] = v43;
          *(a1 + 28) = v42;
          *a2 = v41;
          a2[1] = *v53;
          result = *&v53[12];
          *(a2 + 28) = *&v53[12];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 48);
      v7 = *(a1 + 80);
      v8 = *(a2 - 16);
      if (v7 < *(a1 + 32))
      {
        if (v8 >= v7)
        {
          v36 = *a1;
          *v73 = *(a1 + 16);
          *&v73[16] = *(a1 + 32);
          v37 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v37;
          *(a1 + 28) = *(a1 + 76);
          *(a1 + 48) = v36;
          *(a1 + 64) = *v73;
          *(a1 + 76) = *&v73[12];
          if (*(a2 - 16) >= *(a1 + 80))
          {
            return 1;
          }

          v9 = *(a1 + 64);
          v10 = *(a1 + 48);
          *v80 = HIDWORD(v9);
          *&v80[4] = *(a1 + 80);
          v38 = *(a2 - 20);
          v39 = *(a2 - 32);
          *(a1 + 48) = *v6;
          *(a1 + 64) = v39;
          *(a1 + 76) = v38;
        }

        else
        {
          v9 = *(a1 + 16);
          v10 = *a1;
          *v80 = HIDWORD(v9);
          *&v80[4] = *(a1 + 32);
          v11 = *(a2 - 20);
          v12 = *(a2 - 32);
          *a1 = *v6;
          *(a1 + 16) = v12;
          *(a1 + 28) = v11;
        }

        *v6 = v10;
        *(a2 - 32) = v9;
        *(a2 - 20) = *v80;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v25 = *(a1 + 48);
      *v68 = *(a1 + 64);
      *&v68[16] = *(a1 + 80);
      v26 = *(a2 - 20);
      v27 = *(a2 - 32);
      *(a1 + 48) = *v6;
      *(a1 + 64) = v27;
      *(a1 + 76) = v26;
      *v6 = v25;
      *(a2 - 32) = *v68;
      *(a2 - 20) = *&v68[12];
LABEL_50:
      if (*(a1 + 80) < *(a1 + 32))
      {
        v62 = *a1;
        *v79 = *(a1 + 16);
        *&v79[16] = *(a1 + 32);
        v63 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v63;
        *(a1 + 28) = *(a1 + 76);
        *(a1 + 48) = v62;
        *(a1 + 64) = *v79;
        *(a1 + 76) = *&v79[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48));
      return 1;
    }

    v20 = *(a1 + 80);
    v21 = *(a1 + 32);
    v22 = *(a1 + 128);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v32 = *(a1 + 48);
        *v71 = *(a1 + 64);
        *&v71[16] = *(a1 + 80);
        v33 = *(a1 + 112);
        *(a1 + 48) = *(a1 + 96);
        *(a1 + 64) = v33;
        *(a1 + 76) = *(a1 + 124);
        *(a1 + 96) = v32;
        *(a1 + 112) = *v71;
        *(a1 + 124) = *&v71[12];
        if (*(a1 + 80) < v21)
        {
          v34 = *a1;
          *v72 = *(a1 + 16);
          *&v72[16] = *(a1 + 32);
          v35 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v35;
          *(a1 + 28) = *(a1 + 76);
          *(a1 + 48) = v34;
          *(a1 + 64) = *v72;
          *(a1 + 76) = *&v72[12];
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v52 = *a1;
      *v76 = *(a1 + 16);
      *&v76[16] = *(a1 + 32);
      v53 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v53;
      *(a1 + 28) = *(a1 + 76);
      *(a1 + 48) = v52;
      *(a1 + 64) = *v76;
      *(a1 + 76) = *&v76[12];
      if (v22 >= *(a1 + 80))
      {
        goto LABEL_47;
      }

      v54 = *(a1 + 48);
      *v67 = *(a1 + 64);
      *&v67[16] = *(a1 + 80);
      v55 = *(a1 + 112);
      *(a1 + 48) = *(a1 + 96);
      *(a1 + 64) = v55;
      *(a1 + 76) = *(a1 + 124);
      *(a1 + 96) = v54;
      *(a1 + 112) = *v67;
    }

    else
    {
      v23 = *a1;
      *v67 = *(a1 + 16);
      *&v67[16] = *(a1 + 32);
      v24 = *(a1 + 112);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v24;
      *(a1 + 28) = *(a1 + 124);
      *(a1 + 96) = v23;
      *(a1 + 112) = *v67;
    }

    *(a1 + 124) = *&v67[12];
LABEL_47:
    if (*(a2 - 16) >= *(a1 + 128))
    {
      return 1;
    }

    v56 = (a2 - 48);
    v57 = *(a1 + 96);
    *v77 = *(a1 + 112);
    *&v77[16] = *(a1 + 128);
    v58 = *(a2 - 20);
    v59 = *(a2 - 32);
    *(a1 + 96) = *(a2 - 48);
    *(a1 + 112) = v59;
    *(a1 + 124) = v58;
    *v56 = v57;
    v56[1] = *v77;
    *(v56 + 28) = *&v77[12];
    if (*(a1 + 128) >= *(a1 + 80))
    {
      return 1;
    }

    v60 = *(a1 + 48);
    *v78 = *(a1 + 64);
    *&v78[16] = *(a1 + 80);
    v61 = *(a1 + 112);
    *(a1 + 48) = *(a1 + 96);
    *(a1 + 64) = v61;
    *(a1 + 76) = *(a1 + 124);
    *(a1 + 96) = v60;
    *(a1 + 112) = *v78;
    *(a1 + 124) = *&v78[12];
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 16) < *(a1 + 32))
    {
      v3 = *a1;
      *v66 = *(a1 + 16);
      *&v66[16] = *(a1 + 32);
      v4 = *(a2 - 20);
      v5 = *(a2 - 32);
      *a1 = *(a2 - 48);
      *(a1 + 16) = v5;
      *(a1 + 28) = v4;
      *(a2 - 48) = v3;
      *(a2 - 32) = *v66;
      *(a2 - 20) = *&v66[12];
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 96;
  v14 = *(a1 + 80);
  v15 = *(a1 + 32);
  v16 = *(a1 + 128);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v28 = *(a1 + 48);
      *v69 = *(a1 + 64);
      *&v69[16] = *(a1 + 80);
      v29 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v29;
      *(a1 + 76) = *(a1 + 124);
      *v13 = v28;
      *(a1 + 112) = *v69;
      *(a1 + 124) = *&v69[12];
      if (*(a1 + 80) < v15)
      {
        v30 = *a1;
        *v70 = *(a1 + 16);
        *&v70[16] = *(a1 + 32);
        v31 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v31;
        *(a1 + 28) = *(a1 + 76);
        *(a1 + 48) = v30;
        *(a1 + 64) = *v70;
        *(a1 + 76) = *&v70[12];
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v40 = *a1;
      *v74 = *(a1 + 16);
      *&v74[16] = *(a1 + 32);
      v41 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v41;
      *(a1 + 28) = *(a1 + 76);
      *(a1 + 48) = v40;
      *(a1 + 64) = *v74;
      *(a1 + 76) = *&v74[12];
      if (v16 >= *(a1 + 80))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 48);
      *v81 = HIDWORD(v17);
      *&v81[4] = *(a1 + 80);
      v42 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v42;
      *(a1 + 76) = *(a1 + 124);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *v81 = HIDWORD(v17);
      *&v81[4] = *(a1 + 32);
      v19 = *(a1 + 112);
      *a1 = *v13;
      *(a1 + 16) = v19;
      *(a1 + 28) = *(a1 + 124);
    }

    *v13 = v18;
    *(a1 + 112) = v17;
    *(a1 + 124) = *v81;
  }

LABEL_33:
  v43 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *(v43 + 32);
    if (v46 < *(v13 + 32))
    {
      v65 = *v43;
      v75 = *(v43 + 16);
      v47 = *(v43 + 36);
      v48 = v44;
      while (1)
      {
        v49 = a1 + v48;
        v50 = *(a1 + v48 + 112);
        *(v49 + 144) = *(a1 + v48 + 96);
        *(v49 + 160) = v50;
        *(v49 + 172) = *(a1 + v48 + 124);
        if (v48 == -96)
        {
          break;
        }

        v48 -= 48;
        if (v46 >= *(v49 + 80))
        {
          v51 = a1 + v48 + 144;
          goto LABEL_41;
        }
      }

      v51 = a1;
LABEL_41:
      *v51 = v65;
      *(v51 + 16) = v75;
      *(v51 + 32) = v46;
      *(v51 + 36) = v47;
      if (++v45 == 8)
      {
        return v43 + 48 == a2;
      }
    }

    v13 = v43;
    v44 += 48;
    v43 += 48;
    if (v43 == a2)
    {
      return 1;
    }
  }
}

void re::pathprocessing::PathProcessingErrorCategoryImpl::~PathProcessingErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::pathprocessing::PathProcessingErrorCategoryImpl::message@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v3 = "Unknown PathProcessing error";
  }

  else
  {
    v3 = off_1E87220D0[a1];
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

BOOL re::pathprocessing::MathUtils::lexicographicalApproxLess(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != *a2 && vabds_f32(v2, v3) > 0.0001 || (v4 = 0, v5 = a1[1], v6 = a2[1], v5 != v6) && vabds_f32(v5, v6) > 0.0001)
  {
    v4 = v2 < v3;
    if (v2 == v3)
    {
      return a1[1] < a2[1];
    }
  }

  return v4;
}

void re::pathprocessing::convertPolylineToGeoMath(uint64_t *a1, void *a2, void *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v8 = *a1;
  v7 = a1[1];
  v9 = (v7 - *a1) >> 3;
  std::vector<geo::math::Matrix<double,3,1>>::resize(a2, v6 + v9);
  std::vector<std::vector<unsigned long>>::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) + 1);
  v10 = a3[1];
  std::vector<unsigned long>::resize((v10 - 24), v9 + 1);
  if (v7 != v8)
  {
    v11 = 0;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = 24 * v6;
    v14 = v6;
    do
    {
      v15 = *a2 + v13;
      *v15 = vcvtq_f64_f32(*(*a1 + v11));
      *(v15 + 16) = 0;
      *(*(v10 - 24) + v11) = v14;
      v11 += 8;
      ++v14;
      v13 += 24;
      --v12;
    }

    while (v12);
  }

  *(*(v10 - 16) - 8) = v6;
}

void re::pathprocessing::triangulateIndexed(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  memset(v32, 0, sizeof(v32));
  *__p = 0u;
  v11 = 0u;
  LOBYTE(v12) = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = 1065353216;
  v29 = 1065353216;
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(&v12, &__p[1]);
  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  re::pathprocessing::convertPolylineToGeoMath(*a1, &v36, &v33);
  v4 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) >= 2)
  {
    v5 = 1;
    v6 = 3;
    do
    {
      re::pathprocessing::convertPolylineToGeoMath(&v4[v6], &v36, &v33);
      ++v5;
      v4 = *a1;
      v6 += 3;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  }

  if (v36 != v37)
  {
    LOBYTE(v12) = 0;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(&v12, &v36);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(&v12);
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(&v30[1] + 1, v33, v34, 0xAAAAAAAAAAAAAAABLL * (v34 - v33));
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v30, 0, 0, 0);
    if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(&v12) && geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(&v12))
    {
      if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(&v12, 1))
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(&v12, &v42, &v39);
        v7 = v39;
        if (v40 != v39)
        {
          v8 = 0;
          v9 = 8;
          do
          {
            std::vector<int>::push_back[abi:nn200100](a2, &v7[v9 - 8]);
            std::vector<int>::push_back[abi:nn200100](a2, &v39[v9 - 4]);
            std::vector<int>::push_back[abi:nn200100](a2, &v39[v9]);
            ++v8;
            v7 = v39;
            v9 += 12;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 2) > v8);
        }
      }
    }
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(&v12);
  v12 = v32;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = &v33;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v12);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

uint64_t re::pathprocessing::LineSegment::rangeOverlaps(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v31 = 0;
  v33 = 0;
  v30 = a3;
  v32 = a4;
  v34 = a5;
  v35 = 1;
  v37 = 1;
  v36 = a6;
  std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,false>(&v30, &v38, 4, 1);
  v12 = v32;
  v13 = v34;
  if (v33 == v35)
  {
LABEL_2:
    if (a1)
    {
      v14 = 0.0;
      v15 = 0.0;
      if (v32 != a3)
      {
        v15 = 0.0;
        if (vabds_f32(a3, v32) > 0.0001)
        {
          v15 = 1.0;
          if (v32 != a4 && vabds_f32(a4, v32) > 0.0001)
          {
            v16 = (v32 - a3) / (a4 - a3);
            v15 = 0.0;
            if (fabsf(v16) >= 0.0001)
            {
              if (fabsf(v16 + -1.0) > 0.0001)
              {
                v15 = (v32 - a3) / (a4 - a3);
              }

              else
              {
                v15 = 1.0;
              }
            }
          }
        }
      }

      v17 = *(a1 + 8);
      *(a1 + 4 * v17) = v15;
      if (v13 != a3 && vabds_f32(a3, v13) > 0.0001)
      {
        v14 = 1.0;
        if (v13 != a4 && vabds_f32(a4, v13) > 0.0001)
        {
          v18 = (v13 - a3) / (a4 - a3);
          v14 = 0.0;
          if (fabsf(v18) >= 0.0001)
          {
            v14 = 1.0;
            if (fabsf(v18 + -1.0) > 0.0001)
            {
              v14 = (v13 - a3) / (a4 - a3);
            }
          }
        }
      }

      *(a1 + 8) = v17 + 2;
      *(a1 + 4 * (v17 + 1)) = v14;
    }

    if (!a2)
    {
      return 1;
    }

    v19 = 0.0;
    v20 = 0.0;
    if (v12 != a5)
    {
      v20 = 0.0;
      if (vabds_f32(a5, v12) > 0.0001)
      {
        v20 = 1.0;
        if (v12 != a6 && vabds_f32(a6, v12) > 0.0001)
        {
          v21 = (v12 - a5) / (a6 - a5);
          v20 = 0.0;
          if (fabsf(v21) >= 0.0001)
          {
            if (fabsf(v21 + -1.0) > 0.0001)
            {
              v20 = v21;
            }

            else
            {
              v20 = 1.0;
            }
          }
        }
      }
    }

    v22 = *(a2 + 8);
    v23 = v22 + 1;
    *(a2 + 4 * v22) = v20;
    result = 1;
    if (v13 != a5 && vabds_f32(a5, v13) > 0.0001)
    {
      if (v13 == a6 || vabds_f32(a6, v13) <= 0.0001)
      {
        v19 = 1.0;
      }

      else
      {
        v25 = (v13 - a5) / (a6 - a5);
        if (fabsf(v25) >= 0.0001)
        {
          if (fabsf(v25 + -1.0) > 0.0001)
          {
            v19 = v25;
          }

          else
          {
            v19 = 1.0;
          }
        }
      }
    }

    goto LABEL_61;
  }

  if (v32 != v34 && vabds_f32(v32, v34) > 0.0001)
  {
    if (v31 == v33)
    {
      return 0;
    }

    goto LABEL_2;
  }

  if (a1)
  {
    v26 = 0.0;
    if (v32 != a3 && vabds_f32(a3, v32) > 0.0001)
    {
      v26 = 1.0;
      if (v32 != a4 && vabds_f32(a4, v32) > 0.0001)
      {
        v27 = (v32 - a3) / (a4 - a3);
        v26 = 0.0;
        if (fabsf(v27) >= 0.0001)
        {
          v26 = 1.0;
          if (fabsf(v27 + -1.0) > 0.0001)
          {
            v26 = (v32 - a3) / (a4 - a3);
          }
        }
      }
    }

    v28 = *(a1 + 8);
    *(a1 + 8) = v28 + 1;
    *(a1 + 4 * v28) = v26;
  }

  if (a2)
  {
    v19 = 0.0;
    if (v12 != a5 && vabds_f32(a5, v12) > 0.0001)
    {
      v19 = 1.0;
      if (v12 != a6 && vabds_f32(a6, v12) > 0.0001)
      {
        v29 = (v12 - a5) / (a6 - a5);
        v19 = 0.0;
        if (fabsf(v29) >= 0.0001)
        {
          if (fabsf(v29 + -1.0) > 0.0001)
          {
            v19 = v29;
          }

          else
          {
            v19 = 1.0;
          }
        }
      }
    }

    v23 = *(a2 + 8);
    result = 2;
LABEL_61:
    *(a2 + 8) = v23 + 1;
    *(a2 + 4 * v23) = v19;
    return result;
  }

  return 2;
}

uint64_t re::pathprocessing::LineSegment::intersect(float32x2_t *a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = vabd_f32(a1[1], *a1);
  v5 = vabd_f32(a2[1], *a2);
  v6 = vmaxnm_f32(vzip1_s32(v4, v5), vzip2_s32(v4, v5));
  if (vcgt_f32(v6, vdup_lane_s32(v6, 1)).u8[0])
  {
    return re::pathprocessing::LineSegment::intersect(a1, a2, a3, a4);
  }

  else
  {
    return re::pathprocessing::LineSegment::intersect(a2, a1, a4, a3);
  }
}

{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a1;
  v28 = vsub_f32(v5, *a1);
  v7 = vsub_f32(*a2, v6);
  v8 = a2 + 1;
  v9 = vsub_f32(a2[1], v6);
  v10 = vabd_f32(v5, v6);
  v11 = vmvn_s8(vcge_f32(v10, vdup_lane_s32(v10, 1))).u8[0];
  v12 = (&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  v13 = vld1_dup_f32(v12);
  v14 = vdiv_f32(v28, v13);
  v15 = vmla_n_f32(vmul_n_f32(vzip1_s32(v7, v9), -v14.f32[1]), vzip2_s32(v7, v9), v14.f32[0]);
  v16 = fabsf(*v15.i32);
  v17 = fabsf(*&v15.i32[1]);
  if (v17 >= 0.0001 && v16 >= 0.0001 && (veor_s8(vdup_lane_s32(v15, 1), v15).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v19 = v11 & 1;
  if (v16 < 0.0001 && v17 < 0.0001)
  {
    return re::pathprocessing::LineSegment::rangeOverlaps(a3, a4, a1->f32[v19], v4->f32[v19], a2->f32[v19], v8->f32[v19]);
  }

  v20 = v16 < 0.0001;
  v21 = 0.0;
  if (!v20)
  {
    v21 = 1.0;
    if (v17 >= 0.0001)
    {
      v21 = *v15.i32 / (*v15.i32 - *&v15.i32[1]);
    }
  }

  v22 = (((v21 * v8->f32[v19]) + (a2->f32[v19] * (1.0 - v21))) - a1->f32[v19]) / (v4->f32[v19] - a1->f32[v19]);
  if (v22 < -0.0001)
  {
    return 0;
  }

  v23 = fabsf(v22 + -1.0);
  if (v22 > 1.0 && v23 > 0.0001)
  {
    return 0;
  }

  if (a3)
  {
    v24 = fabsf(v22);
    if (v23 <= 0.0001)
    {
      v22 = 1.0;
    }

    v25 = 0.0;
    if (v24 >= 0.0001)
    {
      v25 = v22;
    }

    v26 = *(a3 + 8);
    *(a3 + 8) = v26 + 1;
    *(a3 + 4 * v26) = v25;
  }

  if (a4)
  {
    v27 = *(a4 + 8);
    *(a4 + 8) = v27 + 1;
    *(a4 + 4 * v27) = v21;
  }

  return 2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 2) >= *v8)
        {
          return result;
        }

        v62 = *v8;
LABEL_109:
        *v8 = *(a2 - 1);
LABEL_110:
        *(a2 - 1) = v62;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v65 = *(v8 + 8);
      v66 = *v8;
      v67 = *(v8 + 16);
      if (v65 >= *v8)
      {
        if (v67 < v65)
        {
          v111 = *(v8 + 8);
          v110 = *(v8 + 16);
          *(v8 + 8) = v110;
          *(v8 + 16) = v111;
          v67 = *&v111;
          if (v66 > *&v110)
          {
            v112 = *v8;
            *v8 = v110;
            *(v8 + 8) = v112;
          }
        }
      }

      else
      {
        v68 = *v8;
        LODWORD(v69) = *v8;
        if (v67 < v65)
        {
          *v8 = *(v8 + 16);
          goto LABEL_180;
        }

        *v8 = *(v8 + 8);
        *(v8 + 8) = v68;
        if (v67 < v69)
        {
          *(v8 + 8) = *(v8 + 16);
LABEL_180:
          *(v8 + 16) = v68;
          v67 = v69;
        }
      }

      if (*(a2 - 2) < v67)
      {
        v118 = *(v8 + 16);
        *(v8 + 16) = *(a2 - 1);
        *(a2 - 1) = v118;
        if (*(v8 + 16) < *(v8 + 8))
        {
          v120 = *(v8 + 8);
          v119 = *(v8 + 16);
          *(v8 + 8) = v119;
          *(v8 + 16) = v120;
          if (*v8 > *&v119)
          {
            v121 = *v8;
            *v8 = v119;
            *(v8 + 8) = v121;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,0>(v8, (v8 + 8), (v8 + 16), (v8 + 24), a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v70 = (v8 + 8);
      v72 = v8 == a2 || v70 == a2;
      if (a4)
      {
        if (!v72)
        {
          v73 = 0;
          v74 = v8;
          do
          {
            v75 = v70;
            v76 = *(v74 + 8);
            if (v76 < *v74)
            {
              v77 = *(v74 + 12);
              v78 = v73;
              while (1)
              {
                *(v8 + v78 + 8) = *(v8 + v78);
                if (!v78)
                {
                  break;
                }

                v79 = *(v8 + v78 - 8);
                v78 -= 8;
                if (v79 <= v76)
                {
                  v80 = v8 + v78 + 8;
                  goto LABEL_129;
                }
              }

              v80 = v8;
LABEL_129:
              *v80 = v76;
              *(v80 + 4) = v77;
            }

            v70 = v75 + 2;
            v73 += 8;
            v74 = v75;
          }

          while (v75 + 2 != a2);
        }
      }

      else if (!v72)
      {
        do
        {
          v113 = v70;
          v114 = *(v7 + 8);
          if (v114 < *v7)
          {
            v115 = *(v7 + 12);
            do
            {
              v116 = v70;
              v117 = *(v70 - 1);
              v70 -= 2;
              *v116 = v117;
            }

            while (*(v116 - 4) > v114);
            *v70 = v114;
            *(v70 + 1) = v115;
          }

          v70 = (v113 + 8);
          v7 = v113;
        }

        while ((v113 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v81 = (v9 - 2) >> 1;
        v82 = v81;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = (v8 + 8 * v84);
            if (2 * v83 + 2 < v9 && *v85 < v85[2])
            {
              v85 += 2;
              v84 = 2 * v83 + 2;
            }

            v86 = (v8 + 8 * v83);
            v87 = *v86;
            if (*v85 >= *v86)
            {
              v88 = *(v86 + 1);
              do
              {
                v89 = v86;
                v86 = v85;
                *v89 = *v85;
                if (v81 < v84)
                {
                  break;
                }

                v90 = 2 * v84;
                v84 = (2 * v84) | 1;
                v85 = (v8 + 8 * v84);
                v91 = v90 + 2;
                if (v91 < v9 && *v85 < v85[2])
                {
                  v85 += 2;
                  v84 = v91;
                }
              }

              while (*v85 >= v87);
              *v86 = v87;
              *(v86 + 1) = v88;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        do
        {
          v92 = 0;
          v93 = *v8;
          v94 = v8;
          do
          {
            v95 = v94;
            v96 = &v94[2 * v92];
            v94 = v96 + 2;
            v97 = 2 * v92;
            v92 = (2 * v92) | 1;
            v98 = v97 + 2;
            if (v98 < v9)
            {
              v100 = v96[4];
              v99 = v96 + 4;
              if (*(v99 - 2) < v100)
              {
                v94 = v99;
                v92 = v98;
              }
            }

            *v95 = *v94;
          }

          while (v92 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v94 == a2)
          {
            *v94 = v93;
          }

          else
          {
            *v94 = *a2;
            *a2 = v93;
            v101 = (v94 - v8 + 8) >> 3;
            v102 = v101 < 2;
            v103 = v101 - 2;
            if (!v102)
            {
              v104 = v103 >> 1;
              v105 = (v8 + 8 * v104);
              v106 = *v94;
              if (*v105 < *v94)
              {
                v107 = *(v94 + 1);
                do
                {
                  v108 = v94;
                  v94 = v105;
                  *v108 = *v105;
                  if (!v104)
                  {
                    break;
                  }

                  v104 = (v104 - 1) >> 1;
                  v105 = (v8 + 8 * v104);
                }

                while (*v105 < v106);
                *v94 = v106;
                *(v94 + 1) = v107;
              }
            }
          }

          v102 = v9-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v10 = (v8 + 8 * (v9 >> 1));
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          v17 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v17;
          if (*v10 < *v8)
          {
            v18 = *v8;
            *v8 = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v13)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        if (*(a2 - 2) < *&v14)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v21 = v10 - 2;
      v22 = *(v10 - 2);
      v23 = *(a2 - 4);
      if (v22 >= *(v8 + 8))
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = *(a2 - 2);
          *(a2 - 2) = v25;
          if (*v21 < *(v8 + 8))
          {
            v26 = *(v8 + 8);
            *(v8 + 8) = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = *(v8 + 8);
        if (v23 < v22)
        {
          *(v8 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 8) = *v21;
        *v21 = v24;
        if (*(a2 - 4) < *&v24)
        {
          *v21 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v24;
        }
      }

      v28 = v10[2];
      v27 = (v10 + 2);
      v29 = v28;
      v30 = *(a2 - 6);
      if (v28 >= *(v8 + 16))
      {
        if (v30 < v29)
        {
          v32 = *v27;
          *v27 = *(a2 - 3);
          *(a2 - 3) = v32;
          if (*v27 < *(v8 + 16))
          {
            v33 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 < v29)
        {
          *(v8 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        if (*(a2 - 6) < *&v31)
        {
          *v27 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v31;
        }
      }

      v34 = *v11;
      v35 = *v21;
      v36 = *v27;
      if (*v11 >= *v21)
      {
        v37 = *v11;
        if (v36 < v34)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v35 <= *&v38)
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      else
      {
        v37 = *v21;
        if (v36 >= v34)
        {
          *v21 = *v11;
          *v11 = v37;
          if (v36 < *&v37)
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }

        else
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }
      }

      v40 = *v8;
      *v8 = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = *v8;
    if (*v8 >= *v10)
    {
      if (v12 < v15)
      {
        v19 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v19;
        if (*v8 < *v10)
        {
          v20 = *v10;
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v10;
    if (v12 < v15)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v16;
    if (*(a2 - 2) < *&v16)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = *v8;
LABEL_62:
      v42 = 0;
      v43 = *(v8 + 4);
      do
      {
        v44 = *(v8 + v42 + 8);
        v42 += 8;
      }

      while (v44 < v41);
      v45 = v8 + v42;
      v46 = a2;
      if (v42 == 8)
      {
        v46 = a2;
        do
        {
          if (v45 >= v46)
          {
            break;
          }

          v48 = *(v46 - 2);
          v46 -= 2;
        }

        while (v48 >= v41);
      }

      else
      {
        do
        {
          v47 = *(v46 - 2);
          v46 -= 2;
        }

        while (v47 >= v41);
      }

      v8 += v42;
      if (v45 < v46)
      {
        v49 = v46;
        do
        {
          v50 = *v8;
          *v8 = *v49;
          *v49 = v50;
          do
          {
            v51 = *(v8 + 8);
            v8 += 8;
          }

          while (v51 < v41);
          do
          {
            v52 = *(v49 - 2);
            v49 -= 2;
          }

          while (v52 >= v41);
        }

        while (v8 < v49);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      *(v8 - 8) = v41;
      *(v8 - 4) = v43;
      if (v45 < v46)
      {
        goto LABEL_81;
      }

      v53 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *>(v7, v8 - 8);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 8);
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,false>(v7, v8 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v41 = *v8;
      if (*(v8 - 8) < *v8)
      {
        goto LABEL_62;
      }

      if (*(a2 - 2) <= v41)
      {
        v55 = v8 + 8;
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v55 += 8;
        }

        while (*v8 <= v41);
      }

      else
      {
        do
        {
          v54 = *(v8 + 8);
          v8 += 8;
        }

        while (v54 <= v41);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *(v56 - 2);
          v56 -= 2;
        }

        while (v57 > v41);
      }

      v58 = *(v7 + 4);
      while (v8 < v56)
      {
        v59 = *v8;
        *v8 = *v56;
        *v56 = v59;
        do
        {
          v60 = *(v8 + 8);
          v8 += 8;
        }

        while (v60 <= v41);
        do
        {
          v61 = *(v56 - 2);
          v56 -= 2;
        }

        while (v61 > v41);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 8) = v41;
      *(v8 - 4) = v58;
    }
  }

  v63 = *(v8 + 8);
  v64 = *(a2 - 2);
  if (v63 >= *v8)
  {
    if (v64 < v63)
    {
      v109 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 1);
      *(a2 - 1) = v109;
      if (*(v8 + 8) < *v8)
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v62 = *v8;
    if (v64 < v63)
    {
      goto LABEL_109;
    }

    *v8 = *(v8 + 8);
    *(v8 + 8) = v62;
    if (*(a2 - 2) < *&v62)
    {
      *(v8 + 8) = *(a2 - 1);
      goto LABEL_110;
    }
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::$_0 &,re::pathprocessing::findOverlapRangeAbsoluteValue(float,float,float,float)::Node *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

void CGImageDecoderFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __CGImageDecoderTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageDecoderTypeID_id = result;
  return result;
}

const void *CGPerspectiveCommandsDecode(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CGPerspectiveCommandsCreate();
    if (CGPerspectiveCommandsDecodeFromData(v2, v1, 0))
    {
      return v2;
    }

    else
    {
      result = v2;
      if (v2)
      {
        CFRelease(v2);
        return 0;
      }
    }
  }

  return result;
}

void CGPerspectiveColorCacheRelease(CFTypeRef *a1)
{
  CFRelease(*a1);
  CFRelease(a1[1]);
  CFRelease(a1[2]);

  free(a1);
}

uint64_t CGPerspectiveColorCacheDecodeCGColor(uint64_t a1, CGColorRef *a2)
{
  v19 = -1;
  result = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v19, 8uLL);
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *v5;
    valuePtr = v19;
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
    Value = CFDictionaryGetValue(v6, v7);
    CFRelease(v7);
    if (Value)
    {
      *a2 = CGColorRetain(Value[3]);
      return 1;
    }

    valuePtr = 0;
    result = DecodeCGColorSpace(a1, &valuePtr);
    if (result)
    {
      v18 = 0;
      result = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v18, 8uLL);
      if (result)
      {
        if (v18 < 0x101)
        {
          v10 = 8 * v18;
          v11 = malloc_type_calloc(8 * v18, 1uLL, 0xAEC031AEuLL);
          result = CGPerspectiveDataDecode_bytes(*(a1 + 16), v11, v10);
          if (!result)
          {
            return result;
          }

          v12 = *(a1 + 16);
          LOBYTE(pattern) = 0;
          if (!CGPerspectiveDataDecode_bytes(v12, &pattern, 1uLL))
          {
            return 0;
          }

          if (pattern)
          {
            pattern = 0;
            DecodeCGPattern(a1, &pattern);
            v13 = valuePtr;
            v14 = pattern;
            v15 = CGColorCreateWithPattern(valuePtr, pattern, v11);
            CGPatternRelease(v14);
          }

          else
          {
            v13 = valuePtr;
            v15 = CGColorCreate(valuePtr, v11);
          }

          free(v11);
          CGColorSpaceRelease(v13);
          if (v15)
          {
            SetDecodeCacheEntry(*v5, v19, v15);
            *a2 = v15;
            return 1;
          }

          if (__CGPerspectiveOSLog_onceToken == -1)
          {
            v9 = __CGPerspectiveOSLog_log;
            result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
            v9 = __CGPerspectiveOSLog_log;
            result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          LOWORD(pattern) = 0;
          v16 = "Fatal: Failed to create color";
LABEL_23:
          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v16, &pattern, 2u);
          return 0;
        }

        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v9 = __CGPerspectiveOSLog_log;
          result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_22;
        }

        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v9 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (result)
        {
LABEL_22:
          LOWORD(pattern) = 0;
          v16 = "Negative or large color component count";
          goto LABEL_23;
        }
      }
    }
  }

  return result;
}

uint64_t DecodeCGColorSpace(uint64_t a1, CGColorSpaceRef *a2)
{
  v34 = -1;
  result = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v34, 8uLL);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 48);
  v6 = *(v5 + 8);
  valuePtr = v34;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  Value = CFDictionaryGetValue(v6, v8);
  CFRelease(v8);
  if (!Value)
  {
    v33 = 0;
    v10 = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v33, 1uLL);
    result = 0;
    if (!v10)
    {
      return result;
    }

    v11 = 0;
    switch(v33)
    {
      case 0:
        v12 = MEMORY[0x1E695F120];
        goto LABEL_38;
      case 1:
        v12 = MEMORY[0x1E695F138];
        goto LABEL_38;
      case 2:
        v12 = MEMORY[0x1E695F118];
        goto LABEL_38;
      case 3:
        v12 = MEMORY[0x1E695F0B8];
        goto LABEL_38;
      case 4:
        v12 = MEMORY[0x1E695F140];
        goto LABEL_38;
      case 5:
        v12 = MEMORY[0x1E695F0A0];
        goto LABEL_38;
      case 6:
        v12 = MEMORY[0x1E695F1C0];
        goto LABEL_38;
      case 7:
        v12 = MEMORY[0x1E695F128];
        goto LABEL_38;
      case 8:
        v12 = MEMORY[0x1E695F148];
        goto LABEL_38;
      case 9:
        v12 = MEMORY[0x1E695F130];
        goto LABEL_38;
      case 10:
        v12 = MEMORY[0x1E695F098];
        goto LABEL_38;
      case 11:
        v12 = MEMORY[0x1E695F180];
        goto LABEL_38;
      case 12:
        v12 = MEMORY[0x1E695F190];
        goto LABEL_38;
      case 13:
        v12 = MEMORY[0x1E695F188];
        goto LABEL_38;
      case 14:
        v12 = MEMORY[0x1E695F150];
        goto LABEL_38;
      case 15:
        v12 = MEMORY[0x1E695F168];
        goto LABEL_38;
      case 16:
        v12 = MEMORY[0x1E695F1B8];
        goto LABEL_38;
      case 17:
        v12 = MEMORY[0x1E695F0B0];
        goto LABEL_38;
      case 18:
        v12 = MEMORY[0x1E695F0E8];
        goto LABEL_38;
      case 19:
        v12 = MEMORY[0x1E695F100];
        goto LABEL_38;
      case 20:
        v12 = MEMORY[0x1E695F0D8];
        goto LABEL_38;
      case 21:
        v12 = MEMORY[0x1E695F0F0];
        goto LABEL_38;
      case 22:
        v12 = MEMORY[0x1E695F178];
        goto LABEL_38;
      case 23:
        v12 = MEMORY[0x1E695F170];
        goto LABEL_38;
      case 24:
        v12 = MEMORY[0x1E695F0C8];
        goto LABEL_38;
      case 25:
        v12 = MEMORY[0x1E695F0C0];
        goto LABEL_38;
      case 26:
        v12 = MEMORY[0x1E695F110];
        goto LABEL_38;
      case 27:
        v12 = MEMORY[0x1E695F1B0];
        goto LABEL_38;
      case 28:
        v12 = MEMORY[0x1E695F108];
        goto LABEL_38;
      case 29:
        v12 = MEMORY[0x1E695F0E0];
        goto LABEL_38;
      case 30:
        v12 = MEMORY[0x1E695F1A0];
        goto LABEL_38;
      case 31:
        v12 = MEMORY[0x1E695F0F8];
LABEL_38:
        v11 = *v12;
        goto LABEL_39;
      case -1:
        v32 = -1;
        CGPerspectiveDataDecode_bytes(*(a1 + 16), &v32, 4uLL);
        valuePtr = 0;
        if (v32 == 6)
        {
          v17 = *(a1 + 16);
          LOBYTE(data) = 0;
          result = CGPerspectiveDataDecode_bytes(v17, &data, 1uLL);
          if (!result)
          {
            return result;
          }

          v18 = data;
          data = 0;
          if (v18)
          {
            result = DecodeCGColorSpace(a1, &data);
            if (!result)
            {
              return result;
            }

            v19 = data;
          }

          else
          {
            v19 = 0;
          }

          Pattern = CGColorSpaceCreatePattern(v19);
          valuePtr = Pattern;
          CGColorSpaceRelease(v19);
        }

        else if (v32 == 5)
        {
          data = 0;
          result = DecodeCGColorSpace(a1, &data);
          if (!result)
          {
            return result;
          }

          v30 = 0;
          if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v30, 4uLL))
          {
            return 0;
          }

          if (v30 >= 0x101)
          {
            if (__CGPerspectiveOSLog_onceToken != -1)
            {
              dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
              v14 = __CGPerspectiveOSLog_log;
              if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
              {
                return 0;
              }

              goto LABEL_49;
            }

            v14 = __CGPerspectiveOSLog_log;
            if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
            {
LABEL_49:
              *v29 = 0;
              v15 = "Out of bounds color count";
LABEL_50:
              p_data = v29;
LABEL_77:
              _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, p_data, 2u);
            }

            return 0;
          }

          v23 = data;
          NumberOfComponents = CGColorSpaceGetNumberOfComponents(data);
          if (NumberOfComponents >= 0x101uLL)
          {
            if (__CGPerspectiveOSLog_onceToken == -1)
            {
              v25 = __CGPerspectiveOSLog_log;
              if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
              {
LABEL_67:
                CGColorSpaceRelease(v23);
                return 0;
              }
            }

            else
            {
              dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
              v25 = __CGPerspectiveOSLog_log;
              if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }
            }

            *v29 = 0;
            _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Negative or large color component count", v29, 2u);
            goto LABEL_67;
          }

          v26 = v30 * NumberOfComponents;
          v27 = malloc_type_calloc(v26, 1uLL, 0x691F4739uLL);
          if (!v27)
          {
            if (__CGPerspectiveOSLog_onceToken == -1)
            {
              v14 = __CGPerspectiveOSLog_log;
              if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
              {
                return 0;
              }
            }

            else
            {
              dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
              v14 = __CGPerspectiveOSLog_log;
              if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
              {
                return 0;
              }
            }

            *v29 = 0;
            v15 = "Failed to allocate buffer for color table.";
            goto LABEL_50;
          }

          v28 = v27;
          if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), v27, v26))
          {
            return 0;
          }

          Pattern = CGColorSpaceCreateIndexed(v23, v30 - 1, v28);
          valuePtr = Pattern;
          CGColorSpaceRelease(v23);
          free(v28);
        }

        else
        {
          v20 = *(a1 + 16);
          LOBYTE(data) = 0;
          if (!CGPerspectiveDataDecode_bytes(v20, &data, 1uLL))
          {
            return 0;
          }

          if (data)
          {
            data = 0;
            result = CGPerspectiveDataDecode_CFData(*(a1 + 16), &data);
            if (!result)
            {
              return result;
            }

            v21 = CFPropertyListCreateWithData(v7, data, 0, 0, 0);
            CFRelease(data);
            if (v21)
            {
              Pattern = CGColorSpaceCreateWithPropertyList(v21);
              valuePtr = Pattern;
              CFRelease(v21);
            }

            else
            {
              Pattern = 0;
            }
          }

          else
          {
            result = DecodeCGColorSpace(a1, &valuePtr);
            if (!result)
            {
              return result;
            }

            Pattern = valuePtr;
          }
        }

        if (Pattern)
        {
          SetDecodeCacheEntry(*(v5 + 8), v34, Pattern);
          *a2 = Pattern;
          return 1;
        }

        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v14 = __CGPerspectiveOSLog_log;
          result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v14 = __CGPerspectiveOSLog_log;
          result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        LOWORD(data) = 0;
        v15 = "Failed to decode color space";
        p_data = &data;
        goto LABEL_77;
      default:
LABEL_39:
        v13 = CGColorSpaceCreateWithName(v11);
        *a2 = v13;
        SetDecodeCacheEntry(*(v5 + 8), v34, v13);
        return 1;
    }
  }

  *a2 = CGColorSpaceRetain(Value[3]);
  return 1;
}

void CacheEntryFinalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __CacheEntryTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_572 = result;
  return result;
}

void DecodeCGPattern(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  LOBYTE(buf.a) = 0;
  if (!CGPerspectiveDataDecode_bytes(v4, &buf, 1uLL))
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LODWORD(buf.a) = 136315650;
    *(&buf.a + 4) = "Invalid flag";
    WORD2(buf.b) = 2080;
    *(&buf.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
    HIWORD(buf.c) = 1024;
    LODWORD(buf.d) = 757;
    p_buf = &buf;
LABEL_38:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "%s in file %s (line %i)", p_buf, 0x1Cu);
    return;
  }

  a_low = LOBYTE(buf.a);
  tiling = kCGPatternTilingNoDistortion;
  if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &tiling, 4uLL) || tiling > kCGPatternTilingConstantSpacing)
  {
    return;
  }

  memset(&buf, 0, sizeof(buf));
  if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &buf, 0x30uLL))
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LODWORD(matrix.a) = 136315650;
    *(&matrix.a + 4) = "Invalid transform";
    WORD2(matrix.b) = 2080;
    *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
    HIWORD(matrix.c) = 1024;
    LODWORD(matrix.d) = 763;
    goto LABEL_28;
  }

  if (!a_low)
  {
    memset(&image, 0, sizeof(image));
    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &image, 0x20uLL))
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v7 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v7 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LODWORD(matrix.a) = 136315650;
      *(&matrix.a + 4) = "Invalid bounds";
      WORD2(matrix.b) = 2080;
      *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
      HIWORD(matrix.c) = 1024;
      LODWORD(matrix.d) = 780;
      goto LABEL_28;
    }

    v16 = 0.0;
    v17 = 0.0;
    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v16, 0x10uLL))
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v7 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v7 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LODWORD(matrix.a) = 136315650;
      *(&matrix.a + 4) = "Invalid step";
      WORD2(matrix.b) = 2080;
      *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
      HIWORD(matrix.c) = 1024;
      LODWORD(matrix.d) = 783;
      goto LABEL_28;
    }

    v8 = *(a1 + 16);
    LOBYTE(matrix.a) = 0;
    if (CGPerspectiveDataDecode_bytes(v8, &matrix, 1uLL))
    {
      v9 = LOBYTE(matrix.a);
      cf = 0;
      if (!CGPerspectiveDataDecode_CFData(*(a1 + 16), &cf))
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v7 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v7 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        LODWORD(matrix.a) = 136315650;
        *(&matrix.a + 4) = "Invalid embedded commands";
        WORD2(matrix.b) = 2080;
        *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
        HIWORD(matrix.c) = 1024;
        LODWORD(matrix.d) = 789;
        goto LABEL_28;
      }

      v10 = cf;
      if (cf)
      {
        v11 = CGPerspectiveCommandsCreate();
        if (CGPerspectiveCommandsDecodeFromData(v11, v10, 0))
        {
          CFRelease(cf);
          if (v11)
          {
            matrix = buf;
            *a2 = CGPatternCreate(v11, image, &matrix, v16, v17, tiling, v9 != 0, &DecodeCGPattern_callbacks);
            return;
          }

LABEL_32:
          if (__CGPerspectiveOSLog_onceToken == -1)
          {
            v12 = __CGPerspectiveOSLog_log;
            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
            v12 = __CGPerspectiveOSLog_log;
            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          LOWORD(matrix.a) = 0;
          v13 = "Invalid embedded commands";
          goto LABEL_35;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }

      CFRelease(cf);
      goto LABEL_32;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LODWORD(matrix.a) = 136315650;
    *(&matrix.a + 4) = "Invalid BOOL";
    WORD2(matrix.b) = 2080;
    *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
    HIWORD(matrix.c) = 1024;
    LODWORD(matrix.d) = 786;
LABEL_28:
    p_buf = &matrix;
    goto LABEL_38;
  }

  image.origin.x = 0.0;
  if ((DecodeCGImage(a1, &image) & 1) == 0)
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LODWORD(matrix.a) = 136315650;
    *(&matrix.a + 4) = "Failed to decode image";
    WORD2(matrix.b) = 2080;
    *(&matrix.b + 6) = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveColorCache.c";
    HIWORD(matrix.c) = 1024;
    LODWORD(matrix.d) = 767;
    goto LABEL_28;
  }

  if (*&image.origin.x)
  {
    matrix = buf;
    *a2 = CGPatternCreateWithImage2();
    CGImageRelease(*&image.origin.x);
    return;
  }

  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v12 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      LOWORD(matrix.a) = 0;
      v13 = "Expected image was missing";
LABEL_35:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, &matrix, 2u);
    }
  }

  else
  {
    dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
    v12 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }
  }
}

void SetDecodeCacheEntry(__CFDictionary *a1, uint64_t a2, const void *a3)
{
  valuePtr = a2;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  v6 = valuePtr;
  if (qword_1EE1C46B8 != -1)
  {
    dispatch_once(&qword_1EE1C46B8, &__block_literal_global_59);
  }

  Instance = _CFRuntimeCreateInstance();
  Instance[2] = v6;
  Instance[3] = CFRetain(a3);
  CFDictionarySetValue(a1, v5, Instance);
  CFRelease(Instance);
  CFRelease(v5);
}

void _releaseInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *CGPerspectiveCommandsCreateDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CGPerspectiveCommandsAppendDebugDesc(Mutable, a1);
  return Mutable;
}

void CGPerspectiveCommandsAppendDebugDesc(__CFString *a1, uint64_t a2)
{
  v2 = a2;
  v87 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a2 + 72));
  v4 = CFArrayGetCount(*(v2 + 64));
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = CGColorSpaceRetain(*(v2 + 48));
  v8 = CFCopyDescription(v7);
  CGColorSpaceRelease(v7);
  v9 = *(v2 + 80);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"none";
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  if (v9)
  {
    v11 = "has deep color content";
  }

  else
  {
    v11 = "no deep color content";
  }

  v81 = 0uLL;
  v82 = 0uLL;
  v79 = 0uLL;
  v80 = 0uLL;
  v77 = 0uLL;
  v78 = 0uLL;
  v75 = 0uLL;
  v76 = 0uLL;
  v73 = 0uLL;
  v74 = 0uLL;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v63 = 0uLL;
  v64 = 0uLL;
  v61 = 0uLL;
  v62 = 0uLL;
  v59 = 0uLL;
  v60 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
  memset(__str, 0, sizeof(__str));
  if ((v9 & 8) != 0)
  {
    snprintf(__str, 0x200uLL, "has pixel format %d", *(v2 + 56));
    v9 = *(v2 + 80);
  }

  else
  {
    strcpy(__str, "has no explicit pixel format");
  }

  v12 = "alpha-only image";
  if ((v9 & 0x10) == 0)
  {
    v12 = "not alpha-only";
  }

  v13 = "has unsupported content";
  if ((v9 & 2) == 0)
  {
    v13 = "has fully supported content";
  }

  if ((v9 & 4) != 0)
  {
    v14 = "has visible vector content";
  }

  else
  {
    v14 = "no visible vector content";
  }

  CFStringAppendFormat(a1, 0, @"CGPerspectiveCommandsRef %p: %ld commands, %ld resources, canvas size %.2f x %.2f, color space <%@>, %s, %s, %s, %s, %s\n", v2, Count, v4, v5, v6, v10, v11, __str, v12, v13, v14);
  CFRelease(v10);
  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v2 + 88));
  if (Copy)
  {
    v16 = Copy;
    v17 = CFArrayGetCount(Copy);
    if (v17 >= 1)
    {
      v18 = v17;
      CFStringAppendFormat(a1, 0, @"Errors: (%ld)\n", v17);
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
        CFStringAppendFormat(a1, 0, @"%zu: %@\n", i, ValueAtIndex);
      }
    }

    CFRelease(v16);
  }

  CFStringAppendFormat(a1, 0, @"Commands: %d total\n\n", Count);
  if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      v25 = CFArrayGetValueAtIndex(*(v2 + 72), j);
      v26 = CFArrayGetValueAtIndex(*(v2 + 64), *v25);
      CFStringAppendFormat(a1, 0, @"Command %ld (resource %ld):\n", j, *v25);
      v27 = *v26;
      v28 = "<unknown>";
      if (v27 <= 5)
      {
        v28 = off_1E87221D8[v27];
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", v28);
      PrintCGRect(a1, "Frame", (v25 + 1));
      CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f %.2f %.2f %.2f %.2f\n", "Transform", v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
      v29 = CFCopyDescription(v25[11]);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = @"none";
      }

      CFStringAppendFormat(a1, 0, @"%s: %@\n", "FillColor", v30);
      CFRelease(v30);
      CFStringAppendFormat(a1, 0, @"%s: %s\n", "DrawingMode", PrintCGPathDrawingMode_kCGPathDrawingModeNames[*(v25 + 24)]);
      PrintCGRect(a1, "ImageRect", (v25 + 13));
      CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f %.2f %.2f %.2f %.2f\n", "BaseTransform", v25[17], v25[18], v25[19], v25[20], v25[21], v25[22]);
      v31 = *(v25 + 46) + 1;
      v32 = "<unknown>";
      if (v31 <= 0x1C)
      {
        v32 = off_1E8722208[v31];
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "BlendMode", v32);
      v33 = v25[24];
      if (v33)
      {
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.elevation", v33[1]);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.azimuth", v33[2]);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.ambient", v33[3]);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.height", v33[4]);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.radius", v33[5]);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ShadowStyle.saturation", v33[6]);
      }

      else
      {
        CFStringAppend(a1, @"ShadowStyle: none\n");
      }

      v34 = CFCopyDescription(v25[25]);
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = @"none";
      }

      CFStringAppendFormat(a1, 0, @"%s: %@\n", "ShadowColor", v35);
      CFRelease(v35);
      v36 = v25[26];
      if (v36)
      {
        v37 = *(v36 + 4);
        v38 = "kCGFocusRingTintGraphite";
        if (v37 != 1)
        {
          v38 = "<unknown>";
        }

        v39 = v37 == 0;
        v40 = "kCGFocusRingTintBlue";
        if (!v39)
        {
          v40 = v38;
        }

        CFStringAppendFormat(a1, 0, @"FocusStyle.tint: %s\n", v40);
        v41 = *(v36 + 8);
        v42 = "<unknown>";
        if (v41 <= 2)
        {
          v42 = off_1E87222F0[v41];
        }

        CFStringAppendFormat(a1, 0, @"FocusStyle.ordering: %s\n", v42);
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "FocusStyle.alpha", *(v36 + 16));
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "FocusStyle.radius", *(v36 + 24));
        CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "FocusStyle.threshold", *(v36 + 32));
        PrintCGRect(a1, "FocusStyle.bounds", (v36 + 40));
        CFStringAppendFormat(a1, 0, @"FocusStyle.accumulate: %d\n", *(v36 + 72));
      }

      else
      {
        CFStringAppend(a1, @"FocusStyle: none\n");
      }

      v43 = CFCopyDescription(v25[27]);
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v44 = @"none";
      }

      CFStringAppendFormat(a1, 0, @"%s: %@\n", "FocusColor", v44);
      CFRelease(v44);
      v45 = CFCopyDescription(v25[28]);
      if (v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = @"none";
      }

      CFStringAppendFormat(a1, 0, @"%s: %@\n", "StrokeColor", v46);
      CFRelease(v46);
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "LineWidth", v25[29]);
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "LineWidthThreshold", v25[30]);
      v47 = *(v25 + 62);
      v48 = "<unknown>";
      if (v47 <= 2)
      {
        v48 = off_1E8722308[v47];
      }

      v49 = v2;
      CFStringAppendFormat(a1, 0, @"%s: %s\n", "LineJoin", v48);
      v50 = *(v25 + 63);
      v51 = "<unknown>";
      if (v50 <= 2)
      {
        v51 = off_1E8722320[v50];
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "LineCap", v51);
      v53 = v25[32];
      v52 = v25[33];
      CFStringAppendFormat(a1, 0, @"%s (%zu): ", "LineDashValues", v52);
      for (; v52; --v52)
      {
        v54 = *v53++;
        CFStringAppendFormat(a1, 0, @"%.2f ", v54);
      }

      CFStringAppend(a1, @"\n");
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "LineDashPhase", v25[34]);
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "MiterLimit", v25[35]);
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "ContextAlpha", v25[36]);
      CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f\n", "PatternPhase", v25[37], v25[38]);
      CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "Flatness", v25[39]);
      if (*(v25 + 320))
      {
        v22 = "true";
      }

      else
      {
        v22 = "false";
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "StrokeAdjust", v22);
      if (*(v25 + 321))
      {
        v23 = "true";
      }

      else
      {
        v23 = "false";
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "ShouldAntialias", v23);
      if (*(v25 + 322))
      {
        v24 = "true";
      }

      else
      {
        v24 = "false";
      }

      CFStringAppendFormat(a1, 0, @"%s: %s\n", "ShouldDrawBitmapRuns", v24);
      CFStringAppend(a1, @"Resource:\n\n");
      v2 = v49;
      PrintCGPerspectiveResource(a1, v49, v26);
      CFStringAppend(a1, @"\n");
    }
  }
}

void PrintCGRect(__CFString *a1, uint64_t a2, CGRect *a3)
{
  if (CGRectIsInfinite(*a3))
  {
    CFStringAppendFormat(a1, 0, @"%s: Is Infinite\n", a2);
  }

  else if (CGRectIsNull(*a3))
  {
    CFStringAppendFormat(a1, 0, @"%s: Is Null\n", a2);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f %.2f %.2f\n", a2, *&a3->origin.x, *&a3->origin.y, *&a3->size.width, *&a3->size.height);
  }
}

void PrintCGPerspectiveResource(__CFString *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  if (*a3 <= 2)
  {
    if (!v5)
    {
      CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypePath");
      v6 = CFCopyDescription(*(a3 + 8));
      CFStringAppendFormat(a1, 0, @"CGPathRef: %@\n", v6);
      goto LABEL_45;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypeImage");
        v6 = CFCopyDescription(*(a3 + 8));
        CFStringAppendFormat(a1, 0, @"CGImageRef: %@\n", v6);
LABEL_45:

        CFRelease(v6);
        return;
      }

LABEL_50:
      CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "<unknown>");
      return;
    }

    CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypeClip");
    if (*(a3 + 9) == 1)
    {
      v24 = "Pop";
    }

    else
    {
      v24 = "Push";
    }

    CFStringAppendFormat(a1, 0, @"CGPerspectiveClipData (%s)\n", v24);
    v25 = *(a3 + 8);
    if (v25 >= 3)
    {
      v26 = "<Unknown>";
    }

    else
    {
      v26 = off_1E8722338[v25];
    }

    CFStringAppendFormat(a1, 0, @"CGPerspectiveClipType: %s\n", v26);
    v30 = *(a3 + 8);
    if (v30 == 2)
    {
      PrintCGRect(a1, "Bounds", (a3 + 72));
      CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f %.2f %.2f %.2f %.2f\n", "Matrix", *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48), *(a3 + 56), *(a3 + 64));
      v33 = CFCopyDescription(*(a3 + 104));
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = @"none";
      }

      CFStringAppendFormat(a1, 0, @"%s: %@\n", "BackgroundColor", v34);
      CFRelease(v34);
      Length = CFStringGetLength(a1);
      CFStringAppend(a1, @"Soft mask drawing commands:\n");
      CGPerspectiveCommandsAppendDebugDesc(a1, *(a3 + 16));
      v45.length = CFStringGetLength(a1) + ~Length;
      v45.location = Length;
      CFStringFindAndReplace(a1, @"\n", @"\n    ", v45, 0);
      goto LABEL_91;
    }

    if (v30 == 1)
    {
      v32 = CFCopyDescription(*(a3 + 16));
      CFStringAppendFormat(a1, 0, @"CGImageRef (mask): %@\n", v32, v40);
    }

    else
    {
      if (*(a3 + 8))
      {
LABEL_91:
        v36 = "<unknown>";
        v37 = "kCGPerspectiveClipStatePop";
        if (*(a3 + 9) != 1)
        {
          v37 = "<unknown>";
        }

        if (*(a3 + 9))
        {
          v38 = v37;
        }

        else
        {
          v38 = "kCGPerspectiveClipStatePush";
        }

        CFStringAppendFormat(a1, 0, @"CGPerspectiveClipState: %s\n", v38);
        v39 = *(a3 + 12) + 1;
        if (v39 <= 3)
        {
          v36 = off_1E8722368[v39];
        }

        CFStringAppendFormat(a1, 0, @"CGClipMode: %s\n", v36, v40);
        return;
      }

      v31 = *(a3 + 16);
      if (!v31)
      {
        CFStringAppend(a1, @"CGPathRef: <Empty Clip Shape>\n");
        goto LABEL_91;
      }

      v32 = CFCopyDescription(v31);
      CFStringAppendFormat(a1, 0, @"CGPathRef %p: %@\n", *(a3 + 16), v32);
    }

    CFRelease(v32);
    goto LABEL_91;
  }

  if (v5 == 3)
  {
    CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypeGradient");
    v21 = *(a3 + 8);
    CFStringAppendFormat(a1, 0, @"CGPerspectiveGradient %p\n", v21);
    v22 = *v21;
    if (v22 >= 3)
    {
      v23 = "<unknown>";
    }

    else
    {
      v23 = off_1E8722350[v22];
    }

    CFStringAppendFormat(a1, 0, @"CGPerspectiveGradientType: %s\n", v23);
    v28 = CFCopyDescription(v21[1]);
    CFStringAppendFormat(a1, 0, @"CGGradientRef: %@\n", v28);
    CFRelease(v28);
    v29 = v21[3];
    if (*v21 > 1u)
    {
      CFStringAppendFormat(a1, 0, @"Origin: (%.2f, %.2f)\n", v21[2], v29);
      CFStringAppendFormat(a1, 0, @"Angle: %.2f\n", v21[4], v43);
    }

    else
    {
      CFStringAppendFormat(a1, 0, @"Start Point: (%.2f, %.2f)\n", v21[2], v29);
      CFStringAppendFormat(a1, 0, @"End Point: (%.2f, %.2f)\n", v21[4], v21[5]);
      CFStringAppendFormat(a1, 0, @"Start Radius: %.2f\n", v21[6]);
      CFStringAppendFormat(a1, 0, @"End Radius: %.2f\n", v21[7]);
      CFStringAppendFormat(a1, 0, @"CGGradientDrawingOptions Bits: %04x\n", *(v21 + 16), v42);
    }

    return;
  }

  if (v5 == 4)
  {
    CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypeSubcommands");
    v27 = *(a3 + 16);
    CFStringAppendFormat(a1, 0, @"Subcommands.range.location: %zu\n", *(a3 + 8));
    CFStringAppendFormat(a1, 0, @"Subcommands.range.length: %zu\n", v27, v41);
    return;
  }

  if (v5 != 5)
  {
    goto LABEL_50;
  }

  CFStringAppendFormat(a1, 0, @"%s: %s\n", "ResourceType", "kCGPerspectiveResourceTypeGlyphs");
  v8 = *(a3 + 8);
  CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f %.2f %.2f %.2f %.2f\n", "Glyphs.transform", *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40));
  CFStringAppendFormat(a1, 0, @"%s: %zu\n", "Glyphs.count", *(v8 + 48));
  v10 = *(v8 + 48);
  v9 = *(v8 + 56);
  CFStringAppendFormat(a1, 0, @"%s (%zu): ", "Glyphs.resourceIndices", v10);
  for (; v10; --v10)
  {
    v11 = *v9++;
    CFStringAppendFormat(a1, 0, @"%zu ", v11);
  }

  CFStringAppend(a1, @"\n");
  v12 = *(v8 + 64);
  v13 = *(v8 + 48);
  CFStringAppendFormat(a1, 0, @"%s (%zu): ", "Glyphs.positions", v13);
  if (v13)
  {
    v14 = (v12 + 8);
    do
    {
      CFStringAppendFormat(a1, 0, @"(%.2f %.2f) ", *(v14 - 1), *v14);
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  CFStringAppend(a1, @"\n");
  CFStringAppendFormat(a1, 0, @"%s: %.2f %.2f\n", "Glyphs.subpixelQuantum", *(v8 + 72), *(v8 + 80));
  CFStringAppendFormat(a1, 0, @"%s: %.2f\n", "Glyphs.size", *(v8 + 88));
  v15 = *(v8 + 96);
  CFStringAppendFormat(a1, 0, @"%s: 0x%08x", "Glyphs.style", v15);
  if (v15)
  {
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontRenderingStyleAntialiasing");
    if ((v15 & 2) == 0)
    {
LABEL_16:
      if ((v15 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_63;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_16;
  }

  CFStringAppendFormat(a1, 0, @", %s", "kCGFontRenderingStyleSmoothing");
  if ((v15 & 4) == 0)
  {
LABEL_17:
    if ((v15 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontRenderingStyleSubpixelPositioning");
  if ((v15 & 8) == 0)
  {
LABEL_18:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontRenderingStyleSubpixelQuantization");
  if ((v15 & 0x200) == 0)
  {
LABEL_19:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

LABEL_65:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontRenderingStylePlatformNative");
  if ((v15 & 0x10) == 0)
  {
LABEL_20:
    if ((~v15 & 0x50) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_67;
  }

LABEL_66:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleMinimum");
  if ((~v15 & 0x50) != 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_68;
  }

LABEL_67:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleExtraLight");
  if ((v15 & 0x20) == 0)
  {
LABEL_22:
    if ((~v15 & 0x30) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_68:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleLight");
  if ((~v15 & 0x30) != 0)
  {
LABEL_23:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_70;
  }

LABEL_69:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleMedium");
  if ((v15 & 0x40) == 0)
  {
LABEL_24:
    if ((~v15 & 0x60) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

LABEL_70:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleHeavy");
  if ((~v15 & 0x60) != 0)
  {
LABEL_25:
    if ((~v15 & 0x70) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_71:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleProRegular");
  if ((~v15 & 0x70) == 0)
  {
LABEL_26:
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontSmoothingStyleCustomDilation");
  }

LABEL_27:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleUnfiltered");
  if ((v15 & 0x80) != 0)
  {
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleFilterLight");
    if ((v15 & 0x100) == 0)
    {
LABEL_29:
      if ((~v15 & 0x180) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_75;
    }
  }

  else if ((v15 & 0x100) == 0)
  {
    goto LABEL_29;
  }

  CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleFilterMedium");
  if ((~v15 & 0x180) != 0)
  {
LABEL_30:
    if ((~v15 & 0x480) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleFilterHeavy");
  if ((~v15 & 0x480) != 0)
  {
LABEL_31:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_76:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleFilteredCustomDilation");
  if ((v15 & 0x400) != 0)
  {
LABEL_32:
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontAntialiasingStyleUnfilteredCustomDilation");
  }

LABEL_33:
  CFStringAppendFormat(a1, 0, @", %s", "kCGFontSubpixelQuantizationStyleDefault");
  if ((v15 & 0x1000) != 0)
  {
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontSubpixelQuantizationStyleCustom");
  }

  if ((~v15 & 0x3000) == 0)
  {
    CFStringAppendFormat(a1, 0, @", %s", "kCGFontSubpixelQuantizationStyleMask");
  }

  CFStringAppend(a1, @"\n");
  CFStringAppend(a1, @"Glyphs:\n\n");
  Count = CFArrayGetCount(*(a2 + 64));
  if (*(v8 + 48) >= 1)
  {
    v17 = Count;
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = *(*(v8 + 56) + 8 * v18);
        CFStringAppendFormat(a1, 0, @"Glyph index %zu:\n", v19);
        if ((v19 & 0x8000000000000000) == 0 && v19 < v17)
        {
          break;
        }

        CFStringAppend(a1, @"Out of bounds glyph index\n\n");
        if (*(v8 + 48) <= ++v18)
        {
          return;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 64), v19);
      PrintCGPerspectiveResource(a1, a2, ValueAtIndex);
      ++v18;
    }

    while (*(v8 + 48) > v18);
  }
}

uint64_t CGPerspectiveCommandsCreate()
{
  v0 = *MEMORY[0x1E695E480];
  if (CGPerspectiveCommandsTypeID_onceToken != -1)
  {
    dispatch_once(&CGPerspectiveCommandsTypeID_onceToken, &__block_literal_global_61);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = *(MEMORY[0x1E695F058] + 16);
  *(Instance + 16) = *MEMORY[0x1E695F058];
  *(Instance + 32) = v2;
  *(Instance + 64) = CFArrayCreateMutable(v0, 0, 0);
  *(Instance + 72) = CFArrayCreateMutable(v0, 0, 0);
  *(Instance + 80) = 0;
  *(Instance + 88) = CFArrayCreateMutable(v0, 0, MEMORY[0x1E695E9C0]);
  return Instance;
}

char *CGPerspectiveCommandCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x148uLL, 0x7897071FuLL);
  v7 = MEMORY[0x1E695EFD0];
  v8 = *MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *(v6 + 40) = *MEMORY[0x1E695EFD0];
  *(v6 + 56) = v9;
  v10 = *(v7 + 32);
  *(v6 + 72) = v10;
  *(v6 + 35) = 0x4024000000000000;
  *(v6 + 36) = 0x3FF0000000000000;
  *(v6 + 296) = *MEMORY[0x1E695F060];
  *(v6 + 39) = 0;
  *(v6 + 160) = 256;
  v6[322] = 0;
  *(v6 + 136) = v8;
  *(v6 + 152) = v9;
  *(v6 + 168) = v10;
  *(v6 + 232) = xmmword_1E310A2E0;
  CGPerspectiveCommandUpdateWithStates(a1, v6, a2, a3);
  CFArrayAppendValue(*(a1 + 72), v6);
  return v6;
}

__int128 *CGPerspectiveCommandUpdateWithStates(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    goto LABEL_30;
  }

  v7 = result;
  CTM = CGGStateGetCTM();
  if (CTM)
  {
    v9 = *CTM;
    v10 = CTM[1];
    *(a2 + 72) = CTM[2];
    *(a2 + 56) = v10;
    *(a2 + 40) = v9;
  }

  *(a2 + 184) = CGGStateGetCompositeOperation();
  if (!CGGStateGetStyle())
  {
    goto LABEL_15;
  }

  Type = CGStyleGetType();
  if (Type == 2)
  {
    v27 = *(a2 + 208);
    if (v27)
    {
      free(v27);
      *(a2 + 208) = 0;
      CGColorRelease(*(a2 + 216));
      *(a2 + 216) = 0;
    }

    Data = CGStyleGetData();
    v29 = malloc_type_malloc(0x50uLL, 0x1000040CA4B9025uLL);
    *(a2 + 208) = v29;
    *v29 = *Data;
    v30 = Data[4];
    v32 = Data[1];
    v31 = Data[2];
    v29[3] = Data[3];
    v29[4] = v30;
    v29[1] = v32;
    v29[2] = v31;
    Color = CGStyleGetColor();
    v34 = CGColorRetain(Color);
    *(a2 + 216) = v34;
    ColorSpace = CGColorGetColorSpace(v34);
    if (CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      goto LABEL_14;
    }

LABEL_15:
    FillColor = CGGStateGetFillColor();
    v37 = CGColorGetColorSpace(FillColor);
    if (!CGColorSpaceIsWideGamutRGB(v37))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (Type == 1)
  {
    v18 = *(a2 + 192);
    if (v18)
    {
      free(v18);
      *(a2 + 192) = 0;
      CGColorRelease(*(a2 + 200));
      *(a2 + 200) = 0;
    }

    v19 = CGStyleGetData();
    v20 = malloc_type_malloc(0x38uLL, 0x1000040577F94FBuLL);
    *(a2 + 192) = v20;
    v22 = *(v19 + 16);
    v21 = *(v19 + 32);
    v23 = *v19;
    v20[6] = *(v19 + 48);
    *(v20 + 1) = v22;
    *(v20 + 2) = v21;
    *v20 = v23;
    v24 = CGStyleGetColor();
    v25 = CGColorRetain(v24);
    *(a2 + 200) = v25;
    v26 = CGColorGetColorSpace(v25);
    if (!CGColorSpaceIsWideGamutRGB(v26))
    {
      goto LABEL_15;
    }

LABEL_14:
    *(v7 + 80) |= 1u;
    goto LABEL_15;
  }

  CGPerspectiveCommandsLogError(v7, "Unsupported CGStyleType given: %d", v12, v13, v14, v15, v16, v17, Type);
  FillColor = CGGStateGetFillColor();
  v48 = CGColorGetColorSpace(FillColor);
  if (CGColorSpaceIsWideGamutRGB(v48))
  {
LABEL_16:
    *(v7 + 80) |= 1u;
  }

LABEL_17:
  v38 = *(a2 + 88);
  if (v38 != FillColor)
  {
    if (v38)
    {
      CFRelease(v38);
      *(a2 + 88) = 0;
    }

    *(a2 + 88) = CGColorRetain(FillColor);
  }

  StrokeColor = CGGStateGetStrokeColor();
  v40 = CGColorGetColorSpace(StrokeColor);
  if (CGColorSpaceIsWideGamutRGB(v40))
  {
    *(v7 + 80) |= 1u;
  }

  v41 = *(a2 + 224);
  if (v41 != StrokeColor)
  {
    if (v41)
    {
      CFRelease(v41);
      *(a2 + 224) = 0;
    }

    *(a2 + 224) = CGColorRetain(StrokeColor);
  }

  CGGStateGetAlpha();
  *(a2 + 288) = v42;
  CGGStateGetPatternPhase();
  *(a2 + 296) = v43;
  *(a2 + 304) = v44;
  CGGStateGetFlatness();
  *(a2 + 312) = v45;
  *(a2 + 320) = CGGStateGetStrokeAdjust();
  *(a2 + 321) = CGGStateGetShouldAntialias();
  *(a2 + 322) = CGGStateGetShouldDrawBitmapRuns();
  v49 = 0;
  __CGGStateGetStrokeParameters(a4, (a2 + 232), (a2 + 240), (a2 + 280), &v49, (a2 + 252), (a2 + 248));
  result = v49;
  if (v49)
  {
    result = CGDashGetPattern();
    if (!result)
    {
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      return result;
    }

    *(a2 + 264) = 0;
    result = malloc_type_malloc(0, 0x7BD93F77uLL);
    *(a2 + 256) = result;
  }

LABEL_30:
  if (a3)
  {
    result = CGRenderingStateGetBaseCTM();
    if (result)
    {
      v46 = *result;
      v47 = result[1];
      *(a2 + 168) = result[2];
      *(a2 + 152) = v47;
      *(a2 + 136) = v46;
    }
  }

  return result;
}

void CGPerspectiveCommandsLogError(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v12 = CFStringCreateWithFormatAndArguments(v10, 0, v11, &a9);
  CFRelease(v11);
  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v13 = __CGPerspectiveOSLog_log;
    if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
    v13 = __CGPerspectiveOSLog_log;
    if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = CFStringGetCStringPtr(v12, 0x8000100u);
  _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "CG command serialization failed: %s", &buf, 0xCu);
LABEL_3:
  *(a1 + 80) |= 2u;
  CFArrayAppendValue(*(a1 + 88), v12);
  if (qword_1EE1C46C8 == -1)
  {
    if (CFSetContainsValue(*_MergedGlobals_573, v12))
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&qword_1EE1C46C8, &__block_literal_global_10_4);
    if (CFSetContainsValue(*_MergedGlobals_573, v12))
    {
      goto LABEL_10;
    }
  }

  if (qword_1EE1C46C8 != -1)
  {
    dispatch_once(&qword_1EE1C46C8, &__block_literal_global_10_4);
  }

  CFSetAddValue(*_MergedGlobals_573, v12);
  CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
  v15 = "Error";
  if (CStringPtr)
  {
    v15 = CStringPtr;
  }

  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 0x40000000;
  v17 = __CGPerspectiveCommandsReportMissingFeature_block_invoke;
  v18 = &__block_descriptor_tmp_7_1;
  v19 = v15;
  analytics_send_event_lazy();
LABEL_10:
  CFRelease(v12);
}

void *CGPerspectiveResourceCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0xC767939EuLL);
  CFArrayAppendValue(*(a1 + 64), v2);
  return v2;
}

void CGPerspectiveCommandsFinalize(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; v3 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      v6 = ValueAtIndex;
      v7 = *ValueAtIndex;
      if (*ValueAtIndex <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v8 = *(ValueAtIndex + 8);
            if (v8 == 2)
            {
              v9 = ValueAtIndex[2];
              if (v9)
              {
                CFRelease(v9);
              }

              CGColorRelease(v6[13]);
            }

            else if (v8 == 1)
            {
              CGImageRelease(ValueAtIndex[2]);
            }

            else if (!*(ValueAtIndex + 8))
            {
              CGPathRelease(ValueAtIndex[2]);
            }
          }
        }

        else
        {
          CGPathRelease(ValueAtIndex[1]);
        }

        goto LABEL_5;
      }

      if (v7 == 5)
      {
        free(*(ValueAtIndex[1] + 7));
        free(*(v6[1] + 8));
      }

      else
      {
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            CGImageRelease(ValueAtIndex[1]);
          }

          goto LABEL_5;
        }

        CGGradientRelease(*(ValueAtIndex[1] + 1));
      }

      free(v6[1]);
LABEL_5:
      free(v6);
    }
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CGColorSpaceRelease(v11);
    *(a1 + 48) = 0;
  }

  v12 = CFArrayGetCount(*(a1 + 72));
  if (v12 >= 1)
  {
    v13 = v12;
    for (j = 0; j != v13; ++j)
    {
      v15 = CFArrayGetValueAtIndex(*(a1 + 72), j);
      CGColorRelease(*(v15 + 11));
      CGColorRelease(*(v15 + 28));
      free(*(v15 + 24));
      CGColorRelease(*(v15 + 25));
      free(*(v15 + 26));
      CGColorRelease(*(v15 + 27));
      free(*(v15 + 32));
      free(v15);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 72) = 0;
  }

  v17 = *(a1 + 88);
  if (v17)
  {

    CFRelease(v17);
  }
}

uint64_t __CGPerspectiveCommandsTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGPerspectiveCommandsTypeID_id = result;
  return result;
}

xpc_object_t __CGPerspectiveCommandsReportMissingFeature_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Command", *(a1 + 32));
  return v2;
}

CFMutableSetRef __SharedTelemetry_block_invoke()
{
  _MergedGlobals_573 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  *_MergedGlobals_573 = result;
  return result;
}

BOOL CGPerspectiveDataDecode_bytes(uint64_t a1, void *a2, size_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  Length = CFDataGetLength(*a1);
  v7.location = *(a1 + 8);
  v8 = Length - v7.location;
  if (Length - v7.location < a3)
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v10 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        bzero(a2, a3);
        return v8 >= a3;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v10 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    v11 = *(a1 + 8);
    v12 = 134218496;
    v13 = v11;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v8;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Out of bounds read, for position %ld; needs %ld but has %ld left", &v12, 0x20u);
    goto LABEL_6;
  }

  v7.length = a3;
  CFDataGetBytes(*a1, v7, a2);
  *(a1 + 8) += a3;
  return v8 >= a3;
}

BOOL CGPerspectiveDataDecode_CFData(uint64_t a1, __CFData **a2)
{
  *a2 = 0;
  capacity = 0;
  result = CGPerspectiveDataDecode_bytes(a1, &capacity, 8uLL);
  if (result)
  {
    if (capacity < 0 || ((v5 = *(a1 + 8), v6 = v5 + capacity, !__OFADD__(v5, capacity)) ? (v7 = 0) : (v7 = 1), (Length = CFDataGetLength(*a1), (v7 & 1) != 0) || v6 > Length))
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v12 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v12 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      *buf = 0;
      v13 = "Failed to decode CFData blob: out of bounds read";
      v14 = buf;
LABEL_14:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
      return 0;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
    if (Mutable)
    {
      v10 = Mutable;
      BytePtr = CFDataGetBytePtr(*a1);
      CFDataAppendBytes(v10, &BytePtr[*(a1 + 8)], capacity);
      *a2 = v10;
      *(a1 + 8) += capacity;
      return 1;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v12 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_17:
        v15 = 0;
        v13 = "Failed to allocate CFMutableDataRef";
        v14 = &v15;
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v12 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

void DrawPerspectiveCommands(CGContext *a1, uint64_t a2, CFDictionaryRef theDict)
{
  v35 = 0;
  cf[1] = 0;
  v32 = 0u;
  v33 = 0;
  v34 = xmmword_1E310A300;
  cf[0] = 0x3FF0000000000000;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"OptionOutlineCommands");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFBooleanGetTypeID())
      {
        LOBYTE(v32) = CFBooleanGetValue(v7) != 0;
      }
    }

    v9 = CFDictionaryGetValue(theDict, @"OptionOutlineColor");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CGColorGetTypeID())
      {
        *(&v32 + 1) = v10;
      }
    }

    v12 = CFDictionaryGetValue(theDict, @"OptionHighlightCommands");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFBooleanGetTypeID())
      {
        LOBYTE(v33) = CFBooleanGetValue(v13) != 0;
      }
    }

    v15 = CFDictionaryGetValue(theDict, @"OptionContextScale");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberCGFloatType, &v34);
      }
    }

    v18 = CFDictionaryGetValue(theDict, @"OptionContentsScale");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberCGFloatType, &v34 + 8);
      }
    }

    v21 = CFDictionaryGetValue(theDict, @"OptionEnableBifurcation");
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFBooleanGetTypeID())
      {
        LOBYTE(v35) = CFBooleanGetValue(v22) != 0;
      }
    }

    v24 = CFDictionaryGetValue(theDict, @"OptionBifurcationScale");
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v25, kCFNumberCGFloatType, cf);
      }
    }

    v27 = CFDictionaryGetValue(theDict, @"OptionSignaler");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (CGPerspectiveSignalerTypeID_onceToken == -1)
      {
        if (v29 != CGPerspectiveSignalerTypeID_id)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v31 = v29;
      dispatch_once(&CGPerspectiveSignalerTypeID_onceToken, &__block_literal_global_63);
      if (v31 == CGPerspectiveSignalerTypeID_id)
      {
LABEL_26:
        cf[1] = v28;
        CFRetain(v28);
      }
    }
  }

LABEL_27:
  CGContextGetBaseCTM();
  Count = CFArrayGetCount(*(a2 + 72));
  DrawPerspectiveSubcommands(a1, a2, 0, Count, &v32);
  CGContextSetBaseCTM();
  if (cf[1])
  {
    CFRelease(cf[1]);
  }
}

void DrawPerspectiveSubcommands(CGContext *a1, uint64_t a2, CFIndex a3, uint64_t a4, uint64_t a5)
{
  v167 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a2 + 72));
  v162 = a2;
  v161 = CFArrayGetCount(*(a2 + 64));
  if (a4 == -1 || (v160 = a3 + a4, a3 + a4 > Count))
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v143 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v143 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LOWORD(transform.a) = 0;
    v144 = "Given range was out of bounds";
    goto LABEL_162;
  }

  v145 = Count;
  if (a4 < 1)
  {
    return;
  }

  v11 = 0;
  v148 = *(MEMORY[0x1E695F050] + 8);
  v149 = *MEMORY[0x1E695F050];
  v146 = *(MEMORY[0x1E695F050] + 24);
  v147 = *(MEMORY[0x1E695F050] + 16);
  while (2)
  {
    v12 = *(a5 + 56);
    if (v12)
    {
      os_unfair_lock_lock((v12 + 16));
      v13 = *(v12 + 20);
      os_unfair_lock_unlock((v12 + 16));
      if (v13)
      {
        return;
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v162 + 72), a3);
    v15 = *ValueAtIndex;
    if (*ValueAtIndex < 0 || v15 >= v161)
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LOWORD(transform.a) = 0;
      v144 = "Out of bounds resources access";
      goto LABEL_162;
    }

    v16 = ValueAtIndex;
    v17 = CFArrayGetValueAtIndex(*(v162 + 64), v15);
    v18 = v17;
    v19 = *v17;
    if (*v17 != 1)
    {
      CGContextSaveGState(a1);
      if (v19 == 4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (*(v17 + 9))
    {
      CGContextRestoreGState(a1);
      v20 = __OFSUB__(v11--, 1);
      if (!v20)
      {
        goto LABEL_15;
      }

      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LOWORD(transform.a) = 0;
LABEL_162:
      _os_log_error_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_ERROR, v144, &transform, 2u);
      return;
    }

    CGContextSaveGState(a1);
    v20 = __OFADD__(v11++, 1);
    if (v20)
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LOWORD(transform.a) = 0;
      goto LABEL_162;
    }

    v72 = *(v18 + 8);
    if (v72 == 2)
    {
      v88 = *(v18 + 2);
      memset(&transform, 0, sizeof(transform));
      CGContextGetCTM(&transform, a1);
      memset(&v165, 0, sizeof(v165));
      v89 = *(v18 + 10);
      *&t2.a = *(v18 + 6);
      *&t2.c = v89;
      *&t2.tx = *(v18 + 14);
      t1 = transform;
      CGAffineTransformConcat(&v165, &t2, &t1);
      t2 = v165;
      if (CGSoftMaskCreate())
      {
        if (v88)
        {
          CFRetain(v88);
        }

        CGContextSetSoftMask();
        CGSoftMaskRelease();
      }

      goto LABEL_15;
    }

    if (v72 == 1)
    {
      v68.n128_u64[0] = *(v16 + 8);
      v69.n128_u64[0] = *(v16 + 16);
      v70.n128_u64[0] = *(v16 + 24);
      v71.n128_u64[0] = *(v16 + 32);
      v84 = *(v18 + 6);
      v85 = *(v18 + 14);
      *&transform.c = *(v18 + 10);
      *&transform.tx = v85;
      *&transform.a = v84;
      v86 = *(v18 + 2);
      if (CGVersionLoad_onceToken == -1)
      {
        v87 = __CGContextClipToMaskWithTransformFunc;
        if (__CGContextClipToMaskWithTransformFunc)
        {
LABEL_75:
          v87(a1, v86, &transform, v68, v69, v70, v71);
          goto LABEL_15;
        }
      }

      else
      {
        v137 = *(v18 + 2);
        v138 = v71.n128_u64[0];
        v139 = v70.n128_u64[0];
        v140 = v69.n128_u64[0];
        v141 = v68.n128_u64[0];
        dispatch_once(&CGVersionLoad_onceToken, &__block_literal_global_64);
        v86 = v137;
        v68.n128_u64[0] = v141;
        v69.n128_u64[0] = v140;
        v70.n128_u64[0] = v139;
        v71.n128_u64[0] = v138;
        v87 = __CGContextClipToMaskWithTransformFunc;
        if (__CGContextClipToMaskWithTransformFunc)
        {
          goto LABEL_75;
        }
      }

      CGContextClipToMask(a1, *v68.n128_u64, v86);
      goto LABEL_15;
    }

    if (!*(v18 + 8))
    {
      if (*(v18 + 2))
      {
        UpdateGState(a1, v16);
        v73 = *(v18 + 2);
        v74 = v18[3];
        if (v74 != 2)
        {
          if (v74 == 1)
          {
            CGContextAddPath(a1, *(v18 + 2));
            CGContextEOClip(a1);
          }

          else if (!v74)
          {
            CGContextAddPath(a1, *(v18 + 2));
            CGContextClip(a1);
          }

          goto LABEL_15;
        }

        GState = CGContextGetGState();
        if (CGVersionLoad_onceToken == -1)
        {
          v93 = __CGGStateClipToPathFunc;
          if (!__CGGStateClipToPathFunc)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v142 = GState;
          dispatch_once(&CGVersionLoad_onceToken, &__block_literal_global_64);
          GState = v142;
          v93 = __CGGStateClipToPathFunc;
          if (!__CGGStateClipToPathFunc)
          {
            goto LABEL_15;
          }
        }

        v93(GState, v73, 2);
        goto LABEL_15;
      }

      v174.origin.x = 0.0;
      v174.origin.y = 0.0;
      v174.size.width = 0.0;
      v174.size.height = 0.0;
      CGContextClipToRect(a1, v174);
    }

LABEL_15:
    CGContextSaveGState(a1);
LABEL_17:
    v21 = *(v16 + 56);
    *&transform.a = *(v16 + 40);
    *&transform.c = v21;
    *&transform.tx = *(v16 + 72);
    CGContextConcatCTM(a1, &transform);
LABEL_18:
    v22 = *(a5 + 24);
    v23 = *(v16 + 152);
    *&transform.a = *(v16 + 136);
    *&transform.c = v23;
    *&transform.tx = *(v16 + 168);
    CGContextSetBaseCTM();
    v24 = *(v16 + 88);
    if (v24 && CGColorGetPattern(v24) || (v25 = *(v16 + 224)) != 0 && CGColorGetPattern(v25) || (v26 = *(v16 + 200)) != 0 && CGColorGetPattern(v26) || (v27 = *(v16 + 216)) != 0 && CGColorGetPattern(v27))
    {
      memset(&transform, 0, sizeof(transform));
      CGContextGetBaseCTM();
      CGAffineTransformMakeScale(&t2, v22, v22);
      t1 = transform;
      CGAffineTransformConcat(&v165, &t1, &t2);
      transform = v165;
      CGContextSetBaseCTM();
    }

    CGContextSetCompositeOperation();
    v28 = *(v16 + 192);
    if (v28)
    {
      v29 = *(a5 + 24);
      CGStyleCreateShadow();
      Data = CGStyleGetData();
      if (Data)
      {
        v31 = Data;
        v32 = v29;
        v33 = *(v28 + 32);
        v34 = *(v28 + 16);
        v35 = __sincosf_stret(v34 * 0.017453);
        v36 = v33 * v35.__cosval;
        v37 = v33 * v35.__sinval;
        *&v33 = v36 * v32;
        v38 = v37 * v32;
        v31[5] = v31[5] * v32;
        v39 = atan2((v37 * v32), (v36 * v32));
        v31[2] = (v39 * 57.296);
        v31[4] = sqrtf((v38 * v38) + (*&v33 * *&v33));
      }

      CGStyleGetData();
      CGStyleCreateShadowWithColor();
      CGContextSetStyle();
      CGStyleRelease();
      CGStyleRelease();
    }

    if (*(v16 + 208))
    {
      v40 = *(a5 + 24);
      CGStyleCreateFocusRing();
      v41 = CGStyleGetData();
      *(v41 + 24) = *(v41 + 24) * v40;
      CGStyleGetData();
      CGStyleCreateFocusRingWithColor();
      CGContextSetStyle();
      CGStyleRelease();
      CGStyleRelease();
    }

    CGContextSetAlpha(a1, *(v16 + 288));
    if (v19 <= 2)
    {
      if (!v19)
      {
        DrawPath(a1, v16, *(v18 + 1));
        goto LABEL_131;
      }

      if (v19 == 2)
      {
        UpdateGState(a1, v16);
        v59 = *(v18 + 1);
        CGContextDrawImage(a1, *(v16 + 104), v59);
        if (*(a5 + 16) == 1)
        {
          CGContextGetGState();
          Width = CGImageGetWidth(v59);
          Height = CGImageGetHeight(v59);
          CTM = CGGStateGetCTM();
          v63 = *CTM;
          v64 = CTM[2];
          *&transform.c = CTM[1];
          *&transform.tx = v64;
          *&transform.a = v63;
          *&v63 = 0;
          v65 = 0;
          *&v64 = Width;
          v66 = Height;
          v170 = CGRectApplyAffineTransform(*&v63, &transform);
          if (v170.size.width > Width || v170.size.height > Height)
          {
            CGContextSetRGBFillColor(a1, 1.0, 0.0, 0.0, 0.9);
            v171.origin.x = 0.0;
            v171.origin.y = 0.0;
            v171.size.width = Width;
            v171.size.height = Height;
            CGContextFillRect(a1, v171);
          }
        }

        goto LABEL_131;
      }

LABEL_69:
      if (v19 == 1)
      {
        goto LABEL_131;
      }

      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v81 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v81 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }
      }

      LODWORD(transform.a) = 67109120;
      HIDWORD(transform.a) = v19;
      v82 = v81;
      v83 = "Unsupported drawing of resource type %d";
LABEL_85:
      _os_log_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_DEFAULT, v83, &transform, 8u);
      goto LABEL_131;
    }

    if (v19 == 3)
    {
      v75 = *(v18 + 1);
      v76 = *(v75 + 1);
      v77 = *v75;
      if (*v75 == 2)
      {
        CGContextDrawConicGradient(a1, v76, *(v75 + 1), *(v75 + 4));
        goto LABEL_131;
      }

      if (v77 == 1)
      {
        CGContextDrawRadialGradient(a1, v76, *(v75 + 1), *(v75 + 6), *(v75 + 2), *(v75 + 7), v75[16]);
        goto LABEL_131;
      }

      if (!v77)
      {
        CGContextDrawLinearGradient(a1, v76, *(v75 + 1), *(v75 + 2), v75[16]);
        goto LABEL_131;
      }

      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v90 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v90 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }
      }

      v91 = *v75;
      LODWORD(transform.a) = 67109120;
      HIDWORD(transform.a) = v91;
      v82 = v90;
      v83 = "Unsupported drawing of gradient type %d";
      goto LABEL_85;
    }

    if (v19 == 4)
    {
      v78 = *(v18 + 2);
      if ((v78 & 0x8000000000000000) == 0)
      {
        v79 = *(v18 + 1);
        if (v78 + v79 <= v145)
        {
          v172 = *(v16 + 8);
          v80 = *(v16 + 56);
          *&transform.a = *(v16 + 40);
          *&transform.c = v80;
          *&transform.tx = *(v16 + 72);
          v173 = CGRectApplyAffineTransform(v172, &transform);
          CGContextBeginTransparencyLayerWithRect(a1, v173, 0);
          DrawPerspectiveSubcommands(a1, v162, v79, v78, a5);
          CGContextEndTransparencyLayer(a1);
          a3 += v78;
          goto LABEL_131;
        }
      }

      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v143 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LOWORD(transform.a) = 0;
      v144 = "Internal inconsistency: out of bounds subcommands end index";
      goto LABEL_162;
    }

    if (v19 != 5)
    {
      goto LABEL_69;
    }

    v42 = CFArrayGetCount(*(v162 + 64));
    v43 = 1.0;
    if (*(a5 + 40) == 1)
    {
      v44 = *(a5 + 32);
      if (v44 == 0.0)
      {
        v44 = 2.0;
      }

      v43 = v44 / *(a5 + 48);
    }

    v150 = v43;
    v45 = *(v18 + 1);
    memset(&v165, 0, sizeof(v165));
    v46 = *v45;
    v47 = v45[2];
    *&transform.c = v45[1];
    *&transform.tx = v47;
    *&transform.a = v46;
    CGAffineTransformScale(&v165, &transform, v43, v43);
    *&v165.tx = vmulq_n_f64(*&v165.tx, v150);
    QuantizationLevelWithStyle = CGFontGetQuantizationLevelWithStyle();
    v49 = *(v45 + 11);
    t2 = v165;
    CGAffineTransformScale(&transform, &t2, 1.0 / v49, 1.0 / v49);
    v165 = transform;
    v50 = malloc_type_malloc(16 * *(v45 + 6), 0x1000040451B5BE8uLL);
    v51 = *(v45 + 8);
    v52 = *(v45 + 6);
    b = v165.b;
    a = v165.a;
    c = v165.c;
    d = v165.d;
    v57 = *&v165.tx;
    v151 = v50;
    if (CGVersionLoad_onceToken != -1)
    {
      v94 = *(v45 + 8);
      v95 = *(v45 + 6);
      v156 = v165.c;
      v158 = v165.a;
      path1a = v165.d;
      v154 = v165.b;
      dispatch_once(&CGVersionLoad_onceToken, &__block_literal_global_64);
      d = path1a;
      b = v154;
      c = v156;
      a = v158;
      v52 = v95;
      v51 = v94;
      v50 = v151;
      v58 = __CGFontGetGlyphPositionsFunc;
      if (__CGFontGetGlyphPositionsFunc)
      {
        goto LABEL_43;
      }

LABEL_92:
      if (v52)
      {
        v96 = *&v57 + 0.001;
        v97 = *(&v57 + 1) + 0.001;
        if (v52 >= 3)
        {
          v98 = 0;
          v99 = &v50[2 * v52];
          v100 = v51 + 16 * v52;
          v101 = v100 - 8;
          v103 = (v50 + 1) < v100 && v51 + 8 < v99;
          v104 = v51 >= v99 - 8 || v50 >= v101;
          if (v104 && !v103)
          {
            v105 = vdupq_lane_s64(*&v96, 0);
            v98 = (v52 | 0xFFFFFFFFFFFFFFFELL) + v52;
            v106 = vdupq_lane_s64(*&v97, 0);
            v107 = v98;
            v108 = v51;
            v109 = v50;
            do
            {
              v168 = vld2q_f64(v108);
              v108 += 4;
              v169.val[0] = vmlaq_n_f64(vmlaq_n_f64(v105, v168.val[0], a), v168.val[1], c);
              v169.val[1] = vmlaq_n_f64(vmlaq_n_f64(v106, v168.val[1], d), v168.val[0], b);
              vst2q_f64(v109, v169);
              v109 += 4;
              v107 -= 2;
            }

            while (v107);
          }
        }

        else
        {
          v98 = 0;
        }

        v110 = v52 - v98;
        v111 = 16 * v98;
        v112 = &v50[2 * v98 + 1];
        v113 = (v51 + v111);
        do
        {
          v114 = v113[1];
          *(v112 - 1) = v96 + *v113 * a + v114 * c;
          v115 = *v113;
          v113 += 2;
          *v112 = v97 + v114 * d + v115 * b;
          v112 += 2;
          --v110;
        }

        while (v110);
      }

      goto LABEL_111;
    }

    v58 = __CGFontGetGlyphPositionsFunc;
    if (!__CGFontGetGlyphPositionsFunc)
    {
      goto LABEL_92;
    }

LABEL_43:
    transform.a = a;
    transform.b = b;
    transform.c = c;
    transform.d = d;
    *&transform.tx = v57;
    v58(v51, v52, &transform);
LABEL_111:
    path1 = CGPathCreateMutable();
    v116 = v146;
    v117 = v147;
    v118 = *(v45 + 6);
    y = v148;
    x = v149;
    if (v118 < 1)
    {
LABEL_121:
      if (*(v16 + 322) == 1)
      {
        v134 = v151;
        if (!CGPathIsEmpty(path1))
        {
          DrawPath(a1, v16, path1);
          BoundingBox = CGPathGetBoundingBox(path1);
          x = BoundingBox.origin.x;
          y = BoundingBox.origin.y;
          v117 = BoundingBox.size.width;
          v116 = BoundingBox.size.height;
        }
      }

      else
      {
        v134 = v151;
      }

      *(v16 + 8) = x;
      *(v16 + 16) = y;
      *(v16 + 24) = v117;
      *(v16 + 32) = v116;
      goto LABEL_130;
    }

    v121 = 0;
    v122 = SHIDWORD(QuantizationLevelWithStyle);
    v159 = QuantizationLevelWithStyle;
    v157 = 1.0 / QuantizationLevelWithStyle;
    v155 = 1.0 / SHIDWORD(QuantizationLevelWithStyle);
    v123 = v151 + 1;
    y = v148;
    x = v149;
    v116 = v146;
    v117 = v147;
    v124 = 1.0 / v150;
    while (1)
    {
      v125 = *(*(v45 + 7) + 8 * v121);
      if ((v125 & 0x8000000000000000) == 0 && v125 < v42)
      {
        break;
      }

LABEL_115:
      ++v121;
      v123 += 2;
      if (v121 >= v118)
      {
        goto LABEL_121;
      }
    }

    v126 = CFArrayGetValueAtIndex(*(v162 + 64), v125);
    if (!*v126)
    {
      v127 = v126;
      v128 = *(v123 - 1);
      v129 = floor(v128);
      v130 = floor(*v123);
      v131 = (v129 + ((v128 - v129) * v159) * v157) * v124;
      v132 = (v130 + ((*v123 - v130) * v122) * v155) * v124;
      CGContextSaveGState(a1);
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformMakeTranslation(&transform, v131, v132);
      t2 = transform;
      CGContextConcatCTM(a1, &t2);
      v133 = *(v127 + 1);
      if (*(v16 + 322) == 1)
      {
        CGPathAddPath(path1, &transform, v133);
      }

      else
      {
        DrawPath(a1, v16, v133);
        v175 = CGPathGetBoundingBox(*(v127 + 1));
        t2 = transform;
        v179 = CGRectApplyAffineTransform(v175, &t2);
        v176.origin.x = x;
        v176.origin.y = y;
        v176.size.width = v117;
        v176.size.height = v116;
        v177 = CGRectUnion(v176, v179);
        x = v177.origin.x;
        y = v177.origin.y;
        v117 = v177.size.width;
        v116 = v177.size.height;
      }

      CGContextRestoreGState(a1);
      v118 = *(v45 + 6);
      goto LABEL_115;
    }

    if (__CGPerspectiveOSLog_onceToken != -1)
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
    }

    v134 = v151;
    v135 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(transform.a) = 0;
      _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "Expected path type", &transform, 2u);
    }

LABEL_130:
    CGPathRelease(path1);
    free(v134);
LABEL_131:
    CGContextRestoreGState(a1);
    if (*a5 == 1)
    {
      CGContextSaveGState(a1);
      v136 = *(a5 + 8);
      if (v136)
      {
        CGContextSetStrokeColorWithColor(a1, v136);
      }

      else
      {
        CGContextSetRGBStrokeColor(a1, 0.0, 0.0, 1.0, 1.0);
      }

      CGContextSetLineWidth(a1, 1.0);
      CGContextSetLineDash(a1, 0.0, 0, 0);
      CGContextStrokeRect(a1, *(v16 + 8));
      CGContextRestoreGState(a1);
    }

    if (++a3 < v160)
    {
      continue;
    }

    break;
  }

  if (v11 >= 1)
  {
    do
    {
      CGContextRestoreGState(a1);
      --v11;
    }

    while (v11);
  }
}

void UpdateGState(CGContext *a1, uint64_t a2)
{
  CGContextSetLineWidth(a1, *(a2 + 232));
  CGContextSetLineWidthThreshold();
  CGContextSetLineCap(a1, *(a2 + 252));
  CGContextSetLineJoin(a1, *(a2 + 248));
  CGContextSetMiterLimit(a1, *(a2 + 280));
  CGContextSetStrokeColorWithColor(a1, *(a2 + 224));
  CGContextSetFillColorWithColor(a1, *(a2 + 88));
  CGContextSetPatternPhase(a1, *(a2 + 296));
  CGContextSetStrokeAdjust();
  CGContextSetShouldAntialias(a1, *(a2 + 321));
  v4 = *(a2 + 312);

  CGContextSetFlatness(a1, v4);
}

uint64_t DrawSoftMaskCommands(uint64_t result, CGContext *a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      *&v7[8] = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0;
      *v7 = xmmword_1E310A300;
      *&v8 = 0x3FF0000000000000;
      CGContextGetBaseCTM();
      Count = CFArrayGetCount(*(v3 + 72));
      DrawPerspectiveSubcommands(a2, v3, 0, Count, &v5);
      return CGContextSetBaseCTM();
    }
  }

  return result;
}

void ReleaseSoftMaskInfo(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void DrawPath(CGContext *a1, uint64_t a2, const CGPath *a3)
{
  UpdateGState(a1, a2);
  v6 = *(a2 + 256);
  if (!v6)
  {
    CGContextSetLineDash(a1, 0.0, 0, 0);
    v7 = *(a2 + 96);
    if (v7 > 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (v7)
    {
      if (v7 == 1)
      {
        CGContextAddPath(a1, a3);

        CGContextEOFillPath(a1);
      }
    }

    else
    {
      CGContextAddPath(a1, a3);

      CGContextFillPath(a1);
    }

    return;
  }

  CGContextSetLineDash(a1, *(a2 + 272), v6, *(a2 + 264));
  v7 = *(a2 + 96);
  if (v7 <= 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v7 != 2)
  {
    if (v7 == 3)
    {
      CGContextAddPath(a1, a3);
      CGContextFillPath(a1);
    }

    else
    {
      if (v7 != 4)
      {
        return;
      }

      CGContextAddPath(a1, a3);
      CGContextEOFillPath(a1);
    }
  }

  CGContextAddPath(a1, a3);

  CGContextStrokePath(a1);
}

void CGImageDescriptionDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 24));
  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 64);

    free(v3);
  }
}

uint64_t DecodeCGImage(uint64_t a1, CGImageRef *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v4 = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v19, 1uLL);
  v5 = v19;
  if (v4 && v19 < 3u)
  {
    *a2 = 0;
    if (!v5)
    {
      return 1;
    }

    if (v5 != 2)
    {
      if (DecodeBaseCGImage(a1, a2))
      {
        return *a2 != 0;
      }

      return 0;
    }

    image = 0;
    if (DecodeBaseCGImage(a1, &image))
    {
      *mask = 0;
      v7 = DecodeBaseCGImage(a1, mask);
      v8 = image;
      if (v7)
      {
        v9 = *mask;
        *a2 = CGImageCreateWithMask(image, *mask);
        CGImageRelease(v8);
        CGImageRelease(v9);
        return *a2 != 0;
      }

      CGImageRelease(image);
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v11 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v11 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      v17 = 0;
      v13 = "Failed to decode image's mask";
      v14 = &v17;
      v15 = v11;
      v16 = 2;
LABEL_26:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v13, v14, v16);
      return 0;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v12 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v12 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *mask = 136315650;
    *&mask[4] = "Failed to decode image's base image";
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveImageCoder.c";
    v23 = 1024;
    v24 = 654;
    v13 = "%s in file %s (line %i)";
LABEL_23:
    v14 = mask;
    v15 = v12;
    v16 = 28;
    goto LABEL_26;
  }

  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v12 = __CGPerspectiveOSLog_log;
    result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_19:
      *mask = 136315650;
      *&mask[4] = "Failed to decode image type";
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveImageCoder.c";
      v23 = 1024;
      v24 = 636;
      v13 = "%s in file %s (line %i)";
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
    v12 = __CGPerspectiveOSLog_log;
    result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_19;
    }
  }

  return result;
}

BOOL DecodeBaseCGImage(uint64_t a1, CGImageRef *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = *(MEMORY[0x1E695F058] + 16);
  v30.origin = *MEMORY[0x1E695F058];
  v30.size = v4;
  v5 = *(a1 + 16);
  buf[0] = 0;
  if (!CGPerspectiveDataDecode_bytes(v5, buf, 1uLL))
  {
    return 0;
  }

  v6 = buf[0];
  if (buf[0])
  {
    result = CGPerspectiveDataDecode_bytes(*(a1 + 16), &v30, 0x20uLL);
    if (!result)
    {
      return result;
    }
  }

  v8 = *(a1 + 16);
  buf[0] = 0;
  if (!CGPerspectiveDataDecode_bytes(v8, buf, 1uLL))
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v11 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v11 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    *buf = 0;
    v12 = "Failed to decode shared memory flag";
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    return 0;
  }

  if (!buf[0])
  {
    *a2 = 0;
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    *bytesPerRow = 0u;
    *decode = 0u;
    *data = 0u;
    v39 = 0u;
    *buf = 0u;
    v13 = *(a1 + 16);
    size[0] = 0;
    if (!CGPerspectiveDataDecode_bytes(v13, size, 1uLL))
    {
      return 0;
    }

    buf[8] = size[0] != 0;
    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v39, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v39 + 4, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v39 + 8, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &v39 + 12, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), bytesPerRow, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), bytesPerRow + 4, 4uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &bytesPerRow[1], 1uLL))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), &decode[1], 1uLL))
    {
      return 0;
    }

    v14 = *(a1 + 16);
    size[0] = 0;
    if (!CGPerspectiveDataDecode_bytes(v14, size, 1uLL))
    {
      return 0;
    }

    v29 = v6;
    if (size[0])
    {
      *size = 0;
      if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), size, 8uLL))
      {
        return 0;
      }

      v15 = *size;
      if (*size < 1 || (v16 = *(a1 + 16), v15 > CFDataGetLength(*v16) - *(v16 + 8)))
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        v31 = 0;
        v18 = "Inconsistent or out of bounds read for image's decode array";
        goto LABEL_33;
      }

      v21 = malloc_type_malloc(*size, 0xC5D59F28uLL);
      decode[0] = v21;
      LOBYTE(v44) = 1;
      if (!v21)
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        v31 = 0;
        v18 = "Failed to malloc image's decode array";
LABEL_33:
        v19 = &v31;
LABEL_68:
        v26 = v17;
        v27 = 2;
LABEL_69:
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, v18, v19, v27);
        return 0;
      }

      if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), v21, *size))
      {
        return 0;
      }
    }

    if ((buf[8] & 1) == 0 && !DecodeCGColorSpace(a1, &data[1]))
    {
      return 0;
    }

    if (!CGPerspectiveDataDecode_CFData(*(a1 + 16), data))
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v28 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v28 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      *size = 136315650;
      *&size[4] = "Failed to read pixel buffer";
      v33 = 2080;
      v34 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/CGPerspectiveContext/CGPerspectiveContext/CGPerspectiveImageCoder.c";
      v35 = 1024;
      v36 = 240;
      v18 = "%s in file %s (line %i)";
      v19 = size;
      v26 = v28;
      v27 = 28;
      goto LABEL_69;
    }

    if (data[0])
    {
      v22 = CGDataProviderCreateWithCFData(data[0]);
      if (!v22)
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v17 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        *size = 0;
        goto LABEL_67;
      }

      v23 = v22;
      if (buf[8])
      {
        v24 = CGImageMaskCreate(v39, DWORD1(v39), HIDWORD(v39), DWORD2(v39), LODWORD(bytesPerRow[0]), v22, decode[0], LOBYTE(decode[1]) != 0);
      }

      else
      {
        v24 = CGImageCreate(v39, DWORD1(v39), HIDWORD(v39), DWORD2(v39), LODWORD(bytesPerRow[0]), data[1], HIDWORD(bytesPerRow[0]), v22, decode[0], LOBYTE(decode[1]) != 0, LOBYTE(bytesPerRow[1]));
      }

      v25 = v24;
      CGDataProviderRelease(v23);
      CGImageDescriptionDestroy(buf);
      if (v25)
      {
        v9 = v25;
        *a2 = v25;
        if (!v29)
        {
          return 1;
        }

        goto LABEL_10;
      }
    }

    else
    {
      CGImageDescriptionDestroy(buf);
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v17 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v17 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *size = 0;
LABEL_67:
    v19 = size;
    goto LABEL_68;
  }

  if (*(a1 + 40))
  {
    *size = 0;
    if (CGPerspectiveDataDecode_bytes(*(a1 + 16), size, 8uLL))
    {
      v9 = CGPerspectiveDecodingCacheCopyImage(*(a1 + 40), *size);
      if (v9)
      {
        *a2 = v9;
        if (!v6)
        {
          return 1;
        }

LABEL_10:
        v10 = CGImageCreateWithImageInRect(v9, v30);
        CGImageRelease(*a2);
        *a2 = v10;
        return 1;
      }

      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v20 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v20 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      *buf = 134217984;
      *&buf[4] = *size;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to find cached image ID %llu", buf, 0xCu);
    }

    return 0;
  }

  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v11 = __CGPerspectiveOSLog_log;
    result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_36;
  }

  dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
  v11 = __CGPerspectiveOSLog_log;
  result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_36:
    *buf = 0;
    v12 = "Asked to decode a cached image, but has no cache";
    goto LABEL_15;
  }

  return result;
}

BOOL DecodeCGImageHeader(uint64_t a1, CFDataRef *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  address = 0;
  v5 = *MEMORY[0x1E69E9A60];
  Port = CAMachPortGetPort();
  v7 = mach_vm_map(v5, &address, 0xFA00uLL, 0, 1048577, Port, 0, 0, 1, 1, 2u);
  if (v7)
  {
    v8 = v7;
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v9 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_4:
        v11 = mach_error_string(v8);
        LODWORD(buf.version) = 136315138;
        *(&buf.version + 4) = v11;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to extract header port: %s", &buf, 0xCu);
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v9 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    buf.version = 0;
    memset(&buf.retain, 0, 40);
    buf.info = 64000;
    buf.deallocate = deallocate_vm_region;
    buf.preferredSize = 0;
    v12 = CFAllocatorCreate(0, &buf);
    *a2 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], address, 64000, v12);
    CFRelease(v12);
    v13 = *a2;
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
    *v14 = v13;
    CFRetain(v13);
    v14[1] = 0;
    v16 = 0;
    v15 = CGPerspectiveDataDecode_bytes(v14, &v16, 8uLL) && CGPerspectiveDataDecode_bytes(v14, a3, 8uLL);
    CFRelease(*v14);
    free(v14);
    return v15;
  }

  return result;
}

CGDataProvider *DecodeCGImageBody(const void *a1, uint64_t a2, CGImageRef *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  *v5 = a1;
  CFRetain(a1);
  v5[1] = 0;
  length[0] = 0;
  v6 = CGPerspectiveDataDecode_bytes(v5, length, 8uLL);
  CFRelease(*v5);
  free(v5);
  if (!v6)
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v18 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v18 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    LOWORD(context) = 0;
    v14 = "Failed to extract buffer size hint";
    p_context = &context;
    goto LABEL_52;
  }

  address = 0;
  v7 = *MEMORY[0x1E69E9A60];
  v8 = length[0];
  Port = CAMachPortGetPort();
  v10 = mach_vm_map(v7, &address, v8, 0, 1048577, Port, 0, 0, 1, 1, 2u);
  if (v10)
  {
    v11 = v10;
    if (__CGPerspectiveOSLog_onceToken != -1)
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v12 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      goto LABEL_5;
    }

    v12 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v13 = mach_error_string(v11);
      LODWORD(context) = 136315138;
      *(&context + 4) = v13;
      v14 = "Failed to extract buffer port: %s";
      p_context = &context;
      v16 = v12;
      v17 = 12;
LABEL_53:
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v14, p_context, v17);
    }

    return 0;
  }

  context_32 = 0u;
  *&context_48[0] = 0;
  *&context = 0;
  context_16 = 0u;
  *(&context + 1) = length[0];
  *(&context_48[0] + 1) = deallocate_vm_region;
  *&context_48[1] = 0;
  v20 = CFAllocatorCreate(0, &context);
  v21 = *MEMORY[0x1E695E480];
  v22 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], address, length[0], v20);
  CFRelease(v20);
  v47 = 0u;
  v48 = 0u;
  *length = 0u;
  v46 = 0u;
  v23 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  *v23 = a1;
  CFRetain(a1);
  v23[1] = 0;
  *&v46 = v23;
  v24 = malloc_type_calloc(0x20uLL, 1uLL, 0x5948090uLL);
  v25 = MEMORY[0x1E695E9D8];
  v26 = MEMORY[0x1E695E9E8];
  *v24 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24[1] = CFDictionaryCreateMutable(v21, 0, v25, v26);
  v24[2] = CFDictionaryCreateMutable(v21, 0, v25, v26);
  v24[3] = 0;
  *&v48 = v24;
  v54 = 0;
  memset(context_48, 0, sizeof(context_48));
  context_32 = 0u;
  context = 0u;
  context_16 = v22;
  address = 0;
  result = CGPerspectiveDataDecode_bytes(v23, &address, 8uLL);
  if (!result)
  {
    return result;
  }

  v27 = CFDataGetLength(v22);
  if (v27 != address)
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    LOWORD(v44[0]) = 0;
    v14 = "Image buffer didn't match expected length";
    p_context = v44;
    goto LABEL_52;
  }

  v44[0] = 0;
  v28 = CGPerspectiveDataDecode_bytes(v23, v44, 8uLL);
  LOBYTE(size[0]) = 0;
  v29 = CGPerspectiveDataDecode_bytes(v23, size, 1uLL);
  if (v29)
  {
    BYTE8(context) = LOBYTE(size[0]) != 0;
  }

  v30 = v28 & CGPerspectiveDataDecode_bytes(v23, &context_32, 4uLL);
  v31 = CGPerspectiveDataDecode_bytes(v23, &context_32 + 4, 4uLL);
  v32 = v30 & v31 & CGPerspectiveDataDecode_bytes(v23, &context_32 + 8, 4uLL);
  v33 = CGPerspectiveDataDecode_bytes(v23, &context_32 + 12, 4uLL);
  v34 = v33 & CGPerspectiveDataDecode_bytes(v23, context_48, 4uLL);
  v35 = v32 & v34 & CGPerspectiveDataDecode_bytes(v23, context_48 + 4, 4uLL);
  v36 = CGPerspectiveDataDecode_bytes(v23, context_48 + 8, 1uLL);
  if ((v29 & v36 & CGPerspectiveDataDecode_bytes(v23, &context_48[1] + 8, 1uLL) & v35 & 1) == 0)
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    LOWORD(size[0]) = 0;
    v14 = "Failed to parse image description header.";
    p_context = size;
    goto LABEL_52;
  }

  LOBYTE(size[0]) = 0;
  if (!CGPerspectiveDataDecode_bytes(v23, size, 1uLL))
  {
    return 0;
  }

  if (LOBYTE(size[0]))
  {
    size[0] = 0;
    if (!CGPerspectiveDataDecode_bytes(v23, size, 8uLL))
    {
      return 0;
    }

    v37 = CFDataGetLength(*v23) - v23[1];
    if (v37 < size[0])
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v18 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v18 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      v42 = 0;
      v14 = "Out of bounds read for image's decode array";
      goto LABEL_49;
    }

    v38 = malloc_type_malloc(size[0], 0x70E22C8uLL);
    *&context_48[1] = v38;
    LOBYTE(v54) = 1;
    if (!v38)
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v18 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v18 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      v42 = 0;
      v14 = "Failed to malloc image's decode array";
LABEL_49:
      p_context = &v42;
      goto LABEL_52;
    }

    result = CGPerspectiveDataDecode_bytes(v23, v38, size[0]);
    if (!result)
    {
      return result;
    }
  }

  if ((BYTE8(context) & 1) == 0)
  {
    if (DecodeCGColorSpace(length, &context_16 + 1) && *(&context_16 + 1))
    {
      v23 = v46;
      goto LABEL_34;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    LOWORD(size[0]) = 0;
    v14 = "Failed to decode correct color space resource index for CGImageRef";
    p_context = size;
LABEL_52:
    v16 = v18;
    v17 = 2;
    goto LABEL_53;
  }

LABEL_34:
  CFRelease(*v23);
  free(v23);
  CGPerspectiveColorCacheRelease(v48);
  result = CGDataProviderCreateWithCFData(context_16);
  if (result)
  {
    v39 = result;
    if (BYTE8(context))
    {
      v40 = CGImageMaskCreate(context_32, DWORD1(context_32), HIDWORD(context_32), DWORD2(context_32), LODWORD(context_48[0]), result, *&context_48[1], BYTE8(context_48[1]) != 0);
    }

    else
    {
      v40 = CGImageCreate(context_32, DWORD1(context_32), HIDWORD(context_32), DWORD2(context_32), LODWORD(context_48[0]), *(&context_16 + 1), DWORD1(context_48[0]), result, *&context_48[1], BYTE8(context_48[1]) != 0, BYTE8(context_48[0]));
    }

    v41 = v40;
    CGDataProviderRelease(v39);
    CGImageDescriptionDestroy(&context);
    *a3 = v41;
    if (v41)
    {
      return 1;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_45:
        LOWORD(size[0]) = 0;
        p_context = size;
        goto LABEL_52;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v18 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_45;
      }
    }
  }

  return result;
}

void CGPerspectiveCacheFinalize(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __CGPerspectiveCacheFinalize_block_invoke;
    context[3] = &__block_descriptor_tmp_5_1;
    context[4] = a1;
    CFDictionaryApplyFunction(v2, DictionaryApplierFunction, context);
    CFRelease(*(a1 + 32));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __CGPerspectiveCacheFinalize_block_invoke_2;
    v4[3] = &__block_descriptor_tmp_6_2;
    v4[4] = a1;
    CFDictionaryApplyFunction(v3, DictionaryApplierFunction, v4);
    CFRelease(*(a1 + 40));
  }

  os_unfair_lock_unlock((a1 + 16));
}

__CFString *CGPerspectiveCacheCreateDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"CGPerspectiveCache:\n");
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 32))
  {
    CFStringAppend(Mutable, @" - Encoding cache:\n");
    v3 = *(a1 + 32);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __CGPerspectiveCacheCreateDebugDesc_block_invoke;
    context[3] = &__block_descriptor_tmp_16_2;
    context[4] = Mutable;
    CFDictionaryApplyFunction(v3, DictionaryApplierFunction, context);
  }

  if (*(a1 + 40))
  {
    CFStringAppend(Mutable, @" - Decoding cache:\n");
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __CGPerspectiveCacheCreateDebugDesc_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_20_1;
    v6[4] = Mutable;
    CFDictionaryApplyFunction(v4, DictionaryApplierFunction, v6);
  }

  os_unfair_lock_unlock((a1 + 16));
  return Mutable;
}

uint64_t __CGPerspectiveCacheTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGPerspectiveCacheTypeID_id = result;
  return result;
}

uint64_t CGPerspectiveDecodingCacheLoadPorts(uint64_t a1, const __CFArray *a2)
{
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 40))
  {
    Count = CFArrayGetCount(a2);
    if ((Count & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v16 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v16 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    *valuePtr = 0;
    v17 = "Failed to decode ports array: was not a multiple of two";
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, valuePtr, 2u);
    goto LABEL_26;
  }

  *(a1 + 40) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFArrayGetCount(a2);
  if (Count)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (Count < 1)
  {
LABEL_18:
    os_unfair_lock_unlock((a1 + 16));
    return 1;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
    v8 = v5 + 1;
    v9 = CFArrayGetValueAtIndex(a2, v8);
    if (!ValueAtIndex || (v10 = v9, v11 = CFGetTypeID(ValueAtIndex), v11 != CAMachPortGetTypeID()) || !v10 || (v12 = CFGetTypeID(v10), v12 != CAMachPortGetTypeID()))
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v16 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v16 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }

      *valuePtr = 0;
      v17 = "Failed to match expected types or is null";
      goto LABEL_25;
    }

    v19 = 0;
    v20 = 0;
    if (!DecodeCGImageHeader(ValueAtIndex, &v20, &v19))
    {
      break;
    }

    *valuePtr = v19;
    v13 = CFNumberCreate(v6, kCFNumberSInt64Type, valuePtr);
    if (CGImageDecoderTypeID_onceToken != -1)
    {
      dispatch_once(&CGImageDecoderTypeID_onceToken, &__block_literal_global_58);
    }

    Instance = _CFRuntimeCreateInstance();
    v15 = v20;
    Instance[2] = v19;
    Instance[3] = v15;
    Instance[4] = v10;
    Instance[5] = 0;
    CFRetain(v10);
    CFDictionarySetValue(*(a1 + 40), v13, Instance);
    CFRelease(Instance);
    CFRelease(v13);
    v5 = v8 + 1;
    if (Count <= v5)
    {
      goto LABEL_18;
    }
  }

  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v16 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
  v16 = __CGPerspectiveOSLog_log;
  if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
  {
LABEL_24:
    *valuePtr = 0;
    v17 = "Failed to decode header";
    goto LABEL_25;
  }

LABEL_26:
  os_unfair_lock_unlock((a1 + 16));
  return 0;
}

CGImageRef CGPerspectiveDecodingCacheCopyImage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  if (!*(a1 + 40))
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        os_unfair_lock_unlock((a1 + 16));
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v7 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }

    *valuePtr = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Consistency failure: decoded image expected ports, but none were initially decoded", valuePtr, 2u);
    goto LABEL_7;
  }

  v11 = 0;
  *valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  Value = CFDictionaryGetValue(*(a1 + 40), v4);
  if (Value)
  {
    v6 = *(Value + 5);
    if (v6)
    {
      v11 = *(Value + 5);
      CGImageRetain(v6);
    }

    else
    {
      v9 = Value;
      if (!DecodeCGImageBody(*(Value + 3), *(Value + 4), &v11))
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v10 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v10 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }

        *valuePtr = 0;
        _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to decode cache image", valuePtr, 2u);
        goto LABEL_12;
      }

      CFRelease(v9[3]);
      v9[3] = 0;
      CFRelease(v9[4]);
      v9[4] = 0;
      CGImageSetProperty();
      CFRetain(a1);
      CGImageNotificationCenter();
      CGNotificationCenterAddCallback();
      v9[5] = v11;
    }
  }

LABEL_12:
  CFRelease(v4);
  os_unfair_lock_unlock((a1 + 16));
  return v11;
}

void __CGPerspectiveCacheFinalize_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGImageNotificationCenter();
  CGNotificationCenterRemoveCallback();

  CFRelease(v1);
}

void __CGPerspectiveCacheFinalize_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 40))
  {
    v3 = *(a1 + 32);
    CGImageNotificationCenter();
    CGNotificationCenterRemoveCallback();

    CFRelease(v3);
  }
}

void CGImageNotificationWillDeallocate(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  os_unfair_lock_lock((a2 + 16));
  v6 = *(a2 + 32);
  if (v6)
  {
    CFDictionaryRemoveValue(v6, a4);
  }

  if (*(a2 + 40))
  {
    Property = CGImageGetProperty();
    if (!Property)
    {
      if (__CGPerspectiveOSLog_onceToken != -1)
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v8 = __CGPerspectiveOSLog_log;
        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v8 = __CGPerspectiveOSLog_log;
      if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:
        *v9 = 0;
      }
    }

LABEL_8:
    CFDictionaryRemoveValue(*(a2 + 40), Property);
  }

  os_unfair_lock_unlock((a2 + 16));
  CFRelease(a2);
}

void __CGPerspectiveCacheCreateDebugDesc_block_invoke_2(uint64_t a1, CFNumberRef number, uint64_t a3)
{
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr))
  {
    if (__CGPerspectiveOSLog_onceToken != -1)
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v5 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v5 = __CGPerspectiveOSLog_log;
    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
    {
LABEL_4:
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Internal inconsistency: invalid number type", buf, 2u);
    }
  }

LABEL_5:
  CFStringAppendFormat(*(a1 + 32), 0, @"   - Image: %p, id %llu\n", *(a3 + 40), valuePtr);
}

uint64_t __CGPerspectiveSignalerTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGPerspectiveSignalerTypeID_id = result;
  return result;
}

BOOL GetPortsAndCache(const __CFDictionary *a1, void *a2, void *a3)
{
  if (!a1)
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a1, @"ports");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFArrayGetTypeID())
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v12 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v12 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v18 = 0;
      v15 = &v18;
LABEL_21:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v14, v15, 2u);
      return 0;
    }
  }

  v9 = CFDictionaryGetValue(a1, @"cache");
  v10 = v9;
  if (!v9)
  {
LABEL_11:
    *a2 = v7;
    *a3 = v10;
    return 1;
  }

  v11 = CFGetTypeID(v9);
  if (CGPerspectiveCacheTypeID_onceToken != -1)
  {
    v16 = v11;
    dispatch_once(&CGPerspectiveCacheTypeID_onceToken, &__block_literal_global_62);
    if (v16 != CGPerspectiveCacheTypeID_id)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v11 == CGPerspectiveCacheTypeID_id)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (__CGPerspectiveOSLog_onceToken == -1)
  {
    v12 = __CGPerspectiveOSLog_log;
    result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_20;
  }

  dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
  v12 = __CGPerspectiveOSLog_log;
  result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_20:
    v17 = 0;
    v15 = &v17;
    goto LABEL_21;
  }

  return result;
}

uint64_t CGPerspectiveCommandsDecodeFromData(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v124 = 0;
  v125 = 0;
  if (!GetPortsAndCache(a3, &v125, &v124))
  {
    return 0;
  }

  if (a3)
  {
    v6 = CFDictionaryGetValue(a3, @"SkipVersionGuard") == *MEMORY[0x1E695E4D0];
    v7 = 0;
    Instance = v124;
    v8 = v125;
    v10 = *MEMORY[0x1E695E480];
    if (!v125)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    Instance = v124;
    v8 = v125;
    v10 = *MEMORY[0x1E695E480];
    if (!v125)
    {
      goto LABEL_11;
    }
  }

  if (!Instance)
  {
    if (CGPerspectiveCacheTypeID_onceToken != -1)
    {
      dispatch_once(&CGPerspectiveCacheTypeID_onceToken, &__block_literal_global_62);
    }

    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = 0;
    *(Instance + 32) = 0;
    *(Instance + 40) = 0;
    *(Instance + 24) = 0;
    v7 = Instance;
    v124 = Instance;
  }

LABEL_11:
  v122 = 0;
  v117 = 0;
  v116 = a1;
  Ports = 1;
  v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  *v12 = a2;
  CFRetain(a2);
  v12[1] = 0;
  v118 = v12;
  v119 = v8;
  v123 = 0;
  v120 = Instance;
  v13 = malloc_type_calloc(0x20uLL, 1uLL, 0x5948090uLL);
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  *v13 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13[1] = CFDictionaryCreateMutable(v10, 0, v14, v15);
  v13[2] = CFDictionaryCreateMutable(v10, 0, v14, v15);
  v13[3] = 0;
  v121 = v13;
  LOBYTE(v122) = v6;
  if (v8)
  {
    Ports = CGPerspectiveDecodingCacheLoadPorts(Instance, v8);
  }

  if (CFDataGetLength(*v12) == v12[1])
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v16 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v16 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    *buf = 0;
    v17 = "Given data length was zero";
    v18 = v16;
    v19 = 2;
    goto LABEL_17;
  }

  v128 = 0;
  if (!CGPerspectiveDataDecode_bytes(v12, &v128, 4uLL))
  {
    goto LABEL_35;
  }

  if (v128 == 25 || (v122 & 1) != 0)
  {
    if (CGPerspectiveDataDecode_bytes(v118, &v117, 8uLL))
    {
      v20 = v116;
      if (CGPerspectiveDataDecode_bytes(v118, (v116 + 16), 0x20uLL))
      {
        buf[0] = 0;
        if (CGPerspectiveDataDecode_bytes(v118, buf, 1uLL))
        {
          if (buf[0])
          {
            *buf = 0;
            if (!CGPerspectiveDataDecode_CFData(v118, buf))
            {
              goto LABEL_35;
            }

            v21 = CFStringCreateFromExternalRepresentation(v10, *buf, 0x600u);
            CFRelease(*buf);
            if (!v21)
            {
              if (__CGPerspectiveOSLog_onceToken == -1)
              {
                v27 = __CGPerspectiveOSLog_log;
                if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_35;
                }
              }

              else
              {
                dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                v27 = __CGPerspectiveOSLog_log;
                if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_35;
                }
              }

              LOWORD(v131) = 0;
              _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Unable to create colorspace name from colorSpaceNameData", &v131, 2u);
              goto LABEL_35;
            }

            *(v116 + 48) = CGColorSpaceCreateWithName(v21);
            CFRelease(v21);
            if (!*(v116 + 48))
            {
              goto LABEL_35;
            }
          }

          if (CGPerspectiveDataDecode_bytes(v118, (v20 + 56), 4uLL))
          {
            v127 = 0;
            if (CGPerspectiveDataDecode_bytes(v118, &v127, 8uLL))
            {
              *(&v119 + 1) = v127;
              v126 = 0;
              if (CGPerspectiveDataDecode_bytes(v118, &v126, 8uLL))
              {
                if (v127 >= 1)
                {
                  v22 = 0;
                  v115 = *MEMORY[0x1E695F258];
                  v114 = *MEMORY[0x1E695E4D0];
                  v113 = *MEMORY[0x1E695E4C0];
                  do
                  {
                    v28 = CGPerspectiveResourceCreate(v20);
                    if (!CGPerspectiveDataDecode_bytes(v118, v28, 4uLL))
                    {
                      goto LABEL_315;
                    }

                    v29 = *v28;
                    if (*v28 > 5u)
                    {
                      goto LABEL_315;
                    }

                    if (v29 > 2)
                    {
                      if (v29 == 3)
                      {
                        v31 = malloc_type_calloc(0x50uLL, 1uLL, 0xAFA0DD88uLL);
                        *(v28 + 1) = v31;
                        *buf = 0;
                        if (!CGPerspectiveDataDecode_bytes(v118, buf, 8uLL))
                        {
                          goto LABEL_315;
                        }

                        *&v131 = 0;
                        if (!DecodeCGColorSpace(&v116, &v131))
                        {
                          goto LABEL_315;
                        }

                        if (!v131)
                        {
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Gradient failed to decode required color space";
                          goto LABEL_313;
                        }

                        if (*buf >= 0)
                        {
                          v32 = *buf;
                        }

                        else
                        {
                          v32 = -*buf;
                        }

                        if (*buf >= 0)
                        {
                          v33 = 8 * v32;
                        }

                        else
                        {
                          v33 = -8 * v32;
                        }

                        if (v32 >> 61 || 8 * v32 > (*buf >> 63) + 0x7FFFFFFFFFFFFFFFLL)
                        {
                          CGColorSpaceRelease(v131);
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Location buffer allocation overflow detected when decoding gradient";
                          goto LABEL_313;
                        }

                        space = v131;
                        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v131);
                        v35 = NumberOfComponents + 1;
                        v36 = v33 * (NumberOfComponents + 1);
                        if ((v33 * (NumberOfComponents + 1)) >> 64 != v36 >> 63)
                        {
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Components buffer allocation overflow detected when decoding gradient";
                          goto LABEL_313;
                        }

                        v37 = *buf * v35;
                        if ((*buf * v35) >> 64 != (*buf * v35) >> 63)
                        {
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Components max index value overflow detected when decoding gradient";
                          goto LABEL_313;
                        }

                        v109 = v22;
                        if (v37 >= 0)
                        {
                          v38 = *buf * v35;
                        }

                        else
                        {
                          v38 = -v37;
                        }

                        if (v38 >> 61 || (v39 = 8 * v38, v39 > (v37 >> 63) + 0x7FFFFFFFFFFFFFFFLL) || (v37 >= 0 ? (v40 = v39) : (v40 = -v39), v40 > v36))
                        {
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken != -1)
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          }

                          v100 = __CGPerspectiveOSLog_log;
                          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_315;
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Components max byte count overflow detected when decoding gradient";
LABEL_313:
                          v104 = keys;
                          goto LABEL_314;
                        }

                        v41 = NumberOfComponents;
                        if (v35 < 0)
                        {
                          v42 = ~NumberOfComponents;
                        }

                        else
                        {
                          v42 = NumberOfComponents + 1;
                        }

                        if (v35 >= 0)
                        {
                          v43 = 8 * v42;
                        }

                        else
                        {
                          v43 = -8 * v42;
                        }

                        if (v42 >> 61 || 8 * v42 > (v35 >> 63) + 0x7FFFFFFFFFFFFFFFLL)
                        {
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken != -1)
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          }

                          v100 = __CGPerspectiveOSLog_log;
                          v22 = v109;
                          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_315;
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Components max byte count overflow detected when decoding gradient";
                          goto LABEL_313;
                        }

                        v44 = malloc_type_malloc(v33, 0xCA6A21EuLL);
                        v45 = malloc_type_malloc(v36, 0x5BD3FA5EuLL);
                        v112 = v44;
                        if (!v44 || !v45)
                        {
                          v105 = v45;
                          free(v44);
                          free(v105);
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken != -1)
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          }

                          v100 = __CGPerspectiveOSLog_log;
                          v22 = v109;
                          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_315;
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Gradient buffer allocations failed";
                          goto LABEL_313;
                        }

                        v111 = v45;
                        if (*buf >= 1)
                        {
                          v46 = 0;
                          v47 = 8 * v41 + 8;
                          v49 = v45;
                          v48 = v112;
                          do
                          {
                            CGPerspectiveDataDecode_bytes(v118, v48, 8uLL);
                            CGPerspectiveDataDecode_bytes(v118, v49, v43);
                            ++v46;
                            v49 += v47;
                            v48 += 8;
                          }

                          while (v46 < *buf);
                        }

                        if (!CGPerspectiveDataDecode_bytes(v118, v31, 4uLL) || (v50 = *v31, *v31 >= 3))
                        {
                          free(v112);
                          free(v111);
                          CGColorSpaceRelease(space);
                          if (__CGPerspectiveOSLog_onceToken != -1)
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          }

                          v100 = __CGPerspectiveOSLog_log;
                          v22 = v109;
                          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_315;
                          }

                          LOWORD(keys[0]) = 0;
                          v101 = "Gradient type was out of bounds";
                          goto LABEL_313;
                        }

                        v51 = CGPerspectiveDataDecode_bytes(v118, v31 + 4, 0x10uLL);
                        v52 = v31 + 8;
                        if (v50 == 2)
                        {
                          LOBYTE(v53) = CGPerspectiveDataDecode_bytes(v118, v52, 8uLL);
                        }

                        else
                        {
                          v63 = CGPerspectiveDataDecode_bytes(v118, v52, 0x10uLL);
                          v64 = v63 & CGPerspectiveDataDecode_bytes(v118, v31 + 12, 8uLL);
                          v65 = CGPerspectiveDataDecode_bytes(v118, v31 + 14, 8uLL);
                          v53 = v64 & v65 & CGPerspectiveDataDecode_bytes(v118, v31 + 16, 4uLL);
                        }

                        LOBYTE(keys[0]) = 0;
                        v66 = CGPerspectiveDataDecode_bytes(v118, keys, 1uLL);
                        if (v66)
                        {
                          v67 = LOBYTE(keys[0]) != 0;
                          *(v31 + 72) = LOBYTE(keys[0]) != 0;
                        }

                        else
                        {
                          v67 = *(v31 + 72);
                        }

                        v108 = v51 & v53 & v66;
                        v68 = (v67 & 1) == 0;
                        v69 = v114;
                        if (v68)
                        {
                          v69 = v113;
                        }

                        values = v69;
                        keys[0] = v115;
                        v70 = CFDictionaryCreate(v10, keys, &values, 1, 0, 0);
                        *(v31 + 1) = CGGradientCreateWithColorComponentsAndOptions();
                        CFRelease(v70);
                        CGColorSpaceRelease(space);
                        free(v112);
                        free(v111);
                        v22 = v109;
                        if ((v108 & 1) == 0)
                        {
                          goto LABEL_315;
                        }
                      }

                      else if (v29 == 4)
                      {
                        if (!CGPerspectiveDataDecode_bytes(v118, v28 + 8, 8uLL) || !CGPerspectiveDataDecode_bytes(v118, v28 + 16, 8uLL))
                        {
                          goto LABEL_315;
                        }
                      }

                      else
                      {
                        memset(buf, 0, 48);
                        if (!CGPerspectiveDataDecode_bytes(v118, buf, 0x30uLL))
                        {
                          goto LABEL_315;
                        }

                        keys[0] = 0;
                        if (!CGPerspectiveDataDecode_bytes(v118, keys, 8uLL))
                        {
                          goto LABEL_315;
                        }

                        if (keys[0] >= 0)
                        {
                          v54 = keys[0];
                        }

                        else
                        {
                          v54 = -keys[0];
                        }

                        if (v54 >> 61 || (v55 = 8 * v54, v55 > (keys[0] >> 63) + 0x7FFFFFFFFFFFFFFFLL))
                        {
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }
                          }

                          LOWORD(v131) = 0;
                          v101 = "Integer overflow with indices";
                          v104 = &v131;
                          goto LABEL_314;
                        }

                        if (keys[0] >= 0)
                        {
                          v56 = v55;
                        }

                        else
                        {
                          v56 = -v55;
                        }

                        v57 = malloc_type_calloc(v56, 1uLL, 0x25AE92D3uLL);
                        if (!CGPerspectiveDataDecode_bytes(v118, v57, v56))
                        {
                          goto LABEL_315;
                        }

                        if (keys[0] >= 0)
                        {
                          v58 = keys[0];
                        }

                        else
                        {
                          v58 = -keys[0];
                        }

                        if (v58 >> 60 || (v59 = 16 * v58, v59 > (keys[0] >> 63) + 0x7FFFFFFFFFFFFFFFLL))
                        {
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v100 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_315;
                            }

LABEL_301:
                            LOWORD(v131) = 0;
                            v101 = "Integer overflow with positions";
                            v104 = &v131;
LABEL_314:
                            _os_log_error_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_ERROR, v101, v104, 2u);
                            goto LABEL_315;
                          }

                          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          v100 = __CGPerspectiveOSLog_log;
                          if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_301;
                          }

LABEL_315:
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v106 = __CGPerspectiveOSLog_log;
                            if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_317;
                            }

                            goto LABEL_35;
                          }

                          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                          v106 = __CGPerspectiveOSLog_log;
                          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_35;
                          }

LABEL_317:
                          *buf = 134217984;
                          *&buf[4] = v22;
                          v17 = "Failed to decode resource %ld";
                          v18 = v106;
                          v19 = 12;
LABEL_17:
                          _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
                          goto LABEL_35;
                        }

                        if (keys[0] >= 0)
                        {
                          v60 = v59;
                        }

                        else
                        {
                          v60 = -v59;
                        }

                        v61 = malloc_type_calloc(v60, 1uLL, 0x76873B59uLL);
                        if (!CGPerspectiveDataDecode_bytes(v118, v61, v60))
                        {
                          goto LABEL_315;
                        }

                        v131 = 0uLL;
                        if (!CGPerspectiveDataDecode_bytes(v118, &v131, 0x10uLL))
                        {
                          goto LABEL_315;
                        }

                        values = 0;
                        if (!CGPerspectiveDataDecode_bytes(v118, &values, 8uLL))
                        {
                          goto LABEL_315;
                        }

                        v129 = 0;
                        if (!CGPerspectiveDataDecode_bytes(v118, &v129, 4uLL))
                        {
                          goto LABEL_315;
                        }

                        v62 = malloc_type_calloc(0x68uLL, 1uLL, 0xCA6C87FAuLL);
                        *v62 = *buf;
                        v62[1] = *&buf[16];
                        v62[2] = *&buf[32];
                        *(v62 + 6) = keys[0];
                        *(v62 + 7) = v57;
                        *(v62 + 8) = v61;
                        *(v62 + 72) = v131;
                        *(v62 + 11) = values;
                        *(v62 + 24) = v129;
                        *(v28 + 1) = v62;
                      }
                    }

                    else if (v29)
                    {
                      if (v29 == 1)
                      {
                        if (!CGPerspectiveDataDecode_bytes(v118, v28 + 8, 1uLL) || v28[8] > 2u || !CGPerspectiveDataDecode_bytes(v118, v28 + 9, 1uLL) || v28[9] > 1u || !CGPerspectiveDataDecode_bytes(v118, v28 + 12, 4uLL) || (*(v28 + 3) + 1) > 3)
                        {
                          goto LABEL_315;
                        }

                        if (!v28[9])
                        {
                          v30 = v28[8];
                          if (v30 == 2)
                          {
                            v131 = 0u;
                            v132 = 0u;
                            if (!CGPerspectiveDataDecode_bytes(v118, &v131, 0x20uLL))
                            {
                              goto LABEL_315;
                            }

                            v73 = v132;
                            *(v28 + 72) = v131;
                            *(v28 + 88) = v73;
                            memset(buf, 0, 48);
                            if (!CGPerspectiveDataDecode_bytes(v118, buf, 0x30uLL))
                            {
                              goto LABEL_315;
                            }

                            v74 = *&buf[32];
                            v75 = *&buf[16];
                            *(v28 + 24) = *buf;
                            *(v28 + 40) = v75;
                            *(v28 + 56) = v74;
                            keys[0] = 0;
                            if (!DecodeOptionalCGColor(&v116, keys))
                            {
                              goto LABEL_315;
                            }

                            *(v28 + 13) = keys[0];
                            values = 0;
                            if (!CGPerspectiveDataDecode_CFData(v118, &values))
                            {
                              goto LABEL_315;
                            }

                            v76 = CGPerspectiveCommandsDecode(values);
                            CFRelease(values);
                            *(v28 + 2) = v76;
                            if (!v76)
                            {
                              goto LABEL_315;
                            }
                          }

                          else if (v30 == 1)
                          {
                            *&v131 = 0;
                            if (!DecodeCGImage(&v116, &v131))
                            {
                              goto LABEL_315;
                            }

                            *(v28 + 2) = v131;
                            memset(buf, 0, 48);
                            if (!CGPerspectiveDataDecode_bytes(v118, buf, 0x30uLL))
                            {
                              goto LABEL_315;
                            }

                            v71 = *&buf[32];
                            v72 = *&buf[16];
                            *(v28 + 24) = *buf;
                            *(v28 + 40) = v72;
                            *(v28 + 56) = v71;
                          }

                          else if (!v28[8])
                          {
                            *(v28 + 2) = 0;
                            buf[0] = 0;
                            if (!CGPerspectiveDataDecode_bytes(v118, buf, 1uLL))
                            {
                              goto LABEL_315;
                            }

                            if (buf[0])
                            {
                              *buf = 0;
                              if (!DecodeCGPath(v118, buf))
                              {
                                goto LABEL_315;
                              }

                              *(v28 + 2) = *buf;
                            }
                          }
                        }
                      }

                      else if ((DecodeCGImage(&v116, v28 + 1) & 1) == 0)
                      {
                        goto LABEL_315;
                      }
                    }

                    else if (!DecodeCGPath(v118, v28 + 1))
                    {
                      goto LABEL_315;
                    }

                    ++v22;
                  }

                  while (v22 < v127);
                }

                memset(&buf[288], 0, 40);
                memset(&buf[224], 0, 72);
                memset(&buf[96], 0, 152);
                *buf = -1;
                v77 = *MEMORY[0x1E695F058];
                *&buf[24] = *(MEMORY[0x1E695F058] + 16);
                *&buf[8] = v77;
                v78 = *(MEMORY[0x1E695EFD0] + 16);
                *&buf[72] = *(MEMORY[0x1E695EFD0] + 32);
                v79 = *MEMORY[0x1E695EFD0];
                *&buf[56] = v78;
                *&buf[40] = v79;
                *&buf[88] = 0;
                *&buf[120] = *&buf[24];
                *&buf[104] = v77;
                *&buf[168] = *&buf[72];
                *&buf[152] = v78;
                *&buf[136] = v79;
                *&buf[96] = -1;
                *&buf[184] = -1;
                *&buf[248] = -1;
                *&buf[296] = *MEMORY[0x1E695F060];
                *&buf[319] = 0;
                *&buf[312] = 0;
                if (v126 < 1)
                {
LABEL_266:
                  LODWORD(v131) = 0;
                  v98 = CGPerspectiveDataDecode_bytes(v118, &v131, 4uLL);
                  v99 = 0;
                  if (v98)
                  {
                    *(v20 + 80) = v131;
                    v99 = Ports;
                  }

                  Ports = v99;
                }

                else
                {
                  v80 = 0;
                  while (1)
                  {
                    v81 = CGPerspectiveCommandCreate(v20, 0, 0);
                    LODWORD(v131) = 0;
                    if (!CGPerspectiveDataDecode_bytes(v118, &v131, 4uLL))
                    {
                      goto LABEL_325;
                    }

                    if (v131)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v82 = *v81;
                    }

                    else
                    {
                      v82 = *buf;
                      *v81 = *buf;
                    }

                    if (v82 >= *(&v119 + 1))
                    {
                      if (__CGPerspectiveOSLog_onceToken == -1)
                      {
                        v102 = __CGPerspectiveOSLog_log;
                        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_326;
                        }
                      }

                      else
                      {
                        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                        v102 = __CGPerspectiveOSLog_log;
                        if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_326;
                        }
                      }

                      LOWORD(keys[0]) = 0;
                      v103 = "Decoded command has out of bounds resource index";
                      goto LABEL_324;
                    }

                    v83 = v131;
                    if ((v131 & 4) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 40, 0x30uLL))
                      {
                        goto LABEL_325;
                      }

                      v83 = v131;
                    }

                    else
                    {
                      *(v81 + 40) = *&buf[40];
                      *(v81 + 56) = *&buf[56];
                      *(v81 + 72) = *&buf[72];
                    }

                    if ((v83 & 0x40) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 136, 0x30uLL))
                      {
                        goto LABEL_325;
                      }

                      v83 = v131;
                    }

                    else
                    {
                      *(v81 + 136) = *&buf[136];
                      *(v81 + 152) = *&buf[152];
                      *(v81 + 168) = *&buf[168];
                    }

                    if ((v83 & 2) != 0)
                    {
                      CGPerspectiveDataDecode_bytes(v118, v81 + 8, 0x20uLL);
                      v83 = v131;
                    }

                    else
                    {
                      *(v81 + 8) = *&buf[8];
                      *(v81 + 24) = *&buf[24];
                    }

                    if ((v83 & 0x10) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 96, 4uLL) || *(v81 + 24) > 4u)
                      {
                        goto LABEL_325;
                      }

                      v83 = v131;
                    }

                    else
                    {
                      *(v81 + 24) = *&buf[96];
                    }

                    if ((v83 & 0x2000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 232, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v83 = v131;
                    }

                    else
                    {
                      *(v81 + 29) = *&buf[232];
                    }

                    if ((v83 & 0x4000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 240, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      LOBYTE(v83) = v131;
                    }

                    else
                    {
                      *(v81 + 30) = *&buf[240];
                    }

                    if ((v83 & 8) != 0)
                    {
                      LOBYTE(keys[0]) = 0;
                      if (!CGPerspectiveDataDecode_bytes(v118, keys, 1uLL))
                      {
                        goto LABEL_325;
                      }

                      if (LOBYTE(keys[0]))
                      {
                        if ((CGPerspectiveColorCacheDecodeCGColor(&v116, v81 + 11) & 1) == 0)
                        {
                          goto LABEL_325;
                        }
                      }

                      else
                      {
                        CGColorRelease(*(v81 + 11));
                        *(v81 + 11) = 0;
                      }
                    }

                    else
                    {
                      *(v81 + 11) = CGColorRetain(*&buf[88]);
                    }

                    if ((BYTE1(v131) & 0x10) != 0)
                    {
                      if ((DecodeOptionalCGColor(&v116, v81 + 28) & 1) == 0)
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      *(v81 + 28) = CGColorRetain(*&buf[224]);
                    }

                    v84 = v131;
                    if ((v131 & 0x20) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 104, 0x20uLL))
                      {
                        goto LABEL_325;
                      }

                      v84 = v131;
                    }

                    else
                    {
                      *(v81 + 104) = *&buf[104];
                      *(v81 + 120) = *&buf[120];
                    }

                    if ((v84 & 0x80) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 184, 4uLL) || (*(v81 + 46) + 1) > 0x1C)
                      {
                        goto LABEL_325;
                      }

                      v84 = v131;
                    }

                    else
                    {
                      *(v81 + 46) = *&buf[184];
                    }

                    if ((v84 & 0x100) != 0)
                    {
                      if (!DecodeCGShadowStyle(&v116, v81 + 24))
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      v85 = *&buf[192];
                      if (*&buf[192])
                      {
                        v86 = malloc_type_malloc(0x38uLL, 0x1000040577F94FBuLL);
                        *(v81 + 24) = v86;
                        if (!v86)
                        {
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v102 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_326;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v102 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_326;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v103 = "Failed to allocate shadow style.";
                          goto LABEL_324;
                        }

                        v87 = *v85;
                        v88 = v85[1];
                        v89 = v85[2];
                        v86[6] = *(v85 + 6);
                        *(v86 + 1) = v88;
                        *(v86 + 2) = v89;
                        *v86 = v87;
                      }

                      else
                      {
                        *(v81 + 24) = 0;
                      }
                    }

                    if ((BYTE1(v131) & 2) != 0)
                    {
                      if ((DecodeOptionalCGColor(&v116, v81 + 25) & 1) == 0)
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      *(v81 + 25) = CGColorRetain(*&buf[200]);
                    }

                    if ((BYTE1(v131) & 4) != 0)
                    {
                      if (!DecodeCGFocusStyle(&v116, v81 + 26))
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      v90 = *&buf[208];
                      if (*&buf[208])
                      {
                        v91 = malloc_type_malloc(0x50uLL, 0x1000040CA4B9025uLL);
                        *(v81 + 26) = v91;
                        if (!v91)
                        {
                          if (__CGPerspectiveOSLog_onceToken == -1)
                          {
                            v102 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_326;
                            }
                          }

                          else
                          {
                            dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                            v102 = __CGPerspectiveOSLog_log;
                            if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_326;
                            }
                          }

                          LOWORD(keys[0]) = 0;
                          v103 = "Failed to allocate focus style.";
                          goto LABEL_324;
                        }

                        *v91 = *v90;
                        v92 = v90[1];
                        v93 = v90[2];
                        v94 = v90[4];
                        v91[3] = v90[3];
                        v91[4] = v94;
                        v91[1] = v92;
                        v91[2] = v93;
                      }

                      else
                      {
                        *(v81 + 26) = 0;
                      }
                    }

                    if ((BYTE1(v131) & 8) != 0)
                    {
                      if ((DecodeOptionalCGColor(&v116, v81 + 27) & 1) == 0)
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      *(v81 + 27) = CGColorRetain(*&buf[216]);
                    }

                    v95 = v131;
                    if ((v131 & 0x8000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 248, 4uLL) || *(v81 + 62) > 2u)
                      {
                        goto LABEL_325;
                      }

                      v95 = v131;
                    }

                    else
                    {
                      *(v81 + 62) = *&buf[248];
                    }

                    if ((v95 & 0x10000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 252, 4uLL) || *(v81 + 63) > 2u)
                      {
                        goto LABEL_325;
                      }

                      v95 = v131;
                    }

                    else
                    {
                      *(v81 + 63) = *&buf[252];
                    }

                    if (!DecodeCGPerspectiveCommandLineDash(&v116, v81, buf, (v95 >> 17) & 1))
                    {
                      break;
                    }

                    v96 = v131;
                    if ((v131 & 0x40000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 272, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v96 = v131;
                    }

                    else
                    {
                      *(v81 + 34) = *&buf[272];
                    }

                    if ((v96 & 0x80000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 280, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v96 = v131;
                    }

                    else
                    {
                      *(v81 + 35) = *&buf[280];
                    }

                    if ((v96 & 0x100000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 288, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v96 = v131;
                    }

                    else
                    {
                      *(v81 + 36) = *&buf[288];
                    }

                    if ((v96 & 0x200000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 296, 0x10uLL))
                      {
                        goto LABEL_325;
                      }

                      v96 = v131;
                    }

                    else
                    {
                      *(v81 + 296) = *&buf[296];
                    }

                    if ((v96 & 0x400000) != 0)
                    {
                      if (!CGPerspectiveDataDecode_bytes(v118, v81 + 312, 8uLL))
                      {
                        goto LABEL_325;
                      }

                      v96 = v131;
                    }

                    else
                    {
                      *(v81 + 39) = *&buf[312];
                    }

                    if ((v96 & 0x800000) != 0)
                    {
                      LOBYTE(keys[0]) = 0;
                      if (!CGPerspectiveDataDecode_bytes(v118, keys, 1uLL))
                      {
                        goto LABEL_325;
                      }

                      v81[320] = LOBYTE(keys[0]) != 0;
                      v96 = v131;
                    }

                    else
                    {
                      v81[320] = buf[320];
                    }

                    if ((v96 & 0x1000000) != 0)
                    {
                      LOBYTE(keys[0]) = 0;
                      if (!CGPerspectiveDataDecode_bytes(v118, keys, 1uLL))
                      {
                        goto LABEL_325;
                      }

                      v81[321] = LOBYTE(keys[0]) != 0;
                      v96 = v131;
                    }

                    else
                    {
                      v81[321] = buf[321];
                    }

                    if ((v96 & 0x2000000) != 0)
                    {
                      LOBYTE(keys[0]) = 0;
                      if (!CGPerspectiveDataDecode_bytes(v118, keys, 1uLL))
                      {
                        goto LABEL_325;
                      }

                      v97 = LOBYTE(keys[0]) != 0;
                    }

                    else
                    {
                      v97 = buf[322];
                    }

                    v81[322] = v97;
                    memcpy(buf, v81, 0x148uLL);
                    if (++v80 >= v126)
                    {
                      goto LABEL_266;
                    }
                  }

                  if (__CGPerspectiveOSLog_onceToken == -1)
                  {
                    v102 = __CGPerspectiveOSLog_log;
                    if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_286;
                    }

LABEL_326:
                    v107 = __CGPerspectiveOSLog_log;
                    if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_327;
                  }

                  dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                  v102 = __CGPerspectiveOSLog_log;
                  if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_326;
                  }

LABEL_286:
                  LOWORD(keys[0]) = 0;
                  v103 = "Failed to decode line dash";
LABEL_324:
                  _os_log_error_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_ERROR, v103, keys, 2u);
LABEL_325:
                  if (__CGPerspectiveOSLog_onceToken == -1)
                  {
                    goto LABEL_326;
                  }

                  dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
                  v107 = __CGPerspectiveOSLog_log;
                  if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
                  {
LABEL_327:
                    LODWORD(v131) = 134217984;
                    *(&v131 + 4) = v80;
                    _os_log_error_impl(&dword_1E1C61000, v107, OS_LOG_TYPE_ERROR, "Failed to decode command %ld", &v131, 0xCu);
                    goto LABEL_36;
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v23 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v23 = __CGPerspectiveOSLog_log;
      if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    *buf = 67109376;
    *&buf[4] = 25;
    *&buf[8] = 1024;
    *&buf[10] = v128;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Version mismatch. Expected %d, but got %d", buf, 0xEu);
  }

LABEL_35:
  Ports = 0;
LABEL_36:
  v24 = v118;
  CFRelease(*v118);
  free(v24);
  v25 = v121;
  CFRelease(*v121);
  CFRelease(v25[1]);
  CFRelease(v25[2]);
  free(v25);
  if (v7)
  {
    CFRelease(v7);
  }

  return Ports;
}