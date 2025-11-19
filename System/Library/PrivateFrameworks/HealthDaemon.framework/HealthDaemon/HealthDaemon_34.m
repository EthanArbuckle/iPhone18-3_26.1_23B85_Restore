uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 456), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 496), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 496), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 536), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 536), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v256 = *MEMORY[0x277D85DE8];
LABEL_2:
  v10 = a2 - 3;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        goto LABEL_375;
      }

      if (v13 == 2)
      {
        v104 = *(a2 - 3);
        v105 = *(v11 + 24);
        if (v104 != v105)
        {
          v106 = *(*a3 + 432);
          v107 = *(*a3 + 440);
          if (v106 == v107)
          {
            v109 = *(*a3 + 432);
            v108 = v109;
          }

          else
          {
            v108 = *(*a3 + 432);
            v109 = v108;
            do
            {
              if (*v109 == v104)
              {
                goto LABEL_189;
              }

              v109 += 8;
            }

            while (v109 != v107);
            v109 = *(*a3 + 440);
LABEL_189:
            while (*v108 != v105)
            {
              v108 += 8;
              if (v108 == v107)
              {
                v108 = *(*a3 + 440);
                break;
              }
            }
          }

          if (v109 - v106 < v108 - v106)
          {
            *v243 = *(v11 + 16);
            *&v243[16] = *(v11 + 32);
            v235 = *v11;
            v226 = *v10;
            v227 = *(a2 - 2);
            *(v11 + 27) = *(a2 - 21);
            *v11 = v226;
            *(v11 + 16) = v227;
            *(a2 - 21) = *&v243[11];
            *v10 = v235;
            *(a2 - 2) = *v243;
          }
        }

LABEL_375:
        v228 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v111 = *MEMORY[0x277D85DE8];

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, (a2 - 3), a3);
      return;
    }

    if (v13 == 5)
    {
      v110 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, v11 + 144, (a2 - 3), a3);
      return;
    }

