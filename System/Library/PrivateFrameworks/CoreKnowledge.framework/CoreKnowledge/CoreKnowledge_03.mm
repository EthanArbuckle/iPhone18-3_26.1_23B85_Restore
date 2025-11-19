void sub_1C86C9B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
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
      a11 = sub_1C868E054;
      a12 = &block_descriptor_24;
      v42 = _Block_copy(&a9);

      [v40 removeValueForKey:v41 completionHandler:v42];
      _Block_release(v42);

      OUTLINED_FUNCTION_32_4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C9CDC(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1C86F8EFC();
  v13 = v12;
  OUTLINED_FUNCTION_6_1();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_1C86C9D98(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v37 = a5;
  *(v36 + 16) = a5;
  _Block_copy(a5);
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v14 = sub_1C86F8DBC();
  __swift_project_value_buffer(v14, qword_1ED5BC790);
  v15 = a4;

  v16 = a1;
  v17 = sub_1C86F8DAC();
  v18 = sub_1C86F911C();

  v19 = os_log_type_enabled(v17, v18);
  v34 = a2;
  v35 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38[0] = v22;
    *v20 = 138478339;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 2081;
    v23 = v15;
    *(v20 + 14) = sub_1C8685FDC();
    *(v20 + 22) = 2113;
    *(v20 + 24) = v16;
    v21[1] = v16;
    v24 = v16;
    _os_log_impl(&dword_1C8683000, v17, v18, "[<%{private}@> <%{private}s> <%{private}@>]", v20, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
    swift_arrayDestroy();
    MEMORY[0x1CCA7C540](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1CCA7C540](v22, -1, -1);
    MEMORY[0x1CCA7C540](v20, -1, -1);
  }

  v25 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v26 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  v27 = *&v16[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v28 = *&v16[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v29 = sub_1C86D038C(v13);
  sub_1C869F2D8(*&v15[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, v38);
  v30 = v39;
  v31 = v40;
  __swift_project_boxed_opaque_existential_0(v38, v39);
  v33[0] = v16;
  v33[1] = v15;
  v32 = *(v31 + 56);

  v32(v34, v35, v25, v26, v27, v28, sub_1C86CFE38, v29, v30, v31);

  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_1C86D05FC();
  sub_1C86D2558(v33[0], sub_1C869040C, v36);

  _Block_release(v37);
}

uint64_t sub_1C86CA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5();
  v9 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_3_2();
  v13 = v12 - v11;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v14 = sub_1C86F8DBC();
  __swift_project_value_buffer(v14, qword_1ED5BC790);
  v15 = v6;

  v16 = v5;
  v17 = sub_1C86F8DAC();
  v18 = sub_1C86F911C();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_37_3();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_3();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v19 = 138478339;
    *(v19 + 4) = v15;
    *v20 = v15;
    *(v19 + 12) = 2081;
    v22 = v15;
    *(v19 + 14) = sub_1C8685FDC();
    *(v19 + 22) = 2113;
    *(v19 + 24) = v16;
    v20[1] = v16;
    v23 = v16;
    _os_log_impl(&dword_1C8683000, v17, v18, "[<%{private}@> <%{private}s> <%{private}@>]", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  v24 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v25 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  v26 = *&v16[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v27 = *&v16[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v28 = sub_1C86D038C(v13);
  sub_1C869F2D8(*&v15[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, v36);
  v33 = v16;
  v29 = v37;
  v30 = v38;
  __swift_project_boxed_opaque_existential_0(v36, v37);
  v31 = *(v30 + 56);

  v31(a2, a3, v24, v25, v26, v27, sub_1C86CF634, v28, v29, v30);

  __swift_destroy_boxed_opaque_existential_0(v36);
  sub_1C86D05FC();
  sub_1C86D2558(v33, a4, a5);
}

void sub_1C86CA4BC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C86D05C4(a1);
  }

  else
  {
    sub_1C86F91FC();
  }
}

void sub_1C86CA5C0()
{
  OUTLINED_FUNCTION_17();
  v21 = v2;
  v23 = v3;
  OUTLINED_FUNCTION_26_5();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_3_2();
  v6 = v1;
  v22 = v0;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C8690344;
  *(v11 + 24) = v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x98);

  v13 = v9;

  v12(v22, v21, v23, sub_1C86CF63C, v11);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v8)
    {

      v19 = OUTLINED_FUNCTION_44_2();
      v20(v19);
      goto LABEL_6;
    }

    v16 = *v8;
  }

  swift_willThrow();

  v17 = OUTLINED_FUNCTION_44_2();
  v18(v17);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86CA8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_104();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *(v30 + OBJC_IVAR___CKKnowledgeStoreEntity_store) + OBJC_IVAR___CKKnowledgeStore_backingStore;
  if (v44)
  {
    sub_1C869F2D8(v43, &a14);
    v45 = a18;
    __swift_project_boxed_opaque_existential_0(&a14, a17);
    (*(v45 + 72))(v40, v38, *(v30 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier), *(v30 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8), *(v42 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier), *(v42 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8), v36, v34);
  }

  else
  {
    sub_1C869F2D8(v43, &a14);
    v46 = a18;
    __swift_project_boxed_opaque_existential_0(&a14, a17);
    v52 = *(v30 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
    v51 = *(v30 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
    v47 = *(v42 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
    v48 = *(v42 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
    OUTLINED_FUNCTION_11();
    v49 = swift_allocObject();
    *(v49 + 16) = v36;
    *(v49 + 24) = v34;
    v50 = *(v46 + 64);

    v50(v40, v38, v52, v51, v47, v48, sub_1C86CF63C, v49);
  }

  __swift_destroy_boxed_opaque_existential_0(&a14);
  OUTLINED_FUNCTION_101();
}

void sub_1C86CAB48()
{
  OUTLINED_FUNCTION_17();
  v22 = v2;
  v23 = v3;
  v24 = v4;
  OUTLINED_FUNCTION_26_5();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_3_2();
  v7 = v1;
  v8 = v0;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  v11 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xA8);

  v14 = v11;
  v13(v8, v22, v24, v23, sub_1C8690408, v12);

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
    if (!*v10)
    {

      v20 = OUTLINED_FUNCTION_44_2();
      v21(v20);
      goto LABEL_6;
    }

    v17 = *v10;
  }

  swift_willThrow();

  v18 = OUTLINED_FUNCTION_44_2();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_1C86CAD98(uint64_t a1, uint64_t a2)
{
  sub_1C869F2D8(*(v2 + OBJC_IVAR___CKKnowledgeStoreEntity_store) + OBJC_IVAR___CKKnowledgeStore_backingStore, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0(v8, v9);
  (*(v6 + 80))(0, 0, *(v2 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier), *(v2 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8), a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

void sub_1C86CAEE0()
{
  OUTLINED_FUNCTION_17();
  v17 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_54_0();
  v3 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB8);

  v9 = v6;
  v8(sub_1C8690408, v7);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v5)
    {

      v15 = OUTLINED_FUNCTION_25_5();
      v16(v15, v17);
      goto LABEL_6;
    }

    v12 = *v5;
  }

  swift_willThrow();

  v13 = OUTLINED_FUNCTION_25_5();
  v14(v13, v17);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_1C86CB0E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v39 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_3_2();
  v18 = v17 - v16;
  v38 = sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_3_2();
  v25 = v24 - v23;
  v26 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  OUTLINED_FUNCTION_3_2();
  sub_1C869F398(0, &qword_1ED5BC6C8);
  sub_1C86F915C();
  sub_1C86F8E1C();
  (*(v13 + 104))(v18, *MEMORY[0x1E69E8090], v11);
  v28 = sub_1C86F91CC();
  OUTLINED_FUNCTION_6_1();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  v30[5] = v29;
  v30[6] = a1;
  aBlock[4] = sub_1C86CF664;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C86A209C;
  aBlock[3] = &block_descriptor_53;
  v31 = _Block_copy(aBlock);

  v32 = a1;
  sub_1C86F8E1C();
  sub_1C86CF674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0);
  sub_1C86B4CC0();
  sub_1C86F92AC();
  MEMORY[0x1CCA7B400](0, v25, v10, v31);
  _Block_release(v31);

  (*(v39 + 8))(v10, v4);
  (*(v20 + 8))(v25, v38);
}

uint64_t sub_1C86CB4A0(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, char *a5)
{
  v11 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1C86CB5AC(a5, &v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  a2(0, v9);
}

uint64_t sub_1C86CB5AC(char *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2 < 1)
  {
    v98[0] = 0xD000000000000033;
    v98[1] = 0x80000001C8700DF0;
    v99 = 1;
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v39 = sub_1C86F8DBC();
    __swift_project_value_buffer(v39, qword_1ED5BC790);
    sub_1C868D528(v98, v97);
    v40 = sub_1C86F8DAC();
    v41 = sub_1C86F913C();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_17_4();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_3();
      v43 = swift_slowAlloc();
      v100 = v43;
      *v42 = 136315138;
      sub_1C868B6E4();
      sub_1C86F94EC();
      sub_1C868D584(v97);
      v44 = sub_1C8685FDC();

      *(v42 + 4) = v44;
      OUTLINED_FUNCTION_43_2(&dword_1C8683000, v45, v41, "%s");
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
    }

    else
    {

      sub_1C868D584(v97);
    }

    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    sub_1C868D528(v98, v47);
    swift_willThrow();
    return sub_1C868D584(v98);
  }

  else
  {
    v5 = v3;
    v6 = a2;
    if (qword_1ED5BC708 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v8 = sub_1C86F8DBC();
      __swift_project_value_buffer(v8, qword_1ED5BC790);
      v9 = v2;
      v10 = a1;
      v11 = sub_1C86F8DAC();
      v12 = sub_1C86F911C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138478083;
        *(v13 + 4) = v9;
        *(v13 + 12) = 2113;
        *(v13 + 14) = v10;
        *v14 = v9;
        v14[1] = v10;
        v15 = v9;
        v16 = v10;
        _os_log_impl(&dword_1C8683000, v11, v12, "[<%{private}@> * <%{private}@>]", v13, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_0();
        MEMORY[0x1CCA7C540]();
        OUTLINED_FUNCTION_3_0();
        MEMORY[0x1CCA7C540]();
      }

      result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0xF8))();
      if (v5)
      {
        break;
      }

      v78 = v6;
      v82 = v4;
      v2 = *(result + 16);
      v18 = MEMORY[0x1E69E7CC0];
      v19 = 0x1EC2AD000uLL;
      v85 = v10;
      v86 = result;
      v80 = v9;
      if (v2)
      {
        v90 = (v9 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
        v20 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
        v21 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
        v22 = (result + 48);
        v18 = MEMORY[0x1E69E7CC0];
        v88 = v21;
        do
        {
          v23 = v18;
          v24 = *v22;
          v25 = (*v22 + *(v19 + 3472));
          v27 = *v25;
          v26 = v25[1];
          v28 = *v25 == v20 && v26 == v21;
          if (v28 || (sub_1C86F948C() & 1) != 0)
          {
            v29 = v90[1];
            v92 = *v90;
            v30 = v24;

            v94 = v29;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v23;
            }

            else
            {
              sub_1C86C50CC();
              v31 = v37;
            }

            v32 = v20;
            v34 = v31[2];
            v33 = v31[3];
            if (v34 >= v33 >> 1)
            {
              OUTLINED_FUNCTION_8_1(v33);
              sub_1C86C50CC();
              v35 = v38;
            }

            else
            {
              v35 = v31;
            }

            v18 = v35;
            v35[2] = v34 + 1;
            v36 = &v35[4 * v34];
            v36[4] = v92;
            v36[5] = v94;
            v36[6] = v27;
            v36[7] = v26;
            v19 = 0x1EC2AD000;
            v20 = v32;
            v21 = v88;
          }

          else
          {
            v18 = v23;
          }

          v22 += 3;
          v2 = (v2 - 1);
        }

        while (v2);
      }

      if (v18[2])
      {
        v46 = v18;

        return v46;
      }

      v4 = v82;
      v48 = v86;
      if (v82 == 1)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v49 = v18;
      if (v82 < 11)
      {
        v55 = v85;
        v6 = v80;
      }

      else
      {
        v50 = sub_1C86F8DAC();
        v51 = sub_1C86F910C();
        v6 = v80;
        if (os_log_type_enabled(v50, v51))
        {
          OUTLINED_FUNCTION_17_4();
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          *(v52 + 4) = v82;
          OUTLINED_FUNCTION_43_2(&dword_1C8683000, v53, v51, "requested reachability with radius %ld > 10");
          v48 = v86;
          OUTLINED_FUNCTION_3_0();
          MEMORY[0x1CCA7C540]();
        }

        v54 = sub_1C86F8DAC();
        v2 = sub_1C86F910C();
        v55 = v85;
        if (os_log_type_enabled(v54, v2))
        {
          OUTLINED_FUNCTION_17_4();
          v56 = swift_slowAlloc();
          *v56 = 134217984;
          *(v56 + 4) = v82;
          OUTLINED_FUNCTION_43_2(&dword_1C8683000, v57, v2, "force setting radius. %ld => 10");
          v48 = v86;
          OUTLINED_FUNCTION_3_0();
          MEMORY[0x1CCA7C540]();
        }

        v4 = 10;
        *v78 = 10;
        v19 = 0x1EC2AD000;
      }

      a1 = *(v48 + 16);
      if (a1)
      {
        v98[0] = MEMORY[0x1E69E7CC0];
        sub_1C86F93BC();
        v58 = 48;
        do
        {
          v59 = *(v48 + v58);
          v2 = v98;
          sub_1C86F939C();
          sub_1C86F93CC();
          v48 = v86;
          sub_1C86F93DC();
          sub_1C86F93AC();
          v58 += 24;
          --a1;
        }

        while (a1);

        v5 = v98[0];
        v19 = 0x1EC2AD000;
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
      }

      v98[0] = v4 - 1;
      v89 = sub_1C86B50B8(v5);
      v60 = 0;
      v79 = (v6 + *(v19 + 3472));
      v81 = v5;
      v87 = v5 & 0xC000000000000001;
      v83 = v5 + 32;
      v84 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v60 == v89)
        {

          return v49;
        }

        if (v87)
        {
          v61 = MEMORY[0x1CCA7B5C0](v60, v5);
        }

        else
        {
          if (v60 >= *(v84 + 16))
          {
            goto LABEL_68;
          }

          v61 = *(v83 + 8 * v60);
        }

        v93 = v61;
        v62 = __OFADD__(v60, 1);
        v63 = v60 + 1;
        if (v62)
        {
          break;
        }

        v96 = sub_1C86CB5AC(v55, v98);
        v2 = *v79;
        a1 = v79[1];
        v64 = *(v19 + 3472);
        v4 = *&v93[v64];
        v6 = *&v93[v64 + 8];

        v91 = v63;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v65 = v49;
        }

        else
        {
          sub_1C86C50CC();
          v65 = v76;
        }

        v67 = v65[2];
        v66 = v65[3];
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_8_1(v66);
          sub_1C86C50CC();
          v65 = v77;
        }

        v65[2] = v67 + 1;
        v68 = &v65[4 * v67];
        v68[4] = v2;
        v68[5] = a1;
        v68[6] = v4;
        v68[7] = v6;
        v69 = *(v96 + 16);
        if (v69)
        {
          v4 = 0;
          v95 = 4 * v67;
          a1 = (v67 + 2);
          do
          {
            v70 = *(v96 + v4 + 32);
            v6 = *(v96 + v4 + 40);
            v71 = *(v96 + v4 + 48);
            v72 = *(v96 + v4 + 56);
            v2 = v65;
            v73 = v65[3];

            if ((a1 - 1) >= v73 >> 1)
            {
              sub_1C86C50CC();
              v65 = v75;
            }

            else
            {
              v65 = v2;
            }

            v65[2] = a1;
            v74 = (&v65[v95] + v4);
            v74[8] = v70;
            v74[9] = v6;
            v74[10] = v71;
            v74[11] = v72;
            v4 += 32;
            ++a1;
            --v69;
          }

          while (v69);
        }

        v49 = v65;

        v55 = v85;
        v19 = 0x1EC2AD000;
        v5 = v81;
        v60 = v91;
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }
  }

  return result;
}

