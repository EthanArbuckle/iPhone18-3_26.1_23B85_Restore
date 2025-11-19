uint64_t sub_2485B9BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_11();
  v9(v8);
  return a2;
}

unint64_t sub_2485B9C14()
{
  result = qword_27EE9C838;
  if (!qword_27EE9C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9C838);
  }

  return result;
}

uint64_t sub_2485B9C68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2485B9CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2485B9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2485C8A50();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2485C8C20();
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2485B9E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2485C8A50();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_2485C8C20();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2485B9ED8()
{
  sub_2485C8A50();
  if (v0 <= 0x3F)
  {
    sub_2485B9FB8(319, &qword_27EE9C868);
    if (v1 <= 0x3F)
    {
      sub_2485B9FB8(319, qword_27EE9C870);
      if (v2 <= 0x3F)
      {
        sub_2485C8C20();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2485B9FB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2485C8EF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[30];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[16];
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_7_1()
{

  JUMPOUT(0x24C1D3660);
}

uint64_t OUTLINED_FUNCTION_8_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_10_1()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  v4 = *(v0 + 48) + *(v0 + 200);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21()
{
  result = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t sub_2485BA1C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2485C8980();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  v11 = objc_allocWithZone(MEMORY[0x277D37A40]);
  v12 = sub_2485BA9F0(v9, a2);
  v13 = type metadata accessor for OspreyRPCChannel();
  result = swift_allocObject();
  *(result + 16) = v12;
  a3[3] = v13;
  a3[4] = &off_285ACDE08;
  *a3 = result;
  return result;
}

void sub_2485BA2D8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for RPCConfig();
  v23 = v4;
  v24 = a2;
  v5 = *(a2 + *(v4 + 24));
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(a2 + *(v4 + 24));

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (v12 << 10) | (16 * v13);
      v15 = (*(v5 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v5 + 56) + v14);
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_2485C8D60();

      v22 = sub_2485C8D60();

      [a1 setValue:v21 forHTTPHeaderField:v22];

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  if (*(v24 + *(v23 + 32)) == 1)
  {
    [a1 setCompressionEnabled_];
  }

  if (*(v24 + *(v23 + 28)) == 1)
  {

    [a1 setEnableDeviceAuthentication_];
  }
}

uint64_t sub_2485BA4B8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2485BA55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(*v5 + 80);
  v12 = type metadata accessor for OspreyProducer();
  v13 = v5[2];
  v22 = a1;
  v23 = a2;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2485BA6F0;
  v21 = &block_descriptor;
  v14 = _Block_copy(&v18);

  v22 = a3;
  v23 = a4;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2485BA760;
  v21 = &block_descriptor_7;
  v15 = _Block_copy(&v18);

  v16 = [v13 callWithMessageReceived:v14 completion:v15];
  _Block_release(v15);
  _Block_release(v14);
  result = sub_2485BA7CC(v16);
  a5[3] = v12;
  a5[4] = &off_285ACDDE0;
  *a5 = result;
  return result;
}

uint64_t sub_2485BA6F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_2485BA760(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2485BA7CC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2485BA820()
{
  v0 = sub_2485BA800();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2485BA8D4(uint64_t a1, char a2)
{
  v4 = *v2;
  sub_2485AA9DC(a1, v8);
  v5 = *(v4 + 80);
  result = swift_dynamicCast();
  if (result)
  {
    [v2[2] produceMessage:v7 compressed:a2 & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2485BA9F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2485C8960();
  v7 = [v3 initWithURL:v6 configuration:a2];

  v8 = sub_2485C8980();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_2485BAAA4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v30 = a2;
  v31 = a1;
  v32 = a7;
  v12 = type metadata accessor for RPCConfig();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v29 = *(v7 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  sub_2485BE220(v30, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  sub_2485B3008(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v30 = objc_allocWithZone(MEMORY[0x277D37A48]);

  v19 = v29;

  v20 = sub_2485C8D60();

  aBlock[4] = sub_2485BE210;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2485BD82C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);
  v34[4] = sub_2485BE218;
  v34[5] = v16;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1107296256;
  v34[2] = sub_2485BD8EC;
  v34[3] = &block_descriptor_30;
  v22 = _Block_copy(v34);
  v33[4] = sub_2485BE3EC;
  v33[5] = v18;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_2485BDA68;
  v33[3] = &block_descriptor_33;
  v23 = _Block_copy(v33);

  v24 = [v30 initWithMethodName:v20 channel:v19 serializeRequest:v21 deserializeResponse:v22 defaultRequestBuilder:v23];
  _Block_release(v21);

  _Block_release(v23);
  _Block_release(v22);

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA68, &qword_2485CB8C8);
  result = swift_allocObject();
  *(result + 16) = v24;
  v27 = v32;
  v32[3] = v25;
  v27[4] = &off_285ACDDF8;
  *v27 = result;
  return result;
}

uint64_t sub_2485BAE28(uint64_t a1, uint64_t (*a2)())
{
  sub_2485AA9DC(a1, v6);
  type metadata accessor for MessageWrapper();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t sub_2485BAEBC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = type metadata accessor for MessageWrapper();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_2485BAEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v7;
  *(v8 + 216) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v9);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v11 + 64);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2485BAFD8, 0, 0);
}

uint64_t sub_2485BAFD8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v22 = *(v0 + 216);
  v5 = *(v0 + 152);
  v20 = *(v0 + 136);
  v21 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  sub_2485BB6E8(*(v0 + 112), (v0 + 16));
  v16 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v17 = OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
  sub_2485BDC88(v5, v2);
  v6 = *(v4 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v7);
  sub_2485BDC88(v5, v2);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v8);
  v9 = (v3 + v17);
  v10 = *v16;
  sub_2485BAAA4(v18, v9, sub_2485BDCFC, v7, sub_2485BDE48, v8, (v0 + 56));

  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *(v11 + 16) = v0 + 56;
  *(v11 + 24) = v5;
  *(v11 + 32) = v0 + 16;
  *(v11 + 40) = v20;
  *(v11 + 48) = v21;
  *(v11 + 56) = v22;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_2485BB218;
  v14 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD00000000000005FLL, 0x80000002485CC440, sub_2485BDED4, v11, v14);
}

uint64_t sub_2485BB218()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_2485BB3C0;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_2485BB334;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2485BB334()
{
  v1 = v0[23];
  v2 = v0[12];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_2485BB3C0()
{
  v2 = v0[23];
  v1 = v0[24];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t sub_2485BB43C()
{
  sub_2485BDC2C(v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory));
  sub_2485B9C68(v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap + 8, &qword_27EE9CA30, &qword_2485CB878);
  return v0;
}

uint64_t sub_2485BB498()
{
  sub_2485BB43C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AttestedRPCService()
{
  result = qword_27EE9C990;
  if (!qword_27EE9C990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2485BB544()
{
  result = type metadata accessor for RPCConfig();
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

uint64_t sub_2485BB5E8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C9A0, &qword_2485CB808);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2485BB618(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  result = sub_2485C8AC0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2485BB6E8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap));
  sub_2485BB75C((v5 + 8), a1, v2, a2);

  os_unfair_lock_unlock(v5);
}

void sub_2485BB75C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v78 = a4;
  v8 = sub_2485C8980();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v63[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v63[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v63[-v23];
  v25 = *a1;
  v72 = a2;
  sub_2485BBDF4(a2, v25, &v75);
  if (v76)
  {
    sub_2485A9F84(&v75, v77);
    v26 = a3 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
    v27 = type metadata accessor for RPCConfig();
    sub_2485BDC88(v26 + *(v27 + 36), v22);
    v28 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
    {
      sub_2485B9C68(v22, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v71 = v4;
      v36 = v73;
      v37 = v74;
      (*(v73 + 16))(v17, v72, v74);
      v38 = sub_2485C8CE0();
      v39 = sub_2485C8EC0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v70 = v40;
        v72 = swift_slowAlloc();
        *&v75 = v72;
        *v40 = 136315138;
        sub_2485BE8EC(&qword_27EE9CA78);
        v41 = sub_2485C9020();
        v43 = v42;
        (*(v36 + 8))(v17, v37);
        v44 = sub_2485B936C(v41, v43, &v75);

        v45 = v70;
        *(v70 + 4) = v44;
        v46 = v45;
        _os_log_impl(&dword_2485A5000, v38, v39, "Reusing existing channel for URL: %s", v45, 0xCu);
        v47 = v72;
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x24C1D3660](v47, -1, -1);
        MEMORY[0x24C1D3660](v46, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v17, v37);
      }

      (*(*(v28 - 8) + 8))(v22, v28);
    }

    sub_2485A9F84(v77, v78);
  }

  else
  {
    v69 = v12;
    v70 = a1;
    v71 = v4;
    sub_2485B9C68(&v75, &qword_27EE9CA70, &qword_2485CB8D0);
    v29 = a3 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
    v30 = type metadata accessor for RPCConfig();
    sub_2485BDC88(v29 + *(v30 + 36), v24);
    v31 = sub_2485C8D00();
    v32 = a3;
    if (__swift_getEnumTagSinglePayload(v24, 1, v31) == 1)
    {
      sub_2485B9C68(v24, &qword_27EE9C6C0, &unk_2485CB130);
      v33 = v69;
      v35 = v72;
      v34 = v73;
    }

    else
    {
      v35 = v72;
      v34 = v73;
      v48 = v74;
      (*(v73 + 16))(v15, v72, v74);
      v49 = sub_2485C8CE0();
      v50 = sub_2485C8EC0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v65 = v32;
        v52 = v51;
        v67 = v51;
        v68 = swift_slowAlloc();
        *&v77[0] = v68;
        *v52 = 136315138;
        sub_2485BE8EC(&qword_27EE9CA78);
        v66 = v49;
        v53 = sub_2485C9020();
        v64 = v50;
        v55 = v54;
        (*(v34 + 8))(v15, v48);
        v56 = sub_2485B936C(v53, v55, v77);
        v32 = v65;

        v58 = v66;
        v57 = v67;
        *(v67 + 4) = v56;
        v59 = v57;
        _os_log_impl(&dword_2485A5000, v58, v64, "Creating new channel for URL: %s", v57, 0xCu);
        v60 = v68;
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x24C1D3660](v60, -1, -1);
        MEMORY[0x24C1D3660](v59, -1, -1);
      }

      else
      {

        (*(v34 + 8))(v15, v48);
      }

      (*(*(v31 - 8) + 8))(v24, v31);
      v33 = v69;
    }

    v61 = [objc_opt_self() ephemeralSessionConfiguration];
    [v61 setTLSMinimumSupportedProtocolVersion_];
    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory), *(v32 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory + 24));
    v62 = v78;
    sub_2485BA1C0(v35, v61, v78);
    (*(v34 + 16))(v33, v35, v74);
    sub_2485BDEE8(v62, v77);
    sub_2485BBE4C(v77, v33);
  }
}

double sub_2485BBDF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2485C75E4(a1), (v6 & 1) != 0))
  {
    sub_2485BDEE8(*(a2 + 56) + 40 * v5, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2485BBE4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2485A9F84(a1, v14);
    v4 = v15;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v6 = *(*(v4 - 8) + 64);
    MEMORY[0x28223BE20](v5);
    v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    sub_2485BE7C4(*v8, a2, v2);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v10 = sub_2485C8980();
    return (*(*(v10 - 8) + 8))(a2, v10);
  }

  else
  {
    sub_2485B9C68(a1, &qword_27EE9CA70, &qword_2485CB8D0);
    sub_2485BDAD0(a2, v14);
    v12 = sub_2485C8980();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2485B9C68(v14, &qword_27EE9CA70, &qword_2485CB8D0);
  }
}

