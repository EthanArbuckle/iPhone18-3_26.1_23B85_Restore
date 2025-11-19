void physx::Bp::ComputeCreatedDeletedPairsLists(uint64_t a1, unsigned int *a2, unsigned int a3, pthread_mutex_t **a4, const void **a5, _DWORD *a6, _DWORD *a7, const void **a8, unsigned int *a9, _DWORD *a10, unsigned int *a11, uint64_t a12)
{
  v12 = a11;
  v13 = a9;
  if (a3)
  {
    v14 = a8;
    v15 = a2;
    v16 = a3;
    v17 = a2;
    v18 = a3;
    v45 = a7;
    v43 = a6;
    do
    {
      v20 = *v17++;
      v19 = v20;
      v21 = *(a12 + 40);
      v22 = (*(a12 + 32) + 8 * v20);
      v23 = *(v21 + v20);
      if ((v23 & 2) != 0)
      {
        if ((v23 & 4) == 0)
        {
          v26 = *v13;
          if (*v13 == *a10)
          {
            v27 = physx::PxcScratchAllocator::alloc(a4, 16 * v26, 1);
            memcpy(v27, *v14, (8 * *a10));
            physx::PxcScratchAllocator::free(a4, *v14);
            v13 = a9;
            a6 = v43;
            a7 = v45;
            v12 = a11;
            *v14 = v27;
            *a10 *= 2;
            v26 = *a9;
          }

          else
          {
            v27 = *v14;
          }

          LODWORD(v31) = *v22;
          v32 = v22[1];
          if (*v22 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v31;
          }

          if (v31 <= v32)
          {
            v31 = v32;
          }

          else
          {
            v31 = v31;
          }

          *v13 = v26 + 1;
          *(v27 + v26) = v33 | (v31 << 32);
        }
      }

      else
      {
        *(v21 + v19) = v23 & 0xFC;
        if ((*(*(a12 + 40) + ((v22 - *(a12 + 32)) >> 3)) & 4) != 0)
        {
          v24 = *a6;
          if (*a6 == *a7)
          {
            v25 = physx::PxcScratchAllocator::alloc(a4, 16 * v24, 1);
            memcpy(v25, *a5, (8 * *v45));
            physx::PxcScratchAllocator::free(a4, *a5);
            v13 = a9;
            a6 = v43;
            a7 = v45;
            v12 = a11;
            *a5 = v25;
            v14 = a8;
            *v45 *= 2;
            v24 = *v43;
          }

          else
          {
            v25 = *a5;
          }

          LODWORD(v28) = *v22;
          v29 = v22[1];
          if (*v22 >= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v28;
          }

          if (v28 <= v29)
          {
            v28 = v29;
          }

          else
          {
            v28 = v28;
          }

          *a6 = v24 + 1;
          *(v25 + v24) = v30 | (v28 << 32);
          *(*(a12 + 40) + ((v22 - *(a12 + 32)) >> 3)) &= ~4u;
        }
      }

      --v18;
    }

    while (v18);
    *v12 = *v13;
    do
    {
      v35 = *v15++;
      v34 = v35;
      if ((~*(*(a12 + 40) + v35) & 6) == 0)
      {
        v36 = *(a12 + 32);
        v37 = *v12;
        if (*v12 == *a10)
        {
          v38 = physx::PxcScratchAllocator::alloc(a4, 16 * v37, 1);
          memcpy(v38, *v14, (8 * *a10));
          physx::PxcScratchAllocator::free(a4, *v14);
          v12 = a11;
          *v14 = v38;
          *a10 *= 2;
          v37 = *a11;
        }

        else
        {
          v38 = *v14;
        }

        v39 = v36 + 8 * v34;
        v40 = *v39;
        LODWORD(v39) = *(v39 + 4);
        if (v40 >= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        if (v40 <= v39)
        {
          v39 = v39;
        }

        else
        {
          v39 = v40;
        }

        *v12 = v37 + 1;
        *(v38 + v37) = v41 | (v39 << 32);
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    *a11 = *a9;
  }
}

const void **physx::Bp::BroadPhaseSap::deletePairs(const void **this)
{
  v1 = *(this + 114);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = this[55];
    do
    {
      v5 = &v4[8 * v3];
      v6 = *v5;
      v7 = *(v5 + 1);
      if (*v5 >= v7)
      {
        v8 = *(v5 + 1);
      }

      else
      {
        v8 = *v5;
      }

      if (v6 <= v7)
      {
        v6 = v7;
      }

      if (*(v2 + 376))
      {
        v9 = (v8 | (v6 << 16)) + ~((v8 | (v6 << 16)) << 15);
        v10 = (9 * (v9 ^ (v9 >> 10))) ^ ((9 * (v9 ^ (v9 >> 10))) >> 6);
        v11 = ((v10 + ~(v10 << 11)) ^ ((v10 + ~(v10 << 11)) >> 16)) & *(v2 + 416);
        v12 = *(*(v2 + 360) + 4 * v11);
        if (v12 != 0x3FFFFFFF)
        {
          while (1)
          {
            v13 = v12;
            v14 = (*(v2 + 392) + 8 * v12);
            v16 = *v14;
            v15 = v14[1];
            if (v16 == v8 && v15 == v6)
            {
              break;
            }

            v12 = *(*(v2 + 368) + 4 * v13);
            if (v12 == 0x3FFFFFFF)
            {
              goto LABEL_17;
            }
          }

          physx::Bp::SapPairManager::RemovePair((v2 + 360), v11, v13 & 0x1FFFFFFF);
          this = physx::Bp::SapPairManager::shrinkMemory((v2 + 360));
        }
      }

LABEL_17:
      ++v3;
    }

    while (v3 != v1);
  }

  return this;
}

uint64_t physx::Bp::BroadPhaseBatchUpdateWorkTask::runInternal(uint64_t this)
{
  v253 = *MEMORY[0x1E69E9840];
  *(this + 64) = 0;
  v1 = *(this + 40);
  v2 = *(v1 + 168);
  if (!v2)
  {
    return this;
  }

  v3 = *(this + 48);
  v4 = *(v1 + 328);
  v5 = *(this + 68);
  v6 = *(v1 + 176);
  v7 = v1 + 216;
  v217 = this;
  v218 = *(this + 40);
  if (5 * v2 < v4)
  {
    v8 = *(v1 + 232);
    v9 = *(v1 + 216);
    v247 = *(v1 + 224);
    v248 = v8;
    v249 = v8;
    v250 = v9;
    v251 = v9;
    v252 = v247;
    v10 = v1 + 8 * v3;
    v11 = *(v10 + 264);
    if (*(v11 + 4) >> 1 == 0x1FFFFFFF)
    {
      return this;
    }

    v12 = *(v7 + 8 * v3);
    v13 = *(v10 + 240);
    v208 = *(&v247 + (2 * v3));
    v211 = *(v1 + 184);
    v204 = *(v10 + 264);
    v206 = *(&v247 + ((2 * v3) | 1u));
    v14 = *(v1 + 288);
    v15 = v6 + 4 * v3;
    v214 = v12;
    v202 = v14;
    if (v2 >= 0x200)
    {
      v48 = 2 * v4;
      if (!v48)
      {
        v58 = 0;
        v56 = *(v1 + 304);
        *v56 = 0;
        v60 = v56;
LABEL_198:
        *(this + 64) = v58;
        *(this + 68) = v5;
        while ((v56 + 2) <= v60)
        {
          v184 = v56;
          v56 += 2;
          v185 = v184[2];
          v186 = v184[3];
          if (v185 <= v186)
          {
            v187 = *(v1 + 320);
            do
            {
              *(v187 + 4 * v185) = v185;
              ++v185;
              v186 = v184[3];
            }

            while (v185 <= v186);
            v185 = *v56;
          }

          if (v185 <= v186)
          {
            v188 = v185 - 1;
            v189 = *(v1 + 312);
            do
            {
              v188 = *(v189 + 4 * v188);
              if (v185 != v188)
              {
                v190 = *(v1 + 320);
                v191 = *(v190 + 4 * v188);
                v192 = *(v11 + 4 * v191);
                v193 = *(v13 + 4 * v185);
                this = *(v11 + 4 * v185);
                *(v13 + 4 * v185) = *(v13 + 4 * v191);
                *(v11 + 4 * v185) = *(v11 + 4 * v191);
                *(v13 + 4 * v191) = v193;
                *(v11 + 4 * v191) = this;
                v194 = *(v190 + 4 * v185);
                *(v190 + 4 * v191) = v194;
                *(v190 + 4 * v194) = v191;
                *(v12 + ((4 * v192) & 0x3FFFFFFF8) + 4 * (v192 & 1)) = v185;
                v186 = v184[3];
              }

              ++v185;
            }

            while (v185 <= v186);
            v185 = *v56;
          }

          if (v185 - 1 <= v186)
          {
            v196 = *(v1 + 312);
            v195 = *(v1 + 320);
            do
            {
              *(v195 + 4 * v185) = v185 - 1;
              *(v196 + 4 * (v185 - 1)) = v185;
              v82 = v185++ > v184[3];
            }

            while (!v82);
          }
        }

        return this;
      }

      v18 = 0;
      v49 = 1;
      do
      {
        v50 = *(v11 + 4 * v49);
        if (v50 >> 1 == 0x1FFFFFFF)
        {
          break;
        }

        v51 = v50 >> 1;
        if (*(v14 + (v50 >> 1)))
        {
          v52 = *(*(v1 + 200) + 4 * v51);
          if (v50)
          {
            v245 = v52 + *(v15 + 24 * v51 + 12);
            v53 = LODWORD(v245);
            v54 = 20;
          }

          else
          {
            v245 = *(v15 + 24 * v51) - v52;
            v53 = LODWORD(v245);
            v54 = -16;
          }

          if (v53 < 0)
          {
            v55 = ~v53;
          }

          else
          {
            v55 = v53 | 0x80000000;
          }

          *(v13 + 4 * v49) = (v55 & 0xFFFFFFF0) + v54;
          *(*(v1 + 296) + 4 * v18++) = v49;
        }

        ++v49;
        --v48;
      }

      while (v48);
    }

    else
    {
      v16 = v5;
      v17 = 0;
      v18 = 0;
      v19 = *(v1 + 160);
      v20 = *(v1 + 200);
      v21 = *(v1 + 296);
      do
      {
        v22 = *(v19 + 4 * v17);
        v23 = (v6 + 24 * v22 + 4 * v3);
        v24 = (v12 + 8 * v22);
        v245 = *v23 - *(v20 + 4 * v22);
        if (v245 < 0.0)
        {
          v25 = ~LODWORD(v245);
        }

        else
        {
          v25 = LODWORD(v245) | 0x80000000;
        }

        v245 = *(v20 + 4 * v22) + v23[3];
        if (v245 < 0.0)
        {
          v26 = ~LODWORD(v245);
        }

        else
        {
          v26 = LODWORD(v245) | 0x80000000;
        }

        *(v13 + 4 * *v24) = (v25 & 0xFFFFFFF0) - 16;
        *(v13 + 4 * v24[1]) = (v26 & 0xFFFFFFF0) + 20;
        *(v21 + 4 * v18) = *v24;
        v27 = v18 + 1;
        v18 += 2;
        *(v21 + 4 * v27) = v24[1];
        ++v17;
      }

      while (v17 < *(v1 + 168));
      physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(v21, v18, &v245, &v246, 32);
      this = v217;
      v1 = v218;
      v5 = v16;
      v11 = v204;
    }

    v56 = *(v1 + 304);
    *v56 = 0;
    if (v18)
    {
      v57 = 0;
      v58 = 0;
      v59 = *(v1 + 320);
      v60 = v56;
      v197 = v18;
      v61 = v211;
      v12 = v214;
      v63 = v206;
      v62 = v208;
      v226 = v15;
      do
      {
        v198 = v57;
        v64 = *(*(v1 + 296) + 4 * v57);
        LODWORD(v65) = *(v11 + 4 * v64);
        do
        {
          v66 = v65 >> 1;
          v67 = *(v13 + 4 * v64);
          v245 = *(*(v1 + 200) + 4 * v66) + *(v15 + 24 * v66 + 12);
          if (v245 < 0.0)
          {
            v68 = ~LODWORD(v245);
          }

          else
          {
            v68 = LODWORD(v245) | 0x80000000;
          }

          v69 = *(v59 + 4 * v64);
          if (*(v13 + 4 * v69) > v67)
          {
            v233 = v60;
            v236 = v65 >> 1;
            v70 = (v62 + 8 * v66);
            v71 = (v63 + 8 * v66);
            v243 = *(v61 + v66);
            v241 = 4 * (v243 & 3);
            if (v65)
            {
              v73 = v64;
              do
              {
                v90 = *(v11 + 4 * v69);
                if ((v90 & 1) == 0)
                {
                  v91 = (v62 + 4 * v90);
                  v93 = *v91;
                  v92 = v91[1];
                  v94 = (v63 + 4 * v90);
                  v96 = *v94;
                  v95 = v94[1];
                  v97 = v70[1] > v93 && v92 > *v70;
                  v98 = v97 && v71[1] > v96;
                  if (v98 && v95 > *v71)
                  {
                    v100 = v90 >> 1;
                    v101 = *(v61 + (v90 >> 1));
                    if (v243 != v101 && *(*(v1 + 192) + (v101 & 3 | v241)) == 1)
                    {
                      v102 = *(this + 56);
                      if (v58 == v5)
                      {
                        __srca = 2 * v5;
                        v220 = *(v1 + 8);
                        v230 = v5;
                        v239 = v58;
                        v103 = physx::PxcScratchAllocator::alloc(v220, 16 * v5, 1);
                        memcpy(v103, v102, (8 * v230));
                        physx::PxcScratchAllocator::free(v220, v102);
                        v14 = v202;
                        v11 = v204;
                        v63 = v206;
                        v62 = v208;
                        v61 = v211;
                        v12 = v214;
                        this = v217;
                        v1 = v218;
                        *(v217 + 56) = v103;
                        v59 = *(v218 + 320);
                        v102 = v103;
                        v58 = v239;
                        v5 = __srca;
                      }

                      if (v236 >= v100)
                      {
                        v104 = v100;
                      }

                      else
                      {
                        v104 = v236;
                      }

                      v105 = &v102[8 * v58];
                      if (v236 <= v100)
                      {
                        v106 = v100;
                      }

                      else
                      {
                        v106 = v236;
                      }

                      *v105 = v104;
                      v105[1] = v106;
                      ++v58;
                    }
                  }
                }

                --v73;
                v69 = *(v59 + 4 * v69);
              }

              while (v67 < *(v13 + 4 * v69));
            }

            else
            {
              v238 = v58;
              v72 = (v68 & 0xFFFFFFF0) + 20;
              v73 = v64;
              do
              {
                v74 = *(v11 + 4 * v69);
                if (v74)
                {
                  v75 = v74 >> 1;
                  if (*(v13 + 4 * *(v12 + 8 * (v74 >> 1))) < v72)
                  {
                    v76 = (v62 + 8 * v75);
                    v78 = *v76;
                    v77 = v76[1];
                    v79 = (v63 + 8 * v75);
                    v81 = *v79;
                    v80 = v79[1];
                    v82 = v70[1] > v78 && v77 > *v70;
                    v83 = v82 && v71[1] > v81;
                    if (v83 && v80 > *v71)
                    {
                      v85 = *(v61 + v75);
                      if (v243 != v85 && *(*(v1 + 192) + (v85 & 3 | v241)) == 1)
                      {
                        v86 = *(this + 56);
                        if (v238 == v5)
                        {
                          __src = 2 * v5;
                          v219 = *(v1 + 8);
                          v229 = v5;
                          v200 = physx::PxcScratchAllocator::alloc(v219, 16 * v5, 1);
                          memcpy(v200, v86, (8 * v229));
                          physx::PxcScratchAllocator::free(v219, v86);
                          v14 = v202;
                          v11 = v204;
                          v63 = v206;
                          v62 = v208;
                          v61 = v211;
                          v12 = v214;
                          this = v217;
                          v1 = v218;
                          v86 = v200;
                          *(v217 + 56) = v200;
                          v59 = *(v218 + 320);
                          v5 = __src;
                        }

                        if (v236 <= v75)
                        {
                          v87 = v75;
                        }

                        else
                        {
                          v87 = v236;
                        }

                        v88 = &v86[8 * v238];
                        if (v236 >= v75)
                        {
                          v89 = v75;
                        }

                        else
                        {
                          v89 = v236;
                        }

                        *v88 = v87;
                        v88[1] = v89;
                        ++v238;
                      }
                    }
                  }
                }

                --v73;
                v69 = *(v59 + 4 * v69);
              }

              while (v67 < *(v13 + 4 * v69));
              v58 = v238;
            }

            v107 = *(v1 + 312);
            v108 = *(v107 + 4 * v64);
            v109 = *(v59 + 4 * v64);
            v110 = *(v107 + 4 * v69);
            *(v107 + 4 * v109) = v108;
            *(v59 + 4 * v108) = v109;
            *(v107 + 4 * v64) = v110;
            *(v59 + 4 * v64) = v69;
            *(v59 + 4 * v110) = v64;
            *(v107 + 4 * v69) = v64;
            v111 = (v233 + 16);
            v15 = v226;
            do
            {
              v112 = *(v111 - 4);
              v111 -= 2;
            }

            while (v73 < v112);
            v56 = *(v1 + 304);
            v60 = (v111 - 2);
            if (v111 - 2 == v56 || v73 > *(v111 - 1) + 1)
            {
              *v111 = v73;
              v60 = v111;
            }

            *(v60 + 4) = v64;
          }

          LODWORD(v64) = v64 + 1;
          v65 = *(v11 + 4 * v64);
        }

        while (v65 >> 1 != 0x1FFFFFFF && !*(v14 + (v65 >> 1)) && *(v14 + (*(v11 + 4 * *(v59 + 4 * v64)) >> 1)));
        v57 = v198 + 1;
      }

      while (v198 + 1 != v197);
    }

    else
    {
      v58 = 0;
      v60 = v56;
      v12 = v214;
    }

    goto LABEL_198;
  }

  v28 = *(v1 + 232);
  v29 = *(v1 + 216);
  v247 = *(v1 + 224);
  v248 = v28;
  v249 = v28;
  v250 = v29;
  v251 = v29;
  v252 = v247;
  v30 = v1 + 8 * v3;
  v31 = *(v30 + 264);
  v32 = *(v31 + 4);
  if (v32 >> 1 != 0x1FFFFFFF)
  {
    v33 = *(&v247 + (2 * v3));
    v34 = *(&v247 + ((2 * v3) | 1u));
    v35 = *(v1 + 184);
    v36 = *(v7 + 8 * v3);
    v37 = *(v30 + 240);
    v38 = v32 >> 1;
    v39 = v6 + 4 * v3;
    v40 = *(v1 + 288);
    v245 = *(v39 + 24 * (*(v31 + 4) >> 1)) - *(*(v1 + 200) + 4 * (v32 >> 1));
    if (v245 < 0.0)
    {
      v41 = ~LODWORD(v245);
    }

    else
    {
      v41 = LODWORD(v245) | 0x80000000;
    }

    *(v37 + 4) = (v41 & 0xFFFFFFF0) - 16;
    v42 = *(v40 + v38);
    v43 = *(v1 + 168);
    v44 = *(v1 + 304);
    *v44 = 0;
    v45 = *(v31 + 8);
    if (v45 >> 1 == 0x1FFFFFFF)
    {
      v46 = 0;
      v47 = v44;
    }

    else
    {
      v46 = 0;
      v113 = *(v40 + v38);
      v114 = 2 * v43 - v42;
      v115 = 2;
      v47 = v44;
      v205 = v34;
      v207 = v33;
      v201 = v39;
      v203 = v35;
      v221 = v40;
      do
      {
        v116 = v113;
        v117 = v45;
        v118 = v45 >> 1;
        v113 = *(v40 + v118);
        if (v113 | v116)
        {
          v119 = *(v1 + 200);
          v120 = *(v119 + 4 * v118);
          if (v45)
          {
            v245 = v120 + *(v39 + 24 * v118 + 12);
            v121 = LODWORD(v245);
            v122 = 20;
          }

          else
          {
            v245 = *(v39 + 24 * v118) - v120;
            v121 = LODWORD(v245);
            v122 = -16;
          }

          v114 -= v113;
          if (v121 < 0)
          {
            v123 = ~v121;
          }

          else
          {
            v123 = v121 | 0x80000000;
          }

          v124 = (v123 & 0xFFFFFFF0) + v122;
          *(v37 + 4 * v115) = v124;
          v125 = *(v1 + 320);
          v126 = *(v125 + 4 * v115);
          if (*(v37 + 4 * v126) > v124)
          {
            v237 = v114;
            v245 = *(v119 + 4 * v118) + *(v39 + 24 * v118 + 12);
            v127 = *(v35 + 4 * v118);
            if (v245 < 0.0)
            {
              v128 = ~LODWORD(v245);
            }

            else
            {
              v128 = LODWORD(v245) | 0x80000000;
            }

            v129 = (v33 + 8 * v118);
            v240 = v118;
            v130 = (v34 + 8 * v118);
            v242 = 4 * (v127 & 3);
            v244 = v127;
            if (v117)
            {
              v132 = v115;
              do
              {
                v149 = *(v31 + 4 * v126);
                if ((v149 & 1) == 0)
                {
                  v150 = (v33 + 4 * v149);
                  v152 = *v150;
                  v151 = v150[1];
                  v153 = (v34 + 4 * v149);
                  v155 = *v153;
                  v154 = v153[1];
                  v156 = v129[1] > v152 && v151 > *v129;
                  v157 = v156 && v130[1] > v155;
                  if (v157 && v154 > *v130)
                  {
                    v159 = v149 >> 1;
                    v160 = *(v35 + 4 * (v149 >> 1));
                    if (v244 != v160 && *(*(v1 + 192) + (v160 & 3 | v242)) == 1)
                    {
                      v161 = *(this + 56);
                      if (v46 == v5)
                      {
                        v216 = 2 * v5;
                        v213 = *(v1 + 8);
                        v232 = v5;
                        v235 = v47;
                        v228 = v46;
                        __srcc = *(this + 56);
                        v210 = physx::PxcScratchAllocator::alloc(v213, 16 * v5, 1);
                        memcpy(v210, __srcc, (8 * v232));
                        physx::PxcScratchAllocator::free(v213, __srcc);
                        v39 = v201;
                        v35 = v203;
                        v34 = v205;
                        v33 = v207;
                        v46 = v228;
                        v47 = v235;
                        this = v217;
                        v1 = v218;
                        v161 = v210;
                        *(v217 + 56) = v210;
                        v125 = *(v218 + 320);
                        v5 = v216;
                      }

                      if (v240 >= v159)
                      {
                        v162 = v159;
                      }

                      else
                      {
                        v162 = v240;
                      }

                      v163 = (v161 + 8 * v46);
                      if (v240 <= v159)
                      {
                        v164 = v159;
                      }

                      else
                      {
                        v164 = v240;
                      }

                      *v163 = v162;
                      v163[1] = v164;
                      ++v46;
                    }
                  }
                }

                --v132;
                v126 = *(v125 + 4 * v126);
              }

              while (v124 < *(v37 + 4 * v126));
            }

            else
            {
              v131 = (v128 & 0xFFFFFFF0) + 20;
              v132 = v115;
              do
              {
                v133 = *(v31 + 4 * v126);
                if (v133)
                {
                  v134 = v133 >> 1;
                  if (*(v37 + 4 * *(v36 + 8 * (v133 >> 1))) < v131)
                  {
                    v135 = (v33 + 8 * v134);
                    v137 = *v135;
                    v136 = v135[1];
                    v138 = (v34 + 8 * v134);
                    v140 = *v138;
                    v139 = v138[1];
                    v141 = v129[1] > v137 && v136 > *v129;
                    v142 = v141 && v130[1] > v140;
                    if (v142 && v139 > *v130)
                    {
                      v144 = *(v35 + 4 * v134);
                      if (v244 != v144 && *(*(v1 + 192) + (v144 & 3 | v242)) == 1)
                      {
                        v145 = *(this + 56);
                        if (v46 == v5)
                        {
                          v212 = 2 * v5;
                          v209 = *(v1 + 8);
                          v231 = v5;
                          v234 = v47;
                          v227 = v46;
                          v215 = v131;
                          __srcb = *(this + 56);
                          v199 = physx::PxcScratchAllocator::alloc(v209, 16 * v5, 1);
                          memcpy(v199, __srcb, (8 * v231));
                          physx::PxcScratchAllocator::free(v209, __srcb);
                          v131 = v215;
                          v39 = v201;
                          v35 = v203;
                          v34 = v205;
                          v33 = v207;
                          v46 = v227;
                          v47 = v234;
                          this = v217;
                          v1 = v218;
                          v145 = v199;
                          *(v217 + 56) = v199;
                          v125 = *(v218 + 320);
                          v5 = v212;
                        }

                        if (v240 <= v134)
                        {
                          v146 = v134;
                        }

                        else
                        {
                          v146 = v240;
                        }

                        v147 = &v145[8 * v46];
                        if (v240 >= v134)
                        {
                          v148 = v134;
                        }

                        else
                        {
                          v148 = v240;
                        }

                        *v147 = v146;
                        v147[1] = v148;
                        ++v46;
                      }
                    }
                  }
                }

                --v132;
                v126 = *(v125 + 4 * v126);
              }

              while (v124 < *(v37 + 4 * v126));
            }

            v165 = *(v1 + 312);
            v166 = *(v165 + 4 * v115);
            v167 = *(v125 + 4 * v115);
            v168 = *(v165 + 4 * v126);
            *(v165 + 4 * v167) = v166;
            *(v125 + 4 * v166) = v167;
            *(v165 + 4 * v115) = v168;
            *(v125 + 4 * v115) = v126;
            *(v125 + 4 * v168) = v115;
            *(v165 + 4 * v126) = v115;
            v169 = (v47 + 16);
            v40 = v221;
            v114 = v237;
            do
            {
              v170 = *(v169 - 4);
              v169 -= 2;
            }

            while (v132 < v170);
            v44 = *(v1 + 304);
            v47 = (v169 - 2);
            if (v169 - 2 == v44 || v132 > *(v169 - 1) + 1)
            {
              *v169 = v132;
              v47 = v169;
            }

            *(v47 + 4) = v115;
            v113 = 1;
          }
        }

        else
        {
          if (!v114)
          {
            break;
          }

          v113 = 0;
        }

        v115 = (v115 + 1);
        v45 = *(v31 + 4 * v115);
      }

      while (v45 >> 1 != 0x1FFFFFFF);
    }

    *(this + 64) = v46;
    *(this + 68) = v5;
    while ((v44 + 2) <= v47)
    {
      v171 = v44;
      v44 += 2;
      v172 = v171[2];
      v173 = v171[3];
      if (v172 <= v173)
      {
        v174 = *(v1 + 320);
        do
        {
          *(v174 + 4 * v172) = v172;
          ++v172;
          v173 = v171[3];
        }

        while (v172 <= v173);
        v172 = *v44;
      }

      if (v172 <= v173)
      {
        v175 = v172 - 1;
        v176 = *(v1 + 312);
        do
        {
          v175 = *(v176 + 4 * v175);
          if (v172 != v175)
          {
            v177 = *(v1 + 320);
            v178 = *(v177 + 4 * v175);
            v179 = *(v31 + 4 * v178);
            v180 = *(v37 + 4 * v172);
            this = *(v31 + 4 * v172);
            *(v37 + 4 * v172) = *(v37 + 4 * v178);
            *(v31 + 4 * v172) = *(v31 + 4 * v178);
            *(v37 + 4 * v178) = v180;
            *(v31 + 4 * v178) = this;
            v181 = *(v177 + 4 * v172);
            *(v177 + 4 * v178) = v181;
            *(v177 + 4 * v181) = v178;
            *(v36 + ((4 * v179) & 0x3FFFFFFF8) + 4 * (v179 & 1)) = v172;
            v173 = v171[3];
          }

          ++v172;
        }

        while (v172 <= v173);
        v172 = *v44;
      }

      if (v172 - 1 <= v173)
      {
        v183 = *(v1 + 312);
        v182 = *(v1 + 320);
        do
        {
          *(v182 + 4 * v172) = v172 - 1;
          *(v183 + 4 * (v172 - 1)) = v172;
          v82 = v172++ > v171[3];
        }

        while (!v82);
      }
    }

    **(v1 + 320) = 0;
  }

  return this;
}

void physx::Bp::BroadPhaseSap::batchRemove(physx::Bp::BroadPhaseSap *this)
{
  if (!*(this + 38))
  {
    return;
  }

  v2 = 0;
  v3 = *(this + 82);
  *(this + 82) = *(this + 83);
  v4 = this + 240;
  v5 = this + 264;
  v6 = this + 216;
  do
  {
    v7 = *&v4[8 * v2];
    v8 = *&v5[8 * v2];
    if (*(this + 38))
    {
      v9 = 0;
      v10 = *&v6[8 * v2];
      v11 = *(this + 18);
      v12 = -1;
      do
      {
        v13 = (v10 + 8 * *(v11 + 4 * v9));
        v15 = *v13;
        v14 = v13[1];
        *(v8 + 4 * v15) = 1073741821;
        *(v8 + 4 * v14) = 1073741821;
        if (v15 < v12)
        {
          v12 = v15;
        }

        ++v9;
      }

      while (v9 < *(this + 38));
      v16 = 2 * *(this + 82) + 2;
      if (v12 == v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 2 * *(this + 82) + 2;
      v12 = -1;
    }

    v17 = -v16;
    v18 = -v12;
    v19 = v12;
    do
    {
      _X3 = v8 + 128 + 4 * v12;
      __asm { PRFM            #0, [X3] }

      ++v12;
      while (1)
      {
        v26 = v12 - 1;
        _X4 = (v8 + 4 * (v12 - 1));
        if (*_X4 != 1073741821)
        {
          break;
        }

        __asm { PRFM            #0, [X4,#0x80] }

        ++v12;
        if (v17 + v12 == 1)
        {
          goto LABEL_9;
        }
      }

      if (v18 + v12 != 1)
      {
        *(v7 + 4 * v19) = *(v7 + 4 * v26);
        v29 = *(v8 + 4 * v26);
        *(v8 + 4 * v19) = v29;
        if (v29 >> 1 != 0x1FFFFFFF)
        {
          *(*&v6[8 * v2] + ((4 * v29) & 0x3FFFFFFF8) + 4 * (v29 & 1)) = v19;
        }
      }

      ++v19;
      --v18;
    }

    while (v17 + v12);
LABEL_9:
    ++v2;
  }

  while (v2 != 3);
  if (*(this + 38))
  {
    v30 = 0;
    v31 = *(this + 18);
    v32 = *(this + 27);
    v33 = *(this + 28);
    v34 = *(this + 29);
    v35 = vdup_n_s32(0x3FFFFFFDu);
    do
    {
      v36 = *(v31 + 4 * v30);
      *(v32 + 8 * v36) = v35;
      *(v33 + 8 * v36) = v35;
      *(v34 + 8 * v36) = v35;
      ++v30;
    }

    while (v30 < *(this + 38));
  }

  v37 = *(this + 52);
  v38 = (v37 >> 3) & 0x1FFFFFFC;
  if (v37 >= 0x1000)
  {
    v39 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v38 + 4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
  }

  else
  {
    v39 = v51;
  }

  v52 = v39;
  bzero(v39, v38 + 4);
  v40 = v52;
  if (*(this + 38))
  {
    v41 = 0;
    v42 = *(this + 18);
    do
    {
      *&v40[(*(v42 + 4 * v41) >> 3) & 0x1FFFFFFC] |= 1 << *(v42 + 4 * v41);
      ++v41;
      v43 = *(this + 38);
    }

    while (v41 < v43);
  }

  else
  {
    LODWORD(v43) = 0;
  }

  v44 = *(this + 102);
  if (v44)
  {
    v45 = 0;
    do
    {
      v46 = (*(this + 49) + 8 * v45);
      v47 = *v46;
      v48 = v46[1];
      if ((*&v40[(v47 >> 3) & 0x1FFFFFFC] >> v47) & 1) != 0 || ((*&v40[(v48 >> 3) & 0x1FFFFFFC] >> v48))
      {
        v49 = (v47 | (v48 << 16)) + ~((v47 | (v48 << 16)) << 15);
        v50 = (9 * (v49 ^ (v49 >> 10))) ^ ((9 * (v49 ^ (v49 >> 10))) >> 6);
        physx::Bp::SapPairManager::RemovePair(this + 45, *(this + 104) & ((v50 + ~(v50 << 11)) ^ ((v50 + ~(v50 << 11)) >> 16)), v45);
        v44 = *(this + 102);
      }

      else
      {
        ++v45;
      }
    }

    while (v45 < v44);
    LODWORD(v43) = *(this + 38);
    v40 = v52;
  }

  *(this + 82) = v3 - v43;
  *(this + 83) = v3 - v43 - *(this + 34);
  if (v40 != v51)
  {
    if (v40)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v40);
    }
  }
}

_DWORD *physx::Bp::SapPairManager::FindPair(physx::Bp::SapPairManager *this, unsigned int a2, unsigned int a3)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v3 = a2 >= a3 ? a3 : a2;
  v4 = a2 <= a3 ? a3 : a2;
  v5 = (v3 | (v4 << 16)) + ~((v3 | (v4 << 16)) << 15);
  v6 = (9 * (v5 ^ (v5 >> 10))) ^ ((9 * (v5 ^ (v5 >> 10))) >> 6);
  v7 = *(*this + 4 * (*(this + 14) & ((v6 + ~(v6 << 11)) ^ ((v6 + ~(v6 << 11)) >> 16))));
  if (v7 == 0x3FFFFFFF)
  {
    return 0;
  }

  while (1)
  {
    v8 = (*(this + 4) + 8 * v7);
    if (*v8 == v3 && v8[1] == v4)
    {
      break;
    }

    v7 = *(*(this + 1) + 4 * v7);
    if (v7 == 0x3FFFFFFF)
    {
      return 0;
    }
  }

  return v8;
}

unsigned int *physx::Bp::SapPairManager::AddPair(physx::Bp::SapPairManager *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 12);
  if (v3 == 0x3FFFFFFF)
  {
    return 0;
  }

  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (a2 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = 9 * (((v6 | (v7 << 16)) + ~((v6 | (v7 << 16)) << 15)) ^ (((v6 | (v7 << 16)) + ~((v6 | (v7 << 16)) << 15)) >> 10));
  v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
  v10 = v9 ^ (v9 >> 16);
  v11 = *(this + 14) & v10;
  v12 = *(this + 4);
  if (!v12 || (v13 = *(*this + 4 * v11), v13 == 0x3FFFFFFF))
  {
LABEL_16:
    if (v3 >= v12)
    {
      v15 = (v3 + 1) | ((v3 + 1) >> 1) | (((v3 + 1) | ((v3 + 1) >> 1)) >> 2);
      v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
      v17 = v16 | HIWORD(v16);
      *(this + 4) = v17 + 1;
      *(this + 14) = v17;
      physx::Bp::SapPairManager::reallocPairs(this, (v17 + 1) > *(this + 5));
      v11 = *(this + 14) & v10;
      v3 = *(this + 12);
    }

    v18 = *(this + 5);
    result = (*(this + 4) + 8 * v3);
    *result = v6;
    result[1] = v7;
    *(v18 + v3) = 8;
    v19 = *this;
    *(*(this + 1) + 4 * *(this + 12)) = *(*this + 4 * v11);
    v20 = *(this + 12);
    *(this + 12) = v20 + 1;
    *(v19 + 4 * v11) = v20;
  }

  else
  {
    while (1)
    {
      result = (*(this + 4) + 8 * v13);
      if (*result == v6 && result[1] == v7)
      {
        break;
      }

      v13 = *(*(this + 1) + 4 * v13);
      if (v13 == 0x3FFFFFFF)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

const void **physx::Bp::SapPairManager::reallocPairs(const void **this, char a2)
{
  v2 = this;
  if (a2)
  {
    if (*this)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v3 = *(v2 + 4);
    *(v2 + 5) = v3;
    *(v2 + 13) = v3;
    if (v3)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 413);
      v4 = *(v2 + 4);
      *v2 = this;
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = 0;
      do
      {
        *(this + v5++) = 0x3FFFFFFF;
        v6 = *(v2 + 4);
      }

      while (v5 < v6);
      if (v6)
      {
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 421);
        v7 = this;
        v8 = *(v2 + 4);
        if (v8)
        {
          this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 422);
          v9 = this;
          v10 = *(v2 + 4);
          if (v10)
          {
            this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 423);
            v11 = this;
            goto LABEL_22;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
LABEL_19:
        v9 = 0;
        v7 = 0;
      }

      v11 = 0;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v11 = 0;
      *v2 = 0;
    }

LABEL_22:
    v22 = *(v2 + 12);
    if (v22)
    {
      memcpy(v7, v2[4], 8 * v22);
      this = memcpy(v11, v2[5], *(v2 + 12));
      if (*(v2 + 12))
      {
        v23 = 0;
        v24 = *v2;
        v25 = v2[4] + 4;
        do
        {
          v26 = *(v25 - 1) | (*v25 << 16);
          v27 = 9 * ((v26 + ~(v26 << 15)) ^ ((v26 + ~(v26 << 15)) >> 10));
          v28 = (v27 ^ (v27 >> 6)) + ~((v27 ^ (v27 >> 6)) << 11);
          v29 = (v28 ^ (v28 >> 16)) & v2[7];
          *(v9 + v23) = v24[v29];
          v24[v29] = v23++;
          v25 += 2;
        }

        while (v23 < *(v2 + 12));
      }
    }

    if (v2[1])
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (v2[4])
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (v2[5])
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v2[4] = v7;
    v2[5] = v11;
    v2[1] = v9;
    return this;
  }

  if (*(this + 4))
  {
    v12 = 0;
    v13 = *this;
    do
    {
      v13[v12++] = 0x3FFFFFFF;
    }

    while (v12 < *(this + 4));
  }

  if (*(this + 12))
  {
    v14 = 0;
    v15 = *this;
    v16 = this[1];
    v17 = this[4] + 4;
    do
    {
      v18 = *(v17 - 1) | (*v17 << 16);
      v19 = 9 * ((v18 + ~(v18 << 15)) ^ ((v18 + ~(v18 << 15)) >> 10));
      v20 = (v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11);
      v21 = (v20 ^ (v20 >> 16)) & this[7];
      v16[v14] = v15[v21];
      v15[v21] = v14++;
      v17 += 2;
    }

    while (v14 < *(this + 12));
  }

  return this;
}

uint64_t *physx::Bp::SapPairManager::RemovePair(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v4 = *this;
  v3 = this[1];
  v5 = (*this + 4 * a2);
  v6 = *v5;
  if (*v5 != a3)
  {
    do
    {
      v7 = v6;
      v6 = *(v3 + 4 * v6);
    }

    while (v6 != a3);
    if (v7 != 0x3FFFFFFF)
    {
      v5 = (v3 + 4 * v7);
    }
  }

  *v5 = *(v3 + 4 * a3);
  v8 = *(this + 12) - 1;
  if (v8 != a3)
  {
    v9 = this[4];
    v10 = *(v9 + 8 * v8) | (*(v9 + 8 * v8 + 4) << 16);
    v11 = 9 * ((v10 + ~(v10 << 15)) ^ ((v10 + ~(v10 << 15)) >> 10));
    v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
    v13 = (v12 ^ (v12 >> 16)) & this[7];
    v14 = (v4 + 4 * v13);
    v15 = *v14;
    if (*v14 != v8)
    {
      do
      {
        v16 = v15;
        v15 = *(v3 + 4 * v15);
      }

      while (v15 != v8);
      if (v16 != 0x3FFFFFFF)
      {
        v14 = (v3 + 4 * v16);
      }
    }

    *v14 = *(v3 + 4 * v8);
    *(v9 + 8 * a3) = *(v9 + 8 * v8);
    *(this[5] + a3) = *(this[5] + v8);
    v17 = *this;
    *(this[1] + 4 * a3) = *(*this + 4 * v13);
    *(v17 + 4 * v13) = a3;
    a3 = *(this + 12) - 1;
  }

  *(this + 12) = a3;
  return this;
}

uint64_t physx::Bp::DataArray::Resize(physx::Bp::DataArray *this, pthread_mutex_t **a2)
{
  v4 = physx::PxcScratchAllocator::alloc(a2, 8 * *(this + 3), 1);
  memcpy(v4, *this, (4 * *(this + 3)));
  result = physx::PxcScratchAllocator::free(a2, *this);
  *this = v4;
  *(this + 3) *= 2;
  return result;
}

uint64_t physx::Bp::AuxData::AuxData(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v7 = a2;
  if (a2 == -1)
  {
    v28 = -1;
    v29 = 0;
    v9 = 0xFFFFFFFFLL;
LABEL_5:
    v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 743);
    v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 744);
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
    v15 = 0;
    v11 = v29;
    v7 = v28;
    goto LABEL_6;
  }

  v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (a2 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 742);
  v11 = v10;
  if (v7)
  {
    v29 = v10;
    v28 = v7;
    v9 = v7;
    goto LABEL_5;
  }

  v12 = 0;
  v9 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
LABEL_6:
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v7;
  if ((v15 & 1) == 0)
  {
    v16 = (v12 + 8);
    v17 = (v11 + 4);
    v18 = v9;
    v19 = *a3;
    v21 = a3[1];
    v20 = a3[2];
    do
    {
      v22 = *a4++;
      *v13++ = *(a5 + 4 * v22);
      *v14++ = v22;
      v23 = (v19 + 8 * v22);
      *(v17 - 1) = *v23;
      *v17 = v23[1];
      v17 += 2;
      v24 = (v20 + 8 * v22);
      *(v16 - 2) = *v24;
      *v16 = v24[1];
      v25 = (v21 + 8 * v22);
      *(v16 - 1) = *v25;
      v16[1] = v25[1];
      v16 += 4;
      --v18;
    }

    while (v18);
  }

  *(v11 + 8 * v9) = -1;
  return a1;
}

