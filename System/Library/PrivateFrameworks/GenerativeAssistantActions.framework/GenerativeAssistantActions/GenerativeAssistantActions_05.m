uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3096);
  v6 = *v2;
  *(v4 + 3104) = a1;
  *(v4 + 3112) = v1;

  v7 = *(v3 + 2904);
  v8 = *(v3 + 2896);
  if (v1)
  {
    v9 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v9 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, v7);
}

unint64_t ModelOrchestrator.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      _StringGuts.grow(_:)(39);

      v14 = 0xD000000000000020;
      MEMORY[0x253056FE0](v1, v2);
      v5 = 2112039;
      v6 = 0xE300000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(20);

      v14 = 0x27206C6F6F54;
      MEMORY[0x253056FE0](v1, v2);
      v5 = 0x64656C6961662027;
      v6 = 0xEA0000000000203ALL;
    }

    MEMORY[0x253056FE0](v5, v6);
    v9 = v3;
    v10 = v4;
    goto LABEL_8;
  }

  if (*(v0 + 32) == 2)
  {
    _StringGuts.grow(_:)(31);

    v14 = 0xD000000000000018;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x253056FE0](v8);

    MEMORY[0x253056FE0](2112032, 0xE300000000000000);
    v9 = v2;
    v10 = v3;
LABEL_8:
    MEMORY[0x253056FE0](v9, v10);
    return v14;
  }

  result = 0xD00000000000001DLL;
  if (!(v3 | v2 | v1 | v4))
  {
    return 0xD00000000000002BLL;
  }

  v12 = v3 | v2 | v4;
  if (v1 == 1 && v12 == 0)
  {
    return 0xD000000000000018;
  }

  if ((v1 != 2 || v12) && (v1 != 3 || v12))
  {
    if (v1 != 4 || v12)
    {
      if (v1 != 5 || v12)
      {
        if (v1 != 6 || v12)
        {
          if (v1 != 7 || v12)
          {
            if (v1 != 8 || v12)
            {
              if (v1 != 9 || v12)
              {
                if (v1 != 10 || v12)
                {
                  if (v1 != 11 || v12)
                  {
                    if (v1 != 12 || v12)
                    {
                      if (v1 != 13 || v12)
                      {
                        return 0xD00000000000001BLL;
                      }

                      else
                      {
                        return 0xD000000000000023;
                      }
                    }

                    else
                    {
                      return 0xD000000000000027;
                    }
                  }

                  else
                  {
                    return 0xD00000000000002ALL;
                  }
                }
              }

              else
              {
                return 0xD000000000000015;
              }
            }

            else
            {
              return 0xD00000000000001ALL;
            }
          }

          else
          {
            return 0xD000000000000014;
          }
        }

        else
        {
          return 0xD000000000000037;
        }
      }

      else
      {
        return 0xD00000000000002FLL;
      }
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  return result;
}

unint64_t ModelOrchestrator.Error.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000024FE1FD40;
  v2 = ModelOrchestrator.Error.errorDescription.getter();
  v3 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v26 = v5;
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = *(v0 + 32);
  if (v9 == 2)
  {
    if (v6)
    {
      swift_getErrorValue();
      v25 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1);
      outlined init with take of Any(&v24, v23);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x69796C7265646E75, 0xEF726F727245676ELL, isUniquelyReferenced_nonNull_native);
      v18 = v5;
    }

    else
    {
      v19 = v0[2];

      specialized Dictionary._Variant.removeValue(forKey:)(0x69796C7265646E75, 0xEF726F727245676ELL, &v24);
      outlined destroy of OnScreenContent.Document?(&v24, &_sypSgMd, &_sypSgMR);
      v18 = v26;
    }

    v25 = v3;
    *&v24 = v7;
    *(&v24 + 1) = v8;
    outlined init with take of Any(&v24, v23);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v18;
    v13 = 0xD000000000000010;
    v14 = 0x800000024FE1FD40;
    goto LABEL_10;
  }

  v10 = v0[3];
  if (v9 == 1)
  {
    v25 = v3;
    *&v24 = v6;
    *(&v24 + 1) = v7;
    outlined init with take of Any(&v24, v23);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x746E656D75636F64, 0xEB000000004C5255, v15);
    v25 = v3;
    *&v24 = v8;
    *(&v24 + 1) = v10;
    outlined init with take of Any(&v24, v23);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v5;
    v13 = 0xD000000000000013;
    v14 = 0x800000024FE33790;
    goto LABEL_10;
  }

  if (!*(v0 + 32))
  {
    v25 = v3;
    *&v24 = v6;
    *(&v24 + 1) = v7;
    outlined init with take of Any(&v24, v23);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x656D614E6C6F6F74, 0xE800000000000000, v11);
    v25 = v3;
    *&v24 = v8;
    *(&v24 + 1) = v10;
    outlined init with take of Any(&v24, v23);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v5;
    v13 = 0x637365446C6F6F74;
    v14 = 0xEF6E6F6974706972;
LABEL_10:
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v13, v14, v12);
    return v22;
  }

  return v5;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ModelOrchestrator.Error()
{
  v0 = static ModelOrchestrator.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance ModelOrchestrator.Error()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      return 12;
    }

    else
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | *v0 | v3)
      {
        v5 = v4 | v3;
        if (v2 == 1 && v5 == 0)
        {
          return 1;
        }

        else if (v2 != 2 || v5)
        {
          if (v2 != 3 || v5)
          {
            if (v2 != 4 || v5)
            {
              if (v2 != 5 || v5)
              {
                if (v2 != 6 || v5)
                {
                  if (v2 != 7 || v5)
                  {
                    if (v2 != 8 || v5)
                    {
                      if (v2 != 9 || v5)
                      {
                        if (v2 != 10 || v5)
                        {
                          if (v2 != 11 || v5)
                          {
                            if (v2 != 12 || v5)
                            {
                              if (v5)
                              {
                                v7 = 0;
                              }

                              else
                              {
                                v7 = v2 == 13;
                              }

                              if (v7)
                              {
                                return 16;
                              }

                              else
                              {
                                return 17;
                              }
                            }

                            else
                            {
                              return 15;
                            }
                          }

                          else
                          {
                            return 14;
                          }
                        }

                        else
                        {
                          return 13;
                        }
                      }

                      else
                      {
                        return 11;
                      }
                    }

                    else
                    {
                      return 10;
                    }
                  }

                  else
                  {
                    return 7;
                  }
                }

                else
                {
                  return 6;
                }
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else if (*(v0 + 32))
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance ModelOrchestrator.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ModelOrchestrator.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ModelOrchestrator.prepareInlineImage(_:_:)(uint64_t a1, int a2)
{
  *(v2 + 48) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](ModelOrchestrator.prepareInlineImage(_:_:), 0, 0);
}

uint64_t ModelOrchestrator.prepareInlineImage(_:_:)()
{
  v25 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v24);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000024FE34810, v24);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Image will be sent inline.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  MetricsUtils.emitSignpostEvent(_:)("Usecase.InlineImageQnA", 22, 2);
  v7 = *v6;
  v8 = IntelligenceFile.getImage()();
  if (v9)
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 3;
    swift_willThrow();
LABEL_8:
    v10 = *(v0 + 8);

    return v10();
  }

  v12 = v8;
  v13 = *(v0 + 40);
  v14 = *(v13 + 32);
  v15 = *(v13 + 28) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 48);
  v17 = static SELFUtils.shared;
  if (v14)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v15;
  }

  LOBYTE(v24[0]) = 0;
  swift_beginAccess();
  v17[4] = v16;
  *(v17 + 20) = 0;
  *(v17 + 3) = v18;
  *(v17 + 32) = 0;
  v17[9] = 1;
  *(v17 + 40) = 0;
  v17[11] = 1;
  *(v17 + 48) = 0;
  v17[13] = 1;
  *(v17 + 56) = 0;
  *(v17 + 8) = v18;
  *(v17 + 72) = 0;
  *(v17 + 73) = v24[0];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, static Logger.selfSchemaLogger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24FD67000, v19, v20, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_INLINE_IMAGE", v21, 2u);
    MEMORY[0x253057F40](v21, -1, -1);
  }

  v22 = *(v0 + 8);

  return v22(v12);
}

uint64_t ModelOrchestrator.registerImage(_:_:_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 376) = a2;
  *(v4 + 312) = a1;
  *(v4 + 320) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v7 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v7;
  *(v4 + 144) = *(a4 + 128);
  v8 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v8;
  v9 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v9;
  v10 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;

  return MEMORY[0x2822009F8](ModelOrchestrator.registerImage(_:_:_:_:), 0, 0);
}

uint64_t ModelOrchestrator.registerImage(_:_:_:_:)()
{
  v30 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 32);
  v3 = *(v1 + 28) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 376);
  v5 = static SELFUtils.shared;
  *(v0 + 336) = static SELFUtils.shared;
  if (v2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  *(v0 + 380) = 0;
  swift_beginAccess();
  v5[4] = v4;
  *(v5 + 20) = 0;
  *(v5 + 3) = v6;
  *(v5 + 32) = 0;
  v5[9] = 2;
  *(v5 + 40) = 0;
  v5[11] = 1;
  *(v5 + 48) = 0;
  v5[13] = v4;
  *(v5 + 56) = 0;
  *(v5 + 8) = v6;
  *(v5 + 72) = 0;
  *(v5 + 73) = *(v0 + 380);
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.selfSchemaLogger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24FD67000, v8, v9, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_REGISTER_IMAGE", v10, 2u);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, static Logger.modelInteraction);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE347F0, &v29);
    _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Image will be uploaded.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v14, -1, -1);
    MEMORY[0x253057F40](v13, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 320);
  *(v0 + 344) = static MetricsUtils.shared;
  MetricsUtils.emitSignpostEvent(_:)("Usecase.SessionImageQnA", 23, 2);
  MetricsUtils.recordSignpostBegin(for:)("RegisterImageProcess.Time", 25, 2);
  SELFUtils.recordRegisterMediaStarted()();
  v16 = swift_allocObject();
  *(v0 + 352) = v16;
  v17 = *(v0 + 128);
  *(v16 + 112) = *(v0 + 112);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(v0 + 144);
  v18 = *(v0 + 64);
  *(v16 + 48) = *(v0 + 48);
  *(v16 + 64) = v18;
  v19 = *(v0 + 96);
  *(v16 + 80) = *(v0 + 80);
  *(v16 + 96) = v19;
  v20 = *(v0 + 32);
  *(v16 + 16) = *(v0 + 16);
  *(v16 + 32) = v20;
  v21 = *(v15 + 24);
  v22 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v21);
  v23 = *(v22 + 24);
  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = ModelOrchestrator.registerImage(_:_:_:_:);
  v26 = *(v0 + 312);

  return v28(v26, partial apply for implicit closure #5 in implicit closure #4 in ModelOrchestrator.registerImage(_:_:_:_:), v16, v21, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = ModelOrchestrator.registerImage(_:_:_:_:);
  }

  else
  {
    v5 = *(v2 + 352);

    v4 = ModelOrchestrator.registerImage(_:_:_:_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v4 = type metadata accessor for OSSignpostID();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("RegisterImageProcess.Time", 25, 2, v3);
  outlined destroy of OnScreenContent.Document?(v3, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordRegisterMediaEnded()();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[44];
  v2 = v0[41];

  v3 = v0[1];
  v4 = v0[46];

  return v3();
}

uint64_t closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v3, v2);
}

uint64_t closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v2 = v0[2];
  v1 = v0[3];

  static ModelResponse.emptyModelResponse()(v2);
  v3 = v0[1];

  return v3();
}

uint64_t ModelOrchestrator.registerDocument(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a1;
  *(v3 + 296) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v6 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(a3 + 128);
  v7 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v7;
  v8 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v8;
  v9 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v9;

  return MEMORY[0x2822009F8](ModelOrchestrator.registerDocument(_:_:_:), 0, 0);
}

uint64_t ModelOrchestrator.registerDocument(_:_:_:)()
{
  v21 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v20);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000024FE347D0, &v20);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Uploading file.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 312) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("RegisterDocument.Time", 21, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 288);
  *(v0 + 320) = static SELFUtils.shared;
  SELFUtils.recordRegisterMediaStarted()();
  v7 = swift_allocObject();
  *(v0 + 328) = v7;
  v8 = *(v0 + 128);
  *(v7 + 112) = *(v0 + 112);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(v0 + 144);
  v9 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v9;
  v10 = *(v0 + 96);
  *(v7 + 80) = *(v0 + 80);
  *(v7 + 96) = v10;
  v11 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v11;
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 16);
  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = ModelOrchestrator.registerDocument(_:_:_:);
  v17 = *(v0 + 296);

  return v19(v17, partial apply for implicit closure #4 in implicit closure #3 in ModelOrchestrator.registerDocument(_:_:_:), v7, v12, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = ModelOrchestrator.registerDocument(_:_:_:);
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = ModelOrchestrator.registerDocument(_:_:_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = type metadata accessor for OSSignpostID();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("RegisterDocument.Time", 21, 2, v3);
  outlined destroy of OnScreenContent.Document?(v3, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordRegisterMediaEnded()();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[41];
  v2 = v0[38];

  v3 = v0[1];
  v4 = v0[43];

  return v3();
}

uint64_t closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v9 = *(*(type metadata accessor for ModelResponse() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v11;
  v8[32] = v10;

  return MEMORY[0x2822009F8](closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11, v10);
}

uint64_t closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v7 = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[22];
  v4 = v0[23];

  outlined init with take of GeneratedResponse(v2, v3, type metadata accessor for ModelResponse);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v4 + 16));

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[23];

  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v3 + 16));

  v4 = v0[1];
  v5 = v0[34];

  return v4();
}

uint64_t ModelOrchestrator.shouldUploadImage(image:)(uint64_t a1)
{
  if (*(a1 + 32) & 1) != 0 || (*(a1 + 24))
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.modelInteraction);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Missing file size or image size, defaulting to upload image.";
    goto LABEL_7;
  }

  v10 = *(a1 + 28);
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (one-time initialization token for _enableImageInline != -1)
  {
    swift_once();
  }

  if (byte_27F39FAF0)
  {
    v1 = unk_27F39FAE0;
    v13 = static Overrides._enableImageInline;

    (v1)(&v29, v13);

    LOBYTE(v1) = v29;
    if (v29 != 2)
    {
      if (one-time initialization token for modelInteraction == -1)
      {
LABEL_40:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.modelInteraction);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v29 = v25;
          *v24 = 136315650;
          *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
          *(v24 + 12) = 2080;
          *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
          *(v24 + 22) = 1024;
          *(v24 + 24) = v1 & 1;
          _os_log_impl(&dword_24FD67000, v22, v23, "%s.%s Override enableImageInline set to %{BOOL}d.", v24, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v25, -1, -1);
          MEMORY[0x253057F40](v24, -1, -1);
        }

        v8 = v1 ^ 1;
        return v8 & 1;
      }

LABEL_57:
      swift_once();
      goto LABEL_40;
    }
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v14 = v12;
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.modelInteraction);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v29 = v1;
    *v18 = 136316162;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    *(v18 + 22) = 2048;
    v19 = *&v12 & 0x7FF0000000000000;
    if (v19 == 0x7FF0000000000000)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v14 <= -9.22337204e18)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v14 >= 9.22337204e18)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *(v18 + 24) = v14;
    *(v18 + 32) = 2048;
    if ((~*&v11 & 0x7FF0000000000000) == 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v11 <= -9.22337204e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v11 >= 9.22337204e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    *(v18 + 34) = v11;
    *(v18 + 42) = 2048;
    *(v18 + 44) = 2048;
    _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s Confirming image size (width=%ld height=%ld) is smaller than maxPixelsLong=%ld...", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v1, -1, -1);
    MEMORY[0x253057F40](v18, -1, -1);
  }

  else
  {

    v19 = *&v12 & 0x7FF0000000000000;
  }

  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v19 == 0x7FF0000000000000 || (*&v11 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_48;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v14;
  if (v11 > v14)
  {
    v20 = v11;
  }

  if (v20 > 2048)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Image size is bigger than ImageUtilsDefault.maxPixelsLong after loaded. This is unexpected, defaulting to upload image.";
LABEL_7:
    _os_log_impl(&dword_24FD67000, v3, v4, v7, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
LABEL_8:

    v8 = 1;
    return v8 & 1;
  }

  v3 = Logger.logObject.getter();
  if (v10 > 1.0)
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Image is still too large even as JPEG. Uploading image.";
    goto LABEL_7;
  }

  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    _os_log_impl(&dword_24FD67000, v3, v26, "%s.%s Image is within inline size, using sending image inline rather than upload.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v28, -1, -1);
    MEMORY[0x253057F40](v27, -1, -1);
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v9 = *(*(type metadata accessor for ModelResponse() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v11;
  v8[32] = v10;

  return MEMORY[0x2822009F8](closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11, v10);
}

uint64_t closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v7 = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = v30;
  v8[37] = v31;
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a1;
  v8[31] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v10 = type metadata accessor for ModelResponse();
  v8[39] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[40] = swift_task_alloc();
  v12 = type metadata accessor for PromptCompletion();
  v8[41] = v12;
  v13 = *(v12 - 8);
  v8[42] = v13;
  v14 = *(v13 + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v17 = type metadata accessor for StringResponseSanitizer();
  v8[47] = v17;
  v18 = *(v17 - 8);
  v8[48] = v18;
  v19 = *(v18 + 64) + 15;
  v8[49] = swift_task_alloc();
  v20 = type metadata accessor for StringRenderedPromptSanitizer();
  v8[50] = v20;
  v21 = *(v20 - 8);
  v8[51] = v21;
  v22 = *(v21 + 64) + 15;
  v8[52] = swift_task_alloc();
  v23 = type metadata accessor for SamplingParameters();
  v8[53] = v23;
  v24 = *(v23 - 8);
  v8[54] = v24;
  v25 = *(v24 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = type metadata accessor for MainActor();
  v8[57] = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[58] = v27;
  v8[59] = v26;

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v27, v26);
}

uint64_t closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v21 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v20);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v20);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 296);
  v8 = *(v0 + 256);
  swift_beginAccess();
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v8 + 16, v0 + 152);
  v9 = __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  *(v0 + 584) = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  v10 = swift_allocObject();
  *(v0 + 480) = v10;
  *(v10 + 16) = *v7;
  v11 = *(v7 + 64);
  v13 = *(v7 + 16);
  v12 = *(v7 + 32);
  *(v10 + 64) = *(v7 + 48);
  *(v10 + 80) = v11;
  *(v10 + 32) = v13;
  *(v10 + 48) = v12;
  v15 = *(v7 + 96);
  v14 = *(v7 + 112);
  v16 = *(v7 + 80);
  *(v10 + 144) = *(v7 + 128);
  *(v10 + 112) = v15;
  *(v10 + 128) = v14;
  *(v10 + 96) = v16;
  *(v0 + 488) = *v9;
  outlined init with copy of IntentCallbackManager(v7, v0 + 16);
  *(v0 + 496) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 504) = v18;
  *(v0 + 512) = v17;

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v18, v17);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 520) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 584);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v40 = *(v0 + 392);
  v43 = *(v0 + 368);
  v7 = *(v0 + 288);
  v8 = static SELFUtils.shared;
  *(v0 + 528) = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v42 = *(v1 + 16);
  (*(v3 + 16))(v4, v1 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v5);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v8 + v9, v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v43, 1, v10);
  v13 = *(v0 + 368);
  if (v12 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 368), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v14 = *(v0 + 368);
    UUID.uuidString.getter();
    (*(v11 + 8))(v13, v10);
  }

  v44 = *(v0 + 488);
  v15 = *(v0 + 440);
  v39 = *(v0 + 480);
  v41 = *(v0 + 448);
  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v36 = *(v0 + 400);
  v33 = *(v0 + 392);
  v34 = *(v0 + 416);
  v18 = *(v0 + 384);
  v35 = *(v0 + 376);
  v37 = *(v0 + 424);
  v38 = *(v0 + 360);
  v19 = *(v0 + 312);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 264);
  v23 = swift_task_alloc();
  v23[2] = v20;
  v23[3] = v22;
  v23[4] = v21;
  v23[5] = v44;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  *(v0 + 536) = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v18 + 8))(v33, v35);
  (*(v17 + 8))(v34, v36);
  (*(v16 + 8))(v15, v37);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v44;
  v26[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v26[6] = v39;
  *(v0 + 544) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v26);
  v28 = *(MEMORY[0x277D4B010] + 4);
  v29 = swift_task_alloc();
  *(v0 + 552) = v29;
  *v29 = v0;
  v29[1] = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v30 = *(v0 + 344);
  v31 = *(v0 + 320);

  return MEMORY[0x2821AB608](v31, v30);
}

