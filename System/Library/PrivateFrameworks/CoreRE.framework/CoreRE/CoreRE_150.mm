uint64_t re::mergeDiscreteFaceVaryingAttributeValues(re *this, re::GeomMesh *a2, const char *a3)
{
  v10 = this;
  v375 = *MEMORY[0x1E69E9840];
  v11 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v13 = v11;
  v14 = v11[17];
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      if (v14 == 9)
      {
        result = (*(*v11 + 16))(v11);
        if (!result)
        {
          return result;
        }

        v351 = 0;
        v348 = 0;
        v349 = 0;
        v346 = 0;
        v347 = 0;
        v350 = 0;
        v343 = 0;
        v344 = 0;
        v342 = 0;
        v345 = 0;
        v59 = (*(*v13 + 16))(v13);
        if (v59)
        {
          LODWORD(v17) = v59;
          v60 = re::GeomAttribute::accessValues<int>(v13);
          if (!v61)
          {
            goto LABEL_681;
          }

          v3 = v60;
          v349 = 0;
          v350 = 1;
          v344 = 0;
          v345 = 1;
          v17 = v17;
          re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
          LOBYTE(v370) = 0;
          re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
          *&v364[2] = 0;
          memset(v362, 0, sizeof(v362));
          re::DynamicArray<float>::resize(v362, v17);
          v62 = 0;
          v4 = *&v362[16];
          v63 = *&v364[2];
          do
          {
            if (v4 == v62)
            {
              goto LABEL_585;
            }

            *(v63 + 4 * v62) = v62;
            ++v62;
          }

          while (v17 != v62);
          *&v370 = v3;
          if (!*&v362[16])
          {
            goto LABEL_687;
          }

          v6 = **&v364[2];
          v4 = v344;
          v64 = v353;
          if (v344 <= v6)
          {
            goto LABEL_693;
          }

          v5 = 0;
          v65 = *(v3 + v6);
          v346[v6] = 1;
          do
          {
            v4 = *&v362[16];
            if (*&v362[16] <= v5)
            {
              goto LABEL_591;
            }

            v4 = *(*&v364[2] + 4 * v5);
            v66 = *(v3 + v4);
            if (v66 != v65)
            {
              v6 = v344;
              if (v344 <= v4)
              {
                goto LABEL_645;
              }

              v346[v4] = 1;
              v6 = v4;
              v65 = v66;
            }

            v7 = v349;
            if (v349 <= v4)
            {
              goto LABEL_597;
            }

            *(v351 + 4 * v4) = v6;
            ++v5;
          }

          while (v17 != v5);
          if (*v362 && *&v364[2])
          {
            (*(**v362 + 40))();
          }
        }

        *&v364[2] = 0;
        memset(v362, 0, sizeof(v362));
        *&v361[2] = 0;
        memset(v359, 0, sizeof(v359));
        v67 = (*(*v13 + 16))(v13);
        v68 = v67;
        if (v67)
        {
          v3 = v344;
          if (v344 <= v67 - 1)
          {
            goto LABEL_699;
          }

          LODWORD(v69) = 0;
          v70 = v346;
          v3 = v67;
          v71 = v67;
          do
          {
            v72 = *v70++;
            v69 = (v69 + v72);
            --v71;
          }

          while (v71);
        }

        else
        {
          v3 = 0;
          v69 = 0;
        }

        v17 = re::GeomAttribute::accessValues<int>(v13);
        v6 = v122;
        re::DynamicArray<BOOL>::resize(v362, v69);
        re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
        v124 = v353;
        if (!v68)
        {
LABEL_203:
          v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v123);
          v3 = *&v362[16];
          v8 = *(v17 + 24);
          v4 = v8;
          *&v358[2] = 0;
          memset(v356, 0, sizeof(v356));
          re::DynamicArray<re::GeomCell4>::resize(v356, v8);
          v129 = v353;
          if (!v8)
          {
            goto LABEL_213;
          }

          v130 = 0;
          v5 = *&v356[16];
          v131 = *&v358[2];
          v6 = *(v17 + 24);
          v132 = *(v17 + 40);
          v9 = *&v359[16];
          while (1)
          {
            if (v130 == v5)
            {
              goto LABEL_612;
            }

            if (v130 == v6)
            {
              goto LABEL_618;
            }

            v133 = 0;
            *v365 = *(v132 + 16 * v130);
            v134 = *&v361[2];
            if (*&v365[12] == -1)
            {
              v135 = 3;
            }

            else
            {
              v135 = 4;
            }

            do
            {
              v7 = *&v365[4 * v133];
              if (v9 <= v7)
              {
                v338 = 0;
                v373 = 0u;
                v374 = 0u;
                v371 = 0u;
                v372 = 0u;
                v370 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 789;
                *&v353[18] = 2048;
                *&v353[20] = v7;
                v354 = 2048;
                *v355 = v9;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_387:
                v338 = 0;
                v168[18] = 0u;
                v168[19] = 0u;
                v168[16] = 0u;
                v168[17] = 0u;
                v168[15] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 789;
                *&v353[18] = 2048;
                *&v353[20] = v7;
                v354 = 2048;
                *v355 = v9;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_388:
                v338 = 0;
                v111[18] = 0u;
                v111[19] = 0u;
                v111[16] = 0u;
                v111[17] = 0u;
                v111[15] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 789;
                *&v353[18] = 2048;
                *&v353[20] = v7;
                v354 = 2048;
                *v355 = v9;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_389:
                v338 = 0;
                v150[18] = 0u;
                v150[19] = 0u;
                v150[16] = 0u;
                v150[17] = 0u;
                v150[15] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 789;
                *&v353[18] = 2048;
                *&v353[20] = v7;
                v354 = 2048;
                *v355 = v9;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_390:
                v338 = 0;
                v189[18] = 0u;
                v189[19] = 0u;
                v189[16] = 0u;
                v189[17] = 0u;
                v189[15] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 789;
                *&v353[18] = 2048;
                *&v353[20] = v7;
                v354 = 2048;
                *v355 = v9;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_391;
              }

              *(v131 + 4 * v133++) = *(v134 + 4 * v7);
            }

            while (v135 != v133);
            ++v130;
            v131 += 16;
            if (v130 == v8)
            {
LABEL_213:
              if (*(v17 + 48))
              {
                v136 = *(v17 + 60) == 0;
              }

              else
              {
                v136 = 1;
              }

              if (v136 && *(v10 + 10) == v8)
              {
                re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
              }

              else
              {
                *&v355[2] = 0;
                memset(v353, 0, sizeof(v353));
                re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
                v139 = *(v17 + 60);
                if (v139 == 2)
                {
                  v4 = v17 + 64;
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
                  LOBYTE(v338) = 2;
                  v240 = *(v17 + 60);
                  if (!*(v17 + 60))
                  {
                    goto LABEL_410;
                  }

                  if (v240 == 2)
                  {
                    LOBYTE(v335) = 2;
                    v336 = v17 + 64;
                    v337 = xmmword_1E3049610;
                    goto LABEL_483;
                  }

                  if (v240 != 1)
                  {
                    goto LABEL_712;
                  }

                  v221 = *(v17 + 48);
                }

                else
                {
                  if (v139 != 1)
                  {
                    if (!*(v17 + 60))
                    {
                      LOBYTE(v338) = 0;
                      LODWORD(v339) = 0;
LABEL_410:
                      v241 = *(v17 + 64);
                      LOBYTE(v335) = 0;
                      LODWORD(v336) = v241;
                      goto LABEL_483;
                    }

LABEL_707:
                    re::internal::assertLog(4, v138, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
                    _os_crash();
                    __break(1u);
                    goto LABEL_708;
                  }

LABEL_392:
                  v221 = *(v17 + 48);
                  if (v221)
                  {
                    v222 = *(v17 + 96);
                    v223 = *(v17 + 52);
                    v224 = *(v17 + 80);
                    v225 = v222 + 4 * v224;
                    LOBYTE(v338) = 1;
                    if (v222)
                    {
                      v226 = v222 + 4 * v223;
                      if (v224 != v223)
                      {
                        v226 -= 4;
                        v227 = 4 * v224 - 4 * v223;
                        do
                        {
                          v229 = *(v226 + 4);
                          v226 += 4;
                          v228 = v229;
                          if (!v227)
                          {
                            break;
                          }

                          v227 -= 4;
                        }

                        while (v228 == -1);
                      }
                    }

                    else
                    {
                      v226 = 0;
                    }

                    v339 = v222;
                    v340 = v226;
                    v341 = v225;
                  }

                  else
                  {
                    LOBYTE(v338) = 1;
                    v340 = 0;
                    v341 = 0;
                    v339 = 0;
                  }
                }

                if (v221)
                {
                  v293 = *(v17 + 96);
                  v294 = v293 + 4 * *(v17 + 80);
                  LOBYTE(v335) = 1;
                  v336 = v293;
                  *&v337 = v294;
                  *(&v337 + 1) = v294;
                }

                else
                {
                  LOBYTE(v335) = 1;
                  v337 = 0uLL;
                  v336 = 0;
                }

LABEL_483:
                while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
                {
                  v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v297);
                  v296 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v295);
                  v4 = v296;
                  v5 = *&v353[16];
                  if (*&v353[16] <= v296)
                  {
                    goto LABEL_666;
                  }

                  *(*&v355[2] + 4 * v296) = HIDWORD(v17);
                  re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
                }

                re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v297);
                re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v298);
                re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
                if (*v353 && *&v355[2])
                {
                  (*(**v353 + 40))(*v353, *&v355[2]);
                }
              }

              if (!(*(*v13 + 16))(v13))
              {
                goto LABEL_490;
              }

              if (!*(v13 + 5))
              {
                goto LABEL_672;
              }

              v299 = *(v13 + 7);
              if (!(*(*v13 + 16))(v13))
              {
LABEL_490:
                *v365 = 0;
                v10 = v353;
                v373 = 0u;
                v374 = 0u;
                v371 = 0u;
                v372 = 0u;
                v370 = 0u;
                v13 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v353 = 136315906;
                *&v353[4] = "operator[]";
                *&v353[12] = 1024;
                *&v353[14] = 621;
                *&v353[18] = 2048;
                *&v353[20] = 0;
                v354 = 2048;
                *v355 = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_491:
                v235 = 0;
LABEL_492:
                v339 = v231;
                v340 = v235;
                v341 = v234;
                goto LABEL_493;
              }

LABEL_505:
              v307 = v3;
              v308 = *&v364[2];
LABEL_566:
              memcpy(v299, v308, v307);
              if (*v356 && *&v358[2])
              {
                (*(**v356 + 40))(*v356, *&v358[2]);
              }

              if (*v359 && *&v361[2])
              {
                (*(**v359 + 40))(*v359, *&v361[2]);
              }

              if (*v362 && *&v364[2])
              {
                (*(**v362 + 40))(*v362, *&v364[2]);
              }

              if (v342 && v346)
              {
                (*(*v342 + 40))(v342, v346);
              }

              result = v347;
              if (v347)
              {
                if (v351)
                {
                  return (*(*v347 + 40))(v347, v351);
                }
              }

              return result;
            }
          }
        }

        v4 = 0;
        v125 = 0;
        v5 = v6;
        do
        {
          v6 = v344;
          if (v344 <= v4)
          {
            goto LABEL_604;
          }

          if (v346[v4])
          {
            v6 = *&v359[16];
            if (*&v359[16] <= v4)
            {
              goto LABEL_628;
            }

            *(*&v361[2] + 4 * v4) = v125;
            if (v4 >= v5)
            {
              goto LABEL_634;
            }

            v6 = v125;
            v7 = *&v362[16];
            if (*&v362[16] <= v125)
            {
              goto LABEL_640;
            }

            *(*&v364[2] + v125++) = *(v17 + v4);
          }

          ++v4;
        }

        while (v3 != v4);
        v17 = 0;
        v5 = v344;
        v126 = v346;
        v6 = v349;
        v127 = v351;
        v4 = *&v359[16];
        v128 = *&v361[2];
        while (v5 != v17)
        {
          if (!v126[v17])
          {
            if (v6 <= v17)
            {
              goto LABEL_648;
            }

            v8 = *(v127 + 4 * v17);
            if (v4 <= v8)
            {
              goto LABEL_654;
            }

            if (v4 <= v17)
            {
              goto LABEL_660;
            }

            *(v128 + 4 * v17) = *(v128 + 4 * v8);
          }

          if (v3 == ++v17)
          {
            goto LABEL_203;
          }
        }

LABEL_606:
        *v353 = 0;
        v124[18] = 0u;
        v124[19] = 0u;
        v124[16] = 0u;
        v124[17] = 0u;
        v124[15] = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v356 = 136315906;
        *&v356[4] = "operator[]";
        *&v356[12] = 1024;
        *&v356[14] = 797;
        *&v356[18] = 2048;
        *&v356[20] = v5;
        v357 = 2048;
        *v358 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_607:
        *v353 = 0;
        v163[18] = 0u;
        v163[19] = 0u;
        v163[16] = 0u;
        v163[17] = 0u;
        v163[15] = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v356 = 136315906;
        *&v356[4] = "operator[]";
        *&v356[12] = 1024;
        *&v356[14] = 797;
        *&v356[18] = 2048;
        *&v356[20] = v5;
        v357 = 2048;
        *v358 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_608;
      }

      if (v14 != 10)
      {
        goto LABEL_702;
      }

      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v351 = 0;
      v348 = 0;
      v349 = 0;
      v346 = 0;
      v347 = 0;
      v350 = 0;
      v343 = 0;
      v344 = 0;
      v342 = 0;
      v345 = 0;
      v31 = (*(*v13 + 16))(v13);
      if (v31)
      {
        LODWORD(v17) = v31;
        v32 = re::GeomAttribute::accessValues<int>(v13);
        if (!v33)
        {
          goto LABEL_679;
        }

        v3 = v32;
        v349 = 0;
        v350 = 1;
        v344 = 0;
        v345 = 1;
        v17 = v17;
        re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
        LOBYTE(v370) = 0;
        re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
        *&v364[2] = 0;
        memset(v362, 0, sizeof(v362));
        re::DynamicArray<float>::resize(v362, v17);
        v34 = 0;
        v4 = *&v362[16];
        v35 = *&v364[2];
        do
        {
          if (v4 == v34)
          {
            goto LABEL_583;
          }

          *(v35 + 4 * v34) = v34;
          ++v34;
        }

        while (v17 != v34);
        *&v370 = v3;
        if (!*&v362[16])
        {
          goto LABEL_685;
        }

        v6 = **&v364[2];
        v4 = v344;
        v36 = v353;
        if (v344 <= v6)
        {
          goto LABEL_691;
        }

        v5 = 0;
        v37 = *(v3 + v6);
        v346[v6] = 1;
        do
        {
          v4 = *&v362[16];
          if (*&v362[16] <= v5)
          {
            goto LABEL_589;
          }

          v4 = *(*&v364[2] + 4 * v5);
          v38 = *(v3 + v4);
          if (v38 != v37)
          {
            v6 = v344;
            if (v344 <= v4)
            {
              goto LABEL_643;
            }

            v346[v4] = 1;
            v6 = v4;
            v37 = v38;
          }

          v7 = v349;
          if (v349 <= v4)
          {
            goto LABEL_595;
          }

          *(v351 + 4 * v4) = v6;
          ++v5;
        }

        while (v17 != v5);
        if (*v362 && *&v364[2])
        {
          (*(**v362 + 40))();
        }
      }

      *&v364[2] = 0;
      memset(v362, 0, sizeof(v362));
      *&v361[2] = 0;
      memset(v359, 0, sizeof(v359));
      v39 = (*(*v13 + 16))(v13);
      v40 = v39;
      if (v39)
      {
        v3 = v344;
        if (v344 <= v39 - 1)
        {
          goto LABEL_697;
        }

        LODWORD(v41) = 0;
        v42 = v346;
        v3 = v39;
        v43 = v39;
        do
        {
          v44 = *v42++;
          v41 = (v41 + v44);
          --v43;
        }

        while (v43);
      }

      else
      {
        v3 = 0;
        v41 = 0;
      }

      v17 = re::GeomAttribute::accessValues<int>(v13);
      v6 = v161;
      re::DynamicArray<BOOL>::resize(v362, v41);
      re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
      v163 = v353;
      if (v40)
      {
        v4 = 0;
        v164 = 0;
        v5 = v6;
        do
        {
          v6 = v344;
          if (v344 <= v4)
          {
            goto LABEL_605;
          }

          if (v346[v4])
          {
            v6 = *&v359[16];
            if (*&v359[16] <= v4)
            {
              goto LABEL_629;
            }

            *(*&v361[2] + 4 * v4) = v164;
            if (v4 >= v5)
            {
              goto LABEL_635;
            }

            v6 = v164;
            v7 = *&v362[16];
            if (*&v362[16] <= v164)
            {
              goto LABEL_641;
            }

            *(*&v364[2] + v164++) = *(v17 + v4);
          }

          ++v4;
        }

        while (v3 != v4);
        v17 = 0;
        v5 = v344;
        v165 = v346;
        v6 = v349;
        v166 = v351;
        v4 = *&v359[16];
        v167 = *&v361[2];
        while (v5 != v17)
        {
          if (!v165[v17])
          {
            if (v6 <= v17)
            {
              goto LABEL_649;
            }

            v8 = *(v166 + 4 * v17);
            if (v4 <= v8)
            {
              goto LABEL_655;
            }

            if (v4 <= v17)
            {
              goto LABEL_661;
            }

            *(v167 + 4 * v17) = *(v167 + 4 * v8);
          }

          if (v3 == ++v17)
          {
            goto LABEL_281;
          }
        }

        goto LABEL_607;
      }