LABEL_10:
    if (v12 <= 1151)
    {
      v112 = (v11 + 48);
      v114 = v11 == a2 || v112 == a2;
      if (a5)
      {
        if (!v114)
        {
          v115 = v11;
          do
          {
            v116 = v115;
            v115 = v112;
            v117 = *(v116 + 72);
            v118 = *(v116 + 24);
            if (v117 != v118)
            {
              v119 = *(*a3 + 432);
              v120 = *(*a3 + 440);
              if (v119 == v120)
              {
                v122 = *(*a3 + 432);
                v121 = v122;
              }

              else
              {
                v121 = *(*a3 + 432);
                v122 = v121;
                do
                {
                  if (*v122 == v117)
                  {
                    goto LABEL_213;
                  }

                  v122 += 8;
                }

                while (v122 != v120);
                v122 = *(*a3 + 440);
LABEL_213:
                while (*v121 != v118)
                {
                  v121 += 8;
                  if (v121 == v120)
                  {
                    v121 = *(*a3 + 440);
                    break;
                  }
                }
              }

              if (v122 - v119 < v121 - v119)
              {
                v239 = *(v115 + 16);
                v231 = *v115;
                v249 = *(v116 + 80);
                v123 = v115;
                while (1)
                {
                  v124 = *(v116 + 16);
                  *v123 = *v116;
                  *(v123 + 16) = v124;
                  *(v123 + 27) = *(v116 + 27);
                  if (v116 == v11)
                  {
                    break;
                  }

                  v123 = v116;
                  v125 = *(v116 - 24);
                  if (v117 != v125)
                  {
                    v126 = *(*a3 + 432);
                    v127 = *(*a3 + 440);
                    if (v126 == v127)
                    {
                      v129 = *(*a3 + 432);
                      v128 = v129;
                    }

                    else
                    {
                      v128 = *(*a3 + 432);
                      v129 = v128;
                      do
                      {
                        if (*v129 == v117)
                        {
                          goto LABEL_226;
                        }

                        v129 += 8;
                      }

                      while (v129 != v127);
                      v129 = *(*a3 + 440);
LABEL_226:
                      while (*v128 != v125)
                      {
                        v128 += 8;
                        if (v128 == v127)
                        {
                          v128 = *(*a3 + 440);
                          break;
                        }
                      }
                    }

                    v116 = v123 - 48;
                    if (v129 - v126 < v128 - v126)
                    {
                      continue;
                    }
                  }

                  goto LABEL_233;
                }

                v123 = v11;
LABEL_233:
                *v123 = v231;
                *(v123 + 16) = v239;
                *(v123 + 24) = v117;
                *(v123 + 32) = v249;
                *(v123 + 39) = *(&v249 + 7);
              }
            }

            v112 = (v115 + 48);
          }

          while ((v115 + 48) != a2);
        }
      }

      else if (!v114)
      {
        do
        {
          v211 = a1;
          a1 = v112;
          v212 = *(v211 + 72);
          v213 = *(v211 + 24);
          if (v212 != v213)
          {
            v214 = *(*a3 + 432);
            v215 = *(*a3 + 440);
            if (v214 == v215)
            {
              v217 = *(*a3 + 432);
              v216 = v217;
            }

            else
            {
              v216 = *(*a3 + 432);
              v217 = v216;
              do
              {
                if (*v217 == v212)
                {
                  goto LABEL_352;
                }

                v217 += 8;
              }

              while (v217 != v215);
              v217 = *(*a3 + 440);
LABEL_352:
              while (*v216 != v213)
              {
                v216 += 8;
                if (v216 == v215)
                {
                  v216 = *(*a3 + 440);
                  break;
                }
              }
            }

            if (v217 - v214 < v216 - v214)
            {
              v242 = *(a1 + 16);
              v234 = *a1;
              v252 = *(v211 + 80);
              v218 = a1;
              do
              {
                v219 = v218;
                v218 = v211;
                v220 = *(v211 + 16);
                *v219 = *v211;
                v219[1] = v220;
                *(v219 + 27) = *(v211 + 27);
                v221 = *(v211 - 24);
                if (v212 == v221)
                {
                  break;
                }

                v222 = *(*a3 + 432);
                v223 = *(*a3 + 440);
                if (v222 == v223)
                {
                  v225 = *(*a3 + 432);
                  v224 = v225;
                }

                else
                {
                  v224 = *(*a3 + 432);
                  v225 = v224;
                  do
                  {
                    if (*v225 == v212)
                    {
                      goto LABEL_364;
                    }

                    v225 += 8;
                  }

                  while (v225 != v223);
                  v225 = *(*a3 + 440);
LABEL_364:
                  while (*v224 != v221)
                  {
                    v224 += 8;
                    if (v224 == v223)
                    {
                      v224 = *(*a3 + 440);
                      break;
                    }
                  }
                }

                v211 = v218 - 48;
              }

              while (v225 - v222 < v224 - v222);
              *v218 = v234;
              *(v218 + 16) = v242;
              *(v218 + 24) = v212;
              *(v218 + 32) = v252;
              *(v218 + 39) = *(&v252 + 7);
            }
          }

          v112 = (a1 + 48);
        }

        while ((a1 + 48) != a2);
      }

      goto LABEL_375;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v130 = (v13 - 2) >> 1;
        v131 = v130;
        do
        {
          v132 = v131;
          if (v130 >= v131)
          {
            v133 = (2 * v131) | 1;
            v134 = v11 + 48 * v133;
            if (2 * v132 + 2 < v13)
            {
              v135 = *(v134 + 24);
              v136 = *(v134 + 72);
              if (v135 != v136)
              {
                v138 = *(*a3 + 432);
                v137 = *(*a3 + 440);
                if (v138 == v137)
                {
                  v140 = *(*a3 + 432);
                  v139 = v140;
                }

                else
                {
                  v139 = *(*a3 + 432);
                  v140 = v139;
                  do
                  {
                    if (*v140 == v135)
                    {
                      goto LABEL_246;
                    }

                    v140 += 8;
                  }

                  while (v140 != v137);
                  v140 = *(*a3 + 440);
LABEL_246:
                  while (*v139 != v136)
                  {
                    v139 += 8;
                    if (v139 == v137)
                    {
                      v139 = *(*a3 + 440);
                      break;
                    }
                  }
                }

                v141 = (v140 - v138);
                v142 = (v139 - v138);
                v143 = v141 < v142;
                if (v141 >= v142)
                {
                  v144 = 0;
                }

                else
                {
                  v144 = 48;
                }

                v134 += v144;
                if (v143)
                {
                  v133 = 2 * v132 + 2;
                }
              }
            }

            v145 = v11 + 48 * v132;
            v146 = *(v134 + 24);
            v147 = *(v145 + 24);
            if (v146 == v147)
            {
              goto LABEL_266;
            }

            v149 = *(*a3 + 432);
            v148 = *(*a3 + 440);
            if (v149 == v148)
            {
              v151 = *(*a3 + 432);
              v150 = v151;
            }

            else
            {
              v150 = *(*a3 + 432);
              v151 = v150;
              do
              {
                if (*v151 == v146)
                {
                  goto LABEL_261;
                }

                v151 += 8;
              }

              while (v151 != v148);
              v151 = *(*a3 + 440);
LABEL_261:
              while (*v150 != v147)
              {
                v150 += 8;
                if (v150 == v148)
                {
                  v150 = *(*a3 + 440);
                  break;
                }
              }
            }

            if (v151 - v149 >= v150 - v149)
            {
LABEL_266:
              v240 = *(v145 + 16);
              v232 = *v145;
              v250 = *(v145 + 32);
              v152 = *v134;
              v153 = *(v134 + 16);
              *(v145 + 27) = *(v134 + 27);
              *v145 = v152;
              *(v145 + 16) = v153;
              if (v130 >= v133)
              {
                while (1)
                {
                  v155 = 2 * v133;
                  v133 = (2 * v133) | 1;
                  v154 = v11 + 48 * v133;
                  v156 = v155 + 2;
                  if (v156 < v13)
                  {
                    v157 = *(v154 + 24);
                    v158 = *(v154 + 72);
                    if (v157 != v158)
                    {
                      v159 = *(*a3 + 432);
                      v160 = *(*a3 + 440);
                      if (v159 == v160)
                      {
                        v162 = *(*a3 + 432);
                        v161 = v162;
                      }

                      else
                      {
                        v161 = *(*a3 + 432);
                        v162 = v161;
                        do
                        {
                          if (*v162 == v157)
                          {
                            goto LABEL_275;
                          }

                          v162 += 8;
                        }

                        while (v162 != v160);
                        v162 = *(*a3 + 440);
LABEL_275:
                        while (*v161 != v158)
                        {
                          v161 += 8;
                          if (v161 == v160)
                          {
                            v161 = *(*a3 + 440);
                            break;
                          }
                        }
                      }

                      v163 = (v162 - v159);
                      v164 = (v161 - v159);
                      v165 = v163 < v164;
                      if (v163 >= v164)
                      {
                        v166 = 0;
                      }

                      else
                      {
                        v166 = 48;
                      }

                      v154 += v166;
                      if (v165)
                      {
                        v133 = v156;
                      }
                    }
                  }

                  v167 = *(v154 + 24);
                  if (v167 != v147)
                  {
                    v169 = *(*a3 + 432);
                    v168 = *(*a3 + 440);
                    if (v169 == v168)
                    {
                      v171 = *(*a3 + 432);
                      v170 = v171;
                    }

                    else
                    {
                      v170 = *(*a3 + 432);
                      v171 = v170;
                      do
                      {
                        if (*v171 == v167)
                        {
                          goto LABEL_290;
                        }

                        v171 += 8;
                      }

                      while (v171 != v168);
                      v171 = *(*a3 + 440);
LABEL_290:
                      while (*v170 != v147)
                      {
                        v170 += 8;
                        if (v170 == v168)
                        {
                          v170 = *(*a3 + 440);
                          break;
                        }
                      }
                    }

                    if (v171 - v169 < v170 - v169)
                    {
                      break;
                    }
                  }

                  v172 = *v154;
                  v173 = *(v154 + 16);
                  *(v134 + 27) = *(v154 + 27);
                  *v134 = v172;
                  *(v134 + 16) = v173;
                  v134 = v154;
                  if (v130 < v133)
                  {
                    goto LABEL_296;
                  }
                }
              }

              v154 = v134;
LABEL_296:
              *v154 = v232;
              *(v154 + 16) = v240;
              *(v154 + 24) = v147;
              *(v154 + 32) = v250;
              *(v154 + 39) = *(&v250 + 7);
            }
          }

          v131 = v132 - 1;
        }

        while (v132);
        v174 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        do
        {
          v175 = 0;
          v176 = *(v11 + 16);
          *v241 = v176;
          *&v241[16] = *(v11 + 32);
          v233 = *v11;
          v177 = v11;
          do
          {
            v178 = v177;
            v179 = v177 + 48 * v175;
            v177 = v179 + 48;
            v180 = 2 * v175;
            v175 = (2 * v175) | 1;
            v181 = v180 + 2;
            if (v180 + 2 < v174)
            {
              v182 = *(v179 + 72);
              v183 = *(v179 + 120);
              if (v182 != v183)
              {
                v185 = *(*a3 + 432);
                v184 = *(*a3 + 440);
                if (v185 == v184)
                {
                  v187 = *(*a3 + 432);
                  v186 = v187;
                }

                else
                {
                  v186 = *(*a3 + 432);
                  v187 = v186;
                  do
                  {
                    if (*v187 == v182)
                    {
                      goto LABEL_307;
                    }

                    v187 += 8;
                  }

                  while (v187 != v184);
                  v187 = *(*a3 + 440);
LABEL_307:
                  while (*v186 != v183)
                  {
                    v186 += 8;
                    if (v186 == v184)
                    {
                      v186 = *(*a3 + 440);
                      break;
                    }
                  }
                }

                v188 = v179 + 96;
                if (v187 - v185 < v186 - v185)
                {
                  v177 = v188;
                  v175 = v181;
                }
              }
            }

            v189 = *v177;
            v190 = *(v177 + 16);
            *(v178 + 27) = *(v177 + 27);
            *v178 = v189;
            v178[1] = v190;
          }

          while (v175 <= (v174 - 2) / 2);
          a2 -= 3;
          if (v177 == a2)
          {
            *(v177 + 27) = *&v241[11];
            *v177 = v233;
            *(v177 + 16) = *v241;
          }

          else
          {
            v191 = *a2;
            v192 = a2[1];
            *(v177 + 27) = *(a2 + 27);
            *v177 = v191;
            *(v177 + 16) = v192;
            *(a2 + 27) = *&v241[11];
            *a2 = v233;
            a2[1] = *v241;
            v193 = v177 - v11 + 48;
            if (v193 >= 49)
            {
              v194 = (0xAAAAAAAAAAAAAAABLL * (v193 >> 4) - 2) >> 1;
              v195 = v11 + 48 * v194;
              v196 = *(v195 + 24);
              v197 = *(v177 + 24);
              if (v196 != v197)
              {
                v199 = *(*a3 + 432);
                v198 = *(*a3 + 440);
                if (v199 == v198)
                {
                  v201 = *(*a3 + 432);
                  v200 = v201;
                }

                else
                {
                  v200 = *(*a3 + 432);
                  v201 = v200;
                  do
                  {
                    if (*v201 == v196)
                    {
                      goto LABEL_322;
                    }

                    v201 += 8;
                  }

                  while (v201 != v198);
                  v201 = *(*a3 + 440);
LABEL_322:
                  while (*v200 != v197)
                  {
                    v200 += 8;
                    if (v200 == v198)
                    {
                      v200 = *(*a3 + 440);
                      break;
                    }
                  }
                }

                if (v201 - v199 < v200 - v199)
                {
                  v255 = *(v177 + 16);
                  v202 = *(v177 + 32);
                  v246 = v202;
                  v251 = *v177;
                  do
                  {
                    v203 = v177;
                    v177 = v195;
                    v204 = *v195;
                    v205 = *(v195 + 16);
                    *(v203 + 27) = *(v195 + 27);
                    *v203 = v204;
                    v203[1] = v205;
                    if (!v194)
                    {
                      break;
                    }

                    v194 = (v194 - 1) >> 1;
                    v195 = v11 + 48 * v194;
                    v206 = *(v195 + 24);
                    if (v206 == v197)
                    {
                      break;
                    }

                    v208 = *(*a3 + 432);
                    v207 = *(*a3 + 440);
                    if (v208 == v207)
                    {
                      v210 = *(*a3 + 432);
                      v209 = v210;
                    }

                    else
                    {
                      v209 = *(*a3 + 432);
                      v210 = v209;
                      do
                      {
                        if (*v210 == v206)
                        {
                          goto LABEL_339;
                        }

                        v210 += 8;
                      }

                      while (v210 != v207);
                      v210 = *(*a3 + 440);
LABEL_339:
                      while (*v209 != v197)
                      {
                        v209 += 8;
                        if (v209 == v207)
                        {
                          v209 = *(*a3 + 440);
                          break;
                        }
                      }
                    }
                  }

                  while (v210 - v208 < v209 - v208);
                  *v177 = v251;
                  *(v177 + 16) = v255;
                  *(v177 + 24) = v197;
                  *(v177 + 32) = v246;
                  *(v177 + 39) = *(&v246 + 7);
                }
              }
            }
          }

          v143 = v174-- <= 2;
        }

        while (!v143);
      }

      goto LABEL_375;
    }

    v14 = v13 >> 1;
    v15 = (v11 + 48 * (v13 >> 1));
    if (v12 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v15, a1, a2 - 3, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, v15, a2 - 3, a3);
      v16 = 3 * v14;
      v17 = (a1 + 48 * v14 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 48), v17, a2 - 6, a3);
      v18 = (a1 + 48 + 16 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 96), v18, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
      *v236 = *(a1 + 16);
      *&v236[16] = *(a1 + 32);
      v229 = *a1;
      v19 = *(v15 + 27);
      v20 = v15[1];
      *a1 = *v15;
      *(a1 + 16) = v20;
      *(a1 + 27) = v19;
      *(v15 + 27) = *&v236[11];
      *v15 = v229;
      v15[1] = *v236;
    }

    --a4;
    if (a5)
    {
      v21 = *(a1 + 24);
      v22 = *a3;
      goto LABEL_28;
    }

    v23 = *(a1 - 24);
    v21 = *(a1 + 24);
    if (v23 == v21)
    {
      goto LABEL_99;
    }

    v22 = *a3;
    v24 = *(*a3 + 432);
    v25 = *(*a3 + 440);
    if (v24 == v25)
    {
      v27 = *(*a3 + 432);
      v26 = v27;
    }

    else
    {
      v26 = *(*a3 + 432);
      v27 = v26;
      do
      {
        if (*v27 == v23)
        {
          goto LABEL_23;
        }

        v27 += 8;
      }

      while (v27 != v25);
      v27 = *(*a3 + 440);
LABEL_23:
      while (*v26 != v21)
      {
        v26 += 8;
        if (v26 == v25)
        {
          v26 = *(*a3 + 440);
          break;
        }
      }
    }

    if (v27 - v24 >= v26 - v24)
    {
LABEL_99:
      v254 = *(a1 + 16);
      v66 = *(a1 + 32);
      v245 = v66;
      v248 = *a1;
      v67 = *(a2 - 3);
      if (v21 == v67)
      {
        goto LABEL_123;
      }

      v68 = *(*a3 + 432);
      v69 = *(*a3 + 440);
      v70 = v68;
      if (v68 == v69)
      {
        v71 = *(*a3 + 432);
      }

      else
      {
        while (*v70 != v21)
        {
          v70 += 8;
          if (v70 == v69)
          {
            v70 = *(*a3 + 440);
            break;
          }
        }

        v71 = *(*a3 + 432);
        while (*v71 != v67)
        {
          v71 += 8;
          if (v71 == v69)
          {
            v71 = *(*a3 + 440);
            break;
          }
        }
      }

      if (v70 - v68 >= v71 - v68)
      {
LABEL_123:
        v11 = a1 + 48;
        if (a1 + 48 < a2)
        {
          v75 = *a3;
          v76 = a1;
          do
          {
            v77 = *(v76 + 72);
            v76 = v11;
            if (v21 != v77)
            {
              v78 = *(v75 + 432);
              v79 = *(v75 + 440);
              if (v78 == v79)
              {
                v81 = *(v75 + 432);
                v80 = v81;
              }

              else
              {
                v80 = *(v75 + 432);
                v81 = v80;
                do
                {
                  if (*v81 == v21)
                  {
                    goto LABEL_131;
                  }

                  v81 += 8;
                }

                while (v81 != v79);
                v81 = *(v75 + 440);
LABEL_131:
                while (*v80 != v77)
                {
                  v80 += 8;
                  if (v80 == v79)
                  {
                    v80 = *(v75 + 440);
                    break;
                  }
                }
              }

              if (v81 - v78 < v80 - v78)
              {
                break;
              }
            }

            v11 += 48;
          }

          while (v76 + 48 < a2);
        }
      }

      else
      {
        v11 = a1;
        do
        {
          do
          {
            v72 = *(v11 + 72);
            v11 += 48;
          }

          while (v21 == v72);
          v73 = *(*a3 + 432);
          if (v68 == v69)
          {
            v74 = *(*a3 + 432);
          }

          else
          {
            while (*v73 != v21)
            {
              v73 += 8;
              if (v73 == v69)
              {
                v73 = *(*a3 + 440);
                break;
              }
            }

            v74 = *(*a3 + 432);
            while (*v74 != v72)
            {
              v74 += 8;
              if (v74 == v69)
              {
                v74 = *(*a3 + 440);
                break;
              }
            }
          }
        }

        while (v73 - v68 >= v74 - v68);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = *a3;
        v82 = a2;
        do
        {
          v84 = *(v82 - 3);
          v82 -= 3;
          if (v21 == v84)
          {
            break;
          }

          v85 = *(v83 + 432);
          v86 = *(v83 + 440);
          if (v85 == v86)
          {
            v88 = *(v83 + 432);
            v87 = v88;
          }

          else
          {
            v87 = *(v83 + 432);
            v88 = v87;
            do
            {
              if (*v88 == v21)
              {
                goto LABEL_145;
              }

              v88 += 8;
            }

            while (v88 != v86);
            v88 = *(v83 + 440);
LABEL_145:
            while (*v87 != v84)
            {
              v87 += 8;
              if (v87 == v86)
              {
                v87 = *(v83 + 440);
                break;
              }
            }
          }
        }

        while (v88 - v85 < v87 - v85);
      }

      while (v11 < v82)
      {
        *v238 = *(v11 + 16);
        *&v238[16] = *(v11 + 32);
        v230 = *v11;
        v89 = *v82;
        v90 = v82[1];
        *(v11 + 27) = *(v82 + 27);
        *v11 = v89;
        *(v11 + 16) = v90;
        *(v82 + 27) = *&v238[11];
        *v82 = v230;
        v82[1] = *v238;
        v91 = *a3;
        do
        {
          do
          {
            v92 = *(v11 + 72);
            v11 += 48;
          }

          while (v21 == v92);
          v93 = *(v91 + 432);
          v94 = *(v91 + 440);
          v95 = v93;
          if (v93 == v94)
          {
            v96 = *(v91 + 432);
          }

          else
          {
            while (*v95 != v21)
            {
              v95 += 8;
              if (v95 == v94)
              {
                v95 = *(v91 + 440);
                break;
              }
            }

            v96 = *(v91 + 432);
            while (*v96 != v92)
            {
              v96 += 8;
              if (v96 == v94)
              {
                v96 = *(v91 + 440);
                break;
              }
            }
          }
        }

        while (v95 - v93 >= v96 - v93);
        do
        {
          v97 = *(v82 - 3);
          v82 -= 3;
          if (v21 == v97)
          {
            break;
          }

          v98 = v93;
          if (v93 == v94)
          {
            v99 = v93;
          }

          else
          {
            while (*v98 != v21)
            {
              v98 += 8;
              if (v98 == v94)
              {
                v98 = v94;
                break;
              }
            }

            v99 = v93;
            while (*v99 != v97)
            {
              v99 += 8;
              if (v99 == v94)
              {
                v99 = v94;
                break;
              }
            }
          }
        }

        while (v98 - v93 < v99 - v93);
      }

      v100 = (v11 - 48);
      if (v11 - 48 != a1)
      {
        v101 = *v100;
        v102 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v101;
        *(a1 + 16) = v102;
      }

      a5 = 0;
      *v100 = v248;
      *(v11 - 32) = v254;
      *(v11 - 24) = v21;
      *(v11 - 9) = *(&v245 + 7);
      *(v11 - 16) = v245;
    }

    else
    {
LABEL_28:
      v253 = *(a1 + 16);
      v28 = *(a1 + 32);
      v244 = v28;
      v247 = *a1;
      v29 = a1;
      do
      {
        v30 = v29;
        v29 += 48;
        v31 = *(v30 + 72);
        if (v31 == v21)
        {
          break;
        }

        v32 = *(v22 + 432);
        v33 = *(v22 + 440);
        if (v32 == v33)
        {
          v35 = *(v22 + 432);
          v34 = v35;
        }

        else
        {
          v34 = *(v22 + 432);
          v35 = v34;
          do
          {
            if (*v35 == v31)
            {
              goto LABEL_35;
            }

            v35 += 8;
          }

          while (v35 != v33);
          v35 = *(v22 + 440);
LABEL_35:
          while (*v34 != v21)
          {
            v34 += 8;
            if (v34 == v33)
            {
              v34 = *(v22 + 440);
              break;
            }
          }
        }
      }

      while (v35 - v32 < v34 - v32);
      v36 = a2;
      if (v30 == a1)
      {
        v36 = a2;
        if (v29 < a2)
        {
          v36 = a2;
          do
          {
            v42 = *(v36 - 3);
            v36 -= 3;
            if (v42 != v21)
            {
              v43 = *(v22 + 432);
              v44 = *(v22 + 440);
              if (v43 == v44)
              {
                v46 = *(v22 + 432);
                v45 = v46;
              }

              else
              {
                v45 = *(v22 + 432);
                v46 = v45;
                do
                {
                  if (*v46 == v42)
                  {
                    goto LABEL_61;
                  }

                  v46 += 8;
                }

                while (v46 != v44);
                v46 = *(v22 + 440);
LABEL_61:
                while (*v45 != v21)
                {
                  v45 += 8;
                  if (v45 == v44)
                  {
                    v45 = *(v22 + 440);
                    break;
                  }
                }
              }

              if (v46 - v43 < v45 - v43)
              {
                break;
              }
            }
          }

          while (v29 < v36);
        }
      }

      else
      {
        do
        {
          do
          {
            v37 = *(v36 - 3);
            v36 -= 3;
          }

          while (v37 == v21);
          v38 = *(v22 + 432);
          v39 = *(v22 + 440);
          if (v38 == v39)
          {
            v41 = *(v22 + 432);
            v40 = v41;
          }

          else
          {
            v40 = *(v22 + 432);
            v41 = v40;
            do
            {
              if (*v41 == v37)
              {
                goto LABEL_47;
              }

              v41 += 8;
            }

            while (v41 != v39);
            v41 = *(v22 + 440);
LABEL_47:
            while (*v40 != v21)
            {
              v40 += 8;
              if (v40 == v39)
              {
                v40 = *(v22 + 440);
                break;
              }
            }
          }
        }

        while (v41 - v38 >= v40 - v38);
      }

      v11 = v29;
      if (v29 < v36)
      {
        v47 = v36;
        do
        {
          *v237 = *(v11 + 16);
          *&v237[16] = *(v11 + 32);
          v48 = *v11;
          v50 = *v47;
          v49 = v47[1];
          *(v11 + 27) = *(v47 + 27);
          *v11 = v50;
          *(v11 + 16) = v49;
          *(v47 + 27) = *&v237[11];
          *v47 = v48;
          v47[1] = *v237;
          v51 = *a3;
          do
          {
            v52 = *(v11 + 72);
            v11 += 48;
            if (v52 == v21)
            {
              break;
            }

            v53 = *(v51 + 432);
            v54 = *(v51 + 440);
            if (v53 == v54)
            {
              v56 = *(v51 + 432);
              v55 = v56;
            }

            else
            {
              v55 = *(v51 + 432);
              v56 = v55;
              do
              {
                if (*v56 == v52)
                {
                  goto LABEL_76;
                }

                v56 += 8;
              }

              while (v56 != v54);
              v56 = *(v51 + 440);
LABEL_76:
              while (*v55 != v21)
              {
                v55 += 8;
                if (v55 == v54)
                {
                  v55 = *(v51 + 440);
                  break;
                }
              }
            }
          }

          while (v56 - v53 < v55 - v53);
          do
          {
            do
            {
              v57 = *(v47 - 3);
              v47 -= 3;
            }

            while (v57 == v21);
            v58 = *(v51 + 432);
            v59 = *(v51 + 440);
            if (v58 == v59)
            {
              v61 = *(v51 + 432);
              v60 = v61;
            }

            else
            {
              v60 = *(v51 + 432);
              v61 = v60;
              do
              {
                if (*v61 == v57)
                {
                  goto LABEL_87;
                }

                v61 += 8;
              }

              while (v61 != v59);
              v61 = *(v51 + 440);
LABEL_87:
              while (*v60 != v21)
              {
                v60 += 8;
                if (v60 == v59)
                {
                  v60 = *(v51 + 440);
                  break;
                }
              }
            }
          }

          while (v61 - v58 >= v60 - v58);
        }

        while (v11 < v47);
      }

      v62 = (v11 - 48);
      if (v11 - 48 != a1)
      {
        v63 = *v62;
        v64 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v63;
        *(a1 + 16) = v64;
      }

      *v62 = v247;
      *(v11 - 32) = v253;
      *(v11 - 24) = v21;
      *(v11 - 9) = *(&v244 + 7);
      *(v11 - 16) = v244;
      if (v29 < v36)
      {
        goto LABEL_98;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2, a3))
      {
        a2 = (v11 - 48);
        if (!v65)
        {
          goto LABEL_2;
        }

        goto LABEL_375;
      }

      if (!v65)
      {
LABEL_98:
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, v11 - 48, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v103 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), a2 - 3, a3);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 432);
  v7 = *(*a4 + 440);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 432);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 440);
        break;
      }
    }

    v9 = *(*a4 + 432);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 440);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 432);
      v15 = *(*a4 + 440);
      if (v14 == v15)
      {
        v17 = *(*a4 + 432);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 432);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 440);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 440);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 432);
          v25 = *(*a4 + 440);
          if (v24 == v25)
          {
            v27 = *(*a4 + 432);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 432);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 440);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 440);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 432);
      if (v6 == v7)
      {
        v12 = *(*a4 + 432);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 440);
            break;
          }
        }

        v12 = *(*a4 + 432);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 440);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 432);
      v38 = *(*a4 + 440);
      if (v37 == v38)
      {
        v40 = *(*a4 + 432);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 432);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 440);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 440);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 432);
    v14 = *(*a5 + 440);
    if (v13 == v14)
    {
      v16 = *(*a5 + 432);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 432);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 440);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 440);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 432);
        v23 = *(*a5 + 440);
        if (v22 == v23)
        {
          v25 = *(*a5 + 432);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 432);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 440);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 440);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 432);
            v32 = *(*a5 + 440);
            if (v31 == v32)
            {
              v34 = *(*a5 + 432);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 432);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 440);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 440);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 432);
    v16 = *(*a6 + 440);
    if (v15 == v16)
    {
      v18 = *(*a6 + 432);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 432);
      v18 = v17;
      do
      {
        if (*v18 == v13)
        {
          goto LABEL_7;
        }

        v18 += 8;
      }

      while (v18 != v16);
      v18 = *(*a6 + 440);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 440);
          break;
        }
      }
    }

    if (v18 - v15 < v17 - v15)
    {
      v19 = *a4;
      *v49 = *(a4 + 16);
      *&v49[16] = *(a4 + 32);
      v20 = *(a5 + 27);
      v21 = *(a5 + 16);
      *a4 = *a5;
      *(a4 + 16) = v21;
      *(a4 + 27) = v20;
      *a5 = v19;
      *(a5 + 16) = *v49;
      result = *&v49[11];
      *(a5 + 27) = *&v49[11];
      v22 = *(a4 + 24);
      v23 = *(a3 + 24);
      if (v22 != v23)
      {
        v24 = *(*a6 + 432);
        v25 = *(*a6 + 440);
        if (v24 == v25)
        {
          v27 = *(*a6 + 432);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 432);
          v27 = v26;
          do
          {
            if (*v27 == v22)
            {
              goto LABEL_18;
            }

            v27 += 8;
          }

          while (v27 != v25);
          v27 = *(*a6 + 440);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 440);
              break;
            }
          }
        }

        if (v27 - v24 < v26 - v24)
        {
          v28 = *a3;
          *v50 = *(a3 + 16);
          *&v50[16] = *(a3 + 32);
          v29 = *(a4 + 27);
          v30 = *(a4 + 16);
          *a3 = *a4;
          *(a3 + 16) = v30;
          *(a3 + 27) = v29;
          *a4 = v28;
          *(a4 + 16) = *v50;
          result = *&v50[11];
          *(a4 + 27) = *&v50[11];
          v31 = *(a3 + 24);
          v32 = *(a2 + 24);
          if (v31 != v32)
          {
            v33 = *(*a6 + 432);
            v34 = *(*a6 + 440);
            if (v33 == v34)
            {
              v36 = *(*a6 + 432);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 432);
              v36 = v35;
              do
              {
                if (*v36 == v31)
                {
                  goto LABEL_29;
                }

                v36 += 8;
              }

              while (v36 != v34);
              v36 = *(*a6 + 440);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 440);
                  break;
                }
              }
            }

            if (v36 - v33 < v35 - v33)
            {
              v37 = *a2;
              *v51 = *(a2 + 16);
              *&v51[16] = *(a2 + 32);
              v38 = *(a3 + 27);
              v39 = *(a3 + 16);
              *a2 = *a3;
              *(a2 + 16) = v39;
              *(a2 + 27) = v38;
              *a3 = v37;
              *(a3 + 16) = *v51;
              result = *&v51[11];
              *(a3 + 27) = *&v51[11];
              v40 = *(a2 + 24);
              v41 = *(a1 + 24);
              if (v40 != v41)
              {
                v42 = *(*a6 + 432);
                v43 = *(*a6 + 440);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 432);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 432);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v40)
                    {
                      goto LABEL_40;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(*a6 + 440);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 440);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  v46 = *a1;
                  *v52 = *(a1 + 16);
                  *&v52[16] = *(a1 + 32);
                  v47 = *(a2 + 27);
                  v48 = *(a2 + 16);
                  *a1 = *a2;
                  *(a1 + 16) = v48;
                  *(a1 + 27) = v47;
                  *a2 = v46;
                  *(a2 + 16) = *v52;
                  result = *&v52[11];
                  *(a2 + 27) = *&v52[11];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 24);
        v8 = *(a1 + 24);
        if (v7 != v8)
        {
          v9 = *(*a3 + 432);
          v10 = *(*a3 + 440);
          if (v9 == v10)
          {
            v12 = *(*a3 + 432);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 432);
            v12 = v11;
            do
            {
              if (*v12 == v7)
              {
                goto LABEL_10;
              }

              v12 += 8;
            }

            while (v12 != v10);
            v12 = *(*a3 + 440);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 440);
                break;
              }
            }
          }

          if (v12 - v9 < v11 - v9)
          {
            v31 = (a2 - 48);
            v32 = *a1;
            *v37 = *(a1 + 16);
            *&v37[16] = *(a1 + 32);
            v33 = *(a2 - 21);
            v34 = *(a2 - 32);
            *a1 = *(a2 - 48);
            *(a1 + 16) = v34;
            *(a1 + 27) = v33;
            *v31 = v32;
            v31[1] = *v37;
            *(v31 + 27) = *&v37[11];
          }
        }

        goto LABEL_50;
      }

      goto LABEL_18;
    }