{
  v2 = *v1;
  v3 = (*v1)[69];
  v8 = *v1;
  (*v1)[70] = v0;

  if (v0)
  {
    v4 = v2[63];
    v5 = v2[64];
    v6 = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v2[40], type metadata accessor for ModelResponse);
    v4 = v2[63];
    v5 = v2[64];
    v6 = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  (*(v0[42] + 32))(v0[44], v0[43], v0[41]);
  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v2 = v0[61];
  v3 = v0[44];
  v4 = v0[30];

  return DefaultModelSession.getModelResponse(from:)(v4, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 568);
  v6 = *v0;

  v3 = *(v1 + 512);
  v4 = *(v1 + 504);

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v4, v3);
}

{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[60];
  v7 = v0[44];
  v8 = v0[41];
  v9 = v0[42];
  v10 = v0[38];

  v11 = type metadata accessor for OSSignpostID();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v10);
  outlined destroy of OnScreenContent.Document?(v10, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordGenerativeRequestEnded()();
  (*(v9 + 8))(v7, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v1, MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84950]);

  v13 = v0[58];
  v14 = v0[59];

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v13, v14);
}

{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];
  v13 = v0[38];
  v10 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v10 + 16));

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[60];
  v9 = v0[38];

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v2, MEMORY[0x277D84F78] + 8, v10, MEMORY[0x277D84950]);

  v11 = type metadata accessor for OSSignpostID();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v9);
  outlined destroy of OnScreenContent.Document?(v9, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  v0[72] = DefaultModelSession.customizeError(_:)(v1);
  swift_willThrow();

  v12 = v0[58];
  v13 = v0[59];

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v12, v13);
}

{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];
  v14 = v0[38];
  v10 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v10 + 16));

  v11 = v0[1];
  v12 = v0[72];

  return v11();
}

uint64_t closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v9 = *(*(type metadata accessor for ModelResponse() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v11;
  v8[32] = v10;

  return MEMORY[0x2822009F8](closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11, v10);
}

uint64_t closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

uint64_t closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v9 = *(*(type metadata accessor for ModelResponse() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v11;
  v8[32] = v10;

  return MEMORY[0x2822009F8](closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11, v10);
}

uint64_t closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

uint64_t $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(_BYTE *a1)
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.modelInteraction);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v8);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Generative task complete.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  result = swift_beginAccess();
  *a1 = 1;
  return result;
}

uint64_t specialized ModelOrchestrator.convertError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = type metadata accessor for GenerativeError.UnderlyingError();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.DocumentError.ErrorContext();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = type metadata accessor for GenerativeError.ToolError.ErrorContext();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v14 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = type metadata accessor for GenerativeError.UnknownUnderlyingError();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v20 = type metadata accessor for GenerativeError.AuthenticationError();
  v3[32] = v20;
  v21 = *(v20 - 8);
  v3[33] = v21;
  v22 = *(v21 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v23 = type metadata accessor for GenerativeError.InvalidatedError();
  v3[36] = v23;
  v24 = *(v23 - 8);
  v3[37] = v24;
  v25 = *(v24 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v26 = type metadata accessor for GenerativeError.DocumentError();
  v3[40] = v26;
  v27 = *(v26 - 8);
  v3[41] = v27;
  v28 = *(v27 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v29 = type metadata accessor for GenerativeError.ToolError();
  v3[44] = v29;
  v30 = *(v29 - 8);
  v3[45] = v30;
  v31 = *(v30 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v32 = type metadata accessor for GenerativeError.CanceledError();
  v3[48] = v32;
  v33 = *(v32 - 8);
  v3[49] = v33;
  v34 = *(v33 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v35 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  v3[52] = v35;
  v36 = *(v35 - 8);
  v3[53] = v36;
  v37 = *(v36 + 64) + 15;
  v3[54] = swift_task_alloc();
  v38 = type metadata accessor for GenerativeError.PromptError();
  v3[55] = v38;
  v39 = *(v38 - 8);
  v3[56] = v39;
  v40 = *(v39 + 64) + 15;
  v3[57] = swift_task_alloc();
  v41 = type metadata accessor for GenerativeError.NetworkingError();
  v3[58] = v41;
  v42 = *(v41 - 8);
  v3[59] = v42;
  v43 = *(v42 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v44 = type metadata accessor for GenerativeError.RuntimeError();
  v3[62] = v44;
  v45 = *(v44 - 8);
  v3[63] = v45;
  v46 = *(v45 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v47 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v3[66] = v47;
  v48 = *(v47 - 8);
  v3[67] = v48;
  v49 = *(v48 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v50 = type metadata accessor for GenerativeError.AvailabilityError();
  v3[70] = v50;
  v51 = *(v50 - 8);
  v3[71] = v51;
  v52 = *(v51 + 64) + 15;
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v53 = type metadata accessor for GenerativeError.ErrorType();
  v3[75] = v53;
  v54 = *(v53 - 8);
  v3[76] = v54;
  v55 = *(v54 + 64) + 15;
  v3[77] = swift_task_alloc();
  v56 = type metadata accessor for GenerativeError();
  v3[78] = v56;
  v57 = *(v56 - 8);
  v3[79] = v57;
  v58 = *(v57 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[89] = static MainActor.shared.getter();
  v60 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[90] = v60;
  v3[91] = v59;

  return MEMORY[0x2822009F8](specialized ModelOrchestrator.convertError<A>(_:), v60, v59);
}

uint64_t specialized ModelOrchestrator.convertError<A>(_:)()
{
  v1 = **(v0 + 48);
  *(v0 + 736) = v1;
  v2 = *(MEMORY[0x277D857C8] + 4);

  v3 = swift_task_alloc();
  *(v0 + 744) = v3;
  v4 = type metadata accessor for ModelResponse();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 752) = v5;
  *v3 = v0;
  v3[1] = specialized ModelOrchestrator.convertError<A>(_:);
  v6 = *(v0 + 40);
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6, v1, v4, v5, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(*v1 + 760) = v0;

  v5 = *(v2 + 728);
  v6 = *(v2 + 720);
  if (v0)
  {
    v7 = specialized ModelOrchestrator.convertError<A>(_:);
  }

  else
  {
    v7 = specialized ModelOrchestrator.convertError<A>(_:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[81];
  v13 = v0[80];
  v14 = v0[77];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[65];
  v21 = v0[64];
  v22 = v0[61];
  v23 = v0[60];
  v24 = v0[57];
  v25 = v0[54];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[43];
  v31 = v0[42];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[35];
  v35 = v0[34];
  v36 = v0[31];
  v37 = v0[30];
  v38 = v0[29];
  v39 = v0[28];
  v40 = v0[27];
  v41 = v0[24];
  v42 = v0[21];
  v43 = v0[20];
  v44 = v0[17];
  v45 = v0[16];
  v46 = v0[15];
  v47 = v0[12];
  v48 = v0[11];
  v49 = v0[10];
  v50 = v0[9];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 712);

  return MEMORY[0x2822009F8](specialized ModelOrchestrator.convertError<A>(_:), 0, 0);
}

{
  v611 = v0;
  v3 = v0;
  v4 = v0[95];
  v0[2] = v4;
  v5 = (v0 + 2);
  v6 = v0[94];
  v7 = v0[88];
  v8 = v5[76];
  v9 = v4;
  if (!swift_dynamicCast())
  {

    if (one-time initialization token for modelInteraction == -1)
    {
LABEL_13:
      v41 = v3[95];
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.modelInteraction);
      v43 = v41;
      v44 = v41;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v3[95];
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v610[0] = v51;
        *v49 = 136315650;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v49 + 12) = 2080;
        *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v49 + 22) = 2112;
        v52 = v48;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 24) = v53;
        *v50 = v53;

        _os_log_impl(&dword_24FD67000, v45, v46, "%s.%s Received an unknown error %@", v49, 0x20u);
        outlined destroy of OnScreenContent.Document?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v50, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v51, -1, -1);
        MEMORY[0x253057F40](v49, -1, -1);
      }

      else
      {
      }

      v54 = v3[95];
      swift_willThrow();
      v591 = v3[95];
      goto LABEL_76;
    }

LABEL_139:
    swift_once();
    goto LABEL_13;
  }

  (*(v3[79] + 32))(v3[87], v3[88], v3[78]);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = v3[87];
  v11 = MEMORY[0x253056790]();
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_139;
  }

  if (v11 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_141;
  }

  v12 = v3[87];
  v13 = v3[77];
  v14 = v3[76];
  v15 = v3[75];
  SELFUtils.recordRequestFailed(code:domain:)(v11, 2);
  GenerativeError.type.getter();
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 != *MEMORY[0x277D0DB78])
  {
    if (v16 == *MEMORY[0x277D0DB40])
    {
      v55 = v3[77];
      v56 = v3[61];
      v57 = v3[58];
      v58 = v3[59];
      (*(v3[76] + 96))(v55, v3[75]);
      (*(v58 + 32))(v56, v55, v57);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v60 = v3[60];
      v59 = v3[61];
      v61 = v3[58];
      v62 = v3[59];
      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Logger.modelInteraction);
      (*(v62 + 16))(v60, v59, v61);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v3[95];
      v69 = v3[59];
      v68 = v3[60];
      v70 = v3[58];
      if (v66)
      {
        v71 = swift_slowAlloc();
        v592 = swift_slowAlloc();
        v610[0] = v592;
        *v71 = 136315650;
        *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v71 + 12) = 2080;
        *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v71 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.NetworkingError and conformance GenerativeError.NetworkingError, MEMORY[0x277D0D9B0]);
        v72 = Encodable.asJSONString.getter();
        v74 = v3;
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v610);

        *(v71 + 24) = v75;
        v3 = v74;

        v76 = *(v69 + 8);
        v76(v68, v70);
        _os_log_impl(&dword_24FD67000, v64, v65, "%s.%s Received a networking error %s", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v592, -1, -1);
        MEMORY[0x253057F40](v71, -1, -1);
      }

      else
      {

        v76 = *(v69 + 8);
        v76(v68, v70);
      }

      v151 = v3[87];
      v152 = v3[79];
      v153 = v3[78];
      v154 = v3[61];
      v155 = v3[58];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v157 = 4;
LABEL_44:
      *v156 = v157;
      *(v156 + 8) = 0;
      *(v156 + 16) = 0;
      *(v156 + 24) = 0;
      *(v156 + 32) = 3;
      swift_willThrow();
      v76(v154, v155);
