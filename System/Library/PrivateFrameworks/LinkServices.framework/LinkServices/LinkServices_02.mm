id sub_197672084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v18 = &v11[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_completionHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v11[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_enumIdentifier];
  *v19 = a7;
  *(v19 + 1) = a8;
  *v18 = a9;
  *(v18 + 1) = a10;

  v20 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_48;
  v21 = _Block_copy(aBlock);

  v25.receiver = v11;
  v25.super_class = type metadata accessor for LNFetchEnumURLsOperation();
  v22 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v20, a2, a3, a4, v21);
  _Block_release(v21);

  swift_unknownObjectRelease();

  v23 = sub_19774EBF0();
  (*(*(v23 - 8) + 8))(a1, v23);
  return v22;
}

void sub_19767221C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LNFetchEnumURLsOperation();
  objc_msgSendSuper2(&v9, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_enumIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_enumIdentifier + 8];

  v4 = sub_19774EF20();

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v8[4] = sub_197672898;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_197672370;
  v8[3] = &block_descriptor_4;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v1 fetchURLsForEnumWithIdentifier:v4 completionHandler:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

void sub_197672370(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_19774EAD0();
  v6 = sub_19774EE30();

  v7 = a3;
  v5(v6, a3);
}

void sub_197672468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_19764781C(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LNFetchEnumURLsOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

void sub_197672530(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712124LNFetchEnumURLsOperation_completionHandler];
  if (v5)
  {
    v6 = v4[1];

    v5(0, a1);
    sub_19764781C(v5);
    v7 = *v4;
    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v7);
  }

  if (a1)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for LNFetchEnumURLsOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

uint64_t sub_1976726C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const void *a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(char *, uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v14 = sub_19774EBF0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a7);
  sub_19774EBC0();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  swift_unknownObjectRetain();
  return a10(v17, a4, a5, a6, a9, v19);
}

id sub_1976727E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1976729BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0x4449656C646E7562, 0xE800000000000000, v0, v1);
}

uint64_t sub_197672A40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v1 = sub_1976496B4(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  return sub_197649708(7107189, 0xE300000000000000, v0, v1);
}

uint64_t sub_197672ABC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
  v1 = sub_1976496B4(&qword_1EAF3F0A8, &qword_1EAF3F960, &unk_19775FC00);
  return sub_197649708(0xD000000000000011, 0x8000000197760E80, v0, v1);
}

uint64_t sub_197672B44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v1 = sub_1976496B4(&qword_1EAF3F418, &qword_1EAF3F758, &qword_19775A800);
  return sub_197649708(0xD000000000000013, 0x8000000197760E60, v0, v1);
}

uint64_t sub_197672BCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v1 = sub_1976496B4(&qword_1EAF3F418, &qword_1EAF3F758, &qword_19775A800);
  return sub_197649708(0x617461646174656DLL, 0xEF6E6F6973726556, v0, v1);
}

uint64_t sub_197672C5C()
{
  if (qword_1ED697000 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  memcpy(__dst, &unk_1EAF43D20, sizeof(__dst));
  if (qword_1ED696E70 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v1 = sub_1976B7FC0();
  v3 = v2;
  v5 = v4;
  v13[0] = swift_allocObject();
  memcpy(v12, __dst, sizeof(v12));
  sub_1976BB434(v1, v3, v5, &unk_1F0BBACF0, &off_1F0BBAB00, v6, v7, v8, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], v13[0], v13[1], v13[2], &unk_1F0BBACF0, &off_1F0BBAB00, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);

  sub_19764C978(v13);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v0)
  {
    type metadata accessor for LNBundleRecord();

    sub_1976BF5D8();
    v3 = v10;
  }

  return v3;
}

uint64_t sub_197672E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  if (qword_1ED697008 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v11 = v25;
  v10 = v26;
  if (qword_1EAF3F400 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF43D08, unk_1EAF43D10, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v25);
  v12 = v26;
  if (qword_1ED696E78 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v13 = v25;
  v24 = v26;
  if (qword_1ED696E70 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v23 = v25;
  if (qword_1ED697018 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v15 = v25;
  if (v12)
  {

    sub_19774EA50();
    swift_bridgeObjectRelease_n();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v9, v16, 1, v17);
  *a3 = v11;
  a3[1] = v10;
  v18 = type metadata accessor for LNBundleRecord();
  sub_197673508(v9, a3 + v18[5]);
  v19 = (a3 + v18[6]);
  v20 = v23;
  v21 = v24;
  *v19 = v13;
  v19[1] = v21;
  *(a3 + v18[7]) = v20;
  *(a3 + v18[8]) = v15;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v18);
}

uint64_t sub_1976731F8@<X0>(char a1@<W2>, void *a2@<X8>)
{
  v32 = a2;
  if (qword_1ED697000 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  memcpy(__dst, &unk_1EAF43D20, sizeof(__dst));
  if (qword_1ED697008 != -1)
  {
    swift_once();
  }

  v4 = sub_1976B7FC0();
  v6 = v5;
  v8 = v7;
  memcpy(v29, __dst, sizeof(v29));
  sub_1976BB434(v4, v6, v8, &unk_1F0BBACF0, &off_1F0BBAB00, v9, v10, v11, v25, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14]);

  if (a1)
  {
    memcpy(v29, __src, sizeof(v29));
    if (qword_1ED696E70 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v12 = sub_1976B7FC0();
    v14 = v13;
    v16 = v15;
    memcpy(v27, v29, sizeof(v27));
    sub_1976BB434(v12, v14, v16, &unk_1F0BBACF0, &off_1F0BBAB00, v17, v18, v19, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], 0, v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14]);

    sub_19764BBBC(v29);
    memcpy(__src, v28, sizeof(__src));
  }

  v29[3] = &unk_1F0BBACF0;
  v29[4] = &off_1F0BBAB00;
  v29[0] = swift_allocObject();
  memcpy((v29[0] + 16), __src, 0xB0uLL);
  v20 = sub_1976C0920(v29);
  v22 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(v29);
  if (!v2)
  {
    if (v20)
    {
      sub_197672E5C(v20, v22, v32);
    }

    else
    {
      v24 = type metadata accessor for LNBundleRecord();
      return __swift_storeEnumTagSinglePayload(v32, 1, 1, v24);
    }
  }

  return result;
}

uint64_t type metadata accessor for LNBundleRecord()
{
  result = qword_1EAF3F3D0;
  if (!qword_1EAF3F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197673508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1976735A8()
{
  sub_19765FE84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LNBundleMetadataVersion(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t LNValue.asBMValue.getter()
{
  OUTLINED_FUNCTION_9_2();
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1976736E0, 0, 0);
}

uint64_t sub_1976736E0()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  v3 = [v1 value];
  *(v0 + 16) = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v0 + 16];
  swift_unknownObjectRelease();
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = sub_19774EB20();
    v8 = v7;
  }

  else
  {
    v9 = v5;
    v10 = sub_19774E9F0();

    swift_willThrow();
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  v11 = *(v0 + 24);
  v12 = [v11 valueType];
  *(v0 + 48) = sub_197674160();

  v13 = [v11 displayRepresentation];
  *(v0 + 56) = v13;
  if (v13)
  {
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_197673928;
    v15 = *MEMORY[0x1E69E9840];

    return sub_197673D54();
  }

  else
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = objc_allocWithZone(MEMORY[0x1E698EAF0]);
    v21 = OUTLINED_FUNCTION_22_1();
    sub_19767735C(v21, v22, v17, 0);
    OUTLINED_FUNCTION_13();
    v24 = *MEMORY[0x1E69E9840];

    return v23();
  }
}

uint64_t sub_197673928()
{
  OUTLINED_FUNCTION_9_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v11 = *v0;
  *(v2 + 72) = v7;

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_197673A64, 0, 0);
}

uint64_t sub_197673A64()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = objc_allocWithZone(MEMORY[0x1E698EAF0]);
  sub_19767735C(v2, v4, v3, v1);
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

id sub_197673B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = [v1 key];
  v10 = sub_19774EF50();
  v12 = v11;

  v13 = sub_19765B7CC(v1, &selRef_defaultValue);
  v15 = v14;
  v16 = sub_19765B7CC(v1, &selRef_table);
  v18 = v17;
  v19 = [v1 bundleURL];
  if (v19)
  {
    v20 = v19;
    sub_19774EA90();

    v21 = sub_19774EAD0();
    v22 = 0;
  }

  else
  {
    v21 = sub_19774EAD0();
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v22, 1, v21);
  sub_197673508(v6, v8);
  sub_19774EAD0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    sub_19764CAE4(v8, &qword_1EAF3FCE0, &unk_19775A220);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_19774EA40();
    v24 = v25;
    (*(*(v21 - 8) + 8))(v8, v21);
  }

  v26 = objc_allocWithZone(MEMORY[0x1E698EAE8]);
  return sub_197677588(v10, v12, v13, v15, v16, v18, v23, v24);
}

uint64_t sub_197673D68()
{
  v1 = *(v0 + 16);
  v2 = [v1 title];
  *(v0 + 24) = sub_197673B28();

  v3 = [v1 subtitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_197673B28();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 32) = v5;
  v6 = sub_197677B28(*(v0 + 16));
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_197652138(v6);
    if (v9)
    {
      v10 = v9;
      v23 = v7;
      result = sub_19774F680();
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x19A8E5210](v12, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        sub_197673B28();

        sub_19774F650();
        v15 = *(v23 + 16);
        sub_19774F690();
        OUTLINED_FUNCTION_19_1();
        sub_19774F6A0();
        sub_19774F660();
      }

      while (v10 != v12);

      v7 = v23;
    }

    else
    {
    }
  }

  *(v0 + 40) = v7;
  v16 = [*(v0 + 16) image];
  *(v0 + 48) = v16;
  if (v16)
  {
    v17 = swift_task_alloc();
    *(v0 + 56) = v17;
    *v17 = v0;
    v17[1] = sub_197673FC4;

    return sub_197674770();
  }

  else
  {
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    v20 = *(v0 + 24);
    v21 = objc_allocWithZone(MEMORY[0x1E698EAD0]);
    sub_1976774E4(v20, v18, v19, 0);
    OUTLINED_FUNCTION_13();

    return v22();
  }
}

uint64_t sub_197673FC4()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v9 = *v0;
  *(v2 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1976740D4, 0, 0);
}

uint64_t sub_1976740D4()
{
  OUTLINED_FUNCTION_18_0();
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x1E698EAD0]);
  sub_1976774E4(v4, v3, v2, v1);
  OUTLINED_FUNCTION_13();

  return v6();
}

id sub_197674160()
{
  LODWORD(v5) = v0;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v1 = v6;
    v7 = [v6 memberValueType];
    LODWORD(v5) = sub_197674160();

    v8 = sub_1976744D0([v1 capabilities]);
    v9 = objc_allocWithZone(MEMORY[0x1E698EB00]);
    v10 = OUTLINED_FUNCTION_4_3();
    v4 = sub_1976773FC(v10);
    OUTLINED_FUNCTION_3_4();
    v3 = 0;
    v11 = 1;
  }

  else
  {
    objc_opt_self();
    v12 = OUTLINED_FUNCTION_11_1();
    if (v12 && (v8 = v12, sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98), OUTLINED_FUNCTION_4_3(), (sub_19774F400() & 1) != 0))
    {
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_2_5();
      v11 = 2;
    }

    else
    {
      objc_opt_self();
      v13 = OUTLINED_FUNCTION_11_1();
      if (v13)
      {
        v5 = [v13 identifier];
        sub_19774EF50();
        OUTLINED_FUNCTION_21();

        v14 = objc_allocWithZone(MEMORY[0x1E698EB10]);
        v15 = OUTLINED_FUNCTION_22_1();
        v8 = v16;
        v3 = sub_197677480(v15, v17);
        OUTLINED_FUNCTION_3_4();
        v4 = 0;
        v11 = 3;
      }

      else
      {
        objc_opt_self();
        v18 = OUTLINED_FUNCTION_11_1();
        if (v18)
        {
          v1 = sub_1976745EC([v18 typeIdentifier]);
          LODWORD(v5) = 0;
          v8 = 0;
          OUTLINED_FUNCTION_2_5();
          v11 = 4;
        }

        else
        {
          objc_opt_self();
          v19 = OUTLINED_FUNCTION_11_1();
          if (v19)
          {
            v5 = [v19 enumerationIdentifier];
            sub_19774EF50();
            OUTLINED_FUNCTION_21();

            v20 = objc_allocWithZone(MEMORY[0x1E698EB18]);
            v21 = OUTLINED_FUNCTION_22_1();
            v8 = v22;
            v2 = sub_197677480(v21, v23);
            OUTLINED_FUNCTION_7_3();
            v3 = 0;
            v4 = 0;
            v11 = 5;
          }

          else
          {
            objc_opt_self();
            v24 = OUTLINED_FUNCTION_11_1();
            if (v24)
            {
              v8 = sub_197674638([v24 unitType]);
              LODWORD(v5) = 0;
              v1 = 0;
              OUTLINED_FUNCTION_2_5();
              v11 = 6;
            }

            else
            {
              objc_opt_self();
              v25 = OUTLINED_FUNCTION_11_1();
              if (v25)
              {
                LODWORD(v5) = sub_197674684([v25 typeIdentifier]);
                v8 = 0;
                v1 = 0;
                OUTLINED_FUNCTION_2_5();
                v11 = 7;
              }

              else
              {
                objc_opt_self();
                v26 = OUTLINED_FUNCTION_11_1();
                if (v26 && (v8 = v26, sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98), OUTLINED_FUNCTION_4_3(), (sub_19774F400() & 1) != 0))
                {
                  OUTLINED_FUNCTION_7_3();
                  OUTLINED_FUNCTION_2_5();
                  v11 = 8;
                }

                else
                {
                  objc_opt_self();
                  v8 = OUTLINED_FUNCTION_11_1();
                  if (v8)
                  {
                    sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
                    OUTLINED_FUNCTION_4_3();
                    sub_19774F400();
                    LODWORD(v5) = 0;
                    v8 = 0;
                  }

                  else
                  {
                    LODWORD(v5) = 0;
                  }

                  v1 = 0;
                  v11 = 0;
                  OUTLINED_FUNCTION_2_5();
                }
              }
            }
          }
        }
      }
    }
  }

  sub_197648238(0, &qword_1EAF3ECC8, 0x1E698EAF8);
  return sub_1976746D0(v11, v4, v3, v1, v2, v8, v5);
}

