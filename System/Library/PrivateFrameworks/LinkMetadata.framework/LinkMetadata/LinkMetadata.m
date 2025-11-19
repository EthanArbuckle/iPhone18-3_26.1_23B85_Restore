id getLNLogCategoryGeneral()
{
  if (getLNLogCategoryGeneral_onceToken[0] != -1)
  {
    dispatch_once(getLNLogCategoryGeneral_onceToken, &__block_literal_global_4013);
  }

  v1 = getLNLogCategoryGeneral_logger;

  return v1;
}

id sub_18EF7FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18F093B5C();

  v9 = sub_18F0932BC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v9) != 1)
  {
    v10 = sub_18F09324C();
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v11 = [v5 initWithType:a1 bundleIdentifier:v8 url:v10];

  return v11;
}

uint64_t sub_18EF7FDF8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F093B8C();

  return v3;
}

id LSBundleRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_18EF7FDF8(v0);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v0;
      if ((sub_18F028A08() & 1) == 0)
      {
        v18 = [v14 URL];
        sub_18F09327C();

        v19 = sub_18F0932BC();
        OUTLINED_FUNCTION_0_5(v19);
        v20 = objc_allocWithZone(LNEffectiveBundleIdentifier);
        v12 = sub_18EF7FCF0(1, v7, v8, v4);
        goto LABEL_10;
      }

      v16 = [v14 containingBundleRecord];
      if (v16)
      {
        v17 = v16;
        v12 = LSBundleRecord.effectiveBundleIdentifier.getter();

LABEL_10:
        return v12;
      }
    }

    else
    {
    }

    return 0;
  }

  v9 = [v0 URL];
  sub_18F09327C();

  v10 = sub_18F0932BC();
  OUTLINED_FUNCTION_0_5(v10);
  v11 = objc_allocWithZone(LNEffectiveBundleIdentifier);
  return sub_18EF7FCF0(0, v7, v8, v4);
}

uint64_t OUTLINED_FUNCTION_0()
{
  result = v0;
  v3 = *(v1 - 288);
  v4 = *(v1 - 128);
  return result;
}

id OUTLINED_FUNCTION_0_1()
{

  return sub_18EFABB48(808334898, 0xE400000000000000, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  v4 = *(v0 + 16);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_13()
{
  v1 = *(v0 - 168);
  v2 = **(v0 - 160);
  return *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_once();
}

void sub_18EF802BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id getLNLogCategoryMetadata()
{
  if (getLNLogCategoryMetadata_onceToken[0] != -1)
  {
    dispatch_once(getLNLogCategoryMetadata_onceToken, &__block_literal_global_17);
  }

  v1 = getLNLogCategoryMetadata_logger;

  return v1;
}

uint64_t __getLNLogCategoryMetadata_block_invoke()
{
  getLNLogCategoryMetadata_logger = os_log_create(LNLogSubsystem, "Metadata");

  return MEMORY[0x1EEE66BB8]();
}

id LNValueTypeObjectClassesForCoding()
{
  if (LNValueTypeObjectClassesForCoding_onceToken != -1)
  {
    dispatch_once(&LNValueTypeObjectClassesForCoding_onceToken, &__block_literal_global_4999);
  }

  v1 = LNValueTypeObjectClassesForCoding_objectClassesForCoding;

  return v1;
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_18EF86A6C();
}

uint64_t sub_18EF825F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id getLNLogCategoryPolicy()
{
  if (getLNLogCategoryPolicy_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryPolicy_onceToken, &__block_literal_global_29);
  }

  v1 = getLNLogCategoryPolicy_logger;

  return v1;
}

uint64_t __getLNLogCategoryPolicy_block_invoke()
{
  getLNLogCategoryPolicy_logger = os_log_create(LNLogSubsystem, "Policy");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryConnection()
{
  if (getLNLogCategoryConnection_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryConnection_onceToken, &__block_literal_global_5);
  }

  v1 = getLNLogCategoryConnection_logger;

  return v1;
}

id getLNLogCategoryExecution()
{
  if (getLNLogCategoryExecution_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryExecution_onceToken, &__block_literal_global_8_4017);
  }

  v1 = getLNLogCategoryExecution_logger;

  return v1;
}

uint64_t __getLNLogCategoryConnection_block_invoke()
{
  getLNLogCategoryConnection_logger = os_log_create(LNLogSubsystem, "Connection");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_18EF82E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 OUTLINED_FUNCTION_2_1@<Q0>(__n128 *a1@<X8>)
{
  result = a1[1];
  v1[18] = result;
  v1[19].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18F0345A0(a1, a2, a3, a4, a5, v7, v6, v5);
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return sub_18F09444C();
}

unint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = *v0;

  return sub_18EFAF54C();
}

void OUTLINED_FUNCTION_2_15()
{

  JUMPOUT(0x193AD8780);
}

void OUTLINED_FUNCTION_2_16()
{

  JUMPOUT(0x193AD8780);
}

uint64_t sub_18EF83080(void *a1)
{
  v1 = a1;
  v2 = LSBundleRecord.isAppIntentsEnabled.getter();

  return v2 & 1;
}

uint64_t LSBundleRecord.isAppIntentsEnabled.getter()
{
  v1 = v0;
  if ([v0 isLinkEnabled])
  {
    return 1;
  }

  v2 = [v0 entitlements];
  OUTLINED_FUNCTION_2_18();
  v3 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v2 objectForKey:v3 ofClass:ObjCClassFromMetadata];

  if (!v5)
  {
    v68 = 0u;
    v69 = 0u;
    sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    v6 = [v1 entitlements];
    OUTLINED_FUNCTION_2_18();
    v7 = sub_18F093B5C();
    v8 = [v6 objectForKey:v7 ofClass:ObjCClassFromMetadata];

    if (v8)
    {
      sub_18F093FAC();
      goto LABEL_6;
    }

    v68 = 0u;
    v69 = 0u;
    sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    v10 = [v1 entitlements];
    v11 = sub_18F093B5C();
    sub_18EF825F4(0, &qword_1ED5FE760, 0x1E696AD98);
    v12 = [v10 objectForKey:v11 ofClass:swift_getObjCClassFromMetadata()];

    if (v12)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    v68 = v66;
    v69 = v67;
    if (*(&v67 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = [v65 BOOLValue];

        if (v13)
        {
          return 1;
        }
      }
    }

    else
    {
      sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 applicationExtensionRecords];
      sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
      sub_18F04C338();
      OUTLINED_FUNCTION_284();
      v16 = sub_18F093E6C();

      v64 = v16;
      if ((v16 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_18F093FFC();
        v17 = sub_18F093E8C();
        v25 = *(&v68 + 1);
        v16 = v68;
        v27 = *(&v69 + 1);
        v26 = v69;
        v28 = v70;
      }

      else
      {
        v29 = -1 << *(v16 + 32);
        v25 = v16 + 56;
        v26 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v28 = v31 & *(v16 + 56);

        v27 = 0;
      }

      v63 = v26;
      v32 = (v26 + 64) >> 6;
      while (1)
      {
        if (v16 < 0)
        {
          v17 = sub_18F09400C();
          if (!v17 || (v17 = swift_dynamicCast(), (v35 = v66) == 0))
          {
LABEL_35:
            OUTLINED_FUNCTION_12_4(v17, v18, v19, v20, v21, v22, v23, v24, v63, v64);

            break;
          }
        }

        else
        {
          v33 = v27;
          v34 = v28;
          if (!v28)
          {
            while (1)
            {
              v27 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v27 >= v32)
              {
                goto LABEL_35;
              }

              v34 = *(v25 + 8 * v27);
              ++v33;
              if (v34)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            swift_once();
LABEL_38:
            swift_beginAccess();
            v37 = qword_1ED5FDAE0;
            v38 = sub_18EFA0A74(qword_1ED5FDAE0);

            for (i = 0; ; ++i)
            {
              if (v38 == i)
              {

                return 0;
              }

              if ((v37 & 0xC000000000000001) != 0)
              {
                v40 = MEMORY[0x193AD8BA0](i, v37);
              }

              else
              {
                if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_85;
                }

                v40 = *(v37 + 8 * i + 32);
              }

              v41 = v40;
              if (__OFADD__(i, 1))
              {
                goto LABEL_84;
              }

              v42 = &v40[OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier];
              swift_beginAccess();
              v44 = *v42;
              v43 = *(v42 + 1);

              v45 = sub_18EF7FDF8(v1);
              v47 = v46;
              if (v43)
              {
                if (v46)
                {
                  if (v44 == v45 && v43 == v46)
                  {

                    return 1;
                  }

                  v49 = OUTLINED_FUNCTION_11_5();

                  if (v49)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                }
              }

              else
              {

                if (!v47)
                {
                  goto LABEL_80;
                }
              }
            }
          }

LABEL_29:
          v28 = (v34 - 1) & v34;
          v17 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v34)))));
          v35 = v17;
          if (!v17)
          {
            goto LABEL_35;
          }
        }

        v36 = [v35 swift_isAppIntentsEnabled];

        if (v36)
        {
          OUTLINED_FUNCTION_12_4(v17, v18, v19, v20, v21, v22, v23, v24, v63, v64);
LABEL_80:

          return 1;
        }
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
LABEL_37:
      if (qword_1ED5FDB08 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_38;
    }

    if (qword_1EACB6E10 != -1)
    {
      swift_once();
    }

    v50 = qword_1EACB6E18;
    v51 = sub_18EFA0A74(qword_1EACB6E18);
    for (j = 0; ; ++j)
    {
      if (v51 == j)
      {
        goto LABEL_37;
      }

      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x193AD8BA0](j, v50);
      }

      else
      {
        if (j >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v53 = *(v50 + 8 * j + 32);
      }

      v54 = v53;
      if (__OFADD__(j, 1))
      {
        goto LABEL_86;
      }

      v55 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
      v57 = v56;
      v58 = sub_18EF7FDF8(v1);
      v60 = v59;
      if (!v57)
      {
        break;
      }

      if (!v59)
      {

LABEL_76:

        continue;
      }

      if (v55 == v58 && v57 == v59)
      {

        return 1;
      }

      v62 = OUTLINED_FUNCTION_11_5();

      if (v62)
      {
        return 1;
      }
    }

    if (!v60)
    {
      return 1;
    }

    goto LABEL_76;
  }

  sub_18F093FAC();
LABEL_6:
  swift_unknownObjectRelease();
  sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
  return 1;
}

uint64_t __getLNLogCategoryGeneral_block_invoke()
{
  getLNLogCategoryGeneral_logger = os_log_create(LNLogSubsystem, "General");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __getLNLogCategoryExecution_block_invoke()
{
  getLNLogCategoryExecution_logger = os_log_create(LNLogSubsystem, "Execution");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18EF83CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_5()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_8_6()
{
}

void sub_18EF84150()
{
  OUTLINED_FUNCTION_180();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_18F093BCC();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  sub_18F093BBC();
  sub_18F093B9C();
  v13 = v12;
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_264();
  v16(v15);
  if (v13 >> 60 == 15)
  {
    v3(0);
    OUTLINED_FUNCTION_171();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_6;
  }

  v21 = sub_18F09302C();
  OUTLINED_FUNCTION_277(v21);
  v22 = OUTLINED_FUNCTION_367();
  sub_18EF844C4(v22, v23);
  sub_18F09301C();
  v24 = OUTLINED_FUNCTION_138();
  v25 = v3(v24);
  sub_18EF8558C(v30);
  OUTLINED_FUNCTION_320();
  sub_18F09300C();

  v26 = OUTLINED_FUNCTION_367();
  sub_18EF9A498(v26, v27);
  v28 = OUTLINED_FUNCTION_367();
  sub_18EF9A498(v28, v29);
  if (!v0)
  {
    v17 = v5;
    v18 = 0;
    v19 = 1;
    v20 = v25;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EF84318(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_10()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v2 = **(v0 + 240);
  result = v1;
  v4 = *(v0 + 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_16()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_16_1()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v2 = *(v0 + 280);

  return sub_18F0937DC();
}

uint64_t sub_18EF844C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void LNActionMetadata.CodableWrapper.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v106 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
  OUTLINED_FUNCTION_95(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  OUTLINED_FUNCTION_95(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_133(v13, v106);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7528, &qword_18F09BDE8);
  OUTLINED_FUNCTION_7(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_21();
  v23 = type metadata accessor for LNActionMetadata.CodableWrapper(v22);
  v24 = OUTLINED_FUNCTION_36(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v28 = *(v27 + 40);
  v29 = _s14CodableWrapperVMa_0(0);
  v111 = v28;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = *(v23 + 44);
  v34 = _s14CodableWrapperVMa_1(0);
  v112 = v33;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = *(v23 + 48);
  v39 = _s14CodableWrapperVMa_8(0);
  v113 = v0;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = v3[3];
  v44 = v3[4];
  v45 = OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_190(v45, v46);
  sub_18EF85AD8();
  sub_18F09459C();
  if (v1)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_334(0xF000000000000007);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_306();

    sub_18EF933AC(v113 + v111, &qword_1EACB72D0);
    sub_18EF933AC(v113 + v112, &unk_1EACB7310);
    sub_18EF933AC(v113 + v38, &qword_1EACB7308);
    v47 = OUTLINED_FUNCTION_374();
    sub_18EFA3D90(v47);
    if (v43)
    {
      OUTLINED_FUNCTION_116();
      v49 = *(v113 + *(v48 + 80));
    }

    sub_18EFA4FC0(0xF000000000000007);
  }

  else
  {
    *v113 = sub_18F09427C();
    v113[1] = v50;
    LOBYTE(v114) = 1;
    v113[2] = sub_18F09427C();
    v113[3] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_280();
    sub_18F09426C();
    v113[4] = v114;
    LOBYTE(v114) = 3;
    v113[5] = sub_18F09423C();
    v113[6] = v52;
    OUTLINED_FUNCTION_280();
    sub_18F09426C();
    v113[7] = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF861C4();
    sub_18F09426C();
    v113[8] = v114;
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v53);
    OUTLINED_FUNCTION_310();
    sub_18F09426C();
    sub_18EF872D4();
    OUTLINED_FUNCTION_196();
    sub_18EF8558C(v54);
    sub_18F09426C();
    sub_18EF872D4();
    OUTLINED_FUNCTION_195();
    sub_18EF8558C(v55);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v114) = 9;
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v56 + 52)) = v57;
    type metadata accessor for LNActionModes(0);
    OUTLINED_FUNCTION_194();
    sub_18EF8558C(v58);
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_335(*(v59 + 56));
    OUTLINED_FUNCTION_57(11);
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v60 + 60)) = v61;
    type metadata accessor for LNActionAuthenticationPolicy(0);
    OUTLINED_FUNCTION_193();
    sub_18EF8558C(v62);
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v65 + *(v63 + 64)) = v64;
    OUTLINED_FUNCTION_57(13);
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v66 + 68)) = v67;
    sub_18EF8882C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v68 + 72)) = v114;
    type metadata accessor for LNActionOutputFlags(0);
    OUTLINED_FUNCTION_192();
    sub_18EF8558C(v69);
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_335(*(v70 + 76));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF88950();
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v73 + *(v71 + 80)) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8AED4();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v74 + 84)) = v114;
    v110 = sub_18EFF2E98();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v75 + 88)) = v110;
    sub_18EF9561C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v76 + 92)) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF956C0();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v77 + 96)) = v114;
    OUTLINED_FUNCTION_57(21);
    sub_18F09423C();
    v109 = v78;
    OUTLINED_FUNCTION_116();
    v80 = (v113 + *(v79 + 100));
    *v80 = v81;
    v80[1] = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v82 + 104)) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F013430();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v83 + 108)) = v114;
    OUTLINED_FUNCTION_57(24);
    sub_18F09423C();
    v108 = v84;
    OUTLINED_FUNCTION_116();
    v86 = (v113 + *(v85 + 112));
    *v86 = v87;
    v86[1] = v108;
    sub_18EF9A1DC();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    v89 = v113 + *(v88 + 116);
    *v89 = v114;
    v89[16] = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F0134B4();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v90 + 120)) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18F013538();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v91 + 124)) = v114;
    sub_18EF99E5C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v92 + 128)) = v114;
    OUTLINED_FUNCTION_57(29);
    sub_18F09423C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_290(v94, v95, *(v93 + 132));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF9CDD0();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v96 + 136)) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v113 + *(v97 + 140)) = v114;
    type metadata accessor for LNActionPresentationStyle(0);
    OUTLINED_FUNCTION_207();
    sub_18EF8558C(v98);
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v101 + *(v99 + 144)) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF9FAC4();
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    v102 = OUTLINED_FUNCTION_6();
    v103(v102);
    OUTLINED_FUNCTION_285();
    *(v113 + *(v104 + 148)) = v105;
    OUTLINED_FUNCTION_198();
    sub_18EF86A14(v113, v107);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_28();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EF8558C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id OUTLINED_FUNCTION_258(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 312);

  return [v5 a2];
}