LABEL_45:
      (*(v152 + 8))(v151, v153);
      goto LABEL_74;
    }

    if (v16 == *MEMORY[0x277D0DB50])
    {
      v93 = v3[77];
      v94 = v3[74];
      v95 = v3[71];
      v96 = v3[70];
      v97 = v3[69];
      v98 = v3[67];
      v99 = v3[66];
      (*(v3[76] + 96))(v93, v3[75]);
      (*(v95 + 32))(v94, v93, v96);
      GenerativeError.AvailabilityError.type.getter();
      LODWORD(v93) = (*(v98 + 88))(v97, v99);
      LODWORD(v94) = *MEMORY[0x277D0D9D8];
      v100 = *(v98 + 8);
      v100(v97, v99);
      if (v93 == v94)
      {
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v101 = v3[74];
        v102 = v3[73];
        v103 = v3[71];
        v104 = v3[70];
        v105 = type metadata accessor for Logger();
        __swift_project_value_buffer(v105, static Logger.modelInteraction);
        (*(v103 + 16))(v102, v101, v104);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();
        v108 = os_log_type_enabled(v106, v107);
        v109 = v3[95];
        v110 = v3[73];
        v111 = v3[71];
        v112 = v3[70];
        if (v108)
        {
          v113 = v3;
          v114 = v3[68];
          v574 = v107;
          v115 = v113[66];
          v582 = v109;
          v116 = swift_slowAlloc();
          v594 = swift_slowAlloc();
          v610[0] = v594;
          *v116 = 136315650;
          *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
          v566 = v112;
          *(v116 + 12) = 2080;
          *(v116 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
          *(v116 + 22) = 2080;
          GenerativeError.AvailabilityError.type.getter();
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AvailabilityError.ErrorType and conformance GenerativeError.AvailabilityError.ErrorType, MEMORY[0x277D0D9E8]);
          v117 = Encodable.asJSONString.getter();
          v118 = v100;
          v120 = v119;
          v121 = v114;
          v3 = v113;
          v118(v121, v115);
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, v610);

          *(v116 + 24) = v122;

          v123 = *(v111 + 8);
          v123(v110, v566);
          _os_log_impl(&dword_24FD67000, v106, v574, "%s.%s Received an availability error: rate limited %s", v116, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v594, -1, -1);
          MEMORY[0x253057F40](v116, -1, -1);
        }

        else
        {

          v123 = *(v111 + 8);
          v123(v110, v112);
        }

        v247 = v3[87];
        v248 = v3[79];
        v249 = v3[78];
        v250 = v3[74];
        v251 = v3[70];
        v252 = type metadata accessor for GATError();
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
        swift_allocError();
        (*(*(v252 - 8) + 104))(v253, *MEMORY[0x277D0D708], v252);
      }

      else
      {
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v185 = v3[74];
        v186 = v3[72];
        v187 = v3[71];
        v188 = v3[70];
        v189 = type metadata accessor for Logger();
        __swift_project_value_buffer(v189, static Logger.modelInteraction);
        (*(v187 + 16))(v186, v185, v188);
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        v192 = os_log_type_enabled(v190, v191);
        v193 = v3[95];
        v194 = v3[72];
        v195 = v3[71];
        v196 = v3[70];
        if (v192)
        {
          v197 = v3;
          v198 = v3[68];
          v576 = v191;
          v199 = v197[66];
          v583 = v193;
          v200 = swift_slowAlloc();
          v597 = swift_slowAlloc();
          v610[0] = v597;
          *v200 = 136315650;
          *(v200 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
          v567 = v196;
          *(v200 + 12) = 2080;
          *(v200 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
          *(v200 + 22) = 2080;
          GenerativeError.AvailabilityError.type.getter();
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AvailabilityError.ErrorType and conformance GenerativeError.AvailabilityError.ErrorType, MEMORY[0x277D0D9E8]);
          v201 = Encodable.asJSONString.getter();
          v202 = v100;
          v204 = v203;
          v205 = v198;
          v3 = v197;
          v202(v205, v199);
          v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v204, v610);

          *(v200 + 24) = v206;

          v123 = *(v195 + 8);
          v123(v194, v567);
          _os_log_impl(&dword_24FD67000, v190, v576, "%s.%s Received an availability error %s", v200, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v597, -1, -1);
          MEMORY[0x253057F40](v200, -1, -1);
        }

        else
        {

          v123 = *(v195 + 8);
          v123(v194, v196);
        }

        v247 = v3[87];
        v248 = v3[79];
        v249 = v3[78];
        v250 = v3[74];
        v251 = v3[70];
        lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
        swift_allocError();
        *v254 = 2;
        *(v254 + 8) = 0;
        *(v254 + 16) = 0;
        *(v254 + 24) = 0;
        *(v254 + 32) = 3;
      }

      swift_willThrow();
      v123(v250, v251);
      (*(v248 + 8))(v247, v249);
      goto LABEL_74;
    }

    if (v16 == *MEMORY[0x277D0DBA0])
    {
      v158 = v3[77];
      v159 = v3[51];
      v160 = v3[48];
      v161 = v3[49];
      (*(v3[76] + 96))(v158, v3[75]);
      (*(v161 + 32))(v159, v158, v160);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v163 = v3[50];
      v162 = v3[51];
      v164 = v3[48];
      v165 = v3[49];
      v166 = type metadata accessor for Logger();
      __swift_project_value_buffer(v166, static Logger.modelInteraction);
      (*(v165 + 16))(v163, v162, v164);
      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.error.getter();
      v169 = os_log_type_enabled(v167, v168);
      v170 = v3[95];
      v172 = v3[49];
      v171 = v3[50];
      v173 = v3[48];
      if (v169)
      {
        v174 = swift_slowAlloc();
        v596 = swift_slowAlloc();
        v610[0] = v596;
        *v174 = 136315650;
        *(v174 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v174 + 12) = 2080;
        *(v174 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v174 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.CanceledError and conformance GenerativeError.CanceledError, MEMORY[0x277D0DB20]);
        v175 = Encodable.asJSONString.getter();
        v177 = v3;
        v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v176, v610);

        *(v174 + 24) = v178;
        v3 = v177;

        v76 = *(v172 + 8);
        v76(v171, v173);
        _os_log_impl(&dword_24FD67000, v167, v168, "%s.%s Received a cancel error %s", v174, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v596, -1, -1);
        MEMORY[0x253057F40](v174, -1, -1);
      }

      else
      {

        v76 = *(v172 + 8);
        v76(v171, v173);
      }

      v151 = v3[87];
      v152 = v3[79];
      v153 = v3[78];
      v154 = v3[51];
      v155 = v3[48];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v157 = 7;
      goto LABEL_44;
    }

    if (v16 == *MEMORY[0x277D0DB90])
    {
      v207 = v3[77];
      v208 = v3[65];
      v209 = v3[62];
      v210 = v3[63];
      (*(v3[76] + 96))(v207, v3[75]);
      (*(v210 + 32))(v208, v207, v209);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v211 = v3[65];
      v213 = v3[63];
      v212 = v3[64];
      v214 = v3[62];
      v215 = type metadata accessor for Logger();
      __swift_project_value_buffer(v215, static Logger.modelInteraction);
      (*(v213 + 16))(v212, v211, v214);
      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.error.getter();
      v218 = os_log_type_enabled(v216, v217);
      v220 = v3[63];
      v219 = v3[64];
      v221 = v3[62];
      if (v218)
      {
        v223 = v3[23];
        v222 = v3[24];
        v577 = v217;
        v224 = v3[22];
        v584 = v3[95];
        v225 = swift_slowAlloc();
        v598 = swift_slowAlloc();
        v610[0] = v598;
        *v225 = 136315650;
        *(v225 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        v568 = v221;
        *(v225 + 12) = 2080;
        *(v225 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v225 + 22) = 2080;
        GenerativeError.RuntimeError.type.getter();
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.RuntimeError.ErrorType and conformance GenerativeError.RuntimeError.ErrorType, MEMORY[0x277D0DB00]);
        v226 = Encodable.asJSONString.getter();
        v228 = v227;
        (*(v223 + 8))(v222, v224);
        v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v228, v610);

        *(v225 + 24) = v229;

        v230 = *(v220 + 8);
        v230(v219, v568);
        _os_log_impl(&dword_24FD67000, v216, v577, "%s.%s Received a runtime error %s", v225, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v598, -1, -1);
        MEMORY[0x253057F40](v225, -1, -1);
      }

      else
      {

        v230 = *(v220 + 8);
        v230(v219, v221);
      }

      v306 = v3[87];
      v307 = v3[79];
      v308 = v3[78];
      v309 = v3[65];
      v310 = v3[62];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v311 = 3;
      *(v311 + 8) = 0;
      *(v311 + 16) = 0;
      *(v311 + 24) = 0;
      *(v311 + 32) = 3;
      swift_willThrow();
      v230(v309, v310);
      (*(v307 + 8))(v306, v308);
      goto LABEL_74;
    }

    if (v16 == *MEMORY[0x277D0DB70])
    {
      v269 = v3[77];
      v270 = v3[47];
      v271 = v3[44];
      v272 = v3[45];
      (*(v3[76] + 96))(v269, v3[75]);
      (*(v272 + 32))(v270, v269, v271);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v274 = v3[46];
      v273 = v3[47];
      v275 = v3[44];
      v276 = v3[45];
      v277 = type metadata accessor for Logger();
      __swift_project_value_buffer(v277, static Logger.modelInteraction);
      (*(v276 + 16))(v274, v273, v275);
      v278 = Logger.logObject.getter();
      v279 = static os_log_type_t.error.getter();
      v280 = os_log_type_enabled(v278, v279);
      v281 = v3[95];
      v283 = v3[45];
      v282 = v3[46];
      v284 = v3[44];
      if (v280)
      {
        v285 = swift_slowAlloc();
        v600 = swift_slowAlloc();
        v610[0] = v600;
        *v285 = 136315650;
        *(v285 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v285 + 12) = 2080;
        *(v285 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v285 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.ToolError and conformance GenerativeError.ToolError, MEMORY[0x277D0DA50]);
        v286 = Encodable.asJSONString.getter();
        v288 = v3;
        v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v286, v287, v610);

        *(v285 + 24) = v289;
        v3 = v288;

        v586 = *(v283 + 8);
        v586(v282, v284);
        _os_log_impl(&dword_24FD67000, v278, v279, "%s.%s Received a tool error %s", v285, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v600, -1, -1);
        MEMORY[0x253057F40](v285, -1, -1);
      }

      else
      {

        v586 = *(v283 + 8);
        v586(v282, v284);
      }

      v525 = v3;
      v349 = v3[79];
      v562 = v3[78];
      v570 = v3[87];
      v350 = v3[47];
      v558 = v3[44];
      v352 = v3[20];
      v351 = v3[21];
      v354 = v3[18];
      v353 = v3[19];
      GenerativeError.ToolError.context.getter();
      v355 = GenerativeError.ToolError.ErrorContext.name.getter();
      v357 = v356;
      v358 = *(v353 + 8);
      v358(v351, v354);
      GenerativeError.ToolError.context.getter();
      v359 = GenerativeError.ToolError.ErrorContext.description.getter();
      v361 = v360;
      v358(v352, v354);
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v362 = v355;
      *(v362 + 8) = v357;
      v3 = v525;
      *(v362 + 16) = v359;
      *(v362 + 24) = v361;
      *(v362 + 32) = 0;
      swift_willThrow();
      v586(v350, v558);
      (*(v349 + 8))(v570, v562);
      goto LABEL_74;
    }

    if (v16 == *MEMORY[0x277D0DBA8])
    {
      v312 = v3[77];
      v313 = v3[43];
      v314 = v3[40];
      v315 = v3[41];
      (*(v3[76] + 96))(v312, v3[75]);
      (*(v315 + 32))(v313, v312, v314);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v317 = v3[42];
      v316 = v3[43];
      v318 = v3[40];
      v319 = v3[41];
      v320 = type metadata accessor for Logger();
      __swift_project_value_buffer(v320, static Logger.modelInteraction);
      (*(v319 + 16))(v317, v316, v318);
      v321 = Logger.logObject.getter();
      v322 = static os_log_type_t.error.getter();
      v323 = os_log_type_enabled(v321, v322);
      v324 = v3[95];
      v326 = v3[41];
      v325 = v3[42];
      v327 = v3[40];
      if (v323)
      {
        v328 = swift_slowAlloc();
        v602 = swift_slowAlloc();
        v610[0] = v602;
        *v328 = 136315650;
        *(v328 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v328 + 12) = 2080;
        *(v328 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v328 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.DocumentError and conformance GenerativeError.DocumentError, MEMORY[0x277D0DB30]);
        v329 = Encodable.asJSONString.getter();
        v331 = v3;
        v332 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v329, v330, v610);

        *(v328 + 24) = v332;
        v3 = v331;

        v587 = *(v326 + 8);
        v587(v325, v327);
        _os_log_impl(&dword_24FD67000, v321, v322, "%s.%s Received a document error %s", v328, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v602, -1, -1);
        MEMORY[0x253057F40](v328, -1, -1);
      }

      else
      {

        v587 = *(v326 + 8);
        v587(v325, v327);
      }

      v384 = v3[43];
      v385 = v3[16];
      v386 = v3[17];
      v387 = v3[13];
      v388 = v3[14];
      GenerativeError.DocumentError.context.getter();
      GenerativeError.DocumentError.ErrorContext.url.getter();
      v389 = *(v388 + 8);
      v389(v385, v387);
      v390 = type metadata accessor for URL();
      v391 = *(v390 - 8);
      v392 = (*(v391 + 48))(v386, 1, v390);
      v393 = v3[17];
      v605 = v389;
      if (v392 == 1)
      {
        outlined destroy of OnScreenContent.Document?(v393, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v571 = 0xE000000000000000;
        v579 = 0;
      }

      else
      {
        v415 = URL.absoluteString.getter();
        v571 = v416;
        v579 = v415;
        (*(v391 + 8))(v393, v390);
      }

      v417 = v3[79];
      v559 = v3[78];
      v563 = v3[87];
      v418 = v3[43];
      v420 = v3[40];
      v419 = v3[41];
      v421 = v3[15];
      v422 = v3[13];
      GenerativeError.DocumentError.context.getter();
      v423 = GenerativeError.DocumentError.ErrorContext.description.getter();
      v425 = v424;
      v605(v421, v422);
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v426 = v579;
      *(v426 + 8) = v571;
      *(v426 + 16) = v423;
      *(v426 + 24) = v425;
      *(v426 + 32) = 1;
      swift_willThrow();
      v587(v418, v420);
      (*(v417 + 8))(v563, v559);
      goto LABEL_74;
    }

    if (v16 == *MEMORY[0x277D0DB48])
    {
      v363 = v3[77];
      v364 = v3[39];
      v365 = v3[36];
      v366 = v3[37];
      (*(v3[76] + 96))(v363, v3[75]);
      (*(v366 + 32))(v364, v363, v365);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v368 = v3[38];
      v367 = v3[39];
      v369 = v3[36];
      v370 = v3[37];
      v371 = type metadata accessor for Logger();
      __swift_project_value_buffer(v371, static Logger.modelInteraction);
      (*(v370 + 16))(v368, v367, v369);
      v372 = Logger.logObject.getter();
      v373 = static os_log_type_t.error.getter();
      v374 = os_log_type_enabled(v372, v373);
      v375 = v3[95];
      v377 = v3[37];
      v376 = v3[38];
      v378 = v3[36];
      if (v374)
      {
        v379 = swift_slowAlloc();
        v604 = swift_slowAlloc();
        v610[0] = v604;
        *v379 = 136315650;
        *(v379 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v379 + 12) = 2080;
        *(v379 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v379 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.InvalidatedError and conformance GenerativeError.InvalidatedError, MEMORY[0x277D0D9C0]);
        v380 = Encodable.asJSONString.getter();
        v382 = v3;
        v383 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v380, v381, v610);

        *(v379 + 24) = v383;
        v3 = v382;

        v76 = *(v377 + 8);
        v76(v376, v378);
        _os_log_impl(&dword_24FD67000, v372, v373, "%s.%s Received an invalidated error %s", v379, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v604, -1, -1);
        MEMORY[0x253057F40](v379, -1, -1);
      }

      else
      {

        v76 = *(v377 + 8);
        v76(v376, v378);
      }

      v151 = v3[87];
      v152 = v3[79];
      v153 = v3[78];
      v154 = v3[39];
      v155 = v3[36];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v157 = 8;
      goto LABEL_44;
    }

    if (v16 == *MEMORY[0x277D0DB58])
    {
      v394 = v3[77];
      v395 = v3[35];
      v396 = v3[32];
      v397 = v3[33];
      (*(v3[76] + 96))(v394, v3[75]);
      (*(v397 + 32))(v395, v394, v396);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v399 = v3[34];
      v398 = v3[35];
      v400 = v3[32];
      v401 = v3[33];
      v402 = type metadata accessor for Logger();
      __swift_project_value_buffer(v402, static Logger.modelInteraction);
      (*(v401 + 16))(v399, v398, v400);
      v403 = Logger.logObject.getter();
      v404 = static os_log_type_t.error.getter();
      v405 = os_log_type_enabled(v403, v404);
      v406 = v3[95];
      v408 = v3[33];
      v407 = v3[34];
      v409 = v3[32];
      if (v405)
      {
        v410 = swift_slowAlloc();
        v606 = swift_slowAlloc();
        v610[0] = v606;
        *v410 = 136315650;
        *(v410 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v410 + 12) = 2080;
        *(v410 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v410 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AuthenticationError and conformance GenerativeError.AuthenticationError, MEMORY[0x277D0D9F8]);
        v411 = Encodable.asJSONString.getter();
        v413 = v3;
        v414 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v411, v412, v610);

        *(v410 + 24) = v414;
        v3 = v413;

        v76 = *(v408 + 8);
        v76(v407, v409);
        _os_log_impl(&dword_24FD67000, v403, v404, "%s.%s Received an authentication error %s", v410, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v606, -1, -1);
        MEMORY[0x253057F40](v410, -1, -1);
      }

      else
      {

        v76 = *(v408 + 8);
        v76(v407, v409);
      }

      v151 = v3[87];
      v152 = v3[79];
      v153 = v3[78];
      v154 = v3[35];
      v155 = v3[32];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v157 = 9;
      goto LABEL_44;
    }

    if (v16 != *MEMORY[0x277D0DB98])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v443 = v3[87];
      v444 = v3[86];
      v445 = v3[79];
      v446 = v3[78];
      v447 = type metadata accessor for Logger();
      __swift_project_value_buffer(v447, static Logger.modelInteraction);
      v607 = *(v445 + 16);
      v607(v444, v443, v446);
      v448 = Logger.logObject.getter();
      v449 = static os_log_type_t.error.getter();
      v450 = os_log_type_enabled(v448, v449);
      v451 = v3[95];
      v452 = v3[86];
      v453 = v3[79];
      v454 = v3[78];
      if (v450)
      {
        v455 = swift_slowAlloc();
        v456 = swift_slowAlloc();
        v589 = swift_slowAlloc();
        v610[0] = v589;
        *v455 = 136315650;
        *(v455 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v455 + 12) = 2080;
        *(v455 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v455 + 22) = 2112;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        swift_allocError();
        v607(v457, v452, v454);
        v458 = _swift_stdlib_bridgeErrorToNSError();
        *(v455 + 24) = v458;
        *v456 = v458;

        v459 = *(v453 + 8);
        v459(v452, v454);
        _os_log_impl(&dword_24FD67000, v448, v449, "%s.%s Received an unknown error not fall into any defined GenerativeError enum: %@", v455, 0x20u);
        outlined destroy of OnScreenContent.Document?(v456, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v456, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v589, -1, -1);
        MEMORY[0x253057F40](v455, -1, -1);
      }

      else
      {

        v459 = *(v453 + 8);
        v459(v452, v454);
      }

      v493 = v3[87];
      v494 = v3[78];
      v495 = v3[77];
      v496 = v3[76];
      v497 = v3[75];
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v607(v498, v493, v494);
      swift_willThrow();
      v459(v493, v494);
      (*(v496 + 8))(v495, v497);
      v255 = v3[2];
      goto LABEL_75;
    }

    v427 = v3[77];
    v428 = v3[31];
    v429 = v3[25];
    v430 = v3[26];
    (*(v3[76] + 96))(v427, v3[75]);
    (*(v430 + 32))(v428, v427, v429);
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v432 = v3[30];
    v431 = v3[31];
    v433 = v3[25];
    v434 = v3[26];
    v435 = type metadata accessor for Logger();
    __swift_project_value_buffer(v435, static Logger.modelInteraction);
    v565 = *(v434 + 16);
    v565(v432, v431, v433);
    v1 = Logger.logObject.getter();
    v436 = static os_log_type_t.error.getter();
    v437 = os_log_type_enabled(v1, v436);
    v10 = v3[30];
    v2 = v3[25];
    v8 = v3[26];
    if (v437)
    {
      v438 = swift_slowAlloc();
      v610[0] = swift_slowAlloc();
      v439 = v610[0];
      *v438 = 136315650;
      *(v438 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
      *(v438 + 12) = 2080;
      *(v438 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
      *(v438 + 22) = 2080;
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40]);
      v440 = Encodable.asJSONString.getter();
      v442 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v440, v441, v610);

      *(v438 + 24) = v442;
      v588 = v8[1];
      v588(v10, v2);
      _os_log_impl(&dword_24FD67000, v1, v436, "%s.%s Received an unknown error %s", v438, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v439, -1, -1);
      MEMORY[0x253057F40](v438, -1, -1);

LABEL_142:
      v460 = v3[31];
      v461 = v3[12];
      v462 = v3[7];
      v463 = v3[8];
      GenerativeError.UnknownUnderlyingError.error.getter();
      v464 = GenerativeError.UnderlyingError.error.getter();
      v465 = *(v463 + 8);
      v465(v461, v462);
      if (v464 && (v466 = v3[94], v3[3] = v464, type metadata accessor for NSError(), swift_dynamicCast()))
      {
        v608 = v3[4];
        v565(v3[29], v3[31], v3[25]);
        v467 = Logger.logObject.getter();
        v468 = static os_log_type_t.error.getter();
        v469 = os_log_type_enabled(v467, v468);
        v470 = v3[95];
        v471 = v3[29];
        v472 = v3[25];
        v473 = v3[26];
        if (v469)
        {
          v474 = swift_slowAlloc();
          v580 = swift_slowAlloc();
          v610[0] = v580;
          *v474 = 136315650;
          *(v474 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
          *(v474 + 12) = 2080;
          *(v474 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
          *(v474 + 22) = 2080;
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40]);
          v475 = Encodable.asJSONString.getter();
          v477 = v3;
          v478 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v475, v476, v610);

          *(v474 + 24) = v478;
          v3 = v477;

          v479 = v588;
          v588(v471, v472);
          v480 = "%s.%s Received an unknown error and rethrow as NSError: %s";
LABEL_149:
          _os_log_impl(&dword_24FD67000, v467, v468, v480, v474, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v580, -1, -1);
          MEMORY[0x253057F40](v474, -1, -1);

LABEL_153:
          v151 = v3[87];
          v152 = v3[79];
          v153 = v3[78];
          v499 = v3[31];
          v500 = v3[25];
          swift_willThrow();
          v479(v499, v500);
          goto LABEL_45;
        }
      }

      else
      {
        v481 = v3[31];
        v482 = v3[11];
        v483 = v3[7];
        GenerativeError.UnknownUnderlyingError.error.getter();
        v484 = GenerativeError.UnderlyingError.error.getter();
        v465(v482, v483);
        v485 = v3[31];
        v486 = v3[25];
        if (!v484)
        {
          v565(v3[27], v485, v486);
          v501 = Logger.logObject.getter();
          v502 = static os_log_type_t.error.getter();
          v503 = os_log_type_enabled(v501, v502);
          v505 = v3[26];
          v504 = v3[27];
          v506 = v3[25];
          if (v503)
          {
            v572 = v3[95];
            v507 = swift_slowAlloc();
            v609 = swift_slowAlloc();
            v610[0] = v609;
            *v507 = 136315650;
            *(v507 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
            *(v507 + 12) = 2080;
            *(v507 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
            *(v507 + 22) = 2080;
            lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40]);
            v508 = Encodable.asJSONString.getter();
            v510 = v3;
            v511 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v508, v509, v610);

            *(v507 + 24) = v511;
            v3 = v510;

            v588(v504, v506);
            _os_log_impl(&dword_24FD67000, v501, v502, "%s.%s Received an unknown error and rethrow as Error.unknownUnderlyingGMSError because underlying error is nil : %s", v507, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253057F40](v609, -1, -1);
            MEMORY[0x253057F40](v507, -1, -1);
          }

          else
          {

            v588(v504, v506);
          }

          v512 = v3[79];
          v564 = v3[78];
          v573 = v3[87];
          v513 = v3[31];
          v560 = v3[25];
          v515 = v3[9];
          v514 = v3[10];
          v516 = v3[7];
          GenerativeError.UnknownUnderlyingError.error.getter();
          v517 = v3;
          v518 = GenerativeError.UnderlyingError.error.getter();
          v465(v514, v516);
          GenerativeError.UnknownUnderlyingError.error.getter();
          v519 = GenerativeError.UnderlyingError.localizedDescription.getter();
          v521 = v520;
          v465(v515, v516);
          lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
          swift_allocError();
          *v522 = v518;
          *(v522 + 8) = v519;
          v3 = v517;
          *(v522 + 16) = v521;
          *(v522 + 24) = 0;
          *(v522 + 32) = 2;
          swift_willThrow();
          v588(v513, v560);
          (*(v512 + 8))(v573, v564);
          v255 = v517[2];
          goto LABEL_75;
        }

        v565(v3[28], v485, v486);
        v467 = Logger.logObject.getter();
        v468 = static os_log_type_t.error.getter();
        v487 = os_log_type_enabled(v467, v468);
        v470 = v3[95];
        v471 = v3[28];
        v472 = v3[25];
        v488 = v3[26];
        if (v487)
        {
          v474 = swift_slowAlloc();
          v580 = swift_slowAlloc();
          v610[0] = v580;
          *v474 = 136315650;
          *(v474 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
          *(v474 + 12) = 2080;
          *(v474 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
          *(v474 + 22) = 2080;
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40]);
          v489 = Encodable.asJSONString.getter();
          v491 = v3;
          v492 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v489, v490, v610);

          *(v474 + 24) = v492;
          v3 = v491;

          v479 = v588;
          v588(v471, v472);
          v480 = "%s.%s Received an unknown error and rethrow as is: %s";
          goto LABEL_149;
        }
      }

      v479 = v588;
      v588(v471, v472);
      goto LABEL_153;
    }