uint64_t sub_1976744D0(char a1)
{
  result = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  if ((a1 & 2) != 0)
  {
    [objc_allocWithZone(MEMORY[0x1E698EB08]) initWithValue_];
    MEMORY[0x19A8E4D30]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19774F140();
    }

    sub_19774F170();
    result = v3;
  }

  if (a1)
  {
    [objc_allocWithZone(MEMORY[0x1E698EB08]) initWithValue_];
    MEMORY[0x19A8E4D30]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19774F140();
    }

    sub_19774F170();
    return v3;
  }

  return result;
}

uint64_t sub_1976745EC(unint64_t a1)
{
  if (a1 < 0xF)
  {
    return (a1 + 1);
  }

  type metadata accessor for LNIntentsValueTypeIdentifier(0);
  result = sub_19774F870();
  __break(1u);
  return result;
}

uint64_t sub_197674638(unint64_t a1)
{
  if (a1 < 0x17)
  {
    return (a1 + 1);
  }

  type metadata accessor for LNMeasurementUnitType(0);
  result = sub_19774F870();
  __break(1u);
  return result;
}

uint64_t sub_197674684(unint64_t a1)
{
  if (a1 < 0xD)
  {
    return (a1 + 1);
  }

  type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
  result = sub_19774F870();
  __break(1u);
  return result;
}

id sub_1976746D0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  LODWORD(v12) = a7;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerType:a1 array:a2 entity:a3 legacyIntent:a4 linkEnumeration:a5 measurement:a6 primitive:v12];

  return v10;
}

uint64_t sub_197674784()
{
  OUTLINED_FUNCTION_18_0();
  v1 = [*(v0 + 152) inImage];
  v2 = [v1 _requiresRetrieval];

  if (v2)
  {
    v3 = [*(v0 + 152) inImage];
    *(v0 + 160) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_197674958;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FA38, &unk_19775AC08);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_197674B88;
    *(v0 + 104) = &block_descriptor_5;
    *(v0 + 112) = v4;
    [v3 _retrieveImageDataWithReply_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v5 = sub_197677AB8([*(v0 + 152) inImage]);
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x1E698EAD8]);
    sub_1976776A0(2, v5, v7);
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_197674958()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 168) = v5;
  if (v5)
  {
    v6 = sub_197674B14;
  }

  else
  {
    v6 = sub_197674A5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_197674A5C()
{
  OUTLINED_FUNCTION_18_0();
  v3 = *(v2 + 144);

  if (v3)
  {
    sub_197677B98(v3, &selRef__imageData);
    OUTLINED_FUNCTION_21();
    v4 = objc_allocWithZone(MEMORY[0x1E698EAD8]);
    v5 = sub_1976776A0(2, v0, v1);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_13();

  return v6(v5);
}

uint64_t sub_197674B14()
{
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v3(0);
}

uint64_t sub_197674B88(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_19768A134(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_19768A1A4(v5, a2);
  }
}

void BMAppIntentInvocationAction.convertToLNAction(_:)(void *a1)
{
  v3 = sub_19765B7CC(v1, &selRef_identifier);
  if (v4)
  {
    v24 = v4;
    v25 = v3;
    v5 = [v1 parameters];
    sub_197648238(0, &qword_1EAF3EDC8, 0x1E698EAE0);
    v6 = sub_19774F120();

    v26 = MEMORY[0x1E69E7CC0];
    v7 = sub_197652138(v6);
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {

        v22 = objc_allocWithZone(MEMORY[0x1E69AC640]);
        sub_19767772C(v25, v24, 0, 0, 1, 0);
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A8E5210](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = sub_197674DB4(a1);

      ++v8;
      if (v12)
      {
        v13 = MEMORY[0x19A8E4D30]();
        OUTLINED_FUNCTION_20_0(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26);
        if (v21)
        {
          OUTLINED_FUNCTION_15_1();
        }

        sub_19774F170();
        v8 = v11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

id sub_197674DB4(void *a1)
{
  sub_19765B7CC(v1, &selRef_identifier);
  if (!v3)
  {
    return 0;
  }

  v4 = [v1 value];
  if (!v4)
  {
LABEL_27:

    return 0;
  }

  v5 = v4;
  v6 = [v4 valueType];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  sub_197677B98(v5, &selRef_value);
  if (v8 >> 60 == 15)
  {
LABEL_5:

    return 0;
  }

  switch([v7 containerType])
  {
    case 1u:
      if (!a1)
      {
        goto LABEL_10;
      }

      v9 = a1;
      v10 = [v5 displayRepresentation];
      v11 = OUTLINED_FUNCTION_0_8();
      v15 = sub_1976760B8(v11, v12, v13, v14, v9, v10);

      goto LABEL_18;
    case 2u:
    case 8u:
      v43 = [v5 displayRepresentation];
      v44 = OUTLINED_FUNCTION_0_8();
      sub_197676670(v44, v45, v46, v47, v43, v48, v49, v50);
      v15 = v51;

      goto LABEL_23;
    case 3u:
      v26 = [v7 entity];
      if (v26)
      {
        v27 = v26;
        v28 = sub_19765B7CC(v26, &selRef_identifier);
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          v32 = [v5 displayRepresentation];
          v33 = OUTLINED_FUNCTION_0_8();
          sub_197675F24(v33, v34, v35, v36, v30, v31, v32);
          v15 = v37;

          goto LABEL_23;
        }

        OUTLINED_FUNCTION_18_1();
      }

      else
      {

        OUTLINED_FUNCTION_18_1();
      }

      goto LABEL_27;
    case 4u:
      v38 = [v7 legacyIntent];
      v10 = [v5 displayRepresentation];
      v39 = OUTLINED_FUNCTION_0_8();
      v15 = sub_197676344(v39, v40, v41, v42, v38, v10);
      goto LABEL_18;
    case 5u:
      v16 = [v7 linkEnumeration];
      if (!v16 || (v17 = sub_197677BF8(v16), !v18))
      {

        OUTLINED_FUNCTION_18_1();
        return 0;
      }

      v19 = v17;
      v20 = v18;
      v10 = [v5 displayRepresentation];
      v21 = OUTLINED_FUNCTION_0_8();
      sub_1976764DC(v21, v22, v23, v24, v19, v20, v10);
      v15 = v25;

LABEL_18:

LABEL_23:
      OUTLINED_FUNCTION_18_1();

      break;
    case 6u:
      v52 = [v5 displayRepresentation];
      v53 = OUTLINED_FUNCTION_0_8();
      v57 = sub_1976767EC(v53, v54, v55, v56, v52);
      goto LABEL_22;
    case 7u:
      v58 = [v7 primitive];
      v52 = [v5 displayRepresentation];
      v59 = OUTLINED_FUNCTION_0_8();
      v57 = sub_19767569C(v59, v60, v61, v62, v58, v52);
LABEL_22:
      v15 = v57;

      goto LABEL_23;
    default:
LABEL_10:
      OUTLINED_FUNCTION_18_1();
      goto LABEL_5;
  }

  return v15;
}

id sub_1976751BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  sub_19765B7CC(v0, &selRef_key);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  v6 = sub_19765B7CC(v0, &selRef_defaultValue);
  v8 = v7;
  v9 = sub_19765B7CC(v0, &selRef_table);
  v11 = v10;
  sub_19765B7CC(v0, &selRef_bundleURL);
  if (v12)
  {
    sub_19774EAC0();
  }

  else
  {
    v14 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  }

  v15 = objc_allocWithZone(MEMORY[0x1E69AC9E8]);
  v16 = OUTLINED_FUNCTION_22_1();
  return sub_19767785C(v16, v17, v6, v8, v9, v11, v4);
}

id sub_19767530C()
{
  v1 = sub_197677B98(v0, &selRef_data);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  sub_197648238(0, &qword_1EAF3ECB8, 0x1E696E868);
  sub_197677C68(v4, v5);
  v6 = sub_1976753C8(v4, v5);
  v3 = [objc_allocWithZone(MEMORY[0x1E69AC878]) initWithINImage_];

  sub_19764EEB4(v4, v5);
  return v3;
}

id sub_1976753C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_19774EB10();
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData_];

  sub_197652DCC(a1, a2);
  return v5;
}

void sub_197675434()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1976751BC();

    if (v4)
    {
      v5 = [v1 subtitle];
      if (v5)
      {
        v6 = v5;
        v30 = sub_1976751BC();
      }

      else
      {
        v30 = 0;
      }

      v7 = [v1 image];
      if (v7)
      {
        v8 = v7;
        v29 = sub_19767530C();
      }

      else
      {
        v29 = 0;
      }

      v9 = [v1 synonyms];
      sub_197648238(0, &qword_1EAF3EDC0, 0x1E698EAE8);
      v10 = sub_19774F120();

      v11 = MEMORY[0x1E69E7CC0];
      v31 = MEMORY[0x1E69E7CC0];
      v12 = sub_197652138(v10);
      v13 = 0;
      while (1)
      {
        if (v12 == v13)
        {

          v27 = objc_allocWithZone(MEMORY[0x1E69AC7A8]);
          sub_19767799C(v4, v30, v29, v11);
          return;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x19A8E5210](v13, v10);
        }

        else
        {
          if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = sub_1976751BC();

        ++v13;
        if (v17)
        {
          v18 = MEMORY[0x19A8E4D30]();
          OUTLINED_FUNCTION_20_0(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31);
          if (v26)
          {
            OUTLINED_FUNCTION_15_1();
          }

          sub_19774F170();
          v11 = v31;
          v13 = v16;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

id sub_197675640(int a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 0;
  }

  v1 = a1 - 1;
  return [objc_opt_self() *off_1E74B0760[v1]];
}

id sub_19767569C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v68 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v69[-1] - v13;
  v15 = sub_19774EAD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v21 = a3;
      v22 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v21 = *(a3 + 16);
      v22 = *(a3 + 24);
LABEL_6:
      if (v21 != v22)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v20;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      v20 = 0;
      switch(a5)
      {
        case 1:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
          OUTLINED_FUNCTION_1_8();
          v23 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          if (!v23)
          {
            return 0;
          }

          v24 = v23;
          v25 = sub_19774EFA0();
          v70 = MEMORY[0x1E69E6158];
          v69[0] = v25;
          v69[1] = v26;
          v27 = [objc_opt_self() stringValueType];
          goto LABEL_41;
        case 2:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v33 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v29 = v33;
          if (!v33)
          {
            return 0;
          }

          v34 = [v33 BOOLValue];
          v70 = MEMORY[0x1E69E6370];
          LOBYTE(v69[0]) = v34;
          v31 = [objc_opt_self() BOOLValueType];
          goto LABEL_32;
        case 3:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v28 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v29 = v28;
          if (!v28)
          {
            return 0;
          }

          v30 = [v28 integerValue];
          v70 = MEMORY[0x1E69E6530];
          v69[0] = v30;
          v31 = [objc_opt_self() intValueType];
          goto LABEL_32;
        case 8:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v42 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v29 = v42;
          if (!v42)
          {
            return 0;
          }

          [v42 doubleValue];
          v70 = MEMORY[0x1E69E63B0];
          v69[0] = v43;
          v31 = [objc_opt_self() doubleValueType];
          goto LABEL_32;
        case 9:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F988, 0x1E695DF00);
          OUTLINED_FUNCTION_1_8();
          v44 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v29 = v44;
          if (!v44)
          {
            return 0;
          }

          v70 = sub_19774EB80();
          __swift_allocate_boxed_opaque_existential_1(v69);
          sub_19774EB50();
          v31 = [objc_opt_self() dateValueType];
          goto LABEL_32;
        case 10:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F980, 0x1E695DF10);
          OUTLINED_FUNCTION_1_8();
          v32 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
LABEL_35:

            return 0;
          }

          v29 = v32;
          if (!v32)
          {
            return 0;
          }

          v70 = sub_19774E940();
          __swift_allocate_boxed_opaque_existential_1(v69);
          sub_19774E930();
          v31 = [objc_opt_self() dateComponentsValueType];
LABEL_32:
          v45 = v31;
          if (a6)
          {
            sub_197675434();
          }

          v49 = v68;
          v50 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v51 = OUTLINED_FUNCTION_9_3(v69);
          objc_allocWithZone(MEMORY[0x1E69AC948]);

          v20 = sub_1976772F8(a1, v49, v51);

          return v20;
        case 11:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          v35 = sub_197648238(0, &qword_1EAF3F978, 0x1E695FC20);
          OUTLINED_FUNCTION_1_8();
          v36 = sub_19774F330();
          v37 = v36;
          if (!v36)
          {
            return 0;
          }

          v70 = v35;
          v69[0] = v36;
          v38 = objc_opt_self();
          v24 = v37;
          v27 = [v38 placemarkValueType];
          goto LABEL_41;
        case 12:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F970, 0x1E695DFF8);
          OUTLINED_FUNCTION_1_8();
          v39 = sub_19774F330();
          v40 = v39;
          if (!v39)
          {
            return 0;
          }

          sub_19765B7CC(v39, &selRef_absoluteString);
          if (!v41)
          {

            return 0;
          }

          sub_19774EAC0();

          if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
          {

            sub_19764CAE4(v14, &qword_1EAF3FCE0, &unk_19775A220);
            return 0;
          }

          (*(v16 + 32))(v19, v14, v15);
          v70 = v15;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
          (*(v16 + 16))(boxed_opaque_existential_1, v19, v15);
          v61 = [objc_opt_self() URLValueType];
          if (a6)
          {
            sub_197675434();
          }

          v62 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v63 = OUTLINED_FUNCTION_9_3(v69);
          objc_allocWithZone(MEMORY[0x1E69AC948]);
          v64 = v68;

          v20 = sub_1976772F8(a1, v64, v63);

          v65 = *(v16 + 8);
          v66 = OUTLINED_FUNCTION_19_1();
          v67(v66);
          break;
        case 13:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          v46 = sub_197648238(0, &qword_1EAF3F968, 0x1E696AAB0);
          OUTLINED_FUNCTION_1_8();
          v47 = sub_19774F330();
          v52 = v47;
          if (!v47)
          {
            return 0;
          }

          v70 = v46;
          v69[0] = v47;
          v53 = objc_opt_self();
          v24 = v52;
          v27 = [v53 attributedStringValueType];
LABEL_41:
          v54 = v27;
          if (a6)
          {
            sub_197675434();
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }

          v57 = v68;
          v58 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v59 = sub_19767726C(v69, v54, v56);
          objc_allocWithZone(MEMORY[0x1E69AC948]);

          v20 = sub_1976772F8(a1, v57, v59);

          return v20;
        default:
          return v20;
      }

      return v20;
  }
}