double OUTLINED_FUNCTION_13_3()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

void sub_18EF856A0()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
    OUTLINED_FUNCTION_106(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_52(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t OUTLINED_FUNCTION_33_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_18F0941DC();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return sub_18F0942CC();
}

void OUTLINED_FUNCTION_17()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  *(v0 + 392) = 0;
  *(v0 + 400) = 0xE000000000000000;

  return sub_18F09406C();
}

uint64_t OUTLINED_FUNCTION_274()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

void sub_18EF8592C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_144();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
    OUTLINED_FUNCTION_106(v7);
    if (*(v8 + 84) == v3)
    {
      OUTLINED_FUNCTION_254();
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_388(v2[6]);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      v11 = OUTLINED_FUNCTION_106(v10);
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v9 = v2[7];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
        v9 = v2[8];
      }
    }

    v5 = v1 + v9;
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18EF85AD8()
{
  result = qword_1ED5FF258;
  if (!qword_1ED5FF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF258);
  }

  return result;
}

unint64_t sub_18EF85B48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73B0, &qword_18F09BD80);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EF85BC4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      v3 = 0x656C676E616DLL;
      goto LABEL_16;
    case 2:
      return 0xD000000000000021;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000023;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      return 0x656C746974;
    case 7:
    case 8:
    case 19:
      return 0xD000000000000013;
    case 9:
      return 0x577070416E65706FLL;
    case 10:
      v4 = 0x726F70707573;
      goto LABEL_23;
    case 11:
      return 0x766F637369447369;
    case 12:
    case 20:
    case 23:
      return 0xD000000000000014;
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0x795474757074756FLL;
    case 15:
      return 0x6C4674757074756FLL;
    case 16:
      v4 = 0x656D61726170;
LABEL_23:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 17:
    case 29:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
    case 26:
      result = 0xD000000000000017;
      break;
    case 24:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0x6566664565646973;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 28:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x69617274736E6F63;
      break;
    case 31:
      v3 = 0x65776F6C6C61;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5464000000000000;
      break;
    case 32:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0x72506D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF860E0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_3(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_56()
{
  v2 = *(v1 - 256);
  result = v0;
  v4 = *(v1 - 240);
  v5 = *(v1 - 224);
  v6 = *(v1 - 208);
  return result;
}

unint64_t sub_18EF861C4()
{
  result = qword_1ED5FF488;
  if (!qword_1ED5FF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF8558C(&unk_1ED5FF410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF488);
  }

  return result;
}

uint64_t sub_18EF86278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7EF0, &qword_18F0A0DF8);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v12 = _s14CodableWrapperVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF86678();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23[0] = v12;
  v23[1] = v7;
  v17 = v15;
  v18 = v25;
  type metadata accessor for LNEffectiveBundleIdentifierType(0);
  v29 = 0;
  sub_18EF8558C(&unk_1ED5FCFB8);
  v19 = v26;
  sub_18F0942CC();
  *v17 = v30;
  v28 = 1;
  v17[1] = sub_18F09427C();
  v17[2] = v20;
  sub_18F0932BC();
  v27 = 2;
  sub_18EF8558C(&unk_1ED5FF550);
  sub_18F09426C();
  (*(v18 + 8))(v11, v19);
  v21 = *(v23[0] + 24);
  sub_18EF869B4();
  sub_18EF86A14(v17, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EF86678()
{
  result = qword_1ED5FD058[0];
  if (!qword_1ED5FD058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FD058);
  }

  return result;
}

uint64_t sub_18EF866FC(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 7107189;
}

_BYTE *sub_18EF86758(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF86814);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF8683C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EF86970(uint64_t *a1)
{
  v1 = *a1;
  sub_18EF86968();
  return OUTLINED_FUNCTION_308(v2, v3);
}

uint64_t OUTLINED_FUNCTION_278(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;

  return swift_willThrow();
}

uint64_t sub_18EF869B4()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_108();
  v10(v9);
  return v0;
}

uint64_t sub_18EF86A14(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v5 = v4(v3);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_108();
  v9(v8);
  return a2;
}

uint64_t sub_18EF86A6C()
{
  v1 = OUTLINED_FUNCTION_204();
  v3 = v2(v1);
  OUTLINED_FUNCTION_36(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_18EF86B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EF8, &qword_18F0A0E00);
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v10 = v37 - v9;
  v11 = _s14CodableWrapperVMa_0(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 28);
  v17 = sub_18F0932BC();
  v46 = v16;
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  v18 = *(v11 + 32);
  v19 = sub_18F0931CC();
  v47 = v18;
  v49 = v15;
  __swift_storeEnumTagSinglePayload(v15 + v18, 1, 1, v19);
  v20 = a1[3];
  v21 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  sub_18EF870B4();
  v44 = v10;
  v22 = v45;
  sub_18F09459C();
  if (v22)
  {
    v25 = v46;
    v26 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v27 = v49;
    sub_18EF933AC(v49 + v25, &qword_1EACB72C8);
    return sub_18EF933AC(v27 + v26, &qword_1EACB78A0);
  }

  else
  {
    v45 = v17;
    v38 = v11;
    v39 = v19;
    v23 = v41;
    v56 = 0;
    v24 = sub_18F09427C();
    v28 = v49;
    *v49 = v24;
    v28[1] = v29;
    v55 = 1;
    v30 = sub_18F09423C();
    v32 = v31;
    v28[2] = v30;
    v28[3] = v31;
    v54 = 2;
    v33 = sub_18F09423C();
    v37[1] = v34;
    v37[2] = v32;
    v28[4] = v33;
    v28[5] = v34;
    v53 = 3;
    sub_18EF8558C(&unk_1ED5FF550);
    sub_18F09426C();
    sub_18EF872D4();
    v52 = 4;
    sub_18EF8558C(&unk_1ED5FF4C0);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78B0, &qword_18F09DDE0);
    v51 = 5;
    sub_18EF87328();
    sub_18F09426C();
    v35 = *(v38 + 36);
    (*(v23 + 8))(v44, v43);
    *(v28 + v35) = v50;
    sub_18EF86A14(v28, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF870B4()
{
  result = qword_1ED5FF500;
  if (!qword_1ED5FF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF500);
  }

  return result;
}

unint64_t sub_18EF87110(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x56746C7561666564;
      break;
    case 2:
      result = 0x656C626174;
      break;
    case 3:
      result = 0x5255656C646E7562;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x74616E7265746C61;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF871F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF872ACLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF872D4()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v7 + 40);
  v9 = OUTLINED_FUNCTION_108();
  v10(v9);
  return v0;
}

unint64_t sub_18EF87328()
{
  result = qword_1ED5FD7F8;
  if (!qword_1ED5FD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB78B0, &qword_18F09DDE0);
    sub_18EF8558C(&unk_1ED5FD760);
    sub_18EF8558C(&unk_1ED5FF4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD7F8);
  }

  return result;
}

