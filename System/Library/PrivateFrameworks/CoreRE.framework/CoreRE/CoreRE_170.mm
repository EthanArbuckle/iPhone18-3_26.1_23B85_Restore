re *re::internal::destroyPersistent<re::RenderGraphCompiled>(re *result, uint64_t a2, re::RenderGraphCompiled *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::RenderGraphCompiled::~RenderGraphCompiled(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::RenderFrame::fillSpecifyParameterScopeOutputs(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    v6 = a2;
    v7 = a2 + 104 * result;
    do
    {
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v6 + 40);
        if (v10)
        {
          v11 = v10 >> 1;
        }

        else
        {
          v11 = v10 >> 1;
        }

        while (1)
        {
          v12 = a3 + 136 * v8;
          if (*(v12 + 8) == v11)
          {
            v13 = (v10 & 1) != 0 ? *(v6 + 48) : (v6 + 41);
            result = memcmp(*v12, v13, v11);
            if (!result)
            {
              break;
            }
          }

          v8 = ++v9;
          if (a4 <= v9)
          {
            goto LABEL_15;
          }
        }

        *(v6 + 88) = v9;
      }

LABEL_15:
      v6 += 104;
    }

    while (v6 != v7);
  }

  return result;
}

void *re::RenderFrame::execute(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v7 = v4;
  v263 = *MEMORY[0x1E69E9840];
  result = re::RenderGraphManager::getCachedGraph(*v4, v4[41], v5[5]);
  if (result)
  {
    v9 = &v216;
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    *__dst = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v226 = v7 + 3376;
    v227 = result;
    v10 = result[8];
    if (v10)
    {
      v11 = result[10];
      *(&v216 + 1) = v10;
      if (v10 >= 0x24924924924924ALL)
      {
        goto LABEL_368;
      }

      *&v217 = v13;
      if (!v13)
      {
LABEL_369:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_370;
      }

      v15 = v13;
      v16 = v10 - 1;
      if (v10 != 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        v15 = v13;
        do
        {
          *v15 = 3;
          *(v15 + 2) = 2;
          *(v15 + 12) = -1;
          *(v15 + 20) = -1;
          *(v15 + 28) = -1;
          *(v15 + 9) = 0;
          v15[40] = 0;
          *(v15 + 44) = _D1;
          *(v15 + 52) = xmmword_1E30A3B60;
          *(v15 + 68) = 0x2000000000;
          *(v15 + 76) = -1;
          *(v15 + 84) = -1;
          *(v15 + 23) = -1;
          *(v15 + 12) = 0;
          v15[104] = 0;
          v15 += 112;
          --v16;
        }

        while (v16);
      }

      *v15 = 3;
      *(v15 + 2) = 2;
      *(v15 + 12) = -1;
      *(v15 + 20) = -1;
      *(v15 + 28) = -1;
      *(v15 + 9) = 0;
      v15[40] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v15 + 44) = _D0;
      *(v15 + 52) = xmmword_1E30A3B60;
      *(v15 + 68) = 0x2000000000;
      *(v15 + 76) = -1;
      *(v15 + 84) = -1;
      *(v15 + 23) = -1;
      *(v15 + 12) = 0;
      v15[104] = 0;
      result = memmove(v13, v11, 112 * v10 - 7);
    }

    v10 = v227[15];
    v9 = v227[13];
    if (*(&v217 + 1))
    {
LABEL_16:
      if (__dst[0] != v9)
      {
        goto LABEL_367;
      }

      if (v9)
      {
        v22 = memmove(__dst[1], v10, 48 * v9);
      }

      goto LABEL_19;
    }

    if (!v9)
    {
LABEL_19:
      v212 = v6;
      v26 = __dst[0];
      if (*(v7 + 4456))
      {
        v27 = 0;
        v9 = 0x6A3DF053A9B45F3DLL;
        v28 = v7 + 432;
        v1 = "Requested framebuffer %d is invalid.";
        do
        {
          if ((*(v28 + 8 * re::Bitset<64>::toWordIndex(v7 + 432, v27)) >> v27))
          {
            v29 = *(v7 + 4456);
            if (v29 <= v27)
            {
              *v262 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 789;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v27;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_358:
              *v262 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 789;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v27;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_359:
              v233 = 0;
              v260 = 0u;
              v261 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v262 = 136315906;
              *&v262[4] = "operator[]";
              *&v262[12] = 1024;
              *&v262[14] = 789;
              *&v262[18] = 2048;
              *&v262[20] = v28;
              *&v262[28] = 2048;
              *&v262[30] = v27;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_360:
              *v262 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v9;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_361:
              v233 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v262 = 136315906;
              *&v262[4] = "operator[]";
              *&v262[12] = 1024;
              *&v262[14] = 468;
              *&v262[18] = 2048;
              *&v262[20] = v9;
              *&v262[28] = 2048;
              *&v262[30] = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_362:
              v233 = 0;
              v260 = 0u;
              v261 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v262 = 136315906;
              *&v262[4] = "operator[]";
              *&v262[12] = 1024;
              *&v262[14] = 468;
              *&v262[18] = 2048;
              *&v262[20] = v1;
              *&v262[28] = 2048;
              *&v262[30] = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_363:
              *v262 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v27;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_364:
              v231 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v27;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_365:
              v231 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v27;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_366:
              v236 = 0;
              v238 = 0u;
              memset(v239, 0, 48);
              v237 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v262 = 136315906;
              *&v262[4] = "operator[]";
              *&v262[12] = 1024;
              *&v262[14] = 468;
              *&v262[18] = 2048;
              *&v262[20] = v27;
              *&v262[28] = 2048;
              *&v262[30] = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_367:
              re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
              _os_crash();
              __break(1u);
LABEL_368:
              re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, v10);
              _os_crash();
              __break(1u);
              goto LABEL_369;
            }

            if (!*(*(v7 + 4472) + 8 * v27))
            {
              re::DynamicString::format("Requested framebuffer %d is invalid.", &v237, v27);
              re::RenderFrame::addError(v7, &v237);
              if (v237 && (BYTE8(v237) & 1) != 0)
              {
                (*(*v237 + 40))();
              }

              v29 = *(v7 + 4456);
            }

            if (v29 <= v27)
            {
              goto LABEL_358;
            }

            v30 = *(*(v7 + 4472) + 8 * v27);
            v233 = v30;
            *&buf[0] = v237 >> 1;
            *v262 = 0x6A3DF053A9B45F3DLL;
            re::RenderFrame::registerExternalTexture(v7, &v233, buf, v262, 0);
            if (v237)
            {
              if (v237)
              {
              }
            }

            if (v30)
            {

              v233 = 0;
            }
          }

          else
          {
            v231 = 0;
            *&buf[0] = v237 >> 1;
            *v262 = 0x6A3DF053A9B45F3DLL;
            re::RenderFrame::registerExternalTexture(v7, &v231, buf, v262, 0);
            if (v237)
            {
              if (v237)
              {
              }
            }
          }

          ++v27;
        }

        while (*(v7 + 4456) > v27);
      }

      if (*(v7 + 4232))
      {
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v1 = *(v7 + 4248);
          if ((v1[v33 + 12] & 1) == 0)
          {
            v35 = v1[v33 + 1];
            if (v35)
            {
              if (LODWORD(v1[v33 + 11]) != -1)
              {
                goto LABEL_48;
              }
            }

            else
            {
              if (v1[v33 + 2])
              {
                _ZF = LODWORD(v1[v33 + 11]) == -1;
              }

              else
              {
                _ZF = 1;
              }

              if (!_ZF)
              {
LABEL_48:
                *&buf[0] = v35;
                *&v237 = ((v1[v33 + 10] << 6) + (v1[v33 + 10] >> 2) + 0x8756A0D28FEDB54) ^ v1[v33 + 10];
                re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v7 + 3536, &v237, buf);
                if (*&buf[0])
                {

                  *&buf[0] = 0;
                }
              }
            }
          }

          ++v34;
          v37 = *(v7 + 4232);
          v33 += 13;
          if (v37 <= v34)
          {
            v38 = v37 == 0;
            goto LABEL_57;
          }
        }
      }

      v38 = 1;
LABEL_57:
      v40 = *(v7 + 4272);
      *&v222 = *(v7 + 4288);
      *(&v222 + 1) = v40;
      v41 = *(v7 + 4392);
      *&v223 = *(v7 + 4408);
      *(&v223 + 1) = v41;
      v42 = *(v7 + 4312);
      *&v224 = *(v7 + 4328);
      *(&v224 + 1) = v42;
      v43 = *(v7 + 4352);
      *&v225 = *(v7 + 4368);
      *(&v225 + 1) = v43;
      v237 = xmmword_1E30A3B70;
      v238 = xmmword_1E30A3B80;
      *v239 = 0;
      v239[8] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *&v239[12] = _D0;
      *&v239[20] = xmmword_1E30A3B60;
      *&v239[36] = xmmword_1E30A3B90;
      *&v239[52] = -1;
      *&v239[56] = 0;
      v240 = 0;
      v241 = 0;
      if (!v38)
      {
        v9 = 0;
        v29 = 104;
        v2 = 136;
        v3 = 32;
        do
        {
          v106 = *(v7 + 4248) + 104 * v9;
          v28 = *(v106 + 88);
          if (v28 != -1)
          {
            v27 = v227[95];
            if (v27 <= v28)
            {
              goto LABEL_359;
            }

            v107 = v227[97] + 136 * v28;
            v108 = *(v106 + 8);
            if (v108)
            {
              v231 = *v106;
              v1 = v108;
              v236 = v1;
              re::RenderFrame::fillScopeLaneProperties(v7, &v231, &v236, v107, &v216);
              if (v1)
              {

                v236 = 0;
              }

              v231 = 0;
            }

            else if (*(v106 + 16))
            {
              if (*(v106 + 40))
              {
                v109 = *(v106 + 48);
              }

              else
              {
                v109 = v106 + 41;
              }

              re::DynamicString::format("Texture descriptor for graph scope %s was never specified as a texture.", buf, v109);
              re::RenderFrame::addError(v7, buf);
              if (*&buf[0] && (BYTE8(buf[0]) & 1) != 0)
              {
                (*(**&buf[0] + 40))();
              }
            }

            else
            {
              v110 = *(v106 + 24);
              if (*(v7 + 4456) > v110 && (v111 = *(*(v7 + 4472) + 8 * v110)) != 0)
              {
                v235 = *v106;
                v1 = v111;
                v229 = v1;
                re::RenderFrame::fillScopeLaneProperties(v7, &v235, &v229, v107, &v216);
                if (v1)
                {

                  v229 = 0;
                }

                v235 = 0;
              }

              else
              {
                v112 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v107 + 40, v106);
                if (v112)
                {
                  v113 = v112;
                  if (*(v112 + 16))
                  {
                    v114 = 0;
                    v1 = 0;
                    do
                    {
                      v115 = (v113[4] + v114);
                      *&buf[0] = 0;
                      *(&buf[0] + 1) = -1;
                      buf[0] = *v115;
                      v116 = re::RenderGraphExecutable::targetDescription(&v216, buf);
                      if (*v116 == 3 || *v116 == 0)
                      {
                        *v116 = 0;
                        re::RenderGraphTargetDescription::copySetProperties(v116, &v237);
                      }

                      v1 = (v1 + 1);
                      v114 += 16;
                    }

                    while (v113[2] > v1);
                  }

                  if (v113[7])
                  {
                    v1 = 0;
                    v118 = 0;
                    do
                    {
                      v119 = (v1 + v113[9]);
                      *&buf[0] = 0;
                      *(&buf[0] + 1) = -1;
                      buf[0] = *v119;
                      v120 = re::RenderGraphExecutable::bufferDescription(&v216, buf);
                      if (*v120 == 3 || *v120 == 0)
                      {
                        *v120 = 0;
                        if (*(v120 + 8) == -1)
                        {
                          *(v120 + 8) = 32;
                        }

                        if (*(v120 + 32) == -1)
                        {
                          *(v120 + 32) = 0;
                        }
                      }

                      ++v118;
                      v1 += 2;
                    }

                    while (v113[7] > v118);
                  }
                }
              }
            }
          }

          ++v9;
        }

        while (*(v7 + 4232) > v9);
      }

      v45 = v227[37];
      v46 = *(v45 + 16);
      if (!v46)
      {
        goto LABEL_88;
      }

      v47 = (*(v45 + 32) + 24);
      v2 = 48 * v46;
      v9 = 112;
      while (1)
      {
        v48 = *(v47 - 6);
        if (v48 == 1)
        {
          *&buf[0] = *(v47 - 2) >> 1;
          *(&buf[0] + 1) = *v47;
          v53 = re::RenderGraphExecutable::bufferDescription(&v216, buf);
          v54 = v53;
          if (*v53 != 2)
          {
            if (*(v53 + 8) == -1)
            {
              *(v53 + 8) = 32;
            }

            if (*(v53 + 32) == -1)
            {
              *(v53 + 32) = 0;
            }

            goto LABEL_86;
          }

          re::StringID::StringID(v262, v47 - 1);
          re::RenderFrame::getExternalBuffer(v7, v54, buf);
          re::BufferSlice::buffer(buf, v55);
          v56 = *&buf[0];
          v51 = v56;
          v233 = v56;
          if (DWORD2(buf[1]) != -1)
          {
            v56 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v230, buf);
          }

          DWORD2(buf[1]) = -1;
          if (v262[0])
          {
            if (v262[0])
            {
            }
          }

          if (v51)
          {
            re::RenderGraphBufferDescription::makeValid(v54, &v233, *(v7 + 440));
LABEL_80:
          }
        }

        else if (!v48)
        {
          *&buf[0] = *(v47 - 2) >> 1;
          *(&buf[0] + 1) = *v47;
          v49 = re::RenderGraphExecutable::targetDescription(&v216, buf);
          v27 = v49;
          v1 = *(v49 + 80);
          if (v1 != -1)
          {
            v3 = *(&v216 + 1);
            if (*(&v216 + 1) <= v1)
            {
              goto LABEL_362;
            }

            re::RenderGraphTargetDescription::copySetProperties(v49, v217 + 112 * v1);
          }

          if (*v27 != 2)
          {
            re::RenderGraphTargetDescription::copySetProperties(v27, &v237);
            goto LABEL_86;
          }

          re::StringID::StringID(buf, v47 - 1);
          ExternalTexture = re::RenderFrame::getExternalTexture(v7, v27, v262);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v51 = *v262;
          if (!*v262)
          {
            goto LABEL_86;
          }

          v52 = *v262;
          v228 = v52;
          re::RenderGraphTargetDescription::makeValid(v27, &v228, *(v7 + 440));
          if (v52)
          {

            v228 = 0;
          }

          goto LABEL_80;
        }

LABEL_86:
        v47 += 6;
        v2 -= 48;
        if (!v2)
        {
          v45 = v227[37];
LABEL_88:
          v57 = *(v45 + 16);
          if (!v57)
          {
            goto LABEL_171;
          }

          v58 = *(v45 + 32);
          v1 = (v58 + 48 * v57);
          v3 = 0xFFFFFFFFLL;
          v27 = 40;
          while (1)
          {
            if (*v58 == 1)
            {
              *&buf[0] = 0;
              *&buf[2] = 0;
              DWORD2(buf[1]) = 0;
              v2 = v58 + 8;
              *&v237 = *(v58 + 8) >> 1;
              *(&v237 + 1) = *(v58 + 24);
              v69 = re::RenderGraphExecutable::bufferDescription(&v216, &v237);
              if (*v69 == 2)
              {
                v70 = v69;
                re::StringID::StringID(v262, (v58 + 8));
                re::RenderFrame::getExternalBuffer(v7, v70, &v237);
                v71 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(buf, &v237);
                *&buf[2] = *v239;
                if (DWORD2(v238) != -1)
                {
                  v71 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(v238)])(&v233, &v237);
                }

                DWORD2(v238) = -1;
                if (v262[0])
                {
                  if (v262[0])
                  {
                  }
                }

                v73 = re::BufferSlice::buffer(buf, v72);
                if (!*&buf[0])
                {
                  re::BufferSlice::buffer(v73, v74);
                  re::RenderGraphBufferDescription::makeValid(v70, buf, *(v7 + 440));
                }
              }

              v9 = *(v58 + 28);
              v29 = v221;
              if (v221 <= v9)
              {
                goto LABEL_361;
              }

              v75 = *(&v221 + 1) + 40 * v9;
              std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v75, buf);
              *(v75 + 32) = *&buf[2];
              if (DWORD2(buf[1]) != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v237, buf);
              }

              goto LABEL_133;
            }

            if (!*v58)
            {
              break;
            }

