uint64_t sub_24AB40A58()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D40, &unk_24AB61ED0);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40A84()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D48, &qword_24AB61EE0);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40AB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF92D50, &qword_24AB61EE8);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40ADC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40B14()
{
  MEMORY[0x24C228960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40B4C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AB40B94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40BCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40C08()
{
  MEMORY[0x24C228960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40C40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  if (v5 >> 60 != 15)
  {
    sub_24AB4611C(*(v0 + 72), v5);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24AB40CB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40CE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AB40D48@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_24AB40E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AB5FE4C();
  v7 = OUTLINED_FUNCTION_23(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AB40ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24AB5FE4C();
  result = OUTLINED_FUNCTION_23(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_25();

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t _s14FeedbackLogger41Com_Apple_Aiml_Dpg_Service_V1_PayloadTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_27(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14FeedbackLogger41Com_Apple_Aiml_Dpg_Service_V1_PayloadTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24AB41128(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_27(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB4113C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_24AB4115C()
{
  OUTLINED_FUNCTION_13();
  if (v3)
  {
    return OUTLINED_FUNCTION_9(*v1);
  }

  v5 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_23(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
    OUTLINED_FUNCTION_23(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
      v7 = v2[7];
    }
  }

  v10 = OUTLINED_FUNCTION_16(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_24AB41258()
{
  OUTLINED_FUNCTION_8();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_24AB5FE4C();
    OUTLINED_FUNCTION_23(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
      OUTLINED_FUNCTION_23(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
        v9 = v5[7];
      }
    }

    v12 = OUTLINED_FUNCTION_12(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_24AB41360()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 8));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB413C4()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 44));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41428()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 24));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB4148C()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB414F0()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 48));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB41554()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB415B8()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*v0);
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB4161C()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41680()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 24));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB416E4()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41748()
{
  result = sub_24AB41770(5);
  byte_27EF93170 = result & 1;
  return result;
}

uint64_t sub_24AB41770(char a1)
{
  sub_24AB417FC(a1);
  v1 = sub_24AB6015C();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_24AB417FC(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24AB41924()
{
  if (qword_27EF92BB0 != -1)
  {
    swift_once();
  }

  return byte_27EF93170;
}

FeedbackLoggerFBFClient __swiftcall FeedbackLoggerFBFClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.xpcConnector = v2;
  result.super.isa = v1;
  return result;
}

id FeedbackLoggerFBFClient.init()()
{
  *&v0[OBJC_IVAR___FeedbackLoggerFBFClient_xpcConnector] = [objc_allocWithZone(type metadata accessor for FBFXPCConnector()) init];
  v2.receiver = v0;
  v2.super_class = FeedbackLoggerFBFClient;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24AB41AA8(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = [a3 xpcConnector];
  sub_24AB41B2C(a1, a2, v8, aBlock);

  _Block_release(aBlock);
}

void sub_24AB41B2C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  _Block_copy(a4);
  v6 = sub_24AB429DC();
  if (v6)
  {
    v7 = v6;
    v8 = sub_24AB6015C();
    v10[4] = sub_24AB43828;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24AB42EC0;
    v10[3] = &block_descriptor_35;
    v9 = _Block_copy(v10);

    [v7 requestSandboxExtensionForBundleID:v8 completion:v9];
    _Block_release(v9);

    sub_24AB42F74();

    swift_unknownObjectRelease();
    _Block_release(a4);
  }

  else
  {
    a4[2](a4, 0, 0);

    _Block_release(a4);
  }
}

void sub_24AB41D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_24AB6015C();
    if (a4)
    {
LABEL_3:
      v8 = sub_24AB6015C();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

void sub_24AB41DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 xpcConnector];
  sub_24AB41E64(a1, a2, a3);
}

uint64_t sub_24AB41E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_24AB600AC();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v11;
  v39 = sub_24AB6005C();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24AB6004C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v18 = *(v3 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_notificationCenter);
  v19 = sub_24AB6015C();
  [v18 postNotificationName:v19 object:0];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a1;
  v21[6] = ObjectType;
  aBlock[4] = sub_24AB435C4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB42998;
  aBlock[3] = &block_descriptor_19;
  _Block_copy(aBlock);
  v44 = MEMORY[0x277D84F90];
  sub_24AB435D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
  sub_24AB4362C();
  sub_24AB602AC();
  v22 = sub_24AB600CC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_24AB600BC();

  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v25 = sub_24AB6003C();
  __swift_project_value_buffer(v25, qword_27EF92CE0);
  v26 = sub_24AB6001C();
  v27 = sub_24AB601FC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24AB3F000, v26, v27, "Waiting 2s for sqlite connections to close.", v28, 2u);
    MEMORY[0x24C228920](v28, -1, -1);
  }

  sub_24AB436D8(0, &qword_280FF13B8, 0x277D85C78);
  v29 = v39;
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v39);
  v30 = sub_24AB6025C();
  (*(v12 + 8))(v15, v29);
  v31 = v40;
  sub_24AB6009C();
  v32 = v41;
  sub_24AB600DC();
  v33 = *(v42 + 8);
  v34 = v31;
  v35 = v43;
  v33(v34, v43);
  sub_24AB6021C();

  return (v33)(v32, v35);
}

void sub_24AB42404(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24AB5FD9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_24AB4248C()
{
  v0 = sub_24AB6003C();
  __swift_allocate_value_buffer(v0, qword_27EF92CE0);
  __swift_project_value_buffer(v0, qword_27EF92CE0);
  return sub_24AB6002C();
}

id sub_24AB42510()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure] = 0;
  v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid] = 0;
  v2 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_opt_self() defaultCenter];
  *&v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_notificationCenter] = v4;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = sub_24AB425E0();

  return v5;
}

uint64_t sub_24AB425E0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock]);
  sub_24AB42674(v2 + 1, v0, ObjectType, &v4);
  os_unfair_lock_unlock(v2);
  return v4;
}

id sub_24AB42674@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    sub_24AB436D8(0, &qword_280FF1418, 0x277CCAE80);
    v10 = sub_24AB4282C(0xD000000000000018, 0x800000024AB63490, 0);
    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v16[4] = sub_24AB43500;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_24AB42998;
    v16[3] = &block_descriptor;
    v13 = _Block_copy(v16);
    v14 = a2;

    [v10 setInvalidationHandler_];
    _Block_release(v13);
    *a1 = v10;
    v6 = v10;
    [v6 resume];
    v5 = 0;
  }

  *a4 = v6;
  return v5;
}

id sub_24AB4282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_24AB6015C();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_24AB428A8(uint64_t a1)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24AB6003C();
  __swift_project_value_buffer(v2, qword_27EF92CE0);
  v3 = sub_24AB6001C();
  v4 = sub_24AB601FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AB3F000, v3, v4, "XPC connection to parsec-fbf invalidated", v5, 2u);
    MEMORY[0x24C228920](v5, -1, -1);
  }

  atomic_store(1u, (a1 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid));
}

uint64_t sub_24AB42998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24AB429DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24AB425E0();
  v3 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock));
  sub_24AB42A64((v3 + 8), v2, ObjectType, &v5);
  os_unfair_lock_unlock(v3);

  return v5;
}

uint64_t sub_24AB42A64@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  if (v6)
  {
    goto LABEL_4;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  v18[4] = sub_24AB43718;
  v18[5] = v10;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24AB42E58;
  v18[3] = &block_descriptor_29;
  v11 = _Block_copy(v18);

  v12 = [a2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_24AB6029C();
  swift_unknownObjectRelease();
  sub_24AB43720(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D90, &qword_24AB61F08);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    v6 = v20;
    *a1 = v20;
LABEL_4:
    *a4 = v6;
    return swift_unknownObjectRetain();
  }

  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v14 = sub_24AB6003C();
  __swift_project_value_buffer(v14, qword_27EF92CE0);
  v15 = sub_24AB6001C();
  v16 = sub_24AB601FC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24AB3F000, v15, v16, "proxy not type FeedbackLoggerDaemonXPC", v17, 2u);
    MEMORY[0x24C228920](v17, -1, -1);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v19);
  *a4 = 0;
  return result;
}

void sub_24AB42CC8(void *a1)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24AB6003C();
  __swift_project_value_buffer(v2, qword_27EF92CE0);
  v3 = a1;
  v4 = sub_24AB6001C();
  v5 = sub_24AB601FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24AB3F000, v4, v5, "parsec-fbf remote object proxy failed with error %@", v6, 0xCu);
    sub_24AB437C8(v7, &qword_27EF92D98, &qword_24AB61F10);
    MEMORY[0x24C228920](v7, -1, -1);
    MEMORY[0x24C228920](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    atomic_store(1u, &Strong[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure]);
  }
}

void sub_24AB42E58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24AB42EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_24AB6016C();
    v8 = v7;
    if (v3)
    {
LABEL_3:
      v9 = sub_24AB6016C();
      v3 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v5(v6, v8, v9, v3);
}

void sub_24AB42F74()
{
  v3 = 1;
  v1 = 1;
  atomic_compare_exchange_strong((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid), &v1, 0);
  v2 = v1 == 1;
  atomic_compare_exchange_strong((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure), &v3, 0);
  if (v1 == 1 || v3 == 1)
  {
    v4 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock;
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock));
    v5 = *(v4 + 8);
    swift_unknownObjectRelease();
    *(v4 + 8) = 0;
    os_unfair_lock_unlock(v4);
    if (v2)
    {
      v6 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock;
      os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock));

      *(v6 + 8) = 0;

      os_unfair_lock_unlock(v6);
    }
  }
}

void sub_24AB43048(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v7 = sub_24AB6003C();
  __swift_project_value_buffer(v7, qword_27EF92CE0);
  v8 = sub_24AB6001C();
  v9 = sub_24AB601FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24AB3F000, v8, v9, "Telling FBF to upload immediately.", v10, 2u);
    MEMORY[0x24C228920](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = sub_24AB429DC(), v12, v13))
  {
    if (a4)
    {
      a4 = sub_24AB600EC();
    }

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB432EC;
    aBlock[3] = &block_descriptor_22;
    v14 = _Block_copy(aBlock);

    [v13 scheduleImmediateUploadWithHeaders:a4 completion:v14];
    _Block_release(v14);

    sub_24AB43298();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_24AB6016C();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = sub_24AB43450(v15, v17, -4, 0);
    a2();
  }
}

void sub_24AB43298()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24AB42F74();
  }
}

void sub_24AB432EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_24AB43358()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_24AB43450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24AB6015C();

  if (a4)
  {
    v8 = sub_24AB600EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_24AB435D4()
{
  result = qword_27EF92D70;
  if (!qword_27EF92D70)
  {
    sub_24AB6004C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92D70);
  }

  return result;
}

