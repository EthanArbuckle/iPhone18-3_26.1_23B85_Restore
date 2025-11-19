void sub_254D11DE4(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  operator delete(v2);
  std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 88);
    std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<siri::intelligence::BehaviorArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      std::vector<siri::intelligence::FunctionArgument>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *>(__str, a3, v8);
    for (i = *(a1 + 8); i != v12; std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](a1, i))
    {
      i -= 56;
    }

    *(a1 + 8) = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::BehaviorArgument>,siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(a1, __str + v11, a3, *(a1 + 8));
  }
}

void std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,false>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  while (2)
  {
    v308 = (a2 - 8);
    v310 = a2;
    v303 = (a2 - 24);
    v304 = (a2 - 16);
    v6 = a1;
    while (1)
    {
      while (1)
      {
        v7 = (a2 - v6) >> 6;
        a1 = v6;
        if (v7 > 2)
        {
          switch(v7)
          {
            case 3uLL:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(v6, (v6 + 64), v308);
              return;
            case 4uLL:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(v6, v6 + 64, v6 + 128, v308);
              return;
            case 5uLL:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(v6, v6 + 64, v6 + 128, v6 + 192, v308);
              return;
          }
        }

        else
        {
          if (v7 < 2)
          {
            return;
          }

          if (v7 == 2)
          {
            v120 = *(a2 - 8);
            v119 = a2 - 8;
            v118 = v120;
            v121 = *(v6 + 23);
            v122 = *(v119 + 23);
            if (v122 >= 0)
            {
              v123 = *(v119 + 23);
            }

            else
            {
              v123 = v119[1];
            }

            if (v122 >= 0)
            {
              v124 = v119;
            }

            else
            {
              v124 = v118;
            }

            if (v121 >= 0)
            {
              v125 = *(v6 + 23);
            }

            else
            {
              v125 = *(v6 + 8);
            }

            if (v121 >= 0)
            {
              v126 = v6;
            }

            else
            {
              v126 = *v6;
            }

            if (v125 >= v123)
            {
              v127 = v123;
            }

            else
            {
              v127 = v125;
            }

            v128 = memcmp(v124, v126, v127);
            v129 = v123 < v125;
            if (v128)
            {
              v129 = v128 < 0;
            }

            if (v129)
            {
              std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(v6, v119);
            }

            return;
          }
        }

        if (v7 <= 23)
        {
          if (a4)
          {
            if (v6 != a2)
            {
              v130 = (v6 + 64);
              if ((v6 + 64) != a2)
              {
                v131 = 0;
                v132 = v6;
                do
                {
                  v133 = v130;
                  v134 = *(v132 + 23);
                  v135 = *(v132 + 87);
                  if (v135 >= 0)
                  {
                    v136 = *(v132 + 87);
                  }

                  else
                  {
                    v136 = v132[9];
                  }

                  if (v135 >= 0)
                  {
                    v137 = v130;
                  }

                  else
                  {
                    v137 = v132[8];
                  }

                  if (v134 >= 0)
                  {
                    v138 = *(v132 + 23);
                  }

                  else
                  {
                    v138 = v132[1];
                  }

                  if (v134 >= 0)
                  {
                    v139 = v132;
                  }

                  else
                  {
                    v139 = *v132;
                  }

                  if (v138 >= v136)
                  {
                    v140 = v136;
                  }

                  else
                  {
                    v140 = v138;
                  }

                  v141 = memcmp(v137, v139, v140);
                  v142 = v136 < v138;
                  if (v141)
                  {
                    v142 = v141 < 0;
                  }

                  if (v142)
                  {
                    v143 = *v133;
                    v318 = v133[2];
                    *__p = v143;
                    v133[1] = 0;
                    v133[2] = 0;
                    *v133 = 0;
                    *v319 = *(v132 + 11);
                    *&v319[16] = *(v132 + 13);
                    v132[13] = 0;
                    v132[14] = 0;
                    v132[12] = 0;
                    v320 = *(v132 + 60);
                    v144 = v131;
                    v145 = a1;
                    while (1)
                    {
                      v146 = v144;
                      v147 = v145 + v144;
                      if (*(v145 + v144 + 87) < 0)
                      {
                        operator delete(*(v147 + 64));
                      }

                      *(v147 + 64) = *v147;
                      v148 = *(v147 + 16);
                      v149 = *(v147 + 24);
                      *(v147 + 23) = 0;
                      *v147 = 0;
                      *(v147 + 80) = v148;
                      *(v147 + 88) = v149;
                      std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v147 + 96));
                      *(v147 + 96) = *(v147 + 32);
                      *(v147 + 112) = *(v147 + 48);
                      *(v147 + 40) = 0;
                      *(v147 + 48) = 0;
                      *(v147 + 32) = 0;
                      *(v147 + 120) = *(v147 + 56);
                      if (!v146)
                      {
                        break;
                      }

                      v145 = a1;
                      v150 = *(a1 + v146 - 41);
                      if (SHIBYTE(v318) >= 0)
                      {
                        v151 = HIBYTE(v318);
                      }

                      else
                      {
                        v151 = __p[1];
                      }

                      if (SHIBYTE(v318) >= 0)
                      {
                        v152 = __p;
                      }

                      else
                      {
                        v152 = __p[0];
                      }

                      if (v150 >= 0)
                      {
                        v153 = *(a1 + v146 - 41);
                      }

                      else
                      {
                        v153 = *(a1 + v146 - 56);
                      }

                      if (v150 >= 0)
                      {
                        v154 = (a1 + v146 - 64);
                      }

                      else
                      {
                        v154 = *(a1 + v146 - 64);
                      }

                      if (v153 >= v151)
                      {
                        v155 = v151;
                      }

                      else
                      {
                        v155 = v153;
                      }

                      v156 = memcmp(v152, v154, v155);
                      v157 = v156 < 0;
                      if (!v156)
                      {
                        v157 = v151 < v153;
                      }

                      v144 = v146 - 64;
                      if (!v157)
                      {
                        v158 = a1 + v146;
                        goto LABEL_291;
                      }
                    }

                    v158 = a1;
LABEL_291:
                    if (*(v158 + 23) < 0)
                    {
                      operator delete(*v158);
                    }

                    v159 = a1 + v146;
                    v160 = *__p;
                    *(v158 + 16) = v318;
                    *v158 = v160;
                    HIBYTE(v318) = 0;
                    LOBYTE(__p[0]) = 0;
                    *(v158 + 24) = *v319;
                    std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v159 + 32));
                    *(v159 + 32) = *&v319[8];
                    *(v158 + 40) = *&v319[16];
                    memset(&v319[8], 0, 24);
                    *(v158 + 56) = v320;
                    v312[0] = &v319[8];
                    std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v312);
                    if (SHIBYTE(v318) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  v130 = v133 + 8;
                  v131 += 64;
                  v132 = v133;
                }

                while (v133 + 8 != v310);
              }
            }
          }

          else if (v6 != a2)
          {
            v274 = (v6 + 64);
            if ((v6 + 64) != a2)
            {
              v275 = (v6 + 120);
              do
              {
                v276 = v274;
                v277 = *(a1 + 23);
                v278 = *(a1 + 87);
                if (v278 >= 0)
                {
                  v279 = *(a1 + 87);
                }

                else
                {
                  v279 = *(a1 + 72);
                }

                if (v278 >= 0)
                {
                  v280 = v274;
                }

                else
                {
                  v280 = *(a1 + 64);
                }

                if (v277 >= 0)
                {
                  v281 = *(a1 + 23);
                }

                else
                {
                  v281 = *(a1 + 8);
                }

                if (v277 >= 0)
                {
                  v282 = a1;
                }

                else
                {
                  v282 = *a1;
                }

                if (v281 >= v279)
                {
                  v283 = v279;
                }

                else
                {
                  v283 = v281;
                }

                v284 = memcmp(v280, v282, v283);
                v285 = v279 < v281;
                if (v284)
                {
                  v285 = v284 < 0;
                }

                if (v285)
                {
                  v286 = *v276;
                  v318 = *(v276 + 16);
                  *__p = v286;
                  *(v276 + 8) = 0;
                  *(v276 + 16) = 0;
                  *v276 = 0;
                  *v319 = *(a1 + 88);
                  *&v319[16] = *(a1 + 104);
                  *(a1 + 104) = 0;
                  *(a1 + 112) = 0;
                  *(a1 + 96) = 0;
                  v320 = *(a1 + 120);
                  v287 = v275;
                  do
                  {
                    v288 = (v287 - 28);
                    if (*(v287 - 33) < 0)
                    {
                      operator delete(*v288);
                    }

                    *v288 = *(v287 - 60);
                    *(v287 - 5) = *(v287 - 13);
                    *(v287 - 97) = 0;
                    *(v287 - 120) = 0;
                    *(v287 - 4) = *(v287 - 12);
                    std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v287 - 3);
                    *(v287 - 12) = *(v287 - 44);
                    *(v287 - 1) = *(v287 - 9);
                    *(v287 - 10) = 0;
                    *(v287 - 9) = 0;
                    *(v287 - 11) = 0;
                    v289 = v287 - 32;
                    *v287 = *(v287 - 32);
                    v290 = *(v287 - 161);
                    v291 = v287 - 92;
                    v292 = *(v287 - 23);
                    v293 = *(v287 - 22);
                    if (SHIBYTE(v318) >= 0)
                    {
                      v294 = HIBYTE(v318);
                    }

                    else
                    {
                      v294 = __p[1];
                    }

                    if (SHIBYTE(v318) >= 0)
                    {
                      v295 = __p;
                    }

                    else
                    {
                      v295 = __p[0];
                    }

                    if ((v290 & 0x80u) == 0)
                    {
                      v296 = v290;
                    }

                    else
                    {
                      v296 = v293;
                    }

                    if ((v290 & 0x80u) == 0)
                    {
                      v297 = v291;
                    }

                    else
                    {
                      v297 = v292;
                    }

                    if (v296 >= v294)
                    {
                      v298 = v294;
                    }

                    else
                    {
                      v298 = v296;
                    }

                    v299 = memcmp(v295, v297, v298);
                    v300 = v294 < v296;
                    if (v299)
                    {
                      v300 = v299 < 0;
                    }

                    v287 = v289;
                  }

                  while (v300);
                  v301 = (v289 - 28);
                  if (*(v289 - 33) < 0)
                  {
                    operator delete(*v301);
                  }

                  v302 = *__p;
                  *(v289 - 5) = v318;
                  *v301 = v302;
                  HIBYTE(v318) = 0;
                  LOBYTE(__p[0]) = 0;
                  *(v289 - 4) = *v319;
                  std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v289 - 3);
                  *(v289 - 12) = *&v319[8];
                  *(v289 - 1) = *&v319[24];
                  memset(&v319[8], 0, 24);
                  *v289 = v320;
                  v312[0] = &v319[8];
                  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v312);
                  if (SHIBYTE(v318) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                v274 = (v276 + 64);
                v275 += 32;
                a1 = v276;
              }

              while ((v276 + 64) != v310);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v6 != a2)
          {
            v161 = (v7 - 2) >> 1;
            v162 = v161;
            v163 = a1;
            v307 = v161;
            v309 = v7;
            do
            {
              v164 = v162;
              if (v161 >= v162)
              {
                v165 = (2 * v162) | 1;
                v166 = v163 + (v165 << 6);
                v167 = 2 * v162 + 2;
                if (v167 >= v309)
                {
                  v180 = *v166;
                }

                else
                {
                  v168 = *(v166 + 87);
                  v305 = *(v166 + 64);
                  v169 = *(v166 + 23);
                  v170 = *v166;
                  v171 = v164;
                  if (v169 >= 0)
                  {
                    v172 = *(v166 + 23);
                  }

                  else
                  {
                    v172 = *(v166 + 8);
                  }

                  if (v169 >= 0)
                  {
                    v173 = v166;
                  }

                  else
                  {
                    v173 = *v166;
                  }

                  if (v168 >= 0)
                  {
                    v174 = *(v166 + 87);
                  }

                  else
                  {
                    v174 = *(v166 + 72);
                  }

                  if (v168 >= 0)
                  {
                    v175 = (v166 + 64);
                  }

                  else
                  {
                    v175 = *(v166 + 64);
                  }

                  if (v174 >= v172)
                  {
                    v176 = v172;
                  }

                  else
                  {
                    v176 = v174;
                  }

                  v177 = memcmp(v173, v175, v176);
                  v65 = v172 >= v174;
                  v164 = v171;
                  v163 = a1;
                  v178 = !v65;
                  if (v177)
                  {
                    v178 = v177 < 0;
                  }

                  v179 = !v178;
                  v180 = v305;
                  if (v179)
                  {
                    v180 = v170;
                  }

                  if (!v179)
                  {
                    v166 += 64;
                    v165 = v167;
                  }
                }

                v181 = v163 + (v164 << 6);
                v182 = *(v181 + 23);
                v183 = *(v166 + 23);
                if (v183 >= 0)
                {
                  v184 = *(v166 + 23);
                }

                else
                {
                  v184 = *(v166 + 8);
                }

                if (v183 >= 0)
                {
                  v185 = v166;
                }

                else
                {
                  v185 = v180;
                }

                if (v182 >= 0)
                {
                  v186 = *(v181 + 23);
                }

                else
                {
                  v186 = *(v181 + 8);
                }

                if (v182 >= 0)
                {
                  v187 = (v163 + (v164 << 6));
                }

                else
                {
                  v187 = *v181;
                }

                if (v186 >= v184)
                {
                  v188 = v184;
                }

                else
                {
                  v188 = v186;
                }

                v189 = memcmp(v185, v187, v188);
                v190 = v184 < v186;
                if (v189)
                {
                  v190 = v189 < 0;
                }

                if (!v190)
                {
                  v191 = *v181;
                  v318 = *(v181 + 16);
                  *__p = v191;
                  *(v181 + 8) = 0;
                  *(v181 + 16) = 0;
                  *v181 = 0;
                  *v319 = *(v181 + 24);
                  *&v319[16] = *(v181 + 40);
                  *(v181 + 32) = 0;
                  *(v181 + 40) = 0;
                  *(v181 + 48) = 0;
                  v320 = *(v181 + 56);
                  v192 = v309;
                  do
                  {
                    v193 = v166;
                    if (*(v181 + 23) < 0)
                    {
                      operator delete(*v181);
                    }

                    v194 = *v166;
                    *(v181 + 16) = *(v166 + 16);
                    *v181 = v194;
                    *(v166 + 23) = 0;
                    *v166 = 0;
                    *(v181 + 24) = *(v166 + 24);
                    std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v181 + 32));
                    *(v181 + 32) = *(v166 + 32);
                    *(v181 + 48) = *(v166 + 48);
                    *(v166 + 32) = 0;
                    *(v166 + 40) = 0;
                    *(v166 + 48) = 0;
                    *(v181 + 56) = *(v166 + 56);
                    if (v161 < v165)
                    {
                      break;
                    }

                    v195 = (2 * v165) | 1;
                    v166 = a1 + (v195 << 6);
                    v196 = 2 * v165 + 2;
                    if (v196 >= v192)
                    {
                      v209 = *v166;
                      v165 = (2 * v165) | 1;
                    }

                    else
                    {
                      v197 = *(v166 + 87);
                      v198 = *(v166 + 64);
                      v199 = *(v166 + 23);
                      v200 = *v166;
                      if (v199 >= 0)
                      {
                        v201 = *(v166 + 23);
                      }

                      else
                      {
                        v201 = *(v166 + 8);
                      }

                      if (v199 >= 0)
                      {
                        v202 = (a1 + (v195 << 6));
                      }

                      else
                      {
                        v202 = *v166;
                      }

                      if (v197 >= 0)
                      {
                        v203 = *(v166 + 87);
                      }

                      else
                      {
                        v203 = *(v166 + 72);
                      }

                      if (v197 >= 0)
                      {
                        v204 = (v166 + 64);
                      }

                      else
                      {
                        v204 = *(v166 + 64);
                      }

                      if (v203 >= v201)
                      {
                        v205 = v201;
                      }

                      else
                      {
                        v205 = v203;
                      }

                      v206 = memcmp(v202, v204, v205);
                      v65 = v201 >= v203;
                      v161 = v307;
                      v207 = !v65;
                      if (v206)
                      {
                        v207 = v206 < 0;
                      }

                      v208 = !v207;
                      v209 = v207 ? v198 : v200;
                      a2 = v310;
                      if (v208)
                      {
                        v165 = v195;
                      }

                      else
                      {
                        v166 += 64;
                        v165 = v196;
                      }
                    }

                    v210 = *(v166 + 23);
                    if (v210 >= 0)
                    {
                      v211 = *(v166 + 23);
                    }

                    else
                    {
                      v211 = *(v166 + 8);
                    }

                    if (v210 >= 0)
                    {
                      v212 = v166;
                    }

                    else
                    {
                      v212 = v209;
                    }

                    if (SHIBYTE(v318) >= 0)
                    {
                      v213 = HIBYTE(v318);
                    }

                    else
                    {
                      v213 = __p[1];
                    }

                    if (SHIBYTE(v318) >= 0)
                    {
                      v214 = __p;
                    }

                    else
                    {
                      v214 = __p[0];
                    }

                    if (v213 >= v211)
                    {
                      v215 = v211;
                    }

                    else
                    {
                      v215 = v213;
                    }

                    v216 = memcmp(v212, v214, v215);
                    v217 = v211 < v213;
                    if (v216)
                    {
                      v217 = v216 < 0;
                    }

                    v181 = v193;
                    v192 = v309;
                  }

                  while (!v217);
                  if (*(v193 + 23) < 0)
                  {
                    operator delete(*v193);
                  }

                  v218 = *__p;
                  *(v193 + 16) = v318;
                  *v193 = v218;
                  HIBYTE(v318) = 0;
                  LOBYTE(__p[0]) = 0;
                  *(v193 + 24) = *v319;
                  std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v193 + 32));
                  *(v193 + 32) = *&v319[8];
                  *(v193 + 48) = *&v319[24];
                  memset(&v319[8], 0, 24);
                  *(v193 + 56) = v320;
                  v312[0] = &v319[8];
                  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v312);
                  if (SHIBYTE(v318) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v163 = a1;
                }
              }

              v162 = v164 - 1;
            }

            while (v164);
            v219 = v309;
            do
            {
              v220 = 0;
              v221 = a1;
              v222 = *a1;
              v223 = a2;
              v313 = *(a1 + 16);
              *v312 = v222;
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
              *a1 = 0;
              *v314 = *(a1 + 24);
              *&v314[16] = *(a1 + 40);
              *(a1 + 32) = 0;
              *(a1 + 40) = 0;
              *(a1 + 48) = 0;
              v224 = (v219 - 2) >> 1;
              v315 = *(a1 + 56);
              v225 = v219;
              do
              {
                v226 = v221 + (v220 << 6);
                v227 = (v226 + 64);
                v228 = (2 * v220) | 1;
                v220 = 2 * v220 + 2;
                if (v220 >= v219)
                {
                  v220 = v228;
                }

                else
                {
                  v231 = *(v226 + 128);
                  v230 = v226 + 128;
                  v229 = v231;
                  v232 = *(v230 + 23);
                  v233 = *(v230 - 41);
                  if (v233 >= 0)
                  {
                    v234 = *(v230 - 41);
                  }

                  else
                  {
                    v234 = *(v230 - 56);
                  }

                  if (v233 >= 0)
                  {
                    v235 = v227;
                  }

                  else
                  {
                    v235 = *(v230 - 64);
                  }

                  if (v232 >= 0)
                  {
                    v236 = *(v230 + 23);
                  }

                  else
                  {
                    v236 = *(v230 + 8);
                  }

                  if (v232 >= 0)
                  {
                    v237 = v230;
                  }

                  else
                  {
                    v237 = v229;
                  }

                  if (v236 >= v234)
                  {
                    v238 = v234;
                  }

                  else
                  {
                    v238 = v236;
                  }

                  v239 = memcmp(v235, v237, v238);
                  v65 = v234 >= v236;
                  v219 = v225;
                  v240 = !v65;
                  if (v239)
                  {
                    v240 = v239 < 0;
                  }

                  if (v240)
                  {
                    v227 = v230;
                  }

                  else
                  {
                    v220 = v228;
                  }
                }

                if (*(v221 + 23) < 0)
                {
                  operator delete(*v221);
                }

                v241 = *v227;
                *(v221 + 16) = v227[2];
                *v221 = v241;
                *(v227 + 23) = 0;
                *v227 = 0;
                *(v221 + 24) = v227[3];
                std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v221 + 32));
                *(v221 + 32) = *(v227 + 2);
                *(v221 + 48) = v227[6];
                v227[4] = 0;
                v227[5] = 0;
                v227[6] = 0;
                *(v221 + 56) = *(v227 + 28);
                v221 = v227;
              }

              while (v220 <= v224);
              a2 = v223 - 8;
              v242 = *(v227 + 23);
              if (v227 == v223 - 8)
              {
                if (v242 < 0)
                {
                  operator delete(*v227);
                }

                v273 = *v312;
                v227[2] = v313;
                *v227 = v273;
                HIBYTE(v313) = 0;
                LOBYTE(v312[0]) = 0;
                v227[3] = *v314;
                std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v227 + 4);
                *(v227 + 2) = *&v314[8];
                v227[6] = *&v314[24];
                memset(&v314[8], 0, 24);
                *(v227 + 28) = v315;
              }

              else
              {
                if (v242 < 0)
                {
                  operator delete(*v227);
                }

                v243 = *a2;
                v227[2] = *(v223 - 6);
                *v227 = v243;
                *(v223 - 41) = 0;
                *(v223 - 64) = 0;
                v227[3] = *(v223 - 5);
                std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v227 + 4);
                v244 = v223 - 4;
                *(v227 + 2) = *(v223 - 2);
                v227[6] = *(v223 - 2);
                *v244 = 0;
                v244[1] = 0;
                v244[2] = 0;
                *(v227 + 28) = *(v223 - 4);
                if (*(v223 - 41) < 0)
                {
                  operator delete(*a2);
                }

                v245 = *v312;
                *(v223 - 6) = v313;
                *a2 = v245;
                HIBYTE(v313) = 0;
                LOBYTE(v312[0]) = 0;
                *(v223 - 5) = *v314;
                std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v223 - 4);
                *(v223 - 2) = *&v314[8];
                *(v223 - 2) = *&v314[24];
                memset(&v314[8], 0, 24);
                *(v223 - 4) = v315;
                v246 = (v227 - a1 + 64) >> 6;
                v247 = v246 < 2;
                v248 = v246 - 2;
                if (!v247)
                {
                  v249 = v248 >> 1;
                  v250 = a1 + (v248 >> 1 << 6);
                  v251 = *(v227 + 23);
                  v252 = *(v250 + 23);
                  if (v252 >= 0)
                  {
                    v253 = *(v250 + 23);
                  }

                  else
                  {
                    v253 = *(v250 + 8);
                  }

                  if (v252 >= 0)
                  {
                    v254 = (a1 + (v248 >> 1 << 6));
                  }

                  else
                  {
                    v254 = *v250;
                  }

                  if (v251 >= 0)
                  {
                    v255 = *(v227 + 23);
                  }

                  else
                  {
                    v255 = v227[1];
                  }

                  if (v251 >= 0)
                  {
                    v256 = v227;
                  }

                  else
                  {
                    v256 = *v227;
                  }

                  if (v255 >= v253)
                  {
                    v257 = v253;
                  }

                  else
                  {
                    v257 = v255;
                  }

                  v258 = memcmp(v254, v256, v257);
                  v65 = v253 >= v255;
                  v219 = v225;
                  v259 = !v65;
                  if (v258)
                  {
                    v259 = v258 < 0;
                  }

                  if (v259)
                  {
                    v260 = a2;
                    v261 = *v227;
                    v318 = v227[2];
                    *__p = v261;
                    v227[1] = 0;
                    v227[2] = 0;
                    *v227 = 0;
                    *v319 = *(v227 + 3);
                    *&v319[16] = *(v227 + 5);
                    v227[5] = 0;
                    v227[6] = 0;
                    v227[4] = 0;
                    v320 = *(v227 + 28);
                    if (SHIBYTE(v318) >= 0)
                    {
                      v262 = HIBYTE(v318);
                    }

                    else
                    {
                      v262 = __p[1];
                    }

                    if (SHIBYTE(v318) >= 0)
                    {
                      v263 = __p;
                    }

                    else
                    {
                      v263 = __p[0];
                    }

                    do
                    {
                      v264 = v250;
                      if (*(v227 + 23) < 0)
                      {
                        operator delete(*v227);
                      }

                      v265 = *v250;
                      v227[2] = *(v250 + 16);
                      *v227 = v265;
                      *(v250 + 23) = 0;
                      *v250 = 0;
                      v227[3] = *(v250 + 24);
                      std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v227 + 4);
                      *(v227 + 2) = *(v250 + 32);
                      v227[6] = *(v250 + 48);
                      *(v250 + 32) = 0;
                      *(v250 + 40) = 0;
                      *(v250 + 48) = 0;
                      *(v227 + 28) = *(v250 + 56);
                      if (!v249)
                      {
                        break;
                      }

                      v249 = (v249 - 1) >> 1;
                      v250 = a1 + (v249 << 6);
                      v266 = *(v250 + 23);
                      if (v266 >= 0)
                      {
                        v267 = *(v250 + 23);
                      }

                      else
                      {
                        v267 = *(v250 + 8);
                      }

                      if (v266 >= 0)
                      {
                        v268 = (a1 + (v249 << 6));
                      }

                      else
                      {
                        v268 = *v250;
                      }

                      if (v262 >= v267)
                      {
                        v269 = v267;
                      }

                      else
                      {
                        v269 = v262;
                      }

                      v270 = memcmp(v268, v263, v269);
                      v65 = v267 >= v262;
                      v219 = v225;
                      v271 = !v65;
                      if (v270)
                      {
                        v271 = v270 < 0;
                      }

                      v227 = v264;
                    }

                    while (v271);
                    if (*(v264 + 23) < 0)
                    {
                      operator delete(*v264);
                    }

                    v272 = *__p;
                    *(v264 + 16) = v318;
                    *v264 = v272;
                    HIBYTE(v318) = 0;
                    LOBYTE(__p[0]) = 0;
                    *(v264 + 24) = *v319;
                    std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v264 + 32));
                    *(v264 + 32) = *&v319[8];
                    *(v264 + 48) = *&v319[24];
                    memset(&v319[8], 0, 24);
                    *(v264 + 56) = v320;
                    v316 = &v319[8];
                    std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v316);
                    if (SHIBYTE(v318) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    a2 = v260;
                  }
                }
              }

              __p[0] = &v314[8];
              std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](__p);
              if (SHIBYTE(v313) < 0)
              {
                operator delete(v312[0]);
              }

              v247 = v219-- <= 2;
            }

            while (!v247);
          }

          return;
        }

        v8 = v7 >> 1;
        v9 = (v6 + (v7 >> 1 << 6));
        if (v7 < 0x81)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>((v6 + (v7 >> 1 << 6)), v6, v308);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(v6, (v6 + (v7 >> 1 << 6)), v308);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>((v6 + 64), v9 - 8, v304);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>((v6 + 128), (v6 + 64 + (v8 << 6)), v303);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(v9 - 8, v9, (v6 + 64 + (v8 << 6)));
          std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(v6, v9);
        }

        v10 = v6;
        --a3;
        if (a4)
        {
          break;
        }

        v11 = *(v6 + 23);
        v12 = *(v6 - 41);
        if (v12 >= 0)
        {
          v13 = *(v6 - 41);
        }

        else
        {
          v13 = *(v6 - 56);
        }

        if (v12 >= 0)
        {
          v14 = (v6 - 64);
        }

        else
        {
          v14 = *(v6 - 64);
        }

        if (v11 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = *(v6 + 8);
        }

        if (v11 >= 0)
        {
          v16 = v6;
        }

        else
        {
          v16 = *v6;
        }

        if (v15 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        v18 = memcmp(v14, v16, v17);
        v19 = v13 < v15;
        if (v18)
        {
          v19 = v18 < 0;
        }

        if (v19)
        {
          break;
        }

        v67 = *v6;
        v318 = *(v6 + 16);
        *__p = v67;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = 0;
        *v319 = *(v6 + 24);
        *&v319[16] = *(v6 + 40);
        v68 = a2;
        *(v6 + 32) = 0;
        v69 = (v6 + 32);
        *(v6 + 40) = 0;
        *(v6 + 48) = 0;
        v320 = *(v6 + 56);
        v70 = *(v68 - 41);
        v71 = *(v68 - 8);
        v72 = *(v68 - 7);
        if (SHIBYTE(v318) >= 0)
        {
          v73 = HIBYTE(v318);
        }

        else
        {
          v73 = __p[1];
        }

        if (SHIBYTE(v318) >= 0)
        {
          v74 = __p;
        }

        else
        {
          v74 = __p[0];
        }

        if ((v70 & 0x80u) == 0)
        {
          v75 = v70;
        }

        else
        {
          v75 = v72;
        }

        if ((v70 & 0x80u) == 0)
        {
          v76 = v308;
        }

        else
        {
          v76 = v71;
        }

        if (v75 >= v73)
        {
          v77 = v73;
        }

        else
        {
          v77 = v75;
        }

        v78 = memcmp(v74, v76, v77);
        v79 = v73 < v75;
        if (v78)
        {
          v79 = v78 < 0;
        }

        if (v79)
        {
          v80 = (v6 + 64);
          do
          {
            v81 = *(v80 + 23);
            if (v81 >= 0)
            {
              v82 = *(v80 + 23);
            }

            else
            {
              v82 = v80[1];
            }

            if (v81 >= 0)
            {
              v83 = v80;
            }

            else
            {
              v83 = *v80;
            }

            if (v82 >= v73)
            {
              v84 = v73;
            }

            else
            {
              v84 = v82;
            }

            v85 = memcmp(v74, v83, v84);
            v86 = v73 < v82;
            if (v85)
            {
              v86 = v85 < 0;
            }

            v80 += 8;
          }

          while (!v86);
          v6 = (v80 - 8);
        }

        else
        {
          v87 = (v6 + 64);
          do
          {
            v6 = v87;
            if (v87 >= v310)
            {
              break;
            }

            v88 = *(v87 + 23);
            if (v88 >= 0)
            {
              v89 = *(v87 + 23);
            }

            else
            {
              v89 = v87[1];
            }

            if (v88 >= 0)
            {
              v90 = v87;
            }

            else
            {
              v90 = *v87;
            }

            if (v89 >= v73)
            {
              v91 = v73;
            }

            else
            {
              v91 = v89;
            }

            v92 = memcmp(v74, v90, v91);
            v93 = v92 < 0;
            if (!v92)
            {
              v93 = v73 < v89;
            }

            v87 = (v6 + 64);
          }

          while (!v93);
        }

        v94 = v310;
        if (v6 < v310)
        {
          v95 = v308;
          do
          {
            v96 = *(v95 + 23);
            if (v96 >= 0)
            {
              v97 = *(v95 + 23);
            }

            else
            {
              v97 = v95[1];
            }

            if (v96 >= 0)
            {
              v98 = v95;
            }

            else
            {
              v98 = *v95;
            }

            if (v97 >= v73)
            {
              v99 = v73;
            }

            else
            {
              v99 = v97;
            }

            v100 = memcmp(v74, v98, v99);
            v101 = v73 < v97;
            if (v100)
            {
              v101 = v100 < 0;
            }

            v95 -= 8;
          }

          while (v101);
          goto LABEL_184;
        }

        while (v6 < v94)
        {
          std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(v6, v94);
          v102 = (v6 + 64);
          do
          {
            v103 = *(v102 + 23);
            if (v103 >= 0)
            {
              v104 = *(v102 + 23);
            }

            else
            {
              v104 = v102[1];
            }

            if (v103 >= 0)
            {
              v105 = v102;
            }

            else
            {
              v105 = *v102;
            }

            if (v104 >= v73)
            {
              v106 = v73;
            }

            else
            {
              v106 = v104;
            }

            v107 = memcmp(v74, v105, v106);
            v108 = v73 < v104;
            if (v107)
            {
              v108 = v107 < 0;
            }

            v102 += 8;
          }

          while (!v108);
          v6 = (v102 - 8);
          v95 = (v94 - 4);
          do
          {
            v109 = *(v95 + 23);
            if (v109 >= 0)
            {
              v110 = *(v95 + 23);
            }

            else
            {
              v110 = v95[1];
            }

            if (v109 >= 0)
            {
              v111 = v95;
            }

            else
            {
              v111 = *v95;
            }

            if (v110 >= v73)
            {
              v112 = v73;
            }

            else
            {
              v112 = v110;
            }

            v113 = memcmp(v74, v111, v112);
            v114 = v73 < v110;
            if (v113)
            {
              v114 = v113 < 0;
            }

            v95 -= 8;
          }

          while (v114);
LABEL_184:
          v94 = (v95 + 8);
        }

        v115 = (v6 - 64);
        if (v6 - 64 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v116 = *v115;
          *(a1 + 16) = *(v6 - 48);
          *a1 = v116;
          *(v6 - 41) = 0;
          *(v6 - 64) = 0;
          *(a1 + 24) = *(v6 - 40);
          std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v69);
          *(a1 + 32) = *(v6 - 32);
          *(a1 + 48) = *(v6 - 16);
          *(v6 - 32) = 0;
          *(v6 - 24) = 0;
          *(v6 - 16) = 0;
          *(a1 + 56) = *(v6 - 8);
        }

        if (*(v6 - 41) < 0)
        {
          operator delete(*v115);
        }

        v117 = *__p;
        *(v6 - 48) = v318;
        *v115 = v117;
        HIBYTE(v318) = 0;
        LOBYTE(__p[0]) = 0;
        *(v6 - 40) = *v319;
        std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v6 - 32));
        *(v6 - 32) = *&v319[8];
        *(v6 - 16) = *&v319[24];
        memset(&v319[8], 0, 24);
        *(v6 - 8) = v320;
        v312[0] = &v319[8];
        std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v312);
        a2 = v310;
        if (SHIBYTE(v318) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_123:
        a4 = 0;
      }

      v20 = 0;
      v21 = *v6;
      v318 = *(v6 + 16);
      *__p = v21;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *v319 = *(v6 + 24);
      *&v319[16] = *(v6 + 40);
      *(v6 + 32) = 0;
      v22 = (v6 + 32);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v320 = *(v6 + 56);
      if (SHIBYTE(v318) >= 0)
      {
        v23 = HIBYTE(v318);
      }

      else
      {
        v23 = __p[1];
      }

      if (SHIBYTE(v318) >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      do
      {
        v25 = *(v6 + v20 + 87);
        if (v25 >= 0)
        {
          v26 = *(v6 + v20 + 87);
        }

        else
        {
          v26 = *(v6 + v20 + 72);
        }

        if (v25 >= 0)
        {
          v27 = (v6 + v20 + 64);
        }

        else
        {
          v27 = *(v6 + v20 + 64);
        }

        if (v23 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v23;
        }

        v29 = memcmp(v27, v24, v28);
        v30 = v26 < v23;
        if (v29)
        {
          v30 = v29 < 0;
        }

        v20 += 64;
      }

      while (v30);
      v31 = v6 + v20;
      v32 = v308;
      if (v20 == 64)
      {
        v40 = v308;
        while (1)
        {
          v39 = (v40 + 8);
          if (v31 >= (v40 + 8))
          {
            break;
          }

          v41 = *(v40 + 23);
          if (v41 >= 0)
          {
            v42 = *(v40 + 23);
          }

          else
          {
            v42 = v40[1];
          }

          if (v41 >= 0)
          {
            v43 = v40;
          }

          else
          {
            v43 = *v40;
          }

          if (v23 >= v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = v23;
          }

          v45 = memcmp(v43, v24, v44);
          v46 = v42 < v23;
          if (v45)
          {
            v46 = v45 < 0;
          }

          v40 -= 8;
          if (v46)
          {
            v39 = (v40 + 8);
            break;
          }
        }
      }

      else
      {
        do
        {
          v33 = *(v32 + 23);
          if (v33 >= 0)
          {
            v34 = *(v32 + 23);
          }

          else
          {
            v34 = v32[1];
          }

          if (v33 >= 0)
          {
            v35 = v32;
          }

          else
          {
            v35 = *v32;
          }

          if (v23 >= v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = v23;
          }

          v37 = memcmp(v35, v24, v36);
          v38 = v34 < v23;
          if (v37)
          {
            v38 = v37 < 0;
          }

          v32 -= 8;
        }

        while (!v38);
        v39 = (v32 + 8);
      }

      v6 = v31;
      if (v31 < v39)
      {
        v47 = v39;
        do
        {
          std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(v6, v47);
          v48 = (v6 + 64);
          do
          {
            v49 = *(v48 + 23);
            if (v49 >= 0)
            {
              v50 = *(v48 + 23);
            }

            else
            {
              v50 = v48[1];
            }

            if (v49 >= 0)
            {
              v51 = v48;
            }

            else
            {
              v51 = *v48;
            }

            if (v23 >= v50)
            {
              v52 = v50;
            }

            else
            {
              v52 = v23;
            }

            v53 = memcmp(v51, v24, v52);
            v54 = v50 < v23;
            if (v53)
            {
              v54 = v53 < 0;
            }

            v48 += 8;
          }

          while (v54);
          v6 = (v48 - 8);
          v55 = (v47 - 4);
          do
          {
            v56 = *(v55 + 23);
            if (v56 >= 0)
            {
              v57 = *(v55 + 23);
            }

            else
            {
              v57 = v55[1];
            }

            if (v56 >= 0)
            {
              v58 = v55;
            }

            else
            {
              v58 = *v55;
            }

            if (v23 >= v57)
            {
              v59 = v57;
            }

            else
            {
              v59 = v23;
            }

            v60 = memcmp(v58, v24, v59);
            v61 = v57 < v23;
            if (v60)
            {
              v61 = v60 < 0;
            }

            v55 -= 8;
          }

          while (!v61);
          v47 = (v55 + 8);
        }

        while (v6 < (v55 + 8));
        v10 = a1;
      }

      v62 = (v6 - 64);
      if (v6 - 64 != v10)
      {
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v63 = *v62;
        *(v10 + 16) = *(v6 - 48);
        *v10 = v63;
        *(v6 - 41) = 0;
        *(v6 - 64) = 0;
        *(v10 + 24) = *(v6 - 40);
        std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(v22);
        *(v10 + 32) = *(v6 - 32);
        *(v10 + 48) = *(v6 - 16);
        *(v6 - 32) = 0;
        *(v6 - 24) = 0;
        *(v6 - 16) = 0;
        *(v10 + 56) = *(v6 - 8);
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*v62);
      }

      v64 = *__p;
      *(v6 - 48) = v318;
      *v62 = v64;
      HIBYTE(v318) = 0;
      LOBYTE(__p[0]) = 0;
      *(v6 - 40) = *v319;
      std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v6 - 32));
      *(v6 - 32) = *&v319[8];
      *(v6 - 16) = *&v319[24];
      memset(&v319[8], 0, 24);
      *(v6 - 8) = v320;
      v312[0] = &v319[8];
      std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v312);
      if (SHIBYTE(v318) < 0)
      {
        operator delete(__p[0]);
      }

      v65 = v31 >= v39;
      a2 = v310;
      if (!v65)
      {
LABEL_122:
        std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,false>(a1, v6 - 64, a3, a4 & 1);
        goto LABEL_123;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *>(a1, (v6 - 64));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *>(v6, v310))
      {
        break;
      }

      if (!v66)
      {
        goto LABEL_122;
      }
    }

    a2 = (v6 - 64);
    if (!v66)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v14)
  {
    v21 = a1;
    if (v20)
    {
LABEL_51:
      v31 = a3;
LABEL_72:

      std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(v21, v31);
      return;
    }

    std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a1, a2);
    v22 = *(a2 + 23);
    v23 = *(a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    if (v23 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v22 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = a2[1];
    }

    if (v22 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v21 = a2;
      goto LABEL_51;
    }
  }

  else if (v20)
  {
    std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a2, a3);
    v32 = *(a1 + 23);
    v33 = *(a2 + 23);
    if (v33 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = a2[1];
    }

    if (v33 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v32 >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = a1[1];
    }

    if (v32 >= 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = *a1;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      v21 = a1;
      v31 = a2;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a3, a4);
    v17 = *(a2 + 23);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    if (v18 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a2, a3);
      v26 = *(a1 + 23);
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      if (v27 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {

        std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a4, a5);
    v19 = *(a3 + 23);
    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = *(a4 + 23);
    }

    else
    {
      v21 = *(a4 + 8);
    }

    if (v20 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a3, a4);
      v28 = *(a2 + 23);
      v29 = *(a3 + 23);
      if (v29 >= 0)
      {
        v30 = *(a3 + 23);
      }

      else
      {
        v30 = *(a3 + 8);
      }

      if (v29 >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 8);
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a2, a3);
        v37 = *(a1 + 23);
        v38 = *(a2 + 23);
        if (v38 >= 0)
        {
          v39 = *(a2 + 23);
        }

        else
        {
          v39 = *(a2 + 8);
        }

        if (v38 >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = *a2;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {

          std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *>(uint64_t a1, const void **a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v6 = (a2 - 8);
        v5 = *(a2 - 8);
        v7 = *(a1 + 23);
        v8 = *(a2 - 41);
        if (v8 >= 0)
        {
          v9 = *(a2 - 41);
        }

        else
        {
          v9 = *(a2 - 7);
        }

        if (v8 >= 0)
        {
          v10 = a2 - 8;
        }

        else
        {
          v10 = *(a2 - 8);
        }

        if (v7 >= 0)
        {
          v11 = *(a1 + 23);
        }

        else
        {
          v11 = *(a1 + 8);
        }

        if (v7 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(v10, v12, v13);
        v15 = v9 < v11;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(a1, v6);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, (a1 + 64), a2 - 8);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, a1 + 64, a1 + 128, a2 - 8);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, a1 + 64, a1 + 128, a1 + 192, a2 - 8);
      return 1;
  }