uint64_t sub_2485BBFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = a1 + OBJC_IVAR____TtC13DataCollector14MessageWrapper_message;
  v9 = *(a1 + OBJC_IVAR____TtC13DataCollector14MessageWrapper_message);
  v10 = *(v8 + 8);
  sub_2485BDC88(a2, v7);
  v11 = sub_2485C8D00();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
  sub_2485A9304(v9, v10);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485B9C68(v7, &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    sub_2485A9304(v9, v10);
    v13 = sub_2485C8CE0();
    v14 = sub_2485C8EC0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = v15;
      v17 = 0;
      switch(v10 >> 62)
      {
        case 1uLL:
          LODWORD(v17) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            __break(1u);
LABEL_14:
            __break(1u);
            JUMPOUT(0x2485BC220);
          }

          v17 = v17;
LABEL_10:
          *(v15 + 4) = v17;
          sub_2485ABB18(v9, v10);
          _os_log_impl(&dword_2485A5000, v13, v14, "Serialized request to %ld bytes", v16, 0xCu);
          MEMORY[0x24C1D3660](v16, -1, -1);
          break;
        case 2uLL:
          v19 = *(v9 + 16);
          v18 = *(v9 + 24);
          v20 = __OFSUB__(v18, v19);
          v17 = v18 - v19;
          if (!v20)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        case 3uLL:
          goto LABEL_10;
        default:
          v17 = BYTE6(v10);
          goto LABEL_10;
      }
    }

    else
    {
      sub_2485ABB18(v9, v10);
    }

    (*(*(v11 - 8) + 8))(v7, v11);
  }

  return v9;
}

id sub_2485BC230(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MessageWrapper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
  *v12 = a1;
  v12[1] = a2;
  sub_2485A9304(a1, a2);
  v19.receiver = v11;
  v19.super_class = v10;
  v13 = objc_msgSendSuper2(&v19, sel_init);
  sub_2485BDC88(a3, v9);
  v14 = sub_2485C8D00();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    sub_2485B9C68(v9, &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    v15 = sub_2485C8CE0();
    v16 = sub_2485C8EC0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2485A5000, v15, v16, "Deserialize response complete", v17, 2u);
      MEMORY[0x24C1D3660](v17, -1, -1);
    }

    (*(*(v14 - 8) + 8))(v9, v14);
  }

  return v13;
}

uint64_t sub_2485BC3EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7)
{
  v53 = a7;
  v52 = a6;
  v51 = a5;
  v46 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  (*(v21 + 16))(&v46 - v19, a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA40, &qword_2485CB898);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_2485BD124(v20);
  v49 = a2[3];
  v47 = a2[4];
  v48 = __swift_project_boxed_opaque_existential_1(a2, v49);
  sub_2485BDC88(a3, v16);
  sub_2485BDEE8(a4, &v58);
  sub_2485BDEE8(a2, v57);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_2485BE174(v16, v30 + v26, &qword_27EE9C6C0, &unk_2485CB130);
  *(v30 + v27) = v25;
  sub_2485A9F84(&v58, v30 + v28);
  sub_2485A9F84(v57, v30 + v29);
  v31 = v50;
  sub_2485BDC88(v46, v50);
  sub_2485BDEE8(a4, v56);
  sub_2485BDEE8(a2, v55);
  v32 = swift_allocObject();
  sub_2485BE174(v31, v32 + v26, &qword_27EE9C6C0, &unk_2485CB130);
  *(v32 + v27) = v25;
  sub_2485A9F84(v56, v32 + v28);
  sub_2485A9F84(v55, v32 + v29);
  v33 = v47;
  v34 = *(v47 + 8);
  swift_retain_n();
  v34(v60, sub_2485BDF4C, v30, sub_2485BE0E8, v32, v49, v33);

  v35 = v61;
  v36 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v37 = type metadata accessor for MessageWrapper();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
  v40 = v51;
  v41 = v52;
  *v39 = v51;
  v39[1] = v41;
  sub_2485A9304(v40, v41);
  v54.receiver = v38;
  v54.super_class = v37;
  v42 = objc_msgSendSuper2(&v54, sel_init);
  v59 = v37;
  *&v58 = v42;
  (*(v36 + 8))(&v58, v53, v35, v36);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  v43 = v61;
  v44 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v44 + 16))(v43, v44);

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

void sub_2485BC870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v41[-v15];
  sub_2485AA9DC(a1, v41);
  type metadata accessor for MessageWrapper();
  if (swift_dynamicCast())
  {
    v17 = v43;
    v18 = &v43[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
    v19 = *&v43[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
    v20 = *&v43[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message + 8];
    sub_2485A9304(v19, v20);
    sub_2485BCD30(v19, v20);
    sub_2485ABB18(v19, v20);
    sub_2485BDC88(a2, v14);
    v21 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
    {

      sub_2485B9C68(v14, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v23 = v17;
      v24 = sub_2485C8CE0();
      v25 = sub_2485C8EB0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        v27 = *v18;
        v28 = *(v18 + 1);
        v29 = v26;
        v30 = 0;
        switch(v28 >> 62)
        {
          case 1uLL:
            LODWORD(v30) = HIDWORD(v27) - v27;
            if (__OFSUB__(HIDWORD(v27), v27))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              JUMPOUT(0x2485BCC9CLL);
            }

            v30 = v30;
LABEL_17:
            *(v26 + 4) = v30;

            _os_log_impl(&dword_2485A5000, v24, v25, "Response successfully recieved - %ld bytes", v29, 0xCu);
            MEMORY[0x24C1D3660](v29, -1, -1);
            break;
          case 2uLL:
            v39 = v27 + 16;
            v38 = *(v27 + 16);
            v37 = *(v39 + 8);
            v40 = __OFSUB__(v37, v38);
            v30 = v37 - v38;
            if (!v40)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          case 3uLL:
            goto LABEL_17;
          default:
            v30 = BYTE6(v28);
            goto LABEL_17;
        }
      }

      else
      {

        v24 = v23;
      }

      (*(*(v21 - 8) + 8))(v14, v21);
    }

    sub_2485BDEE8(a4, v41);
    sub_2485BDEE8(a5, v42);
    v42[5] = a3;

    sub_2485B9C68(v41, &qword_27EE9CA48, &unk_2485CB8A0);
  }

  else
  {
    sub_2485BDC88(a2, v16);
    v22 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v16, 1, v22) == 1)
    {
      sub_2485B9C68(v16, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v31 = sub_2485C8CE0();
      v32 = sub_2485C8ED0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2485A5000, v31, v32, "Reponse failed due to empty message or incorrect type", v33, 2u);
        MEMORY[0x24C1D3660](v33, -1, -1);
      }

      (*(*(v22 - 8) + 8))(v16, v22);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_2485B9C14();
    v35 = swift_allocError();
    *v36 = DynamicType;
    sub_2485BCCAC(v35);
  }
}

void sub_2485BCCAC(void *a1)
{
  v3 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  sub_2485BD310(v3 + *(v4 + 28), a1);
  os_unfair_lock_unlock(v3);
}

void sub_2485BCD30(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + *(*v2 + 88));
  os_unfair_lock_lock(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  sub_2485BD468(v5 + *(v6 + 28), a1, a2);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_2485BCDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v16 = &v32[-v15 - 8];
  if (a1)
  {
    sub_2485BDC88(a2, v14);
    v17 = sub_2485C8D00();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v17);
    v19 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_2485B9C68(v14, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v21 = sub_2485C8CE0();
      v22 = sub_2485C8ED0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = a1;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_2485A5000, v21, v22, "Response failed with error: %@", v23, 0xCu);
        sub_2485B9C68(v24, &qword_27EE9C848, &qword_2485CB668);
        MEMORY[0x24C1D3660](v24, -1, -1);
        MEMORY[0x24C1D3660](v23, -1, -1);
      }

      (*(*(v17 - 8) + 8))(v14, v17);
    }

    sub_2485BCCAC(a1);
  }

  else
  {
    sub_2485BDC88(a2, &v32[-v15 - 8]);
    v20 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
    {
      sub_2485B9C68(v16, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v27 = sub_2485C8CE0();
      v28 = sub_2485C8EB0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2485A5000, v27, v28, "Response with zero bytes received", v29, 2u);
        MEMORY[0x24C1D3660](v29, -1, -1);
      }

      (*(*(v20 - 8) + 8))(v16, v20);
    }

    sub_2485BCD30(0, 0xC000000000000000);
  }

  sub_2485BDEE8(a4, v32);
  sub_2485BDEE8(a5, v33);
  v33[5] = a3;

  return sub_2485B9C68(v32, &qword_27EE9CA48, &unk_2485CB8A0);
}

uint64_t sub_2485BD124(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA58, &qword_2485CB8B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v17 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, a1, v12);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  *v11 = 0;
  v14 = *(v8 + 36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA60, &qword_2485CB8C0);
  bzero(v11 + v14, *(*(v15 - 8) + 64));
  sub_2485BE174(v6, v11 + v14, &qword_27EE9CA58, &qword_2485CB8B8);
  (*(v13 + 8))(a1, v12);
  memcpy((v1 + *(*v1 + 88)), v11, v9);
  return v1;
}

uint64_t sub_2485BD310(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(v5 + 16))(v8, a1, v4);
    v11[1] = a2;
    v9 = a2;
    sub_2485C8E20();
    (*(v5 + 8))(v8, v4);
  }

  sub_2485B9C68(a1, &qword_27EE9CA58, &qword_2485CB8B8);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_2485BD468(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v6))
  {
    (*(v7 + 16))(v10, a1, v6);
    v12[0] = a2;
    v12[1] = a3;
    sub_2485A9304(a2, a3);
    sub_2485C8E30();
    (*(v7 + 8))(v10, v6);
  }

  sub_2485B9C68(a1, &qword_27EE9CA58, &qword_2485CB8B8);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
}

uint64_t sub_2485BD5D0()
{
  v1 = v0;
  v2 = v0 + *(*v0 + 88);
  v3 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  v4 = *(sub_2485C8AC0() + 28);
  v5 = sub_2485C8AD0();
  sub_2485BDC1C(v5);
  return v1;
}

uint64_t sub_2485BD68C()
{
  v0 = sub_2485BD5D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2485BD6F8(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  return sub_2485C8AC0();
}

id sub_2485BD7BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2485BD82C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;

  swift_unknownObjectRetain();
  v5 = v4(v10);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2485C8990();
    sub_2485BE468(v5, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v10);

  return v8;
}

id sub_2485BD8EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_2485C89B0();
  v8 = v7;

  v4(v17, v6, v8);
  sub_2485ABB18(v6, v8);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_2485C9030();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2485BDA68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