LABEL_133:
            v58 += 48;
            if (v58 == v1)
            {
              v79 = v227[37];
              v80 = *(v79 + 16);
              if (v80)
              {
                v9 = *(v79 + 32) + 24;
                v81 = 48 * v80;
                do
                {
                  v82 = *(v9 - 24);
                  if (v82 == 1)
                  {
                    *&v237 = *(v9 - 16) >> 1;
                    *(&v237 + 1) = *v9;
                    v85 = re::RenderGraphExecutable::bufferDescription(&v216, &v237);
                    if (*v85 == 4 && v85[7] != -1)
                    {
                      v233 = (*(v9 - 16) >> 1);
                      v234 = *v9;
                      re::RenderGraphResourceDescriptions::bufferDescriptionSource(v227, &v233, &v231);
                      v27 = v232;
                      v2 = v221;
                      if (v221 <= v232)
                      {
                        goto LABEL_363;
                      }

                      v87 = *(&v221 + 1) + 40 * v232;
                      LOBYTE(buf[0]) = 0;
                      DWORD2(buf[1]) = -1;
                      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(buf, v87);
                      *&buf[2] = *(v87 + 32);
                      v27 = HIDWORD(v234);
                      v2 = v221;
                      if (v221 <= HIDWORD(v234))
                      {
                        goto LABEL_366;
                      }

                      v88 = *(&v221 + 1) + 40 * HIDWORD(v234);
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v88, buf);
                      *(v88 + 32) = *&buf[2];
                      if (DWORD2(buf[1]) != -1)
                      {
                        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v237, buf);
                      }
                    }
                  }

                  else if (!v82)
                  {
                    *&v237 = *(v9 - 16) >> 1;
                    *(&v237 + 1) = *v9;
                    v83 = re::RenderGraphExecutable::targetDescription(&v216, &v237);
                    if (*v83 == 4 && v83[19] != -1)
                    {
                      *v262 = *(v9 - 16) >> 1;
                      *&v262[8] = *v9;
                      re::RenderGraphResourceDescriptions::targetDescriptionSource(v227, v262, &v233);
                      v27 = HIDWORD(v234);
                      v2 = *(&v219 + 1);
                      if (*(&v219 + 1) <= HIDWORD(v234))
                      {
                        goto LABEL_364;
                      }

                      v236 = *(v220 + 8 * HIDWORD(v234));
                      v27 = *&v262[12];
                      v2 = *(&v219 + 1);
                      if (*(&v219 + 1) <= *&v262[12])
                      {
                        goto LABEL_365;
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=((v220 + 8 * *&v262[12]), &v236);
                      if (v236)
                      {
                      }
                    }
                  }

                  v9 += 48;
                  v81 -= 48;
                }

                while (v81);
                v89 = v227[37];
                v90 = *(v89 + 16);
                if (v90)
                {
                  v91 = (*(v89 + 32) + 24);
                  for (i = 48 * v90; i; i -= 48)
                  {
                    v93 = *(v91 - 6);
                    if (v93 == 1)
                    {
                      *&v237 = *(v91 - 2) >> 1;
                      *(&v237 + 1) = *v91;
                      if (*re::RenderGraphExecutable::bufferDescription(&v216, &v237) == 3)
                      {
                        re::StringID::StringID(buf, v91 - 1);
                        re::DynamicString::format("Buffer (%s) left unspecified by the end of the frame.", &v237, *(&buf[0] + 1));
                        goto LABEL_163;
                      }
                    }

                    else if (!v93)
                    {
                      *&v237 = *(v91 - 2) >> 1;
                      *(&v237 + 1) = *v91;
                      if (*re::RenderGraphExecutable::targetDescription(&v216, &v237) == 3)
                      {
                        re::StringID::StringID(buf, v91 - 1);
                        re::DynamicString::format("Target (%s) left unspecified by the end of the frame.", &v237, *(&buf[0] + 1));
LABEL_163:
                        re::RenderFrame::addError(v7, &v237);
                        v94 = v237;
                        if (v237)
                        {
                          if (BYTE8(v237))
                          {
                            v94 = (*(*v237 + 40))();
                          }

                          v237 = 0u;
                          v238 = 0u;
                        }

                        if (buf[0])
                        {
                          if (buf[0])
                          {
                          }
                        }
                      }
                    }

                    v91 += 6;
                  }
                }
              }

LABEL_171:
              re::RenderGraphExecutable::validateAttachmentsPerFrame(&v216, *(v7 + 392));
              if (!*(v226 + 16))
              {
                re::RenderGraphContext::RenderGraphContext(&v237, v212, *(v7 + 8), *(v7 + 24), *(v7 + 16), v7 + 32, *(*v7 + 128), &v216, *(*v7 + 280), *(*v7 + 288), *(v7 + 449), v7 + 4480);
                v95 = *(v7 + 4152);
                if (v95)
                {
                  v96 = *(v7 + 4168);
                  v97 = 8 * v95;
                  do
                  {
                    v98 = *v96;
                    v215 = v98;
                    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v250, &v215);
                    if (v215)
                    {

                      v215 = 0;
                    }

                    if (v98)
                    {
                    }

                    ++v96;
                    v97 -= 8;
                  }

                  while (v97);
                }

                v99 = *(*v7 + 128);
                v100 = *(&v219 + 1);
                v101 = v221;
                v102 = v227[37];
                v103 = *(v102 + 16);
                if (v103)
                {
                  v104 = (*(v102 + 32) + 36);
                  v105 = 31;
                  do
                  {
                    v105 = *v104 + 19 * (*(v104 - 1) + 19 * v105);
                    v104 += 12;
                    --v103;
                  }

                  while (v103);
                }

                else
                {
                  v105 = 31;
                }

                v122 = re::RenderGraphExecutable::calculateResourcePropertiesHash(&v216);
                re::RenderGraphResourceAllocationManager::onFrameStart(v99, v100, v101, v105, v122);
                re::RenderGraphExecutable::execute(&v216, &v237);
                v124 = (v7 + 640);
                if ((v7 + 640) != &v251)
                {
                  v125 = (v7 + 648);
                  v126 = *v124;
                  v127 = v251;
                  if (!*v124 || v126 == v251)
                  {
                    *(v7 + 640) = v251;
                    v251 = v126;
                    v130 = v252;
                    v131 = *(v7 + 664);
                    v252 = *v125;
                    v132 = v253;
                    *v125 = v130;
                    *(v7 + 664) = v132;
                    v253 = v131;
                    goto LABEL_243;
                  }

                  if (*(v7 + 668))
                  {
                    v128 = *(v7 + 664);
                    if (v128)
                    {
                      memset_pattern16(*(v7 + 648), &unk_1E304C660, 4 * v128);
                    }

                    if (*(v7 + 672))
                    {
                      v129 = 0;
                      do
                      {
                        re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(v7 + 656), v129++);
                      }

                      while (v129 < *(v7 + 672));
                    }

                    *(v7 + 676) = 0x7FFFFFFF;
                    *(v7 + 668) = 0;
                    *(v7 + 672) = 0;
                    ++*(v7 + 680);
                    v127 = v251;
                  }

                  if (v127)
                  {
                    if (*(v7 + 664) < DWORD1(v253))
                    {
                      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(v7 + 640, DWORD1(v253));
                    }

                    re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(v7 + 640, &v251);
LABEL_243:
                    ++*(v7 + 680);
                  }
                }

                v133 = (v7 + 688);
                if ((v7 + 688) != &v254)
                {
                  if (*v133 && v254 && *v133 != v254)
                  {
                    re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
                    _os_crash();
                    __break(1u);
                  }

                  if (v256)
                  {
                    v141 = v255;
                    if (v255)
                    {
                      *(v7 + 688) = v254;
                      if (v141 >= *(v7 + 696))
                      {
                        re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v133, v141);
                        if (v256)
                        {
                          v144 = &v257;
                        }

                        else
                        {
                          v144 = v258;
                        }

                        v145 = *(v7 + 696);
                        v146 = *(v7 + 704);
                        if (v146)
                        {
                          v147 = v7 + 712;
                        }

                        else
                        {
                          v147 = *(v7 + 720);
                        }

                        if (v145)
                        {
                          v149 = &v144[64 * v145];
                          do
                          {
                            *v147 = *v144;
                            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v147 + 8), v144 + 8);
                            v144 += 64;
                            v147 += 512;
                          }

                          while (v144 != v149);
                          v146 = *(v7 + 704);
                        }

                        if (v146)
                        {
                          v150 = v7 + 712;
                        }

                        else
                        {
                          v150 = *(v7 + 720);
                        }

                        v155 = *(v7 + 696);
                        v156 = v258;
                        if (v256)
                        {
                          v156 = &v257;
                        }

                        if (v155 != v141)
                        {
                          v157 = &v156[64 * v141];
                          v158 = &v156[64 * v155];
                          v159 = v150 + (v155 << 9);
                          do
                          {
                            *v159 = *v158;
                            *(v159 + 504) = 1;
                            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v159 + 8), v158 + 8);
                            v158 += 64;
                            v159 += 512;
                          }

                          while (v158 != v157);
                        }
                      }

                      else
                      {
                        v142 = &v257;
                        if (*(v7 + 704))
                        {
                          v143 = v7 + 712;
                        }

                        else
                        {
                          v143 = *(v7 + 720);
                        }

                        do
                        {
                          *v143 = *v142;
                          re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v143 + 8), v142 + 8);
                          v142 += 64;
                          v143 += 512;
                        }

                        while (v142 != &v257 + 64 * v141);
                        if (*(v7 + 704))
                        {
                          v148 = v7 + 712;
                        }

                        else
                        {
                          v148 = *(v7 + 720);
                        }

                        v151 = *(v7 + 696);
                        if (v141 != v151)
                        {
                          v152 = v148 + (v141 << 9);
                          v153 = (v151 << 9) - (v141 << 9);
                          v154 = v152 + 8;
                          do
                          {
                            if ((*(v152 + 504) & 1) == 0)
                            {
                              (**(v152 + 8))(v152 + 8);
                              *(v152 + 504) = 1;
                            }

                            v152 += 512;
                            v154 += 512;
                            v153 -= 512;
                          }

                          while (v153);
                        }
                      }

                      *(v7 + 696) = v141;
                      re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(&v254);
                    }

                    else
                    {
                      re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(v133);
                      *(v7 + 688) = v254;
                    }

                    v256 += 2;
                    v137 = (v7 + 704);
                  }

                  else
                  {
                    re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(v133);
                    v134 = *(v7 + 688);
                    *(v7 + 688) = v254;
                    v254 = v134;
                    v135 = *(v7 + 696);
                    *(v7 + 696) = v255;
                    v255 = v135;
                    v136 = *(v7 + 720);
                    *(v7 + 720) = v258;
                    v258 = v136;
                    v137 = (v7 + 704);
                    v138 = *(v7 + 704);
                    v139 = v256;
                    *(v7 + 704) = v138 & 0xFFFFFFFE;
                    v140 = *(v7 + 712);
                    *(v7 + 712) = v257;
                    v257 = v140;
                    v256 = (v139 & 0xFFFFFFFE | v138 & 1) + 2;
                  }

                  *v137 += 2;
                }

                v160 = *(v7 + 456);
                v161 = (v160 + 64);
                if ((v160 + 64) != &v242)
                {
                  v162 = *v161;
                  v163 = v242;
                  if (*v161)
                  {
                    v164 = v162 == v242;
                  }

                  else
                  {
                    v164 = 1;
                  }

                  if (v164)
                  {
                    *(v160 + 64) = v242;
                    v242 = v162;
                    v165 = *(v160 + 72);
                    *(v160 + 72) = v243;
                    v243 = v165;
                    v166 = *(v160 + 80);
                    *(v160 + 80) = v244;
                    v244 = v166;
                    LODWORD(v166) = *(v160 + 88);
                    *(v160 + 88) = v245;
                    v245 = v166;
                    LODWORD(v166) = *(v160 + 92);
                    *(v160 + 92) = v246;
                    v246 = v166;
                    LODWORD(v166) = *(v160 + 96);
                    *(v160 + 96) = v247;
                    v247 = v166;
                    LODWORD(v166) = *(v160 + 100);
                    *(v160 + 100) = v248;
                    v248 = v166;
                    goto LABEL_305;
                  }

                  if (*(v160 + 92))
                  {
                    v167 = *(v160 + 88);
                    if (v167)
                    {
                      memset_pattern16(*(v160 + 72), &unk_1E304C660, 4 * v167);
                    }

                    if (*(v160 + 96))
                    {
                      v168 = 0;
                      do
                      {
                        re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(v160 + 64, v168++);
                      }

                      while (v168 < *(v160 + 96));
                    }

                    *(v160 + 92) = 0;
                    *(v160 + 96) = 0;
                    v169 = *(v160 + 104) + 1;
                    *(v160 + 100) = 0x7FFFFFFF;
                    *(v160 + 104) = v169;
                    v163 = v242;
                  }

                  if (v163)
                  {
                    if (*(v160 + 88) < v246)
                    {
                      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v160 + 64, v246);
                    }

                    re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move((v160 + 64), &v242);
LABEL_305:
                    ++*(v160 + 104);
                  }
                }

                v170 = *(v7 + 456);
                v171 = *&v239[48];
                *(v170 + 32) = *&v239[32];
                *(v170 + 48) = v171;
                v209 = *(v7 + 544);
                if (v209)
                {
                  v172 = 0;
                  v173 = *(v7 + 528);
                  while (1)
                  {
                    v174 = *v173;
                    v173 += 12;
                    if (v174 < 0)
                    {
                      break;
                    }

                    if (v209 == ++v172)
                    {
                      LODWORD(v172) = *(v7 + 544);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v172) = 0;
                }

                if (v172 != v209)
                {
                  while (2)
                  {
                    v175 = *(v7 + 528) + 48 * v172;
                    v176 = v175 + 16;
                    v177 = *(v175 + 24);
                    if ((v177 & 1) == 0)
                    {
                      v178 = v177 >> 8;
                      v179 = (v176 + 9);
                      LOBYTE(v176) = v178;
                      goto LABEL_317;
                    }

                    v179 = *(v176 + 16);
                    if (!v179)
                    {
                      goto LABEL_322;
                    }

                    LOBYTE(v176) = *v179;
LABEL_317:
                    if (v176)
                    {
                      v176 = v176;
                      v180 = v179[1];
                      if (v180)
                      {
                        v181 = v179 + 2;
                        do
                        {
                          v176 = 31 * v176 + v180;
                          v182 = *v181++;
                          v180 = v182;
                        }

                        while (v182);
                      }
                    }

                    else
                    {
LABEL_322:
                      v176 = 0;
                    }

                    v210 = v176 & 0x7FFFFFFFFFFFFFFFLL;
                    *&buf[0] = v176 & 0x7FFFFFFFFFFFFFFFLL;
                    v183 = **(re::RenderFrameData::stream((v7 + 264), buf) + 48);
                    v184 = (*(v183 + 560))();
                    if (v184)
                    {
                      v185 = v184;
                      v213 = *(v184 + 40);
                      if (v213)
                      {
                        for (j = 0; j != v213; ++j)
                        {
                          v187 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v185, j);
                          v188 = *(v187 + 16);
                          if (v188)
                          {
                            v189 = *(v187 + 32);
                            v190 = 1552 * v188;
                            do
                            {
                              *&buf[0] = 0;
                              DWORD2(buf[0]) = 0;
                              re::RenderCamera::transformWorldBoundsToScreen(v189 + 2, (*(v7 + 456) + 32), v189 + 4, v262);
                              v191 = *&buf[0];
                              re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(*&buf[0], v192);
                              v193 = &buf[2 * v191 + 1];
                              v194 = *&v262[16];
                              *v193 = *v262;
                              v193[1] = v194;
                              ++*&buf[0];
                              ++DWORD2(buf[0]);
                              re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(*(v7 + 456) + 112, v189, buf);
                              v189 += 97;
                              v190 -= 1552;
                            }

                            while (v190);
                          }
                        }
                      }
                    }

                    *&buf[0] = v210;
                    v195 = **(re::RenderFrameData::stream((v7 + 264), buf) + 48);
                    v214 = (*(v195 + 592))();
                    if (v214)
                    {
                      v211 = *(v214 + 40);
                      if (v211)
                      {
                        for (k = 0; k != v211; ++k)
                        {
                          v197 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v214, k);
                          v198 = *(v197 + 16);
                          if (v198)
                          {
                            v199 = *(v197 + 32);
                            v200 = (v199 + 3120 * v198);
                            do
                            {
                              v201 = 0;
                              *&buf[0] = 0;
                              DWORD2(buf[0]) = 0;
                              v202 = 1;
                              do
                              {
                                v203 = v202;
                                re::RenderCamera::transformWorldBoundsToScreen(v199 + 97 * v201 + 2, (*(v7 + 456) + 32), v199 + 97 * v201 + 4, v262);
                                v204 = *&buf[0];
                                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(*&buf[0], v205);
                                v202 = 0;
                                v206 = &buf[2 * v204 + 1];
                                v207 = *&v262[16];
                                *v206 = *v262;
                                v206[1] = v207;
                                ++*&buf[0];
                                ++DWORD2(buf[0]);
                                v201 = 1;
                              }

                              while ((v203 & 1) != 0);
                              re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(*(v7 + 456) + 112, v199, buf);
                              v199 = (v199 + 3120);
                            }

                            while (v199 != v200);
                          }
                        }
                      }
                    }

                    v208 = *(v7 + 544);
                    if (v208 <= v172 + 1)
                    {
                      v208 = v172 + 1;
                    }

                    while (v208 - 1 != v172)
                    {
                      LODWORD(v172) = v172 + 1;
                      if ((*(*(v7 + 528) + 48 * v172) & 0x80000000) != 0)
                      {
                        goto LABEL_345;
                      }
                    }

                    LODWORD(v172) = v208;
LABEL_345:
                    if (v172 == v209)
                    {
                      break;
                    }

                    continue;
                  }
                }

                re::RenderGraphResourceAllocationManager::onFrameFinish(*(*v7 + 128));
                if (v249[0] != 1)
                {
LABEL_347:
                  re::RenderGraphContext::~RenderGraphContext(&v237);
                  goto LABEL_348;
                }