LABEL_28:
  v16 = (a1 + 128);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,0>(a1, (a1 + 64), (a1 + 128));
  v17 = (a1 + 192);
  if ((a1 + 192) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v16 + 23);
    v21 = *(v17 + 23);
    if (v21 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = v17[1];
    }

    if (v21 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v20 >= 0)
    {
      v24 = *(v16 + 23);
    }

    else
    {
      v24 = v16[1];
    }

    if (v20 >= 0)
    {
      v25 = v16;
    }

    else
    {
      v25 = *v16;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      *__p = *v17;
      v48 = v17[2];
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      v49 = *(v17 + 3);
      v50 = *(v17 + 5);
      v17[4] = 0;
      v17[5] = 0;
      v51 = *(v17 + 28);
      v29 = v18;
      v17[6] = 0;
      while (1)
      {
        v30 = v29;
        v31 = a1 + v29;
        if (*(a1 + v29 + 215) < 0)
        {
          operator delete(*(v31 + 192));
        }

        *(v31 + 192) = *(v31 + 128);
        v32 = *(v31 + 144);
        v33 = *(v31 + 152);
        *(v31 + 151) = 0;
        *(v31 + 128) = 0;
        *(v31 + 208) = v32;
        *(v31 + 216) = v33;
        std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v31 + 224));
        *(v31 + 224) = *(v31 + 160);
        *(v31 + 240) = *(v31 + 176);
        *(v31 + 168) = 0;
        *(v31 + 176) = 0;
        *(v31 + 160) = 0;
        *(v31 + 248) = *(v31 + 184);
        if (v30 == -128)
        {
          break;
        }

        v34 = *(a1 + v30 + 87);
        if (SHIBYTE(v48) >= 0)
        {
          v35 = HIBYTE(v48);
        }

        else
        {
          v35 = __p[1];
        }

        if (SHIBYTE(v48) >= 0)
        {
          v36 = __p;
        }

        else
        {
          v36 = __p[0];
        }

        if (v34 >= 0)
        {
          v37 = *(a1 + v30 + 87);
        }

        else
        {
          v37 = *(a1 + v30 + 72);
        }

        if (v34 >= 0)
        {
          v38 = (a1 + v30 + 64);
        }

        else
        {
          v38 = *(a1 + v30 + 64);
        }

        if (v37 >= v35)
        {
          v39 = v35;
        }

        else
        {
          v39 = v37;
        }

        v40 = memcmp(v36, v38, v39);
        v41 = v40 < 0;
        if (!v40)
        {
          v41 = v35 < v37;
        }

        v29 = v30 - 64;
        if (!v41)
        {
          v42 = a1 + v29 + 192;
          goto LABEL_72;
        }
      }

      v42 = a1;