double sub_2485BDAD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2485C75E4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA80, &qword_2485CB8D8);
    sub_2485C8FA0();
    v11 = *(v14 + 48);
    v12 = sub_2485C8980();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    sub_2485A9F84((*(v14 + 56) + 40 * v8), a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C8, &qword_2485CB140);
    sub_2485BE8EC(&qword_27EE9C6D0);
    sub_2485C8FB0();
    *v3 = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2485BDC2C(uint64_t a1)
{
  v2 = type metadata accessor for RPCConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485BDC88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BDCFC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130) - 8) + 80);
  v1 = OUTLINED_FUNCTION_3_4();

  return sub_2485BBFF8(v1, v2);
}

uint64_t objectdestroyTm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2485C8D00();
  if (!OUTLINED_FUNCTION_5_4(v8))
  {
    OUTLINED_FUNCTION_2_5(v0);
    (*(v9 + 8))(v1 + v5, v0);
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

id sub_2485BDE48(uint64_t a1, unint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2485BC230(a1, a2, v6);
}

uint64_t sub_2485BDEE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_2_5(v3);
  (*v4)(a2);
  return a2;
}

void sub_2485BDF4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_1_6(v5);

  sub_2485BC870(v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_14Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2485C8D00();
  if (!OUTLINED_FUNCTION_5_4(v8))
  {
    OUTLINED_FUNCTION_2_5(v0);
    (*(v9 + 8))(v1 + v5, v0);
  }

  v10 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + v10);

  __swift_destroy_boxed_opaque_existential_1((v1 + v11));
  __swift_destroy_boxed_opaque_existential_1((v1 + v12));

  return MEMORY[0x2821FE8E8](v1, v12 + 40, v4 | 7);
}

uint64_t sub_2485BE0E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_1_6(v5);

  return sub_2485BCDBC(v7, v8, v9, v10, v11);
}

