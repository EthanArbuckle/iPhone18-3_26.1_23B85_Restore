uint64_t GPUTools::MTL::GetResourcesBoundByFunction(int *a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  if (*a1 > -16046)
  {
    if (v5 <= -15822)
    {
      if (v5 <= -15995)
      {
        if (v5 > -16041)
        {
          if (v5 <= -16009)
          {
            if (v5 == -16040)
            {
              v139 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
              if (!v139)
              {
                return 1;
              }

              v140 = v139;
              for (i = 0; i != v140; ++i)
              {
                v142 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i);
                v144 = *(a2 + 8);
                v143 = *(a2 + 16);
                if (v144 >= v143)
                {
                  v146 = *a2;
                  v147 = v144 - *a2;
                  v148 = v147 >> 3;
                  v149 = (v147 >> 3) + 1;
                  if (v149 >> 61)
                  {
LABEL_490:
                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  v150 = v143 - v146;
                  if (v150 >> 2 > v149)
                  {
                    v149 = v150 >> 2;
                  }

                  if (v150 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v151 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v151 = v149;
                  }

                  if (v151)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v151);
                  }

                  *(8 * v148) = v142;
                  v145 = 8 * v148 + 8;
                  memcpy(0, v146, v147);
                  v152 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v145;
                  *(a2 + 16) = 0;
                  if (v152)
                  {
                    operator delete(v152);
                  }
                }

                else
                {
                  *v144 = v142;
                  v145 = (v144 + 1);
                }

                *(a2 + 8) = v145;
                v4 = 1;
              }

              return v4;
            }

            v7 = -16017;
          }

          else
          {
            if (v5 == -16008)
            {
              v223 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
              if (!v223)
              {
                return 1;
              }

              v224 = v223;
              for (j = 0; j != v224; ++j)
              {
                v226 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), j);
                v228 = *(a2 + 8);
                v227 = *(a2 + 16);
                if (v228 >= v227)
                {
                  v230 = *a2;
                  v231 = v228 - *a2;
                  v232 = v231 >> 3;
                  v233 = (v231 >> 3) + 1;
                  if (v233 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v234 = v227 - v230;
                  if (v234 >> 2 > v233)
                  {
                    v233 = v234 >> 2;
                  }

                  if (v234 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v235 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v235 = v233;
                  }

                  if (v235)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v235);
                  }

                  *(8 * v232) = v226;
                  v229 = 8 * v232 + 8;
                  memcpy(0, v230, v231);
                  v236 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v229;
                  *(a2 + 16) = 0;
                  if (v236)
                  {
                    operator delete(v236);
                  }
                }

                else
                {
                  *v228 = v226;
                  v229 = (v228 + 1);
                }

                *(a2 + 8) = v229;
                v4 = 1;
              }

              return v4;
            }

            if (v5 == -16003)
            {
              v181 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
              if (!v181)
              {
                return 1;
              }

              v182 = v181;
              for (k = 0; k != v182; ++k)
              {
                v184 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), k);
                v186 = *(a2 + 8);
                v185 = *(a2 + 16);
                if (v186 >= v185)
                {
                  v188 = *a2;
                  v189 = v186 - *a2;
                  v190 = v189 >> 3;
                  v191 = (v189 >> 3) + 1;
                  if (v191 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v192 = v185 - v188;
                  if (v192 >> 2 > v191)
                  {
                    v191 = v192 >> 2;
                  }

                  if (v192 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v193 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v193 = v191;
                  }

                  if (v193)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v193);
                  }

                  *(8 * v190) = v184;
                  v187 = 8 * v190 + 8;
                  memcpy(0, v188, v189);
                  v194 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v187;
                  *(a2 + 16) = 0;
                  if (v194)
                  {
                    operator delete(v194);
                  }
                }

                else
                {
                  *v186 = v184;
                  v187 = (v186 + 1);
                }

                *(a2 + 8) = v187;
                v4 = 1;
              }

              return v4;
            }

            v7 = -15995;
          }

          goto LABEL_265;
        }

        if (v5 > -16044)
        {
          if (v5 != -16043)
          {
            if (v5 == -16042)
            {
              v167 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
              if (!v167)
              {
                return 1;
              }

              v168 = v167;
              for (m = 0; m != v168; ++m)
              {
                v170 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), m);
                v172 = *(a2 + 8);
                v171 = *(a2 + 16);
                if (v172 >= v171)
                {
                  v174 = *a2;
                  v175 = v172 - *a2;
                  v176 = v175 >> 3;
                  v177 = (v175 >> 3) + 1;
                  if (v177 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v178 = v171 - v174;
                  if (v178 >> 2 > v177)
                  {
                    v177 = v178 >> 2;
                  }

                  if (v178 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v179 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v179 = v177;
                  }

                  if (v179)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v179);
                  }

                  *(8 * v176) = v170;
                  v173 = 8 * v176 + 8;
                  memcpy(0, v174, v175);
                  v180 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v173;
                  *(a2 + 16) = 0;
                  if (v180)
                  {
                    operator delete(v180);
                  }
                }

                else
                {
                  *v172 = v170;
                  v173 = (v172 + 1);
                }

                *(a2 + 8) = v173;
                v4 = 1;
              }

              return v4;
            }

            v7 = -16041;
            goto LABEL_265;
          }

          goto LABEL_266;
        }

        if (v5 == -16045)
        {
          goto LABEL_266;
        }

        if (v5 != -16044)
        {
          return v4;
        }

        v94 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
        if (v94)
        {
          v95 = v94;
          for (n = 0; n != v95; ++n)
          {
            v97 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), n);
            v99 = *(a2 + 8);
            v98 = *(a2 + 16);
            if (v99 >= v98)
            {
              v101 = *a2;
              v102 = v99 - *a2;
              v103 = v102 >> 3;
              v104 = (v102 >> 3) + 1;
              if (v104 >> 61)
              {
                goto LABEL_490;
              }

              v105 = v98 - v101;
              if (v105 >> 2 > v104)
              {
                v104 = v105 >> 2;
              }

              if (v105 >= 0x7FFFFFFFFFFFFFF8)
              {
                v106 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v106 = v104;
              }

              if (v106)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v106);
              }

              *(8 * v103) = v97;
              v100 = 8 * v103 + 8;
              memcpy(0, v101, v102);
              v107 = *a2;
              *a2 = 0;
              *(a2 + 8) = v100;
              *(a2 + 16) = 0;
              if (v107)
              {
                operator delete(v107);
              }
            }

            else
            {
              *v99 = v97;
              v100 = (v99 + 1);
            }

            *(a2 + 8) = v100;
            v4 = 1;
          }

          return v4;
        }

        return 1;
      }

      if (v5 > -15964)
      {
        if (v5 > -15888)
        {
          if (v5 == -15887)
          {
            v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), 0);
            std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
            v138 = (a1 + 24);
LABEL_439:
            v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v138, 0);
            std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
            goto LABEL_440;
          }

          if (v5 == -15878)
          {
            v136 = (a1 + 18);
            goto LABEL_420;
          }

          if (v5 != -15877)
          {
            return v4;
          }

          v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), 0);
          std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
        }

        else if (v5 != -15963 && v5 != -15961)
        {
          if (v5 != -15952)
          {
            return v4;
          }

          v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 36), 0);
          std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
          v22 = (a1 + 60);
LABEL_267:
          v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v22, 0);
          std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
          return 1;
        }

LABEL_243:
        v22 = (a1 + 24);
        goto LABEL_267;
      }

      if (v5 > -15993)
      {
        if (v5 != -15992)
        {
          if (v5 == -15977)
          {
            goto LABEL_200;
          }

          v7 = -15976;
          goto LABEL_265;
        }

        goto LABEL_266;
      }

      if (v5 == -15994)
      {
        goto LABEL_266;
      }

      v7 = -15993;
    }

    else
    {
      if (v5 > -15400)
      {
        if (v5 <= -15384)
        {
          if (v5 > -15393)
          {
            if (v5 == -15392)
            {
              v4 = 1;
              v251 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
              if (v251)
              {
                v252 = v251;
                for (ii = 0; ii != v252; ++ii)
                {
                  v254 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), ii);
                  v256 = *(a2 + 8);
                  v255 = *(a2 + 16);
                  if (v256 >= v255)
                  {
                    v258 = *a2;
                    v259 = v256 - *a2;
                    v260 = v259 >> 3;
                    v261 = (v259 >> 3) + 1;
                    if (v261 >> 61)
                    {
                      goto LABEL_490;
                    }

                    v262 = v255 - v258;
                    if (v262 >> 2 > v261)
                    {
                      v261 = v262 >> 2;
                    }

                    if (v262 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v263 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v263 = v261;
                    }

                    if (v263)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v263);
                    }

                    *(8 * v260) = v254;
                    v257 = 8 * v260 + 8;
                    memcpy(0, v258, v259);
                    v264 = *a2;
                    *a2 = 0;
                    *(a2 + 8) = v257;
                    *(a2 + 16) = 0;
                    if (v264)
                    {
                      operator delete(v264);
                    }
                  }

                  else
                  {
                    *v256 = v254;
                    v257 = (v256 + 1);
                  }

                  *(a2 + 8) = v257;
                  v4 = 1;
                }
              }

              return v4;
            }

            if (v5 != -15391)
            {
              if (v5 == -15389)
              {
                v4 = 1;
                v51 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
                if (v51)
                {
                  v52 = v51;
                  for (jj = 0; jj != v52; ++jj)
                  {
                    v54 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), jj);
                    v56 = *(a2 + 8);
                    v55 = *(a2 + 16);
                    if (v56 >= v55)
                    {
                      v58 = *a2;
                      v59 = v56 - *a2;
                      v60 = v59 >> 3;
                      v61 = (v59 >> 3) + 1;
                      if (v61 >> 61)
                      {
                        goto LABEL_490;
                      }

                      v62 = v55 - v58;
                      if (v62 >> 2 > v61)
                      {
                        v61 = v62 >> 2;
                      }

                      if (v62 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v63 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v63 = v61;
                      }

                      if (v63)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v63);
                      }

                      *(8 * v60) = v54;
                      v57 = 8 * v60 + 8;
                      memcpy(0, v58, v59);
                      v64 = *a2;
                      *a2 = 0;
                      *(a2 + 8) = v57;
                      *(a2 + 16) = 0;
                      if (v64)
                      {
                        operator delete(v64);
                      }
                    }

                    else
                    {
                      *v56 = v54;
                      v57 = (v56 + 1);
                    }

                    *(a2 + 8) = v57;
                    v4 = 1;
                  }
                }
              }

              return v4;
            }

            goto LABEL_266;
          }

          if (v5 == -15399)
          {
            v4 = 1;
            v153 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
            if (v153)
            {
              v154 = v153;
              for (kk = 0; kk != v154; ++kk)
              {
                v156 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), kk);
                v158 = *(a2 + 8);
                v157 = *(a2 + 16);
                if (v158 >= v157)
                {
                  v160 = *a2;
                  v161 = v158 - *a2;
                  v162 = v161 >> 3;
                  v163 = (v161 >> 3) + 1;
                  if (v163 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v164 = v157 - v160;
                  if (v164 >> 2 > v163)
                  {
                    v163 = v164 >> 2;
                  }

                  if (v164 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v165 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v165 = v163;
                  }

                  if (v165)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v165);
                  }

                  *(8 * v162) = v156;
                  v159 = 8 * v162 + 8;
                  memcpy(0, v160, v161);
                  v166 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v159;
                  *(a2 + 16) = 0;
                  if (v166)
                  {
                    operator delete(v166);
                  }
                }

                else
                {
                  *v158 = v156;
                  v159 = (v158 + 1);
                }

                *(a2 + 8) = v159;
                v4 = 1;
              }
            }

            return v4;
          }

          v7 = -15393;
          goto LABEL_265;
        }

        if (v5 > -15283)
        {
          if (v5 == -15282)
          {
            v4 = 1;
            v307 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 36), 1uLL);
            if (v307)
            {
              v308 = v307;
              for (mm = 0; mm != v308; ++mm)
              {
                v310 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), mm);
                v312 = *(a2 + 8);
                v311 = *(a2 + 16);
                if (v312 >= v311)
                {
                  v314 = *a2;
                  v315 = v312 - *a2;
                  v316 = v315 >> 3;
                  v317 = (v315 >> 3) + 1;
                  if (v317 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v318 = v311 - v314;
                  if (v318 >> 2 > v317)
                  {
                    v317 = v318 >> 2;
                  }

                  if (v318 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v319 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v319 = v317;
                  }

                  if (v319)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v319);
                  }

                  *(8 * v316) = v310;
                  v313 = 8 * v316 + 8;
                  memcpy(0, v314, v315);
                  v320 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v313;
                  *(a2 + 16) = 0;
                  if (v320)
                  {
                    operator delete(v320);
                  }
                }

                else
                {
                  *v312 = v310;
                  v313 = (v312 + 1);
                }

                *(a2 + 8) = v313;
                v4 = 1;
              }
            }

            return v4;
          }

          if (v5 != -15275)
          {
            if (v5 == -15273)
            {
              v4 = 1;
              v79 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 36), 1uLL);
              if (v79)
              {
                v80 = v79;
                for (nn = 0; nn != v80; ++nn)
                {
                  v82 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), nn);
                  v84 = *(a2 + 8);
                  v83 = *(a2 + 16);
                  if (v84 >= v83)
                  {
                    v86 = *a2;
                    v87 = v84 - *a2;
                    v88 = v87 >> 3;
                    v89 = (v87 >> 3) + 1;
                    if (v89 >> 61)
                    {
                      goto LABEL_490;
                    }

                    v90 = v83 - v86;
                    if (v90 >> 2 > v89)
                    {
                      v89 = v90 >> 2;
                    }

                    if (v90 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v91 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v91 = v89;
                    }

                    if (v91)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v91);
                    }

                    *(8 * v88) = v82;
                    v85 = 8 * v88 + 8;
                    memcpy(0, v86, v87);
                    v92 = *a2;
                    *a2 = 0;
                    *(a2 + 8) = v85;
                    *(a2 + 16) = 0;
                    if (v92)
                    {
                      operator delete(v92);
                    }
                  }

                  else
                  {
                    *v84 = v82;
                    v85 = (v84 + 1);
                  }

                  *(a2 + 8) = v85;
                  v4 = 1;
                }
              }
            }

            return v4;
          }

          goto LABEL_266;
        }

        if (v5 != -15383)
        {
          if (v5 == -15382)
          {
            v4 = 1;
            v293 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
            if (v293)
            {
              v294 = v293;
              for (i1 = 0; i1 != v294; ++i1)
              {
                v296 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i1);
                v298 = *(a2 + 8);
                v297 = *(a2 + 16);
                if (v298 >= v297)
                {
                  v300 = *a2;
                  v301 = v298 - *a2;
                  v302 = v301 >> 3;
                  v303 = (v301 >> 3) + 1;
                  if (v303 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v304 = v297 - v300;
                  if (v304 >> 2 > v303)
                  {
                    v303 = v304 >> 2;
                  }

                  if (v304 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v305 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v305 = v303;
                  }

                  if (v305)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v305);
                  }

                  *(8 * v302) = v296;
                  v299 = 8 * v302 + 8;
                  memcpy(0, v300, v301);
                  v306 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v299;
                  *(a2 + 16) = 0;
                  if (v306)
                  {
                    operator delete(v306);
                  }
                }

                else
                {
                  *v298 = v296;
                  v299 = (v298 + 1);
                }

                *(a2 + 8) = v299;
                v4 = 1;
              }
            }

            return v4;
          }

          v7 = -15284;
          goto LABEL_265;
        }

        goto LABEL_266;
      }

      if (v5 <= -15729)
      {
        if (v5 <= -15820)
        {
          if (v5 == -15821)
          {
            goto LABEL_266;
          }

          v122 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
          if (v122)
          {
            v123 = v122;
            for (i2 = 0; i2 != v123; ++i2)
            {
              v125 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i2);
              v127 = *(a2 + 8);
              v126 = *(a2 + 16);
              if (v127 >= v126)
              {
                v129 = *a2;
                v130 = v127 - *a2;
                v131 = v130 >> 3;
                v132 = (v130 >> 3) + 1;
                if (v132 >> 61)
                {
                  goto LABEL_490;
                }

                v133 = v126 - v129;
                if (v133 >> 2 > v132)
                {
                  v132 = v133 >> 2;
                }

                if (v133 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v134 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v134 = v132;
                }

                if (v134)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v134);
                }

                *(8 * v131) = v125;
                v128 = 8 * v131 + 8;
                memcpy(0, v129, v130);
                v135 = *a2;
                *a2 = 0;
                *(a2 + 8) = v128;
                *(a2 + 16) = 0;
                if (v135)
                {
                  operator delete(v135);
                }
              }

              else
              {
                *v127 = v125;
                v128 = (v127 + 1);
              }

              *(a2 + 8) = v128;
              v4 = 1;
            }

            return v4;
          }

          return 1;
        }

        if (v5 == -15819)
        {
          goto LABEL_266;
        }

        if (v5 == -15818)
        {
          v237 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
          if (!v237)
          {
            return 1;
          }

          v238 = v237;
          for (i3 = 0; i3 != v238; ++i3)
          {
            v240 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i3);
            v242 = *(a2 + 8);
            v241 = *(a2 + 16);
            if (v242 >= v241)
            {
              v244 = *a2;
              v245 = v242 - *a2;
              v246 = v245 >> 3;
              v247 = (v245 >> 3) + 1;
              if (v247 >> 61)
              {
                goto LABEL_490;
              }

              v248 = v241 - v244;
              if (v248 >> 2 > v247)
              {
                v247 = v248 >> 2;
              }

              if (v248 >= 0x7FFFFFFFFFFFFFF8)
              {
                v249 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v249 = v247;
              }

              if (v249)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v249);
              }

              *(8 * v246) = v240;
              v243 = 8 * v246 + 8;
              memcpy(0, v244, v245);
              v250 = *a2;
              *a2 = 0;
              *(a2 + 8) = v243;
              *(a2 + 16) = 0;
              if (v250)
              {
                operator delete(v250);
              }
            }

            else
            {
              *v242 = v240;
              v243 = (v242 + 1);
            }

            *(a2 + 8) = v243;
            v4 = 1;
          }

          return v4;
        }

        if (v5 != -15756)
        {
          return v4;
        }

LABEL_440:
        v22 = (a1 + 30);
        goto LABEL_267;
      }

      if (v5 <= -15723)
      {
        if (v5 != -15728 && v5 != -15726)
        {
          v7 = -15723;
          goto LABEL_265;
        }

        goto LABEL_266;
      }

      if (v5 == -15722 || v5 == -15415)
      {
        goto LABEL_266;
      }

      v7 = -15401;
    }

LABEL_265:
    if (v5 != v7)
    {
      return v4;
    }

    goto LABEL_266;
  }

  if (v5 > -16218)
  {
    if (v5 <= -16148)
    {
      if (v5 > -16213)
      {
        if (v5 <= -16157)
        {
          if (v5 != -16212)
          {
            if (v5 != -16210)
            {
              v6 = -16209;
              goto LABEL_199;
            }

LABEL_200:
            v93 = (a1 + 18);
LABEL_401:
            v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v93, 0);
            std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
            v22 = (a1 + 48);
            goto LABEL_267;
          }

          goto LABEL_266;
        }

        if (v5 != -16156 && v5 != -16155)
        {
          v7 = -16148;
          goto LABEL_265;
        }

LABEL_266:
        v22 = (a1 + 18);
        goto LABEL_267;
      }

      if (v5 > -16216)
      {
        if (v5 == -16215)
        {
          v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 0);
          std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
          v22 = (a1 + 42);
          goto LABEL_267;
        }

        if (v5 != -16214)
        {
          v7 = -16213;
          goto LABEL_265;
        }

        goto LABEL_266;
      }

      if (v5 != -16217)
      {
        goto LABEL_243;
      }