LABEL_72:
      if (*(v42 + 23) < 0)
      {
        operator delete(*v42);
      }

      v43 = a1 + v30;
      *v42 = *__p;
      v44 = v48;
      v45 = v49;
      HIBYTE(v48) = 0;
      LOBYTE(__p[0]) = 0;
      *(v42 + 16) = v44;
      *(v42 + 24) = v45;
      std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate((v43 + 160));
      *(v43 + 160) = *(&v49 + 1);
      *(v42 + 40) = v50;
      v50 = 0uLL;
      *(&v49 + 1) = 0;
      *(v42 + 56) = v51;
      v52 = &v49 + 1;
      std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v52);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (++v19 == 8)
      {
        return v17 + 8 == a2;
      }
    }

    v16 = v17;
    v18 += 64;
    v17 += 8;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void std::swap[abi:ne200100]<siri::intelligence::BehaviorDefinition>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v13 = v5;
  v15 = 0;
  v7 = a1 + 2;
  v11 = a1[2];
  *__p = v4;
  v14[0] = *(a1 + 4);
  v8 = *(a1 + 6);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 4) = 0;
  v9 = *(a1 + 28);
  v16 = v9;
  v10 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v10;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 3) = *(a2 + 3);
  std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(a1 + 4);
  *v7 = a2[2];
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a1 + 28) = *(a2 + 28);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v13;
  *(a2 + 3) = v6;
  std::vector<siri::intelligence::BehaviorArgument>::__vdeallocate(a2 + 4);
  a2[2] = v11;
  *(a2 + 6) = v8;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  *(a2 + 28) = v9;
  v17 = v14;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void std::vector<siri::intelligence::BehaviorDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<siri::intelligence::BehaviorDescription>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<siri::intelligence::BehaviorDescription>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__split_buffer<siri::intelligence::BehaviorDescription>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<siri::intelligence::BehaviorDescription>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

YAML::EmitterState **std::unique_ptr<YAML::EmitterState>::~unique_ptr[abi:ne200100](YAML::EmitterState **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    YAML::EmitterState::~EmitterState(v2);
    MEMORY[0x259C29D90]();
  }

  return a1;
}

void YAML::Emitter::~Emitter(YAML::Emitter *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  std::unique_ptr<YAML::EmitterState>::~unique_ptr[abi:ne200100](this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  std::unique_ptr<YAML::EmitterState>::~unique_ptr[abi:ne200100](this);
}

uint64_t YAML::Emitter::c_str(YAML::Emitter *this)
{
  if (*(this + 4))
  {
    return 0;
  }

  *(*(this + 1) + *(this + 5)) = 0;
  return *(this + 1);
}

void YAML::Emitter::GetLastError(YAML::Emitter *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  if (*(*this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 24);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

BOOL YAML::Emitter::SetOutputCharset(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 3) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 32, a2, 1);
  }

  return (a2 - 3) < 2;
}

uint64_t YAML::Emitter::SetStringFormat(uint64_t *a1, uint64_t a2)
{
  if (a2 <= 7 && ((1 << a2) & 0xE1) != 0)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 36, a2, 1);
  }

  return 0;
}

BOOL YAML::Emitter::SetBoolFormat(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 8) < 3)
  {
    v2 = 40;
    goto LABEL_5;
  }

  if ((a2 - 11) <= 2)
  {
    v2 = 48;
LABEL_5:
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + v2, a2, 1);
  }

  if ((a2 & 0xFFFFFFFE) == 0xE)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 44, a2, 1);
  }

  return (a2 - 8) < 3;
}

BOOL YAML::Emitter::SetIntBase(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 16) <= 2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 52, a2, 1);
  }

  return (a2 - 16) < 3;
}

BOOL YAML::Emitter::SetSeqFormat(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 23) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 80, a2, 1);
  }

  return (a2 - 23) < 2;
}

BOOL YAML::Emitter::SetMapFormat(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 23) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 84, a2, 1);
  }

  if (a2 == 29 || !a2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 88, a2, 1);
  }

  return (a2 - 23) < 2;
}

BOOL YAML::Emitter::SetIndent(YAML::Emitter *this, unint64_t a2)
{
  if (a2 >= 2)
  {
    YAML::EmitterState::_Set<unsigned long>(*this, *this + 56, a2, 1);
  }

  return a2 > 1;
}

uint64_t YAML::Emitter::SetPreCommentIndent(YAML::Emitter *this, uint64_t a2)
{
  if (a2)
  {
    YAML::EmitterState::_Set<unsigned long>(*this, *this + 64, a2, 1);
  }

  return 0;
}

uint64_t YAML::Emitter::SetPostCommentIndent(YAML::Emitter *this, uint64_t a2)
{
  if (a2)
  {
    YAML::EmitterState::_Set<unsigned long>(*this, *this + 72, a2, 1);
  }

  return 0;
}

BOOL YAML::Emitter::SetFloatPrecision(YAML::Emitter *this, unint64_t a2)
{
  if (a2 <= 9)
  {
    YAML::EmitterState::_Set<unsigned long>(*this, *this + 96, a2, 1);
  }

  return a2 < 0xA;
}

BOOL YAML::Emitter::SetDoublePrecision(YAML::Emitter *this, unint64_t a2)
{
  if (a2 <= 0x11)
  {
    YAML::EmitterState::_Set<unsigned long>(*this, *this + 104, a2, 1);
  }

  return a2 < 0x12;
}

YAML::Emitter *YAML::Emitter::SetLocalValue(YAML::Emitter *this, uint64_t a2)
{
  v3 = *this;
  if (*v3 == 1)
  {
    if (a2 > 21)
    {
      if (a2 > 26)
      {
        if ((a2 - 27) < 2)
        {
          return this;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x16:
            YAML::Emitter::EmitEndSeq(this);
            return this;
          case 0x19:
            YAML::Emitter::EmitBeginMap(this);
            return this;
          case 0x1A:
            YAML::Emitter::EmitEndMap(this);
            return this;
        }
      }
    }

    else
    {
      if (a2 > 18)
      {
        if (a2 == 19)
        {
          YAML::Emitter::EmitBeginDoc(this);
        }

        else if (a2 == 20)
        {
          YAML::Emitter::EmitEndDoc(this);
        }

        else
        {
          YAML::Emitter::EmitBeginSeq(this);
        }

        return this;
      }

      if (a2 == 1)
      {
        YAML::Emitter::EmitKindTag(this);
        return this;
      }

      if (a2 == 2)
      {
        YAML::Emitter::EmitNewline(this);
        return this;
      }
    }

    YAML::EmitterState::SetLocalValue(v3, a2);
  }

  return this;
}

void YAML::Emitter::EmitBeginDoc(YAML::Emitter *this)
{
  v1 = *this;
  if (**this == 1)
  {
    v3 = *(v1 + 168);
    if (*(v1 + 160) != v3 && **(v3 - 8) || (*(v1 + 192) & 1) != 0 || *(v1 + 193) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "Unexpected begin document");
      *v1 = 0;
      std::string::operator=((v1 + 8), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (*(this + 7))
      {
        YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
      }

      YAML::ostream_wrapper::write((this + 8), "---\n", 4uLL);
      v4 = *this;
      *(v4 + 192) = 0;
      *(v4 + 194) = 0;
    }
  }
}

void sub_254D1492C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Emitter::EmitEndDoc(YAML::Emitter *this)
{
  v1 = *this;
  if (**this == 1)
  {
    v3 = *(v1 + 168);
    if (*(v1 + 160) != v3 && **(v3 - 8) || (*(v1 + 192) & 1) != 0 || *(v1 + 193) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "Unexpected begin document");
      *v1 = 0;
      std::string::operator=((v1 + 8), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (*(this + 7))
      {
        YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
      }

      YAML::ostream_wrapper::write((this + 8), "...\n", 4uLL);
    }
  }
}

void sub_254D14A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

YAML::Emitter *YAML::Emitter::EmitBeginSeq(YAML::Emitter *this)
{
  v2 = *this;
  if (**this == 1)
  {
    v3 = this;
    v4 = *(v2 + 168);
    if (*(v2 + 160) == v4 || *(*(v4 - 8) + 4) != 1)
    {
      if (*(v2 + 80) == 24)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 3;
    }

    YAML::Emitter::PrepareNode(this, v5);
    v6 = *v3;

    YAML::EmitterState::StartedGroup(v6);
  }

  return this;
}