void sub_197675F24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3;
      v9 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3ECB0, 0x1E69AC7C8);
      OUTLINED_FUNCTION_8_3();
      v10 = sub_19774F330();
      v11 = v10;
      if (v10)
      {
        sub_197648238(0, &qword_1EAF3ED60, 0x1E69AC810);

        v12 = v11;
        OUTLINED_FUNCTION_19_1();
        sub_197693E20();
        if (a7)
        {
          sub_197675434();
        }

        OUTLINED_FUNCTION_6_4(objc_allocWithZone(MEMORY[0x1E69ACA88]));
        v13 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

id sub_1976760B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      v10 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_6:
      if (v9 != v10)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_11;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      sub_197677A50();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A7E0;
      *(inited + 32) = sub_197648238(0, &qword_1EAF3F9A0, 0x1E69AC6B8);
      *(inited + 40) = sub_197648238(0, &qword_1ED696E38, 0x1E695DEC8);
      *(inited + 48) = sub_197648238(0, &qword_1EAF3F9A8, 0x1E69ACA88);
      v12 = sub_19767697C();
      if (v12)
      {
        v13 = v12;
        sub_197663E9C(1, 4, 1, inited);
        inited = v14;
        *(v14 + 16) = 4;
        *(v14 + 56) = v13;
      }

      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197660C14(inited);

      sub_19774F340();

      if (v20)
      {
        sub_19766A150(v19, v21);
        sub_197677CC0(v21, v19);
        [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType_];
        if (a6)
        {
          sub_197675434();
        }

        v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        OUTLINED_FUNCTION_9_3(v19);
        v18 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        v8 = OUTLINED_FUNCTION_5_4();
        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      else
      {
        sub_19764CAE4(v19, &unk_1EAF3F8C0, &qword_19775AA48);
LABEL_10:
        v8 = 0;
      }

LABEL_11:
      v15 = *MEMORY[0x1E69E9840];
      return v8;
  }
}

id sub_197676344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      v10 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_6:
      if (v9 != v10)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      if (!sub_197676CF4(a5))
      {
        return 0;
      }

      v11 = sub_197675640(a5);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      v13 = sub_19774F330();
      v15 = v13;
      if (v13)
      {
        v22[3] = swift_getObjectType();
        v22[0] = v15;
        v16 = v15;
        if (a6)
        {
          sub_197675434();
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        v20 = v12;
        sub_19767726C(v22, v20, v18);
        v21 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        v8 = OUTLINED_FUNCTION_5_4();
      }

      else
      {

        return 0;
      }

      return v8;
  }
}

void sub_1976764DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3;
      v9 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
      OUTLINED_FUNCTION_8_3();
      v10 = sub_19774F330();
      v11 = v10;
      if (v10)
      {
        sub_197648238(0, &unk_1EAF3FF20, 0x1E69AC898);

        v12 = v11;
        OUTLINED_FUNCTION_19_1();
        sub_197693E2C();
        if (a7)
        {
          sub_197675434();
        }

        OUTLINED_FUNCTION_6_4(objc_allocWithZone(MEMORY[0x1E69ACA88]));
        v13 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

void sub_197676670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t *a7, Class *a8)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v12 = a3;
      v13 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a3 + 16);
      v13 = *(a3 + 24);
LABEL_6:
      if (v12 != v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, a6, a7);
      OUTLINED_FUNCTION_8_3();
      v14 = sub_19774F330();
      v15 = v14;
      if (v14)
      {
        v16 = objc_allocWithZone(*a8);
        v17 = v15;
        [v16 init];
        if (a5)
        {
          sub_197675434();
        }

        OUTLINED_FUNCTION_6_4(objc_allocWithZone(MEMORY[0x1E69ACA88]));
        v18 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

id sub_1976767EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3;
      v8 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v6;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3F9C0, 0x1E696AD28);
      OUTLINED_FUNCTION_8_3();
      v9 = sub_19774F330();
      v11 = v9;
      if (!v9)
      {
        return 0;
      }

      [v9 doubleValue];
      v12 = [v11 unit];
      sub_197676E5C();

      if (a5)
      {
        sub_197675434();
      }

      OUTLINED_FUNCTION_6_4(objc_allocWithZone(MEMORY[0x1E69ACA88]));
      v13 = objc_allocWithZone(MEMORY[0x1E69AC948]);
      OUTLINED_FUNCTION_17_2();
      v6 = OUTLINED_FUNCTION_5_4();

      return v6;
  }
}

uint64_t sub_19767697C()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {
    return sub_197676A88();
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {
    v1 = &unk_1EAF3F9C0;
    v2 = 0x1E696AD28;
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_11_1())
    {
      v1 = &unk_1EAF3F9B8;
      v2 = 0x1E69AC778;
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_11_1())
      {
        v1 = &qword_1EAF3F998;
        v2 = 0x1E696AEC0;
      }

      else
      {
        objc_opt_self();
        if (OUTLINED_FUNCTION_11_1())
        {
          v1 = &qword_1EAF3ECB0;
          v2 = 0x1E69AC7C8;
        }

        else
        {
          objc_opt_self();
          result = OUTLINED_FUNCTION_11_1();
          if (!result)
          {
            return result;
          }

          v1 = &unk_1EAF3F9B0;
          v2 = 0x1E69AC7E0;
        }
      }
    }
  }

  return sub_197648238(0, v1, v2);
}

