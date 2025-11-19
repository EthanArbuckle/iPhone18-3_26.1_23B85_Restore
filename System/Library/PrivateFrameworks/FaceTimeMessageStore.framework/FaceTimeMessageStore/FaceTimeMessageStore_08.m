uint64_t sub_1BC847B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1BC8F7914();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = sub_1BC8F7264();
  v8[10] = v12;
  v13 = *(v12 - 8);
  v8[11] = v13;
  v14 = *(v13 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC847C58, 0, 0);
}

uint64_t sub_1BC847C58()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager);
  *(v0 + 104) = v6;

  sub_1BC8F7954();
  sub_1BC8F7934();
  v7 = (*(v3 + 88))(v2, v4);
  if (v7 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v8 = 0;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x1E698F3C8])
  {
    v8 = 1;
  }

  else if (v7 == *MEMORY[0x1E698F3C0])
  {
    v8 = 2;
  }

  else
  {
    if (v7 != *MEMORY[0x1E698F3B8])
    {
      if (v7 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      }

      goto LABEL_2;
    }

    v8 = 3;
  }

LABEL_9:
  *(v0 + 112) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC847DB8, v6, 0);
}

uint64_t sub_1BC847DB8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 113) = sub_1BC872FF8(*(v0 + 96), (v0 + 112)) & 1;

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_30();
  v6(v5);
  v7 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC847E4C()
{
  OUTLINED_FUNCTION_5();
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 16);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v0 + 40);
      if (!v3)
      {
        __break(1u);
        return result;
      }

      sub_1BC87A730(*(v0 + 16), *(v0 + 32), v3, *(v0 + 48));
      swift_unknownObjectRelease();
    }
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1BC84809C()
{
  OUTLINED_FUNCTION_29_0();
  v66 = v1;
  v68 = v2;
  v69 = v3;
  v5 = v4;
  v70 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = sub_1BC8F7994();
  v16 = OUTLINED_FUNCTION_0(v15);
  v64 = v17;
  v65 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_47();
  v73 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  v25 = sub_1BC8F78F4();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v33 = v32 - v31;
  v67 = v0;
  v34 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  *(v32 - v31) = v34;
  (*(v28 + 104))(v32 - v31, *MEMORY[0x1E69E8020], v25);
  v35 = v34;
  LOBYTE(v34) = sub_1BC8F7904();
  (*(v28 + 8))(v33, v25);
  if (v34)
  {
    v71 = v24;
    v72 = v14;
    if (qword_1EDC1E1F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_18();
  swift_once();
LABEL_3:
  v36 = sub_1BC8F7734();
  __swift_project_value_buffer(v36, qword_1EDC2B2B0);

  v37 = sub_1BC8F7714();
  v38 = sub_1BC8F8204();
  if (!OUTLINED_FUNCTION_28_7(v38))
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_11_2();
  v39 = swift_slowAlloc();
  OUTLINED_FUNCTION_18();
  v74[0] = swift_slowAlloc();
  *v39 = 136446466;
  if (!v5)
  {
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  sub_1BC7EB6B4(v70, v5);
  v42 = sub_1BC7A9A4C(v40, v41, v74);

  *(v39 + 4) = v42;
  *(v39 + 12) = 2080;
  if (v8)
  {

    v43 = sub_1BC8F7AB4();
    v45 = sub_1BC7A9A4C(v43, v44, v74);

    *(v39 + 14) = v45;
    _os_log_impl(&dword_1BC7A3000, v37, v38, "Received pending incoming resource from %{public}s metadata %s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
LABEL_8:

    v74[5] = &type metadata for CoreImageBlurrer;
    v74[6] = &off_1F3B3D070;
    v74[0] = sub_1BC84A1CC;
    v74[1] = 0;
    v46 = v73;
    if (v8)
    {
      sub_1BC8400D8(v8, v73);
      sub_1BC849AE8(v74);
      v48 = v64;
      v47 = v65;
      v49 = *(v64 + 32);
      v50 = v71;
      v49(v71, v46, v65);
      v51 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v72, 1, 1, v51);
      v52 = v63;
      (*(v48 + 16))(v63, v50, v47);
      v53 = (*(v48 + 80) + 40) & ~*(v48 + 80);
      v54 = (v19 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 2) = 0;
      *(v55 + 3) = 0;
      v56 = v67;
      *(v55 + 4) = v67;
      v49(&v55[v53], v52, v47);
      v57 = v66;
      *&v55[v54] = v66;
      v58 = &v55[(v54 + 15) & 0xFFFFFFFFFFFFFFF8];
      v59 = v68;
      v60 = v69;
      *v58 = v68;
      v58[1] = v60;
      v61 = v57;
      v62 = v56;
      sub_1BC849C68(v59);
      sub_1BC8333D4();

      (*(v48 + 8))(v71, v47);
      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1BC848688@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E698F428];
  v3 = sub_1BC8F7654();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  result = sub_1BC8F7644();
  a1[3] = v3;
  a1[4] = &off_1F3B3AAF8;
  *a1 = result;
  return result;
}

uint64_t sub_1BC8486E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC848710, 0, 0);
}

void sub_1BC848710()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8487B0;
    v4 = v0[2];
    v3 = v0[3];

    sub_1BC845A78(v3, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BC8487B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 56);
  v7 = *v0;
  *(*v0 + 64) = v2;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BC8488A4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2B0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_28_7(v3))
  {
    v4 = *(v0 + 64);
    OUTLINED_FUNCTION_18_10();
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BC7A3000, v2, v3, "Decided to download message %{BOOL,public}d", v5, 8u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v6 = *(v0 + 40);

  if (v6)
  {
    v7 = *(v0 + 48);
    (*(v0 + 40))(*(v0 + 64));
    v8 = *(v0 + 8);

    v8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BC848B1C()
{
  OUTLINED_FUNCTION_29_0();
  v60 = v1;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for VideoFileTransfer();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionLock];

  v25 = v24;
  v26 = v0;
  v58 = v6;
  v59 = v26;
  v27 = v6;
  v28 = v4;
  sub_1BC8457D4(v25, v26, v27, v4, v23);

  v61 = v23;
  sub_1BC7D9558(v23, v20, &qword_1EBCF5CF8, &qword_1BC903B08);
  if (__swift_getEnumTagSinglePayload(v20, 1, v7) == 1)
  {
    sub_1BC7C1744(v20, &qword_1EBCF5CF8, &qword_1BC903B08);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v29 = sub_1BC8F7734();
    __swift_project_value_buffer(v29, qword_1EDC2B2B0);
    OUTLINED_FUNCTION_77();

    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v33 = swift_slowAlloc();
    v62 = v33;
    *v32 = 136446210;
    if (v28)
    {
      v34 = v33;
      *(v32 + 4) = OUTLINED_FUNCTION_25_8();
      _os_log_impl(&dword_1BC7A3000, v30, v31, "Somehow we're sending a message that we're not tracking in our cache %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v35 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v35);
LABEL_7:

LABEL_26:
      sub_1BC7C1744(v61, &qword_1EBCF5CF8, &qword_1BC903B08);
      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1BC849EE0(v20, v13);
  v36 = v60;
  if (v60)
  {
    v37 = v60;
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v38 = sub_1BC8F7734();
    __swift_project_value_buffer(v38, qword_1EDC2B2B0);
    OUTLINED_FUNCTION_77();

    v39 = v36;
    v40 = sub_1BC8F7714();
    v41 = sub_1BC8F81E4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v44 = swift_slowAlloc();
      v62 = v44;
      *v42 = 67240706;
      *(v42 + 4) = v57 & 1;
      *(v42 + 8) = 2082;

      if (!v28)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *(v42 + 10) = OUTLINED_FUNCTION_25_8();
      *(v42 + 18) = 2114;
      v45 = v36;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 20) = v46;
      *v43 = v46;
      _os_log_impl(&dword_1BC7A3000, v40, v41, "Finished sending %{BOOL,public}d asset with identifier %{public}s with error: %{public}@ ", v42, 0x1Cu);
      sub_1BC7C1744(v43, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
    }

    v55 = v59;
    sub_1BC845860();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC88EDF8(v55, v13);
      swift_unknownObjectRelease();
    }

LABEL_25:
    sub_1BC84950C(v13);
    goto LABEL_26;
  }

  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v47 = sub_1BC8F7734();
  __swift_project_value_buffer(v47, qword_1EDC2B2B0);
  OUTLINED_FUNCTION_77();

  v48 = sub_1BC8F7714();
  v49 = sub_1BC8F8204();

  if (!os_log_type_enabled(v48, v49))
  {
LABEL_19:

    v54 = v59;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC88E8F0(v54, v13);
      swift_unknownObjectRelease();
    }

    goto LABEL_25;
  }

  v50 = swift_slowAlloc();
  OUTLINED_FUNCTION_8_2();
  v51 = swift_slowAlloc();
  v62 = v51;
  *v50 = 67240450;
  *(v50 + 4) = v57 & 1;
  *(v50 + 8) = 2082;
  if (v28)
  {
    v52 = v51;
    *(v50 + 10) = OUTLINED_FUNCTION_25_8();
    _os_log_impl(&dword_1BC7A3000, v48, v49, "Finished sending %{BOOL,public}d asset with identifier %{public}s", v50, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v53 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x1BFB2AA50](v53);
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1BC8490B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = result;
    v8 = OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionMap;
    swift_beginAccess();
    v9 = *(v6 + v8);
    v10 = sub_1BC803CBC(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = *(v6 + v8);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v6 + v8);
      v14 = v21[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
      sub_1BC8F8734();
      v15 = *(v21[6] + 16 * v12 + 8);

      v16 = v21[7];
      v17 = type metadata accessor for VideoFileTransfer();
      sub_1BC849EE0(v16 + *(*(v17 - 8) + 72) * v12, a4);
      sub_1BC8F8754();
      *(v6 + v8) = v21;
      v18 = a4;
      v19 = 0;
      v20 = v17;
    }

    else
    {
      v20 = type metadata accessor for VideoFileTransfer();
      v18 = a4;
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VideoFileTransfer()
{
  result = qword_1EDC1EFB0;
  if (!qword_1EDC1EFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC849388()
{
  result = sub_1BC8F7994();
  if (v1 <= 0x3F)
  {
    result = sub_1BC8F7014();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC849454()
{
  result = qword_1EBCF5CA8;
  if (!qword_1EBCF5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5CA8);
  }

  return result;
}

uint64_t sub_1BC8494A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoFileTransfer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC84950C(uint64_t a1)
{
  v2 = type metadata accessor for VideoFileTransfer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BC849568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BC8F7BE4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    sub_1BC7F0E58(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E50, &qword_1BC8FE850);
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v8;
  }

  return a3;
}

id sub_1BC84966C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BC8F7BE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService_];

  return v4;
}

uint64_t sub_1BC8496F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BC83C928();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D10, &qword_1BC903558);
    OUTLINED_FUNCTION_42_6();
    v10 = *(v22 + 48);
    v11 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1(v11);
    (*(v12 + 8))(v10 + *(v12 + 72) * v7, v11);
    v13 = *(v22 + 56);
    v14 = type metadata accessor for TrackedOutgoingMessage(0);
    OUTLINED_FUNCTION_4_1(v14);
    sub_1BC849EE0(v13 + *(v15 + 72) * v7, a1);
    OUTLINED_FUNCTION_8_18();
    sub_1BC849F3C(v16, v17);
    sub_1BC8F8754();
    *v2 = v22;
    v18 = a1;
    v19 = 0;
    v20 = v14;
  }

  else
  {
    v20 = type metadata accessor for TrackedOutgoingMessage(0);
    v18 = a1;
    v19 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t sub_1BC849870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BC803CBC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
    sub_1BC8F8734();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for VideoFileTransfer();
    sub_1BC849EE0(v13 + *(*(v14 - 8) + 72) * v9, a3);
    sub_1BC8F8754();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for VideoFileTransfer();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

unint64_t sub_1BC8499B8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  result = sub_1BC83C928();
  if (v6)
  {
    v7 = result;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B50, &qword_1BC903550);
    OUTLINED_FUNCTION_42_6();
    v10 = *(v15 + 48);
    v11 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1(v11);
    (*(v12 + 8))(v10 + *(v12 + 72) * v7, v11);
    *a1 = *(*(v15 + 56) + v7);
    OUTLINED_FUNCTION_8_18();
    sub_1BC849F3C(v13, v14);
    result = sub_1BC8F8754();
    *v2 = v15;
  }

  else
  {
    *a1 = 4;
  }

  return result;
}

uint64_t sub_1BC849B3C()
{
  v2 = sub_1BC8F7994();
  OUTLINED_FUNCTION_26(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_12();
  v8 = *(v0 + v7);
  v9 = *(v0 + 32);
  v11 = *(v0 + v10);
  v12 = *(v0 + v10 + 8);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1BC84A1D0;
  v14 = OUTLINED_FUNCTION_31_6();

  return sub_1BC8486E8(v14, v15, v16, v9, v17, v8, v11, v12);
}

uint64_t sub_1BC849C68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC849C78()
{
  v2 = sub_1BC8F7994();
  OUTLINED_FUNCTION_26(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_12();
  v12 = *(v0 + 32);
  v14 = *(v0 + v13);
  v16 = *(v0 + v15);
  v17 = swift_task_alloc();
  *(v1 + 16) = v17;
  *v17 = v1;
  v17[1] = sub_1BC849DF0;
  v18 = OUTLINED_FUNCTION_31_6();

  return sub_1BC847B34(v18, v19, v20, v12, v21, v22, v14, v16);
}

uint64_t sub_1BC849DF0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BC849EE0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_7();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1BC849F3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC849F84()
{
  result = qword_1EDC20680;
  if (!qword_1EDC20680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoFileTransfer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC84A0C8()
{
  result = qword_1EBCF5D20;
  if (!qword_1EBCF5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D20);
  }

  return result;
}

unint64_t sub_1BC84A120()
{
  result = qword_1EBCF5D28;
  if (!qword_1EBCF5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D28);
  }

  return result;
}

unint64_t sub_1BC84A178()
{
  result = qword_1EBCF5D30;
  if (!qword_1EBCF5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_1BC8F89F4();
}

unint64_t sub_1BC84A1F4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 6:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

void *MessageStoreController.__allocating_init()()
{
  type metadata accessor for MessageStoreClient();
  swift_allocObject();
  v0 = sub_1BC7A5BC0();

  return sub_1BC7A6D8C(v0);
}

uint64_t static MessageStoreController.shared.getter()
{
  if (qword_1EDC20D78 != -1)
  {
    swift_once();
  }
}

void sub_1BC84A348(void *a1)
{
  v3 = *(v1 + 64);
  os_unfair_lock_lock(v3 + 4);
  sub_1BC8507C8();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1BC84A3B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = a2;
  v3 = a2;
}

uint64_t sub_1BC84A3F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return MessageStoreController.delegate.setter(v4);
}

uint64_t MessageStoreController.delegate.setter(uint64_t result)
{
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_26_7();
    sub_1BC850434(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *(*MessageStoreController.delegate.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = 0;
  a1[1] = v1;
  return sub_1BC84A494;
}

uint64_t *sub_1BC84A494(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[1];
      v4 = *result;
      swift_getObjectType();
      v5 = swift_unknownObjectRetain();
      sub_1BC850434(v5, v3);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v6 = result[1];
    v7 = *result;
    swift_getObjectType();
    v8 = OUTLINED_FUNCTION_26_7();
    sub_1BC850434(v8, v9);
  }

  return swift_unknownObjectRelease();
}

void MessageStoreController.removeDelegate(_:)()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC7A9F90();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BC84A598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1BC850208((a1 + 80), a2);
  if (!v2)
  {
    v6 = *(*(a1 + 80) + 16);
    if (v6 >= v5)
    {
      sub_1BC8B2160(v5, v6);
      return swift_endAccess();
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t MessageStoreController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return v0;
}

uint64_t MessageStoreController.__deallocating_deinit()
{
  MessageStoreController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1BC84A6C0()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(v0 + 16) = xmmword_1BC901350;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1BC84A7EC;
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_14();

  return MessageStoreController.getMessages(query:pageSize:page:)(v12, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_1BC84A7EC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  v4[6] = v1;

  sub_1BC80157C(v4[2], v4[3]);
  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v13(v0);
  }
}

uint64_t MessageStoreController.getMessages(query:pageSize:page:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 64) = *a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84A93C()
{
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B390);
  v4 = OUTLINED_FUNCTION_27_0();
  sub_1BC80156C(v4, v5);
  v6 = sub_1BC8F7714();
  sub_1BC8F8204();
  v7 = OUTLINED_FUNCTION_27_0();
  sub_1BC80157C(v7, v8);
  if (OUTLINED_FUNCTION_49_3())
  {
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    OUTLINED_FUNCTION_9();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v27 = swift_slowAlloc();
    *v11 = 136446210;
    v12 = sub_1BC80156C(v10, v9);
    SortedMessageStoreQuery.description.getter(v12);
    sub_1BC80157C(v10, v9);
    v13 = OUTLINED_FUNCTION_8_1();
    v16 = sub_1BC7A9A4C(v13, v14, v15);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = 0;
  v22 = swift_task_alloc();
  *(v0 + 80) = v22;
  *v22 = v0;
  v22[1] = sub_1BC84AB18;
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 40);

  return MessageStoreController.getMessages(query:options:pageSize:page:)();
}

uint64_t sub_1BC84AB18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_18();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 88) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v13(v0);
  }
}

uint64_t sub_1BC84AC34()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t MessageStoreController.getMessages(providers:types:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84AC70()
{
  OUTLINED_FUNCTION_71();
  v35 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B390);

  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_15_11();
    *v7 = 136446466;
    v8 = MEMORY[0x1BFB29280](v6, &type metadata for MessageStoreProvider);
    v10 = sub_1BC7A9A4C(v8, v9, &v34);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = MEMORY[0x1BFB29280](v5, &type metadata for MessageType);
    v13 = sub_1BC7A9A4C(v11, v12, &v34);

    *(v7 + 14) = v13;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v19 = v0[4];
  v20 = v0[5];
  OUTLINED_FUNCTION_21_4();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v21 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = v23 | 0x6000000000000000;
  OUTLINED_FUNCTION_21_4();
  v25 = swift_allocObject();
  v0[7] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC8FEAA0;
  *(v26 + 32) = v22;
  *(v26 + 40) = v24;
  *(v25 + 16) = v26;
  v0[2] = v25 | 0xC000000000000000;
  v0[3] = 0;

  v27 = swift_task_alloc();
  v0[8] = v27;
  *v27 = v0;
  v27[1] = sub_1BC84AF14;
  v28 = v0[6];
  OUTLINED_FUNCTION_111();

  return MessageStoreController.getMessages(query:pageSize:page:)(v29, v30, v31);
}

uint64_t sub_1BC84AF14()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[9] = v0;

  if (!v0)
  {
    v5[10] = v3;
  }

  sub_1BC80157C(v5[2], v5[3]);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC84B030()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_96();
  v3 = *(v0 + 80);

  return v2(v3);
}

uint64_t sub_1BC84B090()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t MessageStoreController.getMessages(recordUUIDs:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84B100()
{
  OUTLINED_FUNCTION_71();
  v26 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    v4 = v0[4];
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446210;
    v7 = sub_1BC8F7264();
    v8 = MEMORY[0x1BFB29280](v4, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v25);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v16 = v0[4];
  OUTLINED_FUNCTION_21_4();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_41_9(v17);
  v0[3] = 0;

  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v18[1] = sub_1BC84B2C8;
  v19 = v0[5];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.getMessages(query:pageSize:page:)(v20, v21, v22);
}

uint64_t sub_1BC84B2C8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  v4[7] = v1;

  sub_1BC80157C(v4[2], v4[3]);
  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v13(v0);
  }
}

