void CKEvent.init(entity:)()
{
  OUTLINED_FUNCTION_17();
  v84 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  OUTLINED_FUNCTION_2_4();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v82 - v10;
  v12 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v85 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_4();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v90 = &v82 - v21;
  v22 = sub_1C86F8EEC();
  v23 = OUTLINED_FUNCTION_18_2(v22, sel_valueForKey_);

  if (v23)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v24)
  {
    sub_1C86A5148(&v88, &qword_1EC2AD810);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v27 = sub_1C86F8DBC();
    __swift_project_value_buffer(v27, qword_1ED5BC790);
    v28 = v2;
    v29 = sub_1C86F8DAC();
    v30 = sub_1C86F912C();

    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v31 = swift_slowAlloc();
      *&v88 = v31;
      *v22 = 136315138;

      v32 = sub_1C8685FDC();

      *(v22 + 1) = v32;
      OUTLINED_FUNCTION_25_3();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v39 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v39);
    }

    sub_1C868B6E4();
    swift_allocError();
    v40 = sub_1C86F8EEC();
    v41 = [v28 valueForKey_];
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_23_2();
  v82 = v86;
  v83 = v87;
  v25 = OUTLINED_FUNCTION_13_7();
  v26 = OUTLINED_FUNCTION_18_2(v25, sel_valueForKey_);

  if (v26)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v42)
  {

    sub_1C86A5148(&v88, &qword_1EC2AD810);
    OUTLINED_FUNCTION_30_3(v11, 1);
    goto LABEL_19;
  }

  v43 = swift_dynamicCast();
  OUTLINED_FUNCTION_30_3(v11, v43 ^ 1u);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

LABEL_19:
    sub_1C86A5148(v11, &qword_1EC2ADAC0);
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v44 = sub_1C86F8DBC();
    __swift_project_value_buffer(v44, qword_1ED5BC790);
    v28 = v2;
    v45 = sub_1C86F8DAC();
    v46 = sub_1C86F912C();

    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v47 = swift_slowAlloc();
      *&v88 = v47;
      *v25 = 136315138;

      v48 = sub_1C8685FDC();

      *(v25 + 1) = v48;
      OUTLINED_FUNCTION_25_3();
      _os_log_impl(v49, v50, v51, v52, v53, v54);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v55 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v55);
    }

    sub_1C868B6E4();
    swift_allocError();
    OUTLINED_FUNCTION_23_2();
    v40 = OUTLINED_FUNCTION_13_7();
    v41 = [v28 valueForKey_];
LABEL_24:
    v56 = v41;

    if (v56)
    {
      sub_1C86F929C();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    OUTLINED_FUNCTION_19_4();

    goto LABEL_28;
  }

  v57 = v11;
  v58 = *(v85 + 32);
  v58(v90, v57, v12);
  v59 = sub_1C86F8EEC();
  v60 = OUTLINED_FUNCTION_18_2(v59, &selRef_localization);

  if (v60)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v61)
  {

    sub_1C86A5148(&v88, &qword_1EC2AD810);
    OUTLINED_FUNCTION_30_3(v7, 1);
    goto LABEL_36;
  }

  v62 = swift_dynamicCast();
  OUTLINED_FUNCTION_30_3(v7, v62 ^ 1u);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {

LABEL_36:
    sub_1C86A5148(v7, &qword_1EC2ADAC0);
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v63 = sub_1C86F8DBC();
    __swift_project_value_buffer(v63, qword_1ED5BC790);
    v64 = v2;
    v65 = sub_1C86F8DAC();
    v66 = sub_1C86F912C();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_17_4();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v88 = v68;
      *v67 = 136315138;

      v69 = sub_1C8685FDC();

      *(v67 + 4) = v69;
      _os_log_impl(&dword_1C8683000, v65, v66, "Missing event endDate for entity %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v70 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v70);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
    }

    sub_1C868B6E4();
    swift_allocError();
    v71 = sub_1C86F8EEC();
    v72 = OUTLINED_FUNCTION_18_2(v71, sel_valueForKey_);

    if (v72)
    {
      sub_1C86F929C();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    OUTLINED_FUNCTION_19_4();

    (*(v85 + 8))(v90, v12);
    goto LABEL_28;
  }

  v58(v18, v7, v12);
  v73 = sub_1C86F8EEC();
  v74 = OUTLINED_FUNCTION_18_2(v73, sel_valueForKey_);

  if (v74)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v75)
  {
    sub_1C86A5148(&v88, &qword_1EC2AD810);
LABEL_52:
    v86 = MEMORY[0x1E69E7CC8];
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
  if ((swift_dynamicCast() & 1) == 0 || !v86)
  {
    goto LABEL_52;
  }

LABEL_53:
  v76 = sub_1C86F8EEC();
  v83 = sub_1C86F8CCC();
  v82 = sub_1C86F8CCC();
  v77 = v86;
  if (v86)
  {
    v78 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v80 = v82;
    v79 = v83;
    sub_1C86B7E6C(v76, v83, v82, v77, v78);

    v81 = *(v85 + 8);
    v81(v18, v12);
    v81(v90, v12);

LABEL_28:
    OUTLINED_FUNCTION_16();
    return;
  }

  __break(1u);
}

void __swiftcall CKEvent.previous()(CKEvent_optional *__return_ptr retstr)
{
  type metadata accessor for CKKnowledgeStoreEntity();
  v3 = qword_1EC2AD7E8;
  v4 = v1;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_10_9();
  }

  v5 = sub_1C86B5180(v4, qword_1EC2AEFD8);
  v6 = OUTLINED_FUNCTION_11_10();
  v8 = v7(v6);
  if (v3)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v9 = sub_1C86F8DBC();
    __swift_project_value_buffer(v9, qword_1ED5BC790);
    v10 = v3;
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v13 = swift_slowAlloc();
      v27 = v13;
      OUTLINED_FUNCTION_28_3(4.8149e-34);
      sub_1C86F94EC();
      v14 = sub_1C8685FDC();

      *(v2 + 4) = v14;
      OUTLINED_FUNCTION_25_3();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v21 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v21);
    }

    else
    {
    }
  }

  else
  {
    v22 = v8;

    v23 = *(v22 + 16);
    if (v23)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_1C86F93BC();
      v24 = 32;
      do
      {
        *(v22 + v24);
        sub_1C86F939C();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93CC();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93DC();
        sub_1C86F93AC();
        v24 += 24;
        --v23;
      }

      while (v23);
    }

    v27 = sub_1C86B7F08(v25);
    sub_1C86B6A98(&v27);

    v26 = sub_1C86B6164(v27);

    if (v26)
    {
      sub_1C869F398(0, &qword_1EC2ADC00);
      CKEvent.init(entity:)();
    }
  }
}

char *sub_1C86B6164(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C86B6A74((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1CCA7B5C0](v3, a1);
  }

  result = sub_1C86F92EC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void __swiftcall CKEvent.next()(CKEvent_optional *__return_ptr retstr)
{
  type metadata accessor for CKKnowledgeStoreEntity();
  v3 = qword_1EC2AD7E8;
  v4 = v1;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_10_9();
  }

  v5 = sub_1C86B5180(v4, qword_1EC2AEFD8);
  v6 = OUTLINED_FUNCTION_11_10();
  v8 = v7(v6);
  if (!v3)
  {
    v22 = v8;

    v23 = *(v22 + 16);
    if (v23)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1C86F93BC();
      v24 = 48;
      do
      {
        *(v22 + v24);
        sub_1C86F939C();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93CC();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93DC();
        sub_1C86F93AC();
        v24 += 24;
        --v23;
      }

      while (v23);
    }

    v28 = sub_1C86B7F08(v25);
    sub_1C86B6A98(&v28);

    v26 = v28;
    if (!sub_1C86B50B8(v28))
    {

      return;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA7B5C0](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v27 = *(v26 + 32);
    }

    sub_1C869F398(0, &qword_1EC2ADC00);
    CKEvent.init(entity:)();
    return;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v9 = sub_1C86F8DBC();
  __swift_project_value_buffer(v9, qword_1ED5BC790);
  v10 = v3;
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F912C();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_17_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_6_10();
    v13 = swift_slowAlloc();
    v28 = v13;
    OUTLINED_FUNCTION_28_3(4.8149e-34);
    sub_1C86F94EC();
    v14 = sub_1C8685FDC();

    *(v2 + 4) = v14;
    OUTLINED_FUNCTION_25_3();
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    v21 = OUTLINED_FUNCTION_4_12();
    MEMORY[0x1CCA7C540](v21);
  }

  else
  {
  }
}