uint64_t sub_18EF87414(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EF874B4()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_106(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_120(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_20()
{
  v1 = *(*(v0 - 216) + 8);
  result = *(v0 - 184);
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

uint64_t sub_18EF875F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34[1] = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34[2] = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _s14CodableWrapperVMa_0(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v35 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F08, &qword_18F0A0E08);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v34 - v16;
  v18 = _s14CodableWrapperVMa_1(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 20);
  v24 = _s14CodableWrapperVMa_2(0);
  v41 = v23;
  __swift_storeEnumTagSinglePayload(&v22[v23], 1, 1, v24);
  v42 = *(v18 + 28);
  __swift_storeEnumTagSinglePayload(&v22[v42], 1, 1, v11);
  v39 = v18;
  v25 = *(v18 + 32);
  v26 = _s14CodableWrapperVMa_5(0);
  v43 = v25;
  __swift_storeEnumTagSinglePayload(&v22[v25], 1, 1, v26);
  v27 = a1[3];
  v28 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v27);
  sub_18EF87D6C();
  v38 = v17;
  v29 = v40;
  sub_18F09459C();
  if (v29)
  {
    v32 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    sub_18EF933AC(&v22[v41], &qword_1EACB7860);
    sub_18EF933AC(&v22[v32], &qword_1EACB72D0);
    return sub_18EF933AC(&v22[v43], &qword_1EACB7868);
  }

  else
  {
    v40 = v26;
    v50 = 0;
    sub_18EF8558C(&unk_1ED5FF4F8);
    v30 = v35;
    v31 = v37;
    sub_18F0942CC();
    sub_18EF88240(v30, v22);
    v49 = 1;
    sub_18EF8558C(&unk_1ED5FE420);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v48 = 2;
    sub_18EF883DC();
    sub_18F0942CC();
    *&v22[*(v39 + 24)] = v45;
    v47 = 3;
    sub_18F09426C();
    sub_18EF872D4();
    v46 = 4;
    sub_18EF8558C(&unk_1ED5FE2E8);
    sub_18F09426C();
    (*(v36 + 8))(v38, v31);
    sub_18EF872D4();
    sub_18EF86A14(v22, v34[0]);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF87D6C()
{
  result = qword_1ED5FE318;
  if (!qword_1ED5FE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE318);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_18EF87DEC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_144();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106(v7);
    if (*(v8 + 84) == v3)
    {
      OUTLINED_FUNCTION_254();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
      result = OUTLINED_FUNCTION_106(v10);
      if (*(v12 + 84) != v3)
      {
        *(v1 + *(v2 + 32)) = v0;
        return result;
      }

      OUTLINED_FUNCTION_331();
    }

    v5 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_18EF87F20()
{
  OUTLINED_FUNCTION_34();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  OUTLINED_FUNCTION_106(v3);
  if (*(v4 + 84) == v2)
  {
    v5 = OUTLINED_FUNCTION_144();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
    OUTLINED_FUNCTION_254();
    v5 = v1 + v7;
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_18EF87FF4(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0x654B686372616573;
      break;
    case 3:
      result = 0x6156746C75736572;
      break;
    case 4:
      result = 1852793705;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF880D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF8818CLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF881BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EF88240(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v5 = v4(v3);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_108();
  v9(v8);
  return a2;
}

uint64_t sub_18EF882AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_51();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_270();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106(v9);
    if (*(v10 + 84) == v3)
    {
      OUTLINED_FUNCTION_333();
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
      v13 = OUTLINED_FUNCTION_106(v12);
      if (*(v14 + 84) != v3)
      {
        return OUTLINED_FUNCTION_99(*(v4 + *(a3 + 32)));
      }

      v8 = v13;
      v11 = *(a3 + 24);
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

unint64_t sub_18EF883DC()
{
  result = qword_1ED5FF540;
  if (!qword_1ED5FF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18EF8558C(&unk_1ED5FF4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF540);
  }

  return result;
}

uint64_t sub_18EF884CC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_51();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_270();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
    OUTLINED_FUNCTION_106(v9);
    if (*(v10 + 84) == v3)
    {
      OUTLINED_FUNCTION_333();
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_18(*(v4 + a3[6]));
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      v14 = OUTLINED_FUNCTION_106(v13);
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v11 = a3[7];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
        v11 = a3[8];
      }
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void *sub_18EF88720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  result = v1 - 112;
  v3 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_123()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

unint64_t sub_18EF8882C()
{
  result = qword_1ED5FF530;
  if (!qword_1ED5FF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF530);
  }

  return result;
}

unint64_t sub_18EF88950()
{
  result = qword_1ED5FF280;
  if (!qword_1ED5FF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF8558C(&unk_1ED5FF1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF280);
  }

  return result;
}

uint64_t sub_18EF88A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F40, &qword_18F0A0E28);
  v40 = *(v42 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v38 - v8;
  v10 = _s14CodableWrapperVMa_10(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v16 = _s14CodableWrapperVMa_0(0);
  v44 = v15;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  v17 = *(v10 + 24);
  v46 = v10;
  v47 = v17;
  v45 = v14;
  __swift_storeEnumTagSinglePayload(v14 + v17, 1, 1, v16);
  v18 = a1[3];
  v19 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_18EF892F4();
  v41 = v9;
  sub_18F09459C();
  if (v2)
  {
    v21 = v44;
    v22 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);

    sub_18EF933AC(v22 + v21, &qword_1EACB72D0);
    return sub_18EF933AC(v22 + v47, &qword_1EACB72D0);
  }

  else
  {
    LOBYTE(v48) = 0;
    v20 = sub_18F09423C();
    v24 = v23;
    v25 = v45;
    *v45 = v20;
    v25[1] = v23;
    LOBYTE(v48) = 1;
    v38 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    v26 = v46;
    sub_18EF872D4();
    LOBYTE(v48) = 2;
    sub_18F09426C();
    sub_18EF872D4();
    v50 = 3;
    sub_18EF8882C();
    sub_18F0942CC();
    *(v25 + v26[7]) = v48;
    LOBYTE(v48) = 4;
    v27 = sub_18F09428C();
    v38 = v24;
    *(v25 + v26[8]) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    v50 = 5;
    sub_18F017B70();
    sub_18F0942CC();
    *(v25 + v26[9]) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BC0, &qword_18F0A0C50);
    v50 = 6;
    sub_18EF8992C(&unk_1ED5FF038);
    sub_18F0942CC();
    *(v25 + v26[10]) = v48;
    type metadata accessor for LNActionParameterMetadataDynamicOptionsSupport(0);
    v50 = 7;
    sub_18EF8558C(&unk_1ED5FF060);
    sub_18F0942CC();
    *(v25 + v26[11]) = v48;
    LOBYTE(v48) = 8;
    *(v25 + v26[12]) = sub_18F09428C() & 1;
    type metadata accessor for LNActionParameterMetadataInputConnectionBehavior(0);
    v50 = 9;
    sub_18EF8558C(&unk_1ED5FF048);
    sub_18F09426C();
    v28 = v45 + v46[13];
    v29 = v49;
    *v28 = v48;
    v28[8] = v29;
    type metadata accessor for LNActionParameterMetadataCapabilities(0);
    v50 = 10;
    sub_18EF8558C(&unk_1ED5FE8A0);
    sub_18F09426C();
    v30 = v45 + v46[14];
    v31 = v49;
    *v30 = v48;
    v30[8] = v31;
    LOBYTE(v48) = 11;
    v32 = sub_18F09423C();
    v34 = v33;
    v35 = v45;
    v36 = (v45 + v46[15]);
    (*(v40 + 8))(v41, v42);
    *v36 = v32;
    v36[1] = v34;
    sub_18EF86A14(v35, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF892F4()
{
  result = qword_1ED5FF0C0;
  if (!qword_1ED5FF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0C0);
  }

  return result;
}

unint64_t sub_18EF89348(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x70795465756C6176;
      break;
    case 4:
      result = 0x6E6F6974704F7369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7475706E497369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x696C696261706163;
      break;
    case 11:
      result = 0x6564497972657571;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_6(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF895A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF895CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EF895F4();
  *a1 = result;
  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_18EF89690(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_261();
    return;
  }

LABEL_9:
  __break(1u);
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF897B8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18EF897EC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x18EF89888);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EF898B0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_350(a1);
}

unint64_t sub_18EF8992C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EF8996C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a1;
  v159 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v174 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  v175 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v171 = sub_18F093F3C();
  v13 = OUTLINED_FUNCTION_7(v171);
  v166 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v178 = v17;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v154 - v19;
  OUTLINED_FUNCTION_1_3();
  v161 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v177 = v24;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v154 - v26;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v154 - v28;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v29);
  v173 = &v154 - v30;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v31);
  v160 = &v154 - v32;
  v180 = sub_18F093F3C();
  v33 = OUTLINED_FUNCTION_7(v180);
  v163 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_0();
  v172 = v37;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v38);
  v186 = (&v154 - v39);
  type metadata accessor for CompactDictionary._DictionaryCodingKey();
  swift_getWitnessTable();
  v181 = sub_18F09430C();
  OUTLINED_FUNCTION_7(v181);
  v155 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v154 - v44;
  OUTLINED_FUNCTION_1_3();
  v167 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_22();
  v52 = v51 - v50;
  v158 = type metadata accessor for CompactDictionary();
  OUTLINED_FUNCTION_7(v158);
  v157 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  v156 = v57;
  swift_getTupleTypeMetadata2();
  sub_18F093E0C();
  swift_getAssociatedConformanceWitness();
  v182 = AssociatedTypeWitness;
  v58 = sub_18F093A5C();
  v59 = *(a3 + 80);
  v179 = v52;
  v184 = a3;
  v59(v58, a2, a3);
  v60 = v12 == MEMORY[0x1E69E6158] || v12 == MEMORY[0x1E69E6530];
  v183 = a2;
  v185 = v12;
  if (!v60)
  {
    v65 = v170;
    v66 = v170[4];
    __swift_project_boxed_opaque_existential_1Tm(v170, v170[3]);
    v67 = v187;
    sub_18F09458C();
    v187 = v67;
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_2_2();
      v69(v68, a2);
      goto LABEL_22;
    }

    v72 = OUTLINED_FUNCTION_13_0();
    __swift_project_boxed_opaque_existential_1Tm(v72, v73);
    v74 = sub_18F09440C();
    if (v75 & 1) != 0 || (v74)
    {
      v96 = sub_18F0940BC();
      v97 = swift_allocError();
      v99 = v98;
      v100 = v65[4];
      __swift_project_boxed_opaque_existential_1Tm(v65, v65[3]);
      sub_18F09457C();
      sub_18F0940AC();
      (*(*(v96 - 8) + 104))(v99, *MEMORY[0x1E69E6B00], v96);
      v187 = v97;
      swift_willThrow();
      v101 = OUTLINED_FUNCTION_2_2();
      v102(v101, a2);
      __swift_destroy_boxed_opaque_existential_1Tm(&v188);
      goto LABEL_22;
    }

    v186 = (v161 + 32);
    v180 = (v161 + 16);
    v181 = (v161 + 8);
    v178 = (v174 + 16);
    v171 = v184 + 96;
    v174 += 8;
    while (1)
    {
      while (1)
      {
        v76 = OUTLINED_FUNCTION_13_0();
        __swift_project_boxed_opaque_existential_1Tm(v76, v77);
        v78 = sub_18F09442C();
        v79 = v177;
        if (v78)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v188);
          goto LABEL_39;
        }

        v80 = OUTLINED_FUNCTION_13_0();
        __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
        swift_getAssociatedConformanceWitness();
        v82 = v187;
        sub_18F09441C();
        v83 = v79;
        v84 = v82;
        if (v82)
        {
          break;
        }

        v86 = v176;
        (*v186)(v176, v83, v12);
        __swift_mutable_project_boxed_opaque_existential_1(&v188, v191);
        v87 = v182;
        swift_getAssociatedConformanceWitness();
        v88 = v175;
        sub_18F09441C();
        v187 = 0;
        v89 = v185;
        (*v180)(v173, v86, v185);
        (*v178)(v172, v88, v87);
        OUTLINED_FUNCTION_8_0();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
        v93 = OUTLINED_FUNCTION_11_0();
        v94(v93);
        OUTLINED_FUNCTION_10_1();
        v95(v88, v87);
        (*v181)(v86, v89);
        v12 = v89;
      }

      type metadata accessor for CompactDictionary.Empty();
      __swift_mutable_project_boxed_opaque_existential_1(&v188, v191);
      OUTLINED_FUNCTION_3_1();
      swift_getWitnessTable();
      sub_18F09441C();
      v187 = 0;
      __swift_mutable_project_boxed_opaque_existential_1(&v188, v191);
      v85 = v187;
      sub_18F09441C();
      v187 = v85;
      if (v85)
      {
        break;
      }

      a2 = v183;
    }

    v152 = OUTLINED_FUNCTION_2_2();
    v153(v152, v183);

    __swift_destroy_boxed_opaque_existential_1Tm(&v188);
LABEL_8:
    v65 = v170;
LABEL_22:
    v103 = v65;
    return __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  v61 = v170[4];
  __swift_project_boxed_opaque_existential_1Tm(v170, v170[3]);
  v62 = v187;
  sub_18F09459C();
  v187 = v62;
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_2_2();
    v64(v63, a2);
    goto LABEL_8;
  }

  v70 = sub_18F0942EC();
  v71 = sub_18F093DDC();
  v193 = v71;
  if (v71 == sub_18F093E4C())
  {

LABEL_38:
    (*(v155 + 8))(v45, v181);
LABEL_39:
    v149 = v170;
    v150 = v156;
    (*(v167 + 32))(v156, v179, a2);
    (*(v157 + 32))(v159, v150, v158);
    v103 = v149;
    return __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  v177 = v45;
  v175 = v70 + 32;
  v166 += 8;
  v174 = v163 + 8;
  v165 = v161 + 32;
  v164 = v161 + 16;
  v163 += 16;
  v162 = v184 + 96;
  v161 += 8;
  v104 = MEMORY[0x1E69E6158];
  v176 = v70;
  while (1)
  {
    v105 = sub_18F093E2C();
    sub_18F093DEC();
    if ((v105 & 1) == 0)
    {
      break;
    }

    v106 = v175 + 32 * v71;
    v108 = *v106;
    v107 = *(v106 + 8);
    v109 = *(v106 + 16);
    v110 = *(v106 + 24);

    sub_18F093E5C();
    v188 = v108;
    v189 = v107;
    v190 = v109;
    LOBYTE(v191) = v110;
    v111 = v182;
    swift_getAssociatedConformanceWitness();
    v112 = v187;
    sub_18F0942CC();
    v187 = v112;
    if (v112)
    {

      v187 = 0;
      v113 = 1;
    }

    else
    {
      v113 = 0;
    }

    __swift_storeEnumTagSinglePayload(v186, v113, 1, v111);
    if (v185 == v104)
    {
      v188 = v108;
      v189 = v107;

      v114 = v168;
      if (swift_dynamicCast())
      {

        OUTLINED_FUNCTION_8_0();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v104);
        OUTLINED_FUNCTION_4_2(&v195);
        v118 = v160;
        v119(v160, v114, v104);
        OUTLINED_FUNCTION_4_2(&v194);
        v120(v173, v118, v104);
        OUTLINED_FUNCTION_4_2(&v193);
        v121 = v186;
        v122 = v180;
        v123(v172, v186, v180);
        v124 = OUTLINED_FUNCTION_11_0();
        v125 = v183;
        v126(v124);
        OUTLINED_FUNCTION_4_2(v192);
        v127(v118, v104);
        OUTLINED_FUNCTION_10_1();
        v129 = v121;
        a2 = v125;
        goto LABEL_34;
      }

      __swift_storeEnumTagSinglePayload(v114, 1, 1, v104);
      OUTLINED_FUNCTION_4_2(&v196);
      v130(v114, v171);
    }

    v132 = v184;
    v131 = v185;
    v188 = v109;
    LOBYTE(v189) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACB9238, &qword_18F0AA278);
    v133 = v178;
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_1();
      v146(v186, v180);
      __swift_storeEnumTagSinglePayload(v133, 1, 1, v131);
      OUTLINED_FUNCTION_4_2(&v196);
      v147(v133, v171);
      a2 = v183;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_8_0();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v131);
    OUTLINED_FUNCTION_4_2(&v195);
    v137 = v169;
    v138(v169, v133, v131);
    OUTLINED_FUNCTION_4_2(&v194);
    v139 = v173;
    v140(v173, v137, v131);
    OUTLINED_FUNCTION_4_2(&v193);
    v141 = v172;
    v142 = v186;
    v122 = v180;
    v143(v172, v186, v180);
    v144 = v141;
    a2 = v183;
    (*(v132 + 96))(v144, v139, v183, v132);
    OUTLINED_FUNCTION_4_2(v192);
    v145(v137, v131);
    OUTLINED_FUNCTION_10_1();
    v129 = v142;
    v104 = MEMORY[0x1E69E6158];
LABEL_34:
    v128(v129, v122);
LABEL_36:
    v148 = sub_18F093E4C();
    v71 = v193;
    if (v193 == v148)
    {

      v45 = v177;
      goto LABEL_38;
    }
  }

  result = sub_18F09407C();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  *(v0 + 320) = *(v0 + 392);
  v2 = *(v0 + 408);

  return sub_18F09378C();
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  v2 = *(v0 - 224);

  return sub_18F0938EC();
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_18F09444C();
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  result = v0;
  *(v2 - 112) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_18F09444C();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_18F0937BC();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{

  return sub_18F03E904(a1);
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_18F09417C();
}

__n128 OUTLINED_FUNCTION_6_10()
{
  *(v0 + 488) = v1;
  *(v0 + 496) = v5;
  result = *(v0 + 320);
  *(v0 + 504) = result;
  *(v0 + 520) = v3;
  *(v0 + 528) = v2;
  *(v0 + 536) = v4;
  return result;
}

void OUTLINED_FUNCTION_6_11()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_18F0943CC();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_11()
{

  JUMPOUT(0x193AD8780);
}

unint64_t sub_18EF8AED4()
{
  result = qword_1ED5FEBE0;
  if (!qword_1ED5FEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FF178);
    sub_18EFBE9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBE0);
  }

  return result;
}