uint64_t sub_2485BE174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_5(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2485BE1D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2485BE220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPCConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BE284()
{
  v1 = type metadata accessor for RPCConfig();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_2485C8980();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    OUTLINED_FUNCTION_2_5(v6);
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = *(v5 + v1[6]);

  v10 = v1[9];
  v11 = sub_2485C8D00();
  if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, v11))
  {
    OUTLINED_FUNCTION_2_5(v11);
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2485BE3EC()
{
  v0 = *(*(type metadata accessor for RPCConfig() - 8) + 80);
  v1 = OUTLINED_FUNCTION_3_4();

  sub_2485BA2D8(v1, v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2485BE468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2485ABB18(a1, a2);
  }

  return a1;
}

uint64_t sub_2485BE47C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = type metadata accessor for OspreyRPCChannel();
  v16 = &off_285ACDE08;
  *&v14 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2485C8980();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2485A9F84(&v14, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2485BE558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2485C8980();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for OspreyRPCChannel();
  v32 = &off_285ACDE08;
  *&v30 = a1;
  v12 = *a4;
  v13 = sub_2485C75E4(a2);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA80, &qword_2485CB8D8);
  if ((sub_2485C8FA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *a4;
  v18 = sub_2485C75E4(a2);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_2485C9070();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *a4;
  if (v16)
  {
    v21 = (v20[7] + 40 * v15);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return sub_2485A9F84(&v30, v21);
  }

  else
  {
    (*(v8 + 16))(v11, a2, v7);
    v23 = v31;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
    v25 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_2485BE47C(v15, v11, *v27, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v30);
  }
}

uint64_t sub_2485BE7C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for OspreyRPCChannel();
  v16[3] = v6;
  v16[4] = &off_285ACDE08;
  v16[0] = a1;
  v7 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v10 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  sub_2485BE558(*v12, a2, isUniquelyReferenced_nonNull_native, &v15);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *a3 = v15;
  return result;
}

uint64_t sub_2485BE8EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2485C8980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return sub_2485BE174(v4, a1 + v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_2485BE9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2485BEAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for RPCConfig()
{
  result = qword_27EE9CA88;
  if (!qword_27EE9CA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2485BEC1C()
{
  sub_2485BED64(319, &qword_27EE9CA98, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_2485BED08();
    if (v1 <= 0x3F)
    {
      sub_2485BED64(319, &qword_27EE9CAA8, MEMORY[0x277D85B28]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2485BED08()
{
  if (!qword_27EE9CAA0)
  {
    v0 = sub_2485C8D20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAA0);
    }
  }
}

void sub_2485BED64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2485C8EF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPCError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RPCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_2485BEE6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_2485C8A20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BasicUploadMetrics();
  sub_2485BF578(v0 + *(v10 + 52), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2485C8A10();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_2485BF5E8(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  v11 = *(v10 + 48);
  sub_2485C89F0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2485BF018(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  if (!*(v1 + 56))
  {
    *(v1 + 56) = 2;
  }

  v10 = type metadata accessor for BasicUploadMetrics();
  v11 = *(v10 + 60);
  v12 = *(v1 + v11);
  *(v1 + v11) = a1;
  v13 = a1;

  if (!*(v1 + 56))
  {
    *(v1 + 56) = 3;
  }

  v14 = *(v10 + 52);
  sub_2485BF578(v1 + v14, v9);
  v15 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v15);
  result = sub_2485BF5E8(v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_2485BF650(v7, v1 + v14);
  }

  return result;
}

uint64_t sub_2485BF16C(uint64_t result)
{
  v2 = v1[3];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v1[3] = v4;
  v6 = *(result + 24);
  v7 = *(result + 32);
  OUTLINED_FUNCTION_1_7(result);
  v9 = *(v8 + 24);
  v10 = OUTLINED_FUNCTION_0_11();
  result = v11(v10);
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v1[4];
  v3 = __CFADD__(v12, result);
  v13 = v12 + result;
  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v1[4] = v13;
  v14 = v5[3];
  v15 = v5[4];
  OUTLINED_FUNCTION_1_7(v5);
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_0_11();
  result = v19(v18);
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v1[5];
  v3 = __CFADD__(v20, result);
  v21 = v20 + result;
  if (!v3)
  {
    v1[5] = v21;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_2485BF228(unint64_t result)
{
  if (*v1 == -1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = result;
  ++*v1;
  v3 = *(result + 24);
  v4 = *(result + 32);
  OUTLINED_FUNCTION_1_7(result);
  v6 = *(v5 + 24);
  v7 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v8(v7));
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v1[1];
  v10 = __CFADD__(v9, result);
  v11 = (v9 + result);
  if (v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v1[1] = v11;
  v12 = v2[3];
  v13 = v2[4];
  OUTLINED_FUNCTION_1_7(v2);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v17(v16));
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v1[2];
  v10 = __CFADD__(v18, result);
  v19 = (v18 + result);
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v1[2] = v19;
  Current = CFAbsoluteTimeGetCurrent();
  v21 = v2[3];
  v22 = v2[4];
  OUTLINED_FUNCTION_1_7(v2);
  v24 = *(v23 + 32);
  v25 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v26(v25));
  v27 = 0.0;
  if ((v28 & 1) == 0 && Current >= *&result)
  {
    v27 = (Current - *&result) / 3600.0;
  }

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v27 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v27 < 1.84467441e19)
  {
    v29 = v27;
    v30 = *(type metadata accessor for BasicUploadMetrics() + 56);
    sub_2485BF4BC(sub_2485B590C);
    v31 = *(*(v1 + v30) + 16);
    *&result = COERCE_DOUBLE(sub_2485BF530(v31, sub_2485B590C));
    v32 = *(v1 + v30);
    *(v32 + 16) = v31 + 1;
    *(v32 + 8 * v31 + 32) = v29;
    *(v1 + v30) = v32;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BasicUploadMetrics()
{
  result = qword_27EE9CAB0;
  if (!qword_27EE9CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2485BF468(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  v3 = v2;
  return v2;
}

uint64_t sub_2485BF4BC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2485BF530(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2485BF578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BF5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485BF650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BF6D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2485C8A20();
  v7 = OUTLINED_FUNCTION_2_6(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[12];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v12 = OUTLINED_FUNCTION_2_6(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[13];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[14]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2485BF7E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2485C8A20();
  v9 = OUTLINED_FUNCTION_2_6(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[12];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
    result = OUTLINED_FUNCTION_2_6(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[14]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[13];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

void sub_2485BF8D4()
{
  sub_2485C8A20();
  if (v0 <= 0x3F)
  {
    sub_2485BF9B0();
    if (v1 <= 0x3F)
    {
      sub_2485BFA08();
      if (v2 <= 0x3F)
      {
        sub_2485BFA58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2485BF9B0()
{
  if (!qword_27EE9CAC0)
  {
    sub_2485C8A20();
    v0 = sub_2485C8EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAC0);
    }
  }
}

void sub_2485BFA08()
{
  if (!qword_27EE9CAC8)
  {
    v0 = sub_2485C8E00();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAC8);
    }
  }
}

void sub_2485BFA58()
{
  if (!qword_27EE9CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
    v0 = sub_2485C8EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAD0);
    }
  }
}

uint64_t sub_2485BFAF4(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_6_3(sub_2485BFB10, v1);
}

uint64_t sub_2485BFB10()
{
  v1 = v0[23];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = *(v0[23] + 120);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v0[25] = v5;
    (*(v5 + 56))(ObjectType, v5);
    v6 = v0[11];
    v7 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
    (*(v5 + 16))(ObjectType, v5);
    v8 = *(v7 + 8);
    v15 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_2485BFD10;

    return (v15)(v0 + 18, v0 + 2, v6, v7);
  }

  else
  {
    sub_2485B2100();
    v12 = OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_8_1(v12, v13);
    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_2485BFD10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *(v4 + 184);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  sub_2485B0C20(v2 + 16);

  return MEMORY[0x2822009F8](sub_2485BFE14, v6, 0);
}

uint64_t sub_2485BFE14()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 216) = *(v0 + 144);
  *(v0 + 232) = *(v0 + 160);
  *(v0 + 57) = *(v0 + 168);
  *(v0 + 58) = *(v0 + 169);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_2485BFED0;
  v2 = *(v0 + 192);

  return sub_2485B1900(v0 + 104);
}

uint64_t sub_2485BFED0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v5 = *(v2 + 240);
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_2485C00F4;
  }

  else
  {
    v7 = sub_2485BFFF8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2485BFFF8()
{
  v16 = v0;
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 232);
  v11 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), v7);
  v12 = v11;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  (*(v8 + 16))(v4, v5, &v12, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_2485C00F4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_2485C0150(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_6_3(sub_2485C0170, v2);
}

uint64_t sub_2485C0170()
{
  v21 = v0;
  v1 = v0[14];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
    sub_2485B2100();
    v12 = OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_8_1(v12, v13);
LABEL_12:
    OUTLINED_FUNCTION_3_0();

    return v18();
  }

  v3 = Strong;
  v4 = *(v0[14] + 120);
  ObjectType = swift_getObjectType();
  (*(*(v4 + 8) + 24))(v20, ObjectType);
  if (LOBYTE(v20[0]) == 1)
  {
    sub_2485AC61C(v3 + 320, (v0 + 7));
    v6 = v0[10];
    v7 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if ((v8 & 1) == 0)
    {
      sub_2485B2100();
      OUTLINED_FUNCTION_10_2();
      v11 = 3;
      goto LABEL_11;
    }
  }

  v9 = v0[14];
  if (*(v9 + 128))
  {
    sub_2485B2100();
    OUTLINED_FUNCTION_10_2();
    v11 = 4;
LABEL_11:
    *v10 = v11;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  *(v9 + 128) = 1;
  OUTLINED_FUNCTION_4_5(dword_2485CBA90);
  v19 = v14;
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_2485C0378;
  v16 = v0[13];

  return v19(v0 + 2, v16);
}

uint64_t sub_2485C0378()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[14];

    return MEMORY[0x2822009F8](sub_2485C0684, v9, 0);
  }

  else
  {
    v10 = v3[5];
    v11 = v3[6];
    v12 = __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
    OUTLINED_FUNCTION_4_5(&unk_2485CB148);
    v17 = v13;
    v14 = swift_task_alloc();
    v3[18] = v14;
    *v14 = v7;
    v14[1] = sub_2485C0514;
    v15 = v3[15];

    return v17(v12, v15, v10, v11);
  }
}

uint64_t sub_2485C0514()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 144);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2485C0614, v3, 0);
}

uint64_t sub_2485C0614()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  swift_unknownObjectRelease();
  sub_2485A9F84((v0 + 16), v3);
  *(v2 + 128) = 0;
  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485C0684()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[14];
  v1 = v0[15];
  swift_unknownObjectRelease();
  *(v2 + 128) = 0;
  v3 = v0[17];
  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485C06E4(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = type metadata accessor for BasicUploadMetrics();
  v3[40] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[42] = v6;
  *v6 = v3;
  v6[1] = sub_2485C07B0;

  return sub_2485B1900((v3 + 22));
}

uint64_t sub_2485C07B0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 344) = v0;

  if (v0)
  {
    v9 = sub_2485C0B14;
  }

  else
  {
    v9 = sub_2485C08B0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2485C08B0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = *(v4 + 184);
  sub_2485B12E0(v4 + 240, (v0 + 27), &qword_27EE9C678, &unk_2485CAF80);
  sub_2485B12E0(v4 + 280, (v0 + 32), &qword_27EE9C680, &qword_2485CBAA0);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 41) = 0u;
  v6 = v1 + v2[12];
  sub_2485C8A10();
  v7 = v2[13];
  v8 = sub_2485C8A20();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + v2[14]) = MEMORY[0x277D84F90];
  *(v1 + v2[15]) = 0;
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  result = (*(v10 + 24))(v9, v10);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[38];
    *(v0[41] + 48) = result;
    v14 = v3[3];
    v13 = v3[4];
    v15 = __swift_project_boxed_opaque_existential_1(v12, v14);
    if ((v13[3])(v14, v13) < 1)
    {
      OUTLINED_FUNCTION_9_2();
      v13[3] = v14;
      v13[4] = &off_285ACE180;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
      sub_2485C131C(v15, boxed_opaque_existential_1);
      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      OUTLINED_FUNCTION_5_5();
      v0[11] = v0[31];
      sub_2485B1014((v0 + 2), &qword_27EE9CAD8, &qword_2485CBAA8);

      OUTLINED_FUNCTION_3_0();

      return v22();
    }

    else
    {
      if (v5 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v5;
      }

      OUTLINED_FUNCTION_4_5(&unk_2485CBB20);
      v23 = v17;
      v18 = swift_task_alloc();
      v0[44] = v18;
      *v18 = v0;
      v18[1] = sub_2485C0B70;
      v19 = v0[38];
      v20 = v0[39];

      return v23(v19, v0 + 22, v16);
    }
  }

  return result;
}

uint64_t sub_2485C0B14()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_2485C0B70(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = v3[44];
  v7 = *v1;
  *v5 = *v1;
  v4[45] = a1;

  OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
  v14 = v8;
  v9 = swift_task_alloc();
  v4[46] = v9;
  *v9 = v7;
  v9[1] = sub_2485C0CF0;
  v10 = v3[41];
  v11 = v3[39];
  v12 = v3[38];

  return v14(a1, v12, v10);
}

uint64_t sub_2485C0CF0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 376) = v0;

  if (v0)
  {
    v9 = sub_2485C0EB0;
  }

  else
  {
    v9 = sub_2485C0DF0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2485C0DF0()
{
  sub_2485C1380(*(v3 + 360));
  OUTLINED_FUNCTION_9_2();
  v0[3] = v2;
  v0[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  sub_2485C131C(v1, boxed_opaque_existential_1);
  __swift_destroy_boxed_opaque_existential_1((v3 + 176));
  OUTLINED_FUNCTION_5_5();
  *(v3 + 88) = *(v3 + 248);
  sub_2485B1014(v3 + 16, &qword_27EE9CAD8, &qword_2485CBAA8);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_2485C0EB0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 328);
  sub_2485C1380(*(v0 + 360));
  sub_2485C0FD0(v1, v0 + 256);
  sub_2485C1390(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v2 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v2;
  *(v0 + 128) = *(v0 + 288);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  sub_2485B1014(v0 + 96, &qword_27EE9CAD8, &qword_2485CBAA8);
  v3 = *(v0 + 376);
  v4 = *(v0 + 328);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_2485C0F74()
{
  sub_2485C1450(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2485C0FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 3;
  }

  v11 = type metadata accessor for BasicUploadMetrics();
  v12 = *(v11 + 52);
  sub_2485B12E0(a1 + v12, v10, qword_27EE9C508, &unk_2485CB9D0);
  v13 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v13);
  sub_2485B1014(v10, qword_27EE9C508, &unk_2485CB9D0);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    sub_2485BF650(v8, a1 + v12);
  }

  sub_2485B12E0(a2, v20, &qword_27EE9C680, &qword_2485CBAA0);
  v15 = v21;
  if (!v21)
  {
    return sub_2485B1014(v20, &qword_27EE9C680, &qword_2485CBAA0);
  }

  v16 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v11;
  v19[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_2485C13EC(a1, boxed_opaque_existential_1);
  (*(v16 + 24))(v19, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2485C11D4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2485B6248;

  return sub_2485C0150(a1, a2);
}

uint64_t sub_2485C1280(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485B35C0;

  return sub_2485BFAF4(a1);
}

uint64_t sub_2485C131C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicUploadMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2485C1380(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2485C1390(uint64_t a1)
{
  v2 = type metadata accessor for BasicUploadMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485C13EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicUploadMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

__n128 OUTLINED_FUNCTION_5_5()
{
  v1 = *(v0 + 272);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 56) = *(v0 + 216);
  result = *(v0 + 232);
  *(v0 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, void *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[41];

  return sub_2485C0FD0(v4, (v0 + 32));
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_allocError();
}

BOOL sub_2485C150C(unint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a4 == a3)
  {
    return a2 >= a1;
  }

  else
  {
    return a4 >= a3;
  }
}

uint64_t sub_2485C1524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_2485C153C()
{
  OUTLINED_FUNCTION_9();
  sub_2485B12E0(*(v0 + 240) + 200, v0 + 56, &qword_27EE9C6B0, &qword_2485CB118);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 216);
    sub_2485A9F84((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    LOBYTE(v1) = (*(v3 + 8))(v1, v2, v3);
    result = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v1 & 1) == 0)
    {
LABEL_20:
      OUTLINED_FUNCTION_15();

      return v35();
    }
  }

  else
  {
    result = sub_2485B1014(v0 + 56, &qword_27EE9C6B0, &qword_2485CB118);
  }

  v5 = *(v0 + 232);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  if (v5)
  {
    v6 = *(v0 + 240);
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, v6);
    if (*(v0 + 120))
    {
      v7 = *(v0 + 128);
      OUTLINED_FUNCTION_4_6((v0 + 96));
      OUTLINED_FUNCTION_5_0();
      v36 = (v8 + *v8);
      v10 = *(v9 + 4);
      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_59(v11);
      *v12 = v13;
      v14 = OUTLINED_FUNCTION_1_8(v12);
      v15 = v36;
    }

    else
    {
      sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
      v25 = *(v0 + 224);
      v26 = v25[3];
      v27 = v25[4];
      OUTLINED_FUNCTION_4_6(v25);
      OUTLINED_FUNCTION_5_0();
      v38 = (v28 + *v28);
      v30 = *(v29 + 4);
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_55(v31);
      *v32 = v33;
      v14 = OUTLINED_FUNCTION_0_12(v32);
      v15 = v38;
    }

    return v15(v14);
  }

  else
  {
    *(v0 + 248) = 0;
    OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
    if (!*(v0 + 200))
    {
      sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
      if (*(v0 + 248))
      {
        v34 = *(v0 + 248);
      }

      goto LABEL_20;
    }

    sub_2485A9F84((v0 + 176), v0 + 136);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(OUTLINED_FUNCTION_5_6((v0 + 136)) + 16);
    OUTLINED_FUNCTION_5_0();
    v37 = (v19 + *v19);
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_58(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_3_5(v23);

    return (v37)(0, v16, v17);
  }
}

uint64_t sub_2485C1928()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 312) = v5;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2485C1A18()
{
  OUTLINED_FUNCTION_1_0();
  if (*(v0 + 312) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    if (*(v0 + 248))
    {
      v1 = *(v0 + 248);
    }
  }

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_2485C1AA4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2485C1BA0()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 224);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_4_6(v1);
  OUTLINED_FUNCTION_5_0();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_55(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_12(v8);

  return v12(v10);
}

void sub_2485C1C88()
{
  OUTLINED_FUNCTION_9();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_38();
  if (!v3)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = v2;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
    if (*(v0 + 120))
    {
      v12 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      OUTLINED_FUNCTION_2_7();
      v34 = v13 + *v13;
      v15 = *(v14 + 4);
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_59(v16);
      *v17 = v18;
      OUTLINED_FUNCTION_1_8(v17);
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
    v23 = *(v0 + 224);
    v24 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    OUTLINED_FUNCTION_2_7();
    v35 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_55(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_0_12(v29);
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 248) = v1;
  OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
  if (*(v0 + 200))
  {
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_11_0();
    v33 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_58(v7);
    *v8 = v9;
    OUTLINED_FUNCTION_3_5(v8);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2485C1FCC()
{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 296);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  *(v5 + 304) = v0;

  if (!v0)
  {
    *(v5 + 313) = v3 & 1;
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2485C20DC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 264);
  if (*(v0 + 313))
  {
  }

  else
  {
    OUTLINED_FUNCTION_38();
    if (!v5)
    {
      *(v0 + 272) = v4;
      OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
      if (*(v0 + 120))
      {
        v14 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        OUTLINED_FUNCTION_2_7();
        v34 = v15 + *v15;
        v17 = *(v16 + 4);
        v18 = swift_task_alloc();
        v19 = OUTLINED_FUNCTION_59(v18);
        *v19 = v20;
        OUTLINED_FUNCTION_1_8(v19);
        OUTLINED_FUNCTION_57();

        __asm { BRAA            X3, X16 }
      }

      sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
      v23 = *(v0 + 224);
      v24 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      OUTLINED_FUNCTION_2_7();
      v35 = v25 + *v25;
      v27 = *(v26 + 4);
      v28 = swift_task_alloc();
      v29 = OUTLINED_FUNCTION_55(v28);
      *v29 = v30;
      OUTLINED_FUNCTION_0_12();
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    *(v0 + 248) = v1;
    OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
    if (*(v0 + 200))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_11_0();
      v33 = v6 + *v6;
      v8 = *(v7 + 4);
      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_58(v9);
      *v10 = v11;
      OUTLINED_FUNCTION_3_5(v10);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
    OUTLINED_FUNCTION_51();
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

void sub_2485C2428()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 304);
  OUTLINED_FUNCTION_38();
  if (!v3)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = v2;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
    if (*(v0 + 120))
    {
      v12 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      OUTLINED_FUNCTION_2_7();
      v34 = v13 + *v13;
      v15 = *(v14 + 4);
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_59(v16);
      *v17 = v18;
      OUTLINED_FUNCTION_1_8(v17);
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
    v23 = *(v0 + 224);
    v24 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    OUTLINED_FUNCTION_2_7();
    v35 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_55(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 248) = v1;
  OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
  if (*(v0 + 200))
  {
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_11_0();
    v33 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_58(v7);
    *v8 = v9;
    OUTLINED_FUNCTION_3_5(v8);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2485C2764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_0_4();
}

void sub_2485C277C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 136);
  v2 = *(v0 + 152);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_2485BF228(*(v0 + 144));
    }

    else
    {
      if (v1 == 2)
      {
        v1 = 0;
      }

      sub_2485BF018(v1);
    }
  }

  else
  {
    sub_2485BF16C(*(v0 + 144));
  }

  sub_2485B12E0(*(v0 + 160) + 280, v0 + 56, &qword_27EE9C680, &qword_2485CBAA0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 152);
    sub_2485A9F84((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    OUTLINED_FUNCTION_14_0((v0 + 16));
    *(v0 + 120) = type metadata accessor for BasicUploadMetrics();
    *(v0 + 128) = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_2485C13EC(v3, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_11_0();
    v16 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_2485C2978;
    v11 = *(v0 + 144);
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X4, X16 }
  }

  sub_2485B1014(v0 + 56, &qword_27EE9C680, &qword_2485CBAA0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2485C2978()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 96));
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2485C2A78()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2485C2AD0()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_3_0();
  v2 = v0[22];

  return v1();
}

uint64_t sub_2485C2B54()
{
  OUTLINED_FUNCTION_9();
  sub_2485B12E0(*(v0 + 96) + 240, v0 + 56, &qword_27EE9C678, &unk_2485CAF80);
  if (*(v0 + 80))
  {
    sub_2485A9F84((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    OUTLINED_FUNCTION_4_6((v0 + 16));
    OUTLINED_FUNCTION_5_0();
    v11 = (v3 + *v3);
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_2485C2CE4;

    return v11(v1, v2);
  }

  else
  {
    sub_2485B1014(v0 + 56, &qword_27EE9C678, &unk_2485CAF80);
    sub_2485C8E50();
    OUTLINED_FUNCTION_15();
    v10 = v9 & 1;

    return v8(v10);
  }
}

uint64_t sub_2485C2CE4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2485C2DD4()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 112);
  sub_2485C8E50();
  OUTLINED_FUNCTION_15();

  return v2(v3 & 1);
}

uint64_t sub_2485C2E40()
{
  OUTLINED_FUNCTION_1_0();
  v1[166] = v0;
  v1[165] = v2;
  v1[164] = v3;
  v1[163] = v4;
  v5 = type metadata accessor for BasicUploadMetrics();
  v1[167] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[168] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0) - 8) + 64) + 15;
  v1[169] = swift_task_alloc();
  v8 = sub_2485C8A20();
  v1[170] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_2_2();
  v1[171] = v10;
  v12 = *(v11 + 64) + 15;
  v1[172] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2485C2F64()
{
  v28 = v0;
  v1 = v0[166];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[173] = Strong;
  if (!Strong)
  {
    sub_2485B2100();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
LABEL_12:
    OUTLINED_FUNCTION_31();

    OUTLINED_FUNCTION_3_0();

    return v25();
  }

  v3 = Strong;
  v4 = *(v0[166] + 120);
  v0[174] = swift_getObjectType();
  v5 = *(v4 + 8);
  v0[175] = v5;
  v6 = *(v5 + 24);
  v0[176] = v6;
  v0[177] = (v5 + 24) & 0xFFFFFFFFFFFFLL | 0xD13B000000000000;
  v6(v27);
  if (LOBYTE(v27[0]) == 1)
  {
    sub_2485AC61C(v3 + 320, (v0 + 88));
    v7 = v0[92];
    __swift_project_boxed_opaque_existential_1(v0 + 88, v0[91]);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_53();
    v11 = v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);
    if ((v11 & 1) == 0)
    {
      sub_2485B2100();
      swift_allocError();
      v14 = 3;
      goto LABEL_11;
    }
  }

  v12 = v0[166];
  if (*(v12 + 128))
  {
    sub_2485B2100();
    swift_allocError();
    v14 = 4;
LABEL_11:
    *v13 = v14;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v16 = v0[165];
  *(v12 + 128) = 1;
  v17 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  OUTLINED_FUNCTION_2_7();
  v26 = v18 + *v18;
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  v0[178] = v21;
  *v21 = v22;
  v21[1] = sub_2485C3218;
  OUTLINED_FUNCTION_19_0();

  return v23();
}

uint64_t sub_2485C3218()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1424);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[179] = v0;

  if (v0)
  {
    v9 = v3[166];

    return MEMORY[0x2822009F8](sub_2485C5FA8, v9, 0);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v3[180] = v10;
    *v10 = v11;
    v10[1] = sub_2485C3370;
    v12 = v3[173];

    return sub_2485B1900((v3 + 138));
  }
}