void sub_1C86B6524()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v23 - v14;
  v16 = *v3;
  v17 = *v1;
  v18 = OUTLINED_FUNCTION_13_7();
  v19 = [v16 valueForKey_];

  if (v19)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
    sub_1C8689930(v23, &v24);
    OUTLINED_FUNCTION_29_3();
    v20 = OUTLINED_FUNCTION_13_7();
    v21 = [v17 valueForKey_];

    if (v21)
    {
      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_29_3();
      sub_1C86F8CEC();
      v22 = *(v6 + 8);
      v22(v11, v4);
      v22(v15, v4);
      OUTLINED_FUNCTION_16();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CKEphemeralEventSequence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKEphemeralEventSequence.init()()
{
  v13 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_3_2();
  v6 = v5 - v4;
  v7 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_2();
  v9 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_3_2();
  v12 = OBJC_IVAR___CKEphemeralEventSequence_queue;
  sub_1C869F398(0, &qword_1ED5BC6C8);
  sub_1C86F8E1C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0);
  sub_1C869F33C(&qword_1ED5BC6D8, &qword_1EC2ADAE0);
  sub_1C86F92AC();
  (*(v1 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *&v14[v12] = sub_1C86F91CC();
  v15.receiver = v14;
  v15.super_class = type metadata accessor for CKEphemeralEventSequence();
  return objc_msgSendSuper2(&v15, sel_init);
}

id CKEphemeralEventSequence.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKEphemeralEventSequence();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C86B69F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

unint64_t sub_1C86B6A74(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C86B6A98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C86B8160(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C86B6B14(v6);
  return sub_1C86F93AC();
}

void sub_1C86B6B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (sub_1C86F945C() < v2)
  {
    v3 = sub_1C86B4B58(v2 / 2);
    sub_1C86B6E88();
    if (v1)
    {
      if (v2 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v2 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C86B6BF4();
  }
}

void sub_1C86B6BF4()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_27_3();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_12_7(v11, v12, v13, v14, v15, v16, v17, v18, v36);
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_16_3();
  v44 = v21;
  if (v3 != v5)
  {
    OUTLINED_FUNCTION_9_10();
    v40 = (v22 + 8);
    v42 = *v1;
    v23 = *v1 + 8 * v3 - 8;
    v24 = v7 - v3;
    while (2)
    {
      v38 = v23;
      v39 = v3;
      v25 = *(v42 + 8 * v3);
      v37 = v24;
      v26 = v24;
      do
      {
        v27 = *v23;
        v28 = v25;
        v45 = v27;
        v29 = OUTLINED_FUNCTION_13_7();
        v30 = [v28 valueForKey_];

        if (!v30)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_31_2();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_2_9();
        swift_dynamicCast();
        v31 = OUTLINED_FUNCTION_13_7();
        v32 = [v45 valueForKey_];

        if (!v32)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_31_2();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_2_9();
        v33 = v26;
        swift_dynamicCast();
        v43 = sub_1C86F8CEC();
        v34 = *v40;
        (*v40)(v41, v8);
        v34(v44, v8);

        if (v43 != -1)
        {
          break;
        }

        if (!v42)
        {
          goto LABEL_13;
        }

        v35 = *v23;
        v25 = *(v23 + 8);
        *v23 = v25;
        *(v23 + 8) = v35;
        v23 -= 8;
        ++v26;
      }

      while (v33 != -1);
      v3 = v39 + 1;
      v23 = v38 + 8;
      v24 = v37 - 1;
      if (v39 + 1 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_16();
}

void sub_1C86B6E88()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v129 = v5;
  v6 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_27_3();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_12_7(v9, v10, v11, v12, v13, v14, v15, v16, v125);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16_3();
  v145 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_16_3();
  v135 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_16_3();
  v26 = v4[1];
  v138 = v4;
  if (v26 >= 1)
  {
    v132 = v25;
    v126 = v2;
    v27 = 0;
    OUTLINED_FUNCTION_3_13();
    v143 = (v28 + 8);
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v30 = v27++;
      v130 = v30;
      if (v27 >= v26)
      {
        goto LABEL_25;
      }

      v31 = *v138;
      v32 = *(*v138 + 8 * v30);
      v33 = v30;
      v34 = *(*v138 + 8 * v27);
      v35 = v32;
      sub_1C86B6524();
      v136 = v36;
      if (v0)
      {

        goto LABEL_111;
      }

      v127 = v29;

      v29 = (v31 + 8 * v33 + 16);
      OUTLINED_FUNCTION_3_13();
      v133 = v26;
      while (1)
      {
        v38 = v37;
        if (v27 + 1 >= v26)
        {
          break;
        }

        v39 = *(v29 - 1);
        v40 = *v29;
        v41 = v39;
        v42 = OUTLINED_FUNCTION_13_7();
        v43 = [v40 valueForKey_];

        if (!v43)
        {
          goto LABEL_141;
        }

        OUTLINED_FUNCTION_33_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_8();
        OUTLINED_FUNCTION_32_2();
        v44 = OUTLINED_FUNCTION_13_7();
        v45 = [v41 valueForKey_];

        if (!v45)
        {
          goto LABEL_142;
        }

        OUTLINED_FUNCTION_33_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_8();
        OUTLINED_FUNCTION_32_2();
        v35 = sub_1C86F8CEC();
        v46 = *v143;
        (*v143)(v135, v6);
        v46(v132, v6);

        v29 += 8;
        ++v27;
        OUTLINED_FUNCTION_3_13();
        v26 = v133;
        if ((v47 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v27 = v26;
LABEL_12:
      if ((v136 & 1) == 0)
      {
        break;
      }

      v30 = v130;
      if (v27 < v130)
      {
        goto LABEL_136;
      }

      v29 = v127;
      if (v130 >= v27)
      {
        goto LABEL_25;
      }

      if (v26 >= v38)
      {
        v48 = v38;
      }

      else
      {
        v48 = v26;
      }

      v49 = 8 * v48 - 8;
      v50 = v27;
      v35 = v138;
      v51 = 8 * v33;
      do
      {
        if (v30 != --v50)
        {
          v52 = *v138;
          if (!*v138)
          {
            goto LABEL_145;
          }

          v53 = *(v52 + v51);
          *(v52 + v51) = *(v52 + v49);
          *(v52 + v49) = v53;
        }

        ++v30;
        v49 -= 8;
        v51 += 8;
      }

      while (v30 < v50);
      v30 = v130;
LABEL_26:
      v54 = v35[1];
      if (v27 < v54)
      {
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_133;
        }

        if (v27 - v30 >= v126)
        {
LABEL_45:
          v30 = v130;
        }

        else
        {
          v55 = v130 + v126;
          if (__OFADD__(v130, v126))
          {
            goto LABEL_134;
          }

          if (v55 >= v54)
          {
            v55 = v35[1];
          }

          if (v55 < v130)
          {
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            v29 = sub_1C86B7D58(v29);
LABEL_102:
            v118 = v29 + 16;
            v119 = *(v29 + 2);
            while (v119 >= 2)
            {
              if (!*v35)
              {
                goto LABEL_144;
              }

              v120 = v35;
              v35 = v29;
              v121 = &v29[16 * v119];
              v122 = *v121;
              v123 = &v118[2 * v119];
              v29 = v123[1];
              sub_1C86B7818();
              if (v0)
              {
                break;
              }

              if (v29 < v122)
              {
                goto LABEL_128;
              }

              if (v119 - 2 >= *v118)
              {
                goto LABEL_129;
              }

              *v121 = v122;
              *(v121 + 1) = v29;
              v124 = *v118 - v119;
              if (*v118 < v119)
              {
                goto LABEL_130;
              }

              v119 = *v118 - 1;
              memmove(v123, v123 + 2, 16 * v124);
              *v118 = v119;
              v29 = v35;
              v35 = v120;
            }

LABEL_110:

LABEL_111:
            OUTLINED_FUNCTION_16();
            return;
          }

          v30 = v130;
          if (v27 != v55)
          {
            v128 = v29;
            v142 = *v35;
            v56 = *v35 + 8 * v27 - 8;
            v57 = v130 - v27;
            v58 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
            v131 = v55;
LABEL_35:
            v139 = v27;
            v59 = *(v142 + 8 * v27);
            v134 = v57;
            v60 = v57;
            v137 = v56;
            v61 = v56;
            while (1)
            {
              v62 = *v61;
              v63 = v59;
              v64 = v62;
              v65 = OUTLINED_FUNCTION_13_7();
              v66 = [v63 v58[495]];

              if (!v66)
              {
                goto LABEL_139;
              }

              v144 = v60;
              OUTLINED_FUNCTION_33_1();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_14_8();
              OUTLINED_FUNCTION_32_2();
              v67 = OUTLINED_FUNCTION_13_7();
              v68 = OUTLINED_FUNCTION_18_2(v67, v58[495]);

              if (!v68)
              {
                break;
              }

              OUTLINED_FUNCTION_33_1();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_14_8();
              OUTLINED_FUNCTION_32_2();
              v69 = sub_1C86F8CEC();
              v70 = *v143;
              (*v143)(v141, v6);
              v70(v145, v6);

              if (v69 != -1)
              {
                OUTLINED_FUNCTION_3_13();
                v58 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
LABEL_43:
                v27 = v139 + 1;
                v56 = v137 + 8;
                v57 = v134 - 1;
                if (v139 + 1 == v131)
                {
                  v27 = v131;
                  v35 = v138;
                  v29 = v128;
                  goto LABEL_45;
                }

                goto LABEL_35;
              }

              if (!v142)
              {
                goto LABEL_140;
              }

              v71 = *v61;
              v59 = *(v61 + 8);
              *v61 = v59;
              *(v61 + 8) = v71;
              v61 -= 8;
              ++v60;
              v58 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
              if (v144 == -1)
              {
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }
        }
      }

      if (v27 < v30)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C86C4F54();
        v29 = v116;
      }

      v72 = *(v29 + 2);
      v73 = v72 + 1;
      v74 = v130;
      if (v72 >= *(v29 + 3) >> 1)
      {
        sub_1C86C4F54();
        v74 = v130;
        v29 = v117;
      }

      *(v29 + 2) = v73;
      v75 = v29 + 32;
      v76 = &v29[16 * v72 + 32];
      *v76 = v74;
      *(v76 + 1) = v27;
      if (!*v129)
      {
        goto LABEL_146;
      }

      if (v72)
      {
        v140 = v27;
        while (1)
        {
          v77 = v73 - 1;
          v78 = &v75[16 * v73 - 16];
          v79 = &v29[16 * v73];
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v80 = *(v29 + 4);
            v81 = *(v29 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_67:
            if (v83)
            {
              goto LABEL_119;
            }

            v95 = *v79;
            v94 = *(v79 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_122;
            }

            v99 = *(v78 + 1);
            v100 = v99 - *v78;
            if (__OFSUB__(v99, *v78))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v97, v100))
            {
              goto LABEL_127;
            }

            if (v97 + v100 >= v82)
            {
              if (v82 < v100)
              {
                v77 = v73 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          if (v73 < 2)
          {
            goto LABEL_121;
          }

          v102 = *v79;
          v101 = *(v79 + 1);
          v90 = __OFSUB__(v101, v102);
          v97 = v101 - v102;
          v98 = v90;
LABEL_82:
          if (v98)
          {
            goto LABEL_124;
          }

          v104 = *v78;
          v103 = *(v78 + 1);
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_126;
          }

          if (v105 < v97)
          {
            goto LABEL_96;
          }

LABEL_89:
          if (v77 - 1 >= v73)
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
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
            goto LABEL_135;
          }

          if (!*v35)
          {
            goto LABEL_143;
          }

          v109 = v29;
          v110 = &v75[16 * v77 - 16];
          v29 = *v110;
          v111 = v77;
          v112 = v75;
          v113 = &v75[16 * v77];
          v114 = *(v113 + 1);
          sub_1C86B7818();
          if (v0)
          {
            goto LABEL_110;
          }

          if (v114 < v29)
          {
            goto LABEL_114;
          }

          v35 = *(v109 + 2);
          if (v111 > v35)
          {
            goto LABEL_115;
          }

          *v110 = v29;
          *(v110 + 1) = v114;
          if (v111 >= v35)
          {
            goto LABEL_116;
          }

          v73 = v35 - 1;
          memmove(v113, v113 + 16, 16 * (v35 - v111 - 1));
          v29 = v109;
          *(v109 + 2) = v35 - 1;
          v115 = v35 > 2;
          v35 = v138;
          v27 = v140;
          v75 = v112;
          if (!v115)
          {
            goto LABEL_96;
          }
        }

        v84 = &v75[16 * v73];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_117;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_118;
        }

        v91 = *(v79 + 1);
        v92 = v91 - *v79;
        if (__OFSUB__(v91, *v79))
        {
          goto LABEL_120;
        }

        v90 = __OFADD__(v82, v92);
        v93 = v82 + v92;
        if (v90)
        {
          goto LABEL_123;
        }

        if (v93 >= v87)
        {
          v107 = *v78;
          v106 = *(v78 + 1);
          v90 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v90)
          {
            goto LABEL_131;
          }

          if (v82 < v108)
          {
            v77 = v73 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_96:
      v26 = v35[1];
      if (v27 >= v26)
      {
        goto LABEL_100;
      }
    }

    v29 = v127;
    v30 = v130;
LABEL_25:
    v35 = v138;
    goto LABEL_26;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_100:
  if (*v129)
  {
    v35 = v138;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_102;
  }

LABEL_147:
  __break(1u);
}

void sub_1C86B7818()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v69 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_16_3();
  v67 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v5 - v7) / 8;
  v68 = (v22 + 8);
  v23 = (v3 - v5) / 8;
  if (v21 >= v23)
  {
    OUTLINED_FUNCTION_26_3();
    sub_1C869F3D8(v5, (v3 - v5) / 8, v1);
    v24 = &v1[8 * v23];
    v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
    v70 = v1;
    v73 = v7;
LABEL_16:
    v43 = (v5 - 8);
    v44 = (v3 - 8);
    v75 = v5;
    for (i = (v5 - 8); v24 > v1 && v5 > v7; v43 = i)
    {
      v72 = v24;
      v47 = v24 - 8;
      v46 = *(v24 - 1);
      v48 = *v43;
      v49 = v46;
      v50 = v48;
      v51 = OUTLINED_FUNCTION_13_7();
      v52 = v42[495];
      v67 = v49;
      v53 = [v49 v52];

      if (!v53)
      {
        goto LABEL_39;
      }

      v71 = v44;
      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v54 = v69;
      swift_dynamicCast();
      v55 = OUTLINED_FUNCTION_13_7();
      v56 = [v50 v42[495]];

      if (!v56)
      {
        goto LABEL_41;
      }

      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v57 = v66;
      swift_dynamicCast();
      v58 = sub_1C86F8CEC();
      v59 = *v68;
      (*v68)(v57, v54);
      v59(v15, v54);

      if (v58 == -1)
      {
        v1 = v70;
        v3 = v71;
        v61 = i;
        v5 = i;
        v24 = v72;
        v7 = v73;
        v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
        if (v71 + 1 != v75)
        {
          *v71 = *i;
          v5 = v61;
        }

        goto LABEL_16;
      }

      v60 = v71;
      v5 = v75;
      if (v72 != (v71 + 1))
      {
        *v71 = *v47;
      }

      v44 = v60 - 1;
      v24 = v47;
      v1 = v70;
      v7 = v73;
      OUTLINED_FUNCTION_26_3();
      v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
    }

LABEL_31:
    v62 = (v24 - v1) / 8;
    if (v5 != v1 || v5 >= &v1[8 * v62])
    {
      memmove(v5, v1, 8 * v62);
    }

    OUTLINED_FUNCTION_16();
  }

  else
  {
    v66 = &v64 - v20;
    OUTLINED_FUNCTION_9_10();
    sub_1C869F3D8(v7, (v5 - v7) / 8, v1);
    v24 = &v1[8 * v21];
    v71 = v3;
    v72 = v24;
    while (1)
    {
      if (v1 >= v24 || v5 >= v3)
      {
        v5 = v7;
        goto LABEL_31;
      }

      v73 = v7;
      v74 = v5;
      v26 = *v1;
      v27 = *v5;
      v28 = v26;
      v29 = OUTLINED_FUNCTION_13_7();
      v30 = [v27 valueForKey_];

      if (!v30)
      {
        break;
      }

      v70 = v1;
      OUTLINED_FUNCTION_31_2();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v31 = v66;
      v32 = v69;
      OUTLINED_FUNCTION_29_3();
      v33 = OUTLINED_FUNCTION_13_7();
      v34 = [v28 valueForKey_];

      if (!v34)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_31_2();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v35 = v67;
      OUTLINED_FUNCTION_29_3();
      v36 = sub_1C86F8CEC();
      v37 = v32;
      v38 = *v68;
      (*v68)(v35, v37);
      v38(v31, v37);

      v5 = v74;
      if (v36 == -1)
      {
        v39 = v74;
        v40 = v73;
        v41 = v73 == v74;
        v5 = v74 + 8;
        v1 = v70;
      }

      else
      {
        v39 = v70;
        v1 = v70 + 8;
        v40 = v73;
        v41 = v73 == v70;
      }

      v24 = v72;
      if (!v41)
      {
        *v40 = *v39;
      }

      v7 = v40 + 8;
      v3 = v71;
      OUTLINED_FUNCTION_9_10();
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

char *sub_1C86B7D6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_1C86B7E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1C86F8E8C();

  v10 = [a5 initWithIdentifier:a1 startDate:a2 endDate:a3 metadata:v9];

  return v10;
}

uint64_t sub_1C86B7F08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1C86F92EC();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1C86B69F4(v4, 0);
      sub_1C86B7F9C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1C86B7F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C86F92EC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C86B50B8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CKKnowledgeStoreEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C869F33C(&unk_1EC2ADC20, &qword_1EC2ADC18);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC18);
          v9 = sub_1C86B4C08(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 OUTLINED_FUNCTION_7_12()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_1C86F8EEC();
}

id OUTLINED_FUNCTION_18_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  v3 = *(v1 - 96);
  *v0 = *(v1 - 112);
  *(v0 + 16) = v3;
  *(v0 + 32) = 2;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_24_2()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_1C86F929C();
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1C86F929C();
}

void CKTripleCondition.__allocating_init(subject:predicate:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(v6);
  v13 = OUTLINED_FUNCTION_45_1();
  CKTripleCondition.init(subject:predicate:object:)(v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C86B8410(uint64_t a1)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a1);
  return sub_1C86F956C();
}

uint64_t sub_1C86B8480(uint64_t a1, uint64_t a2)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a2);
  return sub_1C86F956C();
}

id CKGenericCondition.__allocating_init(_:value:negated:)()
{
  OUTLINED_FUNCTION_42_1();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_17_5();
  return CKGenericCondition.init(_:value:negated:)();
}

uint64_t sub_1C86B8510(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 1701736302;
    }

    v20 = 0x7469736F706D6F63;
    v6 = [a1 & 0x3FFFFFFFFFFFFFFFLL description];
    v7 = sub_1C86F8EFC();
    v9 = v8;

    MEMORY[0x1CCA7B200](v7, v9);

    MEMORY[0x1CCA7B200](44, 0xE100000000000000);
    if (a2)
    {
      v10 = [a2 description];
      v11 = sub_1C86F8EFC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    MEMORY[0x1CCA7B200](v11, v13);

    MEMORY[0x1CCA7B200](44, 0xE100000000000000);
    if (a3)
    {
      v16 = [a3 description];
      v17 = sub_1C86F8EFC();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    MEMORY[0x1CCA7B200](v17, v19);
  }

  else
  {
    v20 = 0x28656C706D6973;
    v14 = CKMatchType.description.getter(*(a1 + 16));
    MEMORY[0x1CCA7B200](v14, 0xE100000000000000);

    MEMORY[0x1CCA7B200](61, 0xE100000000000000);
    MEMORY[0x1CCA7B200](*(a1 + 24), *(a1 + 32));
  }

  MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  return v20;
}

uint64_t CKMatchType.description.getter(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_1C86FD930[a1];
  }

  result = sub_1C86F949C();
  __break(1u);
  return result;
}

unint64_t CKMatchType.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C86B878C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CKMatchType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C86B87EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADC80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - v5;
  sub_1C868FEF0(a1, v27);
  if (v27[3])
  {
    if (swift_dynamicCast())
    {
      v8 = v25;
      v7 = v26;
      switch(v1[2])
      {
        case 0:
          v9 = OUTLINED_FUNCTION_27_4();
          OUTLINED_FUNCTION_33_2(v9);
          v10 = OUTLINED_FUNCTION_9_11();
          v12 = v11;
          sub_1C86A5148(v6, &unk_1EC2ADC80);

          if (v12)
          {
            break;
          }

          v13 = v10 < 0x4000;
          return v13 & 1;
        case 1:
          v22 = OUTLINED_FUNCTION_27_4();
          OUTLINED_FUNCTION_33_2(v22);
          OUTLINED_FUNCTION_9_11();
          v24 = v23;
          sub_1C86A5148(v6, &unk_1EC2ADC80);

          v13 = v24 ^ 1;
          return v13 & 1;
        case 2:
          v15 = OUTLINED_FUNCTION_27_4();
          OUTLINED_FUNCTION_33_2(v15);
          OUTLINED_FUNCTION_9_11();
          v17 = v16;
          v19 = v18;
          sub_1C86A5148(v6, &unk_1EC2ADC80);

          if (v19)
          {
            break;
          }

          v20 = v8 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x2000000000000000) != 0)
          {
            v20 = HIBYTE(v7) & 0xF;
          }

          v13 = v17 >> 14 == 4 * v20;
          return v13 & 1;
        case 3:
          if (v25 == v1[3] && v26 == v1[4])
          {

            v13 = 1;
          }

          else
          {
            v13 = sub_1C86F948C();
          }

          return v13 & 1;
        default:
          v27[0] = v1[2];
          result = sub_1C86F949C();
          __break(1u);
          return result;
      }
    }
  }

  else
  {
    sub_1C86A5148(v27, &qword_1EC2AD810);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1C86B8A64()
{
  if (!v0[6])
  {
    v0[5] = sub_1C86B8AD0(v0);
    v0[6] = v1;
  }

  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1C86B8AD0(void *a1)
{
  switch(a1[2])
  {
    case 0:
      v1 = 34;
      v2 = 0xE100000000000000;
      goto LABEL_7;
    case 1:
      v1 = 9506;
      v2 = 0xE200000000000000;
LABEL_7:
      v8 = v1;
      v9 = v2;
      MEMORY[0x1CCA7B200](a1[3], a1[4]);
      v5 = 8741;
      v6 = 0xE200000000000000;
      goto LABEL_8;
    case 2:
      v3 = 9506;
      v4 = 0xE200000000000000;
      goto LABEL_5;
    case 3:
      v3 = 34;
      v4 = 0xE100000000000000;
LABEL_5:
      v8 = v3;
      v9 = v4;
      MEMORY[0x1CCA7B200](a1[3], a1[4]);
      v5 = 34;
      v6 = 0xE100000000000000;
LABEL_8:
      MEMORY[0x1CCA7B200](v5, v6);
      MEMORY[0x1CCA7B200](v8, v9);

      result = 0x20454B494C206BLL;
      break;
    default:
      result = sub_1C86F949C();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C86B8BE8()
{

  return v0;
}

uint64_t sub_1C86B8C10()
{
  sub_1C86B8BE8();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

id sub_1C86B8C88()
{
  sub_1C869F398(0, &qword_1EC2ADC38);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return sub_1C86B8D60(sub_1C86BBF88, v1);
}

id sub_1C86B8D60(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C86B8E10;
  v5[3] = &block_descriptor_6;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() predicateWithBlock_];
  _Block_release(v2);

  return v3;
}

uint64_t sub_1C86B8E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_1C8689930(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = sub_1C86F8E9C();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1C86A5148(v10, &qword_1EC2AD810);
  return v6 & 1;
}

uint64_t sub_1C86B8F0C()
{
  if (*(v0 + OBJC_IVAR___CKGenericCondition_negated))
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + OBJC_IVAR___CKGenericCondition_negated))
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1CCA7B200](v1, v2);

  v3 = sub_1C86B8510(*(v0 + OBJC_IVAR___CKGenericCondition_type), *(v0 + OBJC_IVAR___CKGenericCondition_type + 8), *(v0 + OBJC_IVAR___CKGenericCondition_type + 16));
  MEMORY[0x1CCA7B200](v3);

  return 0;
}

id CKGenericCondition.init(value:)(char a1)
{
  v2 = &v1[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___CKGenericCondition_type];
  *v3 = 0x8000000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v1[OBJC_IVAR___CKGenericCondition_negated] = a1 ^ 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CKGenericCondition.init(_:value:negated:)()
{
  OUTLINED_FUNCTION_42_1();
  v5 = &v1[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  type metadata accessor for Matcher();
  *v5 = 0;
  v5[1] = 0;
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = 0;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v7 = &v1[OBJC_IVAR___CKGenericCondition_type];
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v6;
  v1[OBJC_IVAR___CKGenericCondition_negated] = v0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1C86B9164(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v6 = a3;
  v7 = a2;
  v9 = &v4[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v9 = 0;
  v9[1] = 0;
  if (a2 | a3)
  {
    v14 = &v4[OBJC_IVAR___CKGenericCondition_type];
    *v14 = a1 | 0x4000000000000000;
    v14[1] = a2;
    v14[2] = a3;
    v6 = a3;
    v15 = a1;
    v7 = v7;
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR___CKGenericCondition_type);
    v11 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 8);
    v12 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 16);
    v13 = &v4[OBJC_IVAR___CKGenericCondition_type];
    *v13 = v10;
    v13[1] = v11;
    v13[2] = v12;
    sub_1C86BC048(v10, v11, v12);
  }

  v4[OBJC_IVAR___CKGenericCondition_negated] = a4 & 1;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CKGenericCondition();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id sub_1C86B9250(void *a1)
{
  if ((*(v1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return a1;
  }

  else if ((*(a1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return v1;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v3 = a1;
    return sub_1C86B9164(v1, a1, 0, 0);
  }
}

id sub_1C86B9360(void *a1)
{
  if ((*(v1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return a1;
  }

  else if ((*(a1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return v1;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v3 = a1;
    return sub_1C86B9164(v1, 0, a1, 0);
  }
}

uint64_t sub_1C86B9470()
{
  v1 = (v0 + OBJC_IVAR___CKGenericCondition____lazy_storage___sql);
  if (*(v0 + OBJC_IVAR___CKGenericCondition____lazy_storage___sql + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1C86B94EC(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1C86B94EC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CKGenericCondition_type);
  v3 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 8);
  v4 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 16);
  if (!(v2 >> 62))
  {

    v9 = sub_1C86B8A64();
    v11 = v10;
    sub_1C86BBFD8(v2, v3, v4);
    v18 = v9;
    v19 = v11;
    goto LABEL_13;
  }

  if (v2 >> 62 != 1)
  {
    v18 = 0x31203D3D2031;
    v19 = 0xE600000000000000;
    goto LABEL_13;
  }

  v18 = 40;
  v19 = 0xE100000000000000;
  v5 = v4;
  v6 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
  v7 = v3;
  v8 = sub_1C86B9470();
  MEMORY[0x1CCA7B200](v8);

  MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  if (v3)
  {
    if (v4)
    {

      goto LABEL_13;
    }

    v16 = 0x2820444E4120;
    v17 = 0xE600000000000000;
    v12 = v7;
    goto LABEL_11;
  }

  if (v4)
  {
    v16 = 0x2820524F20;
    v17 = 0xE500000000000000;
    v12 = v5;
LABEL_11:
    v13 = v12;
    v14 = sub_1C86B9470();
    MEMORY[0x1CCA7B200](v14);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
    MEMORY[0x1CCA7B200](v16, v17);

    goto LABEL_13;
  }

LABEL_13:
  result = v18;
  if (*(a1 + OBJC_IVAR___CKGenericCondition_negated))
  {
    MEMORY[0x1CCA7B200](v18, v19);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
    return 676613966;
  }

  return result;
}

uint64_t sub_1C86B96F4(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR___CKGenericCondition_type;
  v5 = *(v1 + OBJC_IVAR___CKGenericCondition_type);
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      v8 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC8);
      v10 = v7;
      v11 = v8;
      v12 = v6;
      v13 = v9(a1);
      v14 = v13;
      if (v6)
      {
        if (v7)
        {
LABEL_14:

          goto LABEL_15;
        }

        if ((v13 & 1) == 0)
        {
          v14 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        if (!v7)
        {
LABEL_16:

          v16 = v14 ^ *(v2 + OBJC_IVAR___CKGenericCondition_negated);
          return v16 & 1;
        }

        if (v13)
        {
          v14 = 1;
          v12 = v10;
          goto LABEL_15;
        }

        v12 = v10;
      }

      v17 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xC8);
      v10 = v12;
      v14 = v17(a1);

      v12 = v10;
      goto LABEL_14;
    }

    v16 = *(v2 + OBJC_IVAR___CKGenericCondition_negated) ^ 1;
  }

  else
  {

    v15 = sub_1C86B87EC(a1);
    sub_1C86BBFD8(v5, v6, v7);
    v16 = v15 ^ *(v2 + OBJC_IVAR___CKGenericCondition_negated);
  }

  return v16 & 1;
}

id sub_1C86B9930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &v4[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v4[OBJC_IVAR___CKGenericCondition_type];
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v4[OBJC_IVAR___CKGenericCondition_negated] = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C86B9994@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CKGenericCondition_type);
  v4 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 8);
  v5 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 16);
  v6 = *(v1 + OBJC_IVAR___CKGenericCondition_negated);
  v7 = type metadata accessor for CKGenericCondition();
  v8 = objc_allocWithZone(v7);
  sub_1C86BC048(v3, v4, v5);
  result = sub_1C86B9930(v3, v4, v5, v6);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t static CKGenericCondition.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_48_0();
  byte_1EC2ADC30 = a1;
  return result;
}

uint64_t sub_1C86B9B30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2ADC30;
  return result;
}

uint64_t sub_1C86B9B7C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2ADC30 = v1;
  return result;
}

void sub_1C86B9BC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKGenericCondition_negated);
  v4 = OUTLINED_FUNCTION_38_0();
  [a1 encodeBool:v3 forKey:v4];

  v6 = *(v1 + OBJC_IVAR___CKGenericCondition_type);
  v5 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 8);
  v7 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 16);
  v8 = v6 >> 62;
  if (v6 >> 62 && v8 == 1)
  {
    OUTLINED_FUNCTION_43_1();
  }

  v9 = sub_1C86F8EEC();

  v10 = sub_1C86F8EEC();
  v11 = OUTLINED_FUNCTION_35_1();
  [v11 v12];

  if (v8)
  {
    if (v8 == 1)
    {
      v13 = OUTLINED_FUNCTION_31_3();
      sub_1C86BC048(v13, v14, v15);
      v16 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      v17 = sub_1C86F8EEC();
      v18 = OUTLINED_FUNCTION_35_1();
      [v18 v19];

      v20 = v5;
      v21 = sub_1C86F8EEC();
      v22 = OUTLINED_FUNCTION_35_1();
      [v22 v23];

      v24 = v7;
      v39 = sub_1C86F8EEC();
      v25 = OUTLINED_FUNCTION_35_1();
      [v25 v26];
    }
  }

  else
  {
    v27 = *(v6 + 16);
    v28 = OUTLINED_FUNCTION_31_3();
    sub_1C86BC048(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_28_4();
    [a1 encodeInteger:v27 forKey:v31];

    v32 = sub_1C86F8EEC();
    v33 = sub_1C86F8EEC();
    v34 = OUTLINED_FUNCTION_35_1();
    [v34 v35];

    v36 = OUTLINED_FUNCTION_31_3();

    sub_1C86BBFD8(v36, v37, v38);
  }
}

unint64_t CKGenericCondition.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_44_1();
  return CKGenericCondition.init(coder:)(v2);
}