void physx::Bp::AuxData::~AuxData(physx::Bp::AuxData *this)
{
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

uint64_t physx::Bp::addPair(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  result = physx::Bp::SapPairManager::AddPair(v4, *(*a1 + 4 * a2), *(*(a1 + 8) + 4 * a3));
  if (result)
  {
    v6 = result;
    v7 = *(v4 + 5);
    v8 = (result - *(v4 + 4)) >> 3;
    v9 = *(v7 + v8);
    if ((v9 & 8) != 0)
    {
      *(v7 + v8) = 0;
      *(*(v4 + 5) + ((result - *(v4 + 4)) >> 3)) |= 1u;
      v10 = *(a1 + 32);
      v11 = result - *(v4 + 4);
      v12 = v11 >> 3;
      v13 = *(v10 + 2);
      if (v13 == *(v10 + 3))
      {
        result = physx::Bp::DataArray::Resize(*(a1 + 32), *(a1 + 16));
        v13 = *(v10 + 2);
        v11 = v6 - *(v4 + 4);
      }

      v14 = *v10;
      *(v10 + 2) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      *(*(v4 + 5) + (v11 >> 3)) |= 4u;
      v7 = *(v4 + 5);
      v8 = (v6 - *(v4 + 4)) >> 3;
      v9 = *(v7 + v8);
    }

    *(v7 + v8) = v9 & 0xFD;
  }

  return result;
}

uint64_t physx::Bp::BroadPhaseMBP::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t physx::Bp::BroadPhaseBase::getCaps(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  return 1;
}

uint64_t physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::resize(uint64_t result, unsigned int a2, void *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 8 * a2;
    v8 = (*v5 + 8 * v6);
    do
    {
      *v8++ = *a3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>::getName() [T = physx::Bp::BroadPhasePair]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::allocate(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::getName() [T = physx::Bp::IAABB]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = *(*(v4 + 24) + 16);

    return v6(v4 + 24, v3, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", a2);
  }

  return result;
}

uint64_t physx::shdfnd::Array<RegionData,physx::shdfnd::ReflectionAllocator<RegionData>>::recreate(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 56 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<RegionData>::getName() [T = RegionData]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 56 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      *(v12 + 48) = *(v10 + 6);
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      v12 += 56;
      v10 = (v10 + 56);
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<MBP_Object,physx::shdfnd::ReflectionAllocator<MBP_Object>>::recreate(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 12 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<MBP_Object>::getName() [T = MBP_Object]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 12 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      *(v12 + 8) = *(v10 + 2);
      *v12 = v13;
      v12 += 12;
      v10 = (v10 + 12);
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v6 + 8 * v7;
    v9 = *a1;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v6 + 8 * v12) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v6;
  v13 = *(a1 + 8);
  *(a1 + 8) = v13 + 1;
  *(a1 + 12) = v5;
  return v6 + 8 * v13;
}

void physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = (4 * a5);
  v46 = v8 > 0x400;
  if (v8 < 0x401)
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v40[-((v8 + 15) & 0x1FFFFFFF0) - 8];
    bzero(v9, v8);
  }

  else
  {
    v9 = physx::shdfnd::TempAllocator::allocate(v40, (4 * a5), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSort.h", 65);
  }

  v45 = v9;
  v41 = 0;
  v42 = a5;
  v43 = v9;
  v10 = a2 - 1;
  v44 = 0;
  if (a2 - 1 < 1)
  {
    if (v8 <= 0x400)
    {
      return;
    }

    goto LABEL_44;
  }

  v11 = 0;
  for (i = v9; ; v11 = *(i + v38 - 2))
  {
    while (1)
    {
      if (v10 <= v11)
      {
        goto LABEL_37;
      }

      if ((v10 - v11) <= 4)
      {
        break;
      }

      v13 = (v11 + v10 + ((v11 + v10) >> 31)) >> 1;
      v14 = *(a1 + 4 * ((v11 + v10) / 2));
      v15 = *(a1 + 4 * v11);
      if (v14 < v15)
      {
        *(a1 + 4 * v11) = v14;
        *(a1 + 4 * v13) = v15;
        v14 = v15;
        v15 = *(a1 + 4 * v11);
      }

      v16 = (a1 + 4 * v10);
      if (*v16 >= v15)
      {
        v15 = *v16;
      }

      else
      {
        *(a1 + 4 * v11) = *v16;
        *v16 = v15;
        v14 = *(a1 + 4 * v13);
      }

      if (v15 < v14)
      {
        *(a1 + 4 * v13) = v15;
        *v16 = v14;
        v14 = *(a1 + 4 * v13);
      }

      *(a1 + 4 * v13) = *(v16 - 1);
      *(v16 - 1) = v14;
      v17 = v10 - 1;
      v18 = v11;
      LODWORD(v19) = v10 - 1;
      while (1)
      {
        v20 = 0;
        v21 = v18;
        v22 = (a1 + 4 * v18);
        do
        {
          v24 = v22[1];
          ++v22;
          v23 = v24;
          ++v20;
        }

        while (v24 < v14);
        v19 = v19;
        do
        {
          v25 = a1 + 4 * v19--;
          v26 = *(v25 - 4);
        }

        while (v14 < v26);
        if (v21 + v20 >= v19)
        {
          break;
        }

        *v22 = v26;
        *(a1 + 4 * v19) = v23;
        v14 = *(a1 + 4 * v17);
        v18 = v20 + v21;
      }

      *v22 = v14;
      *(a1 + 4 * v17) = v23;
      v27 = v41;
      v28 = v42 - 1;
      if (v21 - v11 + v20 >= v10 - v21 - v20)
      {
        if (v41 >= v28)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v40);
          v27 = v41;
          i = v43;
        }

        v41 = v27 + 1;
        *(i + v27) = v20 + v21 + 1;
        v30 = v41++;
        *(i + v30) = v10;
        v10 = v21 + v20 - 1;
      }

      else
      {
        if (v41 >= v28)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v40);
          v27 = v41;
          i = v43;
        }

        v41 = v27 + 1;
        *(i + v27) = v11;
        v29 = v41++;
        *(i + v29) = v21 - 1 + v20;
        v11 = v21 + v20 + 1;
      }
    }

    v31 = v11;
    v32 = v11 + 1;
    do
    {
      v33 = v31++;
      v34 = v32;
      v35 = v33;
      v36 = v33;
      do
      {
        if (*(a1 + 4 + 4 * v35) < *(a1 + 4 * v36))
        {
          v36 = v34;
        }

        ++v35;
        ++v34;
      }

      while (v35 < v10);
      if (v36 != v33)
      {
        v37 = *(a1 + 4 * v36);
        *(a1 + 4 * v36) = *(a1 + 4 * v33);
        *(a1 + 4 * v33) = v37;
      }

      ++v32;
    }

    while (v31 != v10);
LABEL_37:
    v38 = v41;
    if (!v41)
    {
      break;
    }

    --v41;
    v10 = *(i + v38 - 1);
    v41 = v38 - 2;
  }

  if ((v44 & 1) == 0 || !i)
  {
    if (v8 < 0x401)
    {
      return;
    }

LABEL_44:
    physx::shdfnd::TempAllocator::deallocate(&v45, v9);
    return;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  if (v46)
  {
    v9 = v45;
    goto LABEL_44;
  }
}

uint64_t physx::Bp::PersistentActorAggregatePair::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    return 1;
  }

  v3 = *(a2 + 264);
  if (*(v3 + 4 * *(a1 + 68)) == -1)
  {
    return 1;
  }

  v4 = *(a1 + 72);
  if (*(v3 + 4 * v4) == -1)
  {
    return 1;
  }

  v5 = *(a1 + 80);
  if (!*(v5 + 16))
  {
    return 1;
  }

  if (*(v5 + 32) == -1 && (*(a1 + 72) >> 5 >= (*(a2 + 232) & 0x7FFFFFFFu) || ((*(*(a2 + 224) + 4 * (v4 >> 5)) >> v4) & 1) == 0))
  {
    return 0;
  }

  physx::Bp::AABBManager::updatePairs(a2, a1, a3);
  return 0;
}