void YAML::Emitter::EmitEndSeq(YAML::Emitter *this)
{
  v2 = *this;
  if (*v2 == 1)
  {
    v3 = *(v2 + 168);
    if (*(v2 + 160) == v3)
    {
      if (!*(v2 + 200))
      {
        __assert_rtn("ForceFlow", "emitterstate.cpp", 69, "!m_groups.empty()");
      }

      goto LABEL_20;
    }

    v4 = *(v3 - 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 4) != 1)
      {
LABEL_20:
        YAML::EmitterState::EndedGroup(v2, 1);
        return;
      }
    }

    else
    {
      *(v4 + 4) = 1;
    }

    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
      v2 = *this;
    }

    v5 = *(v2 + 184);
    if (*(this + 7) < v5)
    {
      do
      {
        __src = 32;
        YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
      }

      while (*(this + 7) < v5);
      v2 = *this;
    }

    v6 = *(v2 + 168);
    if (*(v2 + 160) == v6)
    {
      v7 = (v2 + 200);
    }

    else
    {
      v7 = (*(v6 - 8) + 16);
    }

    if (!*v7)
    {
      YAML::ostream_wrapper::write((this + 8), "[", 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), "]", 1uLL);
    v2 = *this;
    goto LABEL_20;
  }
}

YAML::Emitter *YAML::Emitter::EmitBeginMap(YAML::Emitter *this)
{
  v2 = *this;
  if (**this == 1)
  {
    v3 = this;
    v4 = *(v2 + 168);
    if (*(v2 + 160) == v4 || *(*(v4 - 8) + 4) != 1)
    {
      if (*(v2 + 84) == 24)
      {
        v5 = 6;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 5;
    }

    YAML::Emitter::PrepareNode(this, v5);
    v6 = *v3;

    YAML::EmitterState::StartedGroup(v6);
  }

  return this;
}

void YAML::Emitter::EmitEndMap(YAML::Emitter *this)
{
  v2 = *this;
  if (*v2 == 1)
  {
    v3 = *(v2 + 168);
    if (*(v2 + 160) == v3)
    {
      if (!*(v2 + 200))
      {
        __assert_rtn("ForceFlow", "emitterstate.cpp", 69, "!m_groups.empty()");
      }

      goto LABEL_20;
    }

    v4 = *(v3 - 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 4) != 1)
      {
LABEL_20:
        YAML::EmitterState::EndedGroup(v2, 2);
        return;
      }
    }

    else
    {
      *(v4 + 4) = 1;
    }

    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
      v2 = *this;
    }

    v5 = *(v2 + 184);
    if (*(this + 7) < v5)
    {
      do
      {
        __src = 32;
        YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
      }

      while (*(this + 7) < v5);
      v2 = *this;
    }

    v6 = *(v2 + 168);
    if (*(v2 + 160) == v6)
    {
      v7 = (v2 + 200);
    }

    else
    {
      v7 = (*(v6 - 8) + 16);
    }

    if (!*v7)
    {
      YAML::ostream_wrapper::write((this + 8), "{", 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), "}", 1uLL);
    v2 = *this;
    goto LABEL_20;
  }
}

void YAML::Emitter::EmitKindTag(YAML::Emitter *this)
{
  std::string::basic_string[abi:ne200100]<0>(v2, "");
  std::string::basic_string[abi:ne200100]<0>(&v7, "");
  YAML::_Tag::_Tag(&v4, &v7, v2, 1);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  YAML::Emitter::Write(this, &v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_254D14EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  siri::intelligence::TestParseError::~TestParseError(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void YAML::Emitter::EmitNewline(YAML::Emitter *this)
{
  if (**this == 1)
  {
    YAML::Emitter::PrepareNode(this, 0);
    YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    *(*this + 194) = 1;
  }
}

uint64_t *YAML::Emitter::SetLocalIndent(uint64_t *result, int *a2)
{
  v2 = *a2;
  if (v2 >= 2)
  {
    YAML::EmitterState::_Set<unsigned long>(*result, *result + 56, v2, 0);
  }

  return result;
}

uint64_t *YAML::Emitter::SetLocalPrecision(uint64_t *result, unsigned int *a2)
{
  v2 = *a2;
  if (v2 <= 9)
  {
    YAML::EmitterState::_Set<unsigned long>(*result, *result + 96, v2, 0);
  }

  v3 = a2[1];
  if (v3 <= 0x11)
  {
    YAML::EmitterState::_Set<unsigned long>(*result, *result + 104, v3, 0);
  }

  return result;
}

void YAML::Emitter::PrepareNode(YAML::Emitter *this, unsigned int a2)
{
  v2 = *(*this + 168);
  if (*(*this + 160) == v2)
  {
    YAML::Emitter::PrepareTopNode(this, a2);
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    v5 = v3[1] == 1;
    if (v3[1] == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    if (v5)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    if (v4 != 1)
    {
      v6 = v7;
    }

    if (v6 > 4)
    {
      if (v6 == 5)
      {
        YAML::Emitter::FlowMapPrepareNode(this, a2);
      }

      else
      {
        YAML::Emitter::BlockMapPrepareNode(this, a2);
      }
    }

    else if (v6 == 3)
    {
      YAML::Emitter::FlowSeqPrepareNode(this, a2);
    }

    else
    {
      YAML::Emitter::BlockSeqPrepareNode(this, a2);
    }
  }
}

void YAML::Emitter::PrepareTopNode(YAML::Emitter *this, unsigned int a2)
{
  if (a2)
  {
    v4 = *(*this + 168);
    if (*(*this + 160) == v4)
    {
      v5 = (*this + 200);
    }

    else
    {
      v5 = (*(v4 - 8) + 16);
    }

    if (*v5 && *(this + 7))
    {
      YAML::Emitter::EmitBeginDoc(this);
    }

    if (a2 <= 6)
    {
      if (((1 << a2) & 0x2E) != 0)
      {
        if (*(*this + 192))
        {
          v6 = 1;
        }

        else
        {
          v6 = *(*this + 193);
        }

        YAML::Emitter::SpaceOrIndentTo(this, v6 & 1, 0);
      }

      else if (((1 << a2) & 0x50) != 0)
      {
        v7 = *this;
        if ((*(*this + 192) & 1) != 0 || (*(v7 + 193) & 1) != 0 || *(v7 + 194) == 1)
        {

          YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
        }
      }
    }
  }
}

void YAML::Emitter::FlowSeqPrepareNode(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  if (*(*this + 168) - *(*this + 160) >= 9uLL)
  {
    v5 = *(v4 + 184) - *(*(*(*this + 168) - 16) + 8);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v5)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    v6 = *(*this + 168);
    if (*(*this + 160) == v6)
    {
      v7 = (*this + 200);
    }

    else
    {
      v7 = (*(v6 - 8) + 16);
    }

    if (*v7)
    {
      v8 = ",";
    }

    else
    {
      v8 = "[";
    }

    YAML::ostream_wrapper::write((this + 8), v8, 1uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {
      v9 = *this;
      if (*(*this + 192) & 1) != 0 || (*(v9 + 193))
      {
        v10 = 1;
      }

      else
      {
        v11 = *(v9 + 168);
        if (*(v9 + 160) == v11)
        {
          v12 = (v9 + 200);
        }

        else
        {
          v12 = (*(v11 - 8) + 16);
        }

        v10 = *v12 != 0;
      }

      YAML::Emitter::SpaceOrIndentTo(this, v10, v5);
    }

    else if (((1 << a2) & 0x50) != 0)
    {
      __assert_rtn("FlowSeqPrepareNode", "emitter.cpp", 336, "false");
    }
  }
}

void YAML::Emitter::BlockSeqPrepareNode(YAML::Emitter *this, int a2)
{
  v4 = *this;
  v6 = *(*this + 160);
  v5 = *(*this + 168);
  if (v6 == v5)
  {
    v7 = 0;
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v7 = *(*(v5 - 8) + 8);
    if (!a2)
    {
      return;
    }
  }

  v8 = *(v4 + 184);
  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0)
  {
    if (v6 == v5)
    {
      v9 = (v4 + 200);
    }

    else
    {
      v9 = (*(v5 - 8) + 16);
    }

    if (*v9 || *(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v8)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), "-", 1uLL);
  }

  if (a2 <= 3)
  {
    if ((a2 - 1) >= 3)
    {
      return;
    }

    goto LABEL_22;
  }

  if (a2 == 4)
  {
LABEL_29:
    YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    return;
  }

  if (a2 == 6)
  {
    if ((*(*this + 192) & 1) == 0 && (*(*this + 193) & 1) == 0 && *(this + 64) != 1)
    {
      return;
    }

    goto LABEL_29;
  }

  if (a2 != 5)
  {
    return;
  }

LABEL_22:
  if (*(*this + 192))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(*this + 193);
  }

  YAML::Emitter::SpaceOrIndentTo(this, v10 & 1, v7 + v8);
}

void YAML::Emitter::FlowMapPrepareNode(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  v6 = *(v4 + 160);
  v5 = *(v4 + 168);
  if (v6 == v5)
  {
    if (*(v4 + 200))
    {
LABEL_15:

      YAML::Emitter::FlowMapPrepareSimpleKeyValue(this, a2);
      return;
    }
  }

  else
  {
    v7 = *(v5 - 8);
    if (*(v7 + 16))
    {
      if (*(v7 + 24) == 1)
      {

        YAML::Emitter::FlowMapPrepareLongKeyValue(this, a2);
        return;
      }

      goto LABEL_15;
    }
  }

  if (*(v4 + 88) == 29)
  {
    YAML::EmitterState::SetLongKey(v4);
    v6 = *(*this + 160);
    v5 = *(*this + 168);
  }

  if (v6 == v5 || *(*(v5 - 8) + 24) != 1)
  {

    YAML::Emitter::FlowMapPrepareSimpleKey(this, a2);
  }

  else
  {

    YAML::Emitter::FlowMapPrepareLongKey(this, a2);
  }
}

void YAML::Emitter::BlockMapPrepareNode(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(v4 + 168);
  if (*(v4 + 160) == v5)
  {
    if (*(v4 + 200))
    {
LABEL_17:

      YAML::Emitter::BlockMapPrepareSimpleKeyValue(this, a2);
      return;
    }
  }

  else
  {
    v6 = *(v5 - 8);
    if (*(v6 + 16))
    {
      if (*(v6 + 24) == 1)
      {

        YAML::Emitter::BlockMapPrepareLongKeyValue(this, a2);
        return;
      }

      goto LABEL_17;
    }
  }

  if (*(v4 + 88) == 29)
  {
    YAML::EmitterState::SetLongKey(v4);
    v4 = *this;
  }

  if ((a2 & 0xFFFFFFFD) == 4)
  {
    YAML::EmitterState::SetLongKey(v4);
    v4 = *this;
  }

  v7 = *(v4 + 168);
  if (*(v4 + 160) == v7 || *(*(v7 - 8) + 24) != 1)
  {

    YAML::Emitter::BlockMapPrepareSimpleKey(this, a2);
  }

  else
  {

    YAML::Emitter::BlockMapPrepareLongKey(this, a2);
  }
}

void YAML::Emitter::SpaceOrIndentTo(YAML::Emitter *this, int a2, unint64_t a3)
{
  if (*(this + 64) == 1)
  {
    YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
  }

  v6 = *(this + 7);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    YAML::ostream_wrapper::write((this + 8), " ", 1uLL);
    v6 = *(this + 7);
  }

  if (v6 < a3)
  {
    do
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    while (*(this + 7) < a3);
  }
}

void YAML::Emitter::FlowMapPrepareLongKey(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  if (*(*this + 168) - *(*this + 160) >= 9uLL)
  {
    v5 = *(v4 + 184) - *(*(*(*this + 168) - 16) + 8);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v5)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    v6 = *(*this + 168);
    if (*(*this + 160) == v6)
    {
      v7 = (*this + 200);
    }

    else
    {
      v7 = (*(v6 - 8) + 16);
    }

    if (*v7)
    {
      v8 = ", ?";
    }

    else
    {
      v8 = "{ ?";
    }

    YAML::ostream_wrapper::write((this + 8), v8, 3uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {
      v9 = *this;
      if (*(*this + 192) & 1) != 0 || (*(v9 + 193))
      {
        v10 = 1;
      }

      else
      {
        v11 = *(v9 + 168);
        if (*(v9 + 160) == v11)
        {
          v12 = (v9 + 200);
        }

        else
        {
          v12 = (*(v11 - 8) + 16);
        }

        v10 = *v12 != 0;
      }

      YAML::Emitter::SpaceOrIndentTo(this, v10, v5);
    }

    else if (((1 << a2) & 0x50) != 0)
    {
      __assert_rtn("FlowMapPrepareLongKey", "emitter.cpp", 418, "false");
    }
  }
}

void YAML::Emitter::FlowMapPrepareSimpleKey(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  if (*(*this + 168) - *(*this + 160) >= 9uLL)
  {
    v5 = *(v4 + 184) - *(*(*(*this + 168) - 16) + 8);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v5)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    v6 = *(*this + 168);
    if (*(*this + 160) == v6)
    {
      v7 = (*this + 200);
    }

    else
    {
      v7 = (*(v6 - 8) + 16);
    }

    if (*v7)
    {
      v8 = ",";
    }

    else
    {
      v8 = "{";
    }

    YAML::ostream_wrapper::write((this + 8), v8, 1uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {
      v9 = *this;
      if (*(*this + 192) & 1) != 0 || (*(v9 + 193))
      {
        v10 = 1;
      }

      else
      {
        v11 = *(v9 + 168);
        if (*(v9 + 160) == v11)
        {
          v12 = (v9 + 200);
        }

        else
        {
          v12 = (*(v11 - 8) + 16);
        }

        v10 = *v12 != 0;
      }

      YAML::Emitter::SpaceOrIndentTo(this, v10, v5);
    }

    else if (((1 << a2) & 0x50) != 0)
    {
      __assert_rtn("FlowMapPrepareSimpleKey", "emitter.cpp", 477, "false");
    }
  }
}

void YAML::Emitter::FlowMapPrepareLongKeyValue(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  if (*(*this + 168) - *(*this + 160) >= 9uLL)
  {
    v5 = *(v4 + 184) - *(*(*(*this + 168) - 16) + 8);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v5)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), ":", 1uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {
      v6 = *this;
      if (*(*this + 192) & 1) != 0 || (*(v6 + 193))
      {
        v7 = 1;
      }

      else
      {
        v8 = *(v6 + 168);
        if (*(v6 + 160) == v8)
        {
          v9 = (v6 + 200);
        }

        else
        {
          v9 = (*(v8 - 8) + 16);
        }

        v7 = *v9 != 0;
      }

      YAML::Emitter::SpaceOrIndentTo(this, v7, v5);
    }

    else if (((1 << a2) & 0x50) != 0)
    {
      __assert_rtn("FlowMapPrepareLongKeyValue", "emitter.cpp", 446, "false");
    }
  }
}

void YAML::Emitter::FlowMapPrepareSimpleKeyValue(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  if (*(*this + 168) - *(*this + 160) >= 9uLL)
  {
    v5 = *(v4 + 184) - *(*(*(*this + 168) - 16) + 8);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v5)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), ":", 1uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {
      v6 = *this;
      if (*(*this + 192) & 1) != 0 || (*(v6 + 193))
      {
        v7 = 1;
      }

      else
      {
        v8 = *(v6 + 168);
        if (*(v6 + 160) == v8)
        {
          v9 = (v6 + 200);
        }

        else
        {
          v9 = (*(v8 - 8) + 16);
        }

        v7 = *v9 != 0;
      }

      YAML::Emitter::SpaceOrIndentTo(this, v7, v5);
    }

    else if (((1 << a2) & 0x50) != 0)
    {
      __assert_rtn("FlowMapPrepareSimpleKeyValue", "emitter.cpp", 505, "false");
    }
  }
}

void YAML::Emitter::BlockMapPrepareLongKey(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(*this + 168);
  if (*(*this + 160) == v5)
  {
    v6 = (v4 + 200);
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v6 = (*(v5 - 8) + 16);
    if (!a2)
    {
      return;
    }
  }

  v7 = *(v4 + 184);
  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0)
  {
    if (*v6)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    if (*(this + 64) == 1)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }

    while (*(this + 7) < v7)
    {
      __src = 32;
      YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
    }

    YAML::ostream_wrapper::write((this + 8), "?", 1uLL);
  }

  if (a2 <= 5 && ((1 << a2) & 0x2E) != 0)
  {
    YAML::Emitter::SpaceOrIndentTo(this, 1, v7 + 1);
  }
}

void YAML::Emitter::BlockMapPrepareSimpleKey(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(*this + 168);
  if (*(*this + 160) == v5)
  {
    v6 = (v4 + 200);
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v6 = (*(v5 - 8) + 16);
    if (!a2)
    {
      return;
    }
  }

  v7 = *(v4 + 184);
  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0 && *v6)
  {
    YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
  }

  if (a2 <= 5 && ((1 << a2) & 0x2E) != 0)
  {
    if (*(*this + 192))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(*this + 193);
    }

    YAML::Emitter::SpaceOrIndentTo(this, v8 & 1, v7);
  }
}

void YAML::Emitter::BlockMapPrepareLongKeyValue(YAML::Emitter *this, unsigned int a2)
{
  if (a2)
  {
    v4 = *(*this + 184);
    if ((*(*this + 192) & 1) == 0 && (*(*this + 193) & 1) == 0)
    {
      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
      while (*(this + 7) < v4)
      {
        __src = 32;
        YAML::ostream_wrapper::write((this + 8), &__src, 1uLL);
      }

      YAML::ostream_wrapper::write((this + 8), ":", 1uLL);
    }

    if (a2 <= 6)
    {
      YAML::Emitter::SpaceOrIndentTo(this, 1, v4 + 1);
    }
  }
}

void YAML::Emitter::BlockMapPrepareSimpleKeyValue(YAML::Emitter *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(*this + 168);
  if (*(*this + 160) == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(v5 - 8) + 8);
  }

  v7 = *(v4 + 184);
  if ((*(v4 + 192) & 1) == 0 && (*(v4 + 193) & 1) == 0 && (*(v4 + 194) & 1) == 0)
  {
    YAML::ostream_wrapper::write((this + 8), ":", 1uLL);
  }

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x2E) != 0)
    {

      YAML::Emitter::SpaceOrIndentTo(this, 1, v6 + v7);
    }

    else if (((1 << a2) & 0x50) != 0)
    {

      YAML::ostream_wrapper::write((this + 8), "\n", 1uLL);
    }
  }
}