uint64_t sub_197676A88()
{
  v0 = objc_opt_self();
  v1 = [v0 intValueType];
  sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
  v2 = sub_19774F400();

  if (v2 & 1) != 0 || (v3 = [v0 doubleValueType], v4 = OUTLINED_FUNCTION_14_1(), v1, (v4) || (v5 = objc_msgSend(v0, sel_BOOLValueType), v6 = OUTLINED_FUNCTION_14_1(), v1, (v6))
  {
    v7 = &qword_1EAF3F990;
    v8 = 0x1E696AD98;
    return sub_197648238(0, v7, v8);
  }

  v10 = [v0 dateValueType];
  v11 = OUTLINED_FUNCTION_14_1();

  if (v11)
  {
    v7 = &qword_1EAF3F988;
    v8 = 0x1E695DF00;
    return sub_197648238(0, v7, v8);
  }

  v12 = [v0 dateComponentsValueType];
  v13 = OUTLINED_FUNCTION_14_1();

  if (v13)
  {
    v7 = &qword_1EAF3F980;
    v8 = 0x1E695DF10;
    return sub_197648238(0, v7, v8);
  }

  v14 = [v0 URLValueType];
  v15 = OUTLINED_FUNCTION_14_1();

  if (v15)
  {
    v7 = &qword_1EAF3F970;
    v8 = 0x1E695DFF8;
    return sub_197648238(0, v7, v8);
  }

  v16 = [v0 placemarkValueType];
  v17 = OUTLINED_FUNCTION_14_1();

  if (v17)
  {
    v7 = &qword_1EAF3F978;
    v8 = 0x1E695FC20;
    return sub_197648238(0, v7, v8);
  }

  v18 = [v0 stringValueType];
  v19 = OUTLINED_FUNCTION_14_1();

  if (v19)
  {
    v7 = &qword_1EAF3F998;
    v8 = 0x1E696AEC0;
    return sub_197648238(0, v7, v8);
  }

  v20 = [v0 attributedStringValueType];
  v21 = sub_19774F400();

  if (v21)
  {
    v7 = &qword_1EAF3F968;
    v8 = 0x1E696AAB0;
    return sub_197648238(0, v7, v8);
  }

  return 0;
}

uint64_t sub_197676CF4(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      v1 = &qword_1EAF3F998;
      v2 = 0x1E696AEC0;
      goto LABEL_17;
    case 2:
      v1 = &unk_1EAF3FA30;
      v2 = 0x1E696E770;
      goto LABEL_17;
    case 4:
      v1 = &unk_1EAF3F9E8;
      v2 = 0x1E696E940;
      goto LABEL_17;
    case 5:
      v1 = &unk_1EAF3FA00;
      v2 = 0x1E696E900;
      goto LABEL_17;
    case 6:
      v1 = &unk_1EAF3F9F8;
      v2 = 0x1E696AFB0;
      goto LABEL_17;
    case 7:
      v1 = &unk_1EAF3F9D0;
      v2 = 0x1E696EAC0;
      goto LABEL_17;
    case 8:
      v1 = &unk_1EAF3F9E0;
      v2 = 0x1E696EA98;
      goto LABEL_17;
    case 9:
      v1 = &unk_1EAF3F9D8;
      v2 = 0x1E696EAA0;
      goto LABEL_17;
    case 10:
      v1 = &unk_1EAF3FA18;
      v2 = 0x1E696E8E8;
      goto LABEL_17;
    case 11:
      v1 = &unk_1EAF3FA10;
      v2 = 0x1E696E8F0;
      goto LABEL_17;
    case 12:
      v1 = &unk_1EAF3FA08;
      v2 = 0x1E69AC8B8;
      goto LABEL_17;
    case 13:
      v1 = &unk_1EAF3FA20;
      v2 = 0x1E696E840;
      goto LABEL_17;
    case 14:
      v1 = &unk_1EAF3F9F0;
      v2 = 0x1E696E938;
      goto LABEL_17;
    case 15:
      v1 = &unk_1EAF3FA28;
      v2 = 0x1E696E7E8;
LABEL_17:
      result = sub_197648238(0, v1, v2);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_197676E5C()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {
    v0 = objc_opt_self();
    v1 = &selRef_areaValueType;
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_11_1())
    {
      v0 = objc_opt_self();
      v1 = &selRef_accelerationValueType;
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_11_1())
      {
        v0 = objc_opt_self();
        v1 = &selRef_angleValueType;
      }

      else
      {
        objc_opt_self();
        if (OUTLINED_FUNCTION_11_1())
        {
          v0 = objc_opt_self();
          v1 = &selRef_concentrationMassValueType;
        }

        else
        {
          objc_opt_self();
          if (OUTLINED_FUNCTION_11_1())
          {
            v0 = objc_opt_self();
            v1 = &selRef_dispersionValueType;
          }

          else
          {
            objc_opt_self();
            if (OUTLINED_FUNCTION_11_1())
            {
              v0 = objc_opt_self();
              v1 = &selRef_durationValueType;
            }

            else
            {
              objc_opt_self();
              if (OUTLINED_FUNCTION_11_1())
              {
                v0 = objc_opt_self();
                v1 = &selRef_electricChargeValueType;
              }

              else
              {
                objc_opt_self();
                if (OUTLINED_FUNCTION_11_1())
                {
                  v0 = objc_opt_self();
                  v1 = &selRef_electricCurrentValueType;
                }

                else
                {
                  objc_opt_self();
                  if (OUTLINED_FUNCTION_11_1())
                  {
                    v0 = objc_opt_self();
                    v1 = &selRef_electricPotentialDifferenceValueType;
                  }

                  else
                  {
                    objc_opt_self();
                    if (OUTLINED_FUNCTION_11_1())
                    {
                      v0 = objc_opt_self();
                      v1 = &selRef_electricResistanceValueType;
                    }

                    else
                    {
                      objc_opt_self();
                      if (OUTLINED_FUNCTION_11_1())
                      {
                        v0 = objc_opt_self();
                        v1 = &selRef_energyValueType;
                      }

                      else
                      {
                        objc_opt_self();
                        if (OUTLINED_FUNCTION_11_1())
                        {
                          v0 = objc_opt_self();
                          v1 = &selRef_frequencyValueType;
                        }

                        else
                        {
                          objc_opt_self();
                          if (OUTLINED_FUNCTION_11_1())
                          {
                            v0 = objc_opt_self();
                            v1 = &selRef_fuelEfficiencyValueType;
                          }

                          else
                          {
                            objc_opt_self();
                            if (OUTLINED_FUNCTION_11_1())
                            {
                              v0 = objc_opt_self();
                              v1 = &selRef_illuminanceValueType;
                            }

                            else
                            {
                              objc_opt_self();
                              if (OUTLINED_FUNCTION_11_1())
                              {
                                v0 = objc_opt_self();
                                v1 = &selRef_informationStorageValueType;
                              }

                              else
                              {
                                objc_opt_self();
                                if (OUTLINED_FUNCTION_11_1())
                                {
                                  v0 = objc_opt_self();
                                  v1 = &selRef_lengthValueType;
                                }

                                else
                                {
                                  objc_opt_self();
                                  if (OUTLINED_FUNCTION_11_1())
                                  {
                                    v0 = objc_opt_self();
                                    v1 = &selRef_massValueType;
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    if (OUTLINED_FUNCTION_11_1())
                                    {
                                      v0 = objc_opt_self();
                                      v1 = &selRef_powerValueType;
                                    }

                                    else
                                    {
                                      objc_opt_self();
                                      if (OUTLINED_FUNCTION_11_1())
                                      {
                                        v0 = objc_opt_self();
                                        v1 = &selRef_pressureValueType;
                                      }

                                      else
                                      {
                                        objc_opt_self();
                                        if (OUTLINED_FUNCTION_11_1())
                                        {
                                          v0 = objc_opt_self();
                                          v1 = &selRef_speedValueType;
                                        }

                                        else
                                        {
                                          objc_opt_self();
                                          if (OUTLINED_FUNCTION_11_1())
                                          {
                                            v0 = objc_opt_self();
                                            v1 = &selRef_temperatureValueType;
                                          }

                                          else
                                          {
                                            objc_opt_self();
                                            v2 = OUTLINED_FUNCTION_11_1();
                                            v0 = objc_opt_self();
                                            v1 = &selRef_volumeValueType;
                                            if (!v2)
                                            {
                                              v1 = &selRef_unsupportedMeasurementValueType;
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
            }
          }
        }
      }
    }
  }

  v3 = [v0 *v1];

  return v3;
}

id sub_19767726C(uint64_t *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v7 = [v3 initWithValue:sub_19774F7D0() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_1976772F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_19774EF20();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_19767735C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  if (a3 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_19774EB10();
    sub_19764EEB4(a2, a3);
  }

  v11 = [v5 initWithValueType:a1 value:v8 displayRepresentation:a4];

  return v11;
}

id sub_1976773FC(void *a1)
{
  sub_197648238(0, &qword_1EAF3FA40, 0x1E698EB08);
  v3 = sub_19774F110();

  v4 = [v1 initWithMemberValueType:a1 capabilities:v3];

  return v4;
}

id sub_197677480(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_19774EF20();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id sub_1976774E4(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_197648238(0, &qword_1EAF3EDC0, 0x1E698EAE8);
  v8 = sub_19774F110();

  v9 = [v4 initWithTitle:a1 subtitle:a2 synonyms:v8 image:a4];

  return v9;
}

id sub_197677588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_19774EF20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_19774EF20();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_19774EF20();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_19774EF20();

LABEL_10:
  v16 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v15];

  return v16;
}

id sub_1976776A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_19774EB10();
    sub_19764EEB4(a2, a3);
  }

  v8 = [v3 initWithDisplayStyle:a1 data:v5];

  return v8;
}

id sub_19767772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = sub_19774EF20();

  if (a4)
  {
    v11 = sub_19774EF20();
  }

  else
  {
    v11 = 0;
  }

  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  v12 = sub_19774F110();

  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  v13 = sub_19774F110();

  v14 = [v6 initWithIdentifier:v10 mangledTypeName:v11 openAppWhenRun:a5 & 1 outputFlags:a6 systemProtocols:v12 parameters:v13];

  return v14;
}

id sub_19767785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_19774EF20();

  if (a4)
  {
    v13 = sub_19774EF20();

    if (a6)
    {
LABEL_3:
      v14 = sub_19774EF20();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_19774EAD0();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v15) != 1)
  {
    v16 = sub_19774EA60();
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v17 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v16];

  return v17;
}

id sub_19767799C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
    v9 = sub_19774F110();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:a1 subtitle:a2 image:a3 synonyms:v9];

  return v10;
}

uint64_t sub_197677A50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7C0, &qword_19775A938);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_1EAF3FD00;
    v2 = &qword_19775A768;
  }

  else
  {
    v1 = &unk_1EAF3F9C8;
    v2 = &unk_19775ABF8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_197677AB8(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_19774EB20();

  return v3;
}

uint64_t sub_197677B28(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
  v3 = sub_19774F120();

  return v3;
}

uint64_t sub_197677B98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_19774EB20();

  return v4;
}

uint64_t sub_197677BF8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_19774EF50();

  return v3;
}

uint64_t sub_197677C68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_197677CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197677D78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v1 = sub_1976496B4(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  return sub_197649708(0xD00000000000001ELL, 0x8000000197760F00, v0, v1);
}

uint64_t sub_197677E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v1 = sub_1976496B4(&qword_1EAF3F418, &qword_1EAF3F758, &qword_19775A800);
  return sub_197649708(0xD000000000000011, 0x8000000197760EE0, v0, v1);
}

uint64_t sub_197677E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED696F00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43B60, sizeof(__dst));
  if (qword_1ED696F08 != -1)
  {
    swift_once();
  }

  __src[0] = a1;
  v7 = sub_1976B7FC0();
  v9 = v8;
  v11 = v10;
  memcpy(v28, __dst, sizeof(v28));
  sub_1976BB434(v7, v9, v11, &unk_1F0BBACF0, &off_1F0BBAB00, v12, v13, v14, v22, v24, v25, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], v28[19], v28[20], v28[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);

  memcpy(v33, __src, sizeof(v33));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v33, 0xB0uLL);
  v15 = sub_1976C0920(__src);
  v17 = v16;
  result = __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v3)
  {
    if (v15)
    {
      sub_19767809C(v15, v17, v30);
      v23 = v30[1];
      v26 = v30[0];
      v19 = v31;

      v21 = v23;
      v20 = v26;
    }

    else
    {
      v19 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    *a3 = v20;
    *(a3 + 16) = v21;
    *(a3 + 32) = v19;
  }

  return result;
}

void sub_19767809C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1ED696F08 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v7 = v11;
  v6 = v12;
  if (qword_1ED696D50 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF43B30, *algn_1EAF43B38, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v11);
  v9 = v11;
  v8 = v12;
  if (qword_1ED696D48 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v10 = v11;
  *a3 = v7;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v10;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_197678278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1976782B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id LNConfigurableQueryRequest.init(query:target:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  switch(v5 >> 61)
  {
    case 1uLL:
      sub_197648238(0, &qword_1EAF3FA50, off_1E74AF590);
      v17 = sub_1976787C4();
      goto LABEL_14;
    case 2uLL:
      if (v5)
      {

        v15 = v3;
        v16 = 0;
      }

      else
      {
        v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v19 = v3;
        v16 = [v18 initWithInteger_];
      }

      v20 = objc_allocWithZone(LNPropertyQueryRequestType);
      v14 = sub_197678EB0(v3, v6, v16);
      goto LABEL_12;
    case 3uLL:
      sub_197648238(0, &qword_1EAF3FA48, off_1E74AF568);
      v11 = &unk_1EAF3FA60;
      v12 = 0x1E6964E80;
      v13 = &selRef_initWithSearchableItems_;
      goto LABEL_7;
    case 4uLL:
      v14 = [objc_allocWithZone(LNIntentValueQueryRequestType) initWithValue_];
LABEL_12:
      v21 = v14;
      sub_1976786A8(v3, v4, v5);
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 5uLL:
      v17 = [objc_opt_self() queryRequest];
      goto LABEL_14;
    default:
      sub_197648238(0, &qword_1EAF3FA58, off_1E74AF468);
      v11 = &unk_1EAF3F9B0;
      v12 = 0x1E69AC7E0;
      v13 = &selRef_initWithEntityIdentifiers_;
LABEL_7:
      v17 = sub_197678854(v3, v11, v12, v13);
LABEL_14:
      v21 = v17;
      if (v10)
      {
LABEL_15:
        if (v10 == 1)
        {
          v23 = objc_allocWithZone(LNQueryRequestParameterTarget);
          v24 = v7;

          v22 = sub_197678F58(v24);
        }

        else
        {
          v22 = [objc_allocWithZone(LNQueryRequestAnyQueryTarget) initWithQueryMetadata_];
        }
      }

      else
      {
LABEL_13:
        v22 = [objc_allocWithZone(LNQueryRequestDefaultQueryTarget) initWithEntityMetadata_];
      }

      v25 = v22;
      sub_197678744(v7, v8, v9, v10);
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = a3;
      v28 = [v26 initWithQueryType:v21 target:v25 options:v27];

      return v28;
  }
}

void sub_1976786A8(void *a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 61)
  {
    case 0uLL:
    case 3uLL:

      goto LABEL_4;
    case 1uLL:

      goto LABEL_4;
    case 2uLL:

LABEL_4:

      break;
    case 4uLL:

      break;
    default:
      return;
  }
}

void sub_197678744(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

id sub_1976787C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_19774EF20();

  v2 = [v0 initWithQueryString_];

  return v2;
}

id sub_197678854(uint64_t a1, unint64_t *a2, uint64_t *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_197648238(0, a2, a3);
  v8 = sub_19774F110();

  v9 = [v7 *a4];

  return v9;
}

void LNConfigurableQueryRequest.query.getter(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = &selRef_preflightManager;
  v6 = [v1 queryType];
  objc_opt_self();
  if (OUTLINED_FUNCTION_1_9())
  {

    v7 = 0;
    OUTLINED_FUNCTION_0_9();
    v8 = 0xA000000000000000;
LABEL_22:
    *a1 = v7;
    a1[1] = v5;
    a1[2] = v8;
    a1[3] = v2;
    return;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_1_9())
  {

    OUTLINED_FUNCTION_0_9();
    v8 = 0xA000000000000000;
    v7 = 1;
    goto LABEL_22;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_1_9())
  {

    OUTLINED_FUNCTION_0_9();
    v8 = 0xA000000000000000;
    v7 = 2;
    goto LABEL_22;
  }

  objc_opt_self();
  v9 = OUTLINED_FUNCTION_1_9();
  if (v9)
  {
    v10 = [v9 identifiers];
    sub_197648238(0, &qword_1EAF3F9B0, 0x1E69AC7E0);
    v7 = sub_19774F120();

    v5 = 0;
    v8 = 0;
    v2 = 0;
    goto LABEL_22;
  }

  objc_opt_self();
  v11 = OUTLINED_FUNCTION_1_9();
  if (v11)
  {
    v12 = [v11 queryString];
    v7 = sub_19774EF50();
    v5 = v13;

    v2 = 0;
    v8 = 0x2000000000000000;
    goto LABEL_22;
  }

  objc_opt_self();
  v14 = OUTLINED_FUNCTION_1_9();
  if (v14)
  {
    v15 = v14;
    v7 = [v14 propertyQuery];
    v16 = [v15 maximumResultCount];
    v17 = v16;
    if (v16)
    {
      v5 = [v16 integerValue];
    }

    else
    {
      v5 = 0;
    }

    v19 = [v15 sortingOptions];
    if (v19)
    {
      v20 = v19;
      sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
      v2 = sub_19774F120();
    }

    else
    {

      v2 = 0;
    }

    v8 = 0x4000000000000000;
    if (!v17)
    {
      v8 = 0x4000000000000001;
    }

    goto LABEL_22;
  }

  objc_opt_self();
  v18 = OUTLINED_FUNCTION_1_9();
  if (v18)
  {
    v5 = [v18 items];
    sub_197648238(0, &qword_1EAF3FA60, 0x1E6964E80);
    v7 = sub_19774F120();

    OUTLINED_FUNCTION_0_9();
    v8 = 0x6000000000000000;
    goto LABEL_22;
  }

  objc_opt_self();
  v21 = OUTLINED_FUNCTION_1_9();
  if (v21)
  {
    v7 = [v21 value];

    OUTLINED_FUNCTION_0_9();
    v8 = 0x8000000000000000;
    goto LABEL_22;
  }

  sub_19774F5B0();

  v22 = [v3 queryType];
  v23 = [v22 description];
  v24 = sub_19774EF50();
  v26 = v25;

  MEMORY[0x19A8E4C40](v24, v26);

  OUTLINED_FUNCTION_2_6();
  __break(1u);
}

void LNConfigurableQueryRequest.queryTarget.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = &selRef_preflightManager;
  v6 = [v1 target];
  objc_opt_self();
  v7 = OUTLINED_FUNCTION_1_9();
  if (v7)
  {
    v8 = [v7 entityMetadata];

    OUTLINED_FUNCTION_0_9();
    v9 = 0;
LABEL_7:
    *a1 = v8;
    *(a1 + 8) = v2;
    *(a1 + 16) = v5;
    *(a1 + 24) = v9;
    return;
  }

  objc_opt_self();
  v10 = OUTLINED_FUNCTION_1_9();
  if (v10)
  {
    v11 = v10;
    v8 = [v10 actionMetadata];
    v12 = [v11 parameterIdentifier];
    v2 = sub_19774EF50();
    v5 = v13;

    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_self();
  v14 = OUTLINED_FUNCTION_1_9();
  if (v14)
  {
    v8 = [v14 queryMetadata];

    OUTLINED_FUNCTION_0_9();
    v9 = 2;
    goto LABEL_7;
  }

  sub_19774F5B0();

  v15 = [v3 target];
  v16 = [v15 description];
  v17 = sub_19774EF50();
  v19 = v18;

  MEMORY[0x19A8E4C40](v17, v19);

  OUTLINED_FUNCTION_2_6();
  __break(1u);
}

id sub_197678EB0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
    v7 = sub_19774F110();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithPropertyQuery:a1 sortingOptions:v7 maximumResultCount:a3];

  return v8;
}

id sub_197678F58(void *a1)
{
  v3 = sub_19774EF20();

  v4 = [v1 initWithActionMetadata:a1 parameterIdentifier:v3];

  return v4;
}

uint64_t get_enum_tag_for_layout_string_So26LNConfigurableQueryRequestC12LinkServicesE0B0O(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_197678FEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_197679034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19767908C(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_19775AC70;
    *(result + 24) = 0;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1976790F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197679130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_197679190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_19774E9E0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_197679200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = v5;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v15[4] = sub_197679D0C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1976A7FD0;
  v15[3] = &block_descriptor_21_0;
  v12 = _Block_copy(v15);

  v13 = v5;

  v14 = a3;

  [v13 getConnectionInterfaceWithOptions:0 completionHandler:v12];
  _Block_release(v12);
}

void sub_197679314(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = sub_19774EBF0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v24 = [a5 queue];
    v20 = swift_allocObject();
    *(v20 + 16) = "appintent:fetch entity property value";
    *(v20 + 24) = 37;
    *(v20 + 32) = 2;
    *(v20 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNFetchEntityPropertyOperation());

    v21 = a8;

    v22 = sub_1976795AC(v19, a1, 1, v24, sub_197669C04, v20, a6, a7, v21, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    a3(0, a2);
  }
}

id sub_1976795AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v18 = &v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_propertyIdentifier];
  *v19 = a7;
  *(v19 + 1) = a8;
  *&v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_entity] = a9;
  *v18 = a10;
  *(v18 + 1) = a11;
  v20 = a9;

  v21 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_27;
  v22 = _Block_copy(aBlock);

  v27.receiver = v12;
  v27.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  v23 = objc_msgSendSuper2(&v27, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v21, a2, a3, a4, v22);
  _Block_release(v22);

  swift_unknownObjectRelease();

  v24 = sub_19774EBF0();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v23;
}