LABEL_281:
      v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v162);
      v3 = *&v362[16];
      v8 = *(v17 + 24);
      v4 = v8;
      *&v358[2] = 0;
      memset(v356, 0, sizeof(v356));
      re::DynamicArray<re::GeomCell4>::resize(v356, v8);
      v168 = v353;
      if (v8)
      {
        v169 = 0;
        v5 = *&v356[16];
        v170 = *&v358[2];
        v6 = *(v17 + 24);
        v171 = *(v17 + 40);
        v9 = *&v359[16];
        do
        {
          if (v169 == v5)
          {
            goto LABEL_613;
          }

          if (v169 == v6)
          {
            goto LABEL_619;
          }

          v172 = 0;
          *v365 = *(v171 + 16 * v169);
          v173 = *&v361[2];
          if (*&v365[12] == -1)
          {
            v174 = 3;
          }

          else
          {
            v174 = 4;
          }

          do
          {
            v7 = *&v365[4 * v172];
            if (v9 <= v7)
            {
              goto LABEL_387;
            }

            *(v170 + 4 * v172++) = *(v173 + 4 * v7);
          }

          while (v174 != v172);
          ++v169;
          v170 += 16;
        }

        while (v169 != v8);
      }

      if (*(v17 + 48))
      {
        v175 = *(v17 + 60) == 0;
      }

      else
      {
        v175 = 1;
      }

      if (v175 && *(v10 + 10) == v8)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
      }

      else
      {
        *&v355[2] = 0;
        memset(v353, 0, sizeof(v353));
        re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
        v178 = *(v17 + 60);
        if (v178 == 2)
        {
          v4 = v17 + 64;
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
          LOBYTE(v338) = 2;
          v243 = *(v17 + 60);
          if (*(v17 + 60))
          {
            if (v243 == 2)
            {
              LOBYTE(v335) = 2;
              v336 = v17 + 64;
              v337 = xmmword_1E3049610;
              goto LABEL_498;
            }

            if (v243 != 1)
            {
              goto LABEL_713;
            }

            v230 = *(v17 + 48);
            goto LABEL_493;
          }

LABEL_415:
          v244 = *(v17 + 64);
          LOBYTE(v335) = 0;
          LODWORD(v336) = v244;
          goto LABEL_498;
        }

        if (v178 != 1)
        {
          if (*(v17 + 60))
          {
            goto LABEL_709;
          }

          LOBYTE(v338) = 0;
          LODWORD(v339) = 0;
          goto LABEL_415;
        }

        v230 = *(v17 + 48);
        if (v230)
        {
          v231 = *(v17 + 96);
          v232 = *(v17 + 52);
          v233 = *(v17 + 80);
          v234 = v231 + 4 * v233;
          LOBYTE(v338) = 1;
          if (!v231)
          {
            goto LABEL_491;
          }

          v235 = v231 + 4 * v232;
          if (v233 != v232)
          {
            v235 -= 4;
            v236 = 4 * v233 - 4 * v232;
            do
            {
              v238 = *(v235 + 4);
              v235 += 4;
              v237 = v238;
              if (!v236)
              {
                break;
              }

              v236 -= 4;
            }

            while (v237 == -1);
          }

          goto LABEL_492;
        }

        LOBYTE(v338) = 1;
        v340 = 0;
        v341 = 0;
        v339 = 0;
LABEL_493:
        if (v230)
        {
          v300 = *(v17 + 96);
          v301 = v300 + 4 * *(v17 + 80);
          LOBYTE(v335) = 1;
          v336 = v300;
          *&v337 = v301;
          *(&v337 + 1) = v301;
        }

        else
        {
          LOBYTE(v335) = 1;
          v337 = 0uLL;
          v336 = 0;
        }

LABEL_498:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
        {
          v302 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v305) >> 32;
          v304 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v303);
          v4 = v304;
          v5 = *&v353[16];
          if (*&v353[16] <= v304)
          {
            goto LABEL_667;
          }

          *(*&v355[2] + 4 * v304) = v302;
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v305);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v306);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
        if (*v353 && *&v355[2])
        {
          (*(**v353 + 40))(*v353, *&v355[2]);
        }
      }

      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 5))
        {
          goto LABEL_673;
        }

        v299 = *(v13 + 7);
        if ((*(*v13 + 16))(v13))
        {
          goto LABEL_505;
        }
      }

      goto LABEL_703;
    }

    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v351 = 0;
    v348 = 0;
    v349 = 0;
    v346 = 0;
    v347 = 0;
    v350 = 0;
    v343 = 0;
    v344 = 0;
    v342 = 0;
    v345 = 0;
    v87 = (*(*v13 + 16))(v13);
    if (v87)
    {
      LODWORD(v17) = v87;
      v88 = re::GeomAttribute::accessValues<int>(v13);
      if (!v89)
      {
        goto LABEL_683;
      }

      v3 = v88;
      v349 = 0;
      v350 = 1;
      v344 = 0;
      v345 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
      LOBYTE(v370) = 0;
      re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
      *&v364[2] = 0;
      memset(v362, 0, sizeof(v362));
      re::DynamicArray<float>::resize(v362, v17);
      v90 = 0;
      v4 = *&v362[16];
      v91 = *&v364[2];
      do
      {
        if (v4 == v90)
        {
          goto LABEL_587;
        }

        *(v91 + 4 * v90) = v90;
        ++v90;
      }

      while (v17 != v90);
      *&v370 = v3;
      if (!*&v362[16])
      {
        goto LABEL_689;
      }

      v6 = **&v364[2];
      v4 = v344;
      v92 = v353;
      if (v344 <= v6)
      {
        goto LABEL_695;
      }

      v5 = 0;
      v93 = *(v3 + 4 * v6);
      v346[v6] = 1;
      do
      {
        v4 = *&v362[16];
        if (*&v362[16] <= v5)
        {
          goto LABEL_593;
        }

        v4 = *(*&v364[2] + 4 * v5);
        v94 = *(v3 + 4 * v4);
        if (v94 != v93)
        {
          v6 = v344;
          if (v344 <= v4)
          {
            goto LABEL_647;
          }

          v346[v4] = 1;
          v6 = v4;
          v93 = v94;
        }

        v7 = v349;
        if (v349 <= v4)
        {
          goto LABEL_599;
        }

        *(v351 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v362 && *&v364[2])
      {
        (*(**v362 + 40))();
      }
    }

    *&v364[2] = 0;
    memset(v362, 0, sizeof(v362));
    *&v361[2] = 0;
    memset(v359, 0, sizeof(v359));
    v95 = (*(*v13 + 16))(v13);
    v96 = v95;
    if (v95)
    {
      v3 = v344;
      if (v344 <= v95 - 1)
      {
        goto LABEL_701;
      }

      LODWORD(v97) = 0;
      v98 = v346;
      v3 = v95;
      v99 = v95;
      do
      {
        v100 = *v98++;
        v97 = (v97 + v100);
        --v99;
      }

      while (v99);
    }

    else
    {
      v3 = 0;
      v97 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v200;
    re::DynamicArray<float>::resize(v362, v97);
    re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
    v202 = v353;
    if (v96)
    {
      v5 = 0;
      v203 = 0;
      v4 = v344;
      v204 = v346;
      v8 = *&v359[16];
      v205 = *&v361[2];
      v6 = v6;
      v9 = *&v362[16];
      v206 = *&v364[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_603;
        }

        if (v204[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_627;
          }

          *(v205 + 4 * v5) = v203;
          if (v5 >= v6)
          {
            goto LABEL_633;
          }

          v7 = v203;
          if (v9 <= v203)
          {
            goto LABEL_639;
          }

          *(v206 + 4 * v203++) = *(v17 + 4 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v207 = v346;
      v6 = v349;
      v208 = v351;
      v5 = *&v359[16];
      v209 = *&v361[2];
      do
      {
        if (v4 == v17)
        {
          goto LABEL_611;
        }

        if (!v207[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_653;
          }

          v8 = *(v208 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_659;
          }

          if (v5 <= v17)
          {
            goto LABEL_665;
          }

          *(v209 + 4 * v17) = *(v209 + 4 * v8);
        }

        ++v17;
      }

      while (v3 != v17);
    }

    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v201);
    v3 = *&v362[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v358[2] = 0;
    memset(v356, 0, sizeof(v356));
    re::DynamicArray<re::GeomCell4>::resize(v356, v8);
    v210 = v353;
    if (v8)
    {
      v211 = 0;
      v5 = *&v356[16];
      v212 = *&v358[2];
      v6 = *(v17 + 24);
      v213 = *(v17 + 40);
      v9 = *&v359[16];
      do
      {
        if (v211 == v5)
        {
          goto LABEL_617;
        }

        if (v211 == v6)
        {
          goto LABEL_623;
        }

        v214 = 0;
        *v365 = *(v213 + 16 * v211);
        v215 = *&v361[2];
        if (*&v365[12] == -1)
        {
          v216 = 3;
        }

        else
        {
          v216 = 4;
        }

        do
        {
          v7 = *&v365[4 * v214];
          if (v9 <= v7)
          {
LABEL_391:
            v338 = 0;
            v210[18] = 0u;
            v210[19] = 0u;
            v210[16] = 0u;
            v210[17] = 0u;
            v210[15] = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v10 = v353;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v353 = 136315906;
            *&v353[4] = "operator[]";
            *&v353[12] = 1024;
            *&v353[14] = 789;
            *&v353[18] = 2048;
            *&v353[20] = v7;
            v354 = 2048;
            *v355 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_392;
          }

          *(v212 + 4 * v214++) = *(v215 + 4 * v7);
        }

        while (v216 != v214);
        ++v211;
        v212 += 16;
      }

      while (v211 != v8);
    }

    if (*(v17 + 48))
    {
      v217 = *(v17 + 60) == 0;
    }

    else
    {
      v217 = 1;
    }

    if (v217 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
LABEL_562:
      if (!(*(*v13 + 16))(v13))
      {
        goto LABEL_705;
      }

      if (!*(v13 + 5))
      {
        goto LABEL_677;
      }

      v299 = *(v13 + 7);
      if (!(*(*v13 + 16))(v13))
      {
        goto LABEL_705;
      }

      goto LABEL_565;
    }

    *&v355[2] = 0;
    memset(v353, 0, sizeof(v353));
    re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
    v220 = *(v17 + 60);
    if (v220 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
      LOBYTE(v338) = 2;
      v291 = *(v17 + 60);
      if (!*(v17 + 60))
      {
LABEL_463:
        v292 = *(v17 + 64);
        LOBYTE(v335) = 0;
        LODWORD(v336) = v292;
LABEL_558:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
        {
          v330 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v333) >> 32;
          v332 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v331);
          v4 = v332;
          v5 = *&v353[16];
          if (*&v353[16] <= v332)
          {
            goto LABEL_671;
          }

          *(*&v355[2] + 4 * v332) = v330;
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v333);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v334);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
        if (*v353 && *&v355[2])
        {
          (*(**v353 + 40))();
        }

        goto LABEL_562;
      }

      if (v291 == 2)
      {
        LOBYTE(v335) = 2;
        v336 = v17 + 64;
        v337 = xmmword_1E3049610;
        goto LABEL_558;
      }

      if (v291 != 1)
      {
        goto LABEL_717;
      }

      v278 = *(v17 + 48);
    }

    else
    {
      if (v220 != 1)
      {
        if (*(v17 + 60))
        {
          goto LABEL_711;
        }

        LOBYTE(v338) = 0;
        LODWORD(v339) = 0;
        goto LABEL_463;
      }

      v278 = *(v17 + 48);
      if (v278)
      {
        v279 = *(v17 + 96);
        v280 = *(v17 + 52);
        v281 = *(v17 + 80);
        v282 = v279 + 4 * v281;
        LOBYTE(v338) = 1;
        if (v279)
        {
          v283 = v279 + 4 * v280;
          if (v281 != v280)
          {
            v283 -= 4;
            v284 = 4 * v281 - 4 * v280;
            do
            {
              v286 = *(v283 + 4);
              v283 += 4;
              v285 = v286;
              if (!v284)
              {
                break;
              }

              v284 -= 4;
            }

            while (v285 == -1);
          }
        }

        else
        {
          v283 = 0;
        }

        v339 = v279;
        v340 = v283;
        v341 = v282;
      }

      else
      {
        LOBYTE(v338) = 1;
        v340 = 0;
        v341 = 0;
        v339 = 0;
      }
    }

    if (v278)
    {
      v328 = *(v17 + 96);
      v329 = v328 + 4 * *(v17 + 80);
      LOBYTE(v335) = 1;
      v336 = v328;
      *&v337 = v329;
      *(&v337 + 1) = v329;
    }

    else
    {
      LOBYTE(v335) = 1;
      v337 = 0uLL;
      v336 = 0;
    }

    goto LABEL_558;
  }

  if (!v11[17])
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v351 = 0;
    v348 = 0;
    v349 = 0;
    v346 = 0;
    v347 = 0;
    v350 = 0;
    v343 = 0;
    v344 = 0;
    v342 = 0;
    v345 = 0;
    v73 = (*(*v13 + 16))(v13);
    if (v73)
    {
      LODWORD(v17) = v73;
      v74 = re::GeomAttribute::accessValues<int>(v13);
      if (!v75)
      {
        goto LABEL_682;
      }

      v3 = v74;
      v349 = 0;
      v350 = 1;
      v344 = 0;
      v345 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
      LOBYTE(v370) = 0;
      re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
      *&v364[2] = 0;
      memset(v362, 0, sizeof(v362));
      re::DynamicArray<float>::resize(v362, v17);
      v76 = 0;
      v4 = *&v362[16];
      v77 = *&v364[2];
      do
      {
        if (v4 == v76)
        {
          goto LABEL_586;
        }

        *(v77 + 4 * v76) = v76;
        ++v76;
      }

      while (v17 != v76);
      *&v370 = v3;
      if (!*&v362[16])
      {
        goto LABEL_688;
      }

      v6 = **&v364[2];
      v4 = v344;
      v78 = v353;
      if (v344 <= v6)
      {
        goto LABEL_694;
      }

      v5 = 0;
      v79 = *(v3 + 2 * v6);
      v346[v6] = 1;
      do
      {
        v4 = *&v362[16];
        if (*&v362[16] <= v5)
        {
          goto LABEL_592;
        }

        v4 = *(*&v364[2] + 4 * v5);
        v80 = *(v3 + 2 * v4);
        if (v80 != v79)
        {
          v6 = v344;
          if (v344 <= v4)
          {
            goto LABEL_646;
          }

          v346[v4] = 1;
          v6 = v4;
          v79 = v80;
        }

        v7 = v349;
        if (v349 <= v4)
        {
          goto LABEL_598;
        }

        *(v351 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v362 && *&v364[2])
      {
        (*(**v362 + 40))();
      }
    }

    *&v364[2] = 0;
    memset(v362, 0, sizeof(v362));
    *&v361[2] = 0;
    memset(v359, 0, sizeof(v359));
    v81 = (*(*v13 + 16))(v13);
    v82 = v81;
    if (v81)
    {
      v3 = v344;
      if (v344 <= v81 - 1)
      {
        goto LABEL_700;
      }

      LODWORD(v83) = 0;
      v84 = v346;
      v3 = v81;
      v85 = v81;
      do
      {
        v86 = *v84++;
        v83 = (v83 + v86);
        --v85;
      }

      while (v85);
    }

    else
    {
      v3 = 0;
      v83 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v179;
    re::DynamicArray<short>::resize(v362, v83);
    re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
    v181 = v353;
    if (v82)
    {
      v5 = 0;
      v182 = 0;
      v4 = v344;
      v183 = v346;
      v8 = *&v359[16];
      v184 = *&v361[2];
      v6 = v6;
      v9 = *&v362[16];
      v185 = *&v364[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_602;
        }

        if (v183[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_626;
          }

          *(v184 + 4 * v5) = v182;
          if (v5 >= v6)
          {
            goto LABEL_632;
          }

          v7 = v182;
          if (v9 <= v182)
          {
            goto LABEL_638;
          }

          *(v185 + 2 * v182++) = *(v17 + 2 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v186 = v346;
      v6 = v349;
      v187 = v351;
      v5 = *&v359[16];
      v188 = *&v361[2];
      do
      {
        if (v4 == v17)
        {
          goto LABEL_610;
        }

        if (!v186[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_652;
          }

          v8 = *(v187 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_658;
          }

          if (v5 <= v17)
          {
            goto LABEL_664;
          }

          *(v188 + 4 * v17) = *(v188 + 4 * v8);
        }

        ++v17;
      }

      while (v3 != v17);
    }

    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v180);
    v3 = *&v362[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v358[2] = 0;
    memset(v356, 0, sizeof(v356));
    re::DynamicArray<re::GeomCell4>::resize(v356, v8);
    v189 = v353;
    if (v8)
    {
      v190 = 0;
      v5 = *&v356[16];
      v191 = *&v358[2];
      v6 = *(v17 + 24);
      v192 = *(v17 + 40);
      v9 = *&v359[16];
      do
      {
        if (v190 == v5)
        {
          goto LABEL_616;
        }

        if (v190 == v6)
        {
          goto LABEL_622;
        }

        v193 = 0;
        *v365 = *(v192 + 16 * v190);
        v194 = *&v361[2];
        if (*&v365[12] == -1)
        {
          v195 = 3;
        }

        else
        {
          v195 = 4;
        }

        do
        {
          v7 = *&v365[4 * v193];
          if (v9 <= v7)
          {
            goto LABEL_390;
          }

          *(v191 + 4 * v193++) = *(v194 + 4 * v7);
        }

        while (v195 != v193);
        ++v190;
        v191 += 16;
      }

      while (v190 != v8);
    }

    if (*(v17 + 48))
    {
      v196 = *(v17 + 60) == 0;
    }

    else
    {
      v196 = 1;
    }

    if (v196 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
LABEL_547:
      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 5))
        {
          goto LABEL_676;
        }

        v299 = *(v13 + 7);
        if ((*(*v13 + 16))(v13))
        {
          goto LABEL_550;
        }
      }

      goto LABEL_704;
    }

    *&v355[2] = 0;
    memset(v353, 0, sizeof(v353));
    re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
    v199 = *(v17 + 60);
    if (v199 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
      LOBYTE(v338) = 2;
      v288 = *(v17 + 60);
      if (*(v17 + 60))
      {
        if (v288 == 2)
        {
          LOBYTE(v335) = 2;
          v336 = v17 + 64;
          v337 = xmmword_1E3049610;
          goto LABEL_543;
        }

        if (v288 != 1)
        {
          goto LABEL_716;
        }

        v269 = *(v17 + 48);
        goto LABEL_538;
      }
    }

    else
    {
      if (v199 == 1)
      {
        v269 = *(v17 + 48);
        if (!v269)
        {
          LOBYTE(v338) = 1;
          v340 = 0;
          v341 = 0;
          v339 = 0;
LABEL_538:
          if (v269)
          {
            v321 = *(v17 + 96);
            v322 = v321 + 4 * *(v17 + 80);
            LOBYTE(v335) = 1;
            v336 = v321;
            *&v337 = v322;
            *(&v337 + 1) = v322;
          }

          else
          {
            LOBYTE(v335) = 1;
            v337 = 0uLL;
            v336 = 0;
          }

LABEL_543:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
          {
            v323 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v326) >> 32;
            v325 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v324);
            v4 = v325;
            v5 = *&v353[16];
            if (*&v353[16] <= v325)
            {
              goto LABEL_670;
            }

            *(*&v355[2] + 4 * v325) = v323;
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v326);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v327);
          re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
          if (*v353 && *&v355[2])
          {
            (*(**v353 + 40))(*v353, *&v355[2]);
          }

          goto LABEL_547;
        }

        v270 = *(v17 + 96);
        v271 = *(v17 + 52);
        v272 = *(v17 + 80);
        v273 = v270 + 4 * v272;
        LOBYTE(v338) = 1;
        if (v270)
        {
          v274 = v270 + 4 * v271;
          if (v272 != v271)
          {
            v274 -= 4;
            v275 = 4 * v272 - 4 * v271;
            do
            {
              v277 = *(v274 + 4);
              v274 += 4;
              v276 = v277;
              if (!v275)
              {
                break;
              }

              v275 -= 4;
            }

            while (v276 == -1);
          }

          goto LABEL_537;
        }

