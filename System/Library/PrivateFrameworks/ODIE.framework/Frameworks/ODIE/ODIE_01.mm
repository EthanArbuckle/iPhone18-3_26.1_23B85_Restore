uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSub(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v174);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v175);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v176);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v177);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v178);
  }

  v180 = (*a2)[1];
  v181 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v180);
    ODIE::Platform::abort(v179);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v197 = *a1;
  v198 = v17;
  v199 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v192 = *a1;
  *v193 = v20;
  *&v193[16] = *(a1 + 32);
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v187 = v192;
  *v188 = v20;
  *&v188[16] = *(a1 + 32);
  v189 = 0;
  v190 = 0;
  v191 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v192);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v187);
  v182 = v197;
  *v183 = v198;
  *&v183[16] = v199;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v192, &v187, &v182);
  if (v185)
  {
    v21 = v184;
    v22 = 4 * v185;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v231 = v197;
          *v232 = v198;
          *&v232[16] = v199;
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v226 = v197;
          *v227 = v198;
          *&v227[16] = v199;
          v228 = 0;
          v229 = 0;
          v230 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
          v221 = v197;
          *v222 = v198;
          *&v222[16] = v199;
          v223 = 0;
          v225 = 0;
          v224 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
          v203 = v197;
          v204 = v198;
          v205 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
          v200 = v197;
          v201 = v198;
          v202 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
          if (v219)
          {
            bzero(v218, 4 * v219);
          }

          if (v210)
          {
            bzero(v209, 4 * v210);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v219;
            if (!v219)
            {
LABEL_37:
              v34 = (v215 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v216;
            v30 = v217;
            v31 = v218;
            v32 = v220;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v210;
            if (v210)
            {
              v36 = 0;
              v37 = v207;
              v38 = v208;
              v39 = v209;
              v40 = v211;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v206 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v181 + 2 * v26) = *v34 - *(v206 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v98 = 0;
LABEL_157:
        v99 = v219;
        if (!v219)
        {
LABEL_164:
          v106 = (v215 + 2 * v99);
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v216;
        v102 = v217;
        v103 = v218;
        v104 = v220;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v210;
              if (v210)
              {
                v108 = 0;
                v109 = v207;
                v110 = v208;
                v111 = v209;
                v112 = v211;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_181;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
                v107 = v108;
              }

              if (v106)
              {
                v114 = v206 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_181;
              }

              v115 = *(v206 + 2 * v107);
              v116 = *v106;
              __asm { FCMP            H0, #0 }

              v121 = !_ZF;
              *(v181 + v98) = v121;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v98 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v203);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v212);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v180);
      v61 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v231 = v197;
      *v232 = v198;
      *&v232[16] = v199;
      v233 = 0;
      v234 = 0;
      v235 = 0;
      v226 = v197;
      *v227 = v198;
      *&v227[16] = v199;
      v228 = 0;
      v229 = 0;
      v230 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
      v221 = v197;
      *v222 = v198;
      *&v222[16] = v199;
      v223 = 0;
      v225 = 0;
      v224 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
      v203 = v197;
      v204 = v198;
      v205 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
      v200 = v197;
      v201 = v198;
      v202 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
      if (v219)
      {
        bzero(v218, 4 * v219);
      }

      if (v210)
      {
        bzero(v209, 4 * v210);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v63 = 0;
      while (1)
      {
        v64 = v219;
        if (!v219)
        {
LABEL_104:
          v71 = (v215 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v216;
        v67 = v217;
        v68 = v218;
        v69 = v220;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v210;
        if (v210)
        {
          v73 = 0;
          v74 = v207;
          v75 = v208;
          v76 = v209;
          v77 = v211;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_237;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v206 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v181 + 4 * v63) = *v71 - *(v206 + 4 * v72);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v139 = 0;
LABEL_216:
    v140 = v219;
    if (!v219)
    {
LABEL_223:
      v147 = (v215 + 4 * v140);
      goto LABEL_225;
    }

    v141 = 0;
    v142 = v216;
    v143 = v217;
    v144 = v218;
    v145 = v220;
    while (1)
    {
      v146 = *v142++;
      if (v146 != 1)
      {
        if (*v144 >= *v143)
        {
          v147 = 0;
LABEL_225:
          v148 = v210;
          if (v210)
          {
            v149 = 0;
            v150 = v207;
            v151 = v208;
            v152 = v209;
            v153 = v211;
            do
            {
              v154 = *v150++;
              if (v154 != 1)
              {
                if (*v152 >= *v151)
                {
                  goto LABEL_237;
                }

                v149 += *v153 * *v152;
              }

              ++v153;
              ++v151;
              ++v152;
              --v148;
            }

            while (v148);
            v148 = v149;
          }

          if (v147)
          {
            v155 = v206 == 0;
          }

          else
          {
            v155 = 1;
          }

          if (v155 || (*(v181 + v139) = *v147 != *(v206 + 4 * v148), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203), ++v139, v139 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v203);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v212);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v141 += *v145 * *v144;
      }

      ++v145;
      ++v143;
      ++v144;
      if (!--v140)
      {
        v140 = v141;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v219;
            if (!v219)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v216;
            v48 = v217;
            v49 = v218;
            v50 = v220;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v215 + 4 * v45);
LABEL_73:
            v53 = v210;
            if (v210)
            {
              v54 = 0;
              v55 = v207;
              v56 = v208;
              v57 = v209;
              v58 = v211;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_209;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v206 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v181 + 4 * i) = *v52 - *(v206 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

      else
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v123 = v219;
            if (!v219)
            {
              goto LABEL_195;
            }

            v124 = 0;
            v125 = v216;
            v126 = v217;
            v127 = v218;
            v128 = v220;
            do
            {
              v129 = *v125++;
              if (v129 != 1)
              {
                if (*v127 >= *v126)
                {
                  v130 = 0;
                  goto LABEL_197;
                }

                v124 += *v128 * *v127;
              }

              ++v128;
              ++v126;
              ++v127;
              --v123;
            }

            while (v123);
            v123 = v124;
LABEL_195:
            v130 = (v215 + 4 * v123);
LABEL_197:
            v131 = v210;
            if (v210)
            {
              v132 = 0;
              v133 = v207;
              v134 = v208;
              v135 = v209;
              v136 = v211;
              do
              {
                v137 = *v133++;
                if (v137 != 1)
                {
                  if (*v135 >= *v134)
                  {
                    goto LABEL_209;
                  }

                  v132 += *v136 * *v135;
                }

                ++v136;
                ++v134;
                ++v135;
                --v131;
              }

              while (v131);
              v131 = v132;
            }

            if (v130)
            {
              v138 = v206 == 0;
            }

            else
            {
              v138 = 1;
            }

            if (v138)
            {
              break;
            }

            *(v181 + j) = (*v130 - *(v206 + 4 * v131)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v203);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v212);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v156 = 0;
    while (1)
    {
      v157 = v219;
      if (!v219)
      {
        goto LABEL_251;
      }

      v158 = 0;
      v159 = v216;
      v160 = v217;
      v161 = v218;
      v162 = v220;
      do
      {
        v163 = *v159++;
        if (v163 != 1)
        {
          if (*v161 >= *v160)
          {
            v164 = 0;
            goto LABEL_253;
          }

          v158 += *v162 * *v161;
        }

        ++v162;
        ++v160;
        ++v161;
        --v157;
      }

      while (v157);
      v157 = v158;
LABEL_251:
      v164 = (v215 + 8 * v157);
LABEL_253:
      v165 = v210;
      if (v210)
      {
        v166 = 0;
        v167 = v207;
        v168 = v208;
        v169 = v209;
        v170 = v211;
        do
        {
          v171 = *v167++;
          if (v171 != 1)
          {
            if (*v169 >= *v168)
            {
              goto LABEL_265;
            }

            v166 += *v170 * *v169;
          }

          ++v170;
          ++v168;
          ++v169;
          --v165;
        }

        while (v165);
        v165 = v166;
      }

      if (v164)
      {
        v172 = v206 == 0;
      }

      else
      {
        v172 = 1;
      }

      if (!v172)
      {
        *(v181 + v156) = *v164 - *(v206 + 8 * v165) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
        if (++v156 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v231 = v197;
  *v232 = v198;
  *&v232[16] = v199;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v226 = v197;
  *v227 = v198;
  *&v227[16] = v199;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
  v221 = v197;
  *v222 = v198;
  *&v222[16] = v199;
  v223 = 0;
  v225 = 0;
  v224 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
  v203 = v197;
  v204 = v198;
  v205 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
  v200 = v197;
  v201 = v198;
  v202 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
  if (v219)
  {
    bzero(v218, 4 * v219);
  }

  if (v210)
  {
    bzero(v209, 4 * v210);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v219;
    if (!v219)
    {
LABEL_136:
      v89 = (v215 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v216;
    v85 = v217;
    v86 = v218;
    v87 = v220;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v210;
    if (v210)
    {
      v91 = 0;
      v92 = v207;
      v93 = v208;
      v94 = v209;
      v95 = v211;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_265;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v206 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v181 + 8 * k) = *v89 - *(v206 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v203);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v212);
LABEL_266:
  if (*v222)
  {
    v212 = v221;
    v213 = *v222;
    v214 = *&v222[8];
    (*v222)(&v212, v223);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v227)
  {
    v212 = v226;
    v213 = *v227;
    v214 = *&v227[8];
    (*v227)(&v212, v228);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v232)
  {
    v212 = v231;
    v213 = *v232;
    v214 = *&v232[8];
    (*v232)(&v212, v233);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_273:
  if (*v183)
  {
    v212 = v182;
    v213 = *v183;
    v214 = *&v183[8];
    (*v183)(&v212, v184);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v188)
  {
    v212 = v187;
    v213 = *v188;
    v214 = *&v188[8];
    (*v188)(&v212, v189);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v193)
  {
    v212 = v192;
    v213 = *v193;
    v214 = *&v193[8];
    (*v193)(&v212, v194);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseFloorDivide(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v183);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v184);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v185);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v186);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v187);
  }

  v189 = (*a2)[1];
  v190 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v189);
    ODIE::Platform::abort(v188);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v206 = *a1;
  v207 = v17;
  v208 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v201 = *a1;
  *v202 = v20;
  *&v202[16] = *(a1 + 32);
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v196 = v201;
  *v197 = v20;
  *&v197[16] = *(a1 + 32);
  v198 = 0;
  v199 = 0;
  v200 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v201);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v196);
  v191 = v206;
  *v192 = v207;
  *&v192[16] = v208;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v201, &v196, &v191);
  if (v194)
  {
    v21 = v193;
    v22 = 4 * v194;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v240 = v206;
          *v241 = v207;
          *&v241[16] = v208;
          v242 = 0;
          v243 = 0;
          v244 = 0;
          v235 = v206;
          *v236 = v207;
          *&v236[16] = v208;
          v237 = 0;
          v238 = 0;
          v239 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v240);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v235);
          v230 = v206;
          *v231 = v207;
          *&v231[16] = v208;
          v232 = 0;
          v234 = 0;
          v233 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
          v212 = v206;
          v213 = v207;
          v214 = v208;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v221, &v212, v189, &v240, &v230);
          v209 = v206;
          v210 = v207;
          v211 = v208;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v209, v4, &v235, &v230);
          if (v228)
          {
            bzero(v227, 4 * v228);
          }

          if (v219)
          {
            bzero(v218, 4 * v219);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v228;
            if (!v228)
            {
LABEL_37:
              v34 = (v224 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v225;
            v30 = v226;
            v31 = v227;
            v32 = v229;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v219;
            if (v219)
            {
              v36 = 0;
              v37 = v216;
              v38 = v217;
              v39 = v218;
              v40 = v220;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v215 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              _H0 = *v34;
              _H1 = *(v215 + 2 * v35);
              __asm
              {
                FCVT            D0, H0
                FCVT            D1, H1
              }

              _D0 = floor(_D0 / _D1);
              __asm { FCVT            H0, D0 }

              *(v190 + 2 * v26) = LOWORD(_D0);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v221);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v107 = 0;
LABEL_157:
        v108 = v228;
        if (!v228)
        {
LABEL_164:
          v115 = (v224 + 2 * v108);
          goto LABEL_166;
        }

        v109 = 0;
        v110 = v225;
        v111 = v226;
        v112 = v227;
        v113 = v229;
        while (1)
        {
          v114 = *v110++;
          if (v114 != 1)
          {
            if (*v112 >= *v111)
            {
              v115 = 0;
LABEL_166:
              v116 = v219;
              if (v219)
              {
                v117 = 0;
                v118 = v216;
                v119 = v217;
                v120 = v218;
                v121 = v220;
                do
                {
                  v122 = *v118++;
                  if (v122 != 1)
                  {
                    if (*v120 >= *v119)
                    {
                      goto LABEL_181;
                    }

                    v117 += *v121 * *v120;
                  }

                  ++v121;
                  ++v119;
                  ++v120;
                  --v116;
                }

                while (v116);
                v116 = v117;
              }

              if (v115)
              {
                v123 = v215 == 0;
              }

              else
              {
                v123 = 1;
              }

              if (v123)
              {
                goto LABEL_181;
              }

              _H0 = *v115;
              _H1 = *(v215 + 2 * v116);
              __asm
              {
                FCVT            D0, H0
                FCVT            D1, H1
              }

              _D0 = floor(_D0 / _D1);
              __asm
              {
                FCVT            H0, D0
                FCMP            H0, #0
              }

              v129 = !_ZF;
              *(v190 + v107) = v129;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v221);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              if (++v107 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v212);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v221);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v109 += *v113 * *v112;
          }

          ++v113;
          ++v111;
          ++v112;
          if (!--v108)
          {
            v108 = v109;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v189);
      v70 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v71 = v16;
    }

    else
    {
      v71 = v14;
    }

    if (v10 == 25)
    {
      v240 = v206;
      *v241 = v207;
      *&v241[16] = v208;
      v242 = 0;
      v243 = 0;
      v244 = 0;
      v235 = v206;
      *v236 = v207;
      *&v236[16] = v208;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v71, &v240);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v71, &v235);
      v230 = v206;
      *v231 = v207;
      *&v231[16] = v208;
      v232 = 0;
      v234 = 0;
      v233 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
      v212 = v206;
      v213 = v207;
      v214 = v208;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v221, &v212, v189, &v240, &v230);
      v209 = v206;
      v210 = v207;
      v211 = v208;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v209, v4, &v235, &v230);
      if (v228)
      {
        bzero(v227, 4 * v228);
      }

      if (v219)
      {
        bzero(v218, 4 * v219);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v72 = 0;
      while (1)
      {
        v73 = v228;
        if (!v228)
        {
LABEL_104:
          v80 = (v224 + 4 * v73);
          goto LABEL_106;
        }

        v74 = 0;
        v75 = v225;
        v76 = v226;
        v77 = v227;
        v78 = v229;
        while (1)
        {
          v79 = *v75++;
          if (v79 != 1)
          {
            break;
          }

LABEL_102:
          ++v78;
          ++v76;
          ++v77;
          if (!--v73)
          {
            v73 = v74;
            goto LABEL_104;
          }
        }

        if (*v77 < *v76)
        {
          break;
        }

        v80 = 0;
LABEL_106:
        v81 = v219;
        if (v219)
        {
          v82 = 0;
          v83 = v216;
          v84 = v217;
          v85 = v218;
          v86 = v220;
          do
          {
            v87 = *v83++;
            if (v87 != 1)
            {
              if (*v85 >= *v84)
              {
                goto LABEL_237;
              }

              v82 += *v86 * *v85;
            }

            ++v86;
            ++v84;
            ++v85;
            --v81;
          }

          while (v81);
          v81 = v82;
        }

        if (v80)
        {
          v88 = v215 == 0;
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          *(v190 + 4 * v72) = vcvtmd_s64_f64(*v80 / *(v215 + 4 * v81));
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v221);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212);
          if (++v72 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v74 += *v78 * *v77;
      goto LABEL_102;
    }

    v240 = v206;
    *v241 = v207;
    *&v241[16] = v208;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v235 = v206;
    *v236 = v207;
    *&v236[16] = v208;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v71, &v240);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v71, &v235);
    v230 = v206;
    *v231 = v207;
    *&v231[16] = v208;
    v232 = 0;
    v234 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
    v212 = v206;
    v213 = v207;
    v214 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v221, &v212, v189, &v240, &v230);
    v209 = v206;
    v210 = v207;
    v211 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v209, v4, &v235, &v230);
    if (v228)
    {
      bzero(v227, 4 * v228);
    }

    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v148 = 0;