uint64_t sub_2485C3370()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *(v2 + 1440);
  *v4 = *v1;
  *(v3 + 1448) = v0;

  v6 = *(v2 + 1328);
  if (v0)
  {
    v7 = sub_2485C385C;
  }

  else
  {
    v7 = sub_2485C3490;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void *sub_2485C3490()
{
  v62 = v0;
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1384);
  result = (*(v0 + 1408))(v60, *(v0 + 1392), *(v0 + 1400));
  if (v61 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 1376);
    v7 = *(v0 + 1368);
    v8 = *(v0 + 1360);
    v9 = -v61;
    v10 = *(v0 + 1352);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v8);
    sub_2485C7D14(v9, v10, v6);
    sub_2485B1014(v10, qword_27EE9C508, &unk_2485CB9D0);
    sub_2485C89E0();
    v12 = v11;
    v14 = *(v7 + 8);
    v13 = v7 + 8;
    v14(v6, v8);
    v15 = *(v0 + 1288);
    *(v0 + 1456) = v15;
    if (v15 >= v12)
    {
      *(v0 + 1488) = v15;
      v55 = *(v0 + 1408);
      v56 = *(v0 + 1416);
      OUTLINED_FUNCTION_62();
      v58 = v28;
      v29 = OUTLINED_FUNCTION_45();
      v30(v29);
      sub_2485AC61C(v1, v0 + 1064);
      v31 = OUTLINED_FUNCTION_37();
      v55(v31);
      OUTLINED_FUNCTION_41(v60[1]);
      v32 = OUTLINED_FUNCTION_60();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v58);
      *(v2 + *(v13 + 56)) = MEMORY[0x277D84F90];
      *(v2 + *(v13 + 60)) = 0;
      v35 = v8[5];
      v36 = OUTLINED_FUNCTION_37();
      v37(v36);
      v38 = v8[6];
      v39 = OUTLINED_FUNCTION_37();
      v40(v39);
      v41 = v8[7];
      v42 = OUTLINED_FUNCTION_37();
      v43(v42);
      v44 = *(v0 + 856);
      __swift_project_boxed_opaque_existential_1((v0 + 824), *(v0 + 848));
      v45 = v8[2];
      v46 = OUTLINED_FUNCTION_37();
      v47(v46);
      v48 = *(v44 + 8);
      OUTLINED_FUNCTION_2_2();
      v59 = (v49 + *v49);
      v51 = *(v50 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v0 + 1504) = v52;
      *v52 = v53;
      v54 = OUTLINED_FUNCTION_28(v52);

      return v59(v54);
    }

    else
    {
      v16 = *(v0 + 1320);
      v17 = 0.0;
      if (v12 >= 0.0)
      {
        v17 = v12;
      }

      *(v0 + 1288) = v17;
      *(v0 + 1296) = 0;
      v18 = v16[3];
      v19 = v16[4];
      OUTLINED_FUNCTION_14_0(v16);
      v20 = *(v0 + 1288);
      *(v0 + 1464) = v20;
      v21 = *(v0 + 1296);
      *(v0 + 1272) = v20;
      *(v0 + 1280) = v21;
      v22 = *(v19 + 16);
      OUTLINED_FUNCTION_2_2();
      v57 = (v23 + *v23);
      v25 = *(v24 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v0 + 1472) = v26;
      *v26 = v27;
      v26[1] = sub_2485C38DC;
      OUTLINED_FUNCTION_20_0();

      return v57();
    }
  }

  return result;
}

uint64_t sub_2485C385C()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[173];
  v2 = v0[166];
  swift_unknownObjectRelease();
  *(v2 + 128) = 0;
  v3 = v0[181];
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485C38DC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1472);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 1480) = v0;

  v9 = *(v3 + 1328);
  if (v0)
  {
    v10 = sub_2485C6028;
  }

  else
  {
    v10 = sub_2485C39DC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_2485C39DC()
{
  v1[186] = v1[183];
  v33 = v1[176];
  v34 = v1[177];
  OUTLINED_FUNCTION_62();
  v35 = v5;
  v6 = OUTLINED_FUNCTION_45();
  v7(v6);
  sub_2485AC61C(v3, (v1 + 133));
  v8 = OUTLINED_FUNCTION_37();
  v33(v8);
  OUTLINED_FUNCTION_41(v37);
  v9 = OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v35);
  *(v4 + *(v2 + 56)) = MEMORY[0x277D84F90];
  *(v4 + *(v2 + 60)) = 0;
  v12 = v0[5];
  v13 = OUTLINED_FUNCTION_37();
  v14(v13);
  v15 = v0[6];
  v16 = OUTLINED_FUNCTION_37();
  v17(v16);
  v18 = v0[7];
  v19 = OUTLINED_FUNCTION_37();
  v20(v19);
  v21 = v1[107];
  __swift_project_boxed_opaque_existential_1(v1 + 103, v1[106]);
  v22 = v0[2];
  v23 = OUTLINED_FUNCTION_37();
  v24(v23);
  v25 = *(v21 + 8);
  OUTLINED_FUNCTION_5_0();
  v36 = v26 + *v26;
  v28 = *(v27 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  v1[188] = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_28(v29);
  OUTLINED_FUNCTION_42();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_2485C3BD0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1504);
  v6 = *(v4 + 1328);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  sub_2485B0C20(v2 + 656);

  return MEMORY[0x2822009F8](sub_2485C3CD0, v6, 0);
}

uint64_t sub_2485C3CD0()
{
  v26 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1144);
  *(v0 + 1512) = v3;
  v4 = *(v0 + 1152);
  *(v0 + 1520) = v4;
  v5 = *(v0 + 1160);
  *(v0 + 1528) = v5;
  v6 = *(v0 + 1168);
  *(v0 + 697) = v6;
  v7 = *(v0 + 1169);
  *(v0 + 698) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1136);
  __swift_project_boxed_opaque_existential_1((v0 + 1104), v8);
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v24 = v6;
  v25 = v7;
  (*(v9 + 16))(v2, v1, v23, v8, v9);
  v10 = *(v0 + 1488);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  *(v0 + 1576) = v10;
  *(v0 + 1568) = 0;
  *(v0 + 1560) = v10;
  *(v0 + 1544) = 0u;
  *(v0 + 1536) = v10;
  v11 = *(v0 + 1312);
  v12 = v11[3];
  v13 = v11[4];
  v14 = *(OUTLINED_FUNCTION_5_6(v11) + 16);
  OUTLINED_FUNCTION_5_0();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  *(v0 + 1584) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_8_2(v18);

  return v22(v20);
}