LABEL_50:
    result = 1;
    goto LABEL_51;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    goto LABEL_50;
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v14 + 24);
    v17 = *(v13 + 24);
    if (v16 != v17)
    {
      v18 = *(*a3 + 432);
      v19 = *(*a3 + 440);
      if (v18 == v19)
      {
        v21 = *(*a3 + 432);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 432);
        v21 = v20;
        do
        {
          if (*v21 == v16)
          {
            goto LABEL_26;
          }

          v21 += 8;
        }

        while (v21 != v19);
        v21 = *(*a3 + 440);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 440);
            break;
          }
        }
      }

      if (v21 - v18 < v20 - v18)
      {
        v35 = *v14;
        v36 = *(v14 + 16);
        v38 = *(v14 + 32);
        v22 = v14;
        while (1)
        {
          v23 = *(v13 + 16);
          *v22 = *v13;
          *(v22 + 16) = v23;
          *(v22 + 27) = *(v13 + 27);
          if (v13 == a1)
          {
            break;
          }

          v22 = v13;
          v24 = *(v13 - 24);
          if (v16 != v24)
          {
            v25 = *(*a3 + 432);
            v26 = *(*a3 + 440);
            if (v25 == v26)
            {
              v28 = *(*a3 + 432);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 432);
              v28 = v27;
              do
              {
                if (*v28 == v16)
                {
                  goto LABEL_39;
                }

                v28 += 8;
              }

              while (v28 != v26);
              v28 = *(*a3 + 440);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 440);
                  break;
                }
              }
            }

            v13 -= 48;
            if (v28 - v25 < v27 - v25)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        v22 = a1;