LABEL_372:
                re::DrawCallRecorder::dumpDrawCallsToTextFile(v249);
                goto LABEL_347;
              }

LABEL_348:
              re::FixedArray<re::BufferSlice>::deinit(&v220 + 1);
              re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v219);
              if (*(&v217 + 1))
              {
                if (__dst[0])
                {
                  (*(**(&v217 + 1) + 40))();
                  __dst[0] = 0;
                  __dst[1] = 0;
                }

                *(&v217 + 1) = 0;
              }

              result = v216;
              if (v216 && *(&v216 + 1))
              {
                v39 = v217;
                return (*(*result + 40))(result, v39);
              }

              return result;
            }
          }

          *&v237 = *(v58 + 8) >> 1;
          *(&v237 + 1) = *(v58 + 24);
          v29 = re::RenderGraphExecutable::targetDescription(&v216, &v237);
          v233 = 0;
          if (*v29 != 2)
          {
            goto LABEL_130;
          }

          re::StringID::StringID(&v237, (v58 + 8));
          re::RenderFrame::getExternalTexture(v7, v29, buf);
          NS::SharedPtr<MTL::Texture>::operator=(&v233, buf);
          v59 = *&buf[0];
          if (*&buf[0])
          {

            *&buf[0] = 0;
          }

          if (v237)
          {
            if (v237)
            {
            }
          }

          if (v233)
          {
            goto LABEL_130;
          }

          v60 = NS::SharedPtr<MTL::Buffer>::operator=(&v233, (*(*(v7 + 8) + 56) + 32));
          re::StringID::StringID(&v237, (v58 + 8));
          *&buf[0] = v237 >> 1;
          v61 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&xmmword_1EE1B8898, buf);
          v62 = v61;
          *&buf[0] = 0;
          if (v237)
          {
            if (v237)
            {
            }
          }

          if (v62)
          {
            goto LABEL_128;
          }

          v63 = re::StringID::StringID(&v237, (v58 + 8));
          v64 = v237;
          *&buf[0] = v237 >> 1;
          v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v64 >> 31) ^ (v64 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v64 >> 31) ^ (v64 >> 1))) >> 27));
          v66 = v65 ^ (v65 >> 31);
          if (DWORD2(xmmword_1EE1B88A8))
          {
            v67 = v66 % DWORD2(xmmword_1EE1B88A8);
            v68 = *(*(&xmmword_1EE1B8898 + 1) + 4 * v67);
            if (v68 != 0x7FFFFFFF)
            {
              while (*(xmmword_1EE1B88A8 + 16 * v68 + 8) != v237 >> 1)
              {
                v68 = *(xmmword_1EE1B88A8 + 16 * v68) & 0x7FFFFFFF;
                if (v68 == 0x7FFFFFFF)
                {
                  goto LABEL_120;
                }
              }

LABEL_121:
              *&buf[0] = 0;
              if (v64)
              {
                if (v237)
                {
                }
              }

              v76 = *re::graphicsLogObjects(v63);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                re::StringID::StringID(&v237, (v58 + 8));
                LODWORD(buf[0]) = 136315138;
                *(buf + 4) = *(&v237 + 1);
                _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "Invalid external texture bound to resource (%s). Setting it to a gray 1x1 fallback texture.", buf, 0xCu);
                if (v237)
                {
                  if (v237)
                  {
                  }
                }
              }

LABEL_128:
              v78 = v233;
              v235 = v78;
              re::RenderGraphTargetDescription::makeValid(v29, &v235, *(v7 + 440));
              v3 = 0xFFFFFFFFLL;
              if (v78)
              {

                v235 = 0;
              }

LABEL_130:
              v9 = *(v58 + 28);
              v2 = *(&v219 + 1);
              if (*(&v219 + 1) <= v9)
              {
                goto LABEL_360;
              }

              NS::SharedPtr<MTL::Buffer>::operator=((v220 + 8 * v9), &v233);
              *(v29 + 64) = *(v29 + 60);
              if (v233)
              {
              }

              goto LABEL_133;
            }
          }

          else
          {
            LODWORD(v67) = 0;
          }

LABEL_120:
          v63 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(&xmmword_1EE1B8898, v67, v66, buf, buf);
          ++dword_1EE1B88C0;
          LOBYTE(v64) = v237;
          goto LABEL_121;
        }
      }
    }

    __dst[0] = v9;
    if (v9 < 0x555555555555556)
    {
      __dst[1] = v22;
      if (v22)
      {
        v25 = v9 - 1;
        if (v9 != 1)
        {
          do
          {
            *v22 = 0;
            *(v22 + 1) = -1;
            *(v22 + 16) = 0;
            *(v22 + 5) = 1065353216;
            *(v22 + 3) = 0xFFFFFFFF00000020;
            *(v22 + 2) = xmmword_1E3062D70;
            v22 = (v22 + 48);
            --v25;
          }

          while (v25);
        }

        *v22 = 0;
        *(v22 + 1) = -1;
        *(v22 + 16) = 0;
        *(v22 + 5) = 1065353216;
        *(v22 + 3) = 0xFFFFFFFF00000020;
        *(v22 + 2) = xmmword_1E3062D70;
        goto LABEL_16;
      }

LABEL_371:
      re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_372;
    }

LABEL_370:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v9);
    _os_crash();
    __break(1u);
    goto LABEL_371;
  }

  if (!*(v7 + 3392))
  {
    re::DynamicString::format("No compiled render graph found for a frame without errors. Graph hash: %llu", &v237, *(v7 + 328));
    re::RenderFrame::addError(v7, &v237);
    result = v237;
    if (v237)
    {
      if (BYTE8(v237))
      {
        v39 = v238;
        return (*(*result + 40))(result, v39);
      }
    }
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  v7 = v6;
  if (*a1)
  {
    v8 = v6 % *(a1 + 24);
    v9 = *(*(a1 + 8) + 4 * v8);
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      result = re::DynamicString::operator==(v10 + 144 * v9 + 8, a2);
      if (result)
      {
        return result;
      }

      while (1)
      {
        v12 = *(v10 + 144 * v9);
        v9 = v12 & 0x7FFFFFFF;
        if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::DynamicString::operator==(v10 + 144 * v9 + 8, a2);
        if (result)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v13 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v8, v7);
  re::DynamicString::DynamicString((v13 + 8), a2);
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  v14 = *a3;
  result = memcpy((v13 + 64), a3 + 2, 32 * *a3);
  *(v13 + 48) = v14;
  ++*(a1 + 40);
  return result;
}

uint64_t re::RenderFrame::addRateMap(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v7 = 0;
  if (*(v3 + 364) == 1)
  {
    v6 = [*(v3 + 208) newRasterizationRateMapWithDescriptor_];
    NS::SharedPtr<MTL::Texture>::operator=(&v7, &v6);
    if (v6)
    {
    }
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 4256), &v7);
  v4 = (*(a1 + 4272) - 1);
  if (v7)
  {
  }

  return v4;
}

void *re::RenderFrame::reserveDynamicArraysSize(void *this, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = this;
  if (this[528] < a3)
  {
    this = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(this + 527, a3);
  }

  if (v9[538] < a4)
  {
    this = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v9 + 537, a4);
  }

  if (v9[543] < a5)
  {
    this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v9 + 542, a5);
  }

  if (*(v9[1] + 364) == 1)
  {
    if (v9[533] < a2)
    {
      this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v9 + 532, a2);
    }

    if (v9[548] < a3)
    {

      return re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v9 + 547, a3);
    }
  }

  return this;
}

uint64_t re::RenderFrame::addRateMap(uint64_t a1, void **a2)
{
  if (!*a2 || *(*(a1 + 8) + 364) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(&v5, a2);
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 4256), &v5);
  v3 = (*(a1 + 4272) - 1);
  if (v5)
  {
  }

  return v3;
}

void *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add(_anonymous_namespace_ *this, uint64_t *__src)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = *__src;
  result = memcpy((v5 + 16), __src + 2, 16 * *__src);
  *v5 = v6;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::addRenderCommandEncoder(uint64_t a1, id *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  re::mtl::RenderCommandEncoder::RenderCommandEncoder(&v6, a2);
  v7 = a3;
  re::DynamicArray<re::RenderCommandEncoderWithMask>::add((a1 + 4296), &v6);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v6);
  return (*(a1 + 4312) - 1);
}

__n128 re::DynamicArray<re::RenderCommandEncoderWithMask>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderCommandEncoderWithMask>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 24 * v4);
  result = *a2;
  a2->n128_u64[0] = 0;
  *v5 = result;
  a2->n128_u64[1] = 0;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::FixedArray<re::RenderLayer>::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = a2[1];
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::RenderLayer>::copy(a1, a2);
  }

  return a1;
}

void *re::RenderFrame::identifyUsedRenderLayers(void *this)
{
  this[54] = 0;
  v1 = this[529];
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    v5 = (this + 54);
    do
    {
      v6 = v2[531];
      if (!*(v6 + v3 + 8) && !*(v6 + v3 + 16))
      {
        v7 = *(v6 + v3 + 24);
        if (v7 != -1 && v2[553] > v7)
        {
          this = re::Bitset<64>::toWordIndex(v5, v7);
          *(v5 + 8 * this) |= 1 << v7;
          v1 = v2[529];
        }
      }

      ++v4;
      v3 += 104;
    }

    while (v1 > v4);
  }

  return this;
}

void re::RenderFrame::acquireDrawables(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4424);
  a2[1] = v4;
  if (v4)
  {
    if (v4 >> 61)
    {
      goto LABEL_51;
    }

    a2[2] = v6;
    if (!v6)
    {
LABEL_52:
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v8 = v6;
    if (v4 != 1)
    {
      bzero(v6, 8 * v4 - 8);
      v8 += v4 - 1;
    }

    *v8 = 0;
  }

  v9 = *(a1 + 4424);
  v10 = *(a1 + 4456);
  if (v10 >= v9)
  {
    if (v10 <= v9)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 4424);
    do
    {
      v12 = *(a1 + 4472);
      v13 = *(v12 + 8 * v11);
      if (v13)
      {

        *(v12 + 8 * v11) = 0;
        v10 = *(a1 + 4456);
      }

      ++v11;
    }

    while (v11 < v10);
  }

  else
  {
    if (*(a1 + 4448) < v9)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 4440), *(a1 + 4424));
      v10 = *(a1 + 4456);
    }

    if (v9 > v10)
    {
      bzero((*(a1 + 4472) + 8 * v10), 8 * (v9 - v10));
    }
  }

  *(a1 + 4456) = v9;
  ++*(a1 + 4464);
LABEL_18:
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v38, 5006, *(a1 + 8));
  if (*(a1 + 4424))
  {
    v4 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(a1 + 4432);
      if (!*(v16 + v4) || ((*(a1 + 432 + 8 * re::Bitset<64>::toWordIndex(a1 + 432, v15)) >> v15) & 1) == 0)
      {
        goto LABEL_46;
      }

      v17 = v16 + v4;
      if (*(v16 + v4 + 20) == 1)
      {
        if (*(v16 + v4 + 8))
        {
          v18 = (v16 + 4 * v14);
          [*(v16 + v4) setContentsScale:v18[6]];
          v19 = v18[3];
          v20 = v18[4];
        }

        else
        {
          [*(v16 + v4) bounds];
          v28 = v27;
          v30 = v29;
          v31 = *(v16 + 4 * v14 + 24);
          [*(v16 + v4) setContentsScale:v31];
          v19 = v31 * v28;
          v20 = v31 * v30;
        }
      }

      else
      {
        if (!*(v16 + v4 + 8))
        {
          goto LABEL_34;
        }

        [*(v16 + v4) drawableSize];
        v22 = v21;
        v24 = v23;
        v25 = v16 + 4 * v14;
        v19 = *(v25 + 12);
        v20 = *(v25 + 16);
        if (v19 == v22 && v20 == v24)
        {
          goto LABEL_34;
        }
      }

      [*(v16 + v4) setDrawableSize:{v19, v20}];
LABEL_34:
      if (*(v17 + 8) == 1)
      {
        *(v17 + 8) = 0;
      }

      if (*(v17 + 20) == 1)
      {
        *(v17 + 20) = 0;
      }

      re::mtl::Layer::nextDrawable((v16 + v4), &v37);
      v32 = a2[1];
      if (v32 <= v15)
      {
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 468;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 468;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 789;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_51:
        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v4);
        _os_crash();
        __break(1u);
        goto LABEL_52;
      }

      v33 = (a2[2] + v14);
      if (v33 != &v37)
      {
        v34 = v37;
        v37 = 0;
        v35 = *v33;
        *v33 = v34;
      }

      v32 = a2[1];
      if (v32 <= v15)
      {
        goto LABEL_49;
      }

      v36 = a2[2];
      if (*(v36 + v14))
      {
        re::mtl::Drawable::texture((v36 + v14), &v37);
        v32 = *(a1 + 4456);
        if (v32 <= v15)
        {
          goto LABEL_50;
        }

        NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 4472) + v14), &v37);
        if (v37)
        {
        }
      }

LABEL_46:
      ++v15;
      v14 += 8;
      v4 += 32;
    }

    while (*(a1 + 4424) > v15);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v38);
}

void re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1[498])
  {
    return;
  }

  v5 = 0;
  do
  {
    v6 = a1[500] + 136 * v5;
    if (!*(v6 + 32))
    {
      goto LABEL_30;
    }

    v21[0] = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v6 + 40, v21);
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v7;
    if (*(v7 + 112) != 1)
    {
      goto LABEL_30;
    }

    v9 = a1[498];
    if (v9 <= v5)
    {
      goto LABEL_33;
    }

    v10 = a1[500] + 136 * v5;
    v21[0] = 65290051;
    v11 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v10 + 40, v21);
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = v11;
    if (*(v11 + 112))
    {
      goto LABEL_30;
    }

    v2 = *(v11 + 120);
    if (v2 != -1)
    {
      goto LABEL_19;
    }

    v2 = a1[498];
    if (v2 <= v5)
    {
      goto LABEL_37;
    }

    ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, *(a1[500] + 136 * v5 + 24));
    if (ScopeOutputIndex == -1)
    {
      goto LABEL_18;
    }

    do
    {
      v9 = ScopeOutputIndex;
      v2 = a1[498];
      if (v2 <= ScopeOutputIndex)
      {
        *v28 = 0;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v35[0]) = 136315906;
        *(v35 + 4) = "operator[]";
        WORD2(v35[1]) = 1024;
        *(&v35[1] + 6) = 789;
        WORD1(v35[2]) = 2048;
        *(&v35[2] + 4) = v9;
        WORD2(v35[3]) = 2048;
        *(&v35[3] + 6) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_33:
        *v28 = 0;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v35[0]) = 136315906;
        *(v35 + 4) = "operator[]";
        WORD2(v35[1]) = 1024;
        *(&v35[1] + 6) = 789;
        WORD1(v35[2]) = 2048;
        *(&v35[2] + 4) = v5;
        WORD2(v35[3]) = 2048;
        *(&v35[3] + 6) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v36 = 0u;
        v37 = 0u;
        memset(v35, 0, sizeof(v35));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        v29 = 1024;
        v30 = 789;
        v31 = 2048;
        v32 = v2;
        v33 = 2048;
        v34 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v36 = 0u;
        v37 = 0u;
        memset(v35, 0, sizeof(v35));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        v29 = 1024;
        v30 = 789;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v36 = 0u;
        v37 = 0u;
        memset(v35, 0, sizeof(v35));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        v29 = 1024;
        v30 = 789;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_37:
        *v28 = 0;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v35[0]) = 136315906;
        *(v35 + 4) = "operator[]";
        WORD2(v35[1]) = 1024;
        *(&v35[1] + 6) = 789;
        WORD1(v35[2]) = 2048;
        *(&v35[2] + 4) = v5;
        WORD2(v35[3]) = 2048;
        *(&v35[3] + 6) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = a1[500] + 136 * ScopeOutputIndex;
      v21[0] = 65290051;
      v15 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v14 + 40, v21);
      v12 = v15;
      if (v15)
      {
        if ((*(v15 + 112) & 1) == 0)
        {
          v2 = *(v15 + 120);
          if (v2 != -1)
          {
            goto LABEL_19;
          }
        }
      }

      ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, *(v14 + 24));
    }

    while (ScopeOutputIndex != -1);
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_18:
    v2 = *(v12 + 120);