void sub_18EF8AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_180();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v159 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F48, &qword_18F0A0E30);
  v29 = OUTLINED_FUNCTION_7(v28);
  v156 = v30;
  v157 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F50, &qword_18F0A0E38);
  v154 = OUTLINED_FUNCTION_7(v34);
  v155 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  v161 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F58, &qword_18F0A0E40);
  OUTLINED_FUNCTION_7(v40);
  v153 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F60, &qword_18F0A0E48);
  OUTLINED_FUNCTION_7(v45);
  v152 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F68, &qword_18F0A0E50);
  OUTLINED_FUNCTION_7(v158);
  v151 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  v160 = v54;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F70, &qword_18F0A0E58);
  OUTLINED_FUNCTION_7(v150);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_135();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F78, &qword_18F0A0E60);
  OUTLINED_FUNCTION_7(v149);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_135();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F80, &qword_18F0A0E68);
  OUTLINED_FUNCTION_7(v148);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_50();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F88, &qword_18F0A0E70);
  OUTLINED_FUNCTION_7(v64);
  v147 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_256();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F90, &qword_18F0A0E78);
  OUTLINED_FUNCTION_7(v69);
  v71 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_46();
  v76 = v26[3];
  v75 = v26[4];
  v162 = v26;
  v77 = OUTLINED_FUNCTION_384();
  OUTLINED_FUNCTION_190(v77, v78);
  sub_18EF8BDF8();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v20)
  {
    goto LABEL_8;
  }

  v145 = v64;
  v79 = sub_18F0942EC();
  sub_18EF89690(v79, 0);
  if (v82 == v83 >> 1)
  {
    goto LABEL_7;
  }

  v146 = v69;
  if (v82 >= (v83 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF8BDB8);
  }

  v84 = *(v81 + v82);
  sub_18F019378(v82 + 1, v83 >> 1, v80, v81, v82, v83);
  v86 = v85;
  v88 = v87;
  v90 = v89;
  swift_unknownObjectRelease();
  if (v88 != v90 >> 1)
  {
LABEL_7:
    v97 = sub_18F0940BC();
    OUTLINED_FUNCTION_249();
    v99 = v98;
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v99 = &type metadata for LNSystemProtocolMetadataStorage;
    sub_18F09422C();
    sub_18F0940AC();
    v101 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_111(v97);
    (*(v102 + 104))(v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_218();
    v103 = OUTLINED_FUNCTION_384();
    v104(v103);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    goto LABEL_9;
  }

  v91 = v146;
  switch(v84)
  {
    case 1:
      OUTLINED_FUNCTION_250();
      sub_18F017140();
      OUTLINED_FUNCTION_93();
      v92 = v148;
      OUTLINED_FUNCTION_359();
      v96 = 0;
      v91 = v162;
      v118 = sub_18F09428C();
      OUTLINED_FUNCTION_187();
      v119 = OUTLINED_FUNCTION_102(&a14);
      v120(v119, v148);
      v121 = *(v71 + 8);
      v86 = v71 + 8;
      v122 = OUTLINED_FUNCTION_122();
      v123(v122);
      OUTLINED_FUNCTION_121();
      v95 = v118 & 1;
      break;
    case 2:
      LOBYTE(a10) = 2;
      sub_18EFA7480();
      OUTLINED_FUNCTION_93();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
      OUTLINED_FUNCTION_303();
      v92 = v149;
      OUTLINED_FUNCTION_359();
      sub_18F0942CC();
      OUTLINED_FUNCTION_381();
      OUTLINED_FUNCTION_187();
      v107 = OUTLINED_FUNCTION_102(&a16);
      v108(v107, v149);
      OUTLINED_FUNCTION_158();
      OUTLINED_FUNCTION_389();
      v109();
      OUTLINED_FUNCTION_121();
      v95 = a10;
      v96 = 1;
      break;
    case 3:
      LOBYTE(a10) = 3;
      sub_18F0170EC();
      OUTLINED_FUNCTION_93();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
      OUTLINED_FUNCTION_303();
      v92 = v150;
      OUTLINED_FUNCTION_359();
      sub_18F0942CC();
      v91 = v162;
      OUTLINED_FUNCTION_187();
      v110 = OUTLINED_FUNCTION_102(&a18);
      v111(v110, v150);
      v112 = *(v71 + 8);
      v113 = OUTLINED_FUNCTION_122();
      v114(v113);
      OUTLINED_FUNCTION_121();
      v95 = a10;
      v96 = 2;
      break;
    case 4:
      OUTLINED_FUNCTION_379();
      sub_18EFA76BC();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v95 = v105;
      v21 = v106;
      OUTLINED_FUNCTION_208(1);
      OUTLINED_FUNCTION_342();
      v86 = sub_18F09427C();
      v92 = v142;
      swift_unknownObjectRelease();
      (*(v151 + 8))(v160, v158);
      v143 = OUTLINED_FUNCTION_387();
      v144(v143);
      v96 = 3;
      break;
    case 5:
      OUTLINED_FUNCTION_343();
      sub_18F017098();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v95 = v124;
      v21 = v125;
      OUTLINED_FUNCTION_187();
      v126 = *(v152 + 8);
      v127 = OUTLINED_FUNCTION_197();
      v128(v127);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_389();
      v129();
      v86 = 0;
      v92 = 0;
      v96 = 4;
      break;
    case 6:
      sub_18F017044();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v95 = v130;
      v21 = v131;
      OUTLINED_FUNCTION_187();
      v132 = *(v153 + 8);
      v133 = OUTLINED_FUNCTION_197();
      v134(v133);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_389();
      v135();
      v86 = 0;
      v92 = 0;
      v96 = 5;
      break;
    case 7:
      LOBYTE(a10) = 7;
      sub_18F016F3C();
      OUTLINED_FUNCTION_93();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C40, &qword_18F0A0CA8);
      sub_18F0181D0();
      OUTLINED_FUNCTION_303();
      v92 = v154;
      OUTLINED_FUNCTION_342();
      sub_18F0942CC();
      v91 = v162;
      OUTLINED_FUNCTION_187();
      (*(v155 + 8))(v161, v154);
      v115 = *(v71 + 8);
      v116 = OUTLINED_FUNCTION_122();
      v117(v116);
      OUTLINED_FUNCTION_121();
      v95 = a10;
      v96 = 6;
      break;
    case 8:
      sub_18F016EE8();
      OUTLINED_FUNCTION_93();
      v92 = v157;
      OUTLINED_FUNCTION_359();
      v91 = v162;
      v95 = sub_18F0942AC();
      OUTLINED_FUNCTION_187();
      v136 = *(v156 + 8);
      v137 = OUTLINED_FUNCTION_140();
      v138(v137);
      v139 = *(v71 + 8);
      v86 = v71 + 8;
      v140 = OUTLINED_FUNCTION_122();
      v141(v140);
      OUTLINED_FUNCTION_121();
      v96 = 7;
      break;
    default:
      sub_18EF8C154();
      v92 = v22;
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_187();
      (*(v147 + 8))(v22, v145);
      v93 = OUTLINED_FUNCTION_158();
      v94(v93, v146);
      v95 = 0;
      OUTLINED_FUNCTION_121();
      v96 = 8;
      v91 = v162;
      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  *v159 = v95;
  *(v159 + 8) = v21;
  *(v159 + 16) = v86;
  *(v159 + 24) = v92;
  *(v159 + 32) = v96;
LABEL_9:
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_212()
{

  return sub_18EF86A14(v0, v1);
}

unint64_t sub_18EF8BDF8()
{
  result = qword_1ED5FE888;
  if (!qword_1ED5FE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE888);
  }

  return result;
}

uint64_t sub_18EF8BE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EF8BE74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EF8BE74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018F0AE5C0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000018F0AE5E0 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6564695679616C70 && a2 == 0xE90000000000006FLL;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79747265706F7270 && a2 == 0xEF72657461647055;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7055797469746E65 && a2 == 0xED00007265746164;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C62617461647075 && a2 == 0xEF797469746E4565;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000020 && 0x800000018F0AE600 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x800000018F0AE630 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_18F09444C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18EF8C154()
{
  result = qword_1ED5FE868;
  if (!qword_1ED5FE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE868);
  }

  return result;
}

unint64_t sub_18EF8C1B0(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6564695679616C70;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    case 5:
      result = 0x7055797469746E65;
      break;
    case 6:
      result = 0x6C62617461647075;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LNSystemProtocolMetadataStorage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF8C3DCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_3_4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_18F0941AC();
}

id OUTLINED_FUNCTION_3_12(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 - 312);

  return sub_18F042998(a1, a2, a3, v7, v3, v4, 0, 0);
}