LABEL_421:
      v22 = (a1 + 36);
      goto LABEL_267;
    }

    if (v5 > -16141)
    {
      if (v5 <= -16080)
      {
        if (v5 != -16140)
        {
          if (v5 == -16087)
          {
            v4 = 1;
            v279 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
            if (v279)
            {
              v280 = v279;
              for (i4 = 0; i4 != v280; ++i4)
              {
                v282 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i4);
                v284 = *(a2 + 8);
                v283 = *(a2 + 16);
                if (v284 >= v283)
                {
                  v286 = *a2;
                  v287 = v284 - *a2;
                  v288 = v287 >> 3;
                  v289 = (v287 >> 3) + 1;
                  if (v289 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v290 = v283 - v286;
                  if (v290 >> 2 > v289)
                  {
                    v289 = v290 >> 2;
                  }

                  if (v290 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v291 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v291 = v289;
                  }

                  if (v291)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v291);
                  }

                  *(8 * v288) = v282;
                  v285 = 8 * v288 + 8;
                  memcpy(0, v286, v287);
                  v292 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v285;
                  *(a2 + 16) = 0;
                  if (v292)
                  {
                    operator delete(v292);
                  }
                }

                else
                {
                  *v284 = v282;
                  v285 = (v284 + 1);
                }

                *(a2 + 8) = v285;
                v4 = 1;
              }
            }
          }

          else if (v5 == -16086)
          {
            v4 = 1;
            v23 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
            if (v23)
            {
              v24 = v23;
              for (i5 = 0; i5 != v24; ++i5)
              {
                v26 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i5);
                v28 = *(a2 + 8);
                v27 = *(a2 + 16);
                if (v28 >= v27)
                {
                  v30 = *a2;
                  v31 = v28 - *a2;
                  v32 = v31 >> 3;
                  v33 = (v31 >> 3) + 1;
                  if (v33 >> 61)
                  {
                    goto LABEL_490;
                  }

                  v34 = v27 - v30;
                  if (v34 >> 2 > v33)
                  {
                    v33 = v34 >> 2;
                  }

                  if (v34 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v35 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v35 = v33;
                  }

                  if (v35)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v35);
                  }

                  *(8 * v32) = v26;
                  v29 = 8 * v32 + 8;
                  memcpy(0, v30, v31);
                  v36 = *a2;
                  *a2 = 0;
                  *(a2 + 8) = v29;
                  *(a2 + 16) = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v28 = v26;
                  v29 = (v28 + 1);
                }

                *(a2 + 8) = v29;
                v4 = 1;
              }
            }
          }

          return v4;
        }

        goto LABEL_266;
      }

      if (v5 == -16079 || v5 == -16047)
      {
        goto LABEL_266;
      }

      if (v5 != -16046)
      {
        return v4;
      }

      v65 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
      if (v65)
      {
        v66 = v65;
        for (i6 = 0; i6 != v66; ++i6)
        {
          v68 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i6);
          v70 = *(a2 + 8);
          v69 = *(a2 + 16);
          if (v70 >= v69)
          {
            v72 = *a2;
            v73 = v70 - *a2;
            v74 = v73 >> 3;
            v75 = (v73 >> 3) + 1;
            if (v75 >> 61)
            {
              goto LABEL_490;
            }

            v76 = v69 - v72;
            if (v76 >> 2 > v75)
            {
              v75 = v76 >> 2;
            }

            if (v76 >= 0x7FFFFFFFFFFFFFF8)
            {
              v77 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v77 = v75;
            }

            if (v77)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v77);
            }

            *(8 * v74) = v68;
            v71 = 8 * v74 + 8;
            memcpy(0, v72, v73);
            v78 = *a2;
            *a2 = 0;
            *(a2 + 8) = v71;
            *(a2 + 16) = 0;
            if (v78)
            {
              operator delete(v78);
            }
          }

          else
          {
            *v70 = v68;
            v71 = (v70 + 1);
          }

          *(a2 + 8) = v71;
          v4 = 1;
        }

        return v4;
      }

      return 1;
    }

    if (v5 > -16146)
    {
      if (v5 != -16145)
      {
        if (v5 != -16144)
        {
          v7 = -16142;
          goto LABEL_265;
        }

        v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 0);
        std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
      }

      v93 = (a1 + 36);
      goto LABEL_401;
    }

    if (v5 == -16147)
    {
      goto LABEL_421;
    }

    v136 = (a1 + 24);
LABEL_420:
    v321 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v136, 0);
    std::vector<unsigned long long>::emplace_back<unsigned long long>(a2, &v321);
    goto LABEL_421;
  }

  if (v5 > -16279)
  {
    if (v5 <= -16263)
    {
      if (v5 <= -16277)
      {
        if (v5 != -16278)
        {
          v4 = 1;
          v108 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
          if (v108)
          {
            v109 = v108;
            for (i7 = 0; i7 != v109; ++i7)
            {
              v111 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i7);
              v113 = *(a2 + 8);
              v112 = *(a2 + 16);
              if (v113 >= v112)
              {
                v115 = *a2;
                v116 = v113 - *a2;
                v117 = v116 >> 3;
                v118 = (v116 >> 3) + 1;
                if (v118 >> 61)
                {
                  goto LABEL_490;
                }

                v119 = v112 - v115;
                if (v119 >> 2 > v118)
                {
                  v118 = v119 >> 2;
                }

                if (v119 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v120 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v120 = v118;
                }

                if (v120)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v120);
                }

                *(8 * v117) = v111;
                v114 = 8 * v117 + 8;
                memcpy(0, v115, v116);
                v121 = *a2;
                *a2 = 0;
                *(a2 + 8) = v114;
                *(a2 + 16) = 0;
                if (v121)
                {
                  operator delete(v121);
                }
              }

              else
              {
                *v113 = v111;
                v114 = (v113 + 1);
              }

              *(a2 + 8) = v114;
              v4 = 1;
            }
          }

          return v4;
        }

        goto LABEL_266;
      }

      if (v5 != -16276)
      {
        if (v5 == -16275)
        {
          v4 = 1;
          v195 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
          if (v195)
          {
            v196 = v195;
            for (i8 = 0; i8 != v196; ++i8)
            {
              v198 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i8);
              v200 = *(a2 + 8);
              v199 = *(a2 + 16);
              if (v200 >= v199)
              {
                v202 = *a2;
                v203 = v200 - *a2;
                v204 = v203 >> 3;
                v205 = (v203 >> 3) + 1;
                if (v205 >> 61)
                {
                  goto LABEL_490;
                }

                v206 = v199 - v202;
                if (v206 >> 2 > v205)
                {
                  v205 = v206 >> 2;
                }

                if (v206 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v207 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v207 = v205;
                }

                if (v207)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v207);
                }

                *(8 * v204) = v198;
                v201 = 8 * v204 + 8;
                memcpy(0, v202, v203);
                v208 = *a2;
                *a2 = 0;
                *(a2 + 8) = v201;
                *(a2 + 16) = 0;
                if (v208)
                {
                  operator delete(v208);
                }
              }

              else
              {
                *v200 = v198;
                v201 = (v200 + 1);
              }

              *(a2 + 8) = v201;
              v4 = 1;
            }
          }

          return v4;
        }

        v7 = -16263;
        goto LABEL_265;
      }

      goto LABEL_266;
    }

    if (v5 <= -16250)
    {
      if (v5 == -16262)
      {
        v4 = 1;
        v265 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
        if (v265)
        {
          v266 = v265;
          for (i9 = 0; i9 != v266; ++i9)
          {
            v268 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i9);
            v270 = *(a2 + 8);
            v269 = *(a2 + 16);
            if (v270 >= v269)
            {
              v272 = *a2;
              v273 = v270 - *a2;
              v274 = v273 >> 3;
              v275 = (v273 >> 3) + 1;
              if (v275 >> 61)
              {
                goto LABEL_490;
              }

              v276 = v269 - v272;
              if (v276 >> 2 > v275)
              {
                v275 = v276 >> 2;
              }

              if (v276 >= 0x7FFFFFFFFFFFFFF8)
              {
                v277 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v277 = v275;
              }

              if (v277)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v277);
              }

              *(8 * v274) = v268;
              v271 = 8 * v274 + 8;
              memcpy(0, v272, v273);
              v278 = *a2;
              *a2 = 0;
              *(a2 + 8) = v271;
              *(a2 + 16) = 0;
              if (v278)
              {
                operator delete(v278);
              }
            }

            else
            {
              *v270 = v268;
              v271 = (v270 + 1);
            }

            *(a2 + 8) = v271;
            v4 = 1;
          }
        }

        return v4;
      }

      if (v5 != -16261)
      {
        if (v5 == -16260)
        {
          v4 = 1;
          v8 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
          if (v8)
          {
            v9 = v8;
            for (i10 = 0; i10 != v9; ++i10)
            {
              v11 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i10);
              v13 = *(a2 + 8);
              v12 = *(a2 + 16);
              if (v13 >= v12)
              {
                v15 = *a2;
                v16 = v13 - *a2;
                v17 = v16 >> 3;
                v18 = (v16 >> 3) + 1;
                if (v18 >> 61)
                {
                  goto LABEL_490;
                }

                v19 = v12 - v15;
                if (v19 >> 2 > v18)
                {
                  v18 = v19 >> 2;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v20);
                }

                *(8 * v17) = v11;
                v14 = 8 * v17 + 8;
                memcpy(0, v15, v16);
                v21 = *a2;
                *a2 = 0;
                *(a2 + 8) = v14;
                *(a2 + 16) = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              else
              {
                *v13 = v11;
                v14 = (v13 + 1);
              }

              *(a2 + 8) = v14;
              v4 = 1;
            }
          }
        }

        return v4;
      }

      goto LABEL_266;
    }

    if (v5 != -16249 && v5 != -16248)
    {
      v7 = -16220;
      goto LABEL_265;
    }

    goto LABEL_421;
  }

  if (v5 > -16378)
  {
    if (v5 > -16336)
    {
      if (v5 == -16335)
      {
        v4 = 1;
        v209 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 30), 1uLL);
        if (v209)
        {
          v210 = v209;
          for (i11 = 0; i11 != v210; ++i11)
          {
            v212 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i11);
            v214 = *(a2 + 8);
            v213 = *(a2 + 16);
            if (v214 >= v213)
            {
              v216 = *a2;
              v217 = v214 - *a2;
              v218 = v217 >> 3;
              v219 = (v217 >> 3) + 1;
              if (v219 >> 61)
              {
                goto LABEL_490;
              }

              v220 = v213 - v216;
              if (v220 >> 2 > v219)
              {
                v219 = v220 >> 2;
              }

              if (v220 >= 0x7FFFFFFFFFFFFFF8)
              {
                v221 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v221 = v219;
              }

              if (v221)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v221);
              }

              *(8 * v218) = v212;
              v215 = 8 * v218 + 8;
              memcpy(0, v216, v217);
              v222 = *a2;
              *a2 = 0;
              *(a2 + 8) = v215;
              *(a2 + 16) = 0;
              if (v222)
              {
                operator delete(v222);
              }
            }

            else
            {
              *v214 = v212;
              v215 = (v214 + 1);
            }

            *(a2 + 8) = v215;
            v4 = 1;
          }
        }

        return v4;
      }

      if (v5 != -16334)
      {
        if (v5 == -16333)
        {
          v4 = 1;
          v37 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 24), 1uLL);
          if (v37)
          {
            v38 = v37;
            for (i12 = 0; i12 != v38; ++i12)
            {
              v40 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((a1 + 18), i12);
              v42 = *(a2 + 8);
              v41 = *(a2 + 16);
              if (v42 >= v41)
              {
                v44 = *a2;
                v45 = v42 - *a2;
                v46 = v45 >> 3;
                v47 = (v45 >> 3) + 1;
                if (v47 >> 61)
                {
                  goto LABEL_490;
                }

                v48 = v41 - v44;
                if (v48 >> 2 > v47)
                {
                  v47 = v48 >> 2;
                }

                if (v48 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v49 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v49 = v47;
                }

                if (v49)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v49);
                }

                *(8 * v46) = v40;
                v43 = 8 * v46 + 8;
                memcpy(0, v44, v45);
                v50 = *a2;
                *a2 = 0;
                *(a2 + 8) = v43;
                *(a2 + 16) = 0;
                if (v50)
                {
                  operator delete(v50);
                }
              }

              else
              {
                *v42 = v40;
                v43 = (v42 + 1);
              }

              *(a2 + 8) = v43;
              v4 = 1;
            }
          }
        }

        return v4;
      }

      goto LABEL_266;
    }

    if (v5 != -16377)
    {
      v7 = -16336;
      goto LABEL_265;
    }

    v138 = (a1 + 18);
    goto LABEL_439;
  }

  if (v5 > -16381)
  {
    if (v5 == -16380)
    {
      goto LABEL_200;
    }

    if (v5 == -16379)
    {
      goto LABEL_266;
    }

    v7 = -16378;
    goto LABEL_265;
  }

  if (v5 == -16382)
  {
    goto LABEL_200;
  }

  v6 = -16381;
LABEL_199:
  if (v5 == v6)
  {
    goto LABEL_200;
  }

  return v4;
}

void *std::vector<unsigned long long>::emplace_back<unsigned long long>(const void **a1, void *a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
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
  return v6 - 1;
}

unint64_t GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_10:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_10;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

