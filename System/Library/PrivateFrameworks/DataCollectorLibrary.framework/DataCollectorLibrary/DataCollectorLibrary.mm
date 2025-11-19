uint64_t sub_2485D4EB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_2485DFDD8();
  a3(v4);
  OUTLINED_FUNCTION_94();
  return sub_2485DFDE8();
}

uint64_t sub_2485D4F08()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDA70();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2485D4F84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_2485DFDD8();
  a4(v5);
  OUTLINED_FUNCTION_94();
  return sub_2485DFDE8();
}

uint64_t sub_2485D5038@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2485D509C()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDAC4();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2485D5188()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDB18();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v6 + 24));
  OUTLINED_FUNCTION_96();
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_49();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = xmmword_2485DFF90;
    *(a1 + 48) = xmmword_2485DFF90;
    v9 = a1 + *(v7 + 32);
    sub_2485DFBB8();
    result = OUTLINED_FUNCTION_49();
    if (!v8)
    {
      return sub_2485DD704(v1, &qword_27EE9E460, &qword_2485DFFF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_84();
    return sub_2485D5B98();
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.setter()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v1);
  sub_2485DD704(v0 + *(v2 + 24), &qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_90();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65(a1);
  *(v1 + 32) = xmmword_2485DFF90;
  *(v1 + 48) = xmmword_2485DFF90;
  v2 = v1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
  return sub_2485DFBB8();
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

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.modify(void *a1))(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_69(v11);
  sub_2485D5928();
  v12 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0xE000000000000000;
    *(v10 + 2) = xmmword_2485DFF90;
    *(v10 + 3) = xmmword_2485DFF90;
    v15 = &v10[*(v7 + 32)];
    sub_2485DFBB8();
    v16 = OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_61(v16, v17, v7);
    if (!v14)
    {
      sub_2485DD704(v6, &qword_27EE9E460, &qword_2485DFFF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    sub_2485D5B98();
  }

  return sub_2485D568C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.hasPayload.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20]();
  v3 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v3 + 24));
  sub_2485D5928();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v4 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_84();
  sub_2485DD704(v9, v10, &qword_2485DFFF0);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.clearPayload()()
{
  v1 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_2485DD704(v0 + *(v1 + 24), &qword_27EE9E460, &qword_2485DFFF0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v2 = OUTLINED_FUNCTION_91();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.headers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v6 + 28));
  OUTLINED_FUNCTION_96();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_49();
  if (v7)
  {
    Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.init()(a1);
    result = OUTLINED_FUNCTION_49();
    if (!v7)
    {
      return sub_2485DD704(v1, &qword_27EE9E468, &qword_2485DFFF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_84();
    return sub_2485D5B98();
  }

  return result;
}

uint64_t sub_2485D5928()
{
  OUTLINED_FUNCTION_60();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_32();
  v7(v6);
  return v0;
}

uint64_t sub_2485D5A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_45(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  sub_2485D63D4();
  return a7(v12);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.setter()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v1);
  sub_2485DD704(v0 + *(v2 + 28), &qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_7();
  sub_2485D5B98();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_90();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_2485DFFA0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = sub_2485DFD78();
  v2 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
  return sub_2485DFBB8();
}

uint64_t sub_2485D5B98()
{
  OUTLINED_FUNCTION_60();
  v2 = v1(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  return v0;
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.modify(void *a1))(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
  sub_2485D5928();
  OUTLINED_FUNCTION_61(v6, 1, v7);
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    *(v10 + 2) = xmmword_2485DFFA0;
    v10[6] = 0xE000000000000000;
    v10[7] = 0;
    v10[8] = 0xE000000000000000;
    v10[9] = 0;
    v10[10] = 0xE000000000000000;
    v10[11] = sub_2485DFD78();
    v12 = v10 + *(v7 + 44);
    sub_2485DFBB8();
    OUTLINED_FUNCTION_61(v6, 1, v7);
    if (!v11)
    {
      sub_2485DD704(v6, &qword_27EE9E468, &qword_2485DFFF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
    sub_2485D5B98();
  }

  return sub_2485D5DA8;
}

void sub_2485D5DE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_42();
  v24 = v23;
  v25 = v22;
  v27 = *(*v26 + 10);
  v28 = (*v26)[3];
  v29 = (*v26)[4];
  v30 = (*v26)[2];
  v41 = (*v26)[1];
  v31 = **v26;
  if (v32)
  {
    sub_2485D63D4();
    sub_2485DD704(v31 + v27, v25, v24);
    sub_2485D5B98();
    OUTLINED_FUNCTION_90();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    sub_2485D642C();
  }

  else
  {
    sub_2485DD704(v31 + v27, v22, v23);
    sub_2485D5B98();
    OUTLINED_FUNCTION_90();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  }

  free(v29);
  free(v28);
  free(v41);
  OUTLINED_FUNCTION_41();

  free(v39);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.hasMetadata.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20]();
  v3 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v3 + 28));
  sub_2485D5928();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v4 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_84();
  sub_2485DD704(v9, v10, &qword_2485DFFF8);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.clearMetadata()()
{
  v1 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_2485DD704(v0 + *(v1 + 28), &qword_27EE9E468, &qword_2485DFFF8);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v2 = OUTLINED_FUNCTION_91();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0) + 20);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_36();

  return v6(v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0) + 20);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_74();

  return v6(v5);
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0) + 20);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v3 = a1 + v2[5];
  sub_2485DFBB8();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.fqn.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.fqn.setter()
{
  OUTLINED_FUNCTION_33();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.requestID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v3, v4);
  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.requestID.setter()
{
  OUTLINED_FUNCTION_33();
  result = sub_2485D64D8(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.sourceCluster.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.sourceCluster.setter()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.stream.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.stream.setter()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_2485D63D4()
{
  OUTLINED_FUNCTION_60();
  v2 = v1(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  return v0;
}

uint64_t sub_2485D642C()
{
  v1 = OUTLINED_FUNCTION_38();
  v3 = v2(v1);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2485D6480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2485D64D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.legacyHeaders.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0) + 44);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_36();

  return v6(v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0) + 44);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_74();

  return v6(v5);
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0) + 44);
  return nullsub_1;
}

void Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.payloadType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_80(a1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.payloadType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaName.setter()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaFingerprint.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v3, v4);
  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaFingerprint.setter()
{
  OUTLINED_FUNCTION_33();
  result = sub_2485D64D8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.body.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v3, v4);
  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.body.setter()
{
  OUTLINED_FUNCTION_33();
  result = sub_2485D64D8(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(v0) + 32);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.requestID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v3, v4);
  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.requestID.setter()
{
  OUTLINED_FUNCTION_33();
  result = sub_2485D64D8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void Com_Apple_Aiml_Dpg_Service_V1_DataEventError.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_80(a1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.message.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_32();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.message.setter()
{
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_2485D6A30()
{
  v0 = OUTLINED_FUNCTION_71();
  v2 = *(v1(v0) + 32);
  v3 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_36();

  return v7(v6);
}

uint64_t sub_2485D6AD8()
{
  v0 = OUTLINED_FUNCTION_38();
  v2 = *(v1(v0) + 32);
  v3 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_74();

  return v7(v6);
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_DataEventError.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(v0) + 32);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_2485DFF90;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
  return sub_2485DFBB8();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0) + 24);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_36();

  return v6(v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0) + 24);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_74();

  return v6(v5);
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0) + 24);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_2485DFF90;
  v1 = a1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
  return sub_2485DFBB8();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.errors.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0) + 28);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_36();

  return v6(v5);
}