unint64_t sub_24AB4362C()
{
  result = qword_27EF92D80;
  if (!qword_27EF92D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF92D78, &qword_24AB61F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92D80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AB436D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_24AB43718(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_24AB42CC8(a1);
}

uint64_t sub_24AB43720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AB437C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AB43858()
{
  v0 = sub_24AB6003C();
  __swift_allocate_value_buffer(v0, qword_27EF93178);
  __swift_project_value_buffer(v0, qword_27EF93178);
  return sub_24AB6002C();
}

id sub_24AB438D8()
{
  v1 = sub_24AB6020C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_24AB6022C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AB6008C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = sub_24AB436D8(0, &qword_280FF13B8, 0x277D85C78);
  sub_24AB6006C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v3);
  v13 = MEMORY[0x277D84F90];
  sub_24AB46900(&qword_280FF1380, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E28, &qword_24AB62028);
  sub_24AB46948(&qword_280FF1388, &qword_27EF92E28, &qword_24AB62028);
  sub_24AB602AC();
  *&v0[OBJC_IVAR___FLAutoBugCapture_queue] = sub_24AB6024C();
  *&v0[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] = 0;
  v12.receiver = v0;
  v12.super_class = FLAutoBugCapture;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_24AB43B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v42 = a7;
  v43 = a8;
  v40 = a3;
  v41 = a5;
  v13 = sub_24AB6004C();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24AB6008C();
  v22 = OUTLINED_FUNCTION_3(v21);
  v44 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  if ([objc_opt_self() isInternalBuild])
  {
    v38[1] = *(v8 + OBJC_IVAR___FLAutoBugCapture_queue);
    v28 = swift_allocObject();
    v38[0] = v16;
    v39 = v21;
    v29 = v28;
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = a1;
    v32 = v40;
    v31 = v41;
    v30[4] = a2;
    v30[5] = v32;
    v30[6] = a4;
    v30[7] = v31;
    v34 = v42;
    v33 = v43;
    v30[8] = a6;
    v30[9] = v34;
    v35 = v45;
    v30[10] = v33;
    v30[11] = v35;
    v30[12] = &off_285E18868;
    aBlock[4] = sub_24AB46188;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB42998;
    aBlock[3] = &block_descriptor_0;
    v36 = _Block_copy(aBlock);

    sub_24AB46174(v34, v33);
    v45 = v45;
    sub_24AB6007C();
    v46 = MEMORY[0x277D84F90];
    sub_24AB46900(&qword_27EF92D70, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
    sub_24AB46948(&qword_27EF92D80, &qword_27EF92D78, &qword_24AB61F00);
    sub_24AB602AC();
    MEMORY[0x24C227EF0](0, v27, v20, v36);
    _Block_release(v36);
    (*(v38[0] + 8))(v20, v13);
    (*(v44 + 8))(v27, v39);
  }

  else
  {
    v37 = v45;
  }
}

void sub_24AB4406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_24AB44120(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_24AB44120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v97 = a8;
  v98 = a1;
  v94 = a7;
  v95 = a5;
  v99 = a2;
  ObjectType = swift_getObjectType();
  v16 = sub_24AB5FE0C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AB5FDFC();
  sub_24AB5FDDC();
  v22 = v21;
  (*(v17 + 8))(v20, v16);
  v23 = OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger;
  if (*&v11[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] >= v22)
  {
    if (qword_27EF92BC0 != -1)
    {
      swift_once();
    }

    v31 = sub_24AB6003C();
    __swift_project_value_buffer(v31, qword_27EF93178);
    v32 = v11;
    v33 = sub_24AB6001C();
    v34 = sub_24AB601EC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = v22;
      *(v35 + 12) = 2048;
      *(v35 + 14) = *&v11[v23];
      _os_log_impl(&dword_24AB3F000, v33, v34, "SymptomDiagnosticReporter throttled since currentTime (%f) <= nextTime (%f)", v35, 0x16u);
      MEMORY[0x24C228920](v35, -1, -1);
    }

LABEL_22:

    return;
  }

  v92 = a6;
  v93 = ObjectType;
  *&v11[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] = v22 + 120.0;
  if (qword_27EF92BC0 != -1)
  {
    swift_once();
  }

  v96 = a9;
  v24 = sub_24AB6003C();
  __swift_project_value_buffer(v24, qword_27EF93178);
  v25 = v11;
  v26 = sub_24AB6001C();
  v27 = sub_24AB601EC();
  v91 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *&v11[v23];
    _os_log_impl(&dword_24AB3F000, v26, v27, "SymptomDiagnosticReporter updated nextTimeToTrigger with cooldown %f", v28, 0xCu);
    MEMORY[0x24C228920](v28, -1, -1);
  }

  if (sub_24AB6019C() < 1)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v100 = 0x726F746365746544;
    v101 = 0xEA0000000000203ALL;
    MEMORY[0x24C227E60](a3, a4);
    v29 = v100;
    v30 = v101;
  }

  v36 = [objc_opt_self() processInfo];
  v37 = [v36 processName];

  v38 = sub_24AB6016C();
  v40 = v39;

  v41 = swift_getObjectType();
  v42 = (*(a10 + 8))(0x7372615065726F43, 0xEA00000000006365, 0x6B63616264656546, 0xEE00726567676F4CLL, v98, v99, v29, v30, v38, v40, 0, 0, v41, a10);

  if (!v42 || (v100 = 0, v43 = v42, sub_24AB600FC(), v43, (v44 = v100) == 0))
  {
    v61 = v42;
    v33 = sub_24AB6001C();
    v62 = sub_24AB601EC();

    if (os_log_type_enabled(v33, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v100 = v64;
      *v63 = 136315138;
      v102 = v42;
      v65 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DD8, " 7");
      v66 = sub_24AB6017C();
      v68 = sub_24AB461E0(v66, v67, &v100);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_24AB3F000, v33, v62, "SymptomDiagnosticReporter couldn't parse signature: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x24C228920](v64, -1, -1);
      MEMORY[0x24C228920](v63, -1, -1);

      return;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DE0, &qword_24AB61FE8);
  inited = swift_initStackObject();
  v88 = xmmword_24AB61F50;
  *(inited + 16) = xmmword_24AB61F50;
  v46 = *MEMORY[0x277D6AFF8];
  v100 = sub_24AB6016C();
  v101 = v47;
  v48 = MEMORY[0x277D837D0];
  sub_24AB602DC();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 0;
  v90 = sub_24AB6011C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DE8, &qword_24AB61FF0);
  v49 = swift_allocObject();
  *(v49 + 16) = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DF0, &qword_24AB61FF8);
  v89 = v41;
  if (v97 >> 60 == 15)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_24AB61F70;
    v51 = *MEMORY[0x277D6B148];
    v52 = sub_24AB6016C();
    v53 = MEMORY[0x277D839F8];
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    *(v50 + 72) = v53;
    *(v50 + 48) = v22;
    v55 = *MEMORY[0x277D6B110];
    *(v50 + 80) = sub_24AB6016C();
    *(v50 + 88) = v56;
    *(v50 + 120) = v48;
    v57 = v93;
    v58 = v92;
    v59 = v95;
    if (!v92)
    {

      v59 = v98;
      v58 = v60;
    }

    *(v50 + 96) = v59;
    *(v50 + 104) = v58;
  }

  else
  {
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_24AB61F60;
    v70 = *MEMORY[0x277D6B148];
    v71 = sub_24AB6016C();
    v72 = MEMORY[0x277D839F8];
    *(v69 + 32) = v71;
    *(v69 + 40) = v73;
    *(v69 + 72) = v72;
    *(v69 + 48) = v22;
    v74 = *MEMORY[0x277D6B110];
    *(v69 + 80) = sub_24AB6016C();
    *(v69 + 88) = v75;
    *(v69 + 120) = v48;
    v57 = v93;
    v76 = v92;
    v77 = v95;
    if (!v92)
    {

      v77 = v98;
      v76 = v78;
    }

    *(v69 + 96) = v77;
    *(v69 + 104) = v76;
    v79 = *MEMORY[0x277D6B128];
    *(v69 + 128) = sub_24AB6016C();
    *(v69 + 136) = v80;
    *(v69 + 168) = MEMORY[0x277CC9318];
    v81 = v94;
    v82 = v97;
    *(v69 + 144) = v94;
    *(v69 + 152) = v82;
    sub_24AB46174(v81, v82);
  }

  *(v49 + 32) = sub_24AB6011C();
  v83 = sub_24AB44980(v49);

  v84 = swift_allocObject();
  v85 = v91;
  *(v84 + 16) = v91;
  *(v84 + 24) = v57;
  v86 = *(a10 + 16);
  v87 = v85;
  v86(v44, v83, 0, v90, sub_24AB46750, v84, v89, a10, 0.0);
}