unint64_t CKGenericCondition.init(coder:)(void *a1)
{
  v2 = OUTLINED_FUNCTION_38_0();
  v3 = [a1 decodeBoolForKey_];

  sub_1C869F398(0, &qword_1ED5BC4A0);
  result = sub_1C86F920C();
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = result;
  v6 = sub_1C86F8EFC();
  v8 = v7;

  v9 = v6 == 1701736302 && v8 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_36_2() & 1) != 0)
  {

    v10 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    OUTLINED_FUNCTION_26_4();
    v14 = sub_1C86B9930(v11, v12, v13, v3);

LABEL_8:
    swift_getObjectType();
    OUTLINED_FUNCTION_39_0();
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v6 == 0x656C706D6973 && v8 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_36_2() & 1) != 0)
  {
    v16 = OUTLINED_FUNCTION_28_4();
    v17 = [a1 decodeIntegerForKey_];

    v18 = sub_1C86F920C();
    result = CKMatchType.init(rawValue:)(v17);
    if (v19)
    {

LABEL_17:
      swift_getObjectType();
      OUTLINED_FUNCTION_39_0();
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v18)
    {
      v20 = result;

      v21 = sub_1C86F8EFC();
      v23 = v22;
      type metadata accessor for Matcher();
      v24 = swift_allocObject();
      v24[5] = 0;
      v24[6] = 0;
      v24[2] = v20;
      v24[3] = v21;
      v24[4] = v23;
      v25 = objc_allocWithZone(type metadata accessor for CKGenericCondition());

      OUTLINED_FUNCTION_26_4();
      v14 = sub_1C86B9930(v26, v27, v28, v3);

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v30 = v6 == OUTLINED_FUNCTION_43_1() && v8 == v29;
  if (!v30 && (OUTLINED_FUNCTION_36_2() & 1) == 0)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v38 = sub_1C86F8DBC();
    __swift_project_value_buffer(v38, qword_1ED5BC790);

    v39 = sub_1C86F8DAC();
    v40 = sub_1C86F912C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v41 = 136315138;
      v42 = sub_1C8685FDC();

      *(v41 + 4) = v42;
      _os_log_impl(&dword_1C8683000, v39, v40, "error decoding condition with enum type=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1CCA7C540](v43, -1, -1);
      MEMORY[0x1CCA7C540](v41, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v31 = type metadata accessor for CKGenericCondition();
  v32 = sub_1C86F920C();
  v33 = sub_1C86F920C();
  result = sub_1C86F920C();
  if (v32)
  {
    v34 = result;
    v35 = v32;

    objc_allocWithZone(v31);
    v36 = v34;
    v37 = v33;
    v14 = sub_1C86B9930(v32 | 0x4000000000000000, v33, v34, v3);

    goto LABEL_8;
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1C86BA46C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_40_1();
  v5 = sub_1C86F8EEC();

  return v5;
}

uint64_t sub_1C86BA4D8()
{
  v1 = [*(v0 + OBJC_IVAR___CKTripleCondition_rawCondition) description];
  v2 = sub_1C86F8EFC();

  return v2;
}

id CKTripleCondition.init(value:)(char a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = CKGenericCondition.init(value:)(a1);
  v4 = type metadata accessor for CKTripleCondition();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___CKTripleCondition_rawCondition] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, sel_init);
  OUTLINED_FUNCTION_44_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_39_0();
  swift_deallocPartialClassInstance();
  return v3;
}

void CKTripleCondition.init(subject:predicate:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v11 = MEMORY[0x1E69E7D40];
  if (!a2)
  {
    if (a4)
    {
      if (a6)
      {
        v20 = type metadata accessor for CKGenericCondition();
        v21 = objc_allocWithZone(v20);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_24_3();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v22 = OUTLINED_FUNCTION_81();
        v23 = MEMORY[0x1CCA7B260](v22);
        v24 = MEMORY[0x1CCA7B260](v8, a6);
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (!v25)
        {
          OUTLINED_FUNCTION_0_12();
          sub_1C86F900C();
          OUTLINED_FUNCTION_0_7();
          if (v28)
          {
            if (__OFADD__(v26, v27))
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            MEMORY[0x1CCA7B1D0](v26 + v27);
            OUTLINED_FUNCTION_6_11();
            v29 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v29);
            OUTLINED_FUNCTION_6_11();
            v30 = OUTLINED_FUNCTION_1_2();
            MEMORY[0x1CCA7B200](v30);
            OUTLINED_FUNCTION_6_11();
            v316 = a4;
            v31 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_15_5();
            OUTLINED_FUNCTION_10_10();
            v32 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v313 = (*(v33 + 160))();

            v34 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_29_4();
            OUTLINED_FUNCTION_5_11();
            v35 = OUTLINED_FUNCTION_81();
            v36 = MEMORY[0x1CCA7B260](v35);
            v37 = OUTLINED_FUNCTION_1_2();
            v38 = MEMORY[0x1CCA7B260](v37);
            v25 = __OFADD__(v36, v38);
            v39 = v36 + v38;
            if (v25)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v25 = __OFADD__(v39, 2 * v40);
            v42 = v39 + 2 * v40;
            if (v25)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            MEMORY[0x1CCA7B1D0](v42);
            OUTLINED_FUNCTION_6_11();
            v43 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v43);
            OUTLINED_FUNCTION_6_11();
            v44 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v44, a6);
            v45 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_3_14();
            OUTLINED_FUNCTION_10_10();
            v46 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v309 = (*(v47 + 160))();

            v48 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_29_4();
            OUTLINED_FUNCTION_5_11();
            v49 = OUTLINED_FUNCTION_1_2();
            v50 = MEMORY[0x1CCA7B260](v49);
            v51 = OUTLINED_FUNCTION_81();
            v52 = MEMORY[0x1CCA7B260](v51);
            v25 = __OFADD__(v50, v52);
            v53 = v50 + v52;
            if (v25)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_0_7();
            if (!v28)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v53, v54))
            {
LABEL_112:
              __break(1u);
              goto LABEL_113;
            }

            MEMORY[0x1CCA7B1D0](v53 + v54);
            OUTLINED_FUNCTION_6_11();
            v55 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v55, a6);
            OUTLINED_FUNCTION_6_11();
            v56 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v56);
            OUTLINED_FUNCTION_6_11();
            v57 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_15_5();
            OUTLINED_FUNCTION_10_10();
            v58 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v306 = (*(v59 + 160))();

            v60 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_16_4();
            CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_5_11();
            v61 = OUTLINED_FUNCTION_1_2();
            v62 = MEMORY[0x1CCA7B260](v61);
            v63 = OUTLINED_FUNCTION_81();
            v64 = MEMORY[0x1CCA7B260](v63);
            v25 = __OFADD__(v62, v64);
            v65 = v62 + v64;
            if (v25)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            v25 = __OFADD__(v65, 2 * v66);
            v67 = v65 + 2 * v66;
            if (v25)
            {
LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

            MEMORY[0x1CCA7B1D0](v67);
            OUTLINED_FUNCTION_6_11();
            v68 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v68, a6);
            OUTLINED_FUNCTION_6_11();
            v69 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v69);
            v70 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_3_14();
            OUTLINED_FUNCTION_10_10();
            v71 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v73 = (*(v72 + 160))();

            OUTLINED_FUNCTION_12_8();
            v75 = (*(v74 + 168))(v309);
            OUTLINED_FUNCTION_12_8();
            v77 = (*(v76 + 168))(v306);

            OUTLINED_FUNCTION_1_12();
            v79 = (*(v78 + 168))(v73);

            OUTLINED_FUNCTION_11_11();
            OUTLINED_FUNCTION_8_11();
            v80 = sub_1C86F900C();
            v81 = OUTLINED_FUNCTION_81();
            v82 = MEMORY[0x1CCA7B260](v81);
            v25 = __OFADD__(v80, v82);
            v83 = v80 + v82;
            if (v25)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

            v303 = v73;
            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            v300 = v79;
            v25 = __OFADD__(v83, 2 * v84);
            v85 = v83 + 2 * v84;
            if (v25)
            {
LABEL_125:
              __break(1u);
              goto LABEL_126;
            }

            MEMORY[0x1CCA7B1D0](v85);
            v86 = OUTLINED_FUNCTION_21_4();
            MEMORY[0x1CCA7B200](v86);
            OUTLINED_FUNCTION_6_11();
            v87 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v87);
            OUTLINED_FUNCTION_6_11();
            v88 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_25_4();
            OUTLINED_FUNCTION_10_10();
            v89 = CKGenericCondition.init(_:value:negated:)();
            v90 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v90, a6);
            v91 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_19_5();
            OUTLINED_FUNCTION_10_10();
            v92 = CKGenericCondition.init(_:value:negated:)();
            v93 = (*((*MEMORY[0x1E69E7D40] & *v89) + 0xA0))();

            OUTLINED_FUNCTION_11_11();
            v94 = sub_1C86F900C();
            v95 = OUTLINED_FUNCTION_1_2();
            v96 = MEMORY[0x1CCA7B260](v95);
            v25 = __OFADD__(v94, v96);
            v97 = v94 + v96;
            if (v25)
            {
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v98 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B260](v98);
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            v25 = __OFADD__(v97, 2 * v99);
            v100 = v97 + 2 * v99;
            if (v25)
            {
LABEL_131:
              __break(1u);
              goto LABEL_132;
            }

            MEMORY[0x1CCA7B1D0](v100);
            OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_6_11();
            v101 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v101, a6);
            OUTLINED_FUNCTION_6_11();
            v102 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_25_4();
            OUTLINED_FUNCTION_2_10();
            v103 = CKGenericCondition.init(_:value:negated:)();
            MEMORY[0x1CCA7B200](a3, v316);
            v104 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_19_5();
            OUTLINED_FUNCTION_2_10();
            v105 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_12_8();
            v107 = (*(v106 + 160))();

            OUTLINED_FUNCTION_1_12();
            v109 = (*(v108 + 168))(v107);
            OUTLINED_FUNCTION_12_8();
            v14 = (*(v110 + 168))();

            goto LABEL_86;
          }

          goto LABEL_91;
        }

        __break(1u);
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_8_11();
      v256 = sub_1C86F900C();
      v257 = OUTLINED_FUNCTION_81();
      v258 = MEMORY[0x1CCA7B260](v257);
      v25 = __OFADD__(v256, v258);
      v259 = v256 + v258;
      if (v25)
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v25 = __OFADD__(v259, 2 * v260);
      v261 = v259 + 2 * v260;
      if (v25)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v262 = v11;
      MEMORY[0x1CCA7B1D0](v261);
      v263 = OUTLINED_FUNCTION_21_4();
      MEMORY[0x1CCA7B200](v263);
      OUTLINED_FUNCTION_6_11();
      v264 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v264);
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_24_3();
      v265 = sub_1C86F900C();
      v266 = OUTLINED_FUNCTION_81();
      v267 = MEMORY[0x1CCA7B260](v266);
      v25 = __OFADD__(v265, v267);
      v268 = v265 + v267;
      if (v25)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v25 = __OFADD__(v268, 2 * v269);
      v270 = v268 + 2 * v269;
      if (v25)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      MEMORY[0x1CCA7B1D0](v270);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_6_11();
      v271 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v271);
      OUTLINED_FUNCTION_6_11();
      v272 = type metadata accessor for CKGenericCondition();
      v273 = objc_allocWithZone(v272);
      OUTLINED_FUNCTION_18_3();
      v274 = CKGenericCondition.init(_:value:negated:)();
      v275 = objc_allocWithZone(v272);
      OUTLINED_FUNCTION_18_3();
      v276 = CKGenericCondition.init(_:value:negated:)();
      v14 = (*((*v262 & *v274) + 0xA8))();
    }

    else
    {
      if (!a6)
      {
        v299 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
        v14 = CKGenericCondition.init(value:)(1);
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_11_11();
      v238 = sub_1C86F900C();
      v239 = a6;
      v240 = MEMORY[0x1CCA7B260](v8, a6);
      v25 = __OFADD__(v238, v240);
      v241 = v238 + v240;
      if (v25)
      {
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v25 = __OFADD__(v241, 2 * v242);
      v243 = v241 + 2 * v242;
      if (v25)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      MEMORY[0x1CCA7B1D0](v243);
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](v8, a6);
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_11_11();
      v244 = sub_1C86F900C();
      v245 = MEMORY[0x1CCA7B260](v8, v239);
      v25 = __OFADD__(v244, v245);
      v246 = v244 + v245;
      if (v25)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v247 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B260](v247);
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v25 = __OFADD__(v246, 2 * v248);
      v249 = v246 + 2 * v248;
      if (v25)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      MEMORY[0x1CCA7B1D0](v249);
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](v8, v239);
      OUTLINED_FUNCTION_6_11();
      v250 = type metadata accessor for CKGenericCondition();
      v251 = objc_allocWithZone(v250);
      OUTLINED_FUNCTION_18_3();
      v252 = CKGenericCondition.init(_:value:negated:)();
      v253 = objc_allocWithZone(v250);
      OUTLINED_FUNCTION_18_3();
      v254 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_1_12();
      v14 = (*(v255 + 168))();
    }

LABEL_85:

    goto LABEL_86;
  }

  if (a4)
  {
    if (a6)
    {
      v315 = type metadata accessor for CKGenericCondition();
      v13 = objc_allocWithZone(v315);
      v14 = CKGenericCondition.init(value:)(0);
      v15 = 0;
      do
      {
        v16 = v14;
        v17 = &unk_1F484E678 + v15++;
        sub_1C86AC7C0(a1, a2, a3, a4, v8, a6, v17[32]);
        v18 = objc_allocWithZone(v315);
        OUTLINED_FUNCTION_10_10();
        v19 = CKGenericCondition.init(_:value:negated:)();
        v14 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA8))();

        v8 = a5;
      }

      while (v15 != 6);

      goto LABEL_86;
    }

    OUTLINED_FUNCTION_11_11();
    v190 = OUTLINED_FUNCTION_81();
    v191 = MEMORY[0x1CCA7B260](v190);
    v192 = MEMORY[0x1CCA7B260](a1, a2);
    v25 = __OFADD__(v191, v192);
    v193 = v191 + v192;
    if (!v25)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_0_7();
      if (!v28)
      {
        goto LABEL_93;
      }

      if (__OFADD__(v193, v194))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      MEMORY[0x1CCA7B1D0](v193 + v194);
      OUTLINED_FUNCTION_6_11();
      v195 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v195);
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](a1, a2);
      OUTLINED_FUNCTION_6_11();
      v311 = a3;
      sub_1C86AC7C0(a1, a2, a3, a4, 0, 0xE000000000000000, 0);
      v196 = type metadata accessor for CKGenericCondition();
      v197 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_2_10();
      v198 = CKGenericCondition.init(_:value:negated:)();
      v199 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_8_11();
      v200 = CKGenericCondition.init(_:value:negated:)();
      v201 = objc_allocWithZone(v196);
      v202 = OUTLINED_FUNCTION_29_4();
      v203 = MEMORY[0x1E69E7D40];
      v204 = (*((*MEMORY[0x1E69E7D40] & *v200) + 0xA8))();

      v205 = objc_allocWithZone(v196);
      v206 = CKGenericCondition.init(_:value:negated:)();
      v308 = v204;
      v207 = (*((*v203 & *v204) + 0xA0))();
      v208 = (*((*v203 & *v198) + 0xA8))();

      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_16_4();
      v209 = sub_1C86F900C();
      v210 = MEMORY[0x1CCA7B260](a1, a2);
      v25 = __OFADD__(v209, v210);
      v211 = v209 + v210;
      if (v25)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v305 = v206;
      v25 = __OFADD__(v211, 2 * v212);
      v213 = v211 + 2 * v212;
      if (v25)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      MEMORY[0x1CCA7B1D0](v213);
      OUTLINED_FUNCTION_37_2();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](a1, a2);
      OUTLINED_FUNCTION_6_11();
      v214 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_10_10();
      v215 = CKGenericCondition.init(_:value:negated:)();
      v216 = OUTLINED_FUNCTION_22_4();
      MEMORY[0x1CCA7B200](v216, a4);
      v217 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_10_10();
      v218 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_24_3();
      v219 = sub_1C86F900C();
      v220 = MEMORY[0x1CCA7B260](v311, a4);
      v25 = __OFADD__(v219, v220);
      v221 = v219 + v220;
      if (v25)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v302 = v208;
      v25 = __OFADD__(v221, 2 * v222);
      v223 = v221 + 2 * v222;
      if (v25)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v224 = v215;
      MEMORY[0x1CCA7B1D0](v223);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_6_11();
      v225 = OUTLINED_FUNCTION_22_4();
      MEMORY[0x1CCA7B200](v225, a4);
      OUTLINED_FUNCTION_6_11();
      v226 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_2_10();
      v227 = CKGenericCondition.init(_:value:negated:)();
      MEMORY[0x1CCA7B200](a1, a2);
      v228 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_2_10();
      v314 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_41_0();
      v230 = v218;
      v231 = (*(v229 + 160))(v218);
      OUTLINED_FUNCTION_41_0();
      v233 = (*(v232 + 160))(v314);
      OUTLINED_FUNCTION_41_0();
      v235 = (*(v234 + 168))();

      OUTLINED_FUNCTION_41_0();
      v14 = (*(v236 + 168))(v235);