uint64_t MessageStoreController.getMessages(query:options:pageSize:page:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  *(v1 + 24) = v7;
  Request = type metadata accessor for MessageStoreFetchRequest();
  *(v1 + 48) = Request;
  OUTLINED_FUNCTION_25(Request);
  v10 = *(v9 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_38_6();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = *v5;
  *(v1 + 88) = *v3;
  v11 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC84B4A4()
{
  v45 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B390);
  v4 = OUTLINED_FUNCTION_27_0();
  sub_1BC80156C(v4, v5);
  v6 = sub_1BC8F7714();
  sub_1BC8F8204();
  v7 = OUTLINED_FUNCTION_27_0();
  sub_1BC80157C(v7, v8);
  if (OUTLINED_FUNCTION_49_3())
  {
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_15_11();
    v43 = v11;
    *v12 = 136446466;
    v44 = v9;
    v13 = sub_1BC80156C(v11, v9);
    SortedMessageStoreQuery.description.getter(v13);
    sub_1BC80157C(v43, v9);
    v14 = OUTLINED_FUNCTION_8_1();
    v17 = sub_1BC7A9A4C(v14, v15, v16);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v0[2] = v10;
    v18 = sub_1BC8F7C94();
    v20 = sub_1BC7A9A4C(v18, v19, &v42);

    *(v12 + 14) = v20;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[8];
  v30 = v0[6];
  v29 = v0[7];
  v32 = v0[3];
  v31 = v0[4];
  if ((v26 & 4) != 0)
  {
    v33 = v26 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v33 = v0[9];
  }

  if ((v26 & 4) != 0)
  {
    v34 = v0[9] & 0x1FF;
  }

  else
  {
    v34 = 512;
  }

  sub_1BC7A5AB4(v33);
  sub_1BC8F7254();
  *(v29 + v30[5]) = v33;
  *(v29 + v30[6]) = v34;
  *(v29 + v30[7]) = v27;
  v35 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v36 = (v29 + v30[8]);
  *v36 = v35;
  v36[1] = v37;
  *(v29 + v30[9]) = v32;
  *(v29 + v30[10]) = v31;
  sub_1BC7B9D48(v29, v28);
  v38 = swift_task_alloc();
  v0[12] = v38;
  *v38 = v0;
  v38[1] = sub_1BC84B744;
  v39 = v0[8];
  v40 = v0[5];

  return MessageStoreController.getMessages(fetchRequest:)();
}

uint64_t sub_1BC84B744()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = *(v4 + 96);
  v8 = *v1;
  *v6 = *v1;
  *(v5 + 104) = v0;

  v9 = *(v4 + 64);
  if (v0)
  {
    sub_1BC7ADC24(v9);
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v5 + 56);
    sub_1BC7ADC24(v9);

    v14 = *(v8 + 8);

    return v14(v3);
  }
}

uint64_t sub_1BC84B8C8()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_27();
  v4 = v0[13];

  return v3();
}

uint64_t sub_1BC84B92C()
{
  v42 = v0;
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];
  sub_1BC8F71D4();
  sub_1BC8F7164();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_69();
  v9(v10);
  sub_1BC7AB2C0(v8, v7);
  v11 = v1;
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();

  if (os_log_type_enabled(v12, v13))
  {
    v40 = v0[17];
    v14 = v0[7];
    OUTLINED_FUNCTION_8_2();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41[0] = OUTLINED_FUNCTION_15_11();
    *v15 = 136446722;
    sub_1BC8F7264();
    sub_1BC7C0EA4();
    v17 = sub_1BC8F8A54();
    v18 = v9;
    v20 = v19;
    sub_1BC7ADC24(v14);
    v21 = sub_1BC7A9A4C(v17, v20, v41);
    v9 = v18;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E63B0];
    *(v22 + 16) = xmmword_1BC8FC230;
    v24 = OUTLINED_FUNCTION_34_7(v22, v23);
    v26 = sub_1BC7A9A4C(v24, v25, v41);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2114;
    v27 = v40;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v28;
    *v16 = v28;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "Fetch request with id %{public}s failed after %{public}ss. Error: %{public}@", v15, 0x20u);
    sub_1BC8504B8(v16);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v29 = v0[7];

    sub_1BC7ADC24(v29);
  }

  v30 = v0[17];
  v31 = v0[12];
  v32 = v0[13];
  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[7];
  v35 = v0[8];
  swift_willThrow();
  (v9)(v32, v33);

  OUTLINED_FUNCTION_27();
  v38 = v0[17];

  return v37();
}

uint64_t sub_1BC84BC18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D40, &unk_1BC903DD0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v14[-v11];
  v15 = a1;
  v16 = a2;
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8790], v5);
  return sub_1BC8F80A4();
}

uint64_t sub_1BC84BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v7 = *(Request - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  sub_1BC7AB2C0(a2, v9);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v14, v10);
  sub_1BC7B9D48(v9, v23 + v21);
  v24 = v27;
  *(v23 + v22) = v26;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

  sub_1BC8333D4();
}

uint64_t sub_1BC84BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D50, &unk_1BC903E00);
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v7[13] = Request;
  v12 = *(*(Request - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC84C0DC, 0, 0);
}

uint64_t sub_1BC84C0DC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 56);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = v3[5];
  v5 = *(v1 + v3[6]);
  *(v0 + 192) = v5;
  v6 = *(v1 + v3[7]);
  *(v0 + 128) = v6;
  v7 = (v1 + v3[8]);
  v8 = *(v1 + v4);
  *(v0 + 136) = v8;
  *(v0 + 144) = *v7;
  v9 = v7[1];
  *(v0 + 152) = v9;
  *(v0 + 160) = 0;
  sub_1BC7A5AB4(v8);

  sub_1BC8F7254();
  *(v2 + v3[5]) = v8;
  *(v2 + v3[6]) = v5;
  *(v2 + v3[7]) = v6;
  if (v9)
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  else
  {
    v10 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  }

  OUTLINED_FUNCTION_19_12(v10, v11);
  *(v12 + v13) = 0;
  sub_1BC7B9D48(v12, v14);
  v15 = swift_task_alloc();
  *(v0 + 168) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_11_12(v15);

  return MessageStoreController.getMessages(fetchRequest:)();
}

uint64_t sub_1BC84C204()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC84C308()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 176);
  *(v0 + 32) = v1;
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  sub_1BC8F8064();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_69();
  v8(v7);
  if (!(v1 >> 62))
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_15:
    v30 = *(v0 + 176);
    sub_1BC7ADC24(*(v0 + 120));

LABEL_16:
    v31 = *(v0 + 48);
    *(v0 + 40) = 0;
    sub_1BC8F8074();
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 96);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_111();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 176) < 0)
  {
    v29 = *(v0 + 176);
  }

  if (!sub_1BC8F8504())
  {
    goto LABEL_15;
  }

  v9 = sub_1BC8F8504();
LABEL_3:
  v10 = *(v0 + 176);
  v11 = *(v0 + 120);
  v12 = *(v0 + 64);

  result = sub_1BC7ADC24(v11);
  if (v9 != v12)
  {
    goto LABEL_16;
  }

  v14 = *(v0 + 160);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 160) = v15;
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 192);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    sub_1BC7A5AB4(v17);

    sub_1BC8F7254();
    *(v20 + v21[5]) = v17;
    *(v20 + v21[6]) = v19;
    *(v20 + v21[7]) = v18;
    if (v16)
    {
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);
    }

    else
    {
      v22 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    }

    OUTLINED_FUNCTION_19_12(v22, v23);
    *(v24 + v25) = v15;
    sub_1BC7B9D48(v24, v26);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    OUTLINED_FUNCTION_11_12();
    OUTLINED_FUNCTION_111();

    return MessageStoreController.getMessages(fetchRequest:)();
  }

  return result;
}

uint64_t sub_1BC84C544()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = v1[23];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B390);
  v4 = v2;
  v5 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = v1[23];
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BC7A3000, v5, v0, "Error fetching messages: %{public}@", v7, 0xCu);
    sub_1BC8504B8(v8);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = v1[23];
  v12 = v1[15];
  v13 = v1[6];

  v1[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  sub_1BC8F8074();
  sub_1BC7ADC24(v12);
  v1[3] = 0;
  sub_1BC8F8074();
  v15 = v1[14];
  v14 = v1[15];
  v16 = v1[12];

  OUTLINED_FUNCTION_27();

  return v17();
}

uint64_t MessageStoreController.saveMessage(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84C718()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v5 = v0[5];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC8504B8(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = v0[6];

  OUTLINED_FUNCTION_19_10();
  v15 = *OUTLINED_FUNCTION_50_3();
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v17 = OUTLINED_FUNCTION_8_4(v16);

  return sub_1BC8085B0(v17);
}

uint64_t MessageStoreController.markMessagesAsRead(messageUUIDs:)()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_38_6();
  v1[6] = swift_task_alloc();
  v9 = sub_1BC8F7264();
  v1[7] = v9;
  OUTLINED_FUNCTION_26(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_38_6();
  v1[10] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC84C9B4()
{
  v50 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    v4 = v0[7];
    v5 = v0[2];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    v48[0] = v7;
    *v6 = 136446210;
    v8 = OUTLINED_FUNCTION_27_0();
    v9 = MEMORY[0x1BFB29280](v8);
    v11 = sub_1BC7A9A4C(v9, v10, v48);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v17 = v0[2];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = v0[8];
    v48[0] = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    v21 = *(v20 + 16);
    v20 += 16;
    v22 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v43 = *(v20 + 56);
    v44 = v21;
    v45 = v20;
    v42 = (v20 - 8);
    do
    {
      v24 = v0[9];
      v23 = v0[10];
      v26 = v0[6];
      v25 = v0[7];
      v27 = v18;
      v28 = v0[5];
      v46 = v0[4];
      v44(v23, v22, v25);
      v44(v24, v23, v25);
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_46_6();
      v29 = sub_1BC8F7014();
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v29);
      v30 = objc_allocWithZone(type metadata accessor for MessageUpdate());
      LOBYTE(v40) = 0;
      BYTE4(v39) = 2;
      LODWORD(v39) = 0x10000;
      HIDWORD(v38) = 0x10000;
      LOBYTE(v38) = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(v24, v26, v28, 0, 0, 0, 1, 1, 0, v38, 0, 0, v39, v46, 0, 0, v40, v41, v42, v43, v44, v45, SWORD1(v45), SWORD2(v45), SBYTE6(v45), v46, v47, v48[0], SBYTE2(v48[0]), SBYTE3(v48[0]), BYTE4(v48[0]), v48[1], v48[2], v48[3], v49);
      v31 = *v42;
      v32 = OUTLINED_FUNCTION_69();
      v33(v32);
      sub_1BC8F8654();
      v34 = *(v48[0] + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v22 += v43;
      v18 = v27 - 1;
    }

    while (v27 != 1);
    v19 = v48[0];
  }

  v0[11] = v19;
  v35 = swift_task_alloc();
  v0[12] = v35;
  *v35 = v0;
  v35[1] = sub_1BC84CCFC;
  v36 = v0[3];

  return MessageStoreController.updateMessages(_:)();
}

uint64_t sub_1BC84CCFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC84CDF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_45_6();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_1BC84CE84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_45_6();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t MessageStoreController.updateMessages(_:)()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7264();
  v1[7] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1BC84CFC0()
{
  v40 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_49_3())
  {
    v4 = v0[5];
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136446210;
    v7 = sub_1BC7C0454(v4);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = v7;
      v39 = MEMORY[0x1E69E7CC0];
      sub_1BC7DDB5C();
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v33 = v6;
      v34 = v5;
      v35 = v3;
      v10 = 0;
      v11 = v0[8];
      v12 = v0[5];
      v8 = v39;
      v13 = (v11 + 16);
      v36 = v12 + 32;
      v37 = v12 & 0xC000000000000001;
      do
      {
        v14 = v9;
        v15 = v0[9];
        v16 = v0[7];
        if (v37)
        {
          v17 = MEMORY[0x1BFB29A00](v10, v0[5]);
          (*v13)(v15, v17 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          (*v13)(v15, *(v36 + 8 * v10) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v16);
        }

        v39 = v8;
        v18 = *(v8 + 16);
        if (v18 >= *(v8 + 24) >> 1)
        {
          sub_1BC7DDB5C();
          v8 = v39;
        }

        v19 = v0[9];
        v20 = v0[7];
        ++v10;
        *(v8 + 16) = v18 + 1;
        (*(v11 + 32))(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, v19, v20);
        v9 = v14;
      }

      while (v14 != v10);
      v3 = v35;
      v6 = v33;
      v5 = v34;
    }

    v21 = MEMORY[0x1BFB29280](v8, v0[7]);
    v23 = v22;

    v24 = sub_1BC7A9A4C(v21, v23, &v38);

    *(v5 + 4) = v24;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v30 = v0[6];
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_16_10();
  v31 = swift_task_alloc();
  v0[10] = v31;
  *v31 = v0;
  v32 = OUTLINED_FUNCTION_8_4(v31);

  sub_1BC808CD0(v32);
}

uint64_t sub_1BC84D2FC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t MessageStoreController.deleteMessages(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D40C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[3];
  OUTLINED_FUNCTION_21_4();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_41_9(v2);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1BC809108;
  v4 = v0[4];
  v5 = OUTLINED_FUNCTION_14();

  return MessageStoreController.deleteMessages(query:)(v5);
}

uint64_t MessageStoreController.deleteMessages(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D69C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC84D7B4()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t MessageStoreController.saveMessagesToPhotoLibrary(messageUUIDs:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D7EC()
{
  OUTLINED_FUNCTION_71();
  v28 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    v4 = v0[5];
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446210;
    v7 = sub_1BC8F7264();
    v8 = MEMORY[0x1BFB29280](v4, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v27);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v16 = v0[6];
  v0[7] = *(v0[5] + 16);
  OUTLINED_FUNCTION_19_10();
  v0[8] = 0;
  if (!v0[7])
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_48_4();

    __asm { BRAA            X1, X16 }
  }

  v17 = v0[5];
  v18 = v0[6];
  v19 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v19);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  OUTLINED_FUNCTION_16_10();
  v22 = swift_task_alloc();
  v0[9] = v22;
  *v22 = v0;
  v22[1] = sub_1BC84DA14;
  OUTLINED_FUNCTION_48_4();

  return sub_1BC80889C();
}

uint64_t sub_1BC84DA14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1BC84DB2C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[7];
  v2 = v0[8] + 1;
  v0[8] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_11();

    return v3();
  }

  else
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v7);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v2;
    v11 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_1BC84DA14;
    OUTLINED_FUNCTION_14();

    return sub_1BC80889C();
  }
}