void *YAML::Emitter::PrepareIntegralStream(void *result, uint64_t a2)
{
  v3 = *(*result + 52);
  switch(v3)
  {
    case 18:
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "0", 1);
      v4 = 64;
      break;
    case 17:
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "0x", 2);
      v4 = 8;
      break;
    case 16:
      v4 = 2;
      break;
    default:
      __assert_rtn("PrepareIntegralStream", "emitter.cpp", 666, "false");
  }

  v5 = a2 + 16 + *(*(a2 + 16) - 24);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFB5 | v4;
  return result;
}

void *YAML::Emitter::StartedScalar(YAML::Emitter *this)
{
  v1 = *this;
  YAML::EmitterState::StartedNode(*this);

  return YAML::SettingChanges::clear((v1 + 112));
}

uint64_t YAML::Emitter::Write(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  if (**a1 == 1)
  {
    v6 = *(v3 + 32);
    v5 = *(v3 + 36);
    v8 = *(v3 + 160);
    v7 = *(v3 + 168);
    if (v8 == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(v7 - 8) + 4);
    }

    v10 = YAML::Utils::ComputeStringFormat(a2, v5, v9, v6 == 4);
    if (v10 == 3)
    {
      YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a1, *a1 + 88, 29, 0);
    }

    v13 = v10;
    YAML::Emitter::PrepareNode(a1, 2u);
    switch(v13)
    {
      case 2:
        YAML::Utils::WriteDoubleQuotedString((a1 + 8), a2, v6 == 4);
        break;
      case 1:
        YAML::Utils::WriteSingleQuotedString((a1 + 8), a2);
        break;
      case 0:
        YAML::ostream_wrapper::write((a1 + 8), a2);
        break;
    }

    v11 = *a1;
    YAML::EmitterState::StartedNode(*a1);
    YAML::SettingChanges::clear((v11 + 112));
  }

  return a1;
}