unsigned int *physx::Bp::AABBManager::updatePairs(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = result[142];
  v6 = *(a2 + 8);
  if (a3)
  {
    if (v6 == v5)
    {
      return result;
    }

    *(a2 + 8) = v5;
    v56 = (a2 + 16);
    (*(*a2 + 24))(a2);
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      v54 = a3 + 40;
      v55 = a3 + 8;
      while (1)
      {
        v10 = (*(a2 + 48) + 8 * v9);
        v12 = *v10;
        v11 = v10[1];
        v13 = *v10 & 0x7FFFFFFF;
        v14 = v11 & 0x7FFFFFFF;
        if (*v10 < 0)
        {
          v23 = *(v4 + 36);
          v24 = *(v23 + 16 * v13) & 3;
          v25 = *(v23 + 16 * v14) & 3;
          if (v24 > v25)
          {
            v25 = v24;
          }

          v26 = v55 + 16 * v25;
          *&v57 = v12 & 0x7FFFFFFF;
          *(&v57 + 1) = v11 & 0x7FFFFFFF;
          v27 = *(v26 + 8);
          if ((*(v26 + 12) & 0x7FFFFFFFu) <= v27)
          {
            physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v26, &v57);
          }

          else
          {
            v28 = *v26 + 24 * v27;
            *v28 = v57;
            *(v28 + 16) = v58;
            ++*(v26 + 8);
          }

          *v10 &= 0x7FFFFFFF7FFFFFFFuLL;
        }

        else
        {
          if ((v11 & 0x80000000) == 0)
          {
            v15 = *(v4 + 36);
            v16 = *(v15 + 16 * (*v10 & 0x7FFFFFFF));
            if (v16 >= 4)
            {
              v17 = *(v15 + 16 * (v11 & 0x7FFFFFFF));
              if (v17 >= 4)
              {
                v18 = v16 & 3;
                v19 = v17 & 3;
                if (v18 <= v19)
                {
                  v18 = v19;
                }

                v20 = v54 + 16 * v18;
                *&v57 = v13;
                *(&v57 + 1) = v14;
                v21 = *(v20 + 8);
                if ((*(v20 + 12) & 0x7FFFFFFFu) <= v21)
                {
                  physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v20, &v57);
                }

                else
                {
                  v22 = *v20 + 24 * v21;
                  *v22 = v57;
                  *(v22 + 16) = v58;
                  ++*(v20 + 8);
                }
              }
            }

            v29 = 9 * (((v12 | (v11 << 16)) + ~((v12 | (v11 << 16)) << 15)) ^ (((v12 | (v11 << 16)) + ~((v12 | (v11 << 16)) << 15)) >> 10));
            v30 = (v29 ^ (v29 >> 6)) + ~((v29 ^ (v29 >> 6)) << 11);
            physx::Bp::PairManagerData::removePair(v56, v13, v11 & 0x7FFFFFFF, *(a2 + 20) & (v30 ^ HIWORD(v30)), v9);
            --v8;
            goto LABEL_23;
          }

          v10[1] = v14;
        }

        ++v9;
LABEL_23:
        if (v9 >= v8)
        {
          goto LABEL_49;
        }
      }
    }

    goto LABEL_49;
  }

  if (v6 == v5)
  {
    return result;
  }

  *(a2 + 8) = v5;
  v56 = (a2 + 16);
  (*(*a2 + 24))(a2);
  v31 = *(a2 + 24);
  if (v31)
  {
    v32 = 0;
    do
    {
      v33 = (*(a2 + 48) + 8 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = *v33 & 0x7FFFFFFF;
      v37 = v34 & 0x7FFFFFFF;
      if (*v33 < 0)
      {
        v46 = *(v4 + 36);
        v47 = *(v46 + 16 * v36) & 3;
        v48 = *(v46 + 16 * v37) & 3;
        if (v47 > v48)
        {
          v48 = v47;
        }

        v49 = &v4[4 * v48 + 110];
        *&v57 = v35 & 0x7FFFFFFF;
        *(&v57 + 1) = v34 & 0x7FFFFFFF;
        v50 = *(v49 + 8);
        if ((*(v49 + 12) & 0x7FFFFFFFu) <= v50)
        {
          physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v49, &v57);
        }

        else
        {
          v51 = *v49 + 24 * v50;
          *v51 = v57;
          *(v51 + 16) = v58;
          ++*(v49 + 8);
        }

        *v33 &= 0x7FFFFFFF7FFFFFFFuLL;
      }

      else
      {
        if ((v34 & 0x80000000) == 0)
        {
          v38 = *(v4 + 36);
          v39 = *(v38 + 16 * (*v33 & 0x7FFFFFFF));
          if (v39 >= 4)
          {
            v40 = *(v38 + 16 * (v34 & 0x7FFFFFFF));
            if (v40 >= 4)
            {
              v41 = v39 & 3;
              v42 = v40 & 3;
              if (v41 <= v42)
              {
                v41 = v42;
              }

              v43 = &v4[4 * v41 + 118];
              *&v57 = v36;
              *(&v57 + 1) = v37;
              v44 = *(v43 + 8);
              if ((*(v43 + 12) & 0x7FFFFFFFu) <= v44)
              {
                physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v43, &v57);
              }

              else
              {
                v45 = *v43 + 24 * v44;
                *v45 = v57;
                *(v45 + 16) = v58;
                ++*(v43 + 8);
              }
            }
          }

          v52 = 9 * (((v35 | (v34 << 16)) + ~((v35 | (v34 << 16)) << 15)) ^ (((v35 | (v34 << 16)) + ~((v35 | (v34 << 16)) << 15)) >> 10));
          v53 = (v52 ^ (v52 >> 6)) + ~((v52 ^ (v52 >> 6)) << 11);
          physx::Bp::PairManagerData::removePair(v56, v36, v34 & 0x7FFFFFFF, *(a2 + 20) & (v53 ^ HIWORD(v53)), v32);
          --v31;
          continue;
        }

        v33[1] = v37;
      }

      ++v32;
    }

    while (v32 < v31);
  }

LABEL_49:

  return physx::Bp::PairManagerData::shrinkMemory(v56);
}

uint64_t physx::Bp::PersistentAggregateAggregatePair::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    return 1;
  }

  v3 = *(a2 + 264);
  if (*(v3 + 4 * *(a1 + 68)) == -1)
  {
    return 1;
  }

  if (*(v3 + 4 * *(a1 + 72)) == -1)
  {
    return 1;
  }

  v4 = *(a1 + 80);
  if (!*(v4 + 16))
  {
    return 1;
  }

  v5 = *(a1 + 88);
  if (!*(v5 + 16))
  {
    return 1;
  }

  if (*(v4 + 32) == -1 && *(v5 + 32) == -1)
  {
    return 0;
  }

  physx::Bp::AABBManager::updatePairs(a2, a1, a3);
  return 0;
}

void physx::Bp::Aggregate::~Aggregate(physx::Bp::Aggregate *this)
{
  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 6) = 0;
  if (*(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 5) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 5);
  if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

void physx::Bp::Aggregate::sortBounds(physx::Bp::Aggregate *this)
{
  v29 = *MEMORY[0x1E69E9840];
  *(this + 84) = 0;
  v1 = *(this + 4);
  if (v1 >= 2)
  {
    v3 = v1 + 1;
    v4 = (4 * (v1 + 1));
    if (v4 < 0x401)
    {
      MEMORY[0x1EEE9AC00](this);
      v5 = (&v20 - ((v4 + 15) & 0x1FFFFFFF0));
      bzero(v5, (4 * v3));
    }

    else
    {
      v5 = physx::shdfnd::TempAllocator::allocate(&v23, (4 * v3), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 903);
    }

    v6 = *(this + 5);
    v9 = *v6;
    v7 = v6 + 2;
    v8 = v9;
    *v5 = v9;
    v10 = 1;
    v11 = 1;
    do
    {
      v12 = *v7;
      v7 += 2;
      v11 &= v12 >= v8;
      *(v5 + v10++) = v12;
      v8 = v12;
    }

    while (v1 != v10);
    if ((v11 & 1) == 0)
    {
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      v28 = 1;
      v24 = 0x80000000;
      v23 = &unk_1F5D21400;
      *(v5 + v1) = -1;
      physx::Cm::RadixSortBuffered::Sort(&v23);
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::copy<physx::shdfnd::ReflectionAllocator<unsigned int>>(&v21, this + 8);
      if (v1 == -6)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (v1 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 945);
      }

      v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v1, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 946);
      v15 = v14;
      v16 = 0;
      v17 = v25;
      do
      {
        v18 = *(v17 + 4 * v16);
        *(*(this + 1) + 4 * v16) = *(v21 + 4 * v18);
        *(v13 + 8 * v16) = *(*(this + 5) + 8 * v18);
        *(v14 + 16 * v16++) = *(*(this + 6) + 16 * v18);
      }

      while (v1 != v16);
      for (i = 0; i != 6; ++i)
      {
        *(v13 + 8 * (v1 + i)) = -1;
      }

      *(this + 14) = v1;
      if (*(this + 6))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      if (*(this + 5))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      *(this + 5) = v13;
      *(this + 6) = v15;
      if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && v21)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v23 = &unk_1F5D21400;
      physx::Cm::RadixSortBuffered::reset(&v23);
    }

    if (v4 >= 0x401)
    {
      physx::shdfnd::TempAllocator::deallocate(&v23, v5);
    }
  }
}

uint64_t physx::Bp::Aggregate::allocateBounds(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != *(this + 56))
  {
    v2 = this;
    *(this + 56) = v1;
    if (*(this + 48))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v2 + 40))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (v1 == -6)
    {
      *(v2 + 40) = 0;
    }

    else
    {
      *(v2 + 40) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (v1 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 976);
      if (!v1)
      {
        this = 0;
LABEL_11:
        *(v2 + 48) = this;
        return this;
      }
    }

    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v1, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 977);
    goto LABEL_11;
  }

  return this;
}

uint64_t physx::Bp::Aggregate::computeBounds(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = *(result + 8);
  v5 = *v4;
  v6 = (v3 - 1);
  if (v3 != 1)
  {
    if (v6 >= 4)
    {
      v6 = 4;
    }

    v7 = v4 + 1;
    do
    {
      v8 = *v7++;
      _X15 = a2 + 24 * v8;
      __asm { PRFM            #0, [X15] }

      _X14 = a3 + 4 * v8;
      __asm { PRFM            #0, [X14] }

      --v6;
    }

    while (v6);
  }

  v17 = a2 + 24 * v5;
  v18 = (a3 + 4 * v5);
  v19 = vld1q_dup_f32(v18);
  v20 = vsubq_f32(*v17, v19);
  v21 = vaddq_f32(*(v17 + 12), v19);
  v22 = vzip1_s32(*v20.f32, *v21.f32);
  v23 = *(result + 40);
  v24 = *(result + 48);
  *v23 = vbsl_s8(vcltz_s32(v22), vmvn_s8(v22), vneg_f32(vabs_f32(v22)));
  *v24 = vzip2q_s32(vzip1q_s32(v20, v21), vtrn1q_s32(v20, v21));
  if (v3 >= 2)
  {
    for (i = 1; i != v3; ++i)
    {
      v26 = v4[i];
      if (i + 4 < v3)
      {
        v27 = v4[(i + 4)];
        _X16 = a2 + 24 * v27;
        __asm { PRFM            #0, [X16] }

        _X15 = a3 + 4 * v27;
        __asm { PRFM            #0, [X15] }
      }

      v32 = a2 + 24 * v26;
      v33 = (a3 + 4 * v26);
      v34 = vld1q_dup_f32(v33);
      v35 = vsubq_f32(*v32, v34);
      v36 = vaddq_f32(*(v32 + 12), v34);
      v20 = vminq_f32(v20, v35);
      v21 = vmaxq_f32(v21, v36);
      v37 = vzip1_s32(*v35.f32, *v36.f32);
      v23[i] = vbsl_s8(vcltz_s32(v37), vmvn_s8(v37), vneg_f32(vabs_f32(v37)));
      v24[i] = vzip2q_s32(vzip1q_s32(v35, v36), vtrn1q_s32(v35, v36));
    }
  }

  *(result + 60) = v20.i32[0];
  *(result + 64) = vextq_s8(v20, v20, 4uLL).u64[0];
  *(result + 72) = v21.i32[0];
  v38 = 6;
  *(result + 76) = vextq_s8(v21, v21, 4uLL).u64[0];
  do
  {
    v23[v3].i32[0] = -1;
    LODWORD(v3) = v3 + 1;
    --v38;
  }

  while (v38);
  *(result + 84) = 1;
  return result;
}

void physx::Bp::AABBManager::reserveShapeSpace(physx::Bp::AABBManager *this, unsigned int a2)
{
  v3 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  LODWORD(v6) = -1;
  physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::VirtualAllocator>::resize(this + 256, v5 + 1, &v6);
  v6 = 0uLL;
  physx::shdfnd::Array<physx::Bp::VolumeData,physx::shdfnd::ReflectionAllocator<physx::Bp::VolumeData>>::resize(this + 288, v5 + 1, &v6);
  physx::shdfnd::Array<float,physx::shdfnd::VirtualAllocator>::resizeUninitialized(*(this + 35), v5 + 1);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 192, v5 + 1);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 208, v5 + 1);
}

uint64_t physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::VirtualAllocator>::resize(uint64_t result, unsigned int a2, int *a3)
{
  v5 = result;
  if ((*(result + 20) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::VirtualAllocator>::recreate(result, a2);
  }

  v6 = *(v5 + 16);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *(v5 + 8);
    v9 = v8 + 4 * v6;
    v10 = v8 + 4 * a2;
    if (v9 + 4 > v10)
    {
      v10 = v9 + 4;
    }

    v11 = *a3;
    v12 = (v10 + ~v8 - 4 * v6) >> 2;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v15 = (v9 + 8);
    do
    {
      v16 = vdupq_n_s64(v7);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_1E3049620)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 1) = v11;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_1E3049640)))).i32[1])
      {
        *v15 = v11;
        v15[1] = v11;
      }

      v7 += 4;
      v15 += 4;
    }

    while (v14 != v7);
  }

  *(v5 + 16) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::VolumeData,physx::shdfnd::ReflectionAllocator<physx::Bp::VolumeData>>::resize(uint64_t result, unsigned int a2, _OWORD *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Bp::VolumeData,physx::shdfnd::ReflectionAllocator<physx::Bp::VolumeData>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 16 * a2;
    v8 = (*v5 + 16 * v6);
    do
    {
      *v8++ = *a3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<float,physx::shdfnd::VirtualAllocator>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 20) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<float,physx::shdfnd::VirtualAllocator>::recreate(result, a2);
  }

  *(v3 + 16) = a2;
  return result;
}

uint64_t physx::Bp::AABBManager::AABBManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t *a7, uint64_t a8, int a9, int a10)
{
  v17 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v18 = "<allocation names disabled>";
  }

  v19 = (*(*(v17 + 24) + 16))(v17 + 24, 72, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *a1 = v19;
  physx::shdfnd::MutexImpl::MutexImpl(v19);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = &unk_1F5D1CAD8;
  *(a1 + 16) = a8;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 64) = &unk_1F5D1CD70;
  *(a1 + 72) = a8;
  *(a1 + 104) = a1;
  *(a1 + 112) = "AABBManager::postBroadPhaseStage3";
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 120) = &unk_1F5D1CA48;
  *(a1 + 128) = a8;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  v20 = *a7;
  *(a1 + 240) = *a7;
  *(a1 + 256) = v20;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a4;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v21 = *a7;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = v21;
  v22 = *a7;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = v22;
  *(a1 + 368) = *a7;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a2;
  *(a1 + 400) = a3;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 517) = 0;
  *(a1 + 525) = 1;
  *(a1 + 528) = 0xFFFFFFFF00000000;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 568) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 616) = -3233808384;
  *(a1 + 624) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Bp::AggPair const,physx::Bp::PersistentPairs *>,physx::Bp::AggPair,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 576, 0x40u);
  *(a1 + 664) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 672) = -3233808384;
  *(a1 + 680) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Bp::AggPair const,physx::Bp::PersistentPairs *>,physx::Bp::AggPair,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 632, 0x40u);
  *(a1 + 688) = 0u;
  *(a1 + 704) = -2;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  *(a1 + 768) = -3233808384;
  *(a1 + 776) = 0;
  physx::shdfnd::internal::HashBase<physx::Bp::Pair,physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::internal::HashSetBase<physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(a1 + 728, 0x40u);
  *(a1 + 784) = a8;
  v23 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v24 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>::getName() [T = physx::shdfnd::SListImpl]";
  }

  else
  {
    v24 = "<allocation names disabled>";
  }

  v25 = (*(*(v23 + 24) + 16))(v23 + 24, 72, v24, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSList.h", 103);
  *(a1 + 792) = v25;
  *v25 = 0;
  pthread_mutex_init((v25 + 8), 0);
  if (a6 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = a6;
  }

  physx::Bp::AABBManager::reserveShapeSpace(a1, v26);
  *(a1 + 304) = 0;
  *(a1 + 306) = 257;
  *(a1 + 308) = a10 != 2;
  *(a1 + 305) = a10 != 2;
  *(a1 + 314) = 1;
  *(a1 + 309) = a9 != 2;
  *(a1 + 310) = 16843009;
  *(a1 + 315) = 16843009;
  *(a1 + 319) = 1;
  return a1;
}

uint64_t physx::Bp::AABBManager::destroy(physx::Bp::AABBManager *this)
{
  v2 = (this + 576);
  physx::Bp::releasePairs(this + 576);
  physx::Bp::releasePairs(this + 632);
  v3 = *(this + 136);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *(this + 133);
      if (v5 == -1)
      {
        v6 = *(this + 67);
LABEL_7:
        v8 = *(v6 + 8 * i);
        if (v8)
        {
          physx::Bp::Aggregate::~Aggregate(*(v6 + 8 * i));
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
        }
      }

      else
      {
        while (i != v5)
        {
          v6 = *(this + 67);
          v7 = *(v6 + 8 * v5);
          v5 = v7;
          if (v7 == -1)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  v9 = physx::shdfnd::SListImpl::pop(*(this + 99));
  if (v9)
  {
    v10 = v9;
    do
    {
      for (j = 0; j != -4; j -= 2)
      {
        v12 = HIDWORD(v10[j + 8]);
        if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && v10[j + 7] != 0)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }
      }

      for (k = 0; k != -4; k -= 2)
      {
        v15 = HIDWORD(v10[k + 4]);
        if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && v10[k + 3] != 0)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }
      }

      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10);
      v10 = physx::shdfnd::SListImpl::pop(*(this + 99));
    }

    while (v10);
  }

  physx::shdfnd::SListT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>>::~SListT(this + 792);
  if (*(this + 91))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v17 = *(this + 181);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0 && *(this + 89))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v18 = *(this + 175);
  if ((v18 & 0x80000000) == 0 && (v18 & 0x7FFFFFFF) != 0 && *(this + 86))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 79))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*v2)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v19 = *(this + 141);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0 && *(this + 69))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v20 = *(this + 137);
  if ((v20 & 0x80000000) == 0 && (v20 & 0x7FFFFFFF) != 0 && *(this + 67))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  for (m = 0; m != -32; m -= 16)
  {
    v22 = *(this + m + 500);
    if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && *(this + m + 488) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  for (n = 0; n != -32; n -= 16)
  {
    v25 = *(this + n + 468);
    if ((v25 & 0x80000000) == 0 && (v25 & 0x7FFFFFFF) != 0 && *(this + n + 456) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v27 = *(this + 109);
  if ((v27 & 0x80000000) == 0 && (v27 & 0x7FFFFFFF) != 0 && *(this + 53) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v29 = *(this + 105);
  if ((v29 & 0x80000000) == 0 && (v29 & 0x7FFFFFFF) != 0 && *(this + 51))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v30 = *(this + 97);
  if ((v30 & 0x80000000) == 0 && (v30 & 0x7FFFFFFF) != 0 && *(this + 47))
  {
    (*(**(this + 46) + 24))(*(this + 46));
  }

  v31 = *(this + 91);
  if ((v31 & 0x80000000) == 0 && (v31 & 0x7FFFFFFF) != 0 && *(this + 44))
  {
    (*(**(this + 43) + 24))(*(this + 43));
  }

  v32 = *(this + 85);
  if ((v32 & 0x80000000) == 0 && (v32 & 0x7FFFFFFF) != 0 && *(this + 41))
  {
    (*(**(this + 40) + 24))(*(this + 40));
  }

  v33 = *(this + 75);
  if ((v33 & 0x80000000) == 0 && (v33 & 0x7FFFFFFF) != 0 && *(this + 36))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v34 = *(this + 69);
  if ((v34 & 0x80000000) == 0 && (v34 & 0x7FFFFFFF) != 0 && *(this + 33))
  {
    (*(**(this + 32) + 24))(*(this + 32));
  }

  if (*(this + 28) && (*(this + 58) & 0x80000000) == 0)
  {
    (*(**(this + 30) + 24))(*(this + 30));
  }

  *(this + 28) = 0;
  if (*(this + 26) && (*(this + 54) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 26) = 0;
  if (*(this + 24) && (*(this + 50) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 24) = 0;
  *(this + 15) = &unk_1F5D1C1B0;
  *(this + 17) = 0;
  *(this + 8) = &unk_1F5D1C1B0;
  *(this + 10) = 0;
  *(this + 1) = &unk_1F5D1C1B0;
  *(this + 3) = 0;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this);
  v35 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v35();
}

uint64_t physx::Bp::releasePairs(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *v2;
    if (v3 == -1)
    {
      if (*(result + 36) == 1)
      {
        return result;
      }

      v4 = 1;
      while (1)
      {
        v3 = v2[v4];
        if (v3 != -1)
        {
          break;
        }

        if (++v4 - (*(result + 36) - 1) == 1)
        {
          return result;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

    do
    {
LABEL_9:
      result = *(*(v1 + 8) + 16 * v3 + 8);
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v3 = *(*(v1 + 16) + 4 * v3);
    }

    while (v3 != -1);
    while (*(v1 + 36) - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      v3 = *(*(v1 + 24) + 4 * v4);
      if (v3 != -1)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void physx::Bp::AABBManager::reserveSpaceForBounds(physx::Bp::AABBManager *this, unsigned int a2)
{
  v4 = a2 + 1;
  if (v4 >= *(this + 74))
  {
    physx::Bp::AABBManager::reserveShapeSpace(this, v4);
  }

  *(*(this + 33) + 4 * a2) = -1;
  v5 = *(this + 36);
  *(*(*(this + 35) + 8) + 4 * a2) = 0;
  v6 = v5 + 16 * a2;
  *(v6 + 8) = -1;
  *v6 = 0;
}

uint64_t physx::Bp::AABBManager::addBounds(physx::Bp::AABBManager *this, unsigned int a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, float a7)
{
  v14 = a2 + 1;
  if (a2 + 1 >= *(this + 74))
  {
    physx::Bp::AABBManager::reserveShapeSpace(this, a2 + 1);
  }

  v15 = *(this + 130);
  if (v14 > v15)
  {
    v15 = v14;
  }

  *(*(this + 33) + 4 * a2) = a3;
  *(this + 130) = v15;
  v16 = *(this + 36);
  *(*(*(this + 35) + 8) + 4 * a2) = a7;
  v17 = v16 + 16 * a2;
  *v17 = a4 & 0xFFFFFFFFFFFFFFFCLL | a6;
  if (a5 == -1)
  {
    *(v17 + 8) = -1;
    v25 = *(this + 26);
    v26 = a2 >> 5;
    v27 = *(v25 + 4 * (a2 >> 5));
    v28 = 1 << a2;
    if ((v27 & (1 << a2)) != 0)
    {
      v29 = v27 & ~v28;
    }

    else
    {
      v25 = *(this + 24);
      v29 = *(v25 + 4 * v26) | v28;
    }

    *(v25 + 4 * v26) = v29;
    *(this + 525) = 1;
  }

  else
  {
    *(v17 + 8) = 2 * a5;
    *(this + 525) = 1;
    v18 = *(*(this + 67) + 8 * a5);
    if (!v18[4])
    {
      v19 = *v18;
      v20 = *(this + 26);
      v21 = v19 >> 5;
      v22 = *(v20 + 4 * (v19 >> 5));
      v23 = 1 << v19;
      if ((v22 & (1 << v19)) != 0)
      {
        v24 = v22 & ~v23;
      }

      else
      {
        v20 = *(this + 24);
        v24 = *(v20 + 4 * v21) | v23;
      }

      *(v20 + 4 * v21) = v24;
    }

    v33 = a2;
    v30 = v18[4];
    if ((v18[5] & 0x7FFFFFFF) <= v30)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack((v18 + 2), &v33);
    }

    else
    {
      *(*(v18 + 1) + 4 * v30) = a2;
      ++v18[4];
    }

    if (v18[8] == -1)
    {
      v31 = *(this + 140);
      v18[8] = v31;
      v34 = v18;
      if ((*(this + 141) & 0x7FFFFFFFu) <= v31)
      {
        physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(this + 552, &v34);
      }

      else
      {
        *(*(this + 69) + 8 * v31) = v18;
        *(this + 140) = v31 + 1;
      }
    }
  }

  return 1;
}

uint64_t physx::Bp::AABBManager::removeBounds(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 288);
  v4 = a2;
  v5 = *(v3 + 16 * a2 + 8);
  if (v5 == -1)
  {
    v9 = *(this + 192);
    v10 = a2 >> 5;
    v11 = *(v9 + 4 * (a2 >> 5));
    v12 = 1 << a2;
    if ((v11 & (1 << a2)) != 0)
    {
      v13 = v11 & ~v12;
    }

    else
    {
      v9 = *(this + 208);
      v13 = *(v9 + 4 * v10) | v12;
    }

    *(v9 + 4 * v10) = v13;
    *(this + 525) = 1;
  }

  else
  {
    v6 = *(*(this + 536) + ((4 * v5) & 0x3FFFFFFF8));
    v7 = v6[4];
    if (v7)
    {
      v8 = 0;
      while (*(*(v6 + 1) + 4 * v8) != a2)
      {
        if (v7 == ++v8)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 != v7)
    {
      v14 = *(v6 + 1);
      v15 = v7 - 1;
      v6[4] = v15;
      *(v14 + 4 * v8) = *(v14 + 4 * v15);
      LODWORD(v7) = v6[4];
    }

    if (v7)
    {
LABEL_13:
      if (v6[8] == -1)
      {
        v16 = *(this + 560);
        v6[8] = v16;
        v27 = v6;
        if ((*(this + 564) & 0x7FFFFFFFu) <= v16)
        {
          this = physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(this + 552, &v27);
        }

        else
        {
          *(*(this + 552) + 8 * v16) = v6;
          *(this + 560) = v16 + 1;
        }
      }
    }

    else
    {
      v17 = *v6;
      v18 = *(this + 192);
      v19 = v17 >> 5;
      v20 = *(v18 + 4 * (v17 >> 5));
      v21 = 1 << v17;
      if ((v20 & v21) != 0)
      {
        v22 = v20 & ~v21;
      }

      else
      {
        v18 = *(this + 208);
        v22 = *(v18 + 4 * v19) | v21;
      }

      *(v18 + 4 * v19) = v22;
      v23 = v6[8];
      if (v23 != -1)
      {
        v24 = *(this + 552);
        v25 = *(this + 560) - 1;
        *(this + 560) = v25;
        *(v24 + 8 * v23) = *(v24 + 8 * v25);
        if (v23 < v25)
        {
          *(*(*(this + 552) + 8 * v23) + 32) = v23;
        }

        v6[8] = -1;
      }
    }

    *(v2 + 525) = 1;
    v3 = *(v2 + 288);
  }

  *(*(v2 + 264) + 4 * v4) = -1;
  *(*(*(v2 + 280) + 8) + 4 * v4) = 0;
  v26 = v3 + 16 * v4;
  *(v26 + 8) = -1;
  *v26 = 0;
  return this;
}

uint64_t physx::Bp::AABBManager::createAggregate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate>::getName() [T = physx::Bp::Aggregate]";
  }

  else
  {
    v10 = "<allocation names disabled>";
  }

  v11 = (*(*(v9 + 24) + 16))(v9 + 24, 88, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 1319);
  v12 = 0;
  *v11 = a2;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 84) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 32) = -1;
  if (a5)
  {
    v13 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v14 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::PersistentSelfCollisionPairs>::getName() [T = physx::Bp::PersistentSelfCollisionPairs]";
    }

    else
    {
      v14 = "<allocation names disabled>";
    }

    v12 = (*(*(v13 + 24) + 16))(v13 + 24, 80, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 883);
    *(v12 + 8) = -1;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 32) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *v12 = &unk_1F5D1C988;
    *(v12 + 72) = v11;
  }

  *(v11 + 24) = v12;
  v27 = v11;
  v15 = *(a1 + 532);
  if (v15 == -1)
  {
    v15 = *(a1 + 544);
    if ((*(a1 + 548) & 0x7FFFFFFFu) <= v15)
    {
      physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(a1 + 536, &v27);
    }

    else
    {
      *(*(a1 + 536) + 8 * v15) = v11;
      *(a1 + 544) = v15 + 1;
    }
  }

  else
  {
    v16 = *(a1 + 536);
    *(a1 + 532) = *(v16 + 8 * v15);
    *(v16 + 8 * v15) = v11;
  }

  v17 = *(a1 + 720);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = *(*(a1 + 712) + 4 * v18);
    *(a1 + 720) = v18;
  }

  else
  {
    v20 = *(a1 + 704);
    *(a1 + 704) = v20 - 1;
    v19 = (4 * v20) | 3;
  }

  if (a2 + 1 >= *(a1 + 296))
  {
    physx::Bp::AABBManager::reserveShapeSpace(a1, a2 + 1);
  }

  v21 = *(a1 + 520);
  if (a2 + 1 > v21)
  {
    v21 = a2 + 1;
  }

  *(a1 + 520) = v21;
  *(*(a1 + 264) + 4 * a2) = v19;
  v22 = *(a1 + 288);
  *(*(*(a1 + 280) + 8) + 4 * a2) = 0;
  v23 = v22 + 16 * a2;
  *v23 = a4;
  *(v23 + 8) = (2 * v15) | 1;
  v24 = *(a1 + 400);
  v25 = *(v24 + 8) + 24 * a2;
  *v25 = xmmword_1E3113BA0;
  *(v25 + 16) = vdup_n_s32(0xFE7FFFFF);
  *(v24 + 24) = 1;
  ++*(a1 + 528);
  return v15;
}

uint64_t physx::Bp::AABBManager::destroyAggregate(uint64_t a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  v8 = *(*(a1 + 536) + 8 * a4);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v10 != -1)
  {
    v11 = *(a1 + 552);
    v12 = *(a1 + 560) - 1;
    *(a1 + 560) = v12;
    *(v11 + 8 * v10) = *(v11 + 8 * v12);
    if (v10 < v12)
    {
      *(*(*(a1 + 552) + 8 * v10) + 32) = v10;
    }

    *(v8 + 8) = -1;
  }

  v13 = *(a1 + 192);
  v14 = v9 >> 5;
  v15 = *(v13 + 4 * (v9 >> 5));
  v16 = 1 << v9;
  if ((v15 & (1 << v9)) != 0)
  {
    v17 = v15 & ~v16;
  }

  else
  {
    if (!*(v8 + 4))
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 208);
    v17 = *(v13 + 4 * v14) | v16;
  }

  *(v13 + 4 * v14) = v17;