LABEL_536:
        v274 = 0;
LABEL_537:
        v339 = v270;
        v340 = v274;
        v341 = v273;
        goto LABEL_538;
      }

      if (*(v17 + 60))
      {
        goto LABEL_710;
      }

      LOBYTE(v338) = 0;
      LODWORD(v339) = 0;
    }

    v289 = *(v17 + 64);
    LOBYTE(v335) = 0;
    LODWORD(v336) = v289;
    goto LABEL_543;
  }

  if (v14 == 1)
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v351 = 0;
    v348 = 0;
    v349 = 0;
    v346 = 0;
    v347 = 0;
    v350 = 0;
    v343 = 0;
    v344 = 0;
    v342 = 0;
    v345 = 0;
    v45 = (*(*v13 + 16))(v13);
    if (v45)
    {
      LODWORD(v17) = v45;
      v46 = re::GeomAttribute::accessValues<int>(v13);
      if (!v47)
      {
        goto LABEL_680;
      }

      v3 = v46;
      v349 = 0;
      v350 = 1;
      v344 = 0;
      v345 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
      LOBYTE(v370) = 0;
      re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
      *&v364[2] = 0;
      memset(v362, 0, sizeof(v362));
      re::DynamicArray<float>::resize(v362, v17);
      v48 = 0;
      v4 = *&v362[16];
      v49 = *&v364[2];
      do
      {
        if (v4 == v48)
        {
          goto LABEL_584;
        }

        *(v49 + 4 * v48) = v48;
        ++v48;
      }

      while (v17 != v48);
      *&v370 = v3;
      if (!*&v362[16])
      {
        goto LABEL_686;
      }

      v6 = **&v364[2];
      v4 = v344;
      v50 = v353;
      if (v344 <= v6)
      {
        goto LABEL_692;
      }

      v5 = 0;
      v51 = *(v3 + 2 * v6);
      v346[v6] = 1;
      do
      {
        v4 = *&v362[16];
        if (*&v362[16] <= v5)
        {
          goto LABEL_590;
        }

        v4 = *(*&v364[2] + 4 * v5);
        v52 = *(v3 + 2 * v4);
        if (v52 != v51)
        {
          v6 = v344;
          if (v344 <= v4)
          {
            goto LABEL_644;
          }

          v346[v4] = 1;
          v6 = v4;
          v51 = v52;
        }

        v7 = v349;
        if (v349 <= v4)
        {
          goto LABEL_596;
        }

        *(v351 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v362 && *&v364[2])
      {
        (*(**v362 + 40))();
      }
    }

    *&v364[2] = 0;
    memset(v362, 0, sizeof(v362));
    *&v361[2] = 0;
    memset(v359, 0, sizeof(v359));
    v53 = (*(*v13 + 16))(v13);
    v54 = v53;
    if (v53)
    {
      v3 = v344;
      if (v344 <= v53 - 1)
      {
        goto LABEL_698;
      }

      LODWORD(v55) = 0;
      v56 = v346;
      v3 = v53;
      v57 = v53;
      do
      {
        v58 = *v56++;
        v55 = (v55 + v58);
        --v57;
      }

      while (v57);
    }

    else
    {
      v3 = 0;
      v55 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v101;
    re::DynamicArray<unsigned short>::resize(v362, v55);
    re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
    v103 = v353;
    if (v54)
    {
      v5 = 0;
      v104 = 0;
      v4 = v344;
      v105 = v346;
      v8 = *&v359[16];
      v106 = *&v361[2];
      v6 = v6;
      v9 = *&v362[16];
      v107 = *&v364[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_600;
        }

        if (v105[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_624;
          }

          *(v106 + 4 * v5) = v104;
          if (v5 >= v6)
          {
            goto LABEL_630;
          }

          v7 = v104;
          if (v9 <= v104)
          {
            goto LABEL_636;
          }

          *(v107 + 2 * v104++) = *(v17 + 2 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v108 = v346;
      v6 = v349;
      v109 = v351;
      v5 = *&v359[16];
      v110 = *&v361[2];
      while (v4 != v17)
      {
        if (!v108[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_650;
          }

          v8 = *(v109 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_656;
          }

          if (v5 <= v17)
          {
            goto LABEL_662;
          }

          *(v110 + 4 * v17) = *(v110 + 4 * v8);
        }

        if (v3 == ++v17)
        {
          goto LABEL_164;
        }
      }

LABEL_608:
      *v353 = 0;
      v103[18] = 0u;
      v103[19] = 0u;
      v103[16] = 0u;
      v103[17] = 0u;
      v103[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_609;
    }

LABEL_164:
    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v102);
    v3 = *&v362[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v358[2] = 0;
    memset(v356, 0, sizeof(v356));
    re::DynamicArray<re::GeomCell4>::resize(v356, v8);
    v111 = v353;
    if (v8)
    {
      v112 = 0;
      v5 = *&v356[16];
      v113 = *&v358[2];
      v6 = *(v17 + 24);
      v114 = *(v17 + 40);
      v9 = *&v359[16];
      do
      {
        if (v112 == v5)
        {
          goto LABEL_614;
        }

        if (v112 == v6)
        {
          goto LABEL_620;
        }

        v115 = 0;
        *v365 = *(v114 + 16 * v112);
        v116 = *&v361[2];
        if (*&v365[12] == -1)
        {
          v117 = 3;
        }

        else
        {
          v117 = 4;
        }

        do
        {
          v7 = *&v365[4 * v115];
          if (v9 <= v7)
          {
            goto LABEL_388;
          }

          *(v113 + 4 * v115++) = *(v116 + 4 * v7);
        }

        while (v117 != v115);
        ++v112;
        v113 += 16;
      }

      while (v112 != v8);
    }

    if (*(v17 + 48))
    {
      v118 = *(v17 + 60) == 0;
    }

    else
    {
      v118 = 1;
    }

    if (v118 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
      goto LABEL_517;
    }

    *&v355[2] = 0;
    memset(v353, 0, sizeof(v353));
    re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
    v121 = *(v17 + 60);
    if (v121 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
      LOBYTE(v338) = 2;
      v264 = *(v17 + 60);
      if (!*(v17 + 60))
      {
LABEL_434:
        v265 = *(v17 + 64);
        LOBYTE(v335) = 0;
        LODWORD(v336) = v265;
LABEL_513:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
        {
          v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v313);
          v312 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v311);
          v4 = v312;
          v5 = *&v353[16];
          if (*&v353[16] <= v312)
          {
            goto LABEL_668;
          }

          *(*&v355[2] + 4 * v312) = HIDWORD(v17);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v313);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v314);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
        if (*v353 && *&v355[2])
        {
          (*(**v353 + 40))();
        }

LABEL_517:
        if ((*(*v13 + 16))(v13))
        {
          if (!*(v13 + 5))
          {
            goto LABEL_674;
          }

          v299 = *(v13 + 7);
          if ((*(*v13 + 16))(v13))
          {
LABEL_550:
            v308 = *&v364[2];
            v307 = 2 * v3;
            goto LABEL_566;
          }
        }

        *v365 = 0;
        v10 = v353;
        v373 = 0u;
        v374 = 0u;
        v371 = 0u;
        v372 = 0u;
        v370 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        *&v353[14] = 621;
        *&v353[18] = 2048;
        *&v353[20] = 0;
        v354 = 2048;
        *v355 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_521;
      }

      if (v264 == 2)
      {
        LOBYTE(v335) = 2;
        v336 = v17 + 64;
        v337 = xmmword_1E3049610;
        goto LABEL_513;
      }

      if (v264 != 1)
      {
        goto LABEL_714;
      }

      v245 = *(v17 + 48);
    }

    else
    {
      if (v121 != 1)
      {
        if (*(v17 + 60))
        {
LABEL_706:
          re::internal::assertLog(4, v120, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
          _os_crash();
          __break(1u);
          goto LABEL_707;
        }

        LOBYTE(v338) = 0;
        LODWORD(v339) = 0;
        goto LABEL_434;
      }

      v245 = *(v17 + 48);
      if (v245)
      {
        v246 = *(v17 + 96);
        v247 = *(v17 + 52);
        v248 = *(v17 + 80);
        v249 = v246 + 4 * v248;
        LOBYTE(v338) = 1;
        if (v246)
        {
          v250 = v246 + 4 * v247;
          if (v248 != v247)
          {
            v250 -= 4;
            v251 = 4 * v248 - 4 * v247;
            do
            {
              v253 = *(v250 + 4);
              v250 += 4;
              v252 = v253;
              if (!v251)
              {
                break;
              }

              v251 -= 4;
            }

            while (v252 == -1);
          }
        }

        else
        {
          v250 = 0;
        }

        v339 = v246;
        v340 = v250;
        v341 = v249;
      }

      else
      {
        LOBYTE(v338) = 1;
        v340 = 0;
        v341 = 0;
        v339 = 0;
      }
    }

    if (v245)
    {
      v309 = *(v17 + 96);
      v310 = v309 + 4 * *(v17 + 80);
      LOBYTE(v335) = 1;
      v336 = v309;
      *&v337 = v310;
      *(&v337 + 1) = v310;
    }

    else
    {
      LOBYTE(v335) = 1;
      v337 = 0uLL;
      v336 = 0;
    }

    goto LABEL_513;
  }

  if (v14 != 2)
  {
LABEL_702:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) The attribute is not an integer type.", "!Unreachable code", "mergeDiscreteFaceVaryingAttributeValues", 596);
    _os_crash();
    __break(1u);
LABEL_703:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 621;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_704:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 621;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_705:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 621;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_706;
  }

  result = (*(*v11 + 16))(v11);
  if (!result)
  {
    return result;
  }

  v351 = 0;
  v348 = 0;
  v349 = 0;
  v346 = 0;
  v347 = 0;
  v350 = 0;
  v343 = 0;
  v344 = 0;
  v342 = 0;
  v345 = 0;
  v16 = (*(*v13 + 16))(v13);
  if (!v16)
  {
    goto LABEL_23;
  }

  LODWORD(v17) = v16;
  v18 = re::GeomAttribute::accessValues<int>(v13);
  if (!v19)
  {
    goto LABEL_678;
  }

  v3 = v18;
  v349 = 0;
  v350 = 1;
  v344 = 0;
  v345 = 1;
  v17 = v17;
  re::DynamicArray<unsigned int>::resize(&v347, v17, &re::kInvalidMeshIndex);
  LOBYTE(v370) = 0;
  re::DynamicArray<unsigned char>::resize(&v342, v17, &v370);
  *&v364[2] = 0;
  memset(v362, 0, sizeof(v362));
  re::DynamicArray<float>::resize(v362, v17);
  v20 = 0;
  v4 = *&v362[16];
  v21 = *&v364[2];
  do
  {
    if (v4 == v20)
    {
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_583:
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_584:
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_585:
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_586:
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_587:
      *v356 = 0;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_588:
      *v356 = 0;
      v22[18] = 0u;
      v22[19] = 0u;
      v22[16] = 0u;
      v22[17] = 0u;
      v22[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_589:
      *v356 = 0;
      v36[18] = 0u;
      v36[19] = 0u;
      v36[16] = 0u;
      v36[17] = 0u;
      v36[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_590:
      *v356 = 0;
      v50[18] = 0u;
      v50[19] = 0u;
      v50[16] = 0u;
      v50[17] = 0u;
      v50[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_591:
      *v356 = 0;
      v64[18] = 0u;
      v64[19] = 0u;
      v64[16] = 0u;
      v64[17] = 0u;
      v64[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_592:
      *v356 = 0;
      v78[18] = 0u;
      v78[19] = 0u;
      v78[16] = 0u;
      v78[17] = 0u;
      v78[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_593:
      *v356 = 0;
      v92[18] = 0u;
      v92[19] = 0u;
      v92[16] = 0u;
      v92[17] = 0u;
      v92[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v5;
      v360 = 2048;
      *v361 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_594:
      *v356 = 0;
      v22[18] = 0u;
      v22[19] = 0u;
      v22[16] = 0u;
      v22[17] = 0u;
      v22[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_595:
      *v356 = 0;
      v36[18] = 0u;
      v36[19] = 0u;
      v36[16] = 0u;
      v36[17] = 0u;
      v36[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_596:
      *v356 = 0;
      v50[18] = 0u;
      v50[19] = 0u;
      v50[16] = 0u;
      v50[17] = 0u;
      v50[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_597:
      *v356 = 0;
      v64[18] = 0u;
      v64[19] = 0u;
      v64[16] = 0u;
      v64[17] = 0u;
      v64[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_598:
      *v356 = 0;
      v78[18] = 0u;
      v78[19] = 0u;
      v78[16] = 0u;
      v78[17] = 0u;
      v78[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_599:
      *v356 = 0;
      v92[18] = 0u;
      v92[19] = 0u;
      v92[16] = 0u;
      v92[17] = 0u;
      v92[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v359 = 136315906;
      *&v359[4] = "operator[]";
      *&v359[12] = 1024;
      *&v359[14] = 789;
      *&v359[18] = 2048;
      *&v359[20] = v4;
      v360 = 2048;
      *v361 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_600:
      *v353 = 0;
      v103[18] = 0u;
      v103[19] = 0u;
      v103[16] = 0u;
      v103[17] = 0u;
      v103[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_601:
      *v353 = 0;
      v142[18] = 0u;
      v142[19] = 0u;
      v142[16] = 0u;
      v142[17] = 0u;
      v142[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_602:
      *v353 = 0;
      v181[18] = 0u;
      v181[19] = 0u;
      v181[16] = 0u;
      v181[17] = 0u;
      v181[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_603:
      *v353 = 0;
      v202[18] = 0u;
      v202[19] = 0u;
      v202[16] = 0u;
      v202[17] = 0u;
      v202[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_604:
      *v353 = 0;
      v124[18] = 0u;
      v124[19] = 0u;
      v124[16] = 0u;
      v124[17] = 0u;
      v124[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_605:
      *v353 = 0;
      v163[18] = 0u;
      v163[19] = 0u;
      v163[16] = 0u;
      v163[17] = 0u;
      v163[15] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *&v356[12] = 1024;
      *&v356[14] = 797;
      *&v356[18] = 2048;
      *&v356[20] = v4;
      v357 = 2048;
      *v358 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_606;
    }

    *(v21 + 4 * v20) = v20;
    ++v20;
  }

  while (v17 != v20);
  *&v370 = v3;
  if (!*&v362[16])
  {
    goto LABEL_684;
  }

  v6 = **&v364[2];
  v4 = v344;
  v22 = v353;
  if (v344 <= v6)
  {
    goto LABEL_690;
  }

  v5 = 0;
  v23 = *(v3 + 4 * v6);
  v346[v6] = 1;
  do
  {
    v4 = *&v362[16];
    if (*&v362[16] <= v5)
    {
      goto LABEL_588;
    }

    v4 = *(*&v364[2] + 4 * v5);
    v24 = *(v3 + 4 * v4);
    if (v24 != v23)
    {
      v6 = v344;
      if (v344 <= v4)
      {
        goto LABEL_642;
      }

      v346[v4] = 1;
      v6 = v4;
      v23 = v24;
    }

    v7 = v349;
    if (v349 <= v4)
    {
      goto LABEL_594;
    }

    *(v351 + 4 * v4) = v6;
    ++v5;
  }

  while (v17 != v5);
  if (*v362 && *&v364[2])
  {
    (*(**v362 + 40))();
  }

LABEL_23:
  *&v364[2] = 0;
  memset(v362, 0, sizeof(v362));
  *&v361[2] = 0;
  memset(v359, 0, sizeof(v359));
  v25 = (*(*v13 + 16))(v13);
  v26 = v25;
  if (!v25)
  {
    v3 = 0;
    v27 = 0;
    goto LABEL_225;
  }

  v3 = v344;
  if (v344 <= v25 - 1)
  {
    goto LABEL_696;
  }

  LODWORD(v27) = 0;
  v28 = v346;
  v3 = v25;
  v29 = v25;
  do
  {
    v30 = *v28++;
    v27 = (v27 + v30);
    --v29;
  }

  while (v29);
LABEL_225:
  v17 = re::GeomAttribute::accessValues<int>(v13);
  v6 = v140;
  re::DynamicArray<float>::resize(v362, v27);
  re::DynamicArray<unsigned int>::resize(v359, v3, &re::kInvalidMeshIndex);
  v142 = v353;
  if (v26)
  {
    v5 = 0;
    v143 = 0;
    v4 = v344;
    v144 = v346;
    v8 = *&v359[16];
    v145 = *&v361[2];
    v6 = v6;
    v9 = *&v362[16];
    v146 = *&v364[2];
    do
    {
      if (v4 == v5)
      {
        goto LABEL_601;
      }

      if (v144[v5])
      {
        if (v8 <= v5)
        {
          goto LABEL_625;
        }

        *(v145 + 4 * v5) = v143;
        if (v5 >= v6)
        {
          goto LABEL_631;
        }

        v7 = v143;
        if (v9 <= v143)
        {
          goto LABEL_637;
        }

        *(v146 + 4 * v143++) = *(v17 + 4 * v5);
      }

      ++v5;
    }

    while (v3 != v5);
    v17 = 0;
    v147 = v346;
    v6 = v349;
    v148 = v351;
    v5 = *&v359[16];
    v149 = *&v361[2];
    while (v4 != v17)
    {
      if (!v147[v17])
      {
        if (v6 <= v17)
        {
          goto LABEL_651;
        }

        v8 = *(v148 + 4 * v17);
        if (v5 <= v8)
        {
          goto LABEL_657;
        }

        if (v5 <= v17)
        {
          goto LABEL_663;
        }

        *(v149 + 4 * v17) = *(v149 + 4 * v8);
      }

      if (v3 == ++v17)
      {
        goto LABEL_242;
      }
    }

LABEL_609:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_610:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_611:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_612:
    *v365 = 0;
    v129[18] = 0u;
    v129[19] = 0u;
    v129[16] = 0u;
    v129[17] = 0u;
    v129[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_613:
    *v365 = 0;
    v168[18] = 0u;
    v168[19] = 0u;
    v168[16] = 0u;
    v168[17] = 0u;
    v168[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_614:
    *v365 = 0;
    v111[18] = 0u;
    v111[19] = 0u;
    v111[16] = 0u;
    v111[17] = 0u;
    v111[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_615:
    *v365 = 0;
    v150[18] = 0u;
    v150[19] = 0u;
    v150[16] = 0u;
    v150[17] = 0u;
    v150[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_616:
    *v365 = 0;
    v189[18] = 0u;
    v189[19] = 0u;
    v189[16] = 0u;
    v189[17] = 0u;
    v189[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_617:
    *v365 = 0;
    v210[18] = 0u;
    v210[19] = 0u;
    v210[16] = 0u;
    v210[17] = 0u;
    v210[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = v5;
    v354 = 2048;
    *v355 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_618:
    *v365 = 0;
    v129[18] = 0u;
    v129[19] = 0u;
    v129[16] = 0u;
    v129[17] = 0u;
    v129[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_619:
    *v365 = 0;
    v168[18] = 0u;
    v168[19] = 0u;
    v168[16] = 0u;
    v168[17] = 0u;
    v168[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_620:
    *v365 = 0;
    v111[18] = 0u;
    v111[19] = 0u;
    v111[16] = 0u;
    v111[17] = 0u;
    v111[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_621:
    *v365 = 0;
    v150[18] = 0u;
    v150[19] = 0u;
    v150[16] = 0u;
    v150[17] = 0u;
    v150[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_622:
    *v365 = 0;
    v189[18] = 0u;
    v189[19] = 0u;
    v189[16] = 0u;
    v189[17] = 0u;
    v189[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_623:
    *v365 = 0;
    v210[18] = 0u;
    v210[19] = 0u;
    v210[16] = 0u;
    v210[17] = 0u;
    v210[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 797;
    *&v353[18] = 2048;
    *&v353[20] = v6;
    v354 = 2048;
    *v355 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_624:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_625:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_626:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_627:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_628:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_629:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_630:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_631:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_632:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_633:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v5;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_634:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_635:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 613;
    *&v356[18] = 2048;
    *&v356[20] = v4;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_636:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v7;
    v357 = 2048;
    *v358 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_637:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v7;
    v357 = 2048;
    *v358 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_638:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v7;
    v357 = 2048;
    *v358 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_639:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v7;
    v357 = 2048;
    *v358 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_640:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v6;
    v357 = 2048;
    *v358 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_641:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v6;
    v357 = 2048;
    *v358 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_642:
    *v356 = 0;
    v22[18] = 0u;
    v22[19] = 0u;
    v22[16] = 0u;
    v22[17] = 0u;
    v22[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_643:
    *v356 = 0;
    v36[18] = 0u;
    v36[19] = 0u;
    v36[16] = 0u;
    v36[17] = 0u;
    v36[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_644:
    *v356 = 0;
    v50[18] = 0u;
    v50[19] = 0u;
    v50[16] = 0u;
    v50[17] = 0u;
    v50[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_645:
    *v356 = 0;
    v64[18] = 0u;
    v64[19] = 0u;
    v64[16] = 0u;
    v64[17] = 0u;
    v64[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_646:
    *v356 = 0;
    v78[18] = 0u;
    v78[19] = 0u;
    v78[16] = 0u;
    v78[17] = 0u;
    v78[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_647:
    *v356 = 0;
    v92[18] = 0u;
    v92[19] = 0u;
    v92[16] = 0u;
    v92[17] = 0u;
    v92[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v4;
    v360 = 2048;
    *v361 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_648:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_649:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_650:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_651:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_652:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_653:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_654:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_655:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_656:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_657:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_658:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_659:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v8;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_660:
    *v353 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_661:
    *v353 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_662:
    *v353 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_663:
    *v353 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_664:
    *v353 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_665:
    *v353 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 789;
    *&v356[18] = 2048;
    *&v356[20] = v17;
    v357 = 2048;
    *v358 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_666:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_667:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_668:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_669:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_670:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_671:
    v352 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v365 = 136315906;
    *&v365[4] = "operator[]";
    *&v365[12] = 1024;
    *&v365[14] = 789;
    v366 = 2048;
    v367 = v4;
    v368 = 2048;
    v369 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_672:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_673:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_674:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_675:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_676:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_677:
    *v365 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v353 = 136315906;
    *&v353[4] = "operator[]";
    *&v353[12] = 1024;
    *&v353[14] = 789;
    *&v353[18] = 2048;
    *&v353[20] = 0;
    v354 = 2048;
    *v355 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_678:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_679:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_680:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_681:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_682:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_683:
    *v359 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v362 = 136315906;
    *&v362[4] = "operator[]";
    *&v362[12] = 1024;
    *&v362[14] = 613;
    *&v362[18] = 2048;
    *&v362[20] = 0;
    v363 = 2048;
    *v364 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_684:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_685:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_686:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_687:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_688:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_689:
    *v356 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = 0;
    v360 = 2048;
    *v361 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_690:
    *v356 = 0;
    v22[18] = 0u;
    v22[19] = 0u;
    v22[16] = 0u;
    v22[17] = 0u;
    v22[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_691:
    *v356 = 0;
    v36[18] = 0u;
    v36[19] = 0u;
    v36[16] = 0u;
    v36[17] = 0u;
    v36[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_692:
    *v356 = 0;
    v50[18] = 0u;
    v50[19] = 0u;
    v50[16] = 0u;
    v50[17] = 0u;
    v50[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_693:
    *v356 = 0;
    v64[18] = 0u;
    v64[19] = 0u;
    v64[16] = 0u;
    v64[17] = 0u;
    v64[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_694:
    *v356 = 0;
    v78[18] = 0u;
    v78[19] = 0u;
    v78[16] = 0u;
    v78[17] = 0u;
    v78[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_695:
    *v356 = 0;
    v92[18] = 0u;
    v92[19] = 0u;
    v92[16] = 0u;
    v92[17] = 0u;
    v92[15] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v359 = 136315906;
    *&v359[4] = "operator[]";
    *&v359[12] = 1024;
    *&v359[14] = 789;
    *&v359[18] = 2048;
    *&v359[20] = v6;
    v360 = 2048;
    *v361 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_696:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_697:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_698:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_699:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_700:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_701:
    *v353 = 0;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v370 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *&v356[12] = 1024;
    *&v356[14] = 797;
    *&v356[18] = 2048;
    *&v356[20] = v3;
    v357 = 2048;
    *v358 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_242:
  v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v141);
  v3 = *&v362[16];
  v8 = *(v17 + 24);
  v4 = v8;
  *&v358[2] = 0;
  memset(v356, 0, sizeof(v356));
  re::DynamicArray<re::GeomCell4>::resize(v356, v8);
  v150 = v353;
  if (v8)
  {
    v151 = 0;
    v5 = *&v356[16];
    v152 = *&v358[2];
    v6 = *(v17 + 24);
    v153 = *(v17 + 40);
    v9 = *&v359[16];
    while (v151 != v5)
    {
      if (v151 == v6)
      {
        goto LABEL_621;
      }

      v154 = 0;
      *v365 = *(v153 + 16 * v151);
      v155 = *&v361[2];
      if (*&v365[12] == -1)
      {
        v156 = 3;
      }

      else
      {
        v156 = 4;
      }

      do
      {
        v7 = *&v365[4 * v154];
        if (v9 <= v7)
        {
          goto LABEL_389;
        }

        *(v152 + 4 * v154++) = *(v155 + 4 * v7);
      }

      while (v156 != v154);
      ++v151;
      v152 += 16;
      if (v151 == v8)
      {
        goto LABEL_252;
      }
    }

    goto LABEL_615;
  }

LABEL_252:
  if (*(v17 + 48))
  {
    v157 = *(v17 + 60) == 0;
  }

  else
  {
    v157 = 1;
  }

  if (v157 && *(v10 + 10) == v8)
  {
    re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356);
LABEL_532:
    if (!(*(*v13 + 16))(v13))
    {
      goto LABEL_535;
    }

    if (!*(v13 + 5))
    {
      goto LABEL_675;
    }

    v299 = *(v13 + 7);
    if (!(*(*v13 + 16))(v13))
    {
LABEL_535:
      *v365 = 0;
      v10 = v353;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v370 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v353 = 136315906;
      *&v353[4] = "operator[]";
      *&v353[12] = 1024;
      *&v353[14] = 621;
      *&v353[18] = 2048;
      *&v353[20] = 0;
      v354 = 2048;
      *v355 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_536;
    }

LABEL_565:
    v308 = *&v364[2];
    v307 = 4 * v3;
    goto LABEL_566;
  }

  *&v355[2] = 0;
  memset(v353, 0, sizeof(v353));
  re::DynamicArray<unsigned int>::resize(v353, v8, &re::kInvalidMeshIndex);
  v160 = *(v17 + 60);
  if (v160 == 2)
  {
    v4 = v17 + 64;
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v339, v17 + 64);
    LOBYTE(v338) = 2;
    v267 = *(v17 + 60);
    if (!*(v17 + 60))
    {
      goto LABEL_439;
    }

    if (v267 == 2)
    {
      LOBYTE(v335) = 2;
      v336 = v17 + 64;
      v337 = xmmword_1E3049610;
      goto LABEL_528;
    }

    if (v267 != 1)
    {
      goto LABEL_715;
    }

    v254 = *(v17 + 48);
    goto LABEL_523;
  }

  if (v160 == 1)
  {
    v254 = *(v17 + 48);
    if (!v254)
    {
      LOBYTE(v338) = 1;
      v340 = 0;
      v341 = 0;
      v339 = 0;
LABEL_523:
      if (v254)
      {
        v315 = *(v17 + 96);
        v316 = v315 + 4 * *(v17 + 80);
        LOBYTE(v335) = 1;
        v336 = v315;
        *&v337 = v316;
        *(&v337 + 1) = v316;
      }

      else
      {
        LOBYTE(v335) = 1;
        v337 = 0uLL;
        v336 = 0;
      }

LABEL_528:
      while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v338, &v335) & 1) == 0)
      {
        v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v319);
        v318 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v338, v317);
        v4 = v318;
        v5 = *&v353[16];
        if (*&v353[16] <= v318)
        {
          goto LABEL_669;
        }

        *(*&v355[2] + 4 * v318) = HIDWORD(v17);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v338);
      }

      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v335, v319);
      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v338, v320);
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 1), v3, v356, v353);
      if (*v353 && *&v355[2])
      {
        (*(**v353 + 40))(*v353, *&v355[2]);
      }

      goto LABEL_532;
    }

    v255 = *(v17 + 96);
    v256 = *(v17 + 52);
    v257 = *(v17 + 80);
    v258 = v255 + 4 * v257;
    LOBYTE(v338) = 1;
    if (v255)
    {
      v259 = v255 + 4 * v256;
      if (v257 != v256)
      {
        v259 -= 4;
        v260 = 4 * v257 - 4 * v256;
        do
        {
          v262 = *(v259 + 4);
          v259 += 4;
          v261 = v262;
          if (!v260)
          {
            break;
          }

          v260 -= 4;
        }

        while (v261 == -1);
      }

      goto LABEL_522;
    }

LABEL_521:
    v259 = 0;
LABEL_522:
    v339 = v255;
    v340 = v259;
    v341 = v258;
    goto LABEL_523;
  }

  if (!*(v17 + 60))
  {
    LOBYTE(v338) = 0;
    LODWORD(v339) = 0;
LABEL_439:
    v268 = *(v17 + 64);
    LOBYTE(v335) = 0;
    LODWORD(v336) = v268;
    goto LABEL_528;
  }

LABEL_708:
  re::internal::assertLog(4, v159, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_709:
  re::internal::assertLog(4, v177, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_710:
  re::internal::assertLog(4, v198, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_711:
  re::internal::assertLog(4, v219, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_712:
  re::internal::assertLog(4, v239, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_713:
  re::internal::assertLog(4, v242, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_714:
  re::internal::assertLog(4, v263, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_715:
  re::internal::assertLog(4, v266, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_716:
  re::internal::assertLog(4, v287, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_717:
  re::internal::assertLog(4, v290, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::makeMeshFromFaces@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v10 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v63[1] = 0;
  v64 = 0;
  v62 = 0;
  v63[0] = 0;
  v65 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v12 = *(a1 + 40);
  v13 = *(a2 + 2);
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  if (*(a5 + 8) < v13)
  {
    re::DynamicArray<int>::setCapacity(a5, v13);
  }

  v14 = &v68;
  v60 = 0;
  v61 = 1;
  re::DynamicArray<unsigned int>::resize(v59, v12, &re::kInvalidMeshIndex);
  if (v13)
  {
    v16 = 0;
    while (1)
    {
      v17 = a2[1];
      if (v17 <= v16)
      {
        break;
      }

      v15 = (*a2 + 4 * v16);
      v6 = *v15;
      v7 = v60;
      if (v60 <= v6)
      {
        goto LABEL_71;
      }

      if (*(v62 + 4 * v6) == -1)
      {
        *(v62 + 4 * v6) = *(a5 + 16);
        re::DynamicArray<int>::add(a5, v15);
      }

      if (++v16 == v13)
      {
        goto LABEL_10;
      }
    }

LABEL_70:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17, v56);
    _os_crash();
    __break(1u);
LABEL_71:
    *v79 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v84[0]) = 136315906;
    *(v84 + 4) = "operator[]";
    WORD2(v84[1]) = 1024;
    *(&v84[1] + 6) = 789;
    WORD1(v84[2]) = 2048;
    *(&v84[2] + 4) = v6;
    WORD2(v84[3]) = 2048;
    *(&v84[3] + 6) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

LABEL_10:
  v56 = a6;
  v18 = v10 + 16;
  v13 = *(v10 + 16);
  v6 = *(a5 + 16);
  v64 = 0;
  ++v65;
  re::DynamicArray<unsigned int>::resize(v63, v13, &re::kInvalidMeshIndex);
  if (!v6)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
  v12 = *(a5 + 16);
  a6 = v64;
  v22 = *(a5 + 32);
  v23 = *(v10 + 40);
  v24 = *(v10 + 56);
  do
  {
    if (v20 == v12)
    {
      goto LABEL_81;
    }

    v7 = *(v22 + 4 * v20);
    if (v23 <= v7)
    {
LABEL_82:
      *v79 = 0;
      v14[3] = 0u;
      v14[4] = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v84[0]) = 136315906;
      *(v84 + 4) = "operator[]";
      WORD2(v84[1]) = 1024;
      *(&v84[1] + 6) = 797;
      WORD1(v84[2]) = 2048;
      *(&v84[2] + 4) = v7;
      WORD2(v84[3]) = 2048;
      *(&v84[3] + 6) = v23;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_83:
      *v79 = 0;
      v14[3] = 0u;
      v14[4] = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v84[0]) = 136315906;
      *(v84 + 4) = "operator[]";
      WORD2(v84[1]) = 1024;
      *(&v84[1] + 6) = 789;
      WORD1(v84[2]) = 2048;
      *(&v84[2] + 4) = v12;
      WORD2(v84[3]) = 2048;
      *(&v84[3] + 6) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_84:
      v67 = 0;
      v85 = 0u;
      v86 = 0u;
      memset(v84, 0, sizeof(v84));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 797;
      v80 = 2048;
      v81 = v6;
      v82 = 2048;
      v83 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v25 = 0;
    *v79 = *(v24 + 16 * v7);
    v26 = v66;
    if (*&v79[12] == -1)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    do
    {
      v7 = *&v79[4 * v25];
      if (a6 <= v7)
      {
        v67 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD2(v84[1]) = 1024;
        *(&v84[1] + 6) = 789;
        WORD1(v84[2]) = 2048;
        *(&v84[2] + 4) = v7;
        WORD2(v84[3]) = 2048;
        *(&v84[3] + 6) = a6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_70;
      }

      if (*(v26 + 4 * v7) == -1)
      {
        *(v26 + 4 * v7) = v21++;
      }

      ++v25;
    }

    while (v27 != v25);
    v20 = (v20 + 1);
  }

  while (v20 != v6);
LABEL_24:
  v28 = a3[1];
  if (v28)
  {
    v29 = 0;
    v6 = v64;
    v30 = v66;
    v31 = *a3;
    v32 = a4;
    while (v28 != v29)
    {
      v7 = *(v31 + 4 * v29);
      if (v6 <= v7)
      {
        goto LABEL_73;
      }

      if (*(v30 + 4 * v7) == -1)
      {
        *(v30 + 4 * v7) = v21++;
      }

      if (v28 == ++v29)
      {
        goto LABEL_33;
      }
    }

LABEL_72:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v28);
    _os_crash();
    __break(1u);
LABEL_73:
    *v79 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v84[0]) = 136315906;
    *(v84 + 4) = "operator[]";
    WORD2(v84[1]) = 1024;
    *(&v84[1] + 6) = 789;
    WORD1(v84[2]) = 2048;
    *(&v84[2] + 4) = v7;
    WORD2(v84[3]) = 2048;
    *(&v84[3] + 6) = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_74:
    *v79 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v84[0]) = 136315906;
    *(v84 + 4) = "operator[]";
    WORD2(v84[1]) = 1024;
    *(&v84[1] + 6) = 789;
    WORD1(v84[2]) = 2048;
    *(&v84[2] + 4) = v6;
    WORD2(v84[3]) = 2048;
    *(&v84[3] + 6) = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    v44 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 789;
    v80 = 2048;
    v81 = v14;
    v82 = 2048;
    v83 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    v80 = 2048;
    v81 = v6;
    v82 = 2048;
    v83 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    v80 = 2048;
    v81 = v6;
    v82 = 2048;
    v83 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    v80 = 2048;
    v81 = v10;
    v82 = 2048;
    v83 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    v80 = 2048;
    v81 = v13;
    v82 = 2048;
    v83 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v67 = 0;
    v85 = 0u;
    v86 = 0u;
    memset(v84, 0, sizeof(v84));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 789;
    v80 = 2048;
    v81 = a6;
    v82 = 2048;
    v83 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    *v79 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v84[0]) = 136315906;
    *(v84 + 4) = "operator[]";
    WORD2(v84[1]) = 1024;
    *(&v84[1] + 6) = 789;
    WORD1(v84[2]) = 2048;
    *(&v84[2] + 4) = v12;
    WORD2(v84[3]) = 2048;
    *(&v84[3] + 6) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

  v32 = a4;
LABEL_33:
  re::DynamicArray<float>::resize(v32, v21);
  if (v13)
  {
    v34 = 0;
    v6 = v64;
    v35 = v66;
    v7 = *(v32 + 16);
    v36 = *(v32 + 32);
    while (v6 != v34)
    {
      v12 = *(v35 + 4 * v34);
      if (v12 != -1)
      {
        if (v7 <= v12)
        {
          goto LABEL_83;
        }

        *(v36 + 4 * v12) = v34;
      }

      v34 = (v34 + 1);
      if (v13 == v34)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_74;
  }

LABEL_40:
  LODWORD(v68) = 0;
  *(&v70 + 1) = 0;
  v69 = 0uLL;
  LODWORD(v70) = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v68 + 1, 1uLL);
  LODWORD(v70) = v70 + 1;
  re::internal::GeomAttributeManager::GeomAttributeManager(&v71);
  v37 = *(v32 + 16);
  v38 = *(a5 + 16);
  v7 = v38;
  LODWORD(v68) = v37;
  v73 = v37;
  if (v74)
  {
    v6 = v75;
    v13 = 8 * v74;
    do
    {
      v39 = *v6;
      v6 += 8;
      (*(*v39 + 80))(v39, v73);
      v13 -= 8;
    }

    while (v13);
  }

  re::DynamicArray<re::GeomCell4>::resize(&v68 + 1, v38);
  v76 = v38;
  if (v77)
  {
    v6 = v78;
    v13 = 8 * v77;
    do
    {
      v40 = *v6;
      v6 += 8;
      (*(*v40 + 80))(v40, v76);
      v13 -= 8;
    }

    while (v13);
  }

  if (v38)
  {
    v41 = 0;
    v14 = *(a5 + 16);
    v12 = v64;
    v42 = v66;
    a6 = *(&v69 + 1);
    v43 = *(a5 + 32);
    v44 = *(v10 + 40);
    v45 = *(v10 + 56);
    v46 = (*(&v70 + 1) + 8);
    while (v14 != v41)
    {
      v6 = *(v43 + 4 * v41);
      if (v44 <= v6)
      {
        goto LABEL_76;
      }

      v47 = (v45 + 16 * v6);
      v6 = *v47;
      if (v12 <= v6)
      {
        goto LABEL_77;
      }

      v10 = v47[1];
      if (v12 <= v10)
      {
        goto LABEL_78;
      }

      v13 = v47[2];
      if (v12 <= v13)
      {
        goto LABEL_79;
      }

      v48 = *(v42 + 4 * v6);
      v6 = v47[3];
      v49 = *(v42 + 4 * v10);
      v50 = *(v42 + 4 * v13);
      if (v6 == -1)
      {
        v51 = -1;
      }

      else
      {
        if (v12 <= v6)
        {
          goto LABEL_84;
        }

        v51 = *(v42 + 4 * v6);
      }

      if (a6 == v41)
      {
        goto LABEL_80;
      }

      *(v46 - 2) = v48;
      *(v46 - 1) = v49;
      *v46 = v50;
      v46[1] = v51;
      v46 += 4;
      v41 = (v41 + 1);
      if (v7 == v41)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_75;
  }

LABEL_59:
  re::internal::addAndCopyAttributeValues(v18, &v68, 0);
  re::internal::addAndCopyAttributeValues(v18, &v68, 4);
  v52 = *(a4 + 16);
  v84[0] = *(a4 + 32);
  v84[1] = v52;
  re::internal::addAndCopyVertexAttributes(v18, v84, &v68);
  v53 = *(a5 + 16);
  v84[0] = *(a5 + 32);
  v84[1] = v53;
  re::internal::addAndCopyFaceAttributes(v18, v84, &v68);
  v54 = *(a5 + 16);
  v84[0] = *(a5 + 32);
  v84[1] = v54;
  re::internal::addAndCopyFaceVaryingAttributes(v18, v84, &v68);
  re::GeomMesh::GeomMesh(v56, &v68);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v71);
  if (*(&v68 + 1) && *(&v70 + 1))
  {
    (*(**(&v68 + 1) + 40))();
  }

  if (v59[0] && v62)
  {
    (*(*v59[0] + 40))();
  }

  result = v63[0];
  if (v63[0])
  {
    if (v66)
    {
      return (*(*v63[0] + 40))();
    }
  }

  return result;
}

{
  v21 = 0;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::makeMeshFromFaces(a1, a2, a3, v19, v16, a6);
  re::GeomIndexMap::GeomIndexMap(v12, v19);
  re::GeomIndexMap::operator=(a4, v12);
  if (v13)
  {
    if (v13 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v14);
    }

    else
    {
      if (v13 != 1)
      {
        re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_23;
      }

      if (v14[0] && v15)
      {
        (*(*v14[0] + 40))();
      }
    }
  }

  re::GeomIndexMap::GeomIndexMap(v12, v16);
  re::GeomIndexMap::operator=(a5, v12);
  if (v13)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v14[0] && v15)
        {
          (*(*v14[0] + 40))();
        }

        goto LABEL_15;
      }

LABEL_23:
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v10.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v14);
  }

LABEL_15:
  if (v16[0] && v18)
  {
    (*(*v16[0] + 40))(v16[0], v10);
  }

  result = v19[0];
  if (v19[0])
  {
    if (v21)
    {
      return (*(*v19[0] + 40))(v19[0], v10);
    }
  }

  return result;
}

void re::remapIndexMap(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (*(a1 + 12))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *a2;
  if (*a2)
  {
    v9 = *(a2 + 12) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && v6 == v8)
  {
    v32 = 0;
    *a3 = 0xFFFFFFFF00000000;
    *(a3 + 8) = -1;
    *(a3 + 12) = 0;
    if (v6 - 1 <= 0xFFFFFFFD)
    {
      *(a3 + 4) = 0;
      *(a3 + 8) = v6 - 1;
      v32 = v6;
      *a3 = v6;
    }

    *(a3 + 16) = v32;
    return;
  }

  if (v6)
  {
LABEL_15:
    if (a1[1] || a1[2] + 1 != v6)
    {
      goto LABEL_30;
    }

    v8 = *a2;
  }

  if (v8 && (a2[1] || a2[2] + 1 != v8))
  {
LABEL_30:
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v21 = v6;
    v23 = *(a1 + 12);
    if (!*(a1 + 12))
    {
      LOBYTE(v77) = 0;
      LODWORD(v78) = 0;
      v39 = a1[4];
      LOBYTE(v83) = 0;
      *&v84[4] = v39;
      goto LABEL_65;
    }

    if (v23 == 2)
    {
      v78 = (a1 + 4);
      v79 = 0;
      v33 = *(a1 + 4);
      if (v33 <= 0xF)
      {
LABEL_47:
        v38 = -1;
      }

      else
      {
        v34 = 0;
        v35 = *(a1 + 2);
        v36 = v33 >> 4;
        while (1)
        {
          v37 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v35), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v79 = v37 ^ 0xFFFFLL;
          if (v37 != 0xFFFFLL)
          {
            break;
          }

          v34 -= 16;
          ++v35;
          if (!--v36)
          {
            goto LABEL_47;
          }
        }

        v38 = __clz(__rbit64(v37 ^ 0xFFFFLL)) - v34;
      }

      v80 = v38;
      LOBYTE(v77) = 2;
      LOBYTE(v83) = 2;
      *&v84[4] = a1 + 4;
      *&v84[12] = xmmword_1E3049610;
      goto LABEL_65;
    }

    if (v23 != 1)
    {
      goto LABEL_99;
    }

    if (*a1)
    {
      v24 = *(a1 + 6);
      v25 = a1[1];
      v26 = *(a1 + 4);
      v27 = v24 + 4 * v26;
      LOBYTE(v77) = 1;
      if (v24)
      {
        v28 = v24 + 4 * v25;
        if (v26 != v25)
        {
          v28 -= 4;
          v29 = 4 * v26 - 4 * v25;
          do
          {
            v31 = *(v28 + 4);
            v28 += 4;
            v30 = v31;
            if (!v29)
            {
              break;
            }

            v29 -= 4;
          }

          while (v30 == -1);
        }
      }

      else
      {
        v28 = 0;
      }

      v78 = v24;
      v79 = v28;
      v80 = v27;
      v40 = *(a1 + 6);
      v41 = v40 + 4 * *(a1 + 4);
      LOBYTE(v83) = 1;
      *&v84[4] = v40;
      *&v84[12] = v41;
      *&v84[20] = v41;
    }

    else
    {
      LOBYTE(v77) = 1;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      LOBYTE(v83) = 1;
      memset(&v84[4], 0, 24);
    }

    while (1)
    {
LABEL_65:
      if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v77, &v83))
      {
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v83, v48);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v77, v49);
        re::GeomIndexMap::GeomIndexMap(a3, &v85);
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v85);
        return;
      }

      v73 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v77, v48);
      v43 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v77, v42);
      v45 = HIDWORD(v43);
      LODWORD(v70) = HIDWORD(v43);
      v46 = *(a2 + 12);
      if (v46 == 2)
      {
        break;
      }

      if (v46 == 1)
      {
        if (*(a2 + 4) > v45)
        {
          LODWORD(v45) = *(*(a2 + 6) + 4 * v45);
          goto LABEL_64;
        }

LABEL_63:
        LODWORD(v45) = -1;
        goto LABEL_64;
      }

      if (*(a2 + 12))
      {
        goto LABEL_97;
      }

      if (a2[4] <= HIDWORD(v43))
      {
        LODWORD(v45) = -1;
      }

LABEL_64:
      LODWORD(v70) = v45;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v85, &v73, &v70);
      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v77);
    }

    v47 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2 + 2, &v70);
    if (v47 != -1)
    {
      LODWORD(v45) = *(*(a2 + 3) + 8 * v47 + 4);
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  LODWORD(v80) = 0;
  re::DynamicArray<unsigned int>::resize(&v77, v6, &re::kInvalidMeshIndex);
  v12 = *(a1 + 12);
  if (*(a1 + 12))
  {
    if (v12 == 2)
    {
      v74 = (a1 + 4);
      v75 = 0;
      v50 = *(a1 + 4);
      if (v50 <= 0xF)
      {
LABEL_72:
        v55 = -1;
      }

      else
      {
        v51 = 0;
        v52 = *(a1 + 2);
        v53 = v50 >> 4;
        while (1)
        {
          v54 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v52), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v75 = v54 ^ 0xFFFFLL;
          if (v54 != 0xFFFFLL)
          {
            break;
          }

          v51 -= 16;
          ++v52;
          if (!--v53)
          {
            goto LABEL_72;
          }
        }

        v55 = __clz(__rbit64(v54 ^ 0xFFFFLL)) - v51;
      }

      v76 = v55;
      LOBYTE(v73) = 2;
      LOBYTE(v70) = 2;
      v71 = (a1 + 4);
      v72 = xmmword_1E3049610;
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_100;
      }

      if (*a1)
      {
        v13 = *(a1 + 6);
        v14 = a1[1];
        v15 = *(a1 + 4);
        v16 = v13 + 4 * v15;
        LOBYTE(v73) = 1;
        if (v13)
        {
          v17 = v13 + 4 * v14;
          if (v15 != v14)
          {
            v17 -= 4;
            v18 = 4 * v15 - 4 * v14;
            do
            {
              v20 = *(v17 + 4);
              v17 += 4;
              v19 = v20;
              if (!v18)
              {
                break;
              }

              v18 -= 4;
            }

            while (v19 == -1);
          }
        }

        else
        {
          v17 = 0;
        }

        v74 = v13;
        v75 = v17;
        v76 = v16;
        v57 = *(a1 + 6);
        v58 = v57 + 4 * *(a1 + 4);
        LOBYTE(v70) = 1;
        v71 = v57;
        *&v72 = v58;
        *(&v72 + 1) = v58;
      }

      else
      {
        LOBYTE(v73) = 1;
        v75 = 0;
        v76 = 0;
        v74 = 0;
        LOBYTE(v70) = 1;
        v72 = 0uLL;
        v71 = 0;
      }
    }
  }

  else
  {
    LOBYTE(v73) = 0;
    LODWORD(v74) = 0;
    v56 = a1[4];
    LOBYTE(v70) = 0;
    LODWORD(v71) = v56;
  }

  if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v73, &v70))
  {
LABEL_93:
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v70, v59);
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v73, v69);
    re::GeomIndexMap::GeomIndexMap(a3, &v77);
    if (v77)
    {
      if (v81)
      {
        (*(*v77 + 40))();
      }
    }

    return;
  }

  while (1)
  {
    v60 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v73, v59);
    v62 = HIDWORD(v60);
    LODWORD(v85) = HIDWORD(v60);
    v63 = *(a2 + 12);
    if (v63 == 2)
    {
      v65 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2 + 2, &v85);
      if (v65 != -1)
      {
        v64 = *(*(a2 + 3) + 8 * v65 + 4);
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (v63 == 1)
    {
      if (*(a2 + 4) > v62)
      {
        v64 = *(*(a2 + 6) + 4 * v62);
        goto LABEL_91;
      }

LABEL_90:
      v64 = -1;
      goto LABEL_91;
    }

    if (*(a2 + 12))
    {
      break;
    }

    if (a2[4] <= HIDWORD(v60))
    {
      v64 = -1;
    }

    else
    {
      v64 = HIDWORD(v60);
    }

LABEL_91:
    v66 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v73, v61);
    v67 = v66;
    v68 = v79;
    if (v79 <= v66)
    {
      v82 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      *v84 = "operator[]";
      *&v84[8] = 1024;
      *&v84[10] = 789;
      *&v84[14] = 2048;
      *&v84[16] = v67;
      *&v84[24] = 2048;
      *&v84[26] = v68;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_97:
      re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      _os_crash();
      __break(1u);
    }

    *(v81 + 4 * v66) = v64;
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v73);
    if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v73, &v70))
    {
      goto LABEL_93;
    }
  }

  re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v70, v71);
  _os_crash();
  __break(1u);
LABEL_99:
  re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_100:
  re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
}

uint64_t re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == 2)
  {
    v8 = (*(*(a1 + 1) + 8) + 8 * *(a1 + 3));
    LODWORD(v5) = *v8;
    v6 = v8[1];
    return v5 | (v6 << 32);
  }

  if (v4 == 1)
  {
    v7 = *(a1 + 2);
    v5 = (v7 - *(a1 + 1)) >> 2;
    v6 = *v7;
    return v5 | (v6 << 32);
  }

  if (!*a1)
  {
    LODWORD(v5) = *(a1 + 2);
    v6 = v5;
    return v5 | (v6 << 32);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator*", 177, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

void re::internal::wrapGeometryAroundCylinder(uint64_t **this, uint64_t **a2, re::GeomMesh *a3, float a4)
{
  v4 = a3;
  v45 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    re::GeomMesh::copy(this, a2);
  }

  if (fabsf(a4) >= 0.00001)
  {
    re::computeAABB(this, &v28);
    v8 = v29;
    v9 = v28.f32[0];
    if (vabds_f32(v29, v28.f32[0]) >= 0.00001)
    {
      v10 = v29 - v28.f32[0];
      v11 = re::GeomMesh::modifyVertexPositions(a2);
      v13 = *(this + 4);
      v14 = (v8 + v9) * 0.5;
      v15 = (v30 + v28.f32[2]) * 0.5;
      v16 = v10 / a4;
      if (v4)
      {
        if (v13)
        {
          v17 = v16 + v15;
          v18 = v12;
          v19 = (v11 + 8);
          v20 = v12;
          while (v20)
          {
            v21 = v17 - *v19;
            v22 = __sincosf_stret(((*(v19 - 2) - v14) / v10) * a4);
            *(v19 - 2) = v14 + (v21 * v22.__sinval);
            *v19 = v17 - (v21 * v22.__cosval);
            v19 += 4;
            --v20;
            if (!--v13)
            {
              goto LABEL_15;
            }
          }

          v31 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          v33 = "operator[]";
          v34 = 1024;
          v35 = 621;
          v36 = 2048;
          v37 = v18;
          v38 = 2048;
          v39 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_18;
        }
      }

      else if (v13)
      {
        v23 = v15 - v16;
        v18 = v12;
        v24 = (v11 + 8);
        v25 = v12;
        while (v25)
        {
          v26 = *v24 - v23;
          v27 = __sincosf_stret(((*(v24 - 2) - v14) / v10) * a4);
          *(v24 - 2) = v14 + (v26 * v27.__sinval);
          *v24 = v23 + (v26 * v27.__cosval);
          v24 += 4;
          --v25;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }

LABEL_18:
        v31 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        v35 = 621;
        v36 = 2048;
        v37 = v18;
        v38 = 2048;
        v39 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexNormal");
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexBitangent");
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexTangent");
    }
  }
}

uint64_t re::GeomAttribute::modifyValues<re::Vector3<float>>(void *a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 0;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = a1[7];
  (*(*a1 + 16))(a1);
  return v2;
}

float32x4_t re::anonymous namespace::transformTangentsArray(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= *(a1 + 8))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(*a1 + 16 * i))), a2[1], *(*a1 + 16 * i), 1), a2[2], *(*a1 + 16 * i), 2);
      *(*a1 + 16 * i) = result;
    }
  }

  return result;
}

uint64_t re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    return 0;
  }

  if (v4 == 2)
  {
    return *(a1 + 3) == a2[3];
  }

  if (v4 == 1)
  {
    if (*(a1 + 1) != a2[1] || *(a1 + 2) != a2[2])
    {
      return 0;
    }

    return *(a1 + 3) == a2[3];
  }

  if (*a1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator==", 197, v2, v3);
    result = _os_crash();
    __break(1u);
    return result;
  }

  return *(a1 + 2) == *(a2 + 2);
}