const char *YAML::Emitter::ComputeFullBoolName(YAML::Emitter *this, int a2)
{
  v2 = *this;
  if (*(*this + 44) == 15)
  {
    v3 = *(v2 + 48);
    goto LABEL_3;
  }

  v6 = *(v2 + 40);
  v3 = *(v2 + 48);
  if (v6 == 10)
  {
    switch(v3)
    {
      case 13:
        v4 = "Off";
        v5 = "On";
        goto LABEL_13;
      case 12:
        v4 = "off";
        v5 = "on";
        goto LABEL_13;
      case 11:
        v4 = "OFF";
        v5 = "ON";
        goto LABEL_13;
    }

LABEL_10:
    v4 = "n";
    v5 = "y";
    goto LABEL_13;
  }

  if (v6 == 9)
  {
    switch(v3)
    {
      case 13:
        v4 = "False";
        v5 = "True";
        goto LABEL_13;
      case 12:
        v4 = "false";
        v5 = "true";
        goto LABEL_13;
      case 11:
        v4 = "FALSE";
        v5 = "TRUE";
        goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v6 != 8)
  {
    goto LABEL_10;
  }

LABEL_3:
  switch(v3)
  {
    case 13:
      v4 = "No";
      v5 = "Yes";
      break;
    case 12:
      v4 = "no";
      v5 = "yes";
      break;
    case 11:
      v4 = "NO";
      v5 = "YES";
      break;
    default:
      goto LABEL_10;
  }

LABEL_13:
  if (a2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

YAML::Emitter *YAML::Emitter::Write(YAML::Emitter *this, int a2)
{
  if (**this == 1)
  {
    YAML::Emitter::PrepareNode(this, 2u);
    v4 = YAML::Emitter::ComputeFullBoolName(this, a2);
    if (*(*this + 44) == 15)
    {
      LOBYTE(__p[0]) = *v4;
      YAML::ostream_wrapper::write((this + 8), __p, 1uLL);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v4);
      YAML::ostream_wrapper::write((this + 8), __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = *this;
    YAML::EmitterState::StartedNode(*this);
    YAML::SettingChanges::clear((v5 + 112));
  }

  return this;
}

void sub_254D165F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

YAML::Emitter *YAML::Emitter::Write(YAML::Emitter *this, YAML::ostream_wrapper *a2)
{
  if (**this == 1)
  {
    YAML::Emitter::PrepareNode(this, 2u);
    YAML::Utils::WriteChar((this + 8), a2);
    v4 = *this;
    YAML::EmitterState::StartedNode(*this);
    YAML::SettingChanges::clear((v4 + 112));
  }

  return this;
}

uint64_t *YAML::Emitter::Write(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (**a1 == 1)
  {
    if ((*(v3 + 192) & 1) != 0 || *(v3 + 193) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "invalid alias");
      *v3 = 0;
      std::string::operator=((v3 + 8), &__str);
    }

    else
    {
      YAML::Emitter::PrepareNode(a1, 2u);
      YAML::ostream_wrapper::write((a1 + 1), "*", 1uLL);
      v6 = *a1;
      if (v5)
      {
        YAML::EmitterState::StartedNode(*a1);
        YAML::SettingChanges::clear((v6 + 112));
        return a1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "invalid alias");
      *v6 = 0;
      std::string::operator=((v6 + 8), &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

{
  v3 = *a1;
  if (**a1 == 1)
  {
    if (*(v3 + 192) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "invalid anchor");
      *v3 = 0;
      std::string::operator=((v3 + 8), &__str);
    }

    else
    {
      YAML::Emitter::PrepareNode(a1, 1u);
      YAML::ostream_wrapper::write((a1 + 1), "&", 1uLL);
      v6 = *a1;
      if (v5)
      {
        *(v6 + 192) = 1;
        return a1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "invalid anchor");
      *v6 = 0;
      std::string::operator=((v6 + 8), &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

{
  if (**a1 == 1)
  {
    YAML::Emitter::PrepareNode(a1, 0);
    v4 = *a1;
    if (a1[7])
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        do
        {
          __src = 32;
          YAML::ostream_wrapper::write((a1 + 1), &__src, 1uLL);
          --v5;
        }

        while (v5);
        v4 = *a1;
      }
    }

    YAML::Utils::WriteComment((a1 + 1), a2, *(v4 + 72));
    *(*a1 + 194) = 1;
  }

  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(v6, "binary");
  std::string::basic_string[abi:ne200100]<0>(&v11, "");
  YAML::_Tag::_Tag(&v8, &v11, v6, 2);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  YAML::Emitter::Write(a1, &v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (**a1)
  {
    YAML::Emitter::PrepareNode(a1, 2u);
    YAML::Utils::WriteBinary((a1 + 1), a2);
    v4 = *a1;
    YAML::EmitterState::StartedNode(*a1);
    YAML::SettingChanges::clear((v4 + 112));
  }

  return a1;
}

void sub_254D1676C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D16874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

YAML::Emitter *YAML::Emitter::Write(YAML::Emitter *a1, uint64_t a2)
{
  v3 = *a1;
  if (**a1 != 1)
  {
    return a1;
  }

  if (v3[193] == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "invalid tag");
    *v3 = 0;
    std::string::operator=((v3 + 8), &__str);
    goto LABEL_12;
  }

  YAML::Emitter::PrepareNode(a1, 1u);
  v5 = *(a2 + 48);
  v6 = (a1 + 8);
  if (v5 == 1)
  {
    v7 = (a2 + 24);
    v8 = 0;
  }

  else
  {
    if (v5)
    {
      if (YAML::Utils::WriteTagWithPrefix(v6, a2, (a2 + 24)))
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v7 = (a2 + 24);
    v8 = 1;
  }

  if (YAML::Utils::WriteTag(v6, v7, v8))
  {
LABEL_9:
    *(*a1 + 193) = 1;
    return a1;
  }

LABEL_11:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__str, "invalid tag");
  *v9 = 0;
  std::string::operator=((v9 + 8), &__str);
LABEL_12:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_254D1699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *YAML::Emitter::Write(uint64_t *a1)
{
  if (**a1 == 1)
  {
    YAML::Emitter::PrepareNode(a1, 2u);
    YAML::ostream_wrapper::write((a1 + 1), "~", 1uLL);
    v2 = *a1;
    YAML::EmitterState::StartedNode(*a1);
    YAML::SettingChanges::clear((v2 + 112));
  }

  return a1;
}

void sub_254D16BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  siri::intelligence::TestParseError::~TestParseError(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *YAML::_Tag::_Tag(std::string *this, __int128 *a2, __int128 *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  return this;
}

void sub_254D16C84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Saver::SaveFile(google::protobuf::MessageLite **a1, std::string *a2, int a3)
{
  if (a3 == 2)
  {
    v6 = *a1;
    siri::intelligence::YamlIO::ToFile();
  }

  if (a3 == 1)
  {
    if (siri::intelligence::ProtobufIO::ToFile(*a1, a2))
    {
      return 1;
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Failed to write to binary file: %s", v4, v5);
  }

  else
  {
    siri::intelligence::Log::Error("Unsupported destination format specified during conversion", a2);
  }

  return 0;
}

uint64_t siri::intelligence::Saver::SaveFile(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v7[0] = *a1;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  FormatForFilename = siri::intelligence::GetFormatForFilename(a2);
  v5 = siri::intelligence::Saver::SaveFile(v7, a2, FormatForFilename);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_254D16DBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::ConditionEntry::ConditionEntry(siri::intelligence::ConditionEntry *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

siri::intelligence::ConditionEntry *siri::intelligence::ConditionEntry::ConditionEntry(siri::intelligence::ConditionEntry *this, const protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  *this = 0;
  *(this + 24) = 0u;
  v4 = (this + 24);
  v5 = this + 64;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v6 = *(a2 + 8);
  if (v6)
  {
    *this = 2;
    if (v6 >= 1)
    {
      v7 = 0;
      do
      {
        v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(a2 + 24, v7);
        siri::intelligence::ConditionEntry::ConditionEntry(__p, v8);
        std::vector<siri::intelligence::ConditionEntry>::push_back[abi:ne200100](v5, __p);
        siri::intelligence::ConditionEntry::~ConditionEntry(__p);
        ++v7;
      }

      while (v7 < *(a2 + 8));
    }
  }

  else
  {
    v9 = *(a2 + 14);
    if (v9)
    {
      *this = 3;
      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(a2 + 48, v10);
          siri::intelligence::ConditionEntry::ConditionEntry(__p, v11);
          std::vector<siri::intelligence::ConditionEntry>::push_back[abi:ne200100](v5, __p);
          siri::intelligence::ConditionEntry::~ConditionEntry(__p);
          ++v10;
        }

        while (v10 < *(a2 + 14));
      }
    }

    else
    {
      v12 = *(a2 + 4);
      if ((v12 & 8) != 0)
      {
        v21 = *(a2 + 12);
        if (!v21)
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
          v22 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || not_child_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          v21 = *(a2 + 12);
        }

        *this = 4;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
        }

        siri::intelligence::ConditionEntry::ConditionEntry(__p, v23);
        std::vector<siri::intelligence::ConditionEntry>::push_back[abi:ne200100](v5, __p);
        siri::intelligence::ConditionEntry::~ConditionEntry(__p);
      }

      else
      {
        *this = 1;
        if ((v12 & 0x10) != 0)
        {
          if (!*(a2 + 13))
          {
            google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
            v13 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || left_ != nullptr: ");
            google::protobuf::internal::LogFinisher::operator=(&v27, &v13->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "");
          if (*(a2 + 13))
          {
            v14 = *(a2 + 13);
          }

          else
          {
            v14 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
          }

          siri::intelligence::Variable::FromProtobuf(v14, &v25);
          v15 = v25;
          v25 = 0uLL;
          v16 = *(this + 2);
          *(this + 8) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            if (*(&v25 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        std::string::operator=(v4, *(a2 + 10));
        if ((*(a2 + 4) & 0x20) != 0)
        {
          if (!*(a2 + 14))
          {
            google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
            v17 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || right_ != nullptr: ");
            google::protobuf::internal::LogFinisher::operator=(&v27, &v17->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "");
          if (*(a2 + 14))
          {
            v18 = *(a2 + 14);
          }

          else
          {
            v18 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
          }

          siri::intelligence::Variable::FromProtobuf(v18, &v25);
          v19 = v25;
          v25 = 0uLL;
          v20 = *(this + 7);
          *(this + 3) = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            if (*(&v25 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  return this;
}

void sub_254D17128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  google::protobuf::internal::LogMessage::~LogMessage(&__p);
  std::vector<siri::intelligence::ConditionEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  v19 = *(v16 + 56);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (*(v16 + 47) < 0)
  {
    operator delete(*v17);
  }

  v20 = *(v16 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::ConditionEntry>::push_back[abi:ne200100](uint64_t a1, const siri::intelligence::ConditionEntry *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if ((v7 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<siri::intelligence::ConditionEntry>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1745D1745D1745DLL)
    {
      v10 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ConditionEntry>>(v10);
    }

    v19 = 0;
    v20 = 88 * v7;
    v22 = 0;
    siri::intelligence::ConditionEntry::ConditionEntry((88 * v7), a2);
    v6 = 88 * v7 + 88;
    v21 = v6;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *a1 - v12;
    v14 = v20 + v13;
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = *a1;
      v17 = (v20 + v13);
      do
      {
        siri::intelligence::ConditionEntry::ConditionEntry(v17, v16);
        v16 = (v16 + 88);
        v17 = (v17 + 88);
        v15 -= 88;
      }

      while (v16 != v12);
      do
      {
        siri::intelligence::ConditionEntry::~ConditionEntry(v11);
        v11 = (v11 + 88);
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    *(a1 + 8) = v6;
    v18 = *(a1 + 16);
    *(a1 + 16) = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = std::__split_buffer<siri::intelligence::ConditionEntry>::~__split_buffer(&v19);
  }

  else
  {
    result = siri::intelligence::ConditionEntry::ConditionEntry(*(a1 + 8), a2);
    v6 = v4 + 88;
    *(a1 + 8) = v6;
  }

  *(a1 + 8) = v6;
  return result;
}

void sub_254D17368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<siri::intelligence::ConditionEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ConditionEntry::GetLeft@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::ConditionEntry::SetLeft(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void siri::intelligence::ConditionEntry::GetOperator(siri::intelligence::ConditionEntry *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

uint64_t siri::intelligence::ConditionEntry::GetRight@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::ConditionEntry::SetRight(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t siri::intelligence::ConditionEntry::GetChildren@<X0>(siri::intelligence::ConditionEntry *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::ConditionEntry>::__init_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(a2, *(this + 8), *(this + 9), 0x2E8BA2E8BA2E8BA3 * ((*(this + 9) - *(this + 8)) >> 3));
}

void siri::intelligence::ConditionEntry::SetChildren(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  if (v2 != a2)
  {
    std::vector<siri::intelligence::ConditionEntry>::__assign_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(v2, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
  }
}

void siri::intelligence::ConditionEntry::Validate(const void **a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_10))
  {
    std::string::basic_string[abi:ne200100]<0>(&v48, "set");
    std::string::basic_string[abi:ne200100]<0>(v49, "true");
    std::string::basic_string[abi:ne200100]<0>(v50, "unset");
    std::string::basic_string[abi:ne200100]<0>(v51, "false");
    std::set<std::string>::set[abi:ne200100](&qword_280AF43F0, &v48.__r_.__value_.__l.__data_, 4);
    for (i = 0; i != -96; i -= 24)
    {
      if (v51[i + 23] < 0)
      {
        operator delete(*&v51[i]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF43F0, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_10);
  }

  if ((atomic_load_explicit(&qword_280AF43E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF43E8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v48, "==");
    std::string::basic_string[abi:ne200100]<0>(v49, "eq");
    std::string::basic_string[abi:ne200100]<0>(v50, "!=");
    std::string::basic_string[abi:ne200100]<0>(v51, "ne");
    std::string::basic_string[abi:ne200100]<0>(v52, "<");
    std::string::basic_string[abi:ne200100]<0>(v53, "lt");
    std::string::basic_string[abi:ne200100]<0>(v54, "<=");
    std::string::basic_string[abi:ne200100]<0>(v55, "le");
    std::string::basic_string[abi:ne200100]<0>(v56, ">");
    std::string::basic_string[abi:ne200100]<0>(v57, "gt");
    std::string::basic_string[abi:ne200100]<0>(v58, ">=");
    std::string::basic_string[abi:ne200100]<0>(v59, "ge");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4408, &v48.__r_.__value_.__l.__data_, 12);
    v45 = 288;
    do
    {
      if (v48.__r_.__value_.__s.__data_[v45 - 1] < 0)
      {
        operator delete(*(&__p.__r_.__value_.__l.__data_ + v45));
      }

      v45 -= 24;
    }

    while (v45);
    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4408, &dword_254C81000);
    __cxa_guard_release(&qword_280AF43E8);
  }

  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    if (*(a2 + 112))
    {
      if ((v4 & 2) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(&v48, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
      v11 = google::protobuf::internal::LogMessage::operator<<(&v48, "CHECK failed: !value || right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&__p, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v48.__r_.__value_.__l.__data_);
      v4 = *(a2 + 16);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if (*(a1 + 23) >= 0)
        {
          v5 = *(a1 + 23);
        }

        else
        {
          v5 = a1[1];
        }

        v6 = &v48;
        v7 = std::string::basic_string[abi:ne200100](&v48, v5 + 46);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = v48.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          if (*(a1 + 23) >= 0)
          {
            v8 = a1;
          }

          else
          {
            v8 = *a1;
          }

          v7 = memmove(v6, v8, v5);
        }

        strcpy(v6 + v5, "does not define an operator for the expression");
        v9 = *(a2 + 8);
        if (v9)
        {
          v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v7);
          v10 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        siri::intelligence::GetLineNumFromUnknownField(v10, &__p, -1);
      }
    }
  }

  if ((v4 & 2) != 0)
  {
    if ((v4 & 0x20) != 0)
    {
      if (!*(a2 + 112))
      {
        google::protobuf::internal::LogMessage::LogMessage(&v48, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
        v22 = google::protobuf::internal::LogMessage::operator<<(&v48, "CHECK failed: !value || right_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&__p, &v22->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v48.__r_.__value_.__l.__data_);
      }
    }

    else if (std::__tree<std::string>::find<std::string>(&qword_280AF43F0, *(a2 + 80)) == &unk_280AF43F8)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = a1[1];
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, v12 + 39);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v12)
      {
        if (*(a1 + 23) >= 0)
        {
          v14 = a1;
        }

        else
        {
          v14 = *a1;
        }

        memmove(p_p, v14, v12);
      }

      strcpy(p_p + v12, "defines an unsupported unary operator: ");
      v15 = *(a2 + 80);
      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = *(v15 + 23);
      }

      else
      {
        v18 = *(v15 + 8);
      }

      v19 = std::string::append(&__p, v17, v18);
      v48 = *v19;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v20 = *(a2 + 8);
      if (v20)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v19);
        v21 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(v46, "");
      siri::intelligence::GetLineNumFromUnknownField(v21, v46, -1);
    }

    if ((*(a2 + 16) & 0x20) != 0)
    {
      if (!*(a2 + 112))
      {
        google::protobuf::internal::LogMessage::LogMessage(&v48, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
        v23 = google::protobuf::internal::LogMessage::operator<<(&v48, "CHECK failed: !value || right_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&__p, &v23->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v48.__r_.__value_.__l.__data_);
      }

      if (std::__tree<std::string>::find<std::string>(&qword_280AF4408, *(a2 + 80)) == &unk_280AF4410)
      {
        if (*(a1 + 23) >= 0)
        {
          v24 = *(a1 + 23);
        }

        else
        {
          v24 = a1[1];
        }

        v25 = &__p;
        std::string::basic_string[abi:ne200100](&__p, v24 + 40);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        if (v24)
        {
          if (*(a1 + 23) >= 0)
          {
            v26 = a1;
          }

          else
          {
            v26 = *a1;
          }

          memmove(v25, v26, v24);
        }

        strcpy(v25 + v24, "defines an unsupported binary operator: ");
        v27 = *(a2 + 80);
        v28 = *(v27 + 23);
        if (v28 >= 0)
        {
          v29 = *(a2 + 80);
        }

        else
        {
          v29 = *v27;
        }

        if (v28 >= 0)
        {
          v30 = *(v27 + 23);
        }

        else
        {
          v30 = *(v27 + 8);
        }

        v31 = std::string::append(&__p, v29, v30);
        v48 = *v31;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v32 = *(a2 + 8);
        if (v32)
        {
          v33 = (v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v31);
          v33 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(v46, "");
        siri::intelligence::GetLineNumFromUnknownField(v33, v46, -1);
      }
    }
  }

  v34 = *(a2 + 16);
  if ((v34 & 0x10) != 0)
  {
    if (*(a2 + 104))
    {
      goto LABEL_87;
    }

    google::protobuf::internal::LogMessage::LogMessage(&v48, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
    v41 = google::protobuf::internal::LogMessage::operator<<(&v48, "CHECK failed: !value || left_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&__p, &v41->__r_.__value_.__l.__data_);
LABEL_85:
    google::protobuf::internal::LogMessage::~LogMessage(&v48.__r_.__value_.__l.__data_);
    goto LABEL_87;
  }

  if (!(*(a2 + 32) | *(a2 + 56)))
  {
    if ((v34 & 8) == 0)
    {
      if (*(a1 + 23) >= 0)
      {
        v35 = *(a1 + 23);
      }

      else
      {
        v35 = a1[1];
      }

      v36 = &v48;
      v37 = std::string::basic_string[abi:ne200100](&v48, v35 + 23);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v48.__r_.__value_.__r.__words[0];
      }

      if (v35)
      {
        if (*(a1 + 23) >= 0)
        {
          v38 = a1;
        }

        else
        {
          v38 = *a1;
        }

        v37 = memmove(v36, v38, v35);
      }

      strcpy(v36 + v35, "has an empty expression");
      v39 = *(a2 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v37);
        v40 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      siri::intelligence::GetLineNumFromUnknownField(v40, &__p, -1);
    }

    if (!*(a2 + 96))
    {
      google::protobuf::internal::LogMessage::LogMessage(&v48, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v43 = google::protobuf::internal::LogMessage::operator<<(&v48, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&__p, &v43->__r_.__value_.__l.__data_);
      goto LABEL_85;
    }
  }

LABEL_87:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_254D17DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = (v26 + 287);
  v29 = -288;
  v30 = (v26 + 287);
  while (1)
  {
    v31 = *v30;
    v30 -= 24;
    if (v31 < 0)
    {
      operator delete(*(v28 - 23));
    }

    v28 = v30;
    v29 += 24;
    if (!v29)
    {
      __cxa_guard_abort(&qword_280AF43E8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t siri::intelligence::ResolvedCondition::ResolvedCondition(uint64_t a1, const std::string *a2, uint64_t a3, const char *a4)
{
  *(a1 + 56) = 0;
  v7 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v47 = (a1 + 56);
  std::string::operator=(a1, a2);
  v8 = *a3;
  if (*a3 > 2)
  {
    if (v8 == 3)
    {
      v9 = "OR";
      goto LABEL_23;
    }

    if (v8 == 4)
    {
      v9 = "NOT";
      goto LABEL_23;
    }

LABEL_8:
    v9 = "<unknown>";
    goto LABEL_23;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      v9 = "AND";
LABEL_23:
      MEMORY[0x259C299D0](a1 + 24, v9);
      goto LABEL_24;
    }

    goto LABEL_8;
  }

  MEMORY[0x259C299D0](a1 + 24, "");
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    (*(*v10 + 64))(&__p);
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

    std::string::append((a1 + 24), p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      __p = *(a3 + 24);
    }

    v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = __p.__r_.__value_.__l.__size_;
    }

    if (v36)
    {
      std::operator+<char>();
      if (v56 >= 0)
      {
        v37 = &v55;
      }

      else
      {
        v37 = v55;
      }

      if (v56 >= 0)
      {
        v38 = HIBYTE(v56);
      }

      else
      {
        v38 = *(&v55 + 1);
      }

      std::string::append((a1 + 24), v37, v38);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      v39 = *(a3 + 48);
      v40 = *(a3 + 56);
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v39)
      {
        (*(*v39 + 64))(&v54);
        v41 = std::string::insert(&v54, 0, " ");
        v42 = *&v41->__r_.__value_.__l.__data_;
        v56 = v41->__r_.__value_.__r.__words[2];
        v55 = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        if (v56 >= 0)
        {
          v43 = &v55;
        }

        else
        {
          v43 = v55;
        }

        if (v56 >= 0)
        {
          v44 = HIBYTE(v56);
        }

        else
        {
          v44 = *(&v55 + 1);
        }

        std::string::append((a1 + 24), v43, v44);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_24:
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  *(a1 + 48) = siri::intelligence::ConditionEntry::Evaluate(a3, a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v55 = 0uLL;
  v56 = 0;
  std::vector<siri::intelligence::ConditionEntry>::__init_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(&v55, *(a3 + 64), *(a3 + 72), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 72) - *(a3 + 64)) >> 3));
  v15 = *(&v55 + 1);
  v14 = v55;
  if (v55 != *(&v55 + 1))
  {
    v45 = *(&v55 + 1);
    v46 = a4;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v54, "");
      siri::intelligence::ResolvedCondition::ResolvedCondition(&__p, &v54, v14, a4);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      if (v16 >= v17)
      {
        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v7) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x333333333333333)
        {
          std::vector<siri::intelligence::ConditionEntry>::__throw_length_error[abi:ne200100]();
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *v7) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x199999999999999)
        {
          v24 = 0x333333333333333;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResolvedCondition>>(v7, v24);
        }

        v25 = 80 * v21;
        v26 = *&__p.__r_.__value_.__l.__data_;
        *(v25 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v25 = v26;
        memset(&__p, 0, sizeof(__p));
        v27 = v49;
        *(v25 + 40) = v50;
        *(v25 + 24) = v27;
        v50 = 0;
        v49 = 0uLL;
        *(v25 + 48) = v51;
        *(v25 + 64) = 0;
        *(v25 + 72) = 0;
        *(v25 + 56) = 0;
        *(v25 + 56) = v52;
        *(v25 + 72) = v53;
        v53 = 0;
        v52 = 0uLL;
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        v30 = (v25 + v28 - v29);
        if (v28 == v29)
        {
          v7 = v47;
        }

        else
        {
          v31 = *(a1 + 56);
          v32 = (v25 + v28 - v29);
          do
          {
            v33 = *v31;
            *(v32 + 2) = *(v31 + 2);
            *v32 = v33;
            *(v31 + 1) = 0;
            *(v31 + 2) = 0;
            *v31 = 0;
            v34 = *(v31 + 24);
            *(v32 + 5) = *(v31 + 5);
            *(v32 + 24) = v34;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            *(v31 + 3) = 0;
            v32[48] = v31[48];
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 7) = 0;
            *(v32 + 56) = *(v31 + 56);
            *(v32 + 9) = *(v31 + 9);
            *(v31 + 7) = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            v31 += 80;
            v32 += 80;
          }

          while (v31 != v29);
          do
          {
            std::allocator_traits<std::allocator<siri::intelligence::ResolvedCondition>>::destroy[abi:ne200100]<siri::intelligence::ResolvedCondition,0>(v28);
            v28 += 80;
          }

          while (v28 != v29);
          v7 = v47;
          v28 = *v47;
        }

        v20 = v25 + 80;
        *(a1 + 56) = v30;
        *(a1 + 64) = v20;
        *(a1 + 72) = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v15 = v45;
        a4 = v46;
      }

      else
      {
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v16 = v18;
        memset(&__p, 0, sizeof(__p));
        v19 = v50;
        *(v16 + 24) = v49;
        *(v16 + 40) = v19;
        v50 = 0;
        v49 = 0uLL;
        *(v16 + 48) = v51;
        *(v16 + 56) = 0;
        *(v16 + 64) = 0;
        *(v16 + 72) = 0;
        *(v16 + 56) = v52;
        *(v16 + 72) = v53;
        v52 = 0uLL;
        v53 = 0;
        v20 = v16 + 80;
      }

      *(a1 + 64) = v20;
      v57 = &v52;
      std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&v57);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      v14 += 88;
    }

    while (v14 != v15);
  }

  __p.__r_.__value_.__r.__words[0] = &v55;
  std::vector<siri::intelligence::ConditionEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
  return a1;
}

void sub_254D18584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  a13 = a12;
  std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (*(v32 + 47) < 0)
  {
    operator delete(*(v32 + 24));
  }

  if (*(v32 + 23) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ConditionEntry::Evaluate(uint64_t a1, const char *a2, uint64_t *a3)
{
  for (i = 0; ; i ^= 1u)
  {
    v7 = *a1;
    if (*a1 != 4)
    {
      break;
    }

    if (*(a1 + 64) == *(a1 + 72))
    {
      goto LABEL_21;
    }

    a1 = *(a1 + 64);
  }

  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      if (v12 != v13)
      {
        do
        {
          v11 = siri::intelligence::ConditionEntry::Evaluate(v12, a2, a3);
          if (v11)
          {
            break;
          }

          v12 += 88;
        }

        while (v12 != v13);
        return (i ^ v11) & 1;
      }

LABEL_21:
      v11 = 0;
      return (i ^ v11) & 1;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    if (v9 != v10)
    {
      do
      {
        v11 = siri::intelligence::ConditionEntry::Evaluate(v9, a2, a3);
        if (!v11)
        {
          break;
        }

        v9 += 88;
      }

      while (v9 != v10);
      return (i ^ v11) & 1;
    }

LABEL_16:
    v11 = 1;
    return (i ^ v11) & 1;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    goto LABEL_21;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    (*(*v8 + 88))(&v66);
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(*v14 + 88))(&v64);
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v16 = v66;
  v15 = v67;
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v64;
  v17 = v65;
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v16)
  {
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (!v18)
    {
      siri::intelligence::Log::Error("Condition '%s' has no left operand", a2, v19);
      v11 = 1;
      goto LABEL_99;
    }

    v20 = "Condition expression '%s' has right operand but no left operand";
    goto LABEL_65;
  }

  if (!v18)
  {
    goto LABEL_67;
  }

  if (*(v16 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v16[4], v16[5]);
  }

  else
  {
    v72 = *(v16 + 4);
  }

  if (*(v18 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v18[4], v18[5]);
  }

  else
  {
    v71 = *(v18 + 4);
  }

  v21 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v72.__r_.__value_.__l.__size_;
  }

  v23 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  v24 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v71.__r_.__value_.__l.__size_;
  }

  if (size != v23)
  {
    v27 = 1;
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v72;
  }

  else
  {
    v25 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v71;
  }

  else
  {
    v26 = v71.__r_.__value_.__r.__words[0];
  }

  v27 = memcmp(v25, v26, size) != 0;
  if (v24 < 0)
  {
LABEL_58:
    operator delete(v71.__r_.__value_.__l.__data_);
    v21 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

LABEL_59:
  if (v21 < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
    if (v27)
    {
      goto LABEL_61;
    }

LABEL_67:
    v28 = *(a1 + 47);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a1 + 32);
    }

    if (!v28)
    {
      v11 = (*(*v16 + 5))(v16) ^ 1;
      goto LABEL_99;
    }

    if (*(v16 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, v16[4], v16[5]);
    }

    else
    {
      v72 = *(v16 + 4);
    }

    v29 = (a1 + 24);
    v30 = strlen(siri::intelligence::TYPE_NUMBER[0]);
    v31 = v30;
    v32 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v30 != v72.__r_.__value_.__l.__size_)
      {
        goto LABEL_82;
      }

      if (v30 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v33 = v72.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v30 != SHIBYTE(v72.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_82;
      }

      v33 = &v72;
    }

    if (memcmp(v33, siri::intelligence::TYPE_NUMBER[0], v31))
    {
LABEL_82:
      v34 = strlen(siri::intelligence::TYPE_BOOLEAN[0]);
      v35 = v34;
      if ((v32 & 0x80000000) != 0)
      {
        if (v34 != v72.__r_.__value_.__l.__size_)
        {
          goto LABEL_89;
        }

        if (v34 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v36 = v72.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v34 != v32)
        {
          goto LABEL_89;
        }

        v36 = &v72;
      }

      if (memcmp(v36, siri::intelligence::TYPE_BOOLEAN[0], v35))
      {
LABEL_89:
        v37 = strlen(siri::intelligence::TYPE_STRING[0]);
        v38 = v37;
        if ((v32 & 0x80000000) != 0)
        {
          if (v37 == v72.__r_.__value_.__l.__size_)
          {
            if (v37 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v39 = v72.__r_.__value_.__r.__words[0];
LABEL_95:
            if (memcmp(v39, siri::intelligence::TYPE_STRING[0], v38))
            {
              goto LABEL_96;
            }

            std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableString,siri::intelligence::Variable>(&v70, v16, v15);
            if (*(v70.__r_.__value_.__r.__words[0] + 95) < 0)
            {
              std::string::__init_copy_ctor_external(&v71, *(v70.__r_.__value_.__r.__words[0] + 72), *(v70.__r_.__value_.__r.__words[0] + 80));
            }

            else
            {
              v71 = *(v70.__r_.__value_.__r.__words[0] + 72);
            }

            if (v70.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v70.__r_.__value_.__l.__size_);
            }

            if (v18)
            {
              std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableString,siri::intelligence::Variable>(&v68, v18, v17);
              if (*(v68 + 95) < 0)
              {
                std::string::__init_copy_ctor_external(&v70, *(v68 + 72), *(v68 + 80));
              }

              else
              {
                v70 = *(v68 + 72);
              }

              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v69);
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v70, "");
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "==") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "eq"))
            {
              v11 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, &v70);
LABEL_165:
              if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v70.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }

              goto LABEL_97;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "!=") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "ne"))
            {
              v11 = !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, &v70);
              goto LABEL_165;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "<") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "lt"))
            {
              v55 = &v71;
              v56 = &v70;
LABEL_183:
              v11 = std::string::compare[abi:ne200100](&v55->__r_.__value_.__l.__data_, v56) >> 31;
              goto LABEL_165;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "<=") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "le"))
            {
              v57 = &v70;
              v58 = &v71;
            }

            else
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), ">") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "gt"))
              {
                v55 = &v70;
                v56 = &v71;
                goto LABEL_183;
              }

              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), ">=") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "ge"))
              {
                if (*(a1 + 47) >= 0)
                {
                  v63 = a1 + 24;
                }

                else
                {
                  v63 = *(a1 + 24);
                }

                siri::intelligence::Log::Error("Unsupported numeric operator found in condition: %s", v62, v63);
                v11 = 0;
                goto LABEL_165;
              }

              v57 = &v71;
              v58 = &v70;
            }

            v11 = std::string::compare[abi:ne200100](&v57->__r_.__value_.__l.__data_, v58) >= 0;
            goto LABEL_165;
          }
        }

        else if (v37 == v32)
        {
          v39 = &v72;
          goto LABEL_95;
        }