LABEL_10:
  physx::Bp::Aggregate::~Aggregate(v8);
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
  *(*(a1 + 536) + 8 * a4) = *(a1 + 532);
  *(a1 + 532) = a4;
  *a2 = v9;
  v18 = *(a1 + 264);
  v19 = *(v18 + 4 * v9);
  *a3 = v19;
  v24 = v19;
  v20 = *(a1 + 720);
  if ((*(a1 + 724) & 0x7FFFFFFFu) <= v20)
  {
    physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::ReflectionAllocator<physx::Bp::FilterGroup::Enum>>::growAndPushBack(a1 + 712, &v24);
    v18 = *(a1 + 264);
  }

  else
  {
    *(*(a1 + 712) + 4 * v20) = v19;
    *(a1 + 720) = v20 + 1;
  }

  *(v18 + 4 * v9) = -1;
  v21 = *(a1 + 288);
  *(*(*(a1 + 280) + 8) + 4 * v9) = 0;
  v22 = v21 + 16 * v9;
  *(v22 + 8) = -1;
  *v22 = 0;
  *(a1 + 525) = 1;
  --*(a1 + 528);
  return 1;
}

uint64_t physx::Bp::AggregateBoundsComputationTask::runInternal(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = *(this + 40);
    v3 = *(*(v2 + 280) + 8);
    v4 = (*(this + 56) + 8 * *(this + 48));
    v5 = *(v2 + 400);
    v6 = v1 - 1;
    if (v1 == 1)
    {
      v7 = (*(this + 56) + 8 * *(this + 48));
    }

    else
    {
      v7 = (*(this + 56) + 8 * *(this + 48));
      do
      {
        v9 = v7[1];
        ++v7;
        _X9 = v9;
        __asm
        {
          PRFM            #0, [X9]
          PRFM            #0, [X9,#0x40]
        }

        physx::Bp::Aggregate::computeBounds(*v4, *(v5 + 8), v3);
        v4 = v7;
        --v6;
      }

      while (v6);
    }

    v16 = *v7;
    v17 = *(v5 + 8);

    return physx::Bp::Aggregate::computeBounds(v16, v17, v3);
  }

  return this;
}

uint64_t physx::Bp::AABBManager::finalizeUpdate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 2)
  {
    v5 = *(a1 + 560);
    if (v5)
    {
      v6 = *(a1 + 552);
      v7 = *(*(a1 + 400) + 8);
      do
      {
        v8 = *v6++;
        v9 = (v7 + 24 * *v8);
        *v9 = *(v8 + 15);
        v9[1] = *(v8 + 17);
        v9[2] = *(v8 + 19);
        --v5;
      }

      while (v5);
    }
  }

  v10 = *(a1 + 336);
  v11 = *(a1 + 360);
  v12 = *(a1 + 384);
  *(a1 + 525) = 0;
  if (v10 || v12 || v11)
  {
    return (*(**(a1 + 392) + 88))(*(a1 + 392));
  }

  v13 = *(*a5 + 40);

  return v13(a5);
}

uint64_t physx::Bp::AABBManager::updateAABBsAndBP(physx::Bp::AABBManager *this, unsigned int a2, pthread_mutex_t **a3, physx::PxcScratchAllocator *a4, char a5, physx::PxBaseTask *a6, physx::PxBaseTask *a7)
{
  *(this + 525) |= a5;
  *(this + 63) = a4;
  *(this + 64) = a7;
  if (a2 >= 2)
  {
    *(this + 20) = this;
    *(this + 42) = a2;
    *(this + 22) = a4;
    *(this + 23) = a7;
    *(this + 38) = 1;
    *(this + 18) = a6;
    if (a6)
    {
      (*(*a6 + 32))(a6);
      *(this + 17) = *(*(this + 18) + 16);
    }
  }

  v72 = a4;
  v73 = a7;
  if (*(this + 84) >= ((*(this + 85) >> 1) & 0x3FFFFFFFu))
  {
    *(this + 84) = 0;
  }

  else
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::resize(this + 320);
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::recreate(this + 320, *(this + 84));
  }

  v13 = *(this + 24);
  if (v13)
  {
    v14 = *(this + 50) & 0x7FFFFFFF;
    v15 = 1;
    while (v14)
    {
      v16 = v14 - 1;
      if (*(v13 - 4 + 4 * v14--))
      {
        v15 = (v16 & 0x7FFFFFF) + 1;
        break;
      }
    }

    v18 = 0;
    do
    {
      for (i = *(v13 + 4 * v18); i; i &= i - 1)
      {
        v20 = __clz(__rbit32(i)) | (32 * v18);
        LODWORD(v75) = v20;
        v21 = *(this + 84);
        if ((*(this + 85) & 0x7FFFFFFFu) <= v21)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(this + 80, &v75);
        }

        else
        {
          *(*(this + 41) + 4 * v21) = v20;
          ++*(this + 84);
        }
      }

      ++v18;
    }

    while (v18 != v15);
  }

  if (*(this + 90) >= ((*(this + 91) >> 1) & 0x3FFFFFFFu))
  {
    *(this + 90) = 0;
  }

  else
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::resize(this + 344);
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::recreate(this + 344, *(this + 90));
  }

  if (*(this + 524))
  {
    *(this + 262) = 256;
    v74 = 0;
    if (*(this + 130))
    {
      v22 = 0;
      v23 = 8;
      while (1)
      {
        if (*(*(this + 33) + 4 * v22) != -1)
        {
          v24 = *(*(this + 36) + v23);
          if (v24 == -1)
          {
            goto LABEL_34;
          }

          if (v24)
          {
            v25 = *(*(this + 67) + ((4 * v24) & 0x3FFFFFFF8));
            if (v25[4])
            {
              break;
            }
          }
        }

LABEL_38:
        v74 = ++v22;
        v23 += 16;
        if (v22 >= *(this + 130))
        {
          goto LABEL_81;
        }
      }

      if (v25[8] == -1)
      {
        v26 = *(this + 140);
        v25[8] = v26;
        v75 = v25;
        if ((*(this + 141) & 0x7FFFFFFFu) <= v26)
        {
          physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(this + 552, &v75);
        }

        else
        {
          *(*(this + 69) + 8 * v26) = v25;
          *(this + 140) = v26 + 1;
        }
      }

      physx::Bp::Aggregate::allocateBounds(v25);
      physx::Bp::Aggregate::computeBounds(v25, *(*(this + 50) + 8), *(*(this + 35) + 8));
      v27 = (*(*(this + 50) + 8) + 24 * *v25);
      *v27 = *(v25 + 15);
      v27[1] = *(v25 + 17);
      v27[2] = *(v25 + 19);
LABEL_34:
      if (((*(*(this + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v22) & 1) == 0)
      {
        v28 = *(this + 90);
        if ((*(this + 91) & 0x7FFFFFFFu) <= v28)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(this + 86, &v74);
        }

        else
        {
          *(*(this + 44) + 4 * v28) = v22;
          ++*(this + 90);
        }
      }

      goto LABEL_38;
    }
  }

  else
  {
    v29 = *(this + 28);
    if (v29)
    {
      v30 = *(this + 58) & 0x7FFFFFFF;
      v31 = 1;
      while (v30)
      {
        v32 = v30 - 1;
        if (*(v29 - 4 + 4 * v30--))
        {
          v31 = (v32 & 0x7FFFFFF) + 1;
          break;
        }
      }

      v34 = 0;
      do
      {
        v35 = *(v29 + 4 * v34);
        if (v35)
        {
          v36 = 32 * v34;
          do
          {
            v37 = __clz(__rbit32(v35));
            v38 = v37 | v36;
            v74 = v37 | v36;
            if (((*(*(this + 24) + 4 * v34) >> v37) & 1) == 0)
            {
              v39 = *(*(this + 36) + 16 * v38 + 8);
              if (v39 == -1)
              {
                v42 = *(this + 90);
                if ((*(this + 91) & 0x7FFFFFFFu) <= v42)
                {
                  physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(this + 86, &v74);
                }

                else
                {
                  *(*(this + 44) + 4 * v42) = v38;
                  ++*(this + 90);
                }
              }

              else
              {
                v40 = *(*(this + 67) + ((4 * v39) & 0x3FFFFFFF8));
                if (v40[8] == -1)
                {
                  v41 = *(this + 140);
                  v40[8] = v41;
                  v75 = v40;
                  if ((*(this + 141) & 0x7FFFFFFFu) <= v41)
                  {
                    physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(this + 552, &v75);
                  }

                  else
                  {
                    *(*(this + 69) + 8 * v41) = v40;
                    *(this + 140) = v41 + 1;
                  }
                }
              }
            }

            v35 &= v35 - 1;
          }

          while (v35);
        }

        ++v34;
      }

      while (v34 != v31);
    }

    v43 = *(this + 140);
    if (v43)
    {
      v44 = 0;
      do
      {
        v45 = *(this + 69);
        _X25 = *(v45 + v44);
        if (8 * (v43 - 1) != v44)
        {
          __asm { PRFM            #0, [X25] }
        }

        physx::Bp::Aggregate::allocateBounds(*(v45 + v44));
        if (a2 >= 2)
        {
          v52 = *_X25;
        }

        else
        {
          physx::Bp::Aggregate::computeBounds(_X25, *(*(this + 50) + 8), *(*(this + 35) + 8));
          v52 = *_X25;
          v53 = (*(*(this + 50) + 8) + 24 * *_X25);
          *v53 = *(_X25 + 15);
          v53[1] = *(_X25 + 17);
          v53[2] = *(_X25 + 19);
        }

        if (((*(*(this + 24) + 4 * (v52 >> 5)) >> v52) & 1) == 0)
        {
          v54 = *(this + 90);
          if ((*(this + 91) & 0x7FFFFFFFu) <= v54)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(this + 86, _X25);
          }

          else
          {
            *(*(this + 44) + 4 * v54) = v52;
            ++*(this + 90);
          }
        }

        v44 += 8;
      }

      while (8 * v43 != v44);
      if (a2 >= 2)
      {
        v55 = v43;
        if (v43 > a2)
        {
          v55 = v43 / a2;
        }

        v56 = 0;
        do
        {
          v57 = physx::Cm::FlushPool::allocate(a3, 64, 0x10u);
          v58 = v57;
          v59 = *(this + 98);
          *(v57 + 16) = 0;
          *(v57 + 24) = 0;
          *(v57 + 32) = 0;
          *v57 = &unk_1F5D1C9B8;
          *(v57 + 8) = v59;
          *(v57 + 48) = 0;
          *(v57 + 56) = 0;
          *(v57 + 40) = 0;
          if (v43 >= v55)
          {
            v60 = v55;
          }

          else
          {
            v60 = v43;
          }

          v61 = *(this + 69);
          *(v57 + 40) = this;
          *(v57 + 48) = v56;
          *(v57 + 52) = v60;
          *(v57 + 56) = v61;
          v56 += v60;
          LODWORD(v43) = v43 - v60;
          *(v57 + 32) = 1;
          *(v57 + 24) = this + 120;
          (*(*(this + 15) + 32))(this + 120);
          v58[2] = *(v58[3] + 16);
          (*(*v58 + 40))(v58);
        }

        while (v43);
      }

      *(this + 525) = 1;
      physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(*(this + 44), *(this + 90), &v75, &v74, 32);
    }
  }

LABEL_81:
  if (*(this + 96) >= ((*(this + 97) >> 1) & 0x3FFFFFFFu))
  {
    *(this + 96) = 0;
  }

  else
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::resize(this + 368);
    physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::recreate(this + 368, *(this + 96));
  }

  v62 = *(this + 26);
  if (v62)
  {
    v63 = *(this + 54) & 0x7FFFFFFF;
    v64 = 1;
    while (v63)
    {
      v65 = v63 - 1;
      if (*(v62 - 4 + 4 * v63--))
      {
        v64 = (v65 & 0x7FFFFFF) + 1;
        break;
      }
    }

    v67 = 0;
    do
    {
      for (j = *(v62 + 4 * v67); j; j &= j - 1)
      {
        v69 = __clz(__rbit32(j)) | (32 * v67);
        LODWORD(v75) = v69;
        v70 = *(this + 96);
        if ((*(this + 97) & 0x7FFFFFFFu) <= v70)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(this + 92, &v75);
        }

        else
        {
          *(*(this + 47) + 4 * v70) = v69;
          ++*(this + 96);
        }
      }

      ++v67;
    }

    while (v67 != v64);
  }

  if (a2 > 1)
  {
    return (*(**(this + 17) + 144))(*(this + 17), this + 120);
  }

  else
  {
    return physx::Bp::AABBManager::finalizeUpdate(this, a2, v72, a6, v73);
  }
}

void physx::Bp::AABBManager::postBroadPhase(int32x2_t *this, physx::PxBaseTask *a2, physx::PxBaseTask *a3, pthread_mutex_t **a4)
{
  if (a2)
  {
    this[12].i32[0] = 1;
    this[11] = a2;
    (*(*a2 + 32))(a2);
    v8 = this[8];
    this[10] = *(*&this[11] + 16);
    this[5].i32[0] = 1;
    this[4] = &this[8];
    (*(*&v8 + 32))(this + 8);
    this[3] = *(*&this[4] + 16);
  }

  v79 = a2;
  ++this[71].i32[0];
  if (this[42].i32[0] || this[45].i32[0] || this[48].i32[0])
  {
    (*(**&this[49] + 96))(*&this[49], a3);
  }

  v9 = 0;
  v11 = this + 59;
  v12 = 1;
  do
  {
    v13 = v12;
    v10 = this + 55;
    v14 = &this[2 * v9 + 55];
    if (v14[1].i32[0] >= ((v14[1].i32[1] >> 1) & 0x3FFFFFFF))
    {
      v14[1].i32[0] = 0;
    }

    else
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(&v10[2 * v9]);
      physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::recreate(&v10[2 * v9], v14[1].u32[0]);
    }

    v15 = &v11[2 * v9];
    if (*(v15 + 2) >= ((*(v15 + 3) >> 1) & 0x3FFFFFFFu))
    {
      *(v15 + 2) = 0;
    }

    else
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(&v11[2 * v9]);
      physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::recreate(&v11[2 * v9], *(v15 + 2));
    }

    v12 = 0;
    v9 = 1;
  }

  while ((v13 & 1) != 0);
  v16 = (*(**&this[49] + 120))(*&this[49]);
  v17 = (*(**&this[49] + 128))(*&this[49]);
  if (v16)
  {
    v18 = v17;
    v19 = 0x3FFFFFFF;
    v20 = 0x3FFFFFFF;
    do
    {
      v22 = *v18;
      v21 = v18[1];
      if (v22 != v20 || v21 != v19)
      {
        v24 = this[36];
        v25 = *&v24 + 16 * v22;
        v26 = *(v25 + 8);
        v27 = *&v24 + 16 * v21;
        v28 = *(v27 + 8);
        if (v26 == -1 && v28 == -1)
        {
          v63 = *v25;
          if (v63 >= 4)
          {
            v64 = *v27;
            if (v64 >= 4)
            {
              v65 = v63 & 3;
              v66 = v64 & 3;
              if (v65 > v66)
              {
                v66 = v65;
              }

              v67 = &v11[2 * v66];
              *&v80 = *v18;
              *(&v80 + 1) = v21;
              v68 = *(v67 + 8);
              if ((*(v67 + 12) & 0x7FFFFFFFu) <= v68)
              {
                physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v67, &v80);
              }

              else
              {
                v69 = *v67 + 24 * v68;
                *v69 = v80;
                *(v69 + 16) = v81;
                ++*(v67 + 8);
              }
            }
          }
        }

        else
        {
          if (v21 <= v22)
          {
            v30 = *v18;
          }

          else
          {
            v30 = v18[1];
          }

          if (v21 >= v22)
          {
            v31 = *v18;
          }

          else
          {
            v31 = v18[1];
          }

          v32 = v28 == -1 || v26 == -1;
          v33 = 79;
          if (v32)
          {
            v33 = 72;
          }

          v34 = &this[v33];
          v35 = (v31 | (v30 << 16)) + ~((v31 | (v30 << 16)) << 15);
          v36 = (9 * (v35 ^ (v35 >> 10))) ^ ((9 * (v35 ^ (v35 >> 10))) >> 6);
          v37 = *(*&this[v33 + 3] + 4 * ((this[v33 + 4].i32[1] - 1) & ((v36 + ~(v36 << 11)) ^ ((v36 + ~(v36 << 11)) >> 16))));
          v38 = v34[1];
          v39 = (*&v38 + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          if (v31 != v41 || v30 != v40)
          {
            v43 = v34[2];
            do
            {
              v37 = *(*&v43 + 4 * v37);
              v44 = (*&v38 + 16 * v37);
              v46 = *v44;
              v45 = v44[1];
            }

            while (v31 != v46 || v30 != v45);
          }

          v48 = *(*&v38 + 16 * v37 + 8);
          v49 = *(v48 + 24);
          if (v49)
          {
            v50 = 0;
            v51 = 8 * v49;
            do
            {
              v52 = *(v48 + 48);
              v53 = *(v52 + v50) & 0x7FFFFFFF;
              v54 = this[36];
              v55 = *(*&v54 + 16 * v53);
              if (v55 >= 4)
              {
                v56 = *(v52 + v50 + 4) & 0x7FFFFFFF;
                v57 = *(*&v54 + 16 * v56);
                if (v57 >= 4)
                {
                  v58 = v55 & 3;
                  v59 = v57 & 3;
                  if (v58 <= v59)
                  {
                    v58 = v59;
                  }

                  v60 = &v11[2 * v58];
                  *&v80 = v53;
                  *(&v80 + 1) = v56;
                  v61 = *(v60 + 8);
                  if ((*(v60 + 12) & 0x7FFFFFFFu) <= v61)
                  {
                    physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v60, &v80);
                  }

                  else
                  {
                    v62 = *v60 + 24 * v61;
                    *v62 = v80;
                    *(v62 + 16) = v81;
                    ++*(v60 + 8);
                  }
                }
              }

              v50 += 8;
            }

            while (v51 != v50);
          }

          *(v48 + 64) = 1;
        }

        v20 = v22;
        v19 = v21;
      }

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  if (v79)
  {
    v70 = this[70].u32[0];
    if (v70)
    {
      v71 = 0;
      v72 = this[70].u32[0];
      do
      {
        v73 = v72 - 16;
        if (v72 >= 0x10)
        {
          v74 = 16;
        }

        else
        {
          v74 = v72;
        }

        v75 = physx::Cm::FlushPool::allocate(a4, 56, 0x10u);
        v76 = *&this[69] + 8 * v71;
        *(v75 + 8) = this[98];
        *(v75 + 16) = 0;
        *(v75 + 32) = 0;
        *v75 = &unk_1F5D1CC08;
        *(v75 + 40) = v76;
        *(v75 + 48) = v74;
        *(v75 + 32) = 1;
        *(v75 + 24) = this + 1;
        (*(*&this[1] + 32))(this + 1);
        *(v75 + 16) = *(*(v75 + 24) + 16);
        (*(*v75 + 40))(v75);
        v71 += 16;
        v72 = v73;
      }

      while (v71 < v70);
    }

    this[6] = a4;
    (*(**&this[10] + 144))(*&this[10], this + 8);
    v77 = *(**&this[3] + 144);

    v77();
  }

  else
  {
    physx::Bp::AABBManager::postBpStage2(this, 0, a4);

    physx::Bp::AABBManager::postBpStage3(this, v78);
  }
}

int32x2_t *physx::Bp::AABBManager::postBpStage2(int32x2_t *this, physx::PxBaseTask *a2, pthread_mutex_t **a3)
{
  v6 = this[70].u32[0];
  if (v6)
  {
    v7 = 0;
    v8 = this[70].u32[0];
    do
    {
      v9 = v8 - 16;
      if (v8 >= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v8;
      }

      v11 = physx::Cm::FlushPool::allocate(a3, 128, 0x10u);
      v12 = v11;
      v13 = this[98];
      v14 = *&this[69] + 8 * v7;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0u;
      *(v11 + 72) = 0u;
      *(v11 + 88) = 0u;
      *v11 = &unk_1F5D1CC78;
      *(v11 + 8) = v13;
      *(v11 + 104) = v14;
      *(v11 + 112) = v10;
      *(v11 + 120) = this;
      if (a2)
      {
        *(v11 + 32) = 1;
        *(v11 + 24) = a2;
        (*(*a2 + 32))(a2);
        v12[2] = *(v12[3] + 16);
        (*(*v12 + 40))(v12);
      }

      else
      {
        physx::Bp::ProcessSelfCollisionPairsParallel::runInternal(v11);
      }

      v17 = v12;
      v15 = this[87].u32[0];
      if ((this[87].i32[1] & 0x7FFFFFFFu) <= v15)
      {
        physx::shdfnd::Array<physx::Bp::ProcessAggPairsBase *,physx::shdfnd::ReflectionAllocator<physx::Bp::ProcessAggPairsBase *>>::growAndPushBack(&this[86], &v17);
      }

      else
      {
        *(*&this[86] + 8 * v15) = v12;
        this[87].i32[0] = v15 + 1;
      }

      v7 += 16;
      v8 = v9;
    }

    while (v7 < v6);
  }

  if (a2)
  {
    physx::Bp::processAggregatePairsParallel(&this[79], this, a3, a2, "AggAggPairs", &this[86]);

    return physx::Bp::processAggregatePairsParallel(&this[72], this, a3, a2, "AggActorPairs", &this[86]);
  }

  else
  {
    physx::Bp::processAggregatePairs(this + 79, this);

    return physx::Bp::processAggregatePairs(this + 72, this);
  }
}