void sub_1C86CBE74(uint64_t a1, unint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v103 = a5;
  v105 = a1;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v11 = sub_1C86F8DBC();
  __swift_project_value_buffer(v11, qword_1ED5BC790);

  v12 = v6;

  v13 = sub_1C86F8DAC();
  v14 = sub_1C86F911C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v100 = a6;
    v16 = OUTLINED_FUNCTION_60_0();
    LODWORD(v97) = a4;
    aBlock = swift_slowAlloc();
    *v15 = 136315907;
    v17 = sub_1C8685FDC();

    *(v15 + 4) = v17;
    *(v15 + 12) = 2113;
    *(v15 + 14) = v12;
    *v16 = v12;
    *(v15 + 22) = 2081;
    v18 = v12;
    OUTLINED_FUNCTION_52_0(v18, v19, &aBlock, v20, v21, v22, v23, v24, v97, v100, v103, v105);
    *(v15 + 24) = sub_1C8685FDC();
    *(v15 + 32) = 2080;
    CKMatchType.description.getter(a3);
    v25 = sub_1C8685FDC();

    *(v15 + 34) = v25;
    _os_log_impl(&dword_1C8683000, v13, v14, "%s[<%{private}@> <%{private}s:%s> $?]", v15, 0x2Au);
    sub_1C86A5148(v16, &unk_1EC2ADAA0);
    a6 = v99;
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    swift_arrayDestroy();
    LOBYTE(a4) = v97;
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  else
  {
  }

  v26 = *&v12[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v27 = *&v12[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  aBlock = 0;
  v110 = 0xE000000000000000;
  v28 = sub_1C86F900C();
  v29 = MEMORY[0x1CCA7B260](v26, v27);
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_34;
  }

  v32 = OUTLINED_FUNCTION_1_8();
  v30 = __OFADD__(v31, v32);
  v33 = v31 + v32;
  if (v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  MEMORY[0x1CCA7B1D0](v33);
  MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
  v34 = OUTLINED_FUNCTION_7_13();
  MEMORY[0x1CCA7B200](v34);
  MEMORY[0x1CCA7B200](v26, v27);
  v27 = aBlock;
  v14 = v110;
  v116 = aBlock;
  v117 = v110;
  if ((a4 & 1) == 0)
  {
    if (a3 != 3 && a3)
    {
      goto LABEL_22;
    }

    aBlock = 0;
    v110 = 0xE000000000000000;
    if ((v14 & 0x1000000000000000) == 0)
    {
      v36 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v36 = v27;
      }

      OUTLINED_FUNCTION_38_1(v36);
      v37 = sub_1C86F900C();
LABEL_18:
      v45 = v37;
      v46 = OUTLINED_FUNCTION_52_0(v37, v38, v39, v40, v41, v42, v43, v44, v97, v99, v103, v105);
      v47 = MEMORY[0x1CCA7B260](v46);
      v30 = __OFADD__(v45, v47);
      v48 = v45 + v47;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_13_8();
        if (!v50)
        {
          v30 = __OFADD__(v48, 2 * v49);
          v51 = v48 + 2 * v49;
          if (!v30)
          {
            MEMORY[0x1CCA7B1D0](v51);
            MEMORY[0x1CCA7B200](v27, v14);
            v52 = OUTLINED_FUNCTION_7_13();
            v53 = MEMORY[0x1CCA7B200](v52);
            v61 = OUTLINED_FUNCTION_52_0(v53, v54, v55, v56, v57, v58, v59, v60, a3, v101, v104, v106);
            MEMORY[0x1CCA7B200](v61);
            v62 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v62);

            v27 = aBlock;
            v14 = v110;
            v116 = aBlock;
            v117 = v110;
            goto LABEL_26;
          }

LABEL_38:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_35:
    v37 = sub_1C86F8FFC();
    goto LABEL_18;
  }

  if (!a3)
  {
    v98 = 0;
    goto LABEL_26;
  }

  if (a3 == 3)
  {
    v98 = 3;
    v35 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v35);
    v27 = v116;
    v14 = v117;
LABEL_26:
    v65 = type metadata accessor for CKGenericCondition();
    v66 = objc_allocWithZone(v65);

    v67 = CKGenericCondition.init(_:value:negated:)();
    v68 = type metadata accessor for CKTripleCondition();
    v69 = objc_allocWithZone(v68);
    *&v69[OBJC_IVAR___CKTripleCondition_rawCondition] = v67;
    v115.receiver = v69;
    v115.super_class = v68;
    v70 = objc_msgSendSuper2(&v115, sel_init);
    v78 = v70;
    if (a4)
    {
      v102 = a6;
      if (v98)
      {
        aBlock = v105;
        v110 = a2;

        v79 = OUTLINED_FUNCTION_7_13();
      }

      else
      {
        aBlock = 14906;
        v110 = 0xE200000000000000;
        v79 = OUTLINED_FUNCTION_52_0(v70, v71, v72, v73, v74, v75, v76, v77, 0, a6, v103, v105);
      }

      MEMORY[0x1CCA7B200](v79);
      v81 = aBlock;
      v80 = v110;
      aBlock = v27;
      v110 = v14;

      MEMORY[0x1CCA7B200](v81, v80);

      v82 = objc_allocWithZone(v65);
      v83 = CKGenericCondition.init(_:value:negated:)();
      v84 = objc_allocWithZone(v68);
      *&v84[OBJC_IVAR___CKTripleCondition_rawCondition] = v83;
      v108.receiver = v84;
      v108.super_class = v68;
      v85 = objc_msgSendSuper2(&v108, sel_init);
      v86 = *&v85[OBJC_IVAR___CKTripleCondition_rawCondition];
      LOBYTE(v81) = v86[OBJC_IVAR___CKGenericCondition_negated];
      v87 = objc_allocWithZone(v65);
      v88 = sub_1C86B9164(v86, 0, 0, (v81 & 1) == 0);
      v89 = objc_allocWithZone(v68);
      *&v89[OBJC_IVAR___CKTripleCondition_rawCondition] = v88;
      v107.receiver = v89;
      v107.super_class = v68;
      v90 = objc_msgSendSuper2(&v107, sel_init);
      v91 = sub_1C86BC15C();

      v78 = v91;
      a6 = v102;
    }

    else
    {
    }

    v92 = *&v12[OBJC_IVAR___CKKnowledgeStoreEntity_store];
    OUTLINED_FUNCTION_21_0();
    v93 = swift_allocObject();
    v93[2] = v103;
    v93[3] = a6;
    v93[4] = v12;
    v113 = sub_1C86CF6CC;
    v114 = v93;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    OUTLINED_FUNCTION_4_16();
    v111 = v94;
    v112 = &block_descriptor_59;
    v95 = _Block_copy(&aBlock);
    v96 = v12;

    [v92 triplesMatching:v78 completionHandler:v95];
    _Block_release(v95);

    return;
  }

LABEL_22:

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v63 = swift_allocError();
  OUTLINED_FUNCTION_6_14(v63, v64);
  v103();
}

void *sub_1C86CC550(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1C86B50B8(a2);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v8;
    v29 = MEMORY[0x1E69E7CC0];
    result = sub_1C869CFE8(0, v8 & ~(v8 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = a1;
    v12 = 0;
    v27 = *(a5 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
    v9 = v29;
    v26 = a3;
    v13 = MEMORY[0x1E69E7D40];
    v14 = v10;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA7B5C0](v12, a2);
      }

      else
      {
        v15 = *(a2 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = (*((*v13 & *v15) + 0x60))();
      v19 = v18;
      (*((*v13 & *v16) + 0x68))();
      v20 = sub_1C86F8EEC();

      v21 = [v27 entityWithIdentifier_];

      v23 = *(v29 + 16);
      v22 = *(v29 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C869CFE8((v22 > 1), v23 + 1, 1);
      }

      ++v12;
      *(v29 + 16) = v23 + 1;
      v24 = (v29 + 24 * v23);
      v24[4] = v17;
      v24[5] = v19;
      v24[6] = v21;
    }

    while (v14 != v12);
    a3 = v26;
    a1 = v25;
  }

  a3(a1, v9);
}

void sub_1C86CC760()
{
  OUTLINED_FUNCTION_17();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_54_0();
  v3 = v0;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_36_3(v6, MEMORY[0x1E69E7CC0]);
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v6;
  v8[4] = v7;
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C86934D4;
  *(v9 + 24) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);

  v11 = v7;

  v12 = OUTLINED_FUNCTION_40_2();
  v10(v12);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v5)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();

      v18 = OUTLINED_FUNCTION_25_5();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v5;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_25_5();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86CCA28(uint64_t a1, uint64_t a2)
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v5 = sub_1C86F8DBC();
  __swift_project_value_buffer(v5, qword_1ED5BC790);
  v6 = v2;
  v7 = sub_1C86F8DAC();
  v8 = sub_1C86F911C();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_17_4();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_60_0();
    *v9 = 138477827;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    OUTLINED_FUNCTION_59_0(&dword_1C8683000, v12, v13, "[<%{private}@> $? $?]");
    sub_1C86A5148(v10, &unk_1EC2ADAA0);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  OUTLINED_FUNCTION_35_2();
  v14 = sub_1C86F900C();
  v15 = OUTLINED_FUNCTION_22_5();
  v16 = MEMORY[0x1CCA7B260](v15);
  v17 = __OFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_13_8();
  if (v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v18, 2 * v19);
  v21 = v18 + 2 * v19;
  if (!v17)
  {
    MEMORY[0x1CCA7B1D0](v21);
    MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
    v22 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v22);
    v23 = OUTLINED_FUNCTION_22_5();
    MEMORY[0x1CCA7B200](v23);
    v24 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v24);
    v25 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v26 = OUTLINED_FUNCTION_15_8();
    v27 = type metadata accessor for CKTripleCondition();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR___CKTripleCondition_rawCondition] = v26;
    v37.receiver = v28;
    v37.super_class = v27;
    v29 = objc_msgSendSuper2(&v37, sel_init);
    v30 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_store];
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    v31[2] = a1;
    v31[3] = a2;
    v31[4] = v6;
    v36[4] = sub_1C86CF6D8;
    v36[5] = v31;
    v36[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_17_7();
    v36[2] = v32;
    v36[3] = &block_descriptor_75_0;
    v33 = _Block_copy(v36);
    v34 = v6;
    v35 = v29;

    [v30 triplesMatching:v35 completionHandler:{v33, v36[0]}];
    _Block_release(v33);

    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_1C86CCCF4(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (a1)
  {
    return (a3)(a1, MEMORY[0x1E69E7CC0]);
  }

  v8 = a2;
  v9 = sub_1C86B50B8(a2);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = v9;
    v25 = v5;
    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1C869CFE8(0, v9 & ~(v9 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v10 = v28;
    v26 = v8 & 0xC000000000000001;
    v27 = *(a5 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
    v13 = v8;
    do
    {
      if (v26)
      {
        v14 = MEMORY[0x1CCA7B5C0](v12, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = MEMORY[0x1E69E7D40];
      v17 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x60))();
      v19 = v18;
      (*((*v16 & *v15) + 0x68))();
      v20 = sub_1C86F8EEC();

      v21 = [v27 entityWithIdentifier_];

      v23 = *(v28 + 16);
      v22 = *(v28 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C869CFE8((v22 > 1), v23 + 1, 1);
      }

      ++v12;
      *(v28 + 16) = v23 + 1;
      v24 = (v28 + 24 * v23);
      v24[4] = v17;
      v24[5] = v19;
      v24[6] = v21;
      v8 = v13;
    }

    while (v11 != v12);
    v5 = v25;
  }

  v5(0, v10);
}

void sub_1C86CCF28()
{
  OUTLINED_FUNCTION_17();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_3_2();
  v4 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_50_1(v5);
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_36_3(v6, MEMORY[0x1E69E7CC0]);
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v6;
  v8[4] = v7;
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C8693610;
  *(v9 + 24) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xF0);

  v11 = v7;

  v12 = OUTLINED_FUNCTION_53_0();
  v10(v12);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v20)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();

      v18 = OUTLINED_FUNCTION_8_14();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v20;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_8_14();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C86CD1C0(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v10 = sub_1C86F8DBC();
  __swift_project_value_buffer(v10, qword_1ED5BC790);

  v11 = v6;
  v12 = sub_1C86F8DAC();
  v13 = sub_1C86F911C();

  if (os_log_type_enabled(v12, v13))
  {
    v88 = a6;
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_60_0();
    aBlock = swift_slowAlloc();
    *v14 = 136315907;
    v16 = sub_1C8685FDC();

    *(v14 + 4) = v16;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1C8685FDC();
    *(v14 + 22) = 2080;
    CKMatchType.description.getter(a3);
    v17 = sub_1C8685FDC();

    *(v14 + 24) = v17;
    *(v14 + 32) = 2113;
    *(v14 + 34) = v11;
    *v15 = v11;
    v18 = v11;
    _os_log_impl(&dword_1C8683000, v12, v13, "%s[$? <%{private}s:%s> <%{private}@>]", v14, 0x2Au);
    sub_1C86A5148(v15, &unk_1EC2ADAA0);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    a6 = v88;
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  else
  {
  }

  if (a3 == 3)
  {
    v57 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v58 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    v59 = type metadata accessor for CKTripleCondition();
    v60 = objc_allocWithZone(v59);

    CKTripleCondition.init(subject:predicate:object:)(0, 0, a1, a2, v57, v58);
    v55 = v61;
    if (a4)
    {
      v62 = objc_allocWithZone(v59);

      OUTLINED_FUNCTION_8_3();
      CKTripleCondition.init(subject:predicate:object:)(v63, v64, v65, v66, v57, v58);
      v68 = v67;
      v69 = *&v55[OBJC_IVAR___CKTripleCondition_rawCondition];
      v70 = v69[OBJC_IVAR___CKGenericCondition_negated];
      v71 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
      v72 = sub_1C86B9164(v69, 0, 0, (v70 & 1) == 0);
      v73 = objc_allocWithZone(v59);
      *&v73[OBJC_IVAR___CKTripleCondition_rawCondition] = v72;
      v95.receiver = v73;
      v95.super_class = v59;
      v74 = objc_msgSendSuper2(&v95, sel_init);
      v75 = sub_1C86BC15C();
    }

    else
    {
      v75 = v61;
    }

    v78 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v49 = v75;
    OUTLINED_FUNCTION_19_7();
    v79 = CKGenericCondition.init(_:value:negated:)();
    v80 = objc_allocWithZone(v59);
    *&v80[OBJC_IVAR___CKTripleCondition_rawCondition] = v79;
    v102.receiver = v80;
    v102.super_class = v59;
    v81 = objc_msgSendSuper2(&v102, sel_init);
    v56 = sub_1C86BC15C();

    v36 = v49;
    goto LABEL_24;
  }

  if (!a3)
  {
    aBlock = 0;
    v97 = 0xE000000000000000;
    OUTLINED_FUNCTION_19_7();
    v19 = sub_1C86F900C();
    v20 = OUTLINED_FUNCTION_45_2();
    v21 = MEMORY[0x1CCA7B260](v20);
    v22 = __OFADD__(v19, v21);
    v23 = v19 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v24 = MEMORY[0x1CCA7B260](a1, a2);
      v22 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (!v22)
      {
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_13_8();
        if (!v27)
        {
          v22 = __OFADD__(v25, 2 * v26);
          v28 = v25 + 2 * v26;
          if (!v22)
          {
            MEMORY[0x1CCA7B1D0](v28);
            OUTLINED_FUNCTION_42_2();
            v29 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v29);
            v30 = OUTLINED_FUNCTION_45_2();
            MEMORY[0x1CCA7B200](v30);
            v31 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v31);
            MEMORY[0x1CCA7B200](a1, a2);
            v32 = type metadata accessor for CKGenericCondition();
            v33 = objc_allocWithZone(v32);
            OUTLINED_FUNCTION_31_4();
            OUTLINED_FUNCTION_26_5();
            v34 = type metadata accessor for CKTripleCondition();
            v35 = objc_allocWithZone(v34);
            *&v35[OBJC_IVAR___CKTripleCondition_rawCondition] = aBlock;
            v94.receiver = v35;
            v94.super_class = v34;
            v36 = objc_msgSendSuper2(&v94, sel_init);
            if ((a4 & 1) == 0)
            {
LABEL_25:
              v82 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_store];
              OUTLINED_FUNCTION_21_0();
              v83 = swift_allocObject();
              v83[2] = a5;
              v83[3] = a6;
              v83[4] = v11;
              v100 = sub_1C86CF6E4;
              v101 = v83;
              aBlock = MEMORY[0x1E69E9820];
              v97 = 1107296256;
              OUTLINED_FUNCTION_4_16();
              v98 = v84;
              v99 = &block_descriptor_91;
              v85 = _Block_copy(&aBlock);
              v86 = v11;
              v87 = v36;

              [v82 triplesMatching:v87 completionHandler:v85];

              _Block_release(v85);
              return;
            }

            aBlock = 0;
            v97 = 0xE000000000000000;
            OUTLINED_FUNCTION_19_7();
            v37 = sub_1C86F900C();
            v38 = OUTLINED_FUNCTION_45_2();
            v39 = MEMORY[0x1CCA7B260](v38);
            v22 = __OFADD__(v37, v39);
            v40 = v37 + v39;
            if (!v22)
            {
              OUTLINED_FUNCTION_1_8();
              OUTLINED_FUNCTION_13_8();
              if (!v27)
              {
                v22 = __OFADD__(v40, 2 * v41);
                v42 = v40 + 2 * v41;
                if (!v22)
                {
                  MEMORY[0x1CCA7B1D0](v42);
                  OUTLINED_FUNCTION_42_2();
                  v43 = OUTLINED_FUNCTION_7_13();
                  MEMORY[0x1CCA7B200](v43);
                  v44 = OUTLINED_FUNCTION_45_2();
                  MEMORY[0x1CCA7B200](v44);
                  v45 = OUTLINED_FUNCTION_7_13();
                  MEMORY[0x1CCA7B200](v45);
                  v46 = objc_allocWithZone(v32);
                  v47 = OUTLINED_FUNCTION_31_4();
                  v48 = objc_allocWithZone(v34);
                  *&v48[OBJC_IVAR___CKTripleCondition_rawCondition] = v47;
                  v93.receiver = v48;
                  v93.super_class = v34;
                  v49 = objc_msgSendSuper2(&v93, __block_descriptor_42_e8_32bs_e8_v16__0q8ls32l8);
                  v50 = *&v36[OBJC_IVAR___CKTripleCondition_rawCondition];
                  v51 = v50[OBJC_IVAR___CKGenericCondition_negated];
                  v52 = objc_allocWithZone(v32);
                  v53 = sub_1C86B9164(v50, 0, 0, (v51 & 1) == 0);
                  v54 = objc_allocWithZone(v34);
                  *&v54[OBJC_IVAR___CKTripleCondition_rawCondition] = v53;
                  v92.receiver = v54;
                  v92.super_class = v34;
                  v55 = objc_msgSendSuper2(&v92, __block_descriptor_42_e8_32bs_e8_v16__0q8ls32l8);
                  v56 = sub_1C86BC15C();
LABEL_24:

                  v36 = v56;
                  goto LABEL_25;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v76 = swift_allocError();
  OUTLINED_FUNCTION_6_14(v76, v77);
  a5();
}

void sub_1C86CD938()
{
  OUTLINED_FUNCTION_17();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_3_2();
  v3 = v0;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_36_3(v6, MEMORY[0x1E69E7CC0]);
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v6;
  v8[4] = v7;
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C86934D4;
  *(v9 + 24) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x100);

  v11 = v7;

  v12 = OUTLINED_FUNCTION_40_2();
  v10(v12);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v5)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();

      v18 = OUTLINED_FUNCTION_20_4();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v5;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_20_4();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86CDC0C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v5 = sub_1C86F8DBC();
  __swift_project_value_buffer(v5, qword_1ED5BC790);
  v6 = v2;
  v7 = sub_1C86F8DAC();
  v8 = sub_1C86F911C();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_17_4();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_60_0();
    *v9 = 138477827;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    OUTLINED_FUNCTION_59_0(&dword_1C8683000, v12, v13, "[$? $? %{private}@>]");
    sub_1C86A5148(v10, &unk_1EC2ADAA0);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_19_7();
  v14 = sub_1C86F900C();
  v15 = OUTLINED_FUNCTION_22_5();
  v16 = MEMORY[0x1CCA7B260](v15);
  v17 = __OFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_13_8();
  if (v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v18, 2 * v19);
  v21 = v18 + 2 * v19;
  if (!v17)
  {
    MEMORY[0x1CCA7B1D0](v21);
    OUTLINED_FUNCTION_42_2();
    v22 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v22);
    v23 = OUTLINED_FUNCTION_22_5();
    MEMORY[0x1CCA7B200](v23);
    v24 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v24);
    v25 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v26 = OUTLINED_FUNCTION_15_8();
    v27 = type metadata accessor for CKTripleCondition();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR___CKTripleCondition_rawCondition] = v26;
    v37.receiver = v28;
    v37.super_class = v27;
    v29 = objc_msgSendSuper2(&v37, sel_init);
    v30 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_store];
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    v31[2] = a1;
    v31[3] = a2;
    v31[4] = v6;
    v36[4] = sub_1C86CFE0C;
    v36[5] = v31;
    v36[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_17_7();
    v36[2] = v32;
    v36[3] = &block_descriptor_107;
    v33 = _Block_copy(v36);
    v34 = v6;
    v35 = v29;

    [v30 triplesMatching:v35 completionHandler:{v33, v36[0]}];
    _Block_release(v33);

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1C86CDEC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57_0();
  v30 = v28;
  if (v26)
  {
    v28(v26, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_32_4();
    return;
  }

  v31 = v29;
  v32 = v27;
  v33 = sub_1C86B50B8(v27);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v35 = v33;
    v51 = v30;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C869D008(0, v33 & ~(v33 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      return;
    }

    v36 = 0;
    v34 = v54;
    v52 = v32 & 0xC000000000000001;
    v53 = *(v31 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
    v37 = v32;
    do
    {
      if (v52)
      {
        v38 = OUTLINED_FUNCTION_14_11();
        v39 = MEMORY[0x1CCA7B5C0](v38);
      }

      else
      {
        v39 = *(v32 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v39) + 0x58))();
      v42 = sub_1C86F8EEC();

      v43 = [v53 entityWithIdentifier_];

      v44 = (*((*v41 & *v40) + 0x60))();
      v46 = v45;

      v48 = *(v54 + 16);
      v47 = *(v54 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C869D008((v47 > 1), v48 + 1, 1);
      }

      ++v36;
      *(v54 + 16) = v48 + 1;
      v49 = (v54 + 24 * v48);
      v49[4] = v43;
      v49[5] = v44;
      v49[6] = v46;
      v32 = v37;
    }

    while (v35 != v36);
    v30 = v51;
  }

  v30(0, v34);
  OUTLINED_FUNCTION_32_4();
}

void sub_1C86CE0D0()
{
  OUTLINED_FUNCTION_17();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_3_2();
  v4 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_50_1(v5);
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_36_3(v6, MEMORY[0x1E69E7CC0]);
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v6;
  v8[4] = v7;
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C8693610;
  *(v9 + 24) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x110);

  v11 = v7;

  v12 = OUTLINED_FUNCTION_53_0();
  v10(v12);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v20)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();

      v18 = OUTLINED_FUNCTION_8_14();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v20;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_8_14();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C86CE37C(void *a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v9 = sub_1C86F8DBC();
  __swift_project_value_buffer(v9, qword_1ED5BC790);
  v10 = a3;
  v11 = a1;
  v12 = sub_1C86F8DAC();
  v13 = sub_1C86F911C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v60 = v8;
    v15 = swift_slowAlloc();
    v61 = a4;
    aBlock = swift_slowAlloc();
    v16 = aBlock;
    *v14 = 138478339;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2113;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    *(v14 + 22) = 2080;
    v17 = v10;
    v18 = v11;
    CKMatchType.description.getter(a2);
    v19 = sub_1C8685FDC();

    *(v14 + 24) = v19;
    _os_log_impl(&dword_1C8683000, v12, v13, "[<%{private}@> $? <%{private}@:%s>]", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
    swift_arrayDestroy();
    v20 = v15;
    v8 = v60;
    MEMORY[0x1CCA7C540](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v21 = v16;
    a4 = v61;
    MEMORY[0x1CCA7C540](v21, -1, -1);
    MEMORY[0x1CCA7C540](v14, -1, -1);
  }

  if (a2 == 3)
  {
    v36 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v37 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    v38 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v39 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    aBlock = 0;
    v63 = 0xE000000000000000;
    v40 = sub_1C86F900C();
    v41 = MEMORY[0x1CCA7B260](v36, v37);
    v28 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (!v28)
    {
      v43 = MEMORY[0x1CCA7B260](v38, v39);
      v28 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (!v28)
      {
        v45 = sub_1C86F900C();
        v46 = 3 * v45;
        if ((v45 * 3) >> 64 == (3 * v45) >> 63)
        {
          if (!__OFADD__(v44, v46))
          {
            MEMORY[0x1CCA7B1D0](v44 + v46);
            MEMORY[0x1CCA7B200](7368563, 0xE300000000000000);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            MEMORY[0x1CCA7B200](v36, v37);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            MEMORY[0x1CCA7B200](v38, v39);
            v34 = 14906;
            v35 = 0xE200000000000000;
            goto LABEL_17;
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (!a2)
  {
    v22 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v23 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    v24 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v25 = *&v11[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    aBlock = 0;
    v63 = 0xE000000000000000;
    v26 = sub_1C86F900C();
    v27 = MEMORY[0x1CCA7B260](v22, v23);
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (!v28)
    {
      v30 = MEMORY[0x1CCA7B260](v24, v25);
      v28 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (!v28)
      {
        v32 = sub_1C86F900C();
        if (v32 + 0x4000000000000000 >= 0)
        {
          v28 = __OFADD__(v31, 2 * v32);
          v33 = v31 + 2 * v32;
          if (!v28)
          {
            MEMORY[0x1CCA7B1D0](v33);
            MEMORY[0x1CCA7B200](7368563, 0xE300000000000000);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            MEMORY[0x1CCA7B200](v22, v23);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            v34 = v24;
            v35 = v25;
LABEL_17:
            MEMORY[0x1CCA7B200](v34, v35);
            v47 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
            v48 = CKGenericCondition.init(_:value:negated:)();
            v49 = type metadata accessor for CKTripleCondition();
            v50 = objc_allocWithZone(v49);
            *&v50[OBJC_IVAR___CKTripleCondition_rawCondition] = v48;
            v68.receiver = v50;
            v68.super_class = v49;
            v51 = objc_msgSendSuper2(&v68, sel_init);
            v52 = *&v10[OBJC_IVAR___CKKnowledgeStoreEntity_store];
            v53 = swift_allocObject();
            *(v53 + 16) = sub_1C86CFD24;
            *(v53 + 24) = v8;
            v66 = sub_1C86CFE08;
            v67 = v53;
            aBlock = MEMORY[0x1E69E9820];
            v63 = 1107296256;
            v64 = sub_1C86A3B90;
            v65 = &block_descriptor_145;
            v54 = _Block_copy(&aBlock);
            v55 = v51;

            [v52 triplesMatching:v55 completionHandler:v54];
            _Block_release(v54);

            _Block_release(a4);
            return;
          }

          goto LABEL_27;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  sub_1C868B6E4();
  v56 = swift_allocError();
  *v57 = 1;
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 3;
  v58 = sub_1C86F8B9C();
  v59 = sub_1C86F908C();
  (a4)[2](a4, v58, v59);

  _Block_release(a4);
}

void sub_1C86CE9B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, char *(*a15)(uint64_t a1, uint64_t a2), uint64_t a16, objc_super a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104();
  a28 = v30;
  a29 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v40 = sub_1C86F8DBC();
  __swift_project_value_buffer(v40, qword_1ED5BC790);
  v41 = v29;
  v42 = v39;
  v43 = sub_1C86F8DAC();
  v44 = sub_1C86F911C();

  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_37_3();
    v45 = swift_slowAlloc();
    v94 = v37;
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_3();
    v93 = v33;
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v45 = 138478339;
    *(v45 + 4) = v41;
    *(v45 + 12) = 2113;
    *(v45 + 14) = v42;
    *v46 = v41;
    v46[1] = v42;
    *(v45 + 22) = 2080;
    v48 = v41;
    v49 = v41;
    v50 = v42;
    CKMatchType.description.getter(v94);
    v51 = sub_1C8685FDC();

    *(v45 + 24) = v51;
    _os_log_impl(&dword_1C8683000, v43, v44, "[<%{private}@> $? <%{private}@:%s>]", v45, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
    swift_arrayDestroy();
    v37 = v94;
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    __swift_destroy_boxed_opaque_existential_0(v47);
    v33 = v93;
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  else
  {
    v48 = v41;
  }

  if (v37 == 3)
  {
    v52 = v48;
    v68 = OUTLINED_FUNCTION_21_5();
    v69 = OUTLINED_FUNCTION_14_11();
    v70 = MEMORY[0x1CCA7B260](v69);
    v56 = __OFADD__(v68, v70);
    v71 = v68 + v70;
    if (!v56)
    {
      v72 = OUTLINED_FUNCTION_22_5();
      v73 = MEMORY[0x1CCA7B260](v72);
      v56 = __OFADD__(v71, v73);
      v60 = v71 + v73;
      if (!v56)
      {
        v74 = OUTLINED_FUNCTION_1_8();
        v75 = 3 * v74;
        if ((v74 * 3) >> 64 == (3 * v74) >> 63)
        {
          if (!__OFADD__(v60, v75))
          {
            MEMORY[0x1CCA7B1D0](v60 + v75);
            OUTLINED_FUNCTION_58_0();
            v76 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v76);
            v77 = OUTLINED_FUNCTION_14_11();
            MEMORY[0x1CCA7B200](v77);
            v78 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v78);
            v79 = OUTLINED_FUNCTION_22_5();
            MEMORY[0x1CCA7B200](v79);
            v67 = OUTLINED_FUNCTION_7_13();
            goto LABEL_18;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!v37)
  {
    v52 = v48;
    v53 = OUTLINED_FUNCTION_21_5();
    v54 = OUTLINED_FUNCTION_14_11();
    v55 = MEMORY[0x1CCA7B260](v54);
    v56 = __OFADD__(v53, v55);
    v57 = v53 + v55;
    if (!v56)
    {
      v58 = OUTLINED_FUNCTION_22_5();
      v59 = MEMORY[0x1CCA7B260](v58);
      v56 = __OFADD__(v57, v59);
      v60 = v57 + v59;
      if (!v56)
      {
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_13_8();
        if (!v62)
        {
          v56 = __OFADD__(v60, 2 * v61);
          v63 = v60 + 2 * v61;
          if (!v56)
          {
            MEMORY[0x1CCA7B1D0](v63);
            OUTLINED_FUNCTION_58_0();
            v64 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v64);
            v65 = OUTLINED_FUNCTION_14_11();
            MEMORY[0x1CCA7B200](v65);
            v66 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B200](v66);
            v67 = OUTLINED_FUNCTION_22_5();
LABEL_18:
            MEMORY[0x1CCA7B200](v67);
            v80 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
            OUTLINED_FUNCTION_15_8();
            OUTLINED_FUNCTION_26_5();
            v81 = type metadata accessor for CKTripleCondition();
            v82 = objc_allocWithZone(v81);
            *&v82[OBJC_IVAR___CKTripleCondition_rawCondition] = v60;
            a17.receiver = v82;
            a17.super_class = v81;
            v83 = objc_msgSendSuper2(&a17, sel_init);
            v84 = *&v52[OBJC_IVAR___CKKnowledgeStoreEntity_store];
            OUTLINED_FUNCTION_11();
            v85 = swift_allocObject();
            *(v85 + 16) = v35;
            *(v85 + 24) = v33;
            a15 = sub_1C86CF740;
            a16 = v85;
            aBlock = MEMORY[0x1E69E9820];
            a12 = 1107296256;
            OUTLINED_FUNCTION_4_16();
            a13 = v86;
            a14 = &block_descriptor_123;
            v87 = _Block_copy(&aBlock);
            v88 = v83;

            [v84 triplesMatching:v88 completionHandler:v87];
            _Block_release(v87);

            OUTLINED_FUNCTION_101();
            return;
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v89 = swift_allocError();
  OUTLINED_FUNCTION_6_14(v89, v90);
  v35();
  OUTLINED_FUNCTION_101();
}

char *sub_1C86CEE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    return a3(a1, MEMORY[0x1E69E7CC0]);
  }

  v6 = sub_1C86B50B8(a2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v18 = MEMORY[0x1E69E7CC0];
    result = sub_1C869CE68(0, v6 & ~(v6 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v7 = v18;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA7B5C0](v9, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x60))();
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C869CE68((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v8 != v9);
  }

  a3(0, v7);
}

void sub_1C86CF078()
{
  OUTLINED_FUNCTION_17();
  v22 = v2;
  OUTLINED_FUNCTION_26_5();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_3_2();
  v5 = v1;
  v24 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_36_3(v8, MEMORY[0x1E69E7CC0]);
  v9 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v8;
  v10[4] = v9;
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C86934D4;
  *(v11 + 24) = v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x120);

  v13 = v9;

  v14 = v22;
  v23 = v5;
  v12(v24, v14, sub_1C8693614, v11);

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
    if (!*v7)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();

      v20 = OUTLINED_FUNCTION_20_4();
      v21(v20);
      goto LABEL_6;
    }

    v17 = *v7;
  }

  swift_willThrow();

  v18 = OUTLINED_FUNCTION_20_4();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

id CKKnowledgeStoreEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKKnowledgeStoreEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKKnowledgeStoreEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C86CF55C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  sub_1C86CFD70(a2, a4 + 16);
  return sub_1C86F91FC();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C86CF674()
{
  result = qword_1EC2AD798;
  if (!qword_1EC2AD798)
  {
    sub_1C86F8DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD798);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t dispatch thunk of CKKnowledgeStoreEntity.values(forKeys:completionHandler:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
}

uint64_t sub_1C86CFD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_15_8()
{

  return CKGenericCondition.init(_:value:negated:)();
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_1C86F900C();
}

id OUTLINED_FUNCTION_31_4()
{

  return CKGenericCondition.init(_:value:negated:)();
}

char *OUTLINED_FUNCTION_41_1()
{

  return sub_1C869CE68(0, v0, 0);
}

void OUTLINED_FUNCTION_43_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 - 160) = result + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  result = v0;
  *(v2 - 144) = v1;
  return result;
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x1CCA7B200);
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C86D0150()
{
  v0 = sub_1C86F8DEC();
  OUTLINED_FUNCTION_99();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_3_2();
  v7 = (v6 - v5);
  v8 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  sub_1C86F8E5C();
  *v7 = 15000;
  (*(v2 + 104))(v7, *MEMORY[0x1E69E7F38], v0);
  MEMORY[0x1CCA7B0C0](v15, v7);
  (*(v2 + 8))(v7, v0);
  return (*(v10 + 8))(v15, v8);
}

uint64_t sub_1C86D02CC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;

  return sub_1C86F91FC();
}

id sub_1C86D0334()
{
  v1 = OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__group;
  result = *(v0 + OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__group);
  if (result || (v3 = dispatch_group_create(), v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (result = *(v0 + v1)) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C86D038C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  OUTLINED_FUNCTION_3_2();
  v14 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  OUTLINED_FUNCTION_3_2();
  *(v2 + 4) = 0;
  *&v2[OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__group] = 0;
  v16 = OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__timeout;
  v17 = sub_1C86F8E6C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v2[v16], a1, v17);
  sub_1C8685A98();
  sub_1C86F915C();
  sub_1C86F8E1C();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8090], v4);
  *(v2 + 2) = sub_1C86F91CC();
  v19 = dispatch_semaphore_create(0);
  (*(v18 + 8))(a1, v17);
  *(v2 + 3) = v19;
  return v2;
}

uint64_t sub_1C86D05C4(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;

  return sub_1C86F91FC();
}

uint64_t sub_1C86D05FC()
{
  v1 = sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_2();
  v16 = v15 - v14;
  v17 = *(v0 + OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__group);
  if (v17)
  {
    aBlock[4] = sub_1C86D0AC4;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C86A209C;
    aBlock[3] = &block_descriptor_11;
    v24 = v13;
    v18 = _Block_copy(aBlock);
    v23 = v17;

    sub_1C86F8E1C();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1C86CF674();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0);
    sub_1C86B4CC0();
    sub_1C86F92AC();
    sub_1C86F914C();
    _Block_release(v18);

    (*(v3 + 8))(v8, v1);
    (*(v10 + 8))(v16, v24);
  }

  result = sub_1C86F91EC();
  if (result)
  {
    sub_1C868B6E4();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 3;
  }

  else
  {
    v21 = *(v0 + 32);
    if (!v21)
    {
      return result;
    }

    v22 = v21;
  }

  return swift_willThrow();
}

id *sub_1C86D08E4()
{
  v1 = OBJC_IVAR____TtC13CoreKnowledge15CKTimedDispatch__timeout;
  v2 = sub_1C86F8E6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C86D096C()
{
  sub_1C86D08E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CKTimedDispatch()
{
  result = qword_1EC2AD7A0;
  if (!qword_1EC2AD7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C86D0A18()
{
  result = sub_1C86F8E6C();
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86D0AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v25 = 14906;
  sub_1C868A058();
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_1C86F927C();
  if (v7[2] < 2uLL)
  {

    v23 = v6;
    v21 = a1;
    v22 = a2;
    v24 = 2;
    sub_1C868B6E4();
    swift_allocError();
    sub_1C868D528(&v21, v8);
    swift_willThrow();

    return sub_1C868D584(&v21);
  }

  v11 = v7[4];
  v10 = v7[5];
  v13 = v7[6];
  v12 = v7[7];

  v14 = v11 == 0x646568636E7973 && v10 == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_7_17() & 1) != 0)
  {

    *a3 = xmmword_1C86FDDB0;
    v15 = 1;
LABEL_9:
    *(a3 + 16) = v15;
    return result;
  }

  v16 = v11 == 5001555 && v10 == 0xE300000000000000;
  if (!v16 && (OUTLINED_FUNCTION_7_17() & 1) == 0)
  {

    v17 = v11 == 0x3A79726F6D656D3ALL && v10 == 0xE800000000000000;
    if (v17 || (OUTLINED_FUNCTION_7_17() & 1) != 0)
    {

LABEL_22:
      *a3 = 0;
      *(a3 + 8) = 0;
LABEL_23:
      v15 = 2;
      goto LABEL_9;
    }

    if (v11 == OUTLINED_FUNCTION_4_17() && v10 == v18)
    {
    }

    else
    {
      v20 = OUTLINED_FUNCTION_7_17();

      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    *a3 = xmmword_1C86FDDA0;
    goto LABEL_23;
  }

  *a3 = v13;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1C86D0D58()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C86D0DB8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CKKnowledgeStore_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C86D0E3C;
}

void sub_1C86D0E3C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C86D0EBC()
{
  v1 = *(v0 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v2 = *(v0 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___CKKnowledgeStore_backingStore), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1C86D0F18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  OUTLINED_FUNCTION_43_0();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v19 - v6 + 8;
  v8 = sub_1C86F8C1C();
  OUTLINED_FUNCTION_99();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_2();
  sub_1C869F2D8(v1 + OBJC_IVAR___CKKnowledgeStore_backingStore, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKSQLBackingStore();
  if (swift_dynamicCast())
  {

    if (qword_1EC2AD758 != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    v13 = __swift_project_value_buffer(v3, qword_1EC2AEFB0);
    OUTLINED_FUNCTION_26();
    sub_1C869CE88(v13, v7, &qword_1EC2AD9B8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
      sub_1C86F8BDC();

      v15 = *(v10 + 8);
      v15(v7, v8);
      OUTLINED_FUNCTION_26();

      sub_1C86F8BEC();

      v16 = OUTLINED_FUNCTION_5_16();
      (v15)(v16);
      v14 = 0;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v8);
    }

    sub_1C869DEA8(v7, &qword_1EC2AD9B8);
  }

  v14 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v8);
}

id sub_1C86D11B4()
{
  type metadata accessor for CKKnowledgeStore();
  v0 = OUTLINED_FUNCTION_11_13();
  return sub_1C86D1228(v0, v1);
}

id sub_1C86D11D4()
{
  type metadata accessor for CKKnowledgeStore();
  v0 = OUTLINED_FUNCTION_11_13();
  return sub_1C86D1334(v0, v1);
}

id sub_1C86D11F4()
{
  type metadata accessor for CKKnowledgeStore();
  v1[0] = 0;
  v1[1] = 0;
  v2 = 2;
  return sub_1C86851AC(v1);
}

id sub_1C86D1228(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x3A79726F6D656D3ALL && a2 == 0xE800000000000000;
  if (v2 || (sub_1C86F948C() & 1) != 0)
  {
    type metadata accessor for CKKnowledgeStore();
    v8 = 0uLL;
  }

  else
  {
    v7 = a1 == 0x666544726573753ALL && a2 == 0xEE003A73746C7561;
    if (!v7 && (sub_1C86F948C() & 1) == 0)
    {
      type metadata accessor for CKKnowledgeStore();
      *&v8 = a1;
      *(&v8 + 1) = a2;
      v9 = 0;

      v5 = sub_1C86851AC(&v8);
      sub_1C8685308(a1, a2, 0);
      return v5;
    }

    type metadata accessor for CKKnowledgeStore();
    v8 = xmmword_1C86FDDA0;
  }

  v9 = 2;
  return sub_1C86851AC(&v8);
}

id sub_1C86D1334(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = 1;
  v2 = objc_allocWithZone(type metadata accessor for CKKnowledgeStore());

  return sub_1C8685320(v4);
}

uint64_t CKError.errorCode.getter()
{
  sub_1C868D528(v0, &v3);
  switch(v7)
  {
    case 1:
      sub_1C868D584(&v3);
      result = 104;
      break;
    case 2:
      sub_1C868D584(&v3);
      result = 105;
      break;
    case 3:
      if (v5 | v6 | v3 | v4)
      {
        if (v5 | v6 | v4)
        {
          v2 = 0;
        }

        else
        {
          v2 = v3 == 1;
        }

        if (v2)
        {
          result = 101;
        }

        else
        {
          result = 102;
        }
      }

      else
      {
        result = 100;
      }

      break;
    default:
      sub_1C868D584(&v3);
      result = 103;
      break;
  }

  return result;
}

unint64_t CKError.errorDescription.getter()
{
  sub_1C868D528(v0, &v18);
  v2 = v18;
  switch(v20)
  {
    case 1:
      OUTLINED_FUNCTION_9_14();
      sub_1C86F936C();

      OUTLINED_FUNCTION_3_17();
      v5 = v12 + 7;
      goto LABEL_13;
    case 2:
      v17[0] = v18;
      v17[1] = v19;
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      sub_1C86F936C();

      OUTLINED_FUNCTION_3_17();
      v15 = v7;
      v16 = v6;
      sub_1C869CE88(v17, v14, &qword_1EC2AD810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810);
      v8 = sub_1C86F8F5C();
      MEMORY[0x1CCA7B200](v8);

      v9 = v15;
      sub_1C869DEA8(v17, &qword_1EC2AD810);
      break;
    case 3:
      v10 = 0xD000000000000019;
      if (v18 == 1 && (v19 | *(&v19 + 1) | *(&v18 + 1)) == 0)
      {
        v10 = 0xD00000000000001FLL;
      }

      if (v19 | *(&v19 + 1) | v18 | *(&v18 + 1))
      {
        v9 = v10;
      }

      else
      {
        v9 = 0xD000000000000017;
      }

      break;
    default:
      OUTLINED_FUNCTION_9_14();
      sub_1C86F936C();

      OUTLINED_FUNCTION_3_17();
      v5 = v4 + 16;
LABEL_13:
      *&v17[0] = v5;
      *(&v17[0] + 1) = v3;
      MEMORY[0x1CCA7B200](v2, v1);

      v9 = *&v17[0];
      break;
  }

  return v9;
}

uint64_t CKError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C86FCC70;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C8700F90;
  v1 = CKError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v4 = v2;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_1C86F8EBC();
}

uint64_t sub_1C86D172C(uint64_t a1)
{
  v2 = sub_1C86D2474();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C86D1768(uint64_t a1)
{
  v2 = sub_1C86D2474();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t CKKnowledgeStore.Location.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return OUTLINED_FUNCTION_3_9();
    }

    else if (v1 | v2)
    {
      return 0x666544726573753ALL;
    }

    else
    {
      return 0x3A79726F6D656D3ALL;
    }
  }

  else
  {
    MEMORY[0x1CCA7B200](v1, v2);
    return 0x3A3A4C5153;
  }
}

uint64_t CKKnowledgeStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___CKKnowledgeStore_location;
  v3 = *(v1 + OBJC_IVAR___CKKnowledgeStore_location);
  v4 = *(v1 + OBJC_IVAR___CKKnowledgeStore_location + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1C86857FC(v3, v4, v5);
}

uint64_t sub_1C86D1908@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C86D1964(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t static CKKnowledgeStore.directory()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2AD758 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  v3 = __swift_project_value_buffer(v2, qword_1EC2AEFB0);
  OUTLINED_FUNCTION_26();
  return sub_1C869CE88(v3, a1, &qword_1EC2AD9B8);
}

uint64_t sub_1C86D1CF0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v2 = MEMORY[0x1CCA7B280](v1);

  return v2;
}

uint64_t sub_1C86D1D58(uint64_t a1)
{
  sub_1C869CE88(a1, v11, &qword_1EC2AD810);
  if (!v12)
  {
    sub_1C869DEA8(v11, &qword_1EC2AD810);
    goto LABEL_9;
  }

  type metadata accessor for CKKnowledgeStore();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v5 = v4;
  if (v3 == (*((*v2 & *v10) + 0x88))() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    v8 = sub_1C86F948C();
  }

  return v8 & 1;
}

id sub_1C86D2004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1C86F8EFC();
  v6 = a4(v5);

  return v6;
}

id CKKnowledgeStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKKnowledgeStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKKnowledgeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13CoreKnowledge7CKErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_1C86D2148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C86D2184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1C86D21D0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreKnowledge16CKKnowledgeStoreC8LocationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C86D23C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C86D2408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C86D244C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1C86D2474()
{
  result = qword_1EC2ADDD0;
  if (!qword_1EC2ADDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return sub_1C86F948C();
}

uint64_t sub_1C86D2558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C86F919C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_3_2();
  v11 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  OUTLINED_FUNCTION_3_2();
  sub_1C8685A98();
  sub_1C86F8E1C();
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0);
  sub_1C8685ADC();
  sub_1C86F92AC();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v3);
  v13 = sub_1C86F91CC();
  OUTLINED_FUNCTION_21_0();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v19;

  v15 = v19;
  sub_1C86D2ACC(a1, v13, sub_1C86D2AC0, v14);
}

uint64_t sub_1C86D27B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADC80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v31 - v10;
  v12 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (!v16)
  {
    return (a3)(0);
  }

  v31[1] = a4;
  v32 = a3;
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v17 = sub_1C86D038C(v15);
  v18 = (a2 + 48);
  do
  {
    v20 = *(v18 - 2);
    v19 = *(v18 - 1);
    v21 = *v18;

    v34 = v21;
    v22 = sub_1C86D0334();
    dispatch_group_enter(v22);

    v37 = v20;
    v38 = v19;
    v35 = 0x2D657275736F6C63;
    v36 = 0xE800000000000000;
    v23 = sub_1C86F8D6C();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
    sub_1C868A058();
    v24 = sub_1C86F928C();
    LOBYTE(v21) = v25;
    sub_1C86D43F0(v11);
    if ((v21 & 1) != 0 || v24 >> 14)
    {
      v27 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x98);

      v28 = v20;
      v29 = v34;
      v27(v34, v28, v19, sub_1C86D44E4, v17);
    }

    else
    {
      v26 = sub_1C86D0334();
      dispatch_group_leave(v26);
    }

    v18 += 3;
    --v16;
  }

  while (v16);
  sub_1C86D05FC();
  v32(0);
}

void sub_1C86D2ACC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CKTripleCondition();
  sub_1C86BCEB8(a1);
  v12 = v11;
  v13 = *&v5[OBJC_IVAR___CKKnowledgeStoreEntity_store];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v5;
  v14[5] = a2;
  v14[6] = v10;
  v19[4] = sub_1C86D4064;
  v19[5] = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1C86A3B90;
  v19[3] = &block_descriptor_12;
  v15 = _Block_copy(v19);
  v16 = v12;

  v17 = v5;
  v18 = a2;

  [v13 triplesMatching:v16 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1C86D2C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, char *a5)
{
  v50 = a5;
  v8 = sub_1C86F8DEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1C86F8E6C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v45 - v20;
  v47 = a2;
  v22 = *(a2 + 16);
  if (!v22)
  {
    return a3(0, 1);
  }

  v45[1] = a4;
  v46 = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = 1;
  v45[0] = v23 + 16;
  sub_1C86F8E5C();
  *v12 = v22;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E7F48], v8);
  MEMORY[0x1CCA7B0C0](v18, v12);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v18, v13);
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v53 = sub_1C86D038C(v21);
  v24 = *&v50[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v51 = *&v50[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  v52 = v24;
  v50 = *&v50[OBJC_IVAR___CKKnowledgeStoreEntity_store];
  v25 = type metadata accessor for CKTripleCondition();
  v48 = v55;
  v49 = v25;
  v26 = (v47 + 48);
  do
  {
    v27 = v23;
    v28 = *(v26 - 2);
    v29 = *(v26 - 1);
    v30 = *v26;
    v26 += 3;
    v32 = *&v28[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
    v31 = *&v28[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    v33 = objc_allocWithZone(v49);
    swift_bridgeObjectRetain_n();
    v34 = v28;
    v35 = v51;

    v36 = v29;
    v23 = v27;
    CKTripleCondition.init(subject:predicate:object:)(v52, v35, v36, v30, v32, v31);
    v38 = v37;
    v39 = v53;
    v40 = sub_1C86D0334();
    dispatch_group_enter(v40);

    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v27;
    v55[2] = sub_1C86D4474;
    v55[3] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v55[0] = sub_1C86A3B90;
    v55[1] = &block_descriptor_21_1;
    v42 = _Block_copy(aBlock);
    v43 = v38;

    [v50 triplesMatching:v43 completionHandler:v42];
    _Block_release(v42);

    --v22;
  }

  while (v22);
  sub_1C86D05FC();
  swift_beginAccess();
  v46(0, *(v27 + 16));
}

void sub_1C86D30DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_1C86D05C4(a1);
  }

  else if (sub_1C86B50B8(a2))
  {
    v5 = sub_1C86D0334();
    dispatch_group_leave(v5);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
    sub_1C86F91FC();
  }
}

uint64_t sub_1C86D3170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_0();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v7;
  v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x100);

  v15 = v7;
  v14(757145889, 0xE400000000000000, 0, a6, a7, v13);
}

void sub_1C86D3258(uint64_t a1, char *a2, void (*a3)(void, void), uint64_t a4, char *a5)
{
  v52 = a5;
  v8 = sub_1C86F8DEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1C86F8E6C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v49 - v20;
  v56 = a2;
  v22 = *(a2 + 2);
  if (v22)
  {
    v49[1] = a4;
    v50 = a3;
    v23 = swift_allocObject();
    v55 = v23;
    *(v23 + 16) = 1;
    v24 = v23 + 16;
    sub_1C86F8E5C();
    if ((v22 * 10) >> 64 == (10 * v22) >> 63)
    {
      v49[0] = v24;
      *v12 = 10 * v22;
      (*(v9 + 104))(v12, *MEMORY[0x1E69E7F48], v8);
      MEMORY[0x1CCA7B0C0](v18, v12);
      (*(v9 + 8))(v12, v8);
      (*(v14 + 8))(v18, v13);
      type metadata accessor for CKTimedDispatch();
      swift_allocObject();
      v25 = sub_1C86D038C(v21);
      v26 = *&v52[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
      v53 = *&v52[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
      v54 = v26;
      v27 = *&v52[OBJC_IVAR___CKKnowledgeStoreEntity_store];
      v51 = v58;
      v52 = v27;
      for (i = v56 + 48; ; i += 3)
      {
        v29 = HIBYTE(*i) & 0xFLL;
        if ((*i & 0x2000000000000000) == 0)
        {
          v29 = *(i - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v29 < 4)
        {
          break;
        }

        v30 = *(i - 2);
        v56 = v30;

        v31 = sub_1C86F906C();
        v32 = MEMORY[0x1CCA7B1C0](v31);
        v34 = v33;

        v36 = *&v30[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
        v35 = *&v30[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
        v37 = objc_allocWithZone(type metadata accessor for CKTripleCondition());
        v38 = v22;
        v39 = v25;
        v40 = v53;

        v41 = v40;
        v25 = v39;
        CKTripleCondition.init(subject:predicate:object:)(v54, v41, v32, v34, v36, v35);
        v43 = v42;
        v44 = sub_1C86D0334();
        dispatch_group_enter(v44);

        v45 = swift_allocObject();
        v46 = v55;
        *(v45 + 16) = v39;
        *(v45 + 24) = v46;
        v58[2] = sub_1C86D4494;
        v58[3] = v45;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v58[0] = sub_1C86A3B90;
        v58[1] = &block_descriptor_34;
        v47 = _Block_copy(aBlock);
        v48 = v43;

        [v52 triplesMatching:v48 completionHandler:v47];
        _Block_release(v47);

        v22 = v38 - 1;
        if (v38 == 1)
        {
          sub_1C86D05FC();
          swift_beginAccess();
          v50(0, *(v55 + 16));

          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    a3(0, 1);
  }
}

void sub_1C86D3774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_1C86D05C4(a1);
  }

  else if (sub_1C86B50B8(a2) <= 0)
  {
    v5 = sub_1C86D0334();
    dispatch_group_leave(v5);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
    sub_1C86F91FC();
  }
}

void sub_1C86D380C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, char *a5, void *a6, uint64_t a7)
{
  v87 = a6;
  v88 = a7;
  v89 = a5;
  v11 = sub_1C86F8DEC();
  v83 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1C86F8E6C();
  v96 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADC80);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v79 - v25;
  if (a1)
  {
    a3(a1, MEMORY[0x1E69E7CC0]);
    return;
  }

  v82 = v19;
  v80 = v15;
  v81 = v11;
  v85 = a4;
  v86 = a3;
  v101 = MEMORY[0x1E69E7CC0];
  v27 = sub_1C86B50B8(a2);
  v28 = 0;
  v94 = a2 & 0xC000000000000001;
  v95 = v27;
  v92 = v14;
  v93 = a2 & 0xFFFFFFFFFFFFFF8;
  v29 = v96;
  v30 = a2;
  v90 = a2;
  v91 = v22;
  while (v95 != v28)
  {
    if (v94)
    {
      v31 = MEMORY[0x1CCA7B5C0](v28, v30);
    }

    else
    {
      if (v28 >= *(v93 + 16))
      {
        goto LABEL_36;
      }

      v31 = *(v30 + 8 * v28 + 32);
    }

    v32 = v31;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v33 = *((*MEMORY[0x1E69E7D40] & *v31) + 0x68);
    v97 = v33();
    v98 = v34;
    v99 = 0x2D656C7572;
    v100 = 0xE500000000000000;
    v35 = sub_1C86F8D6C();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v35);
    sub_1C868A058();
    v36 = sub_1C86F928C();
    v38 = v37;
    sub_1C86D43F0(v26);

    if ((v38 & 1) == 0 && v36 < 0x4000)
    {
LABEL_11:
      sub_1C86F939C();
      sub_1C86F93CC();
      sub_1C86F93DC();
      sub_1C86F93AC();
      goto LABEL_22;
    }

    v40 = (v33)(v39);
    v42 = v41;
    v97 = v40;
    v98 = v41;
    v99 = 757145889;
    v100 = 0xE400000000000000;
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v35);
    v43 = sub_1C86F928C();
    v45 = v44;
    v47 = v46;
    sub_1C86D43F0(v26);
    if ((v47 & 1) != 0 || v43 >= 0x4000)
    {
    }

    else
    {
      v97 = v40;
      v98 = v42;
      v99 = 0x2D656C7572;
      v100 = 0xE500000000000000;
      v48 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v48 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v45 >> 14 > 4 * v48)
      {
        goto LABEL_37;
      }

      v84 = v45 >> 14;
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v35);
      v49 = sub_1C86F928C();
      v51 = v50;
      sub_1C86D43F0(v26);

      if ((v51 & 1) == 0 && v84 == v49 >> 14)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    ++v28;
    v22 = v91;
    v14 = v92;
    v29 = v96;
    v30 = v90;
  }

  v52 = v101;
  v53 = sub_1C86B50B8(v101);
  if (v53)
  {
    v54 = v53;
    v55 = v82;
    sub_1C86F8E5C();
    v56 = v86;
    if ((v54 * 100) >> 64 != (100 * v54) >> 63)
    {
      goto LABEL_38;
    }

    *v14 = 100 * v54;
    v57 = v83;
    v58 = v81;
    (*(v83 + 104))(v14, *MEMORY[0x1E69E7F48], v81);
    MEMORY[0x1CCA7B0C0](v55, v14);
    (*(v57 + 8))(v14, v58);
    (v29)[1](v55, v80);
    type metadata accessor for CKTimedDispatch();
    swift_allocObject();
    v59 = sub_1C86D038C(v22);
    v60 = sub_1C86B50B8(v52);
    if (v60)
    {
      v61 = v60;
      if (v60 < 1)
      {
        goto LABEL_39;
      }

      v62 = 0;
      v63 = *&v89[OBJC_IVAR___CKKnowledgeStoreEntity_store];
      v95 = v52 & 0xC000000000000001;
      v96 = v63;
      v64 = v52;
      do
      {
        if (v95)
        {
          v65 = MEMORY[0x1CCA7B5C0](v62, v52);
        }

        else
        {
          v65 = *(v52 + 8 * v62 + 32);
        }

        v66 = v65;
        v67 = v88;
        ++v62;
        (*((*MEMORY[0x1E69E7D40] & *v65) + 0x68))();
        v68 = sub_1C86F8EEC();

        v69 = [v96 entityWithIdentifier_];

        v70 = sub_1C86D0334();
        dispatch_group_enter(v70);

        v71 = swift_allocObject();
        v72 = v89;
        v71[2] = v59;
        v71[3] = v72;
        v73 = v87;
        v71[4] = v69;
        v71[5] = v73;
        v71[6] = v67;

        v74 = v72;
        v75 = v69;
        v76 = v73;

        sub_1C86D3170(v75, v76, sub_1C86D4458, v71, &unk_1F4851DF0, 1, sub_1C86D4468);

        v56 = v86;
        v52 = v64;
      }

      while (v61 != v62);
    }

    sub_1C86D05FC();
    v77 = v88;
    swift_beginAccess();
    v78 = *(v77 + 16);

    v56(0, v78);

    return;
  }

  v86(0, MEMORY[0x1E69E7CC0]);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C86D408C(NSObject *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    sub_1C86D05C4(a1);
    v10 = a1;

LABEL_4:

    return;
  }

  if ((a2 & 1) == 0)
  {
    v16 = sub_1C86D0334();
    dispatch_group_leave(v16);
    v10 = v16;

    goto LABEL_4;
  }

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a5;
  v14[4] = a7;

  v15 = a5;

  sub_1C86D3170(v15, a6, sub_1C86D447C, v14, &unk_1F4851EB8, 0, sub_1C86D4488);
}

void sub_1C86D41E8(NSObject *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    sub_1C86D05C4(a1);
    v8 = a1;

LABEL_4:

    return;
  }

  if ((a2 & 1) == 0)
  {
    v13 = sub_1C86D0334();
    dispatch_group_leave(v13);
    v8 = v13;

    goto LABEL_4;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a5;
  v12 = *((*MEMORY[0x1E69E7D40] & *a4) + 0xF0);

  v12(sub_1C86D44DC, v11);
}

void sub_1C86D4338(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C86D05C4(a1);
  }

  else
  {
    swift_beginAccess();

    sub_1C86B1524(v3);
    swift_endAccess();
    v4 = sub_1C86D0334();
    dispatch_group_leave(v4);
  }
}

uint64_t sub_1C86D43F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_17Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C86D44FC()
{
  sub_1C86D49F8(0);
}

uint64_t sub_1C86D452C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  sub_1C86D49F8(1);
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_1C86D4A40(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
  }

  sub_1C86F936C();
  sqlite3_bind_parameter_count(*(v1 + 16));
  sub_1C86F946C();

  MEMORY[0x1CCA7B200](0xD000000000000012, 0x80000001C8701180);
  v8 = sub_1C86F946C();
  MEMORY[0x1CCA7B200](v8);

  MEMORY[0x1CCA7B200](0x64657373617020, 0xE700000000000000);
  result = OUTLINED_FUNCTION_1_18();
  __break(1u);
  return result;
}

uint64_t sub_1C86D46BC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = sub_1C86AA01C();
  v4 = sub_1C86F8F6C();

  swift_beginAccess();
  v5 = sqlite3_prepare_v2(v3, (v4 + 32), -1, (v1 + 16), 0);
  swift_endAccess();

  sub_1C86AA3E4(v5, 0);

  if (v2)
  {
  }

  return v1;
}

uint64_t sub_1C86D47C0()
{
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return v0;
}

uint64_t sub_1C86D4804()
{
  sub_1C86D47C0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1C86D48E8()
{
  result = qword_1EC2ADDD8;
  if (!qword_1EC2ADDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2ADDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADDD8);
  }

  return result;
}

uint64_t sub_1C86D494C()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_1C86D499C()
{
  v1 = v0[7];
  if (v1)
  {
    return v1;
  }

  OUTLINED_FUNCTION_0_15();
  result = swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v3 = sub_1C86D494C();
    v0[7] = v1;
    v0[8] = v3;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86D49F8(char a1)
{
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

uint64_t sub_1C86D4A40(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1EC2AD730 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1EC2AEFA8);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1EC2AD730 == -1)
          {
LABEL_30:
            v8 = qword_1EC2AEFA8;
            v9 = sub_1C86F8F6C();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &off_1F4850E70;
      v15[0] = v11;
      sub_1C86D4A40(v15, a2);
      v12 = v15;
      return sub_1C86A5148(v12, &qword_1EC2AD9C8);
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  sub_1C86D60CC(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1C86A5148(v15, &qword_1EC2AD9C8);
  }

  sub_1C86D60CC(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_1C86A5148(v12, &qword_1EC2AD9C8);
  }

  sub_1C869F3F8(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1C86F936C();
  MEMORY[0x1CCA7B200](0xD00000000000001FLL, 0x80000001C87011A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0);
  sub_1C86F93EC();
  result = sub_1C86F941C();
  __break(1u);
  return result;
}

uint64_t sub_1C86D5020(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    sub_1C86D452C(a1);
    v5 = sub_1C86D5020(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_1C86D49F8(0);
    sub_1C8685A98();
    v6 = *(v1 + 24);
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1EC2AD780;

        if (v7 != -1)
        {
          swift_once();
        }

        sub_1C86F917C();
        v8 = sub_1C86AA4C0();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1C86AA3E4(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 88);
      sub_1C86F91AC();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
  }

  return v4;
}

void sub_1C86D51E4(uint64_t iCol@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1C86F936C();

    v12 = sub_1C86F946C();
    MEMORY[0x1CCA7B200](v12);

    OUTLINED_FUNCTION_1_18();
    __break(1u);
    return;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a2, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a2, iCol);
      v7 = MEMORY[0x1E69E7360];
      v8 = &off_1F4850E70;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a2, iCol);
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *(a3 + 32) = &off_1F4850E58;
      *a3 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a2, iCol))
      {
        goto LABEL_14;
      }

      v9 = sub_1C86F8FDC();
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &off_1F4850E78;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    case 4:
      v6 = sub_1C86D5618(iCol, a2);
      v7 = &type metadata for Blob;
      v8 = &off_1F4850EA0;
LABEL_9:
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      break;
    case 5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
    default:
      goto LABEL_15;
  }
}