LABEL_216:
    v149 = v228;
    if (!v228)
    {
LABEL_223:
      v156 = (v224 + 4 * v149);
      goto LABEL_225;
    }

    v150 = 0;
    v151 = v225;
    v152 = v226;
    v153 = v227;
    v154 = v229;
    while (1)
    {
      v155 = *v151++;
      if (v155 != 1)
      {
        if (*v153 >= *v152)
        {
          v156 = 0;
LABEL_225:
          v157 = v219;
          if (v219)
          {
            v158 = 0;
            v159 = v216;
            v160 = v217;
            v161 = v218;
            v162 = v220;
            do
            {
              v163 = *v159++;
              if (v163 != 1)
              {
                if (*v161 >= *v160)
                {
                  goto LABEL_237;
                }

                v158 += *v162 * *v161;
              }

              ++v162;
              ++v160;
              ++v161;
              --v157;
            }

            while (v157);
            v157 = v158;
          }

          if (v156)
          {
            v164 = v215 == 0;
          }

          else
          {
            v164 = 1;
          }

          if (v164 || (*(v190 + v148) = vcvtmd_s64_f64(*v156 / *(v215 + 4 * v157)) != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v221), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212), ++v148, v148 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v221);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v150 += *v154 * *v153;
      }

      ++v154;
      ++v152;
      ++v153;
      if (!--v149)
      {
        v149 = v150;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v51 = v16;
      }

      else
      {
        v51 = v14;
      }

      if (v10 == 69)
      {
        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v53 = v228;
            if (!v228)
            {
              goto LABEL_71;
            }

            v54 = 0;
            v55 = v225;
            v56 = v226;
            v57 = v227;
            v58 = v229;
            do
            {
              v59 = *v55++;
              if (v59 != 1)
              {
                if (*v57 >= *v56)
                {
                  v60 = 0;
                  goto LABEL_73;
                }

                v54 += *v58 * *v57;
              }

              ++v58;
              ++v56;
              ++v57;
              --v53;
            }

            while (v53);
            v53 = v54;
LABEL_71:
            v60 = (v224 + 4 * v53);
LABEL_73:
            v61 = v219;
            if (v219)
            {
              v62 = 0;
              v63 = v216;
              v64 = v217;
              v65 = v218;
              v66 = v220;
              do
              {
                v67 = *v63++;
                if (v67 != 1)
                {
                  if (*v65 >= *v64)
                  {
                    goto LABEL_209;
                  }

                  v62 += *v66 * *v65;
                }

                ++v66;
                ++v64;
                ++v65;
                --v61;
              }

              while (v61);
              v61 = v62;
            }

            if (v60)
            {
              v68 = v215 == 0;
            }

            else
            {
              v68 = 1;
            }

            if (v68)
            {
              break;
            }

            v69 = floor(*v60 / *(v215 + 4 * v61));
            *(v190 + 4 * i) = v69;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v221);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
          }
        }
      }

      else
      {
        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v131 = v228;
            if (!v228)
            {
              goto LABEL_195;
            }

            v132 = 0;
            v133 = v225;
            v134 = v226;
            v135 = v227;
            v136 = v229;
            do
            {
              v137 = *v133++;
              if (v137 != 1)
              {
                if (*v135 >= *v134)
                {
                  v138 = 0;
                  goto LABEL_197;
                }

                v132 += *v136 * *v135;
              }

              ++v136;
              ++v134;
              ++v135;
              --v131;
            }

            while (v131);
            v131 = v132;
LABEL_195:
            v138 = (v224 + 4 * v131);
LABEL_197:
            v139 = v219;
            if (v219)
            {
              v140 = 0;
              v141 = v216;
              v142 = v217;
              v143 = v218;
              v144 = v220;
              do
              {
                v145 = *v141++;
                if (v145 != 1)
                {
                  if (*v143 >= *v142)
                  {
                    goto LABEL_209;
                  }

                  v140 += *v144 * *v143;
                }

                ++v144;
                ++v142;
                ++v143;
                --v139;
              }

              while (v139);
              v139 = v140;
            }

            if (v138)
            {
              v146 = v215 == 0;
            }

            else
            {
              v146 = 1;
            }

            if (v146)
            {
              break;
            }

            v147 = floor(*v138 / *(v215 + 4 * v139));
            *(v190 + j) = v147 != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v221);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v212);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v221);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v89 = v16;
  }

  else
  {
    v89 = v14;
  }

  if (v10 != 70)
  {
    v240 = v206;
    *v241 = v207;
    *&v241[16] = v208;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v235 = v206;
    *v236 = v207;
    *&v236[16] = v208;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v89, &v240);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v89, &v235);
    v230 = v206;
    *v231 = v207;
    *&v231[16] = v208;
    v232 = 0;
    v234 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
    v212 = v206;
    v213 = v207;
    v214 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v221, &v212, v189, &v240, &v230);
    v209 = v206;
    v210 = v207;
    v211 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v209, v4, &v235, &v230);
    if (v228)
    {
      bzero(v227, 4 * v228);
    }

    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v165 = 0;
    while (1)
    {
      v166 = v228;
      if (!v228)
      {
        goto LABEL_251;
      }

      v167 = 0;
      v168 = v225;
      v169 = v226;
      v170 = v227;
      v171 = v229;
      do
      {
        v172 = *v168++;
        if (v172 != 1)
        {
          if (*v170 >= *v169)
          {
            v173 = 0;
            goto LABEL_253;
          }

          v167 += *v171 * *v170;
        }

        ++v171;
        ++v169;
        ++v170;
        --v166;
      }

      while (v166);
      v166 = v167;
LABEL_251:
      v173 = (v224 + 8 * v166);
LABEL_253:
      v174 = v219;
      if (v219)
      {
        v175 = 0;
        v176 = v216;
        v177 = v217;
        v178 = v218;
        v179 = v220;
        do
        {
          v180 = *v176++;
          if (v180 != 1)
          {
            if (*v178 >= *v177)
            {
              goto LABEL_265;
            }

            v175 += *v179 * *v178;
          }

          ++v179;
          ++v177;
          ++v178;
          --v174;
        }

        while (v174);
        v174 = v175;
      }

      if (v173)
      {
        v181 = v215 == 0;
      }

      else
      {
        v181 = 1;
      }

      if (!v181)
      {
        *(v190 + v165) = floor(*v173 / *(v215 + 8 * v174)) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v221);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
        if (++v165 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v240 = v206;
  *v241 = v207;
  *&v241[16] = v208;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v235 = v206;
  *v236 = v207;
  *&v236[16] = v208;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v89, &v240);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v89, &v235);
  v230 = v206;
  *v231 = v207;
  *&v231[16] = v208;
  v232 = 0;
  v234 = 0;
  v233 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
  v212 = v206;
  v213 = v207;
  v214 = v208;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v221, &v212, v189, &v240, &v230);
  v209 = v206;
  v210 = v207;
  v211 = v208;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v209, v4, &v235, &v230);
  if (v228)
  {
    bzero(v227, 4 * v228);
  }

  if (v219)
  {
    bzero(v218, 4 * v219);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v91 = v228;
    if (!v228)
    {
LABEL_136:
      v98 = (v224 + 8 * v91);
      goto LABEL_138;
    }

    v92 = 0;
    v93 = v225;
    v94 = v226;
    v95 = v227;
    v96 = v229;
    while (1)
    {
      v97 = *v93++;
      if (v97 != 1)
      {
        break;
      }

LABEL_134:
      ++v96;
      ++v94;
      ++v95;
      if (!--v91)
      {
        v91 = v92;
        goto LABEL_136;
      }
    }

    if (*v95 < *v94)
    {
      v92 += *v96 * *v95;
      goto LABEL_134;
    }

    v98 = 0;
LABEL_138:
    v99 = v219;
    if (v219)
    {
      v100 = 0;
      v101 = v216;
      v102 = v217;
      v103 = v218;
      v104 = v220;
      do
      {
        v105 = *v101++;
        if (v105 != 1)
        {
          if (*v103 >= *v102)
          {
            goto LABEL_265;
          }

          v100 += *v104 * *v103;
        }

        ++v104;
        ++v102;
        ++v103;
        --v99;
      }

      while (v99);
      v99 = v100;
    }

    if (v98)
    {
      v106 = v215 == 0;
    }

    else
    {
      v106 = 1;
    }

    if (v106)
    {
      break;
    }

    *(v190 + 8 * k) = floor(*v98 / *(v215 + 8 * v99));
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v221);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v212);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v221);
LABEL_266:
  if (*v231)
  {
    v221 = v230;
    v222 = *v231;
    v223 = *&v231[8];
    (*v231)(&v221, v232);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v236)
  {
    v221 = v235;
    v222 = *v236;
    v223 = *&v236[8];
    (*v236)(&v221, v237);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v241)
  {
    v221 = v240;
    v222 = *v241;
    v223 = *&v241[8];
    (*v241)(&v221, v242);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v70 = 0;
LABEL_273:
  if (*v192)
  {
    v221 = v191;
    v222 = *v192;
    v223 = *&v192[8];
    (*v192)(&v221, v193);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v197)
  {
    v221 = v196;
    v222 = *v197;
    v223 = *&v197[8];
    (*v197)(&v221, v198);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v202)
  {
    v221 = v201;
    v222 = *v202;
    v223 = *&v202[8];
    (*v202)(&v221, v203);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v70;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseDivide(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v174);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v175);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v176);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v177);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v178);
  }

  v180 = (*a2)[1];
  v181 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v180);
    ODIE::Platform::abort(v179);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v197 = *a1;
  v198 = v17;
  v199 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v192 = *a1;
  *v193 = v20;
  *&v193[16] = *(a1 + 32);
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v187 = v192;
  *v188 = v20;
  *&v188[16] = *(a1 + 32);
  v189 = 0;
  v190 = 0;
  v191 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v192);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v187);
  v182 = v197;
  *v183 = v198;
  *&v183[16] = v199;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v192, &v187, &v182);
  if (v185)
  {
    v21 = v184;
    v22 = 4 * v185;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v231 = v197;
          *v232 = v198;
          *&v232[16] = v199;
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v226 = v197;
          *v227 = v198;
          *&v227[16] = v199;
          v228 = 0;
          v229 = 0;
          v230 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
          v221 = v197;
          *v222 = v198;
          *&v222[16] = v199;
          v223 = 0;
          v225 = 0;
          v224 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
          v203 = v197;
          v204 = v198;
          v205 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
          v200 = v197;
          v201 = v198;
          v202 = v199;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
          if (v219)
          {
            bzero(v218, 4 * v219);
          }

          if (v210)
          {
            bzero(v209, 4 * v210);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v219;
            if (!v219)
            {
LABEL_37:
              v34 = (v215 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v216;
            v30 = v217;
            v31 = v218;
            v32 = v220;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v210;
            if (v210)
            {
              v36 = 0;
              v37 = v207;
              v38 = v208;
              v39 = v209;
              v40 = v211;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v206 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v181 + 2 * v26) = *v34 / *(v206 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v98 = 0;
LABEL_157:
        v99 = v219;
        if (!v219)
        {
LABEL_164:
          v106 = (v215 + 2 * v99);
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v216;
        v102 = v217;
        v103 = v218;
        v104 = v220;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v210;
              if (v210)
              {
                v108 = 0;
                v109 = v207;
                v110 = v208;
                v111 = v209;
                v112 = v211;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_181;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
                v107 = v108;
              }

              if (v106)
              {
                v114 = v206 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_181;
              }

              v115 = *(v206 + 2 * v107);
              v116 = *v106;
              __asm { FCMP            H0, #0 }

              v121 = !_ZF;
              *(v181 + v98) = v121;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v203);
              if (++v98 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v203);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v212);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v180);
      v61 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v231 = v197;
      *v232 = v198;
      *&v232[16] = v199;
      v233 = 0;
      v234 = 0;
      v235 = 0;
      v226 = v197;
      *v227 = v198;
      *&v227[16] = v199;
      v228 = 0;
      v229 = 0;
      v230 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
      v221 = v197;
      *v222 = v198;
      *&v222[16] = v199;
      v223 = 0;
      v225 = 0;
      v224 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
      v203 = v197;
      v204 = v198;
      v205 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
      v200 = v197;
      v201 = v198;
      v202 = v199;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
      if (v219)
      {
        bzero(v218, 4 * v219);
      }

      if (v210)
      {
        bzero(v209, 4 * v210);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v63 = 0;
      while (1)
      {
        v64 = v219;
        if (!v219)
        {
LABEL_104:
          v71 = (v215 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v216;
        v67 = v217;
        v68 = v218;
        v69 = v220;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v210;
        if (v210)
        {
          v73 = 0;
          v74 = v207;
          v75 = v208;
          v76 = v209;
          v77 = v211;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_237;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v206 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v181 + 4 * v63) = *v71 / *(v206 + 4 * v72);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v139 = 0;
LABEL_216:
    v140 = v219;
    if (!v219)
    {
LABEL_223:
      v147 = (v215 + 4 * v140);
      goto LABEL_225;
    }

    v141 = 0;
    v142 = v216;
    v143 = v217;
    v144 = v218;
    v145 = v220;
    while (1)
    {
      v146 = *v142++;
      if (v146 != 1)
      {
        if (*v144 >= *v143)
        {
          v147 = 0;
LABEL_225:
          v148 = v210;
          if (v210)
          {
            v149 = 0;
            v150 = v207;
            v151 = v208;
            v152 = v209;
            v153 = v211;
            do
            {
              v154 = *v150++;
              if (v154 != 1)
              {
                if (*v152 >= *v151)
                {
                  goto LABEL_237;
                }

                v149 += *v153 * *v152;
              }

              ++v153;
              ++v151;
              ++v152;
              --v148;
            }

            while (v148);
            v148 = v149;
          }

          if (v147)
          {
            v155 = v206 == 0;
          }

          else
          {
            v155 = 1;
          }

          if (v155 || (*(v181 + v139) = *v147 / *(v206 + 4 * v148) != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v203), ++v139, v139 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v203);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v212);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v141 += *v145 * *v144;
      }

      ++v145;
      ++v143;
      ++v144;
      if (!--v140)
      {
        v140 = v141;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v219;
            if (!v219)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v216;
            v48 = v217;
            v49 = v218;
            v50 = v220;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v215 + 4 * v45);
LABEL_73:
            v53 = v210;
            if (v210)
            {
              v54 = 0;
              v55 = v207;
              v56 = v208;
              v57 = v209;
              v58 = v211;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_209;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v206 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v181 + 4 * i) = *v52 / *(v206 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

      else
      {
        v231 = v197;
        *v232 = v198;
        *&v232[16] = v199;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v226 = v197;
        *v227 = v198;
        *&v227[16] = v199;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v231);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v226);
        v221 = v197;
        *v222 = v198;
        *&v222[16] = v199;
        v223 = 0;
        v225 = 0;
        v224 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
        v203 = v197;
        v204 = v198;
        v205 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v203, v180, &v231, &v221);
        v200 = v197;
        v201 = v198;
        v202 = v199;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v203, &v200, v4, &v226, &v221);
        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v210)
        {
          bzero(v209, 4 * v210);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v123 = v219;
            if (!v219)
            {
              goto LABEL_195;
            }

            v124 = 0;
            v125 = v216;
            v126 = v217;
            v127 = v218;
            v128 = v220;
            do
            {
              v129 = *v125++;
              if (v129 != 1)
              {
                if (*v127 >= *v126)
                {
                  v130 = 0;
                  goto LABEL_197;
                }

                v124 += *v128 * *v127;
              }

              ++v128;
              ++v126;
              ++v127;
              --v123;
            }

            while (v123);
            v123 = v124;
LABEL_195:
            v130 = (v215 + 4 * v123);
LABEL_197:
            v131 = v210;
            if (v210)
            {
              v132 = 0;
              v133 = v207;
              v134 = v208;
              v135 = v209;
              v136 = v211;
              do
              {
                v137 = *v133++;
                if (v137 != 1)
                {
                  if (*v135 >= *v134)
                  {
                    goto LABEL_209;
                  }

                  v132 += *v136 * *v135;
                }

                ++v136;
                ++v134;
                ++v135;
                --v131;
              }

              while (v131);
              v131 = v132;
            }

            if (v130)
            {
              v138 = v206 == 0;
            }

            else
            {
              v138 = 1;
            }

            if (v138)
            {
              break;
            }

            *(v181 + j) = (*v130 / *(v206 + 4 * v131)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v203);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v203);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v212);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v231 = v197;
    *v232 = v198;
    *&v232[16] = v199;
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v226 = v197;
    *v227 = v198;
    *&v227[16] = v199;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
    v221 = v197;
    *v222 = v198;
    *&v222[16] = v199;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
    v203 = v197;
    v204 = v198;
    v205 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
    v200 = v197;
    v201 = v198;
    v202 = v199;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v210)
    {
      bzero(v209, 4 * v210);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v156 = 0;
    while (1)
    {
      v157 = v219;
      if (!v219)
      {
        goto LABEL_251;
      }

      v158 = 0;
      v159 = v216;
      v160 = v217;
      v161 = v218;
      v162 = v220;
      do
      {
        v163 = *v159++;
        if (v163 != 1)
        {
          if (*v161 >= *v160)
          {
            v164 = 0;
            goto LABEL_253;
          }

          v158 += *v162 * *v161;
        }

        ++v162;
        ++v160;
        ++v161;
        --v157;
      }

      while (v157);
      v157 = v158;
LABEL_251:
      v164 = (v215 + 8 * v157);
LABEL_253:
      v165 = v210;
      if (v210)
      {
        v166 = 0;
        v167 = v207;
        v168 = v208;
        v169 = v209;
        v170 = v211;
        do
        {
          v171 = *v167++;
          if (v171 != 1)
          {
            if (*v169 >= *v168)
            {
              goto LABEL_265;
            }

            v166 += *v170 * *v169;
          }

          ++v170;
          ++v168;
          ++v169;
          --v165;
        }

        while (v165);
        v165 = v166;
      }

      if (v164)
      {
        v172 = v206 == 0;
      }

      else
      {
        v172 = 1;
      }

      if (!v172)
      {
        *(v181 + v156) = *v164 / *(v206 + 8 * v165) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
        if (++v156 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v231 = v197;
  *v232 = v198;
  *&v232[16] = v199;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v226 = v197;
  *v227 = v198;
  *&v227[16] = v199;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v231);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v226);
  v221 = v197;
  *v222 = v198;
  *&v222[16] = v199;
  v223 = 0;
  v225 = 0;
  v224 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v231, &v226, &v221);
  v203 = v197;
  v204 = v198;
  v205 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v203, v180, &v231, &v221);
  v200 = v197;
  v201 = v198;
  v202 = v199;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v203, &v200, v4, &v226, &v221);
  if (v219)
  {
    bzero(v218, 4 * v219);
  }

  if (v210)
  {
    bzero(v209, 4 * v210);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v219;
    if (!v219)
    {
LABEL_136:
      v89 = (v215 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v216;
    v85 = v217;
    v86 = v218;
    v87 = v220;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v210;
    if (v210)
    {
      v91 = 0;
      v92 = v207;
      v93 = v208;
      v94 = v209;
      v95 = v211;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_265;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v206 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v181 + 8 * k) = *v89 / *(v206 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v203);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v203);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v212);
LABEL_266:
  if (*v222)
  {
    v212 = v221;
    v213 = *v222;
    v214 = *&v222[8];
    (*v222)(&v212, v223);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v227)
  {
    v212 = v226;
    v213 = *v227;
    v214 = *&v227[8];
    (*v227)(&v212, v228);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v232)
  {
    v212 = v231;
    v213 = *v232;
    v214 = *&v232[8];
    (*v232)(&v212, v233);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_273:
  if (*v183)
  {
    v212 = v182;
    v213 = *v183;
    v214 = *&v183[8];
    (*v183)(&v212, v184);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v188)
  {
    v212 = v187;
    v213 = *v188;
    v214 = *&v188[8];
    (*v188)(&v212, v189);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v193)
  {
    v212 = v192;
    v213 = *v193;
    v214 = *&v193[8];
    (*v193)(&v212, v194);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwisePow(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v183);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v184);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v185);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v186);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v187);
  }

  v189 = (*a2)[1];
  v190 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v189);
    ODIE::Platform::abort(v188);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v206 = *a1;
  v207 = v17;
  v208 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v201 = *a1;
  *v202 = v20;
  *&v202[16] = *(a1 + 32);
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v196 = v201;
  *v197 = v20;
  *&v197[16] = *(a1 + 32);
  v198 = 0;
  v199 = 0;
  v200 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v201);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v196);
  v191 = v206;
  *v192 = v207;
  *&v192[16] = v208;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v201, &v196, &v191);
  if (v194)
  {
    v21 = v193;
    v22 = 4 * v194;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v240 = v206;
          *v241 = v207;
          *&v241[16] = v208;
          v242 = 0;
          v243 = 0;
          v244 = 0;
          v235 = v206;
          *v236 = v207;
          *&v236[16] = v208;
          v237 = 0;
          v238 = 0;
          v239 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v240);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v235);
          v230 = v206;
          *v231 = v207;
          *&v231[16] = v208;
          v232 = 0;
          v234 = 0;
          v233 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
          v212 = v206;
          v213 = v207;
          v214 = v208;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v221, &v212, v189, &v240, &v230);
          v209 = v206;
          v210 = v207;
          v211 = v208;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v209, v4, &v235, &v230);
          if (v228)
          {
            bzero(v227, 4 * v228);
          }

          if (v219)
          {
            bzero(v218, 4 * v219);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v228;
            if (!v228)
            {
LABEL_37:
              v34 = (v224 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v225;
            v30 = v226;
            v31 = v227;
            v32 = v229;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v219;
            if (v219)
            {
              v36 = 0;
              v37 = v216;
              v38 = v217;
              v39 = v218;
              v40 = v220;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v215 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              _H0 = *v34;
              _H1 = *(v215 + 2 * v35);
              __asm
              {
                FCVT            D0, H0; __x
                FCVT            D1, H1; __y
              }

              _D0 = pow(_D0, _D1);
              __asm { FCVT            H0, D0 }

              *(v190 + 2 * v26) = LOWORD(_D0);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v221);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v107 = 0;
LABEL_157:
        v108 = v228;
        if (!v228)
        {
LABEL_164:
          v115 = (v224 + 2 * v108);
          goto LABEL_166;
        }

        v109 = 0;
        v110 = v225;
        v111 = v226;
        v112 = v227;
        v113 = v229;
        while (1)
        {
          v114 = *v110++;
          if (v114 != 1)
          {
            if (*v112 >= *v111)
            {
              v115 = 0;
LABEL_166:
              v116 = v219;
              if (v219)
              {
                v117 = 0;
                v118 = v216;
                v119 = v217;
                v120 = v218;
                v121 = v220;
                do
                {
                  v122 = *v118++;
                  if (v122 != 1)
                  {
                    if (*v120 >= *v119)
                    {
                      goto LABEL_181;
                    }

                    v117 += *v121 * *v120;
                  }

                  ++v121;
                  ++v119;
                  ++v120;
                  --v116;
                }

                while (v116);
                v116 = v117;
              }

              if (v115)
              {
                v123 = v215 == 0;
              }

              else
              {
                v123 = 1;
              }

              if (v123)
              {
                goto LABEL_181;
              }

              _H0 = *v115;
              _H1 = *(v215 + 2 * v116);
              __asm
              {
                FCVT            D0, H0; __x
                FCVT            D1, H1; __y
              }

              _D0 = pow(_D0, _D1);
              __asm
              {
                FCVT            H0, D0
                FCMP            H0, #0
              }

              v129 = !_ZF;
              *(v190 + v107) = v129;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v221);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v212);
              if (++v107 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v212);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v221);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v109 += *v113 * *v112;
          }

          ++v113;
          ++v111;
          ++v112;
          if (!--v108)
          {
            v108 = v109;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v189);
      v70 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v71 = v16;
    }

    else
    {
      v71 = v14;
    }

    if (v10 == 25)
    {
      v240 = v206;
      *v241 = v207;
      *&v241[16] = v208;
      v242 = 0;
      v243 = 0;
      v244 = 0;
      v235 = v206;
      *v236 = v207;
      *&v236[16] = v208;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v71, &v240);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v71, &v235);
      v230 = v206;
      *v231 = v207;
      *&v231[16] = v208;
      v232 = 0;
      v234 = 0;
      v233 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
      v212 = v206;
      v213 = v207;
      v214 = v208;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v221, &v212, v189, &v240, &v230);
      v209 = v206;
      v210 = v207;
      v211 = v208;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v209, v4, &v235, &v230);
      if (v228)
      {
        bzero(v227, 4 * v228);
      }

      if (v219)
      {
        bzero(v218, 4 * v219);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v72 = 0;
      while (1)
      {
        v73 = v228;
        if (!v228)
        {
LABEL_104:
          v80 = (v224 + 4 * v73);
          goto LABEL_106;
        }

        v74 = 0;
        v75 = v225;
        v76 = v226;
        v77 = v227;
        v78 = v229;
        while (1)
        {
          v79 = *v75++;
          if (v79 != 1)
          {
            break;
          }

LABEL_102:
          ++v78;
          ++v76;
          ++v77;
          if (!--v73)
          {
            v73 = v74;
            goto LABEL_104;
          }
        }

        if (*v77 < *v76)
        {
          break;
        }

        v80 = 0;
LABEL_106:
        v81 = v219;
        if (v219)
        {
          v82 = 0;
          v83 = v216;
          v84 = v217;
          v85 = v218;
          v86 = v220;
          do
          {
            v87 = *v83++;
            if (v87 != 1)
            {
              if (*v85 >= *v84)
              {
                goto LABEL_237;
              }

              v82 += *v86 * *v85;
            }

            ++v86;
            ++v84;
            ++v85;
            --v81;
          }

          while (v81);
          v81 = v82;
        }

        if (v80)
        {
          v88 = v215 == 0;
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          *(v190 + 4 * v72) = pow(*v80, *(v215 + 4 * v81));
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v221);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212);
          if (++v72 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v74 += *v78 * *v77;
      goto LABEL_102;
    }

    v240 = v206;
    *v241 = v207;
    *&v241[16] = v208;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v235 = v206;
    *v236 = v207;
    *&v236[16] = v208;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v71, &v240);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v71, &v235);
    v230 = v206;
    *v231 = v207;
    *&v231[16] = v208;
    v232 = 0;
    v234 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
    v212 = v206;
    v213 = v207;
    v214 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v221, &v212, v189, &v240, &v230);
    v209 = v206;
    v210 = v207;
    v211 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v212, &v209, v4, &v235, &v230);
    if (v228)
    {
      bzero(v227, 4 * v228);
    }

    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v148 = 0;