LABEL_141:

    v588 = v8[1];
    v588(v10, v2);
    goto LABEL_142;
  }

  v17 = v3[77];
  v19 = v3[56];
  v18 = v3[57];
  v21 = v3[54];
  v20 = v3[55];
  v22 = v3[52];
  v23 = v3[53];
  (*(v3[76] + 96))(v17, v3[75]);
  (*(v19 + 32))(v18, v17, v20);
  GenerativeError.PromptError.type.getter();
  v24 = (*(v23 + 88))(v21, v22);
  if (v24 == *MEMORY[0x277D0DA90])
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v25 = v3[87];
    v26 = v3[85];
    v27 = v3[79];
    v28 = v3[78];
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.modelInteraction);
    (*(v27 + 16))(v26, v25, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v3[95];
    v34 = v3[85];
    v35 = v3[79];
    v523 = v3;
    v36 = v3[78];
    if (v32)
    {
      v37 = swift_slowAlloc();
      v590 = swift_slowAlloc();
      v610[0] = v590;
      *v37 = 136315650;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
      *(v37 + 12) = 2080;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
      *(v37 + 22) = 2080;
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
      v38 = Encodable.asJSONString.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v610);

      *(v37 + 24) = v40;

      v581 = *(v35 + 8);
      v581(v34, v36);
      _os_log_impl(&dword_24FD67000, v30, v31, "%s.%s Received a prompt error: too many tokens %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v590, -1, -1);
      MEMORY[0x253057F40](v37, -1, -1);
    }

    else
    {

      v581 = *(v35 + 8);
      v581(v34, v36);
    }

    v3 = v523;
    v142 = v523[87];
    v143 = v523[78];
    v145 = v523[56];
    v144 = v523[57];
    v146 = v523[55];
    v575 = v523[54];
    v147 = v523[52];
    v148 = v523[53];
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    swift_allocError();
    v150 = 10;
  }

  else
  {
    if (v24 == *MEMORY[0x277D0DA98] || v24 == *MEMORY[0x277D0DAA0])
    {
      (*(v3[53] + 8))(v3[54], v3[52]);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v124 = v3[87];
      v125 = v3[80];
      v126 = v3[79];
      v127 = v3[78];
      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, static Logger.modelInteraction);
      (*(v126 + 16))(v125, v124, v127);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v3[95];
      v133 = v3[80];
      v134 = v3[79];
      v135 = v3[78];
      if (v131)
      {
        v136 = swift_slowAlloc();
        v595 = swift_slowAlloc();
        v610[0] = v595;
        *v136 = 136315650;
        *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v136 + 12) = 2080;
        *(v136 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v136 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        v137 = Encodable.asJSONString.getter();
        v139 = v3;
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v610);

        *(v136 + 24) = v140;
        v3 = v139;

        v141 = *(v134 + 8);
        v141(v133, v135);
        _os_log_impl(&dword_24FD67000, v129, v130, "%s.%s Received a prompt error: safetyRejected or denyListRejected %s", v136, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v595, -1, -1);
        MEMORY[0x253057F40](v136, -1, -1);
      }

      else
      {

        v141 = *(v134 + 8);
        v141(v133, v135);
      }

      v179 = v3[87];
      v180 = v3[78];
      v182 = v3[56];
      v181 = v3[57];
      v183 = v3[55];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v184 = 5;
      *(v184 + 8) = 0;
      *(v184 + 16) = 0;
      *(v184 + 24) = 0;
      *(v184 + 32) = 3;
      swift_willThrow();
      (*(v182 + 8))(v181, v183);
      v141(v179, v180);
      goto LABEL_74;
    }

    v524 = v3;
    if (v24 == *MEMORY[0x277D0DAB0])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v77 = v3[87];
      v78 = v3[84];
      v79 = v3[79];
      v80 = v3[78];
      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, static Logger.modelInteraction);
      (*(v79 + 16))(v78, v77, v80);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v3[95];
      v86 = v3[84];
      v87 = v3[79];
      v88 = v3[78];
      if (v84)
      {
        v89 = swift_slowAlloc();
        v593 = swift_slowAlloc();
        v610[0] = v593;
        *v89 = 136315650;
        *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v89 + 12) = 2080;
        *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v89 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        v90 = Encodable.asJSONString.getter();
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v610);

        *(v89 + 24) = v92;

        v581 = *(v87 + 8);
        v581(v86, v88);
        _os_log_impl(&dword_24FD67000, v82, v83, "%s.%s Received a prompt error: language recognizer rejected %s", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v593, -1, -1);
        MEMORY[0x253057F40](v89, -1, -1);
      }

      else
      {

        v581 = *(v87 + 8);
        v581(v86, v88);
      }

      v3 = v524;
      v142 = v524[87];
      v143 = v524[78];
      v145 = v524[56];
      v144 = v524[57];
      v146 = v524[55];
      v575 = v524[54];
      v147 = v524[52];
      v148 = v524[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v150 = 11;
    }

    else if (v24 == *MEMORY[0x277D0DAA8])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v231 = v3[87];
      v232 = v3[83];
      v233 = v3[79];
      v234 = v3[78];
      v235 = type metadata accessor for Logger();
      __swift_project_value_buffer(v235, static Logger.modelInteraction);
      (*(v233 + 16))(v232, v231, v234);
      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.error.getter();
      v238 = os_log_type_enabled(v236, v237);
      v239 = v3[95];
      v240 = v3[83];
      v241 = v3[79];
      v242 = v3[78];
      if (v238)
      {
        v243 = swift_slowAlloc();
        v599 = swift_slowAlloc();
        v610[0] = v599;
        *v243 = 136315650;
        *(v243 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v243 + 12) = 2080;
        *(v243 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v243 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        v244 = Encodable.asJSONString.getter();
        v246 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v245, v610);

        *(v243 + 24) = v246;

        v581 = *(v241 + 8);
        v581(v240, v242);
        _os_log_impl(&dword_24FD67000, v236, v237, "%s.%s Received a prompt error: script validator rejected %s", v243, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v599, -1, -1);
        MEMORY[0x253057F40](v243, -1, -1);
      }

      else
      {

        v581 = *(v241 + 8);
        v581(v240, v242);
      }

      v3 = v524;
      v142 = v524[87];
      v143 = v524[78];
      v145 = v524[56];
      v144 = v524[57];
      v146 = v524[55];
      v575 = v524[54];
      v147 = v524[52];
      v148 = v524[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v150 = 12;
    }

    else if (v24 == *MEMORY[0x277D0DA88])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v290 = v3[87];
      v291 = v3[82];
      v292 = v3[79];
      v293 = v3[78];
      v294 = type metadata accessor for Logger();
      __swift_project_value_buffer(v294, static Logger.modelInteraction);
      (*(v292 + 16))(v291, v290, v293);
      v295 = Logger.logObject.getter();
      v296 = static os_log_type_t.error.getter();
      v297 = os_log_type_enabled(v295, v296);
      v298 = v3[95];
      v299 = v3[82];
      v300 = v3[79];
      v301 = v3[78];
      if (v297)
      {
        v302 = swift_slowAlloc();
        v601 = swift_slowAlloc();
        v610[0] = v601;
        *v302 = 136315650;
        *(v302 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v302 + 12) = 2080;
        *(v302 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v302 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        v303 = Encodable.asJSONString.getter();
        v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v303, v304, v610);

        *(v302 + 24) = v305;

        v581 = *(v300 + 8);
        v581(v299, v301);
        _os_log_impl(&dword_24FD67000, v295, v296, "%s.%s Received a prompt error: invalid prompt format %s", v302, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v601, -1, -1);
        MEMORY[0x253057F40](v302, -1, -1);
      }

      else
      {

        v581 = *(v300 + 8);
        v581(v299, v301);
      }

      v3 = v524;
      v142 = v524[87];
      v143 = v524[78];
      v145 = v524[56];
      v144 = v524[57];
      v146 = v524[55];
      v575 = v524[54];
      v147 = v524[52];
      v148 = v524[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v150 = 13;
    }

    else
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v333 = v3[87];
      v334 = v3[81];
      v335 = v3[79];
      v336 = v3[78];
      v337 = type metadata accessor for Logger();
      __swift_project_value_buffer(v337, static Logger.modelInteraction);
      (*(v335 + 16))(v334, v333, v336);
      v338 = Logger.logObject.getter();
      v339 = static os_log_type_t.error.getter();
      v340 = os_log_type_enabled(v338, v339);
      v341 = v3[95];
      v342 = v3[81];
      v343 = v3[79];
      v344 = v3[78];
      if (v340)
      {
        v345 = swift_slowAlloc();
        v603 = swift_slowAlloc();
        v610[0] = v603;
        *v345 = 136315650;
        *(v345 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v610);
        *(v345 + 12) = 2080;
        *(v345 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v610);
        *(v345 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
        v346 = Encodable.asJSONString.getter();
        v348 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v347, v610);

        *(v345 + 24) = v348;

        v581 = *(v343 + 8);
        v581(v342, v344);
        _os_log_impl(&dword_24FD67000, v338, v339, "%s.%s Received a prompt error: invalid prompt format %s", v345, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v603, -1, -1);
        MEMORY[0x253057F40](v345, -1, -1);
      }

      else
      {

        v581 = *(v343 + 8);
        v581(v342, v344);
      }

      v3 = v524;
      v142 = v524[87];
      v143 = v524[78];
      v145 = v524[56];
      v144 = v524[57];
      v146 = v524[55];
      v575 = v524[54];
      v147 = v524[52];
      v148 = v524[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v150 = 14;
    }
  }

  *v149 = v150;
  *(v149 + 8) = 0;
  *(v149 + 16) = 0;
  *(v149 + 24) = 0;
  *(v149 + 32) = 3;
  swift_willThrow();
  (*(v145 + 8))(v144, v146);
  v581(v142, v143);
  (*(v148 + 8))(v575, v147);
LABEL_74:
  v255 = v3[2];
LABEL_75:

LABEL_76:
  v256 = v3[88];
  v257 = v3[87];
  v258 = v3[86];
  v259 = v3[85];
  v260 = v3[84];
  v261 = v3[83];
  v262 = v3[82];
  v263 = v3[81];
  v264 = v3[80];
  v265 = v3;
  v266 = v3[77];
  v526 = v265[74];
  v527 = v265[73];
  v528 = v265[72];
  v529 = v265[69];
  v530 = v265[68];
  v531 = v265[65];
  v532 = v265[64];
  v533 = v265[61];
  v534 = v265[60];
  v535 = v265[57];
  v536 = v265[54];
  v537 = v265[51];
  v538 = v265[50];
  v539 = v265[47];
  v540 = v265[46];
  v541 = v265[43];
  v542 = v265[42];
  v543 = v265[39];
  v544 = v265[38];
  v545 = v265[35];
  v546 = v265[34];
  v547 = v265[31];
  v548 = v265[30];
  v549 = v265[29];
  v550 = v265[28];
  v551 = v265[27];
  v552 = v265[24];
  v553 = v265[21];
  v554 = v265[20];
  v555 = v265[17];
  v556 = v265[16];
  v557 = v265[15];
  v561 = v265[12];
  v569 = v265[11];
  v578 = v265[10];
  v585 = v265[9];

  v267 = v265[1];

  return v267();
}

void ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.modelInteraction);
  v7 = *(a3 + 8);
  v39 = *(a3 + 24);
  v40[0] = v7;
  outlined init with copy of String(v40, v35);
  outlined init with copy of String(&v39, v35);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  outlined destroy of String(v40);
  outlined destroy of String(&v39);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v37 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v37);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000024FE34850, &v37);
    *(v10 + 22) = 2080;
    v12 = *(a3 + 1);
    v35[0] = *a3;
    v35[1] = v12;
    v36 = *(a3 + 4);
    outlined init with copy of String(v40, v38);
    outlined init with copy of String(&v39, v38);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v37);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Invoking useDeviceAssistant Tool: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  v16 = *a3;
  v17 = type metadata accessor for ModelResponse();
  *(a4 + v17[11]) = v16;
  v18 = a4 + v17[13];
  v19 = *(v18 + 8);
  swift_bridgeObjectRetain_n();

  v20 = v39;
  v21 = v40[0];
  *v18 = v39;
  v35[0] = v21;
  v38[0] = 0x6E6572656665725BLL;
  v38[1] = 0xEB000000005D6563;
  v37 = v20;
  lazy protocol witness table accessor for type String and conformance String();

  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;
  outlined destroy of String(&v39);
  outlined destroy of String(v40);
  v25 = (a4 + v17[12]);
  v26 = v25[1];

  *v25 = v22;
  v25[1] = v24;
  if (v16)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (v22 == a1 && v24 == a2)
    {
      v27 = 0;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    SELFUtils.recordAndEmitBoomerangEvent(utteranceRewrite:)(v27 & 1);
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v35[0] = v31;
    *v30 = 136315650;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v35);
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000024FE34850, v35);
    *(v30 + 22) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v35);

    *(v30 + 24) = v32;
    _os_log_impl(&dword_24FD67000, v28, v29, "%s.%s rewritten utterance: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v31, -1, -1);
    MEMORY[0x253057F40](v30, -1, -1);
  }

  else
  {
  }
}

uint64_t implicit closure #5 in implicit closure #4 in ModelOrchestrator.registerImage(_:_:_:_:)(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23[-v11 - 8];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();

  outlined init with copy of IntentCallbackManager(a2, v23);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a1;
  *(v15 + 40) = a3;
  v17 = *(a2 + 112);
  *(v15 + 144) = *(a2 + 96);
  *(v15 + 160) = v17;
  *(v15 + 176) = *(a2 + 128);
  v18 = *(a2 + 48);
  *(v15 + 80) = *(a2 + 32);
  *(v15 + 96) = v18;
  v19 = *(a2 + 80);
  *(v15 + 112) = *(a2 + 64);
  *(v15 + 128) = v19;
  v20 = *(a2 + 16);
  *(v15 + 48) = *a2;
  *(v15 + 64) = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a5, v15);
}

uint64_t implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(__int128 *a1)
{
  v1 = a1[7];
  v22 = a1[6];
  v23 = v1;
  v24 = *(a1 + 16);
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v6 = *(a1 + 13);
  v5 = *(a1 + 14);
  v12 = v6;
  v13 = v5;
  v14 = 0;
  v15 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v12);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;

  return outlined consume of GenerativeAssistantProgressLevel(v7, v8, v9, v10);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of Date?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t outlined assign with take of ModelSession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for GenerativeAssistantUseCase() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = v1[2];
  v22 = v1[3];
  v8 = (v7 + 17) & 0xFFFFFFFFFFFFFFF8;
  v21 = v1[9];
  v20 = v1[10];
  v19 = v1[11];
  v9 = (v1 + v6);
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = *(v1 + v7 + 9);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(a1, v23, v22, (v1 + 4), v21, v20, v19, v1 + v5);
}

uint64_t _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for GenerativeAssistantUseCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v9 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t partial apply for closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(v7, a1, v4, v5, v6, v1 + 48);
}

uint64_t sub_24FDF38E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of ContentLoaderProviding.load();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t objectdestroy_62Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(v7, a1, v4, v5, v6, v1 + 48);
}

uint64_t sub_24FDF3C08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24FDF3C50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1);
}

uint64_t partial apply for closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for GenerativeRequestMetadata() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t outlined init with take of GeneratedResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for GenerativeRequestMetadata() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_24FDF4064()
{
  v1 = type metadata accessor for GenerativeRequestMetadata();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 56);

  v9 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v10 = v1[8];
  v11 = type metadata accessor for GenerativeAssistantUseCase();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v1[9];
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v9 + v12, v13);
  }

  v15 = (v9 + v1[10]);
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v16 = v1[11];
  v17 = type metadata accessor for DirectInvocationClientID();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v9 + v16, 1, v17))
  {
    (*(v18 + 8))(v9 + v16, v17);
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v9 + v1[13] + 8);

  v21 = *(v0 + v19 + 16);

  v22 = *(v0 + v19 + 32);

  v23 = *(v0 + v19 + 48);

  v24 = *(v0 + v19 + 64);

  v25 = *(v0 + v19 + 80);

  v26 = *(v0 + v19 + 96);

  v27 = *(v0 + v19 + 112);

  v28 = *(v0 + v19 + 128);

  return MEMORY[0x2821FE8E8](v0, v19 + 136, v2 | 7);
}