LABEL_46:
        *v22 = v35;
        *(v22 + 16) = v36;
        *(v22 + 24) = v16;
        *(v22 + 32) = v38;
        *(v22 + 39) = *(&v38 + 7);
        if (++v15 == 8)
        {
          break;
        }
      }
    }

    v13 = v14;
    v14 += 48;
    if (v14 == a2)
    {
      goto LABEL_50;
    }
  }

  result = v14 + 48 == a2;
LABEL_51:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  *(a1 + 104) = *(a2 + 224);
  *(a1 + 120) = v3;
  v4 = *(a2 + 272);
  *(a1 + 136) = *(a2 + 256);
  *(a1 + 152) = v4;
  v5 = *(a2 + 176);
  *(a1 + 40) = *(a2 + 160);
  *(a1 + 56) = v5;
  v6 = *(a2 + 208);
  *(a1 + 72) = *(a2 + 192);
  *(a1 + 88) = v6;
  v7 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *a1 = *(a2 + 120);
  *(a1 + 24) = v7;
  *(a1 + 176) = 0;
  v8 = a1 + 176;
  v10 = *(a2 + 288);
  v9 = *(a2 + 296);
  *(a1 + 168) = v10;
  v11 = *(a2 + 304);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 176, v9, v11, (v11 - v9) >> 4);
  *(v8 + 24) = *(a2 + 320);
  result = *(a2 + 328);
  v13 = *(a2 + 344);
  *(v8 + 32) = result;
  *(v8 + 48) = v13;
  *(v8 + 64) = *(a2 + 360);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 368);
  v31 = (a2 + 376);
  if (v2 == (a2 + 376))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_20;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v33 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v33 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v5 = v15;
LABEL_21:
    *(v12 + 6) = *(v2 + 10);
    v19 = *(v2 + 3);
    *(v12 + 3) = *(v2 + 4);
    *(v12 + 2) = v19;
    v20 = *(v2 + 5);
    v21 = *(v2 + 6);
    v22 = *(v2 + 7);
    *(v12 + 7) = *(v2 + 8);
    *(v12 + 6) = v22;
    *(v12 + 5) = v21;
    *(v12 + 4) = v20;
    v23 = *(v2 + 9);
    v24 = *(v2 + 10);
    v25 = *(v2 + 11);
    *(v12 + 11) = *(v2 + 12);
    *(v12 + 10) = v25;
    *(v12 + 9) = v24;
    *(v12 + 8) = v23;
    v12[24] = v2[26];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 25, v2[27], v2[28], (v2[28] - v2[27]) >> 4);
    }

    v12[28] = v2[30];
    v26 = *(v2 + 31);
    v27 = *(v2 + 33);
    *(v12 + 132) = *(v2 + 140);
    *(v12 + 31) = v27;
    *(v12 + 29) = v26;

LABEL_24:
    v28 = v2[1];
    if (v28)
    {
      do
      {
        v29 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    else
    {
      do
      {
        v29 = v2[2];
        v30 = *v29 == v2;
        v2 = v29;
      }

      while (!v30);
    }

    v2 = v29;
  }

  while (v29 != v31);
}

void sub_228FA5AB8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](v3 - 112);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1278;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1278;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 160;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1308;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1308;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 728) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 728))
    {
      v11 = -1.79769313e308;
    }

    else
    {
      v11 = *(a1 + 176);
      v13 = *(a1 + 120);
      if (v11 <= v13)
      {
        v11 = -1.79769313e308;
      }

      if (v11 < v13)
      {
        v11 = *(a1 + 120);
      }
    }
  }

  else
  {
    v11 = *(a1 + 176);
    if (v11 <= *(a1 + 120))
    {
      v11 = -1.79769313e308;
    }
  }

  if (v9 >= v11)
  {
    if (v10 && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v12 = (*(*a1 + 128))(a1, v15, a4);
  }

  return v12;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 704) != *(v2 + 696))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  *(&v38 + 1) = 0;
  v39 = 0uLL;
  v40 = 0;
  v13 = v6;
  if (v12 - v6 < 0.01 || (v13 = v12, v7 - v6 - (v12 - v6) >= 0.01))
  {
    *(&v38 + 1) = v13;
    *&v39 = v7;
    *(&v39 + 1) = v8;
    v14 = v10;
    LOBYTE(v40) = v9;
    v15 = v9;
    v16 = v8;
    v17 = v7;
    HIBYTE(v40) = v10;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    v13 = 0.0;
  }

  *&v38 = v5;
  v32 = 0uLL;
  *(&v31 + 1) = 0;
  v33 = 0;
  v18 = *(a1 + 16);
  v19 = v18 - v13;
  v20 = v17 - v13 - (v18 - v13);
  if (!*(a1 + 36))
  {
    if (v20 < 0.01)
    {
      goto LABEL_10;
    }

    if (v19 >= 0.01)
    {
      goto LABEL_14;
    }

LABEL_13:
    *(&v31 + 1) = *(&v38 + 1);
    v32 = v39;
    v33 = v40;
    *&v31 = v5;
    goto LABEL_36;
  }

  if (v19 < 0.01)
  {
    goto LABEL_13;
  }

  if (v20 >= 0.01)
  {
LABEL_14:
    *(&v31 + 1) = *(a1 + 16);
    *&v32 = v17;
    *(&v32 + 1) = v16;
    LOBYTE(v33) = v15;
    HIBYTE(v33) = v14;
    *&v39 = v18;
    *&v38 = v5;
    *&v31 = v5;
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

LABEL_10:
  *&v38 = v5;
  *&v31 = v5;
  v18 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v29 = v18;
  v30 = v13;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 400), v16);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 136) > 0)
  {
    v21 = v30;
    if (v30 < *(a1 + 48))
    {
      v22 = *(a1 + 8);
      if (v30 >= v22)
      {
        v22 = v30;
      }

      *(a1 + 48) = v22;
    }

    if (v29 > *(a1 + 56))
    {
      v23 = *(a1 + 16);
      if (v23 >= v29)
      {
        v23 = v29;
      }

      *(a1 + 56) = v23;
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v24.f64[1] = *(a1 + 16);
  v21 = v30;
  v24.f64[0] = v30;
  v25.f64[0] = *(a1 + 8);
  v25.f64[1] = v29;
  v26 = vcgtq_f64(v25, v24);
  v25.f64[0] = v30;
  *(a1 + 48) = vbslq_s8(v26, *(a1 + 8), v25);
  if (a3)
  {
LABEL_26:
    if (v21 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 368) || *(a1 + 344) <= v6)
  {
    *(a1 + 336) = v5;
    *(a1 + 344) = v6;
    *(a1 + 352) = v7;
    *(a1 + 360) = v8;
    *(a1 + 368) = v9;
    *(a1 + 369) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v27 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 240) || v28[27] <= v6)
    {
      v28[26] = v5;
      v28[27] = v6;
      v28[28] = v7;
      *(v28 + 29) = v8;
      *(v28 + 240) = v9;
      *(v28 + 241) = v10;
    }
  }