void sub_197679760()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v11, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_propertyIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_propertyIdentifier + 8];

  v4 = sub_19774EF20();

  v5 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_entity];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v10[4] = sub_197679CE8;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_197645E24;
  v10[3] = &block_descriptor_6;
  v7 = _Block_copy(v10);
  v8 = v5;
  v9 = v0;

  [v1 fetchValueForPropertyWithIdentifier:v4 entity:v8 completionHandler:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_197679918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_19764781C(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

void sub_1976799E0(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  if (v5)
  {
    v6 = v4[1];

    v5(0, a1);
    sub_19764781C(v5);
    v7 = *v4;
    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v7);
  }

  if (a1)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

id sub_197679C28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static LNConfirmationSystemStyle.montaraEnablement(bundleIdentifier:source:isExplicitRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for LNConfirmationSystemStyleMontaraEnablement(a1);

  return sub_197679DA4(a1, a2, a3, a4);
}

id sub_197679DA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_19774EF20();

  v8 = [v6 initWithBundleIdentifier:v7 source:a3 isExplicitRequest:a4 & 1];

  return v8;
}

id LNConfirmationSystemStyle.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

uint64_t LNConfirmationSystemStyleMontaraEnablement.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_bundleIdentifier + 8);

  return v1;
}

id sub_19767A068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = (v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_bundleIdentifier);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_source) = a3;
  *(v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_isExplicitRequest) = a4;
  v7.super_class = LNConfirmationSystemStyleMontaraEnablement;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t LNConfirmationSystemStyleMontaraEnablement.isEqual(_:)(uint64_t a1)
{
  v2 = sub_19766A160(a1, v18);
  if (v19)
  {
    type metadata accessor for LNConfirmationSystemStyleMontaraEnablement(v2);
    if (swift_dynamicCast())
    {
      if (v17 == v1)
      {

        return 1;
      }

      v3 = [v1 bundleIdentifier];
      v4 = sub_19774EF50();
      v6 = v5;

      v7 = [v17 bundleIdentifier];
      v8 = sub_19774EF50();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_19774F7E0();

        if ((v12 & 1) == 0)
        {
LABEL_15:

          return 0;
        }
      }

      v14 = [v1 source];
      if (v14 == [v17 source])
      {
        v15 = [v1 isExplicitRequest];
        v16 = [v17 isExplicitRequest];

        return v15 ^ v16 ^ 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_19766A0E8(v18);
  }

  return 0;
}

id _sSo25LNConfirmationSystemStyleC12LinkServicesE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id LNConfirmationSystemStyleMontaraEnablement.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19767A460();
  if (v4)
  {
    v5 = sub_19767A54C();
    if ((v6 & 1) == 0)
    {
      v8 = v5;
      v9 = sub_19767A604();
      v10 = sub_19774EF20();

      v7 = [v2 initWithBundleIdentifier:v10 source:v8 isExplicitRequest:v9 & 1];

      return v7;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19767A460()
{
  sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
  v0 = sub_19774F3E0();

  sub_19774EF40();

  return 0;
}

id sub_19767A54C()
{
  v1 = sub_19774EF20();

  v2 = [v0 decodeIntegerForKey_];

  return v2;
}

id sub_19767A604()
{
  v1 = sub_19774EF20();

  v2 = [v0 decodeBoolForKey_];

  return v2;
}

Swift::Void __swiftcall LNConfirmationSystemStyleMontaraEnablement.encode(with:)(NSCoder with)
{
  v2 = [v1 bundleIdentifier];
  v3 = sub_19774EF50();
  v5 = v4;

  sub_19767A788(v3, v5);

  sub_19767A86C([v1 source]);
  sub_19767A958([v1 isExplicitRequest]);
}

void sub_19767A788(uint64_t a1, uint64_t a2)
{

  v3 = sub_19774F880();
  v4 = sub_19774EF20();

  [v2 encodeObject:v3 forKey:{v4, a1, a2}];
  swift_unknownObjectRelease();
}

void sub_19767A86C(uint64_t a1)
{
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = sub_19774EF20();

  [v1 encodeInt:a1 forKey:v3];
}

void sub_19767A958(char a1)
{
  v3 = sub_19774EF20();

  [v1 encodeBool:a1 & 1 forKey:v3];
}

id _sSo25LNConfirmationSystemStyleC12LinkServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id ProgressPropertySynchronizer.init(sourceProgress:destinationProgress:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_sourceProgress] = a1;
  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress] = a2;
  v5 = sub_197652138(MEMORY[0x1E69E7CC0]);
  v6 = a1;
  v7 = a2;
  if (v5)
  {
    v8 = sub_19767B5F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_observationBag] = v8;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ProgressPropertySynchronizer();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ProgressPropertySynchronizer.__deallocating_deinit()
{
  sub_19767B498();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressPropertySynchronizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19767AD34()
{
  v1 = *&v0[OBJC_IVAR___LNProgressPropertySynchronizer_sourceProgress];
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v0;
  v2 = v1;
  v3 = v0;
  v4 = sub_19774EA30();

  OUTLINED_FUNCTION_1_10();
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v3;
  v5 = v2;
  v6 = v3;
  v7 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10();
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v6;
  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10();
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  v12 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10();
  sub_19767AFD8();
  swift_endAccess();
}

id sub_19767AF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 kind];
  *a2 = result;
  return result;
}

void sub_19767AFD8()
{
  sub_1976641E0(&v2, v0);
  v1 = v2;
}

id sub_19767B028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileOperationKind];
  *a2 = result;
  return result;
}

void sub_19767B064(void **a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(a3 + OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress);
  v9 = [v8 *a4];
  v10 = [v7 *a4];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_12:

LABEL_13:
    [v8 *a5];
    OUTLINED_FUNCTION_18();

    return;
  }

  if (!v10)
  {
    v11 = v9;
    goto LABEL_12;
  }

  v12 = sub_19774EF50();
  v14 = v13;
  if (v12 != sub_19774EF50() || v14 != v15)
  {
    v17 = sub_19774F7E0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    OUTLINED_FUNCTION_18();
    return;
  }

  OUTLINED_FUNCTION_18();
}

void sub_19767B1E4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19774EF50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_19767B248(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_19774EF20();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

void sub_19767B2B8(void **a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(a3 + OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress);
  v9 = [v8 *a4];
  if (v9)
  {
    v10 = v9;
    v11 = sub_19774EF50();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_19765B7CC(v7, a4);
  if (!v13)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v15)
  {
LABEL_13:

LABEL_14:
    sub_19765B7CC(v7, a4);
    if (v18)
    {
      v19 = sub_19774EF20();
    }

    else
    {
      v19 = 0;
    }

    [v8 *a5];

    return;
  }

  if (v11 != v14 || v13 != v15)
  {
    v17 = sub_19774F7E0();

    if (v17)
    {
      return;
    }

    goto LABEL_14;
  }
}

uint64_t sub_19767B498()
{
  v1 = OBJC_IVAR___LNProgressPropertySynchronizer_observationBag;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (!*(v3 + 16))
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v3 < 0)
  {
    v4 = *(v0 + v1);
  }

  v5 = *(v0 + v1);

  v6 = sub_19774F500();

  if (v6)
  {
LABEL_5:
    v7 = *(v0 + v1);
    *(v0 + v1) = MEMORY[0x1E69E7CD0];
  }

  return result;
}

id ProgressPropertySynchronizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19767B5F4(uint64_t a1)
{
  if (sub_197652138(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7B8, &qword_19775A930);
    v2 = sub_19774F590();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v19 = sub_197652138(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_19765BEF0(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x19A8E5210](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_19774F3F0();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_19774E960();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_19774F400();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_19767B934(uint64_t a1)
{
  if (sub_197652138(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F770, &qword_19775A8D0);
    v2 = sub_19774F590();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v19 = sub_197652138(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_19765BEF0(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x19A8E5210](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_19774F3F0();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_19767BADC();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_19774F400();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_19767BADC()
{
  result = qword_1ED696D90;
  if (!qword_1ED696D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696D90);
  }

  return result;
}

void sub_19767BB20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_19774E9E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_19767BB84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_19767BBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  v13[4] = sub_19767C6A0;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1976A7FD0;
  v13[3] = &block_descriptor_21_1;
  v10 = _Block_copy(v13);

  v11 = v4;

  v12 = a2;

  [v11 getConnectionInterfaceWithOptions:0 completionHandler:v10];
  _Block_release(v10);
}

void sub_19767BD00(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = sub_19774EBF0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v18 = [a5 queue];
    v19 = swift_allocObject();
    *(v19 + 16) = "appintent:update properties";
    *(v19 + 24) = 27;
    *(v19 + 32) = 2;
    *(v19 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNUpdatePropertiesOperation());

    v20 = a7;

    v21 = sub_19767BFF4(v17, a1, 1, v18, sub_197669C04, v19, a6, v20, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v22 = sub_1976A4DDC(7303014, 0xE300000000000000, 1, 0);
    }

    v24 = a2;
    a3(v22);
  }
}

id sub_19767BFF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = &v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_properties] = a7;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_query] = a8;
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = a8;

  v19 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_27_0;
  v20 = _Block_copy(aBlock);

  v25.receiver = v11;
  v25.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  v21 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v19, a2, a3, a4, v20);
  _Block_release(v20);

  swift_unknownObjectRelease();

  v22 = sub_19774EBF0();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

void sub_19767C1A0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  objc_msgSendSuper2(&v10, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_properties];
  sub_19767C65C();

  v3 = sub_19774F110();

  v4 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_query];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v9[4] = sub_197670A04;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_19767BB84;
  v9[3] = &block_descriptor_7;
  v6 = _Block_copy(v9);
  v7 = v4;
  v8 = v0;

  [v1 updateProperties:v3 withQuery:v7 completionHandler:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

void sub_19767C35C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  if (v5)
  {
    v6 = v4[1];

    v5(a1);
    sub_19764781C(v5);
    v7 = *v4;
    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v7);
  }

  if (a1)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

id sub_19767C5A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19767C65C()
{
  result = qword_1ED696EE0;
  if (!qword_1ED696EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696EE0);
  }

  return result;
}