LABEL_216:
    v149 = v228;
    if (!v228)
    {
LABEL_223:
      v156 = (v224 + 4 * v149);
      goto LABEL_225;
    }

    v150 = 0;
    v151 = v225;
    v152 = v226;
    v153 = v227;
    v154 = v229;
    while (1)
    {
      v155 = *v151++;
      if (v155 != 1)
      {
        if (*v153 >= *v152)
        {
          v156 = 0;
LABEL_225:
          v157 = v219;
          if (v219)
          {
            v158 = 0;
            v159 = v216;
            v160 = v217;
            v161 = v218;
            v162 = v220;
            do
            {
              v163 = *v159++;
              if (v163 != 1)
              {
                if (*v161 >= *v160)
                {
                  goto LABEL_237;
                }

                v158 += *v162 * *v161;
              }

              ++v162;
              ++v160;
              ++v161;
              --v157;
            }

            while (v157);
            v157 = v158;
          }

          if (v156)
          {
            v164 = v215 == 0;
          }

          else
          {
            v164 = 1;
          }

          if (v164 || (*(v190 + v148) = pow(*v156, *(v215 + 4 * v157)) != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v221), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v212), ++v148, v148 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v212);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v221);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v150 += *v154 * *v153;
      }

      ++v154;
      ++v152;
      ++v153;
      if (!--v149)
      {
        v149 = v150;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v51 = v16;
      }

      else
      {
        v51 = v14;
      }

      if (v10 == 69)
      {
        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v53 = v228;
            if (!v228)
            {
              goto LABEL_71;
            }

            v54 = 0;
            v55 = v225;
            v56 = v226;
            v57 = v227;
            v58 = v229;
            do
            {
              v59 = *v55++;
              if (v59 != 1)
              {
                if (*v57 >= *v56)
                {
                  v60 = 0;
                  goto LABEL_73;
                }

                v54 += *v58 * *v57;
              }

              ++v58;
              ++v56;
              ++v57;
              --v53;
            }

            while (v53);
            v53 = v54;
LABEL_71:
            v60 = (v224 + 4 * v53);
LABEL_73:
            v61 = v219;
            if (v219)
            {
              v62 = 0;
              v63 = v216;
              v64 = v217;
              v65 = v218;
              v66 = v220;
              do
              {
                v67 = *v63++;
                if (v67 != 1)
                {
                  if (*v65 >= *v64)
                  {
                    goto LABEL_209;
                  }

                  v62 += *v66 * *v65;
                }

                ++v66;
                ++v64;
                ++v65;
                --v61;
              }

              while (v61);
              v61 = v62;
            }

            if (v60)
            {
              v68 = v215 == 0;
            }

            else
            {
              v68 = 1;
            }

            if (v68)
            {
              break;
            }

            v69 = pow(*v60, *(v215 + 4 * v61));
            *(v190 + 4 * i) = v69;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v221);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
          }
        }
      }

      else
      {
        v240 = v206;
        *v241 = v207;
        *&v241[16] = v208;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v235 = v206;
        *v236 = v207;
        *&v236[16] = v208;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v240);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v235);
        v230 = v206;
        *v231 = v207;
        *&v231[16] = v208;
        v232 = 0;
        v234 = 0;
        v233 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
        v212 = v206;
        v213 = v207;
        v214 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v221, &v212, v189, &v240, &v230);
        v209 = v206;
        v210 = v207;
        v211 = v208;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v212, &v209, v4, &v235, &v230);
        if (v228)
        {
          bzero(v227, 4 * v228);
        }

        if (v219)
        {
          bzero(v218, 4 * v219);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v131 = v228;
            if (!v228)
            {
              goto LABEL_195;
            }

            v132 = 0;
            v133 = v225;
            v134 = v226;
            v135 = v227;
            v136 = v229;
            do
            {
              v137 = *v133++;
              if (v137 != 1)
              {
                if (*v135 >= *v134)
                {
                  v138 = 0;
                  goto LABEL_197;
                }

                v132 += *v136 * *v135;
              }

              ++v136;
              ++v134;
              ++v135;
              --v131;
            }

            while (v131);
            v131 = v132;
LABEL_195:
            v138 = (v224 + 4 * v131);
LABEL_197:
            v139 = v219;
            if (v219)
            {
              v140 = 0;
              v141 = v216;
              v142 = v217;
              v143 = v218;
              v144 = v220;
              do
              {
                v145 = *v141++;
                if (v145 != 1)
                {
                  if (*v143 >= *v142)
                  {
                    goto LABEL_209;
                  }

                  v140 += *v144 * *v143;
                }

                ++v144;
                ++v142;
                ++v143;
                --v139;
              }

              while (v139);
              v139 = v140;
            }

            if (v138)
            {
              v146 = v215 == 0;
            }

            else
            {
              v146 = 1;
            }

            if (v146)
            {
              break;
            }

            v147 = pow(*v138, *(v215 + 4 * v139));
            *(v190 + j) = v147 != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v221);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v212);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v212);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v221);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v89 = v16;
  }

  else
  {
    v89 = v14;
  }

  if (v10 != 70)
  {
    v240 = v206;
    *v241 = v207;
    *&v241[16] = v208;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v235 = v206;
    *v236 = v207;
    *&v236[16] = v208;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v89, &v240);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v89, &v235);
    v230 = v206;
    *v231 = v207;
    *&v231[16] = v208;
    v232 = 0;
    v234 = 0;
    v233 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
    v212 = v206;
    v213 = v207;
    v214 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v221, &v212, v189, &v240, &v230);
    v209 = v206;
    v210 = v207;
    v211 = v208;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v209, v4, &v235, &v230);
    if (v228)
    {
      bzero(v227, 4 * v228);
    }

    if (v219)
    {
      bzero(v218, 4 * v219);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v165 = 0;
    while (1)
    {
      v166 = v228;
      if (!v228)
      {
        goto LABEL_251;
      }

      v167 = 0;
      v168 = v225;
      v169 = v226;
      v170 = v227;
      v171 = v229;
      do
      {
        v172 = *v168++;
        if (v172 != 1)
        {
          if (*v170 >= *v169)
          {
            v173 = 0;
            goto LABEL_253;
          }

          v167 += *v171 * *v170;
        }

        ++v171;
        ++v169;
        ++v170;
        --v166;
      }

      while (v166);
      v166 = v167;
LABEL_251:
      v173 = (v224 + 8 * v166);
LABEL_253:
      v174 = v219;
      if (v219)
      {
        v175 = 0;
        v176 = v216;
        v177 = v217;
        v178 = v218;
        v179 = v220;
        do
        {
          v180 = *v176++;
          if (v180 != 1)
          {
            if (*v178 >= *v177)
            {
              goto LABEL_265;
            }

            v175 += *v179 * *v178;
          }

          ++v179;
          ++v177;
          ++v178;
          --v174;
        }

        while (v174);
        v174 = v175;
      }

      if (v173)
      {
        v181 = v215 == 0;
      }

      else
      {
        v181 = 1;
      }

      if (!v181)
      {
        *(v190 + v165) = pow(*v173, *(v215 + 8 * v174)) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v221);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
        if (++v165 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v240 = v206;
  *v241 = v207;
  *&v241[16] = v208;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v235 = v206;
  *v236 = v207;
  *&v236[16] = v208;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v89, &v240);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v89, &v235);
  v230 = v206;
  *v231 = v207;
  *&v231[16] = v208;
  v232 = 0;
  v234 = 0;
  v233 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v240, &v235, &v230);
  v212 = v206;
  v213 = v207;
  v214 = v208;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v221, &v212, v189, &v240, &v230);
  v209 = v206;
  v210 = v207;
  v211 = v208;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v212, &v209, v4, &v235, &v230);
  if (v228)
  {
    bzero(v227, 4 * v228);
  }

  if (v219)
  {
    bzero(v218, 4 * v219);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v91 = v228;
    if (!v228)
    {
LABEL_136:
      v98 = (v224 + 8 * v91);
      goto LABEL_138;
    }

    v92 = 0;
    v93 = v225;
    v94 = v226;
    v95 = v227;
    v96 = v229;
    while (1)
    {
      v97 = *v93++;
      if (v97 != 1)
      {
        break;
      }

LABEL_134:
      ++v96;
      ++v94;
      ++v95;
      if (!--v91)
      {
        v91 = v92;
        goto LABEL_136;
      }
    }

    if (*v95 < *v94)
    {
      v92 += *v96 * *v95;
      goto LABEL_134;
    }

    v98 = 0;
LABEL_138:
    v99 = v219;
    if (v219)
    {
      v100 = 0;
      v101 = v216;
      v102 = v217;
      v103 = v218;
      v104 = v220;
      do
      {
        v105 = *v101++;
        if (v105 != 1)
        {
          if (*v103 >= *v102)
          {
            goto LABEL_265;
          }

          v100 += *v104 * *v103;
        }

        ++v104;
        ++v102;
        ++v103;
        --v99;
      }

      while (v99);
      v99 = v100;
    }

    if (v98)
    {
      v106 = v215 == 0;
    }

    else
    {
      v106 = 1;
    }

    if (v106)
    {
      break;
    }

    *(v190 + 8 * k) = pow(*v98, *(v215 + 8 * v99));
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v221);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v212);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v212);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v221);
LABEL_266:
  if (*v231)
  {
    v221 = v230;
    v222 = *v231;
    v223 = *&v231[8];
    (*v231)(&v221, v232);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v236)
  {
    v221 = v235;
    v222 = *v236;
    v223 = *&v236[8];
    (*v236)(&v221, v237);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v241)
  {
    v221 = v240;
    v222 = *v241;
    v223 = *&v241[8];
    (*v241)(&v221, v242);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v70 = 0;
LABEL_273:
  if (*v192)
  {
    v221 = v191;
    v222 = *v192;
    v223 = *&v192[8];
    (*v192)(&v221, v193);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v197)
  {
    v221 = v196;
    v222 = *v197;
    v223 = *&v197[8];
    (*v197)(&v221, v198);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v202)
  {
    v221 = v201;
    v222 = *v202;
    v223 = *&v202[8];
    (*v202)(&v221, v203);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v70;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseEqual(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v187);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v188);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v189);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v190);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v191);
  }

  v193 = (*a2)[1];
  v194 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v193);
    ODIE::Platform::abort(v192);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v210 = *a1;
  v211 = v17;
  v212 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v205 = *a1;
  *v206 = v20;
  *&v206[16] = *(a1 + 32);
  v207 = 0;
  v208 = 0;
  v209 = 0;
  v200 = v205;
  *v201 = v20;
  *&v201[16] = *(a1 + 32);
  v202 = 0;
  v203 = 0;
  v204 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v205);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v200);
  v195 = v210;
  *v196 = v211;
  *&v196[16] = v212;
  v197 = 0;
  v198 = 0;
  v199 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v205, &v200, &v195);
  if (v198)
  {
    v21 = v197;
    v22 = 4 * v198;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v244 = v210;
          *v245 = v211;
          *&v245[16] = v212;
          v246 = 0;
          v247 = 0;
          v248 = 0;
          v239 = v210;
          *v240 = v211;
          *&v240[16] = v212;
          v241 = 0;
          v242 = 0;
          v243 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v244);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v239);
          v234 = v210;
          *v235 = v211;
          *&v235[16] = v212;
          v236 = 0;
          v238 = 0;
          v237 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
          v216 = v210;
          v217 = v211;
          v218 = v212;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v225, &v216, v193, &v244, &v234);
          v213 = v210;
          v214 = v211;
          v215 = v212;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v216, &v213, v4, &v239, &v234);
          if (v232)
          {
            bzero(v231, 4 * v232);
          }

          if (v223)
          {
            bzero(v222, 4 * v223);
          }

          if (v23 < 1)
          {
            goto LABEL_197;
          }

          v26 = 0;
          while (1)
          {
            v27 = v232;
            if (!v232)
            {
LABEL_37:
              v34 = (v228 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v229;
            v30 = v230;
            v31 = v231;
            v32 = v233;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v223;
            if (v223)
            {
              v36 = 0;
              v37 = v220;
              v38 = v221;
              v39 = v222;
              v40 = v224;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_197;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              v42 = v219 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              if (*v34 == *(v219 + 2 * v35))
              {
                LOWORD(v43) = COERCE_UNSIGNED_INT(1.0);
              }

              else
              {
                v43 = COERCE_SHORT_FLOAT(0);
              }

              *(v194 + 2 * v26) = v43;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v225);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v216);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_197;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v244 = v210;
        *v245 = v211;
        *&v245[16] = v212;
        v246 = 0;
        v247 = 0;
        v248 = 0;
        v239 = v210;
        *v240 = v211;
        *&v240[16] = v212;
        v241 = 0;
        v242 = 0;
        v243 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v244);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v239);
        v234 = v210;
        *v235 = v211;
        *&v235[16] = v212;
        v236 = 0;
        v238 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
        v216 = v210;
        v217 = v211;
        v218 = v212;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v225, &v216, v193, &v244, &v234);
        v213 = v210;
        v214 = v211;
        v215 = v212;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v216, &v213, v4, &v239, &v234);
        if (v232)
        {
          bzero(v231, 4 * v232);
        }

        if (v223)
        {
          bzero(v222, 4 * v223);
        }

        if (v23 < 1)
        {
          goto LABEL_197;
        }

        v107 = 0;