__n128 OUTLINED_FUNCTION_3_13()
{
  result = *(v0 + 504);
  *(v0 + 320) = result;
  v2 = *(v0 + 520);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v3 = *(v0 + 96);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_296()
{

  return sub_18F09444C();
}

uint64_t sub_18EF8C670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_6(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF8C750(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F18, &qword_18F0A0E18);
  v3 = *(v2 - 8);
  v128 = v2;
  v129 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v119 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v120 = &v118 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v121 = &v118 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v122 = &v118 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v123 = &v118 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v124 = &v118 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v125 = &v118 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v126 = &v118 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v127 = &v118 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v130 = &v118 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v118 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v118 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v118 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F20, &qword_18F0A0E20);
  v131 = *(v33 - 8);
  v34 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v118 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v160 = a1;
  v39 = __swift_project_boxed_opaque_existential_1Tm(a1, v37);
  sub_18EF8DBC0();
  v40 = v132;
  sub_18F09459C();
  if (v40)
  {
    goto LABEL_8;
  }

  v132 = 0;
  v41 = v130;
  LOBYTE(v157[0]) = 0;
  if (sub_18F0942FC())
  {
    LOBYTE(v157[0]) = 0;
    sub_18F0169CC();
    v39 = v36;
    v42 = v132;
    sub_18F09421C();
    if (!v42)
    {
      sub_18EF996E0();
      v43 = v128;
      sub_18F0942CC();
      (*(v129 + 8))(v32, v43);
      (*(v131 + 8))(v36, v33);
      v44 = v157[0];
      v39 = swift_allocObject();
      *(v39 + 16) = v44;
      goto LABEL_8;
    }

LABEL_7:
    (*(v131 + 8))(v36, v33);
    goto LABEL_8;
  }

  LOBYTE(v157[0]) = 1;
  if ((sub_18F0942FC() & 1) == 0)
  {
    LOBYTE(v157[0]) = 2;
    if (sub_18F0942FC())
    {
      (*(v131 + 8))(v36, v33);
      v39 = 0xD000000000000000;
      goto LABEL_8;
    }

    LOBYTE(v157[0]) = 3;
    if (sub_18F0942FC())
    {
      v39 = 0xD000000000000008;
      (*(v131 + 8))(v36, v33);
      goto LABEL_8;
    }

    LOBYTE(v157[0]) = 4;
    if (sub_18F0942FC())
    {
      LOBYTE(v157[0]) = 4;
      sub_18F0169CC();
      v39 = v36;
      v50 = v132;
      sub_18F09421C();
      v51 = v129;
      if (!v50)
      {
        sub_18EFA1418();
        v52 = v128;
        sub_18F0942CC();
        v53 = v131;
        (*(v51 + 8))(v27, v52);
        (*(v53 + 8))(v36, v33);
        v83 = v157[0];
        v84 = v157[1];
        v85 = v157[2];
        v86 = swift_allocObject();
        *(v86 + 16) = v83;
        *(v86 + 24) = v84;
        *(v86 + 32) = v85;
        v39 = v86 | 0x2000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v157[0]) = 5;
    if (sub_18F0942FC())
    {
      LOBYTE(v157[0]) = 5;
      sub_18F0169CC();
      v63 = v41;
      v39 = v36;
      v64 = v132;
      sub_18F09421C();
      if (!v64)
      {
        sub_18EF8E064();
        v65 = v128;
        sub_18F0942CC();
        v66 = v131;
        (*(v129 + 8))(v63, v65);
        (*(v66 + 8))(v36, v33);
        v67 = v157[0];
        v68 = v157[1];
        v69 = swift_allocObject();
        *(v69 + 16) = v67;
        *(v69 + 24) = v68;
        v39 = v69 | 0x3000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v157[0]) = 6;
    v70 = sub_18F0942FC();
    v71 = v132;
    if (v70)
    {
      LOBYTE(v157[0]) = 6;
      sub_18F0169CC();
      v72 = v127;
      v39 = v36;
      sub_18F09421C();
      if (!v71)
      {
        sub_18F017AB4();
        v73 = v128;
        sub_18F0942CC();
        v74 = v131;
        (*(v129 + 8))(v72, v73);
        (*(v74 + 8))(v36, v33);
        v75 = v157[0];
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        v39 = v76 | 0x4000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v157[0]) = 7;
    if (sub_18F0942FC())
    {
      LOBYTE(v157[0]) = 7;
      sub_18F0169CC();
      v77 = v126;
      v39 = v36;
      sub_18F09421C();
      if (v71)
      {
        goto LABEL_7;
      }

      sub_18EFABF98();
      v78 = v128;
      sub_18F0942CC();
      v79 = v131;
      (*(v129 + 8))(v77, v78);
      (*(v79 + 8))(v36, v33);
      v80 = v157[0];
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = 0x5000000000000000;
    }

    else
    {
      LOBYTE(v157[0]) = 8;
      if (sub_18F0942FC())
      {
        LOBYTE(v157[0]) = 8;
        sub_18F0169CC();
        v87 = v125;
        v39 = v36;
        sub_18F09421C();
        if (!v71)
        {
          sub_18EFA182C();
          v88 = v128;
          sub_18F0942CC();
          v89 = v131;
          (*(v129 + 8))(v87, v88);
          (*(v89 + 8))(v36, v33);
          v90 = v157[0];
          v91 = swift_allocObject();
          *(v91 + 16) = v90;
          v39 = v91 | 0x6000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v157[0]) = 9;
      if (sub_18F0942FC())
      {
        LOBYTE(v157[0]) = 9;
        sub_18F0169CC();
        v92 = v124;
        v39 = v36;
        sub_18F09421C();
        if (!v71)
        {
          sub_18EFA7380();
          v93 = v128;
          sub_18F0942CC();
          v94 = v131;
          (*(v129 + 8))(v92, v93);
          (*(v94 + 8))(v36, v33);
          v95 = v157[0];
          v96 = swift_allocObject();
          *(v96 + 16) = v95;
          v39 = v96 | 0x7000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v157[0]) = 10;
      if (sub_18F0942FC())
      {
        LOBYTE(v157[0]) = 10;
        sub_18F0169CC();
        v97 = v123;
        v39 = v36;
        sub_18F09421C();
        if (!v71)
        {
          sub_18F017A60();
          v98 = v128;
          sub_18F0942CC();
          (*(v129 + 8))(v97, v98);
          (*(v131 + 8))(v36, v33);
          v100 = v157[0];
          v101 = swift_allocObject();
          *(v101 + 16) = v100;
          v39 = v101 | 0x8000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v157[0]) = 11;
      if (sub_18F0942FC())
      {
        LOBYTE(v157[0]) = 11;
        sub_18F0169CC();
        v39 = v36;
        sub_18F09421C();
        if (v71)
        {
          goto LABEL_7;
        }

        sub_18F017A0C();
        sub_18F0942CC();
        (*(v129 + 8))(v122, v128);
        (*(v131 + 8))(v36, v33);
        v102 = v157[0];
        v103 = v157[1];
        v81 = swift_allocObject();
        *(v81 + 16) = v102;
        *(v81 + 24) = v103;
        v82 = 0x9000000000000000;
      }

      else
      {
        LOBYTE(v157[0]) = 12;
        if ((sub_18F0942FC() & 1) == 0)
        {
          LOBYTE(v157[0]) = 13;
          v130 = v33;
          v99 = v36;
          if (sub_18F0942FC())
          {
            LOBYTE(v157[0]) = 13;
            sub_18F0169CC();
            v39 = v36;
            sub_18F09421C();
            if (!v71)
            {
              sub_18F017964();
              sub_18F0942CC();
              (*(v129 + 8))(v120, v128);
              (*(v131 + 8))(v36, v130);
              v109 = v157[0];
              v110 = v157[1];
              v81 = swift_allocObject();
              *(v81 + 16) = v109;
              *(v81 + 24) = v110;
              v82 = 0xB000000000000000;
              goto LABEL_31;
            }
          }

          else
          {
            LOBYTE(v157[0]) = 14;
            if ((sub_18F0942FC() & 1) == 0)
            {
              v104 = sub_18F0940BC();
              swift_allocError();
              v106 = v105;
              v107 = v130;
              v39 = v99;
              sub_18F09422C();
              sub_18F0940AC();
              (*(*(v104 - 8) + 104))(v106, *MEMORY[0x1E69E6B00], v104);
              swift_willThrow();
              (*(v131 + 8))(v99, v107);
              goto LABEL_8;
            }

            LOBYTE(v157[0]) = 14;
            sub_18F0169CC();
            v39 = v36;
            sub_18F09421C();
            if (!v71)
            {
              sub_18F017910();
              sub_18F0942CC();
              v132 = 0;
              v127 = v157[0];
              v111 = v157[1];
              v112 = v157[2];
              v113 = v157[3];
              v114 = v157[4];
              v115 = v157[5];
              v116 = v157[6];
              v117 = swift_allocObject();
              v159[0] = v112;
              v159[1] = v113;
              v159[2] = v114;
              v159[3] = v115;
              v159[4] = v116;

              sub_18EFD0F5C(v127, v111, v159, __src);

              (*(v129 + 8))(v119, v128);
              (*(v131 + 8))(v99, v130);
              memcpy((v117 + 16), __src, 0x79uLL);
              v39 = v117 | 0x1000000000000000;
              goto LABEL_8;
            }
          }

          (*(v131 + 8))(v36, v130);
          goto LABEL_8;
        }

        LOBYTE(v157[0]) = 12;
        sub_18F0169CC();
        v39 = v36;
        sub_18F09421C();
        if (v71)
        {
          goto LABEL_7;
        }

        sub_18F0179B8();
        sub_18F0942CC();
        (*(v129 + 8))(v121, v128);
        (*(v131 + 8))(v36, v33);
        v108 = v157[0];
        v81 = swift_allocObject();
        *(v81 + 16) = v108;
        v82 = 0xA000000000000000;
      }
    }

LABEL_31:
    v39 = v81 | v82;
    goto LABEL_8;
  }

  LOBYTE(v157[0]) = 1;
  sub_18F0169CC();
  v45 = v30;
  v39 = v36;
  v46 = v132;
  sub_18F09421C();
  if (v46)
  {
    goto LABEL_7;
  }

  sub_18EF8E348();
  v48 = v128;
  sub_18F0942CC();
  v49 = v131;
  (*(v129 + 8))(v45, v48);
  (*(v49 + 8))(v36, v33);
  memcpy(v156, v157, 0x79uLL);
  v54 = v156[3];
  if (v156[3] && (v55 = v156[5]) != 0)
  {
    v56 = v156[2];
    v132 = 0;
    v57 = v156[4];
    v58 = swift_allocObject();
    v59 = v156[0];
    v60 = v156[1];

    sub_18F017B08(v156);
    v133[128] = 1;
    v134[0] = v59;
    v134[1] = v60;
    v135 = 0u;
    v136 = 0u;
    v137 = v56;
    v138 = v54;
    v139 = v57;
    v140 = v55;
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v144 = 1;
    v145[0] = v59;
    v145[1] = v60;
    v146 = 0u;
    v147 = 0u;
    v148 = v56;
    v149 = v54;
    v150 = v57;
    v151 = v55;
    v152 = 0u;
    v153 = 0u;
    v154 = 0;
    v155 = 1;
    sub_18F017B38(v134, v133);
    sub_18F017B08(v145);
    v61 = (v58 + 16);
    v62 = v134;
  }

  else
  {
    v58 = swift_allocObject();
    v61 = (v58 + 16);
    v62 = v157;
  }

  memcpy(v61, v62, 0x79uLL);
  v39 = v58 | 0x1000000000000000;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  return v39;
}

uint64_t sub_18EF8DA34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[9] != 1)
  {

    v4 = v0[11];
  }

  if (v0[13])
  {

    v5 = v0[14];

    v6 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_18EF8DAB0()
{
  sub_18EFA3DA4(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18EF8DAF0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18EF8DB20()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18EF8DB58()
{
  sub_18EFA3DA4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

unint64_t sub_18EF8DB94@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_18EF8C750(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18EF8DBC0()
{
  result = qword_1ED5FF470;
  if (!qword_1ED5FF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF470);
  }

  return result;
}

void OUTLINED_FUNCTION_12()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

uint64_t *OUTLINED_FUNCTION_12_1(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  result = v1;
  v3 = *(v0 + 368);
  return result;
}

uint64_t get_enum_tag_for_layout_string_So11LNValueTypeC12LinkMetadataE14CodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

uint64_t sub_18EF8DF18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_18F093B5C();
  OUTLINED_FUNCTION_404();

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LNSystemProtocolMetadataStorage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF8E064()
{
  result = qword_1ED5FE020;
  if (!qword_1ED5FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE020);
  }

  return result;
}

uint64_t sub_18EF8E0CC()
{
  OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  OUTLINED_FUNCTION_106(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_270();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
    OUTLINED_FUNCTION_333();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_18EF8E218()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_311(v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7(v8);
  v17 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_163();
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v3();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v1)
  {
    sub_18F09427C();
    v14 = *(v17 + 8);
    v15 = OUTLINED_FUNCTION_279();
    v16(v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EF8E348()
{
  result = qword_1ED5FE740;
  if (!qword_1ED5FE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE740);
  }

  return result;
}

void *sub_18EF8E39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D88, &qword_18F0A7C98);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8E900();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v31 = a2;
  LOBYTE(v39) = 0;
  v11 = sub_18F09427C();
  v32 = v12;
  LOBYTE(v39) = 1;
  v27 = sub_18F09423C();
  v30 = v13;
  LOBYTE(v39) = 2;
  v25 = sub_18F09423C();
  v26 = v14;
  LOBYTE(v38[0]) = 3;
  sub_18F01E4A8();
  sub_18F09426C();
  v36 = v39;
  v24 = v41;
  v28 = v40;
  v29 = v42;
  LOBYTE(v38[0]) = 4;
  sub_18F01E4FC();
  sub_18F09426C();
  v23 = v11;
  v34 = v40;
  v35 = v39;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v56 = 5;
  sub_18F01E550();
  sub_18F09426C();
  v33 = 0;
  (*(v10 + 8))(v8, v37);
  v18 = v57;
  v55 = v57;
  v19 = v23;
  v38[0] = v23;
  v38[1] = v32;
  v20 = v26;
  v38[2] = v27;
  v38[3] = v30;
  v38[4] = v25;
  v38[5] = v26;
  v21 = v28;
  v38[6] = v36;
  v38[7] = v28;
  v38[8] = v24;
  v38[9] = v29;
  v38[10] = v35;
  v38[11] = v34;
  v38[12] = v15;
  v38[13] = v16;
  v38[14] = v17;
  LOBYTE(v38[15]) = v57;
  sub_18F017B38(v38, &v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39 = v19;
  v40 = v32;
  v41 = v27;
  v42 = v30;
  v43 = v25;
  v44 = v20;
  v45 = v36;
  v46 = v21;
  v47 = v24;
  v48 = v29;
  v49 = v35;
  v50 = v34;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  sub_18F017B08(&v39);
  return memcpy(v31, v38, 0x79uLL);
}

void *sub_18EF8E8B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EF8E39C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x79uLL);
  }

  return result;
}

unint64_t sub_18EF8E900()
{
  result = qword_1ED5FE758;
  if (!qword_1ED5FE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE758);
  }

  return result;
}

unint64_t sub_18EF8E95C(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6D6574737973;
      break;
    case 4:
      result = 0x656C6261646F63;
      break;
    case 5:
      result = 7958113;
      break;
    default:
      return result;
  }

  return result;
}

void sub_18EF8EA2C(void *a1@<X8>)
{
  sub_18EF8E218();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

unint64_t sub_18EF8EABC()
{
  result = qword_1ED5FE040;
  if (!qword_1ED5FE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_322(uint64_t a1)
{
  *(v1 - 80) = a1;
  *(v1 - 72) = 0;
  return v1 - 88;
}

uint64_t sub_18EF8EB64()
{
  sub_18F093B8C();
  OUTLINED_FUNCTION_327();
  sub_18F09452C();
  OUTLINED_FUNCTION_268();
  sub_18F093C1C();
  v0 = sub_18F09456C();

  return v0;
}

uint64_t sub_18EF8EC00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_18EF8EC24() & 1;
}

uint64_t sub_18EF8EC24()
{
  v0 = sub_18F093B8C();
  v2 = v1;
  if (v0 == sub_18F093B8C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v5 = sub_18F09444C();
  }

  return v5 & 1;
}

uint64_t sub_18EF8ECE0()
{
  OUTLINED_FUNCTION_115();

  v2 = sub_18F093B7C();
  *v0 = 0;
  return v2 & 1;
}

unint64_t sub_18EF8F39C()
{
  result = qword_1ED5FDD28[0];
  if (!qword_1ED5FDD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FDD28);
  }

  return result;
}

unint64_t sub_18EF8F408()
{
  result = qword_1ED5FDF88;
  if (!qword_1ED5FDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF88);
  }

  return result;
}

void OUTLINED_FUNCTION_236(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t sub_18EF8F4C8()
{
  result = qword_1ED5FDFC8;
  if (!qword_1ED5FDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFC8);
  }

  return result;
}

uint64_t sub_18EF8F524(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_18EF8F564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = _s14CodableWrapperVMa_0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8328, &qword_18F0A1060);
  v35 = *(v39 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v31 - v16;
  v18 = _s14CodableWrapperVMa_2(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v20 + 20);
  __swift_storeEnumTagSinglePayload(&v22[v45], 1, 1, v12);
  v23 = v18[6];
  v24 = _s14CodableWrapperOMa(0);
  v44 = v23;
  __swift_storeEnumTagSinglePayload(&v22[v23], 1, 1, v24);
  v43 = v18[7];
  __swift_storeEnumTagSinglePayload(&v22[v43], 1, 1, v24);
  v41 = v18[9];
  __swift_storeEnumTagSinglePayload(&v22[v41], 1, 1, v12);
  v26 = a1[3];
  v25 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v26);
  sub_18EF9208C();
  v38 = v17;
  v27 = v40;
  sub_18F09459C();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_18EF933AC(&v22[v45], &qword_1EACB72D0);
    sub_18EF933AC(&v22[v44], &qword_1EACB7830);
    sub_18EF933AC(&v22[v43], &qword_1EACB7830);

    return sub_18EF933AC(&v22[v41], &qword_1EACB72D0);
  }

  else
  {
    v40 = v24;
    v28 = v35;
    v52 = 0;
    v29 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F0942CC();
    sub_18EF88240(v37, v22);
    v51 = 1;
    sub_18F09426C();
    v37 = v29;
    sub_18EF872D4();
    v50 = 2;
    sub_18EF8558C(&unk_1ED5FE068);
    sub_18F09426C();
    sub_18EF872D4();
    v49 = 3;
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v48 = 4;
    sub_18EF883DC();
    sub_18F09426C();
    *&v22[v18[8]] = v46;
    v47 = 5;
    sub_18F09426C();
    (*(v28 + 8))(v38, v39);
    sub_18EF872D4();
    sub_18EF86A14(v22, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF8FCA8()
{
  result = qword_1ED5FDBC0;
  if (!qword_1ED5FDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBC0);
  }

  return result;
}

uint64_t sub_18EF8FCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EF8FD24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EF8FD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1635017060 && a2 == 0xE400000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F63497369 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_18EF8FED0(char a1)
{
  result = 0x6D614E6567616D69;
  switch(a1)
  {
    case 1:
      result = 0x6D496D6574737973;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 1635017060;
      break;
    case 4:
      result = 0x6E6F63497369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EF8FF7C(char a1)
{
  if (a1)
  {
    return 0x617A69726F6C6F63;
  }

  else
  {
    return 12383;
  }
}

unint64_t sub_18EF8FFB0()
{
  result = qword_1ED5FCF50;
  if (!qword_1ED5FCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF50);
  }

  return result;
}

uint64_t sub_18EF90004(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

unint64_t sub_18EF9003C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x5464656C676E616DLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x7365736163;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6D65747379537369;
      break;
    case 10:
      result = 0x736D796E6F6E7973;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EF90250()
{
  result = qword_1ED5FE000;
  if (!qword_1ED5FE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF8558C(&unk_1ED5FDFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE000);
  }

  return result;
}

uint64_t sub_18EF9030C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8340, &qword_18F0A1070);
  v115 = *(v116 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v122 = &v103 - v4;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8348, &qword_18F0A1078);
  v114 = *(v124 - 8);
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v103 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8350, &qword_18F0A1080);
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v127 = &v103 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8358, &qword_18F0A1088);
  v110 = *(v111 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v119 = &v103 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8360, &qword_18F0A1090);
  v112 = *(v113 - 8);
  v11 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v120 = &v103 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8368, &qword_18F0A1098);
  v128 = *(v126 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v15 = &v103 - v14;
  v125 = _s14CodableWrapperOMa(0);
  v16 = *(*(v125 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v125);
  v109 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v103 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v103 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v103 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (&v103 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v103 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v129 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v33);
  sub_18EF8FCA8();
  v35 = v130;
  sub_18F09459C();
  if (v35)
  {
    goto LABEL_9;
  }

  v106 = v27;
  v105 = v30;
  v107 = v21;
  v108 = v24;
  v37 = v126;
  v36 = v127;
  v130 = v32;
  v38 = sub_18F0942EC();
  sub_18EF89690(v38, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_8;
  }

  v104 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF9146CLL);
  }

  v43 = *(v40 + v41);
  sub_18F019378(v41 + 1, v42 >> 1, v39, v40, v41, v42);
  v45 = v44;
  v47 = v46;
  swift_unknownObjectRelease();
  v48 = v124;
  if (v45 != v47 >> 1)
  {
LABEL_8:
    v53 = v125;
    v54 = sub_18F0940BC();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v56 = v53;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v128 + 8))(v15, v37);
LABEL_9:
    v58 = v129;
    return __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  v49 = v104;
  v50 = v123;
  switch(v43)
  {
    case 1:
      LOBYTE(v131) = 1;
      sub_18EF91480();
      v65 = v119;
      sub_18F09421C();
      if (v49)
      {
        goto LABEL_18;
      }

      LOBYTE(v131) = 0;
      v66 = v111;
      v67 = v65;
      v71 = sub_18F09427C();
      v73 = v72;
      LOBYTE(v137) = 1;
      sub_18EF8FFB0();
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v110 + 8))(v67, v66);
      (*(v128 + 8))(v15, v37);
      v86 = v133;
      v87 = v134;
      v88 = v135;
      v136 = v135;
      v77 = v106;
      *v106 = v71;
      v77[1] = v73;
      v89 = v132;
      *(v77 + 1) = v131;
      *(v77 + 2) = v89;
      v77[6] = v86;
      *(v77 + 56) = v87;
      *(v77 + 57) = v88;
      goto LABEL_20;
    case 2:
      LOBYTE(v131) = 2;
      sub_18F01950C();
      sub_18F09421C();
      if (v49)
      {
        goto LABEL_18;
      }

      sub_18F0932BC();
      LOBYTE(v131) = 0;
      sub_18EF8558C(&unk_1ED5FF550);
      sub_18F0942CC();
      LOBYTE(v131) = 1;
      sub_18F09429C();
      v79 = v78;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
      *&v108[v80[12]] = v79;
      LOBYTE(v131) = 2;
      sub_18F09429C();
      v90 = v80[16];
      v124 = v80[20];
      *&v108[v90] = v91;
      type metadata accessor for LNImageDisplayStyle(0);
      LOBYTE(v131) = 3;
      sub_18EF8558C(&unk_1ED5FCE60);
      v92 = v118;
      sub_18F09426C();
      v93 = v92;
      v94 = v108;
      swift_unknownObjectRelease();
      (*(v117 + 8))(v36, v93);
      (*(v128 + 8))(v15, v37);
      swift_storeEnumTagMultiPayload();
      v102 = v94;
      goto LABEL_21;
    case 3:
      LOBYTE(v131) = 3;
      sub_18F0194B8();
      v62 = v121;
      sub_18F09421C();
      if (v49)
      {
        goto LABEL_18;
      }

      LOBYTE(v137) = 0;
      sub_18F0183E8();
      v63 = v62;
      sub_18F0942CC();
      v64 = v128;
      v127 = *(&v131 + 1);
      v122 = v131;
      type metadata accessor for LNImageDisplayStyle(0);
      v136 = 1;
      sub_18EF8558C(&unk_1ED5FCE60);
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v114 + 8))(v63, v48);
      (*(v64 + 8))(v15, v37);
      v81 = v137;
      v82 = v138;
      v83 = v107;
      v84 = v127;
      *v107 = v122;
      v83[1] = v84;
      v83[2] = v81;
      *(v83 + 24) = v82;
      swift_storeEnumTagMultiPayload();
      v102 = v83;
      goto LABEL_21;
    case 4:
      LOBYTE(v131) = 4;
      sub_18F019464();
      v60 = v122;
      sub_18F09421C();
      if (v49)
      {
        goto LABEL_18;
      }

      type metadata accessor for LNImageISIconType(0);
      LOBYTE(v137) = 0;
      sub_18EF8558C(&unk_1ED5FD2C0);
      v61 = v116;
      sub_18F0942CC();
      v127 = v131;
      LOBYTE(v137) = 1;
      v74 = sub_18F09427C();
      v76 = v75;
      swift_unknownObjectRelease();
      (*(v115 + 8))(v60, v61);
      (*(v128 + 8))(v15, v37);
      v77 = v109;
      *v109 = v127;
      v77[1] = v74;
      v77[2] = v76;