uint64_t sub_1BC84DC7C()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10();
  v11 = *OUTLINED_FUNCTION_50_3();
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_1BC834FA4;

  return sub_1BC80924C();
}

uint64_t sub_1BC84DDB4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1BC84DEC8;
  v11 = *(v0 + 16);

  return MessageStoreController.getAccountInfo()();
}

uint64_t sub_1BC84DEC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_43_5();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1BC84DFF0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus];

  OUTLINED_FUNCTION_96();

  return v3(v2);
}

uint64_t sub_1BC84E074()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = *(v0 + 16);

  if (*(v10 + 56))
  {
    OUTLINED_FUNCTION_27();
    v17 = v11;
    v13 = v12;

    return v17(v13);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_1BC84E1D4;
    v16 = *(v0 + 16);

    return sub_1BC84E2BC();
  }
}

uint64_t sub_1BC84E1D4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_18();
  v4 = *(v3 + 24);
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_96();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1BC84E2DC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_16_10();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1BC84E374;

  return sub_1BC8094EC();
}

uint64_t sub_1BC84E374()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 56) = v0;
    v12 = OUTLINED_FUNCTION_43_5();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1BC84E49C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = v1;
  sub_1BC84A348(v1);
  OUTLINED_FUNCTION_96();
  v5 = *(v0 + 56);

  return v4(v5);
}

uint64_t MessageStoreController.reportTranscriptionAccuracy(for:wasAccurate:)()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 88) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v0;
  v4 = sub_1BC8F7264();
  *(v1 + 56) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 64) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC84E5B8()
{
  v30 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B390);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v28 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_15_11();
    *v12 = 136446722;
    *(v12 + 4) = sub_1BC7A9A4C(0xD00000000000002DLL, 0x80000001BC90C250, &v29);
    *(v12 + 12) = 2082;
    sub_1BC7C0EA4();
    v13 = sub_1BC8F8A54();
    v15 = v14;
    v16 = *(v10 + 8);
    v17 = OUTLINED_FUNCTION_8_1();
    v18(v17);
    v19 = sub_1BC7A9A4C(v13, v15, &v29);

    *(v12 + 14) = v19;
    *(v12 + 22) = 1026;
    *(v12 + 24) = v28;
    _os_log_impl(&dword_1BC7A3000, v6, v7, "%{public}s: %{public}s wasAccurate: %{BOOL,public}d", v12, 0x1Cu);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v20 = *(v10 + 8);
    v21 = OUTLINED_FUNCTION_8_1();
    v22(v21);
  }

  v23 = *(v0 + 48);
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_16_10();
  v24 = swift_task_alloc();
  *(v0 + 80) = v24;
  *v24 = v0;
  v24[1] = sub_1BC85077C;
  v25 = *(v0 + 88);
  v26 = *(v0 + 40);

  return sub_1BC809778();
}

uint64_t MessageStoreController.getDatabaseURL()()
{
  v1 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B390);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000010, 0x80000001BC90C230, &v9);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  swift_beginAccess();
  v7 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  return sub_1BC809B18();
}