LABEL_86:
      v297 = type metadata accessor for CKTripleCondition();
      v298 = objc_allocWithZone(v297);
      *&v298[OBJC_IVAR___CKTripleCondition_rawCondition] = v14;
      v318.receiver = v298;
      v318.super_class = v297;
      objc_msgSendSuper2(&v318, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }

    goto LABEL_90;
  }

  if (a6)
  {
    v111 = type metadata accessor for CKGenericCondition();
    v112 = objc_allocWithZone(v111);
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_8_11();
    CKGenericCondition.init(_:value:negated:)();
    OUTLINED_FUNCTION_5_11();
    v113 = MEMORY[0x1CCA7B260](a1, a2);
    v114 = MEMORY[0x1CCA7B260](v8, a6);
    v25 = __OFADD__(v113, v114);
    v115 = v113 + v114;
    if (!v25)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (!v41)
      {
        v25 = __OFADD__(v115, 2 * v116);
        v117 = v115 + 2 * v116;
        if (v25)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        MEMORY[0x1CCA7B1D0](v117);
        OUTLINED_FUNCTION_6_11();
        v118 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v118, a2);
        OUTLINED_FUNCTION_6_11();
        v119 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v119);
        v120 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_3_14();
        OUTLINED_FUNCTION_10_10();
        v121 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v310 = (*(v122 + 160))();

        v123 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_16_4();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v124 = MEMORY[0x1CCA7B260](a1, a2);
        v125 = OUTLINED_FUNCTION_17_5();
        v126 = MEMORY[0x1CCA7B260](v125);
        v25 = __OFADD__(v124, v126);
        v127 = v124 + v126;
        if (v25)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_0_7();
        if (!v28)
        {
          goto LABEL_101;
        }

        if (__OFADD__(v127, v128))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        MEMORY[0x1CCA7B1D0](v127 + v128);
        OUTLINED_FUNCTION_6_11();
        v129 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v129, a2);
        OUTLINED_FUNCTION_6_11();
        v130 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v130);
        OUTLINED_FUNCTION_6_11();
        v131 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_10_10();
        v132 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v307 = (*(v133 + 160))();

        v134 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_24_3();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v135 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B260](v135);
        v136 = OUTLINED_FUNCTION_45_1();
        v137 = MEMORY[0x1CCA7B260](v136, a2);
        v138 = &v6[v137];
        if (__OFADD__(v6, v137))
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v25 = __OFADD__(v138, 2 * v139);
        v140 = &v138[2 * v139];
        if (v25)
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        MEMORY[0x1CCA7B1D0](v140);
        OUTLINED_FUNCTION_6_11();
        v141 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v141);
        OUTLINED_FUNCTION_6_11();
        v142 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v142, a2);
        v143 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_3_14();
        OUTLINED_FUNCTION_10_10();
        v144 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v304 = (*(v145 + 160))();

        v146 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_29_4();
        OUTLINED_FUNCTION_5_11();
        v147 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B260](v147);
        v148 = OUTLINED_FUNCTION_45_1();
        v149 = MEMORY[0x1CCA7B260](v148, a2);
        v25 = __OFADD__(v146, v149);
        v150 = &v146[v149];
        if (v25)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_0_7();
        if (!v28)
        {
          goto LABEL_118;
        }

        if (__OFADD__(v150, v151))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        MEMORY[0x1CCA7B1D0](&v150[v151]);
        OUTLINED_FUNCTION_6_11();
        v152 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v152);
        OUTLINED_FUNCTION_6_11();
        v153 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v153, a2);
        OUTLINED_FUNCTION_6_11();
        v154 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_10_10();
        v155 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v157 = (*(v156 + 160))();

        OUTLINED_FUNCTION_12_8();
        v159 = (*(v158 + 168))();
        OUTLINED_FUNCTION_12_8();
        v161 = (*(v160 + 168))(v304);

        OUTLINED_FUNCTION_1_12();
        v163 = (*(v162 + 168))(v157);

        OUTLINED_FUNCTION_11_11();
        OUTLINED_FUNCTION_20_3();
        sub_1C86F900C();
        v164 = OUTLINED_FUNCTION_45_1();
        v165 = MEMORY[0x1CCA7B260](v164, a2);
        v166 = &v161[v165];
        if (__OFADD__(v161, v165))
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v301 = v157;
        v25 = __OFADD__(v166, 2 * v167);
        v168 = &v166[2 * v167];
        if (v25)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        MEMORY[0x1CCA7B1D0](v168);
        MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
        OUTLINED_FUNCTION_6_11();
        v169 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v169, a2);
        OUTLINED_FUNCTION_6_11();
        v170 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_10_10();
        v171 = CKGenericCondition.init(_:value:negated:)();
        MEMORY[0x1CCA7B200](a5, a6);
        v172 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_10_10();
        v173 = CKGenericCondition.init(_:value:negated:)();
        v174 = (*((*MEMORY[0x1E69E7D40] & *v171) + 0xA0))();

        OUTLINED_FUNCTION_11_11();
        OUTLINED_FUNCTION_20_3();
        v175 = sub_1C86F900C();
        v176 = MEMORY[0x1CCA7B260](a5, a6);
        v25 = __OFADD__(v175, v176);
        v177 = v175 + v176;
        if (v25)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v25 = __OFADD__(v177, 2 * v178);
        v179 = v177 + 2 * v178;
        if (v25)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        MEMORY[0x1CCA7B1D0](v179);
        OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_6_11();
        MEMORY[0x1CCA7B200](a5, a6);
        OUTLINED_FUNCTION_6_11();
        v180 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_2_10();
        v181 = CKGenericCondition.init(_:value:negated:)();
        v182 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v182, a2);
        v183 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_2_10();
        v184 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_12_8();
        v186 = (*(v185 + 160))();

        OUTLINED_FUNCTION_1_12();
        v188 = (*(v187 + 168))(v186);
        OUTLINED_FUNCTION_12_8();
        v14 = (*(v189 + 168))();

        goto LABEL_86;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_11_11();
  v278 = v277 - 765;
  v279 = sub_1C86F900C();
  v280 = MEMORY[0x1CCA7B260](a1, a2);
  v25 = __OFADD__(v279, v280);
  v281 = v279 + v280;
  if (v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v41)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v25 = __OFADD__(v281, 2 * v282);
  v283 = v281 + 2 * v282;
  if (v25)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v284 = v11;
  MEMORY[0x1CCA7B1D0](v283);
  MEMORY[0x1CCA7B200](v278, 0xE300000000000000);
  OUTLINED_FUNCTION_6_11();
  v285 = OUTLINED_FUNCTION_22_4();
  MEMORY[0x1CCA7B200](v285, a2);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_16_4();
  v286 = sub_1C86F900C();
  v287 = MEMORY[0x1CCA7B260](a1, a2);
  v25 = __OFADD__(v286, v287);
  v288 = v286 + v287;
  if (v25)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v41)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v25 = __OFADD__(v288, 2 * v289);
  v290 = v288 + 2 * v289;
  if (!v25)
  {
    MEMORY[0x1CCA7B1D0](v290);
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_6_11();
    v291 = OUTLINED_FUNCTION_22_4();
    MEMORY[0x1CCA7B200](v291, a2);
    OUTLINED_FUNCTION_6_11();
    v292 = type metadata accessor for CKGenericCondition();
    v293 = objc_allocWithZone(v292);
    OUTLINED_FUNCTION_18_3();
    v294 = CKGenericCondition.init(_:value:negated:)();
    v295 = objc_allocWithZone(v292);
    OUTLINED_FUNCTION_18_3();
    v296 = CKGenericCondition.init(_:value:negated:)();
    v14 = (*((*v284 & *v294) + 0xA8))();

    goto LABEL_85;
  }

LABEL_150:
  __break(1u);
}

void sub_1C86BBFD8(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_1C86BC048(unint64_t result, void *a2, void *a3)
{
  if (result >> 62 == 1)
  {
    v4 = (result & 0x3FFFFFFFFFFFFFFFLL);
    v5 = a3;
    v6 = v4;

    return a2;
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

id sub_1C86BC15C()
{
  OUTLINED_FUNCTION_34_1();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0xA0);
  v5 = v4;
  v6 = v0;
  v7 = v3();

  v8 = type metadata accessor for CKTripleCondition();
  v9 = objc_allocWithZone(v8);
  *&v9[*(v1 + 3168)] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1C86BC268()
{
  OUTLINED_FUNCTION_34_1();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0xA8);
  v5 = v4;
  v6 = v0;
  v7 = v3();

  v8 = type metadata accessor for CKTripleCondition();
  v9 = objc_allocWithZone(v8);
  *&v9[*(v1 + 3168)] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1C86BC374(uint64_t ObjectType)
{
  v2 = ObjectType;
  v3 = *(v1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
    v4 = v2;
  }

  else
  {
    v4 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v4;
  v9[3] = ObjectType;
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
  v6 = v3;
  OUTLINED_FUNCTION_44_1();
  swift_unknownObjectRetain();
  v7 = v5(v9);

  sub_1C86A5148(v9, &qword_1EC2AD810);
  return v7 & 1;
}

id sub_1C86BC494@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v4 = type metadata accessor for CKTripleCondition();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___CKTripleCondition_rawCondition] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C86BC520(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_1C86F947C();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t static CKTripleCondition.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_48_0();
  byte_1EC2ADC31 = a1;
  return result;
}

uint64_t sub_1C86BC674@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2ADC31;
  return result;
}

uint64_t sub_1C86BC6C0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2ADC31 = v1;
  return result;
}

void sub_1C86BC708(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v4 = sub_1C86F8EEC();
  [a1 encodeObject:v3 forKey:v4];
}

uint64_t CKTripleCondition.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_44_1();
  return CKTripleCondition.init(coder:)(v2);
}

uint64_t CKTripleCondition.init(coder:)(void *a1)
{
  type metadata accessor for CKGenericCondition();
  v2 = sub_1C86F920C();
  if (v2)
  {
    v3 = type metadata accessor for CKTripleCondition();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___CKTripleCondition_rawCondition] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    v2 = objc_msgSendSuper2(&v6, sel_init);
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_39_0();
  swift_deallocPartialClassInstance();
  return v2;
}

id CKTripleCondition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C86BC978(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id not(_:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = a1;
  OUTLINED_FUNCTION_26_4();
  return sub_1C86B9164(v4, v5, v6, v7);
}

id not(_:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = v1;
  OUTLINED_FUNCTION_26_4();
  v8 = sub_1C86B9164(v4, v5, v6, v7);
  v9 = type metadata accessor for CKTripleCondition();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___CKTripleCondition_rawCondition] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

void static CKTripleCondition.havingPredicate(_:matchType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 != 3)
    {
      sub_1C868B6E4();
      swift_allocError();
      *v27 = 1;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 3;
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_32_3(131079);
    OUTLINED_FUNCTION_8_11();
    v3 = sub_1C86F900C();
    v4 = OUTLINED_FUNCTION_17_5();
    v5 = MEMORY[0x1CCA7B260](v4);
    v6 = __OFADD__(v3, v5);
    v7 = v3 + v5;
    if (!v6)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (!v9)
      {
        v6 = __OFADD__(v7, 2 * v8);
        v10 = v7 + 2 * v8;
        if (!v6)
        {
          MEMORY[0x1CCA7B1D0](v10);
          v11 = OUTLINED_FUNCTION_21_4();
          MEMORY[0x1CCA7B200](v11);
          v12 = OUTLINED_FUNCTION_7_13();
          MEMORY[0x1CCA7B200](v12);
          v13 = OUTLINED_FUNCTION_17_5();
          MEMORY[0x1CCA7B200](v13);
          v14 = OUTLINED_FUNCTION_7_13();
LABEL_10:
          MEMORY[0x1CCA7B200](v14);
          v23 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
          OUTLINED_FUNCTION_25_4();
          OUTLINED_FUNCTION_2_10();
          v24 = CKGenericCondition.init(_:value:negated:)();
          v25 = type metadata accessor for CKTripleCondition();
          v26 = objc_allocWithZone(v25);
          *&v26[OBJC_IVAR___CKTripleCondition_rawCondition] = v24;
          v28.receiver = v26;
          v28.super_class = v25;
          objc_msgSendSuper2(&v28, sel_init);
          return;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_32_3(131079);
    OUTLINED_FUNCTION_8_11();
    v15 = sub_1C86F900C();
    v16 = OUTLINED_FUNCTION_17_5();
    v17 = MEMORY[0x1CCA7B260](v16);
    v6 = __OFADD__(v15, v17);
    v18 = v15 + v17;
    if (!v6)
    {
      OUTLINED_FUNCTION_0_12();
      v19 = sub_1C86F900C();
      v6 = __OFADD__(v18, v19);
      v20 = v18 + v19;
      if (!v6)
      {
        MEMORY[0x1CCA7B1D0](v20);
        v21 = OUTLINED_FUNCTION_21_4();
        MEMORY[0x1CCA7B200](v21);
        v22 = OUTLINED_FUNCTION_7_13();
        MEMORY[0x1CCA7B200](v22);
        v14 = OUTLINED_FUNCTION_17_5();
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void static CKTripleCondition.havingSubject(_:andAbject:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v2 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  OUTLINED_FUNCTION_32_3(131079);
  OUTLINED_FUNCTION_16_4();
  v3 = sub_1C86F900C();
  v4 = MEMORY[0x1CCA7B260](v1, v2);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_40_1();
  v8 = MEMORY[0x1CCA7B260](v7);
  v5 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = __OFADD__(v9, 2 * v10);
  v12 = v9 + 2 * v10;
  if (!v5)
  {
    MEMORY[0x1CCA7B1D0](v12);
    OUTLINED_FUNCTION_37_2();
    v13 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v13);
    MEMORY[0x1CCA7B200](v1, v2);
    v14 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v14);
    v15 = OUTLINED_FUNCTION_40_1();
    MEMORY[0x1CCA7B200](v15);
    v16 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_10_10();
    v17 = CKGenericCondition.init(_:value:negated:)();
    v18 = type metadata accessor for CKTripleCondition();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___CKTripleCondition_rawCondition] = v17;
    v20.receiver = v19;
    v20.super_class = v18;
    objc_msgSendSuper2(&v20, sel_init);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C86BCEB8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v2 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  v3 = objc_allocWithZone(type metadata accessor for CKTripleCondition());

  CKTripleCondition.init(subject:predicate:object:)(v1, v2, 0, 0, 0, 0);
}

unint64_t sub_1C86BCF4C()
{
  result = qword_1EC2ADC78;
  if (!qword_1EC2ADC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADC78);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_13CoreKnowledge13ConditionTypeO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C86BD29C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C86BD2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C86BD358(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_1C86F928C();
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v3 - 80) = v2;
  *(v3 - 72) = v0;
  *(v3 - 96) = v5;
  *(v3 - 88) = v6;

  return sub_1C86F8D6C();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_1C86F8EEC();
}

id OUTLINED_FUNCTION_29_4()
{

  return CKGenericCondition.init(_:value:negated:)();
}

unint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C868A058();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_1C86F948C();
}

void OUTLINED_FUNCTION_37_2()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_1C86F8EEC();
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50_0()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t sub_1C86BD734(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (a2)
    {
      v3 = a3;

      MEMORY[0x1CCA7B200](35, 0xE100000000000000);
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8);
      v4 = sub_1C86F8F5C();
      v6 = v5;

      MEMORY[0x1CCA7B200](v4, v6);

      return a1;
    }

    else
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8);
      return sub_1C86F8F5C();
    }
  }

  else
  {
    sub_1C868B6E4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 3;
    return swift_willThrow();
  }
}

uint64_t CKHistoricEvent.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKHistoricEvent_identifier);

  return v1;
}

id sub_1C86BD940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_18_3();
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  a3();
  v12 = sub_1C86F8CCC();
  (*(v6 + 8))(v11, v4);

  return v12;
}

uint64_t sub_1C86BDA28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  sub_1C86F8D0C();
  OUTLINED_FUNCTION_43_0();
  return (*(v5 + 16))(a2, v2 + v4);
}

id sub_1C86BDBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v15 = &v8[OBJC_IVAR___CKHistoricEvent_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = OBJC_IVAR___CKHistoricEvent__firstSeen;
  v17 = sub_1C86F8D0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&v8[v16], a3, v17);
  v19(&v8[OBJC_IVAR___CKHistoricEvent__lastSeen], a4, v17);
  *&v8[OBJC_IVAR___CKHistoricEvent__frequency] = a5;
  *&v8[OBJC_IVAR___CKHistoricEvent__lastDuration] = a7;
  *&v8[OBJC_IVAR___CKHistoricEvent__totalDuration] = a8;
  *&v8[OBJC_IVAR___CKHistoricEvent__metadata] = a6;
  v23.receiver = v8;
  v23.super_class = type metadata accessor for CKHistoricEvent();
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = *(v18 + 8);
  v21(a4, v17);
  v21(a3, v17);
  return v20;
}

void sub_1C86BDD28(void *a1)
{
  v2 = v1;
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = sub_1C86F8EEC();
  v13 = sub_1C86F8EEC();
  [a1 encodeObject:v12 forKey:v13];

  v14 = OBJC_IVAR___CKHistoricEvent__firstSeen;
  swift_beginAccess();
  v15 = *(v6 + 16);
  v15(v11, v2 + v14, v4);
  v16 = sub_1C86F8CCC();
  v17 = *(v6 + 8);
  v17(v11, v4);
  OUTLINED_FUNCTION_17_6();
  v18 = sub_1C86F8EEC();
  [a1 encodeObject:v16 forKey:v18];

  v19 = OBJC_IVAR___CKHistoricEvent__lastSeen;
  swift_beginAccess();
  v15(v11, v2 + v19, v4);
  v20 = sub_1C86F8CCC();
  v17(v11, v4);
  OUTLINED_FUNCTION_15_6();
  v21 = sub_1C86F8EEC();
  [a1 encodeObject:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR___CKHistoricEvent__frequency);
  OUTLINED_FUNCTION_4_13();
  v23 = sub_1C86F8EEC();
  [a1 encodeInteger:v22 forKey:v23];

  v24 = OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19_6();

  v25 = OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_19_6();

  v26 = sub_1C86F8E8C();

  v27 = sub_1C86F8EEC();
  [a1 encodeObject:v26 forKey:v27];
}