LABEL_19:
    v9 = a1[529];
    if (v9 <= v2)
    {
      goto LABEL_34;
    }

    v16 = a1[531] + 104 * v2;
    v21[0] = *v16;
    v21[1] = *(v16 + 8);
    v22[0] = *(v16 + 16);
    LODWORD(v22[1]) = *(v16 + 24);
    re::DynamicString::DynamicString(&v23, (v16 + 32));
    v17 = *(v16 + 64);
    v18 = *(v16 + 80);
    v27 = *(v16 + 96);
    v25 = v17;
    v26 = v18;
    v19 = re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(v21);
    v2 = a1[498];
    if (v2 <= v5)
    {
      goto LABEL_35;
    }

    v20 = v19;
    re::DynamicString::operator=(&v23, a1[500] + 136 * v5);
    DWORD2(v26) = v5;
    v21[0] = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
    LOWORD(v25) = 0;
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), v21);
    v35[0] = v21[0];
    v35[1] = __PAIR64__(DWORD2(v26), v22[1]);
    LOWORD(v35[2]) = v25;
    LOBYTE(v35[3]) = 1;
    v35[4] = v20;
    re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add((a1 + 501), v35);
    *(v8 + 112) = 0;
    *(v8 + 120) = a1[529] - 1;
    v8 = a1[498];
    if (v8 <= v5)
    {
      goto LABEL_36;
    }

    --*(a1[500] + 136 * v5 + 32);
    if (v23)
    {
      if (BYTE8(v23))
      {
        (*(*v23 + 40))();
      }

      v23 = 0u;
      v24 = 0u;
    }

    if (v22[0])
    {

      v22[0] = 0;
    }

    if (v21[1])
    {
    }

LABEL_30:
    ++v5;
  }

  while (v5 < a1[498]);
}

unint64_t re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(re::RenderFrame::SpecifyScopeLaneParameters *this)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(this + 40))
  {
    v1 = *(this + 6);
  }

  else
  {
    v1 = this + 41;
  }

  v2 = *this;
  v3 = 0x9E3779B97F4A7C17;
  v4 = strlen(v1);
  if (v4)
  {
    MurmurHash3_x64_128(v1, v4, 0, v6);
    v3 = ((v6[1] - 0x61C8864680B583E9 + (v6[0] << 6) + (v6[0] >> 2)) ^ v6[0]) - 0x61C8864680B583E9;
  }

  return ((v2 >> 2) + (v2 << 6) + v3) ^ v2;
}

_anonymous_namespace_ *re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  *v11 = *a2;
  v12 = *(a2 + 8);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 8) = v12;
  LODWORD(v12) = *(a2 + 24);
  *(v11 + 24) = v12;
  if (v12 == 1)
  {
    *(v11 + 32) = *(a2 + 32);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void *re::FixedArray<unsigned long long>::init<int>(void *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v6[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *a4;
  v9 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result++ = v8;
      --v9;
    }

    while (v9);
  }

  *result = v8;
  return result;
}

re::StringID *anonymous namespace::getSpecifyWithRenderLayerID(re::StringID *this, uint64_t a2)
{
  v3 = this;
  if (a2 > 7)
  {
    {
    }

    v7 = re::DynamicString::format("SpecifyRenderLayer%d", &v9, a2);
    if (v10)
    {
      v8 = *&v11[7];
    }

    else
    {
      v8 = v11;
    }

    *v3 = 0;
    *(v3 + 1) = &str_67;
    this = v9;
    if (v9)
    {
      if (v10)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  else
  {
    v4 = (&unk_1E871F478 + 16 * a2);
    v6 = *v4;
    v5 = v4[1];
    *this = 2 * v6;
    *(this + 1) = v5;
  }

  return this;
}

_DWORD *re::RenderFrame::specifyScopeLaneInternal(void *a1, void *a2, uint64_t a3, int a4, unint64_t *a5)
{
  v10 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a3 + 40, a1);
  if (v10)
  {
    v11 = v10;
    if (*(v10 + 88) != -1 && *(v10 + 92) != -1)
    {
      v12 = re::RenderGraphCompiled::targetDescription(a5, v10 + 80);
      if (*v12 == 3)
      {
        v13 = v12;
        if (a4)
        {
          v16[0] = *(v11 + 80);
          v16[1] = *(v11 + 88);
          v15[0] = *a2;
          v15[1] = a2[1];
          re::RenderGraphResourceDescriptions::specify(a5, v16, v15, 1, (a5 + 72));
          *(v13 + 104) = 1;
        }

        else
        {
          *v12 = 0;
        }
      }
    }
  }

  result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a3 + 88, a1);
  if (result && result[26] != -1 && result[27] != -1)
  {
    result = re::RenderGraphCompiled::bufferDescription(a5, (result + 24));
    if (*result == 3)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 40 * v6 + 16;
}

uint64_t re::RenderGraphCompiled::targetDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  v3 = *(a2 + 12);
  if (*(v2 + 16) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 32) + 112 * v3;
}

uint64_t re::RenderGraphCompiled::bufferDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 312);
  v3 = *(a2 + 12);
  if (*(v2 + 16) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 32) + 48 * v3;
}

uint64_t re::RenderFrame::makeRenderGraphManagedInternal(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a2 + 40, a1);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (v7[4] + v8);
        v24 = 0;
        v25 = -1;
        v24 = *v10;
        v25 = v10[1];
        v11 = re::RenderGraphCompiled::targetDescription(a3, &v24);
        if (*v11 == 3)
        {
          *v11 = 0;
        }

        ++v9;
        v8 += 16;
      }

      while (v7[2] > v9);
    }

    if (v7[7])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = (v7[9] + v12);
        v24 = 0;
        v25 = -1;
        v24 = *v14;
        v25 = v14[1];
        v15 = re::RenderGraphCompiled::bufferDescription(a3, &v24);
        if (*v15 == 3)
        {
          *v15 = 0;
        }

        ++v13;
        v12 += 16;
      }

      while (v7[7] > v13);
    }
  }

  result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a2 + 88, a1);
  if (result)
  {
    v17 = result;
    if (*(result + 56))
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v17[9] + v18);
        v24 = 0;
        v25 = -1;
        v24 = *v20;
        v25 = v20[1];
        result = re::RenderGraphCompiled::bufferDescription(a3, &v24);
        if (*result == 3)
        {
          *result = 0;
        }

        ++v19;
        v18 += 16;
      }

      while (v17[7] > v19);
    }

    if (v17[2])
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = (v17[4] + v21);
        v24 = 0;
        v25 = -1;
        v24 = *v23;
        v25 = v23[1];
        result = re::RenderGraphCompiled::targetDescription(a3, &v24);
        if (*result == 3)
        {
          *result = 0;
        }

        ++v22;
        v21 += 16;
      }

      while (v17[2] > v22);
    }
  }

  return result;
}

void re::RenderFrame::fillScopeLaneProperties(uint64_t a1, void *a2, id *a3, uint64_t a4, uint64_t a5)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a4 + 40, a2);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (v9[4] + v10);
        v21 = 0;
        v22 = -1;
        v21 = *v12;
        v22 = v12[1];
        v13 = re::RenderGraphExecutable::targetDescription(a5, &v21);
        if ((*v13 | 4) == 4)
        {
          v14 = v13;
          if (*a3)
          {
            v15 = *a3;
            v20 = v15;
            re::RenderGraphTargetDescription::makeValid(v14, &v20, *(a1 + 440));
            if (v15)
            {

              v20 = 0;
            }
          }
        }

        ++v11;
        v10 += 16;
      }

      while (v9[2] > v11);
    }

    if (v9[7])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = (v9[9] + v16);
        v21 = 0;
        v22 = -1;
        v21 = *v18;
        v22 = v18[1];
        v19 = re::RenderGraphExecutable::bufferDescription(a5, &v21);
        if ((*v19 | 4) == 4)
        {
          if (*a3)
          {
            re::RenderGraphBufferDescription::makeValid(v19, a3, *(a1 + 440));
          }
        }

        ++v17;
        v16 += 16;
      }

      while (v9[7] > v17);
    }
  }
}

void *re::RenderFrame::createWorkload@<X0>(re::RenderFrame *this@<X0>, uint64_t *a2@<X8>)
{
  re::make::shared::object<re::RenderFrameWorkload>(this, a2);
  *(*a2 + 152) = *(this + 48);
  *(*a2 + 160) = *(this + 50);
  v4 = *a2;
  *(v4 + 144) = *(this + 3);
  *(v4 + 48) = *algn_1E30A3BB0;
  *(v4 + 64) = xmmword_1E30A3BC0;
  *(v4 + 80) = unk_1E30A3BD0;
  *(v4 + 112) = *algn_1E30A3BF0;
  *(v4 + 128) = xmmword_1E30A3C00;

  return re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(this + 522, a2);
}

void re::RenderFrameWorkload::~RenderFrameWorkload(re::RenderFrameWorkload *this)
{
  *this = &unk_1F5D04A70;
  pthread_cond_destroy(this + 2);
  pthread_mutex_destroy((this + 32));
  v2 = *(this + 21);
  if (v2)
  {

    *(this + 21) = 0;
  }

  re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(this + 584);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 544);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 504);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 464);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 424);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 384);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 344);
  v3 = *(this + 38);
  if (v3)
  {
    v4 = *(this + 42);
    if (v4)
    {
      v5 = *(this + 40);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          v7 = *v4++;

          v6 -= 8;
        }

        while (v6);
        v3 = *(this + 38);
        v4 = *(this + 42);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 42) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 38) = 0;
    ++*(this + 82);
  }

  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 256);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 216);
  v8 = *(this + 25);
  if (v8)
  {

    *(this + 25) = 0;
  }

  v9 = *(this + 23);
  if (v9)
  {

    *(this + 23) = 0;
  }

  v10 = *(this + 21);
  if (v10)
  {

    *(this + 21) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RenderFrameWorkload::~RenderFrameWorkload(this);

  JUMPOUT(0x1E6906510);
}

uint64_t re::RenderFrameWorkload::configure(re::RenderFrameWorkload *this, re::RenderFrameSettings *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = a2 + 8;
  }

  v5 = *(this + 21);
  *(this + 21) = v2;
  if (v5)
  {

    v2 = *(this + 21);
  }

  *(this + 44) = *(v2 + 6);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 23, v2 + 4);
  *(this + 24) = *(v2 + 5);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 25, v2 + 6);
  *(this + 26) = *(v2 + 7);
  re::DynamicArray<re::RenderFrameEvent>::operator=(this + 216, v2 + 8);

  return re::DynamicArray<re::RenderFrameEvent>::operator=(this + 256, v2 + 13);
}

uint64_t re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

id re::DynamicArray<re::mtl::Drawable>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::mtl::Drawable>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = *a2;
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrameWorkload::beforeEmit(re::RenderFrameWorkload *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 47) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 344);
}

uint64_t re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::beforeEncode(uint64_t this)
{
  v3 = 0;
  atomic_compare_exchange_strong((this + 640), &v3, 1u);
  if (!v3)
  {
    v9[5] = v1;
    v9[6] = v2;
    v4 = this;
    v5 = *(this + 400);
    if (v5)
    {
      v6 = 40 * v5;
      v7 = (*(this + 416) + 32);
      do
      {
        v9[0] = v4;
        v8 = *v7;
        v7 += 5;
        (*(*v8 + 16))(v8, v9);
        v6 -= 40;
      }

      while (v6);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(v4 + 384);
  }

  return this;
}

uint64_t re::RenderFrameWorkload::postEncode(atomic_uchar *this)
{
  result = re::RenderFrameWorkload::beforeEncode(this);
  v3 = 0;
  atomic_compare_exchange_strong(this + 768, &v3, 1u);
  if (!v3)
  {
    v4 = *(this + 55);
    if (v4)
    {
      v5 = 40 * v4;
      v6 = (*(this + 57) + 32);
      do
      {
        v8 = this;
        v7 = *v6;
        v6 += 5;
        (*(*v7 + 16))(v7, &v8);
        v5 -= 40;
      }

      while (v5);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit((this + 424));
  }

  return result;
}

uint64_t re::RenderFrameWorkload::encoded(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::postEncode(this);
  pthread_mutex_lock((this + 32));
  v2 = 0;
  atomic_compare_exchange_strong(this + 896, &v2, 1u);
  v3 = v2 == 0;
  pthread_cond_broadcast(this + 2);
  result = pthread_mutex_unlock((this + 32));
  if (v3)
  {
    v5 = *(this + 60);
    if (v5)
    {
      v6 = 40 * v5;
      v7 = (*(this + 62) + 32);
      do
      {
        v9 = this;
        v8 = *v7;
        v7 += 5;
        (*(*v8 + 16))(v8, &v9);
        v6 -= 40;
      }

      while (v6);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 464);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::scheduled(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::encoded(this);
  pthread_mutex_lock((this + 32));
  *(this + 624) = 1;
  pthread_cond_broadcast(this + 2);
  pthread_mutex_unlock((this + 32));
  v2 = *(this + 70);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 72) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 544);
}

uint64_t re::RenderFrameWorkload::completed(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::scheduled(this);
  pthread_mutex_lock((this + 32));
  *(this + 625) = 1;
  pthread_cond_broadcast(this + 2);
  pthread_mutex_unlock((this + 32));
  v2 = *(this + 65);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 67) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 504);
}

uint64_t re::RenderFrameWorkload::beforeCommandBufferCommitted(re::RenderFrameWorkload *this, const re::mtl::CommandBuffer *a2)
{
  v3 = *(this + 75);
  if (v3)
  {
    v5 = 40 * v3;
    v6 = (*(this + 77) + 32);
    do
    {
      v7 = *v6;
      v6 += 5;
      (*(*v7 + 16))(v7, a2);
      v5 -= 40;
    }

    while (v5);
  }

  return re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(this + 584);
}

uint64_t re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::RenderFrameWorkload::presentDrawables(re::RenderFrameWorkload *this, id *a2)
{
  if (*(this + 40))
  {
    v4 = 0;
    do
    {
      [*a2 presentDrawable:*(*(this + 42) + 8 * v4++) afterMinimumDuration:1.0 / *(*(this + 18) + 1792)];
    }

    while (*(this + 40) > v4);
  }

  re::DynamicArray<re::DirectBuffer>::clear(this + 304);
}

void re::RenderFrameWorkload::immediatePresentDrawables(re::RenderFrameWorkload *this, double a2)
{
  if (*(this + 40))
  {
    v3 = 0;
    do
    {
      [*(*(this + 42) + 8 * v3++) present];
    }

    while (*(this + 40) > v3);
  }

  re::DynamicArray<re::DirectBuffer>::clear(this + 304);
}

uint64_t re::RenderFrameWorkload::applyPreEmitPatch(uint64_t a1, uint64_t a2)
{
  result = re::RenderFrameBox::get((*(a1 + 144) + 328), *(a1 + 152));
  if (result)
  {
    v4 = *(*a2 + 32);

    return v4(a2, result);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::applyPostEncodePatch(uint64_t result, _BYTE *a2)
{
  if (a2[28] == 1)
  {
    result = re::RenderFrameBox::get((*(result + 144) + 328), *(result + 152));
    if (result)
    {
      v3 = *(*a2 + 40);

      return v3(a2, result);
    }
  }

  return result;
}

void re::RenderFrameWorkload::waitForEncoded(re::RenderFrameWorkload *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 5006, 0);
  pthread_mutex_lock((this + 32));
  while (1)
  {
    v2 = atomic_load(this + 896);
    if (v2)
    {
      break;
    }

    pthread_cond_wait(this + 2, (this + 32));
  }

  pthread_mutex_unlock((this + 32));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

uint64_t re::RenderFrameWorkload::waitForScheduled(re::RenderFrameWorkload *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 624) & 1) == 0)
  {
    do
    {
      pthread_cond_wait(this + 2, (this + 32));
    }

    while (*(this + 624) != 1);
  }

  return pthread_mutex_unlock((this + 32));
}