uint64_t partial apply for closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeRequestMetadata() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for GenerativeRequestMetadata() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for GenerativeRequestMetadata();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  v9 = &v0[v3];
  __swift_destroy_boxed_opaque_existential_0(&v0[v3]);
  v10 = v1[8];
  v11 = type metadata accessor for GenerativeAssistantUseCase();
  (*(*(v11 - 8) + 8))(&v0[v3 + v10], v11);
  v12 = v1[9];
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v3 + v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  v15 = &v9[v1[10]];
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v16 = v1[11];
  v17 = type metadata accessor for DirectInvocationClientID();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v9[v16], 1, v17))
  {
    (*(v18 + 8))(&v9[v16], v17);
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v9[v1[13] + 8];

  v21 = *&v0[v19 + 16];

  v22 = *&v0[v19 + 32];

  v23 = *&v0[v19 + 48];

  v24 = *&v0[v19 + 64];

  v25 = *&v0[v19 + 80];

  v26 = *&v0[v19 + 96];

  v27 = *&v0[v19 + 112];

  v28 = *&v0[v19 + 128];

  return MEMORY[0x2821FE8E8](v0, v19 + 136, v2 | 7);
}

uint64_t partial apply for closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for GenerativeRequestMetadata() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_24FDF49BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

GenerativeAssistantActions::GATInteractionMode_optional __swiftcall GATInteractionMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GATInteractionMode.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GATInteractionMode.rawValue.getter()
{
  v1 = 0x6C6E4F6563696F76;
  v2 = 0x4679616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x4F79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x726F466563696F76;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t GenerativeRequestMetadata.partnerName.getter()
{
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v0 = static Disclaimer.partnerName;

  return v0;
}

uint64_t GenerativeRequestMetadata.modelBundle.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.modelBundle()();

  v2 = type metadata accessor for ModelBundle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t type metadata accessor for GenerativeRequestMetadata()
{
  result = type metadata singleton initialization cache for GenerativeRequestMetadata;
  if (!type metadata singleton initialization cache for GenerativeRequestMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeRequestMetadata.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenerativeRequestMetadata.init(featureFlagManager:isExplicitRequest:interactionMode:interfaceIdiom:useCase:sessionID:siriLocale:partnerInfo:directInvocationClientId:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a3;
  v17 = *a4;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, a9);
  a9[40] = a2;
  a9[41] = v16;
  a9[42] = v17;
  v18 = type metadata accessor for GenerativeRequestMetadata();
  v19 = v18[8];
  v20 = type metadata accessor for GenerativeAssistantUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&a9[v19], a5, v20);
  v22 = &a9[v18[13]];
  *v22 = a6;
  v22[1] = a7;
  outlined init with copy of Date?(a8, &a9[v18[9]], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of Date?(a10, &a9[v18[10]], &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMR);

  LOBYTE(v19) = static SessionPersistenceUtils.isBackToBackRequest(sessionId:)();
  a9[v18[12]] = (v19 & 1) == 0;
  outlined init with copy of Date?(a11, &a9[v18[11]], &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  if ((v19 & 1) == 0)
  {
    if (!a7)
    {
      goto LABEL_5;
    }

    static SessionPersistenceUtils.setSession(forCurrentSession:)();
  }

LABEL_5:
  outlined destroy of OnScreenContent.Document?(a11, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  outlined destroy of OnScreenContent.Document?(a10, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMR);
  outlined destroy of OnScreenContent.Document?(a8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v21 + 8))(a5, v20);

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GenerativeRequestMetadata.partnerIconName.getter()
{
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  v0 = dispatch thunk of GenerativeAssistantSettingsProvider.icon()();

  return v0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GATInteractionMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GATInteractionMode()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GATInteractionMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GATInteractionMode(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x6C6E4F6563696F76;
  v4 = 0xEE0064726177726FLL;
  v5 = 0x4679616C70736964;
  if (*v1 != 2)
  {
    v5 = 0x4F79616C70736964;
    v4 = 0xEB00000000796C6ELL;
  }

  if (*v1)
  {
    v3 = 0x726F466563696F76;
    v2 = 0xEC00000064726177;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GenerativeAssistantActions::GATInterfaceIdiom_optional __swiftcall GATInterfaceIdiom.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GATInterfaceIdiom.init(rawValue:), v3);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GATInterfaceIdiom.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x79616C50726163;
    v8 = 0x646F50656D6F68;
    v9 = 6513005;
    if (v1 != 3)
    {
      v9 = 0x73646F50726961;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6565724673657965;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 22100;
    v3 = 0x6E6F69736976;
    if (v1 != 9)
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x656E6F685069;
    v5 = 1684099177;
    if (v1 != 6)
    {
      v5 = 0x6863746177;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GATInterfaceIdiom()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GATInterfaceIdiom()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GATInterfaceIdiom@<X0>(uint64_t *a1@<X8>)
{
  result = GATInterfaceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Optional<A>.asGATInterfaceIdiom.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  outlined init with copy of Date?(v2, &v16 - v9, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v11 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    outlined init with copy of Date?(v10, v8, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
    v14 = (*(v12 + 88))(v8, v11);
    if (v14 == *MEMORY[0x277CBA108])
    {
      v13 = 0;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA118])
    {
      v13 = 1;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA110])
    {
      v13 = 2;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0D8])
    {
      v13 = 3;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA100])
    {
      v13 = 4;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0F0])
    {
      v13 = 5;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0E0])
    {
      v13 = 6;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0E8])
    {
      v13 = 7;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0D0])
    {
      v13 = 8;
      goto LABEL_23;
    }

    if (v14 == *MEMORY[0x277CBA0F8])
    {
      v13 = 9;
      goto LABEL_23;
    }

    (*(v12 + 8))(v8, v11);
  }

  v13 = 10;
LABEL_23:
  *a1 = v13;
  return outlined destroy of OnScreenContent.Document?(v10, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
}

unint64_t UIUserInterfaceIdiom.asGATInterfaceIdiom.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x9030A00080605uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 10;
  }

  *a2 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type GATInteractionMode and conformance GATInteractionMode()
{
  result = lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode;
  if (!lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GATInterfaceIdiom and conformance GATInterfaceIdiom()
{
  result = lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom;
  if (!lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom);
  }

  return result;
}

uint64_t sub_24FDF5BDC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for GenerativeAssistantUseCase();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FDF5D74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for GenerativeAssistantUseCase();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for GenerativeRequestMetadata()
{
  type metadata accessor for GenerativeAssistantFeatureFlagManaging();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerativeAssistantUseCase();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x277CC9788]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UserRequestPartnerInfoProviding?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Locale?(319, &lazy cache variable for type metadata for DirectInvocationClientID?, MEMORY[0x277D0D6F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for GenerativeAssistantFeatureFlagManaging()
{
  result = lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging;
  if (!lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging);
  }

  return result;
}

void type metadata accessor for UserRequestPartnerInfoProviding?()
{
  if (!lazy cache variable for type metadata for UserRequestPartnerInfoProviding?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UserRequestPartnerInfoProviding?);
    }
  }
}

void type metadata accessor for Locale?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for GATInterfaceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GATInterfaceIdiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

NSData *PromptImage.toValue()@<X0>(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.ImageFormat();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D42D98]);
  if (one-time initialization token for _compressionRatio != -1)
  {
    swift_once();
  }

  if (byte_27F39FB20 == 1)
  {
    v8 = unk_27F39FB10;
    v9 = static Overrides._compressionRatio;

    v8(&v15, v9);

    v10 = v15;
    if (v16)
    {
      v10 = 0.6;
    }
  }

  else
  {
    v10 = 0.6;
  }

  result = UIImageJPEGRepresentation(a1, v10);
  if (result)
  {
    v12 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Prompt.ImageData.init(format:data:)();
    v13 = *MEMORY[0x277D42DD8];
    v14 = type metadata accessor for Prompt.Component.Value();
    return (*(*(v14 - 8) + 104))(a2, v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static ContentRanker.rankMetadata(contents:)(uint64_t a1, uint64_t a2)
{
  v141 = a2;
  v3 = type metadata accessor for OnScreenContent.UIMetadata();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v128 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v123 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v131 = &v123 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v130 = &v123 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v123 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v124 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v126 = &v123 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v125 = &v123 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v129 = &v123 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v123 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v123 - v34;
  v139 = a1;
  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v36 = *(v4 + 8);
  v135 = v3;
  v142 = v4 + 8;
  v157 = v36;
  v36(v7, v3);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v37 = *(v9 + 8);
  v140 = v20;
  v38 = v8;
  v39 = v9 + 8;
  v134 = v37;
  v37(v20, v8);
  v40 = type metadata accessor for IntelligenceProcessInfo();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v137 = v41 + 48;
  v136 = v42;
  v43 = v42(v35, 1, v40);
  v133 = v41;
  if (v43 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v35, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    v44 = 0;
  }

  else
  {
    v44 = IntelligenceProcessInfo.isSiri.getter();
    (*(v41 + 8))(v35, v40);
  }

  OnScreenContent.uiMetadata.getter();
  v45 = v140;
  OnScreenContent.UIMetadata.window.getter();
  v46 = v135;
  v157(v7, v135);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v47 = v39;
  v48 = v134;
  v138 = v47;
  v134(v45, v38);
  v49 = v136(v33, 1, v40);
  v132 = v40;
  if (v49 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v33, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    if ((v44 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    OnScreenContent.uiMetadata.getter();
    v78 = v140;
    OnScreenContent.UIMetadata.window.getter();
    v157(v7, v46);
    v79 = v129;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v48(v78, v38);
    v80 = v132;
    if (v136(v79, 1, v132) == 1)
    {
      v81 = v79;
LABEL_18:
      outlined destroy of OnScreenContent.Document?(v81, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      v82 = 1;
      return v82 & 1;
    }

    v97 = IntelligenceProcessInfo.isSiri.getter();
    (*(v133 + 8))(v79, v80);
LABEL_36:
    v82 = v97 ^ 1;
    return v82 & 1;
  }

  v77 = IntelligenceProcessInfo.isSiri.getter();
  (*(v133 + 8))(v33, v40);
  if ((v44 ^ v77))
  {
    goto LABEL_16;
  }

LABEL_6:
  OnScreenContent.uiMetadata.getter();
  v50 = v130;
  OnScreenContent.UIMetadata.window.getter();
  v51 = v157;
  v157(v7, v46);
  v52 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
  v54 = v53;
  v48(v50, v38);
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v52;
  }

  OnScreenContent.uiMetadata.getter();
  v56 = v131;
  OnScreenContent.UIMetadata.window.getter();
  v130 = v7;
  v51(v7, v46);
  v57 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
  v59 = v58;
  v60 = v56;
  v131 = v38;
  v61 = v48;
  v48(v60, v38);
  if (v59)
  {
    if (v55 != 0.0)
    {
LABEL_11:
      v62 = v130;
      OnScreenContent.uiMetadata.getter();
      v63 = v127;
      OnScreenContent.UIMetadata.window.getter();
      v64 = v135;
      v65 = v157;
      v157(v62, v135);
      v66 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
      v68 = v67;
      v69 = v131;
      v61(v63, v131);
      if (v68)
      {
        v70 = 0.0;
      }

      else
      {
        v70 = v66;
      }

      OnScreenContent.uiMetadata.getter();
      v71 = v128;
      OnScreenContent.UIMetadata.window.getter();
      v65(v62, v64);
      *&v72 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
      v74 = v73;
      v61(v71, v69);
      v75 = *&v72;
      v76 = (v74 & 1) == 0;
      goto LABEL_29;
    }
  }

  else if (v55 != v57)
  {
    goto LABEL_11;
  }

  v83 = v130;
  OnScreenContent.uiMetadata.getter();
  v84 = v140;
  OnScreenContent.UIMetadata.window.getter();
  v85 = v135;
  v86 = v157;
  v157(v83, v135);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v87 = v131;
  v61(v84, v131);
  if (v145)
  {
    v88 = 0.0;
  }

  else
  {
    v88 = v143 * v144;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v89 = v83;
  v90 = v85;
  v86(v89, v85);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v61(v84, v87);
  if ((v148 & 1) == 0)
  {
    if (v88 != v146 * v147)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v88 == 0.0)
  {
LABEL_38:
    v98 = OnScreenContent.isRelevantEntity()();
    v99 = OnScreenContent.isRelevantEntity()();
    v100 = v130;
    if (v98 != v99)
    {
      v82 = OnScreenContent.isRelevantEntity()();
      return v82 & 1;
    }

    v101 = OnScreenContent.isAppEntity()();
    if (v101 != OnScreenContent.isAppEntity()())
    {
      v82 = OnScreenContent.isAppEntity()();
      return v82 & 1;
    }

    v102 = OnScreenContent.isScreenshot()();
    if (v102 != OnScreenContent.isScreenshot()())
    {
      v82 = !OnScreenContent.isScreenshot()();
      return v82 & 1;
    }

    OnScreenContent.uiMetadata.getter();
    v104 = v140;
    OnScreenContent.UIMetadata.window.getter();
    v157(v100, v85);
    v105 = v125;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v61(v104, v131);
    v106 = v105;
    v107 = v105;
    v108 = v132;
    if (v136(v107, 1, v132) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v106, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      v109 = 0;
    }

    else
    {
      v109 = IntelligenceProcessInfo.isSystemApp.getter();
      (*(v133 + 8))(v106, v108);
    }

    OnScreenContent.uiMetadata.getter();
    v110 = v140;
    OnScreenContent.UIMetadata.window.getter();
    v157(v100, v90);
    v111 = v126;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v112 = v110;
    v113 = v134;
    v134(v112, v131);
    if (v136(v111, 1, v108) == 1)
    {
      v114 = v108;
      outlined destroy of OnScreenContent.Document?(v111, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      if ((v109 & 1) == 0)
      {
LABEL_50:
        OnScreenContent.uiMetadata.getter();
        v115 = v140;
        OnScreenContent.UIMetadata.window.getter();
        v116 = v157;
        v157(v100, v90);
        OnScreenContent.UIMetadata.Window.boundingBox.getter();
        v117 = v131;
        v113(v115, v131);
        if (v152)
        {
          v118 = 1.79769313e308;
        }

        else
        {
          v118 = v149;
        }

        OnScreenContent.uiMetadata.getter();
        OnScreenContent.UIMetadata.window.getter();
        v116(v100, v90);
        OnScreenContent.UIMetadata.Window.boundingBox.getter();
        v113(v115, v117);
        v119 = v153;
        if (v156)
        {
          v119 = 1.79769313e308;
        }

        v96 = v118 < v119;
        goto LABEL_32;
      }
    }

    else
    {
      v120 = IntelligenceProcessInfo.isSystemApp.getter();
      v114 = v108;
      (*(v133 + 8))(v111, v108);
      if (((v109 ^ v120) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    OnScreenContent.uiMetadata.getter();
    v121 = v140;
    OnScreenContent.UIMetadata.window.getter();
    v157(v100, v90);
    v122 = v124;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v113(v121, v131);
    if (v136(v122, 1, v114) == 1)
    {
      v81 = v122;
      goto LABEL_18;
    }

    v97 = IntelligenceProcessInfo.isSystemApp.getter();
    (*(v133 + 8))(v122, v114);
    goto LABEL_36;
  }

LABEL_25:
  v91 = v130;
  OnScreenContent.uiMetadata.getter();
  v92 = v140;
  OnScreenContent.UIMetadata.window.getter();
  v93 = v157;
  v157(v91, v85);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v94 = v61;
  v95 = v131;
  v94(v92, v131);
  if (v152)
  {
    v70 = 0.0;
  }

  else
  {
    v70 = v150 * v151;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v93(v91, v90);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v94(v92, v95);
  v75 = v154 * v155;
  v76 = (v156 & 1) == 0;
LABEL_29:
  if (!v76)
  {
    v75 = 0.0;
  }

  v96 = v75 < v70;
LABEL_32:
  v82 = v96;
  return v82 & 1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for OnScreenContent() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for OnScreenContent();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for OnScreenContent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for OnScreenContent();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  result = MEMORY[0x28223BE20](v13);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v17;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        v49(v51, v24, v26);
        v28(v15, v22, v26);
        v29 = closure #1 in static ContentRanker.rankMetadata(contents:)(v27, v15);
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v15, v26);
          return (v35)(v27, v26);
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v15, v26);
        result = (v31)(v27, v26);
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        result = v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v145 = a1;
  v9 = type metadata accessor for OnScreenContent();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v149 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v144 = &v134 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v134 - v24;
  result = MEMORY[0x28223BE20](v23);
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v145;
    if (*v145)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v141 = &v134 - v27;
  v139 = a4;
  v30 = 0;
  v159 = (v10 + 1);
  v160 = v10 + 2;
  v156 = (v10 + 4);
  v31 = MEMORY[0x277D84F90];
  v161 = v9;
  v153 = v28;
  v142 = v25;
  v146 = a3;
  v138 = v10;
  while (1)
  {
    v32 = v30;
    if (v30 + 1 >= v29)
    {
      v55 = v30 + 1;
    }

    else
    {
      v157 = v29;
      v162 = v6;
      v33 = *a3;
      v34 = v10[9];
      v5 = *a3 + v34 * (v30 + 1);
      v35 = v10[2];
      v36 = v141;
      v37 = v30;
      v35(v141, v5, v9);
      v140 = v33;
      v158 = v34;
      v38 = &v33[v34 * v37];
      v39 = v142;
      v154 = v35;
      v35(v142, v38, v9);
      v40 = v39;
      v41 = v162;
      LODWORD(v155) = closure #1 in static ContentRanker.rankMetadata(contents:)(v36, v39);
      v162 = v41;
      if (v41)
      {
        v133 = *v159;
        (*v159)(v39, v9);
        v133(v36, v9);
      }

      v42 = *v159;
      (*v159)(v40, v9);
      v152 = v42;
      result = (v42)(v36, v9);
      v143 = v37;
      v43 = v37 + 2;
      v44 = v158;
      v45 = &v140[v158 * (v37 + 2)];
      v46 = v144;
      while (v157 != v43)
      {
        v47 = v31;
        v48 = v161;
        v49 = v154;
        (v154)(v46, v45, v161);
        v50 = v153;
        v49(v153, v5, v48);
        v51 = v162;
        v52 = closure #1 in static ContentRanker.rankMetadata(contents:)(v46, v50);
        v162 = v51;
        if (v51)
        {
          v131 = v152;
          v152(v50, v48);
          v131(v46, v48);
        }

        v53 = v52;
        v54 = v152;
        v152(v50, v48);
        result = (v54)(v46, v48);
        ++v43;
        v44 = v158;
        v45 += v158;
        v5 += v158;
        v31 = v47;
        if ((v155 ^ v53))
        {
          v55 = (v43 - 1);
          goto LABEL_12;
        }
      }

      v55 = v157;
LABEL_12:
      v10 = v138;
      v9 = v161;
      v6 = v162;
      v32 = v143;
      if ((v155 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v55 < v143)
      {
        goto LABEL_140;
      }

      if (v143 < v55)
      {
        v56 = v55;
        v57 = v44 * (v55 - 1);
        v58 = v56 * v44;
        v157 = v56;
        v59 = v143;
        v60 = v143 * v44;
        do
        {
          if (v59 != --v56)
          {
            v162 = v6;
            v62 = *v146;
            if (!*v146)
            {
              goto LABEL_144;
            }

            v5 = v62 + v60;
            v155 = *v156;
            v155(v148, v62 + v60, v161);
            if (v60 < v57 || v5 >= v62 + v58)
            {
              v61 = v161;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v61 = v161;
              if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v155)(v62 + v57, v148, v61);
            v6 = v162;
            v44 = v158;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v56);
        a3 = v146;
        v10 = v138;
        v9 = v161;
        v32 = v143;
        v55 = v157;
      }

      else
      {
LABEL_25:
        a3 = v146;
      }
    }

    v63 = a3[1];
    if (v55 >= v63)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v55, v32))
    {
      goto LABEL_136;
    }

    if (v55 - v32 >= v139)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v32, v139))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v157 = v55;
    if (&v32[v139] >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = &v32[v139];
    }

    if (v64 < v32)
    {
      goto LABEL_139;
    }

    if (v157 == v64)
    {
      v55 = v157;
LABEL_37:
      if (v55 < v32)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v111 = *a3;
    v112 = v10[9];
    v158 = v10[2];
    v113 = v111 + v112 * (v157 - 1);
    v154 = -v112;
    v155 = v111;
    v143 = v32;
    v114 = &v32[-v157];
    v135 = v112;
    v5 = v111 + v157 * v112;
    v116 = v150;
    v115 = v151;
    v152 = v64;
    v147 = v31;
    do
    {
      v136 = v5;
      v137 = v114;
      v140 = v113;
      v117 = v113;
      while (1)
      {
        v118 = v6;
        v119 = v158;
        (v158)(v116, v5, v9);
        v119(v115, v117, v9);
        v120 = closure #1 in static ContentRanker.rankMetadata(contents:)(v116, v115);
        v121 = v115;
        v162 = v118;
        if (v118)
        {
          v132 = *v159;
          (*v159)(v115, v9);
          v132(v116, v9);
        }

        v122 = v120;
        v123 = *v159;
        (*v159)(v121, v9);
        result = (v123)(v116, v9);
        if ((v122 & 1) == 0)
        {
          break;
        }

        v31 = v147;
        if (!v155)
        {
          goto LABEL_142;
        }

        v124 = *v156;
        v125 = v149;
        v9 = v161;
        (*v156)(v149, v5, v161);
        swift_arrayInitWithTakeFrontToBack();
        v124(v117, v125, v9);
        v117 += v154;
        v5 += v154;
        v126 = __CFADD__(v114++, 1);
        v6 = v162;
        v116 = v150;
        v115 = v151;
        if (v126)
        {
          goto LABEL_100;
        }
      }

      v9 = v161;
      v6 = v162;
      v116 = v150;
      v115 = v151;
      v31 = v147;
LABEL_100:
      v113 = &v140[v135];
      v114 = v137 - 1;
      v5 = v136 + v135;
      v55 = v152;
      ++v157;
    }

    while (v157 != v152);
    a3 = v146;
    v10 = v138;
    v32 = v143;
    if (v152 < v143)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v66 = *(v31 + 2);
    v65 = *(v31 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v67;
    v68 = &v31[16 * v66];
    *(v68 + 4) = v32;
    *(v68 + 5) = v55;
    v152 = v55;
    v69 = *v145;
    if (!*v145)
    {
      goto LABEL_145;
    }

    if (v66)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v29 = a3[1];
    v30 = v152;
    v9 = v161;
    if (v152 >= v29)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v67 - 1;
    if (v67 >= 4)
    {
      v74 = &v31[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_122;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_123;
      }

      v81 = &v31[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_125;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_128;
      }

      if (v85 >= v77)
      {
        v103 = &v31[16 * v5 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v67 == 3)
    {
      v70 = *(v31 + 4);
      v71 = *(v31 + 5);
      v80 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      v73 = v80;
LABEL_58:
      if (v73)
      {
        goto LABEL_124;
      }

      v86 = &v31[16 * v67];
      v88 = *v86;
      v87 = *(v86 + 1);
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      v91 = v89;
      if (v89)
      {
        goto LABEL_127;
      }

      v92 = &v31[16 * v5 + 32];
      v94 = *v92;
      v93 = *(v92 + 1);
      v80 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v80)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v90, v95))
      {
        goto LABEL_131;
      }

      if (v90 + v95 >= v72)
      {
        if (v72 < v95)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v96 = &v31[16 * v67];
    v98 = *v96;
    v97 = *(v96 + 1);
    v80 = __OFSUB__(v97, v98);
    v90 = v97 - v98;
    v91 = v80;
LABEL_72:
    if (v91)
    {
      goto LABEL_126;
    }

    v99 = &v31[16 * v5];
    v101 = *(v99 + 4);
    v100 = *(v99 + 5);
    v80 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v80)
    {
      goto LABEL_129;
    }

    if (v102 < v90)
    {
      goto LABEL_89;
    }

LABEL_79:
    v107 = v5 - 1;
    if (v5 - 1 >= v67)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v108 = *&v31[16 * v107 + 32];
    v109 = *&v31[16 * v5 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v10[9] * v108, *a3 + v10[9] * *&v31[16 * v5 + 32], *a3 + v10[9] * v109, v69);
    if (v6)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v107 >= *(v31 + 2))
    {
      goto LABEL_121;
    }

    v110 = &v31[16 * v107];
    *(v110 + 4) = v108;
    *(v110 + 5) = v109;
    v163 = v31;
    result = specialized Array.remove(at:)(v5);
    v31 = v163;
    v67 = *(v163 + 2);
    if (v67 <= 1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
  v31 = result;
LABEL_106:
  v163 = v31;
  v127 = *(v31 + 2);
  if (v127 < 2)
  {
  }

  while (*a3)
  {
    v128 = *&v31[16 * v127];
    v129 = *&v31[16 * v127 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v10[9] * v128, *a3 + v10[9] * *&v31[16 * v127 + 16], *a3 + v10[9] * v129, v5);
    if (v6)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v127 - 2 >= *(v31 + 2))
    {
      goto LABEL_133;
    }

    v130 = &v31[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v163 = v31;
    result = specialized Array.remove(at:)(v127 - 1);
    v31 = v163;
    v127 = *(v163 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = type metadata accessor for OnScreenContent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  result = MEMORY[0x28223BE20](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v15;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = closure #1 in static ContentRanker.rankMetadata(contents:)(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = result;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = closure #1 in static ContentRanker.rankMetadata(contents:)(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v80, &v79, &v78);
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for OnScreenContent();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static ContentRanker.rank(contents:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v202 = &v196 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v221 = &v196 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v228 = (&v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v231 = (&v196 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v229 = (&v196 - v18);
  MEMORY[0x28223BE20](v17);
  v232 = &v196 - v19;
  v20 = type metadata accessor for OnScreenContent.Content();
  v204 = *(v20 - 8);
  v21 = *(v204 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v209 = &v196 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v226 = &v196 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v211 = &v196 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v220 = (&v196 - v32);
  MEMORY[0x28223BE20](v31);
  v230 = &v196 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v215 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v196 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v210 = &v196 - v42;
  MEMORY[0x28223BE20](v41);
  v224 = &v196 - v43;
  v237 = type metadata accessor for OnScreenContent.UIMetadata();
  v44 = *(v237 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v237);
  v236 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v47 = *(v235 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v235);
  v234 = &v196 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OnScreenContent();
  v245 = *(v50 - 8);
  v51 = *(v245 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v216 = &v196 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v205 = &v196 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v206 = &v196 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v233 = &v196 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v227 = (&v196 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v225 = &v196 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v214 = &v196 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v242 = &v196 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v213 = &v196 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v241 = &v196 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v239 = &v196 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v196 - v75;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v217 = v40;
    v218 = v9;
    v203 = v24;
    v240 = v20;
    v244 = v74;
    v201 = static MetricsUtils.shared;
    v74 = MetricsUtils.recordSignpostBegin(for:)("RankScreenContent.Time", 22, 2);
    v247 = MEMORY[0x277D84F90];
    v77 = *(a1 + 16);
    v200 = a1;
    v198 = v44;
    v197 = v47;
    v199 = v77;
    if (v77)
    {
      v223 = *(v245 + 16);
      v219 = ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v9 = v219 + a1;
      a1 = *(v245 + 72);
      v44 += 8;
      v78 = (v47 + 8);
      v212 = (v245 + 8);
      v238 = (v245 + 16);
      v222 = (v245 + 32);
      v243 = MEMORY[0x277D84F90];
      do
      {
        v47 = v244;
        v223(v76, v9, v244);
        v79 = v236;
        OnScreenContent.uiMetadata.getter();
        v80 = v234;
        OnScreenContent.UIMetadata.window.getter();
        (*v44)(v79, v237);
        v81 = OnScreenContent.UIMetadata.Window.isActive.getter();
        (*v78)(v80, v235);
        if (v81)
        {
          v82 = *v222;
          (*v222)(v239, v76, v47);
          v83 = v243;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v246 = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83[2] + 1, 1);
            v83 = v246;
          }

          v47 = v83[2];
          v85 = v83[3];
          if (v47 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v47 + 1, 1);
            v83 = v246;
          }

          v83[2] = v47 + 1;
          v243 = v83;
          v74 = (v82)(v219 + v83 + v47 * a1, v239, v244);
        }

        else
        {
          v74 = (*v212)(v76, v47);
        }

        v9 += a1;
        --v77;
      }

      while (v77);
    }

    else
    {
      v243 = MEMORY[0x277D84F90];
    }

    v86 = v243;
    v239 = v243[2];
    if (!v239)
    {
      break;
    }

    v40 = 0;
    v223 = (v245 + 16);
    v222 = (v204 + 88);
    LODWORD(v219) = *MEMORY[0x277D1D360];
    v212 = (v204 + 8);
    v208 = (v204 + 96);
    v207 = (v245 + 8);
    v238 = (v245 + 32);
    v20 = MEMORY[0x277D84F90];
    v24 = v244;
    v87 = v213;
    while (v40 < v86[2])
    {
      v88 = v20;
      v47 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v44 = *(v245 + 72);
      (*(v245 + 16))(v241, v86 + v47 + v44 * v40, v24);
      v89 = v230;
      OnScreenContent.content.getter();
      v90 = v240;
      v91 = (*v222)(v89, v240);
      if (v91 == v219)
      {
        (*v208)(v89, v90);
        v76 = type metadata accessor for OnScreenContent.Image();
        v92 = *(v76 - 1);
        v9 = v224;
        (*(v92 + 32))();
        (*(v92 + 56))(v9, 0, 1, v76);
      }

      else
      {
        v76 = type metadata accessor for OnScreenContent.Image();
        v93 = v24;
        v94 = v224;
        (*(*(v76 - 1) + 56))(v224, 1, 1, v76);
        v95 = v89;
        v9 = v94;
        v24 = v93;
        v87 = v213;
        (*v212)(v95, v90);
      }

      type metadata accessor for OnScreenContent.Image();
      v96 = *(v76 - 1);
      if ((*(v96 + 48))(v9, 1, v76) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v9, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
LABEL_24:
        a1 = *v238;
        (*v238)(v87, v241, v24);
        v20 = v88;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v246 = v88;
        if ((v99 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88[2] + 1, 1);
          v20 = v246;
        }

        v101 = *(v20 + 16);
        v100 = *(v20 + 24);
        v76 = (v101 + 1);
        if (v101 >= v100 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1);
          v20 = v246;
        }

        *(v20 + 16) = v76;
        v102 = v20 + v47 + v101 * v44;
        v24 = v244;
        v74 = (a1)(v102, v87, v244);
        goto LABEL_16;
      }

      v97 = OnScreenContent.Image.isSnapshot.getter();
      v98 = *(v96 + 8);
      a1 = v96 + 8;
      v98(v9, v76);
      if ((v97 & 1) == 0)
      {
        goto LABEL_24;
      }

      v74 = (*v207)(v241, v24);
      v20 = v88;
LABEL_16:
      ++v40;
      v86 = v243;
      if (v239 == v40)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    v195 = v74;
    swift_once();
    v74 = v195;
  }

  v20 = MEMORY[0x277D84F90];
  v24 = v244;
LABEL_30:
  v103 = *(v20 + 16);
  v241 = v20;
  v238 = v103;
  if (v103)
  {
    v40 = 0;
    v224 = (v245 + 16);
    v230 = (v204 + 88);
    LODWORD(v223) = *MEMORY[0x277D1D368];
    v219 = (v204 + 8);
    v213 = (v204 + 96);
    LODWORD(v208) = *MEMORY[0x277D1D360];
    v212 = (v245 + 32);
    v207 = (v245 + 8);
    v222 = MEMORY[0x277D84F90];
    v9 = v240;
    while (1)
    {
      if (v40 >= *(v20 + 16))
      {
        goto LABEL_114;
      }

      v105 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v47 = *(v245 + 72);
      (*(v245 + 16))(v242, v20 + v105 + v47 * v40, v24);
      v106 = v220;
      OnScreenContent.content.getter();
      v107 = *v230;
      v108 = (*v230)(v106, v9);
      if (v108 == v223)
      {
        (*v213)(v106, v9);
        v109 = type metadata accessor for OnScreenContent.Document();
        v110 = v106;
        v111 = *(v109 - 8);
        v44 = v221;
        (*(v111 + 32))(v221, v110, v109);
        (*(v111 + 56))(v44, 0, 1, v109);
      }

      else
      {
        v109 = type metadata accessor for OnScreenContent.Document();
        v44 = v221;
        (*(*(v109 - 8) + 56))(v221, 1, 1, v109);
        (*v219)(v106, v9);
      }

      type metadata accessor for OnScreenContent.Document();
      v112 = *(v109 - 8);
      v113 = (*(v112 + 48))(v44, 1, v109) == 1;
      v114 = v44;
      if (v113)
      {
        outlined destroy of OnScreenContent.Document?(v44, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
        v115 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v115 - 8) + 56))(v232, 1, 1, v115);
      }

      else
      {
        v44 = v232;
        v116 = v114;
        OnScreenContent.Document.entity.getter();
        (*(v112 + 8))(v116, v109);
        v117 = type metadata accessor for TypedValue.EntityIdentifierValue();
        v118 = (*(*(v117 - 8) + 48))(v44, 1, v117);
        if (v118 != 1)
        {
LABEL_48:
          outlined destroy of OnScreenContent.Document?(v44, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
          v125 = *v212;
          (*v212)(v214, v242, v24);
          v126 = v222;
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v246 = v126;
          if ((v127 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1);
            v126 = v246;
          }

          a1 = v126[2];
          v128 = v126[3];
          v76 = (a1 + 1);
          v129 = v126;
          v20 = v241;
          if (a1 >= v128 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v128 > 1, a1 + 1, 1);
            v20 = v241;
            v129 = v246;
          }

          v129[2] = v76;
          v222 = v129;
          v74 = (v125)(v129 + v105 + a1 * v47, v214, v24);
          goto LABEL_34;
        }
      }

      outlined destroy of OnScreenContent.Document?(v232, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v119 = v211;
      OnScreenContent.content.getter();
      v120 = v107(v119, v9);
      if (v120 == v208)
      {
        (*v213)(v119, v9);
        v76 = type metadata accessor for OnScreenContent.Image();
        v121 = *(v76 - 1);
        v44 = v210;
        (*(v121 + 32))(v210, v119, v76);
        (*(v121 + 56))(v44, 0, 1, v76);
        v122 = v44;
      }

      else
      {
        v76 = type metadata accessor for OnScreenContent.Image();
        v122 = v210;
        (*(*(v76 - 1) + 56))(v210, 1, 1, v76);
        (*v219)(v119, v9);
      }

      type metadata accessor for OnScreenContent.Image();
      a1 = *(v76 - 1);
      if ((*(a1 + 48))(v122, 1, v76) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v122, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
        v104 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v104 - 8) + 56))(v229, 1, 1, v104);
      }

      else
      {
        v44 = v229;
        OnScreenContent.Image.entity.getter();
        v123 = *(a1 + 8);
        a1 += 8;
        v123(v122, v76);
        v124 = type metadata accessor for TypedValue.EntityIdentifierValue();
        if ((*(*(v124 - 8) + 48))(v44, 1, v124) != 1)
        {
          goto LABEL_48;
        }
      }

      outlined destroy of OnScreenContent.Document?(v229, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v74 = (*v207)(v242, v24);
      v20 = v241;
LABEL_34:
      if (v238 == ++v40)
      {
        goto LABEL_54;
      }
    }
  }

  v222 = MEMORY[0x277D84F90];
  v9 = v240;
LABEL_54:
  v246 = v222;

  v76 = 0;
  specialized MutableCollection<>.sort(by:)(&v246);
  v213 = 0;
  v74 = specialized Array.append<A>(contentsOf:)(v246);
  a1 = v226;
  v40 = v225;
  if (v238)
  {
    v130 = 0;
    v224 = (v245 + 16);
    v242 = (v204 + 88);
    LODWORD(v223) = *MEMORY[0x277D1D368];
    v221 = (v204 + 8);
    v220 = (v204 + 96);
    LODWORD(v219) = *MEMORY[0x277D1D360];
    v214 = (v245 + 8);
    v229 = (v245 + 32);
    v230 = MEMORY[0x277D84F90];
    v20 = v241;
    while (1)
    {
      if (v130 >= *(v20 + 16))
      {
        goto LABEL_115;
      }

      v232 = ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v44 = *(v245 + 72);
      (*(v245 + 16))(v40, &v232[v20 + v44 * v130], v24);
      OnScreenContent.content.getter();
      v131 = *v242;
      v132 = (*v242)(a1, v9);
      if (v132 == v223)
      {
        (*v220)(a1, v9);
        v133 = type metadata accessor for OnScreenContent.Document();
        v134 = a1;
        v76 = v133;
        v135 = *(v133 - 8);
        v136 = v218;
        (*(v135 + 32))(v218, v134, v133);
        (*(v135 + 56))(v136, 0, 1, v76);
      }

      else
      {
        v76 = type metadata accessor for OnScreenContent.Document();
        v136 = v218;
        (*(*(v76 - 1) + 56))(v218, 1, 1, v76);
        (*v221)(a1, v9);
      }

      type metadata accessor for OnScreenContent.Document();
      v137 = *(v76 - 1);
      if ((*(v137 + 48))(v136, 1, v76) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v136, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
        v138 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v138 - 8) + 56))(v231, 1, 1, v138);
        v47 = v217;
        v40 = v225;
      }

      else
      {
        v139 = v231;
        OnScreenContent.Document.entity.getter();
        (*(v137 + 8))(v136, v76);
        v140 = type metadata accessor for TypedValue.EntityIdentifierValue();
        v141 = (*(*(v140 - 8) + 48))(v139, 1, v140);
        v142 = v139;
        v47 = v217;
        v40 = v225;
        if (v141 != 1)
        {
          goto LABEL_56;
        }
      }

      outlined destroy of OnScreenContent.Document?(v231, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v143 = v209;
      OnScreenContent.content.getter();
      v144 = v131(v143, v9);
      if (v144 == v219)
      {
        (*v220)(v143, v9);
        v76 = type metadata accessor for OnScreenContent.Image();
        v145 = *(v76 - 1);
        (*(v145 + 32))(v47, v143, v76);
        (*(v145 + 56))(v47, 0, 1, v76);
      }

      else
      {
        v76 = type metadata accessor for OnScreenContent.Image();
        (*(*(v76 - 1) + 56))(v47, 1, 1, v76);
        (*v221)(v143, v9);
      }

      type metadata accessor for OnScreenContent.Image();
      v146 = *(v76 - 1);
      if ((*(v146 + 48))(v47, 1, v76) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v47, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
        v147 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v147 - 8) + 56))(v228, 1, 1, v147);
LABEL_71:
        outlined destroy of OnScreenContent.Document?(v228, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
        v151 = *v229;
        (*v229)(v227, v40, v24);
        v152 = v230;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v246 = v152;
        if ((v153 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v152 + 2) + 1, 1);
          v152 = v246;
        }

        v155 = *(v152 + 2);
        v154 = *(v152 + 3);
        v76 = (v155 + 1);
        v156 = v152;
        v20 = v241;
        if (v155 >= v154 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v154 > 1, v155 + 1, 1);
          v20 = v241;
          v156 = v246;
        }

        *(v156 + 2) = v76;
        v230 = v156;
        v74 = v151(&v232[v156 + v155 * v44], v227, v24);
        goto LABEL_57;
      }

      v148 = v228;
      OnScreenContent.Image.entity.getter();
      (*(v146 + 8))(v47, v76);
      v149 = type metadata accessor for TypedValue.EntityIdentifierValue();
      v150 = (*(*(v149 - 8) + 48))(v148, 1, v149);
      v142 = v148;
      if (v150 == 1)
      {
        goto LABEL_71;
      }

LABEL_56:
      outlined destroy of OnScreenContent.Document?(v142, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v74 = (*v214)(v40, v24);
      v20 = v241;
LABEL_57:
      ++v130;
      a1 = v226;
      if (v238 == v130)
      {
        goto LABEL_77;
      }
    }
  }

  v230 = MEMORY[0x277D84F90];
LABEL_77:
  v246 = v230;

  v76 = v213;
  specialized MutableCollection<>.sort(by:)(&v246);
  if (v76)
  {
    goto LABEL_118;
  }

  v226 = 0;
  v20 = &v247;
  v74 = specialized Array.append<A>(contentsOf:)(v246);
  v157 = v203;
  if (v239)
  {
    v44 = 0;
    v242 = (v245 + 16);
    v40 = (v204 + 88);
    LODWORD(v238) = *MEMORY[0x277D1D360];
    v228 = (v204 + 96);
    v229 = (v204 + 8);
    v227 = (v245 + 32);
    v232 = (v245 + 8);
    v231 = MEMORY[0x277D84F90];
    v158 = v243;
    while (1)
    {
      if (v44 >= v158[2])
      {
        goto LABEL_116;
      }

      v159 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v160 = v9;
      v161 = *(v245 + 72);
      (*(v245 + 16))(v233, v158 + v159 + v161 * v44, v24);
      OnScreenContent.content.getter();
      v162 = (*v40)(v157, v160);
      if (v162 == v238)
      {
        (*v228)(v157, v160);
        v47 = type metadata accessor for OnScreenContent.Image();
        v20 = (v47 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v163 = *(v47 - 8);
        v76 = v215;
        (*(v163 + 32))(v215, v157, v47);
        (*(v163 + 56))(v76, 0, 1, v47);
      }

      else
      {
        v47 = type metadata accessor for OnScreenContent.Image();
        v20 = (v47 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v76 = v215;
        (*(*(v47 - 8) + 56))(v215, 1, 1, v47);
        (*v229)(v157, v160);
      }

      type metadata accessor for OnScreenContent.Image();
      a1 = *(v47 - 8);
      if ((*(a1 + 48))(v76, 1, v47) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v76, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
      }

      else
      {
        v20 = OnScreenContent.Image.isSnapshot.getter();
        v164 = *(a1 + 8);
        a1 += 8;
        v164(v76, v47);
        if (v20)
        {
          a1 = *v227;
          (*v227)(v206, v233, v24);
          v20 = v231;
          v165 = swift_isUniquelyReferenced_nonNull_native();
          v246 = v20;
          if ((v165 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
            v20 = v246;
          }

          v167 = *(v20 + 16);
          v166 = *(v20 + 24);
          v47 = v167 + 1;
          if (v167 >= v166 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v166 > 1, v167 + 1, 1);
            v20 = v246;
          }

          *(v20 + 16) = v47;
          v231 = v20;
          v168 = v20 + v159 + v167 * v161;
          v24 = v244;
          v74 = (a1)(v168, v206, v244);
          goto LABEL_82;
        }
      }

      v74 = (*v232)(v233, v24);
LABEL_82:
      ++v44;
      v9 = v240;
      v158 = v243;
      if (v239 == v44)
      {
        goto LABEL_95;
      }
    }
  }

  v231 = MEMORY[0x277D84F90];
LABEL_95:
  v246 = v231;

  v76 = v226;
  specialized MutableCollection<>.sort(by:)(&v246);
  if (v76)
  {
    goto LABEL_118;
  }

  v232 = 0;
  specialized Array.append<A>(contentsOf:)(v246);
  v169 = v199;
  if (v199)
  {
    v242 = *(v245 + 16);
    v238 = ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v170 = v238 + v200;
    v171 = *(v245 + 72);
    v240 = (v198 + 8);
    v172 = (v197 + 8);
    v239 = (v245 + 32);
    v245 += 16;
    v233 = (v245 - 8);
    v173 = MEMORY[0x277D84F90];
    v174 = v205;
    do
    {
      v175 = v244;
      (v242)(v174, v170, v244);
      v176 = v236;
      OnScreenContent.uiMetadata.getter();
      v177 = v234;
      OnScreenContent.UIMetadata.window.getter();
      (*v240)(v176, v237);
      v178 = OnScreenContent.UIMetadata.Window.isActive.getter();
      (*v172)(v177, v235);
      if (v178)
      {
        (*v233)(v174, v175);
      }

      else
      {
        v179 = *v239;
        (*v239)(v216, v174, v175);
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v246 = v173;
        if ((v180 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v173[2] + 1, 1);
          v174 = v205;
          v173 = v246;
        }

        v182 = v173[2];
        v181 = v173[3];
        if (v182 >= v181 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v181 > 1, v182 + 1, 1);
          v174 = v205;
          v173 = v246;
        }

        v173[2] = v182 + 1;
        v179(v238 + v173 + v182 * v171, v216, v244);
      }

      v170 += v171;
      --v169;
    }

    while (v169);
  }

  else
  {
    v173 = MEMORY[0x277D84F90];
  }

  v246 = v173;

  v76 = v232;
  specialized MutableCollection<>.sort(by:)(&v246);
  if (v76)
  {
LABEL_118:

    __break(1u);
  }

  else
  {

    specialized Array.append<A>(contentsOf:)(v246);
    if (one-time initialization token for contentRanker != -1)
    {
      swift_once();
    }

    v183 = type metadata accessor for Logger();
    __swift_project_value_buffer(v183, static Logger.contentRanker);
    v184 = v247;

    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v246 = v188;
      *v187 = 136315650;
      *(v187 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x52746E65746E6F43, 0xED000072656B6E61, &v246);
      *(v187 + 12) = 2080;
      *(v187 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E6F63286B6E6172, 0xEF293A73746E6574, &v246);
      *(v187 + 22) = 2080;
      v189 = MEMORY[0x2530570A0](v184, v244);
      v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v246);

      *(v187 + 24) = v191;
      _os_log_impl(&dword_24FD67000, v185, v186, "%s.%s ranked content: %s", v187, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v188, -1, -1);
      MEMORY[0x253057F40](v187, -1, -1);
    }

    v192 = v202;
    v193 = type metadata accessor for OSSignpostID();
    (*(*(v193 - 8) + 56))(v192, 1, 1, v193);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("RankScreenContent.Time", 22, 2, v192);
    outlined destroy of OnScreenContent.Document?(v192, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    return v184;
  }

  return result;
}

uint64_t CallEmergencyServicesTool.invocation.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = *(v5 + 56);
  v3 = *(v5 + 64);

  return v1;
}

unint64_t EmergencyServicesInvocation.EmergencyService.rawValue.getter(char a1)
{
  result = 0x6853657669746361;
  switch(a1)
  {
    case 1:
      result = 0x746C7561737361;
      break;
    case 2:
      result = 0x6469636341726163;
      break;
    case 3:
      result = 0x7265676E6164;
      break;
    case 4:
      result = 1701996902;
      break;
    case 5:
      result = 0x75617373416E7567;
      break;
    case 6:
      result = 1886152040;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x697070616E64696BLL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x65736F647265766FLL;
      break;
    case 11:
      result = 0x636E617473627573;
      break;
    case 12:
      result = 0x7369726F72726574;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x73416C6175786573;
      break;
    case 16:
      result = 0x6F436E6F73696F70;
      break;
    case 17:
      result = 0x636E656772656D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UseDeviceAssistantTool.invocation.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1[6];
  v4 = v9[7];
  v5 = v9[8];
  v6 = v9[9];
  v7 = v9[10];
  result = outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v3, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t one-time initialization function for schema()
{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static EmergencyServicesInvocation.schema);
  __swift_project_value_buffer(v0, static EmergencyServicesInvocation.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static UseDeviceAssistantTool.UseDeviceAssistantInvocation.schema);
  __swift_project_value_buffer(v0, static UseDeviceAssistantTool.UseDeviceAssistantInvocation.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static ModelResponse.schema);
  __swift_project_value_buffer(v0, static ModelResponse.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EmergencyServicesInvocation.EmergencyService(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EmergencyServicesInvocation.EmergencyService.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EmergencyServicesInvocation.EmergencyService()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EmergencyServicesInvocation.EmergencyService()
{
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EmergencyServicesInvocation.EmergencyService()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyServicesInvocation.EmergencyService@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized EmergencyServicesInvocation.EmergencyService.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyServicesInvocation.EmergencyService@<X0>(unint64_t *a1@<X8>)
{
  result = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance EmergencyServicesInvocation.EmergencyService(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  v5 = lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();

  return MEMORY[0x2821662E8](a1, a2, v4, v5);
}

uint64_t protocol witness for Generable.init(from:) in conformance EmergencyServicesInvocation.EmergencyService()
{
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  return CaseIterable<>.init(from:)();
}

uint64_t protocol witness for Generable.init(from:) in conformance EmergencyServicesInvocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v6 = type metadata accessor for GeneratedValues();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    *a2 = v8;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t key path getter for CallEmergencyServicesTool.invocation : CallEmergencyServicesTool@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 48);
  *(a2 + 16) = v4;
}

uint64_t key path setter for CallEmergencyServicesTool.invocation : CallEmergencyServicesTool(__int128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallEmergencyServicesTool.invoke(arguments:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](CallEmergencyServicesTool.invoke(arguments:), 0, 0);
}

uint64_t CallEmergencyServicesTool.invoke(arguments:)()
{
  v21 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.modelInteraction);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315394;
    v10 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v7);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v20);
    _os_log_impl(&dword_24FD67000, v3, v4, "ACME invoked call_emergency_services tool with situation '%s', rationale: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 24);
  v16 = *(v0 + 48);
  swift_getKeyPath();
  v17 = swift_task_alloc();
  v17[2] = v13;
  v17[3] = v16;
  v17[4] = v15;
  v17[5] = v14;
  *(v0 + 16) = v13;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v18 = *(v0 + 8);

  return v18(1701736292, 0xE400000000000000);
}

uint64_t CallEmergencyServicesTool.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 8);

  v4 = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for CallEmergencyServicesTool()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *v2;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool;

  return CallEmergencyServicesTool.invoke(arguments:)(v7, v4, v5);
}

{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D0DDF0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of ContentLoaderProviding.load();

  return MEMORY[0x2821661B8](a1, a2, a3, a4);
}

uint64_t protocol witness for DynamicArgumentsTooling.argumentsSchema.getter in conformance CallEmergencyServicesTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);

  return MEMORY[0x2821661B0](a1, v2);
}

uint64_t protocol witness for DynamicArgumentsTooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D0DDF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  *v8 = v3;
  v8[1] = dispatch thunk of ContentLoaderProviding.load();

  return MEMORY[0x2821661C0](a1, a2, a3, v9);
}

uint64_t protocol witness for static Generable.schema.getter in conformance EmergencyServicesInvocation@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Schema();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

double protocol witness for Generable.init(from:) in conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized UseDeviceAssistantTool.UseDeviceAssistantInvocation.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t key path getter for UseDeviceAssistantTool.invocation : UseDeviceAssistantTool@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3[10];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v4, v5, v6);
}