LABEL_20:
      swift_storeEnumTagMultiPayload();
      v102 = v77;
LABEL_21:
      v100 = v130;
      sub_18EF88240(v102, v130);
      v101 = v129;
      goto LABEL_22;
    default:
      LOBYTE(v131) = 0;
      sub_18F019560();
      v51 = v120;
      sub_18F09421C();
      if (v49)
      {
LABEL_18:
        (*(v128 + 8))(v15, v37);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      LOBYTE(v131) = 0;
      v52 = v113;
      v68 = sub_18F09427C();
      v70 = v69;
      LOBYTE(v131) = 1;
      v124 = sub_18F09423C();
      v127 = v85;
      type metadata accessor for LNImageDisplayStyle(0);
      LOBYTE(v137) = 2;
      sub_18EF8558C(&unk_1ED5FCE60);
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v112 + 8))(v51, v52);
      (*(v128 + 8))(v15, v37);
      v95 = v131;
      v96 = BYTE8(v131);
      v97 = v105;
      *v105 = v68;
      v97[1] = v70;
      v98 = v127;
      v97[2] = v124;
      v97[3] = v98;
      v97[4] = v95;
      *(v97 + 40) = v96;
      swift_storeEnumTagMultiPayload();
      v99 = v97;
      v100 = v130;
      sub_18EF88240(v99, v130);
      v101 = v129;
      v50 = v123;
LABEL_22:
      sub_18EF88240(v100, v50);
      v58 = v101;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

unint64_t sub_18EF91480()
{
  result = qword_1ED5FD9E8;
  if (!qword_1ED5FD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD9E8);
  }

  return result;
}