void *re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(void *this)
{
  v1 = *this;
  if (v1 == 2)
  {
    return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(this + 1);
  }

  if (v1 == 1)
  {
    v2 = this[2];
    if (v2)
    {
      v3 = this[3];
      if (v2 != v3)
      {
        v4 = v2 + 1;
        do
        {
          this[2] = v4;
          if (v4 == v3)
          {
            break;
          }

          v5 = *v4++;
        }

        while (v5 == -1);
      }
    }
  }

  else if (!*this)
  {
    ++*(this + 2);
  }

  return this;
}

void re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(re::GeomIndexMap::ConstantOrHashTableOrArrayIterator *this, uint64_t a2)
{
  if (*this >= 3u)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~ConstantOrHashTableOrArrayIterator", 147, v2, v3);
    _os_crash();
    __break(1u);
  }
}

unsigned int *re::GeomIndexMap::GeomIndexMap(unsigned int *a1, uint64_t *a2)
{
  v2 = a2;
  v62 = *MEMORY[0x1E69E9840];
  *(a1 + 1) = -1;
  *(a1 + 12) = 2;
  v45 = 0;
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  v44 = 0;
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2, &re::kInvalidMeshIndex) != -1)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(v2, &re::kInvalidMeshIndex);
  }

  *&v57 = v2;
  v6 = *(v2 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *v2;
    v9 = v6 >> 4;
    v4 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v57 + 1) = v10 ^ 0xFFFFLL;
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_27;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    *&v58 = v11 - v7;
    if (v11 + 1 != v7)
    {
      do
      {
        v13 = (*(v57 + 8) + 8 * v12);
        v14 = *v13;
        *v47 = *v13;
        if (v13[1] == -1)
        {
          re::DynamicArray<int>::add(v42, v47);
        }

        else
        {
          v15 = a1[1];
          if (v15 == -1 || v14 < v15)
          {
            a1[1] = v14;
          }

          v17 = a1[2];
          if (v17 == -1 || v14 > v17)
          {
            a1[2] = v14;
          }
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v57);
        v12 = v58;
      }

      while (v58 != -1);
      v19 = v43;
      if (v43)
      {
        v20 = 0;
        while (1)
        {
          v21 = v43;
          if (v43 <= v20)
          {
            break;
          }

          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(v2, (v45 + 4 * v20++));
          if (v20 == v19)
          {
            goto LABEL_27;
          }
        }

        *v50 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v47 = 136315906;
        *&v47[4] = "operator[]";
        *&v47[12] = 1024;
        *&v47[14] = 789;
        *&v47[18] = 2048;
        *&v47[20] = v20;
        v48 = 2048;
        *v49 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v46 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        v51 = 1024;
        v52 = 789;
        v53 = 2048;
        v54 = v2;
        v55 = 2048;
        v56 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }
  }