uint64_t sub_2485C3E90()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1584);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[199] = v0;

  if (v0)
  {
    v9 = v3[166];
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    v10 = sub_2485C60B0;
    v11 = v9;
  }

  else
  {
    v11 = v3[166];
    v10 = sub_2485C3FA0;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

void sub_2485C3FA0()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 760);
  *(v0 + 1600) = *(v0 + 744);
  *(v0 + 1616) = v1;
  v2 = *(v0 + 776);
  *(v0 + 1632) = v2;
  if (v2 == 1)
  {
    v3 = *(v0 + 808);
    v4 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 784), v3);
    if ((*(v4 + 24))(v3, v4) >= 1)
    {
      OUTLINED_FUNCTION_52();
      if (!v5)
      {
        OUTLINED_FUNCTION_4_5(&unk_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1728) = v23;
        *v23 = v24;
        OUTLINED_FUNCTION_17();
        *(v25 + 8) = v26;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_64();

        __asm { BR              X3 }
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    v6 = *(v0 + 1384);
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1352);
    v9 = *(v0 + 1344);
    v10 = *(v0 + 1336);
    v11 = *(v0 + 1328);
    v12 = *(v0 + 1304);
    OUTLINED_FUNCTION_35();
    sub_2485C6400(v9, v13);
    v12[3] = v10;
    v12[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v15 = *(v0 + 880);
    *(v0 + 576) = *(v0 + 864);
    *(v0 + 592) = v15;
    *(v0 + 608) = *(v0 + 896);
    OUTLINED_FUNCTION_22_0(v0 + 616);
    *(v0 + 648) = v16;
    sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v11 + 128) = 0;

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_4_5(dword_2485CBB30);
  v19 = swift_task_alloc();
  *(v0 + 1640) = v19;
  *v19 = v0;
  v19[1] = sub_2485C41E4;
  v20 = *(v0 + 1384);
  OUTLINED_FUNCTION_64();

  __asm { BR              X0 }
}

uint64_t sub_2485C41E4()
{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1640);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  *(v5 + 1648) = v0;

  if (v0)
  {
    v11 = *(v5 + 1328);
    __swift_destroy_boxed_opaque_existential_1((v5 + 1064));
    v12 = sub_2485C6180;
    v13 = v11;
  }

  else
  {
    v13 = *(v5 + 1328);
    *(v5 + 699) = v3 & 1;
    v12 = sub_2485C4310;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_2485C4310()
{
  v3 = (v0 + 864);
  v4 = (v0 + 944);
  if (*(v0 + 699))
  {
    v5 = OUTLINED_FUNCTION_6_4();
    v6 = *(v0 + 1344);
    sub_2485ABAD4(v5, v7, v8, v9, v10);
    if (!*(v6 + 56))
    {
      *(*(v0 + 1344) + 56) = 1;
    }

    v11 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 784), *(v0 + 808));
    v12 = *(v11 + 24);
    v13 = OUTLINED_FUNCTION_53();
    if (v14(v13) >= 1)
    {
      OUTLINED_FUNCTION_52();
      if (!v34)
      {
        OUTLINED_FUNCTION_4_5(&unk_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1728) = v42;
        *v42 = v43;
        OUTLINED_FUNCTION_17();
        goto LABEL_29;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    OUTLINED_FUNCTION_63();
    v15 = *(v0 + 1336);
    v16 = *(v0 + 1328);
    v17 = *(v0 + 1304);
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));
    sub_2485C6400(v6, v0 + 864);
    v17[3] = v15;
    v17[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v19 = *(v0 + 880);
    *(v0 + 576) = *v3;
    *(v0 + 592) = v19;
    *(v0 + 608) = *(v0 + 896);
    v20 = *(v0 + 960);
    *(v0 + 616) = *v4;
    *(v0 + 632) = v20;
    *(v0 + 648) = *(v0 + 976);
    sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v16 + 128) = 0;

    OUTLINED_FUNCTION_6();
LABEL_37:
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 1456) <= 0.0)
  {
    v21 = *(v0 + 1560);
    v22 = *(v0 + 1552);
    goto LABEL_19;
  }

  v21 = *(v0 + 1576);
  v22 = *(v0 + 1568);
  v23 = *(v0 + 1488);
  v24 = *(v0 + 1296) < v22;
  if (v23 != v21)
  {
    v24 = v23 < v21;
  }

  if (v24)
  {
LABEL_19:
    v1 = *(v0 + 1632);
    v35 = *(v0 + 808);
    v36 = *(v0 + 816);
    v82 = *(v0 + 1616);
    v84 = *(v0 + 1600);
    __swift_project_boxed_opaque_existential_1((v0 + 784), v35);
    *(v0 + 920) = v82;
    *(v0 + 904) = v84;
    *(v0 + 936) = v1;
    result = (*(v36 + 48))(v0 + 904, v35, v36);
    if ((result & 1) == 0)
    {
      v37 = *(v0 + 808);
      v38 = *(v0 + 816);
      __swift_project_boxed_opaque_existential_1((v0 + 784), v37);
      result = Batch.isEmpty.getter(v37, v38);
      if ((result & 1) == 0)
      {
        OUTLINED_FUNCTION_4_5(&unk_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1656) = v44;
        *v44 = v47;
        v45 = sub_2485C48AC;
LABEL_29:
        v44[1] = v45;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_46();

        __asm { BR              X3 }
      }
    }

    v39 = *(v0 + 1648);
    v40 = *(v0 + 1616);
    v32 = v40;
    if (v21 <= v40)
    {
      if (v21 != 0.0 && v21 == v40)
      {
        v1 = v22 + 1;
        if (v22 == -1)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        ++v22;
        v21 = *(v0 + 1616);
        v2 = v1;
      }

      else
      {
        OUTLINED_FUNCTION_61();
      }

      v41 = v32;
    }

    else
    {
      v41 = *(v0 + 1576);
      v2 = *(v0 + 1568);
      v1 = *(v0 + 1544);
      v32 = *(v0 + 1536);
    }

    *(v0 + 1024) = *(v0 + 1600);
    *(v0 + 1040) = v40;
    *(v0 + 1048) = *(v0 + 1624);
    OUTLINED_FUNCTION_65();
    v50 = OUTLINED_FUNCTION_48();
    v51(v50);
    if (v39)
    {
      OUTLINED_FUNCTION_54();
      v52 = *(v0 + 1384);
      v53 = *(v0 + 1344);
      v83 = *(v0 + 1328);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
      OUTLINED_FUNCTION_56();
      __swift_destroy_boxed_opaque_existential_1((v0 + 784));
      sub_2485C6400(v53, v0 + 864);
      swift_unknownObjectRelease();
      sub_2485C1390(v53);
      v54 = *(v0 + 880);
      *(v0 + 176) = *v3;
      *(v0 + 192) = v54;
      *(v0 + 208) = *(v0 + 896);
      v55 = *(v0 + 960);
      *(v0 + 216) = *v4;
      *(v0 + 232) = v55;
      *(v0 + 248) = *(v0 + 976);
      sub_2485B1014(v0 + 176, &qword_27EE9CAD8, &qword_2485CBAA8);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
      *(v83 + 128) = 0;
      v56 = *(v0 + 1376);
      v57 = *(v0 + 1352);
      v58 = *(v0 + 1344);

      OUTLINED_FUNCTION_3_0();
      goto LABEL_37;
    }

    v61 = OUTLINED_FUNCTION_6_4();
    v62 = *(v0 + 1344);
    result = sub_2485ABAD4(v61, v63, v64, v65, v66);
    v67 = *(v62 + 48);
    v68 = __CFADD__(v67, 1);
    v69 = v67 + 1;
    if (!v68)
    {
      *(*(v0 + 1344) + 48) = v69;
LABEL_45:
      *(v0 + 1576) = v41;
      *(v0 + 1568) = v2;
      *(v0 + 1560) = v21;
      *(v0 + 1552) = v22;
      *(v0 + 1544) = v1;
      *(v0 + 1536) = v32;
LABEL_46:
      v71 = *(v0 + 1312);
      v72 = v71[3];
      v73 = v71[4];
      v74 = *(OUTLINED_FUNCTION_5_6(v71) + 16);
      OUTLINED_FUNCTION_2_2();
      v85 = v75 + *v75;
      v77 = *(v76 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v0 + 1584) = v78;
      *v78 = v79;
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
    goto LABEL_50;
  }

  v25 = OUTLINED_FUNCTION_6_4();
  v27 = *&v26;
  result = sub_2485ABAD4(v25, v28, v26, v29, v30);
  if (v21 > v27)
  {
    goto LABEL_46;
  }

  v32 = *(v0 + 1616);
  v33 = *(v0 + 1576);
  v34 = v33 != 0.0 && v33 == v32;
  if (!v34)
  {
    OUTLINED_FUNCTION_61();
LABEL_44:
    v41 = v32;
    goto LABEL_45;
  }

  v70 = *(v0 + 1568);
  v1 = v70 + 1;
  if (v70 != -1)
  {
    v22 = v70 + 1;
    v21 = *(v0 + 1616);
    v2 = v70 + 1;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_2485C48AC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = *(v3 + 1656);
  *v2 = *v0;
  *(v1 + 1664) = v5;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2485C499C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[208];
  if (!v1)
  {
    v11 = v0[193];
    v12 = v0[192];
    v13 = v0[136];
    v14 = v0[137];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[155] = v12;
    v0[156] = v11;
    OUTLINED_FUNCTION_7_2();
    v24 = (v15 + *v15);
    v17 = *(v16 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[211] = v18;
    *v18 = v19;
    v18[1] = sub_2485C4D3C;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = v0[193];
    v3 = v0[192];
    v4 = v0[136];
    v5 = v0[137];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[157] = v3;
    v0[158] = v2;
    OUTLINED_FUNCTION_7_2();
    v24 = (v6 + *v6);
    v8 = *(v7 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[209] = v9;
    *v9 = v10;
    v9[1] = sub_2485C4BF4;
LABEL_5:
    OUTLINED_FUNCTION_20_0();

    return v24();
  }

  OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
  v21 = swift_task_alloc();
  v0[213] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_13_0(v21);
  v22 = OUTLINED_FUNCTION_47(v0[208]);

  return v23(v22);
}

uint64_t sub_2485C4BF4()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1672);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[210] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
    v12 = swift_task_alloc();
    v3[213] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_13_0(v12);
    v13 = OUTLINED_FUNCTION_18(v3[208]);

    return v14(v13);
  }
}

uint64_t sub_2485C4D3C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1688);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[212] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
    v12 = swift_task_alloc();
    v3[213] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_13_0(v12);
    v13 = OUTLINED_FUNCTION_18(v3[208]);

    return v14(v13);
  }
}