const char *sub_1C86D53B8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  v5 = sqlite3_step(*(a1 + 16));
  result = sub_1C86AA3E4(v5, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_1C86D5424@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1C86D44FC();

  *a1 = v3;
  return result;
}

uint64_t sub_1C86D54B0()
{
  sub_1C86D58E0();
  v1 = v0;

  return v1;
}

void sub_1C86D5538()
{
  v2 = *(v0 + 24);

  v3 = sub_1C86AA638(v2, v0);
  if (!v1 && v3)
  {
    v4 = sub_1C86D499C();
    sub_1C86D5A30(v4, v5);
  }
}

const char *sub_1C86D55B8()
{
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_1C86F8FCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86D5618(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v4 = sqlite3_column_blob(a2, iCol);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a2, v2);

  return sub_1C86ACCE4(v5, v6);
}

uint64_t sub_1C86D56B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDF8);
  result = swift_allocObject();
  *(result + 16) = sub_1C86D613C;
  *(result + 24) = v5;
  return result;
}

double sub_1C86D5750@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >= a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_1C86FDDA0;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v8 + 1;
    sub_1C86D51E4(v8, a2, a4);
  }

  return result;
}

uint64_t sub_1C86D57FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C86D56B4(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1C86D5840(uint64_t a1, uint64_t a2)
{
  result = sub_1C86D6084(&qword_1EC2ADDE8, a2, type metadata accessor for Statement);
  *(a1 + 8) = result;
  return result;
}

void sub_1C86D58E0()
{
  sub_1C86D49F8(0);
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    sub_1C86C4548();
    if (!v3)
    {
      break;
    }

    v4 = v3;
    if (!v0)
    {
      v5 = v1[3];
      if (((v5 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDF0);
      v8 = swift_allocObject();
      v9 = (_swift_stdlib_malloc_size(v8) - 32) / 8;
      v8[2] = v7;
      v8[3] = 2 * v9;
      v10 = (v8 + 4);
      v11 = v1[3];
      v12 = v11 >> 1;
      if (v1[2])
      {
        if (v8 != v1 || v10 >= &v1[v12 + 4])
        {
          memmove(v8 + 4, v1 + 4, 8 * v12);
        }

        v1[2] = 0;
      }

      i = (v10 + 8 * v12);
      v0 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - (v11 >> 1);

      v1 = v8;
    }

    v14 = __OFSUB__(v0--, 1);
    if (v14)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *i = v4;
  }

  v15 = v1[3];
  if (v15 < 2)
  {
    return;
  }

  v16 = v15 >> 1;
  v14 = __OFSUB__(v16, v0);
  v17 = v16 - v0;
  if (!v14)
  {
    v1[2] = v17;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1C86D5A30(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      sub_1C86D51E4(v7, a1, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void *sub_1C86D5C14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDF8);
  result = swift_allocObject();
  v13 = result;
  result[2] = sub_1C86D5DF8;
  result[3] = v11;
  if (!a2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v14 = a3;
LABEL_11:
    *a1 = v13;
    return v14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      result = (v13[2])(&v18);
      if (*(&v19 + 1) == 1)
      {
        sub_1C86A5148(&v18, &qword_1EC2ADE00);
        goto LABEL_11;
      }

      v16 = v19;
      v21 = v18;
      v22 = v19;
      v17 = v20;
      v23 = v20;
      *a2 = v18;
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      a2 += 40;
      ++v14;
      if (v15 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C86D5D70(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C86D49F8(0);
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_1C86C4548();
        if (v9)
        {
          *(a2 + 8 * v7++) = v9;
          if (v8 != a3)
          {
            continue;
          }
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *a1 = v3;
  }
}

void *sub_1C86D5E6C(void *result, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1C86F92DC();
    a5(0);
    sub_1C86D6084(a6, 255, a7);
    result = sub_1C86F90FC();
    v8 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(a4 + 32);
    v13 = a4 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a4 + 56);
  }

  v20 = a3;
  if (!a2)
  {
    v21 = 0;
LABEL_28:
    *v10 = v8;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v15;
    v10[4] = v16;
    return v21;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = v14;
    v27 = a5;
    v21 = 0;
    v22 = (v14 + 64) >> 6;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v8 < 0)
      {
        if (!sub_1C86F930C())
        {
          goto LABEL_26;
        }

        v27(0);
        swift_dynamicCast();
        result = v29;
        v20 = a3;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v16)
        {
          while (1)
          {
            v24 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v24 >= v22)
            {
              v16 = 0;
              goto LABEL_26;
            }

            v16 = *(v13 + 8 * v24);
            ++v15;
            if (v16)
            {
              v15 = v24;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v25 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        result = *(*(v8 + 48) + ((v15 << 9) | (8 * v25)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v21;
      if (v23 == v20)
      {
        v21 = v20;
LABEL_26:
        v14 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86D6084(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C86D60CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_1C86F941C();
}

void sub_1C86D6170(uint64_t a1)
{
  if (a1)
  {
    sub_1C86F8B9C();
  }

  v1 = OUTLINED_FUNCTION_10_13();
  v4 = v2;
  v3(v1);
}

uint64_t sub_1C86D61F4(uint64_t a1)
{
  sub_1C868FEF0(a1, v2);
  OUTLINED_FUNCTION_13_10();
  swift_beginAccess();

  sub_1C8693964();
  return swift_endAccess();
}

uint64_t sub_1C86D6358()
{
  sub_1C869F2D8(v0 + 24, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKInMemoryBackingStore();
  if (swift_dynamicCast())
  {
    v44 = v1;
    v45 = v53;
    swift_beginAccess();
    v2 = *(v0 + 16) + 64;
    OUTLINED_FUNCTION_1_19();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;
    v48 = v8;

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC8];
    v46 = v7;
    v47 = v2;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_3:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_26;
      }

      v5 = *(v2 + 8 * v11);
      ++v9;
      if (v5)
      {
        v9 = v11;
LABEL_7:
        while (1)
        {
          v12 = __clz(__rbit64(v5)) | (v9 << 6);
          v13 = (*(v48 + 48) + 16 * v12);
          v14 = *v13;
          v15 = v13[1];
          sub_1C868FEF0(*(v48 + 56) + 32 * v12, &v55);
          v49 = v55;
          v50 = v56;

          if (!v15)
          {
            break;
          }

          v55 = v49;
          v56 = v50;
          if (*(&v50 + 1))
          {
            sub_1C868FEF0(&v55, &v51);
            if (!v52)
            {
              __break(1u);
LABEL_34:
              result = sub_1C86F94BC();
              __break(1u);
              return result;
            }

            sub_1C8689930(&v51, &v53);
          }

          else
          {
            v16 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
            v54 = sub_1C86A1A20();
            *&v53 = v16;
          }

          sub_1C8689930(&v53, &v51);
          swift_isUniquelyReferenced_nonNull_native();
          v57 = v10;
          v17 = sub_1C869C918(v14, v15);
          if (__OFADD__(v10[2], (v18 & 1) == 0))
          {
            goto LABEL_30;
          }

          v19 = v17;
          v20 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0);
          if (sub_1C86F93FC())
          {
            v21 = sub_1C869C918(v14, v15);
            if ((v20 & 1) != (v22 & 1))
            {
              goto LABEL_34;
            }

            v19 = v21;
          }

          if (v20)
          {

            v10 = v57;
            v23 = (v57[7] + 32 * v19);
            __swift_destroy_boxed_opaque_existential_0(v23);
            sub_1C8689930(&v51, v23);
          }

          else
          {
            v10 = v57;
            v57[(v19 >> 6) + 8] |= 1 << v19;
            v24 = (v10[6] + 16 * v19);
            *v24 = v14;
            v24[1] = v15;
            sub_1C8689930(&v51, (v10[7] + 32 * v19));
            v25 = v10[2];
            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_31;
            }

            v10[2] = v27;
          }

          v5 &= v5 - 1;
          sub_1C86885EC(&v55);
          v7 = v46;
          v2 = v47;
          if (!v5)
          {
            goto LABEL_3;
          }
        }

LABEL_26:

        v41 = *(v45 + 16);
        v42 = *((*MEMORY[0x1E69E7D40] & *v41) + 0xC0);
        v43 = v41;
        v42(v10);

        if (!v44)
        {
          OUTLINED_FUNCTION_13_10();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADE10);
          sub_1C86F8ECC();
          swift_endAccess();
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1ED5BC708 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v28 = sub_1C86F8DBC();
  __swift_project_value_buffer(v28, qword_1ED5BC790);
  v29 = sub_1C86F8DAC();
  v30 = sub_1C86F913C();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_7_1();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v31);
    OUTLINED_FUNCTION_15_9();
    _os_log_impl(v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v38 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v38, v39);
  return swift_willThrow();
}

uint64_t sub_1C86D67F0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1C86D6854(uint64_t a1, const void *a2, void (*a3)(void))
{
  a3();
  v4 = OUTLINED_FUNCTION_10_13();
  v5(v4, 0);

  _Block_release(a2);
}

uint64_t sub_1C86D6908(int a1, int a2, void *aBlock, void (*a4)(void))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  sub_1C86D6854(v6, v5, a4);
  _Block_release(v5);
}

uint64_t sub_1C86D6974()
{
  v2 = v0;
  v3 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  sub_1C869F2D8(v2 + 24, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKUserDefaultsBackingStore();
  if (swift_dynamicCast())
  {
    v58 = v1;
    v8 = v64;
    sub_1C86D0150();
    type metadata accessor for CKTimedDispatch();
    swift_allocObject();
    v9 = sub_1C86D038C(v7);
    swift_beginAccess();
    v10 = *(v2 + 16);
    v11 = v10 + 64;
    OUTLINED_FUNCTION_1_19();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;

    v17 = 0;
    v60 = v64;
    v61 = v2;
    v59 = v10;
    while (v14)
    {
      v18 = v14;
LABEL_9:
      v14 = (v18 - 1) & v18;
      v20 = *(v2 + 16);
      if (*(v20 + 16))
      {
        v67 = (v18 - 1) & v18;
        v21 = (*(v10 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
        v22 = *v21;
        v23 = v21[1];

        v63 = v22;
        v24 = sub_1C869C918(v22, v23);
        if (v25)
        {
          sub_1C868FEF0(*(v20 + 56) + 32 * v24, &v64);

          v66[0] = v64;
          v66[1] = v65;
          v26 = sub_1C86D0334();
          dispatch_group_enter(v26);

          v27 = *(v8 + 16);
          sub_1C868FEF0(v66, &v64);
          v62 = v27;
          if (*(&v65 + 1))
          {
            __swift_project_boxed_opaque_existential_0(&v64, *(&v65 + 1));
            v57 = &v57;
            OUTLINED_FUNCTION_9_15();
            v29 = v28;
            MEMORY[0x1EEE9AC00](v30, v31);
            OUTLINED_FUNCTION_3_2();
            (*(v29 + 16))(v33 - v32);
            swift_retain_n();
            v34 = v27;
            OUTLINED_FUNCTION_20_5();
            v35 = v9;
            v36 = sub_1C86F947C();
            v37 = OUTLINED_FUNCTION_20_5();
            v38(v37);
            __swift_destroy_boxed_opaque_existential_0(&v64);
          }

          else
          {
            swift_retain_n();
            v39 = v27;
            v35 = v9;
            v36 = 0;
          }

          v40 = sub_1C86F8EEC();
          v41 = v62;
          [v62 setValue:v36 forKey:v40];

          swift_unknownObjectRelease();
          v42 = sub_1C86D0334();
          dispatch_group_leave(v42);

          sub_1C86885EC(v66);
          v8 = v60;
          v2 = v61;
          v9 = v35;
          v10 = v59;
          v14 = v67;
        }

        else
        {

          v14 = v67;
        }
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v19 >= v16)
      {
        break;
      }

      v18 = *(v11 + 8 * v19);
      ++v17;
      if (v18)
      {
        v17 = v19;
        goto LABEL_9;
      }
    }

    v56 = v58;
    sub_1C86D05FC();
    if (!v56)
    {
      sub_1C868A164();
      OUTLINED_FUNCTION_13_10();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADE10);
      sub_1C86F8ECC();
      swift_endAccess();
    }
  }

  else
  {
    if (qword_1ED5BC708 != -1)
    {
LABEL_24:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v43 = sub_1C86F8DBC();
    __swift_project_value_buffer(v43, qword_1ED5BC790);
    v44 = sub_1C86F8DAC();
    v45 = sub_1C86F913C();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_7_1();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v46);
      OUTLINED_FUNCTION_15_9();
      _os_log_impl(v47, v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
    }

    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v53 = swift_allocError();
    OUTLINED_FUNCTION_1_1(v53, v54);
    return swift_willThrow();
  }
}

void sub_1C86D6EA0(uint64_t a1, int64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1C869F2D8(a1 + 24, &aBlock);
  _Block_copy(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKSQLBackingStore();
  if (!swift_dynamicCast())
  {
    if (qword_1ED5BC708 == -1)
    {
LABEL_25:
      v31 = sub_1C86F8DBC();
      __swift_project_value_buffer(v31, qword_1ED5BC790);
      v32 = sub_1C86F8DAC();
      v33 = sub_1C86F913C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C8683000, v32, v33, "CKSQLWriteBatch should back a CKSQLBackingStore", v34, 2u);
        MEMORY[0x1CCA7C540](v34, -1, -1);
      }

      sub_1C868B6E4();
      v35 = swift_allocError();
      *v36 = 1;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 3;
      v37 = sub_1C86F8B9C();
      (*(a2 + 16))(a2, v37);

      goto LABEL_32;
    }

LABEL_36:
    swift_once();
    goto LABEL_25;
  }

  v47 = v4;
  v48 = a2;
  v46 = v55;
  swift_beginAccess();
  v45 = a1;
  v5 = *(a1 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a1 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v50 = *(a1 + 16);

  a2 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v49 = v7;
  if (!v11)
  {
LABEL_5:
    while (1)
    {
      v14 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_28;
      }

      v11 = *(v7 + 8 * v14);
      ++a2;
      if (v11)
      {
        a2 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_9:
  while (1)
  {
    v15 = __clz(__rbit64(v11)) | (a2 << 6);
    v16 = (*(v50 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C868FEF0(*(v50 + 56) + 32 * v15, &aBlock);
    v51 = aBlock;
    v52 = v58;

    if (!v18)
    {
      break;
    }

    aBlock = v51;
    v58 = v52;
    if (*(&v52 + 1))
    {
      sub_1C868FEF0(&aBlock, &v53);
      if (!v54)
      {
        _Block_release(v48);
        __break(1u);
LABEL_38:

        _Block_release(v48);
        sub_1C86F94BC();
        __break(1u);
        return;
      }

      sub_1C8689930(&v53, &v55);
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v56 = sub_1C86A1A20();
      *&v55 = v19;
    }

    sub_1C8689930(&v55, &v53);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1C869C918(v17, v18);
    if (__OFADD__(v13[2], (v21 & 1) == 0))
    {
      goto LABEL_34;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0);
    if (sub_1C86F93FC())
    {
      v24 = sub_1C869C918(v17, v18);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_38;
      }

      v22 = v24;
    }

    if (v23)
    {

      v26 = (v13[7] + 32 * v22);
      __swift_destroy_boxed_opaque_existential_0(v26);
      sub_1C8689930(&v53, v26);
    }

    else
    {
      v13[(v22 >> 6) + 8] |= 1 << v22;
      v27 = (v13[6] + 16 * v22);
      *v27 = v17;
      v27[1] = v18;
      sub_1C8689930(&v53, (v13[7] + 32 * v22));
      v28 = v13[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_35;
      }

      v13[2] = v30;
    }

    v11 &= v11 - 1;
    sub_1C86885EC(&aBlock);
    v7 = v49;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

LABEL_28:

  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C869040C;
  *(v38 + 24) = v47;

  v39 = sub_1C86A227C(sub_1C86D8B78, v38);

  if (v39)
  {
    v40 = sub_1C86F8E8C();

    (*(*v46 + 96))(v41);
    v42 = sub_1C86F8EEC();

    v43 = swift_allocObject();
    v43[2] = v45;
    v43[3] = sub_1C869040C;
    v43[4] = v47;
    v59 = sub_1C86D8B64;
    v60 = v43;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v58 = sub_1C868E054;
    *(&v58 + 1) = &block_descriptor_101;
    v44 = _Block_copy(&aBlock);

    [v39 saveKeysAndValues:v40 toStoreWithIdentifier:v42 completionHandler:v44];

    swift_unknownObjectRelease();
    _Block_release(v44);
  }

  else
  {
  }

  a2 = v48;
LABEL_32:
  _Block_release(a2);
}

void sub_1C86D7508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_6(a1, a2, a3, a4, a5, a6, a7, a8, v58, v60, v62, v64, v66, v68, v70, v72, v73, v75, v76, v78, v79, *(&v79 + 1), v80, v81, v82, *(&v82 + 1), v83, v84, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKSQLBackingStore();
  if (OUTLINED_FUNCTION_12_10())
  {
    OUTLINED_FUNCTION_8_15();
    v59 = v8;
    v11 = *(v8 + 16) + 64;
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_6();
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    v67 = v11;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_3:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_26;
      }

      v10 = *(v11 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
LABEL_7:
        while (1)
        {
          OUTLINED_FUNCTION_7_18();
          v16 = *v15;
          v17 = v15[1];
          sub_1C868FEF0(v19 + 32 * v18, &aBlock);
          v71 = aBlock;
          v74 = v86;

          if (!v17)
          {
            break;
          }

          aBlock = v71;
          v86 = v74;
          if (*(&v74 + 1))
          {
            sub_1C868FEF0(&aBlock, &v79);
            if (!v81)
            {
              __break(1u);
LABEL_34:
              sub_1C86F94BC();
              __break(1u);
              return;
            }

            sub_1C8689930(&v79, &v82);
          }

          else
          {
            v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
            v84 = sub_1C86A1A20();
            *&v82 = v20;
          }

          sub_1C8689930(&v82, &v79);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C869C918(v16, v17);
          OUTLINED_FUNCTION_14_12();
          if (v23)
          {
            goto LABEL_30;
          }

          v24 = v21;
          v25 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0);
          v26 = sub_1C86F93FC();
          if (v26)
          {
            v26 = sub_1C869C918(v16, v17);
            if ((v25 & 1) != (v27 & 1))
            {
              goto LABEL_34;
            }

            v24 = v26;
          }

          if (v25)
          {

            v34 = (*(v13 + 56) + 32 * v24);
            __swift_destroy_boxed_opaque_existential_0(v34);
            sub_1C8689930(&v79, v34);
          }

          else
          {
            OUTLINED_FUNCTION_6_16(v26, v27, v28, v29, v30, v31, v32, v33, v59, v61, v63, v65, v67, v69, v71, *(&v71 + 1), v74, *(&v74 + 1), v77, v13);
            *v35 = v16;
            v35[1] = v17;
            sub_1C8689930(&v79, (*(v13 + 56) + 32 * v24));
            v36 = *(v13 + 16);
            v23 = __OFADD__(v36, 1);
            v37 = v36 + 1;
            if (v23)
            {
              goto LABEL_31;
            }

            *(v13 + 16) = v37;
          }

          v10 &= v10 - 1;
          sub_1C86885EC(&aBlock);
          v11 = v67;
          if (!v10)
          {
            goto LABEL_3;
          }
        }

LABEL_26:

        OUTLINED_FUNCTION_11();
        v50 = swift_allocObject();
        *(v50 + 16) = v63;
        *(v50 + 24) = v65;

        v51 = sub_1C86A227C(sub_1C86D8B78, v50);

        if (v51)
        {
          v52 = sub_1C86F8E8C();

          (*(*v61 + 96))(v53);
          v54 = sub_1C86F8EEC();

          v55 = swift_allocObject();
          v55[2] = v59;
          v55[3] = v63;
          v55[4] = v65;
          OUTLINED_FUNCTION_4_18();
          OUTLINED_FUNCTION_5_17();
          *&v86 = v56;
          *(&v86 + 1) = &block_descriptor_86_0;
          v57 = _Block_copy(&aBlock);

          [v51 saveKeysAndValues:v52 toStoreWithIdentifier:v54 completionHandler:v57];

          swift_unknownObjectRelease();
          _Block_release(v57);
        }

        else
        {
        }

        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1ED5BC708 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v38 = sub_1C86F8DBC();
  __swift_project_value_buffer(v38, qword_1ED5BC790);
  v39 = sub_1C86F8DAC();
  v40 = sub_1C86F913C();
  if (os_log_type_enabled(v39, v40))
  {
    OUTLINED_FUNCTION_7_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v41);
    OUTLINED_FUNCTION_15_9();
    _os_log_impl(v42, v43, v44, v45, v46, v47);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v48 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v48, v49);
  v9();
}

uint64_t sub_1C86D79F0(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
}

uint64_t sub_1C86D7A5C()
{
  v1 = v0;
  v2 = sub_1C86F8DFC();
  OUTLINED_FUNCTION_9_15();
  v29 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  sub_1C86F8E3C();
  OUTLINED_FUNCTION_9_15();
  v27 = v10;
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  OUTLINED_FUNCTION_3_2();
  v14 = v13 - v12;
  v15 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  OUTLINED_FUNCTION_3_2();
  v19 = v18 - v17;
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch();
  swift_allocObject();
  v20 = sub_1C86D038C(v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v20;
  aBlock[4] = sub_1C86D8B28;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C86A209C;
  aBlock[3] = &block_descriptor_76;
  v24 = _Block_copy(aBlock);
  v25 = v22;

  sub_1C86F8E1C();
  aBlock[7] = MEMORY[0x1E69E7CC0];
  sub_1C86CF674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0);
  sub_1C86B4CC0();
  sub_1C86F92AC();
  MEMORY[0x1CCA7B400](0, v14, v8, v24);
  _Block_release(v24);

  (*(v29 + 8))(v8, v2);
  (*(v27 + 8))(v14, v28);

  sub_1C86D05FC();
}

uint64_t sub_1C86D7D74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(*result + 168);

    v4(sub_1C86C3D18, a2);
  }

  return result;
}

uint64_t sub_1C86D7E38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(v5);

  return 1;
}

uint64_t sub_1C86D7EC8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return v0;
}

uint64_t sub_1C86D7EF8()
{
  sub_1C86D7EC8();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

void sub_1C86D7F50(uint64_t a1, int64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1C869F2D8(a1 + 24, &aBlock);
  _Block_copy(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKCloudKitBackingStore();
  if (!swift_dynamicCast())
  {
    if (qword_1ED5BC708 == -1)
    {
LABEL_25:
      v31 = sub_1C86F8DBC();
      __swift_project_value_buffer(v31, qword_1ED5BC790);
      v32 = sub_1C86F8DAC();
      v33 = sub_1C86F913C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C8683000, v32, v33, "CKCloudKitWriteBatch should back a CKCloudKitBackingStore", v34, 2u);
        MEMORY[0x1CCA7C540](v34, -1, -1);
      }

      sub_1C868B6E4();
      v35 = swift_allocError();
      *v36 = 1;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 3;
      v37 = sub_1C86F8B9C();
      (*(a2 + 16))(a2, v37);

      goto LABEL_32;
    }

LABEL_36:
    swift_once();
    goto LABEL_25;
  }

  v45 = v4;
  v46 = a2;
  swift_beginAccess();
  v44 = a1;
  v5 = *(a1 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a1 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v48 = *(a1 + 16);

  a2 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v47 = v7;
  if (!v11)
  {
LABEL_5:
    while (1)
    {
      v14 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_28;
      }

      v11 = *(v7 + 8 * v14);
      ++a2;
      if (v11)
      {
        a2 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_9:
  while (1)
  {
    v15 = __clz(__rbit64(v11)) | (a2 << 6);
    v16 = (*(v48 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C868FEF0(*(v48 + 56) + 32 * v15, &aBlock);
    v49 = aBlock;
    v50 = v56;

    if (!v18)
    {
      break;
    }

    aBlock = v49;
    v56 = v50;
    if (*(&v50 + 1))
    {
      sub_1C868FEF0(&aBlock, &v51);
      if (!v52)
      {
        _Block_release(v46);
        __break(1u);
LABEL_38:

        _Block_release(v46);
        sub_1C86F94BC();
        __break(1u);
        return;
      }

      sub_1C8689930(&v51, &v53);
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v54 = sub_1C86A1A20();
      *&v53 = v19;
    }

    sub_1C8689930(&v53, &v51);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1C869C918(v17, v18);
    if (__OFADD__(v13[2], (v21 & 1) == 0))
    {
      goto LABEL_34;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0);
    if (sub_1C86F93FC())
    {
      v24 = sub_1C869C918(v17, v18);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_38;
      }

      v22 = v24;
    }

    if (v23)
    {

      v26 = (v13[7] + 32 * v22);
      __swift_destroy_boxed_opaque_existential_0(v26);
      sub_1C8689930(&v51, v26);
    }

    else
    {
      v13[(v22 >> 6) + 8] |= 1 << v22;
      v27 = (v13[6] + 16 * v22);
      *v27 = v17;
      v27[1] = v18;
      sub_1C8689930(&v51, (v13[7] + 32 * v22));
      v28 = v13[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_35;
      }

      v13[2] = v30;
    }

    v11 &= v11 - 1;
    sub_1C86885EC(&aBlock);
    v7 = v47;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

LABEL_28:

  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C86903C8;
  *(v38 + 24) = v45;

  v39 = sub_1C86A227C(sub_1C86D8B78, v38);

  if (v39)
  {
    v40 = sub_1C86F8E8C();

    v41 = sub_1C86F8EEC();
    v42 = swift_allocObject();
    v42[2] = v44;
    v42[3] = sub_1C86903C8;
    v42[4] = v45;
    v57 = sub_1C86D8B64;
    v58 = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v56 = sub_1C868E054;
    *(&v56 + 1) = &block_descriptor_67_0;
    v43 = _Block_copy(&aBlock);

    [v39 saveKeysAndValues:v40 toSynchedStoreWithIdentifier:v41 completionHandler:v43];

    swift_unknownObjectRelease();
    _Block_release(v43);
  }

  else
  {
  }

  a2 = v46;
LABEL_32:
  _Block_release(a2);
}

void sub_1C86D859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_6(a1, a2, a3, a4, a5, a6, a7, a8, v61, v63, v65, v67, v69, v71, v73, v75, v76, v78, v79, v81, v82, *(&v82 + 1), v83, v84, v85, *(&v85 + 1), v86, v87, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADDB0);
  type metadata accessor for CKCloudKitBackingStore();
  if (OUTLINED_FUNCTION_12_10())
  {
    OUTLINED_FUNCTION_8_15();
    v62 = v8;
    v11 = *(v8 + 16) + 64;
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_6();
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    v70 = v11;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_3:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_26;
      }

      v10 = *(v11 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
LABEL_7:
        while (1)
        {
          OUTLINED_FUNCTION_7_18();
          v16 = *v15;
          v17 = v15[1];
          sub_1C868FEF0(v19 + 32 * v18, &aBlock);
          v74 = aBlock;
          v77 = v89;

          if (!v17)
          {
            break;
          }

          aBlock = v74;
          v89 = v77;
          if (*(&v77 + 1))
          {
            sub_1C868FEF0(&aBlock, &v82);
            if (!v84)
            {
              __break(1u);
LABEL_34:
              sub_1C86F94BC();
              __break(1u);
              return;
            }

            sub_1C8689930(&v82, &v85);
          }

          else
          {
            v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
            v87 = sub_1C86A1A20();
            *&v85 = v20;
          }

          sub_1C8689930(&v85, &v82);
          swift_isUniquelyReferenced_nonNull_native();
          v21 = OUTLINED_FUNCTION_20_5();
          sub_1C869C918(v21, v22);
          OUTLINED_FUNCTION_14_12();
          if (v25)
          {
            goto LABEL_30;
          }

          v26 = v23;
          v27 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0);
          v28 = sub_1C86F93FC();
          if (v28)
          {
            v36 = OUTLINED_FUNCTION_20_5();
            v28 = sub_1C869C918(v36, v37);
            if ((v27 & 1) != (v29 & 1))
            {
              goto LABEL_34;
            }

            v26 = v28;
          }

          if (v27)
          {

            v38 = (*(v13 + 56) + 32 * v26);
            __swift_destroy_boxed_opaque_existential_0(v38);
            sub_1C8689930(&v82, v38);
          }

          else
          {
            OUTLINED_FUNCTION_6_16(v28, v29, v30, v31, v32, v33, v34, v35, v62, v64, v66, v68, v70, v72, v74, *(&v74 + 1), v77, *(&v77 + 1), v80, v13);
            *v39 = v16;
            v39[1] = v17;
            sub_1C8689930(&v82, (*(v13 + 56) + 32 * v26));
            v40 = *(v13 + 16);
            v25 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v25)
            {
              goto LABEL_31;
            }

            *(v13 + 16) = v41;
          }

          v10 &= v10 - 1;
          sub_1C86885EC(&aBlock);
          v11 = v70;
          if (!v10)
          {
            goto LABEL_3;
          }
        }

LABEL_26:

        OUTLINED_FUNCTION_11();
        v54 = swift_allocObject();
        *(v54 + 16) = v66;
        *(v54 + 24) = v68;

        v55 = sub_1C86A227C(sub_1C86CF63C, v54);

        if (v55)
        {
          v56 = sub_1C86F8E8C();

          v57 = sub_1C86F8EEC();
          v58 = swift_allocObject();
          v58[2] = v62;
          v58[3] = v66;
          v58[4] = v68;
          OUTLINED_FUNCTION_4_18();
          OUTLINED_FUNCTION_5_17();
          *&v89 = v59;
          *(&v89 + 1) = &block_descriptor_13;
          v60 = _Block_copy(&aBlock);

          [v55 saveKeysAndValues:v56 toSynchedStoreWithIdentifier:v57 completionHandler:v60];

          swift_unknownObjectRelease();
          _Block_release(v60);
        }

        else
        {
        }

        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1ED5BC708 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v42 = sub_1C86F8DBC();
  __swift_project_value_buffer(v42, qword_1ED5BC790);
  v43 = sub_1C86F8DAC();
  v44 = sub_1C86F913C();
  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_7_1();
    v45 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v45);
    OUTLINED_FUNCTION_15_9();
    _os_log_impl(v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v52 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v52, v53);
  v9();
}

uint64_t sub_1C86D8A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    OUTLINED_FUNCTION_13_10();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADE10);
    sub_1C86F8ECC();
    swift_endAccess();
  }

  return a3(a1);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_6()
{
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_1C869F2D8(v29 + 24, &a29);
}

uint64_t sub_1C86D8CCC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADE18);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_1C86F8D6C();
  OUTLINED_FUNCTION_99();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_1_20();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  OUTLINED_FUNCTION_0_16();
  v15 = sub_1C86F8D5C();
  (*(v11 + 8))(v2, v9);
  [v14 setLocale_];

  sub_1C86F8D7C();
  v16 = sub_1C86F8D9C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) != 1)
  {
    v17 = sub_1C86F8D8C();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  [v14 setTimeZone_];

  sub_1C86D9178(a1, a2, v14);
  v18 = sub_1C86F8CCC();
  v19 = [v14 stringFromDate_];

  v20 = sub_1C86F8EFC();
  return v20;
}

uint64_t sub_1C86D8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADE18);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v26 - v10;
  v12 = sub_1C86F8D6C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_1_20();
  v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  OUTLINED_FUNCTION_0_16();
  v18 = sub_1C86F8D5C();
  (*(v14 + 8))(v4, v12);
  [v17 setLocale_];

  sub_1C86F8D7C();
  v19 = sub_1C86F8D9C();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) != 1)
  {
    v20 = sub_1C86F8D8C();
    (*(*(v19 - 8) + 8))(v11, v19);
  }

  [v17 setTimeZone_];

  sub_1C86D9178(a1, a2, v17);
  v21 = sub_1C86F8EEC();
  v22 = [v17 dateFromString_];

  if (v22)
  {
    sub_1C86F8CDC();

    v23 = 0;
    v17 = v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1C86F8D0C();
  return __swift_storeEnumTagSinglePayload(a4, v23, 1, v24);
}

void sub_1C86D9178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C86F8EEC();
  [a3 setDateFormat_];
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return MEMORY[0x1EEDC4F68](0x4F505F53555F6E65, 0xEB00000000584953);
}

char *sub_1C86D9218()
{
  result = CKLoggingSubsystem;
  if (CKLoggingSubsystem)
  {
    result = sub_1C86F8FCC();
    if (kCKLogContextFramework)
    {
      sub_1C86D9330();
      sub_1C86F8FCC();
      result = sub_1C86F925C();
      qword_1ED5BC7A8 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86D92A4()
{
  v0 = sub_1C86F8DBC();
  __swift_allocate_value_buffer(v0, qword_1ED5BC790);
  __swift_project_value_buffer(v0, qword_1ED5BC790);
  if (qword_1ED5BC6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5BC7A8;
  return sub_1C86F8DCC();
}

unint64_t sub_1C86D9330()
{
  result = qword_1ED5BC6B0;
  if (!qword_1ED5BC6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC6B0);
  }

  return result;
}

id CKVCustomTypeToNumber(unsigned int a1)
{
  if (CKVCustomTypeIsValid(a1))
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E696AD98] numberWithInteger:v2];

  return v3;
}

uint64_t CKVCustomTypeFromNumber(void *a1)
{
  v1 = [a1 integerValue];
  if (CKVCustomTypeIsValid(v1))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKVCustomTypeToFieldType(int a1)
{
  if (a1 > 99)
  {
    v2 = 18;
    v3 = 19;
    if (a1 != 102)
    {
      v3 = 0;
    }

    if (a1 != 101)
    {
      v2 = v3;
    }

    if (a1 == 100)
    {
      return 17;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 1;
        break;
      case 2:
        result = 2;
        break;
      case 3:
        result = 3;
        break;
      case 4:
        result = 4;
        break;
      case 5:
        result = 5;
        break;
      case 6:
        result = 6;
        break;
      case 7:
        result = 7;
        break;
      case 8:
        result = 8;
        break;
      case 9:
        result = 9;
        break;
      case 10:
        result = 10;
        break;
      case 11:
        result = 11;
        break;
      case 12:
        result = 12;
        break;
      case 13:
        result = 13;
        break;
      case 14:
        result = 14;
        break;
      case 15:
        result = 15;
        break;
      case 16:
        result = 16;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t CKVCustomTypeFromFieldType(uint64_t a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return word_1C86FE3E8[a1 - 1];
  }
}

void sub_1C86D9648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSEMSandboxClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSEMSandboxClass_softClass;
  v7 = getSEMSandboxClass_softClass;
  if (!getSEMSandboxClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSEMSandboxClass_block_invoke;
    v3[3] = &unk_1E831EBD0;
    v3[4] = &v4;
    __getSEMSandboxClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C86DA408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMSandboxClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SiriEntityMatcherLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SiriEntityMatcherLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E831E200;
    v6 = 0;
    SiriEntityMatcherLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriEntityMatcherLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SEMSandbox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSEMSandboxClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriEntityMatcherLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriEntityMatcherLibraryCore_frameworkLibrary = result;
  return result;
}

id getSEMDispatcherClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSEMDispatcherClass_softClass;
  v7 = getSEMDispatcherClass_softClass;
  if (!getSEMDispatcherClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSEMDispatcherClass_block_invoke;
    v3[3] = &unk_1E831EBD0;
    v3[4] = &v4;
    __getSEMDispatcherClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C86DA994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMDispatcherClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SiriEntityMatcherLibraryCore_frameworkLibrary_15)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SiriEntityMatcherLibraryCore_block_invoke_16;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E831E238;
    v6 = 0;
    SiriEntityMatcherLibraryCore_frameworkLibrary_15 = _sl_dlopen();
    v2 = v4[0];
    if (SiriEntityMatcherLibraryCore_frameworkLibrary_15)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SEMDispatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSEMDispatcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriEntityMatcherLibraryCore_block_invoke_16()
{
  result = _sl_dlopen();
  SiriEntityMatcherLibraryCore_frameworkLibrary_15 = result;
  return result;
}

void sub_1C86DC928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86DCD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C86DD2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C86DDADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86DE3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void ___sharedQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("DonateTaskSignpost", v2);
  v1 = _sharedQueue_sharedQueue;
  _sharedQueue_sharedQueue = v0;
}

__CFString *CKVocabularyAdministratorResultDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E831E3E0[a1 - 1];
  }
}

void sub_1C86E0B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__402(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _BOOLValueForKey(const __CFString *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(a1, @"com.apple.IntelligenceTasks");
  if (v2 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_BOOLValueForKey";
      v7 = 2112;
      v8 = v2;
      v9 = 2112;
      v10 = a1;
      _os_log_error_impl(&dword_1C8683000, v3, OS_LOG_TYPE_ERROR, "%s value %@ for key %@ should respond to -BOOLValue", &v5, 0x20u);
    }

    v2 = 0;
  }

  return v2;
}

void CKLogInit()
{
  if (CKLogInit_onceToken != -1)
  {
    dispatch_once(&CKLogInit_onceToken, &__block_literal_global_475);
  }
}

uint64_t __CKLogInit_block_invoke()
{
  v0 = os_log_create(CKLoggingSubsystem, kCKLogContextFramework);
  v1 = CKLogContextFramework;
  CKLogContextFramework = v0;

  v2 = os_log_create(CKLoggingSubsystem, kCKLogContextDaemon);
  v3 = CKLogContextDaemon;
  CKLogContextDaemon = v2;

  CKLogContextVocabulary = os_log_create("com.apple.siri.vocabulary", "CoreKnowledge");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__532(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86E30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C86E4014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getKMProviderBridgeFactoryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!KoaMapperLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __KoaMapperLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E831E4F8;
    v6 = 0;
    KoaMapperLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (KoaMapperLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("KMProviderBridgeFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getKMProviderBridgeFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __KoaMapperLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  KoaMapperLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *CKVTaskIdDescription(int a1)
{
  if (a1 <= 7)
  {
    v1 = @"DonateCoreRoutineLOIs";
    v11 = @"DonatePortraitEntities";
    if (a1 != 7)
    {
      v11 = 0;
    }

    if (a1 != 6)
    {
      v1 = v11;
    }

    v12 = @"DonateHomeKit";
    v13 = @"DonateKeyboardWords";
    if (a1 != 5)
    {
      v13 = 0;
    }

    if (a1 != 4)
    {
      v12 = v13;
    }

    if (a1 <= 5)
    {
      v1 = v12;
    }

    v6 = @"DonateContacts";
    v14 = @"DonateAppInfo";
    if (a1 != 3)
    {
      v14 = 0;
    }

    if (a1 != 2)
    {
      v6 = v14;
    }

    v15 = @"Undefined";
    v16 = @"DonateCustomVocabulary";
    if (a1 != 1)
    {
      v16 = 0;
    }

    if (a1)
    {
      v15 = v16;
    }

    if (a1 <= 1)
    {
      v6 = v15;
    }

    v10 = a1 <= 3;
  }

  else
  {
    v1 = @"Migration";
    v2 = @"WakePodcasts";
    v3 = @"CleanUpDeletedAppDonations";
    if (a1 != 105)
    {
      v3 = 0;
    }

    if (a1 != 104)
    {
      v2 = v3;
    }

    if (a1 != 103)
    {
      v1 = v2;
    }

    v4 = @"SiriLanguageCodeChange";
    v5 = @"Maintenance";
    if (a1 != 102)
    {
      v5 = 0;
    }

    if (a1 != 101)
    {
      v4 = v5;
    }

    if (a1 <= 102)
    {
      v1 = v4;
    }

    v6 = @"DonateFindMy";
    v7 = @"DonateRadioStation";
    if (a1 != 11)
    {
      v7 = 0;
    }

    if (a1 != 10)
    {
      v6 = v7;
    }

    v8 = @"DonateCalendarEvent";
    v9 = @"DonateGlobalTerms";
    if (a1 != 9)
    {
      v9 = 0;
    }

    if (a1 != 8)
    {
      v8 = v9;
    }

    if (a1 <= 9)
    {
      v6 = v8;
    }

    v10 = a1 <= 100;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

void CKVRegisterPostOSInstallMigrationActivity()
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D50], 1);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE8]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D88], 0);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 0);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DA8], 1);
  _RegisterXPCActivity("com.apple.siri.vocabulary.postInstallMigration", xdict, &__block_literal_global_908);
}