LABEL_176:
        v108 = v232;
        if (!v232)
        {
LABEL_183:
          v115 = (v228 + 2 * v108);
          goto LABEL_185;
        }

        v109 = 0;
        v110 = v229;
        v111 = v230;
        v112 = v231;
        v113 = v233;
        while (1)
        {
          v114 = *v110++;
          if (v114 != 1)
          {
            if (*v112 >= *v111)
            {
              v115 = 0;
LABEL_185:
              v116 = v223;
              if (v223)
              {
                v117 = 0;
                v118 = v220;
                v119 = v221;
                v120 = v222;
                v121 = v224;
                do
                {
                  v122 = *v118++;
                  if (v122 != 1)
                  {
                    if (*v120 >= *v119)
                    {
                      goto LABEL_197;
                    }

                    v117 += *v121 * *v120;
                  }

                  ++v121;
                  ++v119;
                  ++v120;
                  --v116;
                }

                while (v116);
                v116 = v117;
              }

              if (v115)
              {
                v123 = v219 == 0;
              }

              else
              {
                v123 = 1;
              }

              if (v123 || (*(v194 + v107) = *v115 == *(v219 + 2 * v116), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v225), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v216), ++v107, v107 == v23))
              {
LABEL_197:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v216);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v225);
                goto LABEL_261;
              }

              goto LABEL_176;
            }

            v109 += *v113 * *v112;
          }

          ++v113;
          ++v111;
          ++v112;
          if (!--v108)
          {
            v108 = v109;
            goto LABEL_183;
          }
        }
      }