const char *GPUTools::MTL::GetFuncEnumAsString(GPUTools::MTL *this)
{
  if (this > -12545)
  {
    if (this > -7169)
    {
      if (this <= -6654)
      {
        if (this > -6657)
        {
          if (this == -6656)
          {
            return "kDYFENSHMDMetalSession_setDrawablePixelFormat";
          }

          else if (this == -6655)
          {
            return "kDYFENSHMDMetalSession_nextDrawable";
          }

          else
          {
            return "kDYFENSHMDMetalSession_initWithMetalDevice_deviceReference_hmdName";
          }
        }

        else
        {
          switch(this)
          {
            case 0xFFFFE400:
              result = "kDYFECAMetalLayer_setPresentsWithTransaction";
              break;
            case 0xFFFFE401:
              result = "kDYFECAMetalDrawable_texture";
              break;
            case 0xFFFFE402:
              result = "kDYFECAMetalLayer_nextDrawable";
              break;
            case 0xFFFFE403:
              result = "kDYFECAMetalLayer_setPixelFormat";
              break;
            case 0xFFFFE404:
              result = "kDYFECAMetalLayer_setDrawableSize";
              break;
            case 0xFFFFE405:
              result = "kDYFECAMetalLayer_setDevice";
              break;
            case 0xFFFFE406:
              result = "kDYFECAMetalLayer_setBounds_contentsScale";
              break;
            case 0xFFFFE407:
              result = "kDYFECAMetalDrawable_dealloc";
              break;
            case 0xFFFFE408:
              result = "kDYFECAMetalLayer_setFramebufferOnly";
              break;
            case 0xFFFFE409:
              result = "kDYFECAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties";
              break;
            case 0xFFFFE40A:
              result = "kDYFECAMetalDrawable_present";
              break;
            case 0xFFFFE40B:
              result = "kDYFECAMetalDrawable_presentAtTime";
              break;
            case 0xFFFFE40C:
              result = "kDYFECAMetalDrawable_presentAfterMinimumDuration";
              break;
            case 0xFFFFE40D:
              result = "kDYFEUIScreen_setInterfaceOrientation";
              break;
            case 0xFFFFE40E:
              result = "kDYFECAMetalLayer_setWantsExtendedDynamicRangeContent";
              break;
            case 0xFFFFE40F:
              result = "kDYFECAMetalLayer_setColorspace";
              break;
            default:
LABEL_72:
              result = 0;
              break;
          }
        }
      }

      else
      {
        switch(this)
        {
          case 0xFFFFE800:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE801:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_convolutionData";
            break;
          case 0xFFFFE802:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeBatchToCommandBuffer_computeCommandEncoder_options_sourceTextures_sourceInfo_destinationTextures_destinationInfo_zeroPadSizeX_zeroPadSizeY_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE803:
            result = "kDYFEMPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case 0xFFFFE804:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE805:
            result = "kDYFEMPSExternalPluginBase_dealloc";
            break;
          case 0xFFFFE806:
            result = "kDYFEMPSExternalCNNUnary_maxBatchSize";
            break;
          case 0xFFFFE807:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure";
            break;
          case 0xFFFFE808:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE809:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case 0xFFFFE80A:
            result = "kDYFEMPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta";
            break;
          case 0xFFFFE80B:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case 0xFFFFE80C:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo";
            break;
          case 0xFFFFE80D:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected";
            break;
          case 0xFFFFE80E:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_A_aInfo_B_bInfo_C_cInfo";
            break;
          case 0xFFFFE80F:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count";
            break;
          case 0xFFFFE810:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case 0xFFFFE811:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeights";
            break;
          case 0xFFFFE812:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case 0xFFFFE813:
            result = "kDYFEMPSExternalCNNBinary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTexture_primaryInfo_secondaryTexture_secondaryInfo_destinationTexture_destinationInfo";
            break;
          case 0xFFFFE814:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE815:
            result = "kDYFEMPSExternalCNNBinary_maxBatchSize";
            break;
          case 0xFFFFE816:
            result = "kDYFEMPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta";
            break;
          case 0xFFFFE817:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo_zeroPadSizeX_zeroPadSizeY";
            break;
          case 0xFFFFE818:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiases";
            break;
          case 0xFFFFE819:
            result = "kDYFEMPSPlugin_newCNNSoftMax";
            break;
          case 0xFFFFE81A:
            result = "kDYFEMPSExternalCNNBinary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE81B:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case 0xFFFFE81C:
            result = "kDYFEMPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY";
            break;
          case 0xFFFFE81D:
            result = "kDYFEMPSExternalCNNUnary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTextures_sourceInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE81E:
            result = "kDYFEMPSExternalCNNConvolutionGradient_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_weightsGradient_biasesGradient_accumulate_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE81F:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE820:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE821:
            result = "kDYFEMPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData";
            break;
          case 0xFFFFE822:
            result = "kDYFEMPSPlugin_newMatrixFullyConnected";
            break;
          case 0xFFFFE823:
            result = "kDYFEMPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case 0xFFFFE824:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE825:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_weightsDataType_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE826:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE827:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRowsAndResultColumnsAndInteriorColumns_alphaAndBeta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE828:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannels_neuronType_neuronParameters";
            break;
          case 0xFFFFE829:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannelsAndNeuronTypeAndPredicationOffset_neuronParameters_predicationBuffer";
            break;
          case 0xFFFFE82A:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE82B:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset_transA_transB";
            break;
          case 0xFFFFE82C:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE82D:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE82E:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE82F:
            result = "kDYFEMPSExternalNDArrayBinary_encodeToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_destinationBuffer_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case 0xFFFFE830:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DGradientWithDescriptor";
            break;
          case 0xFFFFE831:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DWithDescriptor";
            break;
          default:
            if (this == -6653)
            {
              result = "kDYFENSHMDMetalSession_setDrawableSize";
            }

            else
            {
              if (this != -6652)
              {
                goto LABEL_72;
              }

              result = "kDYFENSHMDMetalSession_dealloc";
            }

            break;
        }
      }
    }

    else
    {
      v2 = this + 10240;
      result = "kDYFEBoundary_Frame";
      switch(v2)
      {
        case 0:
          result = "kDYFEMTLCommandBuffer_restoreMTLBufferContents";
          break;
        case 1:
          result = "kDYFEMTLDevice_deviceReference";
          break;
        case 2:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
          break;
        case 3:
          result = "kDYFEMTLDevice_harvested_newBufferWithBytes_length_options";
          break;
        case 4:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_totalBytes";
          break;
        case 5:
          result = "kDYFEMTLBuffer_resourceUsage";
          break;
        case 6:
          result = "kDYFEMTLTexture_resourceUsage";
          break;
        case 7:
          result = "kDYFEMTLDevice_setSelectedCommandQueueAddress";
          break;
        case 8:
          result = "kDYFEMTLTexture_restoreIOSurfaceData_length_forPlane";
          break;
        case 9:
          result = "kDYFEMTLTexture_mipmapInfo";
          break;
        case 10:
          result = "kDYFEMTLDevice_setCapturingCommandQueueAddress";
          break;
        case 11:
          result = "kDYFEMTLCommandBuffer_indirectArgumentBufferData";
          break;
        case 12:
          result = "kDYFEMTLBuffer_gpuVirtualAddress";
          break;
        case 13:
          result = "kDYFEMTLTexture_uniqueIdentifier";
          break;
        case 14:
          result = "kDYFEMTLSamplerState_uniqueIdentifier";
          break;
        case 15:
          result = "kDYFEMTLCommandBuffer_encodeIndirectArgumentsForBuffer_data";
          break;
        case 16:
          result = "kDYFEFrameEnd";
          break;
        case 17:
          result = "kDYFEMTLBuffer_allocatedSize";
          break;
        case 18:
          result = "kDYFEMTLTexture_allocatedSize";
          break;
        case 19:
          result = "kDYFEMTLBuffer_indirectCommandBufferData";
          break;
        case 20:
          result = "kDYFEMTLRenderPipelineState_uniqueIdentifier";
          break;
        case 21:
          result = "kDYFEMTLIndirectCommandBuffer_restoreData";
          break;
        case 22:
          result = "kDYFEMTLIndirectCommandBuffer_uniqueIdentifier";
          break;
        case 23:
          result = "kDYFEMTLIndirectCommandBuffer_indirectCommandNop";
          break;
        case 24:
          result = "kDYFEMTLIndirectCommandBuffer_restoreOptimizedRanges";
          break;
        case 25:
          result = "kDYFEMTLIndirectCommandBuffer_allocatedSize";
          break;
        case 26:
          result = "kDYFEMTLComputePipelineState_uniqueIdentifier";
          break;
        case 27:
          result = "kDYFEMTLResourceStateCommandEncoder_harvested_updateTextureMapping_mode_region_mipLevel_slice";
          break;
        case 28:
          result = "kDYFEMTLTexture_timeSinceTouched";
          break;
        case 29:
          result = "kDYFEMTLHeap_timeSinceTouched";
          break;
        case 30:
          result = "kDYFEMTLBuffer_timeSinceTouched";
          break;
        case 31:
          result = "kDYFEMTLIndirectCommandBuffer_timeSinceTouched";
          break;
        case 32:
          result = "kDYFEMTLHeap_usedSize";
          break;
        case 33:
          result = "kDYFEMTLHeap_currentAllocatedSize";
          break;
        case 34:
          result = "kDYFEMTLSharedEventHandle_dealloc";
          break;
        case 35:
          result = "kDYFEMTLTexture_compressionFeedback";
          break;
        case 36:
          result = "kDYFEMTLTexture_allocationID";
          break;
        case 37:
          result = "kDYFEMTLBuffer_allocationID";
          break;
        case 38:
          result = "kDYFEMTLIndirectCommandBuffer_allocationID";
          break;
        case 39:
          result = "kDYFEMTLTexture_saveSlice_level_zPlane_normalize_blitOption_toPath";
          break;
        case 40:
          result = "kDYFEMTLBuffer_saveContentsToPath";
          break;
        case 41:
          result = "kDYFEMTLRenderPipelineState_resourceIndex";
          break;
        case 42:
          result = "kDYFEMTLTexture_resourceIndex";
          break;
        case 43:
          result = "kDYFEMTLAccelerationStructure_allocationID";
          break;
        case 44:
          result = "kDYFEMTLAccelerationStructure_allocatedSize";
          break;
        case 45:
          result = "kDYFEMTLAccelerationStructure_resourceUsage";
          break;
        case 46:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure";
          break;
        case 47:
          result = "kDYFEMTLVisibleFunctionTable_uniqueIdentifier";
          break;
        case 48:
          result = "kDYFEMTLRenderPipelineState_allocatedSize";
          break;
        case 49:
          result = "kDYFEMTLComputePipelineState_allocatedSize";
          break;
        case 50:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure_instance";
          break;
        case 51:
          result = "kDYFEMTLDynamicLibrary_installName";
          break;
        case 52:
          result = "kDYFEMTLLibrary_libraryIdentifier";
          break;
        case 53:
          result = "kDYFEMTLBuffer_heapOffset";
          break;
        case 54:
          result = "kDYFEMTLBuffer_parentGPUAddress_parentGPUSize";
          break;
        case 55:
          result = "kDYFEMTLTexture_heapOffset";
          break;
        case 56:
          result = "kDYFEMTLRenderPipelineState_imageblockSampleLength";
          break;
        case 57:
          result = "kDYFEMTLLibrary_type";
          break;
        case 58:
          result = "kDYFEMTLAccelerationStructure_allocationInfo";
          break;
        case 59:
          result = "kDYFEMTLAccelerationStructure_uniqueIdentifier";
          break;
        case 60:
          result = "kDYFEMTLIntersectionFunctionTable_timeSinceTouched";
          break;
        case 61:
          result = "kDYFEMTLIntersectionFunctionTable_allocatedSize";
          break;
        case 62:
          result = "kDYFEMTLVisibleFunctionTable_timeSinceTouched";
          break;
        case 63:
          result = "kDYFEMTLVisibleFunctionTable_allocationID";
          break;
        case 64:
          result = "kDYFEMTLIntersectionFunctionTable_allocationID";
          break;
        case 65:
          result = "kDYFEMTLIntersectionFunctionTable_uniqueIdentifier";
          break;
        case 66:
          result = "kDYFEMTLVisibleFunctionTable_allocatedSize";
          break;
        case 67:
          result = "kDYFEMTLAccelerationStructure_timeSinceTouched";
          break;
        case 68:
          result = "kDYFEMTLRenderPipelineState_timeSinceTouched";
          break;
        case 69:
          result = "kDYFEMTLComputePipelineState_timeSinceTouched";
          break;
        case 70:
          result = "kDYFEMTLAccelerationStructure_resourceIndex";
          break;
        case 71:
          result = "kDYFEMTLAccelerationStructure_heapOffset";
          break;
        case 72:
          return result;
        case 73:
          result = "kDYFEMTLAccelerationStructure_gpuResourceID";
          break;
        case 74:
          result = "kDYFEMTLIndirectCommandBuffer_gpuResourceID";
          break;
        case 75:
          result = "kDYFEMTLRenderPipelineState_gpuResourceID";
          break;
        case 76:
          result = "kDYFEMTLTexture_gpuResourceID";
          break;
        case 77:
          result = "kDYFEMTLSamplerState_gpuResourceID";
          break;
        case 78:
          result = "kDYFEMTLComputePipelineState_gpuResourceID";
          break;
        case 79:
          result = "kDYFEMTLIntersectionFunctionTable_gpuResourceID";
          break;
        case 80:
          result = "kDYFEMTLVisibleFunctionTable_gpuResourceID";
          break;
        case 81:
          result = "kDYFEMTLAccelerationStructure_state";
          break;
        case 82:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureState";
          break;
        case 83:
          result = "kDYFEMTLFunction_setDescriptor_library";
          break;
        case 84:
          result = "kDYFEMTLAccelerationStructure_children";
          break;
        case 85:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureChildren";
          break;
        case 86:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureDescriptor";
          break;
        case 87:
          result = "kDYFEMTLVisibleFunctionTable_gpuAddress";
          break;
        case 88:
          result = "kDYFEMTLIntersectionFunctionTable_setBuffers";
          break;
        case 89:
          result = "kDYFEMTLCaptureManager_sharedCaptureManager";
          break;
        default:
          if ("kDYFEBoundary_Frame" == -12544)
          {
            result = "kDYFEMTLCommandQueue_continueCommandBuffer_retainReferences";
          }

          else
          {
            if ("kDYFEBoundary_Frame" != -12543)
            {
              goto LABEL_72;
            }

            result = "kDYFEMTLIOCommandQueue_continueCommandBuffer_retainReferences";
          }

          break;
      }
    }
  }

  else if (this <= -18431)
  {
    switch(this)
    {
      case 0xFFFFB000:
        result = "kDYFEMTLFXSpatialScaler_setColorTexture";
        break;
      case 0xFFFFB001:
        result = "kDYFEMTLFXSpatialScaler_setFence";
        break;
      case 0xFFFFB002:
        result = "kDYFEMTLFXSpatialScaler_setInputContentHeight";
        break;
      case 0xFFFFB003:
        result = "kDYFEMTLFXSpatialScaler_setInputContentWidth";
        break;
      case 0xFFFFB004:
        result = "kDYFEMTLFXSpatialScaler_setOutputTexture";
        break;
      case 0xFFFFB005:
        result = "kDYFEMTLFXSpatialScaler_dealloc";
        break;
      case 0xFFFFB006:
        result = "kDYFEMTLFXSpatialScaler_encodeToCommandBuffer";
        break;
      case 0xFFFFB007:
        result = "kDYFEMTLFXTemporalScaler_setColorTexture";
        break;
      case 0xFFFFB008:
        result = "kDYFEMTLFXTemporalScaler_setDepthReversed";
        break;
      case 0xFFFFB009:
        result = "kDYFEMTLFXTemporalScaler_setDepthTexture";
        break;
      case 0xFFFFB00A:
        result = "kDYFEMTLFXTemporalScaler_setExposureTexture";
        break;
      case 0xFFFFB00B:
        result = "kDYFEMTLFXTemporalScaler_setFence";
        break;
      case 0xFFFFB00C:
        result = "kDYFEMTLFXTemporalScaler_setInputContentHeight";
        break;
      case 0xFFFFB00D:
        result = "kDYFEMTLFXTemporalScaler_setInputContentWidth";
        break;
      case 0xFFFFB00E:
        result = "kDYFEMTLFXTemporalScaler_setJitterOffsetX";
        break;
      case 0xFFFFB00F:
        result = "kDYFEMTLFXTemporalScaler_setJitterOffsetY";
        break;
      case 0xFFFFB010:
        result = "kDYFEMTLFXTemporalScaler_setMotionTexture";
        break;
      case 0xFFFFB011:
        result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleX";
        break;
      case 0xFFFFB012:
        result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleY";
        break;
      case 0xFFFFB013:
        result = "kDYFEMTLFXTemporalScaler_setOutputTexture";
        break;
      case 0xFFFFB014:
        result = "kDYFEMTLFXTemporalScaler_setPreExposure";
        break;
      case 0xFFFFB015:
        result = "kDYFEMTLFXTemporalScaler_setReset";
        break;
      case 0xFFFFB016:
        result = "kDYFEMTLFXTemporalScaler_dealloc";
        break;
      case 0xFFFFB017:
        result = "kDYFEMTLFXTemporalScaler_encodeToCommandBuffer";
        break;
      case 0xFFFFB018:
        result = "kDYFEMTLFXTemporalScaler_setReactiveMaskTexture";
        break;
      default:
        if (this == -18432)
        {
          result = "kDYFEMTLDevice_newSpatialScalerWithDescriptor";
        }

        else
        {
          if (this != -18431)
          {
            goto LABEL_72;
          }

          result = "kDYFEMTLDevice_newTemporalScalerWithDescriptor";
        }

        break;
    }
  }

  else
  {
    switch(this)
    {
      case 0xFFFFC000:
        result = "kDYFEMTLBlitCommandEncoder_setLabel";
        break;
      case 0xFFFFC001:
        result = "kDYFEMTLBlitCommandEncoder_dealloc";
        break;
      case 0xFFFFC002:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 0xFFFFC003:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 0xFFFFC004:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage";
        break;
      case 0xFFFFC005:
        result = "kDYFEMTLBlitCommandEncoder_generateMipmapsForTexture";
        break;
      case 0xFFFFC006:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_value";
        break;
      case 0xFFFFC007:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size";
        break;
      case 0xFFFFC008:
        result = "kDYFEMTLBlitCommandEncoder_endEncoding";
        break;
      case 0xFFFFC009:
        result = "kDYFEMTLBlitCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC00A:
        result = "kDYFEMTLBlitCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC00B:
        result = "kDYFEMTLBlitCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC00C:
        result = "kDYFEMTLBuffer_setLabel";
        break;
      case 0xFFFFC00D:
        result = "kDYFEMTLBuffer_setResponsibleProcess";
        break;
      case 0xFFFFC00E:
        result = "kDYFEMTLBuffer_dealloc";
        break;
      case 0xFFFFC00F:
        result = "kDYFEMTLBuffer_contents";
        break;
      case 0xFFFFC010:
        result = "kDYFEMTLBuffer_newTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 0xFFFFC011:
        result = "kDYFEMTLBuffer_setPurgeableState";
        break;
      case 0xFFFFC012:
        result = "kDYFEMTLBuffer_isPurgeable";
        break;
      case 0xFFFFC013:
        result = "kDYFEMTLCommandBuffer_setLabel";
        break;
      case 0xFFFFC014:
        result = "kDYFEMTLCommandBuffer_setProfilingEnabled";
        break;
      case 0xFFFFC015:
        result = "kDYFEMTLCommandBuffer_dealloc";
        break;
      case 0xFFFFC016:
        result = "kDYFEMTLCommandBuffer_enqueue";
        break;
      case 0xFFFFC017:
        result = "kDYFEMTLCommandBuffer_commit";
        break;
      case 0xFFFFC018:
        result = "kDYFEMTLCommandBuffer_addScheduledHandler";
        break;
      case 0xFFFFC019:
        result = "kDYFEMTLCommandBuffer_presentDrawable";
        break;
      case 0xFFFFC01A:
        result = "kDYFEMTLCommandBuffer_presentDrawable_atTime";
        break;
      case 0xFFFFC01B:
        result = "kDYFEMTLCommandBuffer_waitUntilScheduled";
        break;
      case 0xFFFFC01C:
        result = "kDYFEMTLCommandBuffer_addCompletedHandler";
        break;
      case 0xFFFFC01D:
        result = "kDYFEMTLCommandBuffer_waitUntilCompleted";
        break;
      case 0xFFFFC01E:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoder";
        break;
      case 0xFFFFC01F:
        result = "kDYFEMTLCommandBuffer_renderCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC020:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoder";
        break;
      case 0xFFFFC021:
        result = "kDYFEMTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC022:
        result = "kDYFEMTLCommandBuffer_debugCommandEncoder";
        break;
      case 0xFFFFC023:
        result = "kDYFEMTLCommandQueue_setLabel";
        break;
      case 0xFFFFC024:
        result = "kDYFEMTLCommandQueue_setBackgroundTrackingPID";
        break;
      case 0xFFFFC025:
        result = "kDYFEMTLCommandQueue_setSkipRender";
        break;
      case 0xFFFFC026:
        result = "kDYFEMTLCommandQueue_setExecutionEnabled";
        break;
      case 0xFFFFC027:
        result = "kDYFEMTLCommandQueue_setProfilingEnabled";
        break;
      case 0xFFFFC028:
        result = "kDYFEMTLCommandQueue_dealloc";
        break;
      case 0xFFFFC029:
        result = "kDYFEMTLCommandQueue_commandBuffer";
        break;
      case 0xFFFFC02A:
        result = "kDYFEMTLCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 0xFFFFC02B:
        result = "kDYFEMTLCommandQueue_insertDebugCaptureBoundary";
        break;
      case 0xFFFFC02C:
        result = "kDYFEMTLCommandQueue_finish";
        break;
      case 0xFFFFC02D:
        result = "kDYFEMTLComputeCommandEncoder_setLabel";
        break;
      case 0xFFFFC02E:
        result = "kDYFEMTLComputeCommandEncoder_dealloc";
        break;
      case 0xFFFFC02F:
        result = "kDYFEMTLComputeCommandEncoder_setComputePipelineState";
        break;
      case 0xFFFFC030:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_atIndex";
        break;
      case 0xFFFFC031:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_withRange";
        break;
      case 0xFFFFC032:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_atIndex";
        break;
      case 0xFFFFC033:
        result = "kDYFEMTLComputeCommandEncoder_setTextures_withRange";
        break;
      case 0xFFFFC034:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_atIndex";
        break;
      case 0xFFFFC035:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_withRange";
        break;
      case 0xFFFFC036:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC037:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC038:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 0xFFFFC039:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 0xFFFFC03A:
        result = "kDYFEMTLComputeCommandEncoder_executeBarrier";
        break;
      case 0xFFFFC03B:
        result = "kDYFEMTLComputeCommandEncoder_endEncoding";
        break;
      case 0xFFFFC03C:
        result = "kDYFEMTLComputeCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC03D:
        result = "kDYFEMTLComputeCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC03E:
        result = "kDYFEMTLComputeCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC03F:
        result = "kDYFEMTLComputePipelineState_dealloc";
        break;
      case 0xFFFFC040:
        result = "kDYFEMTLDepthStencilState_dealloc";
        break;
      case 0xFFFFC041:
        result = "kDYFEMTLDevice_setShaderDebugInfoCaching";
        break;
      case 0xFFFFC042:
        result = "kDYFEMTLDevice_setMetalAssertionsEnabled";
        break;
      case 0xFFFFC043:
        result = "kDYFEMTLDevice_dealloc";
        break;
      case 0xFFFFC044:
        result = "kDYFEMTLDevice_newCommandQueue";
        break;
      case 0xFFFFC045:
        result = "kDYFEMTLDevice_newCommandQueueWithMaxCommandBufferCount";
        break;
      case 0xFFFFC046:
        result = "kDYFEMTLDevice_newBufferWithLength_options";
        break;
      case 0xFFFFC047:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options";
        break;
      case 0xFFFFC048:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_deallocator";
        break;
      case 0xFFFFC049:
        result = "kDYFEMTLDevice_newDepthStencilStateWithDescriptor";
        break;
      case 0xFFFFC04A:
        result = "kDYFEMTLDevice_newTextureWithDescriptor";
        break;
      case 0xFFFFC04B:
        result = "kDYFEMTLDevice_newSamplerStateWithDescriptor";
        break;
      case 0xFFFFC04C:
        result = "kDYFEMTLDevice_newDefaultLibrary";
        break;
      case 0xFFFFC04D:
        result = "kDYFEMTLDevice_newLibraryWithFile_error";
        break;
      case 0xFFFFC04E:
        result = "kDYFEMTLDevice_newLibraryWithData_error";
        break;
      case 0xFFFFC04F:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_error";
        break;
      case 0xFFFFC050:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_completionHandler";
        break;
      case 0xFFFFC051:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_error";
        break;
      case 0xFFFFC052:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error";
        break;
      case 0xFFFFC053:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_completionHandler";
        break;
      case 0xFFFFC054:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler";
        break;
      case 0xFFFFC055:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_error";
        break;
      case 0xFFFFC056:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_reflection_error";
        break;
      case 0xFFFFC057:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_completionHandler";
        break;
      case 0xFFFFC058:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_completionHandler";
        break;
      case 0xFFFFC059:
        result = "kDYFEMTLDevice_unmapShaderSampleBuffer";
        break;
      case 0xFFFFC05A:
        result = "kDYFEMTLDevice_newTextureWithDescriptor_iosurface_plane";
        break;
      case 0xFFFFC05B:
        result = "kDYFEMTLFunction_dealloc";
        break;
      case 0xFFFFC05C:
        result = "kDYFEMTLLibrary_setLabel";
        break;
      case 0xFFFFC05D:
        result = "kDYFEMTLLibrary_dealloc";
        break;
      case 0xFFFFC05E:
        result = "kDYFEMTLLibrary_newFunctionWithName";
        break;
      case 0xFFFFC05F:
        result = "kDYFEMTLParallelRenderCommandEncoder_setSeparateCommits";
        break;
      case 0xFFFFC060:
        result = "kDYFEMTLParallelRenderCommandEncoder_setLabel";
        break;
      case 0xFFFFC061:
        result = "kDYFEMTLParallelRenderCommandEncoder_dealloc";
        break;
      case 0xFFFFC062:
        result = "kDYFEMTLParallelRenderCommandEncoder_renderCommandEncoder";
        break;
      case 0xFFFFC063:
        result = "kDYFEMTLParallelRenderCommandEncoder_endEncoding";
        break;
      case 0xFFFFC064:
        result = "kDYFEMTLParallelRenderCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC065:
        result = "kDYFEMTLParallelRenderCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC066:
        result = "kDYFEMTLParallelRenderCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC067:
        result = "kDYFEMTLRenderCommandEncoder_setLabel";
        break;
      case 0xFFFFC068:
        result = "kDYFEMTLRenderCommandEncoder_dealloc";
        break;
      case 0xFFFFC069:
        result = "kDYFEMTLRenderCommandEncoder_setRenderPipelineState";
        break;
      case 0xFFFFC06A:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_atIndex";
        break;
      case 0xFFFFC06B:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_withRange";
        break;
      case 0xFFFFC06C:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_atIndex";
        break;
      case 0xFFFFC06D:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTextures_withRange";
        break;
      case 0xFFFFC06E:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_atIndex";
        break;
      case 0xFFFFC06F:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_withRange";
        break;
      case 0xFFFFC070:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC071:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC072:
        result = "kDYFEMTLRenderCommandEncoder_setViewport";
        break;
      case 0xFFFFC073:
        result = "kDYFEMTLRenderCommandEncoder_setFrontFacingWinding";
        break;
      case 0xFFFFC074:
        result = "kDYFEMTLRenderCommandEncoder_setCullMode";
        break;
      case 0xFFFFC075:
        result = "kDYFEMTLRenderCommandEncoder_setDepthClipMode";
        break;
      case 0xFFFFC076:
        result = "kDYFEMTLRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 0xFFFFC077:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRect";
        break;
      case 0xFFFFC078:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFillMode";
        break;
      case 0xFFFFC079:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 0xFFFFC07A:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 0xFFFFC07B:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 0xFFFFC07C:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 0xFFFFC07D:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 0xFFFFC07E:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 0xFFFFC07F:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC080:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC081:
        result = "kDYFEMTLRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 0xFFFFC082:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStencilState";
        break;
      case 0xFFFFC083:
        result = "kDYFEMTLRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 0xFFFFC084:
        result = "kDYFEMTLRenderCommandEncoder_setVisibilityResultMode_offset";
        break;
      case 0xFFFFC085:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount";
        break;
      case 0xFFFFC086:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount";
        break;
      case 0xFFFFC087:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount";
        break;
      case 0xFFFFC088:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset";
        break;
      case 0xFFFFC089:
        result = "kDYFEMTLRenderCommandEncoder_setLineWidth";
        break;
      case 0xFFFFC08A:
        result = "kDYFEMTLRenderCommandEncoder_endEncoding";
        break;
      case 0xFFFFC08B:
        result = "kDYFEMTLRenderCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC08C:
        result = "kDYFEMTLRenderCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC08D:
        result = "kDYFEMTLRenderCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC08E:
        result = "kDYFEMTLRenderPipelineState_dealloc";
        break;
      case 0xFFFFC08F:
        result = "kDYFEMTLSamplerState_dealloc";
        break;
      case 0xFFFFC090:
        result = "kDYFEMTLTexture_setLabel";
        break;
      case 0xFFFFC091:
        result = "kDYFEMTLTexture_setResponsibleProcess";
        break;
      case 0xFFFFC092:
        result = "kDYFEMTLTexture_dealloc";
        break;
      case 0xFFFFC093:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice";
        break;
      case 0xFFFFC094:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
        break;
      case 0xFFFFC095:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_fromRegion_mipmapLevel";
        break;
      case 0xFFFFC096:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow";
        break;
      case 0xFFFFC097:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat";
        break;
      case 0xFFFFC098:
        result = "kDYFEMTLTexture_setPurgeableState";
        break;
      case 0xFFFFC099:
        result = "kDYFEMTLTexture_isPurgeable";
        break;
      case 0xFFFFC09A:
        result = "kDYFEMTLBlitCommandEncoder_flushResource";
        break;
      case 0xFFFFC09B:
        result = "kDYFEMTLBlitCommandEncoder_flushTexture_slice_mipmapLevel";
        break;
      case 0xFFFFC09C:
        result = "kDYFEMTLBuffer_invalidateRange";
        break;
      case 0xFFFFC09D:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_atIndex";
        break;
      case 0xFFFFC09E:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_atIndex";
        break;
      case 0xFFFFC09F:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_atIndex";
        break;
      case 0xFFFFC0A0:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_atIndex";
        break;
      case 0xFFFFC0A1:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 0xFFFFC0A2:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 0xFFFFC0A3:
        result = "kDYFEMTLTexture_invalidateRegion";
        break;
      case 0xFFFFC0A4:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup";
        break;
      case 0xFFFFC0A5:
        result = "kDYFEMTLRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 0xFFFFC0A6:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 0xFFFFC0A7:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 0xFFFFC0A8:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC0A9:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC0AA:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 0xFFFFC0AB:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeResource";
        break;
      case 0xFFFFC0AC:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeTexture_slice_level";
        break;
      case 0xFFFFC0AD:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 0xFFFFC0AE:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 0xFFFFC0AF:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options";
        break;
      case 0xFFFFC0B0:
        result = "kDYFEMTLBuffer_didModifyRange";
        break;
      case 0xFFFFC0B1:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_baseLevel_atIndex";
        break;
      case 0xFFFFC0B2:
        result = "kDYFEMTLDevice_supportsFeatureSet";
        break;
      case 0xFFFFC0B3:
        result = "kDYFEMTLDevice_supportsSampleCount";
        break;
      case 0xFFFFC0B4:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_baseLevel_atIndex";
        break;
      case 0xFFFFC0B5:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 0xFFFFC0B6:
        result = "kDYFEMTLCommandBuffer_commitAndHold";
        break;
      case 0xFFFFC0B7:
        result = "kDYFEMTLRenderCommandEncoder_textureBarrier";
        break;
      case 0xFFFFC0B8:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_error";
        break;
      case 0xFFFFC0B9:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error";
        break;
      case 0xFFFFC0BA:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_completionHandler";
        break;
      case 0xFFFFC0BB:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler";
        break;
      case 0xFFFFC0BC:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices";
        break;
      case 0xFFFFC0BD:
        result = "kDYFEMTLCommandBuffer_fragmentRenderCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC0BE:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setLabel";
        break;
      case 0xFFFFC0BF:
        result = "kDYFEMTLFragmentRenderCommandEncoder_dealloc";
        break;
      case 0xFFFFC0C0:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setRenderPipelineState";
        break;
      case 0xFFFFC0C1:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 0xFFFFC0C2:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setScissorRect";
        break;
      case 0xFFFFC0C3:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 0xFFFFC0C4:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 0xFFFFC0C5:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 0xFFFFC0C6:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 0xFFFFC0C7:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 0xFFFFC0C8:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 0xFFFFC0C9:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 0xFFFFC0CA:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 0xFFFFC0CB:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 0xFFFFC0CC:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 0xFFFFC0CD:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC0CE:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC0CF:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 0xFFFFC0D0:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStencilState";
        break;
      case 0xFFFFC0D1:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 0xFFFFC0D2:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 0xFFFFC0D3:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_triangleIndices_triangleCount";
        break;
      case 0xFFFFC0D4:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex_triangleIndices_triangleCount";
        break;
      case 0xFFFFC0D5:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex";
        break;
      case 0xFFFFC0D6:
        result = "kDYFEMTLFragmentRenderCommandEncoder_endEncoding";
        break;
      case 0xFFFFC0D7:
        result = "kDYFEMTLFragmentRenderCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC0D8:
        result = "kDYFEMTLFragmentRenderCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC0D9:
        result = "kDYFEMTLFragmentRenderCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC0DA:
        result = "kDYFEMTLDevice_supportsTextureSampleCount";
        break;
      case 0xFFFFC0DB:
        result = "kDYFEMTLDevice_newCommandQueueWithDescriptor";
        break;
      case 0xFFFFC0DC:
        result = "kDYFEMTLCommandBuffer_setListIndex";
        break;
      case 0xFFFFC0DD:
        result = "kDYFEMTLDevice_newBufferWithIOSurface";
        break;
      case 0xFFFFC0DE:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 0xFFFFC0DF:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreAction";
        break;
      case 0xFFFFC0E0:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreAction";
        break;
      case 0xFFFFC0E1:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 0xFFFFC0E2:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreAction";
        break;
      case 0xFFFFC0E3:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreAction";
        break;
      case 0xFFFFC0E4:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_atIndex";
        break;
      case 0xFFFFC0E5:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level";
        break;
      case 0xFFFFC0E6:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 0xFFFFC0E7:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreAction";
        break;
      case 0xFFFFC0E8:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreAction";
        break;
      case 0xFFFFC0E9:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithParallelExecution";
        break;
      case 0xFFFFC0EA:
        result = "kDYFEMTLComputeCommandEncoder_dispatchBarrier";
        break;
      case 0xFFFFC0EB:
        result = "kDYFEMTLComputeCommandEncoder_setImageblockWidth_height";
        break;
      case 0xFFFFC0EC:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 0xFFFFC0ED:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 0xFFFFC0EE:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC0EF:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 0xFFFFC0F0:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC0F1:
        result = "kDYFEMTLRenderCommandEncoder_setTileBytes_length_atIndex";
        break;
      case 0xFFFFC0F2:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffer_offset_atIndex";
        break;
      case 0xFFFFC0F3:
        result = "kDYFEMTLRenderCommandEncoder_setTileBufferOffset_atIndex";
        break;
      case 0xFFFFC0F4:
        result = "kDYFEMTLRenderCommandEncoder_setTileTexture_atIndex";
        break;
      case 0xFFFFC0F5:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_atIndex";
        break;
      case 0xFFFFC0F6:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC0F7:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile";
        break;
      case 0xFFFFC0F8:
        result = "kDYFEMTLFence_setLabel";
        break;
      case 0xFFFFC0F9:
        result = "kDYFEMTLFunction_functionConstantIndexByName_type";
        break;
      case 0xFFFFC0FA:
        result = "kDYFEMTLCommandQueue_setIsOpenGLQueue";
        break;
      case 0xFFFFC0FB:
        result = "kDYFEMTLCommandBuffer_presentDrawable_afterMinimumDuration";
        break;
      case 0xFFFFC0FC:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorScale";
        break;
      case 0xFFFFC0FD:
        result = "kDYFEMTLBlitCommandEncoder_waitForFence";
        break;
      case 0xFFFFC0FE:
        result = "kDYFEMTLComputeCommandEncoder_updateFence";
        break;
      case 0xFFFFC0FF:
        result = "kDYFEMTLComputeCommandEncoder_waitForFence";
        break;
      case 0xFFFFC100:
        result = "kDYFEMTLDevice_newFence";
        break;
      case 0xFFFFC101:
        result = "kDYFEMTLFence_dealloc";
        break;
      case 0xFFFFC102:
        result = "kDYFEMTLRenderCommandEncoder_updateFence_afterStages";
        break;
      case 0xFFFFC103:
        result = "kDYFEMTLRenderCommandEncoder_waitForFence_beforeStages";
        break;
      case 0xFFFFC104:
        result = "kDYFEMTLBlitCommandEncoder_updateFence";
        break;
      case 0xFFFFC105:
        result = "kDYFEMTLFunction_setLabel";
        break;
      case 0xFFFFC106:
        result = "kDYFEMTLBuffer_makeAliasable";
        break;
      case 0xFFFFC107:
        result = "kDYFEMTLDevice_heapTextureSizeWithDescriptor";
        break;
      case 0xFFFFC108:
        result = "kDYFEMTLDevice_newHeapWithDescriptor";
        break;
      case 0xFFFFC109:
        result = "kDYFEMTLHeap_setLabel";
        break;
      case 0xFFFFC10A:
        result = "kDYFEMTLHeap_dealloc";
        break;
      case 0xFFFFC10B:
        result = "kDYFEMTLHeap_newBufferWithLength_options";
        break;
      case 0xFFFFC10C:
        result = "kDYFEMTLHeap_newTextureWithDescriptor";
        break;
      case 0xFFFFC10D:
        result = "kDYFEMTLHeap_setPurgeableState";
        break;
      case 0xFFFFC10E:
        result = "kDYFEMTLTexture_makeAliasable";
        break;
      case 0xFFFFC10F:
        result = "kDYFEMTLBuffer_isAliasable";
        break;
      case 0xFFFFC110:
        result = "kDYFEMTLDevice_heapTextureSizeAndAlignWithDescriptor";
        break;
      case 0xFFFFC111:
        result = "kDYFEMTLDevice_heapBufferSizeAndAlignWithLength_options";
        break;
      case 0xFFFFC112:
        result = "kDYFEMTLHeap_setResponsibleProcess";
        break;
      case 0xFFFFC113:
        result = "kDYFEMTLHeap_isPurgeable";
        break;
      case 0xFFFFC114:
        result = "kDYFEMTLTexture_isAliasable";
        break;
      case 0xFFFFC115:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_error";
        break;
      case 0xFFFFC116:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_completionHandler";
        break;
      case 0xFFFFC117:
        result = "kDYFEMTLHeap_maxAvailableSizeWithAlignment";
        break;
      case 0xFFFFC118:
        result = "kDYFEMTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 0xFFFFC119:
        result = "kDYFEMTLBuffer_addDebugMarker_range";
        break;
      case 0xFFFFC11A:
        result = "kDYFEMTLBuffer_removeAllDebugMarkers";
        break;
      case 0xFFFFC11B:
        result = "kDYFEMTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 0xFFFFC11C:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegion";
        break;
      case 0xFFFFC11D:
        result = "kDYFEMTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked";
        break;
      case 0xFFFFC11E:
        result = "kDYFEMTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage";
        break;
      case 0xFFFFC11F:
        result = "kDYFEMTLTextureLayout_dealloc";
        break;
      case 0xFFFFC120:
        result = "kDYFEMTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator";
        break;
      case 0xFFFFC121:
        result = "kDYFEMTLDevice_newDefaultLibraryWithBundle_error";
        break;
      case 0xFFFFC122:
        result = "kDYFEMTLTexture_formattedDescription";
        break;
      case 0xFFFFC123:
        result = "kDYFEMTLDevice_minLinearTextureAlignmentForPixelFormat";
        break;
      case 0xFFFFC124:
        result = "kDYFEMTLComputePipelineState_getComputeKernelTelemetryID";
        break;
      case 0xFFFFC125:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_error";
        break;
      case 0xFFFFC126:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error";
        break;
      case 0xFFFFC127:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler";
        break;
      case 0xFFFFC128:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler";
        break;
      case 0xFFFFC129:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffers_offsets_withRange";
        break;
      case 0xFFFFC12A:
        result = "kDYFEMTLRenderCommandEncoder_setTileTextures_withRange";
        break;
      case 0xFFFFC12B:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_withRange";
        break;
      case 0xFFFFC12C:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC12D:
        result = "kDYFEMTLLibrary_setOverrideTriple";
        break;
      case 0xFFFFC12E:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error";
        break;
      case 0xFFFFC12F:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler";
        break;
      case 0xFFFFC130:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 0xFFFFC131:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadsWithIndirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC132:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup";
        break;
      case 0xFFFFC133:
        result = "kDYFEMTLRenderCommandEncoder_setViewports_count";
        break;
      case 0xFFFFC134:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRects_count";
        break;
      case 0xFFFFC135:
        result = "kDYFEMTLDevice_newPipelineLibraryWithFilePath_error";
        break;
      case 0xFFFFC136:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 0xFFFFC137:
        result = "kDYFEMTLCaptureScope_setLabel";
        break;
      case 0xFFFFC138:
        result = "kDYFEMTLCaptureScope_dealloc";
        break;
      case 0xFFFFC139:
        result = "kDYFEMTLCaptureScope_beginScope";
        break;
      case 0xFFFFC13A:
        result = "kDYFEMTLCaptureScope_endScope";
        break;
      case 0xFFFFC13B:
        result = "kDYFEMTLCaptureManager_startCaptureWithDevice";
        break;
      case 0xFFFFC13C:
        result = "kDYFEMTLCaptureManager_startCaptureWithCommandQueue";
        break;
      case 0xFFFFC13D:
        result = "kDYFEMTLCaptureManager_stopCapture";
        break;
      case 0xFFFFC13E:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptors";
        break;
      case 0xFFFFC13F:
        result = "kDYFEMTLCommandBuffer_pushDebugGroup";
        break;
      case 0xFFFFC140:
        result = "kDYFEMTLCommandBuffer_popDebugGroup";
        break;
      case 0xFFFFC141:
        result = "kDYFEMTLArgumentEncoder_setLabel";
        break;
      case 0xFFFFC142:
        result = "kDYFEMTLArgumentEncoder_dealloc";
        break;
      case 0xFFFFC143:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_offset";
        break;
      case 0xFFFFC144:
        result = "kDYFEMTLArgumentEncoder_setBuffer_offset_atIndex";
        break;
      case 0xFFFFC145:
        result = "kDYFEMTLArgumentEncoder_setBuffers_offsets_withRange";
        break;
      case 0xFFFFC146:
        result = "kDYFEMTLArgumentEncoder_setTexture_atIndex";
        break;
      case 0xFFFFC147:
        result = "kDYFEMTLArgumentEncoder_setTextures_withRange";
        break;
      case 0xFFFFC148:
        result = "kDYFEMTLArgumentEncoder_setSamplerState_atIndex";
        break;
      case 0xFFFFC149:
        result = "kDYFEMTLArgumentEncoder_setSamplerStates_withRange";
        break;
      case 0xFFFFC14A:
        result = "kDYFEMTLArgumentEncoder_constantDataAtIndex";
        break;
      case 0xFFFFC14B:
        result = "kDYFEMTLArgumentEncoder_newArgumentEncoderForBufferAtIndex";
        break;
      case 0xFFFFC14C:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex";
        break;
      case 0xFFFFC14D:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection";
        break;
      case 0xFFFFC14E:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments_count";
        break;
      case 0xFFFFC14F:
        result = "kDYFEMTLDevice_newArgumentBufferLayoutWithStructType";
        break;
      case 0xFFFFC150:
        result = "kDYFEMTLDevice_newArgumentEncoderWithLayout";
        break;
      case 0xFFFFC151:
        result = "kDYFEMTLComputeCommandEncoder_useResource_usage";
        break;
      case 0xFFFFC152:
        result = "kDYFEMTLComputeCommandEncoder_useResources_count_usage";
        break;
      case 0xFFFFC153:
        result = "kDYFEMTLComputeCommandEncoder_useHeap";
        break;
      case 0xFFFFC154:
        result = "kDYFEMTLComputeCommandEncoder_useHeaps_count";
        break;
      case 0xFFFFC155:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage";
        break;
      case 0xFFFFC156:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage";
        break;
      case 0xFFFFC157:
        result = "kDYFEMTLRenderCommandEncoder_useHeap";
        break;
      case 0xFFFFC158:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count";
        break;
      case 0xFFFFC159:
        result = "kDYFEMTLDevice_newLibraryWithURL_error";
        break;
      case 0xFFFFC15A:
        result = "kDYFEMTLLibrary_newExternFunctionWithName";
        break;
      case 0xFFFFC15B:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments";
        break;
      case 0xFFFFC15C:
        result = "kDYFEMTLDevice_indirectArgumentBufferDecodingData";
        break;
      case 0xFFFFC15D:
        result = "kDYFEMTLDevice_setIndirectArgumentBufferDecodingData";
        break;
      case 0xFFFFC15E:
        result = "kDYFEMTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags";
        break;
      case 0xFFFFC15F:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_startOffset_arrayElement";
        break;
      case 0xFFFFC160:
        result = "kDYFEMTLTextureLayout_initializeTextureMemory";
        break;
      case 0xFFFFC161:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow";
        break;
      case 0xFFFFC162:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow";
        break;
      case 0xFFFFC163:
        result = "kDYFEMTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error";
        break;
      case 0xFFFFC164:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 0xFFFFC165:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 0xFFFFC166:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 0xFFFFC167:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 0xFFFFC168:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 0xFFFFC169:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 0xFFFFC16A:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 0xFFFFC16B:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 0xFFFFC16C:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 0xFFFFC16D:
        result = "kDYFEMTLCaptureManager_notifyPostPresentHandoffSPI";
        break;
      case 0xFFFFC16E:
        result = "kDYFEMTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error";
        break;
      case 0xFFFFC16F:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegionWithIndirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC170:
        result = "kDYFEMTLDevice_newIndirectRenderCommandEncoderWithBuffer";
        break;
      case 0xFFFFC171:
        result = "kDYFEMTLDevice_newIndirectComputeCommandEncoderWithBuffer";
        break;
      case 0xFFFFC172:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType";
        break;
      case 0xFFFFC173:
        result = "kDYFEMTLCommandBuffer_videoCommandEncoder";
        break;
      case 0xFFFFC174:
        result = "kDYFEMTLCommandBuffer_doCorruptCBSPI";
        break;
      case 0xFFFFC175:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineState";
        break;
      case 0xFFFFC176:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineStates_count";
        break;
      case 0xFFFFC177:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithScope";
        break;
      case 0xFFFFC178:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithResources_count";
        break;
      case 0xFFFFC179:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineState";
        break;
      case 0xFFFFC17A:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineStates_count";
        break;
      case 0xFFFFC17B:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 0xFFFFC17C:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithScope_afterStages_beforeStages";
        break;
      case 0xFFFFC17D:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithResources_count_afterStages_beforeStages";
        break;
      case 0xFFFFC17E:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineState_atIndex";
        break;
      case 0xFFFFC17F:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineStates_withRange";
        break;
      case 0xFFFFC180:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineState_atIndex";
        break;
      case 0xFFFFC181:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineStates_withRange";
        break;
      case 0xFFFFC182:
        result = "kDYFEMTLDevice_minimumTextureBufferAlignmentForPixelFormat";
        break;
      case 0xFFFFC183:
        result = "kDYFEMTLDevice_newEvent";
        break;
      case 0xFFFFC184:
        result = "kDYFEMTLDevice_newSharedEvent";
        break;
      case 0xFFFFC185:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess";
        break;
      case 0xFFFFC186:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess_slice_level";
        break;
      case 0xFFFFC187:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess";
        break;
      case 0xFFFFC188:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess_slice_level";
        break;
      case 0xFFFFC189:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value";
        break;
      case 0xFFFFC18A:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value";
        break;
      case 0xFFFFC18B:
        result = "kDYFEMTLComputePipelineState_resourceIndex";
        break;
      case 0xFFFFC18C:
        result = "kDYFEMTLRenderCommandEncoder_setPointSize";
        break;
      case 0xFFFFC18D:
        result = "kDYFEMTLRenderCommandEncoder_setClipPlane_p2_p3_p4_atIndex";
        break;
      case 0xFFFFC18E:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 0xFFFFC18F:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 0xFFFFC190:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled_index";
        break;
      case 0xFFFFC191:
        result = "kDYFEMTLSamplerState_resourceIndex";
        break;
      case 0xFFFFC192:
        result = "kDYFEMTLSharedTextureHandle_dealloc";
        break;
      case 0xFFFFC193:
        result = "kDYFEMTLTexture_newSharedHandle";
        break;
      case 0xFFFFC194:
        result = "kDYFEMTLDevice_newSharedTextureWithDescriptor";
        break;
      case 0xFFFFC195:
        result = "kDYFEMTLDevice_newSharedTextureWithHandle";
        break;
      case 0xFFFFC196:
        result = "kDYFEMTLDevice_tileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 0xFFFFC197:
        result = "kDYFEMTLBlitCommandEncoder_getTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset";
        break;
      case 0xFFFFC198:
        result = "kDYFEMTLBlitCommandEncoder_resetTextureAccessCounters_region_mipLevel_slice";
        break;
      case 0xFFFFC199:
        result = "kDYFEMTLSharedEvent_setSignaledValue";
        break;
      case 0xFFFFC19A:
        result = "kDYFEMTLSharedEvent_setLabel";
        break;
      case 0xFFFFC19B:
        result = "kDYFEMTLSharedEvent_dealloc";
        break;
      case 0xFFFFC19C:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options";
        break;
      case 0xFFFFC19D:
        result = "kDYFEMTLDevice_reserveResourceIndicesForResourceType_indices_indexCount";
        break;
      case 0xFFFFC19E:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled";
        break;
      case 0xFFFFC19F:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options";
        break;
      case 0xFFFFC1A0:
        result = "kDYFEMTLDevice_getIndirectCommandBufferHeaderSize";
        break;
      case 0xFFFFC1A1:
        result = "kDYFEMTLCommandBuffer_addPurgedResource";
        break;
      case 0xFFFFC1A2:
        result = "kDYFEMTLCommandBuffer_addPurgedHeap";
        break;
      case 0xFFFFC1A3:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 0xFFFFC1A4:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 0xFFFFC1A5:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC1A6:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 0xFFFFC1A7:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC1A8:
        result = "kDYFEMTLBlitCommandEncoder_resetCommandsInBuffer_withRange";
        break;
      case 0xFFFFC1A9:
        result = "kDYFEMTLBlitCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex";
        break;
      case 0xFFFFC1AA:
        result = "kDYFEMTLBlitCommandEncoder_optimizeIndirectCommandBuffer_withRange";
        break;
      case 0xFFFFC1AB:
        result = "kDYFEMTLIndirectRenderCommand_dealloc";
        break;
      case 0xFFFFC1AC:
        result = "kDYFEMTLIndirectRenderCommand_setRenderPipelineState";
        break;
      case 0xFFFFC1AD:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_atIndex";
        break;
      case 0xFFFFC1AE:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentBuffer_offset_atIndex";
        break;
      case 0xFFFFC1AF:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 0xFFFFC1B0:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 0xFFFFC1B1:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 0xFFFFC1B2:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 0xFFFFC1B3:
        result = "kDYFEMTLIndirectRenderCommand_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 0xFFFFC1B4:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 0xFFFFC1B5:
        result = "kDYFEMTLIndirectRenderCommand_nop";
        break;
      case 0xFFFFC1B6:
        result = "kDYFEMTLIndirectRenderCommand_end";
        break;
      case 0xFFFFC1B7:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 0xFFFFC1B8:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorScale";
        break;
      case 0xFFFFC1B9:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 0xFFFFC1BA:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 0xFFFFC1BB:
        result = "kDYFEMTLIndirectRenderCommand_dispatchThreadsPerTile";
        break;
      case 0xFFFFC1BC:
        result = "kDYFEMTLIndirectRenderCommand_setVertexArgument_offset_atIndex";
        break;
      case 0xFFFFC1BD:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentArgument_offset_atIndex";
        break;
      case 0xFFFFC1BE:
        result = "kDYFEMTLIndirectRenderCommand_setTileArgument_offset_atIndex";
        break;
      case 0xFFFFC1BF:
        result = "kDYFEMTLIndirectRenderCommand_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 0xFFFFC1C0:
        result = "kDYFEMTLIndirectRenderCommand_endIndirectCommandBuffer";
        break;
      case 0xFFFFC1C1:
        result = "kDYFEMTLIndirectComputeCommand_dealloc";
        break;
      case 0xFFFFC1C2:
        result = "kDYFEMTLIndirectComputeCommand_setComputePipelineState";
        break;
      case 0xFFFFC1C3:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_atIndex";
        break;
      case 0xFFFFC1C4:
        result = "kDYFEMTLIndirectComputeCommand_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 0xFFFFC1C5:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 0xFFFFC1C6:
        result = "kDYFEMTLIndirectComputeCommand_nop";
        break;
      case 0xFFFFC1C7:
        result = "kDYFEMTLIndirectComputeCommand_endIndirectCommandBuffer";
        break;
      case 0xFFFFC1C8:
        result = "kDYFEMTLIndirectComputeCommand_setKernelArgument_offset_atIndex";
        break;
      case 0xFFFFC1C9:
        result = "kDYFEMTLIndirectComputeCommand_setThreadgroupMemoryLength_atIndex";
        break;
      case 0xFFFFC1CA:
        result = "kDYFEMTLIndirectComputeCommand_setStageInRegion";
        break;
      case 0xFFFFC1CB:
        result = "kDYFEMTLIndirectCommandBuffer_setLabel";
        break;
      case 0xFFFFC1CC:
        result = "kDYFEMTLIndirectCommandBuffer_setResponsibleProcess";
        break;
      case 0xFFFFC1CD:
        result = "kDYFEMTLIndirectCommandBuffer_dealloc";
        break;
      case 0xFFFFC1CE:
        result = "kDYFEMTLIndirectCommandBuffer_indirectRenderCommandAtIndex";
        break;
      case 0xFFFFC1CF:
        result = "kDYFEMTLIndirectCommandBuffer_indirectComputeCommandAtIndex";
        break;
      case 0xFFFFC1D0:
        result = "kDYFEMTLIndirectCommandBuffer_setPurgeableState";
        break;
      case 0xFFFFC1D1:
        result = "kDYFEMTLIndirectCommandBuffer_makeAliasable";
        break;
      case 0xFFFFC1D2:
        result = "kDYFEMTLIndirectCommandBuffer_isAliasable";
        break;
      case 0xFFFFC1D3:
        result = "kDYFEMTLIndirectCommandBuffer_isPurgeable";
        break;
      case 0xFFFFC1D4:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffer_atIndex";
        break;
      case 0xFFFFC1D5:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffers_withRange";
        break;
      case 0xFFFFC1D6:
        result = "kDYFEMTLBuffer_newRemoteBufferViewForDevice";
        break;
      case 0xFFFFC1D7:
        result = "kDYFEMTLTexture_newRemoteTextureViewForDevice";
        break;
      case 0xFFFFC1D8:
        result = "kDYFEMTLDevice_newSharedEventWithMachPort";
        break;
      case 0xFFFFC1D9:
        result = "kDYFEMTLSharedEvent_eventPort";
        break;
      case 0xFFFFC1DA:
        result = "kDYFEMTLTexture_newSharedTextureHandle";
        break;
      case 0xFFFFC1DB:
        result = "kDYFEMTLDevice_newSharedEventWithHandle";
        break;
      case 0xFFFFC1DC:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmitted";
        break;
      case 0xFFFFC1DD:
        result = "kDYFEMTLSharedEvent_newSharedEventHandle";
        break;
      case 0xFFFFC1DE:
        result = "kDYFEMTLIndirectRenderCommand_reset";
        break;
      case 0xFFFFC1DF:
        result = "kDYFEMTLIndirectComputeCommand_reset";
        break;
      case 0xFFFFC1E0:
        result = "kDYFEMTLBuffer_containsResource";
        break;
      case 0xFFFFC1E1:
        result = "kDYFEMTLTexture_containsResource";
        break;
      case 0xFFFFC1E2:
        result = "kDYFEMTLDevice_supportsPrimitiveType";
        break;
      case 0xFFFFC1E3:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptorsUsingPrefixForNames";
        break;
      case 0xFFFFC1E4:
        result = "kDYFEMTLDevice_newResourceGroupFromResources_count";
        break;
      case 0xFFFFC1E5:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDispatchType_programInfoBuffer_capacity";
        break;
      case 0xFFFFC1E6:
        result = "kDYFEMTLCommandBuffer_setResourceGroups_count";
        break;
      case 0xFFFFC1E7:
        result = "kDYFEMTLCommandBuffer_dropResourceGroups_count";
        break;
      case 0xFFFFC1E8:
        result = "kDYFEMTLIndirectCommandBuffer_resetWithRange";
        break;
      case 0xFFFFC1E9:
        result = "kDYFEMTLIndirectCommandBuffer_containsResource";
        break;
      case 0xFFFFC1EA:
        result = "kDYFEMTLTexture_isShareable";
        break;
      case 0xFFFFC1EB:
        result = "kDYFEMTLMotionEstimationPipeline_dealloc";
        break;
      case 0xFFFFC1EC:
        result = "kDYFEMTLDevice_motionEstimatorCapabilities";
        break;
      case 0xFFFFC1ED:
        result = "kDYFEMTLDevice_newMotionEstimationPipelineWithDescriptor";
        break;
      case 0xFFFFC1EE:
        result = "kDYFEMTLVideoCommandEncoder_setLabel";
        break;
      case 0xFFFFC1EF:
        result = "kDYFEMTLVideoCommandEncoder_dealloc";
        break;
      case 0xFFFFC1F0:
        result = "kDYFEMTLVideoCommandEncoder_setMotionEstimationPipeline";
        break;
      case 0xFFFFC1F1:
        result = "kDYFEMTLVideoCommandEncoder_generateMotionVectorsForTexture_previousTexture_resultBuffer_bufferOffset";
        break;
      case 0xFFFFC1F2:
        result = "kDYFEMTLVideoCommandEncoder_waitForFence";
        break;
      case 0xFFFFC1F3:
        result = "kDYFEMTLVideoCommandEncoder_updateFence";
        break;
      case 0xFFFFC1F4:
        result = "kDYFEMTLVideoCommandEncoder_endEncoding";
        break;
      case 0xFFFFC1F5:
        result = "kDYFEMTLVideoCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC1F6:
        result = "kDYFEMTLVideoCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC1F7:
        result = "kDYFEMTLVideoCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC1F8:
        result = "kDYFEMTLEvent_setLabel";
        break;
      case 0xFFFFC1F9:
        result = "kDYFEMTLEvent_dealloc";
        break;
      case 0xFFFFC1FA:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount";
        break;
      case 0xFFFFC1FB:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_toTexture";
        break;
      case 0xFFFFC1FC:
        result = "kDYFEMTLBlitCommandEncoder_resolveCountersWithIndexRange_sampleBuffer_resolvedBuffer";
        break;
      case 0xFFFFC1FD:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 0xFFFFC1FE:
        result = "kDYFEMTLBuffer_setResourceIndex";
        break;
      case 0xFFFFC1FF:
        result = "kDYFEMTLCommandBuffer_debugBufferContentsWithLength";
        break;
      case 0xFFFFC200:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlFinalizeOperation_resourceGroups_count";
        break;
      case 0xFFFFC201:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlTagOperation_resourceGroups_count";
        break;
      case 0xFFFFC202:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoder";
        break;
      case 0xFFFFC203:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 0xFFFFC204:
        result = "kDYFEMTLComputePipelineState_setResourceIndex";
        break;
      case 0xFFFFC205:
        result = "kDYFEMTLCounterSampleBuffer_dealloc";
        break;
      case 0xFFFFC206:
        result = "kDYFEMTLDeserializationContext_dealloc";
        break;
      case 0xFFFFC207:
        result = "kDYFEMTLDeserializationContext_functionWithFunctionRef";
        break;
      case 0xFFFFC208:
        result = "kDYFEMTLDevice_setCurrentUtilityBufferIndex";
        break;
      case 0xFFFFC209:
        result = "kDYFEMTLDevice_setResourceIndirectionEnabled";
        break;
      case 0xFFFFC20A:
        result = "kDYFEMTLDevice_setUtilityBuffers";
        break;
      case 0xFFFFC20B:
        result = "kDYFEMTLDevice_addBufferToGlobalResourceTable";
        break;
      case 0xFFFFC20C:
        result = "kDYFEMTLDevice_addComputePipelineStateToGlobalResourceTable";
        break;
      case 0xFFFFC20D:
        result = "kDYFEMTLDevice_addIndirectCommandBufferToGlobalResourceTable";
        break;
      case 0xFFFFC20E:
        result = "kDYFEMTLDevice_addRenderPipelineStateToGlobalResourceTable";
        break;
      case 0xFFFFC20F:
        result = "kDYFEMTLDevice_addSamplerStateToGlobalResourceTable";
        break;
      case 0xFFFFC210:
        result = "kDYFEMTLDevice_addTextureToGlobalResourceTable";
        break;
      case 0xFFFFC211:
        result = "kDYFEMTLDevice_allowLibrariesFromOtherPlatforms";
        break;
      case 0xFFFFC212:
        result = "kDYFEMTLDevice_createNewUtilityBuffer";
        break;
      case 0xFFFFC213:
        result = "kDYFEMTLDevice_describeCounter";
        break;
      case 0xFFFFC214:
        result = "kDYFEMTLDevice_indirectBufferAddressForResourceIndex_offset";
        break;
      case 0xFFFFC215:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_atResourceIndex";
        break;
      case 0xFFFFC216:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_atResourceIndex_deallocator";
        break;
      case 0xFFFFC217:
        result = "kDYFEMTLDevice_newBufferWithLength_options_atResourceIndex";
        break;
      case 0xFFFFC218:
        result = "kDYFEMTLDevice_newCounterSampleBufferWithDescriptor_error";
        break;
      case 0xFFFFC219:
        result = "kDYFEMTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 0xFFFFC21A:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithScreenSize_layerCount_layers";
        break;
      case 0xFFFFC21B:
        result = "kDYFEMTLDevice_newRenderPipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 0xFFFFC21C:
        result = "kDYFEMTLDevice_offsetFromIndirectBufferAddress";
        break;
      case 0xFFFFC21D:
        result = "kDYFEMTLDevice_pollSampleBuffer_resolvedBuffer";
        break;
      case 0xFFFFC21E:
        result = "kDYFEMTLDevice_removeResourceFromGlobalResourceTable_resourceType";
        break;
      case 0xFFFFC21F:
        result = "kDYFEMTLDevice_requiresIndirectionForAllResourceTypes";
        break;
      case 0xFFFFC220:
        result = "kDYFEMTLDevice_resolveCountersWithIndexRange_sampleBuffer";
        break;
      case 0xFFFFC221:
        result = "kDYFEMTLDevice_resourceIndexFromIndirectBufferAddress";
        break;
      case 0xFFFFC222:
        result = "kDYFEMTLDevice_sampleCountersAtInterval_sampleBuffer_error";
        break;
      case 0xFFFFC223:
        result = "kDYFEMTLDevice_sampleTimeStamps_gpuTimeStamp";
        break;
      case 0xFFFFC224:
        result = "kDYFEMTLDevice_serializeRenderPipelineDescriptor";
        break;
      case 0xFFFFC225:
        result = "kDYFEMTLDevice_setGPUAssertionsEnabled";
        break;
      case 0xFFFFC226:
        result = "kDYFEMTLDevice_setResourcesPurgeableState_newState_oldState_count";
        break;
      case 0xFFFFC227:
        result = "kDYFEMTLDevice_useDeviceResourceTableForType";
        break;
      case 0xFFFFC228:
        result = "kDYFEMTLDevice_utilityBufferForComputeCommandEncoder";
        break;
      case 0xFFFFC229:
        result = "kDYFEMTLDevice_utilityBufferForRenderCommandEncoder";
        break;
      case 0xFFFFC22A:
        result = "kDYFEMTLFunction_newFunctionWithPluginData_bitcodeType";
        break;
      case 0xFFFFC22B:
        result = "kDYFEMTLHeap_newBufferWithLength_options_atOffset";
        break;
      case 0xFFFFC22C:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_atOffset";
        break;
      case 0xFFFFC22D:
        result = "kDYFEMTLIndirectComputeCommand_clearBarrier";
        break;
      case 0xFFFFC22E:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreads_threadsPerThreadgroup";
        break;
      case 0xFFFFC22F:
        result = "kDYFEMTLIndirectComputeCommand_setBarrier";
        break;
      case 0xFFFFC230:
        result = "kDYFEMTLIndirectComputeCommand_setImageBlockWidth_height";
        break;
      case 0xFFFFC231:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 0xFFFFC232:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings";
        break;
      case 0xFFFFC233:
        result = "kDYFEMTLRenderCommandEncoder_useHeap_stages";
        break;
      case 0xFFFFC234:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count_stages";
        break;
      case 0xFFFFC235:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage_stages";
        break;
      case 0xFFFFC236:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage_stages";
        break;
      case 0xFFFFC237:
        result = "kDYFEMTLRenderPipelineState_setResourceIndex";
        break;
      case 0xFFFFC238:
        result = "kDYFEMTLSamplerState_setResourceIndex";
        break;
      case 0xFFFFC239:
        result = "kDYFEMTLTexture_setResourceIndex";
        break;
      case 0xFFFFC23A:
        result = "kDYFEMTLDevice_newComputePipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 0xFFFFC23B:
        result = "kDYFEMTLDevice_serializeComputePipelineDescriptor";
        break;
      case 0xFFFFC23C:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationMode_value";
        break;
      case 0xFFFFC23D:
        result = "kDYFEMTLCommandQueue_getBackgroundGPUPriority";
        break;
      case 0xFFFFC23E:
        result = "kDYFEMTLCommandQueue_getGPUPriority";
        break;
      case 0xFFFFC23F:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority";
        break;
      case 0xFFFFC240:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority_offset";
        break;
      case 0xFFFFC241:
        result = "kDYFEMTLCommandQueue_setCompletionQueue";
        break;
      case 0xFFFFC242:
        result = "kDYFEMTLCommandQueue_setGPUPriority";
        break;
      case 0xFFFFC243:
        result = "kDYFEMTLCommandQueue_setGPUPriority_offset";
        break;
      case 0xFFFFC244:
        result = "kDYFEMTLCommandQueue_setSubmissionQueue";
        break;
      case 0xFFFFC245:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_atOffset";
        break;
      case 0xFFFFC246:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC247:
        result = "kDYFEMTLRasterizationRateMap_dealloc";
        break;
      case 0xFFFFC248:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 0xFFFFC249:
        result = "kDYFEMTLRasterizationRateMap_physicalCoordinate_forLayer";
        break;
      case 0xFFFFC24A:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 0xFFFFC24B:
        result = "kDYFEMTLRasterizationRateMap_physicalSizeForLayer";
        break;
      case 0xFFFFC24C:
        result = "kDYFEMTLDevice_tileSizeWithSparsePageSize_textureType_pixelFormat_sampleCount";
        break;
      case 0xFFFFC24D:
        result = "kDYFEMTLRasterizationRateMap_screenCoordinate_forLayer";
        break;
      case 0xFFFFC24E:
        result = "kDYFEMTLResourceStateCommandEncoder_setLabel";
        break;
      case 0xFFFFC24F:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithDescriptor";
        break;
      case 0xFFFFC250:
        result = "kDYFEMTLResourceStateCommandEncoder_copyMappingStateFromTexture_mipLevel_slice_toBuffer_offset_numTiles";
        break;
      case 0xFFFFC251:
        result = "kDYFEMTLDevice_supportsRasterizationRateMapWithLayerCount";
        break;
      case 0xFFFFC252:
        result = "kDYFEMTLResourceStateCommandEncoder_dealloc";
        break;
      case 0xFFFFC253:
        result = "kDYFEMTLResourceStateCommandEncoder_endEncoding";
        break;
      case 0xFFFFC254:
        result = "kDYFEMTLResourceStateCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC255:
        result = "kDYFEMTLResourceStateCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC256:
        result = "kDYFEMTLResourceStateCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC257:
        result = "kDYFEMTLResourceStateCommandEncoder_updateFence";
        break;
      case 0xFFFFC258:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 0xFFFFC259:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 0xFFFFC25A:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 0xFFFFC25B:
        result = "kDYFEMTLResourceStateCommandEncoder_waitForFence";
        break;
      case 0xFFFFC25C:
        result = "kDYFEMTLDevice_supportsFamily";
        break;
      case 0xFFFFC25D:
        result = "kDYFEMTLDevice_supportsVersion";
        break;
      case 0xFFFFC25E:
        result = "kDYFEMTLHeap_newBufferWithLength_options_offset";
        break;
      case 0xFFFFC25F:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_offset";
        break;
      case 0xFFFFC260:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_offset";
        break;
      case 0xFFFFC261:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle";
        break;
      case 0xFFFFC262:
        result = "kDYFEMTLDevice_newPrecompiledComputePipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 0xFFFFC263:
        result = "kDYFEMTLIndirectComputeCommand_setImageblockWidth_height";
        break;
      case 0xFFFFC264:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_functionCache_error";
        break;
      case 0xFFFFC265:
        result = "kDYFEMTLRasterizationRateMap_mapPhysicalToScreenCoordinates_forLayer";
        break;
      case 0xFFFFC266:
        result = "kDYFEMTLRasterizationRateMap_mapScreenToPhysicalCoordinates_forLayer";
        break;
      case 0xFFFFC267:
        result = "kDYFEMTLResourceGroup_dealloc";
        break;
      case 0xFFFFC268:
        result = "kDYFEMTLBuffer_isComplete";
        break;
      case 0xFFFFC269:
        result = "kDYFEMTLBuffer_waitUntilComplete";
        break;
      case 0xFFFFC26A:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAllResources_count";
        break;
      case 0xFFFFC26B:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAnyResources_count";
        break;
      case 0xFFFFC26C:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasResource";
        break;
      case 0xFFFFC26D:
        result = "kDYFEMTLIndirectCommandBuffer_isComplete";
        break;
      case 0xFFFFC26E:
        result = "kDYFEMTLIndirectCommandBuffer_waitUntilComplete";
        break;
      case 0xFFFFC26F:
        result = "kDYFEMTLTexture_isComplete";
        break;
      case 0xFFFFC270:
        result = "kDYFEMTLTexture_waitUntilComplete";
        break;
      case 0xFFFFC271:
        result = "kDYFEMTLDevice_convertSparsePixelRegions_toTileRegions_withTileSize_alignmentMode_numRegions";
        break;
      case 0xFFFFC272:
        result = "kDYFEMTLDevice_convertSparseTileRegions_toPixelRegions_withTileSize_numRegions";
        break;
      case 0xFFFFC273:
        result = "kDYFEMTLDevice_supportsVertexAmplificationCount";
        break;
      case 0xFFFFC274:
        result = "kDYFEMTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset";
        break;
      case 0xFFFFC275:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 0xFFFFC276:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 0xFFFFC277:
        result = "kDYFEMTLCounterSampleBuffer_resolveCounterRange";
        break;
      case 0xFFFFC278:
        result = "kDYFEMTLCounterSet_dealloc";
        break;
      case 0xFFFFC279:
        result = "kDYFEMTLDevice_sampleTimestamps_gpuTimestamp";
        break;
      case 0xFFFFC27A:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 0xFFFFC27B:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value_timeout";
        break;
      case 0xFFFFC27C:
        result = "kDYFEMTLCounter_dealloc";
        break;
      case 0xFFFFC27D:
        result = "kDYFEMTLDevice_copyShaderCacheToPath";
        break;
      case 0xFFFFC27E:
        result = "kDYFEMTLDevice_serializeStructType_version";
        break;
      case 0xFFFFC27F:
        result = "kDYFEMTLPipelineCache_dealloc";
        break;
      case 0xFFFFC280:
        result = "kDYFEMTLPipelineLibrary_setDisableRunTimeCompilation";
        break;
      case 0xFFFFC281:
        result = "kDYFEMTLPipelineLibrary_setLabel";
        break;
      case 0xFFFFC282:
        result = "kDYFEMTLPipelineLibrary_dealloc";
        break;
      case 0xFFFFC283:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineDescriptorWithName_error";
        break;
      case 0xFFFFC284:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error";
        break;
      case 0xFFFFC285:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineDescriptorWithName_error";
        break;
      case 0xFFFFC286:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error";
        break;
      case 0xFFFFC287:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 0xFFFFC288:
        result = "kDYFEMTLCaptureManager_startCaptureWithDescriptor_error";
        break;
      case 0xFFFFC289:
        result = "kDYFEMTLCaptureManager_startCaptureWithScope";
        break;
      case 0xFFFFC28A:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithDevice";
        break;
      case 0xFFFFC28B:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithCommandQueue";
        break;
      case 0xFFFFC28C:
        result = "kDYFEMTLComputeCommandEncoder_enableNullBufferBinds";
        break;
      case 0xFFFFC28D:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_functionType";
        break;
      case 0xFFFFC28E:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_inputsDescription_functionType";
        break;
      case 0xFFFFC28F:
        result = "kDYFEMTLRenderCommandEncoder_setAlphaTestReferenceValue";
        break;
      case 0xFFFFC290:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_yInvert_atIndex";
        break;
      case 0xFFFFC291:
        result = "kDYFEMTLRenderCommandEncoder_setDepthCleared";
        break;
      case 0xFFFFC292:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 0xFFFFC293:
        result = "kDYFEMTLRenderCommandEncoder_setProvokingVertexMode";
        break;
      case 0xFFFFC294:
        result = "kDYFEMTLRenderCommandEncoder_setStencilCleared";
        break;
      case 0xFFFFC295:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level";
        break;
      case 0xFFFFC296:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 0xFFFFC297:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFrontFillMode_backFillMode";
        break;
      case 0xFFFFC298:
        result = "kDYFEMTLRenderCommandEncoder_setViewportTransformEnabled";
        break;
      case 0xFFFFC299:
        result = "kDYFEMTLDevice_minLinearTextureBaseAddressAlignmentForDescriptor";
        break;
      case 0xFFFFC29A:
        result = "kDYFEMTLDevice_minLinearTexturePitchAlignmentForDescriptor_mustMatchExactly";
        break;
      case 0xFFFFC29B:
        result = "kDYFEMTLDevice_newBinaryArchiveWithDescriptor_error";
        break;
      case 0xFFFFC29C:
        result = "kDYFEMTLDevice_requiredLinearTextureBytesPerRowForDescriptor";
        break;
      case 0xFFFFC29D:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary";
        break;
      case 0xFFFFC29E:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary";
        break;
      case 0xFFFFC29F:
        result = "kDYFEMTLFunction_reflectionWithOptions_pipelineLibrary";
        break;
      case 0xFFFFC2A0:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType_substreamCount";
        break;
      case 0xFFFFC2A1:
        result = "kDYFEMTLComputeCommandEncoder_setSubstream";
        break;
      case 0xFFFFC2A2:
        result = "kDYFEMTLComputeCommandEncoder_signalProgress";
        break;
      case 0xFFFFC2A3:
        result = "kDYFEMTLComputeCommandEncoder_waitForProgress";
        break;
      case 0xFFFFC2A4:
        result = "kDYFEMTLDevice_maximumComputeSubstreams";
        break;
      case 0xFFFFC2A5:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_gpuAddress";
        break;
      case 0xFFFFC2A6:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_gpuAddress_deallocator";
        break;
      case 0xFFFFC2A7:
        result = "kDYFEMTLDevice_newBufferWithLength_options_gpuAddress";
        break;
      case 0xFFFFC2A8:
        result = "kDYFEMTLDevice_reserveGPUAddressRange";
        break;
      case 0xFFFFC2A9:
        result = "kDYFEMTLCommandBuffer_addLoggingForType_handler";
        break;
      case 0xFFFFC2AA:
        result = "kDYFEMTLCommandBufferEncoderInfo_dealloc";
        break;
      case 0xFFFFC2AB:
        result = "kDYFEMTLCommandQueue_commandBufferWithDescriptor";
        break;
      case 0xFFFFC2AC:
        result = "kDYFEMTLComputePipelineState_functionPointerHandleWithFunction";
        break;
      case 0xFFFFC2AD:
        result = "kDYFEMTLComputePipelineState_functionPointerHandlesWithFunctions_range";
        break;
      case 0xFFFFC2AE:
        result = "kDYFEMTLDevice_setCommandBufferErrorOptions";
        break;
      case 0xFFFFC2AF:
        result = "kDYFEMTLDevice_newBinaryLibraryWithOptions_url_error";
        break;
      case 0xFFFFC2B0:
        result = "kDYFEMTLDevice_newDynamicLibrary_computeDescriptor_error";
        break;
      case 0xFFFFC2B1:
        result = "kDYFEMTLDevice_newDynamicLibrary_error";
        break;
      case 0xFFFFC2B2:
        result = "kDYFEMTLDevice_newDynamicLibraryFromURL_error";
        break;
      case 0xFFFFC2B3:
        result = "kDYFEMTLDevice_newLibraryWithDAG_functions_error";
        break;
      case 0xFFFFC2B4:
        result = "kDYFEMTLFunctionLog_dealloc";
        break;
      case 0xFFFFC2B5:
        result = "kDYFEMTLStackTraceEntry_dealloc";
        break;
      case 0xFFFFC2B6:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_resourceIndex";
        break;
      case 0xFFFFC2B7:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex";
        break;
      case 0xFFFFC2B8:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex";
        break;
      case 0xFFFFC2B9:
        result = "kDYFEMTLBinaryArchive_addComputePipelineStateWithDescriptor_error";
        break;
      case 0xFFFFC2BA:
        result = "kDYFEMTLBinaryArchive_addLibrary_computePipelineDescriptor_error";
        break;
      case 0xFFFFC2BB:
        result = "kDYFEMTLBinaryArchive_dealloc";
        break;
      case 0xFFFFC2BC:
        result = "kDYFEMTLBinaryArchive_writeToURL_error";
        break;
      case 0xFFFFC2BD:
        result = "kDYFEMTLBinaryLibrary_setLabel";
        break;
      case 0xFFFFC2BE:
        result = "kDYFEMTLBinaryLibrary_addBinaryEntry";
        break;
      case 0xFFFFC2BF:
        result = "kDYFEMTLBinaryLibrary_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC2C0:
        result = "kDYFEMTLBinaryLibrary_dealloc";
        break;
      case 0xFFFFC2C1:
        result = "kDYFEMTLBinaryLibrary_getBinaryDataWithKey";
        break;
      case 0xFFFFC2C2:
        result = "kDYFEMTLBinaryLibrary_removeComputePipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC2C3:
        result = "kDYFEMTLBinaryLibrary_serializeToURL_error";
        break;
      case 0xFFFFC2C4:
        result = "kDYFEMTLDynamicLibrary_setLabel";
        break;
      case 0xFFFFC2C5:
        result = "kDYFEMTLDynamicLibrary_dealloc";
        break;
      case 0xFFFFC2C6:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_error";
        break;
      case 0xFFFFC2C7:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoder";
        break;
      case 0xFFFFC2C8:
        result = "kDYFEMTLDevice_accelerationStructureSizesWithDescriptor";
        break;
      case 0xFFFFC2C9:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_error";
        break;
      case 0xFFFFC2CA:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_binaryArchives";
        break;
      case 0xFFFFC2CB:
        result = "kDYFEMTLFunction_reflectionWithOptions_binaryArchives";
        break;
      case 0xFFFFC2CC:
        result = "kDYFEMTLBinaryArchive_setLabel";
        break;
      case 0xFFFFC2CD:
        result = "kDYFEMTLBinaryArchive_addBinaryEntry_forKey";
        break;
      case 0xFFFFC2CE:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC2CF:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC2D0:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC2D1:
        result = "kDYFEMTLBinaryArchive_getBinaryDataForKey";
        break;
      case 0xFFFFC2D2:
        result = "kDYFEMTLBinaryArchive_serializeToURL_error";
        break;
      case 0xFFFFC2D3:
        result = "kDYFEMTLAccelerationStructure_setLabel";
        break;
      case 0xFFFFC2D4:
        result = "kDYFEMTLAccelerationStructure_setResponsibleProcess";
        break;
      case 0xFFFFC2D5:
        result = "kDYFEMTLAccelerationStructure_dealloc";
        break;
      case 0xFFFFC2D6:
        result = "kDYFEMTLAccelerationStructure_doesAliasAllResources_count";
        break;
      case 0xFFFFC2D7:
        result = "kDYFEMTLAccelerationStructure_doesAliasAnyResources_count";
        break;
      case 0xFFFFC2D8:
        result = "kDYFEMTLAccelerationStructure_doesAliasResource";
        break;
      case 0xFFFFC2D9:
        result = "kDYFEMTLAccelerationStructure_isAliasable";
        break;
      case 0xFFFFC2DA:
        result = "kDYFEMTLAccelerationStructure_isComplete";
        break;
      case 0xFFFFC2DB:
        result = "kDYFEMTLAccelerationStructure_isPurgeable";
        break;
      case 0xFFFFC2DC:
        result = "kDYFEMTLAccelerationStructure_isWriteComplete";
        break;
      case 0xFFFFC2DD:
        result = "kDYFEMTLAccelerationStructure_makeAliasable";
        break;
      case 0xFFFFC2DE:
        result = "kDYFEMTLAccelerationStructure_setPurgeableState";
        break;
      case 0xFFFFC2DF:
        result = "kDYFEMTLAccelerationStructure_waitUntilComplete";
        break;
      case 0xFFFFC2E0:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_setLabel";
        break;
      case 0xFFFFC2E1:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset";
        break;
      case 0xFFFFC2E2:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure";
        break;
      case 0xFFFFC2E3:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure";
        break;
      case 0xFFFFC2E4:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_dealloc";
        break;
      case 0xFFFFC2E5:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_offset";
        break;
      case 0xFFFFC2E6:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_endEncoding";
        break;
      case 0xFFFFC2E7:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_insertDebugSignpost";
        break;
      case 0xFFFFC2E8:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_popDebugGroup";
        break;
      case 0xFFFFC2E9:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_pushDebugGroup";
        break;
      case 0xFFFFC2EA:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset";
        break;
      case 0xFFFFC2EB:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 0xFFFFC2EC:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_offset";
        break;
      case 0xFFFFC2ED:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_updateFence";
        break;
      case 0xFFFFC2EE:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeap";
        break;
      case 0xFFFFC2EF:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeaps_count";
        break;
      case 0xFFFFC2F0:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResource_usage";
        break;
      case 0xFFFFC2F1:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResources_count_usage";
        break;
      case 0xFFFFC2F2:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_waitForFence";
        break;
      case 0xFFFFC2F3:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset";
        break;
      case 0xFFFFC2F4:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_offset";
        break;
      case 0xFFFFC2F5:
        result = "kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex";
        break;
      case 0xFFFFC2F6:
        result = "kDYFEMTLArgumentEncoder_setFunctionTable_atIndex";
        break;
      case 0xFFFFC2F7:
        result = "kDYFEMTLArgumentEncoder_setFunctionTables_withRange";
        break;
      case 0xFFFFC2F8:
        result = "kDYFEMTLCommandQueue_getSPIStats";
        break;
      case 0xFFFFC2F9:
        result = "kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC2FA:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTable_atIndex";
        break;
      case 0xFFFFC2FB:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTables_withRange";
        break;
      case 0xFFFFC2FC:
        result = "kDYFEMTLComputePipelineState_functionHandleWithFunction";
        break;
      case 0xFFFFC2FD:
        result = "kDYFEMTLComputePipelineState_functionHandlesWithFunctions";
        break;
      case 0xFFFFC2FE:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalDynamicFunctions";
        break;
      case 0xFFFFC2FF:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_completionHandler";
        break;
      case 0xFFFFC300:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_error";
        break;
      case 0xFFFFC301:
        result = "kDYFEMTLDevice_newAccelerationStructureWithDescriptor";
        break;
      case 0xFFFFC302:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize";
        break;
      case 0xFFFFC303:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_error";
        break;
      case 0xFFFFC304:
        result = "kDYFEMTLDevice_newVisibleFunctionTableWithDescriptor";
        break;
      case 0xFFFFC305:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_options_error";
        break;
      case 0xFFFFC306:
        result = "kDYFEMTLFunctionHandle_dealloc";
        break;
      case 0xFFFFC307:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_completionHandler";
        break;
      case 0xFFFFC308:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_error";
        break;
      case 0xFFFFC309:
        result = "kDYFEMTLVisibleFunctionTable_setLabel";
        break;
      case 0xFFFFC30A:
        result = "kDYFEMTLVisibleFunctionTable_setResponsibleProcess";
        break;
      case 0xFFFFC30B:
        result = "kDYFEMTLVisibleFunctionTable_dealloc";
        break;
      case 0xFFFFC30C:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAllResources_count";
        break;
      case 0xFFFFC30D:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAnyResources_count";
        break;
      case 0xFFFFC30E:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasResource";
        break;
      case 0xFFFFC30F:
        result = "kDYFEMTLVisibleFunctionTable_isAliasable";
        break;
      case 0xFFFFC310:
        result = "kDYFEMTLVisibleFunctionTable_isPurgeable";
        break;
      case 0xFFFFC311:
        result = "kDYFEMTLVisibleFunctionTable_makeAliasable";
        break;
      case 0xFFFFC312:
        result = "kDYFEMTLVisibleFunctionTable_setFunction_atIndex";
        break;
      case 0xFFFFC313:
        result = "kDYFEMTLVisibleFunctionTable_setFunctions_withRange";
        break;
      case 0xFFFFC314:
        result = "kDYFEMTLVisibleFunctionTable_setPurgeableState";
        break;
      case 0xFFFFC315:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC316:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC317:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC318:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset";
        break;
      case 0xFFFFC319:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset";
        break;
      case 0xFFFFC31A:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometryOfAccelerationStructure_toBuffer_geometryBufferOffset";
        break;
      case 0xFFFFC31B:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometrySizeOfAccelerationStructure_toBuffer_sizeBufferOffset";
        break;
      case 0xFFFFC31C:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset";
        break;
      case 0xFFFFC31D:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC31E:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC31F:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC320:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity";
        break;
      case 0xFFFFC321:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC322:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC323:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC324:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC325:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions";
        break;
      case 0xFFFFC326:
        result = "kDYFEMTLComputePipelineState_newVisibleFunctionTableWithDescriptor";
        break;
      case 0xFFFFC327:
        result = "kDYFEMTLDevice_newIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC328:
        result = "kDYFEMTLDevice_supportsCounterSampling";
        break;
      case 0xFFFFC329:
        result = "kDYFEMTLDevice_supportsTextureWriteFPRoundingMode";
        break;
      case 0xFFFFC32A:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBuffer";
        break;
      case 0xFFFFC32B:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset";
        break;
      case 0xFFFFC32C:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBuffer";
        break;
      case 0xFFFFC32D:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBufferOffset";
        break;
      case 0xFFFFC32E:
        result = "kDYFEMTLIntersectionFunctionTable_setLabel";
        break;
      case 0xFFFFC32F:
        result = "kDYFEMTLIntersectionFunctionTable_setResponsibleProcess";
        break;
      case 0xFFFFC330:
        result = "kDYFEMTLIntersectionFunctionTable_dealloc";
        break;
      case 0xFFFFC331:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAllResources_count";
        break;
      case 0xFFFFC332:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAnyResources_count";
        break;
      case 0xFFFFC333:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasResource";
        break;
      case 0xFFFFC334:
        result = "kDYFEMTLIntersectionFunctionTable_isAliasable";
        break;
      case 0xFFFFC335:
        result = "kDYFEMTLIntersectionFunctionTable_isComplete";
        break;
      case 0xFFFFC336:
        result = "kDYFEMTLIntersectionFunctionTable_isPurgeable";
        break;
      case 0xFFFFC337:
        result = "kDYFEMTLIntersectionFunctionTable_isWriteComplete";
        break;
      case 0xFFFFC338:
        result = "kDYFEMTLIntersectionFunctionTable_makeAliasable";
        break;
      case 0xFFFFC339:
        result = "kDYFEMTLIntersectionFunctionTable_setFunction_atIndex";
        break;
      case 0xFFFFC33A:
        result = "kDYFEMTLIntersectionFunctionTable_setFunctions_withRange";
        break;
      case 0xFFFFC33B:
        result = "kDYFEMTLIntersectionFunctionTable_setPurgeableState";
        break;
      case 0xFFFFC33C:
        result = "kDYFEMTLIntersectionFunctionTable_waitUntilComplete";
        break;
      case 0xFFFFC33D:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error";
        break;
      case 0xFFFFC33E:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 0xFFFFC33F:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 0xFFFFC340:
        result = "kDYFEMTLAccelerationStructure_setDescriptor";
        break;
      case 0xFFFFC341:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler";
        break;
      case 0xFFFFC342:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_error";
        break;
      case 0xFFFFC343:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC344:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC345:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC346:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC347:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffer_offset_atIndex";
        break;
      case 0xFFFFC348:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffers_offsets_withRange";
        break;
      case 0xFFFFC349:
        result = "kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex";
        break;
      case 0xFFFFC34A:
        result = "kDYFEMTLVisibleFunctionTable_setBuffers_offsets_withRange";
        break;
      case 0xFFFFC34B:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 0xFFFFC34C:
        result = "kDYFEMTLComputePipelineState_newIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC34D:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atIndex";
        break;
      case 0xFFFFC34E:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withRange";
        break;
      case 0xFFFFC34F:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atIndex";
        break;
      case 0xFFFFC350:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withRange";
        break;
      case 0xFFFFC351:
        result = "kDYFEMTLDevice_supportsTextureWriteRoundingMode";
        break;
      case 0xFFFFC352:
        result = "kDYFEMTLTexture_didModifyData";
        break;
      case 0xFFFFC353:
        result = "kDYFEMTLCommandBuffer_setSharedIndirectionTable";
        break;
      case 0xFFFFC354:
        result = "kDYFEMTLDevice_newPrecompiledRenderPipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 0xFFFFC355:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_options_error";
        break;
      case 0xFFFFC356:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_atIndex";
        break;
      case 0xFFFFC357:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_withRange";
        break;
      case 0xFFFFC358:
        result = "kDYFEMTLVisibleFunctionTable_setValue_atIndex";
        break;
      case 0xFFFFC359:
        result = "kDYFEMTLVisibleFunctionTable_setValue_withRange";
        break;
      case 0xFFFFC35A:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC35B:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC35C:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC35D:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC35E:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC35F:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 0xFFFFC360:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset";
        break;
      case 0xFFFFC361:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_toBuffer_sizesBufferOffset";
        break;
      case 0xFFFFC362:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndDoWhile_offset_comparison_referenceValue";
        break;
      case 0xFFFFC363:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndIf";
        break;
      case 0xFFFFC364:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndWhile";
        break;
      case 0xFFFFC365:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartDoWhile";
        break;
      case 0xFFFFC366:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartElse";
        break;
      case 0xFFFFC367:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartIf_offset_comparison_referenceValue";
        break;
      case 0xFFFFC368:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartWhile_offset_comparison_referenceValue";
        break;
      case 0xFFFFC369:
        result = "kDYFEMTLComputeCommandEncoder_insertCompressedTextureReinterpretationFlush";
        break;
      case 0xFFFFC36A:
        result = "kDYFEMTLComputeCommandEncoder_useResourceGroup_usage";
        break;
      case 0xFFFFC36B:
        result = "kDYFEMTLDevice_newBufferWithDescriptor";
        break;
      case 0xFFFFC36C:
        result = "kDYFEMTLRelocation_dealloc";
        break;
      case 0xFFFFC36D:
        result = "kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages";
        break;
      case 0xFFFFC36E:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 0xFFFFC36F:
        result = "kDYFEMTLBuffer_setParentGPUAddress";
        break;
      case 0xFFFFC370:
        result = "kDYFEMTLBuffer_setParentGPUSize";
        break;
      case 0xFFFFC371:
        result = "kDYFEMTLComputeCommandEncoder_insertUncompressedToCompressedFlush";
        break;
      case 0xFFFFC372:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType";
        break;
      case 0xFFFFC373:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_value_forIndex";
        break;
      case 0xFFFFC374:
        result = "kDYFEMTLCommandBuffer_encodeDashboardTagForResourceGroup";
        break;
      case 0xFFFFC375:
        result = "kDYFEMTLDevice_setPluginData";
        break;
      case 0xFFFFC376:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_options_error";
        break;
      case 0xFFFFC377:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error";
        break;
      case 0xFFFFC378:
        result = "kDYFEMTLDevice_newLateEvalEvent";
        break;
      case 0xFFFFC379:
        result = "kDYFEMTLFunctionPointerHandle_dealloc";
        break;
      case 0xFFFFC37A:
        result = "kDYFEMTLFunctionPrivateArgument_dealloc";
        break;
      case 0xFFFFC37B:
        result = "kDYFEMTLFunctionStitchingAttribute_dealloc";
        break;
      case 0xFFFFC37C:
        result = "kDYFEMTLFunctionStitchingNode_dealloc";
        break;
      case 0xFFFFC37D:
        result = "kDYFEMTLLateEvalEvent_setLabel";
        break;
      case 0xFFFFC37E:
        result = "kDYFEMTLLateEvalEvent_setSignaledValue";
        break;
      case 0xFFFFC37F:
        result = "kDYFEMTLLateEvalEvent_dealloc";
        break;
      case 0xFFFFC380:
        result = "kDYFEMTLLateEvalEvent_newSharedEventHandle";
        break;
      case 0xFFFFC381:
        result = "kDYFEMTLLibrary_setShaderValidationEnabled";
        break;
      case 0xFFFFC382:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion";
        break;
      case 0xFFFFC383:
        result = "kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC384:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC385:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC386:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC387:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC388:
        result = "kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC389:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC38A:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC38B:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC38C:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC38D:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_destinationBinaryArchive_error";
        break;
      case 0xFFFFC38E:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_pattern4";
        break;
      case 0xFFFFC38F:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_bytes_length";
        break;
      case 0xFFFFC390:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color";
        break;
      case 0xFFFFC391:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color_pixelFormat";
        break;
      case 0xFFFFC392:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture";
        break;
      case 0xFFFFC393:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture_slice_level";
        break;
      case 0xFFFFC394:
        result = "kDYFEMTLDevice_newLibraryWithGraphs_functions_error";
        break;
      case 0xFFFFC395:
        result = "kDYFEMTLDevice_newLibraryWithGraphsSPI_functions_error";
        break;
      case 0xFFFFC396:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 0xFFFFC397:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 0xFFFFC398:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset";
        break;
      case 0xFFFFC399:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithFunction_stage";
        break;
      case 0xFFFFC39A:
        result = "kDYFEMTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage";
        break;
      case 0xFFFFC39B:
        result = "kDYFEMTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 0xFFFFC39C:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage";
        break;
      case 0xFFFFC39D:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC39E:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC39F:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3A0:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC3A1:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3A2:
        result = "kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC3A3:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC3A4:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3A5:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC3A6:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3A7:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex";
        break;
      case 0xFFFFC3A8:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC3A9:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3AA:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTable_atBufferIndex";
        break;
      case 0xFFFFC3AB:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTables_withBufferRange";
        break;
      case 0xFFFFC3AC:
        result = "kDYFEMTLRenderPipelineState_fragmentFunctionHandleWithFunction";
        break;
      case 0xFFFFC3AD:
        result = "kDYFEMTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC3AE:
        result = "kDYFEMTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC3AF:
        result = "kDYFEMTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC3B0:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor";
        break;
      case 0xFFFFC3B1:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor";
        break;
      case 0xFFFFC3B2:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor";
        break;
      case 0xFFFFC3B3:
        result = "kDYFEMTLRenderPipelineState_tileFunctionHandleWithFunction";
        break;
      case 0xFFFFC3B4:
        result = "kDYFEMTLRenderPipelineState_vertexFunctionHandleWithFunction";
        break;
      case 0xFFFFC3B5:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_error";
        break;
      case 0xFFFFC3B6:
        result = "kDYFEMTLDevice_newLibraryWithDescriptorSPI_error";
        break;
      case 0xFFFFC3B7:
        result = "kDYFEMTLDevice_getBVHBuilderLock";
        break;
      case 0xFFFFC3B8:
        result = "kDYFEMTLDevice_getRawBVHBuilderPtr";
        break;
      case 0xFFFFC3B9:
        result = "kDYFEMTLDevice_setRawBVHBuilderPtr";
        break;
      case 0xFFFFC3BA:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_functionType";
        break;
      case 0xFFFFC3BB:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType";
        break;
      case 0xFFFFC3BC:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_functionType";
        break;
      case 0xFFFFC3BD:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_inputsDescription_functionType";
        break;
      case 0xFFFFC3BE:
        result = "kDYFEMTLBinaryArchive_addLibraryWithDescriptor_error";
        break;
      case 0xFFFFC3BF:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_completionHandler";
        break;
      case 0xFFFFC3C0:
        result = "kDYFEMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 0xFFFFC3C1:
        result = "kDYFEMTLLibrary_serializeToURL_error";
        break;
      case 0xFFFFC3C2:
        result = "kDYFEMTLSharedEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 0xFFFFC3C3:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_completionHandler";
        break;
      case 0xFFFFC3C4:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_error";
        break;
      case 0xFFFFC3C5:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptorSPI_error";
        break;
      case 0xFFFFC3C6:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructureFromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 0xFFFFC3C7:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructureFromBytes_withDescriptor";
        break;
      case 0xFFFFC3C8:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 0xFFFFC3C9:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 0xFFFFC3CA:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 0xFFFFC3CB:
        result = "kDYFEMTLRenderPipelineState_setUsesMeshShaderEmulation";
        break;
      case 0xFFFFC3CC:
        result = "kDYFEMTLRasterizationRateMap_formattedDescription";
        break;
      case 0xFFFFC3CD:
        result = "kDYFEMTLRasterizationRateMap_resetUsingDescriptor";
        break;
      case 0xFFFFC3CE:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_values_indices_count";
        break;
      case 0xFFFFC3CF:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 0xFFFFC3D0:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 0xFFFFC3D1:
        result = "kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor";
        break;
      case 0xFFFFC3D2:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler";
        break;
      case 0xFFFFC3D3:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_error";
        break;
      case 0xFFFFC3D4:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler";
        break;
      case 0xFFFFC3D5:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error";
        break;
      case 0xFFFFC3D6:
        result = "kDYFEMTLDevice_writeMeshShaderEmulatorDataStructureHeader_meshShaderPSO_scalingFactor";
        break;
      case 0xFFFFC3D7:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffer_offset_atIndex";
        break;
      case 0xFFFFC3D8:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBufferOffset_atIndex";
        break;
      case 0xFFFFC3D9:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffers_offsets_withRange";
        break;
      case 0xFFFFC3DA:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBytes_length_atIndex";
        break;
      case 0xFFFFC3DB:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_atIndex";
        break;
      case 0xFFFFC3DC:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC3DD:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC3DE:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_withRange";
        break;
      case 0xFFFFC3DF:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTexture_atIndex";
        break;
      case 0xFFFFC3E0:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTextures_withRange";
        break;
      case 0xFFFFC3E1:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffer_offset_atIndex";
        break;
      case 0xFFFFC3E2:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBufferOffset_atIndex";
        break;
      case 0xFFFFC3E3:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffers_offsets_withRange";
        break;
      case 0xFFFFC3E4:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBytes_length_atIndex";
        break;
      case 0xFFFFC3E5:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_atIndex";
        break;
      case 0xFFFFC3E6:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 0xFFFFC3E7:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 0xFFFFC3E8:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_withRange";
        break;
      case 0xFFFFC3E9:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTexture_atIndex";
        break;
      case 0xFFFFC3EA:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTextures_withRange";
        break;
      case 0xFFFFC3EB:
        result = "kDYFEMTLRenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 0xFFFFC3EC:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxPrimitiveCount";
        break;
      case 0xFFFFC3ED:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxVertexCount";
        break;
      case 0xFFFFC3EE:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderIntermediateBufferSlot";
        break;
      case 0xFFFFC3EF:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderPSO";
        break;
      case 0xFFFFC3F0:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshSize";
        break;
      case 0xFFFFC3F1:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderIntermediateBufferSlot";
        break;
      case 0xFFFFC3F2:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderPSO";
        break;
      case 0xFFFFC3F3:
        result = "kDYFEMTLRenderPipelineState_setEmulationVertexShaderIntermediateBufferSlot";
        break;
      case 0xFFFFC3F4:
        result = "kDYFEMTLRenderPipelineState_meshFunctionHandleWithFunction";
        break;
      case 0xFFFFC3F5:
        result = "kDYFEMTLRenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC3F6:
        result = "kDYFEMTLRenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor";
        break;
      case 0xFFFFC3F7:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor";
        break;
      case 0xFFFFC3F8:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor";
        break;
      case 0xFFFFC3F9:
        result = "kDYFEMTLRenderPipelineState_objectFunctionHandleWithFunction";
        break;
      case 0xFFFFC3FA:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options";
        break;
      case 0xFFFFC3FB:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset";
        break;
      case 0xFFFFC3FC:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor";
        break;
      case 0xFFFFC3FD:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructure_fromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 0xFFFFC3FE:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructure_fromBytes_withDescriptor";
        break;
      case 0xFFFFC3FF:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithDescriptor";
        break;
      case 0xFFFFC400:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithSize";
        break;
      case 0xFFFFC401:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex";
        break;
      case 0xFFFFC402:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_withDescriptor";
        break;
      case 0xFFFFC403:
        result = "kDYFEMTLBuffer__aneIOSurface";
        break;
      case 0xFFFFC404:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor";
        break;
      case 0xFFFFC405:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor_offset";
        break;
      case 0xFFFFC406:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize";
        break;
      case 0xFFFFC407:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset";
        break;
      case 0xFFFFC408:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset_resourceIndex";
        break;
      case 0xFFFFC409:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 0xFFFFC40A:
        result = "kDYFEMTLDevice_newIOCommandQueueWithDescriptor_error";
        break;
      case 0xFFFFC40B:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionType_error";
        break;
      case 0xFFFFC40C:
        result = "kDYFEMTLDevice_newIOHandleWithURL_error";
        break;
      case 0xFFFFC40D:
        result = "kDYFEMTLDevice_newPerformanceStateAssertion_error";
        break;
      case 0xFFFFC40E:
        result = "kDYFEMTLIOCommandBuffer_setStatus";
        break;
      case 0xFFFFC40F:
        result = "kDYFEMTLIOCommandBuffer_addCompletedHandler";
        break;
      case 0xFFFFC410:
        result = "kDYFEMTLIOCommandBuffer_barrier";
        break;
      case 0xFFFFC411:
        result = "kDYFEMTLIOCommandBuffer_commit";
        break;
      case 0xFFFFC412:
        result = "kDYFEMTLIOCommandBuffer_copyStatusToBuffer_offset";
        break;
      case 0xFFFFC413:
        result = "kDYFEMTLIOCommandBuffer_dealloc";
        break;
      case 0xFFFFC414:
        result = "kDYFEMTLIOCommandBuffer_encodeSignalEvent_value";
        break;
      case 0xFFFFC415:
        result = "kDYFEMTLIOCommandBuffer_encodeWaitForEvent_value";
        break;
      case 0xFFFFC416:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_handle_handleOffset";
        break;
      case 0xFFFFC417:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset";
        break;
      case 0xFFFFC418:
        result = "kDYFEMTLIOCommandBuffer_tryCancel";
        break;
      case 0xFFFFC419:
        result = "kDYFEMTLIOCommandBuffer_waitUntilCompleted";
        break;
      case 0xFFFFC41A:
        result = "kDYFEMTLIOCommandQueue_barrier";
        break;
      case 0xFFFFC41B:
        result = "kDYFEMTLIOCommandQueue_commandBuffer";
        break;
      case 0xFFFFC41C:
        result = "kDYFEMTLIOCommandQueue_dealloc";
        break;
      case 0xFFFFC41D:
        result = "kDYFEMTLIOScratchBuffer_dealloc";
        break;
      case 0xFFFFC41E:
        result = "kDYFEMTLIOScratchBufferAllocator_allocateScratchBufferWithMinimumSize";
        break;
      case 0xFFFFC41F:
        result = "kDYFEMTLIOScratchBufferAllocator_dealloc";
        break;
      case 0xFFFFC420:
        result = "kDYFEMTLIOHandle_dealloc";
        break;
      case 0xFFFFC421:
        result = "kDYFEMTLBinaryArchive_getArchiveIDWithError";
        break;
      case 0xFFFFC422:
        result = "kDYFEMTLCommandBuffer_presentDrawable_options";
        break;
      case 0xFFFFC423:
        result = "kDYFEMTLEvent_setEnableBarrier";
        break;
      case 0xFFFFC424:
        result = "kDYFEMTLLateEvalEvent_setEnableBarrier";
        break;
      case 0xFFFFC425:
        result = "kDYFEMTLLibrary_bitCodeListForFunctions";
        break;
      case 0xFFFFC426:
        result = "kDYFEMTLLibrary_bitCodeWithHash";
        break;
      case 0xFFFFC427:
        result = "kDYFEMTLSharedEvent_setEnableBarrier";
        break;
      case 0xFFFFC428:
        result = "kDYFEMTLDeadlineProfile_dealloc";
        break;
      case 0xFFFFC429:
        result = "kDYFEMTLRenderPipelineState_setEmulationPrimitiveTopology";
        break;
      case 0xFFFFC42A:
        result = "kDYFEMTLCommandBuffer_commitWithDeadline";
        break;
      case 0xFFFFC42B:
        result = "kDYFEMTLDevice_newProfileWithExecutionSize";
        break;
      case 0xFFFFC42C:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmittedWithDeadline";
        break;
      case 0xFFFFC42D:
        result = "kDYFEMTLDevice_sparseTileSizeInBytesForSparsePageSize";
        break;
      case 0xFFFFC42E:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize";
        break;
      case 0xFFFFC42F:
        result = "kDYFEMTLIOCommandBuffer_setLabel";
        break;
      case 0xFFFFC430:
        result = "kDYFEMTLIOCommandBuffer_enqueue";
        break;
      case 0xFFFFC431:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset";
        break;
      case 0xFFFFC432:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset";
        break;
      case 0xFFFFC433:
        result = "kDYFEMTLIOCommandBuffer_signalEvent_value";
        break;
      case 0xFFFFC434:
        result = "kDYFEMTLIOCommandBuffer_waitForEvent_value";
        break;
      case 0xFFFFC435:
        result = "kDYFEMTLIOCommandQueue_setLabel";
        break;
      case 0xFFFFC436:
        result = "kDYFEMTLIOCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 0xFFFFC437:
        result = "kDYFEMTLIOHandle_setLabel";
        break;
      case 0xFFFFC438:
        result = "kDYFEMTLIOHandle_decompress_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 0xFFFFC439:
        result = "kDYFEMTLIOHandle_getHandleOffset_offset";
        break;
      case 0xFFFFC43A:
        result = "kDYFEMTLIOHandle_read_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 0xFFFFC43B:
        result = "kDYFEMTLIOHandle_readIntoStagingBuffer_offset_stagingBuffer_stagingBufferSize";
        break;
      case 0xFFFFC43C:
        result = "kDYFEMTLIOHandle_stagingBufferSize_offset";
        break;
      case 0xFFFFC43D:
        result = "kDYFEMTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize";
        break;
      case 0xFFFFC43E:
        result = "kDYFEMTLDevice_getMostCompatibleArchitecture";
        break;
      case 0xFFFFC43F:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex";
        break;
      case 0xFFFFC440:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionMethod_error";
        break;
      case 0xFFFFC441:
        result = "kDYFEMTLIOCommandBuffer_addBarrier";
        break;
      case 0xFFFFC442:
        result = "kDYFEMTLIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset";
        break;
      case 0xFFFFC443:
        result = "kDYFEMTLIOCommandBuffer_popDebugGroup";
        break;
      case 0xFFFFC444:
        result = "kDYFEMTLIOCommandBuffer_pushDebugGroup";
        break;
      case 0xFFFFC445:
        result = "kDYFEMTLIOCommandQueue_enqueueBarrier";
        break;
      case 0xFFFFC446:
        result = "kDYFEMTLIOFileHandle_setLabel";
        break;
      case 0xFFFFC447:
        result = "kDYFEMTLIOFileHandle_dealloc";
        break;
      case 0xFFFFC448:
        result = "kDYFEMTLRenderPipelineState_setEmulationPayloadMemoryLength";
        break;
      case 0xFFFFC449:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset";
        break;
      case 0xFFFFC44A:
        result = "kDYFEMTLCommandBuffer_encodeConditionalAbortEvent";
        break;
      case 0xFFFFC44B:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value_agentMask";
        break;
      case 0xFFFFC44C:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_attributeStride_atIndex";
        break;
      case 0xFFFFC44D:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_attributeStride_atIndex";
        break;
      case 0xFFFFC44E:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_attributeStrides_withRange";
        break;
      case 0xFFFFC44F:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_attributeStride_atIndex";
        break;
      case 0xFFFFC450:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionMode";
        break;
      case 0xFFFFC451:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionModeWithClusterGroupIndex";
        break;
      case 0xFFFFC452:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupPackingDisabled";
        break;
      case 0xFFFFC453:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_attributeStride_atIndex";
        break;
      case 0xFFFFC454:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 0xFFFFC455:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 0xFFFFC456:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_attributeStride_atIndex";
        break;
      case 0xFFFFC457:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_attributeStrides_withRange";
        break;
      case 0xFFFFC458:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_attributeStride_atIndex";
        break;
      case 0xFFFFC459:
        result = "kDYFEMTLResourceStateCommandEncoder_moveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 0xFFFFC45A:
        result = "kDYFEMTLDevice_setShouldMaximizeConcurrentCompilation";
        break;
      case 0xFFFFC45B:
        result = "kDYFEMTLDevice_newEventWithOptions";
        break;
      case 0xFFFFC45C:
        result = "kDYFEMTLDevice_newSharedEventWithOptions";
        break;
      case 0xFFFFC45D:
        result = "kDYFEMTLDevice_setCompilerProcessesCount";
        break;
      case 0xFFFFC45E:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 0xFFFFC45F:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 0xFFFFC460:
        result = "kDYFEMTLIndirectRenderCommand_setMeshBuffer_offset_atIndex";
        break;
      case 0xFFFFC461:
        result = "kDYFEMTLIndirectRenderCommand_setObjectBuffer_offset_atIndex";
        break;
      case 0xFFFFC462:
        result = "kDYFEMTLIndirectRenderCommand_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 0xFFFFC463:
        result = "kDYFEMTLDevice_newArgumentEncoderWithBufferBinding";
        break;
      case 0xFFFFC464:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_compressionMethod_error";
        break;
      case 0xFFFFC465:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_error";
        break;
      case 0xFFFFC466:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_atIndex";
        break;
      case 0xFFFFC467:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_withRange";
        break;
      case 0xFFFFC468:
        result = "kDYFEMTLCommandBuffer_setPrivateLoggingBuffer";
        break;
      case 0xFFFFC469:
        result = "kDYFEMTLCommandBuffer_setResponsibleTaskIDs_count";
        break;
      case 0xFFFFC46A:
        result = "kDYFEMTLCommandBuffer_useResidencySet";
        break;
      case 0xFFFFC46B:
        result = "kDYFEMTLCommandBuffer_useResidencySets_count";
        break;
      case 0xFFFFC46C:
        result = "kDYFEMTLCommandQueue_addResidencySet";
        break;
      case 0xFFFFC46D:
        result = "kDYFEMTLCommandQueue_addResidencySets_count";
        break;
      case 0xFFFFC46E:
        result = "kDYFEMTLCommandQueue_removeResidencySet";
        break;
      case 0xFFFFC46F:
        result = "kDYFEMTLCommandQueue_removeResidencySets_count";
        break;
      case 0xFFFFC470:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySet";
        break;
      case 0xFFFFC471:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySets_count";
        break;
      case 0xFFFFC472:
        result = "kDYFEMTLDevice_setWritableHeapsEnabled";
        break;
      case 0xFFFFC473:
        result = "kDYFEMTLDevice_newResidencySetWithDescriptor_error";
        break;
      case 0xFFFFC474:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySet";
        break;
      case 0xFFFFC475:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySets_count";
        break;
      case 0xFFFFC476:
        result = "kDYFEMTLResidencySet_addHeap";
        break;
      case 0xFFFFC477:
        result = "kDYFEMTLResidencySet_addHeaps_count";
        break;
      case 0xFFFFC478:
        result = "kDYFEMTLResidencySet_addResource";
        break;
      case 0xFFFFC479:
        result = "kDYFEMTLResidencySet_addResources_count";
        break;
      case 0xFFFFC47A:
        result = "kDYFEMTLResidencySet_commitAdds";
        break;
      case 0xFFFFC47B:
        result = "kDYFEMTLResidencySet_commitRemoves";
        break;
      case 0xFFFFC47C:
        result = "kDYFEMTLResidencySet_commitResidency";
        break;
      case 0xFFFFC47D:
        result = "kDYFEMTLResidencySet_containsHeap";
        break;
      case 0xFFFFC47E:
        result = "kDYFEMTLResidencySet_containsResource";
        break;
      case 0xFFFFC47F:
        result = "kDYFEMTLResidencySet_countForHeap";
        break;
      case 0xFFFFC480:
        result = "kDYFEMTLResidencySet_countForResource";
        break;
      case 0xFFFFC481:
        result = "kDYFEMTLResidencySet_dealloc";
        break;
      case 0xFFFFC482:
        result = "kDYFEMTLResidencySet_endResidency";
        break;
      case 0xFFFFC483:
        result = "kDYFEMTLResidencySet_removeAllHeaps";
        break;
      case 0xFFFFC484:
        result = "kDYFEMTLResidencySet_removeAllResources";
        break;
      case 0xFFFFC485:
        result = "kDYFEMTLResidencySet_removeHeap";
        break;
      case 0xFFFFC486:
        result = "kDYFEMTLResidencySet_removeHeaps_count";
        break;
      case 0xFFFFC487:
        result = "kDYFEMTLResidencySet_removeResource";
        break;
      case 0xFFFFC488:
        result = "kDYFEMTLResidencySet_removeResources_count";
        break;
      case 0xFFFFC489:
        result = "kDYFEMTLResidencySet_requestResidency";
        break;
      case 0xFFFFC48A:
        result = "kDYFEMTLResidencySet_setCurrentGeneration";
        break;
      case 0xFFFFC48B:
        result = "kDYFEMTLResidencySet_setExpiredGeneration";
        break;
      case 0xFFFFC48C:
        result = "kDYFEMTLResidencySet_commit";
        break;
      case 0xFFFFC48D:
        result = "kDYFEMTLResidencySet_generationForHeap";
        break;
      case 0xFFFFC48E:
        result = "kDYFEMTLResidencySet_generationForResource";
        break;
      case 0xFFFFC48F:
        result = "kDYFEMTLCommandBuffer_encodeSignalEventScheduled_value";
        break;
      case 0xFFFFC490:
        result = "kDYFEMTLCommandBuffer_setPrivateData";
        break;
      case 0xFFFFC491:
        result = "kDYFEMTLCommandBuffer_setPrivateDataOffset";
        break;
      case 0xFFFFC492:
        result = "kDYFEMTLDevice_newLogStateWithDescriptor_error";
        break;
      case 0xFFFFC493:
        result = "kDYFEMTLLogState_dealloc";
        break;
      case 0xFFFFC494:
        result = "kDYFEMTLResidencySet_addAllocation";
        break;
      case 0xFFFFC495:
        result = "kDYFEMTLResidencySet_addAllocations_count";
        break;
      case 0xFFFFC496:
        result = "kDYFEMTLResidencySet_containsAllocation";
        break;
      case 0xFFFFC497:
        result = "kDYFEMTLResidencySet_generationForAllocation";
        break;
      case 0xFFFFC498:
        result = "kDYFEMTLResidencySet_removeAllAllocations";
        break;
      case 0xFFFFC499:
        result = "kDYFEMTLResidencySet_removeAllocation";
        break;
      case 0xFFFFC49A:
        result = "kDYFEMTLResidencySet_removeAllocations_count";
        break;
      default:
        if (this != -18430)
        {
          goto LABEL_72;
        }

        result = "kDYFEMTLFXTemporalScaler_executionMode";
        break;
    }
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumConstructor(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 <= -15716)
  {
    if (v1 > -16054)
    {
      if (v1 <= -15915)
      {
        if ((v1 + 16053) <= 0x39 && ((1 << (v1 - 75)) & 0x30001E801C1C03FLL) != 0)
        {
          return result;
        }

        v10 = v1 + 15981;
        if (v10 > 0x3C)
        {
          return 0;
        }

        v4 = 1 << v10;
        v5 = 0x1800000000001207;
      }

      else
      {
        if ((v1 + 15851) <= 0x3A && ((1 << (v1 - 21)) & 0x400002000E0007FLL) != 0 || (v1 + 15778) <= 0x3D && ((1 << (v1 - 94)) & 0x2001B1400000005BLL) != 0)
        {
          return result;
        }

        v7 = v1 + 15914;
        if (v7 > 0x2C)
        {
          return 0;
        }

        v4 = 1 << v7;
        v5 = 0x10000080C027;
      }

      goto LABEL_46;
    }

    if (v1 > -16291)
    {
      if ((v1 + 16128) <= 0x35 && ((1 << v1) & 0x20C1E369601901) != 0 || (v1 + 16200) <= 0x31 && ((1 << (v1 + 72)) & 0x200280000001FLL) != 0)
      {
        return result;
      }

      v8 = v1 + 16290;
      if (v8 > 0x39)
      {
        return 0;
      }

      v4 = 1 << v8;
      v5 = 0x200000000000011;
      goto LABEL_46;
    }

    if ((v1 + 16354) <= 0x3C && ((1 << (v1 - 30)) & 0x17FFFFC00000180FLL) != 0 || (v1 + 18432) < 2)
    {
      return result;
    }

    v6 = -16368;
LABEL_53:
    if (v1 == v6)
    {
      return result;
    }

    return 0;
  }

  if (v1 > -15407)
  {
    if (v1 <= -12545)
    {
      if ((v1 + 15406) <= 0x3A && ((1 << (v1 + 46)) & 0x7FD84780000000FLL) != 0 || (v1 + 15269) <= 0x37 && ((1 << (v1 - 91)) & 0x80000001000703) != 0)
      {
        return result;
      }

      v11 = v1 + 15333;
      if (v11 > 0x25)
      {
        return 0;
      }

      v4 = 1 << v11;
      v5 = 0x2408010001;
      goto LABEL_46;
    }

    if (v1 <= -7168)
    {
      if ((v1 + 12544) < 2 || v1 == -10237)
      {
        return result;
      }

      v6 = -10151;
    }

    else
    {
      if ((v1 + 6143) <= 0x30 && ((1 << (v1 - 1)) & 0x1800709205605) != 0 || (v1 + 7167) < 2)
      {
        return result;
      }

      v6 = -6655;
    }

    goto LABEL_53;
  }

  if (v1 > -15552)
  {
    if ((v1 + 15468) <= 0x33 && ((1 << (v1 + 108)) & 0xF8BC7FF0001F3) != 0)
    {
      return result;
    }

    v3 = v1 + 15551;
    if (v3 <= 0x37)
    {
      v4 = 1 << v3;
      v5 = 0x80240000180C03;
      goto LABEL_46;
    }

    return 0;
  }

  if ((v1 + 15715) <= 0x2D && ((1 << (v1 + 99)) & 0x24000E7C4703) != 0)
  {
    return result;
  }

  v9 = v1 + 15620;
  if (v9 > 0x2B)
  {
    return 0;
  }

  v4 = 1 << v9;
  v5 = 0xE1E000018E5;
LABEL_46:
  if ((v4 & v5) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumDestructor(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -15802)
  {
    if (v1 <= -15509)
    {
      if ((v1 + 15706) <= 0x3E && ((1 << (v1 + 90)) & 0x400080008420C011) != 0 || (v1 + 15801) <= 0x3B && ((1 << (v1 - 71)) & 0x922000100000801) != 0)
      {
        return result;
      }

      v9 = v1 + 15610;
      if (v9 <= 0x2A)
      {
        v6 = 1 << v9;
        v7 = 0x40000000021;
LABEL_40:
        if ((v6 & v7) != 0)
        {
          return result;
        }

        return 0;
      }

      return 0;
    }

    if (v1 <= -15232)
    {
      if ((v1 + 15341) > 0x34 || ((1 << (v1 - 19)) & 0x10000000203601) == 0)
      {
        v4 = v1 + 15508;
        if (v4 > 0x13 || ((1 << v4) & 0x9E001) == 0)
        {
          return 0;
        }
      }

      return result;
    }

    if (v1 > -7162)
    {
      if (v1 == -7161 || v1 == -6652)
      {
        return result;
      }

      v3 = -6139;
    }

    else
    {
      if (v1 == -15231 || v1 == -15213)
      {
        return result;
      }

      v3 = -10206;
    }

LABEL_45:
    if (v1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (v1 > -16128)
  {
    if (v1 > -15983)
    {
      if ((v1 + 15893) <= 0x2B && ((1 << (v1 + 21)) & 0x8000C004011) != 0)
      {
        return result;
      }

      v5 = v1 + 15982;
      if (v5 <= 0x3B)
      {
        v6 = 1 << v5;
        v7 = 0x800800002000201;
        goto LABEL_40;
      }

      return 0;
    }

    if (((v1 + 16127) > 0x37 || ((1 << (v1 - 1)) & 0x80000040000201) == 0) && v1 != -16062)
    {
      v3 = -16030;
      goto LABEL_45;
    }
  }

  else
  {
    if (v1 > -16318)
    {
      if ((v1 + 16317) <= 0x25 && ((1 << (v1 - 67)) & 0x2045000001) != 0)
      {
        return result;
      }

      v8 = v1 + 16242;
      if (v8 <= 0x31)
      {
        v6 = 1 << v8;
        v7 = 0x2000000000013;
        goto LABEL_40;
      }

      return 0;
    }

    if (((v1 + 0x3FFF) > 0x3F || ((1 << (v1 - 1)) & 0xC000208000102001) == 0) && v1 != -20475)
    {
      v3 = -20458;
      goto LABEL_45;
    }
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumDrawCall(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (((v1 + 16251) > 0x24 || ((1 << (v1 + 123)) & 0x1E0000000FLL) == 0) && ((v1 + 16173) > 0x1D || ((1 << (v1 + 45)) & 0x3C000007) == 0))
  {
    return (v1 + 15416) < 3;
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumIOCall(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if ((v1 + 15346) > 0x37 || ((1 << (v1 - 14)) & 0xF801FE00007FFFLL) == 0)
  {
    return v1 == -12543;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumBlitCall(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 <= -15879)
  {
    if (((v1 + 15995) > 0x25 || ((1 << (v1 + 123)) & 0x38000C000FLL) == 0) && (v1 + 16382) >= 6 && (v1 + 16213) >= 5)
    {
      return 0;
    }
  }

  else if ((v1 + 15474) >= 6 && (v1 + 15878) >= 2 && (v1 + 15756) >= 2)
  {
    return 0;
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumSampledBlitCallAGX(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (((v1 + 15995) > 0x25 || ((1 << (v1 + 123)) & 0x38000C000FLL) == 0) && ((v1 + 15802) > 4 || ((1 << (v1 - 70)) & 0x15) == 0))
  {
    return (v1 + 15470) < 2;
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumSampleCall(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (((v1 + 15876) > 0x35 || ((1 << (v1 + 4)) & 0x20005000000083) == 0) && ((v1 + 15756) > 6 || ((1 << (v1 - 116)) & 0x47) == 0))
  {
    return v1 == -15637;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumPushDebugGroup(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -16066)
  {
    if (v1 <= -15787)
    {
      if (v1 == -16065)
      {
        return result;
      }

      v3 = -15882;
      goto LABEL_14;
    }

    if (v1 != -15786 && v1 != -15639)
    {
      v3 = -15292;
LABEL_14:
      if (v1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v1 <= -16284)
    {
      if (v1 == -16374)
      {
        return result;
      }

      v3 = -16323;
      goto LABEL_14;
    }

    if (v1 != -16283 && v1 != -16244)
    {
      v3 = -16168;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumPopDebugGroup(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -16065)
  {
    if (v1 <= -15788)
    {
      if (v1 == -16064)
      {
        return result;
      }

      v3 = -15881;
      goto LABEL_14;
    }

    if (v1 != -15787 && v1 != -15640)
    {
      v3 = -15293;
LABEL_14:
      if (v1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v1 <= -16283)
    {
      if (v1 == -16373)
      {
        return result;
      }

      v3 = -16322;
      goto LABEL_14;
    }

    if (v1 != -16282 && v1 != -16243)
    {
      v3 = -16167;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumSetLabel(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -15926)
  {
    if (v1 > -15608)
    {
      if (v1 > -15314)
      {
        v6 = v1 + 15313;
        if (v6 > 0x17 || ((1 << v6) & 0x800141) == 0)
        {
          return 0;
        }

        return result;
      }

      if (v1 == -15607 || v1 == -15570)
      {
        return result;
      }

      v7 = -15491;
      goto LABEL_31;
    }

    if (v1 <= -15684)
    {
      if ((v1 + 15925) <= 0x2D && ((1 << (v1 + 53)) & 0x200800000001) != 0 || v1 == -15794)
      {
        return result;
      }

      v7 = -15743;
      goto LABEL_31;
    }

    v8 = v1 + 15683;
    if (v8 <= 0x23)
    {
      v4 = 1 << v8;
      v5 = 0x800408081;
LABEL_22:
      if ((v4 & v5) == 0)
      {
        return 0;
      }

      return result;
    }

    return 0;
  }

  if (v1 <= -16195)
  {
    if ((v1 + 0x4000) <= 0x2D && ((1 << v1) & 0x200800081001) != 0)
    {
      return result;
    }

    v3 = v1 + 16292;
    if (v3 <= 0x34)
    {
      v4 = 1 << v3;
      v5 = 0x10000000000811;
      goto LABEL_22;
    }

    return 0;
  }

  if (v1 <= -16124)
  {
    if (v1 == -16194)
    {
      return result;
    }

    v7 = -16136;
  }

  else
  {
    if ((v1 + 16123) <= 0x3C && ((1 << (v1 - 5)) & 0x1004000000000011) != 0)
    {
      return result;
    }

    v7 = -15974;
  }

LABEL_31:
  if (v1 != v7)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumEndEncoding(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -16171)
  {
    if (v1 > -15790)
    {
      if (v1 == -15789)
      {
        return result;
      }

      v3 = -15642;
    }

    else
    {
      if (v1 == -16170)
      {
        return result;
      }

      v3 = -15884;
    }
  }

  else if (v1 > -16286)
  {
    if (v1 == -16285)
    {
      return result;
    }

    v3 = -16246;
  }

  else
  {
    if (v1 == -16376)
    {
      return result;
    }

    v3 = -16325;
  }

  if (v1 != v3)
  {
    return 0;
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumEncodeSignalEvent(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if ((v1 + 15340) > 0x37 || ((1 << (v1 - 20)) & 0x80000080000001) == 0)
  {
    return v1 == -15990 || v1 == -15217;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumEncodeWaitForEvent(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -15340)
  {
    if (v1 == -15339)
    {
      return result;
    }

    v3 = -15308;
  }

  else
  {
    if (v1 == -15991)
    {
      return result;
    }

    v3 = -15749;
  }

  if (v1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumCommitCommandBuffer(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -15239)
  {
    v3 = v1 + 15238;
    if (v3 > 0x12)
    {
      return 0;
    }

    v4 = 1 << v3;
    v5 = 262151;
LABEL_11:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  if (v1 > -15344)
  {
    v6 = v1 + 15343;
    if (v6 > 0x1B)
    {
      return 0;
    }

    v4 = 1 << v6;
    v5 = 167772161;
    goto LABEL_11;
  }

  if (v1 != -16361 && v1 != -16202 && v1 != -15908)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumFunctionTableRelatedCall(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -15372)
  {
    if (((v1 + 10193) > 0x29 || ((1 << (v1 - 47)) & 0x303000FE001) == 0) && (v1 + 15371) >= 4 && (v1 + 15258) >= 2)
    {
      return 0;
    }
  }

  else
  {
    switch(v1)
    {
      case -15626:
      case -15625:
      case -15622:
      case -15621:
      case -15612:
      case -15607:
      case -15606:
      case -15605:
      case -15604:
      case -15603:
      case -15602:
      case -15601:
      case -15600:
      case -15599:
      case -15598:
      case -15597:
      case -15596:
      case -15583:
      case -15582:
      case -15581:
      case -15580:
      case -15578:
      case -15577:
      case -15574:
      case -15573:
      case -15572:
      case -15571:
      case -15570:
      case -15569:
      case -15568:
      case -15567:
      case -15566:
      case -15565:
      case -15564:
      case -15563:
      case -15562:
      case -15561:
      case -15560:
      case -15559:
      case -15558:
      case -15557:
      case -15556:
      case -15549:
      case -15548:
      case -15547:
      case -15546:
      case -15545:
      case -15544:
      case -15543:
      case -15542:
      case -15540:
      case -15539:
      case -15538:
      case -15537:
      case -15536:
      case -15530:
      case -15529:
      case -15528:
      case -15527:
      case -15526:
      case -15525:
      case -15484:
      case -15483:
      case -15482:
      case -15481:
      case -15479:
      case -15478:
      case -15477:
      case -15476:
      case -15462:
      case -15460:
      case -15458:
      case -15457:
      case -15456:
      case -15455:
      case -15453:
      case -15452:
      case -15451:
      case -15450:
      case -15448:
      case -15447:
      case -15446:
      case -15445:
      case -15443:
      case -15442:
      case -15441:
      case -15440:
      case -15439:
      case -15438:
        return result;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumDisplayableCall(GPUTools::MTL *this)
{
  if (GPUTools::MTL::IsFuncEnumDrawCall(this) || (this + 16079) < 2 || this == -16327 || this == -16220 || (GPUTools::MTL::IsFuncEnumBlitCall(this) & 1) != 0)
  {
    return 1;
  }

  if (this <= -15487)
  {
    if (this == -16137 || this == -16034)
    {
      return 1;
    }

    v3 = -15887;
  }

  else
  {
    if ((this + 6144) <= 0x2F && ((1 << this) & 0x8BF1EC9D5395) != 0 || this == -15486)
    {
      return 1;
    }

    v3 = -15297;
  }

  if (this == v3 || (this + 15784) < 3 || GPUTools::MTL::IsFuncEnumAccelerationEncodeCall(this))
  {
    return 1;
  }

  return GPUTools::MTL::IsFuncEnumPresent(this);
}

uint64_t GPUTools::MTL::IsFuncEnumPresent(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -7159)
  {
    if ((v1 + 7158) >= 3)
    {
      return 0;
    }
  }

  else if ((v1 + 16359) >= 2 && v1 != -16133 && v1 != -15326)
  {
    return 0;
  }

  return result;
}

BOOL GPUTools::MTL::IsFuncEnumGPUCommandCall(GPUTools::MTL *this)
{
  if (GPUTools::MTL::IsFuncEnumDrawCall(this))
  {
    return 1;
  }

  result = 1;
  if ((this + 16079) >= 2 && this != -16327 && this != -16220)
  {
    if (GPUTools::MTL::IsFuncEnumSampledBlitCall(this) || GPUTools::MTL::IsFuncEnumSampledBlitCallAGX(this))
    {
      return 1;
    }

    result = 1;
    if (this != -16137 && this != -15486)
    {
      return this == -15297;
    }
  }

  return result;
}

BOOL GPUTools::MTL::IsCommandEncoder(int a1)
{
  result = 1;
  if ((a1 - 21) > 0x3D || ((1 << (a1 - 21)) & 0x2022100000200081) == 0)
  {
    return a1 == 17;
  }

  return result;
}

uint64_t GPUTools::MTL::IsFuncEnumInsertDebugSignpost(GPUTools::MTL *this)
{
  v1 = this;
  result = 1;
  if (v1 > -16170)
  {
    if (v1 > -15789)
    {
      if (v1 == -15788)
      {
        return result;
      }

      v3 = -15641;
    }

    else
    {
      if (v1 == -16169)
      {
        return result;
      }

      v3 = -15883;
    }
  }

  else if (v1 > -16285)
  {
    if (v1 == -16284)
    {
      return result;
    }

    v3 = -16245;
  }

  else
  {
    if (v1 == -16375)
    {
      return result;
    }

    v3 = -16324;
  }

  if (v1 != v3)
  {
    return 0;
  }

  return result;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(void *result)
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

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void GPUTools::MTL::InstallMTLInternalDataStringTable(GPUTools::MTL *this)
{
  if (GPUTools::MTL::InstallMTLInternalDataStringTable(void)::sOnce != -1)
  {
    GPUTools::MTL::InstallMTLInternalDataStringTable();
  }
}

uint64_t ___ZN8GPUTools3MTL33InstallMTLInternalDataStringTableEv_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_27984EFB0, sizeof(__dst));
  result = DYAddInternalDataNameEntries();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void MTLDeviceInfo::MTLDeviceInfo(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v3 = DYGetMTLGuestAppClient();
  v4 = [v3 graphicsSemaphore];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  operator new();
}

void sub_257AB1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  dispatch_semaphore_signal(v11);

  _Unwind_Resume(a1);
}

void _swapDeviceInfoMap(unint64_t a1)
{
  v1 = atomic_exchange(&MTLDeviceInfo::activeDeviceInfoMap, a1);
  v2 = dispatch_time(0, 10000000000);
  v3 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL18_swapDeviceInfoMapPNSt3__13mapIU8__strongP14MTLToolsDeviceP13MTLDeviceInfoNS_4lessIS3_EENS_9allocatorINS_4pairIU8__strongKS2_S5_EEEEEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_after(v2, v3, block);
}

void MTLDeviceInfo::~MTLDeviceInfo(id *this)
{
  v2 = DYGetMTLGuestAppClient();
  v3 = [v2 graphicsSemaphore];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = *(MTLDeviceInfo::activeDeviceInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *this;
  v6 = MTLDeviceInfo::activeDeviceInfoMap + 8;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == MTLDeviceInfo::activeDeviceInfoMap + 8 || v5 < *(v6 + 32))
  {
LABEL_9:
    v6 = MTLDeviceInfo::activeDeviceInfoMap + 8;
  }

  if (*(v6 + 40) == this)
  {
    operator new();
  }

  dispatch_semaphore_signal(v3);
}

uint64_t ___ZL18_swapDeviceInfoMapPNSt3__13mapIU8__strongP14MTLToolsDeviceP13MTLDeviceInfoNS_4lessIS3_EENS_9allocatorINS_4pairIU8__strongKS2_S5_EEEEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::destroy(*(result + 32), *(v1 + 8));

    JUMPOUT(0x259C6C150);
  }

  return result;
}

void std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::map<MTLToolsDevice * {__strong},MTLDeviceInfo *>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<MTLToolsDevice * {__strong},MTLDeviceInfo *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__tree_node<std::__value_type,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<MTLToolsDevice * {__strong},MTLDeviceInfo *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__tree_node<std::__value_type,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__emplace_hint_unique_key_args<MTLToolsDevice * {__strong},std::pair<MTLToolsDevice * const {__strong},MTLDeviceInfo *> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__emplace_hint_unique_key_args<MTLToolsDevice * {__strong},std::pair<MTLToolsDevice * const {__strong},MTLDeviceInfo *> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__find_equal<MTLToolsDevice * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__find_equal<MTLToolsDevice * {__strong}>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__erase_unique<MTLToolsDevice * {__strong}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *std::__tree<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::__map_value_compare<MTLToolsDevice * {__strong},std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>,std::less<MTLToolsDevice * {__strong}>,true>,std::allocator<std::__value_type<MTLToolsDevice * {__strong},MTLDeviceInfo *>>>::__emplace_unique_key_args<MTLToolsDevice * {__strong},std::pair<MTLToolsDevice * const {__strong},MTLDeviceInfo *>>(uint64_t a1, unint64_t *a2)
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

void init_interpose_api()
{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.gDYMTLObjectUnmappingBlock != nullptr");
}

{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.gDYMTLObjectRemappingBlock != nullptr");
}

{
  dlerror();
  v0 = dy_abort();
  GPUTools::MTL::CaptureHelper::~CaptureHelper(v0);
}

void GPUTools::MTL::CaptureHelper::~CaptureHelper(GPUTools::MTL::CaptureHelper *this)
{
  v2 = *(this + 17);
  *(this + 17) = 0;

  v3 = *(this + 14);
  if (v3)
  {
    free(v3);
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  v5 = (this + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
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