uint64_t sub_2485C4E84()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1720) = *(v0 + 1680);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2485C4EE4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1704);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[214] = v0;

  if (v0)
  {
    v9 = v3[166];
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    v10 = sub_2485C6250;
    v11 = v9;
  }

  else
  {
    v11 = v3[166];
    v10 = sub_2485C513C;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_2485C4FF4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v1, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v1);
  v4 = *(v0 + 880);
  *(v0 + 96) = *(v0 + 864);
  *(v0 + 112) = v4;
  *(v0 + 128) = *(v0 + 896);
  v5 = *(v0 + 960);
  *(v0 + 136) = *(v0 + 944);
  *(v0 + 152) = v5;
  *(v0 + 168) = *(v0 + 976);
  sub_2485B1014(v0 + 96, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v2 + 128) = 0;
  v6 = *(v0 + 1720);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_2485C50DC()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1720) = *(v0 + 1696);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2485C513C()
{
  v71 = (v0 + 864);
  v72 = (v0 + 944);
  v1 = *(v0 + 1664);
  v2 = *(v0 + 698);
  v3 = *(v0 + 697);
  v4 = *(v0 + 1528);
  v73 = *(v0 + 1512);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1384);
  v74 = *(v0 + 1344);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1136);
  v9 = __swift_project_boxed_opaque_existential_1((v0 + 1104), v7);
  *(v0 + 1176) = v73;
  *(v0 + 1192) = v4;
  *(v0 + 1200) = v3;
  *(v0 + 1201) = v2;
  v10 = v9;
  (*(v8 + 16))(v6, v5, v0 + 1176, v7, v8);
  sub_2485C1380(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));
  result = sub_2485A9F84((v0 + 984), v0 + 784);
  if (*(v74 + 56))
  {
    v12 = *(v74 + 56) == 3;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v18 = OUTLINED_FUNCTION_6_4();
    sub_2485ABAD4(v18, v19, v20, v21, v22);
    v23 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 784), *(v0 + 808));
    v24 = *(v23 + 24);
    v25 = OUTLINED_FUNCTION_53();
    if (v26(v25) > 0)
    {
      OUTLINED_FUNCTION_52();
      if (!v12)
      {
        OUTLINED_FUNCTION_4_5(&unk_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1728) = v65;
        *v65 = v66;
        OUTLINED_FUNCTION_17();
        *(v67 + 8) = v68;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_42();

        __asm { BR              X3 }
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    OUTLINED_FUNCTION_63();
    v27 = *(v0 + 1336);
    v28 = *(v0 + 1328);
    v29 = *(v0 + 1304);
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));
    sub_2485C6400(v10, v71);
    v29[3] = v27;
    v29[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v31 = *(v0 + 880);
    *(v0 + 576) = *v71;
    *(v0 + 592) = v31;
    *(v0 + 608) = *(v0 + 896);
    v32 = *(v0 + 960);
    *(v0 + 616) = *v72;
    *(v0 + 632) = v32;
    *(v0 + 648) = *(v0 + 976);
    sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v28 + 128) = 0;

    OUTLINED_FUNCTION_6();
LABEL_20:
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 1536);
  v14 = *(v0 + 1544);
  v15 = *(v0 + 1712);
  v16 = *(v0 + 1616);
  if (v13 <= v16)
  {
    if (v13 != 0.0 && v13 == v16)
    {
      v33 = __CFADD__(v14++, 1);
      if (v33)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = *(v0 + 1616);
  }

  *(v0 + 1024) = *(v0 + 1600);
  *(v0 + 1040) = v16;
  *(v0 + 1048) = *(v0 + 1624);
  OUTLINED_FUNCTION_65();
  v34 = OUTLINED_FUNCTION_48();
  v35(v34);
  if (v15)
  {
    OUTLINED_FUNCTION_54();
    v36 = *(v0 + 1384);
    v37 = *(v0 + 1344);
    v38 = *(v0 + 1328);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));
    sub_2485C6400(v37, v71);
    swift_unknownObjectRelease();
    sub_2485C1390(v37);
    v39 = *(v0 + 880);
    *(v0 + 176) = *v71;
    *(v0 + 192) = v39;
    *(v0 + 208) = *(v0 + 896);
    v40 = *(v0 + 960);
    *(v0 + 216) = *v72;
    *(v0 + 232) = v40;
    *(v0 + 248) = *(v0 + 976);
    sub_2485B1014(v0 + 176, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v38 + 128) = 0;
    v41 = *(v0 + 1376);
    v42 = *(v0 + 1352);
    v43 = *(v0 + 1344);

    OUTLINED_FUNCTION_3_0();
    goto LABEL_20;
  }

  v46 = OUTLINED_FUNCTION_6_4();
  v47 = *(v0 + 1344);
  result = sub_2485ABAD4(v46, v48, v49, v50, v51);
  v52 = *(v47 + 48);
  v33 = __CFADD__(v52, 1);
  v53 = v52 + 1;
  if (!v33)
  {
    *(*(v0 + 1344) + 48) = v53;
    *(v0 + 1576) = v13;
    *(v0 + 1568) = v14;
    *(v0 + 1560) = v13;
    *(v0 + 1552) = v14;
    *(v0 + 1544) = v14;
    *(v0 + 1536) = v13;
    v54 = *(v0 + 1312);
    v55 = v54[3];
    v56 = v54[4];
    v57 = *(OUTLINED_FUNCTION_5_6(v54) + 16);
    OUTLINED_FUNCTION_2_2();
    v75 = v58 + *v58;
    v60 = *(v59 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    *(v0 + 1584) = v61;
    *v61 = v62;
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2485C5600()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = *(v3 + 1728);
  *v2 = *v0;
  *(v1 + 1736) = v5;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2485C56F0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[217];
  if (!v1)
  {
    v11 = v0[193];
    v12 = v0[192];
    v13 = v0[136];
    v14 = v0[137];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[151] = v12;
    v0[152] = v11;
    OUTLINED_FUNCTION_7_2();
    v24 = (v15 + *v15);
    v17 = *(v16 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[220] = v18;
    *v18 = v19;
    v18[1] = sub_2485C5AA0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = v0[193];
    v3 = v0[192];
    v4 = v0[136];
    v5 = v0[137];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[153] = v3;
    v0[154] = v2;
    OUTLINED_FUNCTION_7_2();
    v24 = (v6 + *v6);
    v8 = *(v7 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[218] = v9;
    *v9 = v10;
    v9[1] = sub_2485C5950;
LABEL_5:
    OUTLINED_FUNCTION_20_0();

    return v24();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 133);
  OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
  v21 = swift_task_alloc();
  v0[222] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_12_0(v21);
  v22 = OUTLINED_FUNCTION_47(v0[217]);

  return v23(v22);
}

uint64_t sub_2485C5950()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1744);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[219] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
    v12 = swift_task_alloc();
    v3[222] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_12_0(v12);
    v13 = OUTLINED_FUNCTION_18(v3[217]);

    return v14(v13);
  }
}

uint64_t sub_2485C5AA0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 1760);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[221] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    OUTLINED_FUNCTION_4_5(&unk_2485CBB28);
    v12 = swift_task_alloc();
    v3[222] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_12_0(v12);
    v13 = OUTLINED_FUNCTION_18(v3[217]);

    return v14(v13);
  }
}

uint64_t sub_2485C5BF0()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1792) = *(v0 + 1752);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2485C5C50()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *(v2 + 1776);
  *v4 = *v1;
  *(v3 + 1784) = v0;

  v6 = *(v2 + 1328);
  if (v0)
  {
    v7 = sub_2485C6330;
  }

  else
  {
    v7 = sub_2485C5EA0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2485C5D70()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1736);
  OUTLINED_FUNCTION_39();
  sub_2485C1380(v3);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v4);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v5 = *(v1 + 880);
  *(v1 + 416) = *(v1 + 864);
  *(v1 + 432) = v5;
  *(v1 + 448) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 456);
  *(v1 + 488) = v6;
  sub_2485B1014(v1 + 416, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  v7 = *(v1 + 1792);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_2485C5E40()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1792) = *(v0 + 1768);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_2485C5EA0()
{
  OUTLINED_FUNCTION_49();
  sub_2485C1380(*(v0 + 1736));
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1328);
  v7 = *(v0 + 1304);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v4, v8);
  v7[3] = v5;
  v7[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
  swift_unknownObjectRelease();
  v10 = *(v0 + 880);
  *(v0 + 576) = *(v0 + 864);
  *(v0 + 592) = v10;
  *(v0 + 608) = *(v0 + 896);
  OUTLINED_FUNCTION_22_0(v0 + 616);
  *(v0 + 648) = v11;
  sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v6 + 128) = 0;

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2485C5FA8()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[173];
  v2 = v0[166];
  swift_unknownObjectRelease();
  *(v2 + 128) = 0;
  v3 = v0[179];
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485C6028()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[173];
  v2 = v0[166];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 138);
  *(v2 + 128) = 0;
  v3 = v0[185];
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_2485C60B0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v2);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v3 = *(v1 + 880);
  *(v1 + 16) = *(v1 + 864);
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v1 + 896);
  v4 = *(v1 + 960);
  *(v1 + 56) = *(v1 + 944);
  *(v1 + 72) = v4;
  *(v1 + 88) = *(v1 + 976);
  sub_2485B1014(v1 + 16, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  v5 = *(v1 + 1592);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_2485C6180()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_39();
  sub_2485ABAD4(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v7);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v8 = *(v1 + 880);
  *(v1 + 336) = *(v1 + 864);
  *(v1 + 352) = v8;
  *(v1 + 368) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 376);
  *(v1 + 408) = v9;
  sub_2485B1014(v1 + 336, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  v10 = *(v1 + 1648);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_2485C6250()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v1, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v1);
  v4 = *(v0 + 880);
  *(v0 + 256) = *(v0 + 864);
  *(v0 + 272) = v4;
  *(v0 + 288) = *(v0 + 896);
  OUTLINED_FUNCTION_22_0(v0 + 296);
  *(v0 + 328) = v5;
  sub_2485B1014(v0 + 256, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v2 + 128) = 0;
  v6 = *(v0 + 1712);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_2485C6330()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1736);
  OUTLINED_FUNCTION_39();
  sub_2485C1380(v3);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v4);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v5 = *(v1 + 880);
  *(v1 + 496) = *(v1 + 864);
  *(v1 + 512) = v5;
  *(v1 + 528) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 536);
  *(v1 + 568) = v6;
  sub_2485B1014(v1 + 496, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  v7 = *(v1 + 1784);
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_2485C6400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 3;
  }

  v11 = type metadata accessor for BasicUploadMetrics();
  v12 = *(v11 + 52);
  sub_2485B12E0(a1 + v12, v10, qword_27EE9C508, &unk_2485CB9D0);
  v13 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v13);
  sub_2485B1014(v10, qword_27EE9C508, &unk_2485CB9D0);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    sub_2485BF650(v8, a1 + v12);
  }

  sub_2485B12E0(a2, v20, &qword_27EE9C680, &qword_2485CBAA0);
  v15 = v21;
  if (!v21)
  {
    return sub_2485B1014(v20, &qword_27EE9C680, &qword_2485CBAA0);
  }

  v16 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v11;
  v19[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_2485C13EC(a1, boxed_opaque_existential_1);
  (*(v16 + 24))(v19, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2485C6628()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485B35C0;

  return sub_2485C2E40();
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_6(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v1 = v0[204];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  return v0[200];
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1384);
  v3 = *(v1 + 1344);
  return a1;
}

__n128 OUTLINED_FUNCTION_22_0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 944);
  v3 = *(v1 + 960);
  *a1 = result;
  *(a1 + 16) = v3;
  v4 = *(v1 + 976);
  return result;
}