uint64_t key path setter for UseDeviceAssistantTool.invocation : UseDeviceAssistantTool(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v2 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in UseDeviceAssistantTool.invocation.setter(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = *(a2 + 16);
  *(a1 + 3) = *a2;
  *(a1 + 4) = v7;
  a1[10] = *(a2 + 32);
  outlined init with copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(a2, v9);
  return outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v2, v3, v4);
}

uint64_t UseDeviceAssistantTool.generativeTask.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
}

uint64_t key path getter for UseDeviceAssistantTool.generativeTask : UseDeviceAssistantTool@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t key path setter for UseDeviceAssistantTool.generativeTask : UseDeviceAssistantTool(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in UseDeviceAssistantTool.generativeTask.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = a2;
}

uint64_t UseDeviceAssistantTool.invoke(arguments:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  *(v2 + 112) = *a1;
  *(v2 + 80) = *(a1 + 8);
  *(v2 + 88) = *(a1 + 16);
  *(v2 + 104) = *(a1 + 32);
  return MEMORY[0x2822009F8](UseDeviceAssistantTool.invoke(arguments:), 0, 0);
}

uint64_t UseDeviceAssistantTool.invoke(arguments:)()
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24FD67000, v2, v3, "ACME invoked alternative_executor_required tool", v4, 2u);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v22 = *(v0 + 80);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);

  *(v0 + 16) = v7 & 1;
  *(v0 + 24) = v22;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0 + 16;
  *(v0 + 56) = v8;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  *(v0 + 56) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 88);
  if (v10 && (**(v0 + 64) & 1) != 0)
  {
    v11 = *(v8 + 88);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24FD67000, v12, v13, "cancelling task", v14, 2u);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    v15 = type metadata accessor for ModelResponse();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x2530571A0](v10, v15, v16, MEMORY[0x277D84950]);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = swift_task_isCancelled() & 1;

      _os_log_impl(&dword_24FD67000, v17, v18, "checking cancelled task: %{BOOL}d", v19, 8u);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {
    }
  }

  v20 = *(v0 + 8);

  return v20(1701736292, 0xE400000000000000);
}