LABEL_97:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v193);
      v66 = 3;
      goto LABEL_309;
    }

    if (v14 <= v16)
    {
      v67 = v16;
    }

    else
    {
      v67 = v14;
    }

    if (v10 == 25)
    {
      v244 = v210;
      *v245 = v211;
      *&v245[16] = v212;
      v246 = 0;
      v247 = 0;
      v248 = 0;
      v239 = v210;
      *v240 = v211;
      *&v240[16] = v212;
      v241 = 0;
      v242 = 0;
      v243 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v67, &v244);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v67, &v239);
      v234 = v210;
      *v235 = v211;
      *&v235[16] = v212;
      v236 = 0;
      v238 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
      v216 = v210;
      v217 = v211;
      v218 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v225, &v216, v193, &v244, &v234);
      v213 = v210;
      v214 = v211;
      v215 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v216, &v213, v4, &v239, &v234);
      if (v232)
      {
        bzero(v231, 4 * v232);
      }

      if (v223)
      {
        bzero(v222, 4 * v223);
      }

      if (v23 < 1)
      {
        goto LABEL_260;
      }

      v68 = 0;
      while (1)
      {
        v69 = v232;
        if (!v232)
        {
LABEL_115:
          v76 = (v228 + 4 * v69);
          goto LABEL_117;
        }

        v70 = 0;
        v71 = v229;
        v72 = v230;
        v73 = v231;
        v74 = v233;
        while (1)
        {
          v75 = *v71++;
          if (v75 != 1)
          {
            break;
          }

LABEL_113:
          ++v74;
          ++v72;
          ++v73;
          if (!--v69)
          {
            v69 = v70;
            goto LABEL_115;
          }
        }

        if (*v73 < *v72)
        {
          break;
        }

        v76 = 0;
LABEL_117:
        v77 = v223;
        if (v223)
        {
          v78 = 0;
          v79 = v220;
          v80 = v221;
          v81 = v222;
          v82 = v224;
          do
          {
            v83 = *v79++;
            if (v83 != 1)
            {
              if (*v81 >= *v80)
              {
                goto LABEL_260;
              }

              v78 += *v82 * *v81;
            }

            ++v82;
            ++v80;
            ++v81;
            --v77;
          }

          while (v77);
          v77 = v78;
        }

        if (v76)
        {
          v84 = v219 == 0;
        }

        else
        {
          v84 = 1;
        }

        if (!v84)
        {
          *(v194 + 4 * v68) = *v76 == *(v219 + 4 * v77);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v225);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v216);
          if (++v68 != v23)
          {
            continue;
          }
        }

        goto LABEL_260;
      }

      v70 += *v74 * *v73;
      goto LABEL_113;
    }

    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v67, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v67, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_260;
    }

    v145 = 0;
LABEL_239:
    v146 = v232;
    if (!v232)
    {
LABEL_246:
      v153 = (v228 + 4 * v146);
      goto LABEL_248;
    }

    v147 = 0;
    v148 = v229;
    v149 = v230;
    v150 = v231;
    v151 = v233;
    while (1)
    {
      v152 = *v148++;
      if (v152 != 1)
      {
        if (*v150 >= *v149)
        {
          v153 = 0;
LABEL_248:
          v154 = v223;
          if (v223)
          {
            v155 = 0;
            v156 = v220;
            v157 = v221;
            v158 = v222;
            v159 = v224;
            do
            {
              v160 = *v156++;
              if (v160 != 1)
              {
                if (*v158 >= *v157)
                {
                  goto LABEL_260;
                }

                v155 += *v159 * *v158;
              }

              ++v159;
              ++v157;
              ++v158;
              --v154;
            }

            while (v154);
            v154 = v155;
          }

          if (v153)
          {
            v161 = v219 == 0;
          }

          else
          {
            v161 = 1;
          }

          if (v161 || (*(v194 + v145) = *v153 == *(v219 + 4 * v154), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v225), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v216), ++v145, v145 == v23))
          {
LABEL_260:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v216);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v225);
LABEL_261:
            if (*v235)
            {
              v225 = v234;
              v226 = *v235;
              v227 = *&v235[8];
              (*v235)(&v225, v236);
            }

            else
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
            }

            if (*v240)
            {
              v225 = v239;
              v226 = *v240;
              v227 = *&v240[8];
              (*v240)(&v225, v241);
            }

            else
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
            }

            v162 = *v245;
            if (*v245)
            {
              v163 = v246;
              v225 = v244;
              v226 = *v245;
              v164 = *&v245[8];
              goto LABEL_307;
            }

LABEL_325:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback", v193);
            goto LABEL_308;
          }

          goto LABEL_239;
        }

        v147 += *v151 * *v150;
      }

      ++v151;
      ++v149;
      ++v150;
      if (!--v146)
      {
        v146 = v147;
        goto LABEL_246;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 != 69)
    {
      goto LABEL_97;
    }

    if (v14 <= v16)
    {
      v44 = v16;
    }

    else
    {
      v44 = v14;
    }

    if (v10 == 69)
    {
      v244 = v210;
      *v245 = v211;
      *&v245[16] = v212;
      v246 = 0;
      v247 = 0;
      v248 = 0;
      v239 = v210;
      *v240 = v211;
      *&v240[16] = v212;
      v241 = 0;
      v242 = 0;
      v243 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v244);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v239);
      v234 = v210;
      *v235 = v211;
      *&v235[16] = v212;
      v236 = 0;
      v238 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
      v216 = v210;
      v217 = v211;
      v218 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v225, &v216, v193, &v244, &v234);
      v213 = v210;
      v214 = v211;
      v215 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v216, &v213, v4, &v239, &v234);
      if (v232)
      {
        bzero(v231, 4 * v232);
      }

      if (v223)
      {
        bzero(v222, 4 * v223);
      }

      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          v46 = v232;
          if (!v232)
          {
            goto LABEL_74;
          }

          v47 = 0;
          v48 = v229;
          v49 = v230;
          v50 = v231;
          v51 = v233;
          do
          {
            v52 = *v48++;
            if (v52 != 1)
            {
              if (*v50 >= *v49)
              {
                v53 = 0;
                goto LABEL_76;
              }

              v47 += *v51 * *v50;
            }

            ++v51;
            ++v49;
            ++v50;
            --v46;
          }

          while (v46);
          v46 = v47;
LABEL_74:
          v53 = (v228 + 4 * v46);
LABEL_76:
          v54 = v223;
          if (v223)
          {
            v55 = 0;
            v56 = v220;
            v57 = v221;
            v58 = v222;
            v59 = v224;
            do
            {
              v60 = *v56++;
              if (v60 != 1)
              {
                if (*v58 >= *v57)
                {
                  goto LABEL_232;
                }

                v55 += *v59 * *v58;
              }

              ++v59;
              ++v57;
              ++v58;
              --v54;
            }

            while (v54);
            v54 = v55;
          }

          if (v53)
          {
            v61 = v219 == 0;
          }

          else
          {
            v61 = 1;
          }

          if (v61)
          {
            break;
          }

          v62 = *v53;
          v63 = *(v219 + 4 * v54);
          v64 = 1.0;
          if (*v53 != v63)
          {
            v64 = 0.0;
            if (v62 > 0.0 == v63 > 0.0)
            {
              v64 = 1.0;
              if (vabds_f32(v62, v63) > (fmaxf(v62, v63) * 0.00000011921))
              {
                v65 = LODWORD(v62) - LODWORD(v63);
                if (LODWORD(v62) - LODWORD(v63) < 0)
                {
                  v65 = LODWORD(v63) - LODWORD(v62);
                }

                if (v65 >= 4)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = 1.0;
                }
              }
            }
          }

          *(v194 + 4 * i) = v64;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v225);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v216);
        }
      }

LABEL_232:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v216);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v225);
      goto LABEL_261;
    }

    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_232;
    }

    v124 = 0;
    while (1)
    {
      v125 = v232;
      if (!v232)
      {
        goto LABEL_211;
      }

      v126 = 0;
      v127 = v229;
      v128 = v230;
      v129 = v231;
      v130 = v233;
      do
      {
        v131 = *v127++;
        if (v131 != 1)
        {
          if (*v129 >= *v128)
          {
            v132 = 0;
            goto LABEL_213;
          }

          v126 += *v130 * *v129;
        }

        ++v130;
        ++v128;
        ++v129;
        --v125;
      }

      while (v125);
      v125 = v126;
LABEL_211:
      v132 = (v228 + 4 * v125);
LABEL_213:
      v133 = v223;
      if (v223)
      {
        v134 = 0;
        v135 = v220;
        v136 = v221;
        v137 = v222;
        v138 = v224;
        do
        {
          v139 = *v135++;
          if (v139 != 1)
          {
            if (*v137 >= *v136)
            {
              goto LABEL_232;
            }

            v134 += *v138 * *v137;
          }

          ++v138;
          ++v136;
          ++v137;
          --v133;
        }

        while (v133);
        v133 = v134;
      }

      if (v132)
      {
        v140 = v219 == 0;
      }

      else
      {
        v140 = 1;
      }

      if (v140)
      {
        goto LABEL_232;
      }

      v141 = *v132;
      v142 = *(v219 + 4 * v133);
      if (*v132 == v142)
      {
        goto LABEL_230;
      }

      v143 = 0;
      if (v141 > 0.0 == v142 > 0.0)
      {
        break;
      }

LABEL_231:
      *(v194 + v124) = v143;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v225);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v216);
      if (++v124 == v23)
      {
        goto LABEL_232;
      }
    }

    if (vabds_f32(v141, v142) > (fmaxf(v141, v142) * 0.00000011921))
    {
      v144 = LODWORD(v141) - LODWORD(v142);
      if (LODWORD(v141) - LODWORD(v142) < 0)
      {
        v144 = LODWORD(v142) - LODWORD(v141);
      }

      v143 = v144 < 4;
      goto LABEL_231;
    }

LABEL_230:
    v143 = 1;
    goto LABEL_231;
  }

  if (v14 <= v16)
  {
    v85 = v16;
  }

  else
  {
    v85 = v14;
  }

  if (v10 != 70)
  {
    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v85, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v85, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_301;
    }

    v165 = 0;
    while (1)
    {
      v166 = v232;
      if (!v232)
      {
        goto LABEL_280;
      }

      v167 = 0;
      v168 = v229;
      v169 = v230;
      v170 = v231;
      v171 = v233;
      do
      {
        v172 = *v168++;
        if (v172 != 1)
        {
          if (*v170 >= *v169)
          {
            v173 = 0;
            goto LABEL_282;
          }

          v167 += *v171 * *v170;
        }

        ++v171;
        ++v169;
        ++v170;
        --v166;
      }

      while (v166);
      v166 = v167;
LABEL_280:
      v173 = (v228 + 8 * v166);
LABEL_282:
      v174 = v223;
      if (v223)
      {
        v175 = 0;
        v176 = v220;
        v177 = v221;
        v178 = v222;
        v179 = v224;
        do
        {
          v180 = *v176++;
          if (v180 != 1)
          {
            if (*v178 >= *v177)
            {
              goto LABEL_301;
            }

            v175 += *v179 * *v178;
          }

          ++v179;
          ++v177;
          ++v178;
          --v174;
        }

        while (v174);
        v174 = v175;
      }

      if (v173)
      {
        v181 = v219 == 0;
      }

      else
      {
        v181 = 1;
      }

      if (v181)
      {
        goto LABEL_301;
      }

      v182 = *v173;
      v183 = *(v219 + 8 * v174);
      if (*v173 == v183)
      {
        goto LABEL_299;
      }

      v184 = 0;
      if (v182 > 0.0 == v183 > 0.0)
      {
        break;
      }

LABEL_300:
      *(v194 + v165) = v184;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v225);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v216);
      if (++v165 == v23)
      {
        goto LABEL_301;
      }
    }

    if (vabdd_f64(v182, v183) > fmax(v182, v183) * 2.22044605e-16)
    {
      v185 = *&v182 - *&v183;
      if ((*&v182 - *&v183) < 0)
      {
        v185 = *&v183 - *&v182;
      }

      v184 = v185 < 4;
      goto LABEL_300;
    }

LABEL_299:
    v184 = 1;
    goto LABEL_300;
  }

  v244 = v210;
  *v245 = v211;
  *&v245[16] = v212;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  v239 = v210;
  *v240 = v211;
  *&v240[16] = v212;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v85, &v244);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v85, &v239);
  v234 = v210;
  *v235 = v211;
  *&v235[16] = v212;
  v236 = 0;
  v238 = 0;
  v237 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
  v216 = v210;
  v217 = v211;
  v218 = v212;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v225, &v216, v193, &v244, &v234);
  v213 = v210;
  v214 = v211;
  v215 = v212;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v216, &v213, v4, &v239, &v234);
  if (v232)
  {
    bzero(v231, 4 * v232);
  }

  if (v223)
  {
    bzero(v222, 4 * v223);
  }

  if (v23 < 1)
  {
    goto LABEL_301;
  }

  for (j = 0; j != v23; ++j)
  {
    v87 = v232;
    if (!v232)
    {
LABEL_147:
      v94 = (v228 + 8 * v87);
      goto LABEL_149;
    }

    v88 = 0;
    v89 = v229;
    v90 = v230;
    v91 = v231;
    v92 = v233;
    while (1)
    {
      v93 = *v89++;
      if (v93 != 1)
      {
        break;
      }

LABEL_145:
      ++v92;
      ++v90;
      ++v91;
      if (!--v87)
      {
        v87 = v88;
        goto LABEL_147;
      }
    }

    if (*v91 < *v90)
    {
      v88 += *v92 * *v91;
      goto LABEL_145;
    }

    v94 = 0;
LABEL_149:
    v95 = v223;
    if (v223)
    {
      v96 = 0;
      v97 = v220;
      v98 = v221;
      v99 = v222;
      v100 = v224;
      do
      {
        v101 = *v97++;
        if (v101 != 1)
        {
          if (*v99 >= *v98)
          {
            goto LABEL_301;
          }

          v96 += *v100 * *v99;
        }

        ++v100;
        ++v98;
        ++v99;
        --v95;
      }

      while (v95);
      v95 = v96;
    }

    if (v94)
    {
      v102 = v219 == 0;
    }

    else
    {
      v102 = 1;
    }

    if (v102)
    {
      break;
    }

    v103 = *v94;
    v104 = *(v219 + 8 * v95);
    v105 = 1.0;
    if (*v94 != v104)
    {
      v105 = 0.0;
      if (v103 > 0.0 == v104 > 0.0)
      {
        v105 = 1.0;
        if (vabdd_f64(v103, v104) > fmax(v103, v104) * 2.22044605e-16)
        {
          v106 = *&v103 - *&v104;
          if ((*&v103 - *&v104) < 0)
          {
            v106 = *&v104 - *&v103;
          }

          if (v106 >= 4)
          {
            v105 = 0.0;
          }

          else
          {
            v105 = 1.0;
          }
        }
      }
    }

    *(v194 + 8 * j) = v105;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v225);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v216);
  }