void physx::Bp::AABBManager::postBpStage3(physx::Bp::AABBManager *this, physx::PxBaseTask *a2)
{
  v164 = *MEMORY[0x1E69E9840];
  v3 = (this + 552);
  v4 = *(this + 140);
  if (v4)
  {
    v5 = *v3;
    v6 = *(this + 140);
    do
    {
      v7 = *v5++;
      *(v7 + 32) = -1;
      --v6;
    }

    while (v6);
  }

  if (v4 >= ((*(this + 141) >> 1) & 0x3FFFFFFFu))
  {
    *(this + 140) = 0;
  }

  else
  {
    physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 552);
    physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::recreate(v3, *(this + 140));
  }

  if (*(this + 174))
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v155 = v8;
      v10 = *(*(this + 86) + 8 * v8);
      v11 = v10 + 40;
      v12 = v10 + 72;
      v13 = 1;
      do
      {
        v14 = v13;
        v15 = v11 + 16 * v9;
        if (*(v15 + 12))
        {
          v16 = 0;
          v17 = *(v15 + 8);
          v18 = this + 16 * v9 + 440;
          do
          {
            v19 = **v15 + 24 * (v17 + v16);
            v20 = *(v18 + 2);
            if ((*(v18 + 3) & 0x7FFFFFFFu) <= v20)
            {
              physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v18, v19);
            }

            else
            {
              v21 = *v18 + 24 * v20;
              v22 = *v19;
              *(v21 + 16) = *(v19 + 16);
              *v21 = v22;
              ++*(v18 + 2);
            }

            ++v16;
          }

          while (v16 < *(v15 + 12));
        }

        v23 = v12 + 16 * v9;
        if (*(v23 + 12))
        {
          v24 = 0;
          v25 = *(v23 + 8);
          v26 = this + 16 * v9 + 472;
          do
          {
            v27 = **v23 + 24 * (v25 + v24);
            v28 = *(v26 + 2);
            if ((*(v26 + 3) & 0x7FFFFFFFu) <= v28)
            {
              physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v26, v27);
            }

            else
            {
              v29 = *v26 + 24 * v28;
              v30 = *v27;
              *(v29 + 16) = *(v27 + 16);
              *v29 = v30;
              ++*(v26 + 2);
            }

            ++v24;
          }

          while (v24 < *(v23 + 12));
        }

        v13 = 0;
        v9 = 1;
      }

      while ((v14 & 1) != 0);
      v8 = v155 + 1;
    }

    while (v155 + 1 < *(this + 174));
  }

  *(this + 174) = 0;
  v161 = 1;
  v162 = &v159;
  v163 = 0x1000000000;
  v31 = physx::shdfnd::SListImpl::pop(*(this + 99));
  v158 = v31;
  if (v31)
  {
    v32 = v31;
    do
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v32 + 1));
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v32 + 3));
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v32 + 5));
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v32 + 7));
      v33 = v163;
      if ((HIDWORD(v163) & 0x7FFFFFFFu) <= v163)
      {
        physx::shdfnd::Array<physx::Bp::BpCacheData *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::Bp::BpCacheData *>>>::growAndPushBack(&v159, &v158);
      }

      else
      {
        *(v162 + v163) = v158;
        LODWORD(v163) = v33 + 1;
      }

      v32 = physx::shdfnd::SListImpl::pop(*(this + 99));
      v158 = v32;
    }

    while (v32);
  }

  if (v163)
  {
    v34 = 0;
    do
    {
      v35 = *(v162 + v34);
      v36 = *(this + 99);
      pthread_mutex_lock((v36 + 8));
      *v35 = *v36;
      *v36 = v35;
      pthread_mutex_unlock((v36 + 8));
      ++v34;
    }

    while (v34 < v163);
  }

  if ((v163 & 0x8000000000000000) == 0)
  {
    _ZF = (v163 & 0x7FFFFFFF00000000) == 0 || v162 == &v159;
    if (!_ZF && v162 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v39 = (*(**(this + 49) + 104))(*(this + 49));
  v40 = (*(**(this + 49) + 112))(*(this + 49));
  if (v39)
  {
    v41 = v40;
    v42 = 0x3FFFFFFF;
    v43 = 0x3FFFFFFF;
    do
    {
      v45 = *v41;
      v44 = v41[1];
      if (v45 == v43 && v44 == v42)
      {
        goto LABEL_104;
      }

      v47 = *(this + 36);
      v48 = (v47 + 16 * v45);
      v49 = v48[2];
      v50 = (v47 + 16 * v44);
      v51 = v50[2];
      if (v49 == -1 && v51 == -1)
      {
        v66 = *v48 & 3;
        if (v66 <= (*v50 & 3u))
        {
          v66 = *v50 & 3;
        }

        v67 = this + 16 * v66 + 440;
        *&v159 = *v41;
        *(&v159 + 1) = v44;
        v68 = *(v67 + 2);
        if ((*(v67 + 3) & 0x7FFFFFFFu) <= v68)
        {
          physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(v67, &v159);
        }

        else
        {
          v69 = *v67 + 24 * v68;
          *v69 = v159;
          *(v69 + 16) = v160;
          ++*(v67 + 2);
        }

        goto LABEL_103;
      }

      if (v44 <= v45)
      {
        v53 = v45;
      }

      else
      {
        v53 = v44;
      }

      if (v44 >= v45)
      {
        v54 = v45;
      }

      else
      {
        v54 = v44;
      }

      v55 = *(this + 67);
      v56 = *(v47 + 16 * v54 + 8);
      if (v49 == -1 || v51 == -1)
      {
        v58 = (v56 & 1) == 0 || v56 == -1;
        if (v58)
        {
          v59 = v53;
        }

        else
        {
          v59 = v54;
        }

        v60 = *(v55 + ((4 * *(v47 + 16 * v59 + 8)) & 0x3FFFFFFF8));
        if (v58)
        {
          v61 = v54;
        }

        else
        {
          v61 = v53;
        }

        v62 = physx::shdfnd::Foundation::mInstance;
        if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
        {
          v63 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::PersistentActorAggregatePair>::getName() [T = physx::Bp::PersistentActorAggregatePair]";
        }

        else
        {
          v63 = "<allocation names disabled>";
        }

        v64 = (*(*(v62 + 24) + 16))(v62 + 24, 88, v63, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 1809);
        *(v64 + 8) = -1;
        *(v64 + 16) = 0;
        *(v64 + 24) = 0;
        *(v64 + 40) = 0;
        *(v64 + 48) = 0;
        *(v64 + 32) = 0;
        *(v64 + 56) = 0;
        *(v64 + 64) = 0;
        *v64 = &unk_1F5D1C928;
        *(v64 + 68) = *v60;
        *(v64 + 72) = v61;
        *(v64 + 80) = v60;
        v65 = (this + 576);
      }

      else
      {
        v70 = *(v55 + 8 * (v56 >> 1));
        v71 = *(v55 + ((4 * *(v47 + 16 * v53 + 8)) & 0x3FFFFFFF8));
        v72 = physx::shdfnd::Foundation::mInstance;
        if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
        {
          v74 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::PersistentAggregateAggregatePair>::getName() [T = physx::Bp::PersistentAggregateAggregatePair]";
        }

        else
        {
          v74 = "<allocation names disabled>";
        }

        v64 = (*(*(v72 + 24) + 16))(v72 + 24, 96, v74, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 1822);
        *(v64 + 8) = -1;
        *(v64 + 16) = 0;
        *(v64 + 24) = 0;
        *(v64 + 40) = 0;
        *(v64 + 48) = 0;
        *(v64 + 32) = 0;
        *(v64 + 56) = 0;
        *(v64 + 64) = 0;
        *v64 = &unk_1F5D1C958;
        *(v64 + 68) = *v70;
        *(v64 + 72) = *v71;
        *(v64 + 80) = v70;
        *(v64 + 88) = v71;
        v65 = (this + 632);
      }

      v75 = v65[4].u32[1];
      if (v75)
      {
        v76 = (v54 | (v53 << 16)) + ~((v54 | (v53 << 16)) << 15);
        v77 = (9 * (v76 ^ (v76 >> 10))) ^ ((9 * (v76 ^ (v76 >> 10))) >> 6);
        v78 = (v75 - 1) & ((v77 + ~(v77 << 11)) ^ ((v77 + ~(v77 << 11)) >> 16));
        for (i = *(*&v65[3] + 4 * v78); i != -1; i = *(*&v65[2] + 4 * i))
        {
          v80 = (*&v65[1] + 16 * i);
          v82 = *v80;
          v81 = v80[1];
          if (v82 == v54 && v81 == v53)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v78 = 0;
      }

      if (v65[6].i32[1] == v65[4].i32[0])
      {
        if (v75)
        {
          v84 = 2 * v75;
        }

        else
        {
          v84 = 16;
        }

        if (v75 < v84)
        {
          physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Bp::AggPair const,physx::Bp::PersistentPairs *>,physx::Bp::AggPair,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(v65, v84);
          v75 = v65[4].u32[1];
        }

        v85 = (v54 | (v53 << 16)) + ~((v54 | (v53 << 16)) << 15);
        v86 = (9 * (v85 ^ (v85 >> 10))) ^ ((9 * (v85 ^ (v85 >> 10))) >> 6);
        v78 = (v75 - 1) & ((v86 + ~(v86 << 11)) ^ ((v86 + ~(v86 << 11)) >> 16));
      }

      v87 = v65[5].u32[1];
      v65[5].i32[1] = v87 + 1;
      v88 = v65[3];
      *(*&v65[2] + 4 * v87) = *(*&v88 + 4 * v78);
      *(*&v88 + 4 * v78) = v87;
      v65[6] = vadd_s32(v65[6], 0x100000001);
      v89 = (*&v65[1] + 16 * v87);
      *v89 = v54 | (v53 << 32);
      v89[1] = v64;
LABEL_102:
      physx::Bp::AABBManager::updatePairs(this, v64, 0);
LABEL_103:
      v43 = v45;
      v42 = v44;
LABEL_104:
      v41 += 2;
      --v39;
    }

    while (v39);
  }

  v90 = *(this + 116) + *(this + 112);
  v91 = *(this + 191);
  if (v91 && *(this + 195))
  {
    memset(*(this + 94), 255, 4 * v91);
    v92 = *(this + 93);
    v93 = (*(this + 190) - 1);
    if (*(this + 190) == 1)
    {
      v100 = 0;
    }

    else
    {
      _X10 = v92 + 128;
      v95 = 1;
      do
      {
        __asm { PRFM            #0, [X10] }

        *(_X10 - 128) = v95++;
        _X10 += 4;
        --v93;
      }

      while (v93);
      v100 = (*(this + 190) - 1);
    }

    *(v92 + 4 * v100) = -1;
    *(this + 193) = 0;
    *(this + 195) = 0;
    v91 = *(this + 191);
  }

  if (v91 < v90)
  {
    physx::shdfnd::internal::HashBase<physx::Bp::Pair,physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::internal::HashSetBase<physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(this + 728, v90);
  }

  v101 = 0;
  v102 = 1;
  do
  {
    v157 = v102;
    v156 = this + 16 * v101 + 472;
    v103 = *(v156 + 2);
    v104 = this + 16 * v101 + 440;
    v105 = *(v104 + 2);
    if (v105)
    {
      for (j = 0; j != v105; ++j)
      {
        v107 = (*v104 + 24 * j);
        v108 = *v107;
        v109 = v107[1];
        v110 = *(this + 36);
        v111 = *v107;
        *v107 = *(v110 + 16 * v111) & 0xFFFFFFFFFFFFFFFCLL;
        v107[1] = *(v110 + 16 * v109) & 0xFFFFFFFFFFFFFFFCLL;
        if (v103)
        {
          v112 = *(this + 191);
          v113 = v108 | (v109 << 16);
          if (v112)
          {
            v114 = 9 * ((v113 + ~(v113 << 15)) ^ ((v113 + ~(v113 << 15)) >> 10));
            v115 = (v114 ^ (v114 >> 6)) + ~((v114 ^ (v114 >> 6)) << 11);
            v116 = (v112 - 1) & (v115 ^ HIWORD(v115));
            for (k = *(*(this + 94) + 4 * v116); k != -1; k = *(*(this + 93) + 4 * k))
            {
              v118 = (*(this + 92) + 8 * k);
              v120 = *v118;
              v119 = v118[1];
              if (v120 == v108 && v119 == v109)
              {
                goto LABEL_137;
              }
            }
          }

          else
          {
            v116 = 0;
          }

          v122 = *(this + 193);
          if (v122 == -1)
          {
            if (v112)
            {
              v123 = 2 * v112;
            }

            else
            {
              v123 = 16;
            }

            if (v112 >= v123)
            {
              v122 = 0xFFFFFFFFLL;
            }

            else
            {
              physx::shdfnd::internal::HashBase<physx::Bp::Pair,physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::internal::HashSetBase<physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(this + 728, v123);
              v112 = *(this + 191);
              v122 = *(this + 193);
            }

            v124 = 9 * ((v113 + ~(v113 << 15)) ^ ((v113 + ~(v113 << 15)) >> 10));
            v116 = (v112 - 1) & (((v124 ^ (v124 >> 6)) + ~((v124 ^ (v124 >> 6)) << 11)) ^ (((v124 ^ (v124 >> 6)) + ~((v124 ^ (v124 >> 6)) << 11)) >> 16));
          }

          v125 = *(this + 93);
          *(this + 193) = *(v125 + 4 * v122);
          v126 = *(this + 94);
          *(v125 + 4 * v122) = *(v126 + 4 * v116);
          *(v126 + 4 * v116) = v122;
          *(this + 97) = vadd_s32(*(this + 776), 0x100000001);
          *(*(this + 92) + 8 * v122) = v111 | (v109 << 32);
        }

LABEL_137:
        ;
      }
    }

    if (v103)
    {
      v127 = 0;
      v128 = 0;
      v129 = v156;
      v130 = *v156;
      v131 = *(this + 195);
      do
      {
        v132 = (v130 + 24 * v127);
        v134 = *v132;
        v133 = v132[1];
        if (!v131 || (v135 = (v134 | (v133 << 16)) + ~((v134 | (v133 << 16)) << 15), v136 = (9 * (v135 ^ (v135 >> 10))) ^ ((9 * (v135 ^ (v135 >> 10))) >> 6), v137 = *(*(this + 94) + 4 * ((*(this + 191) - 1) & ((v136 + ~(v136 << 11)) ^ ((v136 + ~(v136 << 11)) >> 16)))), v137 == -1))
        {
LABEL_147:
          v142 = *(this + 36);
          v143 = (v130 + 24 * v128);
          *v143 = *(v142 + 16 * v134) & 0xFFFFFFFFFFFFFFFCLL;
          v143[1] = *(v142 + 16 * v133) & 0xFFFFFFFFFFFFFFFCLL;
          ++v128;
        }

        else
        {
          while (1)
          {
            v138 = (*(this + 92) + 8 * v137);
            v140 = *v138;
            v139 = v138[1];
            if (v140 == v134 && v139 == v133)
            {
              break;
            }

            v137 = *(*(this + 93) + 4 * v137);
            if (v137 == -1)
            {
              goto LABEL_147;
            }
          }
        }

        ++v127;
      }

      while (v127 != v103);
    }

    else
    {
      v128 = 0;
      v129 = v156;
    }

    v102 = 0;
    *(v129 + 2) = v128;
    v101 = 1;
  }

  while ((v157 & 1) != 0);
  v144 = (*(**(this + 49) + 56))(*(this + 49));
  v145 = (*(**(this + 49) + 64))(*(this + 49));
  if (v144)
  {
    v146 = v145;
    do
    {
      v148 = *v146++;
      v147 = v148;
      if (((*(*(this + 26) + ((v148 >> 3) & 0x1FFFFFFC)) >> v148) & 1) == 0)
      {
        v149 = *(this + 36) + 16 * v147;
        if (*(v149 + 8) == -1)
        {
          v152 = *v149 & 0xFFFFFFFFFFFFFFFCLL;
          *&v159 = v152;
          v153 = *(this + 104);
          if ((*(this + 105) & 0x7FFFFFFFu) <= v153)
          {
            v154 = this + 408;
            goto LABEL_162;
          }

          *(*(this + 51) + 8 * v153) = v152;
          *(this + 104) = v153 + 1;
        }

        else
        {
          v150 = *v149 & 0xFFFFFFFFFFFFFFFCLL;
          *&v159 = v150;
          v151 = *(this + 108);
          if ((*(this + 109) & 0x7FFFFFFFu) <= v151)
          {
            v154 = this + 424;
LABEL_162:
            physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<void *>>::growAndPushBack(v154, &v159);
            goto LABEL_163;
          }

          *(*(this + 53) + 8 * v151) = v150;
          *(this + 108) = v151 + 1;
        }
      }

LABEL_163:
      --v144;
    }

    while (v144);
  }

  bzero(*(this + 24), (4 * *(this + 50)));
  bzero(*(this + 26), (4 * *(this + 54)));
}

uint64_t physx::Bp::processAggregatePairsParallel(uint64_t a1, pthread_mutex_t **a2, pthread_mutex_t **this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*a2);
  }

  result = physx::Cm::FlushPool::allocate(this, 400, 0x10u);
  v13 = result;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *result = &unk_1F5D1CD00;
  *(result + 8) = 0;
  *(result + 360) = 0;
  *(result + 368) = a2;
  *(result + 376) = a1;
  *(result + 384) = a2;
  *(result + 392) = a5;
  v14 = *(a6 + 8);
  if (*(a1 + 32))
  {
    v15 = *(a1 + 24);
    v16 = *v15;
    if (v16 == -1)
    {
      if (*(a1 + 36) == 1)
      {
        goto LABEL_10;
      }

      v17 = 1;
      while (1)
      {
        v16 = v15[v17];
        if (v16 != -1)
        {
          break;
        }

        if (++v17 - (*(a1 + 36) - 1) == 1)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      LODWORD(v17) = 0;
    }

    v19 = 0;
    do
    {
LABEL_21:
      *(v13 + 8 * v19 + 232) = *(*(a1 + 8) + 16 * v16);
      v20 = *(*(a1 + 8) + 16 * v16 + 8);
      v21 = *(v13 + 360);
      v22 = v13 + 8 * v21;
      v19 = v21 + 1;
      *(v13 + 360) = v19;
      *(v22 + 104) = v20;
      if (v19 == 16)
      {
        v25 = v13;
        v23 = *(a6 + 8);
        if ((*(a6 + 12) & 0x7FFFFFFFu) <= v23)
        {
          physx::shdfnd::Array<physx::Bp::ProcessAggPairsBase *,physx::shdfnd::ReflectionAllocator<physx::Bp::ProcessAggPairsBase *>>::growAndPushBack(a6, &v25);
        }

        else
        {
          *(*a6 + 8 * v23) = v13;
          *(a6 + 8) = v23 + 1;
        }

        *(v13 + 32) = 1;
        *(v13 + 24) = a4;
        (*(*a4 + 32))(a4);
        *(v13 + 16) = *(*(v13 + 24) + 16);
        result = physx::Cm::FlushPool::allocate(this, 400, 0x10u);
        v13 = result;
        v19 = 0;
        *(result + 16) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0u;
        *(result + 56) = 0u;
        *(result + 72) = 0u;
        *(result + 88) = 0u;
        *result = &unk_1F5D1CD00;
        *(result + 8) = 0;
        *(result + 360) = 0;
        *(result + 368) = a2;
        *(result + 376) = a1;
        *(result + 384) = a2;
        *(result + 392) = a5;
      }

      v16 = *(*(a1 + 16) + 4 * v16);
    }

    while (v16 != -1);
    while (*(a1 + 36) - 1 != v17)
    {
      LODWORD(v17) = v17 + 1;
      v16 = *(*(a1 + 24) + 4 * v17);
      if (v16 != -1)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_10:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_unlock(*a2);
  }

  LODWORD(v18) = *(a6 + 8);
  if (v14 < v18)
  {
    do
    {
      result = (*(**(*a6 + 8 * v14) + 40))(*(*a6 + 8 * v14));
      ++v14;
      v18 = *(a6 + 8);
    }

    while (v14 < v18);
  }

  if (*(v13 + 360))
  {
    v25 = v13;
    if ((*(a6 + 12) & 0x7FFFFFFFu) <= v18)
    {
      physx::shdfnd::Array<physx::Bp::ProcessAggPairsBase *,physx::shdfnd::ReflectionAllocator<physx::Bp::ProcessAggPairsBase *>>::growAndPushBack(a6, &v25);
    }

    else
    {
      *(*a6 + 8 * v18) = v13;
      *(a6 + 8) = v18 + 1;
    }

    *(v13 + 32) = 1;
    *(v13 + 24) = a4;
    (*(*a4 + 32))(a4);
    *(v13 + 16) = *(*(v13 + 24) + 16);
    v24 = *(*v13 + 40);

    return v24(v13);
  }

  return result;
}

int32x2_t *physx::Bp::processAggregatePairs(int32x2_t *result, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  if (!result[4].i32[0])
  {
    goto LABEL_7;
  }

  v3 = result;
  v4 = result[3];
  v5 = *v4;
  if (v5 == -1)
  {
    if (result[4].i32[1] != 1)
    {
      v6 = 1;
      do
      {
        v5 = v4[v6];
        if (v5 != -1)
        {
          goto LABEL_9;
        }
      }

      while (++v6 - (result[4].i32[1] - 1) != 1);
    }

LABEL_7:
    v7 = 0;
    goto LABEL_21;
  }

  LODWORD(v6) = 0;
  do
  {
LABEL_9:
    v8 = *(*&v3[1] + 16 * v5 + 8);
    result = (*(*v8 + 16))(v8, a2, 0);
    if (result)
    {
      v9 = (*&v3[1] + 16 * v5);
      v10 = v16;
      if ((HIDWORD(v16) & 0x7FFFFFFFu) <= v16)
      {
        physx::shdfnd::Array<physx::Bp::AggPair,physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>>::growAndPushBack(&v15, v9);
      }

      else
      {
        *(v15 + 8 * v16) = *v9;
        LODWORD(v16) = v10 + 1;
      }

      result = (*(*v8 + 8))(v8);
    }

    v5 = *(*&v3[2] + 4 * v5);
  }

  while (v5 != -1);
  while (v3[4].i32[1] - 1 != v6)
  {
    LODWORD(v6) = v6 + 1;
    v5 = *(*&v3[3] + 4 * v6);
    if (v5 != -1)
    {
      goto LABEL_9;
    }
  }

  v11 = v16;
  v7 = v15;
  if (v16)
  {
    v12 = (v15 + 4);
    do
    {
      result = physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::erase(v3, *(v12 - 1), *v12);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

LABEL_21:
  if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x7FFFFFFF00000000) != 0 && v7 != 0)
  {
    v14 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    return v14();
  }

  return result;
}

double physx::Bp::AABBManager::getBpCacheData(physx::Bp::AABBManager *this)
{
  if (!physx::shdfnd::SListImpl::pop(this))
  {
    v2 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 80, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpAABBManager.cpp", 2450);
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
  }

  return result;
}

uint64_t physx::Bp::AABBManager::visualize(uint64_t a1, _DWORD *a2)
{
  v12 = xmmword_1E30474D0;
  v13 = 0;
  v14 = 0;
  result = physx::Cm::RenderOutput::operator<<(a2, &v12);
  v5 = *(a1 + 544);
  if (v5)
  {
    v6 = 0;
    v7 = 8 * v5;
    do
    {
      v8 = *(*(a1 + 536) + v6);
      if (v8[4])
      {
        a2[1] = -16711936;
        v9 = (*(*(a1 + 400) + 8) + 24 * *v8);
        v10[0] = *v9;
        v10[1] = v9[1];
        v10[2] = v9[2];
        v11 = 1;
        result = physx::Cm::operator<<(a2, v10);
      }

      v6 += 8;
    }

    while (v7 != v6);
  }

  return result;
}

void physx::Bp::AggregateBoundsComputationTask::~AggregateBoundsComputationTask(physx::Bp::AggregateBoundsComputationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  *(this + 2) = 0;
  (*(v1 + 24))();
}

void physx::Bp::FinalizeUpdateTask::~FinalizeUpdateTask(physx::Bp::FinalizeUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  *(this + 2) = 0;
  (*(v1 + 24))();
}

void physx::Bp::PostBroadPhaseStage2Task::~PostBroadPhaseStage2Task(physx::Bp::PostBroadPhaseStage2Task *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Bp::PersistentActorAggregatePair::~PersistentActorAggregatePair(physx::Bp::PersistentActorAggregatePair *this)
{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
}

{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::Bp::PersistentActorAggregatePair::findOverlaps(uint64_t a1, physx::Bp::PairManagerData *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 80);
  if (*(v12 + 84) == 1)
  {
    physx::Bp::Aggregate::sortBounds(v12);
    v12 = *(a1 + 80);
  }

  v13 = *(v12 + 16);
  v14 = *(v12 + 8);
  v15 = *(v12 + 40);
  v16 = *(v12 + 48);
  v18 = *(a1 + 72);
  v17 = a1 + 72;
  v19 = a3 + 24 * v18;
  v20 = (a4 + 4 * v18);
  v21 = vld1q_dup_f32(v20);
  v22 = vsubq_f32(*v19, v21);
  v23 = vaddq_f32(*(v19 + 12), v21);
  v24 = vzip1_s32(*v22.i8, *v23.i8);
  v27 = vbsl_s8(vcltz_s32(v24), vmvn_s8(v24), vneg_f32(vabs_f32(v24)));
  v26 = vzip2q_s32(vzip1q_s32(v22, v23), vtrn1q_s32(v22, v23));
  v28 = -1;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  v32 = -1;
  v33 = -1;
  physx::Bp::boxPruningKernel<0>(this, a6, v13, v14, v15, v16, 1u, v17, &v27, &v26, a5);
  return physx::Bp::boxPruningKernel<1>(this, a6, 1u, v17, &v27, &v26, v13, v14, v15, v16, a5);
}

void physx::Bp::PersistentAggregateAggregatePair::~PersistentAggregateAggregatePair(physx::Bp::PersistentAggregateAggregatePair *this)
{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
}

{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::Bp::PersistentAggregateAggregatePair::findOverlaps(uint64_t a1, physx::Bp::PairManagerData *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 80);
  if (*(v9 + 84) == 1)
  {
    physx::Bp::Aggregate::sortBounds(v9);
  }

  v10 = *(a1 + 88);
  if (*(v10 + 84) == 1)
  {
    physx::Bp::Aggregate::sortBounds(v10);
    v10 = *(a1 + 88);
  }

  v11 = *(a1 + 80);
  v12 = *(v11 + 16);
  v13 = *(v10 + 16);
  v14 = *(v11 + 8);
  v15 = *(v10 + 8);
  v16 = *(v11 + 40);
  v17 = *(v11 + 48);
  v19 = *(v10 + 40);
  v18 = *(v10 + 48);
  physx::Bp::boxPruningKernel<0>(this, a6, v12, v14, v16, v17, v13, v15, v19, v18, a5);
  return physx::Bp::boxPruningKernel<1>(this, a6, v13, v15, v19, v18, v12, v14, v16, v17, a5);
}

void physx::Bp::PersistentSelfCollisionPairs::~PersistentSelfCollisionPairs(physx::Bp::PersistentSelfCollisionPairs *this)
{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
}

{
  *this = &unk_1F5D1CBD8;
  physx::Bp::PairManagerData::purge(this + 16);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Bp::PersistentSelfCollisionPairs::findOverlaps(uint64_t a1, physx::Bp::PairManagerData *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v44 = a5;
  v45 = a6;
  if (*(v7 + 84) == 1)
  {
    physx::Bp::Aggregate::sortBounds(v7);
    a5 = v44;
    a6 = v45;
    v7 = *(a1 + 72);
  }

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = *(v7 + 40);
    v13 = *(v7 + 48);
    v42 = v7;
    v43 = this;
    do
    {
      v14 = *(v12 + 8 * v10 + 4);
      do
      {
        v15 = 8 * v11;
        v11 = (v11 + 1);
      }

      while (*(v12 + v15) < *(v12 + 8 * v10));
      if (*(v12 + 8 * v11) <= v14)
      {
        v16 = (v13 + 16 * v10);
        v17 = v11;
        v18 = v11;
        do
        {
          v19 = (v13 + 16 * v17);
          v20.i64[0] = *v16;
          v21.i64[0] = v19[1];
          v21.i64[1] = v16[1];
          v20.i64[1] = *v19;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v20, v21))) & 1) == 0)
          {
            v22 = *(v7 + 8);
            v23 = *(v22 + 4 * v10);
            v24 = *(v22 + 4 * v17);
            v25 = *(a5 + 4 * v23);
            v26 = *(a5 + 4 * v24);
            if (v25 != v26 && *(a6 + (v26 & 3 | (4 * (v25 & 3)))) == 1)
            {
              if (v23 <= v24)
              {
                v27 = v24;
              }

              else
              {
                v27 = v23;
              }

              if (v23 >= v24)
              {
                v28 = v24;
              }

              else
              {
                v28 = v23;
              }

              v29 = (v28 | (v27 << 16)) + ~((v28 | (v27 << 16)) << 15);
              v30 = (9 * (v29 ^ (v29 >> 10))) ^ ((9 * (v29 ^ (v29 >> 10))) >> 6);
              v31 = (v30 + ~(v30 << 11)) ^ ((v30 + ~(v30 << 11)) >> 16);
              v32 = *(this + 1) & v31;
              v33 = *(this + 2);
              if (!v33 || (v34 = *(v33 + 4 * v32), v34 == -1))
              {
LABEL_26:
                v37 = *(this + 2);
                if (v37 >= *this)
                {
                  v38 = this;
                  v39 = v9;
                  v32 = physx::Bp::PairManagerData::growPairs(v38, v31);
                  v9 = v39;
                  v7 = v42;
                  this = v43;
                  a5 = v44;
                  a6 = v45;
                  v37 = *(v43 + 2);
                  v33 = *(v43 + 2);
                }

                *(this + 2) = v37 + 1;
                v40 = *(this + 3);
                v41 = (*(this + 4) + 8 * v37);
                *v41 = v28 | 0x80000000;
                v41[1] = v27;
                *(v40 + 4 * v37) = *(v33 + 4 * v32);
                *(v33 + 4 * v32) = v37;
              }

              else
              {
                while (1)
                {
                  v35 = (*(this + 4) + 8 * v34);
                  if ((*v35 & 0x7FFFFFFF) == v28)
                  {
                    v36 = v35[1];
                    if ((v36 & 0x7FFFFFFF) == v27)
                    {
                      break;
                    }
                  }

                  v34 = *(*(this + 3) + 4 * v34);
                  if (v34 == -1)
                  {
                    goto LABEL_26;
                  }
                }

                v35[1] = v36 | 0x80000000;
              }
            }
          }

          v17 = ++v18;
        }

        while (*(v12 + 8 * v17) <= v14);
      }

      ++v10;
    }

    while (v10 < v9 && v11 < v9);
  }
}