LABEL_27:
  v22 = a1[1];
  if (v22 == -1)
  {
    *(a1 + 12) = 0;
    a1[2] = -1;
    a1[4] = 0;
    *a1 = 0;
  }

  else
  {
    v23 = a1[2] - v22 + 1;
    *a1 = v23;
    v24 = *(v2 + 24);
    if (!v22 && v24 == v23)
    {
      *&v57 = v2;
      v25 = *(v2 + 16);
      if (v25 < 0x10)
      {
        goto LABEL_41;
      }

      v26 = 0;
      v27 = *v2;
      v28 = v25 >> 4;
      v5 = xmmword_1E304FAD0;
      while (1)
      {
        v4 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v27), xmmword_1E304FAD0))));
        v4.n128_u64[0] = vqtbl1_s8(v4, 0x3830282018100800);
        *(&v57 + 1) = v4.n128_u16[0] ^ 0xFFFFLL;
        if (v4.n128_u16[0] != 0xFFFFLL)
        {
          break;
        }

        v26 -= 16;
        ++v27;
        if (!--v28)
        {
LABEL_41:
          *(a1 + 12) = 0;
          a1[4] = v23;
          goto LABEL_42;
        }
      }

      v29 = __clz(__rbit64(v4.n128_u16[0] ^ 0xFFFFLL));
      v30 = v29 - v26;
      *&v58 = v29 - v26;
      if (v29 + 1 == v26)
      {
        goto LABEL_41;
      }

      while (*(*(v57 + 8) + 8 * v30) == *(*(v57 + 8) + 8 * v30 + 4))
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v57);
        v30 = v58;
        if (v58 == -1)
        {
          LODWORD(v23) = *a1;
          goto LABEL_41;
        }
      }

      *&v49[2] = 0;
      memset(v47, 0, sizeof(v47));
      re::DynamicArray<unsigned int>::resize(v47, *a1, &re::kInvalidMeshIndex);
      v40[0] = v2;
      v32 = *(v2 + 16);
      v5 = xmmword_1E304FAD0;
      if (v32 < 0x10)
      {
        goto LABEL_54;
      }

      v33 = 0;
      v34 = *v2;
      v35 = v32 >> 4;
      while (1)
      {
        v36 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v34), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v40[1] = v36 ^ 0xFFFFLL;
        if (v36 != 0xFFFFLL)
        {
          break;
        }

        v33 -= 16;
        ++v34;
        if (!--v35)
        {
          goto LABEL_54;
        }
      }

      v37 = __clz(__rbit64(v36 ^ 0xFFFFLL));
      v38 = v37 - v33;
      v41 = v37 - v33;
      if (v37 + 1 == v33)
      {
LABEL_54:
        *(a1 + 12) = 1;
        *(a1 + 2) = *v47;
        v4 = *&v47[8];
        *(a1 + 6) = *&v47[8];
        *(a1 + 6) = *&v49[2];
        a1[10] = 1;
        goto LABEL_42;
      }

      while (1)
      {
        v39 = (*(v40[0] + 8) + 8 * v38);
        v2 = *v39;
        v20 = *&v47[16];
        if (*&v47[16] <= v2)
        {
          goto LABEL_56;
        }

        *(*&v49[2] + 4 * v2) = v39[1];
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v40);
        v38 = v41;
        if (v41 == -1)
        {
          goto LABEL_54;
        }
      }
    }

    *a1 = v24;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 2, v2);
  }