uint64_t re::RenderFrameWorkload::waitForCompleted(re::RenderFrameWorkload *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 625) & 1) == 0)
  {
    do
    {
      pthread_cond_wait(this + 2, (this + 32));
    }

    while (*(this + 625) != 1);
  }

  return pthread_mutex_unlock((this + 32));
}

uint64_t (***re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 40 * v2;
    do
    {
      result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::RenderFrame::getScopeResolution(re::RenderFrame *this, const char *__s2)
{
  v2 = *(this + 529);
  if (!v2)
  {
    v12 = 1;
    LayerSize = 1;
    return LayerSize | (v12 << 32);
  }

  v5 = *(this + 531) + 24;
  v6 = 104 * v2;
  while (1)
  {
    if (*(v5 + 16))
    {
      v7 = *(v5 + 24);
    }

    else
    {
      v7 = (v5 + 17);
    }

    if (strcmp(v7, __s2))
    {
      goto LABEL_10;
    }

    v10 = *(v5 - 16);
    if (v10)
    {
      LayerSize = [v10 width];
      v12 = [*(v5 - 16) height];
      return LayerSize | (v12 << 32);
    }

    if (*v5 != -1)
    {
      break;
    }

    v11 = *(v5 - 8);
    if (v11)
    {
      LayerSize = [v11 width];
      v12 = [*(v5 - 8) height];
      return LayerSize | (v12 << 32);
    }

LABEL_10:
    v5 += 104;
    v6 -= 104;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v14 = *(*(this + 1) + 112);
  if (!v14)
  {
LABEL_11:
    v12 = 1;
    LayerSize = 1;
    return LayerSize | (v12 << 32);
  }

  LayerSize = re::DrawingManager::getLayerSize(v14, *v5, v8, v9);
  v12 = v15;
  return LayerSize | (v12 << 32);
}

id re::RenderFrame::getScopePixelFormat(void *a1, const char *a2, uint64_t *a3)
{
  v3 = a1[529];
  if (!v3)
  {
    return 0;
  }

  v6 = *a3;
  v7 = 104 * v3;
  for (i = a1[531] + 24; ; i += 104)
  {
    if (*(i - 24) != v6)
    {
      goto LABEL_11;
    }

    v9 = (*(i + 16) & 1) != 0 ? *(i + 24) : (i + 17);
    if (strcmp(v9, a2))
    {
      goto LABEL_11;
    }

    v10 = *(i - 16);
    if (v10)
    {
      break;
    }

    v10 = *(i - 8);
    if (v10)
    {
      break;
    }

    v11 = *i;
    if (*i != -1)
    {
      v13 = a1[3];

      return re::DrawingManager::getLayerPixelFormat(v13, v11);
    }

LABEL_11:
    v7 -= 104;
    if (!v7)
    {
      return 0;
    }
  }

  return [v10 pixelFormat];
}

id re::RenderFrame::getScopeProtectionOptions(uint64_t a1, const char *a2, uint64_t *a3)
{
  v3 = *(a1 + 4232);
  if (!v3)
  {
    return 0;
  }

  v5 = *a3;
  v6 = 104 * v3;
  for (i = (*(a1 + 4248) + 40); ; i += 13)
  {
    if (*(i - 5) == v5)
    {
      v8 = (*i & 1) != 0 ? i[1] : i + 1;
      if (!strcmp(v8, a2))
      {
        v9 = *(i - 4);
        if (v9)
        {
          break;
        }

        v9 = *(i - 3);
        if (v9)
        {
          break;
        }
      }
    }

    v6 -= 104;
    if (!v6)
    {
      return 0;
    }
  }

  return [v9 protectionOptions];
}

uint64_t re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(a1, 0, *a2, v4);
      re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::resize(a1, *(a2 + 8));
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
    }
  }

  else if (v4)
  {
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, v4);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

uint64_t re::RenderFrame::applyRenderFrameDeltas(re::RenderFrame *this)
{
  v2 = *(this + 822);
  if (v2)
  {
    v3 = (this + 3296);
  }

  else
  {
    v3 = *(this + 413);
  }

  v4 = *(this + 410);
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *v3++;
      (**v6)(v6);
      v5 -= 8;
    }

    while (v5);
    v2 = *(this + 822);
  }

  if (v2)
  {
    v7 = (this + 3296);
  }

  else
  {
    v7 = *(this + 413);
  }

  v8 = *(this + 410);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      v10 = *v7++;
      (*(*v10 + 2))(v10);
      objc_destroyWeak(v10 + 1);
      v10[1] = 0;
      v9 -= 8;
    }

    while (v9);
  }

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
}

uint64_t re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::RenderFrame::prepareForReuse(re::RenderFrame *this)
{
  *(this + 41) = *(this + 42);
  *(this + 352) = 0;
  re::make::shared::object<re::RenderFrameBounds>(this, &v12);
  v2 = *(this + 57);
  *(this + 57) = v12;
  v12 = v2;
  if (v2)
  {
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 464);
  re::DynamicArray<re::RenderFrame::ProvideCall>::clear(this + 560);
  re::DynamicArray<re::RenderFrame::PickupAction>::clear(this + 600);
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 688);
  re::DynamicArray<re::RenderGraph>::clear((this + 3632));
  re::RenderGraphResourceDescriptions::clear((this + 3672));
  v3 = *(this + 498);
  *(this + 498) = 0;
  if (v3)
  {
    v4 = 136 * v3;
    v5 = (*(this + 500) + 88);
    do
    {
      re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v5);
      re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v5 - 6);
      re::StringID::destroyString((v5 - 9));
      v5 += 17;
      v4 -= 136;
    }

    while (v4);
  }

  ++*(this + 998);
  v6 = *(this + 503);
  *(this + 503) = 0;
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 505);
    v9 = 40 * v6 - 40;
    v10 = vdupq_n_s64(v9 / 0x28);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v11.i8[0])
      {
        *v8 = 0;
      }

      if (v11.i8[4])
      {
        v8[5] = 0;
      }

      v7 += 2;
      v8 += 10;
    }

    while (((v9 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  ++*(this + 1008);
  re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::resize((this + 4216), *(this + 43));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 4440);
}

uint64_t re::DynamicArray<re::RenderFrame::ProvideCall>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(result + 32) + 16);
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit(v4);
      v4 += 5;
      v3 -= 40;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

void re::DynamicArray<re::RenderFrame::PickupAction>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 80 * v2;
    v4 = (*(a1 + 32) + 40);
    do
    {
      *(v4 + 4) = 0;
      re::DynamicString::deinit(v4);
      re::DynamicString::deinit((v4 - 32));
      v4 = (v4 + 80);
      v3 -= 80;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      if (*(result + 16))
      {
        v3 = result + 24;
      }

      else
      {
        v3 = *(result + 32);
      }

      v4 = v2 << 9;
      v5 = v3 + 8;
      do
      {
        if ((*(v3 + 504) & 1) == 0)
        {
          result = (**(v3 + 8))(v3 + 8);
          *(v3 + 504) = 1;
        }

        v3 += 512;
        v5 += 512;
        v4 -= 512;
      }

      while (v4);
    }

    v6 = *(v1 + 4);
    if ((v6 & 1) == 0)
    {
      result = (*(**v1 + 40))(*v1, v1[4]);
      v6 = *(v1 + 4);
    }

    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = (v6 | 1) + 2;
  }

  return result;
}

re::RenderGraph *re::DynamicArray<re::RenderGraph>::clear(re::RenderGraph *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 112 * v2;
    do
    {
      re::RenderGraph::~RenderGraph(result);
      result = (v4 + 112);
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicString::deinit((v10 + 4));
      v11 = v10[2];
      if (v11)
      {

        v10[2] = 0;
      }

      v12 = v10[1];
      if (v12)
      {

        v10[1] = 0;
      }

      *v10 = 0;
      ++v9;
      v8 += 104;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4 + 96;
      do
      {
        v7 = (*(v3 + 4) + v6);
        *(v7 - 12) = 0;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0;
        *(v7 - 18) = -1;
        *(v7 - 3) = 0u;
        *(v7 - 4) = 0u;
        a1 = re::DynamicString::setCapacity(v7 - 8, 0);
        *(v7 - 16) = 0;
        *(v7 - 3) = 0;
        *(v7 - 2) = 0;
        *(v7 - 1) = 0xFFFFFFFFLL;
        v6 += 104;
        *v7 = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void re::RenderFrame::frameReuse_setRenderCommandEncoder(uint64_t a1, unsigned int a2, id *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(v9, a3);
  v10 = a4;
  v7 = *(a1 + 4312);
  if (v7 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    v15 = 789;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = re::mtl::RenderCommandEncoder::operator=((*(a1 + 4328) + 24 * a2), v9);
  v8[2] = v10;
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v9);
}

void re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer(re::RenderGraphProcessorContainer *this)
{
  re::RenderGraphProcessorContainer::reset(this);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

re *re::RenderGraphProcessorContainer::reset(re *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 45, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(v1 + 7);
  if (v6)
  {
    v7 = *(v1 + 9);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 48, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = *(v1 + 12);
  if (v10)
  {
    v11 = *(v1 + 14);
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 51, v13);
      v12 -= 8;
    }

    while (v12);
  }

  *(v1 + 2) = 0;
  ++*(v1 + 6);
  *(v1 + 7) = 0;
  ++*(v1 + 16);
  *(v1 + 12) = 0;
  ++*(v1 + 26);
  return this;
}

re *re::internal::destroyPersistent<re::RenderGraphProcessor>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t *re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::RenderGraphProviderBase const*>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::RenderGraphProviderBase const*>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ___ZN12_GLOBAL__N_127getSpecifyWithRenderLayerIDEj_block_invoke(re *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 8;
    _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "More than %ul SpecifyRenderLayer targets have been created, falling back to dynamic string allocation. Performance may be impacted.", v2, 8u);
  }
}

void ___ZN12_GLOBAL__N_118getSpecifyLaneOpIDEj_block_invoke(re *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 32;
    _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "More than %ul SpecifyLaneOp targets have been created, falling back to dynamic string allocation. Performance may be impacted.", v2, 8u);
  }
}

uint64_t re::DynamicArray<re::RenderFrameEvent>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 2;
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderFrameEvent>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RenderFrameEvent>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RenderFrameEvent>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RenderFrameEvent>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::RenderFrameEvent>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(a1, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = a1[2];
    v13 = a1[4];
    if (v12)
    {
      v14 = v11 + 16 * v12;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v13, v11);
        *(v13 + 8) = *(v11 + 8);
        v11 += 16;
        v13 += 16;
      }

      while (v11 != v14);
      v13 = a1[4];
      v12 = a1[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = v11 + 16 * v4;
      v16 = v11 + 16 * v12;
      v17 = (v13 + 16 * v12);
      do
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        *v17 = v18;
        v17[1] = v19;
        v17 += 2;
        v16 += 16;
      }

      while (v16 != v15);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 16 * v4;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v6, v7);
        *(v6 + 8) = *(v7 + 8);
        v7 += 16;
        v6 += 16;
      }

      while (v7 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = (v6 + 16 * v4);
      v10 = 16 * v5 - 16 * v4;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        v9 += 2;
        v10 -= 16;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RenderFrameEvent>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 16 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicArray<re::DetailedError>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        v6 = (v3 + 16);
        do
        {
          re::DynamicString::deinit(v6);
          v6 = (v6 + 48);
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraph>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::RenderGraph::~RenderGraph(v3);
          v3 = (v3 + 112);
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphScopeOutput>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 136 * v4;
        v6 = (v3 + 88);
        do
        {
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v6);
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v6 - 6);
          re::StringID::destroyString((v6 - 9));
          v6 += 17;
          v5 -= 136;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = 40 * v3 - 40;
        v6 = vdupq_n_s64(v5 / 0x28);
        v7 = *(a1 + 32);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v4), xmmword_1E3049620)));
          if (v8.i8[0])
          {
            *v7 = 0;
          }

          if (v8.i8[4])
          {
            v7[5] = 0;
          }

          v4 += 2;
          v7 += 10;
        }

        while (((v5 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v4);
      }

      result = (*(*result + 40))(result);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 2304 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::deinit((v2 + 470));
    re::DynamicArray<unsigned long>::deinit((v2 + 458));
    re::DynamicArray<unsigned long>::deinit((v2 + 448));
    re::DynamicArray<unsigned long>::deinit((v2 + 404));
    re::DynamicArray<unsigned long>::deinit((v2 + 394));

    return re::DynamicArray<unsigned long>::deinit((v2 + 384));
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

double re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 40);
          if (v9 != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[v9])(&v11, v8 + 16);
            v3 = *(a1 + 8);
          }

          *(v8 + 40) = -1;
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 24 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

void re::SharedStringAllocatorWrapper::~SharedStringAllocatorWrapper(re::SharedStringAllocatorWrapper *this)
{
  re::GrowableLinearAllocator::deinit((this + 24));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 14);
  re::Allocator::~Allocator((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::GrowableLinearAllocator::deinit((this + 24));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 14);
  re::Allocator::~Allocator((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 40 * v9);
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          *(v11 - 1) = *(v12 - 1);
          re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(v11, v12);
          re::FixedArray<CoreIKTransform>::deinit(v12);
          v11 += 5;
          v13 = v12 + 3;
          v12 += 5;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 80 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v12 = (v8 + 8);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v14 = v11[2];
          v13 = v11[3];
          v15 = *(v8 + 24);
          v11[2] = *(v8 + 16);
          v11[3] = v15;
          *(v8 + 16) = v14;
          *(v8 + 24) = v13;
          *(v11 + 7) = 0u;
          *(v11 + 5) = 0u;
          v17 = *(v8 + 40);
          v16 = v8 + 40;
          v11[5] = v17;
          *v16 = 0;
          v18 = v11[7];
          v11[7] = *(v16 + 16);
          *(v16 + 16) = v18;
          *(v11 + 4) = *(v16 + 24);
          v19 = *(v16 + 8);
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          v20 = v11[6];
          v11[6] = v19;
          *(v16 + 8) = v20;
          re::DynamicString::deinit(v16);
          re::DynamicString::deinit(v12);
          v11 += 10;
          v8 = v16 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameBounds>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D04B50;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *(v4 + 32) = vnegq_f32(v5);
  *(v4 + 48) = v5;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v4 + 100) = 0x7FFFFFFFLL;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 148) = 0x7FFFFFFFLL;
  *a2 = v4;
  return result;
}

void re::RenderFrameBounds::~RenderFrameBounds(re::RenderFrameBounds *this)
{
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          *(v8 + 48) = 0;
          ++*(v8 + 56);
          v3 = *(a1 + 8);
        }

        v4 += 144;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 224 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicString::deinit((v2 + 8));
    *(v2 + 40) = 0;
    ++*(v2 + 48);
  }
}

void *re::DynamicArray<re::RenderGraphScopeOutput>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = *(v8 + 16);
          v12 = v8 + 16;
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[3] = *(v12 + 8);
          *v12 = 0;
          *(v12 + 8) = &str_67;
          *(v11 + 8) = *(v12 + 16);
          *(v11 + 7) = 0u;
          *(v11 + 18) = 0;
          *(v11 + 5) = 0u;
          *(v11 + 76) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 5, (v12 + 24));
          *(v11 + 11) = 0u;
          v14 = v11 + 11;
          *(v14 + 8) = 0;
          *(v14 + 1) = 0u;
          *(v14 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v14, (v12 + 72));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((v12 + 72));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((v12 + 24));
          re::StringID::destroyString(v12);
          v8 = v12 + 120;
          v11 = v14 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addInternal<unsigned long long const&,re::BufferSlice const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v7 + 16, a4);
  *(v9 + 32) = *(a4 + 32);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v13 + 8) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v19 = v17 + 16;
                *(v17 + 8) = v18;
                *(v17 + 40) = -1;
                std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v17 + 16, v13 + 16);
                *(v19 + 32) = *(v13 + 48);
              }

              v13 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 56 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 56 * v4;
}