void physx::Bp::SapUpdateWorkTask::~SapUpdateWorkTask(physx::Bp::SapUpdateWorkTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Bp::SapPostUpdateWorkTask::~SapPostUpdateWorkTask(physx::Bp::SapPostUpdateWorkTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void *physx::Cm::DelegateTask<physx::Bp::AABBManager,&physx::Bp::AABBManager::postBpStage3>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::ReflectionAllocator<physx::Bp::FilterGroup::Enum>>::growAndPushBack(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::FilterGroup::Enum>::getName() [T = physx::Bp::FilterGroup::Enum]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 4 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  v11 = *v3;
  if (v9)
  {
    v12 = *v3;
    v13 = v8;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
    }

    while (v13 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && v11)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

void physx::Bp::SortAggregateBoundsParallel::~SortAggregateBoundsParallel(physx::Bp::SortAggregateBoundsParallel *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Bp::SortAggregateBoundsParallel::runInternal(physx::Bp::SortAggregateBoundsParallel *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (*(v4 + 84) == 1)
      {
        physx::Bp::Aggregate::sortBounds(v4);
        v1 = *(this + 12);
      }
    }
  }
}

void physx::Bp::ProcessSelfCollisionPairsParallel::~ProcessSelfCollisionPairsParallel(physx::Bp::ProcessSelfCollisionPairsParallel *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Bp::ProcessSelfCollisionPairsParallel::runInternal(physx::Bp::ProcessSelfCollisionPairsParallel *this)
{
  physx::Bp::AABBManager::getBpCacheData(*(*(this + 15) + 792));
  v3 = v2;
  v4 = 0;
  v5 = this + 40;
  v6 = this + 72;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = &v2[2 * v4 + 1];
    v10 = &v5[16 * v4];
    *v10 = v9;
    *(v10 + 2) = *(v9 + 8);
    v11 = &v2[2 * v4 + 5];
    v12 = &v6[16 * v4];
    *v12 = v11;
    *(v12 + 2) = *(v11 + 8);
    v4 = 1;
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  v13 = *(this + 28);
  if (v13)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(*(*(this + 13) + 8 * i) + 24);
      if (v15)
      {
        physx::Bp::AABBManager::updatePairs(*(this + 15), v15, v3);
        v13 = *(this + 28);
      }
    }
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = v17;
    *&v5[16 * v16 + 12] = *(*&v5[16 * v16] + 8) - *&v5[16 * v16 + 8];
    *&v6[16 * v16 + 12] = *(*&v6[16 * v16] + 8) - *&v6[16 * v16 + 8];
    v16 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  v19 = *(*(this + 15) + 792);
  pthread_mutex_lock((v19 + 8));
  *v3 = *v19;
  *v19 = v3;

  return pthread_mutex_unlock((v19 + 8));
}

void physx::Bp::ProcessAggPairsParallelTask::~ProcessAggPairsParallelTask(physx::Bp::ProcessAggPairsParallelTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

int32x2_t *physx::Bp::ProcessAggPairsParallelTask::runInternal(physx::Bp::ProcessAggPairsParallelTask *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v3.n128_f64[0] = physx::Bp::AABBManager::getBpCacheData(*(*(this + 46) + 792));
  v4 = v2;
  v5 = 0;
  v6 = this + 40;
  v7 = this + 72;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = &v2[2 * v5 + 1];
    v11 = &v6[16 * v5];
    *v11 = v10;
    *(v11 + 2) = *(v10 + 8);
    v12 = &v2[2 * v5 + 5];
    v13 = &v7[16 * v5];
    *v13 = v12;
    *(v13 + 2) = *(v12 + 8);
    v5 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v25[128] = 1;
  v26 = v25;
  v27 = 0x1000000000;
  if (*(this + 90))
  {
    v14 = 0;
    v15 = (this + 232);
    do
    {
      if ((*(**(v15 - 16) + 16))(*(v15 - 16), *(this + 46), v4, v3))
      {
        if ((HIDWORD(v27) & 0x7FFFFFFFu) <= v27)
        {
          physx::shdfnd::Array<physx::Bp::AggPair,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>>>::growAndPushBack(v25, v15);
        }

        else
        {
          *&v26[8 * v27] = *v15;
          LODWORD(v27) = v27 + 1;
        }

        v16 = *(v15 - 16);
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      ++v14;
      ++v15;
    }

    while (v14 < *(this + 90));
  }

  v17 = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    *&v6[16 * v17 + 12] = *(*&v6[16 * v17] + 8) - *&v6[16 * v17 + 8];
    *&v7[16 * v17 + 12] = *(*&v7[16 * v17] + 8) - *&v7[16 * v17 + 8];
    v17 = 1;
    v18 = 0;
  }

  while ((v19 & 1) != 0);
  v20 = *(*(this + 46) + 792);
  pthread_mutex_lock((v20 + 8));
  *v4 = *v20;
  *v20 = v4;
  result = pthread_mutex_unlock((v20 + 8));
  if (v27)
  {
    v22 = *(this + 48);
    if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0 || (result = pthread_mutex_lock(*v22), v27))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        result = physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::erase(*(this + 47), *&v26[v23], *&v26[v23 + 4]);
        ++v24;
        v23 += 8;
      }

      while (v24 < v27);
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      result = pthread_mutex_unlock(*v22);
    }
  }

  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x7FFFFFFF00000000) != 0 && v26 != v25)
  {
    if (v26)
    {
      return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return result;
}

int32x2_t *physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::erase(int32x2_t *result, int a2, int a3)
{
  if (result[6].i32[1])
  {
    v3 = (a2 | (a3 << 16)) + ~((a2 | (a3 << 16)) << 15);
    v4 = (9 * (v3 ^ (v3 >> 10))) ^ ((9 * (v3 ^ (v3 >> 10))) >> 6);
    v5 = (*&result[3] + 4 * ((result[4].i32[1] - 1) & ((v4 + ~(v4 << 11)) ^ ((v4 + ~(v4 << 11)) >> 16))));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = result[1];
      v8 = result[2];
      v9 = (*&v7 + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      if (v11 == a2 && v10 == a3)
      {
LABEL_14:
        *v5 = *(*&v8 + 4 * v6);
        v18 = vadd_s32(result[6], 0xFFFFFFFF00000001);
        result[6] = v18;
        if (v6 != v18.i32[1])
        {
          v19 = (*&v7 + 16 * v6);
          v20 = (*&v7 + 16 * v18.u32[1]);
          v21 = v20[1];
          *v19 = *v20;
          v23 = result[1];
          v22 = result[2];
          v24 = *(*&v22 + 4 * result[6].u32[1]);
          v19[1] = v21;
          *(*&v22 + 4 * v6) = v24;
          v25 = *(*&v23 + 16 * v6) | (*(*&v23 + 16 * v6 + 4) << 16);
          v26 = 9 * ((v25 + ~(v25 << 15)) ^ ((v25 + ~(v25 << 15)) >> 10));
          v27 = (v26 ^ (v26 >> 6)) + ~((v26 ^ (v26 >> 6)) << 11);
          v28 = (*&result[3] + 4 * ((v27 ^ HIWORD(v27)) & (result[4].i32[1] - 1)));
          v29 = result[6].u32[1];
          v30 = *v28;
          if (v30 != v29)
          {
            do
            {
              v31 = v30;
              v30 = *(*&v22 + 4 * v30);
            }

            while (v30 != v29);
            v28 = (*&v22 + 4 * v31);
          }

          *v28 = v6;
        }

        --result[5].i32[1];
      }

      else
      {
        while (1)
        {
          v13 = v6;
          v6 = *(*&v8 + 4 * v6);
          if (v6 == -1)
          {
            break;
          }

          v14 = (*&v7 + 16 * v6);
          v16 = *v14;
          v15 = v14[1];
          if (v16 == a2 && v15 == a3)
          {
            v5 = (*&v8 + 4 * v13);
            goto LABEL_14;
          }
        }
      }
    }
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>::allocate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>::getName() [T = physx::Bp::AggPair]";
    }

    else
    {
      v3 = "<allocation names disabled>";
    }

    v4 = *(*(v2 + 24) + 16);

    return v4(v2 + 24, v1, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::AggPair,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 148);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = (8 * v5);
    if (result > 0x80 || (*(v3 + 128) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>::allocate(result);
      v6 = result;
    }

    else
    {
      *(v3 + 128) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 144);
  if (v7)
  {
    v8 = &v6[v7];
    v9 = *(v3 + 136);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
    v12 = *(v3 + 144);
  }

  else
  {
    v12 = 0;
  }

  v6[v12] = *a2;
  if ((*(v3 + 148) & 0x80000000) == 0)
  {
    v13 = *(v3 + 136);
    if (v13 == v3)
    {
      *(v3 + 128) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 136) = v6;
  ++*(v3 + 144);
  *(v3 + 148) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::AggPair,physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Bp::AggPair>::allocate(8 * v5);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    v8 = &v6[v7];
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
    v12 = *(v3 + 8);
  }

  else
  {
    v12 = 0;
  }

  v6[v12] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v6;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>::getName() [T = physx::Bp::AABBOverlap]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 24 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = v6 + 24 * v7;
    v10 = v6;
    do
    {
      v11 = *v8;
      *(v10 + 16) = *(v8 + 2);
      *v10 = v11;
      v10 += 24;
      v8 = (v8 + 24);
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::Bp::boxPruningKernel<0>(uint64_t this, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 && a7)
  {
    v12 = a2;
    v13 = this;
    v14 = 0;
    v15 = 0;
    v16 = a11;
    v47 = a3;
    v46 = a8;
    v44 = this;
    do
    {
      v17 = (a5 + 8 * v14);
      v18 = *v17;
      v19 = v17[1];
      do
      {
        LODWORD(v20) = v15;
        v21 = *(a9 + 8 * v15++);
      }

      while (v21 < v18);
      --v15;
      if (v21 <= v19)
      {
        v20 = v20;
        v22 = v15;
        v23 = (a6 + 16 * v14);
        do
        {
          v24 = (a10 + 16 * v20);
          v25.i64[0] = *v23;
          v26.i64[0] = v24[1];
          v26.i64[1] = v23[1];
          v25.i64[1] = *v24;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v25, v26))) & 1) == 0)
          {
            v27 = *(a4 + 4 * v14);
            v28 = *(a8 + 4 * v20);
            v29 = *(v16 + 4 * v27);
            v30 = *(v16 + 4 * v28);
            if (v29 != v30 && *(v12 + (v30 & 3 | (4 * (v29 & 3)))) == 1)
            {
              if (v27 <= v28)
              {
                v31 = v28;
              }

              else
              {
                v31 = *(a4 + 4 * v14);
              }

              if (v27 >= v28)
              {
                v32 = v28;
              }

              else
              {
                v32 = *(a4 + 4 * v14);
              }

              v33 = (v32 | (v31 << 16)) + ~((v32 | (v31 << 16)) << 15);
              v34 = (9 * (v33 ^ (v33 >> 10))) ^ ((9 * (v33 ^ (v33 >> 10))) >> 6);
              v35 = (v34 + ~(v34 << 11)) ^ ((v34 + ~(v34 << 11)) >> 16);
              this = *(v13 + 4) & v35;
              v36 = *(v13 + 16);
              if (!v36 || (v37 = *(v36 + 4 * this), v37 == -1))
              {
LABEL_25:
                v40 = *(v13 + 8);
                if (v40 >= *v13)
                {
                  this = physx::Bp::PairManagerData::growPairs(v13, v35);
                  v16 = a11;
                  v13 = v44;
                  v12 = a2;
                  a8 = v46;
                  v40 = *(v44 + 8);
                  v36 = *(v44 + 16);
                }

                *(v13 + 8) = v40 + 1;
                v41 = *(v13 + 24);
                v42 = (*(v13 + 32) + 8 * v40);
                *v42 = v32 | 0x80000000;
                v42[1] = v31;
                *(v41 + 4 * v40) = *(v36 + 4 * this);
                *(v36 + 4 * this) = v40;
              }

              else
              {
                while (1)
                {
                  v38 = (*(v13 + 32) + 8 * v37);
                  if ((*v38 & 0x7FFFFFFF) == v32)
                  {
                    v39 = v38[1];
                    if ((v39 & 0x7FFFFFFF) == v31)
                    {
                      break;
                    }
                  }

                  v37 = *(*(v13 + 24) + 4 * v37);
                  if (v37 == -1)
                  {
                    goto LABEL_25;
                  }
                }

                v38[1] = v39 | 0x80000000;
              }
            }
          }

          v20 = ++v22;
        }

        while (*(a9 + 8 * v20) <= v19);
      }

      ++v14;
    }

    while (v14 < v47 && v15 < a7);
  }

  return this;
}

uint64_t physx::Bp::boxPruningKernel<1>(uint64_t this, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 && a7)
  {
    v12 = a2;
    v13 = this;
    v14 = 0;
    v15 = 0;
    v16 = a11;
    v47 = a3;
    v46 = a8;
    v44 = this;
    do
    {
      v17 = (a5 + 8 * v14);
      v18 = *v17;
      v19 = v17[1];
      do
      {
        LODWORD(v20) = v15;
        v21 = *(a9 + 8 * v15++);
      }

      while (v21 <= v18);
      --v15;
      if (v21 <= v19)
      {
        v20 = v20;
        v22 = v15;
        v23 = (a6 + 16 * v14);
        do
        {
          v24 = (a10 + 16 * v20);
          v25.i64[0] = *v23;
          v26.i64[0] = v24[1];
          v26.i64[1] = v23[1];
          v25.i64[1] = *v24;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v25, v26))) & 1) == 0)
          {
            v27 = *(a4 + 4 * v14);
            v28 = *(a8 + 4 * v20);
            v29 = *(v16 + 4 * v27);
            v30 = *(v16 + 4 * v28);
            if (v29 != v30 && *(v12 + (v30 & 3 | (4 * (v29 & 3)))) == 1)
            {
              if (v27 <= v28)
              {
                v31 = v28;
              }

              else
              {
                v31 = *(a4 + 4 * v14);
              }

              if (v27 >= v28)
              {
                v32 = v28;
              }

              else
              {
                v32 = *(a4 + 4 * v14);
              }

              v33 = (v32 | (v31 << 16)) + ~((v32 | (v31 << 16)) << 15);
              v34 = (9 * (v33 ^ (v33 >> 10))) ^ ((9 * (v33 ^ (v33 >> 10))) >> 6);
              v35 = (v34 + ~(v34 << 11)) ^ ((v34 + ~(v34 << 11)) >> 16);
              this = *(v13 + 4) & v35;
              v36 = *(v13 + 16);
              if (!v36 || (v37 = *(v36 + 4 * this), v37 == -1))
              {
LABEL_25:
                v40 = *(v13 + 8);
                if (v40 >= *v13)
                {
                  this = physx::Bp::PairManagerData::growPairs(v13, v35);
                  v16 = a11;
                  v13 = v44;
                  v12 = a2;
                  a8 = v46;
                  v40 = *(v44 + 8);
                  v36 = *(v44 + 16);
                }

                *(v13 + 8) = v40 + 1;
                v41 = *(v13 + 24);
                v42 = (*(v13 + 32) + 8 * v40);
                *v42 = v32 | 0x80000000;
                v42[1] = v31;
                *(v41 + 4 * v40) = *(v36 + 4 * this);
                *(v36 + 4 * this) = v40;
              }

              else
              {
                while (1)
                {
                  v38 = (*(v13 + 32) + 8 * v37);
                  if ((*v38 & 0x7FFFFFFF) == v32)
                  {
                    v39 = v38[1];
                    if ((v39 & 0x7FFFFFFF) == v31)
                    {
                      break;
                    }
                  }

                  v37 = *(*(v13 + 24) + 4 * v37);
                  if (v37 == -1)
                  {
                    goto LABEL_25;
                  }
                }

                v38[1] = v39 | 0x80000000;
              }
            }
          }

          v20 = ++v22;
        }

        while (*(a9 + 8 * v20) <= v19);
      }

      ++v14;
    }

    while (v14 < v47 && v15 < a7);
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>::getName() [T = physx::Bp::Aggregate *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

_DWORD *physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::copy<physx::shdfnd::ReflectionAllocator<unsigned int>>(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3)
  {
    result[2] = v3;
    result[3] = v3;
    result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(result, 4 * v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    *v2 = result;
    v5 = v2[2];
    if (v5)
    {
      v6 = &result[v5];
      v7 = *a2;
      do
      {
        v8 = *v7++;
        *result++ = v8;
      }

      while (result < v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::FilterGroup::Enum,physx::shdfnd::VirtualAllocator>::recreate(void *a1, unsigned int a2)
{
  result = (*(**a1 + 16))(*a1, 4 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = *(a1 + 4);
  v7 = a1[1];
  if (v6)
  {
    v8 = result + 4 * v6;
    v9 = a1[1];
    v10 = result;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  if ((*(a1 + 5) & 0x80000000) == 0 && v7)
  {
    result = (*(**a1 + 24))();
  }

  a1[1] = v5;
  *(a1 + 5) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::VolumeData,physx::shdfnd::ReflectionAllocator<physx::Bp::VolumeData>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 16 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::VolumeData>::getName() [T = physx::Bp::VolumeData]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 16 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<float,physx::shdfnd::VirtualAllocator>::recreate(void *a1, unsigned int a2)
{
  result = (*(**a1 + 16))(*a1, 4 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = *(a1 + 4);
  v7 = a1[1];
  if (v6)
  {
    v8 = result + 4 * v6;
    v9 = a1[1];
    v10 = result;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  if ((*(a1 + 5) & 0x80000000) == 0 && v7)
  {
    result = (*(**a1 + 24))();
  }

  a1[1] = v5;
  *(a1 + 5) = a2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Bp::AABBManager,&physx::Bp::AABBManager::postBpStage3>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Bp::AggPair const,physx::Bp::PersistentPairs *>,physx::Bp::AggPair,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::internal::HashMapBase<physx::Bp::AggPair,physx::Bp::PersistentPairs *,physx::shdfnd::Hash<physx::Bp::AggPair>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 16 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 16 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v12 = 0;
    v13 = 0;
    v14 = &v9[v8 + 8];
    do
    {
      v15 = (*(a1 + 8) + v12);
      v16 = *v15 | (*(v15 + 1) << 16);
      v17 = 9 * ((v16 + ~(v16 << 15)) ^ ((v16 + ~(v16 << 15)) >> 10));
      v18 = (v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11);
      v19 = (v18 ^ HIWORD(v18)) & (v2 - 1);
      *&v10[4 * v13] = *&v9[4 * v19];
      *&v9[4 * v19] = v13;
      *(v14 - 1) = *v15;
      *v14 = *(v15 + 1);
      v14 += 16;
      ++v13;
      v12 += 16;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = &v9[v8];
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

void *physx::shdfnd::internal::HashBase<physx::Bp::Pair,physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::internal::HashSetBase<physx::Bp::Pair,physx::shdfnd::Hash<physx::Bp::Pair>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 32);
  v8 = (*(a1 + 40) * v2);
  v9 = 4 * v2;
  v10 = ((-4 * (v2 + v8)) & 0xC) + 4 * (v2 + v8);
  if (v10 + 8 * v8)
  {
    v11 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v10 + 8 * v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[v9];
  v13 = &v11[v10];
  result = memset(v11, 255, 4 * v2);
  if (v6 == -1)
  {
    if (*(a1 + 52))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = (*(a1 + 8) + v23);
        v26 = *v25 | (*(v25 + 1) << 16);
        v27 = 9 * ((v26 + ~(v26 << 15)) ^ ((v26 + ~(v26 << 15)) >> 10));
        v28 = (v27 ^ (v27 >> 6)) + ~((v27 ^ (v27 >> 6)) << 11);
        v29 = (v28 ^ HIWORD(v28)) & (v2 - 1);
        *&v12[4 * v24] = *&v11[4 * v29];
        *&v11[4 * v29] = v24;
        *&v13[8 * v24++] = *v25;
        v23 += 8;
      }

      while (v24 < *(a1 + 52));
    }
  }

  else
  {
    result = memcpy(&v11[v9], *(a1 + 16), (4 * *(a1 + 32)));
    v15 = *(a1 + 36);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v17 = *(*(a1 + 24) + 4 * i);
        if (v17 != -1)
        {
          do
          {
            v18 = (*(a1 + 8) + 8 * v17);
            v19 = *v18 | (*(v18 + 1) << 16);
            v20 = 9 * ((v19 + ~(v19 << 15)) ^ ((v19 + ~(v19 << 15)) >> 10));
            v21 = (v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11);
            v22 = (v21 ^ HIWORD(v21)) & (v2 - 1);
            *&v12[4 * v17] = *&v11[4 * v22];
            *&v11[4 * v22] = v17;
            *&v13[8 * v17] = *v18;
            v17 = *(*(a1 + 16) + 4 * v17);
          }

          while (v17 != -1);
          v15 = *(a1 + 36);
        }
      }
    }
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  *a1 = v11;
  *(a1 + 8) = v13;
  v30 = v8 - 1;
  *(a1 + 32) = v8;
  *(a1 + 36) = v2;
  if (v30 > v7)
  {
    v31 = 0;
    v32 = vdupq_n_s64(v7);
    v33 = vaddq_s64(v32, xmmword_1E3049640);
    v34 = vaddq_s64(v32, xmmword_1E3049620);
    v35 = vdupq_n_s64(v30 - v7 - 1);
    v36 = &v11[4 * v7 + 8 + v9];
    v37 = vdupq_n_s64(1uLL);
    v38 = vdupq_n_s64(4uLL);
    do
    {
      v39 = vdupq_n_s64(v31);
      v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1E3049620)));
      v41 = vaddq_s64(v34, v37);
      if (vuzp1_s16(v40, 2).u8[0])
      {
        *(v36 - 2) = v41.i32[0];
      }

      if (vuzp1_s16(v40, 2).i8[2])
      {
        *(v36 - 1) = v41.i32[2];
      }

      v42 = vorrq_s8(v39, xmmword_1E3049640);
      v43 = vaddq_s64(v33, v37);
      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v35, v42))).i32[1])
      {
        *v36 = v43.i32[0];
        *(v36 + 1) = v43.i32[2];
      }

      v31 += 4;
      v33 = vaddq_s64(v33, v38);
      v34 = vaddq_s64(v34, v38);
      v36 += 16;
    }

    while (((v30 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
  }

  *&v12[4 * v30] = *(a1 + 44);
  *(a1 + 44) = v7;
  return result;
}

_DWORD *physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::growAndPushBack(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[5];
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = (*(**result + 16))();
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[4];
  v8 = *(v3 + 1);
  if (v7)
  {
    v9 = &v6[v7];
    v10 = *(v3 + 1);
    v11 = v6;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
    v13 = v3[4];
  }

  else
  {
    v13 = 0;
  }

  v6[v13] = *a2;
  if ((v3[5] & 0x80000000) == 0 && v8)
  {
    result = (*(**v3 + 24))();
  }

  *(v3 + 1) = v6;
  ++v3[4];
  v3[5] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::VirtualAllocator>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    result = (*(**result + 16))();
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 8);
  if (v5)
  {
    v7 = &v4[v5];
    v8 = *(v3 + 8);
    v9 = v4;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 20) & 0x80000000) == 0 && v6)
  {
    result = (*(**v3 + 24))();
  }

  *(v3 + 8) = v4;
  *(v3 + 20) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::AABBOverlap,physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>>::growAndPushBack(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::AABBOverlap>::getName() [T = physx::Bp::AABBOverlap]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 24 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 24 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v12 += 24;
      v11 = (v11 + 24);
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 + 24 * v14;
  v16 = *a2;
  *(v15 + 16) = *(a2 + 2);
  *v15 = v16;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::ProcessAggPairsBase *,physx::shdfnd::ReflectionAllocator<physx::Bp::ProcessAggPairsBase *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::ProcessAggPairsBase *>::getName() [T = physx::Bp::ProcessAggPairsBase *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::Aggregate *,physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::Aggregate *>::getName() [T = physx::Bp::Aggregate *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Bp::BpCacheData *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::Bp::BpCacheData *>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 148);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if ((8 * v5) <= 0x80 && (*(result + 128) & 1) == 0)
  {
    *(result + 128) = 1;
    v6 = result;
    goto LABEL_14;
  }

  if (8 * v5)
  {
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BpCacheData *>::getName() [T = physx::Bp::BpCacheData *]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    result = (*(*(v7 + 24) + 16))(v7 + 24, (8 * v5), v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  v9 = *(v3 + 144);
  v10 = &v6[v9];
  if (v9)
  {
    v11 = *(v3 + 136);
    v12 = v6;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 148) & 0x80000000) == 0)
  {
    v14 = *(v3 + 136);
    if (v14 == v3)
    {
      *(v3 + 128) = 0;
    }

    else if (v14)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v9) = *(v3 + 144);
    }
  }

  *(v3 + 136) = v6;
  *(v3 + 144) = v9 + 1;
  *(v3 + 148) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<void *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<void *>::getName() [T = void *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t internalABP::ABP_MM::frameAlloc(pthread_mutex_t **this, unsigned int a2)
{
  if (this)
  {
    return physx::PxcScratchAllocator::alloc(this, a2, 1);
  }

  if (a2)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 373);
  }

  return 0;
}

uint64_t internalABP::ABP_MM::frameFree(uint64_t this, unint64_t a2)
{
  if (this)
  {
    return physx::PxcScratchAllocator::free(this, a2);
  }

  if (a2)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return this;
}

void *internalABP::SplitBoxes::reset(void *this)
{
  v1 = this;
  if (this[2])
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v1[2] = 0;
  }

  if (v1[1])
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  return this;
}