LABEL_301:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v216);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v225);
  if (*v235)
  {
    v225 = v234;
    v226 = *v235;
    v227 = *&v235[8];
    (*v235)(&v225, v236);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v240)
  {
    v225 = v239;
    v226 = *v240;
    v227 = *&v240[8];
    (*v240)(&v225, v241);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v162 = *v245;
  if (!*v245)
  {
    goto LABEL_325;
  }

  v163 = v246;
  v225 = v244;
  v226 = *v245;
  v164 = *&v245[8];
LABEL_307:
  v227 = v164;
  v162(&v225, v163);
LABEL_308:
  v66 = 0;
LABEL_309:
  if (*v196)
  {
    v225 = v195;
    v226 = *v196;
    v227 = *&v196[8];
    (*v196)(&v225, v197);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v201)
  {
    v225 = v200;
    v226 = *v201;
    v227 = *&v201[8];
    (*v201)(&v225, v202);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v206)
  {
    v225 = v205;
    v226 = *v206;
    v227 = *&v206[8];
    (*v206)(&v225, v207);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v66;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseGreater(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v170);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v171);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v172);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v173);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v174);
  }

  v176 = (*a2)[1];
  v177 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v176);
    ODIE::Platform::abort(v175);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v193 = *a1;
  v194 = v17;
  v195 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v188 = *a1;
  *v189 = v20;
  *&v189[16] = *(a1 + 32);
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v183 = v188;
  *v184 = v20;
  *&v184[16] = *(a1 + 32);
  v185 = 0;
  v186 = 0;
  v187 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v188);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v183);
  v178 = v193;
  *v179 = v194;
  *&v179[16] = v195;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v188, &v183, &v178);
  if (v181)
  {
    v21 = v180;
    v22 = 4 * v181;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v227 = v193;
          *v228 = v194;
          *&v228[16] = v195;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          v222 = v193;
          *v223 = v194;
          *&v223[16] = v195;
          v224 = 0;
          v225 = 0;
          v226 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v227);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v222);
          v217 = v193;
          *v218 = v194;
          *&v218[16] = v195;
          v219 = 0;
          v221 = 0;
          v220 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
          v199 = v193;
          v200 = v194;
          v201 = v195;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v208, &v199, v176, &v227, &v217);
          v196 = v193;
          v197 = v194;
          v198 = v195;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v199, &v196, v4, &v222, &v217);
          if (v215)
          {
            bzero(v214, 4 * v215);
          }

          if (v206)
          {
            bzero(v205, 4 * v206);
          }

          if (v23 < 1)
          {
            goto LABEL_187;
          }

          v26 = 0;
          while (1)
          {
            v27 = v215;
            if (!v215)
            {
LABEL_37:
              v34 = (v211 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v212;
            v30 = v213;
            v31 = v214;
            v32 = v216;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v206;
            if (v206)
            {
              v36 = 0;
              v37 = v203;
              v38 = v204;
              v39 = v205;
              v40 = v207;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_187;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              v42 = v202 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              if (*v34 <= *(v202 + 2 * v35))
              {
                v43 = COERCE_SHORT_FLOAT(0);
              }

              else
              {
                LOWORD(v43) = COERCE_UNSIGNED_INT(1.0);
              }

              *(v177 + 2 * v26) = v43;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v208);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v199);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_187;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v227 = v193;
        *v228 = v194;
        *&v228[16] = v195;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        v222 = v193;
        *v223 = v194;
        *&v223[16] = v195;
        v224 = 0;
        v225 = 0;
        v226 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v227);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v222);
        v217 = v193;
        *v218 = v194;
        *&v218[16] = v195;
        v219 = 0;
        v221 = 0;
        v220 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
        v199 = v193;
        v200 = v194;
        v201 = v195;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v208, &v199, v176, &v227, &v217);
        v196 = v193;
        v197 = v194;
        v198 = v195;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v199, &v196, v4, &v222, &v217);
        if (v215)
        {
          bzero(v214, 4 * v215);
        }

        if (v206)
        {
          bzero(v205, 4 * v206);
        }

        if (v23 < 1)
        {
          goto LABEL_187;
        }

        v101 = 0;
LABEL_166:
        v102 = v215;
        if (!v215)
        {
LABEL_173:
          v109 = (v211 + 2 * v102);
          goto LABEL_175;
        }

        v103 = 0;
        v104 = v212;
        v105 = v213;
        v106 = v214;
        v107 = v216;
        while (1)
        {
          v108 = *v104++;
          if (v108 != 1)
          {
            if (*v106 >= *v105)
            {
              v109 = 0;
LABEL_175:
              v110 = v206;
              if (v206)
              {
                v111 = 0;
                v112 = v203;
                v113 = v204;
                v114 = v205;
                v115 = v207;
                do
                {
                  v116 = *v112++;
                  if (v116 != 1)
                  {
                    if (*v114 >= *v113)
                    {
                      goto LABEL_187;
                    }

                    v111 += *v115 * *v114;
                  }

                  ++v115;
                  ++v113;
                  ++v114;
                  --v110;
                }

                while (v110);
                v110 = v111;
              }

              if (v109)
              {
                v117 = v202 == 0;
              }

              else
              {
                v117 = 1;
              }

              if (v117 || (*(v177 + v101) = *v109 > *(v202 + 2 * v110), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v208), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v199), ++v101, v101 == v23))
              {
LABEL_187:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v199);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v208);
                goto LABEL_272;
              }

              goto LABEL_166;
            }

            v103 += *v107 * *v106;
          }

          ++v107;
          ++v105;
          ++v106;
          if (!--v102)
          {
            v102 = v103;
            goto LABEL_173;
          }
        }
      }

LABEL_92:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v176);
      v63 = 3;
      goto LABEL_279;
    }

    if (v14 <= v16)
    {
      v64 = v16;
    }

    else
    {
      v64 = v14;
    }

    if (v10 == 25)
    {
      v227 = v193;
      *v228 = v194;
      *&v228[16] = v195;
      v229 = 0;
      v230 = 0;
      v231 = 0;
      v222 = v193;
      *v223 = v194;
      *&v223[16] = v195;
      v224 = 0;
      v225 = 0;
      v226 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v227);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v222);
      v217 = v193;
      *v218 = v194;
      *&v218[16] = v195;
      v219 = 0;
      v221 = 0;
      v220 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
      v199 = v193;
      v200 = v194;
      v201 = v195;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v208, &v199, v176, &v227, &v217);
      v196 = v193;
      v197 = v194;
      v198 = v195;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v199, &v196, v4, &v222, &v217);
      if (v215)
      {
        bzero(v214, 4 * v215);
      }

      if (v206)
      {
        bzero(v205, 4 * v206);
      }

      if (v23 < 1)
      {
        goto LABEL_243;
      }

      v65 = 0;
      while (1)
      {
        v66 = v215;
        if (!v215)
        {
LABEL_110:
          v73 = (v211 + 4 * v66);
          goto LABEL_112;
        }

        v67 = 0;
        v68 = v212;
        v69 = v213;
        v70 = v214;
        v71 = v216;
        while (1)
        {
          v72 = *v68++;
          if (v72 != 1)
          {
            break;
          }

LABEL_108:
          ++v71;
          ++v69;
          ++v70;
          if (!--v66)
          {
            v66 = v67;
            goto LABEL_110;
          }
        }

        if (*v70 < *v69)
        {
          break;
        }

        v73 = 0;
LABEL_112:
        v74 = v206;
        if (v206)
        {
          v75 = 0;
          v76 = v203;
          v77 = v204;
          v78 = v205;
          v79 = v207;
          do
          {
            v80 = *v76++;
            if (v80 != 1)
            {
              if (*v78 >= *v77)
              {
                goto LABEL_243;
              }

              v75 += *v79 * *v78;
            }

            ++v79;
            ++v77;
            ++v78;
            --v74;
          }

          while (v74);
          v74 = v75;
        }

        if (v73)
        {
          v81 = v202 == 0;
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          *(v177 + 4 * v65) = *v73 > *(v202 + 4 * v74);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v208);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v199);
          if (++v65 != v23)
          {
            continue;
          }
        }

        goto LABEL_243;
      }

      v67 += *v71 * *v70;
      goto LABEL_108;
    }

    v227 = v193;
    *v228 = v194;
    *&v228[16] = v195;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v222 = v193;
    *v223 = v194;
    *&v223[16] = v195;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v227);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v222);
    v217 = v193;
    *v218 = v194;
    *&v218[16] = v195;
    v219 = 0;
    v221 = 0;
    v220 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
    v199 = v193;
    v200 = v194;
    v201 = v195;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v208, &v199, v176, &v227, &v217);
    v196 = v193;
    v197 = v194;
    v198 = v195;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v199, &v196, v4, &v222, &v217);
    if (v215)
    {
      bzero(v214, 4 * v215);
    }

    if (v206)
    {
      bzero(v205, 4 * v206);
    }

    if (v23 < 1)
    {
      goto LABEL_243;
    }

    v135 = 0;
LABEL_222:
    v136 = v215;
    if (!v215)
    {
LABEL_229:
      v143 = (v211 + 4 * v136);
      goto LABEL_231;
    }

    v137 = 0;
    v138 = v212;
    v139 = v213;
    v140 = v214;
    v141 = v216;
    while (1)
    {
      v142 = *v138++;
      if (v142 != 1)
      {
        if (*v140 >= *v139)
        {
          v143 = 0;
LABEL_231:
          v144 = v206;
          if (v206)
          {
            v145 = 0;
            v146 = v203;
            v147 = v204;
            v148 = v205;
            v149 = v207;
            do
            {
              v150 = *v146++;
              if (v150 != 1)
              {
                if (*v148 >= *v147)
                {
                  goto LABEL_243;
                }

                v145 += *v149 * *v148;
              }

              ++v149;
              ++v147;
              ++v148;
              --v144;
            }

            while (v144);
            v144 = v145;
          }

          if (v143)
          {
            v151 = v202 == 0;
          }

          else
          {
            v151 = 1;
          }

          if (v151 || (*(v177 + v135) = *v143 > *(v202 + 4 * v144), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v208), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v199), ++v135, v135 == v23))
          {
LABEL_243:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v199);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v208);
            goto LABEL_272;
          }

          goto LABEL_222;
        }

        v137 += *v141 * *v140;
      }

      ++v141;
      ++v139;
      ++v140;
      if (!--v136)
      {
        v136 = v137;
        goto LABEL_229;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v44 = v16;
      }

      else
      {
        v44 = v14;
      }

      if (v10 == 69)
      {
        v227 = v193;
        *v228 = v194;
        *&v228[16] = v195;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        v222 = v193;
        *v223 = v194;
        *&v223[16] = v195;
        v224 = 0;
        v225 = 0;
        v226 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v227);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v222);
        v217 = v193;
        *v218 = v194;
        *&v218[16] = v195;
        v219 = 0;
        v221 = 0;
        v220 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
        v199 = v193;
        v200 = v194;
        v201 = v195;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v208, &v199, v176, &v227, &v217);
        v196 = v193;
        v197 = v194;
        v198 = v195;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v199, &v196, v4, &v222, &v217);
        if (v215)
        {
          bzero(v214, 4 * v215);
        }

        if (v206)
        {
          bzero(v205, 4 * v206);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v46 = v215;
            if (!v215)
            {
              goto LABEL_74;
            }

            v47 = 0;
            v48 = v212;
            v49 = v213;
            v50 = v214;
            v51 = v216;
            do
            {
              v52 = *v48++;
              if (v52 != 1)
              {
                if (*v50 >= *v49)
                {
                  v53 = 0;
                  goto LABEL_76;
                }

                v47 += *v51 * *v50;
              }

              ++v51;
              ++v49;
              ++v50;
              --v46;
            }

            while (v46);
            v46 = v47;
LABEL_74:
            v53 = (v211 + 4 * v46);
LABEL_76:
            v54 = v206;
            if (v206)
            {
              v55 = 0;
              v56 = v203;
              v57 = v204;
              v58 = v205;
              v59 = v207;
              do
              {
                v60 = *v56++;
                if (v60 != 1)
                {
                  if (*v58 >= *v57)
                  {
                    goto LABEL_215;
                  }

                  v55 += *v59 * *v58;
                }

                ++v59;
                ++v57;
                ++v58;
                --v54;
              }

              while (v54);
              v54 = v55;
            }

            if (v53)
            {
              v61 = v202 == 0;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
              break;
            }

            v62 = *v53 <= *(v202 + 4 * v54) ? 0.0 : 1.0;
            *(v177 + 4 * i) = v62;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v208);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v199);
          }
        }
      }

      else
      {
        v227 = v193;
        *v228 = v194;
        *&v228[16] = v195;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        v222 = v193;
        *v223 = v194;
        *&v223[16] = v195;
        v224 = 0;
        v225 = 0;
        v226 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v227);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v222);
        v217 = v193;
        *v218 = v194;
        *&v218[16] = v195;
        v219 = 0;
        v221 = 0;
        v220 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
        v199 = v193;
        v200 = v194;
        v201 = v195;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v208, &v199, v176, &v227, &v217);
        v196 = v193;
        v197 = v194;
        v198 = v195;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v199, &v196, v4, &v222, &v217);
        if (v215)
        {
          bzero(v214, 4 * v215);
        }

        if (v206)
        {
          bzero(v205, 4 * v206);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v119 = v215;
            if (!v215)
            {
              goto LABEL_201;
            }

            v120 = 0;
            v121 = v212;
            v122 = v213;
            v123 = v214;
            v124 = v216;
            do
            {
              v125 = *v121++;
              if (v125 != 1)
              {
                if (*v123 >= *v122)
                {
                  v126 = 0;
                  goto LABEL_203;
                }

                v120 += *v124 * *v123;
              }

              ++v124;
              ++v122;
              ++v123;
              --v119;
            }

            while (v119);
            v119 = v120;
LABEL_201:
            v126 = (v211 + 4 * v119);
LABEL_203:
            v127 = v206;
            if (v206)
            {
              v128 = 0;
              v129 = v203;
              v130 = v204;
              v131 = v205;
              v132 = v207;
              do
              {
                v133 = *v129++;
                if (v133 != 1)
                {
                  if (*v131 >= *v130)
                  {
                    goto LABEL_215;
                  }

                  v128 += *v132 * *v131;
                }

                ++v132;
                ++v130;
                ++v131;
                --v127;
              }

              while (v127);
              v127 = v128;
            }

            if (v126)
            {
              v134 = v202 == 0;
            }

            else
            {
              v134 = 1;
            }

            if (v134)
            {
              break;
            }

            *(v177 + j) = *v126 > *(v202 + 4 * v127);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v208);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v199);
          }
        }
      }