void *re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32;
        v11 = 104 * v9;
        v12 = v7;
        do
        {
          *v12 = *(v10 - 32);
          *(v12 + 1) = *(v10 - 24);
          *(v10 - 24) = 0;
          *(v10 - 16) = 0;
          *(v12 + 6) = *(v10 - 8);
          *(v12 + 2) = 0u;
          *(v12 + 3) = 0u;
          v12[7] = *(v10 + 24);
          v13 = *(v10 + 8);
          v12[4] = *v10;
          *v10 = 0;
          v14 = *(v10 + 16);
          *(v10 + 24) = 0;
          v16 = v12[5];
          v15 = v12[6];
          v12[5] = v13;
          v12[6] = v14;
          *(v10 + 8) = v16;
          *(v10 + 16) = v15;
          v17 = *(v10 + 32);
          v18 = *(v10 + 48);
          *(v12 + 96) = *(v10 + 64);
          *(v12 + 4) = v17;
          *(v12 + 5) = v18;
          re::DynamicString::deinit(v10);
          v19 = *(v10 - 16);
          if (v19)
          {

            *(v10 - 16) = 0;
          }

          v20 = *(v10 - 24);
          if (v20)
          {

            *(v10 - 24) = 0;
          }

          *(v10 - 32) = 0;
          v12 += 13;
          v10 += 104;
          v11 -= 104;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::ensureCapacity(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(a1 + 24);
    }

    if (v2 >= v3)
    {

      re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(a1, v2 + 1);
    }
  }

  else
  {
    v4 = *(a1 + 8);
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(a1, v4 + 1);
    *(a1 + 16) += 2;
  }
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!*a1)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(a1, v2);
    *(a1 + 16) += 2;
    return;
  }

  if (*(a1 + 16))
  {
    if (a2 <= 8)
    {
      return;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4 >= a2)
    {
      return;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(a1, a2);
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v15 = a1 + 3;
        v16 = a1[4];
        if (v7)
        {
          v17 = a1 + 3;
        }

        else
        {
          v17 = a1[4];
        }

        if (v9)
        {
          v18 = &v17[3 * v9];
          do
          {
            *v15 = *v17;
            v19 = v17[2];
            v17[2] = 0;
            v15[2] = v19;

            v17 += 3;
            v15 += 3;
          }

          while (v17 != v18);
          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v16);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x18uLL))
      {
        v2 = 24 * a2;
        v10 = (*(*v5 + 32))(v5, 24 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = &v14[3 * v20];
            v22 = v10;
            do
            {
              *v22 = *v14;
              v23 = v14[2];
              v14[2] = 0;
              *(v22 + 16) = v23;

              v14 += 3;
              v22 += 24;
            }

            while (v14 != v21);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 24, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v17 - 2) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 2);
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 40) = v17[2];
                v19 = *v17;
                *(v18 + 16) = *(v17 - 1);
                *(v17 - 1) = 0;
                v20 = v17[1];
                v17[2] = 0;
                v22 = *(v18 + 24);
                v21 = *(v18 + 32);
                *(v18 + 24) = v19;
                *(v18 + 32) = v20;
                *v17 = v22;
                v17[1] = v21;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 48 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 48 * v4;
}

void *re::DynamicArray<re::RenderFrame::PickupAction>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraph>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraph>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraph>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraph>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraph>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::RenderGraph::RenderGraph(v11, v8);
          re::RenderGraph::~RenderGraph(v8);
          v8 += 14;
          v11 += 112;
          v10 -= 112;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::RenderGraph::RenderGraph(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = &str_122;
  *(a1 + 88) = 0;
  *(a1 + 96) = &str_122;
  re::RenderGraph::move(a1, a2);
  return a1;
}

_anonymous_namespace_ *re::RenderGraph::move(void *a1, uint64_t *a2)
{
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(a1, a2);
  re::DynamicString::operator=((a1 + 5), (a2 + 5));
  re::StringID::operator=((a1 + 9), a2 + 9);
  result = re::StringID::operator=((a1 + 11), a2 + 11);
  a1[13] = a2[13];
  return result;
}

void re::RenderGraphCompiled::~RenderGraphCompiled(re::RenderGraphCompiled *this)
{
  v2 = *(this + 90);
  if (v2)
  {
    v3 = *(this + 92);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphNodeBase>("~RenderGraphCompiled", 71, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 90) = 0;
  ++*(this + 182);
  v6 = *(this + 103);
  if (v6)
  {

    *(this + 103) = 0;
  }

  re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(this + 784);
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 744);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 82);
  re::DynamicArray<re::RenderGraph>::deinit(this + 616);
  re::DynamicArray<re::DetailedError>::deinit(this + 576);
  re::DynamicArray<unsigned long>::deinit(this + 536);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 496);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 456);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<re::RenderGraphResourceSetup>::deinit(this + 336);

  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(this);
}

re *re::internal::destroyPersistent<re::RenderGraphNodeBase>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceSetup>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 200 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 120);
          re::DynamicArray<unsigned long>::deinit(v3 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 200;
          v5 -= 200;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 2048) % *(v4 + 24), *(v7 + v5 + 2048));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::CameraLateLatch::CameraLateLatch(v8 + 256, (v9 + 256));
        v2 = *(a2 + 32);
      }

      v5 += 2304;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 2304 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 2304 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 2304 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 2304 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 2048) = a3;
  ++*(a1 + 28);
  return v7 + 2304 * v5;
}

uint64_t re::CameraLateLatch::CameraLateLatch(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    memcpy((a1 + 256), a2 + 256, 0x400uLL);
  }

  *(a1 + 1312) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1280) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 1288) = *(a2 + 161);
  *(a2 + 161) = 0;
  v5 = *(a1 + 1296);
  *(a1 + 1296) = *(a2 + 162);
  *(a2 + 162) = v5;
  v6 = *(a1 + 1312);
  *(a1 + 1312) = *(a2 + 164);
  *(a2 + 164) = v6;
  ++*(a2 + 326);
  ++*(a1 + 1304);
  *(a1 + 1352) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1320) = *(a2 + 165);
  *(a2 + 165) = 0;
  *(a1 + 1328) = *(a2 + 166);
  *(a2 + 166) = 0;
  v7 = *(a1 + 1336);
  *(a1 + 1336) = *(a2 + 167);
  *(a2 + 167) = v7;
  v8 = *(a1 + 1352);
  *(a1 + 1352) = *(a2 + 169);
  *(a2 + 169) = v8;
  ++*(a2 + 336);
  ++*(a1 + 1344);
  *(a1 + 1392) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1360) = *(a2 + 170);
  *(a2 + 170) = 0;
  *(a1 + 1368) = *(a2 + 171);
  *(a2 + 171) = 0;
  v9 = *(a1 + 1376);
  *(a1 + 1376) = *(a2 + 172);
  *(a2 + 172) = v9;
  v10 = *(a1 + 1392);
  *(a1 + 1392) = *(a2 + 174);
  *(a2 + 174) = v10;
  ++*(a2 + 346);
  ++*(a1 + 1384);
  *(a1 + 1568) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1536) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 1544) = *(a2 + 193);
  *(a2 + 193) = 0;
  v11 = *(a1 + 1552);
  *(a1 + 1552) = *(a2 + 194);
  *(a2 + 194) = v11;
  v12 = *(a1 + 1568);
  *(a1 + 1568) = *(a2 + 196);
  *(a2 + 196) = v12;
  ++*(a2 + 390);
  ++*(a1 + 1560);
  *(a1 + 1608) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1576) = *(a2 + 197);
  *(a2 + 197) = 0;
  *(a1 + 1584) = *(a2 + 198);
  *(a2 + 198) = 0;
  v13 = *(a1 + 1592);
  *(a1 + 1592) = *(a2 + 199);
  *(a2 + 199) = v13;
  v14 = *(a1 + 1608);
  *(a1 + 1608) = *(a2 + 201);
  *(a2 + 201) = v14;
  ++*(a2 + 400);
  ++*(a1 + 1600);
  *(a1 + 1616) = *(a2 + 202);
  *(a1 + 1656) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1624) = *(a2 + 203);
  *(a2 + 203) = 0;
  *(a1 + 1632) = *(a2 + 204);
  *(a2 + 204) = 0;
  v15 = *(a1 + 1640);
  *(a1 + 1640) = *(a2 + 205);
  *(a2 + 205) = v15;
  v16 = *(a1 + 1656);
  *(a1 + 1656) = *(a2 + 207);
  *(a2 + 207) = v16;
  ++*(a2 + 412);
  ++*(a1 + 1648);
  *(a1 + 1664) = *(a2 + 104);
  return a1;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 24;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(result + 32);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v5 = v2 << 9;
  v6 = v4 + 8;
  do
  {
    if ((*(v4 + 504) & 1) == 0)
    {
      result = (**(v4 + 8))(v4 + 8);
      *(v4 + 504) = 1;
    }

    v4 += 512;
    v6 += 512;
    v5 -= 512;
  }

  while (v5);
  v3 = *(v1 + 16);
LABEL_10:
  *(v1 + 16) = v3 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 5;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 5 || (v7 & 1) == 0))
    {
      if (a2 < 6)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = v9 << 9;
          v17 = v15 + 1;
          v18 = 3;
          do
          {
            v19 = &a1[v18];
            *v19 = *v15;
            *(v19 + 504) = 1;
            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=(&a1[v18 + 1], v15 + 8);
            if ((v15[63] & 1) == 0)
            {
              (*v15[1])(v15 + 1);
              *(v15 + 504) = 1;
            }

            v15 += 64;
            v18 += 64;
            v17 += 64;
            v16 -= 512;
          }

          while (v16);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 55)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 512, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = a2 << 9;
        result = (*(*result + 32))(result, a2 << 9, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = v20 << 9;
            v22 = v13 + 1;
            v23 = result;
            do
            {
              *v23 = *v13;
              v24 = v23 + 8;
              *(v23 + 504) = 1;
              result = re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v23 + 8), v13 + 8);
              if ((v13[63] & 1) == 0)
              {
                result = (*v13[1])(v13 + 1);
                *(v13 + 504) = 1;
              }

              v13 += 64;
              v22 += 64;
              v23 = v24 + 504;
              v21 -= 512;
            }

            while (v21);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_BYTE *re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    if ((a1[496] & 1) == 0)
    {
      (**a1)(a1);
      a1[496] = 1;
    }

    if ((a2[496] & 1) == 0)
    {
      (*(*a2 + 32))(a2, a1);
      if ((a2[496] & 1) == 0)
      {
        (**a2)(a2);
        a2[496] = 1;
      }

      a1[496] = 0;
    }
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

unint64_t *re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 216) % *(v4 + 24), *(v7 + v5 + 216));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 8) = 0;
        result = re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(v8, (v14 + 40));
        v2 = *(a2 + 32);
      }

      v5 += 224;
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 224 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 216) = a3;
  ++*(a1 + 28);
  return v7 + 224 * v5;
}

unint64_t *re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 80 * v5 - 6);
    }

    result = memcpy(&v8[10 * v5], &a2[10 * v5 + 2], 80 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 80 * v4 - 6);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 40 * (a2 & 3);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 64);
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17[8] % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *(v17 - 4);
                v19 = *(v17 - 6);
                *(v18 + 8) = *(v17 - 7);
                *(v17 - 7) = 0;
                v20 = *(v17 - 5);
                *(v17 - 4) = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 6) = v22;
                *(v17 - 5) = v21;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                v23 = *(v17 - 2);
                memcpy((v18 + 64), v17, 32 * v23);
                *(v18 + 48) = v23;
                *(v17 - 2) = 0;
                ++*(v17 - 2);
              }

              v17 += 18;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 144 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 144 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 144 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 128) = a3;
  ++*(a1 + 28);
  return v24 + 144 * v5;
}

void *re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11 = v12;
          *(v8 + 1) = 0;
          v11[2] = *(v8 + 2);
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
          v8 = (v8 + 24);
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 48;
          v11 += 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderCommandEncoderWithMask>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::FixedArray<re::RenderLayer>::copy(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 == a2[1])
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::RenderLayer const*,re::RenderLayer const*,re::RenderLayer*>(&v4, *a2, *a2 + 32 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::RenderLayer>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 20) = 0;
      result += 32;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RenderLayer const*,re::RenderLayer const*,re::RenderLayer*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a3;
    v7 = 0;
    while (1)
    {
      v8 = re::ObjCObject::operator=((a4 + v7), (a2 + v7));
      if (v8[1])
      {
        if (*(a2 + v7 + 8))
        {
          *(a4 + v7 + 12) = *(a2 + v7 + 12);
        }

        else
        {
          *(v8 + 8) = 0;
        }
      }

      else if (*(a2 + v7 + 8))
      {
        *(v8 + 8) = 1;
        *(a4 + v7 + 12) = *(a2 + v7 + 12);
      }

      v9 = a4 + v7;
      if (*(a4 + v7 + 20))
      {
        break;
      }

      if (*(a2 + v7 + 20))
      {
        *(v9 + 20) = 1;
        v11 = a4 + v7;
        v10 = *(a2 + v7 + 24);
LABEL_14:
        *(v11 + 24) = v10;
      }

LABEL_16:
      v7 += 32;
      if (a2 + v7 == v6)
      {
        return v6;
      }
    }

    if ((*(a2 + v7 + 20) & 1) == 0)
    {
      *(v9 + 20) = 0;
      goto LABEL_16;
    }

    v10 = *(a2 + v7 + 24);
    v11 = a4 + v7;
    goto LABEL_14;
  }

  return a2;
}

void *re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 40 * v9);
        v11 = v7 + 4;
        v12 = (v8 + 32);
        do
        {
          v13 = v12 - 4;
          *(v11 - 4) = *(v12 - 4);
          v14 = *(v12 - 3);
          *(v11 - 8) = *(v12 - 8);
          *(v11 - 3) = v14;
          LODWORD(v14) = *(v12 - 8);
          *(v11 - 8) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
          }

          *(v12 - 4) = 0;
          v11 += 5;
          v12 += 5;
        }

        while (v13 + 5 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameWorkload>@<D0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 1024, 128);
  bzero(v4, 0x400uLL);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D04A70;
  *(v4 + 24) = 0;
  v4[18] = 0;
  *(v4 + 19) = vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL);
  v4[21] = 0;
  *(v4 + 44) = 0;
  v4[23] = 0;
  v4[25] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[27] = 0;
  *(v4 + 60) = 0;
  v4[36] = 0;
  *(v4 + 70) = 0;
  result = 0.0;
  *(v4 + 31) = 0u;
  *(v4 + 33) = 0u;
  v4[39] = 0;
  v4[40] = 0;
  v4[38] = 0;
  *(v4 + 82) = 0;
  v4[77] = 0;
  *(v4 + 312) = 0;
  *(v4 + 157) = 0;
  *(v4 + 640) = 0;
  *(v4 + 768) = 0;
  *(v4 + 896) = 0;
  *(v4 + 21) = 0u;
  *(v4 + 22) = 0u;
  *(v4 + 92) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 49) = 0u;
  *(v4 + 102) = 0;
  *(v4 + 26) = 0u;
  *(v4 + 27) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 57) = 0u;
  *(v4 + 59) = 0u;
  *(v4 + 122) = 0;
  *(v4 + 132) = 0;
  *(v4 + 31) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 142) = 0;
  *(v4 + 67) = 0u;
  *(v4 + 69) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *a2 = v4;
  return result;
}

void *re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::mtl::Drawable>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ObjCObject>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ObjCObject>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::reserve(result, a2);
    v5 = *(v3 + 1);
    if (v5 < a2)
    {
      do
      {
        v6 = v3 + 24;
        if ((*(v3 + 16) & 1) == 0)
        {
          v6 = *(v3 + 4);
        }

        *&v6[8 * v5++] = 0;
      }

      while (a2 != v5);
    }
  }

  *(v3 + 1) = a2;
  *(v3 + 4) += 2;
  return result;
}

int *re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(int *result, unint64_t a2, char *__src, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = *(result + 1);
    if (v7 + 1 <= a2)
    {
      v19 = 0;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v20) = 136315906;
      *(&v20 + 4) = "copy";
      WORD6(v20) = 1024;
      HIWORD(v20) = 678;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v4 = a4;
      v8 = a2 + a4;
      if (!__CFADD__(a2, a4))
      {
        if (v7 >= v8)
        {
          if (result[4])
          {
            v13 = (result + 6);
          }

          else
          {
            v13 = *(result + 4);
          }

          result = memmove(&v13[8 * a2], __src, 8 * a4);
LABEL_29:
          v6[4] += 2;
          return result;
        }

        if (*result)
        {
          v10 = result[4];
          if (v10)
          {
            if (v8 > 5)
            {
              v12 = 10;
              goto LABEL_16;
            }
          }

          else
          {
            v11 = *(result + 3);
            if (v11 < v8)
            {
              v12 = 2 * v11;
LABEL_16:
              if (v12 <= v8)
              {
                v14 = a2 + a4;
              }

              else
              {
                v14 = v12;
              }

              re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(result, v14);
              v10 = v6[4];
            }
          }
        }

        else
        {
          re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v6, v8);
          v10 = v6[4] + 2;
          v6[4] = v10;
        }

        v15 = *(v6 + 1);
        v16 = v15 - a2;
        if (v10)
        {
          v17 = (v6 + 6);
        }

        else
        {
          v17 = *(v6 + 4);
        }

        if (v15 != a2)
        {
          memmove(&v17[8 * a2], __src, 8 * v16);
          v10 = v6[4];
        }

        if (v10)
        {
          v18 = (v6 + 6);
        }

        else
        {
          v18 = *(v6 + 4);
        }

        result = memcpy(&v18[8 * *(v6 + 1)], &__src[8 * v16], 8 * (v4 - v16));
        *(v6 + 1) = v8;
        goto LABEL_29;
      }
    }

    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 682, v7, a2, v4, v19, v20);
    _os_crash();
    __break(1u);
  }

  return result;
}