LABEL_36:
  if (v33 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 584, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 730) == 1)
  {
    *(a1 + 732) = 1;
  }

  else
  {
    *(a1 + 732) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[73], a1[74], 0xCCCCCCCCCCCCCCCDLL * ((a1[74] - a1[73]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FA6B9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 608), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  memset(v18, 0, sizeof(v18));
  *(a1 + 128) = 0;
  *(a1 + 136) = *&v18[4];
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = xmmword_229170D50;
  *(a1 + 184) = 0;
  *(a1 + 192) = xmmword_229170D60;
  *(a1 + 208) = 0;
  *(a1 + 216) = xmmword_229170D70;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_229170D80;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 272) = 5;
  *(a1 + 280) = 0;
  *(a1 + 288) = xmmword_229170DA0;
  v9 = *(a1 + 304);
  if (v9)
  {
    *(a1 + 312) = v9;
    operator delete(v9);
  }

  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  if (*(a1 + 392))
  {
    v10 = *(a1 + 376);
    v11 = *(a1 + 384);
    *(a1 + 376) = a1 + 384;
    *(v11 + 16) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    if (v10[1])
    {
      v12 = v10[1];
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = v12[2];
      if (v13)
      {
        v14 = *v13;
        if (*v13 == v12)
        {
          *v13 = 0;
          while (1)
          {
            v17 = v13[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v13 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
          for (v13[1] = 0; v14; v14 = v13[1])
          {
            do
            {
              v13 = v14;
              v14 = *v14;
            }

            while (v14);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(v12);
        for (i = v13[2]; i; i = i[2])
        {
          v13 = i;
        }

        v12 = v13;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(v12);
  }

  objc_storeStrong(v8, *(a1 + 608));
  *(a1 + 592) = *(a1 + 584);
  *a1 = a2;
  v16 = *MEMORY[0x277D85DE8];
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 732) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 732) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 728))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FA6EF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 728) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228FA7340(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4080798BF6);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    if (a7 - a6 - v9 >= 0.01)
    {
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v19 = v7;
  v20 = v8;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a2;
  v17 = v10;
  v18 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (v11 - a6 < 0.01)
    {
      return 1;
    }

    if (a7 - a6 - (v11 - a6) < 0.01)
    {
      v11 = a7;
    }

    v14 = a6;
    v15 = v11;
    v17 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 728) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(&v3, (a2 + 8));
}

void sub_228FA7BBC()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = v1->i32[0];
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(v1[13], v1[13], 8uLL);
  v4[1] = v1[14].i64[0];
  v4[2] = v1[14].i64[1];
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

void HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(uint64_t a1, HDStatisticsSleepStages *a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsSleepStages::archive(a2);
}

void sub_228FA7CEC()
{
  statistics::Statistics::operator=(*(v0 + 128), v3);
  statistics::Statistics::~Statistics(v3);
  statistics::Statistics::makeAuxiliaryStatistics(v0);
  HDStatisticsTimeInterval::archive((v1 + 160), v3);
  statistics::Statistics::operator=(*v2, v3);
  statistics::Statistics::~Statistics(v3);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = xmmword_229170D50;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_229170D60;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_229170D70;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_229170D80;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_229170D90;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 226) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(v14, v6);
    v7 = v14[7];
    v5[6] = v14[6];
    v5[7] = v7;
    v8 = v14[9];
    v5[8] = v14[8];
    v5[9] = v8;
    v9 = v14[3];
    v5[2] = v14[2];
    v5[3] = v9;
    v10 = v14[5];
    v5[4] = v14[4];
    v5[5] = v10;
    v11 = v14[1];
    *v5 = v14[0];
    v5[1] = v11;
    *(a1 + 168) = v15;
    *(a1 + 176) = v16;
    *(a1 + 192) = v17;
    result = v18;
    *(a1 + 200) = v18;
  }

  *a1 = a2[17];
  v12 = a2[14];
  if (v12)
  {
    result = *(v12 + 8);
    v13 = *(v12 + 16);
    *(a1 + 208) = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(a1 + 224) = result;
    *(a1 + 232) = v13;
    *(a1 + 240) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = xmmword_229170D50;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_229170D60;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_229170D70;
  *(a1 + 96) = 0;
  *(a1 + 104) = xmmword_229170D80;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_229170D90;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsSleepStages::unarchive(v4, a2);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    HDStatisticsTimeInterval::unarchive(v5, v7);
    *(a1 + 160) = v7[0];
    result = *&v7[4];
    v6 = v7[3];
    *(a1 + 168) = *&v7[1];
    *(a1 + 184) = v6;
    *(a1 + 192) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF1448;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 1;
  *(a1 + 682) = 0;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF1448;
  v2 = *(a1 + 712);
  if (v2)
  {
    *(a1 + 720) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 648);
  if (v3)
  {
    *(a1 + 656) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 680) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 688) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 87, a2);
  v7 = a2;
  v4 = a1[87];
  v5 = a1[84];
  a1[84] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[84]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 240) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 680) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 682) == 1)
    {
      if (*(a1 + 681))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 680))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v17 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 683) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 712, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 682) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 682) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 681))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 704);
  if (!v9)
  {
    v8 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v62 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1130];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 704);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v64;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v62 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v11);

  if (v12)
  {
    [v62 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 704);
  *(a1 + 704) = 0;

  *(a1 + 681) = 0;
  if (v8)
  {
    v28 = *(a1 + 712);
    *(a1 + 728) = 0;
    *(a1 + 720) = 0;
    *(a1 + 712) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 712);
      v39 = *(a1 + 720);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 720);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 720) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 712);
  v29 = *(a1 + 720);
  *(a1 + 728) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  if ([v62 count])
  {
LABEL_46:
    v44 = v62;
    if (v44)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v46)
      {
        v47 = *v64;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v61;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v61;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 656) != *(a1 + 648))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 682) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 684) == 1)
    {
      *(a1 + 684) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v60;
LABEL_80:
  *(a1 + 682) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228FA8D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 682) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 682))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 682) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 704);
    *(a1 + 704) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 681) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 681) & 1) == 0)
  {
    v8 = *(a1 + 704);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 704);
      *(a1 + 704) = v9;

      v8 = *(a1 + 704);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 680) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 680) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 680) forKey:@"needs_config"];
  v3;
  v28[0] = &unk_283BF1A08;
  v28[1] = 0;
  v29 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v29) = 1;
  v28[2] = v4;
  memset(&v28[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v28);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v27 = 511;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 145);
  v24 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v30[0] = &unk_283BEB0A8;
    v35 = 127;
    v31 = vextq_s8(*v8, *v8, 8uLL);
    v30[1] = v8[1].i64[0];
    v30[2] = v8[1].i64[1];
    v34 = 0;
    v33 = v8[2].i8[9];
    v32 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(v30, (a1 + 240));
}

void sub_228FA9564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v33 = a2;
  *(k + 680) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v38, 0, -1.79769313e308, 1.79769313e308);
  v39 = 0u;
  v40 = 0u;
  v83 = 0;
  PB::Reader::Reader(v82, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v83]);
  v75 = &unk_283BF1A08;
  v76 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 0;
  statistics::StatisticsEngine::readFrom(&v75, v82);
  v37 = v77;
  if (v76)
  {
    v44 = 0;
    v47 = 0uLL;
    v48 = 0;
    memset(v50, 0, sizeof(v50));
    v49 = 0;
    v51 = xmmword_229170D50;
    *&v52[8] = xmmword_229170D60;
    *v52 = 0;
    *&v52[24] = 0;
    v53 = xmmword_229170D70;
    *&v54[8] = xmmword_229170D80;
    *v54 = 0;
    *&v54[24] = 0;
    v55 = xmmword_229170D90;
    *&v56 = 0;
    *(&v56 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    memset(v57, 0, sizeof(v57));
    v60[0] = 0;
    v60[1] = 0;
    v58 = 0;
    v59 = v60;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v68 = 1065353216;
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v41 = vextq_s8(*(v76 + 8), *(v76 + 8), 8uLL);
    v4 = *(v76 + 72);
    v42 = *(v76 + 64);
    LOWORD(v43) = *(v76 + 185);
    v45 = vextq_s8(*(v76 + 24), *(v76 + 24), 8uLL);
    v46 = v4;
    v5 = *(v76 + 80);
    v6 = *(v76 + 88);
    v35 = v3;
    for (i = v76; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v86) = 1;
      BYTE8(v86) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v84 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v85 = v8;
      *(&v85 + 1) = v9;
      BYTE9(v86) = *(v7 + 41);
      BYTE10(v86) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v50, v84.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(&v84, v10);
      *v54 = v90;
      *&v54[16] = v91;
      v55 = v92;
      v56 = v93;
      v51 = v86;
      *v52 = v87;
      *&v52[16] = v88;
      v53 = v89;
      *&v50[24] = v84;
      *&v50[40] = v85;
      v57[0] = v94;
      if (v57[1])
      {
        v57[2] = v57[1];
        operator delete(v57[1]);
      }

      *&v57[1] = v95;
      v57[3] = v96;
      v96 = 0;
      v95 = 0uLL;
      v58 = v97;
    }

    v34 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(&v84, *v12);
      v14 = *(v13 + 18);
      v15 = v60[0];
      if (!v60[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v18 = v88;
      *(v16 + 15) = v89;
      *(v16 + 13) = v18;
      v19 = v86;
      *(v16 + 11) = v87;
      *(v16 + 9) = v19;
      v20 = v92;
      *(v16 + 23) = v93;
      *(v16 + 21) = v20;
      v21 = v90;
      *(v16 + 19) = v91;
      *(v16 + 17) = v21;
      v22 = v85;
      *(v16 + 5) = v84;
      *(v16 + 7) = v22;
      v23 = v16[26];
      v16[25] = v94;
      if (v23)
      {
        v16[27] = v23;
        operator delete(v23);
        v16[26] = 0;
        v16[27] = 0;
        v16[28] = 0;
      }

      *(v16 + 13) = v95;
      v16[28] = v96;
      v96 = 0;
      v95 = 0uLL;
      v16[29] = v97;
    }

    v3 = v35;
    v24 = i[5];
    v25 = i[6];
    for (k = v34; v24 != v25; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v47, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(v38, &v41);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v41);
  }

  v29 = v78;
  for (m = v79; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v41 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v42 = v31;
    v43 = v32;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v39, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v75);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((k + 112), &v37);
  if (v39)
  {
    *(&v39 + 1) = v39;
    operator delete(v39);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v38);
}

void sub_228FA9B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x490]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x468]);
  v29 = STACK[0x450];
  if (STACK[0x450])
  {
    STACK[0x458] = v29;
    operator delete(v29);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a11);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(STACK[0x418]);
  v30 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v30;
    operator delete(v30);
  }

  v31 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v31;
    operator delete(v31);
  }

  objc_destroyWeak(&STACK[0x328]);
  v32 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v32;
    operator delete(v32);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x4E0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(&a28);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_229170D50;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_229170D60;
  *(a1 + 192) = 0;
  *(a1 + 200) = xmmword_229170D70;
  *(a1 + 216) = 0;
  *(a1 + 224) = xmmword_229170D80;
  *(a1 + 240) = 0;
  *(a1 + 248) = xmmword_229170D90;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    *(a1 + 544) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 488);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 448);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 408);
  v2 = *(a1 + 384);
  if (v2)
  {
    *(a1 + 392) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 344);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 328));
  v3 = *(a1 + 288);
  if (v3)
  {
    *(a1 + 296) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[26];
    if (v2)
    {
      a1[27] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v29];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 696));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 680) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 67), (a2 + 536));
  v4 = *(a2 + 560);
  *(a2 + 560) = 0;
  v5 = a1[70];
  a1[70] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  v13 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v13;
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  v16 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v16;
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 4);
  *(a1 + 312) = *(a2 + 312);
  v17 = (a1 + 328);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = a1 + 328;
  v18 = *(a2 + 320);
  if (v18 != (a2 + 328))
  {
    v19 = 0;
    v20 = (a1 + 328);
    while (1)
    {
      v21 = (a1 + 328);
      if (v20 == v17)
      {
        goto LABEL_12;
      }

      v22 = v19;
      v23 = (a1 + 328);
      if (v19)
      {
        do
        {
          v21 = v22;
          v22 = v22[1];
        }

        while (v22);
      }

      else
      {
        do
        {
          v21 = v23[2];
          v24 = *v21 == v23;
          v23 = v21;
        }

        while (v24);
      }

      v25 = v18[4];
      if (v21[4] < v25)
      {
LABEL_12:
        if (v19)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = (a1 + 328);
        }

        if (!*v26)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v27 = v19;
            v28 = v19[4];
            if (v28 <= v25)
            {
              break;
            }

            v19 = *v27;
            if (!*v27)
            {
              goto LABEL_23;
            }
          }

          if (v28 >= v25)
          {
            break;
          }

          v19 = v27[1];
          if (!v19)
          {
            goto LABEL_23;
          }
        }
      }

      v29 = v18[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v18[2];
          v24 = *v30 == v18;
          v18 = v30;
        }

        while (!v24);
      }

      if (v30 == (a2 + 328))
      {
        break;
      }

      v19 = *v17;
      v20 = *(a1 + 320);
      v18 = v30;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 344, a2 + 344);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 384, *(a2 + 384), *(a2 + 392), (*(a2 + 392) - *(a2 + 384)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 408, a2 + 408);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 448, a2 + 448);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 488, a2 + 488);
  return a1;
}