id CKHistoricEvent.init(coder:)(void *a1)
{
  v2 = v1;
  v72 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v71 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_7_14();
  v8 = v7;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16_5();
  v12 = v11;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16_5();
  v73 = v15;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v65 - v18;
  v19 = sub_1C869F398(0, &qword_1ED5BC4A0);
  v20 = sub_1C86F920C();
  sub_1C869F398(0, &unk_1ED5BC4D0);
  v21 = sub_1C86F920C();
  v75 = sub_1C86F920C();
  OUTLINED_FUNCTION_4_13();
  v22 = sub_1C86F8EEC();
  v70 = [a1 decodeIntegerForKey_];

  v23 = OUTLINED_FUNCTION_11_12();
  [a1 decodeDoubleForKey_];
  v25 = v24;

  v26 = OUTLINED_FUNCTION_9_12();
  [a1 decodeDoubleForKey_];
  v28 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C86FCC70;
  *(v29 + 32) = v19;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C86FD040;
  *(v30 + 32) = sub_1C869F398(0, &unk_1ED5BC4E0);
  *(v30 + 40) = v19;
  v31 = sub_1C86F922C();

  v76 = v20;
  if (!v20)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v39 = sub_1C86F8DBC();
    __swift_project_value_buffer(v39, qword_1ED5BC790);
    v40 = sub_1C86F8DAC();
    v41 = sub_1C86F912C();
    if (OUTLINED_FUNCTION_14_9(v41))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_11(&dword_1C8683000, v42, v43, "unexpected value for identifier when decoding CKHistoricEvent object");
      OUTLINED_FUNCTION_11_1();
    }

    goto LABEL_19;
  }

  v32 = sub_1C86F8EFC();
  v34 = v33;
  if (!v21)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v44 = sub_1C86F8DBC();
    __swift_project_value_buffer(v44, qword_1ED5BC790);
    v45 = sub_1C86F8DAC();
    v46 = sub_1C86F912C();
    if (OUTLINED_FUNCTION_14_9(v46))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_11(&dword_1C8683000, v47, v48, "unexpected value for firstSeen when decoding CKHistoricEvent object");
      OUTLINED_FUNCTION_11_1();
    }

LABEL_19:
    goto LABEL_20;
  }

  v35 = v32;
  sub_1C86F8CDC();
  if (v75)
  {
    sub_1C86F8CDC();
    v69 = v21;
    v68 = v2;
    v67 = v34;
    v66 = v35;
    if (v31)
    {
      v36 = sub_1C86BEA04(v31);

      if (v36)
      {

        sub_1C8688AB8(0xD000000000000011, 0x80000001C87000E0, v36, &v79);

        if (v80)
        {
          if (swift_dynamicCast())
          {
            v38 = *(&v78[0] + 1);
            v37 = *&v78[0];
            type metadata accessor for INInteractionDecoder();
            v55 = sub_1C868B9FC(v37, v38);

            v80 = sub_1C869F398(0, &qword_1EC2ADCA0);
            *&v79 = v55;
            sub_1C8689930(&v79, v78);
            swift_isUniquelyReferenced_nonNull_native();
            v77 = v36;
            sub_1C868968C(v78, 0xD000000000000011, 0x80000001C87000E0);
            v56 = v77;
LABEL_30:
            v57 = v71;
            v58 = *(v71 + 16);
            v59 = v74;
            v60 = v72;
            v58(v12, v74, v72);
            v61 = v73;
            v58(v8, v73, v60);
            v62 = objc_allocWithZone(type metadata accessor for CKHistoricEvent());
            v49 = sub_1C86BDBB8(v66, v67, v12, v8, v70, v56, v25, v28);

            v63 = *(v57 + 8);
            v63(v61, v60);
            v63(v59, v60);
            swift_getObjectType();
            OUTLINED_FUNCTION_5_12();
            swift_deallocPartialClassInstance();
            return v49;
          }
        }

        else
        {
          sub_1C869DEA8(&v79, &qword_1EC2AD810);
        }

        v56 = v36;
        goto LABEL_30;
      }
    }

    v56 = MEMORY[0x1E69E7CC8];
    goto LABEL_30;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = sub_1C86F8DBC();
  __swift_project_value_buffer(v50, qword_1ED5BC790);
  v51 = sub_1C86F8DAC();
  v52 = sub_1C86F912C();
  if (OUTLINED_FUNCTION_14_9(v52))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_11(&dword_1C8683000, v53, v54, "unexpected value for lastSeen when decoding CKHistoricEvent object");
    OUTLINED_FUNCTION_11_1();
  }

  else
  {
  }

  (*(v71 + 8))(v74, v72);
LABEL_20:
  swift_getObjectType();
  OUTLINED_FUNCTION_5_12();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1C86BEA04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD20);
    v2 = sub_1C86F943C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C86A8F14(*(a1 + 48) + 40 * v10, __src);
    sub_1C8686320(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C86A8F14(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C8686320(&__dst[40], v20);
    sub_1C869DEA8(__dst, &qword_1EC2ADD28);
    v21 = v18;
    sub_1C8689930(v20, v22);
    v11 = v21;
    sub_1C8689930(v22, v23);
    sub_1C8689930(v23, &v21);
    result = sub_1C869C918(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      result = sub_1C8689930(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1C8689930(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1C869DEA8(__dst, &qword_1EC2ADD28);

  return 0;
}

id CKHistoricEvent.init(_:)()
{
  OUTLINED_FUNCTION_18_3();
  v1 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR___CKHistoricEvent_identifier + 8];
  v10 = &v0[OBJC_IVAR___CKHistoricEvent_identifier];
  *v10 = *&v0[OBJC_IVAR___CKHistoricEvent_identifier];
  *(v10 + 1) = v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);

  v12(v13);
  v14 = *(v3 + 32);
  v15 = v14(&v0[OBJC_IVAR___CKHistoricEvent__firstSeen], v8, v1);
  (*((*v11 & *v0) + 0x120))(v15);
  v16 = v14(&v0[OBJC_IVAR___CKHistoricEvent__lastSeen], v8, v1);
  *&v0[OBJC_IVAR___CKHistoricEvent__frequency] = (*((*v11 & *v0) + 0x128))(v16);
  *&v0[OBJC_IVAR___CKHistoricEvent__lastDuration] = (*((*v11 & *v0) + 0x130))();
  *&v0[OBJC_IVAR___CKHistoricEvent__totalDuration] = (*((*v11 & *v0) + 0x138))();
  *&v0[OBJC_IVAR___CKHistoricEvent__metadata] = (*((*v11 & *v0) + 0x140))();
  v19.receiver = v0;
  v19.super_class = type metadata accessor for CKHistoricEvent();
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

id CKHistoricEvent.init(from:withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v86 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  OUTLINED_FUNCTION_7_14();
  v78 = v7;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v72 - v10;
  v79 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v81 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_7_14();
  v74 = v15;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16_5();
  v77 = v18;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_16_5();
  v75 = v21;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v22, v23);
  v80 = v72 - v24;
  v25 = sub_1C86F8F4C();
  OUTLINED_FUNCTION_99();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_3_2();
  v32 = v31 - v30;
  sub_1C86F8F3C();
  v33 = sub_1C86F8F0C();
  v35 = v34;
  (*(v27 + 8))(v32, v25);
  if (v35 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v36 = objc_opt_self();
  v37 = sub_1C86F8C9C();
  *&v84 = 0;
  v38 = [v36 JSONObjectWithData:v37 options:0 error:&v84];

  v39 = v84;
  v40 = v33;
  if (!v38)
  {
    v52 = v39;

    v53 = sub_1C86F8BAC();

    swift_willThrow();
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v54 = sub_1C86F8DBC();
    __swift_project_value_buffer(v54, qword_1ED5BC790);

    v55 = sub_1C86F8DAC();
    v56 = sub_1C86F912C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v40;
      v59 = swift_slowAlloc();
      *&v84 = v59;
      *v57 = 136315138;
      v60 = sub_1C8685FDC();

      *(v57 + 4) = v60;
      _os_log_impl(&dword_1C8683000, v55, v56, "Couldn't initialize CKHistoricEvent from string %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
      sub_1C868BEC0(v58, v35);
    }

    else
    {
      sub_1C868BEC0(v40, v35);
    }

    goto LABEL_28;
  }

  v41 = v33;

  sub_1C86F929C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
  v42 = a4;
  if ((OUTLINED_FUNCTION_3_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();
    goto LABEL_27;
  }

  v43 = v82;
  v44 = OUTLINED_FUNCTION_17_6();
  sub_1C8688AB8(v44, 0xE90000000000006ELL, v43, &v84);
  if (!v85)
  {
    OUTLINED_FUNCTION_2_11();
LABEL_22:

    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_3_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();
LABEL_26:

    goto LABEL_27;
  }

  v46 = v82;
  v45 = v83;
  v47 = OUTLINED_FUNCTION_15_6();
  sub_1C8688AB8(v47, 0xE800000000000000, v43, &v84);
  if (!v85)
  {
    OUTLINED_FUNCTION_2_11();

    goto LABEL_22;
  }

  if ((OUTLINED_FUNCTION_3_15() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();

    goto LABEL_26;
  }

  v72[1] = v82;
  v73 = v46;
  v48 = v83;
  v49 = OUTLINED_FUNCTION_4_13();
  sub_1C8688AB8(v49, 0xE900000000000079, v43, &v84);

  if (v85)
  {
    if (OUTLINED_FUNCTION_3_15())
    {
      v72[0] = v48;
      v50 = v82;
      sub_1C86D8F08(0xD00000000000001CLL, 0x80000001C8700720, v45, v11);

      v51 = v79;
      if (__swift_getEnumTagSinglePayload(v11, 1, v79) == 1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      else
      {
        v73 = v50;
        v65 = v81[4];
        v65(v80, v11, v51);
        v11 = v78;
        sub_1C86D8F08(0xD00000000000001CLL, 0x80000001C8700720, v72[0], v78);

        if (__swift_getEnumTagSinglePayload(v11, 1, v51) != 1)
        {
          v66 = v75;
          v65(v75, v11, v51);
          v67 = (v81 + 2);
          v68 = v81[2];
          v68(v77, v80, v51);
          v69 = v74;
          v68(v74, v66, v51);
          sub_1C86F8EBC();
          OUTLINED_FUNCTION_18_3();
          v70 = objc_allocWithZone(type metadata accessor for CKHistoricEvent());
          v63 = sub_1C86BDBB8(v76, v42, v77, v69, v73, v67, 0.0, 0.0);
          sub_1C868BEC0(v41, v35);
          v71 = v81[1];
          v71(v66, v51);
          v71(v80, v51);
          swift_getObjectType();
          OUTLINED_FUNCTION_5_12();
          swift_deallocPartialClassInstance();
          return v63;
        }

        (v81[1])(v80, v51);
        OUTLINED_FUNCTION_2_11();
      }

      v61 = &qword_1EC2ADAC0;
      v62 = v11;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_11();

LABEL_27:

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_11();

LABEL_23:

  v61 = &qword_1EC2AD810;
  v62 = &v84;
LABEL_24:
  sub_1C869DEA8(v62, v61);
LABEL_28:
  swift_getObjectType();
  OUTLINED_FUNCTION_5_12();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C86BF914@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 352))(v1);
  OUTLINED_FUNCTION_18_3();
  result = type metadata accessor for CKHistoricEvent();
  a1[3] = result;
  *a1 = ObjectType;
  return result;
}

id CKHistoricEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKHistoricEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKHistoricEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKHistoricEvent()
{
  result = qword_1ED5BC510;
  if (!qword_1ED5BC510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C86BFB94()
{
  result = sub_1C86F8D0C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_1C86F8EEC();
}

BOOL OUTLINED_FUNCTION_14_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_19_6()
{

  return [v0 (v2 + 2606)];
}

uint64_t CKClosure.identifier.getter()
{
  v0 = sub_1C86F8D3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86F8D2C();
  v5 = sub_1C86F8D1C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id CKClosure.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_1_13();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_1C86885EC(&v27);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_4_14() & 1) == 0)
  {
LABEL_9:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_1C86F8DBC();
    __swift_project_value_buffer(v8, qword_1ED5BC790);
    v9 = sub_1C86F8DAC();
    v10 = sub_1C86F912C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_24;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "unable to decode location in CKClosure initializer";
    goto LABEL_23;
  }

  v6 = OUTLINED_FUNCTION_5_13();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {

    sub_1C86885EC(&v27);
LABEL_19:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_1C86F8DBC();
    __swift_project_value_buffer(v13, qword_1ED5BC790);
    v9 = sub_1C86F8DAC();
    v10 = sub_1C86F912C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_24;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "unable to decode entityIdentifier in CKClosure initializer";
LABEL_23:
    _os_log_impl(&dword_1C8683000, v9, v10, v12, v11, 2u);
    OUTLINED_FUNCTION_11_1();
LABEL_24:

    type metadata accessor for CKClosure();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((OUTLINED_FUNCTION_4_14() & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_1C86D0AE4(v23, v24, &v27);

  v15 = v27;
  v16 = v28;
  type metadata accessor for CKKnowledgeStore();
  v27 = v15;
  LOBYTE(v28) = v16;
  v17 = sub_1C86851AC(&v27);
  sub_1C8685308(v15, *(&v15 + 1), v16);
  *&v2[OBJC_IVAR___CKClosure_store] = v17;
  v18 = v17;
  v19 = sub_1C86F8EEC();

  v20 = [v18 entityWithIdentifier_];

  *&v2[OBJC_IVAR___CKClosure_entity] = v20;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CKClosure();
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

void sub_1C86C0598(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKClosure_store) + OBJC_IVAR___CKKnowledgeStore_location;
  v4 = *(v3 + 16);
  if (*(v3 + 16))
  {
    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_91();
      sub_1C86857FC(v5, v6, 1u);
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_91();
    sub_1C86857FC(v7, v8, 0);
    v9 = OUTLINED_FUNCTION_91();
    MEMORY[0x1CCA7B200](v9);
  }

  v10 = sub_1C86F8EEC();

  v11 = OUTLINED_FUNCTION_91();
  sub_1C8685308(v11, v12, v4);
  v13 = OUTLINED_FUNCTION_1_13();
  [a1 encodeObject:v10 forKey:v13];

  v14 = sub_1C86F8EEC();

  v15 = OUTLINED_FUNCTION_5_13();
  [a1 encodeObject:v14 forKey:v15];
}

id CKClosure.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKClosure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKClosure();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CKKnowledgeStore.execute(behavior:when:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v12 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v13 = *(*(a3 + v12) + 16);
  v14 = OBJC_IVAR___CKLogic_negatedBody;
  v15 = swift_beginAccess();
  v16 = *(*(a3 + v14) + 16);
  v17 = __OFADD__(v13, v16);
  v18 = v13 + v16;
  if (v17)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0();
    goto LABEL_4;
  }

  if (!v18)
  {
    sub_1C86C15D8();
    v35 = swift_allocError();
    *v36 = 0;
    a4();

    return;
  }

  v42 = a5;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x90))(v15);
  v19 = sub_1C86F8EEC();

  v40 = [v7 entityWithIdentifier_];

  ObjectType = swift_getObjectType();
  v37 = *(a2 + 8);
  v37(ObjectType, a2);
  v20 = sub_1C86F8EEC();

  v41 = v7;
  v39 = [v7 entityWithIdentifier_];

  if (qword_1ED5BC708 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = sub_1C86F8DBC();
  __swift_project_value_buffer(v21, qword_1ED5BC790);
  swift_unknownObjectRetain();
  v22 = a3;
  v23 = sub_1C86F8DAC();
  v24 = sub_1C86F910C();
  v38 = v22;

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    swift_slowAlloc();
    *v25 = 136315394;
    v37(ObjectType, a2);
    v26 = sub_1C8685FDC();

    *(v25 + 4) = v26;
    *(v25 + 12) = 2080;
    v27 = *(a3 + v12);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
    MEMORY[0x1CCA7B2F0](v27, v28);

    v29 = sub_1C8685FDC();

    *(v25 + 14) = v29;
    _os_log_impl(&dword_1C8683000, v23, v24, "will execute behavior with identifier %s every time %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  MEMORY[0x1CCA7B200](0x2D657275736F6C63, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD40);
  sub_1C86F93EC();
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = v42;
  v30[4] = v38;
  v30[5] = v40;
  v30[6] = a1;
  v30[7] = a2;
  v30[8] = v41;
  v31 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x98);
  swift_unknownObjectRetain();
  v32 = v38;

  v33 = v40;
  v34 = v41;
  v31(v39, 0, 0xE000000000000000, sub_1C86C15C4, v30);
}

void sub_1C86C0DAC(id a1, void (*a2)(id), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = a1;
    a2(a1);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    sub_1C86C1078(a4, a5, a2, a3);
    objc_autoreleasePoolPop(v17);
    v18 = objc_autoreleasePoolPush();
    sub_1C86C12B4(a4, a5, a2, a3);
    objc_autoreleasePoolPop(v18);
    v19 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v32[0] = 0;
    v21 = [v19 archivedDataWithRootObject:a6 requiringSecureCoding:1 error:v32];
    v22 = v32[0];
    if (v21)
    {
      v23 = sub_1C86F8CAC();
      v25 = v24;

      v26 = sub_1C86F8C9C();
      (*(a7 + 8))(ObjectType, a7);
      v27 = sub_1C86F8EEC();

      v32[4] = a2;
      v32[5] = a3;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 1107296256;
      v32[2] = sub_1C868E054;
      v32[3] = &block_descriptor_7;
      v28 = _Block_copy(v32);

      [a8 setValue:v26 forKey:v27 completionHandler:v28];
      _Block_release(v28);

      sub_1C868BED4(v23, v25);
    }

    else
    {
      v29 = v22;
      v30 = sub_1C86F8BAC();

      swift_willThrow();
      v31 = v30;
      a2(v30);
    }
  }
}

uint64_t sub_1C86C1078(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v14 = sub_1C86D038C(v13);
  v15 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v16 = *(*(a1 + v15) + 16);
  if (v16)
  {
    v30 = v4;
    v31 = a4;
    v32 = a3;

    v17 = (v29 + 48);
    v33 = a2;
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v17 += 3;

      v21 = v20;
      v22 = sub_1C86D0334();
      dispatch_group_enter(v22);

      if (v19)
      {
        v23 = v18;
      }

      else
      {
        v23 = 42;
      }

      if (v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0xE100000000000000;
      }

      v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x98);

      v25(v33, v23, v24, sub_1C86C171C, v14);

      --v16;
    }

    while (v16);

    a3 = v32;
    v5 = v30;
  }

  sub_1C86D05FC();
  if (v5)
  {
    v26 = v5;
    a3(v5);
  }
}

uint64_t sub_1C86C12B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v14 = sub_1C86D038C(v13);
  v15 = OBJC_IVAR___CKLogic_negatedBody;
  swift_beginAccess();
  v16 = *(*(a1 + v15) + 16);
  if (v16)
  {
    v32 = v4;
    v33 = a4;
    v34 = a3;

    v17 = (v31 + 48);
    v37 = a2;
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v17 += 3;

      v21 = v20;
      v22 = sub_1C86D0334();
      dispatch_group_enter(v22);

      v35 = 757145889;
      v36 = 0xE400000000000000;
      if (v19)
      {
        v23 = v18;
      }

      else
      {
        v23 = 42;
      }

      if (v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0xE100000000000000;
      }

      MEMORY[0x1CCA7B200](v23, v24);

      v26 = v35;
      v25 = v36;
      v27 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x98);

      v27(v37, v26, v25, sub_1C86C1700, v14);

      --v16;
    }

    while (v16);

    a3 = v34;
    v5 = v32;
  }

  sub_1C86D05FC();
  if (v5)
  {
    v28 = v5;
    a3(v5);
  }
}

void sub_1C86C1520(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C86D05C4(a1);
    v3 = a1;
  }

  else
  {
    v4 = sub_1C86D0334();
    dispatch_group_leave(v4);
    v3 = v4;
  }
}