void re::createMaterialSystemShaderMetadataForDevice(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 supportsFamily:5001];
  v5 = [*a1 supportsFamily:1006];
  v7 = re::mtl::Device::supportsArgumentBuffers(a1, v6);

  re::createMaterialSystemShaderMetadata(v4, v5, v7, a2);
}

void re::createMaterialSystemShaderMetadata(re *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 36) = 0x7FFFFFFFLL;
  if ((atomic_load_explicit(&qword_1EE1B88D0, memory_order_acquire) & 1) == 0)
  {
    v33 = this;
    v29 = a2;
    v30 = a3;
    LODWORD(this) = __cxa_guard_acquire(&qword_1EE1B88D0);
    a3 = v30;
    LOBYTE(a2) = v29;
    v31 = this;
    LOBYTE(this) = v33;
    if (v31)
    {
      re::Defaults::BOOLValue("supportsManualVertexFetch", v29, &v35);
      if (v35)
      {
        v32 = BYTE1(v35);
      }

      else
      {
        v32 = 1;
      }

      _MergedGlobals_441 = v32;
      __cxa_guard_release(&qword_1EE1B88D0);
      LOBYTE(this) = v33;
      a3 = v30;
      LOBYTE(a2) = v29;
    }
  }

  v5 = this & a3 & a2 & _MergedGlobals_441;
  v35 = 0x3EE7B1A0B0613218;
  v36 = "realitykit::vsGeometryModifier";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v6 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x63B20AE1EFE6198CLL;
  v36 = "realitykit::fsSurfacePbr";
  v34 = 256;
  v7 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x55E544DB28BE8DDALL;
  v36 = "vsRealityPbr";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v8 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4A9CA8DA3289E1FALL;
  v36 = "fsRealityPbr";
  v34 = 256;
  v9 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x32567C2142;
  v36 = "vsUnlit";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v10 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x2BB9B4B922;
  v36 = "fsUnlit";
  v34 = 256;
  v11 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x55E2A44FE2A33FCELL;
  v36 = "vsDepthClear";
  v34 = 256;
  v12 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xE3D03E3074A10316;
  v36 = "vsStencilPortal";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v13 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x58AB3A4A0A2D692CLL;
  v36 = "fsDecrementStencil";
  v34 = 256;
  v14 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x1D9CEB56E2FABFF2;
  v36 = "vsVideoPlayback";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v15 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xCCDE6D7516E4C5C4;
  v36 = "vsRealityShadowReceiver";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v16 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x2C5500CFF2B76A0;
  v36 = "vsOcclusion";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v17 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x26821BA62951E80;
  v36 = "fsOcclusion";
  v34 = 256;
  v18 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x544B4A88DB3F4758;
  v36 = "fullScreenVert";
  v34 = 256;
  v19 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x351E069288A50310;
  v36 = "fullScreen2Vert";
  v34 = 256;
  v20 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xAC006A8C54D0AEB4;
  v36 = "realitykit::fsSurfaceShadow";
  v34 = 256;
  v21 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x1CD7309942F31B66;
  v36 = "realitykit::fsSurfaceMeshShadowCaster";
  v34 = 256;
  v22 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xD2344C70BA3C214ELL;
  v36 = "realitykit::fsSurfaceMeshShadowCasterProgrammableBlending";
  v34 = 256;
  v23 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D128C4AA49FCLL;
  v36 = "realitykit::fsSelectionMaterialDiscard";
  v34 = 256;
  v24 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EA40;
  v36 = "realitykit::fsSelectionMaterialGroup01";
  v34 = 256;
  v25 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EAC0;
  v36 = "realitykit::fsSelectionMaterialGroup23";
  v34 = 256;
  v26 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EB40;
  v36 = "realitykit::fsSelectionMaterialGroup45";
  v34 = 256;
  v27 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EBC0;
  v36 = "realitykit::fsSelectionMaterialGroup67";
  v34 = 256;
  v28 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(result + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
    *(result + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    *(result + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::GraphicsErrorCategoryImpl::~GraphicsErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::GraphicsErrorCategoryImpl::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = "Error encountered when executing the render frame";
  v4 = "Unknown REGraphics error";
  if (a1 == 1001)
  {
    v4 = "Invalid custom deformer";
  }

  if (a1 != 2000)
  {
    v3 = v4;
  }

  if (a1 == 1000)
  {
    v5 = "Invalid blend shape group definition";
  }

  else
  {
    v5 = v3;
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v5);
}

id re::makeMetalTypeInfoForPointer@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 dataTypeDescription];
  v5 = [v4 elementType];
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 1;
  *(a2 + 32) = 0;
  v6 = (a2 + 32);
  *(a2 + 24) = &str_67;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 72) = 0;
  *(a2 + 76) = 256;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 61) = 0;
  if (v5 == 1)
  {
    re::makeMetalTypeInfo([v4 elementStructType], objc_msgSend(objc_msgSend(*a1, sel_name), sel_UTF8String), 0, objc_msgSend(v4, sel_dataSize), &v11);
    *a2 = v11;
    *(a2 + 8) = DWORD2(v11);
    re::StringID::operator=((a2 + 16), &v12);
    *v6 = v14[0];
    *(a2 + 36) = WORD2(v14[0]);
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 40), v14 + 1);
    *(a2 + 64) = *&v14[2];
    *(a2 + 70) = *(&v14[2] + 6);
    v7 = re::FixedArray<re::MetalTypeInfo>::deinit(v14 + 1);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  else
  {
    v8 = v5;
    v11 = 0u;
    v12 = 0;
    memset(v14, 0, sizeof(v14));
    DWORD2(v11) = 1;
    v13 = &str_67;
    WORD6(v14[2]) = 256;
    *(a2 + 8) = 1;
    *a2 = v11;
    re::StringID::operator=((a2 + 16), &v12);
    *v6 = v14[0];
    *(a2 + 36) = WORD2(v14[0]);
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 40), v14 + 1);
    *(a2 + 64) = *&v14[2];
    *(a2 + 70) = *(&v14[2] + 6);
    v9 = re::FixedArray<re::MetalTypeInfo>::deinit(v14 + 1);
    if (v12)
    {
      if (v12)
      {
      }
    }

    *(a2 + 36) = v8;
  }

  *(a2 + 8) = [v4 alignment];
  result = [v4 alignment];
  if (!result)
  {
    *(a2 + 8) = 16;
  }

  return result;
}

id re::makeMetalTypeInfo@<X0>(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, unsigned int a3@<W2>, _BYTE *a4@<X3>, unsigned int *a5@<X8>)
{
  v8 = a5;
  *a5 = a3;
  *(a5 + 1) = 0x100000000;
  *(a5 + 2) = 0;
  *(a5 + 3) = &str_67;
  *(v8 + 5) = 0;
  v8[8] = 0;
  v8[18] = 0;
  *(v8 + 38) = 256;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 61) = 0;
  v8[1] = a4;
  *(v8 + 18) = 1;
  v9 = [(_anonymous_namespace_ *)a1 members];
  result = [v9 count];
  if (result)
  {
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v100 = 0;
    v11 = [v9 count];
    if (v11)
    {
      re::DynamicArray<re::MetalTypeInfo>::setCapacity(&v97, v11);
    }

    v79 = (v8 + 10);
    v12 = [v9 count];
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v80 = v8;
      while (1)
      {
        v16 = v15 - 1;
        v17 = [v9 objectAtIndex_];
        v18 = *v8;
        v19 = [v17 offset] + v18;
        v89 = 0;
        v90 = 1;
        *&v91 = 0;
        *(&v91 + 1) = &str_67;
        v92 = 0;
        v93 = 0;
        *&v96[16] = 0;
        *&v96[20] = 256;
        v95 = 0;
        *v96 = 0;
        v94 = 0;
        *&v96[5] = 0;
        v20 = [v17 dataType];
        if (v20 <= 57)
        {
          if (v20 == 1)
          {
            if ([v17 structType])
            {
              v37 = [v9 count] - 1;
              v38 = a4;
              if (a4)
              {
                if (v16 == v37)
                {
LABEL_45:
                  v28 = v38 - [v17 offset];
                  goto LABEL_46;
                }
              }

              else if (v16 == v37)
              {
                v28 = 0;
LABEL_46:
                v55 = [v17 structType];
                v56 = [objc_msgSend(v17 name)];
                [v17 argumentIndex];
                MetalTypeInfo = re::makeMetalTypeInfo(&v81, v55, v56, v19, v28);
                v89 = v81;
                v90 = DWORD2(v81);
                v58 = v82;
                v59 = v83;
                v82 = 0;
                v83 = &str_67;
                v60 = v91;
                *&v91 = v58;
                *(&v91 + 1) = v59;
                if (v60)
                {
                }

                v92 = v84;
                v93 = v85;
                re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
                *&v96[8] = *&v88[8];
                *&v96[14] = *&v88[14];
                v61 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
                if (v82)
                {
                  if (v82)
                  {
                  }
                }

                goto LABEL_51;
              }

              v38 = [objc_msgSend(v9 objectAtIndex_];
              goto LABEL_45;
            }
          }

          else if (v20 == 2 && [v17 arrayType])
          {
            v29 = [v17 arrayType];
            v30 = [objc_msgSend(v17 name)];
            v31 = [v17 argumentIndex];
            LODWORD(v81) = v19;
            *(&v81 + 4) = 0x100000000;
            v82 = 0;
            v83 = &str_67;
            v84 = 0;
            v85 = 0;
            *&v88[16] = 0;
            *&v88[20] = 256;
            v87 = 0;
            *v88 = 0;
            v86 = 0;
            *&v88[5] = 0;
            v84 = [v29 arrayLength];
            v32 = [v29 stride];
            DWORD1(v81) = v84 * v32;
            v90 = DWORD2(v81);
            v89 = v81;
            v33 = v82;
            v34 = v83;
            v82 = 0;
            v83 = &str_67;
            v35 = v91;
            *&v91 = v33;
            *(&v91 + 1) = v34;
            if (v35)
            {
            }

            v92 = v84;
            v93 = v85;
            re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
            *&v96[8] = *&v88[8];
            *&v96[14] = *&v88[14];
            v36 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
            if (v82)
            {
              if (v82)
              {
              }
            }

LABEL_40:
            LODWORD(v28) = HIDWORD(v89);
            goto LABEL_51;
          }
        }

        else
        {
          switch(v20)
          {
            case ':':
              v39 = [v17 textureReferenceType];
              v40 = [objc_msgSend(v17 name)];
              v41 = [v17 argumentIndex];
              v42 = v41;
              *&v81 = 0;
              DWORD2(v81) = 1;
              v82 = 0;
              v83 = &str_67;
              v84 = 0;
              *&v88[16] = 0;
              *&v88[20] = 256;
              v87 = 0;
              *v88 = 0;
              v86 = 0;
              *&v88[5] = 0;
              v85 = 58;
              *&v88[8] = [v39 textureType];
              *&v88[16] = v42;
              v43 = [v39 isDepthTexture];
              v88[12] = v43;
              v89 = v81;
              v90 = DWORD2(v81);
              v44 = v82;
              v45 = v83;
              v82 = 0;
              v83 = &str_67;
              v46 = v91;
              *&v91 = v44;
              *(&v91 + 1) = v45;
              if (v46)
              {
              }

              v92 = v84;
              v93 = v85;
              re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
              *&v96[8] = *&v88[8];
              *&v96[14] = *&v88[14];
              v47 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
              if (v82)
              {
                if (v82)
                {
                }
              }

              TypeSize = re::mtl::getTypeSize(v93);
              v89 = __PAIR64__(TypeSize, v19);
              LODWORD(v28) = TypeSize;
              v8 = v80;
              *(v80 + 76) = 1;
              goto LABEL_51;
            case '<':
              if ([v17 pointerType])
              {
                v22 = [objc_msgSend(v17 name)];
                *&v81 = 0;
                *(&v81 + 1) = &str_67;
                v24 = v81;
                *&v81 = 0;
                *(&v81 + 1) = &str_67;
                v25 = v91;
                v91 = v24;
                if (v25)
                {
                  if (v81)
                  {
                    if (v81)
                    {
                    }
                  }
                }

                v93 = 60;
                v89 = v19 | 0x800000000;
                v27 = [v17 argumentIndex];
                *&v96[16] = v27;
                LODWORD(v28) = HIDWORD(v89);
                *(v8 + 76) = 1;
                if (!v27)
                {
                  goto LABEL_53;
                }

LABEL_52:
                *(v8 + 76) = 1;
                goto LABEL_53;
              }

              break;
            case ';':
              re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Samplers within argument buffers are not supported by the material system.", "!Unreachable code", "makeMetalTypeInfo", 220);
              result = _os_crash();
              __break(1u);
              return result;
          }
        }

        v49 = [objc_msgSend(v17 name)];
        *&v81 = 0;
        *(&v81 + 1) = &str_67;
        v51 = v81;
        *&v81 = 0;
        *(&v81 + 1) = &str_67;
        v52 = v91;
        v91 = v51;
        if (v52)
        {
          if (v81)
          {
            if (v81)
            {
            }
          }
        }

        LODWORD(v89) = v19;
        v93 = [v17 dataType];
        HIDWORD(v89) = re::mtl::getTypeSize(v93);
        *&v96[16] = [v17 argumentIndex];
        if (v16 == [v9 count] - 1)
        {
          goto LABEL_40;
        }

        v54 = [objc_msgSend(v9 objectAtIndex_];
        LODWORD(v28) = v54 - [v17 offset];
LABEL_51:
        if (*&v96[16])
        {
          goto LABEL_52;
        }

LABEL_53:
        v62 = v99;
        if (v99 >= v98)
        {
          re::DynamicArray<re::MetalTypeInfo>::growCapacity(&v97, v99 + 1);
          v62 = v99;
        }

        v63 = &v101[10 * v62];
        v64 = v89;
        *(v63 + 2) = v90;
        *v63 = v64;
        LOBYTE(v64) = v91;
        v63[2] = v63[2] & 0xFFFFFFFFFFFFFFFELL | v91 & 1;
        v63[2] = v91 & 0xFFFFFFFFFFFFFFFELL | v64 & 1;
        v63[3] = *(&v91 + 1);
        *&v91 = 0;
        *(&v91 + 1) = &str_67;
        LODWORD(v64) = v92;
        *(v63 + 18) = v93;
        *(v63 + 8) = v64;
        v63[6] = 0;
        v63[7] = 0;
        v63[5] = 0;
        v63[5] = v94;
        v94 = 0;
        v63[6] = v95;
        v95 = 0;
        v65 = v63[7];
        v63[7] = *v96;
        *v96 = v65;
        v66 = *&v96[8];
        *(v63 + 70) = *&v96[14];
        v63[8] = v66;
        ++v99;
        ++v100;
        v67 = re::FixedArray<re::MetalTypeInfo>::deinit(&v94);
        if (v91)
        {
          if (v91)
          {
          }
        }

        v14 += v28;
        v13 = v15;
        v12 = [v9 count];
        if (v12 <= v15++)
        {
          goto LABEL_61;
        }
      }
    }

    v14 = 0;
LABEL_61:
    if (!a4)
    {
      v8[1] = v14;
    }

    v69 = v99;
    if (v99)
    {
      v70 = v101;
      v71 = &v101[10 * v99];
      v72 = *(v8 + 7);
      do
      {
        v73 = *v70;
        *(v72 + 8) = *(v70 + 2);
        *v72 = v73;
        v74 = (v70 + 2);
        LOBYTE(v73) = v70[2];
        *(v72 + 16) = *(v72 + 16) & 0xFFFFFFFFFFFFFFFELL | v70[2] & 1;
        *(v72 + 16) = v70[2] & 0xFFFFFFFFFFFFFFFELL | v73 & 1;
        *(v72 + 24) = v70[3];
        v70[3] = &str_67;
        v70[2] = 0;
        LODWORD(v73) = *(v70 + 8);
        *(v72 + 36) = *(v70 + 18);
        *(v72 + 32) = v73;
        *(v72 + 48) = 0;
        *(v72 + 56) = 0;
        *(v72 + 40) = 0;
        v76 = v70[5];
        v75 = v70 + 5;
        *(v72 + 40) = v76;
        *v75 = 0;
        *(v72 + 48) = v75[1];
        v75[1] = 0;
        v77 = *(v72 + 56);
        *(v72 + 56) = v75[2];
        v75[2] = v77;
        v78 = v75[3];
        *(v72 + 70) = *(v75 + 30);
        *(v72 + 64) = v78;
        re::FixedArray<re::MetalTypeInfo>::deinit(v75);
        re::StringID::destroyString(v74);
        v72 += 80;
        v70 = v75 + 5;
      }

      while (v70 != v71);
    }

    return re::DynamicArray<re::MetalTypeInfo>::deinit(&v97);
  }

  return result;
}