void sub_228FAA5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 448);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 408);
  v14 = *(v10 + 384);
  if (v14)
  {
    *(v10 + 392) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 344);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v15 = *(v10 + 288);
  if (v15)
  {
    *(v10 + 296) = v15;
    operator delete(v15);
  }

  v16 = *a10;
  if (*a10)
  {
    *(v10 + 104) = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v10 + 88));
  v17 = *v11;
  if (*v11)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  v13 = *(a2 + 232);
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 264) = v15;
  *(a1 + 248) = v14;
  *(a1 + 232) = v13;
  v16 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v16;
  *(a1 + 280) = *(a2 + 280);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 288, (a2 + 288));
  *(a1 + 312) = *(a2 + 312);
  v17 = a1 + 328;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 328));
  *(a1 + 320) = *(a2 + 320);
  v18 = *(a2 + 328);
  v19 = *(a2 + 336);
  *(a1 + 328) = v18;
  *(a1 + 336) = v19;
  if (v19)
  {
    *(v18 + 16) = v17;
    *(a2 + 320) = a2 + 328;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
  }

  else
  {
    *(a1 + 320) = v17;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 408, (a2 + 408));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 448, (a2 + 448));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 488, (a2 + 488));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v9 = v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(a1 + 16);
    if ([v12 shouldUseUnderlyingTypeForStatistics])
    {
      v13 = [v12 underlyingSampleType];

      v10 = v13;
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v7 endDate:v9];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v23 = v7;
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = *(a2 + 384);
      v18 = *(a2 + 392);
      while (v17 != v18)
      {
        v19 = *v17;
        v20 = objc_loadWeakRetained((a1 + 48));
        v21 = [v20 sourceForSourceID:v19];

        if (v21)
        {
          if (([v16 containsObject:v21] & 1) == 0)
          {
            [v16 addObject:v21];
          }
        }

        ++v17;
      }

      v22 = [v16 copy];
      v7 = v23;
      [v14 _setSources:v22];
    }
  }

  v24[0] = &unk_283BF1638;
  v24[3] = v24;
  v14;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v25, v24);
  v26 = 0;
  operator new();
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 368);
  v2 = *(a1 + 384);
  if (v1 != (*(a1 + 392) - v2) >> 3)
  {
    *(a1 + 392) = v2;
    std::vector<long long>::reserve((a1 + 384), v1);
    for (i = *(a1 + 360); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 384, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 384];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v94 = a1 + 136;
    v90 = (a1 + 328);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_113;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);
          if (v13 > v11 && v13 < v10)
          {
            v10 = *(v12 + 8);
          }

          if (v14 > v5)
          {
            v16 = *(v12 + 16);
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 48;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v99.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v99, v24, 1);
      }

      else
      {
        v35 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v35;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v93 = 0;
      }

      v92 = v6;
      if (v6 != v7)
      {
        v95 = 0;
        v36 = 0;
        for (i = v6; i != v7; i += 48)
        {
          v38 = *(i + 16);
          *&v98.var0 = *i;
          *&v98.var2 = v38;
          *&v98.var4 = *(i + 32);
          var0 = v98.var0;
          v40 = *&v38;
          if (*&v38 - v98.var1 - (v17 - v98.var1) >= 0.01)
          {
            if (v17 - v98.var1 >= 0.01)
            {
              var3 = v98.var3;
              var4 = v98.var4;
              v98.var2 = v17;
              if (v98.var4)
              {
                var5 = v98.var5;
                v43 = v17;
LABEL_54:
                HDRawQuantitySample::applyMask(&v98, (a1 + 64));
                v44 = *(i + 42);
                v45 = *(i + 41);
                v96 = *(i + 40);
                if (v98.var4)
                {
                  if (v36)
                  {
                    v46 = v98.var3;
                    if (v95 == v98.var3 || *(a1 + 24) == 1)
                    {
                      if ((v44 & 1) == 0)
                      {
                        ++*(a1 + 120);
                      }

                      v47 = v94 + 24 * v98.var0;
                      v48 = *(v47 + 8);
                      v49 = *(v47 + 16);
                      v50 = *(a1 + 128);
                      if (v50 < v49)
                      {
                        v49 = v50 + 1;
                        *(a1 + 128) = v50 + 1;
                      }

                      *(v47 + 8) = v48 + v98.var2 - v98.var1;
                      *(v47 + 16) = v49;
                      HDStatisticsTimeInterval::addSample((a1 + 280), &v98, v44 ^ 1);
                      LOBYTE(v44) = 1;
                    }
                  }

                  else
                  {
                    if ((v44 & 1) == 0)
                    {
                      ++*(a1 + 120);
                    }

                    v51 = v94 + 24 * v98.var0;
                    v52 = *(v51 + 8);
                    v53 = *(v51 + 16);
                    v54 = *(a1 + 128);
                    if (v54 < v53)
                    {
                      v53 = v54 + 1;
                      *(a1 + 128) = v54 + 1;
                    }

                    *(v51 + 8) = v52 + v98.var2 - v98.var1;
                    *(v51 + 16) = v53;
                    HDStatisticsTimeInterval::addSample((a1 + 280), &v98, v44 ^ 1);
                    LOBYTE(v44) = 1;
                    v46 = v98.var3;
                    v95 = v98.var3;
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v55 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v46);
                    if (v55)
                    {
                      v56 = [v93 objectForKeyedSubscript:v55];
                      v91 = v56;
                      if (v56)
                      {
                        if ([v56 longLongValue] == v46 || *(a1 + 24) == 1)
                        {
                          v57 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                          v58 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v57);
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v59 = [MEMORY[0x277CCABB0] numberWithLongLong:v46];
                        [v93 setObject:v59 forKeyedSubscript:v55];

                        v60 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                        v58 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v60);
LABEL_76:
                        if ((v45 & 1) == 0)
                        {
                          ++v58->n128_u64[0];
                        }

                        v61 = &v58->n128_f64[3 * v98.var0];
                        v62 = v61[3];
                        v63 = *(v61 + 4);
                        v64 = v58->n128_i64[1];
                        if (v64 < v63)
                        {
                          v63 = v64 + 1;
                          v58->n128_u64[1] = v64 + 1;
                        }

                        v61[3] = v62 + v98.var2 - v98.var1;
                        *(v61 + 4) = v63;
                        HDStatisticsTimeInterval::addSample(v58 + 10, &v98, v45 ^ 1);
                        LOBYTE(v45) = 1;
                      }
                    }
                  }

                  v36 = 1;
                }

                if (var4)
                {
                  v99.var0 = var0;
                  v99.var1 = v43;
                  v99.var2 = v40;
                  v99.var3 = var3;
                  v99.var4 = var4;
                  v99.var5 = var5;
                  LOBYTE(v100) = v96;
                  BYTE1(v100) = v45;
                  BYTE2(v100) = v44;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v99);
                }

                continue;
              }
            }

            else
            {
              v98.var4 = 0;
            }
          }

          else if (v98.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v40 = 0.0;
            v43 = 0.0;
            goto LABEL_54;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 312) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 288), v17) + *(a1 + 312);
      v65 = *(a1 + 320);
      if (v65 != v90)
      {
        do
        {
          *(v65 + 29) = HKIntervalMask<double>::removeIntervalsBefore(v65 + 26, v17) + *(v65 + 29);
          v66 = v65[1];
          if (v66)
          {
            do
            {
              v67 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            do
            {
              v67 = v65[2];
              v68 = *v67 == v65;
              v65 = v67;
            }

            while (!v68);
          }

          v65 = v67;
        }

        while (v67 != v90);
      }

      *(a1 + 56) = v17;

      if (v92)
      {
        operator delete(v92);
      }

LABEL_114:
      v87 = *(a1 + 56);
      if (v87 == v5)
      {
        v88 = [MEMORY[0x277CCA890] currentHandler];
        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>]"}];
        [v88 handleFailureInFunction:v89 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v87 = *(a1 + 56);
      }

      v5 = v87;
      if (v87 >= a2)
      {
        return;
      }
    }

    v25 = *(v6 + 8);
    v26 = *(v6 + 16);
    v27 = *(v6 + 24);
    v28 = *(v6 + 32);
    v29 = *(v6 + 33);
    if (a2 - v25 >= 0.01)
    {
      if (v26 - v25 - (a2 - v25) < 0.01)
      {
        v33 = 0;
        v34 = 0;
        v32 = 0.0;
        v31 = *(v6 + 16);
        v30 = *(v6 + 32);
        v26 = 0.0;
        v28 = 0;
LABEL_98:
        v69 = *(v6 + 42);
        v70 = *(v6 + 41);
        v71 = *(v6 + 40);
        v72 = *v6;
        v99.var1 = *(v6 + 8);
        v99.var2 = v31;
        v99.var3 = v27;
        v99.var4 = v30;
        v99.var5 = v29;
        *(&v99.var5 + 1) = *(v6 + 34);
        *(&v99.var5 + 5) = *(v6 + 38);
        *(&v100 + 1) = v32;
        *&v101 = v26;
        *(&v101 + 1) = v33;
        LOBYTE(v102) = v28;
        HIBYTE(v102) = v34;
        v99.var0 = v72;
        *&v100 = v72;
        HDRawQuantitySample::applyMask(&v99, (a1 + 64));
        if (v99.var4)
        {
          if ((v69 & 1) == 0)
          {
            ++*(a1 + 120);
          }

          v73 = v99.var0;
          v74 = v94 + 24 * v99.var0;
          v75 = *(v74 + 8);
          v76 = *(v74 + 16);
          v77 = *(a1 + 128);
          if (v77 < v76)
          {
            v76 = v77 + 1;
            *(a1 + 128) = v77 + 1;
          }

          v78 = v99.var2 - v99.var1;
          *(v74 + 8) = v75 + v99.var2 - v99.var1;
          *(v74 + 16) = v76;
          HDStatisticsTimeInterval::addSample((a1 + 280), &v99, v69 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v79 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v99.var3);
            v80 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v79);
            if ((v70 & 1) == 0)
            {
              ++v80->n128_u64[0];
            }

            v81 = &v80->n128_f64[3 * v73];
            v82 = v81[3];
            v83 = *(v81 + 4);
            v84 = v80->n128_i64[1];
            if (v84 < v83)
            {
              v83 = v84 + 1;
              v80->n128_u64[1] = v84 + 1;
            }

            v81[3] = v78 + v82;
            *(v81 + 4) = v83;
            HDStatisticsTimeInterval::addSample(v80 + 10, &v99, v70 ^ 1);
          }

          v71 = 1;
          LOBYTE(v70) = 1;
          LOBYTE(v69) = 1;
        }

        if (v102 == 1)
        {
          *&v98.var4 = v102;
          v85 = v101;
          v86 = *(a1 + 96);
          *v86 = v100;
          *(v86 + 16) = v85;
          *(v86 + 32) = *&v98.var4;
          *(v86 + 40) = v71;
          *(v86 + 41) = v70;
          *(v86 + 42) = v69;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_113:
        *(a1 + 56) = a2;
        goto LABEL_114;
      }

      v31 = a2;
      v30 = *(v6 + 32);
      v32 = a2;
    }

    else
    {
      v30 = 0;
      v31 = *(v6 + 16);
      v32 = *(v6 + 8);
    }

    v33 = *(v6 + 24);
    v34 = *(v6 + 33);
    goto LABEL_98;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 328);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 328);
  v5 = (a1 + 328);
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v8 = &v7;
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 320, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 320, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 408), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 448), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 448), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 488), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 488), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 320);
  v29 = (a2 + 328);
  if (v2 == (a2 + 328))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_20;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v31 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v31 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v5 = v15;
LABEL_21:
    v19 = *(v2 + 5);
    *(v12 + 5) = *(v2 + 7);
    *(v12 + 3) = v19;
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    v22 = *(v2 + 13);
    *(v12 + 13) = *(v2 + 15);
    *(v12 + 11) = v22;
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    v23 = *(v2 + 17);
    v24 = *(v2 + 19);
    v25 = *(v2 + 21);
    *(v12 + 21) = *(v2 + 23);
    *(v12 + 19) = v25;
    *(v12 + 17) = v24;
    *(v12 + 15) = v23;
    v12[23] = v2[25];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 24, v2[26], v2[27], (v2[27] - v2[26]) >> 4);
    }

    v12[27] = v2[29];

LABEL_24:
    v26 = v2[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v2[2];
        v28 = *v27 == v2;
        v2 = v27;
      }

      while (!v28);
    }

    v2 = v27;
  }

  while (v27 != v29);
}

void sub_228FAC8E8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](v3 - 112);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1518;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1518;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 160;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF15A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF15A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 680) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 680))
    {
      v11 = -1.79769313e308;
    }

    else
    {
      v11 = *(a1 + 176);
      v13 = *(a1 + 120);
      if (v11 <= v13)
      {
        v11 = -1.79769313e308;
      }

      if (v11 < v13)
      {
        v11 = *(a1 + 120);
      }
    }
  }

  else
  {
    v11 = *(a1 + 176);
    if (v11 <= *(a1 + 120))
    {
      v11 = -1.79769313e308;
    }
  }

  if (v9 >= v11)
  {
    if (v10 && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v12 = (*(*a1 + 128))(a1, v15, a4);
  }

  return v12;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 656) != *(v2 + 648))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  *(&v32 + 1) = 0;
  v33 = 0uLL;
  v34 = 0;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - (v12 - v6) < 0.01)
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0.0;
      v12 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v6;
  }

  *(&v32 + 1) = v12;
  *&v33 = v7;
  *(&v33 + 1) = v8;
  LOBYTE(v34) = v9;
  HIBYTE(v34) = v10;