BOOL internalABP::SplitBoxes::allocate(internalABP::SplitBoxes *this, unsigned int a2)
{
  v3 = *this;
  if (*this < a2)
  {
    if (*(this + 2))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      *(this + 2) = 0;
    }

    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      *(this + 1) = 0;
    }

    if (a2 == -6)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (a2 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 643);
    }

    *(this + 1) = v5;
    *(this + 2) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 644);
    *this = a2;
    *(this + 1) = a2;
  }

  return v3 < a2;
}

void internalABP::BitArray::resize(internalABP::BitArray *this, int a2)
{
  if ((a2 & 0x1F) != 0)
  {
    v3 = ((a2 + 128) >> 5) + 1;
  }

  else
  {
    v3 = (a2 + 128) >> 5;
  }

  if (v3)
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 855);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    memcpy(v4, *this, (4 * v5));
    v5 = *(this + 2);
  }

  if (v3 != v5)
  {
    bzero(&v4[4 * v5], 4 * (v3 - v5));
  }

  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = v4;
  *(this + 2) = v3;
}

void *internalABP::ABP_SharedData::resize(internalABP::ABP_SharedData *this, int a2)
{
  v3 = *(this + 2);
  v4 = 2 * v3;
  if (!v3)
  {
    v4 = 256;
  }

  if (v4 <= a2 + 1)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = v4;
  }

  result = physx::shdfnd::ReflectionAllocator<internalABP::ABP_Object>::allocate(&v8, 4 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 949);
  v7 = result;
  if (v5)
  {
    result = memset(result, 255, 4 * v5);
  }

  if (*this)
  {
    result = memcpy(v7, *this, (4 * v3));
    if (*this)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *this = v7;
  *(this + 2) = v5;
  return result;
}

void internalABP::BoxManager::~BoxManager(internalABP::BoxManager *this)
{
  internalABP::BoxManager::reset(this);
  internalABP::SplitBoxes::reset(this + 13);
  *(this + 13) = 0;
  internalABP::SplitBoxes::reset(this + 8);
  *(this + 8) = 0;
}

void *internalABP::BoxManager::reset(internalABP::BoxManager *this)
{
  *(this + 24) = 0;
  *(this + 7) = 0;
  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 6) = 0;
  if (*(this + 11))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 11) = 0;
  internalABP::SplitBoxes::reset(this + 8);

  return internalABP::SplitBoxes::reset(this + 13);
}

unsigned int *internalABP::BoxManager::addObjects(unsigned int *result, unsigned int *a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = result;
  v9 = result[14];
  v8 = result[15];
  v10 = v9 + a3;
  if (v9 + a3 <= v8)
  {
    v13 = *(result + 6);
  }

  else
  {
    if (v10 <= 2 * v8)
    {
      v11 = 2 * v8;
    }

    else
    {
      v11 = v9 + a3;
    }

    if (v11 <= 0x400)
    {
      v11 = 1024;
    }

    result[15] = v11;
    v12 = *(result + 6);
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 890);
    v13 = result;
    if (v9)
    {
      result = memcpy(result, v12, (4 * v9));
    }

    if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v12);
    }
  }

  *(v7 + 6) = v13;
  v7[14] = v10;
  v14 = &v13[v9];
  do
  {
    v16 = *a2++;
    v15 = v16;
    *v14++ = v16 | 0x80000000;
    if (a4)
    {
      *(*(a4 + 16) + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
    }

    --v5;
  }

  while (v5);
  return result;
}

void *internalABP::BoxManager::purgeRemovedFromSleeping(void *result, uint64_t a2)
{
  v2 = result;
  v4 = (result + 16);
  v3 = *(result + 32);
  v6 = (result + 12);
  v5 = *(result + 24);
  v7 = v5 - v3;
  if (v5 == v3)
  {
    result = internalABP::SplitBoxes::reset(result + 13);
    if (v2[11])
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v2[11] = 0;
    *(v2 + 32) = 0;
  }

  else
  {
    if (v7 >= *(result + 27) >> 1)
    {
      v22 = result[14];
      if (v5)
      {
        v23 = 0;
        v24 = 0;
        v25 = result[15];
        v26 = result[11];
        do
        {
          v27 = *(v26 + 4 * v23);
          if (v27 != -1)
          {
            if (v23 != v24)
            {
              *(v26 + 4 * v24) = v27;
              *(v22 + 8 * v24) = *(v22 + 8 * v23);
              *(v25 + 16 * v24) = *(v25 + 16 * v23);
              v5 = *v6;
            }

            *(a2 + 4 * v27) = *result | (8 * v24++) | 4;
          }

          ++v23;
        }

        while (v23 < v5);
      }

      v28 = 6;
      v29 = v7;
      do
      {
        *(v22 + 8 * v29++) = -1;
        --v28;
      }

      while (v28);
      *(result + 26) = v7;
    }

    else
    {
      v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (v7 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1282);
      v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * (v7 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1283);
      v11 = 6;
      v12 = v7;
      do
      {
        *(v9 + 8 * v12++) = -1;
        --v11;
      }

      while (v11);
      v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1285);
      v14 = v13;
      v15 = *(v2 + 24);
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = v2[14];
        v19 = v2[15];
        v20 = v2[11];
        do
        {
          v21 = *(v20 + 4 * v16);
          if (v21 != -1)
          {
            *(v13 + 4 * v17) = v21;
            *(v9 + 8 * v17) = *(v18 + 8 * v16);
            *(v10 + 16 * v17) = *(v19 + 16 * v16);
            *(a2 + 4 * v21) = *v2 | (8 * v17++) | 4;
            v15 = *(v2 + 24);
          }

          ++v16;
        }

        while (v16 < v15);
      }

      result = internalABP::SplitBoxes::reset(v2 + 13);
      *(v2 + 26) = v7;
      *(v2 + 27) = v7;
      v2[14] = v9;
      v2[15] = v10;
      if (v2[11])
      {
        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v2[11] = v14;
    }

    *v6 = v7;
    v6 = v4;
  }

  *v6 = 0;
  return result;
}

void *internalABP::BoxManager::prepareData(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v80 = v3;
  v4 = v2;
  v90 = *MEMORY[0x1E69E9840];
  v5 = *(result + 14);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = result[6];
    v12 = result[2];
    v78 = result;
    v79 = result[1];
    v81 = v12;
    do
    {
      v13 = *(v11 + 4 * v6);
      if (v13 != -1)
      {
        if (v13 < 0)
        {
          if (!v7)
          {
            v15 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1402);
            v12 = v81;
            v7 = v15;
          }

          v16 = v13 & 0x7FFFFFFF;
          v7[v9] = *(v79 + 24 * v16) - *(v12 + 4 * v16);
          if (!v8)
          {
            v17 = internalABP::ABP_MM::frameAlloc(*v80, 4 * v5);
            v12 = v81;
            v8 = v17;
          }

          v8[v5 + ~v9++] = v16;
        }

        else
        {
          if (!v8)
          {
            v14 = internalABP::ABP_MM::frameAlloc(*v80, 4 * v5);
            v12 = v81;
            v8 = v14;
          }

          v8[v10++] = v6;
        }
      }

      ++v6;
    }

    while (v5 != v6);
    v18 = v78;
    v19 = *(v78 + 24);
    if (v10)
    {
      if (!v19)
      {
        v28 = v10;
        if (internalABP::SplitBoxes::allocate((v78 + 13), v10))
        {
          v29 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1604);
          if (v78[11])
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }

          v78[11] = v29;
        }

        else
        {
          v29 = v78[11];
        }

        v60 = v78[9];
        v61 = v78[10];
        v62 = 6;
        v63 = v78[14];
        v64 = v78[15];
        do
        {
          *(v63 + 8 * v10++) = -1;
          --v62;
        }

        while (v62);
        for (i = 0; i != v28; ++i)
        {
          v66 = v8[i];
          v67 = *(v11 + 4 * v66);
          *(v29 + 4 * i) = v67;
          *(v63 + 8 * i) = *(v60 + 8 * v66);
          *(v64 + 16 * i) = *(v61 + 16 * v66);
          *(v4 + 4 * v67) = v62 | *v78 | 4;
          LODWORD(v62) = v62 + 8;
        }

        *(v78 + 24) = v28;
        v27 = v79;
        if (v9)
        {
          goto LABEL_54;
        }

        goto LABEL_75;
      }

      v73 = v78[6];
      v74 = v78[10];
      v70 = v78[11];
      v71 = v78[15];
      v72 = v78[14];
      v20 = *v72;
      v75 = v78[9];
      v21 = *(v75 + 8 * *v8);
      v22 = v19 + v10;
      v23 = *(v78 + 32);
      v77 = v19 + v10 - v23;
      v76 = *(v78 + 24);
      if (v77 == -6)
      {
        v24 = 0;
        v26 = 0;
      }

      else
      {
        v68 = *(v78 + 32);
        v24 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * (v77 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1521);
        v25 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * (v77 + 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1522);
        v23 = v68;
        v19 = v76;
        v26 = v25;
      }

      v30 = v19 - v23 + v10;
      v31 = 6;
      do
      {
        *(v24 + 8 * v30++) = -1;
        --v31;
      }

      while (v31);
      if (v22 == v23)
      {
        v32 = 0;
      }

      else
      {
        v69 = v26;
        v32 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v77, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 1525);
        v26 = v69;
        v19 = v76;
      }

      if (v22)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        do
        {
          if (v20 >= v21)
          {
            v37 = v8[v33];
            v36 = *(v73 + 4 * v37);
            *(v32 + 4 * v35) = v36;
            *(v24 + 8 * v35) = *(v75 + 8 * v37);
            *(v26 + 16 * v35) = *(v74 + 16 * v37);
            if (++v33 >= v10)
            {
              v21 = -1;
            }

            else
            {
              v21 = *(v75 + 8 * v8[v33]);
            }
          }

          else
          {
            v36 = *(v70 + 4 * v34);
            if (v36 != -1)
            {
              *(v32 + 4 * v35) = v36;
              *(v24 + 8 * v35) = *&v72[2 * v34];
              *(v26 + 16 * v35) = *(v71 + 16 * v34);
            }

            if (++v34 >= v19)
            {
              v20 = -1;
            }

            else
            {
              v20 = v72[2 * v34];
            }
          }

          if (v36 != 0xFFFFFFFFLL)
          {
            *(v4 + 4 * v36) = *v78 | (8 * v35++) | 4;
          }

          --v22;
        }

        while (v22);
      }

      v38 = v32;
      v18 = v78;
      v39 = v26;
      internalABP::SplitBoxes::reset(v78 + 13);
      *(v78 + 26) = v77;
      *(v78 + 27) = v77;
      v78[14] = v24;
      v78[15] = v39;
      if (v78[11])
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      v78[11] = v38;
      *(v78 + 24) = v77;
      *(v78 + 32) = 0;
      v27 = v79;
    }

    else
    {
      v27 = v79;
      if (v19 && *(v78 + 32))
      {
        internalABP::BoxManager::purgeRemovedFromSleeping(v78, v4);
        if (v9)
        {
          goto LABEL_54;
        }

        goto LABEL_75;
      }
    }

    if (v9)
    {
LABEL_54:
      v40 = internalABP::ABP_MM::frameAlloc(*v80, 4 * v9);
      v41 = internalABP::ABP_MM::frameAlloc(*v80, 4 * v9);
      v42 = v41;
      v82 = &unk_1F5D213E0;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
      v87 = 1;
      v83 = 0x80000000;
      memset(v88, 0, 512);
      if (v40 && v41)
      {
        *&v84 = v40;
        *(&v84 + 1) = v41;
        *&v85 = &v89;
        *(&v85 + 1) = v88;
        v87 = 0;
        v83 = 0x80000000;
      }

      v43 = *(physx::Cm::RadixSort::Sort(&v82, v7, v9) + 2);
      if (internalABP::SplitBoxes::allocate((v18 + 8), v9))
      {
        if (v18[6])
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

        v18[6] = v7;
      }

      else
      {
        if (v7)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
        }

        v7 = v18[6];
      }

      v44 = v18[9];
      v45 = 6;
      v46 = v9;
      do
      {
        *(v44 + 8 * v46++) = -1;
        --v45;
      }

      while (v45);
      v47 = *v18;
      v48 = v18[10];
      v49.i64[0] = 0x80000000800000;
      v49.i64[1] = 0x80000000800000;
      v50 = vnegq_f32(v49);
      v51 = v9;
      do
      {
        v52 = *v43++;
        v53 = v8[(v5 + ~v52)];
        *v7++ = v53;
        *(v4 + 4 * v53) = v45 | v47;
        v54 = v27 + 24 * v53;
        v55 = (v81 + 4 * v53);
        v56 = vld1q_dup_f32(v55);
        v57 = vsubq_f32(*v54, v56);
        v58 = vaddq_f32(*(v54 + 12), v56);
        v50 = vminq_f32(v50, v57);
        v49 = vmaxq_f32(v49, v58);
        v59 = vzip1_s32(*v57.f32, *v58.f32);
        *(v44 + v45) = vbsl_s8(vcltz_s32(v59), vmvn_s8(v59), vneg_f32(vabs_f32(v59)));
        *v48++ = vzip2q_s32(vzip1q_s32(v57, v58), vtrn1q_s32(v57, v58));
        v45 += 8;
        --v51;
      }

      while (v51);
      v50.i32[3] = v49.i32[0];
      *(v18 + 3) = v50;
      v18[5] = vextq_s8(v49, v49, 4uLL).u64[0];
      internalABP::ABP_MM::frameFree(*v80, v42);
      result = internalABP::ABP_MM::frameFree(*v80, v40);
LABEL_79:
      *(v18 + 14) = v9;
      *(v18 + 15) = v9;
      if (v8)
      {
        return internalABP::ABP_MM::frameFree(*v80, v8);
      }

      return result;
    }

LABEL_75:
    if (v7)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
    }

    result = internalABP::SplitBoxes::reset(v18 + 8);
    if (v18[6])
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v18[6] = 0;
    }

    goto LABEL_79;
  }

  if (*(result + 32))
  {

    return internalABP::BoxManager::purgeRemovedFromSleeping(result, v2);
  }

  return result;
}

uint64_t internalABP::ABP_PairManager::addPair(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 48);
  v4 = *(*(this + 56) + 4 * a2);
  v5 = *(*(this + 64) + 4 * a3);
  v6 = *(v3 + 4 * v4);
  v7 = *(v3 + 4 * v5);
  if (v6 != v7)
  {
    v8 = this;
    if (*(*(this + 80) + (v7 & 3 | (4 * (v6 & 3)))) == 1)
    {
      if (v4 >= v5)
      {
        v9 = *(*(this + 64) + 4 * a3);
      }

      else
      {
        v9 = *(*(this + 56) + 4 * a2);
      }

      if (v4 <= v5)
      {
        v10 = *(*(this + 64) + 4 * a3);
      }

      else
      {
        v10 = *(*(this + 56) + 4 * a2);
      }

      v11 = 9 * (((v9 | (v10 << 16)) + ~((v9 | (v10 << 16)) << 15)) ^ (((v9 | (v10 << 16)) + ~((v9 | (v10 << 16)) << 15)) >> 10));
      v12 = ((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) ^ (((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) >> 16);
      this = *(this + 4) & v12;
      v13 = *(v8 + 16);
      if (!v13 || (v14 = *(v13 + 4 * this), v14 == -1))
      {
LABEL_14:
        v17 = *(v8 + 8);
        if (v17 >= *v8)
        {
          this = physx::Bp::PairManagerData::growPairs(v8, v12);
          v17 = *(v8 + 8);
          v13 = *(v8 + 16);
        }

        *(v8 + 8) = v17 + 1;
        v18 = *(v8 + 24);
        v19 = (*(v8 + 32) + 8 * v17);
        *v19 = v9 | 0x80000000;
        v19[1] = v10;
        *(v18 + 4 * v17) = *(v13 + 4 * this);
        *(v13 + 4 * this) = v17;
      }

      else
      {
        while (1)
        {
          v15 = (*(v8 + 32) + 8 * v14);
          if ((*v15 & 0x7FFFFFFF) == v9)
          {
            v16 = v15[1];
            if ((v16 & 0x7FFFFFFF) == v10)
            {
              break;
            }
          }

          v14 = *(*(v8 + 24) + 4 * v14);
          if (v14 == -1)
          {
            goto LABEL_14;
          }
        }

        v15[1] = v16 | 0x80000000;
      }
    }
  }

  return this;
}

void *internalABP::ABP::Region_findOverlaps(internalABP::ABP *this, internalABP::ABP_PairManager *a2)
{
  v4 = *(this + 76);
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  internalABP::findAllOverlaps(this, a2, (this + 480), (this + 8), (this + 144), 1, 1);
  result = internalABP::findAllOverlaps(this, a2, (this + 480), (this + 8), (this + 344), v6, v5);
  v8 = *(this + 50);
  v9 = *(this + 60);
  v10 = *(this + 100);
  if (v8)
  {
    v11 = *(this + 110);
    if (v10)
    {
      result = internalABP::doBipartiteBoxPruning_Leaf(a2, *(this + 60), v8, v10, *(this + 27), *(this + 52), *(this + 28), *(this + 53), *(this + 24), *(this + 49));
    }

    if (v11)
    {
      result = internalABP::doBipartiteBoxPruning_Leaf(a2, *(this + 60), v8, v11, *(this + 27), *(this + 57), *(this + 28), *(this + 58), *(this + 24), *(this + 54));
    }
  }

  if (v10)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    return internalABP::doBipartiteBoxPruning_Leaf(a2, *(this + 60), v9, v10, *(this + 32), *(this + 52), *(this + 33), *(this + 53), *(this + 29), *(this + 49));
  }

  return result;
}

pthread_mutex_t ***internalABP::findAllOverlaps(pthread_mutex_t ***this, internalABP::ABP_MM *a2, internalABP::ABP_PairManager *a3, const internalABP::ABP_SharedData *a4, const internalABP::BoxManager *a5, const internalABP::BoxManager *a6, char a7)
{
  v7 = a7;
  v70 = *MEMORY[0x1E69E9840];
  v12 = *(a5 + 14);
  if (a6)
  {
    if (!v12)
    {
      if ((a7 & 1) == 0)
      {
        return this;
      }

      goto LABEL_37;
    }

    v13 = this;
    v14 = *a3;
    v15 = *(a5 + 24);
    v17 = *(a5 + 9);
    v16 = *(a5 + 10);
    if (v15)
    {
      internalABP::doBipartiteBoxPruning_Leaf(a2, v14, v12, v15, v17, *(a5 + 14), v16, *(a5 + 15), *(a5 + 6), *(a5 + 11));
    }

    v60 = v14;
    v18 = *(a5 + 6);
    if (v12 < 0x1389)
    {
      this = internalABP::doCompleteBoxPruning_Leaf(a2, v12, v17, v16, *(a5 + 6), v60);
      if ((v7 & 1) == 0)
      {
        return this;
      }

      goto LABEL_31;
    }

    v59 = internalABP::ABP_MM::frameAlloc(*v13, 8 * v12 + 240);
    v58 = internalABP::ABP_MM::frameAlloc(*v13, 16 * v12);
    v19 = vadd_f32(*(a5 + 40), *(a5 + 28));
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v20 = vmul_f32(v19, 0x3F0000003F000000);
    v57 = internalABP::ABP_MM::frameAlloc(*v13, 4 * v12);
    v21 = internalABP::ABP_MM::frameAlloc(*v13, v12);
    v22 = 0;
    v23 = (v16 + 8);
    do
    {
      v24 = vcgt_f32(v23[-1], v20);
      v25 = vcgt_f32(v20, *v23);
      if (v25.i8[0])
      {
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      if (v24.i8[4])
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      if (v25.i8[4])
      {
        v28 = 8;
      }

      else
      {
        v28 = 0;
      }

      v29 = internalABP::gCodes[v27 & 0xFFFFFFFFFFFFFFFELL | v24.i8[0] & 1 | v28 | v26];
      *(v21 + v22) = v29;
      ++*(&v67 + v29);
      ++v22;
      v23 += 2;
    }

    while (v12 != v22);
    v30 = 0;
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    *v64 = 0;
    memset(v63, 0, sizeof(v63));
    v62 = 0;
    v32 = v58;
    v31 = v59;
    v33 = v57;
    memset(v61, 0, sizeof(v61));
    do
    {
      v34 = *(&v67 + v30);
      *(v65 + v30) = v31;
      *(v63 + v30) = v32;
      *(v61 + v30) = v33;
      v31 += 8 * (v34 + 6);
      v32 += 16 * v34;
      v33 += 4 * v34;
      ++v30;
    }

    while (v30 != 5);
    v35 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    do
    {
      v36 = *(v21 + v35);
      v37 = *(&v67 + v36);
      *(&v67 + v36) = v37 + 1;
      v38 = *(v65 + v36);
      v39 = *(v63 + v36);
      *(*(v61 + v36) + 4 * v37) = *(v18 + 4 * v35);
      *(v38 + 8 * v37) = *(v17 + 8 * v35);
      *(v39 + 16 * v37) = *(v16 + 16 * v35++);
    }

    while (v12 != v35);
    internalABP::ABP_MM::frameFree(*v13, v21);
    for (i = 0; i != 5; ++i)
    {
      v41 = *(v65 + i);
      v42 = *(&v67 + i);
      v43 = 6;
      do
      {
        *(v41 + 8 * v42++) = -1;
        --v43;
      }

      while (v43);
    }

    v54 = v13;
    v55 = v7;
    v56 = a4;
    for (j = 0; j != 5; ++j)
    {
      internalABP::doCompleteBoxPruning_Leaf(a2, *(&v67 + j), *(v65 + j), *(v63 + j), *(v61 + j), v60);
    }

    v45 = 0;
    v46 = v69;
    v47 = v66;
    v48 = *v64;
    v49 = v62;
    do
    {
      internalABP::doBipartiteBoxPruning_Leaf(a2, v60, *(&v67 + v45), v46, *(v65 + v45), v47, *(v63 + v45), v48, *(v61 + v45), v49);
      ++v45;
    }

    while (v45 != 4);
    internalABP::ABP_MM::frameFree(*v54, v57);
    internalABP::ABP_MM::frameFree(*v54, v58);
    this = internalABP::ABP_MM::frameFree(*v54, v59);
    a4 = v56;
    v7 = v55;
  }

  if ((v7 & 1) == 0)
  {
    return this;
  }

LABEL_31:
  if (v12)
  {
    v50 = *(a4 + 14);
    if (v50)
    {
      this = internalABP::doBipartiteBoxPruning_Leaf(a2, *a3, v12, v50, *(a5 + 9), *(a4 + 9), *(a5 + 10), *(a4 + 10), *(a5 + 6), *(a4 + 6));
    }

    v51 = *(a4 + 24);
    if (v51)
    {
      this = internalABP::doBipartiteBoxPruning_Leaf(a2, *a3, v12, v51, *(a5 + 9), *(a4 + 14), *(a5 + 10), *(a4 + 15), *(a5 + 6), *(a4 + 11));
    }
  }

LABEL_37:
  v52 = *(a4 + 14);
  if (v52)
  {
    v53 = *(a5 + 24);
    if (v53)
    {
      return internalABP::doBipartiteBoxPruning_Leaf(a2, *a3, v53, v52, *(a5 + 14), *(a4 + 9), *(a5 + 15), *(a4 + 10), *(a5 + 11), *(a4 + 6));
    }
  }

  return this;
}

double internalABP::ABP::ABP(internalABP::ABP *this)
{
  *this = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 36) = 2;
  *(this + 152) = 0u;
  *(this + 60) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 12) = 0u;
  *(this + 33) = 0;
  *(this + 68) = 0;
  *(this + 248) = 0u;
  *(this + 41) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 336) = 1;
  *(this + 72) = 0x80000000;
  *(this + 35) = &unk_1F5D21400;
  *(this + 86) = 1;
  *(this + 22) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 0;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 28) = 0u;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 64) = 0;
  *(this + 130) = 0;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 142) = 0;
  *(this + 70) = 0;
  *(this + 34) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 76) = 0;
  return result;
}