uint64_t OUTLINED_FUNCTION_30()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1384);
  return v0 + 784;
}

uint64_t OUTLINED_FUNCTION_31()
{
  v2 = v0[172];
  v3 = v0[169];
  v4 = v0[168];
}

void *OUTLINED_FUNCTION_34()
{
  sub_2485A9F84((v0 + 176), v0 + 136);
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  return __swift_project_boxed_opaque_existential_1((v0 + 136), v2);
}

void OUTLINED_FUNCTION_39()
{
  v1 = v0[173];
  v2 = v0[168];
  v3 = v0[166];
}

uint64_t OUTLINED_FUNCTION_40()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1328);
  sub_2485C1380(*(v0 + 1664));

  return sub_2485ABAD4(v5, v4, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_41@<X0>(uint64_t a1@<X8>)
{
  if (a1 <= 1)
  {
    a1 = 1;
  }

  *(v1 + 1496) = a1;
  *(v3 + 41) = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  v5 = v3 + *(v2 + 48);

  return sub_2485C8A10();
}

uint64_t OUTLINED_FUNCTION_45()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 8);
  return v5;
}

uint64_t OUTLINED_FUNCTION_47@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1384);
  v3 = *(v1 + 1344);
  return a1;
}

void OUTLINED_FUNCTION_54()
{
  v1 = v0[204];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = v0[200];
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_2485ABAD4(v4, v3, v2, v1, v0);
}

void OUTLINED_FUNCTION_62()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[170];
}

void OUTLINED_FUNCTION_63()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[169];
  v4 = v0[168];
}

uint64_t OUTLINED_FUNCTION_65()
{
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 784, v3);
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2485B12E0(a3 + 240, v3 + 176, a1, a2);
}

uint64_t OUTLINED_FUNCTION_67()
{
  v2 = *(v0 + 1328);

  return __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2485B12E0(a3 + 280, v3 + 96, a1, a2);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return sub_2485C131C(v1, a1);
}

uint64_t OUTLINED_FUNCTION_70()
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 + 1104));
  *(v0 + 128) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceUserOptions(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2485C6E00);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2485C6E38@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27EE9C070 != -1)
  {
    swift_once();
  }

  if (byte_27EE9E438 != 1)
  {
    goto LABEL_9;
  }

  if (qword_27EE9C068 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE9E430;
  if (*(qword_27EE9E430 + 16) && (v5 = sub_2485C75A0(a1 & 1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2485C8D00();
    (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
LABEL_9:
    v12 = sub_2485C8D00();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_2485C6F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v6 = sub_2485C8D00();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = v12;
  v35 = v32 - v11;
  v13 = (a1 + 32);
  v38 = (v12 + 32);
  v14 = *(a1 + 16);
  v32[1] = v12 + 40;
  v33 = a2;
  if (!v14)
  {
  }

  while (1)
  {
    v39 = v14;
    v40 = v13;
    v15 = *v13;

    v16 = v35;
    sub_2485C8CF0();
    v17 = *v38;
    v18 = v10;
    (*v38)(v10, v16, v6);
    v19 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v41 = *a2;
    v20 = v41;
    v21 = sub_2485C75A0(v15);
    if (__OFADD__(v20[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CAE8, &qword_2485CBB98);
    if (sub_2485C8FA0())
    {
      v25 = sub_2485C75A0(v15);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_14;
      }

      v23 = v25;
    }

    v27 = v41;
    if (v24)
    {
      v10 = v18;
      (*(v34 + 40))(v41[7] + *(v34 + 72) * v23, v18, v6);
    }

    else
    {
      v41[(v23 >> 6) + 8] |= 1 << v23;
      *(v27[6] + v23) = v15;
      v10 = v18;
      v17((v27[7] + *(v34 + 72) * v23), v18, v6);
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_13;
      }

      v27[2] = v30;
    }

    a2 = v33;
    *v33 = v27;
    v13 = v40 + 1;
    v14 = v39 - 1;
    if (v39 == 1)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_2485C9070();
  __break(1u);
  return result;
}

uint64_t sub_2485C7270(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 28521;
  }

  else
  {
    v3 = 0x726564616F6C7075;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 28521;
  }

  else
  {
    v5 = 0x726564616F6C7075;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2485C9040();
  }

  return v8 & 1;
}

uint64_t sub_2485C7304()
{
  v0 = sub_2485C8FD0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485C7358(char a1)
{
  if (a1)
  {
    return 28521;
  }

  else
  {
    return 0x726564616F6C7075;
  }
}

uint64_t sub_2485C7390@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2485C7304();
  *a2 = result;
  return result;
}

uint64_t sub_2485C73C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2485C7358(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2485C7408()
{
  sub_2485C8DA0();
}

uint64_t sub_2485C7470()
{
  sub_2485C90D0();
  sub_2485C8DA0();

  return sub_2485C9110();
}

uint64_t sub_2485C74F4()
{
  result = sub_2485C7514();
  qword_27EE9E430 = result;
  return result;
}

uint64_t sub_2485C7514()
{
  sub_2485C8D00();
  sub_2485C779C();
  v1 = sub_2485C8D10();
  sub_2485C6F78(&unk_285ACCB40, &v1, 0xD00000000000001CLL, 0x80000002485CC5A0);
  return v1;
}

unint64_t sub_2485C75A0(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2485C7470();

  return sub_2485C7668(a1 & 1, v4);
}

unint64_t sub_2485C75E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2485C8980();
  sub_2485BE8EC(&qword_27EE9C6D0);
  v5 = sub_2485C8D30();

  return sub_2485C77F0(a1, v5);
}

unint64_t sub_2485C7668(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 28521;
    }

    else
    {
      v6 = 0x726564616F6C7075;
    }

    if (a1)
    {
      v7 = 0xE200000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 28521 : 0x726564616F6C7075;
      v9 = *(*(v2 + 48) + v4) ? 0xE200000000000000 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2485C9040();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2485C779C()
{
  result = qword_27EE9CAE0;
  if (!qword_27EE9CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CAE0);
  }

  return result;
}

unint64_t sub_2485C77F0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2485C8980();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2485BE8EC(&qword_27EE9CAF0);
    v10 = sub_2485C8D50();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

_BYTE *storeEnumTagSinglePayload for Logs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2485C7A64);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2485C7AA0()
{
  result = qword_27EE9CAF8;
  if (!qword_27EE9CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9CB00, qword_2485CBBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CAF8);
  }

  return result;
}

unint64_t sub_2485C7B08()
{
  result = qword_27EE9CB08;
  if (!qword_27EE9CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CB08);
  }

  return result;
}

uint64_t sub_2485C7B5C()
{
  result = sub_2485C7B84(5);
  byte_27EE9E438 = result & 1;
  return result;
}

uint64_t sub_2485C7B84(char a1)
{
  sub_2485C7C10(a1);
  v1 = sub_2485C8D60();

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

uint64_t sub_2485C7C10(char a1)
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
    default:
      return result;
  }

  return result;
}

uint64_t sub_2485C7D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2485C8AA0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_8();
  v78 = v12;
  v13 = sub_2485C8940();
  v14 = OUTLINED_FUNCTION_0(v13);
  v74 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_8();
  v73 = v18;
  v19 = sub_2485C8AB0();
  v20 = OUTLINED_FUNCTION_0(v19);
  v80 = v21;
  v81 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_8();
  v79 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_5_7();
  v77 = v27;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v28);
  v72 = &v66[-v29];
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v66[-v31];
  v33 = sub_2485C8A20();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_7();
  v76 = v39;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v40);
  v75 = &v66[-v41];
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v42);
  v44 = &v66[-v43];
  sub_2485BF578(a2, v32);
  OUTLINED_FUNCTION_1_9(v32);
  if (v45)
  {
    sub_2485C8A10();
    OUTLINED_FUNCTION_1_9(v32);
    if (!v45)
    {
      sub_2485BF5E8(v32);
    }

    if (!a1)
    {
      return (*(v36 + 32))(a3, v44, v33);
    }
  }

  else
  {
    (*(v36 + 32))(v44, v32, v33);
    if (!a1)
    {
      return (*(v36 + 32))(a3, v44, v33);
    }
  }

  v68 = v13;
  v70 = a1;
  v71 = a3;
  if (qword_27EE9C078 != -1)
  {
    swift_once();
  }

  v46 = v81;
  v47 = __swift_project_value_buffer(v81, qword_27EE9E440);
  (*(v80 + 16))(v79, v47, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CB10, &qword_2485CBCC0);
  v48 = *(v9 + 72);
  v49 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2485CBCB0;
  v51 = v50 + v49;
  v52 = *MEMORY[0x277CC9968];
  v69 = v9;
  v53 = *(v9 + 104);
  v67 = v52;
  v53(v51);
  (v53)(v51 + v48, *MEMORY[0x277CC9998], v6);
  (v53)(v51 + 2 * v48, *MEMORY[0x277CC9988], v6);
  (v53)(v51 + 3 * v48, *MEMORY[0x277CC99C0], v6);
  sub_2485C84A0(v50);
  v54 = v73;
  sub_2485C8A80();

  v55 = v72;
  sub_2485C8930();
  (*(v74 + 8))(v54, v68);
  if (__swift_getEnumTagSinglePayload(v55, 1, v33) == 1)
  {
    v56 = v75;
    (*(v36 + 16))(v75, v44, v33);
    OUTLINED_FUNCTION_1_9(v55);
    if (!v45)
    {
      sub_2485BF5E8(v55);
    }
  }

  else
  {
    v56 = v75;
    (*(v36 + 32))(v75, v55, v33);
  }

  v58 = v78;
  (v53)(v78, v67, v6);
  v59 = v77;
  v60 = v79;
  sub_2485C8A90();
  (*(v69 + 8))(v58, v6);
  (*(v80 + 8))(v60, v81);
  v61 = (v36 + 8);
  v62 = *(v36 + 8);
  v62(v44, v33);
  OUTLINED_FUNCTION_1_9(v59);
  if (v45)
  {
    v63 = OUTLINED_FUNCTION_3_6();
    v61(v63, v56, v33);
    OUTLINED_FUNCTION_1_9(v59);
    v65 = v71;
    if (!v45)
    {
      sub_2485BF5E8(v59);
    }
  }

  else
  {
    v62(v56, v33);
    v64 = OUTLINED_FUNCTION_3_6();
    v61(v64, v59, v33);
    v65 = v71;
  }

  return v61(v65, v58, v33);
}

uint64_t sub_2485C8348()
{
  v0 = sub_2485C8A60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2485C8AB0();
  __swift_allocate_value_buffer(v5, qword_27EE9E440);
  __swift_project_value_buffer(v5, qword_27EE9E440);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_2485C8A70();
  return (*(v1 + 8))(v4, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2485C84A0(uint64_t a1)
{
  v2 = sub_2485C8AA0();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CB18, &qword_2485CBCC8);
  result = sub_2485C8F20();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_2485C87BC(&qword_27EE9CB20);
    v16 = sub_2485C8D30();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_2485C87BC(&qword_27EE9CB28);
      v23 = sub_2485C8D50();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2485C87BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2485C8AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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