LABEL_6:
  *&v32 = v5;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  v27 = 0;
  v13 = *(a1 + 16);
  v14 = v13 - v12;
  v15 = v7 - v12 - (v13 - v12);
  if (!*(a1 + 36))
  {
    if (v15 < 0.01)
    {
      goto LABEL_11;
    }

    if (v14 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    *(&v25 + 1) = *(&v32 + 1);
    v26 = v33;
    v27 = v34;
    *&v25 = v5;
    goto LABEL_32;
  }

  if (v14 < 0.01)
  {
    goto LABEL_14;
  }

  if (v15 >= 0.01)
  {
LABEL_15:
    *(&v25 + 1) = *(a1 + 16);
    *&v26 = v7;
    *(&v26 + 1) = v8;
    LOBYTE(v27) = v9;
    HIBYTE(v27) = v10;
    *&v33 = v13;
    *&v32 = v5;
    *&v25 = v5;
    if ((v9 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

LABEL_11:
  *&v32 = v5;
  *&v25 = v5;
  v13 = v7;
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v23 = v13;
  v24 = v12;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 352), v8);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 128) > 0)
  {
    v16 = v24;
    if (v24 < *(a1 + 48))
    {
      v17 = *(a1 + 8);
      if (v24 >= v17)
      {
        v17 = v24;
      }

      *(a1 + 48) = v17;
    }

    if (v23 > *(a1 + 56))
    {
      v18 = *(a1 + 16);
      if (v18 >= v23)
      {
        v18 = v23;
      }

      *(a1 + 56) = v18;
    }

    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v19.f64[1] = *(a1 + 16);
  v16 = v24;
  v19.f64[0] = v24;
  v20.f64[0] = *(a1 + 8);
  v20.f64[1] = v23;
  v21 = vcgtq_f64(v20, v19);
  v20.f64[0] = v24;
  *(a1 + 48) = vbslq_s8(v21, *(a1 + 8), v20);
  if (a3)
  {
LABEL_27:
    if (v16 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v11, v16);
    }
  }

LABEL_30:
  v28[0] = v32;
  v28[1] = v33;
  v29 = v34;
  v30 = 0;
  v31 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
  if (*(a1 + 33) == 1)
  {
    v22 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v11, v8);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(v11, v22);
  }

LABEL_32:
  if (v27 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 536, &v25);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 682) == 1)
  {
    *(a1 + 684) = 1;
  }

  else
  {
    *(a1 + 684) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[67], a1[68], 0xCCCCCCCCCCCCCCCDLL * ((a1[68] - a1[67]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FAD94C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 560), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  v9 = 0uLL;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = xmmword_229170D50;
  *(v8 + 136) = 0;
  *(v8 + 144) = xmmword_229170D60;
  *(v8 + 160) = 0;
  *(v8 + 168) = xmmword_229170D70;
  *(v8 + 184) = 0;
  *(v8 + 192) = xmmword_229170D80;
  *(v8 + 208) = 0;
  *(v8 + 216) = xmmword_229170D90;
  *(v8 + 232) = 0;
  *(v8 + 240) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 248) = 0;
  v10 = *(v8 + 256);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(v8 + 256) = v9;
  *(v8 + 272) = v9;
  if (*(a1 + 344))
  {
    v11 = *(a1 + 328);
    v12 = *(a1 + 336);
    *(a1 + 328) = a1 + 336;
    *(v12 + 16) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    if (v11[1])
    {
      v13 = v11[1];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v17 = v14[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 560));
  *(a1 + 544) = *(a1 + 536);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 684) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 684) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FADBF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 680) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228FAE044(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40A18ECEBDLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    if (a7 - a6 - v9 >= 0.01)
    {
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v19 = v7;
  v20 = v8;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a2;
  v17 = v10;
  v18 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (v11 - a6 < 0.01)
    {
      return 1;
    }

    if (a7 - a6 - (v11 - a6) < 0.01)
    {
      v11 = a7;
    }

    v14 = a6;
    v15 = v11;
    v17 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 680) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF16E8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 1;
  *(a1 + 690) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF16E8;
  v2 = *(a1 + 720);
  if (v2)
  {
    *(a1 + 728) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 656);
  if (v3)
  {
    *(a1 + 664) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 688) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 696) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 88, a2);
  v7 = a2;
  v4 = a1[88];
  v5 = a1[85];
  a1[85] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[85]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 248) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 688))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228FAED0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 690) == 1)
    {
      if (*(a1 + 689))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 688))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v17 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 691) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 720, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 690) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 690) = 1;
  v68 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v67 = v6;
  if (*(a1 + 689))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 712);
  if (!v9)
  {
    v8 = 0;
    v69 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v69 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1139];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = *(a1 + 712);
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v71;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v71 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v70 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v69 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v70 objects:v74 count:16];
  }

  while (v11);

  if (v12)
  {
    [v69 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 712);
  *(a1 + 712) = 0;

  *(a1 + 689) = 0;
  if (v8)
  {
    v28 = *(a1 + 720);
    *(a1 + 736) = 0;
    *(a1 + 728) = 0;
    *(a1 + 720) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v69 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 720);
      v39 = *(a1 + 728);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 728);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 728) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 720);
  v29 = *(a1 + 728);
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  if ([v69 count])
  {
LABEL_46:
    v44 = v69;
    if (v44)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v46)
      {
        v47 = *v71;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v70 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, v49, v68);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, 0, v68))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v68;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v68;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40))
  {
    while (*(a1 + 664) != *(a1 + 656))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 690) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 692) == 1)
    {
      *(a1 + 692) = 0;
      v6 = v67;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v67;
LABEL_80:
  *(a1 + 690) = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228FAF5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 690) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 690))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 690) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 712);
    *(a1 + 712) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 689) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 689) & 1) == 0)
  {
    v8 = *(a1 + 712);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 712);
      *(a1 + 712) = v9;

      v8 = *(a1 + 712);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 688) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 688) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 688) forKey:@"needs_config"];
  v3;
  v28[0] = &unk_283BF1A08;
  v28[1] = 0;
  v29 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v29) = 1;
  v28[2] = v4;
  memset(&v28[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v28);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v27 = 511;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 145);
  v24 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v30[0] = &unk_283BEB0A8;
    v35 = 127;
    v31 = vextq_s8(*v8, *v8, 8uLL);
    v30[1] = v8[1].i64[0];
    v30[2] = v8[1].i64[1];
    v34 = 0;
    v33 = v8[2].i8[9];
    v32 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsRelative<HDStatisticsSleepStages>::archive(v30, a1 + 240);
}

void sub_228FAFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v37 = a2;
  *(a1 + 688) = [v37 decodeBoolForKey:@"needs_config"];
  v3 = v37;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(&v40.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v42 = 0u;
  v83 = 0;
  PB::Reader::Reader(v82, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v83]);
  v75 = &unk_283BF1A08;
  v76 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 0;
  statistics::StatisticsEngine::readFrom(&v75, v82);
  v40.n128_u64[0] = v77;
  if (v76)
  {
    v38 = v3;
    v46 = 0;
    v49 = 0uLL;
    v50 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0;
    *v53 = 0;
    memset(&v53[8], 0, 32);
    *&v53[40] = xmmword_229170D50;
    v54 = xmmword_229170D60;
    *&v53[56] = 0;
    *v55 = 0;
    *&v55[8] = xmmword_229170D70;
    v56 = xmmword_229170D80;
    *&v55[24] = 0;
    *v57 = 0;
    *&v57[8] = xmmword_229170D90;
    *&v57[24] = 0;
    *v58 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v58[8], 0, 34);
    v60[1] = 0;
    v60[0] = 0;
    v59 = v60;
    v62 = 0u;
    v61 = 0u;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v68 = 1065353216;
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v43 = vextq_s8(*(v76 + 8), *(v76 + 8), 8uLL);
    v4 = *(v76 + 72);
    v44 = *(v76 + 64);
    LOWORD(v45) = *(v76 + 185);
    v47 = vextq_s8(*(v76 + 24), *(v76 + 24), 8uLL);
    v48 = v4;
    v5 = *(v76 + 80);
    v6 = *(v76 + 88);
    for (i = v76; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v86) = 1;
      BYTE8(v86) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v84 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v85 = v8;
      *(&v85 + 1) = v9;
      BYTE9(v86) = *(v7 + 41);
      BYTE10(v86) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v52, v84.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsSleepStages>::unarchive(&v84, v10);
      *v58 = v94;
      *&v58[16] = v95;
      *&v58[32] = v96;
      *&v55[16] = v90;
      v56 = v91;
      *v57 = v92;
      *&v57[16] = v93;
      *&v53[32] = v86;
      *&v53[48] = v87;
      v54 = v88;
      *v55 = v89;
      *v53 = v84;
      *&v53[16] = v85;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; *(v16 + 5) = v27)
    {
      v13 = *v11;
      HDStatisticsRelative<HDStatisticsSleepStages>::unarchive(&v84, *v11);
      v14 = *(v13 + 18);
      v15 = v60[0];
      if (!v60[0])
      {
LABEL_13:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_13;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_13;
        }
      }

      v18 = v96;
      v19 = v95;
      v20 = v94;
      v21 = v92;
      *(v16 + 23) = v93;
      *(v16 + 25) = v20;
      *(v16 + 27) = v19;
      *(v16 + 29) = v18;
      v22 = v91;
      v23 = v90;
      v24 = v88;
      *(v16 + 15) = v89;
      *(v16 + 17) = v23;
      *(v16 + 19) = v22;
      *(v16 + 21) = v21;
      v25 = v87;
      v26 = v86;
      v27 = v84;
      *(v16 + 7) = v85;
      *(v16 + 9) = v26;
      *(v16 + 11) = v25;
      *(v16 + 13) = v24;
      ++v11;
    }

    v28 = i[5];
    for (k = i[6]; v28 != k; v28 += 8)
    {
      v31 = *(*v28 + 8);
      v30 = *(*v28 + 16);
      if (v31 >= v30)
      {
        v32 = *(*v28 + 16);
      }

      else
      {
        v32 = *(*v28 + 8);
      }

      if (v30 < v31)
      {
        v30 = *(*v28 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v49, v32, v30);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(&v40.n128_i64[1], &v43);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v43);
    v3 = v38;
  }

  v33 = v78;
  for (m = v79; v33 != m; v33 += 8)
  {
    v35 = *(*v33 + 8);
    v36 = *(*v33 + 16);
    v43 = vextq_s8(*(*v33 + 24), *(*v33 + 24), 8uLL);
    v44 = v35;
    v45 = v36;
    LOWORD(v46) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v43.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v75);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 112), &v40);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v40.n128_i64[1]);
}