uint64_t static SpotlightKeyPathMapper.decode(_:)(uint64_t a1)
{
  v3 = a1 == (OUTLINED_FUNCTION_31_0() | 0x65636E6500000000) && v2 == 0xE900000000000073;
  if (v3)
  {
    return swift_getKeyPath();
  }

  v4 = v2;
  if (OUTLINED_FUNCTION_8_4())
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v7 = v3 && v6 == v4;
  if (v7 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v8 = a1 == 0x726F7461657263 && v4 == 0xE700000000000000;
  if (v8 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v10 = a1 == 0xD000000000000014 && v9 == v4;
  if (v10 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v11 = a1 == OUTLINED_FUNCTION_86_0() && v4 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v12 = a1 == 0x656D614E746E6F66 && v4 == 0xE900000000000073;
  if (v12 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v13 = a1 == OUTLINED_FUNCTION_83() && v4 == 0xEA00000000007265;
  if (v13 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v14 = a1 == 1684957547 && v4 == 0xE400000000000000;
  if (v14 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v15 = a1 == (OUTLINED_FUNCTION_29_0() | 0x6E756F4300000000) && v4 == 0xE900000000000074;
  if (v15 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v16 = a1 == (OUTLINED_FUNCTION_29_0() | 0x6769654800000000) && v4 == 0xEA00000000007468;
  if (v16 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v17 = a1 == (OUTLINED_FUNCTION_29_0() | 0x7464695700000000) && v4 == 0xE900000000000068;
  if (v17 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v19 = a1 == OUTLINED_FUNCTION_70() && v4 == v18;
  if (v19 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v20 = a1 == 0x7463656A627573 && v4 == 0xE700000000000000;
  if (v20 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v21 = a1 == 0x656D656874 && v4 == 0xE500000000000000;
  if (v21 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_65_0(0x6E7265746C61);
  v22 = v3 && v4 == 0xEE0073656D614E65;
  if (v22 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v23 = a1 == 0x54746E65746E6F63 && v4 == 0xEB00000000657079;
  if (v23 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v24 = a1 == 0x54746E65746E6F63 && v4 == 0xEF65657254657079;
  if (v24 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v26 = a1 == (OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5574000000000000) && v4 == v25;
  if (v26 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v28 = a1 == 0xD000000000000010 && v27 == v4;
  if (v28 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v29 = a1 == OUTLINED_FUNCTION_55() && v4 == 0xEB00000000656D61;
  if (v29 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v30 = a1 == OUTLINED_FUNCTION_52() && v4 == 0xE800000000000000;
  if (v30 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v32 = a1 == 0xD000000000000018 && v31 == v4;
  if (v32 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v33 = a1 == 1752457584 && v4 == 0xE400000000000000;
  if (v33 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v35 = a1 == OUTLINED_FUNCTION_49() && v4 == v34 + 1538;
  if (v35 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v37 = a1 == 0xD000000000000017 && v36 == v4;
  if (v37 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_34_1();
  v39 = v3 && v4 == v38;
  if (v39 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_34_1();
  v41 = v3 && v4 == v40;
  if (v41 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v42 = a1 == 0x656C746974 && v4 == 0xE500000000000000;
  if (v42 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v44 = a1 == 0xD000000000000010 && v43 == v4;
  if (v44 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v46 = a1 == 0xD00000000000001BLL && v45 == v4;
  if (v46 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v48 = a1 == (OUTLINED_FUNCTION_25_2() | 0x6165724300000000) && v4 == v47;
  if (v48 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v49 = a1 == (OUTLINED_FUNCTION_25_2() | 0x6172754300000000) && v4 == 0xEB00000000646574;
  if (v49 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v50 = a1 == (OUTLINED_FUNCTION_25_2() | 0x656E774F00000000) && v4 == 0xE900000000000064;
  if (v50 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v51 = a1 == 0x7961446C6C61 && v4 == 0xE600000000000000;
  if (v51 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v53 = a1 == (OUTLINED_FUNCTION_59() | 0x6974656C00000000) && v4 == (v52 | 0xA0A);
  if (v53 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v54 = a1 == 0x65746144657564 && v4 == 0xE700000000000000;
  if (v54 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v55 = a1 == 0x65746144646E65 && v4 == 0xE700000000000000;
  if (v55 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v57 = a1 == OUTLINED_FUNCTION_93_0() && v4 == v56;
  if (v57 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v58 = a1 == 0x7461447472617473 && v4 == 0xE900000000000065;
  if (v58 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_90();
  v60 = a1 == v59 + 2805 && v4 == 0xE800000000000000;
  if (v60 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v61 = a1 == 2037672291 && v4 == 0xE400000000000000;
  if (v61 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v62 = a1 == OUTLINED_FUNCTION_60() && v4 == 0xE700000000000000;
  if (v62 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v64 = v3 && v63 == v4;
  if (v64 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v65 = a1 == 0x706F64737067 && v4 == 0xE600000000000000;
  if (v65 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v67 = a1 == (OUTLINED_FUNCTION_21_2() | 0x5365746100000000) && v4 == v66;
  if (v67 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v69 = a1 == (OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4274000000000000) && v4 == v68;
  if (v69 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v71 = a1 == (OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4474000000000000) && v4 == v70;
  if (v71 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v73 = a1 == (OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000) && v4 == v72;
  if (v73 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v75 = a1 == 0xD000000000000010 && v74 == v4;
  if (v75 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v77 = a1 == (OUTLINED_FUNCTION_21_2() | 0x6566666900000000) && v4 == v76;
  if (v77 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v79 = a1 == (OUTLINED_FUNCTION_89() | 0x6144706100000000) && v4 == v78;
  if (v79 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v81 = a1 == (OUTLINED_FUNCTION_89() | 0x7573616500000000) && v4 == v80;
  if (v81 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v83 = a1 == 0xD000000000000013 && v82 == v4;
  if (v83 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v84 = a1 == OUTLINED_FUNCTION_87() && v4 == 0xE900000000000073;
  if (v84 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v85 = a1 == OUTLINED_FUNCTION_88() && v4 == 0xE800000000000000;
  if (v85 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v86 = a1 == 0x656E696C64616568 && v4 == 0xE800000000000000;
  if (v86 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v88 = a1 == OUTLINED_FUNCTION_94() && v4 == v87;
  if (v88 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v90 = a1 == OUTLINED_FUNCTION_78() && v4 == v89;
  if (v90 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_90();
  if (a1 == v91 && v4 == 0xE800000000000000)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_33_1();
  if (OUTLINED_FUNCTION_4_4())
  {
    return swift_getKeyPath();
  }

  v93 = a1 == OUTLINED_FUNCTION_74() && v4 == 0xE900000000000065;
  if (v93 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v95 = a1 == OUTLINED_FUNCTION_71() && v4 == v94;
  if (v95 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v96 = a1 == 0x6465657073 && v4 == 0xE500000000000000;
  if (v96 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v98 = a1 == OUTLINED_FUNCTION_92() && v4 == v97;
  if (v98 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v99 = a1 == (OUTLINED_FUNCTION_43_0() | 0x6D61747300000000) && v4 == 0xE900000000000070;
  if (v99 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v101 = a1 == 0xD000000000000015 && v100 == v4;
  if (v101 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v102 = a1 == OUTLINED_FUNCTION_66() && v4 == 0xEA00000000006564;
  if (v102 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v104 = a1 == OUTLINED_FUNCTION_68() && v4 == v103;
  if (v104 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_32_0();
  v106 = a1 == OUTLINED_FUNCTION_67() && v4 == v105;
  if (v106 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v107 = a1 == 0x746E656D6D6F63 && v4 == 0xE700000000000000;
  if (v107 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v109 = v3 && v108 == v4;
  if (v109 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v111 = a1 == 0xD000000000000017 && v110 == v4;
  if (v111 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v113 = a1 == (OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5374000000000000) && v4 == v112;
  if (v113 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v114 = a1 == OUTLINED_FUNCTION_61_0() && v4 == 0xE900000000000074;
  if (v114 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v115 = a1 == OUTLINED_FUNCTION_57() && v4 == 0xEE00657461446465;
  if (v115 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v116 = a1 == 0x73726F74696465 && v4 == 0xE700000000000000;
  if (v116 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v117 = a1 == 0x646573557473616CLL && v4 == 0xEC00000065746144;
  if (v117 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v119 = a1 == OUTLINED_FUNCTION_77() && v4 == v118;
  if (v119 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v120 = a1 == OUTLINED_FUNCTION_51_0() && v4 == 0xE800000000000000;
  if (v120 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_65_0(0x446465646461);
  v121 = v3 && v4 == 0xE900000000000065;
  if (v121 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v122 = a1 == 0x736365646F63 && v4 == 0xE600000000000000;
  if (v122 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v124 = a1 == (OUTLINED_FUNCTION_20_1() | 0x4B74636100000000) && v4 == v123;
  if (v124 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v126 = a1 == OUTLINED_FUNCTION_46_3() && v4 == v125 + 200704;
  if (v126 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v127 = a1 == OUTLINED_FUNCTION_36_0() && v4 == 0xE800000000000000;
  if (v127 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v128 = a1 == OUTLINED_FUNCTION_44_0() && v4 == 0xEA00000000007365;
  if (v128 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v130 = a1 == OUTLINED_FUNCTION_42_0() && v4 == v129;
  if (v130 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v131 = a1 == OUTLINED_FUNCTION_91_0() && v4 == 0xEA0000000000656CLL;
  if (v131 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_41_0(0x426C61746F74);
  v132 = v3 && v4 == 0xEC00000065746152;
  if (v132 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v133 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_41_0(v133 & 0xFFFF0000FFFFFFFFLL | 0x426F00000000);
  v134 = v3 && v4 == 0xEC00000065746152;
  if (v134 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v135 = a1 == 0x6E6F6973726576 && v4 == 0xE700000000000000;
  if (v135 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_41_0(0x426F65646976);
  v136 = v3 && v4 == 0xEC00000065746152;
  if (v136 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_22_2();
  v138 = a1 == (OUTLINED_FUNCTION_20_1() | 0x7562697200000000) && v4 == v137 + 2578;
  if (v138 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v139 = a1 == 0x65676175676E616CLL && v4 == 0xE900000000000073;
  if (v139 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v140 = a1 == OUTLINED_FUNCTION_37_0() && v4 == 0xEA00000000007372;
  if (v140 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v141 = a1 == 0x737468676972 && v4 == 0xE600000000000000;
  if (v141 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v142 = a1 == 1701605234 && v4 == 0xE400000000000000;
  if (v142 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v144 = a1 == (OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5274000000000000) && v4 == v143;
  if (v144 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v145 = a1 == 0x6567617265766F63 && v4 == 0xE800000000000000;
  if (v145 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v146 = a1 == OUTLINED_FUNCTION_56() && v4 == 0xE800000000000000;
  if (v146 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v147 = a1 == 0x65726E6567 && v4 == 0xE500000000000000;
  if (v147 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_65_0(0x6D726F666E69);
  v149 = v3 && v4 == v148;
  if (v149 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v150 = a1 == 0x6C61636F6CLL && v4 == 0xE500000000000000;
  if (v150 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_27_2();
  v152 = v3 && v4 == v151;
  if (v152 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_27_2();
  v154 = v3 && v4 == v153;
  if (v154 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v155 = a1 == 0x656D726F66726570 && v4 == 0xEA00000000007372;
  if (v155 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v156 = a1 == 0x6E756F4379616C70 && v4 == 0xE900000000000074;
  if (v156 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v157 = a1 == 0x72656375646F7270 && v4 == 0xE800000000000000;
  if (v157 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v158 = a1 == 0x676E69746172 && v4 == 0xE600000000000000;
  if (v158 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v160 = a1 == 0xD000000000000011 && v159 == v4;
  if (v160 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v161 = a1 == 7107189 && v4 == 0xE300000000000000;
  if (v161 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v162 = a1 == 0x6D75626C61 && v4 == 0xE500000000000000;
  if (v162 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v163 = a1 == 0x747369747261 && v4 == 0xE600000000000000;
  if (v163 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v165 = a1 == 0xD000000000000011 && v164 == v4;
  if (v165 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v167 = a1 == 0xD000000000000018 && v166 == v4;
  if (v167 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v169 = a1 == (OUTLINED_FUNCTION_31_0() | 0x6D61536F00000000) && v4 == v168;
  if (v169 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v171 = a1 == 0xD000000000000010 && v170 == v4;
  if (v171 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v172 = a1 == (OUTLINED_FUNCTION_59() | 0x7265736F00000000) && v4 == 0xE800000000000000;
  if (v172 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v174 = a1 == OUTLINED_FUNCTION_53() && v4 == v173;
  if (v174 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v175 = a1 == OUTLINED_FUNCTION_85() && v4 == 0xE800000000000000;
  if (v175 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_32_0();
  v178 = a1 == v177 && v4 == v176 + 3327;
  if (v178 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v180 = a1 == OUTLINED_FUNCTION_82() && v4 == v179;
  if (v180 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v181 = a1 == 0x6F706D6574 && v4 == 0xE500000000000000;
  if (v181 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v183 = a1 == (OUTLINED_FUNCTION_43_0() | 0x6E67695300000000) && v4 == v182;
  if (v183 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v185 = v3 && v184 == v4;
  if (v185 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v187 = a1 == 0xD000000000000019 && v186 == v4;
  if (v187 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v189 = a1 == 0xD000000000000015 && v188 == v4;
  if (v189 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v190 = a1 == 0x64656570536F7369 && v4 == 0xE800000000000000;
  if (v190 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_41_0(0x736975716361);
  v192 = v3 && v4 == v191;
  if (v192 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v194 = a1 == 0xD000000000000010 && v193 == v4;
  if (v194 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v195 = a1 == OUTLINED_FUNCTION_73() && v4 == 0xE800000000000000;
  if (v195 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v197 = a1 == OUTLINED_FUNCTION_72() && v4 == v196;
  if (v197 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v199 = a1 == OUTLINED_FUNCTION_69() && v4 == v198;
  if (v199 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v200 = a1 == OUTLINED_FUNCTION_62() && v4 == 0xEA00000000006563;
  if (v200 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v201 = a1 == 0x6E4F6873616C66 && v4 == 0xE700000000000000;
  if (v201 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v202 = a1 == 0x6E654C6C61636F66 && v4 == 0xEB00000000687467;
  if (v202 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v203 = a1 == 0x6E654C6C61636F66 && v4 == 0xEF6D6D3533687467;
  if (v203 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v204 = a1 == OUTLINED_FUNCTION_76() && v4 == 0xEA00000000007365;
  if (v204 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v205 = a1 == 0x65646F4D736E656CLL && v4 == 0xE90000000000006CLL;
  if (v205 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_65_0(0x746E6569726FLL);
  v206 = v3 && v4 == 0xEB000000006E6F69;
  if (v206 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v207 = a1 == (OUTLINED_FUNCTION_26_1() | 0x756F436C00000000) && v4 == 0xEA0000000000746ELL;
  if (v207 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v208 = a1 == (OUTLINED_FUNCTION_26_1() | 0x6965486C00000000) && v4 == 0xEB00000000746867;
  if (v208 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v209 = a1 == (OUTLINED_FUNCTION_26_1() | 0x6469576C00000000) && v4 == 0xEA00000000006874;
  if (v209 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v211 = a1 == OUTLINED_FUNCTION_58() && v4 == v210;
  if (v211 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v213 = a1 == (OUTLINED_FUNCTION_54() | 0x5673706700000000) && v4 == v212;
  if (v213 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v214 = a1 == (OUTLINED_FUNCTION_54() | 0x7372655600000000) && v4 == 0xEB000000006E6F69;
  if (v214 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v215 = a1 == 0x657275736F707865 && v4 == 0xEC00000065646F4DLL;
  if (v215 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v216 = a1 == 0x657275736F707865 && v4 == 0xEF6D6172676F7250;
  if (v216 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v217 = a1 == 0x657275736F707865 && v4 == 0xEC000000656D6954;
  if (v217 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v219 = v3 && v218 == v4;
  if (v219 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v220 = a1 == 0x7265626D754E66 && v4 == 0xE700000000000000;
  if (v220 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v222 = a1 == OUTLINED_FUNCTION_48() && v4 == v221;
  if (v222 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v223 = a1 == OUTLINED_FUNCTION_47() && v4 == 0xEB00000000657275;
  if (v223 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v224 = a1 == OUTLINED_FUNCTION_45_0() && v4 == 0xEC00000065646F4DLL;
  if (v224 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v225 = a1 == OUTLINED_FUNCTION_50() && v4 == 0xEB00000000656D61;
  if (v225 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v226 = a1 == OUTLINED_FUNCTION_81() && v4 == 0xE800000000000000;
  if (v226 || (OUTLINED_FUNCTION_4_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v228 = v3 && v227 == v4;
  if (v228 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v230 = v3 && v229 == v4;
  if (v230 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v231 = a1 == 0x746E6F436C6D7468 && v4 == 0xEF61746144746E65;
  if (v231 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v233 = a1 == OUTLINED_FUNCTION_75_0() && v4 == v232;
  if (v233 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v235 = a1 == 0xD000000000000011 && v234 == v4;
  if (v235 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v237 = a1 == 0xD000000000000014 && v236 == v4;
  if (v237 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v239 = a1 == (OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x6441000000000000) && v4 == v238;
  if (v239 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v241 = a1 == 0xD000000000000014 && v240 == v4;
  if (v241 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v243 = a1 == (OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x614E000000000000) && v4 == v242;
  if (v243 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v244 = a1 == (OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x73000000000000) && v4 == 0xE700000000000000;
  if (v244 || (OUTLINED_FUNCTION_6_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v246 = a1 == (OUTLINED_FUNCTION_40_0() | 0x6464416C00000000) && v4 == v245;
  if (v246 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2();
  v249 = a1 == v248 && v4 == v247 + 2;
  if (v249 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v251 = a1 == 0xD00000000000001ALL && v250 == v4;
  if (v251 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v253 = a1 == 0xD000000000000017 && v252 == v4;
  if (v253 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v254 = a1 == OUTLINED_FUNCTION_39_0() && v4 == 0xEA00000000006B6ELL;
  if (v254 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v256 = v3 && v255 == v4;
  if (v256 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v257 = a1 == OUTLINED_FUNCTION_38_0() && v4 == 0xEC00000073726562;
  if (v257 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v259 = a1 == 0xD000000000000011 && v258 == v4;
  if (v259 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v261 = v3 && v260 == v4;
  if (v261 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v263 = a1 == 0xD000000000000017 && v262 == v4;
  if (v263 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v264 = a1 == OUTLINED_FUNCTION_80() && v4 == 0xEE0073656D614E74;
  if (v264 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v265 = a1 == 0x746E6F4374786574 && v4 == 0xEB00000000746E65;
  if (v265 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v267 = a1 == 0xD000000000000014 && v266 == v4;
  if (v267 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v269 = v3 && v268 == v4;
  if (v269 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v270 = a1 == 0x656E6961746E6F63 && v4 == 0xEE00726564724F72;
  if (v270 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v271 = a1 == 0x656E6961746E6F63 && v4 == 0xEE00656C74695472;
  if (v271 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v273 = a1 == 0xD000000000000011 && v272 == v4;
  if (v273 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v275 = a1 == 0xD000000000000015 && v274 == v4;
  if (v275 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v277 = v3 && v276 == v4;
  if (v277 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v279 = a1 == 0xD000000000000011 && v278 == v4;
  if (v279 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v281 = a1 == 0xD00000000000001BLL && v280 == v4;
  if (v281 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v283 = a1 == 0xD00000000000001BLL && v282 == v4;
  if (v283 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v285 = a1 == 0xD000000000000022 && v284 == v4;
  if (v285 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  else
  {
    return 0;
  }
}

uint64_t static SpotlightKeyPathMapper.mdItemKey(for:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBB8, &qword_19775DA38);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  if (v0)
  {
    v1 = MEMORY[0x1E6963CB8];
LABEL_5:
    v3 = *v1;
    return sub_19774EF50();
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  v2 = OUTLINED_FUNCTION_9_4();

  if (v2)
  {
    v1 = MEMORY[0x1E6964940];
    goto LABEL_5;
  }

  return 0;
}

void static SpotlightKeyPathMapper.encode(_:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBB8, &qword_19775DA38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_1();
  if (v1)
  {
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_23_1();
    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4();
    }
  }
}

id sub_1976839A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileSize];
  *a2 = result;
  return result;
}

id sub_1976839E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageCount];
  *a2 = result;
  return result;
}

id sub_197683A20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageHeight];
  *a2 = result;
  return result;
}

id sub_197683A5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageWidth];
  *a2 = result;
  return result;
}

void sub_197683A98(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3FCE0, &unk_19775A220);
  v8 = *a2;
  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentURL_];
}

void sub_197683BB4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3FCE0, &unk_19775A220);
  v8 = *a2;
  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDarkThumbnailURL_];
}

void sub_197683CD0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setMetadataModificationDate_];
}

id sub_197683DEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rankingHint];
  *a2 = result;
  return result;
}

void sub_197683E28(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3FCE0, &unk_19775A220);
  v8 = *a2;
  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setThumbnailURL_];
}

id sub_197683F44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCreated];
  *a2 = result;
  return result;
}

id sub_197683F80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCurated];
  *a2 = result;
  return result;
}

id sub_197683FBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserOwned];
  *a2 = result;
  return result;
}

id sub_197683FF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

void sub_197684034(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setCompletionDate_];
}

void sub_197684150(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDueDate_];
}

void sub_19768426C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setEndDate_];
}

void sub_197684388(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setStartDate_];
}

id sub_1976844A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 altitude];
  *a2 = result;
  return result;
}

id sub_1976844E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDOP];
  *a2 = result;
  return result;
}

void sub_19768451C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setGPSDateStamp_];
}

id sub_197684638@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestBearing];
  *a2 = result;
  return result;
}

id sub_197684674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestDistance];
  *a2 = result;
  return result;
}

id sub_1976846B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLatitude];
  *a2 = result;
  return result;
}

id sub_1976846EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLongitude];
  *a2 = result;
  return result;
}

id sub_197684728@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDifferental];
  *a2 = result;
  return result;
}

id sub_197684764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSTrack];
  *a2 = result;
  return result;
}

id sub_1976847A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 imageDirection];
  *a2 = result;
  return result;
}

id sub_1976847DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 latitude];
  *a2 = result;
  return result;
}

id sub_197684818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longitude];
  *a2 = result;
  return result;
}

id sub_197684854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speed];
  *a2 = result;
  return result;
}

void sub_197684890(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

void sub_1976849AC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentCreationDate_];
}

void sub_197684AC8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentModificationDate_];
}

void sub_197684BE4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDownloadedDate_];
}

void sub_197684D00(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setLastUsedDate_];
}

void sub_197684E1C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setAddedDate_];
}

id sub_197684F38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryType];
  *a2 = result;
  return result;
}

id sub_197684F74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_197684FB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isStreamable];
  *a2 = result;
  return result;
}

id sub_197684FEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalBitRate];
  *a2 = result;
  return result;
}

id sub_197685028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioBitRate];
  *a2 = result;
  return result;
}

id sub_197685064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBitRate];
  *a2 = result;
  return result;
}

id sub_1976850A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentRating];
  *a2 = result;
  return result;
}

id sub_1976850DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLocal];
  *a2 = result;
  return result;
}

id sub_197685118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playCount];
  *a2 = result;
  return result;
}

id sub_197685154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rating];
  *a2 = result;
  return result;
}

void sub_197685190(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3FCE0, &unk_19775A220);
  v8 = *a2;
  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setURL_];
}

id sub_1976852AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioChannelCount];
  *a2 = result;
  return result;
}

id sub_1976852E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioSampleRate];
  *a2 = result;
  return result;
}

id sub_197685324@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioTrackNumber];
  *a2 = result;
  return result;
}

void sub_197685360(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *a2;
  v9 = sub_19774EB80();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774EB30();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setRecordingDate_];
}

id sub_19768547C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tempo];
  *a2 = result;
  return result;
}

id sub_1976854B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isGeneralMIDISequence];
  *a2 = result;
  return result;
}

id sub_1976854F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ISOSpeed];
  *a2 = result;
  return result;
}

id sub_197685530@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aperture];
  *a2 = result;
  return result;
}

id sub_19768556C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bitsPerSample];
  *a2 = result;
  return result;
}

id sub_1976855A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFlashOn];
  *a2 = result;
  return result;
}

id sub_1976855E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 focalLength];
  *a2 = result;
  return result;
}

id sub_197685620@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFocalLength35mm];
  *a2 = result;
  return result;
}

id sub_19768565C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orientation];
  *a2 = result;
  return result;
}

id sub_197685698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelCount];
  *a2 = result;
  return result;
}

id sub_1976856D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelHeight];
  *a2 = result;
  return result;
}

id sub_197685710@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelWidth];
  *a2 = result;
  return result;
}

id sub_19768574C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 whiteBalance];
  *a2 = result;
  return result;
}

id sub_197685788@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureMode];
  *a2 = result;
  return result;
}

id sub_1976857C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureTime];
  *a2 = result;
  return result;
}

id sub_197685800@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fNumber];
  *a2 = result;
  return result;
}

id sub_19768583C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hasAlphaChannel];
  *a2 = result;
  return result;
}

id sub_197685878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAperture];
  *a2 = result;
  return result;
}

id sub_1976858B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isRedEyeOn];
  *a2 = result;
  return result;
}

id sub_1976858F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionHeightDPI];
  *a2 = result;
  return result;
}

id sub_19768592C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionWidthDPI];
  *a2 = result;
  return result;
}

void sub_197685968(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774EB20();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_1976859C0(uint64_t a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_79(a1, a2);
  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = *v2;
    LODWORD(v2) = sub_19774EB10();
    v9 = v2;
  }

  OUTLINED_FUNCTION_28(v2, v3, v9, v4, v5, v6, v7, v8, v11, v12);
}

void sub_197685A20(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailHeaders];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBC8, &qword_19775DA68);
    v5 = sub_19774EE30();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_197685AAC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBC8, &qword_19775DA68);
    v3 = sub_19774EE20();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEmailHeaders_];
}

id sub_197685B40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLikelyJunk];
  *a2 = result;
  return result;
}

void sub_197685B7C(void **a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    a5(0);
    v9 = sub_19774F120();
  }

  else
  {
    v9 = 0;
  }

  *v5 = v9;
}

void sub_197685BE4(void *a1, uint64_t *a2, uint64_t a3, int a4, void (*a5)(void), int a6, int a7, int a8)
{
  v8 = *a2;
  if (*a1)
  {
    a5(0);
    LODWORD(a1) = sub_19774F110();
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_28(a1, a2, v9, a4, a5, a6, a7, a8, v10, v11);
}

id sub_197685C5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerOrder];
  *a2 = result;
  return result;
}

void sub_197685C98(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774EF50();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_197685CF0(uint64_t a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_79(a1, a2);
  if (v3)
  {
    v9 = *v2;
    LODWORD(v2) = sub_19774EF20();
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_28(v2, v3, v10, v4, v5, v6, v7, v8, v11, v12);
}

void sub_197685D48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actionIdentifiers];
  v4 = sub_19774F120();

  *a2 = v4;
}

void sub_197685DA4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_19774F110();
  [v3 setActionIdentifiers_];
}

uint64_t sub_197685E08@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_197685E9C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBD0, &qword_19775DA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_197647660(a1, &v11 - v6, &qword_1EAF3FBD0, &qword_19775DA70);
  v8 = *a2;
  v9 = sub_19774ED30();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_19774ED20();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setSharedItemContentType_];
}

id sub_197685FB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsNavigation];
  *a2 = result;
  return result;
}

id sub_197685FF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsPhoneCall];
  *a2 = result;
  return result;
}

void sub_197686030(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774F120();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
}

void sub_197686088(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = *a2;
  if (v8)
  {
    LODWORD(v8) = sub_19774F110();
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_28(v8, a2, v10, a4, a5, a6, a7, a8, v11, v12);
}

uint64_t getEnumTagSinglePayload for SpotlightKeyPathMapper(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SpotlightKeyPathMapper(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_197686A98()
{
  result = qword_1EAF3FBC0;
  if (!qword_1EAF3FBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF3FBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return sub_19774F7E0();
}

id OUTLINED_FUNCTION_28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

id OUTLINED_FUNCTION_30_0(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = *a1;
  v6 = *a4;

  return [v5 v6];
}

uint64_t OUTLINED_FUNCTION_79(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *a2;
  return result;
}

uint64_t static UTType.intentPerson.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBD0, &qword_19775DA70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() personValueType];
  v5 = [v4 contentType];

  if (v5)
  {
    v6 = [v5 contentType];

    sub_19774EF50();
    v7 = sub_19774ED30();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    return sub_19774ED10();
  }

  else
  {
    result = sub_19774F710();
    __break(1u);
  }

  return result;
}

id LNConfigurableQueryRequest.init(query:target:options:)(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  switch(a3 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA50, off_1E74AF590);

      v17 = sub_1976787C4();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_0_12();
      if (a3)
      {

        v18 = a1;
        v19 = 0;
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v22 = a1;
        v19 = [v21 initWithInteger_];
      }

      v23 = objc_allocWithZone(LNPropertyQueryRequestType);
      v17 = sub_197678EB0(a1, a4, v19);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA48, off_1E74AF568);

      v17 = sub_197678838(v20);
      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_12();
      v17 = [objc_opt_self() queryRequest];
      break;
    default:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA58, off_1E74AF468);

      v17 = sub_1976787A8(v16);
      break;
  }

  v24 = v17;
  if (a8)
  {
    v25 = objc_allocWithZone(LNQueryRequestParameterTarget);
    v26 = a5;

    v27 = sub_197678F58(v26);
  }

  else
  {
    v27 = [objc_allocWithZone(LNQueryRequestDefaultQueryTarget) initWithEntityMetadata_];
  }

  v28 = v27;
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = a9;
  v31 = [v29 initWithQueryType:v24 target:v28 options:v30];

  sub_197687768(a5, v9, v10, a8 & 1);
  sub_1976877B4(a1, a2, a3);

  return v31;
}

uint64_t LNConfigurableQueryRequest.requestType.getter()
{
  v1 = [v0 queryType];
  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {

    v2 = 0;
    OUTLINED_FUNCTION_1_12();
    return v2;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {

    OUTLINED_FUNCTION_1_12();
    return 1;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_11_1())
  {

    OUTLINED_FUNCTION_1_12();
    return 2;
  }

  objc_opt_self();
  v3 = OUTLINED_FUNCTION_11_1();
  if (v3)
  {
    v4 = [v3 identifiers];
    sub_197648238(0, &qword_1EAF3F9B0, 0x1E69AC7E0);
    v2 = sub_19774F120();

    return v2;
  }

  objc_opt_self();
  v5 = OUTLINED_FUNCTION_11_1();
  if (v5)
  {
    v6 = [v5 queryString];
    v2 = sub_19774EF50();

    return v2;
  }

  objc_opt_self();
  v7 = OUTLINED_FUNCTION_11_1();
  if (v7)
  {
    v8 = v7;
    v2 = [v7 propertyQuery];
    v9 = [v8 maximumResultCount];
    v10 = v9;
    if (v9)
    {
      [v9 integerValue];
    }

    v13 = [v8 sortingOptions];
    if (v13)
    {
      v14 = v13;
      sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
      sub_19774F120();
    }

    return v2;
  }

  objc_opt_self();
  v11 = OUTLINED_FUNCTION_11_1();
  if (v11)
  {
    v12 = [v11 items];
    sub_197648238(0, &qword_1EAF3FA60, 0x1E6964E80);
    v2 = sub_19774F120();

    return v2;
  }

  sub_19774F5B0();

  v16 = [v0 queryType];
  v17 = [v16 description];
  v18 = sub_19774EF50();
  v20 = v19;

  MEMORY[0x19A8E4C40](v18, v20);

  result = OUTLINED_FUNCTION_3_6();
  __break(1u);
  return result;
}

uint64_t LNConfigurableQueryRequest.target.getter()
{
  v1 = v0;
  v2 = [v0 target];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 entityMetadata];

    return v4;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v4 = [v5 actionMetadata];
    v7 = [v6 parameterIdentifier];
    sub_19774EF50();

    return v4;
  }

  sub_19774F5B0();

  v9 = [v1 target];
  v10 = [v9 description];
  v11 = sub_19774EF50();
  v13 = v12;

  MEMORY[0x19A8E4C40](v11, v13);

  result = OUTLINED_FUNCTION_3_6();
  __break(1u);
  return result;
}

void sub_197687768(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

void *sub_1976877B4(void *result, id a2, unint64_t a3)
{
  switch(a3 >> 61)
  {
    case 0uLL:
    case 3uLL:

      goto LABEL_4;
    case 1uLL:

      goto LABEL_4;
    case 2uLL:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_So26LNConfigurableQueryRequestC12LinkServicesE0B4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_19768785C(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_19775DA90;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1976878AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1976878EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_197687950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x8000000197761460, v0, v1);
}

uint64_t sub_1976879D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
  v1 = sub_1976496B4(&qword_1EAF3F0A8, &qword_1EAF3F960, &unk_19775FC00);
  return sub_197649708(0x446465646F636E65, 0xEB00000000617461, v0, v1);
}

uint64_t sub_197687A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v7 = sub_197649284();
  v9 = v8;
  if (qword_1ED696E60 != -1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  OUTLINED_FUNCTION_2_9(v43);
  OUTLINED_FUNCTION_2_9(__src);
  sub_19764DFC8(v43, v39);
  if (qword_1ED696D68 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAF3EE60;
  v11 = *algn_1EAF3EE68;
  v12 = qword_1EAF3EE70;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
  v42 = &off_1F0BBB748;
  v36 = v10;
  v40[0] = v10;
  v40[1] = v11;
  v40[2] = v12;

  sub_19764B838(v40, MEMORY[0x1E69E7CC0], &unk_1F0BBACF0, &off_1F0BBAAE8);
  memcpy(__dst, __src, sizeof(__dst));
  sub_19764BBBC(__dst);
  __swift_destroy_boxed_opaque_existential_0(v40);
  memcpy(v45, v39, 0xB0uLL);
  if (qword_1ED696E58 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  __src[0] = a1;
  __src[1] = a2;
  v13 = sub_1976B7FC0();
  v15 = v14;
  v17 = v16;
  if (qword_1ED696D60 != -1)
  {
    swift_once();
  }

  __src[0] = v7;
  __src[1] = v9;
  v18 = sub_1976B7FC0();
  v20 = v19;
  v22 = v21;

  v23 = sub_1976B9D9C(v13, v15, v17, v18, v20, v22);
  v25 = v24;
  v27 = v26;

  v41 = &unk_1F0BBACF0;
  v42 = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v40[0] = swift_allocObject();
  memcpy(__src, v45, sizeof(__src));
  sub_1976BB434(v23, v25, v27, &unk_1F0BBACF0, &off_1F0BBAB00, v28, v29, v30, v36, a5, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13]);

  sub_19764BBBC(v45);
  v31 = v46;
  v32 = sub_1976C0920(v40);
  __swift_destroy_boxed_opaque_existential_0(v40);
  if (!v31 && v32)
  {
    sub_19765272C();

    v33 = v39[0];
    v34 = v39[1];
    v32 = sub_197687E64();
    sub_197652DCC(v33, v34);
  }

  return v32;
}

uint64_t sub_197687E64()
{
  sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF0, &qword_19775DBF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19775A850;
  *(v1 + 32) = sub_197648238(0, &qword_1ED696E38, 0x1E695DEC8);
  *(v1 + 40) = sub_197648238(0, &qword_1ED696EF8, off_1E74AF338);
  sub_19774F340();

  if (!v0)
  {
    if (v3[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
      if (swift_dynamicCast())
      {
        return v3[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_19766A0E8(v3);
      return 0;
    }
  }

  return result;
}

void sub_197687FB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_19774EB80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_197689BAC(a1, &qword_1EAF3F8F0, &qword_19775DA60);
    sub_197689660(v9);

    sub_197689BAC(v9, &qword_1EAF3F8F0, &qword_19775DA60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v15 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_19768983C(v14, a2);

    *v3 = v17;
  }
}

id sub_19768816C()
{
  result = [objc_allocWithZone(type metadata accessor for ExtensionUndoAssertionCache()) init];
  qword_1EAF3FC00 = result;
  return result;
}

id static ExtensionUndoAssertionCache.shared.getter()
{
  if (qword_1EAF3F490 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF3FC00;

  return v1;
}

id sub_197688220()
{
  sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
  sub_19774EB80();
  sub_1976895F8();
  v1 = sub_19774EE40();
  v2 = &v0[OBJC_IVAR___LNExtensionUndoAssertionCache_assertions];
  *v2 = 0;
  *(v2 + 1) = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ExtensionUndoAssertionCache();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1976882E0(uint64_t a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions;
  os_unfair_lock_lock(v3);
  sub_197688354((v3 + 8), a1, &v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

void sub_197688354(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v56 = a2;
  v60 = sub_19774EB80();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v45 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  v10 = *(*(v58 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v58);
  v54 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v46 = (&v45 - v18);
  v49 = a1;
  v19 = *a1;
  v20 = *a1 + 64;
  v21 = 1 << *(*a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(*a1 + 64);
  v24 = (v21 + 63) >> 6;
  v52 = v4 + 16;
  v55 = v4;
  v57 = v4 + 8;
  v59 = v19;

  v25 = 0;
  v51 = v20;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = __clz(__rbit64(v23)) | (v26 << 6);
      v28 = v58;
      v29 = *(*(v59 + 48) + 8 * v27);
      v30 = v55;
      v31 = v53;
      (*(v55 + 16))(&v53[*(v58 + 48)], *(v59 + 56) + *(v55 + 72) * v27, v60);
      *v31 = v29;
      sub_197689ACC(v31, v15);
      v32 = v54;
      sub_197689B3C(v15, v54);
      v33 = v15;
      v34 = *v32;
      v35 = *(v28 + 48);
      v36 = v29;
      v37 = [v34 target];

      LOBYTE(v34) = [v37 matchesProcess_];
      v38 = *(v30 + 8);
      v38(v32 + v35, v60);
      if (v34)
      {
        break;
      }

      v23 &= v23 - 1;
      sub_197689BAC(v33, &qword_1EAF3FC40, &qword_19775DC88);
      v25 = v26;
      v15 = v33;
      v20 = v51;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    v40 = v46;
    sub_197689ACC(v33, v46);
    v41 = *v40;
    v42 = v60;
    v38(v40 + *(v58 + 48), v60);
    v43 = v48;
    sub_19774EB60();
    v44 = v47;
    sub_19774EB70();
    v38(v43, v42);
    v39 = 1;
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v42);
    sub_197687FB4(v44, v41);
LABEL_12:
    *v50 = v39;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v39 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1976887C4(void *a1)
{
  v2 = sub_19774EB80();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_19774EB60();
  sub_19774EB70();
  v13 = *(v5 + 8);
  v13(v10, v2);
  sub_197688984(a1, v12);
  return (v13)(v12, v2);
}

void sub_197688984(void *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = sub_19774EB80();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v9);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(&v17[v16], v15, v9);
  aBlock[4] = sub_1976897BC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976891F8;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v18);
  aBlock[0] = 0;
  if ([a1 acquireWithError_])
  {
    v19 = (v2 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions);
    v20 = aBlock[0];
    os_unfair_lock_lock(v19);
    v21 = a1;
    sub_19774EB60();
    sub_19774EB70();
    (*(v12 + 8))(v15, v9);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    sub_197687FB4(v8, v21);
    os_unfair_lock_unlock(v19);
  }

  else
  {
    v22 = aBlock[0];
    sub_19774E9F0();

    swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_197688C70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19774EB80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF3F490 != -1)
  {
    swift_once();
  }

  sub_197689284(a1);
  sub_19774EB60();
  v10 = sub_19774EB40();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v11 = [a1 explanation];
    v12 = sub_19774EF50();
    v14 = v13;

    v15 = [a1 target];
    sub_197689A5C(a1);
    v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v17 = sub_197648278(v12, v14, v15);
    sub_197688984(v17, a3);
    if (qword_1EAF3F420 != -1)
    {
      swift_once();
    }

    v25 = sub_19774ED60();
    __swift_project_value_buffer(v25, qword_1EAF43E00);
    v26 = a1;
    v27 = sub_19774ED40();
    v28 = sub_19774F290();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = [v26 target];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_19763D000, v27, v28, "Assertion for extension %@ containing undo managers has been re-acquired", v29, 0xCu);
      sub_197689BAC(v30, &qword_1EAF3FC38, &qword_19775DC80);
      MEMORY[0x19A8E67F0](v30, -1, -1);
      MEMORY[0x19A8E67F0](v29, -1, -1);
    }
  }

  else
  {
    if (qword_1EAF3F420 != -1)
    {
      swift_once();
    }

    v18 = sub_19774ED60();
    __swift_project_value_buffer(v18, qword_1EAF43E00);
    v19 = a1;
    v20 = sub_19774ED40();
    v21 = sub_19774F290();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = [v19 target];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_19763D000, v20, v21, "Assertion for extension %@ containing undo managers has expired and invalidated", v22, 0xCu);
      sub_197689BAC(v23, &qword_1EAF3FC38, &qword_19775DC80);
      MEMORY[0x19A8E67F0](v23, -1, -1);
      MEMORY[0x19A8E67F0](v22, -1, -1);
    }
  }
}

void sub_1976891F8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_197689284(void *a1)
{
  v3 = (v1 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions);
  os_unfair_lock_lock(v3);
  sub_1976892EC(&v3[2], a1);

  os_unfair_lock_unlock(v3);
}

void sub_1976892EC(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  sub_197689660(v11 - v5);
  sub_197689BAC(v6, &qword_1EAF3F8F0, &qword_19775DA60);
  v11[0] = 0;
  if ([a2 invalidateSyncWithError_])
  {
    v7 = v11[0];
  }

  else
  {
    v9 = v11[0];
    v10 = sub_19774E9F0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
}

id ExtensionUndoAssertionCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionUndoAssertionCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1976895F8()
{
  result = qword_1EAF3FC20;
  if (!qword_1EAF3FC20)
  {
    sub_197648238(255, &qword_1EAF3FC18, 0x1E69C7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3FC20);
  }

  return result;
}

uint64_t sub_197689660@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_19768F3E4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC30, &qword_19775DC78);
    sub_19774F6F0();

    v10 = *(v16 + 56);
    v11 = sub_19774EB80();
    (*(*(v11 - 8) + 32))(a1, v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
    sub_1976895F8();
    sub_19774F700();
    *v2 = v16;
    v12 = a1;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = sub_19774EB80();
    v12 = a1;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

void sub_1976897BC(void *a1, uint64_t a2)
{
  v5 = *(sub_19774EB80() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_197688C70(a1, a2, v6);
}

id sub_19768983C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_19768F3E4();
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC30, &qword_19775DC78);
  if ((sub_19774F6F0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_19768F3E4();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = sub_19774EB80();
    v16 = *(v15 - 8);
    v17 = *(v16 + 40);
    v18 = v15;
    v19 = v14 + *(v16 + 72) * v8;

    return v17(v19, a1, v18);
  }

  else
  {
    sub_1976899B0(v8, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_1976899B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_19774EB80();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_197689A5C(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &qword_1ED696D38, 0x1E69C7550);
  v3 = sub_19774F120();

  return v3;
}

uint64_t sub_197689ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197689B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197689BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_197689C00()
{
  qword_1EAF43A18 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_197689C3C(unint64_t description, int a2, char a3, void *dso)
{
  v5 = description;
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (qword_1EAF3EDB8 == -1)
      {
LABEL_4:
        v6 = qword_1EAF43A18;

        return _os_activity_create(dso, v5, v6, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      OUTLINED_FUNCTION_0_15();
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v8 = (description & 0x3F) << 8;
    v9 = (description >> 6) + v8 + 33217;
    v10 = (v8 | (description >> 6) & 0x3F) << 8;
    v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v12 = (description >> 12) + v10 + 8487393;
    if (description >> 16)
    {
      v7 = v11;
    }

    else
    {
      v7 = v12;
    }

    if (description < 0x800)
    {
      v7 = v9;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v7 = description + 1;
LABEL_12:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (qword_1EAF3EDB8 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  return _os_activity_create(dso, descriptiona, qword_1EAF43A18, OS_ACTIVITY_FLAG_DEFAULT);
}

BOOL sub_197689DFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_197689EAC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A8E5210](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}