uint64_t sub_1BC84E998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(v6, &v34);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - added messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message();
        v28 = sub_1BC8F7E34();
        [v13 v11[160]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t sub_1BC84EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(v6, &v34);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - updated messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message();
        v28 = sub_1BC8F7E34();
        [v13 v11[159]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t sub_1BC84EF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(v6, &v34);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - deleted messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message();
        v28 = sub_1BC8F7E34();
        [v13 v11[276]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t sub_1BC84F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(v6, &v34);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2082;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - deleted messages %{public}s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        sub_1BC8F7264();
        v28 = sub_1BC8F7E34();
        [v13 v11[158]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

void sub_1BC84F598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 72);
  os_unfair_lock_lock(v4 + 4);
  sub_1BC8507B0(v5, &v23);
  os_unfair_lock_unlock(v4 + 4);
  v6 = *(v23 + 16);
  if (v6)
  {
    v7 = v23 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    do
    {
      sub_1BC7AA5C8(v7, &v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v11 = sub_1BC8F7734();
        __swift_project_value_buffer(v11, qword_1EDC2B390);

        v12 = a3;
        v13 = sub_1BC8F7714();
        v14 = sub_1BC8F8204();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v17 = a3;
          v18 = swift_slowAlloc();
          v22 = v18;
          *v15 = 136446466;
          *(v15 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, &v22);
          *(v15 + 12) = 2114;
          *(v15 + 14) = v12;
          *v16 = v17;
          v19 = v12;
          _os_log_impl(&dword_1BC7A3000, v13, v14, "Callback from daemon to delegate %{public}s - account info changed %{public}@", v15, 0x16u);
          sub_1BC8504B8(v16);
          v20 = v16;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v20, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v18);
          v21 = v18;
          a3 = v17;
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v15, -1, -1);
        }

        if ([v10 respondsToSelector_])
        {
          [v10 messageStoreAccountInfoDidChange_];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v23);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

uint64_t sub_1BC84F840(uint64_t a1)
{
  v1 = *(a1 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC8507B0(v2, &v24);
  os_unfair_lock_unlock(v1 + 4);
  v3 = *(v24 + 16);
  if (v3)
  {
    v4 = v24 + 32;
    v5 = &off_1E7FF5000;
    v6 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v4, &v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        if (qword_1EDC20720 != -1)
        {
          swift_once();
        }

        v9 = sub_1BC8F7734();
        __swift_project_value_buffer(v9, qword_1EDC2B390);
        swift_unknownObjectRetain();
        v10 = sub_1BC8F7714();
        v11 = sub_1BC8F81E4();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23 = v21;
          *v12 = 136446210;
          ObjectType = swift_getObjectType();
          v22 = v8;
          v14 = sub_1BC8073F0(&v22, ObjectType);
          v20 = v11;
          v16 = v6;
          v17 = v5;
          v18 = sub_1BC7A9A4C(v14, v15, &v23);

          *(v12 + 4) = v18;
          v5 = v17;
          v6 = v16;
          _os_log_impl(&dword_1BC7A3000, v10, v20, "Callback from daemon to delegate %{public}s - reconnected", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v12, -1, -1);
        }

        if ([v8 v6[275]])
        {
          [v8 v5[156]];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v24);
      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BC84FAA0(uint64_t a1)
{
  v1 = *(a1 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(v2, &v24);
  os_unfair_lock_unlock(v1 + 4);
  v3 = *(v24 + 16);
  if (v3)
  {
    v4 = v24 + 32;
    v5 = &off_1E7FF5000;
    v6 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v4, &v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        if (qword_1EDC20720 != -1)
        {
          swift_once();
        }

        v9 = sub_1BC8F7734();
        __swift_project_value_buffer(v9, qword_1EDC2B390);
        swift_unknownObjectRetain();
        v10 = sub_1BC8F7714();
        v11 = sub_1BC8F81E4();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23 = v21;
          *v12 = 136446210;
          ObjectType = swift_getObjectType();
          v22 = v8;
          v14 = sub_1BC8073F0(&v22, ObjectType);
          v20 = v11;
          v16 = v6;
          v17 = v5;
          v18 = sub_1BC7A9A4C(v14, v15, &v23);

          *(v12 + 4) = v18;
          v5 = v17;
          v6 = v16;
          _os_log_impl(&dword_1BC7A3000, v10, v20, "Callback from daemon to delegate %{public}s - protected apps changed", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v12, -1, -1);
        }

        if ([v8 v6[275]])
        {
          [v8 v5[155]];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v24);
      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BC84FD00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  v5 = *(v4 + 16);
  v6 = v4 + 32;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v8)
    {

      v13 = *(a1 + 80);
      *(a1 + 80) = v9;

      *a2 = *(a1 + 80);
    }

    if (v8 >= *(v4 + 16))
    {
      break;
    }

    sub_1BC7AA5C8(v6, v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BC8506F0(v15, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BC7DDD24(0, *(v9 + 16) + 1, 1);
        v9 = v16;
      }

      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BC7DDD24((v11 > 1), v12 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      result = sub_1BC8506F0(v14, v9 + 8 * v12 + 32);
    }

    else
    {
      result = sub_1BC7AA648(v15);
    }

    v6 += 8;
    ++v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC84FEF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = sub_1BC8F7E54();

  a5(v6);
}

uint64_t sub_1BC84FFD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return a2(v2, v2, a1);
}

void MessageStoreController.messageStoreAccountInfoDidChange(_:)(void *a1)
{
  v3 = a1;
  sub_1BC84A348(a1);
  v4 = v3;

  sub_1BC84F598(v5, v1, v4);
}

uint64_t sub_1BC850150(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void *sub_1BC850194(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1BC8501CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&var1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_1BC850208(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BC85039C(v6, a2);
  if (v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 8 * result + 40; ; i += 8)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        goto LABEL_5;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_1BC7AA5C8(v6 + i, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_unknownObjectRelease();
        result = sub_1BC7AA648(v17);
        if (v13 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1BC7AA648(v17);
      }

      if (v9 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v14 = *(v6 + 16);
        if (v3 >= v14)
        {
          goto LABEL_27;
        }

        result = sub_1BC7AA5C8(v6 + 32 + 8 * v3, v17);
        if (v9 >= v14)
        {
          goto LABEL_28;
        }

        sub_1BC7AA5C8(v6 + i, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC8301EC(v6);
          v6 = v15;
        }

        result = sub_1BC850744(&v16, v6 + 8 * v3 + 32);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        result = sub_1BC850744(v17, v6 + i);
        *a1 = v6;
      }

      ++v3;
LABEL_24:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC85039C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 8)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

void sub_1BC850434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  os_unfair_lock_lock(v2 + 4);
  sub_1BC8507C8();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BC8504B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC850544()
{
  OUTLINED_FUNCTION_71();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  OUTLINED_FUNCTION_26(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  Request = type metadata accessor for MessageStoreFetchRequest();
  OUTLINED_FUNCTION_26(Request);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + v14);
  v18 = *(v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v2 + 16) = v19;
  *v19 = v2;
  v19[1] = sub_1BC7B0168;

  return sub_1BC84BFD0(v4, v15, v16, v0 + v7, v0 + v12, v17, v18);
}

void *OUTLINED_FUNCTION_50_3()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

void sub_1BC8507FC()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v16 = sub_1BC8F7264();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v88 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v89 = v25;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81 - v27;
  v29 = [v0 messageType];
  if (v29 <= 2)
  {
    v30 = v29;
    v85 = v11;
    v86 = v28;
    v90 = v19;
    v31 = v0;
    sub_1BC80BF48(v30);
    v92[4] = v31;
    v32 = swift_readAtKeyPath();
    sub_1BC7C4DAC(v33, v15, &unk_1EBCF5D70, &qword_1BC8FC740);
    v32(v92, 0);

    OUTLINED_FUNCTION_43(v15, 1, v16);
    if (v34)
    {
      sub_1BC7C1744(v15, &unk_1EBCF5D70, &qword_1BC8FC740);
    }

    else
    {
      v35 = *(v90 + 32);
      v91 = v16;
      v83 = v90 + 32;
      v84 = v2;
      v82 = v35;
      v35(v86, v15, v16);
      v36 = sub_1BC80BF98(v30);
      v37 = sub_1BC7C0454(v4);
      v38 = 0;
      v39 = v4 & 0xC000000000000001;
      v40 = v4 & 0xFFFFFFFFFFFFFF8;
      v87 = MEMORY[0x1E69E7CC0];
      while (v37 != v38)
      {
        if (v39)
        {
          v41 = MEMORY[0x1BFB29A00](v38, v4);
        }

        else
        {
          if (v38 >= *(v40 + 16))
          {
            goto LABEL_25;
          }

          v41 = *(v4 + 8 * v38 + 32);
        }

        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v43 = v4;
        v92[0] = v41;
        v44 = v41;
        v45 = v36;
        swift_getAtKeyPath();

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v91);
        sub_1BC7C1744(v1, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (EnumTagSinglePayload == 1)
        {

          ++v38;
          v36 = v45;
          v4 = v43;
        }

        else
        {
          v92[0] = v44;
          v47 = v44;
          v48 = v85;
          v36 = v45;
          swift_getAtKeyPath();
          v49 = v91;
          OUTLINED_FUNCTION_43(v48, 1, v91);
          if (v34)
          {
            __break(1u);
            return;
          }

          v50 = v82;
          v82(v84, v48, v49);
          v50(v89, v84, v49);
          v51 = v87;
          v4 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v51 + 16);
            sub_1BC7F7144();
            v51 = v56;
          }

          v53 = *(v51 + 16);
          v52 = *(v51 + 24);
          v87 = v51;
          if (v53 >= v52 >> 1)
          {
            sub_1BC7F7144();
            v87 = v57;
          }

          v54 = v87;
          *(v87 + 16) = v53 + 1;
          v82(v54 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v53, v89, v91);
          v38 = v42;
        }
      }

      if (qword_1EDC20728 == -1)
      {
        goto LABEL_20;
      }

LABEL_26:
      OUTLINED_FUNCTION_0_19();
LABEL_20:
      v58 = sub_1BC8F7734();
      __swift_project_value_buffer(v58, qword_1EDC2B3A8);
      v60 = v90;
      v59 = v91;
      v61 = v88;
      v62 = v86;
      (*(v90 + 16))(v88, v86, v91);

      v63 = sub_1BC8F7714();
      v64 = sub_1BC8F8204();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v85 = v36;
        v66 = v65;
        v89 = swift_slowAlloc();
        v92[0] = v89;
        *v66 = 134218754;
        *(v66 + 4) = sub_1BC7C0454(v4);

        *(v66 + 12) = 2080;
        OUTLINED_FUNCTION_2_18();
        sub_1BC8556EC(v67, v68);
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_45_7();
        v69 = v60 + 8;
        v70 = *(v60 + 8);
        v90 = v69;
        v71 = OUTLINED_FUNCTION_36_8();
        v70(v71);
        v72 = sub_1BC7A9A4C(v61, v4, v92);

        *(v66 + 14) = v72;
        *(v66 + 22) = 2080;
        v73 = sub_1BC8F8484();
        v75 = v74;
        v76 = sub_1BC7A9A4C(v73, v74, v92);

        *(v66 + 24) = v76;
        *(v66 + 32) = 2080;
        v77 = OUTLINED_FUNCTION_60_2();
        MEMORY[0x1BFB29280](v77);
        OUTLINED_FUNCTION_45_7();

        v78 = sub_1BC7A9A4C(v75, v76, v92);

        *(v66 + 34) = v78;
        _os_log_impl(&dword_1BC7A3000, v63, v64, "Found %ld duplicates for %s: %s %s", v66, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        (v70)(v86, v59);
      }

      else
      {

        v79 = *(v60 + 8);
        v80 = OUTLINED_FUNCTION_36_8();
        v79(v80);
        (v79)(v62, v59);
      }
    }
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC850EE8()
{
  OUTLINED_FUNCTION_29_0();
  v5 = v0;
  v7 = v6;
  v8 = sub_1BC8F7264();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_10();
  v17 = [v5 recordUUID];
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = v17;
  sub_1BC8F7244();

  v19 = *(v11 + 32);
  v19(v4, v3, v8);
  v20 = [v5 conversationID];
  if (!v20)
  {
    (*(v11 + 8))(v4, v8);
LABEL_5:
    v34 = 0xF000000000000007;
    goto LABEL_6;
  }

  v21 = v20;
  sub_1BC8F7244();

  v19(v1, v2, v8);
  OUTLINED_FUNCTION_21_4();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
  v35 = v1;
  v23 = *(v11 + 72);
  v36 = v7;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC8FC230;
  v26 = *(v11 + 16);
  v26(v25 + v24, v4, v8);
  *(v22 + 16) = v25;
  v27 = v22 | 0x1000000000000000;
  OUTLINED_FUNCTION_21_4();
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC8FC230;
  v26(v29 + v24, v35, v8);
  *(v28 + 16) = v29;
  v30 = v28 | 0x2000000000000000;
  OUTLINED_FUNCTION_21_4();
  v31 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC8FEAA0;
  *(v32 + 32) = v27;
  *(v32 + 40) = v30;
  v33 = *(v11 + 8);
  v33(v35, v8);
  v33(v4, v8);
  v7 = v36;
  *(v31 + 16) = v32;
  v34 = v31 | 0xC000000000000000;
LABEL_6:
  *v7 = v34;
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8511D8(uint64_t a1)
{
  sub_1BC85510C(*a1, *(a1 + 8), *(a1 + 16));
  v3 = v2;

  OUTLINED_FUNCTION_79();
  v4 = sub_1BC8F7BE4();
  [v1 willChangeValueForKey_];

  if (v3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_30();
    sub_1BC7EC5DC(v6, v7);
    OUTLINED_FUNCTION_30();
    v5 = sub_1BC8F70C4();
    v8 = OUTLINED_FUNCTION_30();
    sub_1BC7ECAC8(v8, v9);
  }

  OUTLINED_FUNCTION_79();
  v10 = sub_1BC8F7BE4();
  [v1 setPrimitiveValue:v5 forKey:v10];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_79();
  v11 = sub_1BC8F7BE4();
  [v1 didChangeValueForKey_];

  v12 = OUTLINED_FUNCTION_30();

  return sub_1BC7ECAC8(v12, v13);
}

void FTStoredMessage.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v6 = v0;
  v301[5] = *MEMORY[0x1E69E9840];
  v7 = sub_1BC8F7C64();
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v11);
  v12 = sub_1BC8F7134();
  v13 = OUTLINED_FUNCTION_0(v12);
  v290 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v17);
  v289 = sub_1BC8F7154();
  v18 = OUTLINED_FUNCTION_0(v289);
  v288 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v22);
  v294 = sub_1BC8F71E4();
  v23 = OUTLINED_FUNCTION_0(v294);
  v286 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_4();
  v285 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v29 = OUTLINED_FUNCTION_25(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v37);
  v295 = sub_1BC8F7264();
  v38 = OUTLINED_FUNCTION_0(v295);
  v293 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4_4();
  v292 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v44 = OUTLINED_FUNCTION_25(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v275[-v51];
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v275[-v56];
  *&v299 = 0x555564726F636572;
  *(&v299 + 1) = 0xEA00000000004449;
  v58 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v296 = v6;
  v59 = [v6 recordUUID];
  v291 = v12;
  if (v59)
  {
    isUniquelyReferenced_nonNull_native = v59;
    sub_1BC8F7244();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  OUTLINED_FUNCTION_83_1(v5, v60);
  sub_1BC8555B8(v5, v57, &unk_1EBCF5D70, &qword_1BC8FC740);
  v61 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v61, v62, v12))
  {
    sub_1BC7C1744(v57, &unk_1EBCF5D70, &qword_1BC8FC740);
    v63 = MEMORY[0x1E69E7CC8];
    v64 = sub_1BC83C8E8();
    if (v65)
    {
      v66 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v298 = v63;
      v67 = *(v63 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v68 + v66 * v69);
      sub_1BC7F0E58((*(v67 + 56) + 32 * v66), &v299);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
      v67 = MEMORY[0x1E69E7CC8];
    }

    v74 = v276;
    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
    v70 = v293;
    isUniquelyReferenced_nonNull_native = v292;
    (*(v293 + 16))(v292, v57, v12);
    sub_1BC7C1744(v57, &unk_1EBCF5D70, &qword_1BC8FC740);
    v71 = sub_1BC8F7204();
    v73 = v72;
    (*(v70 + 8))(isUniquelyReferenced_nonNull_native, v12);
    v300 = v58;
    *&v299 = v71;
    *(&v299 + 1) = v73;
    OUTLINED_FUNCTION_29_5();
    swift_isUniquelyReferenced_nonNull_native();
    v297 = v3;
    OUTLINED_FUNCTION_8();
    v67 = v297;
    sub_1BC8037DC(v301);
    v74 = v276;
  }

  *&v299 = 0x444955556C6C6163;
  *(&v299 + 1) = 0xE800000000000000;
  v75 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v76 = OUTLINED_FUNCTION_28_8();
  v78 = [v76 v77];
  if (v78)
  {
    v79 = v78;
    sub_1BC8F7244();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  OUTLINED_FUNCTION_83_1(v4, v80);
  v81 = v4;
  v82 = v12;
  sub_1BC8555B8(v81, v2, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v2, 1, v12))
  {
    sub_1BC7C1744(v2, &unk_1EBCF5D70, &qword_1BC8FC740);
    v83 = sub_1BC83C8E8();
    if (v84)
    {
      v85 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v298 = v67;
      v67 = *(v67 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v86 + v85 * v87);
      OUTLINED_FUNCTION_51_3(*(v67 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v92 = v277;
    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v88 = OUTLINED_FUNCTION_38_7();
    v89(v88, v2, v12);
    sub_1BC7C1744(v2, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_45_7();
    v90 = OUTLINED_FUNCTION_77_1();
    v91(v90);
    v300 = v75;
    *&v299 = v3;
    *(&v299 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    swift_isUniquelyReferenced_nonNull_native();
    v297 = v67;
    OUTLINED_FUNCTION_8();
    v67 = v297;
    sub_1BC8037DC(v301);
    v92 = v277;
  }

  strcpy(&v299, "conversationID");
  HIBYTE(v299) = -18;
  v93 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v94 = OUTLINED_FUNCTION_28_8();
  v96 = [v94 v95];
  if (v96)
  {
    v97 = v96;
    sub_1BC8F7244();

    v98 = 0;
  }

  else
  {
    v98 = 1;
  }

  __swift_storeEnumTagSinglePayload(v92, v98, 1, v82);
  sub_1BC8555B8(v92, v52, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v52, 1, v82))
  {
    sub_1BC7C1744(v52, &unk_1EBCF5D70, &qword_1BC8FC740);
    v99 = sub_1BC83C8E8();
    if (v100)
    {
      v101 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v298 = v67;
      v67 = *(v67 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v102 + v101 * v103);
      OUTLINED_FUNCTION_51_3(*(v67 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v104 = OUTLINED_FUNCTION_38_7();
    v105(v104, v52, v82);
    sub_1BC7C1744(v52, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_45_7();
    v106 = OUTLINED_FUNCTION_77_1();
    v107(v106);
    v300 = v93;
    *&v299 = v3;
    *(&v299 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    swift_isUniquelyReferenced_nonNull_native();
    v297 = v67;
    OUTLINED_FUNCTION_8();
    v67 = v297;
    sub_1BC8037DC(v301);
  }

  *&v299 = 0x546567617373656DLL;
  *(&v299 + 1) = 0xEB00000000657079;
  v108 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v109 = v296;
  v110 = [v296 messageType];
  v111 = MEMORY[0x1E69E7290];
  v300 = MEMORY[0x1E69E7290];
  LOWORD(v299) = v110;
  OUTLINED_FUNCTION_29_5();
  swift_isUniquelyReferenced_nonNull_native();
  v297 = v67;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_43_4();
  *&v299 = 1836020326;
  *(&v299 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v112 = sub_1BC7C19F8(v109, &selRef_from);
  if (v113)
  {
    sub_1BC7EB6B4(v112, v113);
    isUniquelyReferenced_nonNull_native = v114;
    v67 = v115;

    v300 = v108;
    *&v299 = isUniquelyReferenced_nonNull_native;
    *(&v299 + 1) = v67;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_59_2();
    v116 = v278;
  }

  else
  {
    OUTLINED_FUNCTION_52();
    v116 = v278;
    if (v117)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v118 + v108 * v119);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_59_2();
    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v299 = 0x72656469766F7270;
  *(&v299 + 1) = 0xE800000000000000;
  v120 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v121 = OUTLINED_FUNCTION_28_8();
  v123 = sub_1BC7C19F8(v121, v122);
  if (v124)
  {
    v300 = v120;
    *&v299 = v123;
    *(&v299 + 1) = v124;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v125)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v126 + v108 * v127);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v299 = 0x6165724365746164;
  *(&v299 + 1) = 0xEB00000000646574;
  v128 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v129 = OUTLINED_FUNCTION_28_8();
  v131 = [v129 v130];
  if (v131)
  {
    v132 = v131;
    sub_1BC8F71B4();

    v133 = 0;
  }

  else
  {
    v133 = 1;
  }

  OUTLINED_FUNCTION_73_0(v74, v133);
  sub_1BC8555B8(v74, v116, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v116, 1, v67))
  {
    sub_1BC7C1744(v116, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v134)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v135 + v128 * v136);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v145 = v279;
    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    v138 = *(v137 - 256);
    v139(v138, v116, v67);
    sub_1BC7C1744(v116, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v140 = v287;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    v141 = sub_1BC8F71C4();
    v142 = OUTLINED_FUNCTION_30_8();
    v143(v142);
    (*(v288 + 8))(v140, v289);
    v144 = v111;
    v111 = v74;
    (*(v144 + 8))(v138, v67);
    v300 = v128;
    *&v299 = v141;
    *(&v299 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_43_4();
    v145 = v279;
  }

  *&v299 = 0x656C654465746164;
  *(&v299 + 1) = 0xEB00000000646574;
  v146 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v147 = OUTLINED_FUNCTION_28_8();
  v149 = [v147 v148];
  if (v149)
  {
    v150 = v149;
    sub_1BC8F71B4();

    v151 = 0;
  }

  else
  {
    v151 = 1;
  }

  OUTLINED_FUNCTION_73_0(v145, v151);
  v152 = v280;
  sub_1BC8555B8(v145, v280, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v153 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v153, v154, v67))
  {
    sub_1BC7C1744(v152, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v155)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v156 + v146 * v157);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v167 = v281;
    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v158 = v286;
    v159 = *(v286 + 16);
    v160 = v285;
    v161 = OUTLINED_FUNCTION_29();
    v162(v161);
    sub_1BC7C1744(v152, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v163 = v287;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    v164 = sub_1BC8F71C4();
    v165 = OUTLINED_FUNCTION_30_8();
    v166(v165);
    (*(v288 + 8))(v163, v289);
    (*(v158 + 8))(v160, v67);
    v300 = v146;
    *&v299 = v164;
    *(&v299 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_43_4();
    v167 = v281;
  }

  strcpy(&v299, "dateModified");
  BYTE13(v299) = 0;
  HIWORD(v299) = -5120;
  v168 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v169 = OUTLINED_FUNCTION_28_8();
  v171 = [v169 v170];
  if (v171)
  {
    v172 = v171;
    sub_1BC8F71B4();

    v173 = 0;
  }

  else
  {
    v173 = 1;
  }

  OUTLINED_FUNCTION_73_0(v167, v173);
  v174 = v282;
  sub_1BC8555B8(v167, v282, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v175 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v175, v176, v67))
  {
    sub_1BC7C1744(v174, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v177 = OUTLINED_FUNCTION_52();
    if (v178)
    {
      v167 = v177;
      swift_isUniquelyReferenced_nonNull_native();
      v298 = v52;
      v179 = *(v52 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v180 + v167 * v181);
      sub_1BC7F0E58((*(v52 + 7) + 32 * v167), &v299);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    v167 = *(v182 - 256);
    v183 = OUTLINED_FUNCTION_29();
    v184(v183);
    sub_1BC7C1744(v174, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v185 = v287;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    sub_1BC8F71C4();
    OUTLINED_FUNCTION_45_7();
    (*(v290 + 8))(v67, v291);
    (*(v288 + 8))(v185, v289);
    (*(v111 + 8))(v167, v67);
    v111 = v74;
    v300 = v168;
    *&v299 = v167;
    *(&v299 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_43_4();
  }

  *&v299 = 0x646165527369;
  *(&v299 + 1) = 0xE600000000000000;
  v186 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v187 = v296;
  v188 = [v296 isRead];
  v189 = MEMORY[0x1E69E6370];
  v300 = MEMORY[0x1E69E6370];
  LOBYTE(v299) = v188;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0x6E6F697461727564;
  *(&v299 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  [v187 duration];
  v300 = MEMORY[0x1E69E63B0];
  *&v299 = v190;
  OUTLINED_FUNCTION_16_11();
  v191 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v191, v192);
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0x54786F626C69616DLL;
  *(&v299 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v193 = [v187 mailboxType];
  v300 = v111;
  LOWORD(v299) = v193;
  OUTLINED_FUNCTION_16_11();
  v194 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v194, v195);
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0x7469736E65537369;
  *(&v299 + 1) = 0xEB00000000657669;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v196 = [v187 isSensitive];
  v300 = v189;
  LOBYTE(v299) = v196;
  OUTLINED_FUNCTION_16_11();
  v197 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v197, v198);
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0x5454527369;
  *(&v299 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v199 = [v187 isRTT];
  v300 = v189;
  LOBYTE(v299) = v199;
  OUTLINED_FUNCTION_16_11();
  v200 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v200, v201);
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0xD000000000000013;
  *(&v299 + 1) = 0x80000001BC90B210;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v202 = [v187 transcriptionStatus];
  v300 = v111;
  LOWORD(v299) = v202;
  OUTLINED_FUNCTION_16_11();
  v203 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v203, v204);
  OUTLINED_FUNCTION_50_4();
  *&v299 = 0x7974696C617571;
  *(&v299 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v205 = sub_1BC7C19F8(v187, &selRef_quality);
  if (v206)
  {
    v300 = v186;
    *&v299 = v205;
    *(&v299 + 1) = v206;
    OUTLINED_FUNCTION_16_11();
    v207 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v207, v208);
    OUTLINED_FUNCTION_50_4();
    v209 = v295;
  }

  else
  {
    v210 = OUTLINED_FUNCTION_87();
    v209 = v295;
    if (v211)
    {
      v212 = v210;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v213 + v212 * v214);
      OUTLINED_FUNCTION_51_3(*(v167 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v299 = 0x6E65697069636572;
  *(&v299 + 1) = 0xE900000000000074;
  v215 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v216 = OUTLINED_FUNCTION_28_8();
  v218 = sub_1BC7C19F8(v216, v217);
  if (v219)
  {
    sub_1BC7EB6B4(v218, v219);
    v221 = v220;
    v223 = v222;

    v300 = v215;
    *&v299 = v221;
    *(&v299 + 1) = v223;
    OUTLINED_FUNCTION_16_11();
    v224 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v224, v225);
    OUTLINED_FUNCTION_50_4();
  }

  else
  {
    v226 = OUTLINED_FUNCTION_87();
    if (v227)
    {
      v228 = v226;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v229 + v228 * v230);
      OUTLINED_FUNCTION_51_3(*(v167 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v299 = 0x44496D6973;
  *(&v299 + 1) = 0xE500000000000000;
  v231 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v232 = OUTLINED_FUNCTION_28_8();
  v234 = sub_1BC7C19F8(v232, v233);
  if (v235)
  {
    v300 = v231;
    *&v299 = v234;
    *(&v299 + 1) = v235;
    OUTLINED_FUNCTION_16_11();
    v236 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v236, v237);
    OUTLINED_FUNCTION_50_4();
  }

  else
  {
    v238 = OUTLINED_FUNCTION_87();
    if (v239)
    {
      v240 = v238;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v241 + v240 * v242);
      OUTLINED_FUNCTION_51_3(*(v167 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  strcpy(&v299, "reminderUUID");
  BYTE13(v299) = 0;
  HIWORD(v299) = -5120;
  v243 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v244 = OUTLINED_FUNCTION_28_8();
  v246 = [v244 v245];
  if (v246)
  {
    v247 = v246;
    v248 = v283;
    sub_1BC8F7244();

    v249 = 0;
  }

  else
  {
    v249 = 1;
    v248 = v283;
  }

  __swift_storeEnumTagSinglePayload(v248, v249, 1, v209);
  v250 = v284;
  sub_1BC8555B8(v248, v284, &unk_1EBCF5D70, &qword_1BC8FC740);
  v251 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v251, v252, v209))
  {
    sub_1BC7C1744(v250, &unk_1EBCF5D70, &qword_1BC8FC740);
    v253 = OUTLINED_FUNCTION_87();
    if (v254)
    {
      v255 = v253;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v256 + v255 * v257);
      sub_1BC7F0E58((*(v167 + 56) + 32 * v255), &v299);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v301);
    sub_1BC7C1744(&v299, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v258 = v293;
    v259 = v292;
    (*(v293 + 16))(v292, v250, v209);
    sub_1BC7C1744(v250, &unk_1EBCF5D70, &qword_1BC8FC740);
    v260 = sub_1BC8F7204();
    v262 = v261;
    (*(v258 + 8))(v259, v209);
    v300 = v243;
    *&v299 = v260;
    *(&v299 + 1) = v262;
    OUTLINED_FUNCTION_16_11();
    v263 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v263, v264);
    OUTLINED_FUNCTION_50_4();
  }

  v265 = objc_opt_self();
  v266 = sub_1BC8F7A94();
  v301[0] = 0;
  v267 = [v265 dataWithJSONObject:v266 options:11 error:v301];

  v268 = v301[0];
  if (v267)
  {
    v269 = sub_1BC8F70D4();
    v271 = v270;

    sub_1BC8F7C54();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v269, v271);
  }

  else
  {
    v272 = v268;

    v273 = sub_1BC8F6EA4();

    swift_willThrow();
    v301[0] = 0;
    v301[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  v274 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void static FTStoredMessage.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v26;
  a20 = v27;
  v233 = v28;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v32 = OUTLINED_FUNCTION_25(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31();
  v219 = v35;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_47();
  v218 = v37;
  v234 = sub_1BC8F71E4();
  v38 = OUTLINED_FUNCTION_0(v234);
  v230 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_31();
  v228 = v42;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_20_4();
  v229 = v44;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_20_4();
  v225 = v46;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_20_4();
  v226 = v48;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_20_4();
  v216 = v50;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_20_4();
  v217 = v52;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_20_4();
  v221 = v54;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_20_4();
  v222 = v56;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_47();
  v227 = v58;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  v59 = OUTLINED_FUNCTION_4_1(v232);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_31();
  v223 = v62;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_47();
  v231 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v66 = OUTLINED_FUNCTION_25(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_31();
  v224 = v69;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_20_4();
  v220 = v71;
  OUTLINED_FUNCTION_17_0();
  v73 = MEMORY[0x1EEE9AC00](v72);
  v75 = &v208 - v74;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_81_2();
  v79 = MEMORY[0x1EEE9AC00](v78);
  v81 = &v208 - v80;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_11_10();
  v84 = [v30 dateDeleted];
  if (v84)
  {
    v85 = v84;
    sub_1BC8F71B4();

    __swift_storeEnumTagSinglePayload(v24, 0, 1, v234);
    sub_1BC7C1744(v24, &unk_1EBCF5D80, &qword_1BC8FEA60);
    goto LABEL_22;
  }

  v214 = v81;
  v213 = v25;
  v212 = v20;
  v210 = v21;
  v211 = v22;
  v209 = v75;
  v215 = v30;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v234);
  sub_1BC7C1744(v24, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v86 = v233;
  v87 = [v233 dateDeleted];
  if (v87)
  {
    v88 = v87;
    sub_1BC8F71B4();

    OUTLINED_FUNCTION_67_0(v23, 0);
    v89 = v23;
LABEL_6:
    sub_1BC7C1744(v89, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_22:
    OUTLINED_FUNCTION_24();
    return;
  }

  OUTLINED_FUNCTION_67_0(v23, 1);
  sub_1BC7C1744(v23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v90 = v215;
  sub_1BC7C19F8(v215, &selRef_quality);
  v91 = sub_1BC8F8804();

  if (v91 >= 4)
  {
    v92 = 1;
  }

  else
  {
    v92 = v91;
  }

  sub_1BC7C19F8(v86, &selRef_quality);
  v93 = sub_1BC8F8804();

  if (v93 >= 4)
  {
    v94 = 1;
  }

  else
  {
    v94 = v93;
  }

  if ((sub_1BC800E6C(v92, v94) & 1) == 0)
  {
    goto LABEL_22;
  }

  v95 = [v90 messageType];
  v96 = v234;
  v97 = v90;
  v99 = v231;
  v98 = v232;
  v100 = v213;
  v101 = v214;
  if (v95 == 1)
  {
    sub_1BC85553C(v97);
    OUTLINED_FUNCTION_76_1();
    if (!(!v121 & v104))
    {
      sub_1BC7ECAC8(v102, v103);
      sub_1BC85553C(v86);
      OUTLINED_FUNCTION_76_1();
      if (!v121 & v104)
      {
        goto LABEL_22;
      }

      sub_1BC7ECAC8(v105, v106);
    }

    sub_1BC85553C(v97);
    OUTLINED_FUNCTION_76_1();
    if (!v121 & v104)
    {
      sub_1BC85553C(v86);
      OUTLINED_FUNCTION_76_1();
      if (!(!v121 & v104))
      {
        sub_1BC7ECAC8(v109, v110);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1BC7ECAC8(v107, v108);
    }
  }

  v111 = [v97 dateCreated];
  if (v111)
  {
    v112 = v111;
    sub_1BC8F71B4();

    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  v114 = 1;
  OUTLINED_FUNCTION_67_0(v100, v113);
  v115 = [v86 dateCreated];
  if (v115)
  {
    v116 = v115;
    sub_1BC8F71B4();

    v114 = 0;
  }

  OUTLINED_FUNCTION_67_0(v101, v114);
  v117 = *(v98 + 48);
  sub_1BC7C4DAC(v100, v99, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC7C4DAC(v101, v99 + v117, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v99, 1, v96);
  if (v121)
  {
    sub_1BC7C1744(v101, &unk_1EBCF5D80, &qword_1BC8FEA60);
    sub_1BC7C1744(v100, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_43(v99 + v117, 1, v96);
    v119 = v228;
    v118 = v229;
    if (v121)
    {
      sub_1BC7C1744(v99, &unk_1EBCF5D80, &qword_1BC8FEA60);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v120 = v212;
  sub_1BC7C4DAC(v99, v212, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v99 + v117, 1, v96);
  v122 = v227;
  v118 = v229;
  if (v121)
  {
    v123 = OUTLINED_FUNCTION_37_9();
    OUTLINED_FUNCTION_49_4(v123);
    OUTLINED_FUNCTION_49_4(v100);
    (*(v230 + 8))(v120, v234);
    v119 = v228;
LABEL_36:
    sub_1BC7C1744(v99, &qword_1EBCF5D58, &qword_1BC903E30);
LABEL_37:
    v124 = [v97 dateCreated];
    if (v124)
    {
      v125 = v124;
      v126 = v225;
      sub_1BC8F71B4();

      v127 = v230;
      v128 = *(v230 + 32);
      v129 = v86;
      v130 = v234;
      v128(v226, v126, v234);
      v131 = [v129 dateCreated];
      if (v131)
      {
        v132 = v131;
        sub_1BC8F71B4();

        v128(v118, v119, v130);
        sub_1BC8F7184();
        v133 = *(v127 + 8);
        v133(v118, v130);
        v134 = OUTLINED_FUNCTION_63_1();
LABEL_71:
        v133(v134, v135);
        goto LABEL_22;
      }

      v149 = *(v127 + 8);
      v150 = OUTLINED_FUNCTION_63_1();
      v151(v150);
    }

    v152 = [v97 dateCreated];
    if (!v152)
    {
      v155 = 1;
      v154 = v224;
      goto LABEL_50;
    }

    v153 = v152;
    v154 = v224;
LABEL_48:
    sub_1BC8F71B4();

    v155 = 0;
LABEL_50:
    __swift_storeEnumTagSinglePayload(v154, v155, 1, v234);
    v89 = v154;
    goto LABEL_6;
  }

  v136 = v99;
  v137 = v230;
  (*(v230 + 32))(v227, v136 + v117, v96);
  OUTLINED_FUNCTION_1_18();
  sub_1BC8556EC(v138, v139);
  OUTLINED_FUNCTION_36_8();
  v140 = sub_1BC8F7BC4();
  v141 = *(v137 + 8);
  v141(v122, v234);
  v142 = OUTLINED_FUNCTION_37_9();
  sub_1BC7C1744(v142, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC7C1744(v213, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v141(v120, v234);
  v97 = v215;
  v96 = v234;
  sub_1BC7C1744(v136, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v119 = v228;
  if ((v140 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  v143 = [v97 isRead];
  if (v143 != [v86 isRead])
  {
    [v97 isRead];
    goto LABEL_22;
  }

  v144 = [v97 dateModified];
  if (v144)
  {
    v145 = v144;
    v146 = v211;
    sub_1BC8F71B4();

    v147 = 0;
    v148 = v230;
  }

  else
  {
    v147 = 1;
    v148 = v230;
    v146 = v211;
  }

  v156 = v210;
  v157 = 1;
  OUTLINED_FUNCTION_67_0(v146, v147);
  v158 = [v86 dateModified];
  if (v158)
  {
    v159 = v158;
    sub_1BC8F71B4();

    v157 = 0;
  }

  OUTLINED_FUNCTION_67_0(v156, v157);
  v160 = v96;
  v161 = *(v232 + 48);
  v162 = v156;
  v163 = v223;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C4DAC(v164, v165, v166, &qword_1BC8FEA60);
  v167 = v163;
  sub_1BC7C4DAC(v162, v163 + v161, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v163, 1, v160);
  if (v121)
  {
    OUTLINED_FUNCTION_40_6(v162);
    v168 = OUTLINED_FUNCTION_60_2();
    v169 = v223;
    sub_1BC7C1744(v168, v170, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_43(v169 + v161, 1, v160);
    if (v121)
    {
      sub_1BC7C1744(v169, &unk_1EBCF5D80, &qword_1BC8FEA60);
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  v171 = v163;
  v172 = v209;
  sub_1BC7C4DAC(v171, v209, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v167 + v161, 1, v160);
  if (v173)
  {
    v174 = OUTLINED_FUNCTION_35_6(&a13);
    sub_1BC7C1744(v174, v175, &qword_1BC8FEA60);
    v176 = OUTLINED_FUNCTION_35_6(&a14);
    v169 = v223;
    sub_1BC7C1744(v176, v177, &qword_1BC8FEA60);
    (*(v148 + 8))(v172, v160);
LABEL_62:
    sub_1BC7C1744(v169, &qword_1EBCF5D58, &qword_1BC903E30);
    v178 = &off_1E7FF5000;
LABEL_63:
    v179 = [v97 v178[257]];
    if (v179)
    {
      v180 = v179;
      v181 = v221;
      sub_1BC8F71B4();

      v182 = *(v148 + 32);
      v183 = v86;
      v184 = v234;
      v182(v222, v181, v234);
      v185 = [v183 v178[257]];
      if (v185)
      {
        v186 = v185;
        v187 = v216;
        sub_1BC8F71B4();

        v188 = v217;
        v182(v217, v187, v184);
        sub_1BC8F7184();
        v189 = *(v148 + 8);
        v189(v188, v184);
        v190 = OUTLINED_FUNCTION_63_1();
        (v189)(v190);
        goto LABEL_22;
      }

      v204 = *(v148 + 8);
      v205 = OUTLINED_FUNCTION_63_1();
      v206(v205);
    }

    v207 = [v97 v178[257]];
    if (!v207)
    {
      v155 = 1;
      v154 = v220;
      goto LABEL_50;
    }

    v153 = v207;
    v154 = v220;
    goto LABEL_48;
  }

  v191 = v167 + v161;
  v192 = v227;
  (*(v148 + 32))(v227, v191, v160);
  OUTLINED_FUNCTION_1_18();
  sub_1BC8556EC(v193, v194);
  LODWORD(v232) = sub_1BC8F7BC4();
  v195 = *(v148 + 8);
  v195(v192, v160);
  OUTLINED_FUNCTION_49_4(v210);
  OUTLINED_FUNCTION_49_4(v211);
  v195(v172, v160);
  v196 = OUTLINED_FUNCTION_29();
  sub_1BC7C1744(v196, v197, &qword_1BC8FEA60);
  v178 = &off_1E7FF5000;
  if ((v232 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_67:
  v198 = MessageType.init(rawValue:)([v97 messageType]);
  if ((v198 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  sub_1BC80BF98(v198);
  v236 = v97;
  v199 = v97;
  v200 = v218;
  swift_getAtKeyPath();
  v201 = sub_1BC8F7264();
  OUTLINED_FUNCTION_43(v200, 1, v201);
  if (v121)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v235 = v86;
  v202 = v86;
  v203 = v219;
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_43(v203, 1, v201);
  if (!v121)
  {

    MEMORY[0x1BFB28630](v200, v203);

    v133 = *(*(v201 - 8) + 8);
    v133(v203, v201);
    v134 = v200;
    v135 = v201;
    goto LABEL_71;
  }

LABEL_78:
  __break(1u);
}

uint64_t static FTStoredMessage.== infix(_:_:)(void *a1, void *a2)
{
  v241 = sub_1BC8F71E4();
  v8 = OUTLINED_FUNCTION_0(v241);
  v235 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v231 = v12;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  v13 = OUTLINED_FUNCTION_4_1(v238);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v234 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_47();
  v237 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v20 = OUTLINED_FUNCTION_25(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  v233 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_4();
  v236 = v26;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_4();
  v232 = v28;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_4();
  v239 = v30;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47();
  v240 = v32;
  v33 = sub_1BC8F7264();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_4();
  v242 = v39;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  v40 = OUTLINED_FUNCTION_4_1(v249);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_20_4();
  v246 = v44;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_11_10();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v47 = OUTLINED_FUNCTION_25(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_20_4();
  v245 = v53;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_20_4();
  v243 = v55;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_20_4();
  v244 = v57;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v226 - v61;
  v247 = a1;
  v63 = [a1 recordUUID];
  if (v63)
  {
    v64 = v63;
    sub_1BC8F7244();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  OUTLINED_FUNCTION_58_2(v62, v65);
  v248 = a2;
  v66 = [a2 recordUUID];
  if (v66)
  {
    v67 = v66;
    sub_1BC8F7244();
  }

  OUTLINED_FUNCTION_44_7(v5);
  v68 = *(v249 + 48);
  sub_1BC7C4DAC(v62, v4, &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC7C4DAC(v5, v4 + v68, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v4);
  if (v69)
  {
    OUTLINED_FUNCTION_71_0(v5);
    OUTLINED_FUNCTION_71_0(v62);
    OUTLINED_FUNCTION_6_15(v4 + v68);
    if (v69)
    {
      v227 = v2;
      sub_1BC7C1744(v4, &unk_1EBCF5D70, &qword_1BC8FC740);
      goto LABEL_16;
    }

LABEL_14:
    v70 = &qword_1EBCF5B40;
    v71 = &unk_1BC904FF0;
    v72 = v4;
    goto LABEL_30;
  }

  sub_1BC7C4DAC(v4, v3, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v4 + v68);
  if (v69)
  {
    OUTLINED_FUNCTION_40_6(v5);
    OUTLINED_FUNCTION_40_6(v62);
    (*(v36 + 8))(v3, v33);
    goto LABEL_14;
  }

  v227 = v2;
  v73 = v4 + v68;
  v74 = v242;
  (*(v36 + 32))(v242, v73, v33);
  OUTLINED_FUNCTION_2_18();
  sub_1BC8556EC(v75, v76);
  OUTLINED_FUNCTION_36_8();
  HIDWORD(v226) = OUTLINED_FUNCTION_85_0();
  v77 = v36;
  v78 = *(v36 + 8);
  v78(v74, v33);
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v79, v80, v81);
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v82, v83, v84);
  v85 = OUTLINED_FUNCTION_82();
  (v78)(v85);
  v36 = v77;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v86, v87, v88);
  if ((v226 & 0x100000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v89 = v247;
  v90 = [v247 conversationID];
  if (v90)
  {
    v91 = v90;
    v92 = v244;
    sub_1BC8F7244();

    v93 = 0;
    v94 = v248;
    v95 = v245;
    v96 = v246;
  }

  else
  {
    v93 = 1;
    v94 = v248;
    v95 = v245;
    v96 = v246;
    v92 = v244;
  }

  v97 = v243;
  OUTLINED_FUNCTION_58_2(v92, v93);
  v98 = [v94 conversationID];
  if (v98)
  {
    v99 = v98;
    sub_1BC8F7244();
  }

  OUTLINED_FUNCTION_44_7(v97);
  v100 = *(v249 + 48);
  OUTLINED_FUNCTION_56_2(v92, v96);
  OUTLINED_FUNCTION_56_2(v97, v96 + v100);
  OUTLINED_FUNCTION_6_15(v96);
  if (v69)
  {
    v101 = OUTLINED_FUNCTION_36_8();
    sub_1BC7C1744(v101, v102, &qword_1BC8FC740);
    OUTLINED_FUNCTION_40_6(v92);
    OUTLINED_FUNCTION_6_15(v96 + v100);
    if (v69)
    {
      v246 = v36;
      v103 = v33;
      sub_1BC7C1744(v96, &unk_1EBCF5D70, &qword_1BC8FC740);
      goto LABEL_34;
    }

LABEL_29:
    v70 = &qword_1EBCF5B40;
    v71 = &unk_1BC904FF0;
    v72 = v96;
    goto LABEL_30;
  }

  sub_1BC7C4DAC(v96, v95, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v96 + v100);
  if (v104)
  {
    v105 = OUTLINED_FUNCTION_36_8();
    sub_1BC7C1744(v105, v106, &qword_1BC8FC740);
    OUTLINED_FUNCTION_40_6(v92);
    (*(v36 + 8))(v95, v33);
    goto LABEL_29;
  }

  v109 = v96 + v100;
  v110 = v242;
  (*(v36 + 32))(v242, v109, v33);
  OUTLINED_FUNCTION_2_18();
  sub_1BC8556EC(v111, v112);
  LODWORD(v245) = OUTLINED_FUNCTION_85_0();
  v246 = v36;
  v113 = *(v36 + 8);
  v113(v110, v33);
  OUTLINED_FUNCTION_71_0(v97);
  OUTLINED_FUNCTION_71_0(v92);
  v114 = v95;
  v103 = v33;
  v113(v114, v33);
  OUTLINED_FUNCTION_71_0(v96);
  if ((v245 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v115 = [v89 messageType];
  v116 = v248;
  if (v115 != [v248 messageType])
  {
    goto LABEL_31;
  }

  v117 = OUTLINED_FUNCTION_60_2();
  sub_1BC7C19F8(v117, v118);
  v120 = v119;
  sub_1BC7C19F8(v116, &selRef_from);
  v107 = v121;
  if (v120)
  {
    v122 = v241;
    if (!v121)
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_61_2();
    if (v69)
    {
      v123 = v120 == v107;
    }

    else
    {
      v123 = 0;
    }

    if (v123)
    {
    }

    else
    {
      OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_70_0();

      if ((&selRef_from & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v122 = v241;
    if (v121)
    {
      goto LABEL_55;
    }
  }

  v124 = OUTLINED_FUNCTION_60_2();
  sub_1BC7C19F8(v124, v125);
  OUTLINED_FUNCTION_41_10();
  v107 = v126;
  if (v120)
  {
    if (!v126)
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_61_2();
    if (v69)
    {
      v127 = v120 == v107;
    }

    else
    {
      v127 = 0;
    }

    if (v127)
    {
    }

    else
    {
      OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_70_0();

      if ((&selRef_provider & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v126)
  {
    goto LABEL_55;
  }

  v128 = [v89 dateCreated];
  if (v128)
  {
    v129 = v128;
    v130 = v240;
    sub_1BC8F71B4();

    v131 = 0;
    v132 = v248;
    v133 = v237;
  }

  else
  {
    v131 = 1;
    v132 = v248;
    v133 = v237;
    v130 = v240;
  }

  OUTLINED_FUNCTION_58_2(v130, v131);
  v134 = [v132 dateCreated];
  if (v134)
  {
    v135 = v134;
    v136 = v239;
    sub_1BC8F71B4();
  }

  else
  {
    v136 = v239;
  }

  OUTLINED_FUNCTION_44_7(v136);
  v137 = *(v238 + 48);
  v138 = v240;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C4DAC(v139, v140, v141, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_56_2(v136, v133 + v137);
  OUTLINED_FUNCTION_6_15(v133);
  if (!v69)
  {
    v142 = v232;
    sub_1BC7C4DAC(v133, v232, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v133 + v137);
    if (!v143)
    {
      v144 = v133;
      v145 = v235;
      v146 = v144 + v137;
      v147 = v231;
      (*(v235 + 32))(v231, v146, v122);
      OUTLINED_FUNCTION_1_18();
      sub_1BC8556EC(v148, v149);
      v150 = OUTLINED_FUNCTION_85_0();
      v151 = *(v145 + 8);
      v151(v147, v241);
      OUTLINED_FUNCTION_49_4(v239);
      OUTLINED_FUNCTION_49_4(v240);
      v151(v142, v241);
      v122 = v241;
      v132 = v248;
      OUTLINED_FUNCTION_49_4(v144);
      if ((v150 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_40_6(v239);
    OUTLINED_FUNCTION_40_6(v240);
    (*(v235 + 8))(v142, v122);
LABEL_71:
    v70 = &qword_1EBCF5D58;
    v71 = &qword_1BC903E30;
    v72 = v133;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_40_6(v136);
  OUTLINED_FUNCTION_40_6(v138);
  OUTLINED_FUNCTION_6_15(v133 + v137);
  if (!v69)
  {
    goto LABEL_71;
  }

  sub_1BC7C1744(v133, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_73:
  v152 = [v89 dateModified];
  if (v152)
  {
    v153 = v152;
    v154 = v236;
    sub_1BC8F71B4();

    v155 = 0;
  }

  else
  {
    v155 = 1;
    v154 = v236;
  }

  OUTLINED_FUNCTION_58_2(v154, v155);
  v156 = [v132 dateModified];
  if (v156)
  {
    v157 = v156;
    v158 = v233;
    sub_1BC8F71B4();
  }

  else
  {
    v158 = v233;
  }

  OUTLINED_FUNCTION_44_7(v158);
  v159 = *(v238 + 48);
  v160 = v236;
  v161 = v234;
  OUTLINED_FUNCTION_56_2(v236, v234);
  v162 = v161;
  sub_1BC7C4DAC(v158, v161 + v159, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_6_15(v161);
  if (v69)
  {
    OUTLINED_FUNCTION_40_6(v158);
    v163 = v234;
    sub_1BC7C1744(v160, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v163 + v159);
    if (v69)
    {
      sub_1BC7C1744(v163, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_89:
      v172 = [v89 isRead];
      if (v172 != [v132 isRead])
      {
        goto LABEL_31;
      }

      [v89 duration];
      v174 = v173;
      [v132 duration];
      if (v174 != v175)
      {
        goto LABEL_31;
      }

      v176 = [v89 mailboxType];
      if (v176 != [v132 mailboxType])
      {
        goto LABEL_31;
      }

      v177 = [v89 isSensitive];
      if (v177 != [v132 isSensitive])
      {
        goto LABEL_31;
      }

      v178 = OUTLINED_FUNCTION_60_2();
      sub_1BC7C19F8(v178, v179);
      v181 = v180;
      v182 = OUTLINED_FUNCTION_36_8();
      sub_1BC7C19F8(v182, v183);
      v107 = v184;
      if (v181)
      {
        if (!v184)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_61_2();
        if (v69)
        {
          v185 = v181 == v107;
        }

        else
        {
          v185 = 0;
        }

        if (v185)
        {
        }

        else
        {
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_70_0();

          if ((&selRef_recipient & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v184)
      {
        goto LABEL_55;
      }

      v186 = [v247 transcriptionStatus];
      if (v186 != [v248 transcriptionStatus])
      {
        goto LABEL_31;
      }

      sub_1BC7C19F8(v247, &selRef_simID);
      OUTLINED_FUNCTION_41_10();
      v107 = v187;
      if (v181)
      {
        if (!v187)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_61_2();
        if (v69)
        {
          v188 = v181 == v107;
        }

        else
        {
          v188 = 0;
        }

        if (v188)
        {
        }

        else
        {
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_70_0();

          if ((&selRef_simID & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v187)
      {
        goto LABEL_55;
      }

      sub_1BC7C19F8(v247, &selRef_quality);
      OUTLINED_FUNCTION_41_10();
      v107 = v189;
      if (v181)
      {
        if (v189)
        {
          OUTLINED_FUNCTION_61_2();
          if (v69)
          {
            v190 = v181 == v107;
          }

          else
          {
            v190 = 0;
          }

          if (v190)
          {
          }

          else
          {
            OUTLINED_FUNCTION_23_5();
            OUTLINED_FUNCTION_70_0();

            if ((&selRef_quality & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_128;
        }

LABEL_124:

        return v107 & 1;
      }

      if (!v189)
      {
LABEL_128:
        v191 = [v247 reminderUUID];
        if (v191)
        {
          v192 = v191;
          sub_1BC8F7244();
        }

        v193 = 1;
        v194 = OUTLINED_FUNCTION_37_9();
        OUTLINED_FUNCTION_73_0(v194, v195);
        v196 = [v248 reminderUUID];
        if (v196)
        {
          v197 = v196;
          sub_1BC8F7244();

          v193 = 0;
        }

        v198 = v229;
        OUTLINED_FUNCTION_73_0(v229, v193);
        v199 = *(v249 + 48);
        OUTLINED_FUNCTION_37_9();
        v200 = v227;
        OUTLINED_FUNCTION_47_5();
        sub_1BC7C4DAC(v201, v202, v203, &qword_1BC8FC740);
        OUTLINED_FUNCTION_56_2(v198, v200 + v199);
        v204 = v200;
        v205 = v200;
        v206 = v103;
        OUTLINED_FUNCTION_43(v205, 1, v103);
        if (v69)
        {
          v207 = OUTLINED_FUNCTION_35_6(&v250);
          sub_1BC7C1744(v207, v208, &qword_1BC8FC740);
          v209 = OUTLINED_FUNCTION_35_6(&v251);
          sub_1BC7C1744(v209, v210, &qword_1BC8FC740);
          OUTLINED_FUNCTION_43(v204 + v199, 1, v103);
          if (v69)
          {
            sub_1BC7C1744(v204, &unk_1EBCF5D70, &qword_1BC8FC740);
            LOBYTE(v107) = 1;
            return v107 & 1;
          }
        }

        else
        {
          sub_1BC7C4DAC(v204, v228, &unk_1EBCF5D70, &qword_1BC8FC740);
          OUTLINED_FUNCTION_43(v204 + v199, 1, v103);
          if (!v211)
          {
            v216 = v246;
            v217 = v242;
            (*(v246 + 32))(v242, v204 + v199, v206);
            OUTLINED_FUNCTION_2_18();
            sub_1BC8556EC(v218, v219);
            v220 = v228;
            OUTLINED_FUNCTION_36_8();
            LOBYTE(v107) = sub_1BC8F7BC4();
            v221 = *(v216 + 8);
            v221(v217, v206);
            v222 = OUTLINED_FUNCTION_35_6(&v250);
            sub_1BC7C1744(v222, v223, &qword_1BC8FC740);
            v224 = OUTLINED_FUNCTION_35_6(&v251);
            sub_1BC7C1744(v224, v225, &qword_1BC8FC740);
            v221(v220, v206);
            sub_1BC7C1744(v204, &unk_1EBCF5D70, &qword_1BC8FC740);
            return v107 & 1;
          }

          v212 = OUTLINED_FUNCTION_35_6(&v250);
          sub_1BC7C1744(v212, v213, &qword_1BC8FC740);
          v214 = OUTLINED_FUNCTION_35_6(&v251);
          sub_1BC7C1744(v214, v215, &qword_1BC8FC740);
          (*(v246 + 8))(v228, v103);
        }

        v70 = &qword_1EBCF5B40;
        v71 = &unk_1BC904FF0;
        v72 = v204;
        goto LABEL_30;
      }

LABEL_55:

      goto LABEL_31;
    }
  }

  else
  {
    v164 = v230;
    sub_1BC7C4DAC(v161, v230, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v161 + v159);
    if (!v165)
    {
      v166 = v235;
      v167 = v162 + v159;
      v168 = v231;
      (*(v235 + 32))(v231, v167, v122);
      OUTLINED_FUNCTION_1_18();
      sub_1BC8556EC(v169, v170);
      LODWORD(v245) = OUTLINED_FUNCTION_85_0();
      v171 = *(v166 + 8);
      v171(v168, v122);
      OUTLINED_FUNCTION_49_4(v233);
      OUTLINED_FUNCTION_49_4(v236);
      v171(v164, v122);
      v132 = v248;
      OUTLINED_FUNCTION_49_4(v162);
      if ((v245 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_89;
    }

    OUTLINED_FUNCTION_40_6(v233);
    v163 = v234;
    sub_1BC7C1744(v236, &unk_1EBCF5D80, &qword_1BC8FEA60);
    (*(v235 + 8))(v164, v122);
  }

  v70 = &qword_1EBCF5D58;
  v71 = &qword_1BC903E30;
  v72 = v163;
LABEL_30:
  sub_1BC7C1744(v72, v70, v71);
LABEL_31:
  LOBYTE(v107) = 0;
  return v107 & 1;
}

uint64_t sub_1BC85510C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BC8F7474();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FaceTimeMessageStore_Summary();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = *(v11 + 24);

    sub_1BC8F7424();
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      *v14 = a1;
      *(v14 + 1) = a2;
      *(v14 + 2) = a3;
      sub_1BC8F7464();
      sub_1BC8556EC(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);
      sub_1BC8F7564();
      (*(v7 + 8))(v10, v6);
      sub_1BC83ED08(v14);
      return v25[2];
    }

    __break(1u);
    swift_once();
    v16 = sub_1BC8F7734();
    __swift_project_value_buffer(v16, qword_1EDC2B3A8);
    v17 = a3;
    v18 = sub_1BC8F7714();
    v19 = sub_1BC8F81F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1BC7A3000, v18, v19, "Failed to deserialize storedMessage summaryData with error %{public}@", v20, 0xCu);
      sub_1BC7C1744(v21, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v21, -1, -1);
      MEMORY[0x1BFB2AA50](v20, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1BC855480()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8554C4()
{
  v1 = *(*(sub_1BC8F6D24() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC85553C(void *a1)
{
  v1 = [a1 transcript];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

uint64_t sub_1BC8555B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return v4;
}

uint64_t sub_1BC85564C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceTimeMessageStore_Summary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8556EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_50_4()
{
  v2 = *(v0 - 216);

  return sub_1BC8037DC(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_1BC8F7BC4();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1BC8557D4()
{
  type metadata accessor for MessageStoreController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC2B1B0 = result;
  return result;
}

id sub_1BC85582C()
{
  if (qword_1EDC1DD40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC2B1B0;
  qword_1EDC2B320 = qword_1EDC2B1B0;
  *algn_1EDC2B328 = 0x617A696C61636F4CLL;
  qword_1EDC2B330 = 0xEB00000000656C62;

  return v1;
}

uint64_t sub_1BC8558B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v20 = MEMORY[0x1E69E7CC0];
      v8 = &v20;
      sub_1BC8F8684();
      if (v7 < 0)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB29A00](v9, a1);
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v8 = v11;
        v18 = v11;
        sub_1BC85EDC0(&v18, a2, a3, a4, &v19);
        if (v5)
        {
          goto LABEL_19;
        }

        v5 = 0;

        sub_1BC8F8654();
        v12 = *(v20 + 16);
        sub_1BC8F8694();
        sub_1BC8F86A4();
        sub_1BC8F8664();
        ++v9;
        if (v10 == v7)
        {

          v13 = v20;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v7 = sub_1BC8F8504();
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:

    __break(1u);
  }

  else
  {
LABEL_16:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

    return v13;
  }

  return result;
}

unint64_t sub_1BC855A68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v75 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v61 - v15;
  v71 = sub_1BC8F7264();
  v16 = *(v71 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v71);
  v83 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D90, &qword_1BC904138);
  v19 = *(*(v70 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v70);
  v82 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v61 - v22;
  v23 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v61 = v1;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    result = sub_1BC800458(a1);
    v27 = 0;
    v28 = a1 + 64;
    v68 = v16 + 2;
    v67 = v16 + 4;
    v63 = v25;
    v62 = a1 + 72;
    v64 = v16;
    v66 = v23;
    v65 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v28 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_21;
      }

      if (*(a1 + 36) != v25)
      {
        goto LABEL_22;
      }

      v79 = 1 << result;
      v80 = result >> 6;
      v77 = v27;
      v78 = v25;
      v76 = v26;
      v30 = v69;
      v29 = v70;
      v31 = &v69[*(v70 + 48)];
      v32 = *(a1 + 48) + v16[9] * result;
      v33 = v16[2];
      v85 = result;
      v34 = v71;
      v33(v69, v32, v71);
      v35 = *(a1 + 56) + 24 * v85;
      v81 = *(v35 + 16);
      v36 = v81;
      *v31 = *v35;
      v31[2] = v36;
      v37 = v16[4];
      v38 = v82;
      v37(v82, v30, v34);
      v39 = (v38 + *(v29 + 48));
      v40 = a1;
      v42 = *v31;
      v41 = v31[1];
      v43 = v31[2];
      *v39 = v42;
      v39[1] = v41;
      v39[2] = v43;
      v33(v83, v38, v34);
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v34);
      v44 = v72;
      __swift_storeEnumTagSinglePayload(v72, 1, 1, v34);
      v45 = sub_1BC8F7014();
      v46 = v74;
      __swift_storeEnumTagSinglePayload(v74, 1, 1, v45);
      v47 = sub_1BC8F71E4();
      v48 = v75;
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v47);
      v87[0] = v42;
      v87[1] = v41;
      a1 = v40;
      v87[2] = v43;
      v49 = v73;
      __swift_storeEnumTagSinglePayload(v73, 1, 1, v34);
      objc_allocWithZone(type metadata accessor for MessageUpdate());

      v86 = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(v83, v84, v44, 0, 0, 0, 1, 2, 0, 1, v60, 0, 1, 0, 0, 0, 1, 0, 2, v46, 0, 0, v48, 0, 1, v87, 0, v49);
      sub_1BC862F74(v82, &qword_1EBCF5D90, &qword_1BC904138);
      sub_1BC8F8654();
      v50 = *(v88 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      result = v85;
      v51 = 1 << *(a1 + 32);
      if (v85 >= v51)
      {
        goto LABEL_23;
      }

      v28 = v65;
      v52 = *(v65 + 8 * v80);
      v53 = v66;
      if ((v52 & v79) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v78)
      {
        goto LABEL_25;
      }

      v54 = v52 & (-2 << (v85 & 0x3F));
      if (v54)
      {
        v51 = __clz(__rbit64(v54)) | v85 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = v80 << 6;
        v56 = v80 + 1;
        v57 = (v62 + 8 * v80);
        while (v56 < (v51 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_1BC7FBED8(v85, v78, v76 & 1);
            v51 = __clz(__rbit64(v58)) + v55;
            goto LABEL_17;
          }
        }

        sub_1BC7FBED8(v85, v78, v76 & 1);
      }

LABEL_17:
      v26 = 0;
      v27 = v77 + 1;
      result = v51;
      v25 = v63;
      v16 = v64;
      if (v77 + 1 == v53)
      {
        return v88;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC8560F8()
{
  OUTLINED_FUNCTION_17_1();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BC8565F8();
  }

  return result;
}

id sub_1BC856148()
{
  v1 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v4))
  {
    v5 = OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_28();
    v17 = v6;
    *v5 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, v7, &v17);
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  result = [*(v1 + 104) voicemailSearchEnabled];
  if (result)
  {
    type metadata accessor for DeferredIndexingTask();
    swift_allocObject();

    sub_1BC8E6040();
    if (qword_1EDC1ECD8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E10, &qword_1BC9041E0);
    swift_allocObject();
    swift_retain_n();
    OUTLINED_FUNCTION_40();
    v13 = sub_1BC862B7C();
    v14 = *(v1 + 168);
    *(v1 + 168) = v13;

    sub_1BC85E13C(sub_1BC861734);

    type metadata accessor for SummaryIndexingTask();
    swift_allocObject();

    sub_1BC8E6040();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E18, &qword_1BC9041E8);
    swift_allocObject();
    OUTLINED_FUNCTION_40();
    v15 = sub_1BC862B7C();
    v16 = *(v1 + 176);
    *(v1 + 176) = v15;

    sub_1BC85E13C(sub_1BC8614B0);
  }

  return result;
}

uint64_t sub_1BC8563D8(uint64_t a1)
{
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
  swift_retain_n();

  v4 = *(v1 + 128);
  v5 = *(v4 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager);
  *(v4 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager) = a1;
}

void sub_1BC856440()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = sub_1BC8F7294();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  v8 = *(v0 + 152);
  OUTLINED_FUNCTION_31_0();
  v9 = sub_1BC8F7BE4();
  v10 = [v8 stringForKey_];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = sub_1BC8F7C24();
  v13 = v12;

  sub_1BC8F7284();
  v14 = sub_1BC8F7274();
  v16 = v15;
  (*(v5 + 8))(v0, v2);
  if (v14 == v11 && v16 == v13)
  {

    goto LABEL_9;
  }

  v18 = sub_1BC8F8AA4();

  if ((v18 & 1) == 0)
  {
LABEL_7:
    type metadata accessor for SpotlightIndexManagerUtilities();
    v19 = *(v1 + 160);
    v21 = 8;

    sub_1BC7E46FC(v20, &v21, v8);
  }

LABEL_9:
  OUTLINED_FUNCTION_24();
}

void sub_1BC8565F8()
{
  v1 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v4))
  {
    v5 = OUTLINED_FUNCTION_36();
    *v5 = 0;
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  v10 = *(v1 + 136);
  v12[4] = sub_1BC863098;
  v12[5] = v1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BC8568B0;
  v12[3] = &block_descriptor_115;
  v11 = _Block_copy(v12);

  [v10 getLastUpdatedCallDirectoryInfoWithReply_];
  _Block_release(v11);
}

uint64_t sub_1BC856740(uint64_t result)
{
  if (result >= 1)
  {
    v2 = result;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B3C0);
    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134283521;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1BC7A3000, v4, v5, "Updating Index for phoneNumber: %{private}lld", v6, 0xCu);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC8FC230;
    type metadata accessor for SpotlightIndexManagerUtilities();
    *(v7 + 32) = static SpotlightIndexManagerUtilities.lastFourDigits(from:)();
    *(v7 + 40) = v8;
    sub_1BC859344(v7, 0, 0);
  }

  return result;
}

void sub_1BC8568B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1BC856940(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1BC856984(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC85699C);
}

uint64_t sub_1BC85699C()
{
  OUTLINED_FUNCTION_32();
  if ([*(v0[23] + 104) voicemailSearchEnabled])
  {
    if (sub_1BC7C0454(v0[22]))
    {
      v1 = swift_task_alloc();
      v0[24] = v1;
      *v1 = v0;
      v1[1] = sub_1BC856AF8;
      v2 = v0[23];
      v3 = OUTLINED_FUNCTION_28_9(v0[22]);

      return sub_1BC857248(v3);
    }

    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v5, qword_1EDC2B3C0);
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v8);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_18_12();
    }
  }

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t sub_1BC856AF8()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = v1[24];
  v5 = *v0;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v2[25] = v7;
  v2[26] = v8;

  v9 = swift_task_alloc();
  v2[27] = v9;
  *v9 = v5;
  v9[1] = sub_1BC856C48;
  v10 = v1[23];
  v11 = OUTLINED_FUNCTION_28_9(v1[22]);

  return sub_1BC857560(v11);
}

uint64_t sub_1BC856C48()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC856D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v14 = sub_1BC8F7734();
  v12[28] = __swift_project_value_buffer(v14, qword_1EDC2B3C0);
  v15 = sub_1BC8F7714();
  v16 = sub_1BC8F8204();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v17);
    _os_log_impl(&dword_1BC7A3000, v15, v16, "Finished fetching attributes", v13, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  v18 = v12[26];
  v19 = v12[23];

  sub_1BC8579BC();

  v20 = sub_1BC8F7714();
  v21 = sub_1BC8F8204();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_36();
    *v22 = 0;
    _os_log_impl(&dword_1BC7A3000, v20, v21, "Finished populating subtitle", v22, 2u);
    OUTLINED_FUNCTION_6();
  }

  v23 = v12[25];
  v24 = v12[23];

  v25 = *(v24 + 96);
  sub_1BC7D9730(0, &qword_1EDC1DE38, 0x1E6964E80);
  v26 = sub_1BC8F7E34();
  v12[29] = v26;

  v12[2] = v12;
  v12[3] = sub_1BC856F84;
  v27 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC890F2C;
  v12[13] = &block_descriptor_109;
  v12[14] = v27;
  [v25 indexSearchableItems:v26 completionHandler:v12 + 10];
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DEC8](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1BC856F84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC857080()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 224);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_1BC857120()
{
  OUTLINED_FUNCTION_9_10();
  v20 = v0;
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  swift_willThrow();

  v5 = v3;
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F81E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[30];
    OUTLINED_FUNCTION_21_1();
    v19 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_94(4.8751e-34);
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v12, v13, &v19);
    OUTLINED_FUNCTION_14_7();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v14, v15, "Encountered an error while indexing messages: %{public}s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v16 = v0[30];
  }

  OUTLINED_FUNCTION_27();

  return v17();
}

uint64_t sub_1BC857248(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC857288);
}

uint64_t sub_1BC857288()
{
  OUTLINED_FUNCTION_9_10();
  if (sub_1BC7C0454(v0[2]))
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v1 = v0[2];
    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B3C0);

    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v4))
    {
      v5 = OUTLINED_FUNCTION_21_1();
      v6 = OUTLINED_FUNCTION_100_0(v5, 3.9122e-34);
      OUTLINED_FUNCTION_78_2(v6);

      OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v7, v8, "Indexing %{public}ld messages");
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      v20 = v0[2];
    }

    v40 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC903280;
    v22 = *MEMORY[0x1E695C258];
    v23 = *MEMORY[0x1E695C330];
    v24 = MEMORY[0x1E695C208];
    *(v21 + 32) = *MEMORY[0x1E695C258];
    *(v21 + 40) = v23;
    v25 = *v24;
    *(v21 + 48) = *v24;
    v41 = v21;
    v26 = objc_opt_self();
    v27 = v22;
    v28 = v23;
    v29 = v25;
    v30 = [v26 descriptorForRequiredKeysForStyle_];
    MEMORY[0x1BFB29230]();
    v31 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
    {
      OUTLINED_FUNCTION_37(v31);
      sub_1BC8F7E94();
    }

    v33 = v0[3];
    v32 = v0[4];
    v34 = v0[2];
    OUTLINED_FUNCTION_45_1();
    sub_1BC8F7ED4();
    sub_1BC85EA64(v34, v41);

    v35 = OUTLINED_FUNCTION_45_2();
    v18 = sub_1BC8558B4(v35, v36, v33, v37);

    v19 = v40;
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v9 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v9, qword_1EDC2B3C0);
    v10 = sub_1BC8F7714();
    v11 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v11))
    {
      v12 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v12);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v18 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
  }

  v38 = v0[1];

  return v38(v18, v19);
}

uint64_t sub_1BC857560(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC857578);
}

uint64_t sub_1BC857578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v44 = v12;
  v13 = v12[18];
  v14 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v15 = sub_1BC7C0454(v13);
  v23 = v15;
  v24 = 0;
  v25 = v13 & 0xC000000000000001;
  v26 = v13 & 0xFFFFFFFFFFFFFF8;
  v27 = v13 + 32;
  v28 = v14;
  while (v23 != v24)
  {
    if (v25)
    {
      v15 = MEMORY[0x1BFB29A00](v24, v44[18]);
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v27 + 8 * v24);
    }

    v29 = v15;
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v15, v16, v17, v18, v19, v20, v21, v22, v44, a10, v45, a12);
    }

    v31 = sub_1BC7C83A8();

    ++v24;
    if (v31)
    {
      MEMORY[0x1BFB29230]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      v15 = sub_1BC8F7ED4();
      v28 = v45;
      v24 = v30;
    }
  }

  a10 = v14;
  v45 = v14;
  v15 = sub_1BC7C0454(v28);
  v32 = v15;
  v33 = 0;
  while (v32 != v33)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v38 = OUTLINED_FUNCTION_40();
      v15 = MEMORY[0x1BFB29A00](v38);
    }

    else
    {
      if (v33 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(v28 + 8 * v33 + 32);
    }

    v34 = v15;
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_28;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69D8C48]) initWithHandle_];

    ++v33;
    if (v36)
    {
      MEMORY[0x1BFB29230]();
      v37 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
      {
        OUTLINED_FUNCTION_37(v37);
        sub_1BC8F7E94();
      }

      OUTLINED_FUNCTION_44_2();
      v15 = sub_1BC8F7ED4();
      a10 = v45;
      v33 = v35;
    }
  }

  v39 = v44[19];

  v40 = *(v39 + 112);
  sub_1BC7D9730(0, &qword_1EDC1DDB0, 0x1E69D8C48);
  v41 = sub_1BC8F7E34();
  v44[20] = v41;

  v44[2] = v44;
  v44[3] = sub_1BC857894;
  v42 = swift_continuation_init();
  v44[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE8, &qword_1BC9041C8);
  v44[10] = MEMORY[0x1E69E9820];
  v44[11] = 1107296256;
  v44[12] = sub_1BC860308;
  v44[13] = &block_descriptor_112;
  v44[14] = v42;
  [v40 updateCacheWithDestinationIDs:v41 completion:v44 + 10];
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DEC8](v15, v16, v17, v18, v19, v20, v21, v22, v44, a10, v45, a12);
}

uint64_t sub_1BC857894()
{
  OUTLINED_FUNCTION_5();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC857964()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_1BC8579BC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_1BC8F8504();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    OUTLINED_FUNCTION_24();
    return;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB29A00](v3, v1) : *(v1 + 8 * v3 + 32);
      v5 = v4;
      sub_1BC862874(v4, &selRef_contentDescription);
      if (!v6)
      {
        v7 = sub_1BC862674(v5);
        if (!v7)
        {
          goto LABEL_14;
        }

        if (v7[2])
        {
          break;
        }
      }

LABEL_15:
      if (v2 == ++v3)
      {
        goto LABEL_16;
      }
    }

    v8 = v7[4];
    v9 = v7[5];

    sub_1BC860340();
    v11 = v10;

    if (v11)
    {
      sub_1BC86279C();
    }

LABEL_14:

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1BC857AF0()
{
  OUTLINED_FUNCTION_5();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_1BC8F7264();
  v1[24] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[25] = v4;
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC857B94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_2();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_82_1();
  a22 = v24;
  v27 = v24;
  if ([*(v24[23] + 104) voicemailSearchEnabled])
  {
    v28 = *(v24[22] + 16);
    if (v28)
    {
      if (qword_1EDC20730 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        v89 = v24[22];
      }

      v29 = sub_1BC8F7734();
      v24[27] = OUTLINED_FUNCTION_37_0(v29, qword_1EDC2B3C0);

      v30 = sub_1BC8F7714();
      v31 = sub_1BC8F8204();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v24[24];
        v33 = v24[22];
        v34 = OUTLINED_FUNCTION_21_1();
        v35 = OUTLINED_FUNCTION_28();
        a13 = v35;
        *v34 = 136446210;
        v36 = OUTLINED_FUNCTION_44_2();
        v37 = MEMORY[0x1BFB29280](v36);
        v39 = sub_1BC7A9A4C(v37, v38, &a13);

        *(v34 + 4) = v39;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_0();
      }

      v45 = v24[25];
      v46 = v24[22];
      v91 = *(v27[23] + 96);
      a13 = MEMORY[0x1E69E7CC0];
      sub_1BC7AD404();
      v47 = a13;
      v48 = *(v45 + 16);
      v45 += 16;
      v49 = v46 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
      v92 = *(v45 + 56);
      v93 = v48;
      v94 = v45;
      v50 = (v45 - 8);
      do
      {
        v51 = v27[26];
        v52 = v27;
        v53 = v27[24];
        v93(v51, v49, v53);
        v54 = sub_1BC8F7204();
        v56 = v55;
        (*v50)(v51, v53);
        a13 = v47;
        v58 = *(v47 + 16);
        v57 = *(v47 + 24);
        if (v58 >= v57 >> 1)
        {
          OUTLINED_FUNCTION_37(v57);
          sub_1BC7AD404();
          v47 = a13;
        }

        *(v47 + 16) = v58 + 1;
        v59 = v47 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v49 += v92;
        --v28;
        v27 = v52;
      }

      while (v28);
      v60 = sub_1BC8F7E34();
      v52[28] = v60;

      v52[2] = v52;
      v52[3] = sub_1BC857F74;
      v61 = swift_continuation_init();
      v52[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
      v52[10] = MEMORY[0x1E69E9820];
      v52[11] = 1107296256;
      v52[12] = sub_1BC890F2C;
      v52[13] = &block_descriptor_104;
      v52[14] = v61;
      [v91 deleteSearchableItemsWithIdentifiers:v60 completionHandler:v52 + 10];
      OUTLINED_FUNCTION_32_7();

      return MEMORY[0x1EEE6DEC8](v62, v63, v64, v65, v66, v67, v68, v69, v91, v92, v93, v94);
    }

    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v70 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v70, qword_1EDC2B3C0);
    v71 = sub_1BC8F7714();
    v72 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v72))
    {
      v73 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v73);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_18_12();
    }
  }

  v79 = v24[26];

  v80 = v24[1];
  OUTLINED_FUNCTION_32_7();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BC857F74()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC858070()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 216);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  v10 = *(v0 + 208);

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_1BC858118()
{
  OUTLINED_FUNCTION_9_10();
  v21 = v0;
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  swift_willThrow();

  v5 = v3;
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F81E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[29];
    OUTLINED_FUNCTION_21_1();
    v20 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_94(4.8751e-34);
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v12, v13, &v20);
    OUTLINED_FUNCTION_14_7();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v14, v15, "Encountered an error while indexing deleted messages: %{public}s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v16 = v0[29];
  }

  v17 = v0[26];

  OUTLINED_FUNCTION_27();

  return v18();
}

uint64_t sub_1BC858248()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1BC8F7264();
  v1[9] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_47_3();
  v9 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8588F8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC858D64()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1BC858E64()
{
  OUTLINED_FUNCTION_22_0();
  v1 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v1 != v0[15])
  {
    v2 = v0[6];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB29A00](v1);
    }

    else
    {
      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v3 = *(v2 + 8 * v1 + 32);
    }

    v4 = v3;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (sub_1BC8592D0())
    {
      sub_1BC8F8654();
      v5 = *(v7 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v1;
  }

  v0[18] = v7;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_23_6(v6);

  sub_1BC856984(v7);
}

uint64_t sub_1BC858FB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8590B8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (*(v0[7] + 16))
  {
    v1 = v0[12];

    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();
    v4 = OUTLINED_FUNCTION_21(v3);
    v5 = v0[7];
    if (v4)
    {
      v6 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_71_2(v6, 3.9122e-34);
      OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v7, v8, "Removing deleted %{public}ld messages");
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      v19 = v0[7];
    }

    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_3_19(v20);
    OUTLINED_FUNCTION_112();

    return sub_1BC857AF0();
  }

  else
  {
    v9 = v0[11];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1BC8591CC()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v1 + 88);

  v6 = *(v3 + 8);

  return v6();
}

BOOL sub_1BC8592D0()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_17_1();
  if (*(v0 + v1) > 1u)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_17_1();
  return *(v0 + v2) == 0;
}

uint64_t sub_1BC859344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;

  sub_1BC8333D4();
}

uint64_t sub_1BC859448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v11 = swift_task_alloc();
  v7[10] = v11;
  *v11 = v7;
  v11[1] = sub_1BC859504;

  return sub_1BC85AD80(a5, a6, a7);
}

uint64_t sub_1BC859504()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC859604()
{
  OUTLINED_FUNCTION_22_0();
  v38 = v0;
  v1 = v0[11];
  if (!v1)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v12 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3C0);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v14))
    {
      v15 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v15);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    goto LABEL_13;
  }

  if (v1 > 100)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v2 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v4))
    {
      v5 = v0[11];
      v6 = OUTLINED_FUNCTION_21_1();
      *v6 = 134349056;
      *(v6 + 4) = v5;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      OUTLINED_FUNCTION_18_12();
    }

    type metadata accessor for SpotlightIndexManagerUtilities();
    v37 = 64;
    static SpotlightIndexManagerUtilities.setVoicemailsNeedsDeferredReindexing(for:defaults:)(&v37, 0);
LABEL_13:
    OUTLINED_FUNCTION_27();

    return v21();
  }

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EDC2B3C0);
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v25))
  {
    v26 = v0[11];
    v27 = OUTLINED_FUNCTION_21_1();
    *v27 = 134349056;
    *(v27 + 4) = v26;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_18_12();
  }

  v33 = swift_task_alloc();
  v0[13] = v33;
  *v33 = v0;
  v33[1] = sub_1BC859888;
  v34 = v0[8];
  v35 = v0[9];
  v36 = v0[6];
  OUTLINED_FUNCTION_28_9(v0[7]);

  return sub_1BC859AA4();
}

uint64_t sub_1BC859888()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC859968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v23 = v18[12];
  v24 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v24, qword_1EDC2B3C0);
  v25 = v23;
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F81E4();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v18[12];
  if (v28)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v31 = v18[2];
    v30 = v18[3];
    v32 = v18[4];
    v33 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v33, v34, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v35, v36, "Error checking messages count: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1BC859AA4()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v1[6] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[7] = Request;
  OUTLINED_FUNCTION_25(Request);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_47_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_26(v11);
  v1[9] = v12;
  v14 = *(v13 + 64);
  v1[10] = OUTLINED_FUNCTION_47_3();
  v15 = swift_task_alloc();
  v1[11] = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_15_9(v15);

  return sub_1BC85A734(v7, v5, v3);
}

uint64_t sub_1BC859BC4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC859CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();
  v15 = v14[12];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[9];
    v67 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDD44(0, v16, 0);
    v18 = v67;
    v19 = (v15 + 40);
    do
    {
      v20 = v14[10];
      v21 = *(v19 - 1);
      v22 = *v19;

      OUTLINED_FUNCTION_45_2();
      sub_1BC8F71F4();

      a11 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_37(v23);
        sub_1BC7DDD44(v26, v24 + 1, 1);
      }

      v25 = v14[10];
      *(v18 + 16) = v24 + 1;
      sub_1BC862FD0(v25, v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, &unk_1EBCF5D70, &qword_1BC8FC740);
      v19 += 2;
      --v16;
    }

    while (v16);
    v27 = v14[12];
  }

  else
  {
    v28 = v14[12];

    v18 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1BC85AA84(v18);

  if (v29)
  {
    v31 = v14[7];
    v30 = v14[8];
    v32 = v14[6];
    OUTLINED_FUNCTION_21_4();
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_1F3B36A78;
    v34 = v33 | 0x8000000000000000;
    OUTLINED_FUNCTION_21_4();
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_1F3B36AA0;
    v36 = v35 | 0x6000000000000000;
    OUTLINED_FUNCTION_21_4();
    v37 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v38 = OUTLINED_FUNCTION_55();
    *(v38 + 16) = xmmword_1BC8FEAA0;
    *(v38 + 32) = v34;
    *(v38 + 40) = v36;
    *(v37 + 16) = v38;
    OUTLINED_FUNCTION_21_4();
    v39 = swift_allocObject();
    *(v39 + 16) = v29;
    v40 = v39 | 0x1000000000000000;
    OUTLINED_FUNCTION_21_4();
    v41 = swift_allocObject();
    v14[14] = v41;
    v42 = OUTLINED_FUNCTION_55();
    *(v42 + 16) = xmmword_1BC8FEAA0;
    *(v42 + 32) = v37 | 0xC000000000000000;
    *(v42 + 40) = v40;
    *(v41 + 16) = v42;

    sub_1BC8F7254();
    *(v30 + v31[5]) = v41 | 0xC000000000000000;
    *(v30 + v31[6]) = 10;
    *(v30 + v31[7]) = 0;
    v43 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    v44 = (v30 + v31[8]);
    *v44 = v43;
    v44[1] = v45;
    *(v30 + v31[9]) = 0x7FFFFFFFFFFFFFFFLL;
    *(v30 + v31[10]) = 0;
    v46 = *__swift_project_boxed_opaque_existential_1((v32 + 16), *(v32 + 40));
    v47 = swift_task_alloc();
    v14[15] = v47;
    *v47 = v14;
    v47[1] = sub_1BC85A070;
    OUTLINED_FUNCTION_28_9(v14[8]);
    OUTLINED_FUNCTION_62_1();

    return sub_1BC7BF034();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v50 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v50, qword_1EDC2B3C0);
    v51 = sub_1BC8F7714();
    v52 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v52))
    {
      v53 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v53);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    OUTLINED_FUNCTION_101_0();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_62_1();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1BC85A070()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85A170()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = v0[16];
  v2 = sub_1BC8F7734();
  v0[18] = __swift_project_value_buffer(v2, qword_1EDC2B3C0);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    v5 = OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_100_0(v5, 3.9122e-34);
    OUTLINED_FUNCTION_78_2(v6);

    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v7, v8, "Indexing %{public}ld messages");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v9 = v0[16];
  }

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1BC85A410;
  v11 = v0[6];
  v12 = OUTLINED_FUNCTION_28_9(v0[16]);

  return sub_1BC856984(v12);
}

uint64_t sub_1BC85A2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  v23 = v18[14];
  v24 = v18[8];

  sub_1BC7ADC24(v24);
  v25 = v18[17];
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v26 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v26, qword_1EDC2B3C0);
  v27 = v25;
  v28 = sub_1BC8F7714();
  v29 = sub_1BC8F81E4();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v31 = v18[2];
    v30 = v18[3];
    v32 = v18[4];
    v33 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v33, v34, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_58_3(&dword_1BC7A3000, v28, v29, "Error fetching messages: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_1BC85A410()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 152);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC85A510()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[18];
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_72_1(v3);
  v5 = v0[14];
  v6 = v0[8];
  if (v4)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = v0[14];
  }

  sub_1BC7ADC24(v6);
  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BC85A5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  v23 = v18[13];
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v24 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v24, qword_1EDC2B3C0);
  v25 = v23;
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F81E4();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v29 = v18[2];
    v28 = v18[3];
    v30 = v18[4];
    v31 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v31, v32, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_58_3(&dword_1BC7A3000, v26, v27, "Error fetching messages: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1BC85A734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1_19(sub_1BC85A750);
}

uint64_t sub_1BC85A750()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_21_4();
  v5 = swift_allocObject();
  v0[7] = v5;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_1BC85B020(v7, v3, v1);
  v0[8] = v8;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *v11 = v0;
  v11[1] = sub_1BC85A8B0;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85A8B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC85A9B4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  v2 = OUTLINED_FUNCTION_79_1();

  return v3(v2);
}

uint64_t sub_1BC85AA14()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_27();
  v4 = *(v0 + 88);

  return v3();
}

uint64_t sub_1BC85AA84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v22 - v7;
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v27 = a1;
  v28 = *(a1 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C();
  v16 = 0;
  v17 = v29;
  v23 = v9;
  v18 = (v9 + 32);
  while (v28 != v16)
  {
    sub_1BC7E8B8C(v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16, v24);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
      sub_1BC862F74(v6, &unk_1EBCF5D70, &qword_1BC8FC740);
      return 0;
    }

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v19 = *v18;
    (*v18)(v15, v6, v8);
    v19(v13, v15, v8);
    v29 = v17;
    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1BC7DDB5C();
      v17 = v29;
    }

    *(v17 + 16) = v20 + 1;
    v19((v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20), v13, v8);
    ++v16;
  }

  return v17;
}

uint64_t sub_1BC85AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1_19(sub_1BC85AD9C);
}

uint64_t sub_1BC85AD9C()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_21_4();
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1BC85B020(v6, v3, v2);
  v0[8] = v7;

  v8 = [v7 queryContext];
  [v8 setCounting_];

  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1BC85AF1C;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85AF1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

id sub_1BC85B020(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1BC860F60(a1, a2, a3);
  OUTLINED_FUNCTION_24_4();
  v3 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v4 = OUTLINED_FUNCTION_55();
  *(v4 + 16) = xmmword_1BC8FC230;
  v5 = *MEMORY[0x1E69935F8];
  *(v4 + 32) = sub_1BC8F7C24();
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_50_0();
  sub_1BC86273C();
  v7 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v8 = OUTLINED_FUNCTION_29();
  return sub_1BC86257C(v8, v9, v3);
}

id sub_1BC85B0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862CAC;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B460;
  v24 = &block_descriptor_59;
  v11 = _Block_copy(&aBlock);

  [a2 setCountChangedHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862CB4;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_65;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

uint64_t sub_1BC85B40C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, a1);
  v7 = v5 + a1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_1BC85B460(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1BC85B4B4(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results from Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(a4 + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results count for contact change query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v25 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F74();
  }
}

void sub_1BC85B8C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1BC85B930(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC85B948);
}

uint64_t sub_1BC85B948()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_21_4();
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v2 = sub_1BC85BC94();
  v0[6] = v2;
  v3 = [v2 queryContext];
  v4 = sub_1BC8F7E34();
  [v3 setFetchAttributes_];

  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D98, &qword_1BC904150);
  *v7 = v0;
  v7[1] = sub_1BC85BAC0;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85BAC0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC85BBC4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_79_1();

  return v3(v2);
}