LABEL_42:
  if (v42[0] && v45)
  {
    (*(*v42[0] + 40))(v4, v5);
  }

  return a1;
}

BOOL re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(uint64_t a1, unsigned int *a2)
{
  v3 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 8 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::internal::GeomKDTree<float>::buildHelper(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = *a5;
  *a5 = v6 + 1;
  if (a1[4] <= v6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  v8 = a1[6] + 24 * v6;
  if (a3 - a2 != 1)
  {
    v9 = (a3 + a2) >> 1;
    v10 = *(a4 + 32);
    v11 = a3;
    if (v9 == a3)
    {
      goto LABEL_97;
    }

    v12 = (v10 + 4 * a3);
    v13 = (v10 + 4 * v9);
    v14 = (v10 + 4 * a2);
    while (1)
    {
      v15 = v12 - v14;
      if (v15 < 2)
      {
        goto LABEL_96;
      }

      if (v15 == 3)
      {
        v58 = *v14;
        v59 = v14[1];
        v60 = *a1;
        v61 = *(*a1 + 4 * v59);
        v62 = *(*a1 + 4 * v58);
        v63 = *(v12 - 1);
        v64 = *(*a1 + 4 * v63);
        if (v61 >= v62)
        {
          if (v64 < v61)
          {
            v14[1] = v63;
            *(v12 - 1) = v59;
            v74 = *v14;
            v73 = v14[1];
            if (*(v60 + 4 * v73) < *(v60 + 4 * v74))
            {
              *v14 = v73;
              v14[1] = v74;
            }
          }

          goto LABEL_96;
        }

        if (v64 >= v61)
        {
          *v14 = v59;
          v14[1] = v58;
          v75 = *(v12 - 1);
          if (*(v60 + 4 * v75) >= v62)
          {
            goto LABEL_96;
          }

          v14[1] = v75;
        }

        else
        {
          *v14 = v63;
        }

LABEL_95:
        *(v12 - 1) = v58;
        goto LABEL_96;
      }

      if (v15 == 2)
      {
        v65 = *(v12 - 1);
        v58 = *v14;
        if (*(*a1 + 4 * v65) >= *(*a1 + 4 * v58))
        {
          goto LABEL_96;
        }

        *v14 = v65;
        goto LABEL_95;
      }

      if (v15 <= 7)
      {
        for (; v14 != v12 - 1; ++v14)
        {
          if (v14 != v12)
          {
            v66 = v14 + 1;
            if (v14 + 1 != v12)
            {
              v67 = *v14;
              v68 = *v14;
              v69 = v14;
              v70 = v14 + 1;
              do
              {
                v72 = *v70++;
                v71 = v72;
                if (*(*a1 + 4 * v72) < *(*a1 + 4 * v68))
                {
                  v68 = v71;
                  v69 = v66;
                }

                v66 = v70;
              }

              while (v70 != v12);
              if (v69 != v14)
              {
                *v14 = *v69;
                *v69 = v67;
              }
            }
          }
        }

        goto LABEL_96;
      }

      v16 = &v14[v15 >> 1];
      v17 = v12 - 1;
      v18 = *(v12 - 1);
      v19 = *v16;
      v20 = *a1;
      v21 = *(*a1 + 4 * v19);
      v22 = *v14;
      v23 = *(*a1 + 4 * v22);
      v24 = *(*a1 + 4 * v18);
      if (v21 < v23)
      {
        break;
      }

      if (v24 < v21)
      {
        *v16 = v18;
        *v17 = v19;
        v25 = *v16;
        v26 = *v14;
        if (*(v20 + 4 * v25) < *(v20 + 4 * v26))
        {
          *v14 = v25;
          *v16 = v26;
        }

        goto LABEL_22;
      }

      v28 = 0;
LABEL_24:
      v29 = *v14;
      v30 = *(v20 + 4 * v29);
      v31 = *(v20 + 4 * *v16);
      if (v30 >= v31)
      {
        v32 = v12 - 1;
        while (--v32 != v14)
        {
          v33 = *v32;
          if (*(v20 + 4 * v33) < v31)
          {
            *v14 = v33;
            *v32 = v29;
            if (v28)
            {
              v28 = 2;
            }

            else
            {
              v28 = 1;
            }

            goto LABEL_32;
          }
        }

        v46 = v14 + 1;
        v47 = *v17;
        if (v30 >= *(v20 + 4 * v47))
        {
          while (v46 != v17)
          {
            v48 = *v46;
            if (v30 < *(v20 + 4 * v48))
            {
              *v46++ = v47;
              *v17 = v48;
              goto LABEL_64;
            }

            ++v46;
          }

LABEL_96:
          v11 = v9;
LABEL_97:
          if (*(a4 + 16) > v11)
          {
            *(v8 + 16) = *(v10 + 4 * v11);
            *v8 = re::internal::GeomKDTree<float>::buildHelper(a1);
            *(v8 + 8) = re::internal::GeomKDTree<float>::buildHelper(a1);
            return v8;
          }

LABEL_102:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_64:
        if (v46 == v17)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v52 = *(v20 + 4 * *v14);
          do
          {
            v54 = *v46++;
            v53 = v54;
          }

          while (v52 >= *(v20 + 4 * v54));
          v55 = v46 - 1;
          do
          {
            v57 = *--v17;
            v56 = v57;
          }

          while (v52 < *(v20 + 4 * v57));
          if (v55 >= v17)
          {
            break;
          }

          *v55 = v56;
          *v17 = v53;
        }

        v14 = v46 - 1;
        if (v55 > v13)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v32 = v12 - 1;
LABEL_32:
        v34 = v14 + 1;
        if (v14 + 1 >= v32)
        {
          v39 = v14 + 1;
        }

        else
        {
          v35 = v14 + 1;
          while (1)
          {
            v36 = *(v20 + 4 * *v16);
            do
            {
              v38 = *v35++;
              v37 = v38;
            }

            while (*(v20 + 4 * v38) < v36);
            v39 = v35 - 1;
            do
            {
              v41 = *--v32;
              v40 = v41;
            }

            while (*(v20 + 4 * v41) >= v36);
            if (v39 >= v32)
            {
              break;
            }

            *v39 = v40;
            *v32 = v37;
            ++v28;
            if (v39 == v16)
            {
              v16 = v32;
            }
          }
        }

        if (v39 != v16)
        {
          v42 = *v16;
          v43 = *v39;
          if (*(v20 + 4 * v42) < *(v20 + 4 * v43))
          {
            *v39 = v42;
            *v16 = v43;
            ++v28;
          }
        }

        if (v39 == v13)
        {
          goto LABEL_96;
        }

        if (!v28)
        {
          if (v39 <= v13)
          {
            v49 = v39 + 1;
            while (v49 != v12)
            {
              v50 = *(v20 + 4 * *v49);
              v51 = *(v20 + 4 * *(v49++ - 1));
              if (v50 < v51)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            while (v34 != v39)
            {
              v44 = *(v20 + 4 * *v34);
              v45 = *(v20 + 4 * *(v34++ - 1));
              if (v44 < v45)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_48:
        if (v39 > v13)
        {
          v12 = v39;
        }

        else
        {
          v14 = v39 + 1;
        }
      }

      if (v12 == v13)
      {
        goto LABEL_96;
      }
    }

    if (v24 >= v21)
    {
      *v14 = v19;
      *v16 = v22;
      v27 = *v17;
      if (*(v20 + 4 * v27) >= v23)
      {
LABEL_22:
        v28 = 1;
        goto LABEL_24;
      }

      *v16 = v27;
    }

    else
    {
      *v14 = v18;
    }

    *v17 = v22;
    goto LABEL_22;
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_101:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

  *(v8 + 16) = *(*(a4 + 32) + 4 * a2);
  *v8 = 0;
  *(v8 + 8) = 0;
  return v8;
}

void *re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 24 * a2, 8);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 24 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 24 * a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

uint64_t re::internal::GeomKDTree<float>::findWithinRadiusHelper(uint64_t result, uint64_t **a2, float *a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = *(*v9 + 4 * *(v8 + 4));
      if (v12 == *a3)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = (*a3 - v12);
      }

      if (v13 >= v10)
      {
        if (v13 <= a5)
        {
          if (v13 * v13 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v14 = *v8++;
          result = re::internal::GeomKDTree<float>::findWithinRadiusHelper(v9, v14, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<double>::buildHelper(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = *a5;
  *a5 = v6 + 1;
  if (a1[4] <= v6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  v8 = a1[6] + 24 * v6;
  if (a3 - a2 != 1)
  {
    v9 = (a3 + a2) >> 1;
    v10 = *(a4 + 32);
    v11 = a3;
    if (v9 == a3)
    {
      goto LABEL_97;
    }

    v12 = (v10 + 4 * a3);
    v13 = (v10 + 4 * v9);
    v14 = (v10 + 4 * a2);
    while (1)
    {
      v15 = v12 - v14;
      if (v15 < 2)
      {
        goto LABEL_96;
      }

      if (v15 == 3)
      {
        v58 = *v14;
        v59 = v14[1];
        v60 = *a1;
        v61 = *(*a1 + 8 * v59);
        v62 = *(*a1 + 8 * v58);
        v63 = *(v12 - 1);
        v64 = *(*a1 + 8 * v63);
        if (v61 >= v62)
        {
          if (v64 < v61)
          {
            v14[1] = v63;
            *(v12 - 1) = v59;
            v74 = *v14;
            v73 = v14[1];
            if (*(v60 + 8 * v73) < *(v60 + 8 * v74))
            {
              *v14 = v73;
              v14[1] = v74;
            }
          }

          goto LABEL_96;
        }

        if (v64 >= v61)
        {
          *v14 = v59;
          v14[1] = v58;
          v75 = *(v12 - 1);
          if (*(v60 + 8 * v75) >= v62)
          {
            goto LABEL_96;
          }

          v14[1] = v75;
        }

        else
        {
          *v14 = v63;
        }

LABEL_95:
        *(v12 - 1) = v58;
        goto LABEL_96;
      }

      if (v15 == 2)
      {
        v65 = *(v12 - 1);
        v58 = *v14;
        if (*(*a1 + 8 * v65) >= *(*a1 + 8 * v58))
        {
          goto LABEL_96;
        }

        *v14 = v65;
        goto LABEL_95;
      }

      if (v15 <= 7)
      {
        for (; v14 != v12 - 1; ++v14)
        {
          if (v14 != v12)
          {
            v66 = v14 + 1;
            if (v14 + 1 != v12)
            {
              v67 = *v14;
              v68 = *v14;
              v69 = v14;
              v70 = v14 + 1;
              do
              {
                v72 = *v70++;
                v71 = v72;
                if (*(*a1 + 8 * v72) < *(*a1 + 8 * v68))
                {
                  v68 = v71;
                  v69 = v66;
                }

                v66 = v70;
              }

              while (v70 != v12);
              if (v69 != v14)
              {
                *v14 = *v69;
                *v69 = v67;
              }
            }
          }
        }

        goto LABEL_96;
      }

      v16 = &v14[v15 >> 1];
      v17 = v12 - 1;
      v18 = *(v12 - 1);
      v19 = *v16;
      v20 = *a1;
      v21 = *(*a1 + 8 * v19);
      v22 = *v14;
      v23 = *(*a1 + 8 * v22);
      v24 = *(*a1 + 8 * v18);
      if (v21 < v23)
      {
        break;
      }

      if (v24 < v21)
      {
        *v16 = v18;
        *v17 = v19;
        v25 = *v16;
        v26 = *v14;
        if (*(v20 + 8 * v25) < *(v20 + 8 * v26))
        {
          *v14 = v25;
          *v16 = v26;
        }

        goto LABEL_22;
      }

      v28 = 0;
LABEL_24:
      v29 = *v14;
      v30 = *(v20 + 8 * v29);
      v31 = *(v20 + 8 * *v16);
      if (v30 >= v31)
      {
        v32 = v12 - 1;
        while (--v32 != v14)
        {
          v33 = *v32;
          if (*(v20 + 8 * v33) < v31)
          {
            *v14 = v33;
            *v32 = v29;
            if (v28)
            {
              v28 = 2;
            }

            else
            {
              v28 = 1;
            }

            goto LABEL_32;
          }
        }

        v46 = v14 + 1;
        v47 = *v17;
        if (v30 >= *(v20 + 8 * v47))
        {
          while (v46 != v17)
          {
            v48 = *v46;
            if (v30 < *(v20 + 8 * v48))
            {
              *v46++ = v47;
              *v17 = v48;
              goto LABEL_64;
            }

            ++v46;
          }

LABEL_96:
          v11 = v9;
LABEL_97:
          if (*(a4 + 16) > v11)
          {
            *(v8 + 16) = *(v10 + 4 * v11);
            *v8 = re::internal::GeomKDTree<double>::buildHelper(a1);
            *(v8 + 8) = re::internal::GeomKDTree<double>::buildHelper(a1);
            return v8;
          }

LABEL_102:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_64:
        if (v46 == v17)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v52 = *(v20 + 8 * *v14);
          do
          {
            v54 = *v46++;
            v53 = v54;
          }

          while (v52 >= *(v20 + 8 * v54));
          v55 = v46 - 1;
          do
          {
            v57 = *--v17;
            v56 = v57;
          }

          while (v52 < *(v20 + 8 * v57));
          if (v55 >= v17)
          {
            break;
          }

          *v55 = v56;
          *v17 = v53;
        }

        v14 = v46 - 1;
        if (v55 > v13)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v32 = v12 - 1;
LABEL_32:
        v34 = v14 + 1;
        if (v14 + 1 >= v32)
        {
          v39 = v14 + 1;
        }

        else
        {
          v35 = v14 + 1;
          while (1)
          {
            v36 = *(v20 + 8 * *v16);
            do
            {
              v38 = *v35++;
              v37 = v38;
            }

            while (*(v20 + 8 * v38) < v36);
            v39 = v35 - 1;
            do
            {
              v41 = *--v32;
              v40 = v41;
            }

            while (*(v20 + 8 * v41) >= v36);
            if (v39 >= v32)
            {
              break;
            }

            *v39 = v40;
            *v32 = v37;
            ++v28;
            if (v39 == v16)
            {
              v16 = v32;
            }
          }
        }

        if (v39 != v16)
        {
          v42 = *v16;
          v43 = *v39;
          if (*(v20 + 8 * v42) < *(v20 + 8 * v43))
          {
            *v39 = v42;
            *v16 = v43;
            ++v28;
          }
        }

        if (v39 == v13)
        {
          goto LABEL_96;
        }

        if (!v28)
        {
          if (v39 <= v13)
          {
            v49 = v39 + 1;
            while (v49 != v12)
            {
              v50 = *(v20 + 8 * *v49);
              v51 = *(v20 + 8 * *(v49++ - 1));
              if (v50 < v51)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            while (v34 != v39)
            {
              v44 = *(v20 + 8 * *v34);
              v45 = *(v20 + 8 * *(v34++ - 1));
              if (v44 < v45)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_48:
        if (v39 > v13)
        {
          v12 = v39;
        }

        else
        {
          v14 = v39 + 1;
        }
      }

      if (v12 == v13)
      {
        goto LABEL_96;
      }
    }

    if (v24 >= v21)
    {
      *v14 = v19;
      *v16 = v22;
      v27 = *v17;
      if (*(v20 + 8 * v27) >= v23)
      {
LABEL_22:
        v28 = 1;
        goto LABEL_24;
      }

      *v16 = v27;
    }

    else
    {
      *v14 = v18;
    }

    *v17 = v22;
    goto LABEL_22;
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_101:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

  *(v8 + 16) = *(*(a4 + 32) + 4 * a2);
  *v8 = 0;
  *(v8 + 8) = 0;
  return v8;
}

uint64_t re::internal::GeomKDTree<double>::findWithinRadiusHelper(uint64_t result, uint64_t **a2, double *a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = *(*v9 + 8 * *(v8 + 4));
      if (v12 == *a3)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = *a3 - v12;
      }

      if (v13 >= v10)
      {
        if (v13 <= a5)
        {
          if (v13 * v13 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v14 = *v8++;
          result = re::internal::GeomKDTree<double>::findWithinRadiusHelper(v9, v14, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = *a5;
  *a5 = v6 + 1;
  if (a1[4] <= v6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_103;
  }

  v8 = a1[6] + 24 * v6;
  if (a3 - a2 != 1)
  {
    v9 = *(a4 + 16);
    if (v9 <= a2)
    {
LABEL_104:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_105;
    }

    v10 = (a3 + a2) >> 1;
    if (v9 <= v10)
    {
LABEL_105:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_106;
    }

    v11 = a3 - 1;
    if (v9 <= v11)
    {
LABEL_106:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_107;
    }

    v12 = *(a4 + 32);
    v13 = *(*a1 + 8 * *(v12 + 4 * a2));
    v14 = *(*a1 + 8 * *(v12 + 4 * v10));
    v15 = *(*a1 + 8 * *(v12 + 4 * v11));
    v16 = vsub_f32(vmaxnm_f32(vmaxnm_f32(v13, v14), v15), vminnm_f32(vminnm_f32(v13, v14), v15));
    *(v8 + 20) = vmvn_s8(vcge_f32(v16, vdup_lane_s32(v16, 1))).u8[0] & 1;
    if (v10 == a3)
    {
LABEL_11:
      if (*(a4 + 16) > v10)
      {
        *(v8 + 16) = *(*(a4 + 32) + 4 * v10);
        *v8 = re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(a1);
        *(v8 + 8) = re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(a1);
        return v8;
      }

LABEL_107:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v18 = *(a4 + 32);
    v19 = (v18 + 4 * a3);
    v20 = (v18 + 4 * v10);
    v21 = (v18 + 4 * a2);
    while (1)
    {
      v22 = v19 - v21;
      if (v22 < 2)
      {
        goto LABEL_11;
      }

      if (v22 == 3)
      {
        v71 = *v21;
        v72 = v21[1];
        v73 = *a1;
        v74 = *(v8 + 20);
        v75 = *(*a1 + 8 * v72 + 4 * v74);
        v76 = *a1 + 8 * v71;
        v77 = *(v19 - 1);
        v78 = *(*a1 + 8 * v77 + 4 * v74);
        if (v75 >= *(v76 + 4 * v74))
        {
          if (v78 < v75)
          {
            v21[1] = v77;
            *(v19 - 1) = v72;
            v90 = *v21;
            v89 = v21[1];
            if (*(v73 + 8 * v89 + 4 * *(v8 + 20)) < *(v73 + 8 * v90 + 4 * *(v8 + 20)))
            {
              *v21 = v89;
              v21[1] = v90;
            }
          }
        }

        else
        {
          if (v78 >= v75)
          {
            *v21 = v72;
            v21[1] = v71;
            v91 = *(v19 - 1);
            if (*(v73 + 8 * v91 + 4 * *(v8 + 20)) >= *(v76 + 4 * *(v8 + 20)))
            {
              goto LABEL_11;
            }

            v21[1] = v91;
          }

          else
          {
            *v21 = v77;
          }

          *(v19 - 1) = v71;
        }

        goto LABEL_11;
      }

      if (v22 == 2)
      {
        v79 = *(v19 - 1);
        v80 = *v21;
        if (*(*a1 + 8 * v79 + 4 * *(v8 + 20)) < *(*a1 + 8 * v80 + 4 * *(v8 + 20)))
        {
          *v21 = v79;
          *(v19 - 1) = v80;
        }

        goto LABEL_11;
      }

      if (v22 <= 7)
      {
        for (; v21 != v19 - 1; ++v21)
        {
          if (v21 != v19)
          {
            v81 = v21 + 1;
            if (v21 + 1 != v19)
            {
              v83 = *v21;
              v84 = *v21;
              v85 = v21;
              v86 = v21 + 1;
              do
              {
                v88 = *v86++;
                v87 = v88;
                v82 = *a1 + 4 * *(v8 + 20);
                if (*(v82 + 8 * v88) < *(v82 + 8 * v84))
                {
                  v84 = v87;
                  v85 = v81;
                }

                v81 = v86;
              }

              while (v86 != v19);
              if (v85 != v21)
              {
                *v21 = *v85;
                *v85 = v83;
              }
            }
          }
        }

        goto LABEL_11;
      }

      v23 = &v21[v22 >> 1];
      v24 = v19 - 1;
      v25 = *(v19 - 1);
      v26 = *v23;
      v27 = *v21;
      v28 = *a1;
      v29 = *(v8 + 20);
      v30 = *(*a1 + 8 * v26 + 4 * v29);
      v31 = *a1 + 8 * v27;
      v32 = *(*a1 + 8 * v25 + 4 * v29);
      if (v30 < *(v31 + 4 * v29))
      {
        break;
      }

      if (v32 < v30)
      {
        *v23 = v25;
        *v24 = v26;
        v33 = *v23;
        v34 = *v21;
        if (*(v28 + 8 * v33 + 4 * *(v8 + 20)) < *(v28 + 8 * v34 + 4 * *(v8 + 20)))
        {
          *v21 = v33;
          *v23 = v34;
        }

        goto LABEL_28;
      }

      v36 = 0;
LABEL_30:
      v37 = *v21;
      v38 = *(v8 + 20);
      v39 = *(v28 + 8 * v37 + 4 * v38);
      v40 = *(v28 + 8 * *v23 + 4 * v38);
      if (v39 >= v40)
      {
        v42 = v28 + 4 * v38;
        v41 = v19 - 1;
        while (--v41 != v21)
        {
          v43 = *v41;
          if (*(v42 + 8 * v43) < v40)
          {
            *v21 = v43;
            *v41 = v37;
            if (v36)
            {
              v36 = 2;
            }

            else
            {
              v36 = 1;
            }

            goto LABEL_38;
          }
        }

        v58 = v21 + 1;
        v59 = *v24;
        if (v39 >= *(v28 + 8 * v59 + 4 * v38))
        {
          while (v58 != v24)
          {
            v60 = *v58;
            if (v39 < *(v42 + 8 * v60))
            {
              *v58++ = v59;
              *v24 = v60;
              goto LABEL_70;
            }

            ++v58;
          }

          goto LABEL_11;
        }

LABEL_70:
        if (v58 == v24)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v64 = v28 + 4 * *(v8 + 20);
          v65 = *(v64 + 8 * *v21);
          do
          {
            v67 = *v58++;
            v66 = v67;
          }

          while (v65 >= *(v64 + 8 * v67));
          v68 = v58 - 1;
          do
          {
            v70 = *--v24;
            v69 = v70;
          }

          while (v65 < *(v64 + 8 * v70));
          if (v68 >= v24)
          {
            break;
          }

          *v68 = v69;
          *v24 = v66;
        }

        v21 = v58 - 1;
        if (v68 > v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v41 = v19 - 1;
LABEL_38:
        v44 = v21 + 1;
        if (v21 + 1 >= v41)
        {
          v50 = v21 + 1;
        }

        else
        {
          v45 = v21 + 1;
          while (1)
          {
            v46 = v28 + 4 * *(v8 + 20);
            v47 = *(v46 + 8 * *v23);
            do
            {
              v49 = *v45++;
              v48 = v49;
            }

            while (*(v46 + 8 * v49) < v47);
            v50 = v45 - 1;
            do
            {
              v52 = *--v41;
              v51 = v52;
            }

            while (*(v46 + 8 * v52) >= v47);
            if (v50 >= v41)
            {
              break;
            }

            *v50 = v51;
            *v41 = v48;
            ++v36;
            if (v50 == v23)
            {
              v23 = v41;
            }
          }
        }

        if (v50 != v23)
        {
          v53 = *v23;
          v54 = *v50;
          if (*(v28 + 8 * v53 + 4 * *(v8 + 20)) < *(v28 + 8 * v54 + 4 * *(v8 + 20)))
          {
            *v50 = v53;
            *v23 = v54;
            ++v36;
          }
        }

        if (v50 == v20)
        {
          goto LABEL_11;
        }

        if (!v36)
        {
          v55 = v28 + 4 * *(v8 + 20);
          if (v50 <= v20)
          {
            v61 = v50 + 1;
            while (v61 != v19)
            {
              v62 = *(v55 + 8 * *v61);
              v63 = *(v55 + 8 * *(v61++ - 1));
              if (v62 < v63)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            while (v44 != v50)
            {
              v56 = *(v55 + 8 * *v44);
              v57 = *(v55 + 8 * *(v44++ - 1));
              if (v56 < v57)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_11;
        }

LABEL_54:
        if (v50 > v20)
        {
          v19 = v50;
        }

        else
        {
          v21 = v50 + 1;
        }
      }

      if (v19 == v20)
      {
        goto LABEL_11;
      }
    }

    if (v32 >= v30)
    {
      *v21 = v26;
      *v23 = v27;
      v35 = *v24;
      if (*(v28 + 8 * v35 + 4 * *(v8 + 20)) >= *(v31 + 4 * *(v8 + 20)))
      {
LABEL_28:
        v36 = 1;
        goto LABEL_30;
      }

      *v23 = v35;
    }

    else
    {
      *v21 = v25;
    }

    *v24 = v27;
    goto LABEL_28;
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_103:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  *(v8 + 16) = *(*(a4 + 32) + 4 * a2);
  *v8 = 0;
  *(v8 + 8) = 0;
  return v8;
}

uint64_t re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(uint64_t result, uint64_t **a2, float32x2_t *a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 8 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          v17 = vceq_f32(*v12, *a3);
          if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0)
          {
            v19 = 0.0;
          }

          else
          {
            v18 = vsub_f32(*v12, *a3);
            v19 = vaddv_f32(vmul_f32(v18, v18));
          }

          if (v19 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v20 = *v8++;
          result = re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(v9, v20, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::build(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = a2;
  v13 = 0;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v12 = 0;
  re::DynamicArray<float>::resize(v10, a2);
  if (a2)
  {
    v5 = 0;
    v6 = 1;
    v7 = v11;
    v8 = v13;
    do
    {
      if (v7 <= v5)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        v18 = 789;
        v19 = 2048;
        v20 = v5;
        v21 = 2048;
        v22 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v8 + 4 * v5) = v6 - 1;
      v5 = v6++;
    }

    while (v5 < a2);
  }

  *(a1 + 32) = 0;
  ++*(a1 + 40);
  re::DynamicArray<re::internal::GeomKDTree<re::Vector3<float>>::Node>::resize((a1 + 16), a2);
  if (*(a1 + 8))
  {
    LODWORD(v23[0]) = 0;
    re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, 0, a2, v10, v23);
  }

  if (v10[0] && v13)
  {
    (*(*v10[0] + 40))();
  }

  return 1;
}

void *re::DynamicArray<re::internal::GeomKDTree<re::Vector3<float>>::Node>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 24 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 24 * v4;
        v7 = v5 / 0x18uLL + 1;
        do
        {
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = -1;
          *(v6 + 20) = 0;
          v6 += 24;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= a2)
  {
    return 0;
  }

  v7 = *a5;
  *a5 = v7 + 1;
  if (a1[4] <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v10 = a1[6] + 24 * v7;
  if (a3 - a2 != 1)
  {
    v12 = re::internal::GeomKDTree<re::Vector3<float>>::partition(a1, a2, a3, a4, (v10 + 20));
    v13 = v12;
    if (*(a4 + 16) > v12)
    {
      *(v10 + 16) = *(*(a4 + 32) + 4 * v12);
      *v10 = re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, a2, v12, a4, a5);
      *(v10 + 8) = re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, v13 + 1, a3, a4, a5);
      return v10;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  *(v10 + 16) = *(*(a4 + 32) + 4 * a2);
  *v10 = 0;
  *(v10 + 8) = 0;
  return v10;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::partition(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, char *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 16);
  if (v5 <= a2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v6 = (a3 + a2) >> 1;
  if (v5 <= v6)
  {
LABEL_16:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a3 - 1;
  if (v5 <= v7)
  {
    goto LABEL_17;
  }

  v8 = *(a4 + 32);
  v9 = *(*a1 + 16 * *(v8 + 4 * a2));
  v10 = *(*a1 + 16 * *(v8 + 4 * v6));
  v9.i32[3] = 0;
  v10.i32[3] = 0;
  v11 = *(*a1 + 16 * *(v8 + 4 * v7));
  v12 = vmaxnmq_f32(v9, v10);
  v12.i32[3] = 0;
  v11.i32[3] = 0;
  v13 = vminnmq_f32(v9, v10);
  v13.i32[3] = 0;
  v14 = vsubq_f32(vmaxnmq_f32(v12, v11), vminnmq_f32(v13, v11));
  if (v14.f32[1] >= v14.f32[2])
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v14.f32[0] >= v14.f32[2] && v14.f32[0] >= v14.f32[1])
  {
    v15 = 0;
  }

  *a5 = v15;
  v17 = *(a4 + 32);
  *&v19 = a1;
  *(&v19 + 1) = a5;
  if (v6 != a3)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>((v17 + 4 * a2), (v17 + 4 * v6), (v17 + 4 * a3), &v19);
  }

  return v6;
}

unsigned int *std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v4 = a4[1];
    while (1)
    {
      v6 = a3 - result;
      if (v6 < 2)
      {
        return result;
      }

      if (v6 == 3)
      {
        v56 = *result;
        v57 = result[1];
        v58 = *v5;
        v59 = *v4;
        v60 = *(v58 + 16 * v57 + 4 * v59);
        v61 = v58 + 16 * v56;
        v62 = *(a3 - 1);
        v63 = *(v58 + 16 * v62 + 4 * v59);
        if (v60 >= *(v61 + 4 * v59))
        {
          if (v63 < v60)
          {
            result[1] = v62;
            *(a3 - 1) = v57;
            v67 = *result;
            v66 = result[1];
            if (*(v58 + 16 * v66 + 4 * *v4) < *(v58 + 16 * v67 + 4 * *v4))
            {
              *result = v66;
              result[1] = v67;
            }
          }
        }

        else
        {
          if (v63 >= v60)
          {
            *result = v57;
            result[1] = v56;
            v68 = *(a3 - 1);
            if (*(v58 + 16 * v68 + 4 * *v4) >= *(v61 + 4 * *v4))
            {
              return result;
            }

            result[1] = v68;
          }

          else
          {
            *result = v62;
          }

          *(a3 - 1) = v56;
        }

        return result;
      }

      if (v6 == 2)
      {
        v64 = *(a3 - 1);
        v65 = *result;
        if (*(*v5 + 16 * v64 + 4 * *v4) < *(*v5 + 16 * v65 + 4 * *v4))
        {
          *result = v64;
          *(a3 - 1) = v65;
        }

        return result;
      }

      if (v6 <= 7)
      {
        return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(result, a3, a4);
      }

      v7 = &result[v6 >> 1];
      v8 = a3 - 1;
      v9 = *(a3 - 1);
      v10 = *v7;
      v11 = *result;
      v12 = *v5;
      v13 = *v4;
      v14 = *(*v5 + 16 * v10 + 4 * v13);
      v15 = *v5 + 16 * v11;
      v16 = *(*v5 + 16 * v9 + 4 * v13);
      if (v14 < *(v15 + 4 * v13))
      {
        break;
      }

      if (v16 < v14)
      {
        *v7 = v9;
        *v8 = v10;
        v17 = *v7;
        v18 = *result;
        if (*(v12 + 16 * v17 + 4 * *v4) < *(v12 + 16 * v18 + 4 * *v4))
        {
          *result = v17;
          *v7 = v18;
        }

        goto LABEL_16;
      }

      v20 = 0;
LABEL_18:
      v21 = *result;
      v22 = *v4;
      v23 = *(v12 + 16 * v21 + 4 * v22);
      v24 = *(v12 + 16 * *v7 + 4 * v22);
      if (v23 >= v24)
      {
        v26 = v12 + 4 * v22;
        v25 = a3 - 1;
        while (--v25 != result)
        {
          v27 = *v25;
          if (*(v26 + 16 * v27) < v24)
          {
            *result = v27;
            *v25 = v21;
            if (v20)
            {
              v20 = 2;
            }

            else
            {
              v20 = 1;
            }

            goto LABEL_26;
          }
        }

        v42 = result + 1;
        v43 = *v8;
        if (v23 >= *(v12 + 16 * v43 + 4 * v22))
        {
          while (v42 != v8)
          {
            v44 = *v42;
            if (v23 < *(v26 + 16 * v44))
            {
              *v42++ = v43;
              *v8 = v44;
              goto LABEL_58;
            }

            ++v42;
          }

          return result;
        }

LABEL_58:
        if (v42 == v8)
        {
          return result;
        }

        while (1)
        {
          v49 = v12 + 4 * *v4;
          v50 = *(v49 + 16 * *result);
          do
          {
            v52 = *v42++;
            v51 = v52;
          }

          while (v50 >= *(v49 + 16 * v52));
          v53 = v42 - 1;
          do
          {
            v55 = *--v8;
            v54 = v55;
          }

          while (v50 < *(v49 + 16 * v55));
          if (v53 >= v8)
          {
            break;
          }

          *v53 = v54;
          *v8 = v51;
        }

        result = v42 - 1;
        if (v53 > a2)
        {
          return result;
        }
      }

      else
      {
        v25 = a3 - 1;
LABEL_26:
        v28 = result + 1;
        if (result + 1 >= v25)
        {
          v34 = result + 1;
        }

        else
        {
          v29 = result + 1;
          while (1)
          {
            v30 = v12 + 4 * *v4;
            v31 = *(v30 + 16 * *v7);
            do
            {
              v33 = *v29++;
              v32 = v33;
            }

            while (*(v30 + 16 * v33) < v31);
            v34 = v29 - 1;
            do
            {
              v36 = *--v25;
              v35 = v36;
            }

            while (*(v30 + 16 * v36) >= v31);
            if (v34 >= v25)
            {
              break;
            }

            *v34 = v35;
            *v25 = v32;
            ++v20;
            if (v34 == v7)
            {
              v7 = v25;
            }
          }
        }

        if (v34 != v7)
        {
          v37 = *v7;
          v38 = *v34;
          if (*(v12 + 16 * v37 + 4 * *v4) < *(v12 + 16 * v38 + 4 * *v4))
          {
            *v34 = v37;
            *v7 = v38;
            ++v20;
          }
        }

        if (v34 == a2)
        {
          return result;
        }

        if (!v20)
        {
          if (v34 <= a2)
          {
            v45 = v34 + 1;
            while (v45 != a3)
            {
              v46 = *v4;
              v47 = *(v12 + 16 * *v45 + 4 * v46);
              v48 = *(v12 + 16 * *(v45++ - 1) + 4 * v46);
              if (v47 < v48)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            while (v28 != v34)
            {
              v39 = *v4;
              v40 = *(v12 + 16 * *v28 + 4 * v39);
              v41 = *(v12 + 16 * *(v28++ - 1) + 4 * v39);
              if (v40 < v41)
              {
                goto LABEL_42;
              }
            }
          }

          return result;
        }

LABEL_42:
        if (v34 > a2)
        {
          a3 = v34;
        }

        else
        {
          result = v34 + 1;
        }
      }

      if (a3 == a2)
      {
        return result;
      }
    }

    if (v16 >= v14)
    {
      *result = v10;
      *v7 = v11;
      v19 = *v8;
      if (*(v12 + 16 * v19 + 4 * *v4) >= *(v15 + 4 * *v4))
      {
LABEL_16:
        v20 = 1;
        goto LABEL_18;
      }

      *v7 = v19;
    }

    else
    {
      *result = v9;
    }

    *v8 = v11;
    goto LABEL_16;
  }

  return result;
}

unsigned int *std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 != result)
  {
    v6 = result;
    do
    {
      result = std::__min_element[abi:nn200100]<re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v6, a2, a3);
      if (v6 != result)
      {
        v7 = *v6;
        *v6 = *result;
        *result = v7;
      }

      ++v6;
    }

    while (v6 != v3);
  }

  return result;
}

unsigned int *std::__min_element[abi:nn200100]<re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v5 = *result;
      v6 = result + 1;
      do
      {
        v8 = *v6++;
        v7 = v8;
        v4 = **a3 + 4 * **(a3 + 8);
        if (*(v4 + 16 * v8) < *(v4 + 16 * v5))
        {
          v5 = v7;
          result = v3;
        }

        v3 = v6;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(uint64_t result, uint64_t **a2, float32x4_t *a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 16 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          v17 = vceqq_f32(*v12, *a3);
          v17.i32[3] = v17.i32[2];
          if ((vminvq_u32(v17) & 0x80000000) != 0)
          {
            v20 = 0.0;
          }

          else
          {
            v18 = vsubq_f32(*v12, *a3);
            v19 = vmulq_f32(v18, v18);
            v20 = (v19.f32[2] + vaddv_f32(*v19.f32));
          }

          if (v20 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v21 = *v8++;
          result = re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v9, v21, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = *a5;
  *a5 = v6 + 1;
  if (a1[4] <= v6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_119;
  }

  v8 = a1[6] + 24 * v6;
  if (a3 - a2 != 1)
  {
    v9 = *(a4 + 16);
    if (v9 <= a2)
    {
LABEL_120:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_121;
    }

    v10 = (a3 + a2) >> 1;
    if (v9 <= v10)
    {
LABEL_121:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    v11 = a3 - 1;
    if (v9 <= v11)
    {
LABEL_122:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_123;
    }

    v12 = *(a4 + 32);
    v13 = *(*a1 + 16 * *(v12 + 4 * a2));
    v14 = *(*a1 + 16 * *(v12 + 4 * v10));
    v15 = *(*a1 + 16 * *(v12 + 4 * v11));
    v16 = vsubq_f32(vmaxnmq_f32(vmaxnmq_f32(v13, v14), v15), vminnmq_f32(vminnmq_f32(v13, v14), v15));
    if (v16.f32[0] < v16.f32[3] || v16.f32[0] < v16.f32[1] || v16.f32[0] < v16.f32[2])
    {
      if (v16.f32[1] < v16.f32[2] || v16.f32[1] < v16.f32[3])
      {
        if (v16.f32[2] >= v16.f32[3])
        {
          v20 = 2;
        }

        else
        {
          v20 = 3;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    *(v8 + 20) = v20;
    if (v10 == a3)
    {
LABEL_27:
      if (*(a4 + 16) > v10)
      {
        *(v8 + 16) = *(*(a4 + 32) + 4 * v10);
        *v8 = re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(a1);
        *(v8 + 8) = re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(a1);
        return v8;
      }

LABEL_123:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = *(a4 + 32);
    v23 = (v22 + 4 * a3);
    v24 = (v22 + 4 * v10);
    v25 = (v22 + 4 * a2);
    while (1)
    {
      v26 = v23 - v25;
      if (v26 < 2)
      {
        goto LABEL_27;
      }

      if (v26 == 3)
      {
        v75 = *v25;
        v76 = v25[1];
        v77 = *a1;
        v78 = *(v8 + 20);
        v79 = *(*a1 + 16 * v76 + 4 * v78);
        v80 = *a1 + 16 * v75;
        v81 = *(v23 - 1);
        v82 = *(*a1 + 16 * v81 + 4 * v78);
        if (v79 >= *(v80 + 4 * v78))
        {
          if (v82 < v79)
          {
            v25[1] = v81;
            *(v23 - 1) = v76;
            v94 = *v25;
            v93 = v25[1];
            if (*(v77 + 16 * v93 + 4 * *(v8 + 20)) < *(v77 + 16 * v94 + 4 * *(v8 + 20)))
            {
              *v25 = v93;
              v25[1] = v94;
            }
          }
        }

        else
        {
          if (v82 >= v79)
          {
            *v25 = v76;
            v25[1] = v75;
            v95 = *(v23 - 1);
            if (*(v77 + 16 * v95 + 4 * *(v8 + 20)) >= *(v80 + 4 * *(v8 + 20)))
            {
              goto LABEL_27;
            }

            v25[1] = v95;
          }

          else
          {
            *v25 = v81;
          }

          *(v23 - 1) = v75;
        }

        goto LABEL_27;
      }

      if (v26 == 2)
      {
        v83 = *(v23 - 1);
        v84 = *v25;
        if (*(*a1 + 16 * v83 + 4 * *(v8 + 20)) < *(*a1 + 16 * v84 + 4 * *(v8 + 20)))
        {
          *v25 = v83;
          *(v23 - 1) = v84;
        }

        goto LABEL_27;
      }

      if (v26 <= 7)
      {
        for (; v25 != v23 - 1; ++v25)
        {
          if (v25 != v23)
          {
            v85 = v25 + 1;
            if (v25 + 1 != v23)
            {
              v87 = *v25;
              v88 = *v25;
              v89 = v25;
              v90 = v25 + 1;
              do
              {
                v92 = *v90++;
                v91 = v92;
                v86 = *a1 + 4 * *(v8 + 20);
                if (*(v86 + 16 * v92) < *(v86 + 16 * v88))
                {
                  v88 = v91;
                  v89 = v85;
                }

                v85 = v90;
              }

              while (v90 != v23);
              if (v89 != v25)
              {
                *v25 = *v89;
                *v89 = v87;
              }
            }
          }
        }

        goto LABEL_27;
      }

      v27 = &v25[v26 >> 1];
      v28 = v23 - 1;
      v29 = *(v23 - 1);
      v30 = *v27;
      v31 = *v25;
      v32 = *a1;
      v33 = *(v8 + 20);
      v34 = *(*a1 + 16 * v30 + 4 * v33);
      v35 = *a1 + 16 * v31;
      v36 = *(*a1 + 16 * v29 + 4 * v33);
      if (v34 < *(v35 + 4 * v33))
      {
        break;
      }

      if (v36 < v34)
      {
        *v27 = v29;
        *v28 = v30;
        v37 = *v27;
        v38 = *v25;
        if (*(v32 + 16 * v37 + 4 * *(v8 + 20)) < *(v32 + 16 * v38 + 4 * *(v8 + 20)))
        {
          *v25 = v37;
          *v27 = v38;
        }

        goto LABEL_44;
      }

      v40 = 0;
LABEL_46:
      v41 = *v25;
      v42 = *(v8 + 20);
      v43 = *(v32 + 16 * v41 + 4 * v42);
      v44 = *(v32 + 16 * *v27 + 4 * v42);
      if (v43 >= v44)
      {
        v46 = v32 + 4 * v42;
        v45 = v23 - 1;
        while (--v45 != v25)
        {
          v47 = *v45;
          if (*(v46 + 16 * v47) < v44)
          {
            *v25 = v47;
            *v45 = v41;
            if (v40)
            {
              v40 = 2;
            }

            else
            {
              v40 = 1;
            }

            goto LABEL_54;
          }
        }

        v62 = v25 + 1;
        v63 = *v28;
        if (v43 >= *(v32 + 16 * v63 + 4 * v42))
        {
          while (v62 != v28)
          {
            v64 = *v62;
            if (v43 < *(v46 + 16 * v64))
            {
              *v62++ = v63;
              *v28 = v64;
              goto LABEL_86;
            }

            ++v62;
          }

          goto LABEL_27;
        }

LABEL_86:
        if (v62 == v28)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v68 = v32 + 4 * *(v8 + 20);
          v69 = *(v68 + 16 * *v25);
          do
          {
            v71 = *v62++;
            v70 = v71;
          }

          while (v69 >= *(v68 + 16 * v71));
          v72 = v62 - 1;
          do
          {
            v74 = *--v28;
            v73 = v74;
          }

          while (v69 < *(v68 + 16 * v74));
          if (v72 >= v28)
          {
            break;
          }

          *v72 = v73;
          *v28 = v70;
        }

        v25 = v62 - 1;
        if (v72 > v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v45 = v23 - 1;
LABEL_54:
        v48 = v25 + 1;
        if (v25 + 1 >= v45)
        {
          v54 = v25 + 1;
        }

        else
        {
          v49 = v25 + 1;
          while (1)
          {
            v50 = v32 + 4 * *(v8 + 20);
            v51 = *(v50 + 16 * *v27);
            do
            {
              v53 = *v49++;
              v52 = v53;
            }

            while (*(v50 + 16 * v53) < v51);
            v54 = v49 - 1;
            do
            {
              v56 = *--v45;
              v55 = v56;
            }

            while (*(v50 + 16 * v56) >= v51);
            if (v54 >= v45)
            {
              break;
            }

            *v54 = v55;
            *v45 = v52;
            ++v40;
            if (v54 == v27)
            {
              v27 = v45;
            }
          }
        }

        if (v54 != v27)
        {
          v57 = *v27;
          v58 = *v54;
          if (*(v32 + 16 * v57 + 4 * *(v8 + 20)) < *(v32 + 16 * v58 + 4 * *(v8 + 20)))
          {
            *v54 = v57;
            *v27 = v58;
            ++v40;
          }
        }

        if (v54 == v24)
        {
          goto LABEL_27;
        }

        if (!v40)
        {
          v59 = v32 + 4 * *(v8 + 20);
          if (v54 <= v24)
          {
            v65 = v54 + 1;
            while (v65 != v23)
            {
              v66 = *(v59 + 16 * *v65);
              v67 = *(v59 + 16 * *(v65++ - 1));
              if (v66 < v67)
              {
                goto LABEL_70;
              }
            }
          }

          else
          {
            while (v48 != v54)
            {
              v60 = *(v59 + 16 * *v48);
              v61 = *(v59 + 16 * *(v48++ - 1));
              if (v60 < v61)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_27;
        }

LABEL_70:
        if (v54 > v24)
        {
          v23 = v54;
        }

        else
        {
          v25 = v54 + 1;
        }
      }

      if (v23 == v24)
      {
        goto LABEL_27;
      }
    }

    if (v36 >= v34)
    {
      *v25 = v30;
      *v27 = v31;
      v39 = *v28;
      if (*(v32 + 16 * v39 + 4 * *(v8 + 20)) >= *(v35 + 4 * *(v8 + 20)))
      {
LABEL_44:
        v40 = 1;
        goto LABEL_46;
      }

      *v27 = v39;
    }

    else
    {
      *v25 = v29;
    }

    *v28 = v31;
    goto LABEL_44;
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_119:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_120;
  }

  *(v8 + 16) = *(*(a4 + 32) + 4 * a2);
  *v8 = 0;
  *(v8 + 8) = 0;
  return v8;
}