uint64_t sub_2485D6EAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0) + 28);
  v2 = sub_2485DFBC8();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_74();

  return v6(v5);
}

uint64_t (*Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  v1 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0) + 28);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65(a1);
  *(v1 + 32) = MEMORY[0x277D84F90];
  v2 = v1 + *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
  return sub_2485DFBB8();
}

void sub_2485D6FD4()
{
  OUTLINED_FUNCTION_42();
  v2 = sub_2485DFD68();
  __swift_allocate_value_buffer(v2, qword_27EEA01F8);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v6, xmmword_2485DFFB0);
  *v1 = 0;
  *v0 = "PAYLOAD_UNKNOWN";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_34();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_21();
  *v13 = 1;
  OUTLINED_FUNCTION_62(v12, "PAYLOAD_AVRO_RECORD");
  OUTLINED_FUNCTION_40();
  v10();
  v14 = OUTLINED_FUNCTION_23();
  *v15 = 2;
  OUTLINED_FUNCTION_62(v14, "PAYLOAD_PROTO_RECORD");
  OUTLINED_FUNCTION_40();
  v10();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2485D71A4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_2485DFD68();
  __swift_allocate_value_buffer(v1, qword_27EEA0210);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_56();
  v7 = OUTLINED_FUNCTION_67((v6 & ~v5) - v4 + 8 * v4, v5);
  OUTLINED_FUNCTION_53(v7, xmmword_2485DFFC0);
  v9 = v0 + v8;
  *v0 = 0;
  *v9 = "EVENT_HEADERS_INVALID";
  *(v9 + 1) = 21;
  v9[16] = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_39();
  v13();
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 1;
  *v14 = "EVENT_BODY_INVALID";
  v14[1] = 18;
  v16 = OUTLINED_FUNCTION_37(v14);
  (v13)(v16);
  v17 = OUTLINED_FUNCTION_23();
  *v18 = 2;
  *v17 = "EVENT_BODY_TOO_LARGE";
  v17[1] = 20;
  v19 = OUTLINED_FUNCTION_37(v17);
  (v13)(v19);
  OUTLINED_FUNCTION_31(3 * v4);
  OUTLINED_FUNCTION_92(v20);
  *v21 = "EVENT_SCHEMA_UNKNOWN";
  v21[1] = 20;
  v22 = OUTLINED_FUNCTION_37(v21);
  (v13)(v22);
  v23 = (v0 + 4 * v4);
  v24 = (v23 + dword_27EEA0248);
  *v23 = 4;
  *v24 = "EVENT_UNSUPPORTED";
  v24[1] = 17;
  v25 = OUTLINED_FUNCTION_37(v24);
  (v13)(v25);
  v26 = OUTLINED_FUNCTION_31(5 * v4);
  *v27 = 5;
  *v26 = "EVENT_TIMEOUT";
  v26[1] = 13;
  v28 = OUTLINED_FUNCTION_37(v26);
  (v13)(v28);
  v29 = (v0 + 6 * v4);
  v30 = v29 + dword_27EEA0248;
  *v29 = 6;
  *v30 = "EVENT_PRODUCER_FAILED";
  *(v30 + 1) = 21;
  v30[16] = 2;
  OUTLINED_FUNCTION_39();
  v13();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

void sub_2485D7418()
{
  OUTLINED_FUNCTION_42();
  v2 = sub_2485DFD68();
  __swift_allocate_value_buffer(v2, qword_27EEA0228);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v6, xmmword_2485DFFB0);
  *v1 = 0;
  *v0 = "OK";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_34();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_21();
  *v13 = 1;
  OUTLINED_FUNCTION_62(v12, "FAILED_ALL");
  OUTLINED_FUNCTION_40();
  v10();
  v14 = OUTLINED_FUNCTION_23();
  *v15 = 2;
  OUTLINED_FUNCTION_62(v14, "FAILED_PARTIAL");
  OUTLINED_FUNCTION_40();
  v10();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

void sub_2485D75C4()
{
  OUTLINED_FUNCTION_42();
  v2 = sub_2485DFD68();
  __swift_allocate_value_buffer(v2, &qword_27EEA0240);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v6, xmmword_2485DFFB0);
  *v1 = 4;
  *v0 = "payload";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_34();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_21();
  *v13 = 6;
  *v12 = "headers";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v10();
  v14 = OUTLINED_FUNCTION_23();
  *v15 = 7;
  *v14 = "metadata";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v10();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 7:
        v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
        OUTLINED_FUNCTION_2();
        v5 = &unk_27EE9E578;
LABEL_10:
        sub_2485DD75C(v5, v4);
        OUTLINED_FUNCTION_27();
        sub_2485DFC88();
        break;
      case 6:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
        OUTLINED_FUNCTION_0();
        sub_2485DD75C(&qword_27EE9E470, v6);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC78();
        break;
      case 4:
        v3 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
        OUTLINED_FUNCTION_0();
        v5 = &qword_27EE9E470;
        goto LABEL_10;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2485D79A4(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
      OUTLINED_FUNCTION_0();
      sub_2485DD75C(v11, v12);
      OUTLINED_FUNCTION_18();
      sub_2485DFD28();
    }

    sub_2485D7B64(v5, a1, a2, a3);
    v13 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 20);
    return OUTLINED_FUNCTION_22();
  }

  return result;
}

uint64_t sub_2485D79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_72(a1, a2, a3, a4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_86();
  v10 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(v9);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v16 = v15 - v14;
  v17 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
  OUTLINED_FUNCTION_95();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    return sub_2485DD704(v4, &qword_27EE9E460, &qword_2485DFFF0);
  }

  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  OUTLINED_FUNCTION_0();
  v21 = sub_2485DD75C(v19, v20);
  OUTLINED_FUNCTION_93(v16, 4, v22, v21);
  OUTLINED_FUNCTION_47();
  return sub_2485D642C();
}

BOOL sub_2485D7B00(uint64_t a1, unint64_t a2)
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