LABEL_96:
        v11 = 0;
        goto LABEL_97;
      }

      v44 = **v16;
      if (v15 && v45)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v45[66];
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v11 = v45[66];
      }

      if (v18)
      {
        std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableBoolean,siri::intelligence::Variable>(&v71, v18, v17);
        LODWORD(v18) = *(v71.__r_.__value_.__r.__words[0] + 66);
        if (v71.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71.__r_.__value_.__l.__size_);
        }
      }

      v49 = *(a1 + 47);
      if (v49 < 0)
      {
        if (*(a1 + 32) != 2)
        {
LABEL_144:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "eq"))
          {
            goto LABEL_145;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "!=") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "ne"))
          {
            v11 ^= v18;
          }

          else if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "set") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "true"))
          {
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "unset") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "false"))
            {
              if (*(a1 + 47) >= 0)
              {
                v59 = a1 + 24;
              }

              else
              {
                v59 = *(a1 + 24);
              }

              siri::intelligence::Log::Error("Unsupported BOOLean operator found in condition: %s", v54, v59);
              goto LABEL_96;
            }

            v11 ^= 1u;
          }

LABEL_97:
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          goto LABEL_99;
        }

        v50 = *v29;
      }

      else
      {
        v50 = (a1 + 24);
        if (v49 != 2)
        {
          goto LABEL_144;
        }
      }

      if (*v50 == 15677)
      {
LABEL_145:
        v11 ^= v18 ^ 1;
        goto LABEL_97;
      }

      goto LABEL_144;
    }

    v41 = **v16;
    if (v15 && v42)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = v42[9];
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v43 = v42[9];
    }

    if (v18)
    {
      v46 = **v18;
      if (v17 && v47)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = v47[9];
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      else
      {
        v48 = v47[9];
      }
    }

    else
    {
      v48 = 0.0;
    }

    v51 = *(a1 + 47);
    if (v51 < 0)
    {
      if (*(a1 + 32) == 2)
      {
        v53 = *v29;
        v52 = **v29;
        goto LABEL_135;
      }
    }

    else if (v51 == 2)
    {
      v52 = *v29;
      v53 = (a1 + 24);
LABEL_135:
      if (v52 == 15677 || *v53 == 29029)
      {
        v11 = v43 == v48;
        goto LABEL_97;
      }
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "!=") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "ne"))
    {
      v11 = v43 != v48;
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "<") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "lt"))
    {
      v11 = v43 < v48;
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "<=") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "le"))
    {
      v11 = v43 <= v48;
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), ">") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "gt"))
    {
      v11 = v43 > v48;
    }

    else
    {
      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), ">=") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), "ge"))
      {
        if (*(a1 + 47) >= 0)
        {
          v61 = a1 + 24;
        }

        else
        {
          v61 = *(a1 + 24);
        }

        siri::intelligence::Log::Error("Unsupported numeric operator found in condition: %s", v60, v61);
        goto LABEL_96;
      }

      v11 = v43 >= v48;
    }

    goto LABEL_97;
  }

  if (!v27)
  {
    goto LABEL_67;
  }

LABEL_61:
  if (*(a3 + 23) >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  v20 = "Variable type mismatch in condition '%s'";
LABEL_65:
  siri::intelligence::Log::Error(v20, a2, v19);
  v11 = 0;
LABEL_99:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  return (i ^ v11) & 1;
}

void sub_254D191CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a36 < 0)
  {
    operator delete(a31);
    if (!v37)
    {
LABEL_7:
      if (!v36)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v37)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (!v36)
  {
LABEL_9:
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  goto LABEL_9;
}

void siri::intelligence::ResolvedCondition::GetId(siri::intelligence::ResolvedCondition *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void siri::intelligence::ResolvedCondition::GetExpression(siri::intelligence::ResolvedCondition *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

uint64_t siri::intelligence::ResolvedCondition::GetChildren@<X0>(siri::intelligence::ResolvedCondition *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::ResolvedCondition>::__init_with_size[abi:ne200100]<siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*>(a2, *(this + 7), *(this + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 8) - *(this + 7)) >> 4));
}

double siri::intelligence::Condition::Condition(siri::intelligence::Condition *this)
{
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  return result;
}

void siri::intelligence::Condition::GetId(siri::intelligence::Condition *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

std::string *siri::intelligence::ConditionEntry::ConditionEntry(std::string *this, const siri::intelligence::ConditionEntry *a2)
{
  LODWORD(this->__r_.__value_.__l.__data_) = *a2;
  v4 = *(a2 + 2);
  this->__r_.__value_.__l.__size_ = *(a2 + 1);
  this->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 7);
  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  this[2].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  std::vector<siri::intelligence::ConditionEntry>::__init_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(&this[2].__r_.__value_.__r.__words[2], *(a2 + 8), *(a2 + 9), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  return this;
}

void sub_254D19458(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Condition::SetRootCondition(siri::intelligence::Condition *this, const std::string *a2)
{
  *(this + 6) = a2->__r_.__value_.__l.__data_;
  v4 = (this + 24);
  size = a2->__r_.__value_.__l.__size_;
  v5 = a2->__r_.__value_.__r.__words[2];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 5);
  *(this + 4) = size;
  *(this + 5) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::string::operator=(this + 2, a2 + 1);
  data = a2[2].__r_.__value_.__l.__data_;
  v8 = a2[2].__r_.__value_.__l.__size_;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 10);
  *(this + 9) = data;
  *(this + 10) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v4 != a2)
  {
    v11 = a2[2].__r_.__value_.__r.__words[2];
    v12 = a2[3].__r_.__value_.__l.__data_;

    std::vector<siri::intelligence::ConditionEntry>::__assign_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(this + 88, v11, v12, 0x2E8BA2E8BA2E8BA3 * ((v12 - v11) >> 3));
  }
}

void siri::intelligence::ConditionEntry::~ConditionEntry(siri::intelligence::ConditionEntry *this)
{
  v4 = (this + 64);
  std::vector<siri::intelligence::ConditionEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableBoolean,siri::intelligence::Variable>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableString,siri::intelligence::Variable>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::string::compare[abi:ne200100](const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void std::vector<siri::intelligence::ConditionEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        siri::intelligence::ConditionEntry::~ConditionEntry((v4 - 88));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ConditionEntry>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<siri::intelligence::ConditionEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    siri::intelligence::ConditionEntry::~ConditionEntry((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<siri::intelligence::ConditionEntry>::__init_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::ConditionEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D19998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::ConditionEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ConditionEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ConditionEntry>>(a2);
  }

  std::vector<siri::intelligence::ConditionEntry>::__throw_length_error[abi:ne200100]();
}

siri::intelligence::ConditionEntry *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ConditionEntry>,siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(siri::intelligence::ConditionEntry *a1, siri::intelligence::ConditionEntry *a2, siri::intelligence::ConditionEntry *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      siri::intelligence::ConditionEntry::ConditionEntry(this, v5);
      v5 = (v5 + 88);
      this = (this + 88);
      v6 -= 88;
    }

    while (v5 != a2);
  }

  return this;
}

void sub_254D19A6C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 88);
    do
    {
      siri::intelligence::ConditionEntry::~ConditionEntry(v4);
      v4 = (v5 - 88);
      v2 += 88;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<siri::intelligence::ConditionEntry>::__assign_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(uint64_t a1, void *a2, siri::intelligence::ConditionEntry *a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = *(a1 + 8);
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          siri::intelligence::ConditionEntry::~ConditionEntry((v10 - 88));
        }

        while (v10 != v9);
        v11 = *a1;
      }

      *(a1 + 8) = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1745D1745D1745DLL)
      {
        v14 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v14 = v13;
      }

      std::vector<siri::intelligence::ConditionEntry>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<siri::intelligence::ConditionEntry>::__throw_length_error[abi:ne200100]();
  }

  v15 = *(a1 + 8) - v9;
  if (0x2E8BA2E8BA2E8BA3 * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *>(a2, a3, v9);
      ;
    }

    *(a1 + 8) = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *>(a2, (a2 + v15), v9);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ConditionEntry>,siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>((a2 + v15), a3, *(a1 + 8));
  }
}

std::string::value_type *std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *,siri::intelligence::ConditionEntry *>(void *a1, void *a2, std::string::value_type *a3)
{
  if (a1 != a2)
  {
    v4 = a1 + 8;
    do
    {
      v5 = a3;
      v6 = v4 - 8;
      *a3 = *(v4 - 16);
      v8 = *(v4 - 7);
      v7 = *(v4 - 6);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(a3 + 2);
      *(a3 + 1) = v8;
      *(a3 + 2) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      std::string::operator=(v5 + 1, (v4 - 5));
      v11 = *(v4 - 2);
      v10 = *(v4 - 1);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      size = v5[2].__r_.__value_.__l.__size_;
      v5[2].__r_.__value_.__r.__words[0] = v11;
      v5[2].__r_.__value_.__l.__size_ = v10;
      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }

      if (&v5[1] != (v4 - 5))
      {
        v13 = *v4;
        v14 = v4[1];
        std::vector<siri::intelligence::ConditionEntry>::__assign_with_size[abi:ne200100]<siri::intelligence::ConditionEntry*,siri::intelligence::ConditionEntry*>(&v5[2].__r_.__value_.__r.__words[2]);
      }

      v4 += 11;
      a3 = &v5[3].__r_.__value_.__s.__data_[16];
    }

    while (v6 + 11 != a2);
    return &v5[3].__r_.__value_.__s.__data_[16];
  }

  return a3;
}

void std::allocator_traits<std::allocator<siri::intelligence::ResolvedCondition>>::destroy[abi:ne200100]<siri::intelligence::ResolvedCondition,0>(uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResolvedCondition>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<siri::intelligence::ResolvedCondition>::__init_with_size[abi:ne200100]<siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::ResolvedCondition>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D19E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ResolvedCondition>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResolvedCondition>>(a1, a2);
  }

  std::vector<siri::intelligence::ConditionEntry>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ResolvedCondition>,siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v14 = *(a2 + v7 + 48);
      *(a4 + v7 + 56) = 0;
      v15 = a4 + v7 + 56;
      *(v15 - 8) = v14;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v16 = *(a2 + v7 + 56);
      v17 = *(a2 + v7 + 64);
      std::vector<siri::intelligence::ResolvedCondition>::__init_with_size[abi:ne200100]<siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*>();
      v7 += 80;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_254D19FA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 23) < 0)
  {
    operator delete(*(v1 + v2));
  }

  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::ResolvedCondition>>::destroy[abi:ne200100]<siri::intelligence::ResolvedCondition,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void YAML::SingleDocParser::SingleDocParser(YAML::SingleDocParser *this, YAML::Scanner *a2, const YAML::Directives *a3)
{
  *this = a2;
  *(this + 1) = a3;
  operator new();
}

{
  *this = a2;
  *(this + 1) = a3;
  operator new();
}

void YAML::SingleDocParser::~SingleDocParser(char **this)
{
  std::__tree<std::string>::destroy((this + 3), this[4]);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    v3 = std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](v2);
    MEMORY[0x259C29D90](v3, 0x1080C40BE8D5F09);
  }
}

void YAML::SingleDocParser::HandleDocument(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  YAML::Scanner::EnsureTokensInQueue(*a1);
  if (!v4[8].i64[1])
  {
    __assert_rtn("HandleDocument", "singledocparser.cpp", 30, "!m_scanner.empty()");
  }

  if (*(a1 + 48))
  {
    __assert_rtn("HandleDocument", "singledocparser.cpp", 31, "!m_curAnchor");
  }

  v5 = YAML::Scanner::peek(*a1);
  (*(*a2 + 16))(a2, v5 + 8);
  if (*(YAML::Scanner::peek(*a1) + 4) == 1)
  {
    YAML::Scanner::pop(*a1);
  }

  YAML::SingleDocParser::HandleNode(a1, a2);
  (*(*a2 + 24))(a2);
  while (1)
  {
    v6 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v6[8].i64[1] || *(YAML::Scanner::peek(*a1) + 4) != 2)
    {
      break;
    }

    YAML::Scanner::pop(*a1);
  }
}

void YAML::SingleDocParser::HandleNode(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  YAML::Scanner::EnsureTokensInQueue(*a1);
  if (!v4[8].i64[1])
  {
    v6 = *(*a1 + 16);
    __p = *(*a1 + 8);
    LODWORD(v27) = v6;
    (*(*a2 + 32))(a2, &__p, 0);
    return;
  }

  v5 = YAML::Scanner::peek(*a1);
  v29 = *(v5 + 8);
  v30 = *(v5 + 16);
  if (*(YAML::Scanner::peek(*a1) + 4) == 15)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "?");
    (*(*a2 + 72))(a2, &v29, &__p, 0, 0);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    YAML::SingleDocParser::HandleMap(a1, a2);
    (*(*a2 + 80))(a2);
    return;
  }

  if (*(YAML::Scanner::peek(*a1) + 4) == 17)
  {
    v7 = YAML::Scanner::peek(*a1);
    v8 = YAML::SingleDocParser::LookupAnchor(a1, &v29, v7 + 24);
    (*(*a2 + 40))(a2, &v29, v8);
    YAML::Scanner::pop(*a1);
    return;
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  YAML::SingleDocParser::ParseProperties(a1, &__p, &v22, &v23);
  v9 = HIBYTE(v25);
  if (v25 < 0)
  {
    v9 = v24;
  }

  if (v9)
  {
    (*(*a2 + 88))(a2, &v29, &v23);
  }

  v10 = YAML::Scanner::peek(*a1);
  v11 = v10;
  v12 = *(v10 + 4);
  if (v12 != 19 || !YAML::IsNullString((v10 + 24)))
  {
    v13 = HIBYTE(v28);
    if (v28 < 0)
    {
      v13 = v27;
    }

    if (!v13)
    {
      if (v12 == 20)
      {
        v14 = "!";
      }

      else
      {
        v14 = "?";
      }

      MEMORY[0x259C299D0](&__p, v14);
      v12 = *(v11 + 4);
    }

    if (v12 > 8)
    {
      if ((v12 - 19) < 2)
      {
        (*(*a2 + 48))(a2, &v29, &__p, v22, v11 + 24);
        goto LABEL_36;
      }

      if (v12 != 9)
      {
        if (v12 != 14)
        {
          goto LABEL_33;
        }

        v15 = *(a1 + 16);
        v16 = v15[5];
        if (!v16 || *(*(v15[1] + (((v16 + v15[4] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v16 + v15[4] - 1) & 0x3FF)) != 4)
        {
          goto LABEL_33;
        }
      }

      (*(*a2 + 72))(a2, &v29, &__p, v22, 2);
      YAML::SingleDocParser::HandleMap(a1, a2);
    }

    else
    {
      if (v12 == 3)
      {
        (*(*a2 + 56))(a2, &v29, &__p, v22, 1);
        YAML::SingleDocParser::HandleSequence(a1, a2);
        goto LABEL_38;
      }

      if (v12 != 4)
      {
        if (v12 == 8)
        {
          (*(*a2 + 56))(a2, &v29, &__p, v22, 2);
          YAML::SingleDocParser::HandleSequence(a1, a2);
LABEL_38:
          v19 = (*a2 + 64);
LABEL_44:
          (*v19)(a2);
          goto LABEL_45;
        }

LABEL_33:
        v17 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "?");
        v18 = v22;
        if (v17)
        {
          (*(*a2 + 32))(a2, &v29, v22);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "");
          (*(*a2 + 48))(a2, &v29, &__p, v18, v20);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        goto LABEL_45;
      }

      (*(*a2 + 72))(a2, &v29, &__p, v22, 1);
      YAML::SingleDocParser::HandleMap(a1, a2);
    }

    v19 = (*a2 + 80);
    goto LABEL_44;
  }

  (*(*a2 + 32))(a2, &v29, v22);
LABEL_36:
  YAML::Scanner::pop(*a1);
LABEL_45:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }
}

void sub_254D1A85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void YAML::SingleDocParser::HandleMap(int64x2_t **a1, uint64_t a2)
{
  v4 = *(YAML::Scanner::peek(*a1) + 4);
  if (v4 > 13)
  {
    if (v4 == 14)
    {

      YAML::SingleDocParser::HandleCompactMap(a1, a2);
    }

    else if (v4 == 15)
    {

      YAML::SingleDocParser::HandleCompactMapWithNoKey(a1, a2);
    }
  }

  else if (v4 == 4)
  {

    YAML::SingleDocParser::HandleBlockMap(a1, a2);
  }

  else if (v4 == 9)
  {

    YAML::SingleDocParser::HandleFlowMap(a1, a2);
  }
}

uint64_t YAML::SingleDocParser::LookupAnchor(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1 + 32;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = *(a3 + 23);
  v7 = v6 >= 0 ? *(a3 + 23) : *(a3 + 8);
  v8 = v6 >= 0 ? a3 : *a3;
  v9 = a1 + 32;
  do
  {
    v10 = *(v5 + 55);
    if (v10 >= 0)
    {
      v11 = *(v5 + 55);
    }

    else
    {
      v11 = *(v5 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (v5 + 32);
    }

    else
    {
      v12 = *(v5 + 32);
    }

    if (v7 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    v14 = memcmp(v12, v8, v13);
    v15 = v11 < v7;
    if (v14)
    {
      v15 = v14 < 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v9 = v5;
    }

    v5 = *(v5 + v17);
  }

  while (v5);
  if (v9 == v4)
  {
    goto LABEL_41;
  }

  v18 = *(v9 + 55);
  v19 = v18 >= 0 ? *(v9 + 55) : *(v9 + 40);
  v20 = v18 >= 0 ? (v9 + 32) : *(v9 + 32);
  v21 = v19 >= v7 ? v7 : v19;
  v22 = memcmp(v8, v20, v21);
  v23 = v7 < v19;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (v23)
  {
LABEL_41:
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v26, "the referenced anchor is not defined");
    YAML::Exception::Exception(exception, a2, v26);
    *exception = &unk_28671C278;
  }

  return *(v9 + 56);
}

void sub_254D1AB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void YAML::SingleDocParser::ParseProperties(int64x2_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  *a3 = 0;
  while (1)
  {
    v8 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v8[8].i64[1])
    {
      break;
    }

    v9 = *(YAML::Scanner::peek(*a1) + 4);
    if (v9 == 16)
    {
      YAML::SingleDocParser::ParseAnchor(a1, a3, a4);
    }

    else
    {
      if (v9 != 18)
      {
        return;
      }

      YAML::SingleDocParser::ParseTag(a1, a2);
    }
  }
}