LABEL_215:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v199);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v208);
      goto LABEL_272;
    }

    goto LABEL_92;
  }

  if (v14 <= v16)
  {
    v82 = v16;
  }

  else
  {
    v82 = v14;
  }

  if (v10 != 70)
  {
    v227 = v193;
    *v228 = v194;
    *&v228[16] = v195;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v222 = v193;
    *v223 = v194;
    *&v223[16] = v195;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v82, &v227);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v82, &v222);
    v217 = v193;
    *v218 = v194;
    *&v218[16] = v195;
    v219 = 0;
    v221 = 0;
    v220 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
    v199 = v193;
    v200 = v194;
    v201 = v195;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v208, &v199, v176, &v227, &v217);
    v196 = v193;
    v197 = v194;
    v198 = v195;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v199, &v196, v4, &v222, &v217);
    if (v215)
    {
      bzero(v214, 4 * v215);
    }

    if (v206)
    {
      bzero(v205, 4 * v206);
    }

    if (v23 < 1)
    {
      goto LABEL_271;
    }

    v152 = 0;
    while (1)
    {
      v153 = v215;
      if (!v215)
      {
        goto LABEL_257;
      }

      v154 = 0;
      v155 = v212;
      v156 = v213;
      v157 = v214;
      v158 = v216;
      do
      {
        v159 = *v155++;
        if (v159 != 1)
        {
          if (*v157 >= *v156)
          {
            v160 = 0;
            goto LABEL_259;
          }

          v154 += *v158 * *v157;
        }

        ++v158;
        ++v156;
        ++v157;
        --v153;
      }

      while (v153);
      v153 = v154;
LABEL_257:
      v160 = (v211 + 8 * v153);
LABEL_259:
      v161 = v206;
      if (v206)
      {
        v162 = 0;
        v163 = v203;
        v164 = v204;
        v165 = v205;
        v166 = v207;
        do
        {
          v167 = *v163++;
          if (v167 != 1)
          {
            if (*v165 >= *v164)
            {
              goto LABEL_271;
            }

            v162 += *v166 * *v165;
          }

          ++v166;
          ++v164;
          ++v165;
          --v161;
        }

        while (v161);
        v161 = v162;
      }

      if (v160)
      {
        v168 = v202 == 0;
      }

      else
      {
        v168 = 1;
      }

      if (!v168)
      {
        *(v177 + v152) = *v160 > *(v202 + 8 * v161);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v208);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v199);
        if (++v152 != v23)
        {
          continue;
        }
      }

      goto LABEL_271;
    }
  }

  v227 = v193;
  *v228 = v194;
  *&v228[16] = v195;
  v229 = 0;
  v230 = 0;
  v231 = 0;
  v222 = v193;
  *v223 = v194;
  *&v223[16] = v195;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v82, &v227);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v82, &v222);
  v217 = v193;
  *v218 = v194;
  *&v218[16] = v195;
  v219 = 0;
  v221 = 0;
  v220 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v227, &v222, &v217);
  v199 = v193;
  v200 = v194;
  v201 = v195;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v208, &v199, v176, &v227, &v217);
  v196 = v193;
  v197 = v194;
  v198 = v195;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v199, &v196, v4, &v222, &v217);
  if (v215)
  {
    bzero(v214, 4 * v215);
  }

  if (v206)
  {
    bzero(v205, 4 * v206);
  }

  if (v23 < 1)
  {
    goto LABEL_271;
  }

  for (k = 0; k != v23; ++k)
  {
    v84 = v215;
    if (!v215)
    {
LABEL_142:
      v91 = (v211 + 8 * v84);
      goto LABEL_144;
    }

    v85 = 0;
    v86 = v212;
    v87 = v213;
    v88 = v214;
    v89 = v216;
    while (1)
    {
      v90 = *v86++;
      if (v90 != 1)
      {
        break;
      }

LABEL_140:
      ++v89;
      ++v87;
      ++v88;
      if (!--v84)
      {
        v84 = v85;
        goto LABEL_142;
      }
    }

    if (*v88 < *v87)
    {
      v85 += *v89 * *v88;
      goto LABEL_140;
    }

    v91 = 0;
LABEL_144:
    v92 = v206;
    if (v206)
    {
      v93 = 0;
      v94 = v203;
      v95 = v204;
      v96 = v205;
      v97 = v207;
      do
      {
        v98 = *v94++;
        if (v98 != 1)
        {
          if (*v96 >= *v95)
          {
            goto LABEL_271;
          }

          v93 += *v97 * *v96;
        }

        ++v97;
        ++v95;
        ++v96;
        --v92;
      }

      while (v92);
      v92 = v93;
    }

    if (v91)
    {
      v99 = v202 == 0;
    }

    else
    {
      v99 = 1;
    }

    if (v99)
    {
      break;
    }

    v100 = *v91 <= *(v202 + 8 * v92) ? 0.0 : 1.0;
    *(v177 + 8 * k) = v100;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v208);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v199);
  }

LABEL_271:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v199);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v208);
LABEL_272:
  if (*v218)
  {
    v208 = v217;
    v209 = *v218;
    v210 = *&v218[8];
    (*v218)(&v208, v219);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v223)
  {
    v208 = v222;
    v209 = *v223;
    v210 = *&v223[8];
    (*v223)(&v208, v224);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v228)
  {
    v208 = v227;
    v209 = *v228;
    v210 = *&v228[8];
    (*v228)(&v208, v229);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v63 = 0;
LABEL_279:
  if (*v179)
  {
    v208 = v178;
    v209 = *v179;
    v210 = *&v179[8];
    (*v179)(&v208, v180);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v184)
  {
    v208 = v183;
    v209 = *v184;
    v210 = *&v184[8];
    (*v184)(&v208, v185);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v189)
  {
    v208 = v188;
    v209 = *v189;
    v210 = *&v189[8];
    (*v189)(&v208, v190);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v63;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseNotEqual(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v187);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v188);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v189);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v190);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v191);
  }

  v193 = (*a2)[1];
  v194 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v193);
    ODIE::Platform::abort(v192);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(a1 + 16);
  v210 = *a1;
  v211 = v17;
  v212 = *(a1 + 32);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = *(a1 + 16);
  v205 = *a1;
  *v206 = v20;
  *&v206[16] = *(a1 + 32);
  v207 = 0;
  v208 = 0;
  v209 = 0;
  v200 = v205;
  *v201 = v20;
  *&v201[16] = *(a1 + 32);
  v202 = 0;
  v203 = 0;
  v204 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v205);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v200);
  v195 = v210;
  *v196 = v211;
  *&v196[16] = v212;
  v197 = 0;
  v198 = 0;
  v199 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v205, &v200, &v195);
  if (v198)
  {
    v21 = v197;
    v22 = 4 * v198;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v244 = v210;
          *v245 = v211;
          *&v245[16] = v212;
          v246 = 0;
          v247 = 0;
          v248 = 0;
          v239 = v210;
          *v240 = v211;
          *&v240[16] = v212;
          v241 = 0;
          v242 = 0;
          v243 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v244);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v239);
          v234 = v210;
          *v235 = v211;
          *&v235[16] = v212;
          v236 = 0;
          v238 = 0;
          v237 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
          v216 = v210;
          v217 = v211;
          v218 = v212;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v225, &v216, v193, &v244, &v234);
          v213 = v210;
          v214 = v211;
          v215 = v212;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v216, &v213, v4, &v239, &v234);
          if (v232)
          {
            bzero(v231, 4 * v232);
          }

          if (v223)
          {
            bzero(v222, 4 * v223);
          }

          if (v23 < 1)
          {
            goto LABEL_197;
          }

          v26 = 0;
          while (1)
          {
            v27 = v232;
            if (!v232)
            {
LABEL_37:
              v34 = (v228 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v229;
            v30 = v230;
            v31 = v231;
            v32 = v233;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v223;
            if (v223)
            {
              v36 = 0;
              v37 = v220;
              v38 = v221;
              v39 = v222;
              v40 = v224;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_197;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              v42 = v219 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              if (*v34 == *(v219 + 2 * v35))
              {
                v43 = COERCE_SHORT_FLOAT(0);
              }

              else
              {
                LOWORD(v43) = COERCE_UNSIGNED_INT(1.0);
              }

              *(v194 + 2 * v26) = v43;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v225);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v216);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_197;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v244 = v210;
        *v245 = v211;
        *&v245[16] = v212;
        v246 = 0;
        v247 = 0;
        v248 = 0;
        v239 = v210;
        *v240 = v211;
        *&v240[16] = v212;
        v241 = 0;
        v242 = 0;
        v243 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v244);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v239);
        v234 = v210;
        *v235 = v211;
        *&v235[16] = v212;
        v236 = 0;
        v238 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
        v216 = v210;
        v217 = v211;
        v218 = v212;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v225, &v216, v193, &v244, &v234);
        v213 = v210;
        v214 = v211;
        v215 = v212;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v216, &v213, v4, &v239, &v234);
        if (v232)
        {
          bzero(v231, 4 * v232);
        }

        if (v223)
        {
          bzero(v222, 4 * v223);
        }

        if (v23 < 1)
        {
          goto LABEL_197;
        }

        v107 = 0;
LABEL_176:
        v108 = v232;
        if (!v232)
        {
LABEL_183:
          v115 = (v228 + 2 * v108);
          goto LABEL_185;
        }

        v109 = 0;
        v110 = v229;
        v111 = v230;
        v112 = v231;
        v113 = v233;
        while (1)
        {
          v114 = *v110++;
          if (v114 != 1)
          {
            if (*v112 >= *v111)
            {
              v115 = 0;
LABEL_185:
              v116 = v223;
              if (v223)
              {
                v117 = 0;
                v118 = v220;
                v119 = v221;
                v120 = v222;
                v121 = v224;
                do
                {
                  v122 = *v118++;
                  if (v122 != 1)
                  {
                    if (*v120 >= *v119)
                    {
                      goto LABEL_197;
                    }

                    v117 += *v121 * *v120;
                  }

                  ++v121;
                  ++v119;
                  ++v120;
                  --v116;
                }

                while (v116);
                v116 = v117;
              }

              if (v115)
              {
                v123 = v219 == 0;
              }

              else
              {
                v123 = 1;
              }

              if (v123 || (*(v194 + v107) = *v115 != *(v219 + 2 * v116), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v225), _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v216), ++v107, v107 == v23))
              {
LABEL_197:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v216);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v225);
                goto LABEL_261;
              }

              goto LABEL_176;
            }

            v109 += *v113 * *v112;
          }

          ++v113;
          ++v111;
          ++v112;
          if (!--v108)
          {
            v108 = v109;
            goto LABEL_183;
          }
        }
      }

LABEL_97:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v193);
      v66 = 3;
      goto LABEL_309;
    }

    if (v14 <= v16)
    {
      v67 = v16;
    }

    else
    {
      v67 = v14;
    }

    if (v10 == 25)
    {
      v244 = v210;
      *v245 = v211;
      *&v245[16] = v212;
      v246 = 0;
      v247 = 0;
      v248 = 0;
      v239 = v210;
      *v240 = v211;
      *&v240[16] = v212;
      v241 = 0;
      v242 = 0;
      v243 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v67, &v244);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v67, &v239);
      v234 = v210;
      *v235 = v211;
      *&v235[16] = v212;
      v236 = 0;
      v238 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
      v216 = v210;
      v217 = v211;
      v218 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v225, &v216, v193, &v244, &v234);
      v213 = v210;
      v214 = v211;
      v215 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v216, &v213, v4, &v239, &v234);
      if (v232)
      {
        bzero(v231, 4 * v232);
      }

      if (v223)
      {
        bzero(v222, 4 * v223);
      }

      if (v23 < 1)
      {
        goto LABEL_260;
      }

      v68 = 0;
      while (1)
      {
        v69 = v232;
        if (!v232)
        {
LABEL_115:
          v76 = (v228 + 4 * v69);
          goto LABEL_117;
        }

        v70 = 0;
        v71 = v229;
        v72 = v230;
        v73 = v231;
        v74 = v233;
        while (1)
        {
          v75 = *v71++;
          if (v75 != 1)
          {
            break;
          }

LABEL_113:
          ++v74;
          ++v72;
          ++v73;
          if (!--v69)
          {
            v69 = v70;
            goto LABEL_115;
          }
        }

        if (*v73 < *v72)
        {
          break;
        }

        v76 = 0;
LABEL_117:
        v77 = v223;
        if (v223)
        {
          v78 = 0;
          v79 = v220;
          v80 = v221;
          v81 = v222;
          v82 = v224;
          do
          {
            v83 = *v79++;
            if (v83 != 1)
            {
              if (*v81 >= *v80)
              {
                goto LABEL_260;
              }

              v78 += *v82 * *v81;
            }

            ++v82;
            ++v80;
            ++v81;
            --v77;
          }

          while (v77);
          v77 = v78;
        }

        if (v76)
        {
          v84 = v219 == 0;
        }

        else
        {
          v84 = 1;
        }

        if (!v84)
        {
          *(v194 + 4 * v68) = *v76 != *(v219 + 4 * v77);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v225);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v216);
          if (++v68 != v23)
          {
            continue;
          }
        }

        goto LABEL_260;
      }

      v70 += *v74 * *v73;
      goto LABEL_113;
    }

    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v67, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v67, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_260;
    }

    v145 = 0;