_OWORD *sub_18EF914D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void LNEnumMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v13 = v12;
  v52 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_164();
  v19 = _s14CodableWrapperVMa_0(0);
  v20 = OUTLINED_FUNCTION_36(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7658, &qword_18F09BE70);
  OUTLINED_FUNCTION_7(v53);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_46();
  v26 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v27 = OUTLINED_FUNCTION_36(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22();
  v56 = v30[9];
  v57 = v30;
  v55 = (v32 - v31);
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
  v36 = v13[4];
  v54 = v13;
  OUTLINED_FUNCTION_190(v13, v13[3]);
  sub_18EF8F408();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v10)
  {
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_385();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);

    if (v36)
    {
      v37 = v57[8];
      OUTLINED_FUNCTION_26();
      sub_18EF86A6C();
    }

    sub_18EF933AC(v55 + v56, &qword_1EACB72D0);
    if (v13)
    {
      v38 = *(v55 + v57[10]);
    }
  }

  else
  {
    LOBYTE(a10) = 0;
    *v55 = sub_18F09427C();
    v55[1] = v39;
    OUTLINED_FUNCTION_208(1);
    v55[2] = sub_18F09423C();
    v55[3] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F09426C();
    v55[4] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    OUTLINED_FUNCTION_294();
    sub_18EF861C4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F09426C();
    v55[5] = a10;
    OUTLINED_FUNCTION_379();
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v41);
    OUTLINED_FUNCTION_321();
    sub_18F0942CC();
    v42 = v57[8];
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v11, v55 + v43);
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_321();
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF90250();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F0942CC();
    *(v55 + v57[10]) = a10;
    OUTLINED_FUNCTION_208(7);
    v44 = sub_18F09423C();
    v45 = (v55 + v57[11]);
    *v45 = v44;
    v45[1] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_47();
    sub_18F09426C();
    *(v55 + v57[12]) = a10;
    OUTLINED_FUNCTION_208(9);
    *(v55 + v57[13]) = sub_18F09424C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    OUTLINED_FUNCTION_361();
    sub_18EF883DC();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    *(v55 + v57[14]) = a10;
    OUTLINED_FUNCTION_208(11);
    v47 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v47, v48, v57[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    OUTLINED_FUNCTION_360();
    sub_18F0134B4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    *(v55 + v57[16]) = a10;
    sub_18EF99E5C();
    OUTLINED_FUNCTION_126();
    sub_18F09426C();
    *(v55 + v57[17]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    v49 = v57[18];
    v50 = OUTLINED_FUNCTION_341();
    v51(v50);
    *(v55 + v49) = a10;
    OUTLINED_FUNCTION_199();
    sub_18EF86A14(v55, v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    OUTLINED_FUNCTION_23();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_18EF91D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = _s14CodableWrapperVMa_2(0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80E0, &qword_18F0A0F88);
  v21 = *(v23 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  v10 = _s14CodableWrapperVMa_18(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8F4C8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v10;
  v15 = v21;
  v25 = 0;
  *v13 = sub_18F09427C();
  v13[1] = v16;
  v18 = v16;
  v24 = 1;
  sub_18EF8558C(&unk_1ED5FE420);
  sub_18F0942CC();
  (*(v15 + 8))(v9, v23);
  sub_18EF88240(v6, v13 + *(v19 + 20));
  sub_18EF86A14(v13, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EF9208C()
{
  result = qword_1ED5FE090;
  if (!qword_1ED5FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE090);
  }

  return result;
}

uint64_t sub_18EF920E0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x32566567616D69;
      break;
    case 4:
      result = 0x736D796E6F6E7973;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

id sub_18EF928FC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EF9CEB8(v13, v9, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EF92A54(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(a3 + 48) + v15);
    v37 = *(*(a3 + 56) + v15);

    v17 = v16;
    a1(&v33, &v37);
    if (v5)
    {
      break;
    }

    v10 &= v10 - 1;

    if (v34)
    {
      sub_18EF914D4(&v33, v36);
      sub_18EF914D4(v36, v35);
      v18 = *(v6 + 16);
      if (*(v6 + 24) <= v18)
      {
        a4(v18 + 1, 1);
      }

      v6 = v38;
      v19 = *(v38 + 40);
      sub_18F093B8C();
      sub_18F09452C();
      sub_18F093C1C();
      v20 = sub_18F09456C();

      v21 = v6 + 64;
      v22 = -1 << *(v6 + 32);
      v23 = v20 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v6 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_24;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v6 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v6 + 48) + 8 * v25) = v17;
      result = sub_18EF914D4(v35, (*(v6 + 56) + 32 * v25));
      ++*(v6 + 16);
    }

    else
    {

      result = sub_18EF933AC(&v33, &qword_1EACB9180);
    }
  }

LABEL_25:

  return v6;
}

void OUTLINED_FUNCTION_26_0()
{
  v3 = *(v0 - 96);
  v1 = *(v0 - 104);
  v2 = *(v0 - 103);
}

uint64_t OUTLINED_FUNCTION_354()
{
}

void sub_18EF92E2C()
{
  OUTLINED_FUNCTION_34_0();
  v2 = *v1;
  v3 = *(*v1 + 24);
  OUTLINED_FUNCTION_15_0(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_38_0();
  if (!*(v2 + 16))
  {
LABEL_30:

    *v0 = v8;
    return;
  }

  v38 = v2;
  v9 = 0;
  v10 = v2;
  OUTLINED_FUNCTION_0_7();
  v13 = v12 & v11;
  OUTLINED_FUNCTION_25_0();
  if (!v13)
  {
LABEL_4:
    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v0)
      {
        break;
      }

      ++v15;
      if (*(v10 + 8 * v9))
      {
        OUTLINED_FUNCTION_229();
        v13 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (v39)
    {
      v32 = *(v2 + 32);
      OUTLINED_FUNCTION_9_1();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_11_1(v33);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_8_1();
        sub_18EFAF4AC(v36, v37, v10);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v18 = v14 | (v9 << 6);
    v19 = *(v2 + 56);
    v20 = *(*(v2 + 48) + 8 * v18);
    v21 = (v19 + 32 * v18);
    if (v39)
    {
      sub_18EF914D4(v21, v40);
    }

    else
    {
      sub_18EFB6E2C(v21, v40);
      v22 = v20;
    }

    v23 = *(v8 + 40);
    sub_18F093B8C();
    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();

    v24 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_22:
    OUTLINED_FUNCTION_2_4();
    *(v8 + 64 + v29) |= v30;
    *(*(v8 + 48) + 8 * v31) = v20;
    sub_18EF914D4(v40, (*(v8 + 56) + 32 * v31));
    OUTLINED_FUNCTION_13_1();
    v2 = v38;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    OUTLINED_FUNCTION_19_0(v26);
    if (!v25)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void OUTLINED_FUNCTION_24_0(uint64_t a1@<X8>)
{
  *(v6 + v1) = v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

id sub_18EF9307C()
{
  OUTLINED_FUNCTION_115();
  if (v2)
  {
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    v3 = OUTLINED_FUNCTION_414();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 initWithName:v1 numericFormat:v0 synonyms:v3];

  return v4;
}

uint64_t OUTLINED_FUNCTION_275()
{
  v2 = *(v0 - 96);

  return sub_18F0943CC();
}

id sub_18EF93150(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = *a1;
    v3 = a1[1];

    v4 = sub_18F093B5C();
  }

  else
  {
    v4 = 0;
  }

  if (a1[3])
  {
    v5 = a1[2];
    v6 = a1[3];

    v7 = sub_18F093B5C();
  }

  else
  {
    v7 = 0;
  }

  if (a1[5])
  {
    v8 = a1[4];

    v9 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntroducedVersion:v4 deprecatedVersion:v7 obsoletedVersion:v9];

  return v10;
}

void sub_18EF9328C()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21();
  v9 = _s14CodableWrapperVMa_0(v8);
  v10 = OUTLINED_FUNCTION_95(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v13 = v1;
  v14 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF9CEB8(v14, v15, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EF933AC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_311(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_18EF933FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v52 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8698, &qword_18F0A12C0);
  v5 = *(*(v64 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v64);
  v58 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = (&v52 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v52 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v52 - v13);
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v60 = a1;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  v53 = v19;
  v54 = a1 + 64;
  v55 = v12;
  v56 = v14;
  if (v18)
  {
    while (1)
    {
      v63 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v18)) | (v20 << 6);
      v24 = *(v60 + 56);
      v25 = *(*(v60 + 48) + 8 * v23);
      v26 = (_s14CodableWrapperVMa_0(0) - 8);
      v27 = v64;
      sub_18EF86A14(v24 + *(*v26 + 72) * v23, v14 + *(v64 + 48));
      *v14 = v25;
      sub_18EF9FE2C();
      v62 = *v12;
      v61 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      v28 = v57;
      sub_18EF9FE2C();
      v29 = *v28;
      v30 = v25;

      v31 = *(v27 + 48);
      v32 = v58;
      sub_18EF9FE2C();

      v33 = v32 + *(v27 + 48);
      v34 = v26[9];
      v35 = v59;
      sub_18EF9FE2C();
      sub_18EF86A6C();
      v36 = sub_18EF9CEB8(v28 + v31, v35, 0);
      v37 = v63;
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v37;
      v38 = v62;
      sub_18EF952E4();
      if (__OFADD__(v37[2], (v40 & 1) == 0))
      {
        break;
      }

      v41 = v39;
      v42 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86A0, &qword_18F0A12C8);
      if (sub_18F09417C())
      {
        sub_18EF952E4();
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_23;
        }

        v41 = v43;
      }

      v14 = v56;
      v21 = v65;
      if (v42)
      {
        v45 = v65[7];
        v46 = *(v45 + 8 * v41);
        *(v45 + 8 * v41) = v36;

        sub_18EF933AC(v14, &qword_1EACB8698);
      }

      else
      {
        v65[(v41 >> 6) + 8] |= 1 << v41;
        *(v21[6] + 8 * v41) = v38;
        *(v21[7] + 8 * v41) = v36;
        sub_18EF933AC(v14, &qword_1EACB8698);
        v47 = v21[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_22;
        }

        v21[2] = v49;
      }

      v18 &= v18 - 1;
      v50 = *(v64 + 48);
      v12 = v55;
      sub_18EF86A6C();
      v19 = v53;
      v15 = v54;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v21;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v63 = v21;
        v20 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

id sub_18EF938B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a3;
  v15 = sub_18EF9CEB8(v13, v9, a3);
  v16 = _s14CodableWrapperVMa_1(0);
  v17 = v16[5];
  v32 = a2;
  v33 = a3;
  v18 = sub_18EFD9B58(sub_18EFB0F1C);
  v19 = *(a1 + v16[6]);
  v30 = a2;
  v31 = a3;
  sub_18EF9D97C(sub_18EFA3E10);
  v20 = sub_18F093DBC();

  v21 = v16[7];
  v28 = a2;
  v29 = a3;
  v22 = sub_18EF9EBC8(sub_18EFA3E10);
  sub_18EF825F4(0, &qword_1ED5FE1F0, off_1E72AFE80);
  v23 = sub_18EF9DA9C(a1 + v16[8], a2);
  v24 = [v27 initWithDescriptionText:v15 categoryName:v18 searchKeywords:v20 resultValueName:v22 icon:v23];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v24;
}

void *sub_18EF93B88(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = result;
  v7 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v8 = *(a3 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return v14;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = a4(0);
    v11 = *(v9 - 8);
    result = (v9 - 8);
    v10 = v11;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

    result = v6(&v16, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
    if (v4)
    {
      v13 = v14;

      return v13;
    }

    ++v7;
    if (v16)
    {
      MEMORY[0x193AD88C0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_320();
      result = sub_18F093E3C();
      v14 = v17;
      v7 = v12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18EF93D0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  i = a1;
  v148 = a2;
  v149 = a4;
  v5 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v145 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v139 - v9;
  v10 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v144 = (&v139 - v14);
  v15 = type metadata accessor for MeasurementWrapper(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18F09310C();
  v141 = *(v18 - 8);
  v19 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18F09331C();
  v140 = *(v22 - 8);
  v23 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_18F0932BC();
  v139 = *(v26 - 8);
  v27 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v139 - v32;
  v34 = _s14CodableWrapperVMa_0(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = (&v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v36);
  v41 = &v139 - v40;
  switch(a3 >> 60)
  {
    case 1uLL:
      v106 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v107 = v149;
      v149[3] = MEMORY[0x1E69E63B0];
      *v107 = v106;
      return result;
    case 2uLL:
      v93 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v92 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v94 = v149;
      v149[3] = MEMORY[0x1E69E6158];
      *v94 = v93;
      v94[1] = v92;

    case 3uLL:
      v95 = swift_projectBox();
      sub_18EF86A14(v95, v41);
      v96 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF86A14(v41, v38);
      sub_18EF9FE2C();
      v97 = v148;
      v98 = v148;
      v99 = sub_18EF9CEB8(v38, v33, v97);
      v100 = v149;
      v149[3] = v96;
      *v100 = v99;
      return sub_18EF86A6C();
    case 4uLL:
      v58 = swift_projectBox();
      v59 = v139;
      (*(v139 + 16))(v29, v58, v26);
      v60 = v149;
      v149[3] = v26;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      return (*(v59 + 32))(boxed_opaque_existential_0, v29, v26);
    case 5uLL:
      v108 = swift_projectBox();
      v109 = v140;
      (*(v140 + 16))(v25, v108, v22);
      v110 = v149;
      v149[3] = v22;
      v111 = __swift_allocate_boxed_opaque_existential_0(v110);
      return (*(v109 + 32))(v111, v25, v22);
    case 6uLL:
      v117 = swift_projectBox();
      v118 = v141;
      (*(v141 + 16))(v21, v117, v18);
      v119 = v149;
      v149[3] = v18;
      v120 = __swift_allocate_boxed_opaque_existential_0(v119);
      return (*(v118 + 32))(v120, v21, v18);
    case 7uLL:
      v101 = swift_projectBox();
      v102 = v142;
      sub_18EF86A14(v101, v142);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
      v104 = v149;
      v149[3] = v103;
      v105 = __swift_allocate_boxed_opaque_existential_0(v104);
      (*(*(v103 - 8) + 16))(v105, v102, v103);
      return sub_18EF86A6C();
    case 8uLL:
      v134 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v135 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
      v90 = &unk_1EACB87C0;
      v91 = 0x1E696E840;
      goto LABEL_32;
    case 9uLL:
      v88 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v89 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
      v90 = &unk_1EACB87B8;
      v91 = 0x1E695FC20;
LABEL_32:
      v136 = sub_18EF825F4(0, v90, v91);
      result = sub_18F093EEC();
      v138 = v149;
      if (result)
      {
        v149[3] = v136;
        *v138 = result;
      }

      else
      {
        *v149 = 0u;
        *(v138 + 16) = 0u;
      }

      return result;
    case 0xAuLL:
      v121 = swift_projectBox();
      v122 = v144;
      sub_18EF86A14(v121, v144);
      v123 = sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
      v124 = v143;
      sub_18EF86A14(v122, v143);
      sub_18EF9FE2C();
      v125 = v148;
      v126 = v148;
      LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v124, v33, v125, v127, v128, v129, v130, v131, v139, v140, v141, v142, v143, v144, v145, v146, i, v148, v149, v150);
      v132 = v149;
      v149[3] = v123;
      *v132 = v133;
      return sub_18EF86A6C();
    case 0xBuLL:
      v45 = swift_projectBox();
      v46 = v146;
      sub_18EF86A14(v45, v146);
      v47 = sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
      v48 = v145;
      sub_18EF86A14(v46, v145);
      sub_18EF9FE2C();
      v49 = v148;
      v50 = v148;
      LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v48, v33, v49, v51, v52, v53, v54, v55, v139, v140, v141, v142, v143, v144, v145, v146, i, v148, v149, v150);
      v56 = v149;
      v149[3] = v47;
      *v56 = v57;
      return sub_18EF86A6C();
    case 0xCuLL:
      v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB87A8, &qword_18F0A1390);
      v63 = sub_18F0941CC();
      v44 = v63;
      v64 = 0;
      v65 = v62 + 64;
      v66 = 1 << *(v62 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = v67 & *(v62 + 64);
      v69 = (v66 + 63) >> 6;
      v145 = v63 + 64;
      v146 = v62;
      v144 = v63;
      if (v68)
      {
        goto LABEL_9;
      }

      break;
    case 0xDuLL:
      v112 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](result);
      v113 = v148;
      *(&v139 - 2) = i;
      *(&v139 - 1) = v113;
      v115 = sub_18EFA40F4(sub_18EF92D60, (&v139 - 4), v114);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
      v116 = v149;
      v149[3] = result;
      *v116 = v115;
      return result;
    case 0xEuLL:
      v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      result = sub_18EF825F4(0, &qword_1EACB87A0, 0x1E695DFB0);
      goto LABEL_35;
    default:
      v42 = *(a3 + 16);
      v43 = v149;
      v149[3] = MEMORY[0x1E69E6530];
      *v43 = v42;
      return result;
  }

LABEL_10:
  v71 = v64;
  while (1)
  {
    v64 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v64 >= v69)
    {
      break;
    }

    v72 = *(v65 + 8 * v64);
    ++v71;
    if (v72)
    {
      v70 = __clz(__rbit64(v72));
      for (i = (v72 - 1) & v72; ; i = (v68 - 1) & v68)
      {
        v73 = v70 | (v64 << 6);
        v74 = *(v146 + 56);
        v75 = *(v146 + 48) + 16 * v73;
        v76 = *(v75 + 8);
        v148 = *v75;
        v77 = (v74 + 16 * v73);
        v78 = *v77;
        v79 = v77[1];
        v80 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v81 = [v80 initWithInteger_];
        v82 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v83 = [objc_allocWithZone(LNIntentCollectionSize) initWithMin:v81 max:v82];

        v44 = v144;
        *(v145 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        v84 = (v44[6] + 16 * v73);
        *v84 = v148;
        v84[1] = v76;
        *(v44[7] + 8 * v73) = v83;
        v85 = v44[2];
        v86 = __OFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          break;
        }

        v44[2] = v87;
        v68 = i;
        if (!i)
        {
          goto LABEL_10;
        }

LABEL_9:
        v70 = __clz(__rbit64(v68));
      }

LABEL_40:
      __break(1u);
      JUMPOUT(0x18EF94824);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB87B0, &qword_18F0A1398);
LABEL_35:
  v137 = v149;
  v149[3] = result;
  *v137 = v44;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_18EF86A6C();
}

void sub_18EF94914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18EF94930();
}

void sub_18EF94930()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21();
  v9 = _s14CodableWrapperVMa_12(v8);
  v10 = OUTLINED_FUNCTION_95(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v13 = v1;
  v14 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF94A50(v14, v15, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

id sub_18EF94A50(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - v12;
  v14 = _s14CodableWrapperVMa_0(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v21 = sub_18EF9E62C(a1[2]);
  if (v21)
  {
    v22 = v21;
    v60 = a2;
    v23 = _s14CodableWrapperVMa_12(0);
    v24 = v23[6];
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_18EF933AC(v13, &qword_1EACB72D0);
      if (a1[1])
      {
        v25 = *a1;
        v26 = sub_18F093B5C();
      }

      else
      {
        v26 = 0;
      }

      v29 = v23[8];
      v30 = a1 + v23[7];
      if (v30[8])
      {
        v31 = 0;
      }

      else
      {
        v31 = *v30;
      }

      if (*(a1 + v29 + 8))
      {
        v32 = *(a1 + v29);
        v33 = sub_18F093B5C();
      }

      else
      {
        v33 = 0;
      }

      v40 = *(a1 + v23[9]);
      v41 = (a1 + v23[10]);
      if (v41[1])
      {
        v42 = *v41;
        v43 = sub_18F093B5C();
      }

      else
      {
        v43 = 0;
      }

      v48 = (a1 + v23[11]);
      if (v48[1])
      {
        v49 = *v48;
        v50 = sub_18F093B5C();
      }

      else
      {
        v50 = 0;
      }

      v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v26 valueType:v22 title:0 capabilities:v31 updateActionIdentifier:v33 optional:v40 & 1 spotlightAttributeKey:v43 spotlightCustomAttributeKey:v50];

      sub_18EF933AC(v60, &qword_1EACB72C8);
    }

    else
    {
      sub_18EF88240(v13, v20);
      if (a1[1])
      {
        v28 = *a1;
        v59 = sub_18F093B5C();
      }

      else
      {
        v59 = 0;
      }

      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF86A14(v20, v18);
      sub_18EF9FE2C();
      v58 = a3;
      v34 = sub_18EF9CEB8(v18, v9, a3);
      v35 = v23[8];
      v36 = a1 + v23[7];
      if (v36[8])
      {
        v37 = 0;
      }

      else
      {
        v37 = *v36;
      }

      if (*(a1 + v35 + 8))
      {
        v38 = *(a1 + v35);
        v39 = sub_18F093B5C();
      }

      else
      {
        v39 = 0;
      }

      v44 = *(a1 + v23[9]);
      v45 = (a1 + v23[10]);
      if (v45[1])
      {
        v46 = *v45;
        v47 = sub_18F093B5C();
      }

      else
      {
        v47 = 0;
      }

      v51 = (a1 + v23[11]);
      if (v51[1])
      {
        v52 = *v51;
        v53 = sub_18F093B5C();
      }

      else
      {
        v53 = 0;
      }

      v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v55 = v44 & 1;
      v56 = v59;
      v27 = [v54 initWithIdentifier:v59 valueType:v22 title:v34 capabilities:v37 updateActionIdentifier:v39 optional:v55 spotlightAttributeKey:v47 spotlightCustomAttributeKey:v53];

      sub_18EF933AC(v60, &qword_1EACB72C8);
      sub_18EF86A6C();
    }

    sub_18EF86A6C();
  }

  else
  {
    sub_18EF933AC(a2, &qword_1EACB72C8);

    sub_18EF86A6C();
    return 0;
  }

  return v27;
}

id sub_18EF94F6C(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E72B0B40[a1]];
  }
}

uint64_t sub_18EF94FC0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v32 = v5;
  v33 = v1;
  if (v4)
  {
    while (1)
    {
      v8 = v6;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = (*(a1 + 48) + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(a1 + 56) + 48 * v9;
      v14 = *(v13 + 32);
      v36 = *(v13 + 16);
      v37 = v14;
      v35 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 24);
      v17 = *(v13 + 40);
      v38 = v35;
      v39 = v36;
      v40 = v14;

      sub_18EF9FE2C();
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v18 = sub_18F093B5C();
      sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);

      v19 = sub_18EF93150(&v35);
      swift_isUniquelyReferenced_nonNull_native();
      sub_18EF952E4();
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8898, &qword_18F0A1458);
      if (sub_18F09417C())
      {
        sub_18EF952E4();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_22;
        }

        v22 = v24;
      }

      v4 &= v4 - 1;
      if (v23)
      {
        v26 = v7[7];
        v27 = *(v26 + 8 * v22);
        *(v26 + 8 * v22) = v19;
      }

      else
      {
        v7[(v22 >> 6) + 8] |= 1 << v22;
        *(v7[6] + 8 * v22) = v18;
        *(v7[7] + 8 * v22) = v19;

        v28 = v7[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_21;
        }

        v7[2] = v30;
      }

      v6 = v8;
      v5 = v32;
      v1 = v33;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        return v7;
      }

      v4 = *(v1 + 8 * v8);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for LNPlatformName();
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void sub_18EF952E4()
{
  v1 = *(v0 + 40);
  sub_18F093B8C();
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F09456C();
  OUTLINED_FUNCTION_284();

  OUTLINED_FUNCTION_292();
  sub_18EF9536C();
}

void sub_18EF9536C()
{
  OUTLINED_FUNCTION_260();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = sub_18F093B8C();
    v7 = v6;
    if (v5 == sub_18F093B8C() && v7 == v8)
    {

      break;
    }

    OUTLINED_FUNCTION_264();
    v10 = sub_18F09444C();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_259();
}

void OUTLINED_FUNCTION_255(void *a1@<X8>)
{
  v3 = *(v2 - 272);
  *a1 = *(v2 - 264);
  a1[1] = v3;
  v4 = *(v1 + 48);
  v5 = *(v2 - 280);
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata016LNSystemProtocolB7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 32) & 0xF;
  }
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  v3 = *(v1 + 96);
  result = v0;
  v5 = *(v2 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return sub_18F09444C();
}

uint64_t sub_18EF955D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_18EF9561C()
{
  result = qword_1ED5FF1D8;
  if (!qword_1ED5FF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1D8);
  }

  return result;
}

uint64_t sub_18EF95670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18EF956C0()
{
  result = qword_1ED5FF290[0];
  if (!qword_1ED5FF290[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF8558C(&unk_1ED5FF0E8);
    sub_18EFBE7AC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FF290);
  }

  return result;
}

unint64_t sub_18EF9577C(uint64_t *a1)
{
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FC8, &qword_18F0A0EA8);
  v160 = *(v146 - 8);
  v2 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v157 = &v112 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FD0, &qword_18F0A0EB0);
  v140 = *(v141 - 8);
  v4 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v154 = &v112 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FD8, &qword_18F0A0EB8);
  v144 = *(v6 - 8);
  v145 = v6;
  v7 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v156 = &v112 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FE0, &qword_18F0A0EC0);
  v142 = *(v143 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v155 = &v112 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FE8, &qword_18F0A0EC8);
  v138 = *(v139 - 8);
  v11 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v153 = &v112 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FF0, &qword_18F0A0ED0);
  v136 = *(v137 - 8);
  v13 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v152 = &v112 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FF8, &qword_18F0A0ED8);
  v135 = *(v132 - 8);
  v15 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v159 = &v112 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8000, &qword_18F0A0EE0);
  v133 = *(v134 - 8);
  v17 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v151 = &v112 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8008, &qword_18F0A0EE8);
  v130 = *(v131 - 8);
  v19 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v158 = &v112 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8010, &qword_18F0A0EF0);
  v128 = *(v129 - 8);
  v21 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v150 = &v112 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8018, &qword_18F0A0EF8);
  v126 = *(v127 - 8);
  v23 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v149 = &v112 - v24;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8020, &qword_18F0A0F00);
  v124 = *(v125 - 8);
  v25 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v148 = &v112 - v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8028, &qword_18F0A0F08);
  v122 = *(v123 - 8);
  v27 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v147 = &v112 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8030, &qword_18F0A0F10);
  v120 = *(v121 - 8);
  v29 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v31 = &v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8038, &qword_18F0A0F18);
  v119 = *(v32 - 8);
  v33 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v112 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8040, &qword_18F0A0F20);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v112 - v39;
  v41 = a1[3];
  v42 = a1[4];
  v161 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v41);
  sub_18EF9F4F8();
  v43 = v162;
  sub_18F09459C();
  if (v43)
  {
    goto LABEL_10;
  }

  v116 = v35;
  v115 = v32;
  v117 = v31;
  v45 = v158;
  v44 = v159;
  v46 = v160;
  v162 = v37;
  v47 = sub_18F0942EC();
  sub_18EF89690(v47, 0);
  if (v50 == v51 >> 1)
  {
LABEL_9:
    v59 = sub_18F0940BC();
    swift_allocError();
    v61 = v60;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v61 = &type metadata for TypeSpecificMetadataStorage;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v162 + 8))(v40, v36);
    goto LABEL_10;
  }

  v118 = v36;
  v114 = 0;
  if (v50 >= (v51 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF973E8);
  }

  v113 = *(v49 + v50);
  sub_18F019378(v50 + 1, v51 >> 1, v48, v49, v50, v51);
  v53 = v52;
  v55 = v54;
  swift_unknownObjectRelease();
  if (v53 != v55 >> 1)
  {
    v36 = v118;
    goto LABEL_9;
  }

  v56 = v46;
  v57 = v114;
  v32 = v157;
  switch(v113)
  {
    case 1:
      v164 = 1;
      sub_18F017694();
      v86 = v117;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      v87 = swift_allocObject();
      v88 = v121;
      sub_18F09429C();
      v89 = (v120 + 8);
      v90 = (v162 + 8);
      v110 = v109;
      swift_unknownObjectRelease();
      (*v89)(v86, v88);
      (*v90)(v40, v118);
      *(v87 + 16) = v110;
      v32 = v87 | 0x1000000000000000;
      break;
    case 2:
      v165 = 2;
      sub_18EF97950();
      v77 = v147;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      v78 = swift_allocObject();
      v79 = v123;
      v106 = sub_18F09427C();
      v108 = v107;
      swift_unknownObjectRelease();
      (*(v122 + 8))(v77, v79);
      (*(v162 + 8))(v40, v118);
      *(v78 + 16) = v106;
      *(v78 + 24) = v108;
      v32 = v78 | 0x2000000000000000;
      break;
    case 3:
      v166 = 3;
      sub_18F017640();
      v80 = v148;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E40, &qword_18F0A0DA0);
      v81 = swift_allocBox();
      _s14CodableWrapperVMa_0(0);
      sub_18EF8558C(&unk_1ED5FF4F8);
      v82 = v125;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v124 + 8))(v80, v82);
      (*(v162 + 8))(v40, v118);
      v32 = v81 | 0x3000000000000000;
      break;
    case 4:
      v167 = 4;
      sub_18F0175EC();
      v69 = v149;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E30, &qword_18F0A0D98);
      v70 = swift_allocBox();
      sub_18F0932BC();
      sub_18EF8558C(&unk_1ED5FF550);
      v71 = v127;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v126 + 8))(v69, v71);
      (*(v162 + 8))(v40, v118);
      v32 = v70 | 0x4000000000000000;
      break;
    case 5:
      v168 = 5;
      sub_18F017598();
      v91 = v150;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E18, &qword_18F0A0D90);
      v64 = swift_allocBox();
      sub_18F09331C();
      sub_18EF8558C(&unk_1EACB8058);
      v92 = v129;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v128 + 8))(v91, v92);
      (*(v162 + 8))(v40, v118);
      v105 = 0x5000000000000000;
      goto LABEL_42;
    case 6:
      v169 = 6;
      sub_18F017544();
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E00, &qword_18F0A0D88);
      v94 = swift_allocBox();
      sub_18F09310C();
      sub_18EF8558C(&unk_1EACB8050);
      v95 = v131;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v130 + 8))(v45, v95);
      (*(v162 + 8))(v40, v118);
      v32 = v94 | 0x6000000000000000;
      break;
    case 7:
      v170 = 7;
      sub_18F0174F0();
      v83 = v151;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7DE8, &qword_18F0A0D80);
      v84 = swift_allocBox();
      type metadata accessor for MeasurementWrapper(0);
      sub_18EF8558C(&unk_1EACB8048);
      v85 = v134;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v133 + 8))(v83, v85);
      (*(v162 + 8))(v40, v118);
      v32 = v84 | 0x7000000000000000;
      break;
    case 8:
      v171 = 8;
      sub_18F01749C();
      v32 = v44;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      v102 = swift_allocObject();
      sub_18F0183E8();
      v103 = v132;
      sub_18F0942CC();
      v104 = v162;
      swift_unknownObjectRelease();
      (*(v135 + 8))(v32, v103);
      (*(v104 + 8))(v40, v118);
      v32 = v102 | 0x8000000000000000;
      break;
    case 9:
      v172 = 9;
      sub_18F0173F4();
      v32 = v152;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      v64 = swift_allocObject();
      sub_18F0183E8();
      v75 = v137;
      sub_18F0942CC();
      v76 = v162;
      swift_unknownObjectRelease();
      (*(v136 + 8))(v32, v75);
      (*(v76 + 8))(v40, v118);
      v105 = 0x9000000000000000;
      goto LABEL_42;
    case 10:
      v173 = 10;
      sub_18EF97B84();
      v96 = v153;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DB8, &qword_18F0A0D78);
      v64 = swift_allocBox();
      type metadata accessor for LNEntityMetadata.CodableWrapper(0);
      sub_18EF8558C(&unk_1ED5FF450);
      v97 = v139;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v138 + 8))(v96, v97);
      (*(v162 + 8))(v40, v118);
      v105 = 0xA000000000000000;
      goto LABEL_42;
    case 11:
      v174 = 11;
      sub_18EF8F39C();
      v67 = v155;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DA0, &qword_18F0A0D70);
      v64 = swift_allocBox();
      type metadata accessor for LNEnumMetadata.CodableWrapper(0);
      sub_18EF8558C(&unk_1ED5FEBB0);
      v68 = v143;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v142 + 8))(v67, v68);
      (*(v162 + 8))(v40, v118);
      v105 = 0xB000000000000000;
      goto LABEL_42;
    case 12:
      v175 = 12;
      sub_18F0172C0();
      v32 = v156;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      v72 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D88, &qword_18F0A0D68);
      sub_18F018308();
      v73 = v145;
      sub_18F0942CC();
      v74 = v162;
      swift_unknownObjectRelease();
      (*(v144 + 8))(v32, v73);
      (*(v74 + 8))(v40, v118);
      v32 = v72 | 0xC000000000000000;
      break;
    case 13:
      v176 = 13;
      sub_18F01726C();
      v93 = v154;
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      (*(v140 + 8))(v93, v141);
      (*(v162 + 8))(v40, v63);
      v32 = 0xE000000000000000;
      break;
    case 14:
      v177 = 14;
      sub_18EFA1AE4();
      v63 = v118;
      sub_18F09421C();
      if (v57)
      {
LABEL_38:
        (*(v162 + 8))(v40, v63);
        goto LABEL_39;
      }

      v64 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D68, &qword_18F0A0D60);
      sub_18F018284();
      v65 = v146;
      sub_18F0942CC();
      v66 = v162;
      swift_unknownObjectRelease();
      (*(v56 + 8))(v32, v65);
      (*(v66 + 8))(v40, v118);
      v105 = 0xD000000000000000;