void YAML::SingleDocParser::HandleSequence(int64x2_t **a1, uint64_t a2)
{
  v4 = *(YAML::Scanner::peek(*a1) + 4);
  if (v4 == 8)
  {

    YAML::SingleDocParser::HandleFlowSequence(a1, a2);
  }

  else if (v4 == 3)
  {

    YAML::SingleDocParser::HandleBlockSequence(a1, a2);
  }
}

void YAML::SingleDocParser::HandleBlockSequence(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  LODWORD(v18) = 2;
  std::deque<YAML::CollectionType::value>::push_back(v4, &v18);
  do
  {
    v5 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v5[8].i64[1])
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v15 = *(*a1 + 16);
      v16 = *(*a1 + 8);
      v17 = v15;
      std::string::basic_string[abi:ne200100]<0>(&v18, "end of sequence not found");
      YAML::Exception::Exception(exception, &v16, &v18);
      *exception = &unk_28671C278;
    }

    v6 = YAML::Scanner::peek(*a1);
    v7 = v6;
    v8 = *(v6 + 16);
    v18 = *v6;
    v19 = v8;
    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      v9 = *(v6 + 24);
      __p.__r_.__value_.__r.__words[2] = *(v6 + 40);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    memset(v21, 0, sizeof(v21));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v21, *(v7 + 48), *(v7 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 56) - *(v7 + 48)) >> 3));
    v22 = *(v7 + 72);
    if ((DWORD1(v18) & 0xFFFFFFFD) != 5)
    {
      v13 = __cxa_allocate_exception(0x38uLL);
      std::string::basic_string[abi:ne200100]<0>(&v16, "end of sequence not found");
      YAML::Exception::Exception(v13, &v18 + 2, &v16);
      *v13 = &unk_28671C278;
    }

    YAML::Scanner::pop(*a1);
    v10 = DWORD1(v18);
    if (DWORD1(v18) != 5)
    {
      v11 = *a1;
      YAML::Scanner::EnsureTokensInQueue(*a1);
      if (v11[8].i64[1] && (v12 = YAML::Scanner::peek(*a1), (*(v12 + 4) | 2) == 7))
      {
        (*(*a2 + 32))(a2, v12 + 8, 0);
      }

      else
      {
        YAML::SingleDocParser::HandleNode(a1, a2);
      }
    }

    v16 = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v10 != 5);
  YAML::CollectionStack::PopCollectionType(*(a1 + 16), 2);
}

void sub_254D1AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void YAML::SingleDocParser::HandleFlowSequence(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  v22[0] = 4;
  std::deque<YAML::CollectionType::value>::push_back(v4, v22);
  while (1)
  {
    v5 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v5[8].i64[1])
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v11 = a1;
      v12 = exception;
      v13 = *v11;
      v14 = *(v13 + 8);
      LODWORD(v13) = *(v13 + 16);
      v23 = v14;
      v24 = v13;
      std::string::basic_string[abi:ne200100]<0>(v22, "end of sequence flow not found");
      YAML::Exception::Exception(v12, &v23, v22);
      *v12 = &unk_28671C278;
    }

    if (*(YAML::Scanner::peek(*a1) + 4) == 10)
    {
      break;
    }

    YAML::SingleDocParser::HandleNode(a1, a2);
    v6 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v6[8].i64[1])
    {
      v15 = __cxa_allocate_exception(0x38uLL);
      v16 = a1;
      v17 = v15;
      v18 = *v16;
      v19 = *(v18 + 8);
      LODWORD(v18) = *(v18 + 16);
      v23 = v19;
      v24 = v18;
      std::string::basic_string[abi:ne200100]<0>(v22, "end of sequence flow not found");
      YAML::Exception::Exception(v17, &v23, v22);
      *v17 = &unk_28671C278;
    }

    v7 = YAML::Scanner::peek(*a1);
    v8 = *(v7 + 4);
    if (v8 != 10)
    {
      if (v8 != 13)
      {
        v20 = v7;
        v21 = __cxa_allocate_exception(0x38uLL);
        std::string::basic_string[abi:ne200100]<0>(v22, "end of sequence flow not found");
        YAML::Exception::Exception(v21, (v20 + 8), v22);
        *v21 = &unk_28671C278;
      }

      YAML::Scanner::pop(*a1);
    }
  }

  YAML::Scanner::pop(*a1);
  v9 = *(a1 + 16);

  YAML::CollectionStack::PopCollectionType(v9, 4);
}

void sub_254D1B274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void YAML::CollectionStack::PopCollectionType(void *a1, int a2)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = *(*(a1[1] + (((v3 + a1[4] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a1[4] - 1) & 0x3FF));
  }

  else
  {
    v4 = 0;
  }

  if (v4 != a2)
  {
    __assert_rtn("PopCollectionType", "collectionstack.h", 31, "type == GetCurCollectionType()");
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  a1[5] = v3 - 1;
  if ((v7 - (v3 + a1[4]) - 2047) <= 0xFFFFFFFFFFFFF7FFLL)
  {
    operator delete(*(v5 - 8));
    a1[2] -= 8;
  }
}

void YAML::SingleDocParser::HandleBlockMap(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  LODWORD(v17) = 1;
  std::deque<YAML::CollectionType::value>::push_back(v4, &v17);
  do
  {
    while (1)
    {
      v5 = *a1;
      YAML::Scanner::EnsureTokensInQueue(*a1);
      if (!v5[8].i64[1])
      {
        exception = __cxa_allocate_exception(0x38uLL);
        v13 = *(*a1 + 16);
        v15 = *(*a1 + 8);
        v16 = v13;
        std::string::basic_string[abi:ne200100]<0>(&v17, "end of map not found");
        YAML::Exception::Exception(exception, &v15, &v17);
        *exception = &unk_28671C278;
      }

      v6 = YAML::Scanner::peek(*a1);
      v7 = v6;
      v8 = *(v6 + 16);
      v17 = *v6;
      v18 = v8;
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v9 = *(v6 + 24);
        __p.__r_.__value_.__r.__words[2] = *(v6 + 40);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      memset(v20, 0, sizeof(v20));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v20, *(v7 + 48), *(v7 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 56) - *(v7 + 48)) >> 3));
      v21 = *(v7 + 72);
      if (DWORD1(v17) == 6)
      {
        YAML::Scanner::pop(*a1);
        v11 = 0;
      }

      else
      {
        if (DWORD1(v17) == 14)
        {
          YAML::Scanner::pop(*a1);
          YAML::SingleDocParser::HandleNode(a1, a2);
        }

        else
        {
          if (DWORD1(v17) != 15)
          {
            v14 = __cxa_allocate_exception(0x38uLL);
            std::string::basic_string[abi:ne200100]<0>(&v15, "end of map not found");
            YAML::Exception::Exception(v14, &v17 + 2, &v15);
            *v14 = &unk_28671C278;
          }

          (*(*a2 + 32))(a2, &v17 + 8, 0);
        }

        v10 = *a1;
        YAML::Scanner::EnsureTokensInQueue(*a1);
        if (v10[8].i64[1] && *(YAML::Scanner::peek(*a1) + 4) == 15)
        {
          YAML::Scanner::pop(*a1);
          YAML::SingleDocParser::HandleNode(a1, a2);
        }

        else
        {
          (*(*a2 + 32))(a2, &v17 + 8, 0);
        }

        v11 = 1;
      }

      v15 = v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while ((v11 & 1) != 0);
LABEL_21:
  YAML::CollectionStack::PopCollectionType(*(a1 + 16), 1);
}

void sub_254D1B67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      YAML::Token::~Token(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void YAML::SingleDocParser::HandleFlowMap(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  v20[0] = 3;
  std::deque<YAML::CollectionType::value>::push_back(v4, v20);
  while (1)
  {
    v5 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v5[8].i64[1])
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v13 = *(*a1 + 16);
      v21 = *(*a1 + 8);
      v22 = v13;
      std::string::basic_string[abi:ne200100]<0>(v20, "end of map flow not found");
      YAML::Exception::Exception(exception, &v21, v20);
      *exception = &unk_28671C278;
    }

    v6 = YAML::Scanner::peek(*a1);
    v21 = *(v6 + 8);
    v22 = *(v6 + 16);
    v7 = *(v6 + 4);
    if (v7 == 14)
    {
      YAML::Scanner::pop(*a1);
      YAML::SingleDocParser::HandleNode(a1, a2);
      goto LABEL_7;
    }

    if (v7 == 11)
    {
      break;
    }

    (*(*a2 + 32))(a2, &v21, 0);
LABEL_7:
    v8 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (v8[8].i64[1] && *(YAML::Scanner::peek(*a1) + 4) == 15)
    {
      YAML::Scanner::pop(*a1);
      YAML::SingleDocParser::HandleNode(a1, a2);
    }

    else
    {
      (*(*a2 + 32))(a2, &v21, 0);
    }

    v9 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (!v9[8].i64[1])
    {
      v14 = __cxa_allocate_exception(0x38uLL);
      v15 = *(*a1 + 16);
      v18 = *(*a1 + 8);
      v19 = v15;
      std::string::basic_string[abi:ne200100]<0>(v20, "end of map flow not found");
      YAML::Exception::Exception(v14, &v18, v20);
      *v14 = &unk_28671C278;
    }

    v10 = YAML::Scanner::peek(*a1);
    v11 = *(v10 + 4);
    if (v11 != 11)
    {
      if (v11 != 13)
      {
        v16 = v10;
        v17 = __cxa_allocate_exception(0x38uLL);
        std::string::basic_string[abi:ne200100]<0>(v20, "end of map flow not found");
        YAML::Exception::Exception(v17, (v16 + 8), v20);
        *v17 = &unk_28671C278;
      }

      YAML::Scanner::pop(*a1);
    }
  }

  YAML::Scanner::pop(*a1);
  YAML::CollectionStack::PopCollectionType(*(a1 + 16), 3);
}

void sub_254D1BA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

void YAML::SingleDocParser::HandleCompactMap(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  LODWORD(v7) = 5;
  std::deque<YAML::CollectionType::value>::push_back(v4, &v7);
  v5 = YAML::Scanner::peek(*a1);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  YAML::Scanner::pop(*a1);
  YAML::SingleDocParser::HandleNode(a1, a2);
  v6 = *a1;
  YAML::Scanner::EnsureTokensInQueue(*a1);
  if (v6[8].i64[1] && *(YAML::Scanner::peek(*a1) + 4) == 15)
  {
    YAML::Scanner::pop(*a1);
    YAML::SingleDocParser::HandleNode(a1, a2);
  }

  else
  {
    (*(*a2 + 32))(a2, &v7, 0);
  }

  YAML::CollectionStack::PopCollectionType(*(a1 + 16), 5);
}

void YAML::SingleDocParser::HandleCompactMapWithNoKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7 = 5;
  std::deque<YAML::CollectionType::value>::push_back(v4, &v7);
  v5 = YAML::Scanner::peek(*a1);
  (*(*a2 + 32))(a2, v5 + 8, 0);
  YAML::Scanner::pop(*a1);
  YAML::SingleDocParser::HandleNode(a1, a2);
  v6 = *(a1 + 16);

  YAML::CollectionStack::PopCollectionType(v6, 5);
}

void YAML::SingleDocParser::ParseTag(uint64_t a1, uint64_t a2)
{
  v4 = YAML::Scanner::peek(*a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = v4;
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "cannot assign multiple tags to the same node");
    YAML::Exception::Exception(exception, (v6 + 8), v9);
    *exception = &unk_28671C278;
  }

  YAML::Tag::Tag(v9, v4);
  YAML::Tag::Translate(v9, *(a1 + 8), &__p);
  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  YAML::Scanner::pop(*a1);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_254D1BD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void YAML::SingleDocParser::ParseAnchor(int64x2_t **a1, uint64_t *a2, std::string *a3)
{
  v6 = YAML::Scanner::peek(*a1);
  v7 = v6;
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "cannot assign multiple anchors to the same node");
    YAML::Exception::Exception(exception, &v7->__r_.__value_.__r.__words[1], v10);
    *exception = &unk_28671C278;
  }

  std::string::operator=(a3, v6 + 1);
  *a2 = YAML::SingleDocParser::RegisterAnchor(a1, &v7[1].__r_.__value_.__l.__data_);
  v8 = *a1;

  YAML::Scanner::pop(v8);
}

void sub_254D1BE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t YAML::SingleDocParser::RegisterAnchor(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48) + 1;
  *(a1 + 48) = v4;
  if (!v3)
  {
LABEL_31:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = v3;
      v11 = v3[4];
      v9 = v3 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v9[1];
      }

      if (v12 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v13 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v7, v14, v15);
      v17 = v6 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v3 = *v8;
      if (!*v8)
      {
        goto LABEL_31;
      }
    }

    v18 = memcmp(v14, v7, v15);
    v19 = v13 < v6;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      break;
    }

    v3 = v8[1];
    if (!v3)
    {
      goto LABEL_31;
    }
  }

  v8[7] = v4;
  return v4;
}

void *std::deque<YAML::CollectionType::value>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(v13);
    }

    result[4] = v8 - 1024;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<YAML::Scanner::FLOW_MARKER *>::emplace_back<YAML::Scanner::FLOW_MARKER *&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_254D1C500(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void YAML::Tag::~Tag(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(uint64_t a1)
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

void __cxx_global_array_dtor_1()
{
  v0 = &byte_280AF5557;
  v1 = -480;
  v2 = &byte_280AF5557;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void siri::intelligence::Memory::Memory(siri::intelligence::Memory *this)
{
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

{
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void siri::intelligence::Memory::Clear(siri::intelligence::Memory *this)
{
  v1 = this;
  (*(**this + 24))(*this);
  v2 = *(v1 + 7);
  v1 = (v1 + 56);
  std::__tree<std::string>::destroy(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void siri::intelligence::Memory::ClearChangedVariableNames(char **this)
{
  v1 = this + 7;
  std::__tree<std::string>::destroy((this + 6), this[7]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t siri::intelligence::Memory::GetArrayIndex(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a3 || *(a2 + 48) != 1)
  {
    return 0;
  }

  siri::intelligence::GetLiteralType((a2 + 24), &__s1);
  v6 = strlen(siri::intelligence::TYPE_NUMBER[0]);
  v7 = v6;
  v8 = v28;
  if ((v28 & 0x8000000000000000) != 0)
  {
    if (v6 != v27)
    {
      goto LABEL_11;
    }

    if (v6 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    p_s1 = __s1;
  }

  else
  {
    if (v6 != v28)
    {
      goto LABEL_11;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, siri::intelligence::TYPE_NUMBER[0], v7))
  {
LABEL_11:
    v11 = strlen(siri::intelligence::TYPE_UNKNOWN);
    v13 = v11;
    if ((v8 & 0x80000000) != 0)
    {
      if (v11 == v27)
      {
        if (v11 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v14 = __s1;
LABEL_17:
        if (memcmp(v14, siri::intelligence::TYPE_UNKNOWN, v13))
        {
          goto LABEL_18;
        }

        siri::intelligence::Memory::GetVariable(a1, (a2 + 24), &lpsrc);
        if (lpsrc)
        {
          v17 = **lpsrc;
          if (v18)
          {
            v20 = v25;
            if (v25)
            {
              v10 = 1;
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              *a3 = v18[9];
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            else
            {
              *a3 = v18[9];
              v10 = 1;
            }

LABEL_36:
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

            goto LABEL_38;
          }

          if (*(a2 + 47) >= 0)
          {
            v22 = a2 + 24;
          }

          else
          {
            v22 = *(a2 + 24);
          }

          siri::intelligence::Log::Error("Array index has non-numeric variable reference: %s", v19, v22);
        }

        else
        {
          if (*(a2 + 47) >= 0)
          {
            v21 = a2 + 24;
          }

          else
          {
            v21 = *(a2 + 24);
          }

          siri::intelligence::Log::Error("Array index refers to undefined variable: %s", v16, v21);
        }

        v10 = 0;
        goto LABEL_36;
      }
    }

    else if (v11 == v8)
    {
      v14 = &__s1;
      goto LABEL_17;
    }

LABEL_18:
    if (*(a2 + 47) >= 0)
    {
      v15 = a2 + 24;
    }

    else
    {
      v15 = *(a2 + 24);
    }

    siri::intelligence::Log::Error("Array index has non-numeric value: %s", v12, v15);
    v10 = 0;
    goto LABEL_38;
  }

  *a3 = siri::intelligence::StringToIntegralType<int>((a2 + 24), 0);
  v10 = 1;
LABEL_38:
  if (v28 < 0)
  {
    operator delete(__s1);
  }

  return v10;
}

void sub_254D1CA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::GetVariable(uint64_t a1@<X0>, std::string *a2@<X1>, char ***a3@<X8>)
{
  siri::intelligence::Memory::GetLiteralVariable(a2, &v22);
  if (v22)
  {
    v6 = v23;
    *a3 = v22;
    a3[1] = v6;
    return;
  }

  siri::intelligence::ParseVariableComponents(a2, &v20);
  if (v20 != v21)
  {
    siri::intelligence::Memory::GetRoot(&v18, a1, a2, 0);
    v7 = v18;
    if (v18)
    {
      v8 = v21;
      v9 = v21 - 56;
      v10 = std::__tree<std::string>::find<std::string>((v18 + 9), (v21 - 56));
      if (v7 + 10 == v10)
      {
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v12 = *(v10 + 56);
        v11 = *(v10 + 64);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      if (*(v8 - 8) == 1)
      {
        v17 = 0;
        {
          *a3 = 0;
          a3[1] = 0;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          goto LABEL_23;
        }

        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::intelligence::VariableArray::GetItem(v14, v17, v16);
        v12 = v16[0];
        v15 = v16[1];
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      else
      {
        v15 = v11;
      }

      *a3 = v12;
      a3[1] = v15;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

LABEL_23:
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    goto LABEL_25;
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_25:
  v18 = &v20;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}