unint64_t sub_1C86C15D8()
{
  result = qword_1EC2ADD48;
  if (!qword_1EC2ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADD48);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1C86F8EEC();
}

void *sub_1C86C17B8()
{
  v1 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v13 = v0;
  v15 = *(v2 + 16);

  v4 = 0;
  v5 = (v2 + 48);
  while (v15 != v4)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    ++v4;
    v6 = *v5;
    v17[2] = 0;
    v17[3] = 0xE000000000000000;

    MEMORY[0x1CCA7B200](45, 0xE100000000000000);
    v7 = [v6 description];
    sub_1C86F8EFC();

    OUTLINED_FUNCTION_6_12();

    MEMORY[0x1CCA7B200](46, 0xE100000000000000);

    OUTLINED_FUNCTION_6_12();

    v5 += 3;
  }

  v8 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v14 = *(*(v13 + v8) + 16);

  v9 = 0;
  v16 = result;
  v10 = (result + 6);
  while (v14 != v9)
  {
    if (v9 >= v16[2])
    {
      goto LABEL_11;
    }

    ++v9;
    v11 = *v10;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;

    MEMORY[0x1CCA7B200](45, 0xE100000000000000);
    v12 = [v11 description];
    sub_1C86F8EFC();

    OUTLINED_FUNCTION_6_12();

    MEMORY[0x1CCA7B200](46, 0xE100000000000000);

    OUTLINED_FUNCTION_6_12();

    v10 += 3;
  }

  MEMORY[0x1CCA7B200](0, 0xE000000000000000);

  MEMORY[0x1CCA7B280](0, 0xE000000000000000);
  OUTLINED_FUNCTION_44_1();

  return v17;
}

uint64_t sub_1C86C1AD0()
{
  [v0 hash];
  v1 = sub_1C86F946C();
  MEMORY[0x1CCA7B200](v1);

  return 0x2D656C7572;
}

id sub_1C86C1B4C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___CKLogic_body] = a1;
  *&v2[OBJC_IVAR___CKLogic_negatedBody] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKLogic();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C86C1B98(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C86FCC70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  v7 = objc_allocWithZone(type metadata accessor for CKLogic());

  v8 = a3;
  return sub_1C86C1B4C(v6, MEMORY[0x1E69E7CC0]);
}

id sub_1C86C1CA8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C86FCC70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  v7 = objc_allocWithZone(type metadata accessor for CKLogic());

  v8 = a3;
  return sub_1C86C1B4C(MEMORY[0x1E69E7CC0], v6);
}

id sub_1C86C1D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v7 = sub_1C86F8EFC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v11 = a5(v7, v9, v10);

  return v11;
}

uint64_t sub_1C86C1E08(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a4;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v38 = v5;
  v9 = *&v5[v8];
  v10 = *(v9 + 16);
  v36 = a3;
  v11 = &a3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];

  v13 = 0;
  v14 = v9 + 48;
  v39 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = (v14 + 24 * v13);
  while (v10 != v13)
  {
    if (v13 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    v18 = *v15;
    if (a2)
    {
      if (!v16)
      {
        goto LABEL_19;
      }

      if (v17 != a1 || v16 != a2)
      {
        result = sub_1C86F948C();
        if ((result & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else if (v16)
    {
      goto LABEL_19;
    }

    v20 = *v11 == *&v18[OBJC_IVAR___CKKnowledgeStoreEntity_identifier] && *(v11 + 1) == *&v18[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    if (v20 || (result = sub_1C86F948C(), (result & 1) != 0))
    {

      v37 = v18;
      v21 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C869CFC8(0, *(v39 + 16) + 1, 1);
        v21 = v39;
      }

      v14 = v9 + 48;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        result = sub_1C869CFC8((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v21 = v39;
        v14 = v9 + 48;
      }

      ++v13;
      *(v21 + 16) = v24;
      v39 = v21;
      v25 = (v21 + 24 * v23);
      v25[4] = v17;
      v25[5] = v16;
      v25[6] = v37;
      goto LABEL_2;
    }

LABEL_19:
    v15 += 3;
    ++v13;
  }

  v26 = *(v39 + 16);

  if (v26)
  {
    sub_1C86C15D8();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    return v38;
  }

  else
  {
    v29 = *a5;
    v28 = v38;
    swift_beginAccess();

    v30 = v36;
    sub_1C869C6F8();
    v31 = *(*&v38[v29] + 16);
    sub_1C869C784(v31);
    v32 = *&v38[v29];
    *(v32 + 16) = v31 + 1;
    v33 = (v32 + 24 * v31);
    v33[4] = a1;
    v33[5] = a2;
    v33[6] = v30;
    *&v38[v29] = v32;
    swift_endAccess();
    v34 = v38;
  }

  return v28;
}

id sub_1C86C20EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v9 = sub_1C86F8EFC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a4;
  v13 = a1;
  a6(v9, v11, v12);

  return v13;
}

id sub_1C86C21E0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();

  sub_1C86B1460(v4);
  v5 = v3;
  v6 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v7 = *(v1 + v6);
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();

  sub_1C86B1460(v8);
  v9 = objc_allocWithZone(type metadata accessor for CKLogic());
  return sub_1C86C1B4C(v5, v7);
}

id CKLogic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKLogic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKLogic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKKnowledgeStore.inferLink(to:withPredicate:when:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  aBlock[7] = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = v4;
  v25 = a1;

  v10 = a4;
  sub_1C86D0150();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = (v11 + 16);
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;

  v15 = v13;
  OUTLINED_FUNCTION_44_1();
  v16 = sub_1C86F8EEC();
  aBlock[4] = sub_1C8690344;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C868E054;
  aBlock[3] = &block_descriptor_8;
  v17 = _Block_copy(aBlock);

  [v9 inferLinkTo:v25 withPredicate:v16 when:v10 completionHandler:v17];
  _Block_release(v17);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 3;
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v12)
    {

      v23 = OUTLINED_FUNCTION_8();
      return v24(v23);
    }

    v19 = *v12;
  }

  swift_willThrow();

  v20 = OUTLINED_FUNCTION_8();
  return v21(v20);
}

void sub_1C86C27EC(void *a1, void *a2, void (**a3)(void, void), void *a4, void *a5, void (**a6)(void, void))
{
  v14 = sub_1C86F8DEC();
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v103 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_1C86F8E6C();
  v102 = *(v104 - 8);
  v18 = MEMORY[0x1EEE9AC00](v104, v17);
  v101 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v107 = &v95 - v21;
  v22 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v108 = v22;
  v23 = *(*(a4 + v22) + 16);
  v24 = OBJC_IVAR___CKLogic_negatedBody;
  v25 = swift_beginAccess();
  v26 = *(*(a4 + v24) + 16);
  v27 = __OFADD__(v23, v26);
  v28 = v23 + v26;
  if (v27)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_4:
    v30 = sub_1C86F8DBC();
    __swift_project_value_buffer(v30, qword_1ED5BC790);

    v31 = a3;
    v32 = a1;
    v33 = a4;
    v34 = sub_1C86F8DAC();
    v35 = sub_1C86F910C();

    v36 = os_log_type_enabled(v34, v35);
    v97 = v31;
    v98 = v24;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96 = v38;
      v99 = swift_slowAlloc();
      v109 = v99;
      *v37 = 136315650;
      *(v37 + 4) = sub_1C8685FDC();
      *(v37 + 12) = 2112;
      *(v37 + 14) = v32;
      *v38 = v32;
      *(v37 + 22) = 2080;
      v39 = v7;
      v40 = *(v108 + a4);
      v41 = v32;

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
      MEMORY[0x1CCA7B2F0](v40, v42);
      v7 = v39;

      v43 = sub_1C8685FDC();

      *(v37 + 24) = v43;
      v6 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1C8683000, v34, v35, "will infer link %s to %@ every time %s", v37, 0x20u);
      v44 = v96;
      sub_1C86C3D20(v96);
      MEMORY[0x1CCA7C540](v44, -1, -1);
      v45 = v99;
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v45, -1, -1);
      MEMORY[0x1CCA7C540](v37, -1, -1);
    }

    v46 = v107;
    v47 = objc_autoreleasePoolPush();
    sub_1C86D0150();
    v99 = type metadata accessor for CKTimedDispatch();
    swift_allocObject();
    v48 = sub_1C86D038C(v46);
    v49 = *((*v6 & *v7) + 0x98);

    v49(v32, v100, v97, sub_1C86C3FF4, v48);

    sub_1C86D05FC();

    objc_autoreleasePoolPop(v47);
    v50 = v108;
    v51 = MEMORY[0x1E69E7F48];
    if (*(*(v108 + a4) + 16))
    {
      v100 = 0;
      v52 = v101;
      sub_1C86F8E5C();
      v53 = v103;
      *v103 = *(*(v50 + a4) + 16);
      v54 = *v51;
      v56 = v105;
      v55 = v106;
      (*(v105 + 104))(v53, v54, v106);
      MEMORY[0x1CCA7B0C0](v52, v53);
      (*(v56 + 8))(v53, v55);
      (*(v102 + 8))(v52, v104);
      swift_allocObject();
      v57 = sub_1C86D038C(v46);
      v58 = *(*(v50 + a4) + 16);
      if (v58)
      {
        v96 = a4;
        v97 = a6;

        v59 = (v95 + 48);
        v108 = v7;
        do
        {
          v60 = *(v59 - 2);
          v61 = *(v59 - 1);
          v62 = *v59;
          v59 += 3;

          v63 = v62;
          v64 = objc_autoreleasePoolPush();
          v65 = sub_1C86D0334();
          dispatch_group_enter(v65);

          if (v61)
          {
            v66 = v60;
          }

          else
          {
            v66 = 42;
          }

          if (v61)
          {
            v67 = v61;
          }

          else
          {
            v67 = 0xE100000000000000;
          }

          v68 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x98);

          v68(v108, v66, v67, sub_1C86B50C0, v57);

          objc_autoreleasePoolPop(v64);

          --v58;
        }

        while (v58);

        a6 = v97;
        v46 = v107;
        v7 = v108;
        a4 = v96;
      }

      v69 = v100;
      sub_1C86D05FC();
      v70 = v98;
      if (v69)
      {
        goto LABEL_34;
      }

      v51 = MEMORY[0x1E69E7F48];
    }

    else
    {
      v70 = v98;
    }

    if (*(*(a4 + v70) + 16))
    {
      v100 = 0;
      v97 = a6;
      v74 = v101;
      sub_1C86F8E5C();
      v75 = v103;
      *v103 = *(*(a4 + v70) + 16);
      v76 = *v51;
      v78 = v105;
      v77 = v106;
      (*(v105 + 104))(v75, v76, v106);
      MEMORY[0x1CCA7B0C0](v74, v75);
      (*(v78 + 8))(v75, v77);
      (*(v102 + 8))(v74, v104);
      swift_allocObject();
      v79 = sub_1C86D038C(v46);
      v80 = *(*(a4 + v70) + 16);
      if (v80)
      {

        v108 = v7;
        v81 = (v107 + 48);
        do
        {
          v83 = *(v81 - 2);
          v82 = *(v81 - 1);
          v84 = *v81;
          v81 += 3;

          v85 = v84;
          v86 = objc_autoreleasePoolPush();
          v87 = sub_1C86D0334();
          dispatch_group_enter(v87);

          v109 = 757145889;
          v110 = 0xE400000000000000;
          if (v82)
          {
            v88 = v83;
          }

          else
          {
            v88 = 42;
          }

          if (v82)
          {
            v89 = v82;
          }

          else
          {
            v89 = 0xE100000000000000;
          }

          MEMORY[0x1CCA7B200](v88, v89);

          v90 = v109;
          v91 = v110;
          v92 = *((*MEMORY[0x1E69E7D40] & *v85) + 0x98);

          v92(v108, v90, v91, sub_1C86B50C0, v79);

          objc_autoreleasePoolPop(v86);

          --v80;
        }

        while (v80);

        v7 = v108;
      }

      v69 = v100;
      sub_1C86D05FC();
      a6 = v97;
      if (v69)
      {
LABEL_34:
        v93 = v69;
        v94 = sub_1C86F8B9C();
        (a6)[2](a6, v94);

        goto LABEL_37;
      }
    }

    a6[2](a6, 0);

    goto LABEL_37;
  }

  if (v28)
  {
    v100 = a2;
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v25);
    v29 = sub_1C86F8EEC();

    v7 = [a5 entityWithIdentifier_];

    if (qword_1ED5BC708 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  sub_1C86C15D8();
  v71 = swift_allocError();
  *v72 = 0;
  v73 = sub_1C86F8B9C();
  (a6)[2](a6, v73);

LABEL_37:
  _Block_release(a6);
}

void CKKnowledgeStore.inferLink(to:withPredicate:when:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v107 = a5;
  v13 = sub_1C86F8DEC();
  OUTLINED_FUNCTION_99();
  v105 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  v102 = v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v101 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v106 = &v93 - v24;
  v25 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v26 = *(*(v25 + a4) + 16);
  v27 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  v28 = swift_beginAccess();
  v29 = *(*(a4 + v27) + 16);
  v30 = __OFADD__(v26, v29);
  v31 = v26 + v29;
  if (v30)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_4;
  }

  if (!v31)
  {
    sub_1C86C15D8();
    v53 = swift_allocError();
    *v54 = 0;
    v107();

    return;
  }

  v99 = a2;
  v100 = v25;
  v96 = v27;
  v25 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v28);
  sub_1C86F8EEC();
  OUTLINED_FUNCTION_44_1();

  a2 = [v7 entityWithIdentifier_];

  if (qword_1ED5BC708 != -1)
  {
    goto LABEL_39;
  }

LABEL_4:
  v32 = sub_1C86F8DBC();
  __swift_project_value_buffer(v32, qword_1ED5BC790);

  v33 = a1;
  v34 = a4;
  v35 = sub_1C86F8DAC();
  v36 = a3;
  v37 = sub_1C86F910C();

  v38 = os_log_type_enabled(v35, v37);
  v98 = a6;
  v108 = a2;
  v95 = v36;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v109 = v97;
    *v39 = 136315650;
    *(v39 + 4) = sub_1C8685FDC();
    *(v39 + 12) = 2112;
    *(v39 + 14) = v33;
    *v40 = v33;
    *(v39 + 22) = 2080;
    v41 = v13;
    v42 = *(v100 + a4);
    v43 = v33;

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
    MEMORY[0x1CCA7B2F0](v42, v44);
    v13 = v41;

    v45 = sub_1C8685FDC();

    *(v39 + 24) = v45;
    v25 = MEMORY[0x1E69E7D40];
    _os_log_impl(&dword_1C8683000, v35, v37, "will infer link %s to %@ every time %s", v39, 0x20u);
    sub_1C86C3D20(v40);
    v46 = v40;
    a2 = v108;
    MEMORY[0x1CCA7C540](v46, -1, -1);
    v47 = v97;
    swift_arrayDestroy();
    MEMORY[0x1CCA7C540](v47, -1, -1);
    MEMORY[0x1CCA7C540](v39, -1, -1);
  }

  v48 = objc_autoreleasePoolPush();
  sub_1C86D0150();
  v97 = type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v49 = OUTLINED_FUNCTION_44_1();
  v50 = sub_1C86D038C(v49);
  v51 = *((*v25 & *a2) + 0x98);

  v51(v33, v99, v95, sub_1C86C3D18, v50);

  v52 = v50;
  sub_1C86D05FC();
  v55 = v107;

  objc_autoreleasePoolPop(v48);
  v56 = v100;
  v57 = MEMORY[0x1E69E7F48];
  if (*(*(v100 + a4) + 16))
  {
    v99 = 0;
    v58 = v101;
    sub_1C86F8E5C();
    v59 = OUTLINED_FUNCTION_1_14();
    v60(v59);
    OUTLINED_FUNCTION_5_14();
    (*(v57 + 8))(v52, v13);
    (*(v102 + 8))(v58, v104);
    swift_allocObject();
    v61 = sub_1C86D038C(0);
    v62 = *(*(v56 + a4) + 16);
    if (v62)
    {
      v95 = v13;
      v100 = a4;

      v63 = (v94 + 48);
      do
      {
        v65 = *(v63 - 2);
        v64 = *(v63 - 1);
        v66 = *v63;
        v63 += 3;

        v67 = v66;
        v68 = objc_autoreleasePoolPush();
        v69 = sub_1C86D0334();
        dispatch_group_enter(v69);

        if (v64)
        {
          v70 = v65;
        }

        else
        {
          v70 = 42;
        }

        if (v64)
        {
          v71 = v64;
        }

        else
        {
          v71 = 0xE100000000000000;
        }

        v72 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x98);

        v72(v108, v70, v71, sub_1C86B504C, v61);

        objc_autoreleasePoolPop(v68);

        --v62;
      }

      while (v62);

      v55 = v107;
      a2 = v108;
      a4 = v100;
      v13 = v95;
    }

    v52 = v61;
    v73 = v99;
    sub_1C86D05FC();
    v74 = v96;
    v57 = MEMORY[0x1E69E7F48];
    if (v73)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v74 = v96;
  }

  if (*(*(a4 + v74) + 16))
  {
    v99 = 0;
    v75 = v101;
    sub_1C86F8E5C();
    v76 = OUTLINED_FUNCTION_1_14();
    v77(v76);
    OUTLINED_FUNCTION_5_14();
    (*(v57 + 8))(v52, v13);
    (*(v102 + 8))(v75, v104);
    swift_allocObject();
    v78 = sub_1C86D038C(0);
    v79 = *(*(a4 + v74) + 16);
    if (v79)
    {

      v80 = (v106 + 48);
      do
      {
        v81 = *(v80 - 2);
        v82 = *(v80 - 1);
        v83 = *v80;
        v80 += 3;

        v84 = v83;
        v85 = objc_autoreleasePoolPush();
        v86 = sub_1C86D0334();
        dispatch_group_enter(v86);

        v109 = 757145889;
        v110 = 0xE400000000000000;
        if (v82)
        {
          v87 = v81;
        }

        else
        {
          v87 = 42;
        }

        if (v82)
        {
          v88 = v82;
        }

        else
        {
          v88 = 0xE100000000000000;
        }

        MEMORY[0x1CCA7B200](v87, v88);

        v89 = v109;
        v90 = v110;
        v91 = *((*MEMORY[0x1E69E7D40] & *v84) + 0x98);

        v91(v108, v89, v90, sub_1C86B50C0, v78);

        objc_autoreleasePoolPop(v85);

        --v79;
      }

      while (v79);

      v55 = v107;
      a2 = v108;
    }

    v73 = v99;
    sub_1C86D05FC();
    if (v73)
    {
LABEL_35:
      v92 = v73;
      (v55)(v73);

      return;
    }
  }

  (v55)(0);
}