LABEL_42:
      v32 = v64 | v105;
      break;
    default:
      v163 = 0;
      sub_18EFAC048();
      v58 = v116;
      v32 = v118;
      sub_18F09421C();
      if (v57)
      {
        (*(v162 + 8))(v40, v32);
LABEL_39:
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = swift_allocObject();
        v98 = v115;
        v99 = sub_18F0942AC();
        v100 = (v119 + 8);
        v101 = (v162 + 8);
        v111 = v99;
        swift_unknownObjectRelease();
        (*v100)(v58, v98);
        (*v101)(v40, v118);
        *(v32 + 16) = v111;
      }

      break;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  return v32;
}

uint64_t sub_18EF97424()
{
  sub_18EF9A4AC(*(v0 + 16), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_18EF97460@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_18EF9577C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18EF9748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EF974B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EF974B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x800000018F0AE6B0 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1702125924 && a2 == 0xE400000000000000;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701603686 && a2 == 0xE400000000000000;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x654D797469746E65 && a2 == 0xEE00617461646174;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6174654D6D756E65 && a2 == 0xEC00000061746164;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x697463656C6C6F63 && a2 == 0xEF73657A69536E6FLL;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1819047278 && a2 == 0xE400000000000000;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x7961727261 && a2 == 0xE500000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_18F09444C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18EF97950()
{
  result = qword_1ED5FE430;
  if (!qword_1ED5FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE430);
  }

  return result;
}

unint64_t sub_18EF979AC(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 0x676E69727473;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 1702125924;
      break;
    case 6:
      result = 0x706D6F4365746164;
      break;
    case 7:
      result = 0x6D6572757361656DLL;
      break;
    case 8:
      result = 1701603686;
      break;
    case 9:
      result = 0x72616D6563616C70;
      break;
    case 10:
      result = 0x654D797469746E65;
      break;
    case 11:
      result = 0x6174654D6D756E65;
      break;
    case 12:
      result = 0x697463656C6C6F63;
      break;
    case 13:
      result = 1819047278;
      break;
    case 14:
      result = 0x7961727261;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EF97B84()
{
  result = qword_1ED5FE230[0];
  if (!qword_1ED5FE230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FE230);
  }

  return result;
}

void LNEntityMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v13 = v12;
  v63 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_55();
  v19 = _s14CodableWrapperVMa_0(0);
  v20 = OUTLINED_FUNCTION_36(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7608, &qword_18F09BE48);
  OUTLINED_FUNCTION_7(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_46();
  v27 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v28 = OUTLINED_FUNCTION_36(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_22();
  v65 = v31;
  v66 = v33 - v32;
  v64 = v31[10];
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v19);
  v38 = v13[3];
  v37 = v13[4];
  v39 = OUTLINED_FUNCTION_384();
  OUTLINED_FUNCTION_190(v39, v40);
  sub_18EF98740();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v10)
  {
    OUTLINED_FUNCTION_40();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);

    if (v13)
    {
      v41 = v65[9];
      OUTLINED_FUNCTION_26();
      sub_18EF86A6C();
    }

    sub_18EF933AC(v66 + v64, &qword_1EACB72D0);
    if (v37)
    {
      v42 = *(v66 + v65[11]);
    }
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_267();
    *v66 = sub_18F09427C();
    *(v66 + 8) = v43;
    OUTLINED_FUNCTION_208(1);
    *(v66 + 16) = sub_18F09424C();
    OUTLINED_FUNCTION_208(2);
    *(v66 + 24) = sub_18F09423C();
    *(v66 + 32) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_407();
    *(v66 + 40) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF861C4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_407();
    *(v66 + 48) = a10;
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v45);
    OUTLINED_FUNCTION_310();
    sub_18F0942CC();
    v46 = v65[9];
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v11, v66 + v47);
    LOBYTE(a10) = 6;
    OUTLINED_FUNCTION_310();
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF98C44();
    OUTLINED_FUNCTION_47();
    sub_18F0942CC();
    *(v66 + v65[11]) = a10;
    OUTLINED_FUNCTION_208(8);
    v48 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v48, v49, v65[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_47();
    sub_18F09426C();
    *(v66 + v65[13]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    OUTLINED_FUNCTION_361();
    sub_18EF883DC();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v66 + v65[14]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F013430();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v66 + v65[15]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75D0, &qword_18F09BE38);
    OUTLINED_FUNCTION_360();
    sub_18EF99CB0();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v66 + v65[16]) = a10;
    OUTLINED_FUNCTION_267();
    *(v66 + v65[17]) = sub_18EFF2F68();
    OUTLINED_FUNCTION_208(14);
    OUTLINED_FUNCTION_267();
    v50 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v50, v51, v65[18]);
    OUTLINED_FUNCTION_288();
    sub_18EF825F4(v52, v53, v54);
    OUTLINED_FUNCTION_288();
    sub_18EF99DFC(v55);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_267();
    sub_18F09426C();
    *(v66 + v65[19]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F0134B4();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v66 + v65[20]) = a10;
    OUTLINED_FUNCTION_208(17);
    v56 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v56, v57, v65[21]);
    sub_18EF99E5C();
    OUTLINED_FUNCTION_126();
    sub_18F09426C();
    *(v66 + v65[22]) = a10;
    OUTLINED_FUNCTION_208(19);
    v58 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v58, v59, v65[23]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    v60 = v65[24];
    v61 = OUTLINED_FUNCTION_20();
    v62(v61);
    *(v66 + v60) = a10;
    OUTLINED_FUNCTION_205();
    sub_18EF86A14(v66, v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_27();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_18F09452C();
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v2 = *(v0 + 496);
  v3 = *(v0 + 536);
}

unint64_t sub_18EF98740()
{
  result = qword_1ED5FE7B0;
  if (!qword_1ED5FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_276()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_18F09426C();
}

unint64_t sub_18EF987D4(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0x6E6569736E617274;
      break;
    case 2:
      result = 0x5464656C676E616DLL;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x5479616C70736964;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x69747265706F7270;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 16:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x736D796E6F6E7973;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 15:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF98B54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF98C44()
{
  result = qword_1ED5FE7C0;
  if (!qword_1ED5FE7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF8558C(&unk_1ED5FE788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7C0);
  }

  return result;
}

uint64_t sub_18EF98CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80C8, &qword_18F0A0F78);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = _s14CodableWrapperVMa_12(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 24);
  v16 = _s14CodableWrapperVMa_0(0);
  v44 = v15;
  v17 = v14;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  v19 = a1[3];
  v18 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v19);
  sub_18EF99268();
  v43 = v9;
  sub_18F09459C();
  if (v2)
  {
    v21 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    sub_18EF933AC(v17 + v21, &qword_1EACB72D0);
  }

  else
  {
    v20 = v41;
    LOBYTE(v47) = 0;
    *v17 = sub_18F09423C();
    v17[1] = v22;
    v39 = v22;
    v46 = 1;
    sub_18EF8882C();
    sub_18F0942CC();
    v17[2] = v47;
    LOBYTE(v47) = 2;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v47) = 3;
    v23 = sub_18F09425C();
    v24 = v17 + v10[7];
    *v24 = v23;
    v24[8] = v25 & 1;
    LOBYTE(v47) = 4;
    v26 = sub_18F09423C();
    v27 = (v17 + v10[8]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v47) = 5;
    *(v17 + v10[9]) = sub_18F09424C();
    LOBYTE(v47) = 6;
    v29 = sub_18F09423C();
    v30 = (v17 + v10[10]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v47) = 7;
    v32 = sub_18F09423C();
    v33 = v20;
    v34 = (v17 + v10[11]);
    v35 = v32;
    v37 = v36;
    (*(v33 + 8))(v43, v42);
    *v34 = v35;
    v34[1] = v37;
    sub_18EF86A14(v17, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF99268()
{
  result = qword_1ED5FDFA0;
  if (!qword_1ED5FDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFA0);
  }

  return result;
}

unint64_t sub_18EF992C4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x70795465756C6176;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x696C696261706163;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974704F7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF99400(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF994BCLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF994E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

_BYTE *sub_18EF99568(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF99624);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF9965C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

unint64_t sub_18EF996E0()
{
  result = qword_1ED5FE1F8;
  if (!qword_1ED5FE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE1F8);
  }

  return result;
}

void *sub_18EF99734(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D98, &qword_18F0A7CA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF99908();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
    sub_18EF8558C(&unk_1ED5FE1D0);
    sub_18F0942CC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

void *sub_18EF998DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EF99734(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}