LABEL_239:
    v146 = v232;
    if (!v232)
    {
LABEL_246:
      v153 = (v228 + 4 * v146);
      goto LABEL_248;
    }

    v147 = 0;
    v148 = v229;
    v149 = v230;
    v150 = v231;
    v151 = v233;
    while (1)
    {
      v152 = *v148++;
      if (v152 != 1)
      {
        if (*v150 >= *v149)
        {
          v153 = 0;
LABEL_248:
          v154 = v223;
          if (v223)
          {
            v155 = 0;
            v156 = v220;
            v157 = v221;
            v158 = v222;
            v159 = v224;
            do
            {
              v160 = *v156++;
              if (v160 != 1)
              {
                if (*v158 >= *v157)
                {
                  goto LABEL_260;
                }

                v155 += *v159 * *v158;
              }

              ++v159;
              ++v157;
              ++v158;
              --v154;
            }

            while (v154);
            v154 = v155;
          }

          if (v153)
          {
            v161 = v219 == 0;
          }

          else
          {
            v161 = 1;
          }

          if (v161 || (*(v194 + v145) = *v153 != *(v219 + 4 * v154), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v225), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v216), ++v145, v145 == v23))
          {
LABEL_260:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v216);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v225);
LABEL_261:
            if (*v235)
            {
              v225 = v234;
              v226 = *v235;
              v227 = *&v235[8];
              (*v235)(&v225, v236);
            }

            else
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
            }

            if (*v240)
            {
              v225 = v239;
              v226 = *v240;
              v227 = *&v240[8];
              (*v240)(&v225, v241);
            }

            else
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
            }

            v162 = *v245;
            if (*v245)
            {
              v163 = v246;
              v225 = v244;
              v226 = *v245;
              v164 = *&v245[8];
              goto LABEL_307;
            }

LABEL_325:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback", v193);
            goto LABEL_308;
          }

          goto LABEL_239;
        }

        v147 += *v151 * *v150;
      }

      ++v151;
      ++v149;
      ++v150;
      if (!--v146)
      {
        v146 = v147;
        goto LABEL_246;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 != 69)
    {
      goto LABEL_97;
    }

    if (v14 <= v16)
    {
      v44 = v16;
    }

    else
    {
      v44 = v14;
    }

    if (v10 == 69)
    {
      v244 = v210;
      *v245 = v211;
      *&v245[16] = v212;
      v246 = 0;
      v247 = 0;
      v248 = 0;
      v239 = v210;
      *v240 = v211;
      *&v240[16] = v212;
      v241 = 0;
      v242 = 0;
      v243 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v244);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v239);
      v234 = v210;
      *v235 = v211;
      *&v235[16] = v212;
      v236 = 0;
      v238 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
      v216 = v210;
      v217 = v211;
      v218 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v225, &v216, v193, &v244, &v234);
      v213 = v210;
      v214 = v211;
      v215 = v212;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v216, &v213, v4, &v239, &v234);
      if (v232)
      {
        bzero(v231, 4 * v232);
      }

      if (v223)
      {
        bzero(v222, 4 * v223);
      }

      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          v46 = v232;
          if (!v232)
          {
            goto LABEL_74;
          }

          v47 = 0;
          v48 = v229;
          v49 = v230;
          v50 = v231;
          v51 = v233;
          do
          {
            v52 = *v48++;
            if (v52 != 1)
            {
              if (*v50 >= *v49)
              {
                v53 = 0;
                goto LABEL_76;
              }

              v47 += *v51 * *v50;
            }

            ++v51;
            ++v49;
            ++v50;
            --v46;
          }

          while (v46);
          v46 = v47;
LABEL_74:
          v53 = (v228 + 4 * v46);
LABEL_76:
          v54 = v223;
          if (v223)
          {
            v55 = 0;
            v56 = v220;
            v57 = v221;
            v58 = v222;
            v59 = v224;
            do
            {
              v60 = *v56++;
              if (v60 != 1)
              {
                if (*v58 >= *v57)
                {
                  goto LABEL_232;
                }

                v55 += *v59 * *v58;
              }

              ++v59;
              ++v57;
              ++v58;
              --v54;
            }

            while (v54);
            v54 = v55;
          }

          if (v53)
          {
            v61 = v219 == 0;
          }

          else
          {
            v61 = 1;
          }

          if (v61)
          {
            break;
          }

          v62 = *v53;
          v63 = *(v219 + 4 * v54);
          v64 = 0.0;
          if (*v53 != v63)
          {
            v64 = 1.0;
            if (v62 > 0.0 == v63 > 0.0)
            {
              v64 = 0.0;
              if (vabds_f32(v62, v63) > (fmaxf(v62, v63) * 0.00000011921))
              {
                v65 = LODWORD(v62) - LODWORD(v63);
                if (LODWORD(v62) - LODWORD(v63) < 0)
                {
                  v65 = LODWORD(v63) - LODWORD(v62);
                }

                if (v65 <= 3)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = 1.0;
                }
              }
            }
          }

          *(v194 + 4 * i) = v64;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v225);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v216);
        }
      }

LABEL_232:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v216);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v225);
      goto LABEL_261;
    }

    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_232;
    }

    v124 = 0;
    while (1)
    {
      v125 = v232;
      if (!v232)
      {
        goto LABEL_211;
      }

      v126 = 0;
      v127 = v229;
      v128 = v230;
      v129 = v231;
      v130 = v233;
      do
      {
        v131 = *v127++;
        if (v131 != 1)
        {
          if (*v129 >= *v128)
          {
            v132 = 0;
            goto LABEL_213;
          }

          v126 += *v130 * *v129;
        }

        ++v130;
        ++v128;
        ++v129;
        --v125;
      }

      while (v125);
      v125 = v126;
LABEL_211:
      v132 = (v228 + 4 * v125);
LABEL_213:
      v133 = v223;
      if (v223)
      {
        v134 = 0;
        v135 = v220;
        v136 = v221;
        v137 = v222;
        v138 = v224;
        do
        {
          v139 = *v135++;
          if (v139 != 1)
          {
            if (*v137 >= *v136)
            {
              goto LABEL_232;
            }

            v134 += *v138 * *v137;
          }

          ++v138;
          ++v136;
          ++v137;
          --v133;
        }

        while (v133);
        v133 = v134;
      }

      if (v132)
      {
        v140 = v219 == 0;
      }

      else
      {
        v140 = 1;
      }

      if (v140)
      {
        goto LABEL_232;
      }

      v141 = *v132;
      v142 = *(v219 + 4 * v133);
      if (*v132 == v142)
      {
        goto LABEL_230;
      }

      v143 = 1;
      if (v141 > 0.0 == v142 > 0.0)
      {
        break;
      }

LABEL_231:
      *(v194 + v124) = v143;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v225);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v216);
      if (++v124 == v23)
      {
        goto LABEL_232;
      }
    }

    if (vabds_f32(v141, v142) > (fmaxf(v141, v142) * 0.00000011921))
    {
      v144 = LODWORD(v141) - LODWORD(v142);
      if (LODWORD(v141) - LODWORD(v142) < 0)
      {
        v144 = LODWORD(v142) - LODWORD(v141);
      }

      v143 = v144 > 3;
      goto LABEL_231;
    }

LABEL_230:
    v143 = 0;
    goto LABEL_231;
  }

  if (v14 <= v16)
  {
    v85 = v16;
  }

  else
  {
    v85 = v14;
  }

  if (v10 != 70)
  {
    v244 = v210;
    *v245 = v211;
    *&v245[16] = v212;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v239 = v210;
    *v240 = v211;
    *&v240[16] = v212;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v85, &v244);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v85, &v239);
    v234 = v210;
    *v235 = v211;
    *&v235[16] = v212;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
    v216 = v210;
    v217 = v211;
    v218 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v225, &v216, v193, &v244, &v234);
    v213 = v210;
    v214 = v211;
    v215 = v212;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v216, &v213, v4, &v239, &v234);
    if (v232)
    {
      bzero(v231, 4 * v232);
    }

    if (v223)
    {
      bzero(v222, 4 * v223);
    }

    if (v23 < 1)
    {
      goto LABEL_301;
    }

    v165 = 0;
    while (1)
    {
      v166 = v232;
      if (!v232)
      {
        goto LABEL_280;
      }

      v167 = 0;
      v168 = v229;
      v169 = v230;
      v170 = v231;
      v171 = v233;
      do
      {
        v172 = *v168++;
        if (v172 != 1)
        {
          if (*v170 >= *v169)
          {
            v173 = 0;
            goto LABEL_282;
          }

          v167 += *v171 * *v170;
        }

        ++v171;
        ++v169;
        ++v170;
        --v166;
      }

      while (v166);
      v166 = v167;
LABEL_280:
      v173 = (v228 + 8 * v166);
LABEL_282:
      v174 = v223;
      if (v223)
      {
        v175 = 0;
        v176 = v220;
        v177 = v221;
        v178 = v222;
        v179 = v224;
        do
        {
          v180 = *v176++;
          if (v180 != 1)
          {
            if (*v178 >= *v177)
            {
              goto LABEL_301;
            }

            v175 += *v179 * *v178;
          }

          ++v179;
          ++v177;
          ++v178;
          --v174;
        }

        while (v174);
        v174 = v175;
      }

      if (v173)
      {
        v181 = v219 == 0;
      }

      else
      {
        v181 = 1;
      }

      if (v181)
      {
        goto LABEL_301;
      }

      v182 = *v173;
      v183 = *(v219 + 8 * v174);
      if (*v173 == v183)
      {
        goto LABEL_299;
      }

      v184 = 1;
      if (v182 > 0.0 == v183 > 0.0)
      {
        break;
      }

LABEL_300:
      *(v194 + v165) = v184;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v225);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v216);
      if (++v165 == v23)
      {
        goto LABEL_301;
      }
    }

    if (vabdd_f64(v182, v183) > fmax(v182, v183) * 2.22044605e-16)
    {
      v185 = *&v182 - *&v183;
      if ((*&v182 - *&v183) < 0)
      {
        v185 = *&v183 - *&v182;
      }

      v184 = v185 > 3;
      goto LABEL_300;
    }

LABEL_299:
    v184 = 0;
    goto LABEL_300;
  }

  v244 = v210;
  *v245 = v211;
  *&v245[16] = v212;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  v239 = v210;
  *v240 = v211;
  *&v240[16] = v212;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v85, &v244);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v85, &v239);
  v234 = v210;
  *v235 = v211;
  *&v235[16] = v212;
  v236 = 0;
  v238 = 0;
  v237 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v244, &v239, &v234);
  v216 = v210;
  v217 = v211;
  v218 = v212;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v225, &v216, v193, &v244, &v234);
  v213 = v210;
  v214 = v211;
  v215 = v212;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v216, &v213, v4, &v239, &v234);
  if (v232)
  {
    bzero(v231, 4 * v232);
  }

  if (v223)
  {
    bzero(v222, 4 * v223);
  }

  if (v23 < 1)
  {
    goto LABEL_301;
  }

  for (j = 0; j != v23; ++j)
  {
    v87 = v232;
    if (!v232)
    {
LABEL_147:
      v94 = (v228 + 8 * v87);
      goto LABEL_149;
    }

    v88 = 0;
    v89 = v229;
    v90 = v230;
    v91 = v231;
    v92 = v233;
    while (1)
    {
      v93 = *v89++;
      if (v93 != 1)
      {
        break;
      }

LABEL_145:
      ++v92;
      ++v90;
      ++v91;
      if (!--v87)
      {
        v87 = v88;
        goto LABEL_147;
      }
    }

    if (*v91 < *v90)
    {
      v88 += *v92 * *v91;
      goto LABEL_145;
    }

    v94 = 0;
LABEL_149:
    v95 = v223;
    if (v223)
    {
      v96 = 0;
      v97 = v220;
      v98 = v221;
      v99 = v222;
      v100 = v224;
      do
      {
        v101 = *v97++;
        if (v101 != 1)
        {
          if (*v99 >= *v98)
          {
            goto LABEL_301;
          }

          v96 += *v100 * *v99;
        }

        ++v100;
        ++v98;
        ++v99;
        --v95;
      }

      while (v95);
      v95 = v96;
    }

    if (v94)
    {
      v102 = v219 == 0;
    }

    else
    {
      v102 = 1;
    }

    if (v102)
    {
      break;
    }

    v103 = *v94;
    v104 = *(v219 + 8 * v95);
    v105 = 0.0;
    if (*v94 != v104)
    {
      v105 = 1.0;
      if (v103 > 0.0 == v104 > 0.0)
      {
        v105 = 0.0;
        if (vabdd_f64(v103, v104) > fmax(v103, v104) * 2.22044605e-16)
        {
          v106 = *&v103 - *&v104;
          if ((*&v103 - *&v104) < 0)
          {
            v106 = *&v104 - *&v103;
          }

          if (v106 <= 3)
          {
            v105 = 0.0;
          }

          else
          {
            v105 = 1.0;
          }
        }
      }
    }

    *(v194 + 8 * j) = v105;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v225);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v216);
  }

LABEL_301:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v216);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v225);
  if (*v235)
  {
    v225 = v234;
    v226 = *v235;
    v227 = *&v235[8];
    (*v235)(&v225, v236);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v240)
  {
    v225 = v239;
    v226 = *v240;
    v227 = *&v240[8];
    (*v240)(&v225, v241);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v162 = *v245;
  if (!*v245)
  {
    goto LABEL_325;
  }

  v163 = v246;
  v225 = v244;
  v226 = *v245;
  v164 = *&v245[8];
LABEL_307:
  v227 = v164;
  v162(&v225, v163);
LABEL_308:
  v66 = 0;
LABEL_309:
  if (*v196)
  {
    v225 = v195;
    v226 = *v196;
    v227 = *&v196[8];
    (*v196)(&v225, v197);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v201)
  {
    v225 = v200;
    v226 = *v201;
    v227 = *&v201[8];
    (*v201)(&v225, v202);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v206)
  {
    v225 = v205;
    v226 = *v206;
    v227 = *&v206[8];
    (*v206)(&v225, v207);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v66;
}