uint64_t sub_1BC85BC24()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_27();
  v4 = *(v0 + 72);

  return v3();
}

id sub_1BC85BC94()
{
  sub_1BC8F85A4();
  v0 = *MEMORY[0x1E6963EA0];
  v1 = sub_1BC8F7C24();
  v3 = v2;

  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1BFB29120](0xD000000000000016);
  v4 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v5 = OUTLINED_FUNCTION_55();
  *(v5 + 16) = xmmword_1BC8FC230;
  v6 = *MEMORY[0x1E69935F8];
  *(v5 + 32) = sub_1BC8F7C24();
  *(v5 + 40) = v7;
  OUTLINED_FUNCTION_50_0();
  sub_1BC86273C();
  v8 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v9 = OUTLINED_FUNCTION_29();
  return sub_1BC86257C(v9, v10, v4);
}

id sub_1BC85BDA4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862C08;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85C634;
  v24 = &block_descriptor_3;
  v11 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862C28;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_51;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

void sub_1BC85C0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v45 - v6;
  v8 = sub_1BC8F7264();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  if (qword_1EDC20730 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v14 = sub_1BC8F7734();
    __swift_project_value_buffer(v14, qword_1EDC2B3C0);

    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F8204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = sub_1BC7C0454(a1);

      _os_log_impl(&dword_1BC7A3000, v15, v16, "Found %{public}ld messages with a summary", v17, 0xCu);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
    }

    else
    {
    }

    v56 = sub_1BC7C0454(a1);
    if (!v56)
    {
      break;
    }

    if (v56 < 1)
    {
      __break(1u);
LABEL_30:
      sub_1BC8F8B44();
      __break(1u);
      return;
    }

    v18 = 0;
    v55 = a1 & 0xC000000000000001;
    v49 = a1;
    v50 = (v45 + 16);
    v51 = (v45 + 8);
    v52 = (v45 + 32);
    v47 = a2;
    v48 = v7;
    v46 = v13;
    while (1)
    {
      if (v55)
      {
        v19 = MEMORY[0x1BFB29A00](v18, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 uniqueIdentifier];
      sub_1BC8F7C24();

      sub_1BC8F71F4();

      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {

        sub_1BC862F74(v7, &unk_1EBCF5D70, &qword_1BC8FC740);
        goto LABEL_24;
      }

      (*v52)(v13, v7, v8);
      v22 = sub_1BC8626CC([v20 attributeSet]);
      if (!v23)
      {
        (*v51)(v13, v8);

        goto LABEL_24;
      }

      v24 = v23;
      v53 = v22;
      v7 = *v50;
      v25 = v13;
      v13 = v54;
      a1 = v8;
      (*v50)(v54, v25, v8);
      swift_beginAccess();
      v26 = *(a2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v57 = *(a2 + 16);
      v27 = v57;
      *(a2 + 16) = 0x8000000000000000;
      v28 = sub_1BC83C928();
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      a2 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v13 = v28;
      v32 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DC0, &qword_1BC904168);
      if (sub_1BC8F8734())
      {
        v33 = sub_1BC83C928();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_30;
        }

        v13 = v33;
      }

      v35 = v57;
      if (v32)
      {
        v36 = (v57[7] + 24 * v13);
        v37 = v36[2];
        *v36 = 1;
        v36[1] = v53;
        v36[2] = v24;

        v8 = a1;
      }

      else
      {
        v57[(v13 >> 6) + 8] |= 1 << v13;
        v8 = a1;
        (v7)(v35[6] + *(v45 + 72) * v13, v54, a1);
        v38 = (v35[7] + 24 * v13);
        v39 = v53;
        *v38 = 1;
        v38[1] = v39;
        v38[2] = v24;
        v40 = v35[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_27;
        }

        v35[2] = v42;
      }

      v43 = *v51;
      (*v51)(v54, v8);
      a2 = v47;
      v44 = *(v47 + 16);
      *(v47 + 16) = v35;

      swift_endAccess();

      v13 = v46;
      v43(v46, v8);
      v7 = v48;
      a1 = v49;
LABEL_24:
      if (v56 == ++v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }
}