uint64_t sub_2485D7B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_72(a1, a2, a3, a4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_86();
  v10 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v9);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v16 = v15 - v14;
  v17 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
  OUTLINED_FUNCTION_95();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    return sub_2485DD704(v4, &qword_27EE9E468, &qword_2485DFFF8);
  }

  OUTLINED_FUNCTION_7();
  sub_2485D5B98();
  OUTLINED_FUNCTION_2();
  v21 = sub_2485DD75C(v19, v20);
  OUTLINED_FUNCTION_93(v16, 7, v22, v21);
  OUTLINED_FUNCTION_46();
  return sub_2485D642C();
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v53 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v4 = OUTLINED_FUNCTION_10(v53);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v50[1] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v12);
  v50[2] = v50 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E478, &qword_2485E0000);
  OUTLINED_FUNCTION_10(v51);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v16);
  v54 = v50 - v17;
  v18 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v25);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E480, &qword_2485E0008) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v28);
  v30 = v50 - v29;
  v52 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v31 = *(v52 + 24);
  v32 = v26[14];
  v55 = a1;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_61(v30, 1, v18);
  if (v33)
  {
    OUTLINED_FUNCTION_61(&v30[v32], 1, v18);
    if (v33)
    {
      sub_2485DD704(v30, &qword_27EE9E460, &qword_2485DFFF0);
      goto LABEL_12;
    }

LABEL_9:
    v34 = &qword_27EE9E480;
    v35 = &qword_2485E0008;
    v36 = v30;
LABEL_10:
    sub_2485DD704(v36, v34, v35);
    goto LABEL_24;
  }

  sub_2485D5928();
  OUTLINED_FUNCTION_61(&v30[v32], 1, v18);
  if (v33)
  {
    OUTLINED_FUNCTION_47();
    sub_2485D642C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  v37 = static Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.== infix(_:_:)();
  sub_2485D642C();
  sub_2485D642C();
  sub_2485DD704(v30, &qword_27EE9E460, &qword_2485DFFF0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((sub_2485DC934(*v55, *a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  v38 = v52;
  v39 = *(v52 + 28);
  v40 = *(v51 + 48);
  v41 = v54;
  sub_2485D5928();
  sub_2485D5928();
  v42 = v53;
  OUTLINED_FUNCTION_61(v41, 1, v53);
  if (!v33)
  {
    sub_2485D5928();
    OUTLINED_FUNCTION_61(v41 + v40, 1, v42);
    if (!v43)
    {
      OUTLINED_FUNCTION_7();
      sub_2485D5B98();
      v44 = static Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.== infix(_:_:)();
      sub_2485D642C();
      sub_2485D642C();
      sub_2485DD704(v41, &qword_27EE9E468, &qword_2485DFFF8);
      if (v44)
      {
        goto LABEL_23;
      }

LABEL_24:
      v48 = 0;
      return v48 & 1;
    }

    OUTLINED_FUNCTION_46();
    sub_2485D642C();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_61(v41 + v40, 1, v42);
  if (!v33)
  {
LABEL_21:
    v34 = &qword_27EE9E478;
    v35 = &qword_2485E0000;
    v36 = v41;
    goto LABEL_10;
  }

  sub_2485DD704(v41, &qword_27EE9E468, &qword_2485DFFF8);
LABEL_23:
  v45 = *(v38 + 20);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  sub_2485DD75C(v46, v47);
  v48 = sub_2485DFDA8();
  return v48 & 1;
}

uint64_t sub_2485D8264()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D82C8()
{
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D8324()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D83A0()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_2485DFD68();
  __swift_allocate_value_buffer(v1, qword_27EEA0258);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_56();
  v30 = OUTLINED_FUNCTION_67((v6 & ~v5) - v4 + 8 * v4, v5);
  OUTLINED_FUNCTION_53(v30, xmmword_2485DFFC0);
  v8 = v0 + v7;
  OUTLINED_FUNCTION_70();
  *v8 = "fqn";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_39();
  v12();
  v13 = OUTLINED_FUNCTION_21();
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_62(v13, "timestamp_ms");
  v16 = *MEMORY[0x277D21888];
  (v12)(v15, v16, v10);
  v17 = OUTLINED_FUNCTION_23();
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_62(v17, "request_id");
  (v12)(v19, v16, v10);
  v20 = OUTLINED_FUNCTION_31(3 * v4);
  *v21 = 4;
  v22 = OUTLINED_FUNCTION_85(v20, "topic_override");
  (v12)(v22);
  v23 = (v0 + 4 * v4);
  v24 = v23 + dword_27EEA0290;
  *v23 = 5;
  v25 = OUTLINED_FUNCTION_85(v24, "source_cluster");
  (v12)(v25);
  v26 = OUTLINED_FUNCTION_31(5 * v4);
  *v27 = 6;
  *v26 = "stream";
  *(v26 + 8) = 6;
  *(v26 + 16) = 2;
  OUTLINED_FUNCTION_39();
  v12();
  v28 = (v0 + 6 * v4);
  v29 = v28 + dword_27EEA0290;
  *v28 = 7;
  OUTLINED_FUNCTION_62(v29, "legacyHeaders");
  OUTLINED_FUNCTION_39();
  v12();
  sub_2485DFD58();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
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
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC58();
        break;
      case 3:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      case 7:
        sub_2485DFB98();
        sub_2485DFC08();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_14();
  if (!v6 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v2) == 0))
  {
    if (!v3[2] || (OUTLINED_FUNCTION_87(), result = sub_2485DFD08(), (v0 = v2) == 0))
    {
      v8 = v3[3];
      v9 = v3[4];
      v10 = OUTLINED_FUNCTION_51();
      if (sub_2485D7B00(v10, v11) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), (v0 = v2) == 0))
      {
        v12 = v3[5];
        v13 = v3[6];
        OUTLINED_FUNCTION_14();
        if (!v14 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v2) == 0))
        {
          v15 = v3[7];
          v16 = v3[8];
          OUTLINED_FUNCTION_14();
          if (!v17 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v2) == 0))
          {
            v18 = v3[9];
            v19 = v3[10];
            OUTLINED_FUNCTION_14();
            if (!v20 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v2) == 0))
            {
              if (!*(v3[11] + 16) || (sub_2485DFB98(), result = sub_2485DFCC8(), !v0))
              {
                v21 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
                return OUTLINED_FUNCTION_22();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  if (v1[2] != v0[2] || (MEMORY[0x24C1D3780](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v4 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[7] == v0[7] && v1[8] == v0[8];
  if (!v5 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v6 && (sub_2485DFDC8() & 1) == 0 || (sub_2485DD7A4(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0) + 44);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  sub_2485DD75C(v8, v9);
  return OUTLINED_FUNCTION_28() & 1;
}

uint64_t sub_2485D8A8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D8AF0()
{
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D8B4C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D8BC8()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_2485DFD68();
  __swift_allocate_value_buffer(v1, qword_27EEA0270);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_56();
  v7 = OUTLINED_FUNCTION_67((v6 & ~v5) + 4 * v4, v5);
  OUTLINED_FUNCTION_53(v7, xmmword_2485DFFD0);
  v9 = v0 + v8;
  OUTLINED_FUNCTION_70();
  *v9 = "payload_type";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v11 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 104);
  v13(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_62(v14, "schema_name");
  v13(v16, v10, v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v17);
  v19 = OUTLINED_FUNCTION_62(v18, "schema_fingerprint");
  v13(v19, v10, v11);
  v20 = OUTLINED_FUNCTION_31(3 * v4);
  *v21 = 4;
  v22 = OUTLINED_FUNCTION_62(v20, "body");
  v13(v22, *MEMORY[0x277D21870], v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2485DDA70();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (v16 = *v0, v17 = *(v2 + 8), sub_2485DDA70(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_14();
    if (!v6 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v9 = OUTLINED_FUNCTION_51();
      if (sub_2485D7B00(v9, v10) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
      {
        v11 = *(v2 + 48);
        v12 = *(v2 + 56);
        v13 = OUTLINED_FUNCTION_51();
        if (sub_2485D7B00(v13, v14) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
        {
          v15 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
          return OUTLINED_FUNCTION_22();
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_89(v2, v3);
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
  if (v6 || (sub_2485DFDC8()) && (MEMORY[0x24C1D3780](v1[4], v1[5], v0[4], v0[5]) & 1) != 0 && (MEMORY[0x24C1D3780](v1[6], v1[7], v0[6], v0[7]))
  {
    v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0) + 32);
    sub_2485DFBC8();
    OUTLINED_FUNCTION_6();
    sub_2485DD75C(v8, v9);
    return OUTLINED_FUNCTION_28() & 1;
  }

  return 0;
}

uint64_t sub_2485D9130()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D9194()
{
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D91F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D926C()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_2485DFD68();
  __swift_allocate_value_buffer(v1, &qword_27EEA0288);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_56();
  v7 = OUTLINED_FUNCTION_67((v6 & ~v5) + 4 * v4, v5);
  OUTLINED_FUNCTION_53(v7, xmmword_2485DFFD0);
  v9 = v0 + v8;
  OUTLINED_FUNCTION_70();
  *v9 = "index";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_39();
  v13();
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_62(v14, "request_id");
  (v13)(v16, *MEMORY[0x277D21888], v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v17);
  *v18 = "code";
  *(v18 + 8) = 4;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_39();
  v13();
  v19 = OUTLINED_FUNCTION_31(3 * v4);
  *v20 = 4;
  OUTLINED_FUNCTION_62(v19, "message");
  OUTLINED_FUNCTION_39();
  v13();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_19();
        sub_2485DFC48();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      case 3:
        sub_2485DDAC4();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
      case 4:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (OUTLINED_FUNCTION_87(), result = sub_2485DFCF8(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = OUTLINED_FUNCTION_51();
    if (sub_2485D7B00(v6, v7) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
    {
      if (!*(v2 + 24) || (v12 = *(v2 + 24), v13 = *(v2 + 32), sub_2485DDAC4(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
      {
        v8 = *(v2 + 40);
        v9 = *(v2 + 48);
        OUTLINED_FUNCTION_14();
        if (!v10 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
        {
          v11 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
          return OUTLINED_FUNCTION_22();
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventError.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_60();
    if (MEMORY[0x24C1D3780](*(v4 + 8), v3[2], *(v2 + 8), *(v2 + 16)))
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
        if (v7 || (sub_2485DFDC8() & 1) != 0)
        {
          v8 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0) + 32);
          sub_2485DFBC8();
          OUTLINED_FUNCTION_6();
          sub_2485DD75C(v9, v10);
          return OUTLINED_FUNCTION_28() & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2485D9824()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D988C()
{
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D98E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D9968()
{
  OUTLINED_FUNCTION_42();
  v0 = sub_2485DFD68();
  __swift_allocate_value_buffer(v0, qword_27EEA02A0);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_56();
  v6 = v5 & ~v4;
  v7 = OUTLINED_FUNCTION_67(v6 + 2 * v3, v4);
  OUTLINED_FUNCTION_24(v7, xmmword_2485DFFE0);
  OUTLINED_FUNCTION_70();
  *v6 = "events";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_34();
  v11(v12);
  v13 = OUTLINED_FUNCTION_21();
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_62(v13, "request_id");
  (v11)(v15, *MEMORY[0x277D21888], v9);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_19();
      sub_2485DFC38();
    }

    else if (result == 1)
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
      OUTLINED_FUNCTION_1();
      sub_2485DD75C(&qword_27EE9E4C0, v3);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27();
      sub_2485DFC78();
    }
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0), OUTLINED_FUNCTION_1(), sub_2485DD75C(v3, v4), OUTLINED_FUNCTION_18(), result = sub_2485DFD28(), !v1))
  {
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    v8 = OUTLINED_FUNCTION_51();
    if (sub_2485D7B00(v8, v9) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
    {
      v10 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
      return OUTLINED_FUNCTION_22();
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  if ((sub_2485DAF58(*v2, *v3) & 1) == 0 || (MEMORY[0x24C1D3780](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0) + 24);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  sub_2485DD75C(v5, v6);
  return OUTLINED_FUNCTION_28() & 1;
}

uint64_t sub_2485D9DC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D9E2C()
{
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D9E88()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D9F04()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_2485DFD68();
  __swift_allocate_value_buffer(v1, qword_27EEA02B8);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v5, xmmword_2485DFFB0);
  OUTLINED_FUNCTION_70();
  *v0 = "status";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2485DFD48();
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_34();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_21();
  *v12 = 2;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v9();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v13);
  *v14 = "errors";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v9();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t sub_2485DA09C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2485DFD68();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
        OUTLINED_FUNCTION_3();
        sub_2485DD75C(&qword_27EE9E4D8, v3);
        OUTLINED_FUNCTION_27();
        sub_2485DFC78();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 1:
        sub_2485DDB18();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
    }
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (v10 = *v0, v11 = *(v2 + 8), sub_2485DDB18(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_14();
    if (!v6 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0), OUTLINED_FUNCTION_3(), sub_2485DD75C(v7, v8), OUTLINED_FUNCTION_18(), result = sub_2485DFD28(), !v1))
      {
        v9 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
        return OUTLINED_FUNCTION_22();
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_89(v2, v3);
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
  if (v6 || (sub_2485DFDC8()) && (sub_2485DA6C8(v1[4], v0[4]))
  {
    v7 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0) + 28);
    sub_2485DFBC8();
    OUTLINED_FUNCTION_6();
    sub_2485DD75C(v8, v9);
    return OUTLINED_FUNCTION_28() & 1;
  }

  return 0;
}

uint64_t sub_2485DA450(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2485DFDD8();
  a1(0);
  sub_2485DD75C(a2, a3);
  sub_2485DFD98();
  return sub_2485DFDE8();
}

uint64_t sub_2485DA550()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485DA5B4()
{
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485DA610()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

uint64_t sub_2485DA670()
{
  sub_2485DFDD8();
  sub_2485DFD98();
  return sub_2485DFDE8();
}

uint64_t sub_2485DA6C8(uint64_t a1, uint64_t a2)
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
      sub_2485D63D4();
      v33 = v13;
      sub_2485D63D4();
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
      if (!v25 && (sub_2485DFDC8() & 1) == 0)
      {
        break;
      }

      v26 = *(v32 + 32);
      sub_2485DFBC8();
      sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8]);
      v27 = sub_2485DFDA8();
      sub_2485D642C();
      sub_2485D642C();
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
    sub_2485D642C();
    sub_2485D642C();
  }

  v27 = 0;
LABEL_49:
  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

uint64_t sub_2485DAF58(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v190 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E478, &qword_2485E0000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v201 = &v190 - v14;
  v200 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v15 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v204 = (&v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v199 = &v190 - v19;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E480, &qword_2485E0008);
  v20 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v203 = &v190 - v21;
  v206 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v22 = *(*(v206 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v206);
  v25 = (&v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    goto LABEL_268;
  }

  if (!v28 || a1 == a2)
  {
    v182 = 1;
    goto LABEL_269;
  }

  v191 = 0;
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = a1 + v29;
  v202 = a2 + v29;
  v192 = *(v26 + 72);
  v193 = v12;
  v194 = v25;
  v195 = v4;
  v205 = (&v190 - v27);
  while (2)
  {
    sub_2485D63D4();
    v197 = v30;
    sub_2485D63D4();
    v31 = v206[6];
    v32 = *(v198 + 48);
    v33 = v203;
    sub_2485D5928();
    v34 = v33;
    sub_2485D5928();
    v35 = v33;
    v36 = v200;
    if (__swift_getEnumTagSinglePayload(v35, 1, v200) == 1)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34 + v32, 1, v36);
      v38 = v195;
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_263;
      }

      sub_2485DD704(v34, &qword_27EE9E460, &qword_2485DFFF0);
      goto LABEL_176;
    }

    v39 = v34;
    v40 = v199;
    sub_2485D5928();
    if (__swift_getEnumTagSinglePayload(v39 + v32, 1, v36) == 1)
    {
      sub_2485D642C();
      v34 = v39;
LABEL_263:
      v186 = &qword_27EE9E480;
      v187 = &qword_2485E0008;
LABEL_266:
      sub_2485DD704(v34, v186, v187);
      goto LABEL_267;
    }

    v41 = v204;
    sub_2485D5B98();
    v42 = *v40;
    v43 = *v41;
    v44 = v40;
    if (*(v41 + 8) == 1)
    {
      v38 = v195;
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
      v38 = v195;
      if (v42 != v43)
      {
        goto LABEL_260;
      }
    }

    v45 = v40[2] == v204[2] && v40[3] == v204[3];
    if (!v45)
    {
      v46 = sub_2485DFDC8();
      v44 = v199;
      if ((v46 & 1) == 0)
      {
        goto LABEL_260;
      }
    }

    v47 = v44[4];
    v48 = v44[5];
    v49 = v48 >> 62;
    v51 = v204[4];
    v50 = v204[5];
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
LABEL_314:
          JUMPOUT(0);
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
          sub_2485D6480(v51, v50);
          sub_2485D6480(v51, v50);
          sub_2485D6480(v51, v50);
          v68 = sub_2485DFB58();
          if (!v68)
          {
            goto LABEL_75;
          }

          v77 = sub_2485DFB78();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_288;
          }

          v68 += v76 - v77;
LABEL_75:
          sub_2485DFB68();
          v78 = v68;
          v79 = v191;
          sub_2485DF12C(v78, v51, v50, __s1);
          v191 = v79;
          sub_2485D64D8(v51, v50);
          sub_2485D64D8(v51, v50);
          sub_2485D64D8(v51, v50);
          v38 = v195;
          v44 = v199;
          v36 = v200;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_260;
          }

          break;
        case 2:
          v67 = *(v47 + 16);
          v66 = *(v47 + 24);
          sub_2485D6480(v51, v50);
          sub_2485D6480(v51, v50);
          sub_2485D6480(v51, v50);
          v68 = sub_2485DFB58();
          if (!v68)
          {
            goto LABEL_63;
          }

          v69 = sub_2485DFB78();
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
            sub_2485D6480(v51, v50);
            v72 = sub_2485DFB58();
            if (v72)
            {
              v73 = v72;
              v74 = sub_2485DFB78();
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

            v90 = sub_2485DFB68();
            v38 = v195;
            v36 = v200;
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
            sub_2485D64D8(v51, v50);
            v44 = v199;
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

            sub_2485D6480(v51, v50);
            v62 = sub_2485DFB58();
            if (v62)
            {
              v81 = sub_2485DFB78();
              if (__OFSUB__(v51, v81))
              {
                goto LABEL_303;
              }

              v62 += v51 - v81;
            }

            v64 = sub_2485DFB68();
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
              MEMORY[0x24C1D3A80](*(v65 - 32));
              __break(1u);
              JUMPOUT(0x2485DC8A4);
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
            sub_2485D64D8(v51, v50);
            v44 = v199;
            v38 = v195;
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
            v208 = v50;
            v209 = BYTE2(v50);
            v210 = BYTE3(v50);
            v211 = BYTE4(v50);
            v212 = BYTE5(v50);
            v80 = memcmp(__s1, &__s2, BYTE6(v50));
            v44 = v199;
            v38 = v195;
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

            sub_2485D6480(v51, v50);
            v62 = sub_2485DFB58();
            if (v62)
            {
              v63 = sub_2485DFB78();
              if (__OFSUB__(v51, v63))
              {
                goto LABEL_304;
              }

              v62 += v51 - v63;
            }

            v64 = sub_2485DFB68();
            if (!v62)
            {
              goto LABEL_310;
            }

            goto LABEL_84;
          }

          v84 = *(v51 + 16);
          v85 = *(v51 + 24);
          sub_2485D6480(v51, v50);
          v86 = sub_2485DFB58();
          if (v86)
          {
            v87 = v86;
            v88 = sub_2485DFB78();
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

          v90 = sub_2485DFB68();
          v38 = v195;
          v36 = v200;
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
    v97 = v204[6];
    v96 = v204[7];
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
        sub_2485D6480(v97, v96);
        sub_2485D6480(v97, v96);
        sub_2485D6480(v97, v96);
        v114 = sub_2485DFB58();
        if (!v114)
        {
          goto LABEL_156;
        }

        v120 = sub_2485DFB78();
        if (__OFSUB__(v119, v120))
        {
          goto LABEL_290;
        }

        v114 += v119 - v120;
LABEL_156:
        sub_2485DFB68();
        v121 = v114;
        v122 = v191;
        sub_2485DF12C(v121, v97, v96, __s1);
        v191 = v122;
        sub_2485D64D8(v97, v96);
        sub_2485D64D8(v97, v96);
        sub_2485D64D8(v97, v96);
        v38 = v195;
        v36 = v200;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      case 2:
        v113 = *(v93 + 16);
        v112 = *(v93 + 24);
        sub_2485D6480(v97, v96);
        sub_2485D6480(v97, v96);
        sub_2485D6480(v97, v96);
        v114 = sub_2485DFB58();
        if (!v114)
        {
          goto LABEL_146;
        }

        v115 = sub_2485DFB78();
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
          sub_2485D6480(v97, v96);
          sub_2485D6480(v97, v96);
          v117 = v96 & 0x3FFFFFFFFFFFFFFFLL;
          v118 = v116;
        }

        else
        {
          if (v106 < v97)
          {
            goto LABEL_297;
          }

          sub_2485D6480(v97, v96);
          sub_2485D6480(v97, v96);
          v117 = v96 & 0x3FFFFFFFFFFFFFFFLL;
          v118 = v97;
        }

        v124 = v106;
        v125 = v191;
        v126 = sub_2485DF2A8(v118, v124, v117, __s1);
        sub_2485D64D8(v97, v96);
        sub_2485D64D8(v97, v96);
        v65 = &v214;
        v191 = v125;
        if (v125)
        {
          goto LABEL_313;
        }

        v38 = v195;
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
          v208 = v96;
          v209 = BYTE2(v96);
          v210 = BYTE3(v96);
          v211 = BYTE4(v96);
          v212 = BYTE5(v96);
          v123 = memcmp(__s1, &__s2, BYTE6(v96));
          v38 = v195;
          if (v123)
          {
            goto LABEL_260;
          }

LABEL_175:
          v137 = *(v36 + 32);
          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8]);
          LOBYTE(v137) = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          sub_2485DD704(v203, &qword_27EE9E460, &qword_2485DFFF0);
          v12 = v193;
          v25 = v194;
          if ((v137 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_176:
          if ((sub_2485DC934(*v205, *v25) & 1) == 0)
          {
            goto LABEL_267;
          }

          v138 = v7;
          v196 = v28;
          v139 = v206[7];
          v140 = *(v12 + 48);
          v34 = v201;
          sub_2485D5928();
          sub_2485D5928();
          if (__swift_getEnumTagSinglePayload(v34, 1, v38) == 1)
          {
            if (__swift_getEnumTagSinglePayload(v34 + v140, 1, v38) != 1)
            {
              goto LABEL_265;
            }

            sub_2485DD704(v34, &qword_27EE9E468, &qword_2485DFFF8);
            v141 = v196;
            v7 = v138;
            goto LABEL_255;
          }

          sub_2485D5928();
          v142 = v38;
          if (__swift_getEnumTagSinglePayload(v34 + v140, 1, v38) == 1)
          {
            sub_2485D642C();
LABEL_265:
            v186 = &qword_27EE9E478;
            v187 = &qword_2485E0000;
            goto LABEL_266;
          }

          v7 = v138;
          sub_2485D5B98();
          v143 = *v11 == *v138 && v11[1] == v138[1];
          v144 = v196;
          if (!v143 && (sub_2485DFDC8() & 1) == 0 || (v145 = v11[2], v146 = v7[2], v147 = v145 == v146, v145 != v146))
          {
LABEL_259:
            sub_2485D642C();
            sub_2485D642C();
            v183 = &qword_27EE9E468;
            v184 = &qword_2485DFFF8;
            v185 = v201;
            goto LABEL_261;
          }

          v148 = v11[3];
          v149 = v11[4];
          v150 = v149 >> 62;
          v152 = v7[3];
          v151 = v7[4];
          v153 = v151 >> 62;
          if (!v147)
          {
            v155 = 0;
            switch(v150)
            {
              case 0uLL:
                v155 = BYTE6(v149);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v148), v148))
                {
                  goto LABEL_280;
                }

                v155 = HIDWORD(v148) - v148;
                break;
              case 2uLL:
                v157 = *(v148 + 16);
                v156 = *(v148 + 24);
                v57 = __OFSUB__(v156, v157);
                v155 = v156 - v157;
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
            switch(v153)
            {
              case 1uLL:
                LODWORD(v158) = HIDWORD(v152) - v152;
                if (__OFSUB__(HIDWORD(v152), v152))
                {
                  goto LABEL_273;
                }

                v158 = v158;
LABEL_212:
                if (v155 != v158)
                {
                  goto LABEL_259;
                }

                if (v155 < 1)
                {
                  goto LABEL_238;
                }

                break;
              case 2uLL:
                v160 = *(v152 + 16);
                v159 = *(v152 + 24);
                v57 = __OFSUB__(v159, v160);
                v158 = v159 - v160;
                if (!v57)
                {
                  goto LABEL_212;
                }

                goto LABEL_274;
              case 3uLL:
                if (v155)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                v158 = BYTE6(v151);
                goto LABEL_212;
            }

            switch(v150)
            {
              case 1:
                if (v148 >> 32 < v148)
                {
                  goto LABEL_285;
                }

                v169 = v148;
                sub_2485D6480(v7[3], v7[4]);
                sub_2485D6480(v152, v151);
                sub_2485D6480(v152, v151);
                v166 = sub_2485DFB58();
                if (!v166)
                {
                  goto LABEL_231;
                }

                v170 = sub_2485DFB78();
                if (__OFSUB__(v169, v170))
                {
                  goto LABEL_292;
                }

                v166 += v169 - v170;
LABEL_231:
                sub_2485DFB68();
                v171 = v166;
                v172 = v191;
                sub_2485DF12C(v171, v152, v151, __s1);
                v191 = v172;
                sub_2485D64D8(v152, v151);
                sub_2485D64D8(v152, v151);
                sub_2485D64D8(v152, v151);
                v38 = v195;
                if ((__s1[0] & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              case 2:
                v165 = *(v148 + 16);
                v164 = *(v148 + 24);
                sub_2485D6480(v7[3], v7[4]);
                sub_2485D6480(v152, v151);
                sub_2485D6480(v152, v151);
                v166 = sub_2485DFB58();
                if (!v166)
                {
                  goto LABEL_222;
                }

                v167 = sub_2485DFB78();
                if (__OFSUB__(v165, v167))
                {
                  goto LABEL_291;
                }

                v166 += v165 - v167;
LABEL_222:
                if (!__OFSUB__(v164, v165))
                {
                  goto LABEL_231;
                }

                goto LABEL_286;
              case 3:
                memset(__s1, 0, 14);
                sub_2485D6480(v152, v151);
                sub_2485D6480(v152, v151);
                v168 = v191;
                sub_2485DF12C(__s1, v152, v151, &__s2);
                v191 = v168;
                v38 = v142;
                sub_2485D64D8(v152, v151);
                sub_2485D64D8(v152, v151);
                if ((__s2 & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                LOWORD(__s1[0]) = v11[3];
                BYTE2(__s1[0]) = BYTE2(v148);
                BYTE3(__s1[0]) = BYTE3(v148);
                BYTE4(__s1[0]) = BYTE4(v148);
                BYTE5(__s1[0]) = BYTE5(v148);
                BYTE6(__s1[0]) = BYTE6(v148);
                HIBYTE(__s1[0]) = HIBYTE(v148);
                LOWORD(__s1[1]) = v149;
                BYTE2(__s1[1]) = BYTE2(v149);
                BYTE3(__s1[1]) = BYTE3(v149);
                BYTE4(__s1[1]) = BYTE4(v149);
                BYTE5(__s1[1]) = BYTE5(v149);
                if (v153)
                {
                  if (v153 == 1)
                  {
                    if (v152 >> 32 < v152)
                    {
                      goto LABEL_300;
                    }

                    sub_2485D6480(v152, v151);
                    sub_2485D6480(v152, v151);
                    v161 = v151 & 0x3FFFFFFFFFFFFFFFLL;
                    v162 = v152;
                    v163 = v152 >> 32;
                  }

                  else
                  {
                    v173 = *(v152 + 16);
                    v174 = *(v152 + 24);
                    sub_2485D6480(v152, v151);
                    sub_2485D6480(v152, v151);
                    v161 = v151 & 0x3FFFFFFFFFFFFFFFLL;
                    v162 = v173;
                    v163 = v174;
                  }

                  v175 = v191;
                  v176 = sub_2485DF2A8(v162, v163, v161, __s1);
                  sub_2485D64D8(v152, v151);
                  sub_2485D64D8(v152, v151);
                  v65 = &v214;
                  v191 = v175;
                  if (v175)
                  {
                    goto LABEL_313;
                  }

                  v38 = v195;
                  if ((v176 & 1) == 0)
                  {
                    goto LABEL_259;
                  }
                }

                else
                {
                  __s2 = v152;
                  v208 = v151;
                  v209 = BYTE2(v151);
                  v210 = BYTE3(v151);
                  v211 = BYTE4(v151);
                  v212 = BYTE5(v151);
                  if (memcmp(__s1, &__s2, BYTE6(v151)))
                  {
                    goto LABEL_259;
                  }
                }

                break;
            }

            goto LABEL_238;
          }

          v155 = 0;
          if (v148)
          {
            goto LABEL_203;
          }

          if (v149 != 0xC000000000000000 || v151 >> 62 != 3)
          {
            goto LABEL_203;
          }

          v155 = 0;
          if (v152 || v151 != 0xC000000000000000)
          {
            goto LABEL_203;
          }

LABEL_238:
          v177 = v11[5] == v7[5] && v11[6] == v7[6];
          if (!v177 && (sub_2485DFDC8() & 1) == 0)
          {
            goto LABEL_259;
          }

          v178 = v11[7] == v7[7] && v11[8] == v7[8];
          if (!v178 && (sub_2485DFDC8() & 1) == 0)
          {
            goto LABEL_259;
          }

          v179 = v11[9] == v7[9] && v11[10] == v7[10];
          if (!v179 && (sub_2485DFDC8() & 1) == 0 || (sub_2485DD7A4(v11[11], v7[11]) & 1) == 0)
          {
            goto LABEL_259;
          }

          v180 = *(v38 + 44);
          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8]);
          LOBYTE(v180) = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          sub_2485DD704(v201, &qword_27EE9E468, &qword_2485DFFF8);
          v12 = v193;
          v25 = v194;
          v141 = v144;
          if ((v180 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_255:
          v181 = v206[5];
          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8]);
          v182 = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          if ((v182 & 1) == 0)
          {
            goto LABEL_269;
          }

          v202 += v192;
          v30 = v197 + v192;
          v28 = v141 - 1;
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

          sub_2485D6480(v97, v96);
          v107 = sub_2485DFB58();
          if (v107)
          {
            v108 = sub_2485DFB78();
            if (__OFSUB__(v97, v108))
            {
              goto LABEL_306;
            }

            v107 += v97 - v108;
          }

          v109 = sub_2485DFB68();
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
          sub_2485D64D8(v97, v96);
          v38 = v195;
          if (v111)
          {
            goto LABEL_260;
          }

          goto LABEL_175;
        }

        v127 = *(v97 + 16);
        v128 = *(v97 + 24);
        sub_2485D6480(v97, v96);
        v129 = sub_2485DFB58();
        if (v129)
        {
          v130 = v129;
          v131 = sub_2485DFB78();
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

        v134 = sub_2485DFB68();
        v38 = v195;
        v36 = v200;
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
        sub_2485D64D8(v97, v96);
        if (!v136)
        {
          goto LABEL_175;
        }

LABEL_260:
        sub_2485D642C();
        sub_2485D642C();
        v183 = &qword_27EE9E460;
        v184 = &qword_2485DFFF0;
        v185 = v203;
LABEL_261:
        sub_2485DD704(v185, v183, v184);
LABEL_267:
        sub_2485D642C();
        sub_2485D642C();
LABEL_268:
        v182 = 0;
LABEL_269:
        v188 = *MEMORY[0x277D85DE8];
        return v182 & 1;
    }
  }
}

uint64_t sub_2485DC934(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v102 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v4 = *(*(v102 - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
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
        sub_2485D63D4();
        sub_2485D63D4();
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
        if (!v19 && (sub_2485DFDC8() & 1) == 0)
        {
LABEL_181:
          sub_2485D642C();
          sub_2485D642C();
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
LABEL_224:
              JUMPOUT(0);
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
              sub_2485D6480(v24, v23);
              sub_2485D6480(v24, v23);
              sub_2485D6480(v24, v23);
              v49 = sub_2485DFB58();
              if (!v49)
              {
                goto LABEL_75;
              }

              v50 = sub_2485DFB78();
              if (__OFSUB__(v48, v50))
              {
                goto LABEL_196;
              }

              v49 += v48 - v50;
LABEL_75:
              sub_2485DFB68();
              v51 = v100;
              sub_2485DF12C(v49, v24, v23, __s1);
              sub_2485D64D8(v24, v23);
              sub_2485D64D8(v24, v23);
              sub_2485D64D8(v24, v23);
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
              sub_2485D6480(v24, v23);
              sub_2485D6480(v24, v23);
              sub_2485D6480(v24, v23);
              v39 = sub_2485DFB58();
              if (!v39)
              {
                goto LABEL_59;
              }

              v40 = sub_2485DFB78();
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

              sub_2485DFB68();
              v41 = v100;
              sub_2485DF12C(v39, v24, v23, __s1);
              sub_2485D64D8(v24, v23);
              sub_2485D64D8(v24, v23);
              sub_2485D64D8(v24, v23);
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
                sub_2485D6480(v24, v23);
                v44 = sub_2485DFB58();
                if (v44)
                {
                  v45 = sub_2485DFB78();
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

                v47 = sub_2485DFB68();
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

                sub_2485D6480(v24, v23);
                v35 = sub_2485DFB58();
                if (v35)
                {
                  v52 = sub_2485DFB78();
                  if (__OFSUB__(v24, v52))
                  {
                    goto LABEL_209;
                  }

                  v35 += v24 - v52;
                }

                v37 = sub_2485DFB68();
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
              sub_2485D64D8(v24, v23);
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

                sub_2485D6480(v24, v23);
                v35 = sub_2485DFB58();
                if (v35)
                {
                  v36 = sub_2485DFB78();
                  if (__OFSUB__(v24, v36))
                  {
                    goto LABEL_210;
                  }

                  v35 += v24 - v36;
                }

                v37 = sub_2485DFB68();
                if (!v35)
                {
                  goto LABEL_216;
                }

                goto LABEL_85;
              }

              v55 = *(v24 + 16);
              v56 = *(v24 + 24);
              sub_2485D6480(v24, v23);
              v44 = sub_2485DFB58();
              if (v44)
              {
                v57 = sub_2485DFB78();
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

              v47 = sub_2485DFB68();
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
                MEMORY[0x24C1D3A80](v100);
                __break(1u);
                JUMPOUT(0x2485DD6A4);
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
            sub_2485D6480(v63, v62);
            sub_2485D6480(v63, v62);
            sub_2485D6480(v63, v62);
            v77 = sub_2485DFB58();
            if (!v77)
            {
              goto LABEL_155;
            }

            v85 = sub_2485DFB78();
            if (__OFSUB__(v99, v85))
            {
              goto LABEL_198;
            }

            v77 += v99 - v85;
LABEL_155:
            sub_2485DFB68();
            v86 = v100;
            sub_2485DF12C(v77, v63, v62, __s1);
            sub_2485D64D8(v63, v62);
            sub_2485D64D8(v63, v62);
            sub_2485D64D8(v63, v62);
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
            sub_2485D6480(v63, v62);
            sub_2485D6480(v63, v62);
            sub_2485D6480(v63, v62);
            v77 = sub_2485DFB58();
            if (!v77)
            {
              goto LABEL_138;
            }

            v78 = sub_2485DFB78();
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
              sub_2485D6480(v63, v62);
              v81 = sub_2485DFB58();
              if (v81)
              {
                v82 = sub_2485DFB78();
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

              v84 = sub_2485DFB68();
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

            sub_2485D6480(v63, v62);
            v73 = sub_2485DFB58();
            if (v73)
            {
              v87 = sub_2485DFB78();
              if (__OFSUB__(v63, v87))
              {
                goto LABEL_214;
              }

              v73 += v63 - v87;
            }

            v75 = sub_2485DFB68();
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

                sub_2485D6480(v63, v62);
                v73 = sub_2485DFB58();
                if (v73)
                {
                  v74 = sub_2485DFB78();
                  if (__OFSUB__(v63, v74))
                  {
                    goto LABEL_213;
                  }

                  v73 += v63 - v74;
                }

                v75 = sub_2485DFB68();
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
                sub_2485D6480(v63, v62);
                v81 = sub_2485DFB58();
                if (v81)
                {
                  v92 = sub_2485DFB78();
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

                v84 = sub_2485DFB68();
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
              sub_2485D64D8(v63, v62);
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
        sub_2485DFBC8();
        sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8]);
        v95 = sub_2485DFDA8();
        sub_2485D642C();
        sub_2485D642C();
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

uint64_t sub_2485DD704(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2485DD75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2485DD7A4(uint64_t result, uint64_t a2)
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

    v20 = sub_2485DD944(v15, v16);
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
      v25 = sub_2485DFDC8();

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

unint64_t sub_2485DD944(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2485DFDD8();
  sub_2485DFDB8();
  v6 = sub_2485DFDE8();

  return sub_2485DD9BC(a1, a2, v6);
}

unint64_t sub_2485DD9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2485DFDC8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2485DDA70()
{
  result = qword_27EE9E4A0;
  if (!qword_27EE9E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4A0);
  }

  return result;
}

unint64_t sub_2485DDAC4()
{
  result = qword_27EE9E4B0;
  if (!qword_27EE9E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4B0);
  }

  return result;
}

unint64_t sub_2485DDB18()
{
  result = qword_27EE9E4D0;
  if (!qword_27EE9E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4D0);
  }

  return result;
}

unint64_t sub_2485DDB70()
{
  result = qword_27EE9E4E8;
  if (!qword_27EE9E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4E8);
  }

  return result;
}

unint64_t sub_2485DDBC8()
{
  result = qword_27EE9E4F0;
  if (!qword_27EE9E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4F0);
  }

  return result;
}

unint64_t sub_2485DDC20()
{
  result = qword_27EE9E4F8;
  if (!qword_27EE9E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4F8);
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

unint64_t sub_2485DDCF0()
{
  result = qword_27EE9E510;
  if (!qword_27EE9E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E510);
  }

  return result;
}

unint64_t sub_2485DDD48()
{
  result = qword_27EE9E518;
  if (!qword_27EE9E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E518);
  }

  return result;
}

unint64_t sub_2485DDDA0()
{
  result = qword_27EE9E520;
  if (!qword_27EE9E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E520);
  }

  return result;
}

unint64_t sub_2485DDE28()
{
  result = qword_27EE9E538;
  if (!qword_27EE9E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E538);
  }

  return result;
}

unint64_t sub_2485DDE80()
{
  result = qword_27EE9E540;
  if (!qword_27EE9E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E540);
  }

  return result;
}

unint64_t sub_2485DDED8()
{
  result = qword_27EE9E548;
  if (!qword_27EE9E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E548);
  }

  return result;
}

uint64_t sub_2485DDF5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_81(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode(uint64_t result, int a2, int a3)
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

uint64_t sub_2485DE560(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_81(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485DE574(uint64_t result, int a2)
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

uint64_t sub_2485DE5C8()
{
  OUTLINED_FUNCTION_30();
  if (v3)
  {
    return OUTLINED_FUNCTION_17(*v1);
  }

  v5 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
    OUTLINED_FUNCTION_88(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
      v7 = v2[7];
    }
  }

  v10 = OUTLINED_FUNCTION_43(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_2485DE6D8()
{
  OUTLINED_FUNCTION_16();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_2485DFBC8();
    OUTLINED_FUNCTION_88(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
      OUTLINED_FUNCTION_88(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
        v9 = v5[7];
      }
    }

    v12 = OUTLINED_FUNCTION_29(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

void sub_2485DE7E0()
{
  OUTLINED_FUNCTION_48();
  sub_2485DE8F8(319, v0, v1, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_48();
      sub_2485DE8F8(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        sub_2485DE8F8(319, &qword_27EE9E5E8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_73();
        }
      }
    }
  }
}

void sub_2485DE8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2485DE970()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 8));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DE9E8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 44));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DEA4C()
{
  sub_2485DEAF0();
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

void sub_2485DEAF0()
{
  if (!qword_27EE9E5F0)
  {
    v0 = sub_2485DFD88();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9E5F0);
    }
  }
}

uint64_t sub_2485DEB60()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 24));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DEBD8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2485DEC70()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 48));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DECE8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2485DED70()
{
  result = sub_2485DFBC8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_35();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_73();
  }

  return result;
}

uint64_t sub_2485DEDF0()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*v0);
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DEE68()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DEECC()
{
  sub_2485DE8F8(319, &qword_27EE9E5F8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

uint64_t sub_2485DEF90()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 24));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DF008()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DF06C()
{
  sub_2485DE8F8(319, &qword_27EE9E600, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

uint64_t sub_2485DF12C@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
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
      result = sub_2485DF2A8(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x24C1D3A80](v4);
        __break(1u);
        JUMPOUT(0x2485DF298);
      }

      result = 1;
      break;
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

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2485DF2A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2485DFB58();
  v8 = result;
  if (result)
  {
    result = sub_2485DFB78();
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

  result = sub_2485DFB68();
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

uint64_t OUTLINED_FUNCTION_17@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

__n128 *OUTLINED_FUNCTION_24(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v3 + *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{
  v4 = *(v0 + 80);

  return MEMORY[0x2821FE7E8](v1, ((v4 + 32) & ~v4) + 3 * v2, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_2485DFDA8();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
}

__n128 *OUTLINED_FUNCTION_53(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_2485DFBC8();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return MEMORY[0x28217E258](v1, v0);
}

uint64_t OUTLINED_FUNCTION_62@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_65(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_67@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FE7E8](v2, a1, a2 | 7);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_2485DFD58();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2485DFBC8();
}

uint64_t OUTLINED_FUNCTION_85@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t *OUTLINED_FUNCTION_89(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v6 - 72);

  return MEMORY[0x28217E570](a1, a2, v5, a4, v4, v8);
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_2485DFD98();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2485D5928();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_2485D5928();
}