unsigned int *internalABP::ABP::preallocate(internalABP::ABP *this, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    if (*(this + 60))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(this + 60) = 0;
    v6 = physx::shdfnd::ReflectionAllocator<internalABP::ABP_Object>::allocate(&v8, 4 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 2858);
    memset(v6, 255, 4 * a2);
    *(this + 60) = v6;
    *(this + 122) = a2;
  }

  return physx::Bp::PairManagerData::reserveMemory(this + 132, a3);
}

unsigned int *physx::Bp::PairManagerData::reserveMemory(unsigned int *this, unsigned int a2)
{
  if (a2)
  {
    if ((a2 & (a2 - 1)) != 0)
    {
      v2 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
      v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
      a2 = (v3 | HIWORD(v3)) + 1;
    }

    *this = a2;
    this[1] = a2 - 1;
    this[10] = a2;
    return physx::Bp::PairManagerData::reallocPairs(this);
  }

  return this;
}

unsigned int *internalABP::ABP::addStaticObjects(internalABP::ABP *this, unsigned int *a2, int a3, int a4)
{
  if (*(this + 122) < (a4 + 1))
  {
    internalABP::ABP_SharedData::resize((this + 480), a4);
  }

  return internalABP::BoxManager::addObjects(this + 2, a2, a3, 0);
}

unsigned int *internalABP::ABP::addDynamicObjects(internalABP::ABP *this, unsigned int *a2, int a3, unsigned int a4)
{
  if (*(this + 122) < a4 + 1)
  {
    internalABP::ABP_SharedData::resize((this + 480), a4);
  }

  if (*(this + 126) <= a4 >> 5)
  {
    internalABP::BitArray::resize((this + 496), a4);
  }

  return internalABP::BoxManager::addObjects(this + 36, a2, a3, this + 480);
}

unsigned int *internalABP::ABP::addKinematicObjects(internalABP::ABP *this, unsigned int *a2, int a3, unsigned int a4)
{
  if (*(this + 122) < a4 + 1)
  {
    internalABP::ABP_SharedData::resize((this + 480), a4);
  }

  if (*(this + 126) <= a4 >> 5)
  {
    internalABP::BitArray::resize((this + 496), a4);
  }

  return internalABP::BoxManager::addObjects(this + 86, a2, a3, this + 480);
}

unsigned int *internalABP::ABP_PairManager::computeCreatedDeletedPairs(internalABP::ABP_PairManager *this, physx::Bp::BroadPhaseABP *a2, const internalABP::BitArray *a3, const internalABP::BitArray *a4)
{
  v5 = *(this + 2);
  if (v5)
  {
    v9 = 0;
    do
    {
      v10 = (*(this + 4) + 8 * v9);
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        v19 = v11 & 0x7FFFFFFF;
        v20 = v10[1] & 0x7FFFFFFF;
        if ((v11 & 0x7FFFFFFF) >= v20)
        {
          v21 = v10[1] & 0x7FFFFFFF;
        }

        else
        {
          v21 = v11 & 0x7FFFFFFF;
        }

        if (v19 <= v20)
        {
          v19 = v10[1] & 0x7FFFFFFF;
        }

        v26 = __PAIR64__(v19, v21);
        v22 = *(a2 + 6);
        if ((*(a2 + 7) & 0x7FFFFFFFu) <= v22)
        {
          physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::growAndPushBack(a2 + 16, &v26);
        }

        else
        {
          *(*(a2 + 2) + 8 * v22) = v26;
          ++*(a2 + 6);
        }

        *v10 &= 0x7FFFFFFF7FFFFFFFuLL;
      }

      else
      {
        v12 = v10[1];
        if ((v12 & 0x80000000) != 0)
        {
          v10[1] = v12 & 0x7FFFFFFF;
        }

        else
        {
          v13 = v11 >> 5;
          v14 = *(a3 + 2);
          if (*v10 >> 5 < v14 && ((*(*a3 + 4 * v13) >> v11) & 1) != 0 || v10[1] >> 5 < v14 && ((*(*a3 + 4 * (v12 >> 5)) >> v12) & 1) != 0)
          {
            v15 = *(a4 + 2);
            if ((v13 >= v15 || ((*(*a4 + 4 * v13) >> v11) & 1) == 0) && (v10[1] >> 5 >= v15 || ((*(*a4 + 4 * (v12 >> 5)) >> v12) & 1) == 0))
            {
              if (v11 >= v12)
              {
                v16 = v10[1];
              }

              else
              {
                v16 = *v10;
              }

              if (v11 <= v12)
              {
                v17 = v10[1];
              }

              else
              {
                v17 = *v10;
              }

              v26 = __PAIR64__(v17, v16);
              v18 = *(a2 + 10);
              if ((*(a2 + 11) & 0x7FFFFFFFu) <= v18)
              {
                physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::growAndPushBack(a2 + 32, &v26);
              }

              else
              {
                *(*(a2 + 4) + 8 * v18) = v26;
                ++*(a2 + 10);
              }
            }

            v23 = 9 * (((v11 | (v12 << 16)) + ~((v11 | (v12 << 16)) << 15)) ^ (((v11 | (v12 << 16)) + ~((v11 | (v12 << 16)) << 15)) >> 10));
            v24 = (v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11);
            physx::Bp::PairManagerData::removePair(this, a2, a3, *(this + 1) & (v24 ^ HIWORD(v24)), v9);
            --v5;
            continue;
          }
        }
      }

      ++v9;
    }

    while (v9 < v5);
  }

  return physx::Bp::PairManagerData::shrinkMemory(this);
}

uint64_t physx::Bp::PairManagerData::removePair(uint64_t this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = *(this + 16);
  v5 = *(this + 24);
  v7 = (v6 + 4 * a4);
  v8 = *v7;
  if (*v7 != a5)
  {
    do
    {
      v9 = v8;
      v8 = *(v5 + 4 * v8);
    }

    while (v8 != a5);
    if (v9 != -1)
    {
      v7 = (v5 + 4 * v9);
    }
  }

  *v7 = *(v5 + 4 * a5);
  v10 = *(this + 8) - 1;
  if (v10 != a5)
  {
    v11 = *(this + 32);
    v12 = *(v11 + 8 * v10) | (*(v11 + 8 * v10 + 4) << 16);
    v13 = 9 * ((v12 + ~(v12 << 15)) ^ ((v12 + ~(v12 << 15)) >> 10));
    v14 = (v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11);
    v15 = (v14 ^ HIWORD(v14)) & *(this + 4);
    v16 = (v6 + 4 * v15);
    v17 = *v16;
    if (*v16 != v10)
    {
      do
      {
        v18 = v17;
        v17 = *(v5 + 4 * v17);
      }

      while (v17 != v10);
      if (v18 != -1)
      {
        v16 = (v5 + 4 * v18);
      }
    }

    *v16 = *(v5 + 4 * v10);
    *(v11 + 8 * a5) = *(v11 + 8 * v10);
    v19 = *(this + 16);
    *(*(this + 24) + 4 * a5) = *(v19 + 4 * v15);
    *(v19 + 4 * v15) = a5;
    a5 = *(this + 8) - 1;
  }

  *(this + 8) = a5;
  return this;
}

unsigned int *physx::Bp::PairManagerData::shrinkMemory(unsigned int *this)
{
  v1 = this[2] | (this[2] >> 1);
  v2 = v1 | (v1 >> 2) | ((v1 | (v1 >> 2)) >> 4);
  v3 = v2 | (v2 >> 8) | ((v2 | (v2 >> 8)) >> 16);
  v4 = v3 + 1;
  if (*this != v3 + 1 && v4 >= this[10])
  {
    *this = v4;
    this[1] = v3;
    return physx::Bp::PairManagerData::reallocPairs(this);
  }

  return this;
}

uint64_t physx::Bp::PairManagerData::purge(uint64_t this)
{
  v1 = this;
  if (*(this + 24))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(v1 + 24) = 0;
  }

  if (*(v1 + 32))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(v1 + 16) = 0;
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  return this;
}

physx::Bp::BroadPhaseABP *physx::Bp::BroadPhaseABP::BroadPhaseABP(physx::Bp::BroadPhaseABP *this, unsigned int a2, int a3, int a4)
{
  *this = &unk_1F5D1CEB0;
  *(this + 1) = 0u;
  v8 = this + 16;
  *(this + 2) = 0u;
  v9 = this + 32;
  *(this + 3) = 0u;
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<internalABP::ABP>::getName() [T = internalABP::ABP]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 616, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 3102);
  internalABP::ABP::ABP(v12);
  *(this + 1) = v13;
  internalABP::ABP::preallocate(v13, a4 + a3, a2);
  if ((*(this + 7) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v8, 0x400u);
  }

  if ((*(this + 11) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v9, 0x400u);
  }

  return this;
}

void physx::Bp::BroadPhaseABP::~BroadPhaseABP(physx::Bp::BroadPhaseABP *this)
{
  *this = &unk_1F5D1CEB0;
  v2 = *(this + 1);
  if (v2)
  {
    internalABP::BoxManager::reset((v2 + 8));
    internalABP::BoxManager::reset((v2 + 144));
    internalABP::BoxManager::reset((v2 + 344));
    if (*(v2 + 480))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 480) = 0;
    *(v2 + 488) = 0;
    physx::Bp::PairManagerData::purge(v2 + 528);
    if (*(v2 + 496))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 496) = 0;
    *(v2 + 504) = 0;
    if (*(v2 + 512))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 512) = 0;
    *(v2 + 520) = 0;
    physx::Bp::PairManagerData::purge(v2 + 528);
    if (*(v2 + 512))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 512) = 0;
    *(v2 + 520) = 0;
    if (*(v2 + 496))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 496) = 0;
    *(v2 + 504) = 0;
    internalABP::BoxManager::~BoxManager((v2 + 344));
    *(v2 + 280) = &unk_1F5D21400;
    physx::Cm::RadixSortBuffered::reset(v2 + 280);
    internalABP::BoxManager::~BoxManager((v2 + 144));
    internalABP::BoxManager::~BoxManager((v2 + 8));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 11);
  if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *(this + 4) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v5 = *(this + 7);
  if ((v5 & 0x80000000) == 0 && (v5 & 0x7FFFFFFF) != 0 && *(this + 2) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

{
  physx::Bp::BroadPhaseABP::~BroadPhaseABP(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void physx::Bp::BroadPhaseABP::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  **(a1 + 8) = a3;
  if (a6)
  {
    (*(*a6 + 40))(a6);
  }

  physx::Bp::BroadPhaseABP::setUpdateData(a1, a4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 56);
  v8[72] = *(a1 + 48);
  v8[76] = v9;
  internalABP::ABP::Region_findOverlaps(v8, (v8 + 66));
  v10 = *(a1 + 8);
  internalABP::ABP_PairManager::computeCreatedDeletedPairs((v10 + 132), a1, (v10 + 124), (v10 + 128));
  v11 = *(v10 + 62);
  v12 = (4 * v10[126]);

  bzero(v11, v12);
}

void physx::Bp::BroadPhaseABP::setUpdateData(uint64_t a1, uint64_t a2)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a2 + 48);
  v6 = *(a2 + 72);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 152) = v5;
  *(v4 + 160) = v6;
  *(v4 + 352) = v5;
  *(v4 + 360) = v6;
  v7 = *(a2 + 80);
  if (*(v4 + 488) < (v7 + 1))
  {
    internalABP::ABP_SharedData::resize((v4 + 480), v7);
  }

  *(a1 + 48) = *(a2 + 56);
  v41 = a2;
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 32);
    do
    {
      v11 = *v9++;
      v10 = v11;
      v12 = *(a1 + 8);
      v13 = v11 >> 5;
      if (v13 >= *(v12 + 504))
      {
        internalABP::BitArray::resize((v12 + 496), v10);
      }

      *(*(v12 + 496) + 4 * v13) |= 1 << v10;
      if (v13 >= *(v12 + 520))
      {
        internalABP::BitArray::resize((v12 + 512), v10);
      }

      *(*(v12 + 512) + 4 * v13) |= 1 << v10;
      v14 = *(v12 + 480);
      v15 = *(v14 + 4 * v10);
      v16 = 144;
      if ((*(v14 + 4 * v10) & 3) == 1)
      {
        v16 = 344;
      }

      if ((v15 & 3) == 0)
      {
        v16 = 8;
      }

      v17 = v12 + v16;
      v18 = v15 >> 3;
      if ((v15 & 4) != 0)
      {
        *(*(v17 + 88) + 4 * v18) = -1;
        ++*(v17 + 128);
      }

      else
      {
        *(*(v17 + 48) + 4 * v18) = -1;
      }

      *(v14 + 4 * v10) = -1;
      --v8;
    }

    while (v8);
  }

  v19 = *(v41 + 8);
  if (v19)
  {
    v20 = *v41;
    v21 = *(v41 + 56);
    *v46 = 0;
    *v44 = 0;
    *v42 = 0;
    v48[2] = v44;
    v48[3] = v44;
    v48[0] = v46;
    v48[1] = v42;
    do
    {
      v23 = *v20++;
      v22 = v23;
      v24 = *(v21 + 4 * v23) & 3;
      v25 = v48[v24];
      v26 = *(a1 + 8);
      v27 = *v25;
      if (v25[1] <= v23)
      {
        v28 = v22;
      }

      else
      {
        v28 = v25[1];
      }

      v25[1] = v28;
      v29 = v25 + 2;
      v25[v27 + 2] = v22;
      if (v27 == 127)
      {
        *v25 = 0;
        if (v24 == 1)
        {
          internalABP::ABP::addKinematicObjects(v26, v29, 128, v28);
        }

        else if (v24)
        {
          internalABP::ABP::addDynamicObjects(v26, v29, 128, v28);
        }

        else
        {
          internalABP::ABP::addStaticObjects(v26, v29, 128, v28);
        }

        v25[1] = 0;
      }

      else
      {
        *v25 = v27 + 1;
      }

      --v19;
    }

    while (v19);
    if (v46[0])
    {
      internalABP::ABP::addStaticObjects(*(a1 + 8), v47, v46[0], v46[1]);
    }

    if (v42[0])
    {
      internalABP::ABP::addKinematicObjects(*(a1 + 8), v43, v42[0], v42[1]);
    }

    if (v44[0])
    {
      internalABP::ABP::addDynamicObjects(*(a1 + 8), v45, v44[0], v44[1]);
    }
  }

  v30 = *(v41 + 16);
  if (v30)
  {
    for (i = *(v41 + 24); i; --i)
    {
      v33 = *v30++;
      v32 = v33;
      v34 = *(a1 + 8);
      v35 = v33 >> 5;
      if (v35 >= *(v34 + 504))
      {
        internalABP::BitArray::resize((v34 + 496), v32);
      }

      *(*(v34 + 496) + 4 * v35) |= 1 << v32;
      v36 = *(*(v34 + 480) + 4 * v32);
      if ((*(*(v34 + 480) + 4 * v32) & 3) == 1)
      {
        v37 = 344;
      }

      else
      {
        v37 = 144;
      }

      if ((v36 & 3) == 0)
      {
        v37 = 8;
      }

      v38 = v34 + v37;
      v46[0] = v32;
      v39 = v36 >> 3;
      if ((v36 & 4) != 0)
      {
        *(*(v38 + 88) + 4 * v39) = -1;
        ++*(v38 + 128);
        internalABP::BoxManager::addObjects(v38, v46, 1, 0);
      }

      else
      {
        *(*(v38 + 48) + 4 * v39) |= 0x80000000;
      }
    }
  }

  v40 = *(a1 + 8);
  if (v40[50] || v40[68] || v40[100] || v40[118] || v40[16] || v40[34])
  {
    if (v40[16] || v40[34])
    {
      internalABP::BoxManager::prepareData((v40 + 2));
    }

    internalABP::BoxManager::prepareData((v40 + 36));
    internalABP::BoxManager::prepareData((v40 + 86));

    physx::Cm::RadixSortBuffered::reset((v40 + 70));
  }
}

void physx::Bp::BroadPhaseABP::singleThreadedUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  **(a1 + 8) = a2;
  physx::Bp::BroadPhaseABP::setUpdateData(a1, a3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 56);
  v4[72] = *(a1 + 48);
  v4[76] = v5;
  internalABP::ABP::Region_findOverlaps(v4, (v4 + 66));
  v6 = *(a1 + 8);
  internalABP::ABP_PairManager::computeCreatedDeletedPairs((v6 + 132), a1, (v6 + 124), (v6 + 128));
  v7 = *(v6 + 62);
  v8 = (4 * v6[126]);

  bzero(v7, v8);
}

uint64_t physx::Bp::BroadPhaseABP::freeBuffers(physx::Bp::BroadPhaseABP *this)
{
  v2 = *(this + 1);
  if (*(v2 + 512))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(v2 + 512) = 0;
  *(v2 + 520) = 0;
  freeBuffer(this + 16);

  return freeBuffer(this + 32);
}

physx::Bp::BroadPhaseMBP *physx::Bp::BroadPhase::create(int a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  v12 = physx::shdfnd::Foundation::mInstance;
  v13 = (*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance);
  v15 = *(v12 + 24);
  v14 = v12 + 24;
  v16 = *(v15 + 16);
  if (a1 == 1)
  {
    if (v13)
    {
      v20 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhaseMBP>::getName() [T = physx::Bp::BroadPhaseMBP]";
    }

    else
    {
      v20 = "<allocation names disabled>";
    }

    v21 = v16(v14, 208, v20, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhase.cpp", 66);
    return physx::Bp::BroadPhaseMBP::BroadPhaseMBP(v21, a2, a3, a4, a5, a6);
  }

  else if (a1 == 2)
  {
    if (v13)
    {
      v17 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhaseABP>::getName() [T = physx::Bp::BroadPhaseABP]";
    }

    else
    {
      v17 = "<allocation names disabled>";
    }

    v18 = v16(v14, 64, v17, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseABP.cpp", 3401);
    return physx::Bp::BroadPhaseABP::BroadPhaseABP(v18, a3, a4, a5);
  }

  else
  {
    if (v13)
    {
      v22 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhaseSap>::getName() [T = physx::Bp::BroadPhaseSap]";
    }

    else
    {
      v22 = "<allocation names disabled>";
    }

    v23 = v16(v14, 688, v22, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhase.cpp", 68);
    return physx::Bp::BroadPhaseSap::BroadPhaseSap(v23, a3, a4, a5, a6);
  }
}

unsigned int *physx::Bp::PairManagerData::reallocPairs(unsigned int *this)
{
  v1 = this;
  if (*(this + 2))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(v1 + 2) = 0;
  }

  v2 = *v1;
  if (!v2)
  {
    v5 = 0;
    v7 = 0;
    *(v1 + 2) = 0;
    goto LABEL_11;
  }

  this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseShared.cpp", 83);
  v3 = *v1;
  *(v1 + 2) = this;
  if (!v3 || (this = memset(this, 255, 4 * v3), v4 = *v1, !v4))
  {
    v5 = 0;
    goto LABEL_9;
  }

  this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseShared.cpp", 87);
  v5 = this;
  v6 = *v1;
  if (!v6)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_11;
  }

  this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseShared.cpp", 88);
  v7 = this;
LABEL_11:
  v8 = v1[2];
  if (v8)
  {
    this = memcpy(v5, *(v1 + 4), 8 * v8);
    if (v1[2])
    {
      v9 = 0;
      v10 = *(v1 + 2);
      v11 = (*(v1 + 4) + 4);
      do
      {
        v12 = *(v11 - 2);
        v13 = *v11;
        v11 += 2;
        v14 = (v12 | (v13 << 16)) + ~((v12 | (v13 << 16)) << 15);
        v15 = (9 * (v14 ^ (v14 >> 10))) ^ ((9 * (v14 ^ (v14 >> 10))) >> 6);
        v16 = ((v15 + ~(v15 << 11)) ^ ((v15 + ~(v15 << 11)) >> 16)) & v1[1];
        v7[v9] = *(v10 + 4 * v16);
        *(v10 + 4 * v16) = v9++;
      }

      while (v9 < v1[2]);
    }
  }

  if (*(v1 + 3))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(v1 + 3) = 0;
  }

  if (*(v1 + 4))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(v1 + 3) = v7;
  *(v1 + 4) = v5;
  return this;
}

uint64_t physx::Bp::PairManagerData::growPairs(physx::Bp::PairManagerData *this, unsigned int a2)
{
  v4 = (*(this + 2) + 1) | ((*(this + 2) + 1) >> 1);
  v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
  v6 = v5 | (v5 >> 8) | ((v5 | (v5 >> 8)) >> 16);
  *this = v6 + 1;
  *(this + 1) = v6;
  physx::Bp::PairManagerData::reallocPairs(this);
  return *(this + 1) & a2;
}

uint64_t physx::Bp::BroadPhaseABP::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void *internalABP::doCompleteBoxPruning_Leaf(void *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  this[7] = a5;
  this[8] = a5;
  this[9] = a6;
  if (a2)
  {
    v9 = this;
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = a2;
    do
    {
      v13 = *(a3 + 8 * v10 + 4);
      do
      {
        v14 = 8 * v11;
        v11 = (v11 + 1);
      }

      while (*(a3 + v14) < *(a3 + 8 * v10));
      if (*(a3 + 8 * v11) <= v13)
      {
        v15 = (a4 + 16 * v10);
        v16 = v11;
        v17 = v11;
        do
        {
          v18 = (a4 + 16 * v16);
          v19.i64[0] = *v15;
          v20.i64[0] = v18[1];
          v20.i64[1] = v15[1];
          v19.i64[1] = *v18;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v19, v20))) & 1) == 0)
          {
            this = internalABP::ABP_PairManager::addPair(v9, v10, v17);
          }

          v16 = ++v17;
        }

        while (*(a3 + 8 * v16) <= v13);
      }

      ++v10;
    }

    while (v10 < v12 && v11 < a2);
  }

  return this;
}

void *internalABP::doBipartiteBoxPruning_Leaf(void *this, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = this;
  this[7] = a9;
  this[8] = a10;
  this[9] = a2;
  if (a3 && a4)
  {
    v15 = 0;
    for (i = 0; i < a4; --i)
    {
      v17 = *(a5 + 8 * v15 + 4);
      v18 = i + 1;
      do
      {
        v19 = i;
        v20 = v18;
        v21 = *(a6 + 8 * i++);
        ++v18;
      }

      while (v21 < *(a5 + 8 * v15));
      if (v21 <= v17)
      {
        v22 = v19;
        v23 = (a7 + 16 * v15);
        do
        {
          v24 = (a8 + 16 * v22);
          v25.i64[0] = *v23;
          v26.i64[0] = v24[1];
          v26.i64[1] = v23[1];
          v25.i64[1] = *v24;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v25, v26))) & 1) == 0)
          {
            this = internalABP::ABP_PairManager::addPair(v10, v15, v20 - 1);
          }

          v22 = v20;
          v27 = *(a6 + 8 * v20++);
        }

        while (v27 <= v17);
      }

      if (++v15 >= a3)
      {
        break;
      }
    }

    v28 = 0;
    v29 = 0;
    v10[7] = a10;
    v10[8] = a9;
    v10[9] = a2;
    do
    {
      v30 = *(a6 + 8 * v28 + 4);
      v31 = v29 + 1;
      do
      {
        v32 = v29;
        v33 = v31;
        v34 = *(a5 + 8 * v29++);
        ++v31;
      }

      while (v34 <= *(a6 + 8 * v28));
      if (v34 <= v30)
      {
        v35 = v32;
        v36 = (a8 + 16 * v28);
        do
        {
          v37 = (a7 + 16 * v35);
          v38.i64[0] = *v36;
          v39.i64[0] = v37[1];
          v39.i64[1] = v36[1];
          v38.i64[1] = *v37;
          if ((vmaxv_u16(vmovn_s32(vcgtq_f32(v38, v39))) & 1) == 0)
          {
            this = internalABP::ABP_PairManager::addPair(v10, v28, v33 - 1);
          }

          v35 = v33;
          v40 = *(a5 + 8 * v33++);
        }

        while (v40 <= v30);
      }

      if (++v28 >= a4)
      {
        break;
      }

      --v29;
    }

    while (v29 < a3);
  }

  else
  {
    this[7] = a10;
    this[8] = a9;
  }

  return this;
}