uint64_t sub_1BC85C634(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1BC7D9730(0, &qword_1EDC1DE38, 0x1E6964E80);
  v3 = sub_1BC8F7E54();

  v2(v3);
}

void sub_1BC85C6B8(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Summarized messages search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results for summarized messages in Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results for query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v25 = *(a4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F74();
  }
}

uint64_t sub_1BC85CAD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 104);
  swift_unknownObjectRelease();

  v2 = *(v0 + 160);

  v3 = *(v0 + 168);

  v4 = *(v0 + 176);

  return v0;
}

uint64_t sub_1BC85CB48()
{
  sub_1BC85CAD0();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1BC85CBA0()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7294();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  v6 = sub_1BC8F71E4();
  v1[6] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC85CCA4()
{
  OUTLINED_FUNCTION_32();
  if (![*(*(v0 + 16) + 104) voicemailSearchEnabled])
  {
    goto LABEL_8;
  }

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1BC8F7734();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  v10 = *(v0 + 16);

  type metadata accessor for SpotlightIndexManagerUtilities();
  v11 = *(v10 + 152);
  *(v0 + 88) = v11;
  v12 = static SpotlightIndexManagerUtilities.voicemailsNeedsDeferredReindexing(defaults:)(v11);
  *(v0 + 104) = v12;
  v13 = static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(v11);
  *(v0 + 105) = v13 & 1;
  if ((v13 & 1) != 0 || v12)
  {
    v19 = *(v0 + 72);
    sub_1BC8F71D4();
    v20 = sub_1BC8F7714();
    v21 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v21))
    {
      v22 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v22);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v28 = swift_task_alloc();
    *(v0 + 96) = v28;
    *v28 = v0;
    v28[1] = sub_1BC85CEAC;
    v29 = *(v0 + 16);

    return sub_1BC85E19C();
  }

  else
  {
LABEL_8:
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 40);

    OUTLINED_FUNCTION_27();

    return v17();
  }
}