void sub_228FB0428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v17 + 496);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v17 + 416);
  v19 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v19;
    operator delete(v19);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v17 + 352);
  std::__tree<long>::destroy(STACK[0x410]);
  v20 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v20;
    operator delete(v20);
  }

  objc_destroyWeak((v17 + 88));
  v21 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v21;
    operator delete(v21);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x4E0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = xmmword_229170D50;
  *(a1 + 176) = 0;
  *(a1 + 184) = xmmword_229170D60;
  *(a1 + 200) = 0;
  *(a1 + 208) = xmmword_229170D70;
  *(a1 + 224) = 0;
  *(a1 + 232) = xmmword_229170D80;
  *(a1 + 248) = 0;
  *(a1 + 256) = xmmword_229170D90;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2)
  {
    *(a1 + 552) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 496);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 456);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 416);
  v2 = *(a1 + 392);
  if (v2)
  {
    *(a1 + 400) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 352);
  std::__tree<long>::destroy(*(a1 + 336));
  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 88));
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 704));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v17);
  *(a1 + 688) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 68), a2 + 34);
  v4 = a2[35].n128_u64[1];
  a2[35].n128_u64[1] = 0;
  v5 = a1[71];
  a1[71] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 200) = v13;
  v16 = *(a2 + 264);
  v17 = *(a2 + 280);
  v18 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v18;
  *(a1 + 264) = v16;
  *(a1 + 280) = v17;
  v19 = (a1 + 336);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  v20 = *(a2 + 328);
  if (v20 != (a2 + 336))
  {
    v21 = 0;
    v22 = (a1 + 336);
    while (1)
    {
      v23 = v20[4];
      v24 = (a1 + 336);
      if (v22 == v19)
      {
        goto LABEL_12;
      }

      v25 = v21;
      v26 = (a1 + 336);
      if (v21)
      {
        do
        {
          v24 = v25;
          v25 = v25[1];
        }

        while (v25);
      }

      else
      {
        do
        {
          v24 = v26[2];
          v27 = *v24 == v26;
          v26 = v24;
        }

        while (v27);
      }

      if (v24[4] < v23)
      {
LABEL_12:
        if (v21)
        {
          v28 = v24 + 1;
        }

        else
        {
          v28 = (a1 + 336);
        }

        if (!*v28)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v21)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v29 = v21;
            v30 = v21[4];
            if (v30 <= v23)
            {
              break;
            }

            v21 = *v29;
            if (!*v29)
            {
              goto LABEL_23;
            }
          }

          if (v30 >= v23)
          {
            break;
          }

          v21 = v29[1];
          if (!v21)
          {
            goto LABEL_23;
          }
        }
      }

      v31 = v20[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v20[2];
          v27 = *v32 == v20;
          v20 = v32;
        }

        while (!v27);
      }

      if (v32 == (a2 + 336))
      {
        break;
      }

      v21 = *v19;
      v22 = *(a1 + 328);
      v20 = v32;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 352, a2 + 352);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 392, *(a2 + 392), *(a2 + 400), (*(a2 + 400) - *(a2 + 392)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 416, a2 + 416);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 456, a2 + 456);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 496, a2 + 496);
  return a1;
}

void sub_228FB0D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 456);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 416);
  v14 = *(v10 + 392);
  if (v14)
  {
    *(v10 + 400) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 352);
  std::__tree<long>::destroy(*v12);
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v10 + 88));
  v16 = *v11;
  if (*v11)
  {
    *(v10 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  v15 = *(a2 + 248);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = v15;
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  v16 = *(a2 + 312);
  v18 = *(a2 + 264);
  v17 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v16;
  *(a1 + 264) = v18;
  *(a1 + 280) = v17;
  *(a1 + 120) = *(a2 + 120);
  v19 = a1 + 336;
  std::__tree<long>::destroy(*(a1 + 336));
  *(a1 + 328) = *(a2 + 328);
  v20 = *(a2 + 336);
  v21 = *(a2 + 344);
  *(a1 + 336) = v20;
  *(a1 + 344) = v21;
  if (v21)
  {
    *(v20 + 16) = v19;
    *(a2 + 328) = a2 + 336;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
  }

  else
  {
    *(a1 + 328) = v19;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 352, (a2 + 352));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 416, (a2 + 416));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 456, (a2 + 456));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 496, (a2 + 496));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v94 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v96 = a2;
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      WeakRetained = [v11 underlyingSampleType];

      v9 = WeakRetained;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v94 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *(a2 + 392);
      v14 = *(a2 + 400);
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = objc_loadWeakRetained((a1 + 48));
        v17 = [v16 sourceForSourceID:v15];

        if (v17)
        {
          if (([WeakRetained containsObject:v17] & 1) == 0)
          {
            [WeakRetained addObject:v17];
          }
        }

        ++v13;
      }

      v18 = [WeakRetained copy];
      [v12 _setSources:v18];
    }
  }

  v111[0] = &unk_283BF17B8;
  v112 = v111;
  v95 = v12;
  v19 = *(v96 + 264);
  v20 = *(v96 + 296);
  v21 = *(v96 + 312);
  v108 = *(v96 + 280);
  v109 = v20;
  v110 = v21;
  v22 = *(v96 + 200);
  v23 = *(v96 + 232);
  v104 = *(v96 + 216);
  v105 = v23;
  v106 = *(v96 + 248);
  v107 = v19;
  v24 = *(v96 + 136);
  v25 = *(v96 + 168);
  v100 = *(v96 + 152);
  v101 = v25;
  v102 = *(v96 + 184);
  v103 = v22;
  *__p = *(v96 + 120);
  v99 = v24;
  if (!v112)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v26 = ((*(*v112 + 48))(v112, __p) + 32);
  v27 = 0.0;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 144;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v31 = *(v26 - 1);
    if (v31 > 2.22507386e-308 && v31 >= v27)
    {
      if (v31 <= v27)
      {
        if (*v26 < v28)
        {
          v30 = *(v26 - 2);
          v27 = *(v26 - 1);
          v28 = *v26;
        }
      }

      else
      {
        v30 = *(v26 - 2);
        v28 = *v26;
        v27 = *(v26 - 1);
      }
    }

    v26 += 3;
    v29 -= 24;
  }

  while (v29);
  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{2.22507386e-308, v27}];
    [v95 setCategoryValue:v33];
  }

  v34 = *(v96 + 296);
  v108 = *(v96 + 280);
  v109 = v34;
  v110 = *(v96 + 312);
  v35 = *(v96 + 232);
  v104 = *(v96 + 216);
  v105 = v35;
  v36 = *(v96 + 264);
  v106 = *(v96 + 248);
  v107 = v36;
  v37 = *(v96 + 168);
  v100 = *(v96 + 152);
  v101 = v37;
  v38 = *(v96 + 200);
  v102 = *(v96 + 184);
  v103 = v38;
  v39 = *(v96 + 136);
  *__p = *(v96 + 120);
  v99 = v39;
  if (!v112)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v95 setDataCount:{*(*(*v112 + 48))(v112, __p)}];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_87;
  }

  v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = *(v96 + 392);
  v41 = *(v96 + 400);
  while (v40 != v41)
  {
    v42 = *v40;
    v43 = objc_loadWeakRetained((a1 + 48));
    v44 = [v43 sourceForSourceID:v42];

    if (v44 && ([v93 containsObject:v44] & 1) == 0)
    {
      [v93 addObject:v44];
    }

    ++v40;
  }

  v9 = [v93 copy];
  [v95 _setSources:v9];

  v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v99 = 0u;
  LODWORD(v100) = 1065353216;
  v45 = *(v96 + 328);
  if (v45 == (v96 + 336))
  {
    goto LABEL_86;
  }

  do
  {
    v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_bundleIdentifierForSourceID(v96, v45[4]);
    v47 = v46;
    if (!v46)
    {
      goto LABEL_62;
    }

    v48 = [v46 hash];
    v49 = v48;
    v50 = __p[1];
    if (!__p[1])
    {
      goto LABEL_60;
    }

    v51 = vcnt_s8(__p[1]);
    v51.i16[0] = vaddlv_u8(v51);
    v52 = v51.u32[0];
    if (v51.u32[0] > 1uLL)
    {
      v53 = v48;
      if (v48 >= __p[1])
      {
        v53 = v48 % __p[1];
      }
    }

    else
    {
      v53 = (__p[1] - 1) & v48;
    }

    v54 = *(__p[0] + v53);
    if (!v54 || (v55 = *v54) == 0)
    {
LABEL_60:
      operator new();
    }

    v91 = __p[1] - 1;
    while (1)
    {
      v56 = v55[1];
      if (v56 == v49)
      {
        break;
      }

      if (v52 > 1)
      {
        if (v56 >= v50)
        {
          v56 %= v50;
        }
      }

      else
      {
        v56 &= v91;
      }

      if (v56 != v53)
      {
        goto LABEL_60;
      }

LABEL_59:
      v55 = *v55;
      if (!v55)
      {
        goto LABEL_60;
      }
    }

    v57 = v55[2];
    v58 = v47;
    v9 = v58;
    if (v57 != v58)
    {
      WeakRetained = [v57 isEqualToString:v58];

      if (WeakRetained)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_61:
    *(v55 + 3) = *(v45 + 5);
    v59 = *(v45 + 7);
    v60 = *(v45 + 9);
    v61 = *(v45 + 11);
    *(v55 + 11) = *(v45 + 13);
    *(v55 + 9) = v61;
    *(v55 + 7) = v60;
    *(v55 + 5) = v59;
    v62 = *(v45 + 15);
    v63 = *(v45 + 17);
    v64 = *(v45 + 19);
    *(v55 + 19) = *(v45 + 21);
    *(v55 + 17) = v64;
    *(v55 + 15) = v63;
    *(v55 + 13) = v62;
    v65 = *(v45 + 23);
    v66 = *(v45 + 25);
    v67 = *(v45 + 27);
    *(v55 + 27) = *(v45 + 29);
    *(v55 + 25) = v67;
    *(v55 + 23) = v66;
    *(v55 + 21) = v65;

LABEL_62:
    v68 = v45[1];
    if (v68)
    {
      do
      {
        v69 = v68;
        v68 = *v68;
      }

      while (v68);
    }

    else
    {
      do
      {
        v69 = v45[2];
        v70 = *v69 == v45;
        v45 = v69;
      }

      while (!v70);
    }

    v45 = v69;
  }

  while (v69 != (v96 + 336));
  for (i = v99; i; i = *i)
  {
    v72 = i[2];
    if (!v112)
    {
      goto LABEL_105;
    }

    v73 = ((*(*v112 + 48))(v112, i + 3) + 32);
    v74 = 0.0;
    v75 = 0x7FFFFFFFFFFFFFFFLL;
    v76 = 144;
    v77 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v78 = *(v73 - 1);
      if (v78 > 2.22507386e-308 && v78 >= v74)
      {
        if (v78 <= v74)
        {
          if (*v73 < v75)
          {
            v77 = *(v73 - 2);
            v74 = *(v73 - 1);
            v75 = *v73;
          }
        }

        else
        {
          v77 = *(v73 - 2);
          v75 = *v73;
          v74 = *(v73 - 1);
        }
      }

      v73 += 3;
      v76 -= 24;
    }

    while (v76);
    if (v77 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = [MEMORY[0x277CCABB0] numberWithInteger:v74];
      [v90 setObject:v80 forKeyedSubscript:v72];
    }

    if (!v112)
    {
LABEL_105:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(*(*v112 + 48))(v112, i + 3)}];
    [v92 setObject:v9 forKeyedSubscript:v72];
  }

LABEL_86:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v95 setCategoryValueBySource:v90];
  [v95 setDataCountBySource:v92];

LABEL_87:
  std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsSleepStages> const&)>::~__value_func[abi:ne200100](v111);
  v81 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v82 = [v95 averageQuantity];
  if (v82)
  {
    v9 = [v95 averageQuantity];
    if (([v9 isCompatibleWithUnit:v81] & 1) == 0)
    {

      goto LABEL_101;
    }
  }

  v83 = [v95 minimumQuantity];
  if (v83)
  {
    WeakRetained = [v95 minimumQuantity];
    if (![WeakRetained isCompatibleWithUnit:v81])
    {
      v84 = 1;
      goto LABEL_95;
    }
  }

  v85 = [v95 maximumQuantity];
  if (v85)
  {
    v86 = [v95 maximumQuantity];
    v87 = [v86 isCompatibleWithUnit:v81];

    v84 = v87 ^ 1;
    if (v83)
    {
      goto LABEL_95;
    }

LABEL_99:
    if (!v82)
    {
      goto LABEL_100;
    }

LABEL_96:

    if ((v84 & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_101:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v81}];
    goto LABEL_102;
  }

  v84 = 0;
  if (!v83)
  {
    goto LABEL_99;
  }

LABEL_95:

  if (v82)
  {
    goto LABEL_96;
  }

LABEL_100:

  if (v84)
  {
    goto LABEL_101;
  }

LABEL_102:

  v88 = *MEMORY[0x277D85DE8];

  return v95;
}