uint64_t sub_1C86C3C10(void *a1)
{
  if (a1)
  {
    return sub_1C86D05C4(a1);
  }

  else
  {
    return sub_1C86F91FC();
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86C3D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CKLogicError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C86C3FA0()
{
  result = qword_1EC2ADD60;
  if (!qword_1EC2ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADD60);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_14()
{
  v3 = *(v2 - 208);
  *v3 = *(*(v0 + v1) + 16);
  return v3;
}

void OUTLINED_FUNCTION_5_14()
{

  JUMPOUT(0x1CCA7B0C0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPersistentStoreHandler.verify(path:)(CoreKnowledge::CKPath path)
{
  v3 = *path.path._rawValue;
  v4 = *(*path.path._rawValue + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = v1;
  if (v4 == 1)
  {
    v6 = v3[4];
    v7 = v3[5];
    objc_allocWithZone(type metadata accessor for CKTripleCondition());

    CKTripleCondition.init(subject:predicate:object:)(v6, v7, 0, 0, 0, 0);
    v9 = v8;
    v10 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xF8))();
    if (v2)
    {
    }

    else
    {
      v15 = sub_1C86B4BD8(v10);

      return v15 > 0;
    }

    return v11;
  }

  if (!*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    return 0;
  }

  v43 = v2;
  v12 = *(path.path._rawValue + 9);
  if (*(path.path._rawValue + 8))
  {
    v13 = v3[5];
    v45 = v3[4];

    v14 = 3;
  }

  else
  {
    v45 = 0;
    v13 = 0;
    v14 = 2;
  }

  v16 = v4;
  if ((v12 & 1) == 0)
  {
    v16 = v4 + 1;
  }

  v44 = v3 + 4;

  v50 = 0;
  v49 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v47 = v4;
  v48 = v3;
  v46 = v13;
  v51 = v14;
  while (1)
  {
    v19 = v16;
    if (v14 < v16)
    {
      v20 = v16 - 2;
      v16 -= 2;
      if (v19 - 2 < 0)
      {
        goto LABEL_49;
      }

      goto LABEL_18;
    }

    if ((v16 != v14) | v49 & 1)
    {
      break;
    }

    v20 = v16 - 2;
    v49 = 1;
    v16 = v14;
    if (v19 - 2 < 0)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

LABEL_18:
    v21 = v3[2];
    if (v20 >= v21)
    {
      goto LABEL_50;
    }

    v22 = &v3[2 * v19];
    v24 = *v22;
    v23 = v22[1];
    if (v4 >= v19)
    {
      v27 = v19 - 1;
      if (v27 >= v21)
      {
        goto LABEL_51;
      }

      v28 = &v44[2 * v27];
      v25 = *v28;
      v26 = v28[1];
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    MEMORY[0x1CCA7B200](0xD00000000000002BLL, 0x80000001C8700AD0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4B00();
      v18 = v37;
    }

    v29 = *(v18 + 16);
    if (v29 >= *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_12();
      v18 = v38;
    }

    *(v18 + 16) = v29 + 1;
    v30 = (v18 + 40 * v29);
    v30[4] = v24;
    v30[5] = v23;
    v30[7] = MEMORY[0x1E69E6158];
    v30[8] = &off_1F4850E78;
    if (v26)
    {
      MEMORY[0x1CCA7B200](0x6A626F20646E6120, 0xEF3F203D20746365);
      v31 = *(v18 + 16);
      v4 = v47;
      v3 = v48;
      if (v31 >= *(v18 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10_12();
        v18 = v39;
      }

      *(v18 + 16) = v31 + 1;
      v32 = (v18 + 40 * v31);
      v32[4] = v25;
      v32[5] = v26;
      v32[7] = MEMORY[0x1E69E6158];
      v32[8] = &off_1F4850E78;
    }

    else
    {
      v4 = v47;
      v3 = v48;
    }

    v14 = v51;
    if (v20 < v51)
    {
      if (v46)
      {

        MEMORY[0x1CCA7B200](0xD000000000000010, 0x80000001C8700B20);
        v33 = *(v18 + 16);
        if (v33 >= *(v18 + 24) >> 1)
        {
          OUTLINED_FUNCTION_10_12();
          v18 = v40;
        }

        *(v18 + 16) = v33 + 1;
        v34 = (v18 + 40 * v33);
        v34[4] = v45;
        v34[5] = v46;
        v34[7] = MEMORY[0x1E69E6158];
        v34[8] = &off_1F4850E78;
        v14 = v51;
      }

      v35 = sub_1C86F904C();
      MEMORY[0x1CCA7B200](v35);
    }

    else
    {
      result = MEMORY[0x1CCA7B200](0xD000000000000011, 0x80000001C8700B00);
      if (__OFADD__(v50++, 1))
      {
        goto LABEL_52;
      }
    }
  }

  sub_1C86A9000(0, 0xE000000000000000, MEMORY[0x1E69E7CC0]);
  if (v43)
  {

    return v11;
  }

  sub_1C86D452C(v18);

  sub_1C86D49F8(0);

  sub_1C86C4548();
  v42 = v41;

  if (v42)
  {

    return 1;
  }

  return 0;
}

uint64_t static CKPath.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  a3[4] = 257;

  sub_1C869C6E0();
  v6 = *(*a3 + 16);
  result = sub_1C869C76C(v6);
  v8 = *a3;
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  return result;
}

uint64_t static CKPath.to(_:withPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = CKPath.to(_:withPredicate:)(*&a1, *&a2);
  if (v7)
  {

    *a3 = v7;
    *(a3 + 8) = v8 & 1;
    *(a3 + 9) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CoreKnowledge::CKPath_optional __swiftcall CKPath.to(_:withPredicate:)(Swift::String _, Swift::String withPredicate)
{
  v6 = v2;
  if (*(v3 + 9) == 1)
  {
    object = withPredicate._object;
    countAndFlagsBits = withPredicate._countAndFlagsBits;
    v9 = _._object;
    OUTLINED_FUNCTION_14_10();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      v5 = v15;
    }

    v10 = *(v5 + 16);
    v11 = v10 + 1;
    if (v10 >= *(v5 + 24) >> 1)
    {
      sub_1C86C4A44();
      v5 = v16;
    }

    *(v5 + 16) = v11;
    v12 = v5 + 16 * v10;
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;
    v13 = *(v5 + 24);

    if ((v10 + 2) > (v13 >> 1))
    {
      OUTLINED_FUNCTION_16_6();
      v5 = _._countAndFlagsBits;
    }

    *(v5 + 16) = v10 + 2;
    v14 = v5 + 16 * v11;
    *(v14 + 32) = v4;
    *(v14 + 40) = v9;
    *v6 = v5;
    *(v6 + 8) = v17 | 0x100;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  result.is_nil = withPredicate._countAndFlagsBits;
  result.value = _;
  return result;
}

CoreKnowledge::CKPath_optional __swiftcall CKPath.withPredicate(_:)(CoreKnowledge::CKPath_optional result)
{
  v5 = v1;
  if (*(v2 + 9) == 1)
  {
    v6 = *&result.value.fromSubject;
    OUTLINED_FUNCTION_14_10();

    result.value.path._rawValue = swift_isUniquelyReferenced_nonNull_native();
    if ((result.value.path._rawValue & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      rawValue = result.value.path._rawValue;
    }

    v8 = rawValue[2];
    if (v8 >= rawValue[3] >> 1)
    {
      OUTLINED_FUNCTION_16_6();
      rawValue = result.value.path._rawValue;
    }

    rawValue[2] = v8 + 1;
    v9 = &rawValue[2 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v6;
    *v5 = rawValue;
    *(v5 + 8) = v10;
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
  }

  result.is_nil = v7;
  return result;
}

uint64_t CKKnowledgeStore.verify(path:completionHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(v3 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v10 = *(v3 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR___CKKnowledgeStore_backingStore), v9);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  return (*(v10 + 32))(&v12, a2, a3, v9, v10);
}

void sub_1C86C4A44()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD998);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C7E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4B00()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8);
      v6 = OUTLINED_FUNCTION_15_7();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_12_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C824(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8);
    OUTLINED_FUNCTION_6_13();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C86C4BD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C86C4C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C86C4C68()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB70);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C804(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4D28()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD80);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C8687B4C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4DDC()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      sub_1C86B132C();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869F3D8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4E94()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD78);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C8687B4C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
    OUTLINED_FUNCTION_6_13();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4F54()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC10);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C7E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C5008()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20);
      v6 = OUTLINED_FUNCTION_15_7();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_12_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C84C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
    OUTLINED_FUNCTION_6_13();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C50CC()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD68);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C804(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD70);
    OUTLINED_FUNCTION_6_13();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C518C()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA10);
      v6 = OUTLINED_FUNCTION_15_7();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_12_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C84C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18);
    OUTLINED_FUNCTION_6_13();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_10()
{
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_16_6()
{

  sub_1C86C4A44();
}

id sub_1C86C5358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDeviceKnowledgeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C86C53E0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  v5 = __src;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v7 = HIDWORD(a2) - a2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(a3);
LABEL_6:
      if (v7)
      {
        if (v7 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0);
          v4 = swift_allocObject();
          v10 = _swift_stdlib_malloc_size(v4);
          v4[2] = v7;
          v4[3] = 2 * v10 - 64;
        }

        __src = memcpy(v4 + 4, v5, v7);
      }

LABEL_10:
      *a4 = v4;
      break;
  }

  return __src;
}

void sub_1C86C54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for CKHistoricEvent();
  v5 = sub_1C86F8E8C();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t CKPermanentEventStore.historicEvents()()
{
  v25 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v1, v2);
  v18 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  OUTLINED_FUNCTION_6_1();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC8];
  v6 = dispatch_semaphore_create(0);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C86934D4;
  *(v8 + 24) = v7;
  v23 = sub_1C86933E0;
  v24 = v8;
  OUTLINED_FUNCTION_5_2();
  v20 = 1107296256;
  v21 = sub_1C86ADE9C;
  v22 = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  v10 = v6;

  [v18 historicEventsWithCompletionHandler_];
  _Block_release(v9);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 3;
  }

  else
  {
    swift_beginAccess();
    if (!*v4)
    {

      swift_beginAccess();
      v8 = *(v5 + 16);

      v16 = OUTLINED_FUNCTION_12();
      v17(v16);
      return v8;
    }

    v12 = *v4;
  }

  swift_willThrow();

  v13 = OUTLINED_FUNCTION_12();
  v14(v13);
  return v8;
}

void CKPermanentEventStore.historicEvents(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1C86C7830;
  v8[5] = v6;
  OUTLINED_FUNCTION_0_14();
  v8[1] = 1107296256;
  v8[2] = sub_1C86A3860;
  v8[3] = &block_descriptor_15_0;
  v7 = _Block_copy(v8);

  [v5 dictionaryRepresentationWithCompletionHandler_];
  _Block_release(v7);
}

uint64_t sub_1C86C5A5C(uint64_t a1, uint64_t a2, void (*a3)(void, void *))
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v41 = MEMORY[0x1E69E7CC8];
LABEL_4:
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C8686320(*(a2 + 56) + 32 * v12, v46);
    *&v47 = v15;
    *(&v47 + 1) = v14;
    sub_1C8689930(v46, &v48);

LABEL_11:
    v50 = v47;
    v51[0] = v48;
    v51[1] = v49;
    v16 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {

      a3(0, v41);
    }

    v17 = v50;
    sub_1C8689930(v51, &v47);
    sub_1C8686320(&v47, v46);
    v18 = type metadata accessor for CKHistoricEvent();
    if (swift_dynamicCast())
    {
      v39 = v44;
      swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v41;
      v19 = sub_1C869C918(v17, v16);
      if (__OFADD__(v41[2], (v20 & 1) == 0))
      {
        goto LABEL_39;
      }

      v21 = v19;
      v42 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD88);
      if (sub_1C86F93FC())
      {
        v22 = sub_1C869C918(v17, v16);
        if ((v42 & 1) != (v23 & 1))
        {
          goto LABEL_43;
        }

        v21 = v22;
        if (v42)
        {
          goto LABEL_34;
        }
      }

      else if (v42)
      {
        goto LABEL_34;
      }

      v29 = *&v46[0];
      *(*&v46[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (v29[6] + 16 * v21);
      *v30 = v17;
      v30[1] = v16;
      *(v29[7] + 8 * v21) = v39;

      __swift_destroy_boxed_opaque_existential_0(&v47);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    sub_1C8686320(&v47, v46);
    if (swift_dynamicCast())
    {
      objc_allocWithZone(v18);

      v24 = CKHistoricEvent.init(from:withIdentifier:)(v44, v45, v17, v16);
      if (!v24)
      {
        __swift_destroy_boxed_opaque_existential_0(&v47);

        goto LABEL_4;
      }

      v39 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v41;
      v25 = sub_1C869C918(v17, v16);
      if (__OFADD__(v41[2], (v26 & 1) == 0))
      {
        goto LABEL_40;
      }

      v21 = v25;
      v43 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD88);
      if (sub_1C86F93FC())
      {
        v27 = sub_1C869C918(v17, v16);
        if ((v43 & 1) != (v28 & 1))
        {
          goto LABEL_43;
        }

        v21 = v27;
        if (v43)
        {
LABEL_34:

          v41 = *&v46[0];
          v34 = *(*&v46[0] + 56);
          v35 = *(v34 + 8 * v21);
          *(v34 + 8 * v21) = v39;

          __swift_destroy_boxed_opaque_existential_0(&v47);
          goto LABEL_4;
        }
      }

      else if (v43)
      {
        goto LABEL_34;
      }

      v29 = *&v46[0];
      *(*&v46[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v36 = (v29[6] + 16 * v21);
      *v36 = v17;
      v36[1] = v16;
      *(v29[7] + 8 * v21) = v39;

      __swift_destroy_boxed_opaque_existential_0(&v47);
      v37 = v29[2];
      v32 = __OFADD__(v37, 1);
      v33 = v37 + 1;
      if (v32)
      {
        goto LABEL_42;
      }

LABEL_36:
      v41 = v29;
      v29[2] = v33;
      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1C86F94BC();
  __break(1u);
  return result;
}

void sub_1C86C5FC0(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v15 = sub_1C86F8D0C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a3(a1);
  }

  else
  {
    v31 = a7;
    if (a2)
    {
      (*(v16 + 16))(v19, a5, v15);
      v20 = OBJC_IVAR___CKHistoricEvent__firstSeen;
      swift_beginAccess();
      v21 = *(v16 + 40);
      v22 = a2;
      v21(&a2[v20], v19, v15);
      swift_endAccess();
      v23 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
      v24 = v22;
      v25 = sub_1C86F8EEC();
      v37 = a3;
      v38 = a4;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1C868E054;
      v36 = &block_descriptor_89;
      v26 = _Block_copy(&aBlock);

      [v23 setValue:v24 forKey:v25 completionHandler:v26];
      _Block_release(v26);
    }

    else
    {
      sub_1C868B6E4();
      v27 = swift_allocError();
      v29 = v28;
      aBlock = 0;
      v34 = 0xE000000000000000;
      sub_1C86F936C();
      MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
      MEMORY[0x1CCA7B200](v31, v32);
      MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
      v30 = v34;
      *v29 = aBlock;
      *(v29 + 8) = v30;
      *(v29 + 32) = 1;
      a3(v27);
    }
  }
}

void sub_1C86C631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v32 = a7;
  v29 = a6;
  v30 = a4;
  v12 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C86F8EEC();
  (*(v14 + 16))(v19, a1, v12);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  *(v22 + 24) = a5;
  (*(v14 + 32))(v22 + v20, v19, v12);
  v23 = v31;
  *(v22 + v21) = v31;
  v24 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a2;
  v24[1] = a3;
  v39 = v32;
  v40 = v22;
  OUTLINED_FUNCTION_5_2();
  v36 = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v37 = v25;
  v38 = v34;
  v26 = _Block_copy(aBlock);

  v27 = v23;

  v28 = v33;
  [v27 historicEventWithIdentifier:v33 completionHandler:{v26, v29}];
  _Block_release(v26);
}

void sub_1C86C64FC(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1C86F8D0C();
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v40 - v20;
  if (a1)
  {
    a3(a1);
  }

  else
  {
    v45 = a6;
    v46 = a4;
    v47 = a7;
    if (a2)
    {
      v43 = a8;
      v44 = a3;
      v22 = a5;
      v23 = v18;
      v42 = *(v18 + 16);
      v42(&v40 - v20, a5, v16);
      v24 = OBJC_IVAR___CKHistoricEvent__lastSeen;
      swift_beginAccess();
      v25 = *(v23 + 40);
      v26 = a2;
      v27 = &a2[v24];
      v28 = v22;
      v41 = v25;
      v25(v27, v21, v16);
      v29 = swift_endAccess();
      (*((*MEMORY[0x1E69E7D40] & *v26) + 0x118))(v29);
      v30 = sub_1C86F8CEC();
      (*(v23 + 8))(v21, v16);
      if (v30 == 1)
      {
        v42(v21, v28, v16);
        v31 = OBJC_IVAR___CKHistoricEvent__firstSeen;
        swift_beginAccess();
        v41(&v26[v31], v21, v16);
        swift_endAccess();
        *&v26[OBJC_IVAR___CKHistoricEvent__frequency] = 1;
        *&v26[OBJC_IVAR___CKHistoricEvent__lastDuration] = 0;
        *&v26[OBJC_IVAR___CKHistoricEvent__totalDuration] = 0;
      }

      v32 = *(v45 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
      v33 = v26;
      v34 = sub_1C86F8EEC();
      v52 = v44;
      v53 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1C868E054;
      v51 = &block_descriptor_86;
      v35 = _Block_copy(&aBlock);

      [v32 setValue:v33 forKey:v34 completionHandler:v35];
      _Block_release(v35);
    }

    else
    {
      sub_1C868B6E4();
      v36 = swift_allocError();
      v38 = v37;
      aBlock = 0;
      v49 = 0xE000000000000000;
      sub_1C86F936C();
      MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
      MEMORY[0x1CCA7B200](v47, a8);
      MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
      v39 = v49;
      *v38 = aBlock;
      *(v38 + 8) = v39;
      *(v38 + 32) = 1;
      a3(v36);
    }
  }
}

uint64_t sub_1C86C6974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a5);
  sub_1C86F8CDC();
  v20 = sub_1C86F8EFC();
  v22 = v21;
  OUTLINED_FUNCTION_6_1();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  v24 = a1;
  a8(v18, v20, v22, a7, v23);

  return (*(v14 + 8))(v18, v12);
}

void CKPermanentEventStore.setFrequency(_:forEventWithIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1C86F8EEC();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = v5;
  v12[6] = a2;
  v12[7] = a3;
  v16[4] = sub_1C86C7A24;
  v16[5] = v12;
  OUTLINED_FUNCTION_0_14();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v16[2] = v13;
  v16[3] = &block_descriptor_33;
  v14 = _Block_copy(v16);

  v15 = v5;

  [v15 historicEventWithIdentifier:v11 completionHandler:v14];
  _Block_release(v14);
}