void _RegisterXPCActivity(const char *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___RegisterXPCActivity_block_invoke;
    v7[3] = &unk_1E831E560;
    v8 = v5;
    v9 = 0;
    xpc_activity_register(a1, a2, v7);
  }

  else
  {
    xpc_activity_unregister(a1);
  }
}

void __CKVRegisterPostOSInstallMigrationActivity_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[CKVDispatcher sharedInstance];
  [v4 runMigration:v3];
}

void CKVRegisterIndexMaintenanceActivity()
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 0);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 0);
  _RegisterXPCActivity("com.apple.siri.vocabulary.indexMaintenance", xdict, &__block_literal_global_3);
}

void __CKVRegisterIndexMaintenanceActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[CKVDispatcher sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CKVRegisterIndexMaintenanceActivity_block_invoke_2;
  v8[3] = &unk_1E831E538;
  v9 = v4;
  v7 = v4;
  [v6 runMaintenanceWithShouldDefer:v8 completion:v5];
}

void sub_1C86E66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1042(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86E720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C86E7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C86E8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSEMSandboxClass_1249()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSEMSandboxClass_softClass_1250;
  v7 = getSEMSandboxClass_softClass_1250;
  if (!getSEMSandboxClass_softClass_1250)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSEMSandboxClass_block_invoke_1251;
    v3[3] = &unk_1E831EBD0;
    v3[4] = &v4;
    __getSEMSandboxClass_block_invoke_1251(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C86EB0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMSandboxClass_block_invoke_1251(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SiriEntityMatcherLibraryCore_frameworkLibrary_1252)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SiriEntityMatcherLibraryCore_block_invoke_1253;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E831E7F8;
    v6 = 0;
    SiriEntityMatcherLibraryCore_frameworkLibrary_1252 = _sl_dlopen();
    v2 = v4[0];
    if (SiriEntityMatcherLibraryCore_frameworkLibrary_1252)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SEMSandbox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSEMSandboxClass_softClass_1250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriEntityMatcherLibraryCore_block_invoke_1253()
{
  result = _sl_dlopen();
  SiriEntityMatcherLibraryCore_frameworkLibrary_1252 = result;
  return result;
}

void sub_1C86EE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1752(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id -[CKVTaskManager _blockToCollectInstalledAppBundleIds:](CKVTaskManager *self, SEL a2, id a3)
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CKVTaskManager__blockToCollectInstalledAppBundleIds___block_invoke;
  aBlock[3] = &unk_1E831E8C0;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

id _localizationDescription(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [a2 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"{siri: %@, dictation: [%@]}", v4, v6];

  return v7;
}

void __getSEMSpanMatchQueryBuilderClass_block_invoke(uint64_t a1)
{
  SiriEntityMatcherLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SEMSpanMatchQueryBuilder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSEMSpanMatchQueryBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    SiriEntityMatcherLibrary();
  }
}

void SiriEntityMatcherLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!SiriEntityMatcherLibraryCore_frameworkLibrary_1831)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __SiriEntityMatcherLibraryCore_block_invoke_1832;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E831E9F8;
    v3 = 0;
    SiriEntityMatcherLibraryCore_frameworkLibrary_1831 = _sl_dlopen();
    v0 = v1[0];
    if (SiriEntityMatcherLibraryCore_frameworkLibrary_1831)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __SiriEntityMatcherLibraryCore_block_invoke_1832()
{
  result = _sl_dlopen();
  SiriEntityMatcherLibraryCore_frameworkLibrary_1831 = result;
  return result;
}

void sub_1C86F3E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMAppCustomVocabularySearcherClass_block_invoke(uint64_t a1)
{
  SiriEntityMatcherLibrary();
  result = objc_getClass("SEMAppCustomVocabularySearcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSEMAppCustomVocabularySearcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(CKVocabularySearcher *)v3 matchSpansOfString:v4, v5];
  }

  return result;
}

void sub_1C86F42F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMTokenizerClass_block_invoke(uint64_t a1)
{
  SiriEntityMatcherLibrary();
  result = objc_getClass("SEMTokenizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSEMTokenizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(CKVocabularySearcher *)v3 matchSpansOfUtterance:v4, v5];
  }

  return result;
}

id getSEMSpanMatcherClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSEMSpanMatcherClass_softClass;
  v7 = getSEMSpanMatcherClass_softClass;
  if (!getSEMSpanMatcherClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSEMSpanMatcherClass_block_invoke;
    v3[3] = &unk_1E831EBD0;
    v3[4] = &v4;
    __getSEMSpanMatcherClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C86F4960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSEMSpanMatcherClass_block_invoke(uint64_t a1)
{
  SiriEntityMatcherLibrary();
  result = objc_getClass("SEMSpanMatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSEMSpanMatcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(CKVocabularySearcher *)v3];
  }

  return result;
}

void sub_1C86F5B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCESRRawSpeechProfileConverterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreEmbeddedSpeechRecognitionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreEmbeddedSpeechRecognitionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E831EBF0;
    v6 = 0;
    CoreEmbeddedSpeechRecognitionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreEmbeddedSpeechRecognitionLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CESRRawSpeechProfileConverter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCESRRawSpeechProfileConverterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreEmbeddedSpeechRecognitionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreEmbeddedSpeechRecognitionLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C86F6450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1966(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86F7370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C86F73B8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, void *a15, uint64_t a16, __CFString *a17, __CFString *a18, void *a19, void *a20)
{
  v30 = v20;
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = v21 + 8;
    if (v21[31] < 0)
    {
      v22 = *v22;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
    v24 = [MEMORY[0x1E696AEC0] stringWithCString:(*(*v21 + 16))(v21) encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    a17 = @"name";
    a18 = @"message";
    a19 = v23;
    a20 = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a19 forKeys:&a17 count:2];
    v27 = [v25 initWithDomain:@"com.apple.siri.vocabulary.search" code:0 userInfo:v26];

    v28 = CKLogContextVocabulary;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v30 description];
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "[CKVMatchingSpan ontologyGraphData:]";
      WORD6(buf) = 2112;
      *(&buf + 14) = v29;
      a14 = 2112;
      a15 = v27;
      _os_log_error_impl(&dword_1C8683000, v28, OS_LOG_TYPE_ERROR, "%s Cannot extract graph data for match: %@ error: %@", &buf, 0x20u);
    }

    KVSetError();
    __cxa_end_catch();
    JUMPOUT(0x1C86F7328);
  }

  JUMPOUT(0x1C86F73B0);
}

void sub_1C86F75B8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C86F73B0);
}

void sub_1C86F7B20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C86F84D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E831E0A8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}