void re::collectArguments(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _anonymous_namespace_ *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = a10;
  v136 = *MEMORY[0x1E69E9840];
  if (*(a10 + 16))
  {
    v11 = a5;
    v13 = 0;
    v14 = &selRef_setOwnerWithIdentity_;
    while (1)
    {
      v115 = *(*(v10 + 32) + 8 * v13);
      v15 = [v115 v14[267]];
      v16 = [v115 v14[267]];
      v17 = !v15 || v16 == 28;
      if (v17)
      {
        break;
      }

      if ([v115 v14[267]] == 2)
      {
        if ([v115 arrayLength] != 1)
        {
          v29 = v115;
          v117 = 0;
          v118 = 0;
          v116 = 0;
          v30 = [v29 arrayLength];
          if ([v29 arrayLength])
          {
            v31 = 0;
            v32 = 1;
            while (1)
            {
              v33 = re::DynamicString::format("%s[%u]", &__endptr, [objc_msgSend(v29 name)], v32 - 1);
              v34 = (v120 & 1) != 0 ? v122 : v121;
              v123 = 0;
              v124 = &str_67;
              v35 = v117;
              if (v117 <= v31)
              {
                break;
              }

              v36 = re::StringID::operator=(&v118[2 * v31], &v123);
              if (v123)
              {
                if (v123)
                {
                }
              }

              v123 = 0;
              v124 = &str_67;
              if (__endptr && (v120 & 1) != 0)
              {
                (*(*__endptr + 40))();
              }

              v37 = [v29 index];
              v35 = v117;
              if (v117 <= v31)
              {
                goto LABEL_150;
              }

              v118[2 * v31 + 1].n128_u16[0] = v37 + v31;
              v38 = [v29 textureType];
              v35 = v117;
              if (v117 <= v31)
              {
                goto LABEL_151;
              }

              v118[2 * v31 + 1].n128_u16[1] = v38;
              v39 = [v29 textureDataType];
              v35 = v117;
              if (v117 <= v31)
              {
                goto LABEL_152;
              }

              v118[2 * v31 + 1].n128_u16[2] = v39;
              v40 = [v29 isDepthTexture];
              v35 = v117;
              if (v117 <= v31)
              {
                goto LABEL_153;
              }

              v118[2 * v31 + 1].n128_u8[6] = v40;
              v41 = [v29 access];
              v35 = v117;
              if (v117 <= v31)
              {
                goto LABEL_154;
              }

              v118[2 * v31 + 1].n128_u64[1] = v41;
              v31 = v32;
              v42 = [v29 arrayLength] > v32++;
              if (!v42)
              {
                goto LABEL_49;
              }
            }

            v125 = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_150:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_151:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_152:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_153:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_154:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            v80 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_155;
          }

LABEL_49:
          if (v29)
          {
          }

          v11 = a5;
          if (v117)
          {
            v43 = v118;
            v44 = 32 * v117;
            do
            {
              re::DynamicArray<re::TextureArgument>::add(a4, v43);
              v43 += 2;
              v44 -= 32;
            }

            while (v44);
          }

          re::FixedArray<re::TextureArgument>::deinit(&v116);
          goto LABEL_118;
        }

        v22 = v115;
        v23 = [objc_msgSend(v22 name)];
        *v126 = 0;
        *&v126[8] = &str_67;
        v129 = *v126;
        LOWORD(v130) = [v22 index];
        WORD1(v130) = [v22 textureType];
        WORD2(v130) = [v22 textureDataType];
        BYTE6(v130) = [v22 isDepthTexture];
        *(&v130 + 1) = [v22 access];
        re::DynamicArray<re::TextureArgument>::add(a4, &v129);
        if (*&v129.var0)
        {
          if (!v22)
          {
            goto LABEL_118;
          }

          goto LABEL_97;
        }

LABEL_96:
        if (v22)
        {
          goto LABEL_97;
        }

        goto LABEL_118;
      }

      if ([v115 v14[267]] == 3)
      {
        if ([v115 arrayLength] != 1)
        {
          v74 = v115;
          v75 = strcmp("dynamicSamplers", [objc_msgSend(v74 name)]) == 0;
          v117 = 0;
          v118 = 0;
          v116 = 0;
          v76 = [v74 arrayLength];
          if ([v74 arrayLength])
          {
            v31 = 0;
            v77 = 1;
            while (1)
            {
              v78 = re::DynamicString::format("%s[%u]", &__endptr, [objc_msgSend(v74 name)], v77 - 1);
              v79 = (v120 & 1) != 0 ? v122 : v121;
              v123 = 0;
              v124 = &str_67;
              v80 = v117;
              if (v117 <= v31)
              {
                break;
              }

              v81 = re::StringID::operator=((v118 + 24 * v31), &v123);
              if (v123)
              {
                if (v123)
                {
                }
              }

              v123 = 0;
              v124 = &str_67;
              if (__endptr && (v120 & 1) != 0)
              {
                (*(*__endptr + 40))();
              }

              v82 = [v74 index];
              v80 = v117;
              if (v117 <= v31)
              {
                goto LABEL_156;
              }

              v83 = v118 + 24 * v31;
              *(v83 + 8) = v82 + v31;
              v83[18] = v75;
              v31 = v77;
              v42 = [v74 arrayLength] > v77++;
              if (!v42)
              {
                goto LABEL_112;
              }
            }

LABEL_155:
            v125 = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v80;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_156:
            __endptr = 0;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v129 = 0;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v126 = 136315906;
            *&v126[4] = "operator[]";
            *&v126[12] = 1024;
            *&v126[14] = 468;
            *&v126[18] = 2048;
            *&v126[20] = v31;
            *&v126[28] = 2048;
            *&v126[30] = v80;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_112:
          if (v74)
          {
          }

          v11 = a5;
          if (v117)
          {
            v84 = v118;
            v85 = 24 * v117;
            do
            {
              re::DynamicArray<re::SamplerArgument>::add(a5, v84);
              v84 += 3;
              v85 -= 24;
            }

            while (v85);
          }

          re::FixedArray<re::AttributeArgument>::deinit(&v116);
          goto LABEL_118;
        }

        v22 = v115;
        v27 = [objc_msgSend(v22 name)];
        *v126 = 0;
        *&v126[8] = &str_67;
        v129 = *v126;
        LOWORD(v130) = [v22 index];
        BYTE2(v130) = strncmp("dynamicSampler", [objc_msgSend(v22 name)], 0xEuLL) == 0;
        v28 = re::DynamicArray<re::SamplerArgument>::add(v11, &v129);
        if (*&v129.var0)
        {
        }

        if (v22)
        {
          goto LABEL_97;
        }
      }

LABEL_118:
      v21 = 0;
      *a9 = 0;
LABEL_119:
      if (v115)
      {

        v115 = 0;
      }

      if (v21)
      {
        return;
      }

      ++v13;
      v10 = a10;
      v14 = &selRef_setOwnerWithIdentity_;
      if (*(a10 + 16) <= v13)
      {
        goto LABEL_147;
      }
    }

    v18 = v16;
    if (a7 && [v115 index] - 29 <= 1)
    {
      goto LABEL_118;
    }

    if (a8 && [v115 index] - 1 <= 3)
    {
      if (!re::validateArgumentMatchesStandardResource(&v115))
      {
        re::DynamicString::format("Invalid standard resource at slot index %lu.", &v129, [v115 index]);
        re::makeMaterialBuilderErr(0x64, &v129, v126);
        *a9 = 1;
        v19 = *v126;
        *v126 = 0;
        *(a9 + 8) = v19;
        v20 = *&v129.var0;
        if (!*&v129.var0)
        {
LABEL_16:
          v21 = 1;
          goto LABEL_119;
        }

LABEL_14:
        if (v129.var1)
        {
          (*(*v20 + 40))(v20, v130);
        }

        goto LABEL_16;
      }

      goto LABEL_118;
    }

    if (v15)
    {
      v25 = [v115 dataTypeDescription];
      if (!v25)
      {
LABEL_82:
        if ([v115 isVertexDescriptorBuffer])
        {
          goto LABEL_118;
        }

        if (!a6)
        {
          v22 = v115;
          *v126 = v22;
          re::makeBufferArgument(&v129, v126);
          v89 = re::DynamicArray<re::BufferArgument>::add(a1, &v129);
          if (*&v129.var0)
          {
            if (*&v129.var0)
            {
            }
          }

          *&v129.var0 = 0;
          v129.var1 = &str_67;
          if (!v22)
          {
            goto LABEL_118;
          }

LABEL_97:

          goto LABEL_118;
        }

        v69 = [objc_msgSend(v115 name)];
        v70 = strlen(v69);
        if (v70 >= 0x15)
        {
          v71 = *v69 == 0x4157524F465F4552 && *(v69 + 1) == 0x4655425F44454452;
          if (v71 && *(v69 + 4) == 1599227206)
          {
            v90 = v70;
            __endptr = 0;
            v91 = strtoull(v69 + 20, &__endptr, 10);
            v92 = __endptr + 1;
            if (__endptr + 1 >= &v69[v90])
            {
              re::DynamicString::format("Forwarded buffer argument is malformed: %s. No valid shader function name found.", &v129, v69);
              re::makeMaterialBuilderErr(0x28, &v129, v126);
              *a9 = 1;
              v104 = *v126;
              *v126 = 0;
              *(a9 + 8) = v104;
              v20 = *&v129.var0;
              v11 = a5;
              if (!*&v129.var0)
              {
                goto LABEL_16;
              }

              goto LABEL_14;
            }

            v93 = v91;
            *v126 = 0;
            *&v126[8] = &str_67;
            v94 = v126[0];
            v95 = *&v126[8];
            v129 = *v126;
            *&v130 = v93;
            v96 = [v115 index];
            WORD4(v130) = v96;
            v97 = a6;
            v98 = *(a6 + 8);
            v99 = *(a6 + 16);
            v11 = a5;
            if (v99 >= v98)
            {
              v100 = v99 + 1;
              if (v98 < v99 + 1)
              {
                if (*a6)
                {
                  v101 = 2 * v98;
                  v17 = v98 == 0;
                  v102 = 8;
                  if (!v17)
                  {
                    v102 = v101;
                  }

                  if (v102 <= v100)
                  {
                    v103 = v100;
                  }

                  else
                  {
                    v103 = v102;
                  }

                  re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(a6, v103);
                  v97 = a6;
                }

                else
                {
                  re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(a6, v100);
                  v97 = a6;
                  ++*(a6 + 24);
                }
              }

              v99 = *(v97 + 16);
            }

            v105 = v97;
            v106 = re::StringID::StringID((*(v97 + 32) + 32 * v99), &v129);
            *(v106 + 2) = v130;
            *(v106 + 12) = WORD4(v130);
            ++*(v105 + 16);
            ++*(v105 + 24);
            if (v94)
            {
            }

            goto LABEL_118;
          }
        }

        v22 = v115;
        *v126 = v22;
        re::makeBufferArgument(&v129, v126);
        v73 = re::DynamicArray<re::BufferArgument>::add(a1, &v129);
        if (*&v129.var0)
        {
          if (*&v129.var0)
          {
          }
        }

        *&v129.var0 = 0;
        v129.var1 = &str_67;
        v11 = a5;
        goto LABEL_96;
      }

      v26 = [v25 elementStructType];
    }

    else
    {
      v26 = [v115 bufferStructType];
    }

    if (v26)
    {
      *&v129.var0 = 0;
      v129.var1 = &str_67;
      LOWORD(v130) = 0;
      *(&v130 + 1) = 0;
      LODWORD(v131) = 1;
      *(&v131 + 1) = 0;
      *&v132 = &str_67;
      DWORD2(v132) = 0;
      WORD6(v132) = 0;
      *&v134[16] = 0;
      *&v134[20] = 256;
      *v134 = 0;
      v133 = 0uLL;
      *&v134[5] = 0;
      v135 = 0;
      v45 = [objc_msgSend(v115 name)];
      *v126 = 0;
      *&v126[8] = &str_67;
      v47 = *v126;
      v48 = *&v126[8];
      *v126 = 0;
      *&v126[8] = &str_67;
      var0 = v129.var0;
      var1 = v129.var1;
      *&v129.var0 = v47;
      v129.var1 = v48;
      if (var0)
      {
        if (v126[0])
        {
          if (v126[0])
          {
          }
        }
      }

      v52 = v13;
      if (v18 != 28)
      {
        v52 = [v115 index];
      }

      LOWORD(v130) = v52;
      v11 = a5;
      if (v15)
      {
        v53 = v115;
        __endptr = v53;
        MetalTypeInfoForPointer = re::makeMetalTypeInfoForPointer(&__endptr, v126);
        *(&v130 + 1) = *v126;
        LODWORD(v131) = *&v126[8];
        v55 = *&v126[16];
        v56 = *&v126[24];
        *&v126[16] = 0;
        *&v126[24] = &str_67;
        v57 = BYTE8(v131);
        v58 = v132;
        *(&v131 + 1) = v55;
        *&v132 = v56;
        if (v57)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v53 = v115;
        re::makeMetalTypeInfo([v53 bufferStructType], objc_msgSend(objc_msgSend(v53, sel_name), sel_UTF8String), 0, objc_msgSend(v53, sel_bufferDataSize), v126);
        MetalTypeInfoForPointer = [v53 bufferAlignment];
        *&v126[8] = MetalTypeInfoForPointer;
        *(&v130 + 1) = *v126;
        LODWORD(v131) = MetalTypeInfoForPointer;
        v87 = *&v126[16];
        v86 = *&v126[24];
        *&v126[16] = 0;
        *&v126[24] = &str_67;
        v88 = BYTE8(v131);
        v58 = v132;
        *(&v131 + 1) = v87;
        *&v132 = v86;
        if (v88)
        {
LABEL_65:
        }
      }

      DWORD2(v132) = *&v126[32];
      WORD6(v132) = *&v126[36];
      re::FixedArray<re::MetalTypeInfo>::operator=(&v133, v127);
      *&v134[8] = v128[0];
      *&v134[14] = *(v128 + 6);
      v59 = re::FixedArray<re::MetalTypeInfo>::deinit(v127);
      if (v126[16])
      {
        if (v126[16])
        {
        }
      }

      *&v126[16] = 0;
      *&v126[24] = &str_67;
      if (v53)
      {
      }

      if (v134[20])
      {
        v60 = a3;
      }

      else
      {
        v60 = a2;
      }

      v61 = *(v60 + 16);
      if (v61 >= *(v60 + 8))
      {
        re::DynamicArray<re::TypedArgument>::growCapacity(v60, v61 + 1);
        v61 = *(v60 + 16);
      }

      v62 = *(v60 + 32) + 112 * v61;
      v63 = v129.var0;
      *v62 = *v62 & 0xFFFFFFFFFFFFFFFELL | *&v129.var0 & 1;
      *v62 = *&v129.var0 & 0xFFFFFFFFFFFFFFFELL | v63 & 1;
      *(v62 + 8) = v129.var1;
      *&v129.var0 = 0;
      v129.var1 = &str_67;
      *(v62 + 16) = v130;
      v64 = v131;
      *(v62 + 24) = *(&v130 + 1);
      *(v62 + 32) = v64;
      LOBYTE(v64) = BYTE8(v131);
      *(v62 + 40) = *(v62 + 40) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v131) & 1;
      *(v62 + 40) = *(&v131 + 1) & 0xFFFFFFFFFFFFFFFELL | v64 & 1;
      *(v62 + 48) = v132;
      *(&v131 + 1) = 0;
      *&v132 = &str_67;
      v65 = DWORD2(v132);
      *(v62 + 60) = WORD6(v132);
      *(v62 + 56) = v65;
      *(v62 + 72) = 0;
      *(v62 + 80) = 0;
      *(v62 + 64) = 0;
      *(v62 + 64) = v133;
      *&v133 = 0;
      *(v62 + 72) = *(&v133 + 1);
      *(&v133 + 1) = 0;
      v66 = *(v62 + 80);
      *(v62 + 80) = *v134;
      *v134 = v66;
      v67 = *&v134[8];
      *(v62 + 94) = *&v134[14];
      *(v62 + 88) = v67;
      *(v62 + 104) = v135;
      ++*(v60 + 16);
      ++*(v60 + 24);
      v68 = re::FixedArray<re::MetalTypeInfo>::deinit(&v133);
      if (BYTE8(v131))
      {
        if (BYTE8(v131))
        {
        }
      }

      *(&v131 + 1) = 0;
      *&v132 = &str_67;
      if (*&v129.var0)
      {
        if (*&v129.var0)
        {
        }
      }

      goto LABEL_118;
    }

    goto LABEL_82;
  }

LABEL_147:
  *a9 = 0;
}