void sub_1C86C6BD4(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    a3();
  }

  else if (a2)
  {
    *&a2[OBJC_IVAR___CKHistoricEvent__frequency] = a5;
    v12 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v13 = a2;
    v14 = sub_1C86F8EEC();
    v19[4] = a3;
    v19[5] = a4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C868E054;
    v19[3] = &block_descriptor_83;
    v15 = _Block_copy(v19);

    [v12 setValue:v13 forKey:v14 completionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    sub_1C868B6E4();
    v16 = swift_allocError();
    v18 = v17;
    sub_1C86F936C();
    MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
    MEMORY[0x1CCA7B200](a7, a8);
    MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
    *v18 = 0;
    *(v18 + 8) = 0xE000000000000000;
    *(v18 + 32) = 1;
    (a3)(v16);
  }
}

void sub_1C86C6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1C86F8EEC();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = v8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  v21[4] = a7;
  v21[5] = v17;
  OUTLINED_FUNCTION_0_14();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v21[2] = v18;
  v21[3] = a8;
  v19 = _Block_copy(v21);

  v20 = v8;

  [v20 historicEventWithIdentifier:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1C86C7040(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (a1)
  {
    a3();
  }

  else if (a2)
  {
    *&a2[*a9] = a6;
    v12 = *(a5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v13 = a2;
    OUTLINED_FUNCTION_17_5();
    v14 = sub_1C86F8EEC();
    v21[4] = a3;
    v21[5] = a4;
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_1();
    v21[2] = v15;
    v21[3] = a10;
    v16 = _Block_copy(v21);

    [v12 setValue:v13 forKey:v14 completionHandler:v16];
    _Block_release(v16);
  }

  else
  {
    sub_1C868B6E4();
    v17 = swift_allocError();
    v19 = v18;
    sub_1C86F936C();
    MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
    v20 = OUTLINED_FUNCTION_17_5();
    MEMORY[0x1CCA7B200](v20);
    MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 32) = 1;
    (a3)(v17);
  }
}

uint64_t sub_1C86C7258(void *a1, int a2, int a3, void *aBlock, double a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_1C86F8EFC();
  v15 = v14;
  OUTLINED_FUNCTION_6_1();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a1;
  a8(v13, v15, a7, v16, a5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.deleteEvent(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  v23[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_1C86F8DBC();
  __swift_project_value_buffer(v3, qword_1ED5BC790);

  v4 = sub_1C86F8DAC();
  v5 = sub_1C86F910C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136380675;
    OUTLINED_FUNCTION_17_5();
    *(v6 + 4) = sub_1C8685FDC();
    OUTLINED_FUNCTION_7_16();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v14, v15);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v16, v17);
  }

  v18 = *(v2 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  OUTLINED_FUNCTION_17_5();
  v19 = sub_1C86F8EEC();
  v23[0] = 0;
  v20 = [v18 removeValueForKey:v19 error:v23];

  if (v20)
  {
    v21 = v23[0];
  }

  else
  {
    v22 = v23[0];
    sub_1C86F8BAC();

    swift_willThrow();
  }
}

void CKPermanentEventStore.deleteEvent(withIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);

  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F910C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136380675;
    *(v11 + 4) = sub_1C8685FDC();
    OUTLINED_FUNCTION_7_16();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v19);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v20);
  }

  v21 = *(v5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v22 = sub_1C86F8EEC();
  v25[4] = a3;
  v25[5] = a4;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1();
  v25[2] = v23;
  v25[3] = &block_descriptor_48;
  v24 = _Block_copy(v25);

  [v21 removeValueForKey:v22 completionHandler:v24];
  _Block_release(v24);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1C86C7950(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C86F8D0C() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = (v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return a3(a1, a2, v10, v11, v3 + v7, v9, v13, v14);
}

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C86C7BDC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1C86F8B9C();
  }

  else
  {
    v1 = 0;
  }

  v4 = sub_1C86F908C();
  v2 = OUTLINED_FUNCTION_55_0();
  v3(v2);
}

uint64_t sub_1C86C7C5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  sub_1C868FEF0(a2, v11);
  v5 = v12;
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_54_0();
    (*(v7 + 16))(v2);
    sub_1C86F947C();
    (*(v7 + 8))(v2, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v8 = OUTLINED_FUNCTION_55_0();
  v9(v8);

  return swift_unknownObjectRelease();
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier) == *(a2 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier) && *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8) == *(a2 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8))
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_23_3();
  }
}

uint64_t CKKnowledgeStoreEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);

  return v1;
}

id sub_1C86C7E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CKKnowledgeStoreEntity_store] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CKKnowledgeStoreEntity();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C86C7E6C(uint64_t a1)
{
  sub_1C868FEF0(a1, v6);
  if (!v7)
  {
    sub_1C86A5148(v6, &qword_1EC2AD810);
    goto LABEL_11;
  }

  type metadata accessor for CKKnowledgeStoreEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (![*(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_store) isEqual_])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier) == *&v5[OBJC_IVAR___CKKnowledgeStoreEntity_identifier] && *(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8) == *&v5[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1C86F948C();
  }

  return v3 & 1;
}

uint64_t sub_1C86C8040()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_store)) + 0x88))();
  v2 = MEMORY[0x1CCA7B280](v1);

  return MEMORY[0x1CCA7B280](*(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier), *(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8)) ^ v2;
}

void sub_1C86C8120(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_54_0();
  v6 = v3;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  OUTLINED_FUNCTION_76();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v10 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x68);

  v13 = v10;
  v12(a1, a2, sub_1C86934C8, v11);
  v14 = v13;

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    v15 = *v8;
    if (!*v8)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();
      sub_1C868FEF0(v9 + 16, a3);

      v26 = OUTLINED_FUNCTION_25_5();
      v27(v26);
      return;
    }

    v17 = v15;
  }

  swift_willThrow();

  v18 = OUTLINED_FUNCTION_25_5();
  v19(v18);
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v20 = sub_1C86F8DBC();
  __swift_project_value_buffer(v20, qword_1ED5BC790);

  v21 = v15;
  v22 = sub_1C86F8DAC();
  v23 = sub_1C86F912C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1C8685FDC();
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    sub_1C86F94EC();
    v25 = sub_1C8685FDC();

    *(v24 + 14) = v25;
    _os_log_impl(&dword_1C8683000, v22, v23, "key=%s. %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  else
  {
  }

  *a3 = 0u;
  a3[1] = 0u;
}

void sub_1C86C868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57_0();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_39_1();
  a9 = 0;
  a10 = 0xE000000000000000;
  v29 = OUTLINED_FUNCTION_14_11();
  v30 = MEMORY[0x1CCA7B260](v29);
  v31 = OUTLINED_FUNCTION_13();
  v32 = MEMORY[0x1CCA7B260](v31);
  v33 = __OFADD__(v30, v32);
  v34 = v30 + v32;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_8();
    v33 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (!v33)
    {
      MEMORY[0x1CCA7B1D0](v36);
      v37 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v37);
      v38 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v38);
      v39 = OUTLINED_FUNCTION_13();
      MEMORY[0x1CCA7B200](v39);
      v40 = *(v26 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
      v41 = sub_1C86F8EEC();

      OUTLINED_FUNCTION_18_4();
      a10 = 1107296256;
      a11 = sub_1C86AD354;
      a12 = &block_descriptor_10;
      v42 = _Block_copy(&a9);

      [v40 valueForKey:v41 completionHandler:v42];
      _Block_release(v42);

      OUTLINED_FUNCTION_32_4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C87FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    OUTLINED_FUNCTION_41_1();
    v9 = v33;
    v30 = v3;
    OUTLINED_FUNCTION_24_4();
    v11 = (a1 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if ((v4 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_14_11();
        v14 = sub_1C86F8FFC();
      }

      else
      {
        v14 = sub_1C86F900C();
      }

      v15 = v14;
      if ((v13 & 0x1000000000000000) != 0)
      {
        result = sub_1C86F8FFC();
      }

      else
      {
        v16 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v16 = v12;
        }

        OUTLINED_FUNCTION_38_1(v16);
        result = sub_1C86F900C();
      }

      v18 = __OFADD__(v15, result);
      v19 = v15 + result;
      if (v18)
      {
        break;
      }

      result = OUTLINED_FUNCTION_1_8();
      v20 = v19 + result;
      if (__OFADD__(v19, result))
      {
        goto LABEL_21;
      }

      MEMORY[0x1CCA7B1D0](v20);
      v21 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v21);
      v22 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v22);
      MEMORY[0x1CCA7B200](v12, v13);

      v24 = *(v33 + 16);
      v23 = *(v33 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_8_1(v23);
        sub_1C869CE68(v26, v24 + 1, 1);
      }

      *(v33 + 16) = v24 + 1;
      v25 = v33 + 16 * v24;
      *(v25 + 32) = 0;
      *(v25 + 40) = 0xE000000000000000;
      v11 += 2;
      if (!--v8)
      {
        v7 = a2;
        v6 = a3;
        v5 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v27 = (*(v5 + OBJC_IVAR___CKKnowledgeStoreEntity_store) + OBJC_IVAR___CKKnowledgeStore_backingStore);
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_0(v27, v28);
    (*(*(v29 + 8) + 40))(v9, v7, v6, v28);
  }

  return result;
}

uint64_t sub_1C86C8A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    OUTLINED_FUNCTION_41_1();
    v9 = v31;
    OUTLINED_FUNCTION_24_4();
    v11 = (a1 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if ((v4 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_14_11();
        v14 = sub_1C86F8FFC();
      }

      else
      {
        v14 = sub_1C86F900C();
      }

      v15 = v14;
      if ((v13 & 0x1000000000000000) != 0)
      {
        result = sub_1C86F8FFC();
      }

      else
      {
        v16 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v16 = v12;
        }

        OUTLINED_FUNCTION_38_1(v16);
        result = sub_1C86F900C();
      }

      v18 = __OFADD__(v15, result);
      v19 = v15 + result;
      if (v18)
      {
        break;
      }

      result = OUTLINED_FUNCTION_1_8();
      v20 = v19 + result;
      if (__OFADD__(v19, result))
      {
        goto LABEL_21;
      }

      MEMORY[0x1CCA7B1D0](v20);
      v21 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v21);
      v22 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v22);
      MEMORY[0x1CCA7B200](v12, v13);

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_8_1(v23);
        sub_1C869CE68(v26, v24 + 1, 1);
      }

      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = 0;
      *(v25 + 40) = 0xE000000000000000;
      v11 += 2;
      if (!--v8)
      {
        v6 = a3;
        v7 = a2;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_11();
    v27 = swift_allocObject();
    *(v27 + 16) = v7;
    *(v27 + 24) = v6;
    v28 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x70);

    v28(v9, sub_1C86CF60C, v27);
  }

  return result;
}

uint64_t sub_1C86C8C34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    a3(a1, v4);
  }

  v11 = a1;
  v12 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C869CEE8(0, v3, 0);
  v6 = a2 + 32;
  v4 = v19;
  while (1)
  {
    sub_1C868FEF0(v6, v15);
    if (!v16)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v18 = sub_1C869F398(0, &qword_1ED5BC4C0);
      *&v17 = v8;
      goto LABEL_7;
    }

    result = sub_1C868FEF0(v15, &v13);
    if (!v14)
    {
      break;
    }

    sub_1C8689930(&v13, &v17);
LABEL_7:
    sub_1C86A5148(v15, &qword_1EC2AD810);
    v19 = v4;
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1C869CEE8((v9 > 1), v10 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v10 + 1;
    sub_1C8689930(&v17, (v4 + 32 * v10 + 32));
    v6 += 32;
    if (!--v3)
    {
      a3 = v12;
      a1 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C86C8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(uint64_t a1, void *a2), void *a12, uint64_t (*a13)(void *a1), uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104();
  a28 = v30;
  a29 = v31;
  v32 = v29;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1C869F2D8(*&v29[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, &a9);
  v39 = a12;
  v40 = a13;
  __swift_project_boxed_opaque_existential_0(&a9, a12);
  v41 = (*(v40 + 5))(v39, v40);
  __swift_destroy_boxed_opaque_existential_0(&a9);
  a9 = 0;
  a10 = 0xE000000000000000;
  v42 = OUTLINED_FUNCTION_47_2();
  v43 = MEMORY[0x1CCA7B260](v42);
  v44 = OUTLINED_FUNCTION_81();
  v45 = MEMORY[0x1CCA7B260](v44);
  v46 = __OFADD__(v43, v45);
  v47 = v43 + v45;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_1_8();
    v46 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (!v46)
    {
      MEMORY[0x1CCA7B1D0](v49);
      v50 = OUTLINED_FUNCTION_47_2();
      MEMORY[0x1CCA7B200](v50);
      v51 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v51);
      v52 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v52);
      v53 = a9;
      v54 = a10;
      __swift_project_boxed_opaque_existential_0(v38, v38[3]);
      v55 = sub_1C86F947C();
      v56 = sub_1C86F8EEC();
      [v41 setObject:v55 forKey:v56];
      swift_unknownObjectRelease();

      sub_1C8686320(v38, &a15);
      v57 = swift_allocObject();
      sub_1C8689930(&a15, (v57 + 16));
      *(v57 + 48) = v32;
      *(v57 + 56) = v53;
      *(v57 + 64) = v54;
      *(v57 + 72) = v36;
      *(v57 + 80) = v34;
      a13 = sub_1C86CF614;
      a14 = v57;
      a9 = MEMORY[0x1E69E9820];
      a10 = 1107296256;
      a11 = sub_1C868E054;
      a12 = &block_descriptor_15_1;
      v58 = _Block_copy(&a9);
      v59 = v32;

      [v41 writeWithCompletionHandler_];
      _Block_release(v58);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_101();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C90C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v10 = sub_1C86F8DBC();
    __swift_project_value_buffer(v10, qword_1ED5BC790);
    sub_1C8686320(a2, v25);
    v11 = a3;

    v12 = a1;
    v13 = sub_1C86F8DAC();
    v14 = sub_1C86F912C();

    if (os_log_type_enabled(v13, v14))
    {
      v21 = a6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 138478595;
      sub_1C8689930(v25, &v23);
      sub_1C869F398(0, &unk_1EC2AD7D8);
      swift_dynamicCast();
      *(v15 + 4) = v22;
      *v16 = v22;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_1C8685FDC();
      *(v15 + 22) = 2081;
      *(v15 + 24) = sub_1C8685FDC();
      *(v15 + 32) = 2080;
      swift_getErrorValue();
      sub_1C86F94EC();
      v18 = sub_1C8685FDC();

      *(v15 + 34) = v18;
      _os_log_impl(&dword_1C8683000, v13, v14, "error attaching attribute %{private}@ to entity %{private}s (key=%{private}s. %s", v15, 0x2Au);
      sub_1C86A5148(v16, &unk_1EC2ADAA0);
      MEMORY[0x1CCA7C540](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v17, -1, -1);
      v19 = v15;
      a6 = v21;
      MEMORY[0x1CCA7C540](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  return a6(a1);
}

uint64_t sub_1C86C947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C869F2D8(*&v3[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, &aBlock);
  v5 = *(&v50 + 1);
  v6 = v51;
  __swift_project_boxed_opaque_existential_0(&aBlock, *(&v50 + 1));
  v44 = (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v41 = v3;
  v11 = &v3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v12 = (v8 + 63) >> 6;
  v43 = a1;

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*(v43 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_1C8686320(*(v43 + 56) + 32 * v17, v45);
      *&v46 = v20;
      *(&v46 + 1) = v19;
      sub_1C8689930(v45, &v47);

LABEL_10:
      aBlock = v46;
      v50 = v47;
      v51 = v48;
      v21 = *(&v46 + 1);
      if (!*(&v46 + 1))
      {
        break;
      }

      v22 = aBlock;
      sub_1C8689930(&v50, &v46);
      v23 = *v11;
      v24 = v11[1];
      *&v45[0] = 0;
      *(&v45[0] + 1) = 0xE000000000000000;
      if ((v24 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_47_2();
        v26 = sub_1C86F8FFC();
      }

      else
      {
        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v23;
        }

        OUTLINED_FUNCTION_38_1(v25);
        v26 = sub_1C86F900C();
      }

      v27 = v26;
      if ((v21 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_81();
        result = sub_1C86F8FFC();
      }

      else
      {
        v28 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v28 = v22;
        }

        OUTLINED_FUNCTION_38_1(v28);
        result = sub_1C86F900C();
      }

      v29 = __OFADD__(v27, result);
      v30 = v27 + result;
      if (v29)
      {
        goto LABEL_28;
      }

      v31 = OUTLINED_FUNCTION_1_8();
      v29 = __OFADD__(v30, v31);
      result = v30 + v31;
      if (v29)
      {
        goto LABEL_29;
      }

      MEMORY[0x1CCA7B1D0](result);
      v32 = OUTLINED_FUNCTION_47_2();
      MEMORY[0x1CCA7B200](v32);
      v33 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v33);
      v34 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v34);

      __swift_project_boxed_opaque_existential_0(&v46, *(&v47 + 1));
      v35 = sub_1C86F947C();
      v36 = sub_1C86F8EEC();

      [v44 setObject:v35 forKey:v36];
      swift_unknownObjectRelease();

      result = __swift_destroy_boxed_opaque_existential_0(&v46);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_76();
    v37 = swift_allocObject();
    v37[2] = v43;
    v37[3] = v41;
    v37[4] = a2;
    v37[5] = a3;
    *&v51 = sub_1C86CF628;
    *(&v51 + 1) = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_1C868E054;
    *(&v50 + 1) = &block_descriptor_21_0;
    v38 = _Block_copy(&aBlock);

    v39 = v41;

    [v44 writeWithCompletionHandler_];
    _Block_release(v38);
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        v10 = 0;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        goto LABEL_10;
      }

      v10 = *(v7 + 8 * v15);
      ++v14;
      if (v10)
      {
        v14 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C86C9838(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v7 = sub_1C86F8DBC();
    __swift_project_value_buffer(v7, qword_1ED5BC790);

    v8 = a3;
    v9 = a1;
    v10 = sub_1C86F8DAC();
    v11 = sub_1C86F912C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136381187;
      sub_1C86F8EAC();
      v14 = sub_1C8685FDC();

      *(v12 + 4) = v14;
      *(v12 + 12) = 2113;
      *(v12 + 14) = v8;
      *v13 = v8;
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v15 = v8;
      sub_1C86F94EC();
      v16 = sub_1C8685FDC();

      *(v12 + 24) = v16;
      _os_log_impl(&dword_1C8683000, v10, v11, "error attaching attributes %{private}s to entity %{private}@. %s", v12, 0x20u);
      sub_1C86A5148(v13, &unk_1EC2ADAA0);
      MEMORY[0x1CCA7C540](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v18, -1, -1);
      MEMORY[0x1CCA7C540](v12, -1, -1);
    }
  }

  return a4(a1);
}