uint64_t UseDeviceAssistantTool.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(*(v0 + 6), *(v0 + 7), *(v0 + 8));
  v5 = *(v0 + 11);

  v6 = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallEmergencyServicesTool(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UseDeviceAssistantTool()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UseDeviceAssistantTool.UseDeviceAssistantInvocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UseDeviceAssistantTool.UseDeviceAssistantInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyServicesInvocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyServicesInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation()
{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation()
{
  result = lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation;
  if (!lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation;
  if (!lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation);
  }

  return result;
}

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance UseDeviceAssistantTool(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 56) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Tooling.invoke(arguments:) in conformance UseDeviceAssistantTool;

  return UseDeviceAssistantTool.invoke(arguments:)(v3 + 16);
}

{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 56);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t _s26GenerativeAssistantActions25CallEmergencyServicesToolC0A19FunctionsFoundation23DynamicArgumentsToolingAadEP4nameSSvgTW_0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t _s26GenerativeAssistantActions25CallEmergencyServicesToolC0A19FunctionsFoundation23DynamicArgumentsToolingAadEP16usageDescriptionSSvgTW_0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t protocol witness for DynamicArgumentsTooling.argumentsSchema.getter in conformance UseDeviceAssistantTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);

  return MEMORY[0x2821661B0](a1, v2);
}

uint64_t protocol witness for DynamicArgumentsTooling.invoke(arguments:) in conformance UseDeviceAssistantTool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D0DDF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  *v8 = v3;
  v8[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return MEMORY[0x2821661C0](a1, a2, a3, v9);
}

uint64_t lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CallEmergencyServicesTool.invocation.setter()
{
  return partial apply for closure #1 in CallEmergencyServicesTool.invocation.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 64);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 64) = v2;
}

uint64_t _s26GenerativeAssistantActions09UseDeviceB4ToolC14generativeTask024_3420544834CA19FBE7B19D9L7B89C959LLScTyAA13ModelResponseVs5Error_pGSgvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
}

uint64_t outlined init with copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions09UseDeviceB4ToolC0deB10InvocationVSgMd, &_s26GenerativeAssistantActions09UseDeviceB4ToolC0deB10InvocationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized EmergencyServicesInvocation.EmergencyService.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t specialized UseDeviceAssistantTool.UseDeviceAssistantInvocation.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    GeneratedValues.extract<A>(field:)();
    v6 = type metadata accessor for GeneratedValues();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    *a2 = v8;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService()
{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyServicesInvocation.EmergencyService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyServicesInvocation.EmergencyService(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [EmergencyServicesInvocation.EmergencyService] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A];
  if (!lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeAssistantActions27EmergencyServicesInvocationV0D7ServiceOGMd, &_sSay26GenerativeAssistantActions27EmergencyServicesInvocationV0D7ServiceOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A]);
  }

  return result;
}

id specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  [result invalidateRestrictionCache];

  result = [v0 sharedConnection];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isScreenShotAllowed];

  if (one-time initialization token for managedConfiguration != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.managedConfiguration);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315650;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000024FE1CDA0, &v10);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE35B10, &v10);
    *(v8 + 22) = 1024;
    *(v8 + 24) = v4;
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s isScreenshotAllowed: %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  return v4;
}

uint64_t RunningBoardAssertion.__deallocating_deinit()
{
  RunningBoardAssertion.release()();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RunningBoardAssertion.release()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = one-time initialization token for runningBoard;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.runningBoard);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Invalidating RBS assertion.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    [v4 invalidate];
    v9 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

GenerativeAssistantActions::Attribution __swiftcall Attribution.init(displayUrl:url:)(Swift::String displayUrl, Swift::String url)
{
  *v2 = displayUrl;
  v2[1] = url;
  result.url = url;
  result.displayUrl = displayUrl;
  return result;
}

uint64_t static GeneratedResponse.failureResponse(_:partnerName:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v71 = a3;
  v65 = a4;
  v5 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v77 = *(v5 - 8);
  v78 = v77;
  v79 = v5;
  v6 = *(v77 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = (&v61 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v61 - v19);
  v21 = type metadata accessor for GeneratedResponse(0);
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v73 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v74 = &v61 - v27;
  v28 = *a1;
  v69 = *a1;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v81[0]) = v28;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v30 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v81, 0, v29);
  countAndFlagsBits = v30._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v31 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v77 = *(v77 + 72);
  v32 = swift_allocObject();
  v78 = v32;
  *(v32 + 16) = xmmword_24FE1A560;
  v62 = v31;
  v33 = (v32 + v31);
  *v33 = v30;
  object = v30._object;
  v75 = v33;
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v74, 1, 1, v34);
  v68 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v81[3] = v68;
  v81[4] = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v35 = v73;
  v36 = &v73[v22[16]];
  v80 = 49;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v38 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v80, 0, v37);

  *v36 = v38;
  v39 = object;
  v40 = v74;
  *v35 = countAndFlagsBits;
  *(v35 + 8) = v39;
  *(v35 + 16) = v78;
  v41 = MEMORY[0x277D84F90];
  *(v35 + 24) = MEMORY[0x277D84F90];
  *(v35 + 32) = v69;
  *(v35 + 40) = v41;
  *(v35 + 48) = v41;
  *(v35 + v22[17]) = v41;
  *(v35 + v22[14]) = 1;
  v42 = (v35 + v22[15]);
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  outlined init with copy of URL?(v40, v35 + v22[12]);
  v44 = (v35 + v22[13]);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  *(v35 + v22[18]) = 0;
  *(v35 + v22[19]) = 0;
  v45 = (v35 + v22[20]);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v46 = (v35 + v22[21]);
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v81, v35 + v22[23]);
  *(v35 + v22[22]) = xmmword_24FE1AE00;

  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_16:
    outlined destroy of OnScreenContent.Document?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_18:
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v35, v65, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v81);
    return _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v35, type metadata accessor for GeneratedResponse);
  }

  v47._countAndFlagsBits = countAndFlagsBits;
  v47._object = v39;
  v48 = GeneratedResponse.updateText(_:)(v47);

  v70 = v48._object;
  v71 = v48._countAndFlagsBits;
  *v35 = v48;
  v49 = (v63 + 56);
  v50 = (v63 + 48);
  v40 = *(v78 + 16);

  v52 = 0;
  countAndFlagsBits = result;
  while (v52 == v40)
  {
    v53 = 1;
    v52 = v40;
LABEL_8:
    (*v49)(v18, v53, 1, v11);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v18, v20, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v50)(v20, 1, v11) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v35 = v73;
      goto LABEL_18;
    }

    v35 = *v20;
    outlined init with take of GeneratedResponse.RichContentEntity(v20 + *(v11 + 48), v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v10, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v58 = v64;
      v59 = v70;
      *v64 = v71;
      v58[1] = v59;
      swift_storeEnumTagMultiPayload();

      v60 = countAndFlagsBits;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
        v60 = result;
        if ((v35 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      if (v35 >= v60[2])
      {
        goto LABEL_21;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v64, v60 + v62 + v35 * v77);
      countAndFlagsBits = v60;
      *(v73 + 2) = v60;
    }
  }

  if ((v52 & 0x8000000000000000) == 0)
  {
    if (v52 >= *(v78 + 16))
    {
      goto LABEL_20;
    }

    v54 = v76;
    v55 = v75 + v52 * v77;
    v56 = *(v11 + 48);
    *v76 = v52;
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v55, v54 + v56, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v54, v18, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v53 = 0;
    ++v52;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static GeneratedResponse.dismissSiriUIResponse(partnerName:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v67 = a2;
  v63 = a3;
  v3 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v73 = *(v3 - 8);
  v4 = v73;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v62 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = (&v59 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v59 - v18);
  v20 = type metadata accessor for GeneratedResponse(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v59 - v27;
  v68 = &v59 - v27;
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v30 = *(v4 + 72);
  v31 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v71 = v30;
  v32 = swift_allocObject();
  v72 = v32;
  v73 = v3;
  *(v32 + 16) = xmmword_24FE1A560;
  v60 = v31;
  v33 = (v32 + v31);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v69 = v33;
  swift_storeEnumTagMultiPayload();
  countAndFlagsBits = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v75[3] = countAndFlagsBits;
  v75[4] = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v34 = (v24 + v21[16]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v74 = 49;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v36 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v74, 0, v35);
  v37 = v68;

  *v34 = v36;
  v38 = v72;
  *v24 = 0;
  *(v24 + 8) = 0xE000000000000000;
  *(v24 + 16) = v38;
  *(v24 + 24) = &outlined read-only object #0 of static GeneratedResponse.dismissSiriUIResponse(partnerName:);
  *(v24 + 32) = 64;
  v39 = MEMORY[0x277D84F90];
  *(v24 + 40) = MEMORY[0x277D84F90];
  *(v24 + 48) = v39;
  *(v24 + v21[17]) = v39;
  *(v24 + v21[14]) = 2;
  v40 = (v24 + v21[15]);
  v41 = v67;
  *v40 = v66;
  v40[1] = v41;
  outlined init with copy of URL?(v37, v24 + v21[12]);
  v42 = (v24 + v21[13]);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  *(v24 + v21[18]) = 0;
  *(v24 + v21[19]) = 0;
  v43 = (v24 + v21[20]);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = (v24 + v21[21]);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v75, v24 + v21[23]);
  *(v24 + v21[22]) = xmmword_24FE1AE00;

  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_16:
    outlined destroy of OnScreenContent.Document?(v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_18:
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v24, v63, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v75);
    return _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v24, type metadata accessor for GeneratedResponse);
  }

  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = GeneratedResponse.updateText(_:)(v45);
  boxed_opaque_existential_1 = v46._object;
  countAndFlagsBits = v46._countAndFlagsBits;
  *v24 = v46;
  v67 = v24;
  v47 = v38[2];
  v48 = (v61 + 56);
  v49 = (v61 + 48);

  v24 = 0;
  v66 = v38;
  while (v24 == v47)
  {
    v51 = 1;
    v24 = v47;
LABEL_8:
    (*v48)(v17, v51, 1, v10);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v17, v19, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v49)(v19, 1, v10) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v24 = v67;
      goto LABEL_18;
    }

    v37 = *v19;
    outlined init with take of GeneratedResponse.RichContentEntity(v19 + *(v10 + 48), v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v9, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v56 = v62;
      v57 = boxed_opaque_existential_1;
      *v62 = countAndFlagsBits;
      v56[1] = v57;
      swift_storeEnumTagMultiPayload();

      v58 = v66;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v58);
        v58 = result;
        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      if (v37 >= v58[2])
      {
        goto LABEL_21;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v62, v58 + v60 + v37 * v71);
      v66 = v58;
      *(v67 + 16) = v58;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v72 + 16))
    {
      goto LABEL_20;
    }

    v52 = v70;
    v53 = v69 + v24 * v71;
    v54 = *(v10 + 48);
    *v70 = v24;
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v53, v52 + v54, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v52, v17, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v51 = 0;
    ++v24;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int GeneratedResponse.Outcome.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

uint64_t GeneratedResponse.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GeneratedResponse.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeneratedResponse.value.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t GeneratedResponse.punchOutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GeneratedResponse(0) + 40);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GeneratedResponse.summary.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedResponse(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedResponse.outcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GeneratedResponse(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t GeneratedResponse.partnerName.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedResponse(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedResponse.contentDisclaimer.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedResponse(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedResponse.criticalDisclaimers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 60));
}

uint64_t GeneratedResponse.modifiedUserRequest.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedResponse(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedResponse.contentReferenceOverride.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedResponse(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedResponse.visualIntelligenceImage.getter()
{
  v1 = v0 + *(type metadata accessor for GeneratedResponse(0) + 80);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

Swift::String __swiftcall GeneratedResponse.updateText(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v150 = *MEMORY[0x277D85DE8];
  v133 = type metadata accessor for CharacterSet();
  v126 = *(v133 - 8);
  v3 = *(v126 + 64);
  v4 = MEMORY[0x28223BE20](v133);
  v128 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v126 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v126 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  *&v130 = *(v16 - 8);
  v17 = *(v130 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v126 - v18;
  v145 = countAndFlagsBits;
  v146 = object;

  Regex.init(_regexString:version:)();
  v137 = countAndFlagsBits;
  p_isa = &object->isa;
  *&v147 = countAndFlagsBits;
  *(&v147 + 1) = object;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v129 = v19;
  v131 = v16;
  v20 = BidirectionalCollection<>.matches<A, B>(of:)();
  v21 = v20[2];
  v127 = v20;
  if (v21)
  {
    v23 = *(v12 + 16);
    v22 = v12 + 16;
    v24 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v134 = *(v22 + 56);
    v135 = v23;
    v136 = v22;
    v25 = (v22 - 8);
    v139 = MEMORY[0x277D84F90];
    v23(v15, v24, v11);
    while (1)
    {
      v143 = v137;
      v144 = p_isa;
      swift_getKeyPath();
      Regex.Match.subscript.getter();

      (*v25)(v15, v11);
      v140 = v147;
      v141 = v148;
      v142 = v149;
      v28 = type metadata accessor for Locale();
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v29 = StringProtocol.range<A>(of:options:range:locale:)();
      v31 = v30;
      v33 = v32;
      outlined destroy of OnScreenContent.Document?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if ((v33 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v139 + 2) + 1, 1, v139);
        }

        v35 = *(v139 + 2);
        v34 = *(v139 + 3);
        if (v35 >= v34 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v139);
        }

        v26 = v139;
        *(v139 + 2) = v35 + 1;
        v27 = &v26[16 * v35];
        *(v27 + 4) = v29;
        *(v27 + 5) = v31;
      }

      v24 += v134;
      if (!--v21)
      {
        break;
      }

      v135(v15, v24, v11);
    }
  }

  else
  {
    v139 = MEMORY[0x277D84F90];
  }

  (*(v130 + 8))(v129, v131);

  v36 = objc_allocWithZone(MEMORY[0x277CCA948]);
  *&v147 = 0;
  v37 = [v36 initWithTypes:2064 error:&v147];
  if (v37)
  {
    v38 = v37;
    v39 = v147;
    v41 = v137;
    v40 = p_isa;
    v42 = MEMORY[0x253056EA0](v137, p_isa);
    v43 = MEMORY[0x253057010](v41, v40);
    v127 = v38;
    v44 = [v38 matchesInString:v42 options:0 range:{0, v43}];

    type metadata accessor for NSTextCheckingResult();
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v139;
    v47 = GeneratedResponse.removeMatchesOverlapWithLinks(_:_:_:)(v45, v139);

    if (v47 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253057520](v121))
    {
      v50 = v47 & 0xC000000000000001;
      p_isa = (v47 + 32);
      v139 = (v47 & 0xFFFFFFFFFFFFFF8);
      v129 = *MEMORY[0x277CCA6E8];
      v131 = (v126 + 8);
      v51 = &unk_279699000;
      *&v48 = 136315394;
      v130 = v48;
      v52 = &unk_279699000;
      v134 = v47;
      v137 = v47 & 0xC000000000000001;
      while (1)
      {
        if (__OFSUB__(i--, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v50)
        {
          v54 = MEMORY[0x2530574C0](i, v47);
          goto LABEL_24;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v139 + 2))
        {
          goto LABEL_56;
        }

        v54 = p_isa[i];
LABEL_24:
        v55 = v54;
        v56 = [v54 v51[148]];
        if (v56 == 16)
        {
          v72 = [v55 addressComponents];
          if (v72)
          {
            v46 = v72;
            type metadata accessor for NSTextCheckingKey(0);
            v45 = lazy protocol witness table accessor for type NSTextCheckingKey and conformance NSTextCheckingKey();
            v73 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v73 + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(v129), v46 = v74, , (v46 & 1) != 0))
            {
              if (one-time initialization token for genFromTextController != -1)
              {
                swift_once();
              }

              v75 = type metadata accessor for Logger();
              __swift_project_value_buffer(v75, static Logger.genFromTextController);
              v76 = v55;

              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                *&v147 = v80;
                *v79 = v130;
                v81 = Dictionary.description.getter();
                v83 = v82;

                v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v147);

                *(v79 + 4) = v84;
                *(v79 + 12) = 2080;
                v52 = &unk_279699000;
                [v76 range];
                v85 = _NSRange.description.getter();
                v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v147);

                *(v79 + 14) = v87;
                _os_log_impl(&dword_24FD67000, v77, v78, "address: %s range: %s", v79, 0x16u);
                swift_arrayDestroy();
                v88 = v80;
                v51 = &unk_279699000;
                MEMORY[0x253057F40](v88, -1, -1);
                MEMORY[0x253057F40](v79, -1, -1);
              }

              else
              {

                v52 = &unk_279699000;
              }

              [v76 range];
              v45 = v145;
              v46 = v146;
              Range<>.init(_:in:)();
              if (v104)
              {

                v47 = v134;
                v50 = v137;
              }

              else
              {
                v105 = String.subscript.getter();
                v106 = MEMORY[0x253056F50](v105);
                v108 = v107;

                *&v147 = v106;
                *(&v147 + 1) = v108;
                v109 = v132;
                static CharacterSet.urlQueryAllowed.getter();
                lazy protocol witness table accessor for type String and conformance String();
                v110 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
                v112 = v111;
                (*v131)(v109, v133);
                if (!v112)
                {

                  v110 = v106;
                  v112 = v108;
                }

                v47 = v134;
                *&v147 = 0;
                *(&v147 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(18);

                *&v147 = 91;
                *(&v147 + 1) = 0xE100000000000000;
                MEMORY[0x253056FE0](v106, v108);

                MEMORY[0x253056FE0](0x2F3A7370616D285DLL, 0xEC0000003D713F2FLL);
                MEMORY[0x253056FE0](v110, v112);

                MEMORY[0x253056FE0](41, 0xE100000000000000);
                v45 = *(&v147 + 1);
                lazy protocol witness table accessor for type String and conformance String();
                v46 = &v145;
                String.replaceSubrange<A>(_:with:)();

                v50 = v137;
                v51 = &unk_279699000;
                v52 = &unk_279699000;
              }
            }

            else
            {

              v52 = &unk_279699000;
            }

            goto LABEL_17;
          }
        }

        else if (v56 == 2048)
        {
          v57 = [v55 phoneNumber];
          if (v57)
          {
            v58 = v57;
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            if (one-time initialization token for genFromTextController != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            __swift_project_value_buffer(v62, static Logger.genFromTextController);

            v63 = v55;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *&v147 = v67;
              *v66 = v130;
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v147);

              *(v66 + 4) = v68;
              *(v66 + 12) = 2080;
              [v63 v52[150]];
              v69 = _NSRange.description.getter();
              v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v147);

              *(v66 + 14) = v71;
              _os_log_impl(&dword_24FD67000, v64, v65, "Phone Number: %s  range: %s", v66, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x253057F40](v67, -1, -1);
              MEMORY[0x253057F40](v66, -1, -1);
            }

            else
            {
            }

            [v63 v52[150]];
            v45 = v145;
            v46 = v146;
            v89 = Range<>.init(_:in:)();
            if ((v91 & 1) == 0)
            {
              v135 = v90;
              v136 = v89;
              v92 = String.subscript.getter();
              v93 = MEMORY[0x253056F50](v92);
              v95 = v94;

              *&v147 = v93;
              *(&v147 + 1) = v95;
              v96 = v132;
              static CharacterSet.decimalDigits.getter();
              v97 = v128;
              CharacterSet.inverted.getter();
              v98 = *v131;
              v99 = v133;
              (*v131)(v96, v133);
              lazy protocol witness table accessor for type String and conformance String();
              v100 = StringProtocol.components(separatedBy:)();
              v98(v97, v99);
              v52 = &unk_279699000;
              *&v147 = v100;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
              v101 = BidirectionalCollection<>.joined(separator:)();
              v103 = v102;

              *&v147 = 91;
              *(&v147 + 1) = 0xE100000000000000;
              MEMORY[0x253056FE0](v93, v95);

              MEMORY[0x253056FE0](0x3A6C6574285DLL, 0xE600000000000000);
              MEMORY[0x253056FE0](v101, v103);
              v47 = v134;

              MEMORY[0x253056FE0](41, 0xE100000000000000);
              v45 = *(&v147 + 1);
              lazy protocol witness table accessor for type String and conformance String();
              v46 = &v145;
              String.replaceSubrange<A>(_:with:)();
            }

            v50 = v137;
            v51 = &unk_279699000;
            goto LABEL_17;
          }
        }

LABEL_17:
        if (!i)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      if (v47 < 0)
      {
        v121 = v47;
      }

      else
      {
        v121 = v47 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_61:
  }

  else
  {
    v113 = v147;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();

    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Logger.genFromTextController);
    v115 = v45;
    v46 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      v119 = v45;
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 4) = v120;
      *v118 = v120;
      _os_log_impl(&dword_24FD67000, v46, v116, "Failed to create data detector: %@", v117, 0xCu);
      outlined destroy of OnScreenContent.Document?(v118, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v118, -1, -1);
      MEMORY[0x253057F40](v117, -1, -1);
    }

    else
    {
LABEL_54:
    }
  }

  v122 = v145;
  v123 = v146;
  v124 = *MEMORY[0x277D85DE8];
  result._object = v123;
  result._countAndFlagsBits = v122;
  return result;
}