uint64_t sub_24AB44980(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24AB467C0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E10, &qword_24AB62010);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24AB467C0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_24AB467E0(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_24AB44A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AB6004C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24AB6008C();
  isa = v11[-1].isa;
  v63 = v11;
  v12 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24AB5FE0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = *MEMORY[0x277D6B198];
    *&v67 = sub_24AB6016C();
    *(&v67 + 1) = v21;
    sub_24AB602DC();
    sub_24AB45560(aBlock, a1, &v67);
    sub_24AB46758(aBlock);
    v60 = v7;
    v61 = a1;
    if (v68)
    {
      if (swift_dynamicCast())
      {
        v22 = v64;
        goto LABEL_14;
      }
    }

    else
    {
      sub_24AB437C8(&v67, &qword_27EF92DF8, &unk_24AB62000);
    }

    v22 = 0;
LABEL_14:
    sub_24AB5FDFC();
    sub_24AB5FDDC();
    v28 = v27;
    (*(v16 + 8))(v19, v15);
    v59[2] = *(a2 + OBJC_IVAR___FLAutoBugCapture_queue);
    v29 = swift_allocObject();
    v59[1] = a2;
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v22;
    *(v30 + 32) = v28;
    *(v30 + 40) = a3;
    aBlock[4] = sub_24AB467AC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB42998;
    aBlock[3] = &block_descriptor_17;
    v31 = _Block_copy(aBlock);

    sub_24AB6007C();
    *&v67 = MEMORY[0x277D84F90];
    sub_24AB46900(&qword_27EF92D70, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
    sub_24AB46948(&qword_27EF92D80, &qword_27EF92D78, &qword_24AB61F00);
    sub_24AB602AC();
    MEMORY[0x24C227EF0](0, v14, v10, v31);
    _Block_release(v31);
    (*(v60 + 8))(v10, v6);
    (*(isa + 1))(v14, v63);

    if (v22)
    {
      v32 = *MEMORY[0x277D6B188];
      v64 = sub_24AB6016C();
      v65 = v33;
      sub_24AB602DC();
      sub_24AB45560(aBlock, v61, &v67);
      sub_24AB46758(aBlock);
      if (v68)
      {
        sub_24AB436D8(0, &qword_27EF92E08, 0x277CCACA8);
        if (swift_dynamicCast())
        {
          v34 = v64;
LABEL_23:
          if (qword_27EF92BC0 != -1)
          {
            swift_once();
          }

          v40 = sub_24AB6003C();
          __swift_project_value_buffer(v40, qword_27EF93178);
          v41 = v34;
          v42 = sub_24AB6001C();
          v43 = sub_24AB601EC();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v44 = 138412290;
            *(v44 + 4) = v41;
            *v45 = v41;
            v46 = v41;
            _os_log_impl(&dword_24AB3F000, v42, v43, "SymptomDiagnosticReporter snapshot accepted with sessionID %@", v44, 0xCu);
            sub_24AB437C8(v45, &qword_27EF92D98, &qword_24AB61F10);
            MEMORY[0x24C228920](v45, -1, -1);
            MEMORY[0x24C228920](v44, -1, -1);

            return;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_24AB437C8(&v67, &qword_27EF92DF8, &unk_24AB62000);
      }

      sub_24AB436D8(0, &qword_27EF92E08, 0x277CCACA8);
      v34 = sub_24AB6026C();
      goto LABEL_23;
    }

    v35 = *MEMORY[0x277D6B168];
    v64 = sub_24AB6016C();
    v65 = v36;
    sub_24AB602DC();
    v37 = v61;
    sub_24AB45560(aBlock, v61, &v67);
    sub_24AB46758(aBlock);
    if (v68)
    {
      sub_24AB436D8(0, &qword_27EF92E00, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v38 = v64;
        v39 = [v64 integerValue];

        goto LABEL_30;
      }
    }

    else
    {
      sub_24AB437C8(&v67, &qword_27EF92DF8, &unk_24AB62000);
    }

    v39 = 0;
LABEL_30:
    v47 = *MEMORY[0x277D6B180];
    v64 = sub_24AB6016C();
    v65 = v48;
    sub_24AB602DC();
    sub_24AB45560(aBlock, v37, &v67);
    sub_24AB46758(aBlock);
    if (v68)
    {
      if (swift_dynamicCast())
      {
        v50 = v64;
        v49 = v65;
        goto LABEL_35;
      }
    }

    else
    {
      sub_24AB437C8(&v67, &qword_27EF92DF8, &unk_24AB62000);
    }

    v50 = 0;
    v49 = 0xE000000000000000;
LABEL_35:
    if (sub_24AB4572C(v39))
    {
      if (qword_27EF92BC0 != -1)
      {
        swift_once();
      }

      v51 = sub_24AB6003C();
      __swift_project_value_buffer(v51, qword_27EF93178);

      v42 = sub_24AB6001C();
      v52 = sub_24AB601EC();

      if (os_log_type_enabled(v42, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        aBlock[0] = v54;
        *v53 = 134218242;
        *(v53 + 4) = v39;
        *(v53 + 12) = 2080;
        v55 = sub_24AB461E0(v50, v49, aBlock);

        *(v53 + 14) = v55;
        v56 = "SymptomDiagnosticReporter snapshot rejected with unexpected reason %ld %s";
LABEL_44:
        _os_log_impl(&dword_24AB3F000, v42, v52, v56, v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x24C228920](v54, -1, -1);
        MEMORY[0x24C228920](v53, -1, -1);
LABEL_46:

        return;
      }
    }

    else
    {
      if (qword_27EF92BC0 != -1)
      {
        swift_once();
      }

      v57 = sub_24AB6003C();
      __swift_project_value_buffer(v57, qword_27EF93178);

      v42 = sub_24AB6001C();
      v52 = sub_24AB601EC();

      if (os_log_type_enabled(v42, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        aBlock[0] = v54;
        *v53 = 134218242;
        *(v53 + 4) = v39;
        *(v53 + 12) = 2080;
        v58 = sub_24AB461E0(v50, v49, aBlock);

        *(v53 + 14) = v58;
        v56 = "SymptomDiagnosticReporter snapshot rejected with expected reason %ld %s";
        goto LABEL_44;
      }
    }

    goto LABEL_46;
  }

  if (qword_27EF92BC0 != -1)
  {
    swift_once();
  }

  v23 = sub_24AB6003C();
  __swift_project_value_buffer(v23, qword_27EF93178);
  v63 = sub_24AB6001C();
  v24 = sub_24AB601EC();
  if (os_log_type_enabled(v63, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24AB3F000, v63, v24, "SymptomDiagnosticReporter reporter returned no response", v25, 2u);
    MEMORY[0x24C228920](v25, -1, -1);
  }

  v26 = v63;
}

double sub_24AB45560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_24AB50EB0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_24AB43720(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_24AB455C4(double a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = 3600.0;
    if (a3)
    {
      v7 = 86400.0;
    }

    v8 = OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger;
    *(Strong + OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger) = v7 + a1;
    if (qword_27EF92BC0 != -1)
    {
      swift_once();
    }

    v9 = sub_24AB6003C();
    __swift_project_value_buffer(v9, qword_27EF93178);
    v10 = v6;
    v11 = sub_24AB6001C();
    v12 = sub_24AB601EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *&v6[v8];
      _os_log_impl(&dword_24AB3F000, v11, v12, "SymptomDiagnosticReporter updated nextTimeToTrigger %f", v13, 0xCu);
      MEMORY[0x24C228920](v13, -1, -1);
    }
  }
}

uint64_t sub_24AB4572C(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  return *MEMORY[0x277D6B040] != result && *MEMORY[0x277D6B058] != result && *MEMORY[0x277D6B038] != result && *MEMORY[0x277D6B088] != result && *MEMORY[0x277D6B098] != result;
}

id sub_24AB457C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v15 = a4;
  if (a2)
  {
    v16 = sub_24AB6015C();
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (a4)
  {
LABEL_3:
    v15 = sub_24AB6015C();
  }

LABEL_4:
  if (a6)
  {
    a6 = sub_24AB6015C();
  }

  if (a8)
  {
    a8 = sub_24AB6015C();
  }

  v17 = a12;
  if (!a10)
  {
    v18 = 0;
    if (!a12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = sub_24AB6015C();
  if (a12)
  {
LABEL_10:
    v17 = sub_24AB6015C();
  }

LABEL_11:
  v19 = [v12 signatureWithDomain:v16 type:v15 subType:a6 subtypeContext:a8 detectedProcess:v18 triggerThresholdValues:v17];

  return v19;
}

id sub_24AB458F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, double a7)
{
  v12 = a2;
  if (a1)
  {
    v14 = sub_24AB600EC();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a2)
  {
LABEL_3:
    v12 = sub_24AB601DC();
  }

LABEL_4:
  if (a3)
  {
    a3 = sub_24AB600EC();
  }

  if (a4)
  {
    a4 = sub_24AB600EC();
  }

  if (a5)
  {
    v17[4] = a5;
    v17[5] = a6;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24AB45A98;
    v17[3] = &block_descriptor_20;
    a5 = _Block_copy(v17);
  }

  v15 = [v7 snapshotWithSignature:v14 delay:v12 events:a3 payload:a4 actions:a5 reply:a7];
  _Block_release(a5);

  return v15;
}

uint64_t sub_24AB45A98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_24AB6010C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_24AB45B28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = &v5[OBJC_IVAR___FLAutoBugHelper_eventValue];
  *v8 = xmmword_24AB61F80;
  *&v5[OBJC_IVAR___FLAutoBugHelper_autoBugCapture] = a1;
  v9 = &v5[OBJC_IVAR___FLAutoBugHelper_bundleID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  *v8 = a4;
  *(v8 + 1) = a5;
  v12 = a1;
  sub_24AB46174(a4, a5);
  sub_24AB46108(v10, v11);
  v15.receiver = v5;
  v15.super_class = FLAutoBugHelper;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24AB46108(a4, a5);

  return v13;
}

void sub_24AB45C8C()
{
  v1 = *(v0 + OBJC_IVAR___FLAutoBugHelper_autoBugCapture);
  v2 = sub_24AB6015C();
  v3 = *(v0 + OBJC_IVAR___FLAutoBugHelper_bundleID);
  v4 = *(v0 + OBJC_IVAR___FLAutoBugHelper_bundleID + 8);

  v5 = sub_24AB6015C();

  v6 = sub_24AB6015C();
  OUTLINED_FUNCTION_2(OBJC_IVAR___FLAutoBugHelper_eventValue);
  if (!v16 & v15)
  {
    OUTLINED_FUNCTION_1(v7, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v8, v9, v10, v11, v12, v13, v29, 0);
  }

  else
  {
    v17 = *v14;
    v18 = OUTLINED_FUNCTION_0_0();
    sub_24AB460B0(v18, v19);
    OUTLINED_FUNCTION_0_0();
    v30 = sub_24AB5FDAC();
    v20 = OUTLINED_FUNCTION_0_0();
    v22 = sub_24AB46108(v20, v21);
    OUTLINED_FUNCTION_1(v22, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

void sub_24AB45E04()
{
  v1 = *(v0 + OBJC_IVAR___FLAutoBugHelper_autoBugCapture);
  v2 = sub_24AB6015C();
  v3 = *(v0 + OBJC_IVAR___FLAutoBugHelper_bundleID);
  v4 = *(v0 + OBJC_IVAR___FLAutoBugHelper_bundleID + 8);

  v5 = sub_24AB6015C();

  v6 = sub_24AB6015C();
  OUTLINED_FUNCTION_2(OBJC_IVAR___FLAutoBugHelper_eventValue);
  if (!v16 & v15)
  {
    OUTLINED_FUNCTION_1(v7, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v8, v9, v10, v11, v12, v13, v29, 0);
  }

  else
  {
    v17 = *v14;
    v18 = OUTLINED_FUNCTION_0_0();
    sub_24AB460B0(v18, v19);
    OUTLINED_FUNCTION_0_0();
    v30 = sub_24AB5FDAC();
    v20 = OUTLINED_FUNCTION_0_0();
    v22 = sub_24AB46108(v20, v21);
    OUTLINED_FUNCTION_1(v22, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

void __swiftcall FLAutoBugHelper.init()(FLAutoBugHelper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_24AB460B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AB46108(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB4611C(a1, a2);
  }

  return a1;
}

uint64_t sub_24AB4611C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AB46174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB460B0(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AB461E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AB462A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_24AB43720(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AB462A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AB463A4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_24AB602FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AB463A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AB463F0(a1, a2);
  sub_24AB46508(&unk_285E184F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AB463F0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_24AB601BC())
  {
    result = sub_24AB465EC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24AB602EC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_24AB602FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24AB46508(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_24AB4665C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AB465EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E20, &qword_24AB62020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_24AB4665C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E20, &qword_24AB62020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_24AB467C0(char *a1, int64_t a2, char a3)
{
  result = sub_24AB467F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_24AB467E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_24AB467F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E18, &qword_24AB62018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24AB46900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AB46948(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_1(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

id sub_24AB46A04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v62 = a3;
  v63 = a4;
  v65 = a2;
  v61 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v7 = OUTLINED_FUNCTION_0_1(v61);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_24AB5FE0C();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v68);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v17 = OUTLINED_FUNCTION_0_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v60 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v25 = OUTLINED_FUNCTION_0_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v59 = v28;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v58 - v31;
  v64 = xmmword_24AB62030;
  *(v32 + 2) = xmmword_24AB62030;
  *(v32 + 3) = xmmword_24AB62030;
  v58 = v30;
  v33 = &v58 + *(v30 + 32) - v31;
  sub_24AB5FE3C();
  v35 = *(v32 + 6);
  v34 = *(v32 + 7);
  v36 = v65;
  sub_24AB460B0(a1, v65);
  sub_24AB4611C(v35, v34);
  *(v32 + 6) = a1;
  *(v32 + 7) = v36;
  v37 = v67;
  *(v32 + 2) = v66;
  *(v32 + 3) = v37;
  *v32 = 2;
  v32[8] = 1;
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  *(v23 + 24) = v64;
  *(v23 + 5) = 0;
  *(v23 + 6) = 0xE000000000000000;
  *(v23 + 7) = 0;
  *(v23 + 8) = 0xE000000000000000;
  *(v23 + 9) = 0;
  *(v23 + 10) = 0xE000000000000000;

  v38 = MEMORY[0x277D84F90];
  *(v23 + 11) = sub_24AB6011C();
  v39 = &v23[*(v16 + 44)];
  sub_24AB5FE3C();
  sub_24AB5FDEC();
  sub_24AB5FDDC();
  v41 = v40;
  result = (*(v12 + 8))(v15, v68);
  v43 = v41 * 1000.0;
  if (COERCE__INT64(fabs(v41 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v23 + 2) = v43;
  *v11 = v38;
  v44 = v61;
  v45 = v11 + *(v61 + 20);
  sub_24AB5FE3C();
  v46 = *(v44 + 24);
  v47 = v58;
  __swift_storeEnumTagSinglePayload(v11 + v46, 1, 1, v58);
  v48 = *(v44 + 28);
  __swift_storeEnumTagSinglePayload(v11 + v48, 1, 1, v16);
  v49 = v59;
  sub_24AB47554(v32, v59, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB475B4(v11 + v46, &qword_27EF92E38, &unk_24AB62050);
  sub_24AB4760C(v49, v11 + v46, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  __swift_storeEnumTagSinglePayload(v11 + v46, 0, 1, v47);
  v50 = v60;
  sub_24AB47554(v23, v60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  sub_24AB475B4(v11 + v48, &qword_27EF92E40, &unk_24AB62D50);
  sub_24AB4760C(v50, v11 + v48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  __swift_storeEnumTagSinglePayload(v11 + v48, 0, 1, v16);
  sub_24AB4766C();
  v51 = sub_24AB5FF3C();
  v53 = v52;
  v72 = v62;
  v73 = v63;
  v70 = 0x6C7070612E6D6F63;
  v71 = 0xEA00000000002E65;
  strcpy(v69, "com.apple.dpg.");
  v69[15] = -18;
  sub_24AB476C4();
  v54 = sub_24AB6028C();
  v56 = v55;
  objc_allocWithZone(FLDPGBatch);

  sub_24AB460B0(v51, v53);
  result = sub_24AB47444(v54, v56, v51, v53);
  if (result)
  {
    v57 = result;
    sub_24AB47718(v23, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
    sub_24AB4611C(v51, v53);

    sub_24AB47718(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
    sub_24AB47718(v32, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
    return v57;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24AB470FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 16))(a3, a4))
  {
    return 1;
  }

  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();
  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();
  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();

  return sub_24AB601CC();
}

uint64_t sub_24AB47250(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = a1 == 0xD000000000000018 && 0x800000024AB63680 == a2;
    if (!v4 && (sub_24AB6030C() & 1) == 0)
    {
      return 1;
    }
  }

  return sub_24AB472B8();
}

id sub_24AB472B8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25E58];
    v3 = sub_24AB6016C();
    v5 = sub_24AB474D0(v3, v4, v1);

    return (v5 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

FLDPGBatchFactory __swiftcall FLDPGBatchFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FLDPGBatchFactory()
{
  result = qword_27EF92E30;
  if (!qword_27EF92E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF92E30);
  }

  return result;
}

id sub_24AB47444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_24AB6015C();

  v8 = sub_24AB5FDAC();
  v9 = [v4 initWithBundleID:v7 payload:v8];

  sub_24AB4611C(a3, a4);
  return v9;
}

id sub_24AB474D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24AB6015C();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_24AB47554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24AB475B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_24AB4760C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_24AB4766C()
{
  result = qword_27EF92E48;
  if (!qword_27EF92E48)
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E48);
  }

  return result;
}

unint64_t sub_24AB476C4()
{
  result = qword_27EF92E50;
  if (!qword_27EF92E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E50);
  }

  return result;
}

uint64_t sub_24AB47718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24AB477B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_24AB6031C();
  a3(v4);
  OUTLINED_FUNCTION_33();
  return sub_24AB6032C();
}

uint64_t sub_24AB4780C()
{
  sub_24AB6031C();
  sub_24AB4D060();
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB47864()
{
  sub_24AB6031C();
  sub_24AB4D060();
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB478B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_24AB6031C();
  a4(v5);
  OUTLINED_FUNCTION_33();
  return sub_24AB6032C();
}

uint64_t sub_24AB4790C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24(a1);
  *(v1 + 32) = xmmword_24AB62030;
  *(v1 + 48) = xmmword_24AB62030;
  v2 = v1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB4794C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_24AB62060;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = sub_24AB6011C();
  v2 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB479C8@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v3 = a1 + v2[5];
  sub_24AB5FE3C();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
}

uint64_t sub_24AB47ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51290();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB512E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51390();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47DE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_24AB62030;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47E3C@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_24AB62030;
  v1 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47E88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24(a1);
  *(v1 + 32) = MEMORY[0x277D84F90];
  v2 = v1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47EC8()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93190);
  __swift_project_value_buffer(v0, qword_27EF93190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PAYLOAD_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PAYLOAD_AVRO_RECORD";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PAYLOAD_PROTO_RECORD";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB480F0()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931A8);
  __swift_project_value_buffer(v0, qword_27EF931A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62070;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EVENT_HEADERS_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EVENT_BODY_INVALID";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EVENT_BODY_TOO_LARGE";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EVENT_SCHEMA_UNKNOWN";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EVENT_UNSUPPORTED";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EVENT_TIMEOUT";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EVENT_PRODUCER_FAILED";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4840C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931C0);
  __swift_project_value_buffer(v0, qword_27EF931C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OK";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILED_ALL";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FAILED_PARTIAL";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB48630()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931D8);
  __swift_project_value_buffer(v0, qword_27EF931D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "payload";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 6;
  *v10 = "headers";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB48838()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 7:
        OUTLINED_FUNCTION_2_1();
        sub_24AB489B8();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB4B4E4(v3, v4, v5, v6, v7, &qword_27EF92F40, v8);
        break;
      case 4:
        OUTLINED_FUNCTION_2_1();
        sub_24AB48904();
        break;
    }
  }

  return result;
}

uint64_t sub_24AB48904()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  return sub_24AB5FF1C();
}

uint64_t sub_24AB489B8()
{
  v0 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  return sub_24AB5FF1C();
}

uint64_t sub_24AB48A6C()
{
  v2 = v0;
  OUTLINED_FUNCTION_15();
  result = sub_24AB48B68(v3, v4, v5, v6);
  if (!v1)
  {
    v8 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
      sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_7();
      sub_24AB5FFCC();
    }

    OUTLINED_FUNCTION_15();
    sub_24AB48D9C(v9, v10, v11, v12);
    v13 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 20);
    return OUTLINED_FUNCTION_10();
  }

  return result;
}

uint64_t sub_24AB48B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
  sub_24AB4DC90();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_24AB475B4(v7, &qword_27EF92E38, &unk_24AB62050);
  }

  sub_24AB4DCE8();
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB5FFDC();
  return sub_24AB4DD40(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
}

BOOL sub_24AB48D48(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_24AB48D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
  sub_24AB4DC90();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_24AB475B4(v7, &qword_27EF92E40, &unk_24AB62D50);
  }

  sub_24AB4DCE8();
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  sub_24AB5FFDC();
  return sub_24AB4DD40(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
}

uint64_t sub_24AB48F7C(uint64_t *a1, uint64_t *a2)
{
  v55 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v4 = OUTLINED_FUNCTION_0_1(v55);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FD8, &qword_24AB62D60);
  OUTLINED_FUNCTION_0_1(v53);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v56 = &v50 - v14;
  v15 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v16 = OUTLINED_FUNCTION_0_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FE0, &qword_24AB62D68) - 8);
  v26 = *(*v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v50 - v28;
  v54 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v30 = *(v54 + 24);
  v31 = v25[14];
  v57 = a1;
  sub_24AB4DC90();
  sub_24AB4DC90();
  OUTLINED_FUNCTION_34(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_34(&v29[v31]);
    if (v32)
    {
      sub_24AB475B4(v29, &qword_27EF92E38, &unk_24AB62050);
      goto LABEL_12;
    }

LABEL_9:
    v33 = &qword_27EF92FE0;
    v34 = &qword_24AB62D68;
    v35 = v29;
LABEL_10:
    sub_24AB475B4(v35, v33, v34);
    goto LABEL_21;
  }

  sub_24AB4DC90();
  OUTLINED_FUNCTION_34(&v29[v31]);
  if (v32)
  {
    sub_24AB4DD40(v24, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
    goto LABEL_9;
  }

  sub_24AB4DCE8();
  v36 = sub_24AB4A664();
  sub_24AB4DD40(v20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB4DD40(v24, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB475B4(v29, &qword_27EF92E38, &unk_24AB62050);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((sub_24AB4FF28(*v57, *a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  v37 = v54;
  v38 = *(v54 + 28);
  v39 = *(v53 + 48);
  v40 = v56;
  sub_24AB4DC90();
  sub_24AB4DC90();
  v41 = v55;
  if (__swift_getEnumTagSinglePayload(v40, 1, v55) != 1)
  {
    v42 = v52;
    sub_24AB4DC90();
    if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v41) != 1)
    {
      v43 = v51;
      sub_24AB4DCE8();
      v44 = sub_24AB49DA4();
      sub_24AB4DD40(v43, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
      sub_24AB4DD40(v42, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
      sub_24AB475B4(v40, &qword_27EF92E40, &unk_24AB62D50);
      if (v44)
      {
        goto LABEL_20;
      }

LABEL_21:
      v48 = 0;
      return v48 & 1;
    }

    sub_24AB4DD40(v42, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
    goto LABEL_18;
  }

  if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v41) != 1)
  {
LABEL_18:
    v33 = &qword_27EF92FD8;
    v34 = &qword_24AB62D60;
    v35 = v40;
    goto LABEL_10;
  }

  sub_24AB475B4(v40, &qword_27EF92E40, &unk_24AB62D50);
LABEL_20:
  v45 = *(v37 + 20);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v46, v47);
  v48 = sub_24AB6014C();
  return v48 & 1;
}

uint64_t sub_24AB494DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB49550(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24AB495C4(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_24AB49618(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FD0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB496B8(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB49780()
{
  sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB49800()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931F0);
  __swift_project_value_buffer(v0, qword_27EF931F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24AB62070;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "fqn";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_24AB5FFEC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "timestamp_ms";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "request_id";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "topic_override";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "source_cluster";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "stream";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "legacyHeaders";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB49AFC()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEEC();
        break;
      case 3:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      case 7:
        OUTLINED_FUNCTION_2_1();
        sub_24AB49BC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB49C38()
{
  OUTLINED_FUNCTION_5();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_3_0();
  if (!v6 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v2) == 0))
  {
    if (!v3[2] || (v2 = v0, OUTLINED_FUNCTION_15(), result = sub_24AB5FFAC(), !v0))
    {
      v8 = v3[3];
      v9 = v3[4];
      v10 = OUTLINED_FUNCTION_17();
      if (sub_24AB48D48(v10, v11) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), (v0 = v2) == 0))
      {
        v12 = v3[5];
        v13 = v3[6];
        OUTLINED_FUNCTION_3_0();
        if (!v14 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v2) == 0))
        {
          v15 = v3[7];
          v16 = v3[8];
          OUTLINED_FUNCTION_3_0();
          if (!v17 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v2) == 0))
          {
            v18 = v3[9];
            v19 = v3[10];
            OUTLINED_FUNCTION_3_0();
            if (!v20 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v2) == 0))
            {
              if (!*(v3[11] + 16) || (sub_24AB5FE1C(), result = sub_24AB5FF6C(), !v0))
              {
                v21 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
                return OUTLINED_FUNCTION_10();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB49DA4()
{
  OUTLINED_FUNCTION_18();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  if (v1[2] != v0[2] || (MEMORY[0x24C227A70](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v4 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[7] == v0[7] && v1[8] == v0[8];
  if (!v5 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v6 && (sub_24AB6030C() & 1) == 0 || (sub_24AB50C98(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v8, v9);
  return OUTLINED_FUNCTION_11() & 1;
}

uint64_t sub_24AB49EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB49F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24AB49FD4(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_24AB4A028(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FE8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4A0C8(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4A190()
{
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4A210()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93208);
  __swift_project_value_buffer(v0, qword_27EF93208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "payload_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "schema_name";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "schema_fingerprint";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "body";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4A458()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_2_1();
        sub_24AB4A4F8();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB4A560()
{
  OUTLINED_FUNCTION_5();
  if (!*v0 || (v16 = *v0, v17 = *(v2 + 8), sub_24AB51290(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_3_0();
    if (!v6 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v1))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v9 = OUTLINED_FUNCTION_17();
      if (sub_24AB48D48(v9, v10) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
      {
        v11 = *(v2 + 48);
        v12 = *(v2 + 56);
        v13 = OUTLINED_FUNCTION_17();
        if (sub_24AB48D48(v13, v14) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
        {
          v15 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
          return OUTLINED_FUNCTION_10();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB4A664()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30(v2, v3);
  if (v6)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v6 || (sub_24AB6030C()) && (MEMORY[0x24C227A70](v1[4], v1[5], v0[4], v0[5]) & 1) != 0 && (MEMORY[0x24C227A70](v1[6], v1[7], v0[6], v0[7]))
  {
    v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
    sub_24AB5FE4C();
    OUTLINED_FUNCTION_0_2();
    sub_24AB4CE90(v8, v9);
    return OUTLINED_FUNCTION_11() & 1;
  }

  return 0;
}

uint64_t (*sub_24AB4A774(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_24AB4A7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FF0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4A868(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4A930()
{
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4A9B0()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93220);
  __swift_project_value_buffer(v0, qword_27EF93220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "code";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "message";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4ABF8()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEDC();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      case 3:
        OUTLINED_FUNCTION_2_1();
        sub_24AB4ACA4();
        break;
      case 4:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB4AD0C()
{
  OUTLINED_FUNCTION_5();
  if (!*v1 || (v2 = v0, OUTLINED_FUNCTION_15(), result = sub_24AB5FF9C(), !v0))
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = OUTLINED_FUNCTION_17();
    if (sub_24AB48D48(v7, v8) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v2))
    {
      if (!*(v3 + 24) || (v13 = *(v3 + 24), v14 = *(v3 + 32), sub_24AB512E4(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v2))
      {
        v9 = *(v3 + 40);
        v10 = *(v3 + 48);
        OUTLINED_FUNCTION_3_0();
        if (!v11 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v2))
        {
          v12 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
          return OUTLINED_FUNCTION_10();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB4AE0C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_18();
    if (MEMORY[0x24C227A70](*(v4 + 8), v3[2], *(v2 + 8), *(v2 + 16)))
    {
      v5 = v3[3];
      v6 = *(v2 + 24);
      if (*(v2 + 32) == 1)
      {
        switch(v6)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_8;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_8;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_8;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            if (!v5)
            {
              goto LABEL_8;
            }

            return 0;
        }
      }

      if (v5 == v6)
      {
LABEL_8:
        v7 = v3[5] == *(v2 + 40) && v3[6] == *(v2 + 48);
        if (v7 || (sub_24AB6030C() & 1) != 0)
        {
          v8 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
          sub_24AB5FE4C();
          OUTLINED_FUNCTION_0_2();
          sub_24AB4CE90(v9, v10);
          return OUTLINED_FUNCTION_11() & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_24AB4AF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24AB5FE4C();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_24AB4AFD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_24AB4B074(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93000, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4B114(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4B1DC()
{
  sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4B25C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93238);
  __swift_project_value_buffer(v0, qword_27EF93238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "events";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4B42C()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_14();
      sub_24AB5FECC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_2_1();
      sub_24AB4B4E4(v3, v4, v5, v6, v7, &qword_27EF92E48, v8);
    }
  }

  return result;
}

uint64_t sub_24AB4B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_24AB4CE90(a6, a7);
  return sub_24AB5FF0C();
}

uint64_t sub_24AB4B580()
{
  OUTLINED_FUNCTION_5();
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0), sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage), OUTLINED_FUNCTION_25(), OUTLINED_FUNCTION_7(), result = sub_24AB5FFCC(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = OUTLINED_FUNCTION_17();
    if (sub_24AB48D48(v6, v7) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
    {
      v8 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
      return OUTLINED_FUNCTION_10();
    }
  }

  return result;
}

uint64_t sub_24AB4B660()
{
  OUTLINED_FUNCTION_18();
  if ((sub_24AB4E5DC(*v2, *v3) & 1) == 0 || (MEMORY[0x24C227A70](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v5, v6);
  return OUTLINED_FUNCTION_11() & 1;
}

uint64_t sub_24AB4B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB4B788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24AB4B7FC(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_24AB4B850(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93010, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4B8F0(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F00, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4B9B8()
{
  sub_24AB4CE90(&qword_27EF92F00, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4BA38()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93250);
  __swift_project_value_buffer(v0, qword_27EF93250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "message";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errors";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4BC40()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_2_1();
        sub_24AB4BD28();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 1:
        OUTLINED_FUNCTION_2_1();
        sub_24AB4BCC0();
        break;
    }
  }

  return result;
}

uint64_t sub_24AB4BD28()
{
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  return sub_24AB5FF0C();
}

uint64_t sub_24AB4BDC8()
{
  OUTLINED_FUNCTION_5();
  if (!*v0 || (v8 = *v0, v9 = *(v2 + 8), sub_24AB51390(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_3_0();
    if (!v6 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0), sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError), OUTLINED_FUNCTION_25(), OUTLINED_FUNCTION_7(), result = sub_24AB5FFCC(), !v1))
      {
        v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
        return OUTLINED_FUNCTION_10();
      }
    }
  }

  return result;
}

uint64_t sub_24AB4BEE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30(v2, v3);
  if (v6)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v6 || (sub_24AB6030C()) && (sub_24AB4DD98(v1[4], v0[4]))
  {
    v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
    sub_24AB5FE4C();
    OUTLINED_FUNCTION_0_2();
    sub_24AB4CE90(v8, v9);
    return OUTLINED_FUNCTION_11() & 1;
  }

  return 0;
}

uint64_t sub_24AB4BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB4C058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24AB4C0CC(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_24AB4C120(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93018, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4C1C0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24AB6000C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24AB4C25C(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92EE0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4C324()
{
  sub_24AB4CE90(&qword_27EF92EE0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);

  return sub_24AB5FF5C();
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_21();
  v5 = *(v1 + v4);
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_24AB4C3F8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_21();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_21();
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_24AB4C4EC;
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.unknownFields.getter()
{
  v0 = sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_32();

  return v4(v3);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.unknownFields.setter(uint64_t a1)
{
  v3 = sub_24AB5FE4C();
  v4 = OUTLINED_FUNCTION_0_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.init()@<X0>(uint64_t a1@<X8>)
{
  sub_24AB5FE3C();
  result = OUTLINED_FUNCTION_21();
  *(a1 + v3) = 5;
  return result;
}

uint64_t sub_24AB4C66C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF92E58);
  __swift_project_value_buffer(v0, qword_27EF92E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F50;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "buildVariant";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_24AB5FFEC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_24AB5FFFC();
}

uint64_t static Com_Apple_Ve_Common_Headers_IngestEnvironment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF92C10 != -1)
  {
    swift_once();
  }

  v2 = sub_24AB6000C();
  v3 = __swift_project_value_buffer(v2, qword_27EF92E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_2_1();
      sub_24AB4C8CC();
    }
  }

  return result;
}

uint64_t sub_24AB4C8CC()
{
  v0 = *(type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment(0) + 20);
  sub_24AB51440();
  return sub_24AB5FEAC();
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_14();
  result = sub_24AB4C990(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_22();
    return sub_24AB5FE2C();
  }

  return result;
}

uint64_t sub_24AB4C990(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment(0);
  if (*(a1 + *(result + 20)) != 5)
  {
    v3 = *(a1 + *(result + 20));
    sub_24AB51440();
    return sub_24AB5FF7C();
  }

  return result;
}

uint64_t static Com_Apple_Ve_Common_Headers_IngestEnvironment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v6, v7);
  OUTLINED_FUNCTION_25();
  return sub_24AB6014C() & 1;
}

uint64_t sub_24AB4CB00(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_24AB6031C();
  a1(0);
  sub_24AB4CE90(a2, a3);
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB4CC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93030, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4CC84(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92E88, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4CCF4()
{
  sub_24AB4CE90(&qword_27EF92E88, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4CD70()
{
  sub_24AB6031C();
  sub_24AB6013C();
  return sub_24AB6032C();
}

FeedbackLogger::Com_Apple_Ve_Common_BuildVariant_optional __swiftcall Com_Apple_Ve_Common_BuildVariant.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AB4CE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51440();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB4CE68@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Ve_Common_BuildVariant.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24AB4CE90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AB4D008()
{
  result = qword_27EF92E98;
  if (!qword_27EF92E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E98);
  }

  return result;
}

unint64_t sub_24AB4D060()
{
  result = qword_27EF92EA0;
  if (!qword_27EF92EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92EA0);
  }

  return result;
}

unint64_t sub_24AB4D0B8()
{
  result = qword_27EF92EA8;
  if (!qword_27EF92EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92EA8);
  }

  return result;
}

void sub_24AB4D19C()
{
  sub_24AB5FE4C();
  if (v0 <= 0x3F)
  {
    sub_24AB4D220();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB4D220()
{
  if (!qword_27EF92ED0)
  {
    v0 = sub_24AB6027C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF92ED0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Com_Apple_Ve_Common_BuildVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Com_Apple_Ve_Common_BuildVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24AB4DA9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AB4DC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AB4DC90()
{
  OUTLINED_FUNCTION_18();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_32();
  v7(v6);
  return v0;
}

uint64_t sub_24AB4DCE8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  return v0;
}

uint64_t sub_24AB4DD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24AB4DD98(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  v4 = *(*(v32 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v27 = 1;
      goto LABEL_49;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v30[2] = 0;
    v31 = v15;
    while (1)
    {
      sub_24AB51338();
      v33 = v13;
      sub_24AB51338();
      if (*v10 != *v7)
      {
        break;
      }

      v17 = *(v7 + 1);
      v16 = *(v7 + 2);
      if (*(v10 + 1) || (*(v10 + 2) == 0xC000000000000000 ? (v18 = v16 >> 62 == 3) : (v18 = 0), !v18 || v17 || v16 != 0xC000000000000000))
      {
        switch(v16 >> 62)
        {
          case 1uLL:
            LODWORD(v19) = HIDWORD(v17) - v17;
            if (__OFSUB__(HIDWORD(v17), v17))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
            }

            v19 = v19;
LABEL_21:
            if (!v19)
            {
              break;
            }

            goto LABEL_46;
          case 2uLL:
            v21 = *(v17 + 16);
            v20 = *(v17 + 24);
            v22 = __OFSUB__(v20, v21);
            v19 = v20 - v21;
            if (!v22)
            {
              goto LABEL_21;
            }

            goto LABEL_51;
          case 3uLL:
            break;
          default:
            v19 = BYTE6(v16);
            goto LABEL_21;
        }
      }

      v23 = *(v10 + 3);
      v24 = *(v7 + 3);
      if (v7[32] == 1)
      {
        switch(v24)
        {
          case 1:
            if (v23 != 1)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 2:
            if (v23 != 2)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 3:
            if (v23 != 3)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 4:
            if (v23 != 4)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 5:
            if (v23 != 5)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 6:
            if (v23 != 6)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          default:
            if (v23)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
        }
      }

      if (v23 != v24)
      {
        break;
      }

LABEL_27:
      v25 = *(v10 + 5) == *(v7 + 5) && *(v10 + 6) == *(v7 + 6);
      if (!v25 && (sub_24AB6030C() & 1) == 0)
      {
        break;
      }

      v26 = *(v32 + 32);
      sub_24AB5FE4C();
      sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8]);
      v27 = sub_24AB6014C();
      sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
      sub_24AB4DD40(v10, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
      if (v27)
      {
        v14 += v31;
        v13 = v33 + v31;
        if (--v11)
        {
          continue;
        }
      }

      goto LABEL_49;
    }

LABEL_46:
    sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
    sub_24AB4DD40(v10, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  }

  v27 = 0;
LABEL_49:
  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

uint64_t sub_24AB4E5DC(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v194 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FD8, &qword_24AB62D60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v205 = &v194 - v14;
  v204 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v15 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v208 = (&v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v203 = &v194 - v19;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FE0, &qword_24AB62D68);
  v20 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v207 = &v194 - v21;
  v210 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v22 = *(*(v210 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v210);
  v25 = (&v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    goto LABEL_268;
  }

  if (!v28 || a1 == a2)
  {
    v185 = 1;
    goto LABEL_269;
  }

  v195 = 0;
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = a1 + v29;
  v206 = a2 + v29;
  v196 = *(v26 + 72);
  v197 = v12;
  v198 = v25;
  v199 = v4;
  v209 = (&v194 - v27);
  while (2)
  {
    sub_24AB51338();
    v201 = v30;
    sub_24AB51338();
    v31 = v210[6];
    v32 = *(v202 + 48);
    v33 = v207;
    sub_24AB4DC90();
    v34 = v33;
    sub_24AB4DC90();
    v35 = v33;
    v36 = v204;
    if (__swift_getEnumTagSinglePayload(v35, 1, v204) == 1)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34 + v32, 1, v36);
      v38 = v199;
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_263;
      }

      sub_24AB475B4(v34, &qword_27EF92E38, &unk_24AB62050);
      goto LABEL_176;
    }

    v39 = v34;
    v40 = v203;
    sub_24AB4DC90();
    if (__swift_getEnumTagSinglePayload(v39 + v32, 1, v36) == 1)
    {
      sub_24AB4DD40(v40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
      v34 = v39;
LABEL_263:
      v190 = &qword_27EF92FE0;
      v191 = &qword_24AB62D68;
LABEL_266:
      sub_24AB475B4(v34, v190, v191);
      goto LABEL_267;
    }

    v41 = v208;
    sub_24AB4DCE8();
    v42 = *v40;
    v43 = *v41;
    v44 = v40;
    if (*(v41 + 8) == 1)
    {
      v38 = v199;
      if (v43)
      {
        if (v43 == 1)
        {
          if (v42 != 1)
          {
            goto LABEL_260;
          }
        }

        else if (v42 != 2)
        {
          goto LABEL_260;
        }
      }

      else if (v42)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v38 = v199;
      if (v42 != v43)
      {
        goto LABEL_260;
      }
    }

    v45 = v40[2] == v208[2] && v40[3] == v208[3];
    if (!v45)
    {
      v46 = sub_24AB6030C();
      v44 = v203;
      if ((v46 & 1) == 0)
      {
        goto LABEL_260;
      }
    }

    v47 = v44[4];
    v48 = v44[5];
    v49 = v48 >> 62;
    v51 = v208[4];
    v50 = v208[5];
    v52 = v50 >> 62;
    if (!v45)
    {
      v54 = 0;
      switch(v49)
      {
        case 0uLL:
          v54 = BYTE6(v48);
          goto LABEL_40;
        case 1uLL:
          v45 = HIDWORD(v47) == v47;
          if (__OFSUB__(HIDWORD(v47), v47))
          {
            goto LABEL_276;
          }

          v54 = HIDWORD(v47) - v47;
          goto LABEL_40;
        case 2uLL:
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          v57 = __OFSUB__(v55, v56);
          v54 = v55 - v56;
          v45 = v54 == 0;
          if (!v57)
          {
            goto LABEL_40;
          }

LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
          goto LABEL_293;
        case 3uLL:
          goto LABEL_40;
        default:
          goto LABEL_314;
      }
    }

    v54 = 0;
    if (v47 || (v48 == 0xC000000000000000 ? (v53 = v50 >> 62 == 3, v45 = v52 == 3) : (v53 = 0, v45 = 0), !v53 || (v54 = 0, v51) || (v45 = v50 == 0xC000000000000000, v50 != 0xC000000000000000)))
    {
LABEL_40:
      switch(v52)
      {
        case 1uLL:
          LODWORD(v58) = HIDWORD(v51) - v51;
          if (__OFSUB__(HIDWORD(v51), v51))
          {
            goto LABEL_270;
          }

          v58 = v58;
LABEL_49:
          if (v54 != v58)
          {
            goto LABEL_260;
          }

          v45 = v54 == 1;
          if (v54 < 1)
          {
            goto LABEL_103;
          }

          break;
        case 2uLL:
          v60 = *(v51 + 16);
          v59 = *(v51 + 24);
          v57 = __OFSUB__(v59, v60);
          v58 = v59 - v60;
          if (!v57)
          {
            goto LABEL_49;
          }

          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
          goto LABEL_275;
        case 3uLL:
          if (v54)
          {
            goto LABEL_260;
          }

          goto LABEL_103;
        default:
          v58 = BYTE6(v50);
          goto LABEL_49;
      }

      v61 = v51 >> 32;
      switch(v49)
      {
        case 1:
          if (v47 >> 32 < v47)
          {
            goto LABEL_281;
          }

          v76 = v47;
          sub_24AB460B0(v51, v50);
          sub_24AB460B0(v51, v50);
          sub_24AB460B0(v51, v50);
          v68 = sub_24AB5FD6C();
          if (!v68)
          {
            goto LABEL_75;
          }

          v77 = sub_24AB5FD8C();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_288;
          }

          v68 += v76 - v77;
LABEL_75:
          sub_24AB5FD7C();
          v78 = v68;
          v79 = v195;
          sub_24AB5106C(v78, v51, v50, __s1);
          v195 = v79;
          sub_24AB4611C(v51, v50);
          sub_24AB4611C(v51, v50);
          sub_24AB4611C(v51, v50);
          v38 = v199;
          v44 = v203;
          v36 = v204;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_260;
          }

          break;
        case 2:
          v67 = *(v47 + 16);
          v66 = *(v47 + 24);
          sub_24AB460B0(v51, v50);
          sub_24AB460B0(v51, v50);
          sub_24AB460B0(v51, v50);
          v68 = sub_24AB5FD6C();
          if (!v68)
          {
            goto LABEL_63;
          }

          v69 = sub_24AB5FD8C();
          if (__OFSUB__(v67, v69))
          {
            goto LABEL_287;
          }

          v68 += v67 - v69;
LABEL_63:
          if (!__OFSUB__(v66, v67))
          {
            goto LABEL_75;
          }

          goto LABEL_282;
        case 3:
          memset(__s1, 0, 14);
          if (!v52)
          {
            goto LABEL_77;
          }

          if (v52 == 2)
          {
            v70 = *(v51 + 16);
            v71 = *(v51 + 24);
            sub_24AB460B0(v51, v50);
            v72 = sub_24AB5FD6C();
            if (v72)
            {
              v73 = v72;
              v74 = sub_24AB5FD8C();
              if (__OFSUB__(v70, v74))
              {
                goto LABEL_302;
              }

              v75 = (v70 - v74 + v73);
            }

            else
            {
              v75 = 0;
            }

            v57 = __OFSUB__(v71, v70);
            v89 = v71 - v70;
            if (v57)
            {
              goto LABEL_295;
            }

            v90 = sub_24AB5FD7C();
            v38 = v199;
            v36 = v204;
            if (!v75)
            {
              goto LABEL_308;
            }

LABEL_99:
            if (v90 >= v89)
            {
              v91 = v89;
            }

            else
            {
              v91 = v90;
            }

            v92 = memcmp(__s1, v75, v91);
            sub_24AB4611C(v51, v50);
            v44 = v203;
            if (v92)
            {
              goto LABEL_260;
            }
          }

          else
          {
            if (v61 < v51)
            {
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
LABEL_301:
              __break(1u);
LABEL_302:
              __break(1u);
LABEL_303:
              __break(1u);
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
            }

            sub_24AB460B0(v51, v50);
            v62 = sub_24AB5FD6C();
            if (v62)
            {
              v81 = sub_24AB5FD8C();
              if (__OFSUB__(v51, v81))
              {
                goto LABEL_303;
              }

              v62 += v51 - v81;
            }

            v64 = sub_24AB5FD7C();
            if (!v62)
            {
              __break(1u);
LABEL_308:
              __break(1u);
LABEL_309:
              __break(1u);
LABEL_310:
              __break(1u);
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:

              __break(1u);
LABEL_314:
              JUMPOUT(0);
            }

LABEL_84:
            if (v64 >= v61 - v51)
            {
              v82 = v61 - v51;
            }

            else
            {
              v82 = v64;
            }

            v83 = memcmp(__s1, v62, v82);
            sub_24AB4611C(v51, v50);
            v44 = v203;
            v38 = v199;
            if (v83)
            {
              goto LABEL_260;
            }
          }

          break;
        default:
          LOWORD(__s1[0]) = v44[4];
          BYTE2(__s1[0]) = BYTE2(v47);
          BYTE3(__s1[0]) = BYTE3(v47);
          BYTE4(__s1[0]) = BYTE4(v47);
          BYTE5(__s1[0]) = BYTE5(v47);
          BYTE6(__s1[0]) = BYTE6(v47);
          HIBYTE(__s1[0]) = HIBYTE(v47);
          LOWORD(__s1[1]) = v48;
          BYTE2(__s1[1]) = BYTE2(v48);
          BYTE3(__s1[1]) = BYTE3(v48);
          BYTE4(__s1[1]) = BYTE4(v48);
          BYTE5(__s1[1]) = BYTE5(v48);
          if (!v52)
          {
LABEL_77:
            __s2 = v51;
            v212 = v50;
            v213 = BYTE2(v50);
            v214 = BYTE3(v50);
            v215 = BYTE4(v50);
            v216 = BYTE5(v50);
            v80 = memcmp(__s1, &__s2, BYTE6(v50));
            v44 = v203;
            v38 = v199;
            if (v80)
            {
              goto LABEL_260;
            }

            break;
          }

          if (v52 == 1)
          {
            if (v61 < v51)
            {
              goto LABEL_294;
            }

            sub_24AB460B0(v51, v50);
            v62 = sub_24AB5FD6C();
            if (v62)
            {
              v63 = sub_24AB5FD8C();
              if (__OFSUB__(v51, v63))
              {
                goto LABEL_304;
              }

              v62 += v51 - v63;
            }

            v64 = sub_24AB5FD7C();
            if (!v62)
            {
              goto LABEL_310;
            }

            goto LABEL_84;
          }

          v84 = *(v51 + 16);
          v85 = *(v51 + 24);
          sub_24AB460B0(v51, v50);
          v86 = sub_24AB5FD6C();
          if (v86)
          {
            v87 = v86;
            v88 = sub_24AB5FD8C();
            if (__OFSUB__(v84, v88))
            {
              goto LABEL_301;
            }

            v75 = (v84 - v88 + v87);
          }

          else
          {
            v75 = 0;
          }

          v57 = __OFSUB__(v85, v84);
          v89 = v85 - v84;
          if (v57)
          {
            goto LABEL_296;
          }

          v90 = sub_24AB5FD7C();
          v38 = v199;
          v36 = v204;
          if (!v75)
          {
            goto LABEL_309;
          }

          goto LABEL_99;
      }
    }

LABEL_103:
    v93 = v44[6];
    v94 = v44[7];
    v95 = v94 >> 62;
    v97 = v208[6];
    v96 = v208[7];
    v98 = v96 >> 62;
    if (v45)
    {
      v100 = 0;
      if (!v93 && v94 == 0xC000000000000000 && v96 >> 62 == 3)
      {
        v100 = 0;
        if (!v97 && v96 == 0xC000000000000000)
        {
          goto LABEL_175;
        }
      }
    }

    else
    {
      v100 = 0;
      switch(v95)
      {
        case 0uLL:
          v100 = BYTE6(v94);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v93), v93))
          {
            goto LABEL_277;
          }

          v100 = HIDWORD(v93) - v93;
          break;
        case 2uLL:
          v102 = *(v93 + 16);
          v101 = *(v93 + 24);
          v57 = __OFSUB__(v101, v102);
          v100 = v101 - v102;
          if (!v57)
          {
            break;
          }

          goto LABEL_278;
        case 3uLL:
          break;
        default:
          goto LABEL_314;
      }
    }

    switch(v98)
    {
      case 1uLL:
        LODWORD(v103) = HIDWORD(v97) - v97;
        if (__OFSUB__(HIDWORD(v97), v97))
        {
          goto LABEL_272;
        }

        v103 = v103;
LABEL_128:
        if (v100 != v103)
        {
          goto LABEL_260;
        }

        if (v100 < 1)
        {
          goto LABEL_175;
        }

        break;
      case 2uLL:
        v105 = *(v97 + 16);
        v104 = *(v97 + 24);
        v57 = __OFSUB__(v104, v105);
        v103 = v104 - v105;
        if (!v57)
        {
          goto LABEL_128;
        }

        goto LABEL_271;
      case 3uLL:
        if (v100)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        v103 = BYTE6(v96);
        goto LABEL_128;
    }

    v106 = v97 >> 32;
    switch(v95)
    {
      case 1:
        if (v93 >> 32 < v93)
        {
          goto LABEL_283;
        }

        v119 = v93;
        sub_24AB460B0(v97, v96);
        sub_24AB460B0(v97, v96);
        sub_24AB460B0(v97, v96);
        v114 = sub_24AB5FD6C();
        if (!v114)
        {
          goto LABEL_156;
        }

        v120 = sub_24AB5FD8C();
        if (__OFSUB__(v119, v120))
        {
          goto LABEL_290;
        }

        v114 += v119 - v120;
LABEL_156:
        sub_24AB5FD7C();
        v121 = v114;
        v122 = v195;
        sub_24AB5106C(v121, v97, v96, __s1);
        v195 = v122;
        sub_24AB4611C(v97, v96);
        sub_24AB4611C(v97, v96);
        sub_24AB4611C(v97, v96);
        v38 = v199;
        v44 = v203;
        v36 = v204;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      case 2:
        v113 = *(v93 + 16);
        v112 = *(v93 + 24);
        sub_24AB460B0(v97, v96);
        sub_24AB460B0(v97, v96);
        sub_24AB460B0(v97, v96);
        v114 = sub_24AB5FD6C();
        if (!v114)
        {
          goto LABEL_146;
        }

        v115 = sub_24AB5FD8C();
        if (__OFSUB__(v113, v115))
        {
          goto LABEL_289;
        }

        v114 += v113 - v115;
LABEL_146:
        if (!__OFSUB__(v112, v113))
        {
          goto LABEL_156;
        }

        goto LABEL_284;
      case 3:
        memset(__s1, 0, 14);
        if (!v98)
        {
          goto LABEL_158;
        }

        if (v98 == 2)
        {
          v116 = *(v97 + 16);
          v106 = *(v97 + 24);
          sub_24AB460B0(v97, v96);
          sub_24AB460B0(v97, v96);
          v117 = v96 & 0x3FFFFFFFFFFFFFFFLL;
          v118 = v116;
        }

        else
        {
          if (v106 < v97)
          {
            goto LABEL_297;
          }

          sub_24AB460B0(v97, v96);
          sub_24AB460B0(v97, v96);
          v117 = v96 & 0x3FFFFFFFFFFFFFFFLL;
          v118 = v97;
        }

        v124 = v106;
        v125 = v195;
        v126 = sub_24AB511D8(v118, v124, v117, __s1);
        sub_24AB4611C(v97, v96);
        sub_24AB4611C(v97, v96);
        v65 = &v218;
        v195 = v125;
        if (v125)
        {
          goto LABEL_313;
        }

        v44 = v203;
        v38 = v199;
        if ((v126 & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        LOWORD(__s1[0]) = v44[6];
        BYTE2(__s1[0]) = BYTE2(v93);
        BYTE3(__s1[0]) = BYTE3(v93);
        BYTE4(__s1[0]) = BYTE4(v93);
        BYTE5(__s1[0]) = BYTE5(v93);
        BYTE6(__s1[0]) = BYTE6(v93);
        HIBYTE(__s1[0]) = HIBYTE(v93);
        LOWORD(__s1[1]) = v94;
        BYTE2(__s1[1]) = BYTE2(v94);
        BYTE3(__s1[1]) = BYTE3(v94);
        BYTE4(__s1[1]) = BYTE4(v94);
        BYTE5(__s1[1]) = BYTE5(v94);
        if (!v98)
        {
LABEL_158:
          __s2 = v97;
          v212 = v96;
          v213 = BYTE2(v96);
          v214 = BYTE3(v96);
          v215 = BYTE4(v96);
          v216 = BYTE5(v96);
          v123 = memcmp(__s1, &__s2, BYTE6(v96));
          v44 = v203;
          v38 = v199;
          if (v123)
          {
            goto LABEL_260;
          }

LABEL_175:
          v137 = *(v36 + 32);
          v138 = v44;
          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8]);
          v139 = v208;
          LOBYTE(v137) = sub_24AB6014C();
          sub_24AB4DD40(v139, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB4DD40(v138, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB475B4(v207, &qword_27EF92E38, &unk_24AB62050);
          v12 = v197;
          v25 = v198;
          if ((v137 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_176:
          if ((sub_24AB4FF28(*v209, *v25) & 1) == 0)
          {
            goto LABEL_267;
          }

          v140 = v7;
          v200 = v28;
          v141 = v210[7];
          v142 = *(v12 + 48);
          v34 = v205;
          sub_24AB4DC90();
          sub_24AB4DC90();
          if (__swift_getEnumTagSinglePayload(v34, 1, v38) == 1)
          {
            if (__swift_getEnumTagSinglePayload(v34 + v142, 1, v38) != 1)
            {
              goto LABEL_265;
            }

            sub_24AB475B4(v34, &qword_27EF92E40, &unk_24AB62D50);
            v143 = v200;
            v7 = v140;
            goto LABEL_255;
          }

          sub_24AB4DC90();
          v144 = v38;
          if (__swift_getEnumTagSinglePayload(v34 + v142, 1, v38) == 1)
          {
            sub_24AB4DD40(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
LABEL_265:
            v190 = &qword_27EF92FD8;
            v191 = &qword_24AB62D60;
            goto LABEL_266;
          }

          v7 = v140;
          sub_24AB4DCE8();
          v145 = *v11 == *v140 && v11[1] == v140[1];
          v146 = v200;
          if (!v145 && (sub_24AB6030C() & 1) == 0 || (v147 = v11[2], v148 = v7[2], v149 = v147 == v148, v147 != v148))
          {
LABEL_259:
            sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
            sub_24AB4DD40(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
            v186 = &qword_27EF92E40;
            v187 = &unk_24AB62D50;
            v188 = v205;
            goto LABEL_261;
          }

          v150 = v11[3];
          v151 = v11[4];
          v152 = v151 >> 62;
          v154 = v7[3];
          v153 = v7[4];
          v155 = v153 >> 62;
          if (!v149)
          {
            v157 = 0;
            switch(v152)
            {
              case 0uLL:
                v157 = BYTE6(v151);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v150), v150))
                {
                  goto LABEL_280;
                }

                v157 = HIDWORD(v150) - v150;
                break;
              case 2uLL:
                v159 = *(v150 + 16);
                v158 = *(v150 + 24);
                v57 = __OFSUB__(v158, v159);
                v157 = v158 - v159;
                if (!v57)
                {
                  break;
                }

                goto LABEL_279;
              case 3uLL:
                break;
              default:
                goto LABEL_314;
            }

LABEL_203:
            switch(v155)
            {
              case 1uLL:
                LODWORD(v160) = HIDWORD(v154) - v154;
                if (__OFSUB__(HIDWORD(v154), v154))
                {
                  goto LABEL_273;
                }

                v160 = v160;
LABEL_212:
                if (v157 != v160)
                {
                  goto LABEL_259;
                }

                if (v157 < 1)
                {
                  goto LABEL_238;
                }

                break;
              case 2uLL:
                v162 = *(v154 + 16);
                v161 = *(v154 + 24);
                v57 = __OFSUB__(v161, v162);
                v160 = v161 - v162;
                if (!v57)
                {
                  goto LABEL_212;
                }

                goto LABEL_274;
              case 3uLL:
                if (v157)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                v160 = BYTE6(v153);
                goto LABEL_212;
            }

            switch(v152)
            {
              case 1:
                if (v150 >> 32 < v150)
                {
                  goto LABEL_285;
                }

                v171 = v150;
                sub_24AB460B0(v7[3], v7[4]);
                sub_24AB460B0(v154, v153);
                sub_24AB460B0(v154, v153);
                v168 = sub_24AB5FD6C();
                if (!v168)
                {
                  goto LABEL_231;
                }

                v172 = sub_24AB5FD8C();
                if (__OFSUB__(v171, v172))
                {
                  goto LABEL_292;
                }

                v168 += v171 - v172;
LABEL_231:
                sub_24AB5FD7C();
                v173 = v168;
                v174 = v195;
                sub_24AB5106C(v173, v154, v153, __s1);
                v195 = v174;
                sub_24AB4611C(v154, v153);
                sub_24AB4611C(v154, v153);
                sub_24AB4611C(v154, v153);
                v38 = v199;
                if ((__s1[0] & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              case 2:
                v167 = *(v150 + 16);
                v166 = *(v150 + 24);
                sub_24AB460B0(v7[3], v7[4]);
                sub_24AB460B0(v154, v153);
                sub_24AB460B0(v154, v153);
                v168 = sub_24AB5FD6C();
                if (!v168)
                {
                  goto LABEL_222;
                }

                v169 = sub_24AB5FD8C();
                if (__OFSUB__(v167, v169))
                {
                  goto LABEL_291;
                }

                v168 += v167 - v169;
LABEL_222:
                if (!__OFSUB__(v166, v167))
                {
                  goto LABEL_231;
                }

                goto LABEL_286;
              case 3:
                memset(__s1, 0, 14);
                sub_24AB460B0(v154, v153);
                sub_24AB460B0(v154, v153);
                v170 = v195;
                sub_24AB5106C(__s1, v154, v153, &__s2);
                v195 = v170;
                v38 = v144;
                sub_24AB4611C(v154, v153);
                sub_24AB4611C(v154, v153);
                if ((__s2 & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                LOWORD(__s1[0]) = v11[3];
                BYTE2(__s1[0]) = BYTE2(v150);
                BYTE3(__s1[0]) = BYTE3(v150);
                BYTE4(__s1[0]) = BYTE4(v150);
                BYTE5(__s1[0]) = BYTE5(v150);
                BYTE6(__s1[0]) = BYTE6(v150);
                HIBYTE(__s1[0]) = HIBYTE(v150);
                LOWORD(__s1[1]) = v151;
                BYTE2(__s1[1]) = BYTE2(v151);
                BYTE3(__s1[1]) = BYTE3(v151);
                BYTE4(__s1[1]) = BYTE4(v151);
                BYTE5(__s1[1]) = BYTE5(v151);
                if (v155)
                {
                  if (v155 == 1)
                  {
                    if (v154 >> 32 < v154)
                    {
                      goto LABEL_300;
                    }

                    sub_24AB460B0(v154, v153);
                    sub_24AB460B0(v154, v153);
                    v163 = v153 & 0x3FFFFFFFFFFFFFFFLL;
                    v164 = v154;
                    v165 = v154 >> 32;
                  }

                  else
                  {
                    v175 = *(v154 + 16);
                    v176 = *(v154 + 24);
                    sub_24AB460B0(v154, v153);
                    sub_24AB460B0(v154, v153);
                    v163 = v153 & 0x3FFFFFFFFFFFFFFFLL;
                    v164 = v175;
                    v165 = v176;
                  }

                  v177 = v195;
                  v178 = sub_24AB511D8(v164, v165, v163, __s1);
                  sub_24AB4611C(v154, v153);
                  sub_24AB4611C(v154, v153);
                  v65 = &v218;
                  v195 = v177;
                  if (v177)
                  {
                    goto LABEL_313;
                  }

                  v38 = v199;
                  if ((v178 & 1) == 0)
                  {
                    goto LABEL_259;
                  }
                }

                else
                {
                  __s2 = v154;
                  v212 = v153;
                  v213 = BYTE2(v153);
                  v214 = BYTE3(v153);
                  v215 = BYTE4(v153);
                  v216 = BYTE5(v153);
                  if (memcmp(__s1, &__s2, BYTE6(v153)))
                  {
                    goto LABEL_259;
                  }
                }

                break;
            }

            goto LABEL_238;
          }

          v157 = 0;
          if (v150)
          {
            goto LABEL_203;
          }

          if (v151 != 0xC000000000000000 || v153 >> 62 != 3)
          {
            goto LABEL_203;
          }

          v157 = 0;
          if (v154 || v153 != 0xC000000000000000)
          {
            goto LABEL_203;
          }

LABEL_238:
          v179 = v11[5] == v7[5] && v11[6] == v7[6];
          if (!v179 && (sub_24AB6030C() & 1) == 0)
          {
            goto LABEL_259;
          }

          v180 = v11[7] == v7[7] && v11[8] == v7[8];
          if (!v180 && (sub_24AB6030C() & 1) == 0)
          {
            goto LABEL_259;
          }

          v181 = v11[9] == v7[9] && v11[10] == v7[10];
          if (!v181 && (sub_24AB6030C() & 1) == 0 || (sub_24AB50C98(v11[11], v7[11]) & 1) == 0)
          {
            goto LABEL_259;
          }

          v182 = *(v38 + 44);
          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8]);
          LOBYTE(v182) = sub_24AB6014C();
          sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
          sub_24AB4DD40(v11, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
          sub_24AB475B4(v205, &qword_27EF92E40, &unk_24AB62D50);
          v12 = v197;
          v25 = v198;
          v143 = v146;
          if ((v182 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_255:
          v183 = v210[5];
          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8]);
          v184 = v209;
          v185 = sub_24AB6014C();
          sub_24AB4DD40(v25, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
          sub_24AB4DD40(v184, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
          if ((v185 & 1) == 0)
          {
            goto LABEL_269;
          }

          v206 += v196;
          v30 = v201 + v196;
          v28 = v143 - 1;
          if (!v28)
          {
            goto LABEL_269;
          }

          continue;
        }

        if (v98 == 1)
        {
          if (v106 < v97)
          {
            goto LABEL_298;
          }

          sub_24AB460B0(v97, v96);
          v107 = sub_24AB5FD6C();
          if (v107)
          {
            v108 = sub_24AB5FD8C();
            if (__OFSUB__(v97, v108))
            {
              goto LABEL_306;
            }

            v107 += v97 - v108;
          }

          v109 = sub_24AB5FD7C();
          if (!v107)
          {
            goto LABEL_312;
          }

          if (v109 >= v106 - v97)
          {
            v110 = v106 - v97;
          }

          else
          {
            v110 = v109;
          }

          v111 = memcmp(__s1, v107, v110);
          sub_24AB4611C(v97, v96);
          v44 = v203;
          v38 = v199;
          if (v111)
          {
            goto LABEL_260;
          }

          goto LABEL_175;
        }

        v127 = *(v97 + 16);
        v128 = *(v97 + 24);
        sub_24AB460B0(v97, v96);
        v129 = sub_24AB5FD6C();
        if (v129)
        {
          v130 = v129;
          v131 = sub_24AB5FD8C();
          if (__OFSUB__(v127, v131))
          {
            goto LABEL_305;
          }

          v132 = (v127 - v131 + v130);
        }

        else
        {
          v132 = 0;
        }

        v57 = __OFSUB__(v128, v127);
        v133 = v128 - v127;
        if (v57)
        {
          goto LABEL_299;
        }

        v134 = sub_24AB5FD7C();
        v38 = v199;
        v36 = v204;
        if (!v132)
        {
          goto LABEL_311;
        }

        if (v134 >= v133)
        {
          v135 = v133;
        }

        else
        {
          v135 = v134;
        }

        v136 = memcmp(__s1, v132, v135);
        sub_24AB4611C(v97, v96);
        v44 = v203;
        if (!v136)
        {
          goto LABEL_175;
        }

LABEL_260:
        v189 = v44;
        sub_24AB4DD40(v208, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        sub_24AB4DD40(v189, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        v186 = &qword_27EF92E38;
        v187 = &unk_24AB62050;
        v188 = v207;
LABEL_261:
        sub_24AB475B4(v188, v186, v187);
        v25 = v198;
LABEL_267:
        sub_24AB4DD40(v25, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
        sub_24AB4DD40(v209, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
LABEL_268:
        v185 = 0;
LABEL_269:
        v192 = *MEMORY[0x277D85DE8];
        return v185 & 1;
    }
  }
}

uint64_t sub_24AB4FF28(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v102 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v4 = *(*(v102 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v102);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v98 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v100 = 0;
      v101 = v15;
      while (1)
      {
        sub_24AB51338();
        sub_24AB51338();
        v16 = *v10;
        v17 = *v7;
        v18 = v7[8];
        v103 = v13;
        if (v18 == 1)
        {
          if (v17)
          {
            if (v17 == 1)
            {
              if (v16 != 1)
              {
                goto LABEL_181;
              }
            }

            else if (v16 != 2)
            {
              goto LABEL_181;
            }
          }

          else if (v16)
          {
            goto LABEL_181;
          }
        }

        else if (v16 != v17)
        {
          goto LABEL_181;
        }

        v19 = v10[2] == *(v7 + 2) && v10[3] == *(v7 + 3);
        if (!v19 && (sub_24AB6030C() & 1) == 0)
        {
LABEL_181:
          sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB4DD40(v10, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          goto LABEL_182;
        }

        v20 = v10[4];
        v21 = v10[5];
        v22 = v21 >> 62;
        v24 = *(v7 + 4);
        v23 = *(v7 + 5);
        v25 = v23 >> 62;
        if (!v19)
        {
          v27 = 0;
          switch(v22)
          {
            case 0uLL:
              v27 = BYTE6(v21);
              goto LABEL_36;
            case 1uLL:
              v19 = HIDWORD(v20) == v20;
              if (__OFSUB__(HIDWORD(v20), v20))
              {
                goto LABEL_188;
              }

              v27 = HIDWORD(v20) - v20;
              goto LABEL_36;
            case 2uLL:
              v29 = *(v20 + 16);
              v28 = *(v20 + 24);
              v30 = __OFSUB__(v28, v29);
              v27 = v28 - v29;
              v19 = v27 == 0;
              if (!v30)
              {
                goto LABEL_36;
              }

LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            case 3uLL:
              goto LABEL_36;
            default:
              goto LABEL_224;
          }
        }

        v27 = 0;
        if (v20 || (v21 == 0xC000000000000000 ? (v26 = v23 >> 62 == 3, v19 = v25 == 3) : (v26 = 0, v19 = 0), !v26 || (v27 = 0, v24) || (v19 = v23 == 0xC000000000000000, v23 != 0xC000000000000000)))
        {
LABEL_36:
          switch(v25)
          {
            case 1uLL:
              LODWORD(v31) = HIDWORD(v24) - v24;
              if (__OFSUB__(HIDWORD(v24), v24))
              {
                goto LABEL_184;
              }

              v31 = v31;
LABEL_45:
              if (v27 != v31)
              {
                goto LABEL_181;
              }

              v19 = v27 == 1;
              if (v27 < 1)
              {
                goto LABEL_99;
              }

              break;
            case 2uLL:
              v33 = *(v24 + 16);
              v32 = *(v24 + 24);
              v30 = __OFSUB__(v32, v33);
              v31 = v32 - v33;
              if (!v30)
              {
                goto LABEL_45;
              }

              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            case 3uLL:
              if (v27)
              {
                goto LABEL_181;
              }

              goto LABEL_99;
            default:
              v31 = BYTE6(v23);
              goto LABEL_45;
          }

          v34 = v24 >> 32;
          switch(v22)
          {
            case 1:
              v99 = v14;
              if (v20 >> 32 < v20)
              {
                goto LABEL_191;
              }

              v48 = v20;
              sub_24AB460B0(v24, v23);
              sub_24AB460B0(v24, v23);
              sub_24AB460B0(v24, v23);
              v49 = sub_24AB5FD6C();
              if (!v49)
              {
                goto LABEL_75;
              }

              v50 = sub_24AB5FD8C();
              if (__OFSUB__(v48, v50))
              {
                goto LABEL_196;
              }

              v49 += v48 - v50;
LABEL_75:
              sub_24AB5FD7C();
              v51 = v100;
              sub_24AB5106C(v49, v24, v23, __s1);
              sub_24AB4611C(v24, v23);
              sub_24AB4611C(v24, v23);
              sub_24AB4611C(v24, v23);
              v100 = v51;
              if (v51)
              {
                goto LABEL_223;
              }

              v14 = v99;
              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 2:
              v38 = *(v20 + 16);
              v99 = *(v20 + 24);
              sub_24AB460B0(v24, v23);
              sub_24AB460B0(v24, v23);
              sub_24AB460B0(v24, v23);
              v39 = sub_24AB5FD6C();
              if (!v39)
              {
                goto LABEL_59;
              }

              v40 = sub_24AB5FD8C();
              if (__OFSUB__(v38, v40))
              {
                goto LABEL_195;
              }

              v39 += v38 - v40;
LABEL_59:
              if (__OFSUB__(v99, v38))
              {
                goto LABEL_192;
              }

              sub_24AB5FD7C();
              v41 = v100;
              sub_24AB5106C(v39, v24, v23, __s1);
              sub_24AB4611C(v24, v23);
              sub_24AB4611C(v24, v23);
              sub_24AB4611C(v24, v23);
              v100 = v41;
              if (v41)
              {
                goto LABEL_223;
              }

              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 3:
              memset(__s1, 0, 14);
              if (!v25)
              {
                goto LABEL_78;
              }

              if (v25 == 2)
              {
                v42 = *(v24 + 16);
                v43 = *(v24 + 24);
                sub_24AB460B0(v24, v23);
                v44 = sub_24AB5FD6C();
                if (v44)
                {
                  v45 = sub_24AB5FD8C();
                  if (__OFSUB__(v42, v45))
                  {
                    goto LABEL_207;
                  }

                  v44 += v42 - v45;
                }

                v30 = __OFSUB__(v43, v42);
                v46 = v43 - v42;
                if (v30)
                {
                  goto LABEL_202;
                }

                v47 = sub_24AB5FD7C();
                if (!v44)
                {
                  goto LABEL_218;
                }

LABEL_94:
                if (v47 >= v46)
                {
                  v53 = v46;
                }

                else
                {
                  v53 = v47;
                }

                v54 = v44;
              }

              else
              {
                if (v34 < v24)
                {
LABEL_199:
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  __break(1u);
LABEL_203:
                  __break(1u);
LABEL_204:
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
LABEL_208:
                  __break(1u);
LABEL_209:
                  __break(1u);
LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
                }

                sub_24AB460B0(v24, v23);
                v35 = sub_24AB5FD6C();
                if (v35)
                {
                  v52 = sub_24AB5FD8C();
                  if (__OFSUB__(v24, v52))
                  {
                    goto LABEL_209;
                  }

                  v35 += v24 - v52;
                }

                v37 = sub_24AB5FD7C();
                if (!v35)
                {
                  goto LABEL_217;
                }

LABEL_85:
                if (v37 >= v34 - v24)
                {
                  v53 = v34 - v24;
                }

                else
                {
                  v53 = v37;
                }

                v54 = v35;
              }

              v58 = memcmp(__s1, v54, v53);
              sub_24AB4611C(v24, v23);
              if (v58)
              {
                goto LABEL_181;
              }

              break;
            default:
              LOWORD(__s1[0]) = v10[4];
              BYTE2(__s1[0]) = BYTE2(v20);
              BYTE3(__s1[0]) = BYTE3(v20);
              BYTE4(__s1[0]) = BYTE4(v20);
              BYTE5(__s1[0]) = BYTE5(v20);
              BYTE6(__s1[0]) = BYTE6(v20);
              HIBYTE(__s1[0]) = HIBYTE(v20);
              LOWORD(__s1[1]) = v21;
              BYTE2(__s1[1]) = BYTE2(v21);
              BYTE3(__s1[1]) = BYTE3(v21);
              BYTE4(__s1[1]) = BYTE4(v21);
              BYTE5(__s1[1]) = BYTE5(v21);
              if (!v25)
              {
LABEL_78:
                __s2 = v24;
                v105 = v23;
                v106 = BYTE2(v23);
                v107 = BYTE3(v23);
                v108 = BYTE4(v23);
                v109 = BYTE5(v23);
                if (memcmp(__s1, &__s2, BYTE6(v23)))
                {
                  goto LABEL_181;
                }

                break;
              }

              if (v25 == 1)
              {
                if (v34 < v24)
                {
                  goto LABEL_200;
                }

                sub_24AB460B0(v24, v23);
                v35 = sub_24AB5FD6C();
                if (v35)
                {
                  v36 = sub_24AB5FD8C();
                  if (__OFSUB__(v24, v36))
                  {
                    goto LABEL_210;
                  }

                  v35 += v24 - v36;
                }

                v37 = sub_24AB5FD7C();
                if (!v35)
                {
                  goto LABEL_216;
                }

                goto LABEL_85;
              }

              v55 = *(v24 + 16);
              v56 = *(v24 + 24);
              sub_24AB460B0(v24, v23);
              v44 = sub_24AB5FD6C();
              if (v44)
              {
                v57 = sub_24AB5FD8C();
                if (__OFSUB__(v55, v57))
                {
                  goto LABEL_208;
                }

                v44 += v55 - v57;
              }

              v30 = __OFSUB__(v56, v55);
              v46 = v56 - v55;
              if (v30)
              {
                goto LABEL_201;
              }

              v47 = sub_24AB5FD7C();
              if (!v44)
              {
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:

                __break(1u);
LABEL_224:
                JUMPOUT(0);
              }

              goto LABEL_94;
          }
        }

LABEL_99:
        v59 = v10[6];
        v60 = v10[7];
        v61 = v60 >> 62;
        v63 = *(v7 + 6);
        v62 = *(v7 + 7);
        v64 = v62 >> 62;
        if (v19)
        {
          v66 = 0;
          if (!v59 && v60 == 0xC000000000000000 && v62 >> 62 == 3)
          {
            v66 = 0;
            if (!v63 && v62 == 0xC000000000000000)
            {
              goto LABEL_177;
            }
          }
        }

        else
        {
          v66 = 0;
          switch(v61)
          {
            case 0uLL:
              v66 = BYTE6(v60);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v59), v59))
              {
                goto LABEL_189;
              }

              v66 = HIDWORD(v59) - v59;
              break;
            case 2uLL:
              v68 = *(v59 + 16);
              v67 = *(v59 + 24);
              v30 = __OFSUB__(v67, v68);
              v66 = v67 - v68;
              if (!v30)
              {
                break;
              }

              goto LABEL_190;
            case 3uLL:
              break;
            default:
              goto LABEL_224;
          }
        }

        switch(v64)
        {
          case 1uLL:
            LODWORD(v69) = HIDWORD(v63) - v63;
            if (__OFSUB__(HIDWORD(v63), v63))
            {
              goto LABEL_186;
            }

            v69 = v69;
LABEL_124:
            if (v66 != v69)
            {
              goto LABEL_181;
            }

            if (v66 < 1)
            {
              goto LABEL_177;
            }

            break;
          case 2uLL:
            v71 = *(v63 + 16);
            v70 = *(v63 + 24);
            v30 = __OFSUB__(v70, v71);
            v69 = v70 - v71;
            if (!v30)
            {
              goto LABEL_124;
            }

            goto LABEL_185;
          case 3uLL:
            if (v66)
            {
              goto LABEL_181;
            }

            goto LABEL_177;
          default:
            v69 = BYTE6(v62);
            goto LABEL_124;
        }

        v72 = v63 >> 32;
        switch(v61)
        {
          case 1:
            if (v59 >> 32 < v59)
            {
              goto LABEL_193;
            }

            v99 = v59;
            sub_24AB460B0(v63, v62);
            sub_24AB460B0(v63, v62);
            sub_24AB460B0(v63, v62);
            v77 = sub_24AB5FD6C();
            if (!v77)
            {
              goto LABEL_155;
            }

            v85 = sub_24AB5FD8C();
            if (__OFSUB__(v99, v85))
            {
              goto LABEL_198;
            }

            v77 += v99 - v85;
LABEL_155:
            sub_24AB5FD7C();
            v86 = v100;
            sub_24AB5106C(v77, v63, v62, __s1);
            sub_24AB4611C(v63, v62);
            sub_24AB4611C(v63, v62);
            sub_24AB4611C(v63, v62);
            v100 = v86;
            if (v86)
            {
              goto LABEL_223;
            }

            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_181;
            }

            break;
          case 2:
            v76 = *(v59 + 16);
            v99 = *(v59 + 24);
            sub_24AB460B0(v63, v62);
            sub_24AB460B0(v63, v62);
            sub_24AB460B0(v63, v62);
            v77 = sub_24AB5FD6C();
            if (!v77)
            {
              goto LABEL_138;
            }

            v78 = sub_24AB5FD8C();
            if (__OFSUB__(v76, v78))
            {
              goto LABEL_197;
            }

            v77 += v76 - v78;
LABEL_138:
            if (!__OFSUB__(v99, v76))
            {
              goto LABEL_155;
            }

            goto LABEL_194;
          case 3:
            memset(__s1, 0, 14);
            if (!v64)
            {
              goto LABEL_153;
            }

            if (v64 == 2)
            {
              v79 = *(v63 + 16);
              v80 = *(v63 + 24);
              sub_24AB460B0(v63, v62);
              v81 = sub_24AB5FD6C();
              if (v81)
              {
                v82 = sub_24AB5FD8C();
                if (__OFSUB__(v79, v82))
                {
                  goto LABEL_211;
                }

                v81 += v79 - v82;
              }

              v30 = __OFSUB__(v80, v79);
              v83 = v80 - v79;
              if (v30)
              {
                goto LABEL_206;
              }

              v84 = sub_24AB5FD7C();
              if (!v81)
              {
                goto LABEL_220;
              }

              goto LABEL_172;
            }

            if (v72 < v63)
            {
              goto LABEL_204;
            }

            sub_24AB460B0(v63, v62);
            v73 = sub_24AB5FD6C();
            if (v73)
            {
              v87 = sub_24AB5FD8C();
              if (__OFSUB__(v63, v87))
              {
                goto LABEL_214;
              }

              v73 += v63 - v87;
            }

            v75 = sub_24AB5FD7C();
            if (!v73)
            {
              goto LABEL_219;
            }

            goto LABEL_163;
          default:
            LOWORD(__s1[0]) = v10[6];
            BYTE2(__s1[0]) = BYTE2(v59);
            BYTE3(__s1[0]) = BYTE3(v59);
            BYTE4(__s1[0]) = BYTE4(v59);
            BYTE5(__s1[0]) = BYTE5(v59);
            BYTE6(__s1[0]) = BYTE6(v59);
            HIBYTE(__s1[0]) = HIBYTE(v59);
            LOWORD(__s1[1]) = v60;
            BYTE2(__s1[1]) = BYTE2(v60);
            BYTE3(__s1[1]) = BYTE3(v60);
            BYTE4(__s1[1]) = BYTE4(v60);
            BYTE5(__s1[1]) = BYTE5(v60);
            if (v64)
            {
              if (v64 == 1)
              {
                if (v72 < v63)
                {
                  goto LABEL_203;
                }

                sub_24AB460B0(v63, v62);
                v73 = sub_24AB5FD6C();
                if (v73)
                {
                  v74 = sub_24AB5FD8C();
                  if (__OFSUB__(v63, v74))
                  {
                    goto LABEL_213;
                  }

                  v73 += v63 - v74;
                }

                v75 = sub_24AB5FD7C();
                if (!v73)
                {
                  goto LABEL_222;
                }

LABEL_163:
                if (v75 >= v72 - v63)
                {
                  v88 = v72 - v63;
                }

                else
                {
                  v88 = v75;
                }

                v89 = v73;
              }

              else
              {
                v90 = *(v63 + 16);
                v91 = *(v63 + 24);
                sub_24AB460B0(v63, v62);
                v81 = sub_24AB5FD6C();
                if (v81)
                {
                  v92 = sub_24AB5FD8C();
                  if (__OFSUB__(v90, v92))
                  {
                    goto LABEL_212;
                  }

                  v81 += v90 - v92;
                }

                v30 = __OFSUB__(v91, v90);
                v83 = v91 - v90;
                if (v30)
                {
                  goto LABEL_205;
                }

                v84 = sub_24AB5FD7C();
                if (!v81)
                {
                  goto LABEL_221;
                }

LABEL_172:
                if (v84 >= v83)
                {
                  v88 = v83;
                }

                else
                {
                  v88 = v84;
                }

                v89 = v81;
              }

              v93 = memcmp(__s1, v89, v88);
              sub_24AB4611C(v63, v62);
              if (v93)
              {
                goto LABEL_181;
              }
            }

            else
            {
LABEL_153:
              __s2 = v63;
              v105 = v62;
              v106 = BYTE2(v62);
              v107 = BYTE3(v62);
              v108 = BYTE4(v62);
              v109 = BYTE5(v62);
              if (memcmp(__s1, &__s2, BYTE6(v62)))
              {
                goto LABEL_181;
              }
            }

            break;
        }

LABEL_177:
        v94 = *(v102 + 32);
        sub_24AB5FE4C();
        sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8]);
        v95 = sub_24AB6014C();
        sub_24AB4DD40(v7, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        sub_24AB4DD40(v10, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        if (v95)
        {
          v14 += v101;
          v13 = v103 + v101;
          if (--v11)
          {
            continue;
          }
        }

        goto LABEL_183;
      }
    }

    v95 = 1;
  }

  else
  {
LABEL_182:
    v95 = 0;
  }

LABEL_183:
  v96 = *MEMORY[0x277D85DE8];
  return v95 & 1;
}

uint64_t sub_24AB50C98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24AB50E38(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24AB6030C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24AB50E38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AB6031C();
  sub_24AB6018C();
  v6 = sub_24AB6032C();

  return sub_24AB50EF4(a1, a2, v6);
}

unint64_t sub_24AB50EB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24AB602BC();

  return sub_24AB50FA8(a1, v5);
}

unint64_t sub_24AB50EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24AB6030C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24AB50FA8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_24AB513E4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x24C227F80](v8, a1);
    sub_24AB46758(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_24AB5106C(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_24AB511D8(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_24AB511D8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_24AB5FD6C();
  v8 = result;
  if (result)
  {
    result = sub_24AB5FD8C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_24AB5FD7C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

unint64_t sub_24AB51290()
{
  result = qword_27EF92FF8;
  if (!qword_27EF92FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92FF8);
  }

  return result;
}

unint64_t sub_24AB512E4()
{
  result = qword_27EF93008;
  if (!qword_27EF93008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93008);
  }

  return result;
}

uint64_t sub_24AB51338()
{
  OUTLINED_FUNCTION_18();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  return v0;
}

unint64_t sub_24AB51390()
{
  result = qword_27EF93020;
  if (!qword_27EF93020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93020);
  }

  return result;
}

unint64_t sub_24AB51440()
{
  result = qword_27EF93028;
  if (!qword_27EF93028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93028);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_24AB51500()
{
  sub_24AB51644(319, &qword_27EF93048, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v1 <= 0x3F)
    {
      sub_24AB51644(319, &qword_27EF93050, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24AB51644(319, &qword_27EF93058, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AB51644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24AB516D0()
{
  sub_24AB51780();
  if (v0 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB51780()
{
  if (!qword_27EF93070)
  {
    v0 = sub_24AB6012C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF93070);
    }
  }
}

uint64_t sub_24AB51870()
{
  result = sub_24AB5FE4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AB51910()
{
  sub_24AB51644(319, &qword_27EF930A8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB519F4()
{
  sub_24AB51644(319, &qword_27EF930C0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24AB51AC4()
{
  result = qword_27EF930C8;
  if (!qword_27EF930C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930C8);
  }

  return result;
}

unint64_t sub_24AB51B1C()
{
  result = qword_27EF930D0;
  if (!qword_27EF930D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930D0);
  }

  return result;
}

unint64_t sub_24AB51B74()
{
  result = qword_27EF930D8;
  if (!qword_27EF930D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930D8);
  }

  return result;
}

unint64_t sub_24AB51BCC()
{
  result = qword_27EF930E0;
  if (!qword_27EF930E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930E0);
  }

  return result;
}

unint64_t sub_24AB51C24()
{
  result = qword_27EF930E8;
  if (!qword_27EF930E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930E8);
  }

  return result;
}

unint64_t sub_24AB51C7C()
{
  result = qword_27EF930F0;
  if (!qword_27EF930F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930F0);
  }

  return result;
}

unint64_t sub_24AB51CD4()
{
  result = qword_27EF930F8;
  if (!qword_27EF930F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930F8);
  }

  return result;
}

unint64_t sub_24AB51D2C()
{
  result = qword_27EF93100;
  if (!qword_27EF93100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93100);
  }

  return result;
}

unint64_t sub_24AB51D84()
{
  result = qword_27EF93108;
  if (!qword_27EF93108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93108);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_24AB5FE2C();
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_24AB6014C();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_24AB5FE4C();
}

uint64_t OUTLINED_FUNCTION_21()
{
  result = type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_24AB5FE4C();
}

uint64_t *OUTLINED_FUNCTION_30(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_24AB6013C();
}

void sub_24AB5244C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB5390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB53B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24AB53DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB53FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB54968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB559B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB5A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t convertBatchStatusToCAOutcome(uint64_t result)
{
  if (result >= 7)
  {
    return 999;
  }

  else
  {
    return result;
  }
}

void sub_24AB5C780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB5DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t convertUploadStatusToCAOutcome(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 999;
  }
}

unsigned __int8 *tryGetTextProperty(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
  }

  return v2;
}

id tryGetDateProperty(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_int64(a1, a2)}];
  }

  return v4;
}

id tryGetDataProperty(sqlite3 *a1, void *a2, sqlite3_stmt *a3, int a4)
{
  v7 = a2;
  v8 = sqlite3_column_blob(a3, a4);
  if (sqlite3_errcode(a1) == 7)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, "SQLite payload blob iteration OOM", v12, 2u);
    }
  }

  else
  {
    v9 = sqlite3_column_bytes(a3, a4);
    if (v8)
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v9];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

os_log_t flLogForObject(void *a1)
{
  ClassName = object_getClassName(a1);
  v2 = os_log_create("com.apple.feedbacklogger", ClassName);

  return v2;
}

os_log_t flAnnotatedLogForObject(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%s[%@]", object_getClassName(a1), v4];

  v6 = os_log_create("com.apple.feedbacklogger", [v5 cStringUsingEncoding:4]);

  return v6;
}

void FLSignpostLoggingInit()
{
  if (FLSignpostLoggingInit_onceToken != -1)
  {
    dispatch_once(&FLSignpostLoggingInit_onceToken, &__block_literal_global_640);
  }
}

uint64_t __FLSignpostLoggingInit_block_invoke()
{
  FL_LOG_SIGNPOSTS = os_log_create("com.apple.feedbacklogger", "Signposts");

  return MEMORY[0x2821F96F8]();
}

void sub_24AB5F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id FLGetBootSessionUUID()
{
  if (FLGetBootSessionUUID_onceToken != -1)
  {
    dispatch_once(&FLGetBootSessionUUID_onceToken, &__block_literal_global_724);
  }

  v1 = FLGetBootSessionUUID_bootSessionUUID;

  return v1;
}

void __FLGetBootSessionUUID_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    v0 = [MEMORY[0x277CCAD78] UUID];
    v1 = [v0 UUIDString];
    v2 = FLGetBootSessionUUID_bootSessionUUID;
    FLGetBootSessionUUID_bootSessionUUID = v1;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
    v0 = FLGetBootSessionUUID_bootSessionUUID;
    FLGetBootSessionUUID_bootSessionUUID = v3;
  }

  v4 = *MEMORY[0x277D85DE8];
}