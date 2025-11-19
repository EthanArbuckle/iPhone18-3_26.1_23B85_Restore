uint64_t (*sub_1D5089C50(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1D50A199C(v4, a2);
  return sub_1D50A24DC;
}

uint64_t (*sub_1D5089CB4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D50A1A2C(v6, a2, a3);
  return sub_1D5089D28;
}

void sub_1D5089D2C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MusicCatalogInternalSearchResponse.requestedTerm.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCatalogInternalSearchResponse.context.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D5089DC0(v2, v3);
}

uint64_t sub_1D5089DC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.noResultsDescription.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_71();
}

BOOL MusicCatalogInternalSearchResponse.hasAdditionalItems.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_182_1(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = *(sub_1D5089E8C() + 16);

  return v8 != 0;
}

uint64_t sub_1D5089E8C()
{
  v1 = type metadata accessor for MusicSearchResultGroup();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = 0;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v9)
    {
      return v12;
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    v13 = v12;
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    sub_1D50A2244(v10 + v14 + v15 * v9, v8);
    v16 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    if (sub_1D560DA08())
    {
      sub_1D50A21EC(v8, v23);
      v12 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v13 + 16);
        sub_1D4F0416C();
        v12 = v24;
      }

      v19 = *(v12 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v12 + 24) >> 1)
      {
        v22 = v19 + 1;
        sub_1D4F0416C();
        v20 = v22;
        v12 = v24;
      }

      ++v9;
      *(v12 + 16) = v20;
      result = sub_1D50A21EC(v23, v12 + v14 + v19 * v15);
    }

    else
    {
      result = sub_1D50A229C();
      ++v9;
      v12 = v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t MusicCatalogInternalSearchResponse.responseWithAdditionalItems()()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 232) = v2;
  memcpy((v1 + 16), v0, 0x50uLL);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D508A144()
{
  OUTLINED_FUNCTION_91();
  v0[28] = v0[2];
  v1 = sub_1D560F628();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_107_5();

  v4 = sub_1D560F618();
  v0[30] = v4;
  v5 = type metadata accessor for MusicSearchResultGroup();
  v6 = swift_task_alloc();
  v0[31] = v6;
  v6[2] = v0 + 2;
  v6[3] = v4;
  v6[4] = v0 + 28;
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_1D508A27C;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v8, v5, v9, 0, 0, &unk_1D5630D80, v6, v5);
}

uint64_t sub_1D508A27C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (!v0)
  {
    v9 = *(v3 + 248);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D508A380()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);

  v3 = *(v0 + 24);
  v4 = *(v0 + 224);
  v5 = *(v0 + 56);
  *(v0 + 96) = *(v0 + 40);
  *(v0 + 112) = v5;
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  *(v0 + 160) = v3;
  *(v0 + 176) = v7;
  *(v2 + 8) = v3;
  *v2 = v4;
  v8 = *(v0 + 40);
  *(v2 + 40) = *(v0 + 56);
  *(v2 + 24) = v8;
  *(v2 + 56) = v6;
  *(v2 + 64) = *(v0 + 80);
  sub_1D508AD84(v0 + 160, v0 + 192);
  sub_1D4F39AB0(v0 + 96, v0 + 128, &qword_1EC7EF280, &qword_1D5630D88);
  sub_1D4F39AB0(v0 + 176, v0 + 208, &qword_1EC7EC3B0, &qword_1D5630D90);
  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D508A460()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[28];

  OUTLINED_FUNCTION_55();
  v5 = v0[33];

  return v4();
}

uint64_t sub_1D508A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3E8, &qword_1D56311D0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F0, &unk_1D56311D8);
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for MusicSearchResultGroup();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v5[20] = *(v11 + 64);
  v5[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D508A67C, 0, 0);
}

uint64_t sub_1D508A67C()
{
  v48 = v0;
  memcpy(__dst, *(v0 + 88), sizeof(__dst));
  v1 = sub_1D5089E8C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v46 = *(v0 + 160);
    v45 = **(v0 + 80);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v43 = *(v3 + 72);
    v44 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = sub_1D5615458();
    v42 = v5;
    do
    {
      v6 = *(v0 + 176);
      v7 = *(v0 + 184);
      v8 = *(v0 + 168);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
      OUTLINED_FUNCTION_10_46();
      sub_1D50A2244(v4, v8);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      OUTLINED_FUNCTION_5_48();
      sub_1D50A21EC(v8, v14 + v44);
      v15 = OUTLINED_FUNCTION_159();
      sub_1D4F39AB0(v15, v16, &qword_1EC7EB710, &qword_1D561F440);
      v17 = OUTLINED_FUNCTION_45_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v5);
      v20 = *(v0 + 176);
      if (EnumTagSinglePayload == 1)
      {
        v21 = OUTLINED_FUNCTION_121();
        sub_1D4E50004(v21, v22, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        v23 = *(*(v5 - 8) + 8);
        v24 = OUTLINED_FUNCTION_68_4();
        v25(v24);
      }

      if (*v13)
      {
        v26 = *(v12 + 24);
        v27 = *v13;
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_13_8();
        v28 = sub_1D5615338();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      if (v30 | v28)
      {
        v31 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v28;
        *(v0 + 40) = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v0 + 184);
      v33 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v31;
      *(v0 + 64) = v45;
      swift_task_create();

      sub_1D4E50004(v32, &qword_1EC7EB710, &qword_1D561F440);
      v5 = v42;
      v4 += v43;
      --v2;
    }

    while (v2);
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 144);
  v36 = **(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615508();
  v37 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 192) = v38;
  *v38 = v39;
  v40 = OUTLINED_FUNCTION_77_5(v38);

  return MEMORY[0x1EEE6DAD8](v40);
}

uint64_t sub_1D508A990()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D508AA8C()
{
  OUTLINED_FUNCTION_57(v0[14], 1, v0[18]);
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);

    OUTLINED_FUNCTION_22_1();

    return v5();
  }

  else
  {
    v7 = v0[25];
    v8 = v0[21];
    v9 = v0[12];
    v10 = v0[13];
    OUTLINED_FUNCTION_5_48();
    v11 = OUTLINED_FUNCTION_214();
    sub_1D50A21EC(v11, v12);
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    *(v13 + 24) = v8;
    sub_1D560F608();

    OUTLINED_FUNCTION_40_21();
    sub_1D50A229C();
    v14 = *(MEMORY[0x1E69E8710] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[24] = v15;
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_77_5();

    return MEMORY[0x1EEE6DAD8](v17);
  }
}

uint64_t sub_1D508AC18()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v5 = v0[9];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D508ACC8()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1D4E73560;

  return sub_1D508A4CC(v5, v3, v6, v7, v8);
}

uint64_t sub_1D508ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 88) = v9;
  v10 = type metadata accessor for MusicSearchResultGroup();
  *(v4 + 96) = v10;
  *(v4 + 120) = *(v10 + 24);
  v11 = *(MEMORY[0x1E6974FE8] + 4);
  v12 = swift_task_alloc();
  *(v4 + 104) = v12;
  v13 = sub_1D50A2470(&qword_1EC7EAAE0, type metadata accessor for GenericMusicItem);
  *v12 = v4;
  v12[1] = sub_1D508AFBC;

  return MEMORY[0x1EEDCE948](v9, 0, 1, v5, v13);
}

uint64_t sub_1D508AFBC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D508B0B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(*(v0 + 48) + 16);
  v3(*(v0 + 72), *(v0 + 32) + *(v0 + 120), *(v0 + 40));
  v4 = OUTLINED_FUNCTION_159();
  sub_1D4F39AB0(v4, v5, v6, v7);
  OUTLINED_FUNCTION_5_1(v1);
  if (v22)
  {
    sub_1D4E50004(*(v0 + 80), &qword_1EC7EF3F8, &qword_1D5631200);
  }

  else
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 72);
    v35 = v3;
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);
    (*(v11 + 32))(v10, *(v0 + 80), *(v0 + 40));
    *(v0 + 16) = sub_1D507A7EC(v10, v9);
    type metadata accessor for GenericMusicItem();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
    OUTLINED_FUNCTION_97_8();
    sub_1D50A2470(v12, v13);
    OUTLINED_FUNCTION_96();
    sub_1D4E62A60(v14, &qword_1EC7EF3B8, &qword_1D5631140);
    sub_1D560DAD8();
    sub_1D560DA48();
    v15 = *(v11 + 8);
    v16 = OUTLINED_FUNCTION_86_0();
    v15(v16);
    v17 = OUTLINED_FUNCTION_159();
    v15(v17);
    v3 = v35;
  }

  v18 = *(v0 + 32);
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[3];
  v36 = v18[2];
  v3(*(v0 + 24) + *(*(v0 + 96) + 24), *(v0 + 72), *(v0 + 40));
  v22 = v20 == 7368564 && v19 == 0xE300000000000000;
  if (v22)
  {
    v31 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_159();
    v31 = OUTLINED_FUNCTION_209_1();
  }

  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 56);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 24);

  sub_1D4E50004(v23, &qword_1EC7EF3F8, &qword_1D5631200);
  *v28 = v20;
  v28[1] = v19;
  v28[2] = v36;
  v28[3] = v21;
  *(v28 + *(v24 + 28)) = v31 & 1;
  (*(v26 + 8))(v25, v27);

  OUTLINED_FUNCTION_22_1();

  return v29();
}

uint64_t sub_1D508B3A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  OUTLINED_FUNCTION_55();
  v7 = v0[14];

  return v6();
}

void sub_1D508B430(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v12[2] = a2;

  v5 = sub_1D547584C(sub_1D50A23EC, v12, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D54B458C(v8);
      v8 = v11;
      *a1 = v11;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v5 < *(v8 + 16))
        {
          v10 = *(type metadata accessor for MusicSearchResultGroup() - 8);
          sub_1D50A240C(a2, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5);
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1D508B55C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D5616168() & 1;
  }
}

uint64_t static MusicCatalogInternalSearchResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  v52 = *(a1 + 56);
  v50 = *(a1 + 57);
  v46 = a1[8];
  v48 = a1[9];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v53 = a2[5];
  v54 = a1[4];
  v13 = a2[6];
  v51 = *(a2 + 56);
  v49 = *(a2 + 57);
  v45 = a2[8];
  v47 = a2[9];
  sub_1D4EF6CE4();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v3 == v9 && v5 == v11;
  if (!v15 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if (v54)
  {
    if (v12)
    {
      v16 = v4 == v10 && v54 == v12;
      if (v16 || (sub_1D5616168() & 1) != 0)
      {
        v17 = OUTLINED_FUNCTION_32_23();
        sub_1D5089DC0(v17, v18);
        OUTLINED_FUNCTION_128_6();
        v19 = OUTLINED_FUNCTION_32_23();
        sub_1D5089DC0(v19, v20);
        sub_1D4EFA6B4();
        if (v21)
        {
          sub_1D4EFAB38();
          v23 = v22;
          OUTLINED_FUNCTION_141_2();
          sub_1D50A0270(v24, v25);
          v26 = v23 ^ 1;
LABEL_26:

          v42 = OUTLINED_FUNCTION_32_23();
          sub_1D50A0270(v42, v43);
          result = 0;
          if (v26 & 1) != 0 || ((v52 ^ v51))
          {
            return result;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v36 = OUTLINED_FUNCTION_32_23();
        sub_1D5089DC0(v36, v37);
        OUTLINED_FUNCTION_128_6();
        v38 = OUTLINED_FUNCTION_32_23();
        sub_1D5089DC0(v38, v39);
      }

      OUTLINED_FUNCTION_141_2();
      sub_1D50A0270(v40, v41);
      v26 = 1;
      goto LABEL_26;
    }

    sub_1D5089DC0(v4, v54);
    OUTLINED_FUNCTION_141_2();
    sub_1D5089DC0(v27, v28);
    v29 = OUTLINED_FUNCTION_32_23();
    sub_1D5089DC0(v29, v30);

    goto LABEL_19;
  }

  sub_1D5089DC0(v4, 0);
  if (v12)
  {
    OUTLINED_FUNCTION_128_6();
LABEL_19:
    v31 = OUTLINED_FUNCTION_32_23();
    sub_1D50A0270(v31, v32);
    OUTLINED_FUNCTION_141_2();
    sub_1D50A0270(v33, v34);
    return 0;
  }

  sub_1D5089DC0(v10, 0);
  sub_1D50A0270(v4, 0);
  result = 0;
  if (v52 != v51)
  {
    return result;
  }

LABEL_28:
  if (((v50 ^ v49) & 1) == 0)
  {
    if (v48)
    {
      if (v47)
      {
        v44 = v46 == v45 && v48 == v47;
        if (v44 || (sub_1D5616168() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v47)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 56);
  v8 = *(v0 + 57);
  v9 = v0[9];
  v11 = v0[6];
  v12 = v0[8];
  sub_1D4F06FD8();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v6)
  {
    sub_1D5614E28();
    sub_1D4F08CAC();
    sub_1D4F08B78();
  }

  sub_1D56162F8();
  sub_1D56162F8();
  if (!v9)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MusicCatalogInternalSearchResponse.hashValue.getter()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D508BA10()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicCatalogInternalSearchResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  *(v1 + 40) = v5;
  v6 = *(v5 - 8);
  *(v1 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v8 = type metadata accessor for MusicSearchResultGroup();
  *(v1 + 64) = v8;
  v9 = *(v8 - 8);
  *(v1 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = *v0;
  *(v1 + 120) = *(v0 + 16);
  v11 = *(v0 + 40);
  *(v1 + 128) = *(v0 + 24);
  *(v1 + 144) = v11;
  *(v1 + 228) = *(v0 + 56);
  *(v1 + 229) = *(v0 + 57);
  *(v1 + 160) = *(v0 + 64);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D508BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 96);
  v5 = *(v4 + 104);
  v7 = *(v4 + 88);
  v9 = *(v4 + 64);
  v8 = *(v4 + 72);
  v10 = *(v5 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  *(v4 + 184) = 0;
  *(v4 + 192) = v11;
  *(v4 + 176) = v10;
  if (v10)
  {
    if (*(v5 + 16))
    {
      *(v4 + 224) = *(v8 + 80);
      *(v4 + 200) = *(v8 + 72);
      OUTLINED_FUNCTION_10_46();
      sub_1D50A2244(v12 + v13, v6);
      v14 = *(v9 + 24);
      v15 = *(MEMORY[0x1E6974FE0] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v4 + 208) = v16;
      *v16 = v17;
      a1 = OUTLINED_FUNCTION_82_8(v16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEDCE928](a1, a2, a3, a4);
  }

  else
  {
    v18 = *(v4 + 160);
    v19 = *(v4 + 168);
    v20 = *(v4 + 229);
    v21 = *(v4 + 228);
    v23 = *(v4 + 144);
    v22 = *(v4 + 152);
    v25 = *(v4 + 128);
    v24 = *(v4 + 136);
    v27 = *(v4 + 112);
    v26 = *(v4 + 120);
    v28 = *(v4 + 80);
    v29 = *(v4 + 56);
    v30 = *(v4 + 16);
    *v30 = v11;
    *(v30 + 8) = v27;
    *(v30 + 16) = v26;
    *(v30 + 24) = v25;
    *(v30 + 32) = v24;
    *(v30 + 40) = v23;
    *(v30 + 48) = v22;
    *(v30 + 56) = v21;
    *(v30 + 57) = v20;
    *(v30 + 64) = v18;
    *(v30 + 72) = v19;

    sub_1D5089DC0(v25, v24);

    OUTLINED_FUNCTION_22_1();

    return v31();
  }
}

uint64_t sub_1D508BD6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (v0)
  {
    v9 = *(v3 + 192);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D508BE70()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v7 = *v3;
  v6 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  (*(*(v0 + 48) + 16))(&v2[*(v5 + 24)], *(v0 + 56), *(v0 + 40));
  v10 = *(v3 + *(v5 + 28));
  *v2 = v7;
  *(v2 + 1) = v6;
  *(v2 + 2) = v9;
  *(v2 + 3) = v8;
  v2[*(v5 + 28)] = v10;
  OUTLINED_FUNCTION_10_46();
  v11 = OUTLINED_FUNCTION_128();
  sub_1D50A2244(v11, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 192);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = *(v14 + 16);
    v55 = *(v0 + 192);
    sub_1D4F01444();
    v14 = v56;
  }

  v15 = *(v14 + 16);
  if (v15 >= *(v14 + 24) >> 1)
  {
    sub_1D4F01444();
    v14 = v57;
  }

  v58 = *(v0 + 200);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 80);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);
  v21 = *(v0 + 40);
  v22 = (*(v0 + 224) + 32) & ~*(v0 + 224);
  sub_1D50A229C();
  (*(v19 + 8))(v20, v21);
  sub_1D50A229C();
  *(v14 + 16) = v15 + 1;
  OUTLINED_FUNCTION_5_48();
  v24 = sub_1D50A21EC(v18, v23);
  v28 = *(v0 + 176);
  v29 = *(v0 + 184) + 1;
  *(v0 + 184) = v29;
  *(v0 + 192) = v14;
  if (v29 == v28)
  {
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    v32 = *(v0 + 229);
    v33 = *(v0 + 228);
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v39 = *(v0 + 112);
    v38 = *(v0 + 120);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);
    v42 = *(v0 + 80);
    v59 = *(v0 + 56);
    v43 = *(v0 + 16);
    *v43 = v14;
    *(v43 + 8) = v39;
    *(v43 + 16) = v38;
    *(v43 + 24) = v37;
    *(v43 + 32) = v36;
    *(v43 + 40) = v35;
    *(v43 + 48) = v34;
    *(v43 + 56) = v33;
    *(v43 + 57) = v32;
    *(v43 + 64) = v30;
    *(v43 + 72) = v31;

    sub_1D5089DC0(v37, v36);

    OUTLINED_FUNCTION_22_1();

    return v44();
  }

  else
  {
    if (v29 >= *(*(v0 + 104) + 16))
    {
      __break(1u);
    }

    else
    {
      v46 = *(v0 + 96);
      v48 = *(v0 + 64);
      v47 = *(v0 + 72);
      *(v0 + 224) = *(v47 + 80);
      *(v0 + 200) = *(v47 + 72);
      OUTLINED_FUNCTION_10_46();
      sub_1D50A2244(v49, v46);
      v50 = *(v48 + 24);
      v51 = *(MEMORY[0x1E6974FE0] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 208) = v52;
      *v52 = v53;
      v24 = OUTLINED_FUNCTION_82_8();
    }

    return MEMORY[0x1EEDCE928](v24, v25, v26, v27);
  }
}

uint64_t sub_1D508C174()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  OUTLINED_FUNCTION_40_21();
  sub_1D50A229C();

  OUTLINED_FUNCTION_55();
  v6 = v0[27];

  return v5();
}

uint64_t sub_1D508C20C()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E6ED20;

  return MusicCatalogInternalSearchResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicCatalogInternalSearchResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v4 = sub_1D560CD48();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35[-1] - v20;
  sub_1D4E62938(a1, &v37);
  CatalogInternalSearchRawResponse.init(from:)();
  if (!v2)
  {
    memcpy(__dst, v38, 0x50uLL);
    type metadata accessor for MusicCatalogInternalSearchRequest(0);
    sub_1D50A2470(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest);
    sub_1D560E458();
    v22 = *(v13 + 16);
    v34 = v10;
    v22(v18, v21, v10);
    v23 = a1[3];
    v24 = a1[4];
    v25 = OUTLINED_FUNCTION_116();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    OUTLINED_FUNCTION_68_4();
    sub_1D5616378();
    v27 = a1[3];
    v28 = a1[4];
    v29 = OUTLINED_FUNCTION_116();
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_68_4();
    v31 = sub_1D5616368();
    sub_1D4E62938(a1, v35);
    sub_1D508C538(__dst, 0, 0xE000000000000000, v18, 0, 0, v9, v31, v35, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v36[0], v36[1], v36[2], v36[3], v36[4]);
    (*(v13 + 8))(v21, v34);
    memcpy(v40, v36, 0x50uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D508C538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v253 = v23;
  v263 = v24;
  v26 = v25;
  v243 = v27;
  v244 = v28;
  v234 = v29;
  v233 = v30;
  v229 = v31;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_4(v273);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v272 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  OUTLINED_FUNCTION_12_0(v44, &a14);
  v231 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D560CD48();
  v51 = OUTLINED_FUNCTION_4(v50);
  v230 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  v56 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader();
  v57 = OUTLINED_FUNCTION_20(v56, &a12);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_2();
  v276 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
  v69 = OUTLINED_FUNCTION_20(v68, &v280);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  v277 = v72;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v74);
  v271 = type metadata accessor for MusicSearchResultGroup();
  v75 = OUTLINED_FUNCTION_4(v271);
  v278 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v80 = MEMORY[0x1EEE9AC00](v79);
  v82 = (v228 - v81);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v83);
  OUTLINED_FUNCTION_194_2();
  i = v85[4];
  v255 = v85;
  if (i != 1)
  {
    v87 = *v85;
    v88 = v85[1];
    v89 = v85[2];
    v90 = v85[3];
    v91 = OUTLINED_FUNCTION_222();
    sub_1D50A2198(v91, v92);
    if (v88 == 1)
    {
      OUTLINED_FUNCTION_194_2();
      if (i)
      {
LABEL_4:
        v93 = i;
        OUTLINED_FUNCTION_132_4(v84);

        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_222();
      sub_1D524BC58();
      v84 = v279;
      if (i)
      {
        goto LABEL_4;
      }
    }
  }

  OUTLINED_FUNCTION_132_4(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  v93 = sub_1D5614BD8();

LABEL_7:
  v94 = *(v93 + 16);
  v256 = v50;
  if (v94)
  {
    v279 = MEMORY[0x1E69E7CC0];
    sub_1D4F0416C();
    v274 = v279;
    sub_1D5068458(v93);
    v95 = 0;
    v96 = v93 + 64;
    v240 = v230 + 16;
    v239 = v231 + 16;
    v238 = v26 & 1;
    v97 = HIBYTE(v234) & 0xF;
    if ((v234 & 0x2000000000000000) == 0)
    {
      v97 = v233 & 0xFFFFFFFFFFFFLL;
    }

    v237 = v97;
    v235 = v230 + 8;
    v236 = (v231 + 32);
    v248 = (v33 + 16);
    OUTLINED_FUNCTION_138_6(v33 + 8);
    v100 = v99;
    v101 = v94 - 1;
    v249 = v93;
    v245 = v93 + 64;
    v246 = v82;
    if ((v99 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v100 >= 1 << *(v93 + 32))
        {
          break;
        }

        if ((*(v96 + 8 * (v100 >> 6)) & (1 << v100)) == 0)
        {
          goto LABEL_88;
        }

        if (v98 != *(v93 + 36))
        {
          goto LABEL_89;
        }

        v267 = 1 << v100;
        v268 = v100 >> 6;
        v265 = v101;
        v266 = v98;
        v102 = v252;
        v103 = *(v252 + 48);
        v104 = *(v93 + 56);
        v105 = (*(v93 + 48) + 16 * v100);
        v107 = *v105;
        v106 = v105[1];
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
        OUTLINED_FUNCTION_4(v108);
        v110 = v109;
        v112 = *(v111 + 72);
        v270 = v100;
        v113 = v104 + v112 * v100;
        v114 = v251;
        v261 = *(v109 + 16);
        v261(v251 + v103, v113, v108);
        v115 = v277;
        v269 = v107;
        *v277 = v107;
        *(v115 + 1) = v106;
        v116 = *(v102 + 48);
        v254 = v110;
        v118 = *(v110 + 32);
        v117 = v110 + 32;
        v118(&v115[v116], v114 + v103, v108);
        v275 = v106;

        v119 = sub_1D56123B8();
        MEMORY[0x1EEE9AC00](v119);
        v120 = v263;
        v228[-4] = v255;
        v228[-3] = v120;
        v228[-2] = v253;
        v121 = sub_1D50DE1C4();
        v264 = v95;

        sub_1D560CD98();
        OUTLINED_FUNCTION_33();
        v262 = v122;
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v122);
        v126 = sub_1D56123E8();
        v128 = v127;
        v129 = *(v121 + 16);
        v130 = *(sub_1D56123B8() + 16);

        if (v129 < v130 && (v131 = sub_1D56123C8(), v132))
        {
          v133 = v131;
          v129 = v132;

          v126 = v133;
          v128 = v129;
          OUTLINED_FUNCTION_177_2();
        }

        else
        {
          OUTLINED_FUNCTION_177_2();
          if (!v128)
          {
            goto LABEL_26;
          }
        }

        OUTLINED_FUNCTION_195(&v270);
        v134 = v241;
        v135(v241, v263, v129);
        OUTLINED_FUNCTION_195(&v269);
        v136(v259, v244, v260);
        v137 = v242;
        OUTLINED_FUNCTION_137();
        v138();
        v139 = v137;
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v108);
        OUTLINED_FUNCTION_186(&a11);
        sub_1D560E6C8();
        v143 = v258;
        *(v117 + *(v258 + 20)) = v238;
        *(v117 + *(v143 + 24)) = v243;
        v144 = (v117 + *(v143 + 28));
        *v144 = v126;
        v144[1] = v128;
        if (v237)
        {
          OUTLINED_FUNCTION_195(&v265);
          v145(v134, v129);
          v126 = v234;

          v146 = v233;
        }

        else
        {
          OUTLINED_FUNCTION_66_1(&v262);
          sub_1D4F39AB0(v147, v148, &qword_1EC7EF3B0, &qword_1D5631138);
          OUTLINED_FUNCTION_57(v126, 1, v108);
          if (v173)
          {
            sub_1D4E50004(v126, &qword_1EC7EF3B0, &qword_1D5631138);
            v146 = 0;
          }

          else
          {
            v146 = sub_1D56123E8();
            OUTLINED_FUNCTION_136(&v281);
            v149(v126, v108);
          }

          sub_1D560C058();
          OUTLINED_FUNCTION_22_13();

          OUTLINED_FUNCTION_195(&v265);
          v150(v134, v256);
          if (!v126)
          {
            v126 = v234;

            v146 = v233;
          }
        }

        v151 = v258;
        v152 = v257;
        v153 = (v257 + *(v258 + 32));
        *v153 = v146;
        v153[1] = v126;
        (*v236)(v152 + *(v151 + 40), v259, v260);
        sub_1D4F39A1C(v139, v152 + *(v151 + 36), &qword_1EC7EF3B0, &qword_1D5631138);
        OUTLINED_FUNCTION_117_0(&v271);
        sub_1D50A21EC(v154, v155);
        sub_1D50A2470(&qword_1EC7EF3C8, type metadata accessor for MusicCatalogInternalSearchIncrementalLoader);
        OUTLINED_FUNCTION_150(&a17);
        sub_1D560E9C8();
        sub_1D50A229C();
        sub_1D4E50004(v276, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v156, v157, v158, v262);
        v159 = OUTLINED_FUNCTION_63_1();
        sub_1D4F39A1C(v159, v160, &qword_1EC7EA7D8, &unk_1D561E8B0);
LABEL_26:
        v280 = v121;
        type metadata accessor for GenericMusicItem();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
        OUTLINED_FUNCTION_97_8();
        sub_1D50A2470(&qword_1EDD5C600, v161);
        OUTLINED_FUNCTION_96();
        sub_1D4E62A60(&qword_1EDD528A8, &qword_1EC7EF3B8, &qword_1D5631140);
        v162 = v272;
        sub_1D560DAD8();
        OUTLINED_FUNCTION_117_0(&a17);
        sub_1D4F39AB0(v163, v164, &qword_1EC7EA7D8, &unk_1D561E8B0);
        v165 = v273;
        sub_1D560DA38();
        v166 = sub_1D56123D8();
        if (v167)
        {
          v168 = v166;
        }

        else
        {
          v168 = 0;
        }

        if (v167)
        {
          v169 = v167;
        }

        else
        {
          v169 = 0xE000000000000000;
        }

        v170 = v250;
        (*v248)(v250 + *(v271 + 24), v162, v165);
        v171 = v269;
        v172 = v275;
        v173 = v269 == 7368564 && v275 == 0xE300000000000000;
        if (v173)
        {
          v175 = 1;
        }

        else
        {
          v174 = OUTLINED_FUNCTION_209_1();
          v172 = v275;
          v175 = v174;
        }

        v93 = v249;
        v100 = v270;
        v50 = v247;
        i = *v247;
        v176 = v172;

        (i)(v272, v273);
        sub_1D4E50004(v276, &qword_1EC7EA7D8, &unk_1D561E8B0);
        *v170 = v171;
        v170[1] = v176;
        v170[2] = v168;
        v170[3] = v169;
        *(v170 + *(v271 + 28)) = v175 & 1;
        sub_1D4E50004(v277, &qword_1EC7EBD68, &qword_1D56492F0);
        v177 = v274;
        v279 = v274;
        v178 = *(v274 + 16);
        if (v178 >= *(v274 + 24) >> 1)
        {
          sub_1D4F0416C();
          v177 = v279;
        }

        *(v177 + 16) = v178 + 1;
        v179 = (*(v278 + 80) + 32) & ~*(v278 + 80);
        v274 = v177;
        v180 = v177 + v179 + *(v278 + 72) * v178;
        OUTLINED_FUNCTION_5_48();
        sub_1D50A21EC(v170, v181);
        v82 = v246;
        if (v100 >= -(-1 << *(v93 + 32)))
        {
          goto LABEL_90;
        }

        v96 = v245;
        if ((*(v245 + 8 * v268) & v267) == 0)
        {
          goto LABEL_91;
        }

        if (v266 != *(v93 + 36))
        {
          goto LABEL_92;
        }

        v182 = sub_1D5615A18();
        if (!v265)
        {

          v100 = v274;
          OUTLINED_FUNCTION_177_2();
          goto LABEL_48;
        }

        v100 = v182;
        v98 = *(v93 + 36);
        v101 = v265 - 1;
        v95 = v264;
      }

      while ((v182 & 0x8000000000000000) == 0);
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
    goto LABEL_74;
  }

  v264 = 0;
  v100 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v272 = a21;
  v183 = v255[8];
  i = v255[9];
  v273 = v255[7];
  v274 = v183;
  if (i)
  {
    v271 = v255[6];
    v184 = OUTLINED_FUNCTION_63_1();
    sub_1D50A2170(v184, v185);

    v186 = OUTLINED_FUNCTION_63_1();
    sub_1D50A2184(v186, v187);
    v188 = *(v100 + 16);
    v276 = *(i + 16);
    if (v276 == v188)
    {
      v50 = 0;
      v275 = i + 32;
      v277 = MEMORY[0x1E69E7CC0];
LABEL_51:
      while (v50 != v276)
      {
        if (v50 >= *(i + 16))
        {
          goto LABEL_93;
        }

        v189 = i;
        v190 = (v275 + 16 * v50);
        v93 = *v190;
        v191 = v190[1];
        ++v50;
        v192 = *(v100 + 16);

        for (i = 0; ; ++i)
        {
          if (v192 == i)
          {

            i = v189;
            goto LABEL_51;
          }

          if (i >= *(v100 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v193 = (*(v278 + 80) + 32) & ~*(v278 + 80);
          v194 = *(v278 + 72);
          OUTLINED_FUNCTION_10_46();
          sub_1D50A2244(v195, v82);
          v196 = *v82 == v93 && v82[1] == v191;
          if (v196 || (sub_1D5616168() & 1) != 0)
          {
            break;
          }

          OUTLINED_FUNCTION_40_21();
          sub_1D50A229C();
        }

        OUTLINED_FUNCTION_5_48();
        sub_1D50A21EC(v82, v232);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = *(v277 + 2);
          sub_1D4F01444();
          v277 = v200;
        }

        v197 = *(v277 + 2);
        if (v197 >= *(v277 + 3) >> 1)
        {
          sub_1D4F01444();
          v277 = v201;
        }

        *(v277 + 2) = v197 + 1;
        OUTLINED_FUNCTION_5_48();
        sub_1D50A21EC(v232, v198);
        i = v189;
      }

      OUTLINED_FUNCTION_177_2();
    }

    else
    {
      v277 = v100;
    }

    v203 = v273;
    v202 = v274;
    v204 = OUTLINED_FUNCTION_61();
    sub_1D50A2170(v204, v205);
    v206 = OUTLINED_FUNCTION_61();
    sub_1D50A2184(v206, v207);

    v208 = v271;
    LOBYTE(v93) = (v271 == 2) | v271 ^ 1;

    v209 = OUTLINED_FUNCTION_61();
    sub_1D50A2170(v209, v210);
    v211 = OUTLINED_FUNCTION_61();
    sub_1D50A2184(v211, v212);

    if ((v208 & 0xFF00) != 0x200)
    {
      v217 = (v208 >> 8) & 1;
      sub_1D4E50004(v272, &qword_1EC7EF3C0, &qword_1D5631148);

      goto LABEL_79;
    }

    v100 = v277;
  }

  else
  {
    LOBYTE(v93) = 1;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    goto LABEL_94;
  }

LABEL_74:
  v213 = sub_1D560C758();
  __swift_project_value_buffer(v213, qword_1EDD76DC8);
  v214 = sub_1D560C738();
  v215 = sub_1D56156C8();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    *v216 = 0;
    _os_log_impl(&dword_1D4E3F000, v214, v215, "The MusicCatalogInternalSearchResponse did not contain the natural language meta field.", v216, 2u);
    MEMORY[0x1DA6ED200](v216, -1, -1);
  }

  sub_1D4E50004(v272, &qword_1EC7EF3C0, &qword_1D5631148);
  if (!i)
  {
    sub_1D50A1F8C(v255);
    v220 = 0;
    v202 = 0;
    LOBYTE(v217) = 0;
    v277 = v100;
    goto LABEL_85;
  }

  LOBYTE(v217) = 0;
  v277 = v100;
  v203 = v273;
  v202 = v274;
LABEL_79:

  v218 = OUTLINED_FUNCTION_61();
  sub_1D50A2170(v218, v219);
  sub_1D50A1F8C(v255);

  if (v202 == 1)
  {
    v220 = 0;
    v202 = 0;
  }

  else if (v202)
  {
    v220 = v203;
  }

  else
  {
    v220 = 0;
  }

LABEL_85:
  v221 = v229;
  v222 = v228[3];
  v223 = v228[2];
  v224 = v228[1];
  v225 = v228[0];
  *v229 = v277;
  v221[1] = v233;
  v221[2] = v234;
  v221[3] = v222;
  v221[4] = v223;
  v221[5] = v224;
  v221[6] = v225;
  *(v221 + 56) = v93 & 1;
  *(v221 + 57) = v217;
  v221[8] = v220;
  v221[9] = v202;
  OUTLINED_FUNCTION_136(&v260);
  v226(v263, v50);
  OUTLINED_FUNCTION_136(&v261);
  v227(v244, v260);
  OUTLINED_FUNCTION_46();
}

uint64_t MusicCatalogInternalSearchResponse.encode(to:)(uint64_t a1)
{
  v5 = sub_1D560CD48();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  memcpy(__dst, v1, sizeof(__dst));
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_116();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  OUTLINED_FUNCTION_184();
  sub_1D56163C8();
  sub_1D4E62938(a1, v19);
  sub_1D508D94C(v3, v20);
  v15 = (v8 + 8);
  sub_1D4E50004(v19, &qword_1EC7EF298, &qword_1D5630DA0);
  if (v2)
  {
    return (*v15)(v3, v5);
  }

  (*v15)(v3, v5);
  memcpy(v18, v20, sizeof(v18));
  memcpy(v17, v20, sizeof(v17));
  CatalogInternalSearchRawResponse.encode(to:)();
  return sub_1D50A1F8C(v18);
}

uint64_t sub_1D508D94C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v147 = a1;
  v110 = a2;
  v144 = sub_1D5610088();
  v149 = *(v144 - 8);
  v4 = *(v149 + 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v138 = *(v151 - 8);
  v6 = *(v138 + 64);
  v7 = MEMORY[0x1EEE9AC00](v151);
  v150 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  v148 = *(v10 - 8);
  v11 = *(v148 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v105 - v14;
  v120 = sub_1D5613578();
  v15 = *(v120 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  v146 = *(v129 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v105 - v19;
  v20 = type metadata accessor for GenericMusicItem();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v136 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v105 - v24;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7C8, &qword_1D561EA38);
  v25 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v139 = &v105 - v26;
  v124 = type metadata accessor for MusicSearchResultGroup();
  v27 = *(v124 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v131 = (&v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v2[3];
  v31 = v2[4];
  v123 = v10;
  v32 = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2C0, &qword_1D5630FB0);
  v33 = sub_1D5614BD8();
  v155 = v33;
  if (v31)
  {
    v153 = *(v2 + 5);
    v152[0] = v30;
    v152[1] = v31;
    sub_1D524CA44();
    v38 = v37;
  }

  else
  {
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 1;
  }

  v39 = *v2;
  v40 = v139;
  v41 = v131;
  v118 = *(*v3 + 16);
  if (!v118)
  {
    v99 = MEMORY[0x1E69E7CC0];
    v98 = v110;
LABEL_27:
    v100 = ~*(v3 + 56);
    v102 = v3[8];
    v101 = v3[9];
    v103 = 256;
    if (!*(v3 + 57))
    {
      v103 = 0;
    }

    *v98 = v38;
    v98[1] = v34;
    v98[2] = v35;
    v98[3] = v36;
    v98[4] = v32;
    v98[5] = v33;
    v98[6] = v103 & 0xFFFFFFFFFFFFFFFELL | v100 & 1;
    v98[7] = v102;
    v98[8] = v101;
    v98[9] = v99;
  }

  v105 = v34;
  v106 = v36;
  v107 = v35;
  v108 = v38;
  v130 = v32;
  v109 = v3;
  v42 = 0;
  v117 = v39 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v141 = (v149 + 8);
  v135 = (v138 + 16);
  v134 = v138 + 32;
  v133 = v138 + 40;
  v140 = (v138 + 8);
  v115 = *MEMORY[0x1E6976A78];
  v114 = (v15 + 104);
  v113 = (v15 + 8);
  v112 = (v148 + 32);
  v111 = (v146 + 8);
  v116 = *(v27 + 72);
  v132 = MEMORY[0x1E69E7CC0];
  v43 = v137;
  v44 = v136;
LABEL_6:
  v127 = v42 + 1;
  sub_1D50A2244(v117 + v116 * v42, v41);
  v45 = *(v124 + 24);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  (*(*(v46 - 8) + 16))(v40, v41 + v45, v46);
  v47 = *(v125 + 36);
  v48 = sub_1D4E62A60(&qword_1EC7EA658, &qword_1EC7EA650, &qword_1D561C540);
  v148 = v47;
  v126 = v45;
  sub_1D5615608();
  v145 = v48;
  v146 = v46;
  while (1)
  {
    sub_1D5615648();
    if (*(v40 + v148) == v152[0])
    {
      sub_1D4E50004(v40, &qword_1EC7EB7C8, &qword_1D561EA38);
      v77 = v119;
      v78 = v120;
      (*v114)(v119, v115, v120);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EEB48, type metadata accessor for GenericMusicItem);
      v79 = v131;
      sub_1D560DA98();
      (*v113)(v77, v78);
      v80 = *v79;
      v81 = v79[1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD80, &qword_1D561F320);
      v82 = v121;
      sub_1D5612398();
      v83 = v122;
      (*v112)(v122, v82, v123);

      v84 = v130;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v84;
      sub_1D4F14378(v83, v80, v81, isUniquelyReferenced_nonNull_native, v86, v87, v88, v89, v105, v106);

      v130 = v152[0];
      v90 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = *(v90 + 16);
        sub_1D4EFF8E4();
        v90 = v96;
      }

      v132 = v90;
      v91 = *(v90 + 16);
      v40 = v139;
      if (v91 >= *(v90 + 24) >> 1)
      {
        sub_1D4EFF8E4();
        v132 = v97;
      }

      (*v111)(v128, v129);
      v92 = v131;
      sub_1D50A229C();
      v93 = v132;
      *(v132 + 16) = v91 + 1;
      v41 = v92;
      v94 = v93 + 16 * v91;
      *(v94 + 32) = v80;
      *(v94 + 40) = v81;
      v42 = v127;
      if (v127 == v118)
      {
        v33 = v155;
        v98 = v110;
        v3 = v109;
        v32 = v130;
        v38 = v108;
        v35 = v107;
        v36 = v106;
        v34 = v105;
        v99 = v132;
        goto LABEL_27;
      }

      goto LABEL_6;
    }

    v49 = sub_1D5615688();
    v50 = v142;
    sub_1D50A2244(v51, v142);
    v49(v152, 0);
    sub_1D5615658();
    sub_1D50A21EC(v50, v44);
    sub_1D509432C(v147, v43);
    v52 = v143;
    v53 = v151;
    sub_1D5610658();
    v54 = sub_1D5610058();
    v56 = v55;
    (*v141)(v52, v144);
    v57 = sub_1D5089CB4(&v154, v54, v56);
    if (!*v58)
    {
      (v57)(&v154, 0);
      goto LABEL_19;
    }

    v59 = v58;
    v149 = v57;
    GenericMusicItem.innerItem.getter(v152);
    __swift_project_boxed_opaque_existential_1(v152, *(&v153 + 1));
    v60 = sub_1D560EC18();
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_1(v152);
    (*v135)(v150, v43, v53);
    v63 = *v59;
    swift_isUniquelyReferenced_nonNull_native();
    v152[0] = *v59;
    v64 = v152[0];
    *v59 = 0x8000000000000000;
    v65 = sub_1D4E4EFA0();
    if (__OFADD__(*(v64 + 16), (v66 & 1) == 0))
    {
      break;
    }

    v67 = v65;
    v68 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2C8, &unk_1D5630FB8);
    if (sub_1D5615D78())
    {
      v69 = sub_1D4E4EFA0();
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_32;
      }

      v67 = v69;
    }

    if (v68)
    {

      v53 = v151;
      v71 = v152[0];
      (*(v138 + 40))(*(v152[0] + 56) + *(v138 + 72) * v67, v150, v151);
    }

    else
    {
      v53 = v151;
      v71 = v152[0];
      *(v152[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v72 = (v71[6] + 16 * v67);
      *v72 = v60;
      v72[1] = v62;
      (*(v138 + 32))(v71[7] + *(v138 + 72) * v67, v150, v53);
      v73 = v71[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_31;
      }

      v71[2] = v75;
    }

    v76 = *v59;
    *v59 = v71;

    (v149)(&v154, 0);
    v43 = v137;
    v44 = v136;
    v40 = v139;
LABEL_19:

    (*v140)(v43, v53);
    sub_1D50A229C();
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

unint64_t sub_1D508E7D0()
{
  v2 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2A8, &qword_1D5630F98);
  sub_1D4E62A60(&qword_1EC7EF2B0, &qword_1EC7EF2A8, &qword_1D5630F98);
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000023;
}

void sub_1D508E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v451 = v26;
  v452 = v25;
  v456 = v27;
  OUTLINED_FUNCTION_147();
  v455 = sub_1D560CD48();
  v28 = OUTLINED_FUNCTION_4(v455);
  v450 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_12_0(v33, v440);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v449 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v54 = OUTLINED_FUNCTION_22(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  v448 = v57;
  OUTLINED_FUNCTION_23();
  v59 = MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_52_14(v59, v60, v61, v62, v63, v64, v65, v66, v416);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  v447 = v76;
  OUTLINED_FUNCTION_70_0();
  v77 = sub_1D5610788();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a15);
  v441[1] = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D56107C8();
  v84 = OUTLINED_FUNCTION_12_0(v83, &a13);
  v440[4] = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v105 = OUTLINED_FUNCTION_22(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v111 = OUTLINED_FUNCTION_22(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v116);
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v121);
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_3();
  v454 = v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v131);
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v136);
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v140);
  v141 = type metadata accessor for UploadedVideoPropertyProvider();
  v142 = OUTLINED_FUNCTION_14(v141);
  v144 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v145 = sub_1D560D838();
  v146 = OUTLINED_FUNCTION_4(v145);
  v459 = v147;
  v149 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5();
  v150 = OUTLINED_FUNCTION_115();
  v151 = type metadata accessor for CloudUploadedVideo(v150);
  v152 = OUTLINED_FUNCTION_14(v151);
  v154 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_5();
  v157 = v156 - v155;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  sub_1D5610648();
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v159 = sub_1D560D9A8();
  __swift_project_value_buffer(v159, qword_1EDD53CF0);
  v457 = v157;
  v458 = v151;
  v160 = (v157 + *(v151 + 20));
  v460 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v425 = v160;
  OUTLINED_FUNCTION_138_6(v460[15]);
  sub_1D56105B8();
  v161 = v141[5];
  sub_1D56140F8();
  v162 = OUTLINED_FUNCTION_31_2(v441);
  v426 = v163;
  __swift_storeEnumTagSinglePayload(v162, v164, v165, v163);
  v166 = v141[6];
  type metadata accessor for AssetFlavors();
  v167 = OUTLINED_FUNCTION_31_2(&v442);
  v427 = v168;
  __swift_storeEnumTagSinglePayload(v167, v169, v170, v168);
  v171 = v141[7];
  sub_1D560F928();
  v172 = OUTLINED_FUNCTION_31_2(&v443);
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
  v176 = v141[8];
  sub_1D56106B8();
  v177 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
  v181 = v141[11];
  v182 = sub_1D5610978();
  v183 = OUTLINED_FUNCTION_31_2(&v446);
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v182);
  v186 = v141[13];
  v187 = sub_1D560C328();
  v188 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
  v191 = v141[14];
  sub_1D56128E8();
  v192 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
  v196 = v141[15];
  type metadata accessor for HLSAsset();
  v197 = OUTLINED_FUNCTION_31_2(&v450);
  v429 = v198;
  __swift_storeEnumTagSinglePayload(v197, v199, v200, v198);
  v201 = v141[16];
  sub_1D5610CB8();
  v202 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v205);
  v206 = v141[17];
  v207 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v207);
  v211 = v21;
  v212 = v141[18];
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v216);
  v217 = v141[19];
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
  v222 = v141[20];
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v226);
  v432 = v141[21];
  OUTLINED_FUNCTION_33();
  v434 = v182;
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v182);
  v230 = v141[22];
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v231, v232, v233, v234);
  v431 = v141[23];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v207);
  v433 = v141[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v187);
  v241 = v141[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v242 = OUTLINED_FUNCTION_31_2(&v461);
  v438[0] = v243;
  __swift_storeEnumTagSinglePayload(v242, v244, v245, v243);
  v246 = v141[28];
  type metadata accessor for CuratorRelationshipProvider();
  v247 = OUTLINED_FUNCTION_31_2(v463);
  v438[3] = v248;
  __swift_storeEnumTagSinglePayload(v247, v249, v250, v248);
  v251 = *(v459 + 16);
  v252 = v22 + v141[31];
  v444 = v211;
  v446 = v145;
  v251(v252, v211, v145);
  v253 = v22 + v141[32];
  sub_1D5610658();
  v424 = sub_1D5610618();
  v423 = v254;
  v422 = sub_1D56105C8();
  v255 = sub_1D56105F8();
  v256 = sub_1D56105E8();
  v443 = v158;
  v453 = v20;
  v257 = sub_1D56105A8();
  v258 = (v22 + v141[9]);
  *v258 = 0.0;
  v419 = v258;
  *(v258 + 8) = 1;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v259 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();
    OUTLINED_FUNCTION_206_0();

    sub_1D5615E18();
    OUTLINED_FUNCTION_206_0();

    v259 = v20;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v22 + v141[30]) = v259;
  v260 = (v22 + v141[33]);
  *v260 = v424;
  v260[1] = v423;
  *(v22 + v141[34]) = v422;
  *(v22 + v141[35]) = v255;
  *(v22 + v141[36]) = v256;
  *(v22 + v141[37]) = v257;
  v261 = v425[1];
  *v22 = *v425;
  v22[1] = v261;
  v262 = v460;
  OUTLINED_FUNCTION_183_2(v425 + v460[5], &qword_1EC7EB5B8, &unk_1D56206A0, &v444);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_62_17(v255);
  if (v256 == 1)
  {
    sub_1D4E50004(v255, &qword_1EC7EB5B8, &unk_1D56206A0);
    v264 = v436;
    v265 = v454;
    v266 = v428;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v445);
    sub_1D5610758();
    v266 = v256;
    OUTLINED_FUNCTION_15_1();
    v268 = *(v267 + 8);
    v269 = OUTLINED_FUNCTION_86_0();
    v270(v269);
    v264 = v436;
    v265 = v454;
  }

  v271 = OUTLINED_FUNCTION_103_6();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v426);
  OUTLINED_FUNCTION_95_7(v441);
  sub_1D4E68940(v266, v274, v275, v276);
  sub_1D4F39AB0(v425 + v262[6], v430, &qword_1EC7EF380, &unk_1D5677480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  v277 = OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_1(v277);
  v278 = v439;
  if (v367)
  {
    sub_1D4E50004(v430, &qword_1EC7EF380, &unk_1D5677480);
    v283 = 1;
  }

  else
  {
    sub_1D536AC28();
    v265 = v454;
    OUTLINED_FUNCTION_15_1();
    v280 = *(v279 + 8);
    v281 = OUTLINED_FUNCTION_159();
    v282(v281);
    v283 = 0;
  }

  __swift_storeEnumTagSinglePayload(v265, v283, 1, v427);
  OUTLINED_FUNCTION_95_7(&v442);
  sub_1D4E68940(v265, v284, v285, v286);
  sub_1D50A2470(&qword_1EDD563B0, type metadata accessor for CloudUploadedVideo.Attributes);
  OUTLINED_FUNCTION_172(&v455);
  sub_1D5612A68();
  OUTLINED_FUNCTION_95_7(&v443);
  sub_1D4E68940(v263, v287, v288, v289);
  v290 = (v425 + v262[7]);
  if ((v290[1] & 1) == 0)
  {
    *v419 = *v290 / 1000.0;
    *(v419 + 8) = 0;
  }

  *(v22 + v141[10]) = *(v425 + v262[8]);
  sub_1D4F39AB0(v425 + v262[9], v264, &qword_1EC7EC960, &unk_1D56334C0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v292 = v264;
  v293 = OUTLINED_FUNCTION_72_12(v291);

  if (v293 == 1)
  {
    sub_1D4E50004(v292, &qword_1EC7EC960, &unk_1D56334C0);
    v294 = v437;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v459);
    sub_1D5610738();
    v294 = v293;
    OUTLINED_FUNCTION_15_1();
    v296 = *(v295 + 8);
    v297 = OUTLINED_FUNCTION_143();
    v298(v297);
  }

  v299 = OUTLINED_FUNCTION_103_6();
  __swift_storeEnumTagSinglePayload(v299, v300, v301, v434);
  v302 = v141[12];
  OUTLINED_FUNCTION_95_7(&v446);
  sub_1D4E68940(v294, v303, v304, v305);
  *(v22 + v302) = *(v425 + v262[10]);
  sub_1D4F39AB0(v425 + v262[11], v435, &qword_1EC7EF3A0, &qword_1D5631128);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  LODWORD(v302) = __swift_getEnumTagSinglePayload(v435, 1, v306);

  if (v302 == 1)
  {
    sub_1D4E50004(v435, &qword_1EC7EF3A0, &qword_1D5631128);
    v307 = 1;
  }

  else
  {
    sub_1D54050A0(v278);
    OUTLINED_FUNCTION_24_0(v306);
    (*(v415 + 8))(v435, v306);
    v307 = 0;
  }

  __swift_storeEnumTagSinglePayload(v278, v307, 1, v429);
  v308 = (v22 + v141[24]);
  OUTLINED_FUNCTION_95_7(&v450);
  sub_1D4E68940(v278, v309, v310, v311);
  v312 = v460;
  v313 = v425 + v460[12];
  OUTLINED_FUNCTION_95_7(&v447);
  sub_1D5000C8C(v314, v315, v316, v317);
  v318 = (v425 + v312[13]);
  v319 = v318[1];
  *v308 = *v318;
  v308[1] = v319;
  OUTLINED_FUNCTION_183_2(v425 + v312[14], &qword_1EC7EC960, &unk_1D56334C0, v462);
  OUTLINED_FUNCTION_62_17(v435);
  v320 = v440[1];
  if (v308 == 1)
  {
    sub_1D4E50004(v435, &qword_1EC7EC960, &unk_1D56334C0);
    v321 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_15_1();
    v323 = *(v322 + 8);
    v324 = OUTLINED_FUNCTION_86_0();
    v325(v324);
    v321 = 0;
  }

  __swift_storeEnumTagSinglePayload(v320, v321, 1, v434);
  v454 = v141;
  v439 = (v22 + v141[26]);
  OUTLINED_FUNCTION_95_7(&v452);
  sub_1D4E68940(v320, v326, v327, v328);
  OUTLINED_FUNCTION_95_7(&v453);
  sub_1D5000C8C(v329, v330, v331, v332);
  v333 = v460;
  v334 = v425 + v460[16];
  OUTLINED_FUNCTION_95_7(&v451);
  sub_1D5000C8C(v335, v336, v337, v338);
  OUTLINED_FUNCTION_185_2(&a10);
  v339 = (v425 + *(v333 + 68));
  v340 = *v339;
  v341 = v339[1];
  v342 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_120(&a14);
  v344 = *(v343 + 104);
  OUTLINED_FUNCTION_179_2();
  OUTLINED_FUNCTION_140();
  v345();
  v346 = v440[2];
  sub_1D5610798();
  v347 = v435 + 8;
  (*(v435 + 8))(v434, v320);
  v348 = OUTLINED_FUNCTION_68_9(&a11);
  v349(v348, v441[0]);
  OUTLINED_FUNCTION_95_7(&v454);
  sub_1D4E68940(v346, v350, v351, v352);
  v353 = (v425 + *(v333 + 72));
  v354 = *v353;
  v355 = v353[1];
  v356 = v439;
  *v439 = v354;
  v356[1] = v355;
  v357 = v457;
  v358 = *(v458 + 24);
  OUTLINED_FUNCTION_66_1(&a18);
  sub_1D4F39AB0(v359, v360, v361, v362);
  v363 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_1(v333);
  if (v367)
  {

    sub_1D4E50004(v333, &qword_1EC7ECD60, &qword_1D5622F50);
    v364 = v452;
    v365 = v454;
    v366 = v447;
  }

  else
  {
    sub_1D4F39AB0(v333, v420, &qword_1EC7EB5A8, &unk_1D5622F00);

    OUTLINED_FUNCTION_106_5();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v420);
    v364 = v452;
    v366 = v447;
    if (v367)
    {
      sub_1D4E50004(v420, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v368 = sub_1D560CD98();
      v347 = v417;
      OUTLINED_FUNCTION_15_4(v417, v369, v370, v368);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v371, v372);
      sub_1D5612368();
      sub_1D4E50004(v417, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v374 = *(v373 + 8);
      v375 = OUTLINED_FUNCTION_16_20();
      v376(v375);
    }

    v357 = v457;
    v365 = v454;
  }

  v377 = OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_212_1(v377, v378, v379);
  OUTLINED_FUNCTION_95_7(&v461);
  sub_1D4E68940(v366, v380, v381, v382);
  v383 = v357 + v358;
  v384 = v448;
  sub_1D4F39AB0(v383, v448, &qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_1(v384);
  v385 = v453;
  v386 = v450;
  if (v367)
  {
    v387 = &qword_1EC7ECD60;
    v388 = &qword_1D5622F50;
    v389 = v384;
LABEL_37:
    sub_1D4E50004(v389, v387, v388);
    v405 = v446;
    v406 = v459;
    v400 = v449;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_210_1(v391, v392, v393);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_183_2(v384 + *(v363 + 20), &qword_1EC7EA798, &unk_1D5622EF0, &v439);
  OUTLINED_FUNCTION_106_5();
  sub_1D50A229C();
  OUTLINED_FUNCTION_57(v347, 1, v421);
  if (v390)
  {
    v387 = &qword_1EC7EA798;
    v388 = &unk_1D5622EF0;
    v389 = v347;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_81_10(v438);
  v395 = *(v394 + 16);
  v396 = OUTLINED_FUNCTION_179_2();
  v397(v396, v347);
  (*(v386 + 16))(v418, v456, v455);

  v398 = OUTLINED_FUNCTION_143();
  v400 = v399;
  sub_1D50756F4(v398, v401, v364, v399);
  (*(v357 + 8))(v347);
  v357 = v457;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_210_1(v402, v403, v404);
  v405 = v446;
  v406 = v459;
LABEL_38:
  OUTLINED_FUNCTION_95_7(v463);
  sub_1D4E68940(v400, v407, v408, v409);
  v410 = *(v357 + *(v458 + 32));
  OUTLINED_FUNCTION_175_1();
  *(v22 + v365[29]) = v411;
  v462[2] = v365;
  v412 = sub_1D50A2470(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider);
  v413 = OUTLINED_FUNCTION_181_2(v412);
  sub_1D50A2244(v22, v413);
  sub_1D4E67688(v410);
  UploadedVideo.init(propertyProvider:)(&v461, v451);

  (*(v386 + 8))(v456, v455);
  OUTLINED_FUNCTION_24_0(v443);
  (*(v414 + 8))(v385);
  (*(v406 + 8))(v444, v405);
  OUTLINED_FUNCTION_113_7();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50900CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v213 = &v180 - v6;
  v7 = sub_1D5610088();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v212 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v206 = &v180 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v205 = &v180 - v15;
  v16 = sub_1D5612B78();
  v210 = *(v16 - 8);
  v211 = v16;
  v17 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v209 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for CloudUploadedVideo(0);
  v19 = *(*(v207 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v207);
  v219 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v180 - v22;
  v182 = sub_1D5613578();
  v181 = *(v182 - 8);
  v23 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v185 = &v180 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v225 = &v180 - v30;
  v203 = type metadata accessor for CuratorRelationshipProvider();
  v31 = *(*(v203 - 8) + 64);
  MEMORY[0x1EEE9AC00](v203);
  v218 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v183 = &v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v217 = &v180 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v184 = &v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v227 = &v180 - v42;
  v43 = sub_1D5610788();
  v202 = *(v43 - 8);
  v44 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v201 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v199 = &v180 - v48;
  v200 = sub_1D56107C8();
  v198 = *(v200 - 8);
  v49 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v197 = &v180 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v215 = &v180 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v194 = &v180 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v224 = &v180 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8);
  v195 = &v180 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v65 = (&v180 - v64);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v223 = &v180 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v222 = &v180 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v180 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v221 = &v180 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v81 = &v180 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v220 = &v180 - v84;
  v85 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v226 = (&v180 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDD53E28 != -1)
  {
    swift_once();
  }

  v88 = sub_1D50A2470(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  v89 = sub_1D50A2470(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
  v228 = v88;
  v216 = v89;
  v90 = v2;
  result = sub_1D560EC28();
  v196 = v230;
  if ((v230 & 1) == 0)
  {
    v92 = v229 * 1000.0;
    if (COERCE__INT64(fabs(v229 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v92 > -9.22337204e18)
    {
      if (v92 < 9.22337204e18)
      {
        v192 = v92;
        goto LABEL_9;
      }

LABEL_68:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_68;
  }

  v192 = 0;
LABEL_9:
  v214 = v65;
  v193 = a2;
  v191 = UploadedVideo.artistName.getter();
  v190 = v93;
  v94 = v226;
  if (qword_1EDD53E58 != -1)
  {
    swift_once();
  }

  v95 = v43;
  v96 = sub_1D56140F8();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v81, 1, v96) == 1)
  {
    sub_1D4E50004(v81, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v97 = 1;
    v98 = v220;
  }

  else
  {
    v98 = v220;
    sub_1D5613F28();
    (*(*(v96 - 8) + 8))(v81, v96);
    v97 = 0;
  }

  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v98, v97, 1, v99);
  if (qword_1EDD53F70 != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for AssetFlavors();
  sub_1D560EC28();
  v101 = v95;
  if (__swift_getEnumTagSinglePayload(v74, 1, v100) == 1)
  {
    sub_1D4E50004(v74, &qword_1EC7ECC88, &unk_1D56310F0);
    v102 = 1;
    v103 = v221;
  }

  else
  {
    v103 = v221;
    sub_1D536AE60();
    sub_1D50A229C();
    v102 = 0;
  }

  v104 = v214;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  __swift_storeEnumTagSinglePayload(v103, v102, 1, v105);
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v189 = v229;
  if (qword_1EDD53F18 != -1)
  {
    swift_once();
  }

  v214 = v85;
  v106 = sub_1D5610978();
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v106);
  v187 = v101;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v104, &qword_1EC7EAC98, &unk_1D561DA80);
    v108 = 1;
    v110 = v222;
    v109 = v223;
  }

  else
  {
    v110 = v222;
    sub_1D5610918();
    (*(*(v106 - 8) + 8))(v104, v106);
    v108 = 0;
    v109 = v223;
  }

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v110, v108, 1, v111);
  sub_1D4F84AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v188 = v229;
  v112 = v195;
  if (qword_1EDD53E18 != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for HLSAsset();
  v114 = v194;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v114, 1, v113) == 1)
  {
    sub_1D4E50004(v114, &qword_1EC7EF398, &qword_1D5631120);
    v115 = 1;
    v116 = v224;
  }

  else
  {
    v116 = v224;
    sub_1D5405584(v224);
    sub_1D50A229C();
    v115 = 0;
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  __swift_storeEnumTagSinglePayload(v116, v115, 1, v117);
  v118 = v109;
  if (qword_1EDD53F50 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  sub_1D560EC28();
  v119 = v214;
  if (qword_1EDD53E78 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v194 = *&v229;
  v186 = v230;
  if (qword_1EDD53EC0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v112, 1, v106) == 1)
  {
    sub_1D4E50004(v112, &qword_1EC7EAC98, &unk_1D561DA80);
    v120 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v106 - 8) + 8))(v112, v106);
    v120 = 0;
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v118, v120, 1, v121);
  if (qword_1EDD53EF8 != -1)
  {
    swift_once();
  }

  v122 = v119[15];
  sub_1D56109F8();
  sub_1D560EC28();
  if (qword_1EDD53E30 != -1)
  {
    swift_once();
  }

  v123 = v94 + v119[16];
  sub_1D560EC28();
  v124 = v197;
  sub_1D56107A8();
  if (qword_1EDD53F40 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v125 = v199;
  sub_1D560EC28();
  v126 = v202;
  v127 = v201;
  v128 = v187;
  (*(v202 + 104))(v201, *MEMORY[0x1E6975DC8], v187);
  v129 = v124;
  v195 = sub_1D56107B8();
  v131 = v130;
  (*(v126 + 8))(v127, v128);
  sub_1D4E50004(v125, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v198 + 8))(v129, v200);
  if (qword_1EDD53EB8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v133 = v229;
  v132 = v230;
  v134 = v190;
  *v94 = v191;
  v94[1] = v134;
  v135 = v214;
  sub_1D4F39A1C(v220, v94 + v214[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39A1C(v221, v94 + v135[6], &qword_1EC7EF380, &unk_1D5677480);
  v136 = v94 + v135[7];
  *v136 = v192;
  v136[8] = v196;
  *(v94 + v135[8]) = v189;
  sub_1D4F39A1C(v222, v94 + v135[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v94 + v135[10]) = v188;
  sub_1D4F39A1C(v224, v94 + v135[11], &qword_1EC7EF3A0, &qword_1D5631128);
  sub_1D4F39A1C(v215, v94 + v135[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  v137 = (v94 + v135[13]);
  v138 = v186;
  *v137 = v194;
  v137[1] = v138;
  sub_1D4F39A1C(v223, v94 + v135[14], &qword_1EC7EC960, &unk_1D56334C0);
  v139 = (v94 + v135[17]);
  *v139 = v195;
  v139[1] = v131;
  v140 = (v94 + v135[18]);
  *v140 = v133;
  *(v140 + 1) = v132;
  v141 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  __swift_storeEnumTagSinglePayload(v227, 1, 1, v141);
  if (qword_1EDD53E68 != -1)
  {
    swift_once();
  }

  v224 = v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v143 = v217;
  sub_1D560EC28();
  v144 = v90;
  if (qword_1EDD53E40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v145 = v218;
  sub_1D560EC28();
  v146 = v225;
  v147 = v203;
  if (off_1EDD53E88 != -1)
  {
    swift_once();
  }

  v148 = v147[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D560EC28();
  if (off_1EDD53E00 != -1)
  {
    swift_once();
  }

  v149 = v147[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  sub_1D560EC28();
  v150 = v147[7];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(&v145[v150], 1, 1, v151);
  sub_1D50768AC(v204, v146);
  v152 = __swift_getEnumTagSinglePayload(v143, 1, v142);
  v153 = v227;
  if (v152 != 1 || (v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), __swift_getEnumTagSinglePayload(v146, 1, v154) != 1))
  {
    v155 = v183;
    sub_1D4F39AB0(v143, v183, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v155, 1, v142) == 1)
    {
      sub_1D4E50004(v153, &qword_1EC7ECD60, &qword_1D5622F50);
      sub_1D4E50004(v155, &off_1EC7EB5B0, &unk_1D5632170);
      v156 = 1;
      v157 = v185;
    }

    else
    {
      v158 = v181;
      v159 = v180;
      v160 = v182;
      (*(v181 + 104))(v180, *MEMORY[0x1E6976A78], v182);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);
      v157 = v185;
      sub_1D560DA98();
      (*(v158 + 8))(v159, v160);
      sub_1D4E50004(v153, &qword_1EC7ECD60, &qword_1D5622F50);
      v146 = v225;
      (*(*(v142 - 8) + 8))(v155, v142);
      v156 = 0;
    }

    v161 = v184;
    v162 = v224;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v157, v156, 1, v163);
    sub_1D4F39AB0(v146, v161 + *(v162 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4F39A1C(v157, v161, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_storeEnumTagSinglePayload(v161, 0, 1, v162);
    sub_1D4F39A1C(v161, v153, &qword_1EC7ECD60, &qword_1D5622F50);
  }

  v164 = type metadata accessor for UploadedVideo();
  sub_1D50A2470(&unk_1EDD57490, type metadata accessor for UploadedVideo);
  v165 = sub_1D560CBD8();
  if (v165 <= 1)
  {
    v166 = 1;
  }

  else
  {
    v166 = v165;
  }

  v168 = *v144;
  v167 = v144[1];
  v169 = v207;
  v170 = v208;
  sub_1D50A2244(v226, &v208[*(v207 + 20)]);
  sub_1D4F39AB0(v153, v170 + v169[6], &qword_1EC7ECD60, &qword_1D5622F50);
  *v170 = v168;
  v170[1] = v167;
  *(v170 + v169[7]) = 1;
  *(v170 + v169[8]) = v166;
  v171 = *(v164 + 20);

  v172 = v205;
  sub_1D5611A28();
  v173 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v172, 0, 1, v173);
  v174 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v206, 1, 1, v174);
  v175 = v209;
  sub_1D5612B38();
  sub_1D50A2244(v170, v219);
  sub_1D5611A98();
  v228 = sub_1D5611A88();
  v224 = v176;
  v178 = v210;
  v177 = v211;
  v179 = v213;
  (*(v210 + 16))(v213, v175, v211);
  __swift_storeEnumTagSinglePayload(v179, 0, 1, v177);
  v223 = sub_1D5611A38();
  v222 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo);
  sub_1D5610628();
  (*(v178 + 8))(v175, v177);
  sub_1D50A229C();
  sub_1D50A229C();
  sub_1D4E50004(v227, &qword_1EC7ECD60, &qword_1D5622F50);
  sub_1D50A229C();
  sub_1D4E50004(v217, &off_1EC7EB5B0, &unk_1D5632170);
  return sub_1D4E50004(v225, &qword_1EC7EA798, &unk_1D5622EF0);
}

uint64_t sub_1D5091E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v136 = a3;
  v137 = a2;
  v134 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v133 = &v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v110 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF348, &qword_1D5631098);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v130 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF338, &unk_1D5631080);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v109 = &v108 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v129 = &v108 - v24;
  v123 = sub_1D5610788();
  v122 = *(v123 - 8);
  v25 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1D56107C8();
  v119 = *(v121 - 8);
  v27 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v118 = &v108 - v31;
  v115 = sub_1D5611B28();
  v32 = *(v115 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D5611C58();
  v131 = *(v36 - 8);
  v132 = v36;
  v37 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v108 - v42;
  v44 = type metadata accessor for PlaylistFolderPropertyProvider();
  v45 = *(*(v44 - 1) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
  v49 = v44[5];
  v50 = sub_1D560C328();
  v113 = v49;
  __swift_storeEnumTagSinglePayload(&v47[v49], 1, 1, v50);
  __swift_storeEnumTagSinglePayload(&v47[v44[6]], 1, 1, v50);
  v51 = v44[9];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v125 = v51;
  __swift_storeEnumTagSinglePayload(&v47[v51], 1, 1, v124);
  v52 = v44[10];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v128 = v52;
  __swift_storeEnumTagSinglePayload(&v47[v52], 1, 1, v127);
  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  v135 = v39;
  v53 = sub_1D560D9A8();
  __swift_project_value_buffer(v53, qword_1EDD53CC8);
  v54 = sub_1D56109F8();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v54);
  v55 = v44[12];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  sub_1D56105B8();
  sub_1D4E50004(v43, &qword_1EC7EB5C0, &unk_1D56223C0);
  v57 = &v47[v44[13]];
  sub_1D5610658();
  v116 = sub_1D5610618();
  v114 = v58;
  v112 = sub_1D56105C8();
  v59 = sub_1D56105F8();
  v60 = sub_1D56105E8();
  v138 = v56;
  v139 = a1;
  v61 = sub_1D56105A8();
  v62 = &v47[v44[7]];
  *v62 = 0;
  *(v62 + 1) = 0;
  if (qword_1EC7E9808 != -1)
  {
    swift_once();
  }

  v63 = qword_1EC87C748;
  if (qword_1EC87C748 >> 62)
  {
    sub_1D560CDE8();

    v107 = sub_1D5615E18();

    v63 = v107;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v64 = &v47[v44[8]];
  *&v47[v44[11]] = v63;
  v65 = &v47[v44[14]];
  v66 = v114;
  *v65 = v116;
  v65[1] = v66;
  *&v47[v44[15]] = v112;
  *&v47[v44[16]] = v59;
  *&v47[v44[17]] = v60;
  v116 = v44;
  *&v47[v44[18]] = v61;
  v67 = v135;
  sub_1D5610648();
  sub_1D5611B38();
  v68 = sub_1D5611B08();
  v70 = v69;
  v71 = *(v32 + 8);
  v72 = v115;
  v71(v35, v115);
  *v64 = v68;
  v64[1] = v70;
  v114 = v47;
  v73 = v117;
  sub_1D56107A8();
  sub_1D5611B38();
  sub_1D5611B18();
  v71(v35, v72);
  v74 = v122;
  v75 = v120;
  v76 = v123;
  (*(v122 + 104))(v120, *MEMORY[0x1E6975DC8], v123);
  v77 = v118;
  sub_1D5610798();

  (*(v74 + 8))(v75, v76);
  v78 = v73;
  v79 = v114;
  v80 = v67;
  (*(v119 + 8))(v78, v121);
  sub_1D4E68940(v77, v79 + v113, &qword_1EC7EA3B8, &unk_1D561E370);
  v81 = v126;
  sub_1D5611BA8();
  v82 = sub_1D5611B98();
  if (__swift_getEnumTagSinglePayload(v81, 1, v82) == 1)
  {
    v83 = &qword_1EC7EF348;
    v84 = &qword_1D5631098;
    v85 = v81;
LABEL_11:
    sub_1D4E50004(v85, v83, v84);
    v88 = 1;
    v89 = v133;
    v91 = v129;
    v90 = v130;
    goto LABEL_13;
  }

  v86 = v109;
  sub_1D5611B88();
  (*(*(v82 - 8) + 8))(v81, v82);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF358, &unk_1D56310B0);
  if (__swift_getEnumTagSinglePayload(v86, 1, v87) == 1)
  {
    v83 = &qword_1EC7EF338;
    v84 = &unk_1D5631080;
    v85 = v86;
    goto LABEL_11;
  }

  v92 = sub_1D560CD98();
  v93 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v92);
  type metadata accessor for Playlist.Folder.Item();
  sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7EF360, type metadata accessor for Playlist.Folder.Item);
  sub_1D50A2470(&qword_1EDD52C90, type metadata accessor for Playlist.Folder.Item);
  v91 = v129;
  sub_1D5612368();
  v80 = v135;
  sub_1D4E50004(v93, &qword_1EC7EA7D8, &unk_1D561E8B0);
  (*(*(v87 - 8) + 8))(v86, v87);
  v88 = 0;
  v89 = v133;
  v90 = v130;
LABEL_13:
  v94 = v116;
  __swift_storeEnumTagSinglePayload(v91, v88, 1, v124);
  sub_1D4E68940(v91, v79 + v125, &qword_1EC7EF340, &qword_1D5631090);
  sub_1D5611BA8();
  if (__swift_getEnumTagSinglePayload(v90, 1, v82) == 1)
  {
    v95 = &qword_1EC7EF348;
    v96 = &qword_1D5631098;
    v97 = v90;
  }

  else
  {
    v98 = v111;
    sub_1D5611B68();
    v99 = v98;
    (*(*(v82 - 8) + 8))(v90, v82);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
    if (__swift_getEnumTagSinglePayload(v99, 1, v100) != 1)
    {
      v102 = sub_1D560CD98();
      v103 = v110;
      __swift_storeEnumTagSinglePayload(v110, 1, 1, v102);
      type metadata accessor for Playlist.Folder();
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
      sub_1D50A2470(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
      sub_1D5612368();
      v80 = v135;
      sub_1D4E50004(v103, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v100 - 8) + 8))(v99, v100);
      v101 = 0;
      goto LABEL_19;
    }

    v95 = &qword_1EC7ECF30;
    v96 = &unk_1D5623AA0;
    v97 = v99;
  }

  sub_1D4E50004(v97, v95, v96);
  v101 = 1;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v89, v101, 1, v127);
  sub_1D4E68940(v89, v79 + v128, &qword_1EC7ECF38, &qword_1D562E650);
  v140[3] = v94;
  v140[4] = sub_1D50A2470(&qword_1EC7EE418, type metadata accessor for PlaylistFolderPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v140);
  sub_1D50A2244(v79, boxed_opaque_existential_0);
  Playlist.Folder.init(propertyProvider:)(v140, v134);

  v105 = sub_1D560CD48();
  (*(*(v105 - 8) + 8))(v137, v105);
  (*(*(v138 - 8) + 8))(v139);
  (*(v131 + 8))(v80, v132);
  return sub_1D50A229C();
}

uint64_t sub_1D5092D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v142 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v141 = &v118 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v150 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v118 - v14;
  v15 = sub_1D5612B78();
  v139 = *(v15 - 8);
  v140 = v15;
  v16 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v138 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF328, &qword_1D5631068);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v133 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF330, &unk_1D5631070);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v132 = &v118 - v23;
  v24 = sub_1D5611C58();
  v136 = *(v24 - 8);
  v137 = v24;
  v25 = *(v136 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v148 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v125 = &v118 - v31;
  v123 = sub_1D5613578();
  v122 = *(v123 - 8);
  v32 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF338, &unk_1D5631080);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v124 = &v118 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v120 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v152 = &v118 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v118 = &v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v147 = &v118 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF348, &qword_1D5631098);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v131 = &v118 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v119 = &v118 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v151 = &v118 - v53;
  v54 = sub_1D5610788();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v118 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v118 - v61;
  v144 = sub_1D56107C8();
  v129 = *(v144 - 8);
  v63 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v65 = &v118 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D5611B28();
  v145 = *(v66 - 8);
  v146 = v66;
  v67 = *(v145 + 64);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v130 = &v118 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v118 - v70;
  v143 = v2;
  v128 = Playlist.Folder.name.getter();
  v127 = v72;
  sub_1D56107A8();
  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  sub_1D50A2470(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  sub_1D50A2470(&qword_1EC7EE420, type metadata accessor for Playlist.Folder);
  sub_1D560EC28();
  (*(v55 + 104))(v58, *MEMORY[0x1E6975DC8], v54);
  sub_1D56107B8();
  (*(v55 + 8))(v58, v54);
  sub_1D4E50004(v62, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v129 + 8))(v65, v144);
  sub_1D5611AF8();
  v73 = sub_1D5611B98();
  v74 = v151;
  __swift_storeEnumTagSinglePayload(v151, 1, 1, v73);
  if (qword_1EC7E8D28 != -1)
  {
    swift_once();
  }

  v144 = v71;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v76 = v147;
  v77 = v143;
  sub_1D560EC28();
  if (qword_1EC7E8D30 != -1)
  {
    swift_once();
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) != 1 || (v79 = v74, __swift_getEnumTagSinglePayload(v152, 1, v78) != 1))
  {
    v80 = v118;
    sub_1D4F39AB0(v76, v118, &qword_1EC7EF340, &qword_1D5631090);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v75);
    v82 = MEMORY[0x1E6976A78];
    v129 = v73;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v80, &qword_1EC7EF340, &qword_1D5631090);
      v83 = 1;
      v84 = v124;
    }

    else
    {
      v85 = v122;
      v86 = v121;
      v87 = v123;
      (*(v122 + 104))(v121, *MEMORY[0x1E6976A78], v123);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EF360, type metadata accessor for Playlist.Folder.Item);
      v84 = v124;
      sub_1D560DA98();
      (*(v85 + 8))(v86, v87);
      (*(*(v75 - 8) + 8))(v80, v75);
      v83 = 0;
    }

    v88 = v120;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF358, &unk_1D56310B0);
    __swift_storeEnumTagSinglePayload(v84, v83, 1, v89);
    sub_1D4F39AB0(v152, v88, &qword_1EC7ECF38, &qword_1D562E650);
    if (__swift_getEnumTagSinglePayload(v88, 1, v78) == 1)
    {
      sub_1D4E50004(v88, &qword_1EC7ECF38, &qword_1D562E650);
      v90 = 1;
      v91 = v125;
    }

    else
    {
      v92 = v122;
      v93 = v121;
      v94 = v123;
      (*(v122 + 104))(v121, *v82, v123);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
      v91 = v125;
      sub_1D560DA98();
      (*(v92 + 8))(v93, v94);
      (*(*(v78 - 8) + 8))(v88, v78);
      v90 = 0;
    }

    v95 = v129;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
    __swift_storeEnumTagSinglePayload(v91, v90, 1, v96);
    v97 = v119;
    sub_1D5611B78();
    v98 = v151;
    sub_1D4E50004(v151, &qword_1EC7EF348, &qword_1D5631098);
    v99 = v95;
    v79 = v98;
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v99);
    sub_1D4F39A1C(v97, v98, &qword_1EC7EF348, &qword_1D5631098);
  }

  v100 = *v77;
  v101 = v77[1];
  (*(v145 + 16))(v130, v144, v146);
  sub_1D4F39AB0(v79, v131, &qword_1EC7EF348, &qword_1D5631098);
  v102 = sub_1D5611B58();
  __swift_storeEnumTagSinglePayload(v132, 1, 1, v102);
  v103 = sub_1D5611C48();
  __swift_storeEnumTagSinglePayload(v133, 1, 1, v103);

  v104 = v149;
  sub_1D5611BE8();
  v105 = *(type metadata accessor for Playlist.Folder() + 20);
  v106 = v134;
  sub_1D5611A28();
  v107 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v106, 0, 1, v107);
  v108 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v108);
  v109 = v138;
  sub_1D5612B38();
  v110 = v136;
  v111 = v137;
  (*(v136 + 16))(v148, v104, v137);
  sub_1D5611A98();
  v112 = sub_1D5611A88();
  v134 = v113;
  v135 = v112;
  v115 = v139;
  v114 = v140;
  v116 = v141;
  (*(v139 + 16))(v141, v109, v140);
  __swift_storeEnumTagSinglePayload(v116, 0, 1, v114);
  v133 = sub_1D5611A38();
  v132 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EF350, MEMORY[0x1E69763B8]);
  sub_1D5610628();
  (*(v115 + 8))(v109, v114);
  (*(v110 + 8))(v149, v111);
  sub_1D4E50004(v151, &qword_1EC7EF348, &qword_1D5631098);
  (*(v145 + 8))(v144, v146);
  sub_1D4E50004(v147, &qword_1EC7EF340, &qword_1D5631090);
  return sub_1D4E50004(v152, &qword_1EC7ECF38, &qword_1D562E650);
}

uint64_t sub_1D5093E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v60[5] = a1;
  v55 = sub_1D560CD48();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB88, &qword_1D561D738);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v48 - v20;
  v21 = sub_1D5610088();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v58 = a5;
  v48 = v26;
  result = __swift_storeEnumTagSinglePayload(a5, 1, 1, v26);
  v28 = *(a2 + 40);
  if (v28)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D5612E78();

    v29 = sub_1D5610058();
    v31 = v30;
    (*(v22 + 8))(v25, v21);
    v32 = sub_1D4ED17E4(v29, v31, v28);

    if (v32)
    {
      swift_getKeyPath();
      sub_1D5612E78();

      sub_1D4ED0580(v32, v15);

      if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
      {
        return sub_1D4E50004(v15, &qword_1EC7EAB88, &qword_1D561D738);
      }

      else
      {
        v34 = v50;
        v33 = v51;
        (*(v51 + 32))(v50, v15, v16);
        sub_1D5612E88();
        v35 = v60[0];
        if (v60[0] == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = v60[0];
        }

        v37 = sub_1D5610638();
        v61.value._rawValue = v36;
        CloudGenericMusicItem.updateSearchSnippet(with:)(v61);
        sub_1D4EA7410(v35);
        v37(v60, 0);
        v38 = v49;
        (*(v33 + 16))(v49, v34, v16);
        v39 = v52;
        (*(v53 + 16))(v52, v56, v55);
        v40 = v57;

        v41 = v54;
        sub_1D50773C4(v38, v39, v40, v42, v43, v44, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
        (*(v33 + 8))(v34, v16);
        v47 = v58;
        sub_1D4E50004(v58, &qword_1EC7EA608, &qword_1D561C510);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v48);
        return sub_1D4F39A1C(v41, v47, &qword_1EC7EA608, &qword_1D561C510);
      }
    }
  }

  return result;
}

uint64_t sub_1D509432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v255 = a1;
  v256 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v251 = *(v4 - 8);
  v252 = v4;
  v5 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v250 = &v156 - v6;
  v7 = type metadata accessor for UploadedVideo();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v249 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  v247 = *(v10 - 8);
  v248 = v10;
  v11 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v246 = &v156 - v12;
  v13 = type metadata accessor for UploadedAudio();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v245 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v243 = *(v16 - 8);
  v244 = v16;
  v17 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v242 = &v156 - v18;
  v19 = type metadata accessor for TVShow();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v241 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  v239 = *(v22 - 8);
  v240 = v22;
  v23 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v238 = &v156 - v24;
  v25 = type metadata accessor for TVSeason();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v237 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v235 = *(v236 - 8);
  v28 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v156 - v29;
  v30 = type metadata accessor for TVEpisode();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v233 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v231 = *(v232 - 8);
  v33 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v230 = &v156 - v34;
  v229 = sub_1D5614408();
  v228 = *(v229 - 8);
  v35 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v225 = *(v226 - 8);
  v37 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v224 = &v156 - v38;
  v223 = sub_1D5613838();
  v222 = *(v223 - 8);
  v39 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v219 = *(v220 - 8);
  v41 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v156 - v42;
  v43 = type metadata accessor for SocialProfile();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v217 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v215 = *(v216 - 8);
  v46 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v214 = &v156 - v47;
  v213 = sub_1D560F8B8();
  v212 = *(v213 - 8);
  v48 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v209 = *(v210 - 8);
  v50 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v156 - v51;
  v207 = sub_1D5614B68();
  v206 = *(v207 - 8);
  v52 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v156 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  v203 = *(v204 - 8);
  v54 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v202 = &v156 - v55;
  v56 = type metadata accessor for Playlist.Folder();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v201 = &v156 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v199 = *(v200 - 8);
  v59 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v156 - v60;
  v197 = sub_1D5614898();
  v196 = *(v197 - 8);
  v61 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v193 = &v156 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v194 = *(v195 - 8);
  v63 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v156 - v64;
  v191 = sub_1D560EEA8();
  v190 = *(v191 - 8);
  v65 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v187 = &v156 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v188 = *(v189 - 8);
  v67 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v156 - v68;
  v69 = type metadata accessor for MusicMovie();
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v183 = &v156 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v184 = *(v185 - 8);
  v72 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v182 = &v156 - v73;
  v181 = sub_1D5613C48();
  v180 = *(v181 - 8);
  v74 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v177 = &v156 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  v178 = *(v179 - 8);
  v76 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v176 = &v156 - v77;
  v78 = type metadata accessor for EditorialItem();
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v173 = &v156 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v174 = *(v175 - 8);
  v81 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v156 - v82;
  v171 = sub_1D56141F8();
  v170 = *(v171 - 8);
  v83 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v156 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  v168 = *(v169 - 8);
  v85 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v156 - v86;
  v87 = type metadata accessor for CreditArtist();
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v163 = &v156 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  v164 = *(v165 - 8);
  v90 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v156 - v91;
  v92 = type metadata accessor for Composer();
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v159 = &v156 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v160 = *(v161 - 8);
  v95 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v156 - v96;
  v158 = sub_1D5613EF8();
  v97 = *(v158 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v100 = &v156 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for CloudGenericMusicItem(0);
  v101 = *(*(v253 - 8) + 64);
  MEMORY[0x1EEE9AC00](v253);
  v254 = &v156 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v157 = *(v103 - 8);
  v104 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v156 - v105;
  v107 = sub_1D5613AF8();
  v108 = *(v107 - 8);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v156 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for GenericMusicItem();
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v156 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D50A2244(v3, v115);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v131 = v158;
      (*(v97 + 32))(v100, v115, v158);
      sub_1D560CD48();
      v132 = v156;
      sub_1D5613E78();
      v133 = v161;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v160 + 8))(v132, v133);
      return (*(v97 + 8))(v100, v131);
    case 2u:
      sub_1D50A21EC(v115, v159);
      v125 = v162;
      sub_1D5089074(v255, v162);
      v126 = v165;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v164 + 8))(v125, v126);
      goto LABEL_25;
    case 3u:
      sub_1D50A21EC(v115, v163);
      v127 = v166;
      sub_1D507B790(v255, v166);
      v128 = v169;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v168 + 8))(v127, v128);
      goto LABEL_25;
    case 4u:
      v119 = v170;
      v120 = v167;
      v121 = v171;
      (*(v170 + 32))(v167, v115, v171);
      sub_1D560CD48();
      v122 = v172;
      sub_1D5614188();
      v123 = v175;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v206;
      goto LABEL_22;
    case 5u:
      sub_1D50A21EC(v115, v173);
      v138 = v176;
      sub_1D50A0BF8(v176);
      v139 = v179;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v178 + 8))(v138, v139);
      goto LABEL_25;
    case 6u:
      v119 = v180;
      v120 = v177;
      v121 = v181;
      (*(v180 + 32))(v177, v115, v181);
      sub_1D560CD48();
      v122 = v182;
      sub_1D5613BC8();
      v123 = v185;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v216;
      goto LABEL_22;
    case 7u:
      sub_1D50A21EC(v115, v183);
      v129 = v186;
      sub_1D5099B68(v255, v186);
      v130 = v189;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v188 + 8))(v129, v130);
      goto LABEL_25;
    case 8u:
      v119 = v190;
      v120 = v187;
      v121 = v191;
      (*(v190 + 32))(v187, v115, v191);
      sub_1D560CD48();
      v122 = v192;
      sub_1D560EDF8();
      v123 = v195;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v226;
      goto LABEL_22;
    case 9u:
      v119 = v196;
      v120 = v193;
      v121 = v197;
      (*(v196 + 32))(v193, v115, v197);
      sub_1D560CD48();
      v122 = v198;
      sub_1D5614638();
      v123 = v200;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v231;
      goto LABEL_22;
    case 0xAu:
      sub_1D50A21EC(v115, v201);
      v144 = v202;
      sub_1D5092D18(v255, v202);
      v145 = v204;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v203 + 8))(v144, v145);
      goto LABEL_25;
    case 0xBu:
      v119 = v206;
      v120 = v205;
      v121 = v207;
      (*(v206 + 32))(v205, v115, v207);
      sub_1D560CD48();
      v122 = v208;
      sub_1D5614AF8();
      v123 = v210;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v241;
      goto LABEL_22;
    case 0xCu:
      v119 = v212;
      v120 = v211;
      v121 = v213;
      (*(v212 + 32))(v211, v115, v213);
      sub_1D560CD48();
      v122 = v214;
      sub_1D560F858();
      v123 = v216;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v247;
      goto LABEL_22;
    case 0xDu:
      sub_1D50A21EC(v115, v217);
      v140 = v218;
      sub_1D509C898(v218);
      v141 = v220;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v219 + 8))(v140, v141);
      goto LABEL_25;
    case 0xEu:
      v119 = v222;
      v120 = v221;
      v121 = v223;
      (*(v222 + 32))(v221, v115, v223);
      sub_1D560CD48();
      v122 = v224;
      sub_1D5613738();
      v123 = v226;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = v257;
      goto LABEL_22;
    case 0xFu:
      v119 = v228;
      v120 = v227;
      v121 = v229;
      (*(v228 + 32))(v227, v115, v229);
      sub_1D560CD48();
      v122 = v230;
      sub_1D5614328();
      v123 = v232;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      v124 = &v258;
LABEL_22:
      (*(*(v124 - 32) + 8))(v122, v123);
      return (*(v119 + 8))(v120, v121);
    case 0x10u:
      sub_1D50A21EC(v115, v233);
      v117 = v234;
      sub_1D5084EA0(v255, v234);
      v118 = v236;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v235 + 8))(v117, v118);
      goto LABEL_25;
    case 0x11u:
      sub_1D50A21EC(v115, v237);
      v134 = v238;
      sub_1D507DB50(v255, v238);
      v135 = v240;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v239 + 8))(v134, v135);
      goto LABEL_25;
    case 0x12u:
      sub_1D50A21EC(v115, v241);
      v142 = v242;
      sub_1D50808C0(v255, v242);
      v143 = v244;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v243 + 8))(v142, v143);
      goto LABEL_25;
    case 0x13u:
      sub_1D50A21EC(v115, v245);
      v146 = v246;
      sub_1D509E878(v255, v246);
      v147 = v248;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v247 + 8))(v146, v147);
      goto LABEL_25;
    case 0x14u:
      sub_1D50A21EC(v115, v249);
      v136 = v250;
      sub_1D50900CC(v255, v250);
      v137 = v252;
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v251 + 8))(v136, v137);
LABEL_25:
      result = sub_1D50A229C();
      break;
    case 0x15u:
      v257[0] = 0;
      v257[1] = 0xE000000000000000;
      sub_1D5615B68();
      v148 = MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D5683480);
      GenericMusicItem.description.getter(v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
      MEMORY[0x1DA6EAC70]();

      MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D56834B0);
      result = sub_1D5615E08();
      __break(1u);
      break;
    default:
      (*(v108 + 32))(v111, v115, v107);
      sub_1D560CD48();
      sub_1D56139D8();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      sub_1D50A2470(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
      sub_1D5610598();
      sub_1D50A229C();
      (*(v157 + 8))(v106, v103);
      result = (*(v108 + 8))(v111, v107);
      break;
  }

  return result;
}

void sub_1D5096F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v669 = v26;
  v670 = v27;
  v29 = v28;
  v655 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v615 - v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = &v615 - v68;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v72 = OUTLINED_FUNCTION_22(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_59_0();
  v77 = v75 - v76;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v96);
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v101);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D56128C8();
  v107 = OUTLINED_FUNCTION_12_0(v106, &v667);
  *&v640 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v113 = OUTLINED_FUNCTION_22(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v117);
  v118 = sub_1D5610788();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v661);
  v636[0] = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v123);
  v124 = sub_1D56107C8();
  v125 = OUTLINED_FUNCTION_12_0(v124, &v659);
  v633 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v130);
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v136 = OUTLINED_FUNCTION_22(v135);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v142 = OUTLINED_FUNCTION_22(v141);
  v144 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v145);
  v147 = &v615 - v146;
  v148 = type metadata accessor for CloudVideoOffer();
  v149 = OUTLINED_FUNCTION_22(v148);
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v153);
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v158);
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v163);
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v167);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v168);
  v170 = *(v169 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v172);
  v173 = type metadata accessor for MusicMoviePropertyProvider();
  v174 = OUTLINED_FUNCTION_20(v173, &a16);
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v177 = sub_1D560D838();
  v178 = OUTLINED_FUNCTION_4(v177);
  v668 = v179;
  v181 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v183);
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v186);
  v187 = OUTLINED_FUNCTION_59_8();
  v188 = type metadata accessor for CloudMusicMovie(v187);
  v189 = OUTLINED_FUNCTION_20(v188, &a15);
  v191 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v672 = v23;
  v665 = v192;
  sub_1D5610648();
  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  v629 = v147;
  v617 = v69;
  v662 = v58;
  v654 = v77;
  v193 = sub_1D56109D8();
  __swift_project_value_buffer(v193, qword_1EDD767D8);
  sub_1D4FFC7E0();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v619 = v20;
  v194 = sub_1D560D9A8();
  __swift_project_value_buffer(v194, qword_1EDD53D50);
  OUTLINED_FUNCTION_120(&a9);
  v666 = v21;
  sub_1D56105B8();
  v195 = v673;
  v196 = v673[5];
  sub_1D56140F8();
  v621 = v196;
  OUTLINED_FUNCTION_33();
  v620 = v197;
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v197);
  v201 = v195[6];
  sub_1D560F928();
  v622 = v201;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v205);
  v206 = v195[10];
  v207 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v207);
  v211 = v195[14];
  v212 = sub_1D5610978();
  v624 = v211;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v212);
  v216 = v195[18];
  v217 = sub_1D560C0A8();
  v625 = v216;
  v218 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v217);
  v221 = v195[21];
  sub_1D5613178();
  v222 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v225);
  v226 = v195[22];
  sub_1D5613198();
  v227 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v230);
  v231 = v195[23];
  sub_1D56134E8();
  v232 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v235);
  v236 = v195[24];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v207);
  v240 = v195[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v241, v242, v243, v207);
  v244 = v195[26];
  sub_1D5614A78();
  v245 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v245, v246, v247, v248);
  v249 = OUTLINED_FUNCTION_51_17(v195[28]);
  *&v664 = v212;
  __swift_storeEnumTagSinglePayload(v249, v250, v251, v212);
  v252 = v195[30];
  sub_1D56109F8();
  v626 = v252;
  v253 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v256);
  v257 = OUTLINED_FUNCTION_51_17(v195[31]);
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v207);
  v260 = OUTLINED_FUNCTION_51_17(v195[37]);
  __swift_storeEnumTagSinglePayload(v260, v261, v262, v217);
  v263 = v195[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v632 = v263;
  OUTLINED_FUNCTION_33();
  v631 = v264;
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v264);
  v268 = v195[39];
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v638 = v268;
  v270 = OUTLINED_FUNCTION_49_12();
  __swift_storeEnumTagSinglePayload(v270, v271, v272, v269);
  v273 = OUTLINED_FUNCTION_51_17(v195[40]);
  __swift_storeEnumTagSinglePayload(v273, v274, v275, v269);
  v276 = v195[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v647 = v276;
  v277 = OUTLINED_FUNCTION_49_12();
  v646 = v278;
  __swift_storeEnumTagSinglePayload(v277, v279, v280, v278);
  v281 = v195[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v650 = v281;
  v282 = OUTLINED_FUNCTION_49_12();
  v649 = v283;
  __swift_storeEnumTagSinglePayload(v282, v284, v285, v283);
  v286 = OUTLINED_FUNCTION_51_17(v195[43]);
  v671 = v269;
  __swift_storeEnumTagSinglePayload(v286, v287, v288, v269);
  v289 = *(v668 + 16);
  v290 = v22 + v195[46];
  v653 = v177;
  v289(v290, v58, v177);
  v291 = v22 + v195[47];
  sub_1D5610658();
  v292 = sub_1D5610618();
  v294 = v293;
  v295 = sub_1D56105C8();
  v296 = sub_1D56105F8();
  v297 = sub_1D56105E8();
  v656 = v29;
  v298 = sub_1D56105A8();
  *(v22 + v195[17]) = 2;
  *(v22 + v195[19]) = 2;
  v299 = v22 + v195[29];
  *v299 = xmmword_1D5626F70;
  *(v299 + 3) = 0;
  *(v299 + 4) = 0;
  *(v299 + 2) = 0;
  v300 = (v22 + v195[35]);
  v300[2] = 0u;
  v300[3] = 0u;
  *v300 = 0u;
  v300[1] = 0u;
  v628 = v300;
  if (qword_1EDD5B368 != -1)
  {
    swift_once();
  }

  v301 = qword_1EDD76D30;
  if (qword_1EDD76D30 >> 62)
  {
    sub_1D560CDE8();
    OUTLINED_FUNCTION_157_5();

    sub_1D5615E18();
    OUTLINED_FUNCTION_157_5();

    v301 = v29;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v302 = v629;
  v303 = v673;
  *(v22 + v673[45]) = v301;
  v304 = (v22 + v303[48]);
  *v304 = v292;
  v304[1] = v294;
  *(v22 + v303[49]) = v295;
  *(v22 + v303[50]) = v296;
  *(v22 + v303[51]) = v297;
  *(v22 + v303[52]) = v298;
  OUTLINED_FUNCTION_137();
  v306 = (v672 + *(v305 + 20));
  v307 = v306[1];
  *v22 = *v306;
  v22[1] = v307;
  v308 = type metadata accessor for CloudMusicMovie.Attributes(0);
  OUTLINED_FUNCTION_183_2(v306 + v308[5], &qword_1EC7EB5B8, &unk_1D56206A0, &v642);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_62_17(v295);
  if (v297 == 1)
  {
    sub_1D4E50004(v295, &qword_1EC7EB5B8, &unk_1D56206A0);
    v310 = v627;
    v297 = v623;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v643);
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v312 = *(v311 + 8);
    v313 = OUTLINED_FUNCTION_86_0();
    v314(v313);
    v310 = v627;
  }

  v315 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v315, v316, v317, v620);
  OUTLINED_FUNCTION_92_6(&v641);
  sub_1D4E68940(v297, v318, v319, v320);
  sub_1D50A2470(&qword_1EDD5C958, type metadata accessor for CloudMusicMovie.Attributes);
  OUTLINED_FUNCTION_172(&v644);
  OUTLINED_FUNCTION_85();
  EnumTagSinglePayload = v306;
  sub_1D5612A68();
  OUTLINED_FUNCTION_92_6(&v641 + 8);
  sub_1D4E68940(v309, v322, v323, v324);
  v325 = *(v306 + v308[15]);
  if (v325)
  {
    sub_1D50ABBD4(v325);
  }

  OUTLINED_FUNCTION_150_0();
  *(v22 + *(v326 + 28)) = v327;
  v328 = *(v306 + v308[6]);
  if (v328)
  {
    v328 = sub_1D511C2A4(v328);
  }

  v329 = (v22 + v673[9]);
  *(v22 + v673[8]) = v328;
  v330 = (v306 + v308[7]);
  v331 = v330[1];
  *v329 = *v330;
  v329[1] = v331;
  v332 = *(v306 + v308[17]);
  if (!v332)
  {

    goto LABEL_21;
  }

  sub_1D4EC9F44(v332);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v310, 1, v333);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v310, &qword_1EC7EDB90, &unk_1D565B670);
LABEL_21:
    v339 = 1;
    v340 = 0.0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_186(v636);
  sub_1D5610708();
  OUTLINED_FUNCTION_24_0(v333);
  v335 = *(v334 + 8);
  v336 = OUTLINED_FUNCTION_20_5();
  v337(v336);
  v338 = *v310;
  EnumTagSinglePayload = *(v310 + 8);
  OUTLINED_FUNCTION_99_7();
  sub_1D50A229C();
  if (EnumTagSinglePayload)
  {
    goto LABEL_21;
  }

  v339 = 0;
  v340 = v338 / 1000.0;
LABEL_22:
  v341 = v673[12];
  v342 = (v22 + v673[11]);
  *v342 = v340;
  *(v342 + 8) = v339;
  *(v22 + v341) = *(v306 + v308[9]);
  v343 = *(v306 + v308[10]);

  if (v343)
  {
    sub_1D50C4BD4(v343);
  }

  OUTLINED_FUNCTION_150_0();
  *(v22 + *(v344 + 52)) = v345;
  v346 = v306 + v308[11];
  OUTLINED_FUNCTION_117_0(&v651);
  sub_1D4F39AB0(v347, v348, v349, v350);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v352 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v352, v353, v351);
  if (v496)
  {
    sub_1D4E50004(EnumTagSinglePayload, &qword_1EC7EC960, &unk_1D56334C0);
    v358 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v351);
    v355 = *(v354 + 8);
    v356 = OUTLINED_FUNCTION_20_5();
    v357(v356);
    v358 = 0;
  }

  OUTLINED_FUNCTION_210_1(v302, v358, 1);
  OUTLINED_FUNCTION_150_0();
  v360 = v359[15];
  v361 = v359[16];
  v362 = v359[20];
  OUTLINED_FUNCTION_92_6(&v644 + 8);
  sub_1D4E68940(v302, v363, v364, v365);
  *(v22 + v360) = *(v306 + v308[12]);
  *(v22 + v361) = *(v306 + v308[13]);
  v366 = v308[14];

  OUTLINED_FUNCTION_92_6(&v645);
  sub_1D5000C8C(v367, v368, v369, v370);
  v371 = OUTLINED_FUNCTION_85();
  *(v22 + v362) = MEMORY[0x1DA6E8830](v371) & 1;
  if (v332)
  {
    sub_1D501B268();
  }

  v372 = v666;
  v373 = v630;
  OUTLINED_FUNCTION_150_0();
  *(v22 + *(v374 + 108)) = v375;
  v376 = v306 + v308[18];
  OUTLINED_FUNCTION_117_0(&v653);
  sub_1D4F39AB0(v377, v378, v379, v380);
  v381 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v381, v382, v351);
  if (v496)
  {
    sub_1D4E50004(v306, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v351);
    v384 = *(v383 + 8);
    v385 = OUTLINED_FUNCTION_20_5();
    v386(v385);
  }

  v387 = OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_210_1(v387, v388, v389);
  OUTLINED_FUNCTION_92_6(&v646);
  sub_1D4E68940(v373, v390, v391, v392);
  OUTLINED_FUNCTION_92_6(&v647);
  sub_1D5000C8C(v372, v393, v394, v395);
  OUTLINED_FUNCTION_185_2(&v657);
  v396 = (v306 + v308[19]);
  v397 = *v396;
  v398 = v396[1];
  v399 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_186(&v660);
  v401 = v634;
  v402 = v636[1];
  (*(v400 + 104))(v634);
  OUTLINED_FUNCTION_150(&v655);
  sub_1D5610798();
  v404 = *(v362 + 8);
  v403 = v362 + 8;
  v404(v401, v402);
  v405 = OUTLINED_FUNCTION_68_9(&v658);
  v406(v405, v635);
  OUTLINED_FUNCTION_92_6(&v648);
  sub_1D4E68940(v373, v407, v408, v409);
  v410 = v308[8];
  OUTLINED_FUNCTION_117_0(&v662);
  sub_1D4F39AB0(v411, v412, v413, v414);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v415 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v415);
  if (v496)
  {
    sub_1D4E50004(v306, &qword_1EC7EC978, &unk_1D56222A0);
    v420 = 0;
    v373 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_186(&v664 + 8);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v417 = *(v416 + 8);
    v418 = OUTLINED_FUNCTION_159();
    v419(v418);
    v420 = v403;
    sub_1D56128A8();
    OUTLINED_FUNCTION_22_13();
    (*(v640 + 8))(v403, v641);
  }

  OUTLINED_FUNCTION_150_0();
  v422 = (v22 + *(v421 + 128));
  *v422 = v420;
  v422[1] = v373;
  OUTLINED_FUNCTION_117_0(&v664);
  sub_1D4F39AB0(v423, v424, v425, v426);
  OUTLINED_FUNCTION_1(v420);
  v427 = v644;
  if (v496)
  {
    sub_1D4E50004(v420, &qword_1EC7EC978, &unk_1D56222A0);
    v397 = 0;
    v432 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v664 + 8);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v429 = *(v428 + 8);
    v430 = OUTLINED_FUNCTION_159();
    v431(v430);
    v432 = v373;
    sub_1D56128B8();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_136(&v665);
    v433(v373, v641);
  }

  OUTLINED_FUNCTION_154_5();
  v434 = (v22 + v673[33]);
  v435 = (v22 + v673[34]);
  *v434 = v397;
  v434[1] = v432;
  v436 = (v306 + v308[20]);
  v437 = v436[1];
  *v435 = *v436;
  v435[1] = v437;
  sub_1D4F39AB0(v306 + v308[21], v427, &qword_1EC7ED9B0, &unk_1D5631050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  v438 = OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_62_17(v438);
  if (v373 == 1)
  {
    sub_1D4E50004(v427, &qword_1EC7ED9B0, &unk_1D5631050);
    v439 = 0uLL;
    v664 = 0u;
    v644 = 0u;
    v641 = 0u;
    v440 = &v665;
  }

  else
  {
    v373 = 0;
    sub_1D5138FDC(v682);
    OUTLINED_FUNCTION_15_1();
    v612 = *(v611 + 8);
    v613 = OUTLINED_FUNCTION_59_2();
    v614(v613);
    v644 = v682[1];
    v664 = v682[0];
    v640 = v682[3];
    v439 = v682[2];
    v440 = &v667;
  }

  *(v440 - 16) = v439;
  OUTLINED_FUNCTION_150_0();
  v442 = (v22 + *(v441 + 144));
  v443 = v628;
  v444 = v628[1];
  v678 = *v628;
  v679[0] = v444;
  v445 = v628[3];
  v679[1] = v628[2];
  v680 = v445;
  sub_1D4E50004(&v678, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v446 = v644;
  *v443 = v664;
  v443[1] = v446;
  v447 = v640;
  v443[2] = v641;
  v443[3] = v447;
  v448 = (v306 + v308[16]);
  v449 = v448[1];
  *v442 = *v448;
  v442[1] = v449;
  v450 = v308[22];

  OUTLINED_FUNCTION_92_6(&v652);
  sub_1D5000C8C(v451, v452, v453, v454);
  OUTLINED_FUNCTION_137();
  v456 = v410 + *(v455 + 24);
  OUTLINED_FUNCTION_165_4(v675);
  sub_1D4F39AB0(v457, v458, v459, v460);
  type metadata accessor for CloudMusicMovie.Relationships(0);
  v461 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v461, v462, v463) == 1)
  {
    sub_1D4E50004(v450, &qword_1EC7EF310, &qword_1D565B640);
    v464 = v662;
  }

  else
  {
    v465 = v616;
    sub_1D4F39AB0(v450, v616, &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    v466 = OUTLINED_FUNCTION_174_2();
    OUTLINED_FUNCTION_1(v466);
    v464 = v662;
    if (v496)
    {
      sub_1D4E50004(v465, &qword_1EC7EA7F0, &unk_1D561E8C0);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_172_2();
      v468 = *(v467 - 256);
      OUTLINED_FUNCTION_15_4(v468, v469, v470, v471);
      sub_1D5613C48();
      OUTLINED_FUNCTION_147();
      v373 = sub_1D560CD48();
      OUTLINED_FUNCTION_46_15();
      sub_1D50A2470(v472, v473);
      OUTLINED_FUNCTION_36_20(&v680);
      OUTLINED_FUNCTION_88_8();
      sub_1D5612368();
      sub_1D4E50004(v468, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v475 = *(v474 + 8);
      v476 = OUTLINED_FUNCTION_59_2();
      v477(v476);
    }
  }

  v478 = v661;
  v479 = v651;
  v480 = v657;
  v481 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v481, v482, v483, v631);
  OUTLINED_FUNCTION_92_6(&v656);
  sub_1D4E68940(v480, v484, v485, v486);
  OUTLINED_FUNCTION_137();
  v488 = *(v487 + 28);
  sub_1D4F39AB0(v410 + v488, v479, &qword_1EC7ECD30, &unk_1D5622F30);
  type metadata accessor for CloudMusicMovie.Associations(0);
  v489 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v489);
  if (v496)
  {
    v490 = &qword_1EC7ECD30;
    v491 = &unk_1D5622F30;
  }

  else
  {
    OUTLINED_FUNCTION_66_1(&v637);
    sub_1D4F39AB0(v492, v493, v494, v495);
    OUTLINED_FUNCTION_8_42();
    v479 = v373;
    sub_1D50A229C();
    v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_5_1(v479);
    if (!v496)
    {
      v497 = sub_1D560CD98();
      v498 = v663;
      OUTLINED_FUNCTION_15_4(v663, v499, v500, v497);
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_147();
      v478 = sub_1D560CD48();
      OUTLINED_FUNCTION_98_6();
      v464 = sub_1D50A2470(v501, v410);
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_154_5();
      sub_1D50A2470(v502, v503);
      OUTLINED_FUNCTION_36_20(&v680 + 8);
      OUTLINED_FUNCTION_71_7();
      OUTLINED_FUNCTION_176_1();
      sub_1D5612368();
      sub_1D4E50004(v498, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v504 + 8))(v479, v373);
      goto LABEL_53;
    }

    v490 = &qword_1EC7ECD28;
    v491 = &unk_1D565B660;
  }

  sub_1D4E50004(v479, v490, v491);
LABEL_53:
  v505 = OUTLINED_FUNCTION_60_8(&v680 + 8);
  __swift_storeEnumTagSinglePayload(v505, v506, v507, v671);
  OUTLINED_FUNCTION_92_6(&v663);
  sub_1D4E68940(v479, v508, v509, v510);
  OUTLINED_FUNCTION_66_1(&v678);
  sub_1D4F39AB0(v511, v512, v513, v514);
  OUTLINED_FUNCTION_1(v373);
  if (v496)
  {
    v515 = &qword_1EC7ECD30;
    v516 = &unk_1D5622F30;
    v517 = v373;
  }

  else
  {
    v518 = v373 + v480[5];
    OUTLINED_FUNCTION_117_0(&v638);
    sub_1D4F39AB0(v519, v520, v521, v522);
    OUTLINED_FUNCTION_8_42();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_5_1(v479);
    if (!v523)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_172_2();
      v525 = *(v524 - 256);
      OUTLINED_FUNCTION_15_4(v525, v526, v527, v528);
      type metadata accessor for MusicMovie();
      *&v664 = v488;
      v478 = sub_1D560CD48();
      OUTLINED_FUNCTION_98_6();
      v464 = sub_1D50A2470(v529, v410);
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_154_5();
      sub_1D50A2470(v530, v531);
      OUTLINED_FUNCTION_36_20(&v681);
      v488 = v664;
      OUTLINED_FUNCTION_176_1();
      sub_1D5612368();
      sub_1D4E50004(v525, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v533 = *(v532 + 8);
      v534 = OUTLINED_FUNCTION_222();
      v535(v534);
      goto LABEL_60;
    }

    v515 = &qword_1EC7ECD28;
    v516 = &unk_1D565B660;
    v517 = v479;
  }

  sub_1D4E50004(v517, v515, v516);
LABEL_60:
  v536 = OUTLINED_FUNCTION_60_8(&v681);
  __swift_storeEnumTagSinglePayload(v536, v537, v538, v671);
  OUTLINED_FUNCTION_92_6(&v670);
  sub_1D4E68940(v479, v539, v540, v541);
  sub_1D4F39AB0(v410 + v488, v478, &qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_1(v478);
  if (v496)
  {
    v542 = &qword_1EC7ECD30;
    v543 = &unk_1D5622F30;
    v544 = v478;
  }

  else
  {
    v545 = v618;
    sub_1D4F39AB0(v478 + v480[6], v618, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_8_42();
    sub_1D50A229C();
    v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v545);
    if (!v547)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_172_2();
      v410 = *(v548 - 256);
      OUTLINED_FUNCTION_15_4(v410, v549, v550, v551);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v552, v553);
      OUTLINED_FUNCTION_36_20(v682);
      OUTLINED_FUNCTION_71_7();
      v479 = v545;
      sub_1D5612368();
      OUTLINED_FUNCTION_154_5();
      sub_1D4E50004(v554, v555, v556);
      OUTLINED_FUNCTION_56_0();
      (*(v557 + 8))(v545, v546);
      goto LABEL_67;
    }

    v542 = &qword_1EC7EB5A8;
    v543 = &unk_1D5622F00;
    v544 = v545;
  }

  sub_1D4E50004(v544, v542, v543);
LABEL_67:
  v558 = OUTLINED_FUNCTION_60_8(v682);
  __swift_storeEnumTagSinglePayload(v558, v559, v560, v646);
  OUTLINED_FUNCTION_92_6(&v674);
  sub_1D4E68940(v479, v561, v562, v563);
  sub_1D4F39AB0(v410 + v488, v464, &qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_1(v464);
  if (v496)
  {
    sub_1D4E50004(v464, &qword_1EC7ECD30, &unk_1D5622F30);
  }

  else
  {
    OUTLINED_FUNCTION_183_2(v464 + v480[7], &qword_1EC7ECD18, &qword_1D5631040, &v639);
    OUTLINED_FUNCTION_8_42();
    sub_1D50A229C();
    v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_5_1(v410);
    if (v565)
    {
      sub_1D4E50004(v410, &qword_1EC7ECD18, &qword_1D5631040);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_172_2();
      v567 = *(v566 - 256);
      OUTLINED_FUNCTION_15_4(v567, v568, v569, v570);
      sub_1D5614898();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_112_6();
      sub_1D50A2470(v571, v572);
      OUTLINED_FUNCTION_36_20(v682 + 8);
      OUTLINED_FUNCTION_71_7();
      v479 = v410;
      sub_1D5612368();
      sub_1D4E50004(v567, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v573 + 8))(v410, v564);
    }

    OUTLINED_FUNCTION_154_5();
  }

  v574 = OUTLINED_FUNCTION_60_8(v682 + 8);
  __swift_storeEnumTagSinglePayload(v574, v575, v576, v649);
  OUTLINED_FUNCTION_92_6(v676);
  sub_1D4E68940(v479, v577, v578, v579);
  OUTLINED_FUNCTION_117_0(v679);
  sub_1D4F39AB0(v580, v581, v582, v583);
  OUTLINED_FUNCTION_1(v479);
  if (v496)
  {
    sub_1D4E50004(v479, &qword_1EC7ECD30, &unk_1D5622F30);
    v584 = 1;
    v585 = v654;
    v586 = v653;
  }

  else
  {
    v587 = v619;
    sub_1D4F39AB0(v479 + v480[8], v619, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_8_42();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_1(v587);
    v586 = v653;
    if (v588)
    {
      sub_1D4E50004(v587, &qword_1EC7ECD28, &unk_1D565B660);
      v584 = 1;
      v585 = v654;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_172_2();
      v590 = *(v589 - 256);
      OUTLINED_FUNCTION_15_4(v590, v591, v592, v593);
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EF320, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_39_3();
      sub_1D50A2470(v594, type metadata accessor for MusicMovie);
      v585 = v654;
      OUTLINED_FUNCTION_88_8();
      v410 = v672;
      sub_1D5612368();
      sub_1D4E50004(v590, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v596 = *(v595 + 8);
      v597 = OUTLINED_FUNCTION_214();
      v598(v597);
      v584 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v585, v584, 1, v671);
  OUTLINED_FUNCTION_92_6(&v677);
  sub_1D4E68940(v585, v599, v600, v601);
  OUTLINED_FUNCTION_137();
  v603 = *(v410 + *(v602 + 32));
  OUTLINED_FUNCTION_175_1();
  v604 = v673;
  *(v22 + v673[44]) = v605;
  v676[1] = v604;
  v677 = sub_1D50A2470(&qword_1EDD5B358, type metadata accessor for MusicMoviePropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v675);
  sub_1D50A2244(v22, boxed_opaque_existential_0);
  sub_1D4E67688(v603);
  MusicMovie.init(propertyProvider:)(v675, v655);

  v607 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v607);
  (*(v608 + 8))(v670);
  OUTLINED_FUNCTION_24_0(v665);
  (*(v609 + 8))(v656);
  OUTLINED_FUNCTION_136(&a10);
  v610(v667, v586);
  sub_1D4E50004(v666, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_116_6();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

void sub_1D50993EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v134 = v25;
  v27 = v26;
  v133 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v132 = v33;
  OUTLINED_FUNCTION_70_0();
  v34 = sub_1D5611898();
  v35 = OUTLINED_FUNCTION_4(v34);
  v136 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v122 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v124 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  v126 = v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D5611998();
  v55 = OUTLINED_FUNCTION_4(v54);
  v130 = v56;
  v131 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_3();
  v63 = type metadata accessor for SocialProfilePropertyProvider();
  v64 = OUTLINED_FUNCTION_14(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v121 = v67;
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
  v71 = v63[10];
  sub_1D560C0A8();
  v128 = v71;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  if (qword_1EDD53D08 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560D9A8();
  __swift_project_value_buffer(v76, qword_1EDD53D10);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  v81 = v63[12];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  sub_1D56105B8();
  sub_1D4E50004(v22, &qword_1EC7EB5C0, &unk_1D56223C0);
  v83 = v20 + v63[13];
  sub_1D5610658();
  v129 = sub_1D5610618();
  v120 = v84;
  v119 = sub_1D56105C8();
  v118 = sub_1D56105F8();
  v85 = sub_1D56105E8();
  v135 = v82;
  v86 = sub_1D56105A8();
  *(v20 + v63[6]) = 2;
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v87 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    v117 = qword_1EDD76B58 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EDD76B58 < 0)
    {
      v117 = qword_1EDD76B58;
    }

    OUTLINED_FUNCTION_186_2(v117);
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_184_2(&a16);
    OUTLINED_FUNCTION_82();

    v87 = v27;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v20 + v63[11]) = v87;
  v88 = (v20 + v63[14]);
  *v88 = v129;
  v88[1] = v120;
  *(v20 + v63[15]) = v119;
  *(v20 + v63[16]) = v118;
  *(v20 + v63[17]) = v85;
  *(v20 + v63[18]) = v86;
  sub_1D5610648();
  v89 = v122;
  sub_1D56118A8();
  sub_1D5611878();
  v90 = *(v136 + 8);
  v90(v122, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v91 = OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_1(v91);
  if (v92)
  {
    sub_1D4E50004(v124, &qword_1EC7EB5B8, &unk_1D56206A0);
    v98 = 1;
    v93 = v126;
  }

  else
  {
    v93 = v126;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v95 = *(v94 + 8);
    v96 = OUTLINED_FUNCTION_59_2();
    v97(v96);
    v98 = 0;
  }

  __swift_storeEnumTagSinglePayload(v93, v98, 1, v121);
  v99 = (v20 + v63[5]);
  v123 = v63[7];
  v125 = v63[8];
  v127 = (v20 + v63[9]);
  v100 = OUTLINED_FUNCTION_85();
  sub_1D4E68940(v100, v101, v102, v103);
  sub_1D56118A8();
  sub_1D5611858();
  OUTLINED_FUNCTION_24_4();
  v104 = OUTLINED_FUNCTION_135_0();
  (v90)(v104);
  *v99 = v89;
  v99[1] = v41;
  OUTLINED_FUNCTION_211_0();
  v105 = sub_1D5611888();
  v106 = OUTLINED_FUNCTION_135_0();
  (v90)(v106);
  *(v20 + v123) = v105;
  OUTLINED_FUNCTION_211_0();
  v107 = sub_1D5611828();
  v108 = OUTLINED_FUNCTION_135_0();
  (v90)(v108);
  *(v20 + v125) = v107;
  OUTLINED_FUNCTION_211_0();
  sub_1D5611848();
  OUTLINED_FUNCTION_24_4();
  v109 = OUTLINED_FUNCTION_135_0();
  (v90)(v109);
  *v127 = v107;
  v127[1] = v41;
  OUTLINED_FUNCTION_211_0();
  sub_1D5611838();
  v110 = OUTLINED_FUNCTION_135_0();
  (v90)(v110);
  sub_1D4E68940(v132, v20 + v128, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v137[3] = v63;
  v111 = sub_1D50A2470(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider);
  OUTLINED_FUNCTION_181_2(v111);
  v112 = OUTLINED_FUNCTION_123_4();
  sub_1D50A2244(v112, v113);
  SocialProfile.init(propertyProvider:)(v137, v133);

  v114 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v114);
  (*(v115 + 8))(v134);
  OUTLINED_FUNCTION_24_0(v135);
  (*(v116 + 8))();
  (*(v130 + 8))(v21, v131);
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5099B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v302 = a1;
  v286 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v285 = &v242 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v284 = &v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v279 = &v242 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v278 = &v242 - v14;
  v283 = sub_1D5612B78();
  v282 = *(v283 - 8);
  v15 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v297 = &v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for CloudMusicMovie(0);
  v17 = *(*(v280 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v280);
  v296 = &v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v281 = &v242 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v252 = &v242 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v290 = &v242 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v251 = &v242 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v289 = &v242 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v288 = &v242 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v249 = &v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v305 = &v242 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v248 = &v242 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v306 = &v242 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v250 = &v242 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v247 = &v242 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v287 = &v242 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v303 = &v242 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v307 = &v242 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v310 = &v242 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v246 = &v242 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v309 = &v242 - v61;
  v301 = sub_1D5613578();
  v300 = *(v301 - 8);
  v62 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v299 = &v242 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v276 = &v242 - v66;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v244 = *(v277 - 8);
  v67 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v243 = &v242 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x1EEE9AC00](v69 - 8);
  v245 = &v242 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v308 = &v242 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v272 = &v242 - v76;
  v298 = sub_1D5610788();
  v275 = *(v298 - 8);
  v77 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v274 = &v242 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v270 = &v242 - v81;
  v273 = sub_1D56107C8();
  v271 = *(v273 - 8);
  v82 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v273);
  v267 = &v242 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84 - 8);
  v295 = &v242 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v88 = *(*(v87 - 8) + 64);
  v89 = MEMORY[0x1EEE9AC00](v87 - 8);
  v254 = &v242 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v261 = &v242 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x1EEE9AC00](v92 - 8);
  v294 = (&v242 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v94);
  v293 = &v242 - v96;
  v97 = sub_1D56128C8();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v242 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102 - 8);
  v292 = &v242 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v106 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105 - 8);
  v108 = &v242 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v291 = &v242 - v111;
  v112 = type metadata accessor for CloudMusicMovie.Attributes(0);
  v113 = *(*(v112 - 1) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v304 = (&v242 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = MusicMovie.artistName.getter();
  v268 = v115;
  if (qword_1EDD541B8 != -1)
  {
    swift_once();
  }

  v116 = sub_1D56140F8();
  v117 = sub_1D50A2470(&qword_1EDD59308, type metadata accessor for MusicMovie);
  sub_1D50A2470(&qword_1EDD59300, type metadata accessor for MusicMovie);
  v311 = v2;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v108, 1, v116) == 1)
  {
    sub_1D4E50004(v108, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v118 = 1;
    v119 = v291;
  }

  else
  {
    v119 = v291;
    sub_1D5613F28();
    (*(*(v116 - 8) + 8))(v108, v116);
    v118 = 0;
  }

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v119, v118, 1, v120);
  if (qword_1EDD54300 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  if (v317)
  {
    v121 = v317;
  }

  else
  {
    v121 = MEMORY[0x1E69E7CC0];
  }

  v266 = sub_1D511C730(v121);

  if (qword_1EDD54198 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v264 = *(&v317 + 1);
  v265 = v317;
  if (qword_1EDD54270 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EDD54228 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  sub_1D56128D8();
  v122 = v292;
  sub_1D5612898();
  (*(v98 + 8))(v101, v97);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  __swift_storeEnumTagSinglePayload(v122, 0, 1, v123);
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v263 = v317;
  v124 = v293;
  v125 = v267;
  v126 = v254;
  if (qword_1EDD542D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  sub_1D560EC28();
  if (v317)
  {
    v127 = v317;
  }

  else
  {
    v127 = MEMORY[0x1E69E7CC0];
  }

  v262 = sub_1D50C4F58(v127);

  if (qword_1EDD542C8 != -1)
  {
    swift_once();
  }

  v128 = sub_1D5610978();
  v129 = v261;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v129, 1, v128) == 1)
  {
    sub_1D4E50004(v129, &qword_1EC7EAC98, &unk_1D561DA80);
    v130 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v128 - 8) + 8))(v129, v128);
    v130 = 0;
  }

  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v124, v130, 1, v131);
  sub_1D4F84A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v261 = v317;
  v132 = MEMORY[0x1E69E7CC0];
  if (qword_1EDD54360 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v260 = v317;
  v133 = v294;
  if (off_1EDD54320 != -1)
  {
    swift_once();
  }

  v256 = sub_1D560C0A8();
  sub_1D560EC28();
  if (qword_1EDD541E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF318, &qword_1D563DD60);
  sub_1D560EC28();
  if (v317)
  {
    v134 = v317;
  }

  else
  {
    v134 = v132;
  }

  v259 = sub_1D50ABDF0(v134);

  v258 = MusicMovie.title.getter();
  v257 = v135;
  if (qword_1EDD541C0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  sub_1D560EC28();
  sub_1D501B598();
  v255 = v136;

  if (qword_1EDD54238 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v126, 1, v128) == 1)
  {
    sub_1D4E50004(v126, &qword_1EC7EAC98, &unk_1D561DA80);
    v137 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v128 - 8) + 8))(v126, v128);
    v137 = 0;
  }

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v133, v137, 1, v138);
  sub_1D56107A8();
  v139 = v125;
  if (qword_1EDD54338 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v140 = v270;
  sub_1D560EC28();
  v141 = v275;
  v142 = v274;
  v143 = v298;
  (*(v275 + 104))(v274, *MEMORY[0x1E6975DC8], v298);
  v254 = sub_1D56107B8();
  v253 = v144;
  (*(v141 + 8))(v142, v143);
  sub_1D4E50004(v140, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v271 + 8))(v139, v273);
  if (qword_1EDD54350 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v275 = *(&v317 + 1);
  v145 = v317;
  v146 = v272;
  if (qword_1EDD54268 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v147 = v291;
  if (*(&v317 + 1))
  {
    v312 = v317;
    v313 = v318;
    v314 = v319;
    v315 = v320;
    sub_1D51394FC(v146);
    v316[0] = v312;
    v316[1] = v313;
    v316[2] = v314;
    v316[3] = v315;
    sub_1D5000CD8(v316);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v149 = v146;
    v150 = 0;
  }

  else
  {
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v149 = v146;
    v150 = 1;
  }

  __swift_storeEnumTagSinglePayload(v149, v150, 1, v148);
  v298 = v117;
  if (qword_1EDD541F8 != -1)
  {
    swift_once();
  }

  v151 = v304;
  v152 = v304 + v112[22];
  sub_1D560EC28();
  if (v260)
  {
    v153 = v260;
  }

  else
  {
    v153 = MEMORY[0x1E69E7CC0];
  }

  v154 = v268;
  *v151 = v269;
  v151[1] = v154;
  sub_1D4F39A1C(v147, v151 + v112[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v151 + v112[6]) = v266;
  v155 = (v151 + v112[7]);
  v156 = v264;
  *v155 = v265;
  v155[1] = v156;
  sub_1D4F39A1C(v292, v151 + v112[8], &qword_1EC7EC978, &unk_1D56222A0);
  *(v151 + v112[9]) = v263;
  *(v151 + v112[10]) = v262;
  sub_1D4F39A1C(v293, v151 + v112[11], &qword_1EC7EC960, &unk_1D56334C0);
  *(v151 + v112[12]) = v261;
  *(v151 + v112[13]) = v153;
  sub_1D4F39A1C(v295, v151 + v112[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v151 + v112[15]) = v259;
  v157 = (v151 + v112[16]);
  v158 = v257;
  *v157 = v258;
  v157[1] = v158;
  *(v151 + v112[17]) = v255;
  sub_1D4F39A1C(v294, v151 + v112[18], &qword_1EC7EC960, &unk_1D56334C0);
  v159 = (v151 + v112[19]);
  v160 = v253;
  *v159 = v254;
  v159[1] = v160;
  v161 = (v151 + v112[20]);
  v162 = v275;
  *v161 = v145;
  v161[1] = v162;
  sub_1D4F39A1C(v146, v151 + v112[21], &qword_1EC7ED9B0, &unk_1D5631050);
  v163 = type metadata accessor for CloudMusicMovie.Relationships(0);
  __swift_storeEnumTagSinglePayload(v308, 1, 1, v163);
  if (qword_1EDD541D0 != -1)
  {
    swift_once();
  }

  v164 = v276;
  v165 = v277;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v164, 1, v165);
  v167 = MEMORY[0x1E6976A78];
  v168 = v287;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v164, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v169 = v244;
    v170 = v243;
    (*(v244 + 32))(v243, v164, v165);
    v171 = *v167;
    v172 = v300;
    v173 = v299;
    v174 = v301;
    (*(v300 + 104))(v299, v171, v301);
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
    v175 = v245;
    sub_1D560DA98();
    (*(v172 + 8))(v173, v174);
    (*(v169 + 8))(v170, v165);
    v168 = v287;
    v176 = v308;
    sub_1D4E50004(v308, &qword_1EC7EF310, &qword_1D565B640);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    __swift_storeEnumTagSinglePayload(v175, 0, 1, v177);
    __swift_storeEnumTagSinglePayload(v175, 0, 1, v163);
    sub_1D4F39A1C(v175, v176, &qword_1EC7EF310, &qword_1D565B640);
  }

  v178 = type metadata accessor for CloudMusicMovie.Associations(0);
  __swift_storeEnumTagSinglePayload(v309, 1, 1, v178);
  if (qword_1EDD54288 != -1)
  {
    swift_once();
  }

  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  sub_1D560EC28();
  if (qword_1EDD54340 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EDD54308 != -1)
  {
    swift_once();
  }

  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  sub_1D560EC28();
  if (qword_1EDD54180 != -1)
  {
    swift_once();
  }

  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  sub_1D560EC28();
  if (qword_1EDD54258 != -1)
  {
    swift_once();
  }

  v182 = v303;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v310, 1, v179) != 1 || __swift_getEnumTagSinglePayload(v307, 1, v179) != 1 || __swift_getEnumTagSinglePayload(v306, 1, v180) != 1 || __swift_getEnumTagSinglePayload(v305, 1, v181) != 1 || __swift_getEnumTagSinglePayload(v182, 1, v179) != 1)
  {
    v294 = v178;
    v183 = v180;
    v295 = v181;
    v184 = v246;
    sub_1D4F39AB0(v310, v168, &qword_1EC7EF308, &qword_1D5631048);
    if (__swift_getEnumTagSinglePayload(v168, 1, v179) == 1)
    {
      sub_1D4E50004(v168, &qword_1EC7EF308, &qword_1D5631048);
      v185 = 1;
      v186 = v288;
    }

    else
    {
      v187 = v300;
      v188 = v299;
      v189 = v301;
      (*(v300 + 104))(v299, *MEMORY[0x1E6976A78], v301);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EF320, type metadata accessor for MusicMovie);
      v186 = v288;
      sub_1D560DA98();
      (*(v187 + 8))(v188, v189);
      (*(*(v179 - 8) + 8))(v168, v179);
      v185 = 0;
    }

    v190 = v247;
    v191 = v289;
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    __swift_storeEnumTagSinglePayload(v186, v185, 1, v192);
    sub_1D4F39AB0(v307, v190, &qword_1EC7EF308, &qword_1D5631048);
    if (__swift_getEnumTagSinglePayload(v190, 1, v179) == 1)
    {
      sub_1D4E50004(v190, &qword_1EC7EF308, &qword_1D5631048);
      v193 = 1;
    }

    else
    {
      v194 = v300;
      v195 = v299;
      v196 = v301;
      (*(v300 + 104))(v299, *MEMORY[0x1E6976A78], v301);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EF320, type metadata accessor for MusicMovie);
      sub_1D560DA98();
      (*(v194 + 8))(v195, v196);
      (*(*(v179 - 8) + 8))(v190, v179);
      v193 = 0;
    }

    v197 = v184;
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    __swift_storeEnumTagSinglePayload(v191, v193, 1, v198);
    v199 = v248;
    sub_1D4F39AB0(v306, v248, &off_1EC7EB5B0, &unk_1D5632170);
    v200 = v183;
    if (__swift_getEnumTagSinglePayload(v199, 1, v183) == 1)
    {
      sub_1D4E50004(v199, &off_1EC7EB5B0, &unk_1D5632170);
      v201 = 1;
      v202 = v252;
      v203 = v290;
    }

    else
    {
      v204 = v300;
      v205 = v299;
      v206 = v301;
      (*(v300 + 104))(v299, *MEMORY[0x1E6976A78], v301);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);
      v203 = v290;
      sub_1D560DA98();
      (*(v204 + 8))(v205, v206);
      (*(*(v200 - 8) + 8))(v199, v200);
      v201 = 0;
      v202 = v252;
    }

    v207 = v295;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v203, v201, 1, v208);
    v209 = v249;
    sub_1D4F39AB0(v305, v249, &qword_1EC7EB620, &unk_1D561E5B0);
    if (__swift_getEnumTagSinglePayload(v209, 1, v207) == 1)
    {
      sub_1D4E50004(v209, &qword_1EC7EB620, &unk_1D561E5B0);
      v210 = 1;
    }

    else
    {
      v211 = v300;
      v212 = v299;
      v213 = v301;
      (*(v300 + 104))(v299, *MEMORY[0x1E6976A78], v301);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EDD52A78, MEMORY[0x1E69773E0]);
      sub_1D560DA98();
      (*(v211 + 8))(v212, v213);
      (*(*(v207 - 8) + 8))(v209, v207);
      v210 = 0;
    }

    v214 = v251;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    __swift_storeEnumTagSinglePayload(v202, v210, 1, v215);
    v216 = v250;
    sub_1D4F39AB0(v303, v250, &qword_1EC7EF308, &qword_1D5631048);
    if (__swift_getEnumTagSinglePayload(v216, 1, v179) == 1)
    {
      v217 = v309;
      sub_1D4E50004(v309, &qword_1EC7ECD30, &unk_1D5622F30);
      sub_1D4E50004(v216, &qword_1EC7EF308, &qword_1D5631048);
      v218 = 1;
    }

    else
    {
      v219 = v300;
      v220 = v299;
      v221 = v301;
      (*(v300 + 104))(v299, *MEMORY[0x1E6976A78], v301);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EF320, type metadata accessor for MusicMovie);
      sub_1D560DA98();
      (*(v219 + 8))(v220, v221);
      v217 = v309;
      sub_1D4E50004(v309, &qword_1EC7ECD30, &unk_1D5622F30);
      (*(*(v179 - 8) + 8))(v216, v179);
      v218 = 0;
    }

    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    __swift_storeEnumTagSinglePayload(v214, v218, 1, v222);
    sub_1D4F39A1C(v288, v197, &qword_1EC7ECD28, &unk_1D565B660);
    v223 = v294;
    sub_1D4F39A1C(v289, v197 + v294[5], &qword_1EC7ECD28, &unk_1D565B660);
    sub_1D4F39A1C(v290, v197 + v223[6], &qword_1EC7EB5A8, &unk_1D5622F00);
    sub_1D4F39A1C(v202, v197 + v223[7], &qword_1EC7ECD18, &qword_1D5631040);
    sub_1D4F39A1C(v214, v197 + v223[8], &qword_1EC7ECD28, &unk_1D565B660);
    __swift_storeEnumTagSinglePayload(v197, 0, 1, v223);
    sub_1D4F39A1C(v197, v217, &qword_1EC7ECD30, &unk_1D5622F30);
  }

  v224 = type metadata accessor for MusicMovie();
  sub_1D50A2470(&unk_1EDD59310, type metadata accessor for MusicMovie);
  v225 = v311;
  v226 = sub_1D560CBD8();
  if (v226 <= 1)
  {
    v227 = 1;
  }

  else
  {
    v227 = v226;
  }

  v229 = *v225;
  v228 = v225[1];
  v230 = v280;
  v231 = v281;
  sub_1D50A2244(v304, &v281[*(v280 + 20)]);
  sub_1D4F39AB0(v308, v231 + v230[6], &qword_1EC7EF310, &qword_1D565B640);
  sub_1D4F39AB0(v309, v231 + v230[7], &qword_1EC7ECD30, &unk_1D5622F30);
  *v231 = v229;
  v231[1] = v228;
  *(v231 + v230[8]) = v227;
  v232 = *(v224 + 20);

  v233 = v278;
  sub_1D5611A28();
  v234 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v233, 0, 1, v234);
  v235 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v279, 1, 1, v235);
  v236 = v297;
  sub_1D5612B38();
  sub_1D50A2244(v231, v296);
  sub_1D5611A98();
  v302 = sub_1D5611A88();
  v301 = v237;
  v238 = v282;
  v239 = v285;
  v240 = v283;
  (*(v282 + 16))(v285, v236, v283);
  __swift_storeEnumTagSinglePayload(v239, 0, 1, v240);
  v300 = sub_1D5611A38();
  v299 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EDD5C6E0, type metadata accessor for CloudMusicMovie);
  sub_1D5610628();
  (*(v238 + 8))(v297, v240);
  sub_1D50A229C();
  sub_1D4E50004(v309, &qword_1EC7ECD30, &unk_1D5622F30);
  sub_1D4E50004(v308, &qword_1EC7EF310, &qword_1D565B640);
  sub_1D50A229C();
  sub_1D4E50004(v310, &qword_1EC7EF308, &qword_1D5631048);
  sub_1D4E50004(v303, &qword_1EC7EF308, &qword_1D5631048);
  sub_1D4E50004(v305, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v306, &off_1EC7EB5B0, &unk_1D5632170);
  return sub_1D4E50004(v307, &qword_1EC7EF308, &qword_1D5631048);
}

uint64_t sub_1D509C898@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = v69 - v4;
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = v69 - v13;
  v14 = sub_1D5612B78();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF368, &unk_1D56310C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF370, &unk_1D565D120);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF378, &unk_1D56310D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v72 = v69 - v25;
  v26 = sub_1D5611998();
  v76 = *(v26 - 8);
  v77 = v26;
  v27 = *(v76 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v87 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v88 = v69 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v71 = v69 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = v69 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = v69 - v40;
  v42 = sub_1D5611898();
  v85 = *(v42 - 8);
  v86 = v42;
  v43 = *(v85 + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v70 = v69 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v84 = v69 - v46;
  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v47 = sub_1D56140F8();
  sub_1D50A2470(&qword_1EDD57518, type metadata accessor for SocialProfile);
  sub_1D50A2470(&qword_1EC7EE028, type metadata accessor for SocialProfile);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v37, 1, v47) == 1)
  {
    sub_1D4E50004(v37, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v48 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v47 - 8) + 8))(v37, v47);
    v48 = 0;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v41, v48, 1, v49);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v69[2] = v90;
  v69[1] = v91;
  if (qword_1EDD53F88 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EDD53FD0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EDD53FB0 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  sub_1D560EC28();
  v50 = v84;
  sub_1D5611868();
  v51 = *v1;
  v52 = v1[1];
  (*(v85 + 16))(v70, v50, v86);
  v53 = sub_1D56118D8();
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v53);
  v54 = sub_1D56118B8();
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v54);
  v55 = sub_1D5611988();
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v55);

  v56 = v88;
  sub_1D5611928();
  v57 = *(type metadata accessor for SocialProfile() + 20);
  v58 = v75;
  sub_1D5611A28();
  v59 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
  v60 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v60);
  v61 = v79;
  sub_1D5612B38();
  v63 = v76;
  v62 = v77;
  (*(v76 + 16))(v87, v56, v77);
  sub_1D5611A98();
  v78 = sub_1D5611A88();
  v75 = v64;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  (*(v80 + 16))(v82, v61, v81);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v66);
  v74 = sub_1D5611A38();
  v73 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EDD530F0, MEMORY[0x1E69762A8]);
  sub_1D5610628();
  (*(v65 + 8))(v61, v66);
  (*(v63 + 8))(v88, v62);
  return (*(v85 + 8))(v84, v86);
}

void sub_1D509D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v423 = v25;
  v424 = v24;
  v27 = v26;
  v417 = v28;
  v422 = sub_1D560CD48();
  v29 = OUTLINED_FUNCTION_4(v422);
  v416 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_12_0(v34, &v408);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v415 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
  v55 = OUTLINED_FUNCTION_22(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  v414 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  v411 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  v421 = v70;
  OUTLINED_FUNCTION_70_0();
  v71 = sub_1D5610788();
  v72 = OUTLINED_FUNCTION_12_0(v71, &a17);
  v409[2] = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D56107C8();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a15);
  v408 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v89 = OUTLINED_FUNCTION_22(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v120);
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v124);
  v125 = type metadata accessor for UploadedAudioPropertyProvider();
  v126 = OUTLINED_FUNCTION_14(v125);
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5();
  v131 = (v130 - v129);
  v132 = sub_1D560D838();
  v133 = OUTLINED_FUNCTION_4(v132);
  v135 = v134;
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5();
  v138 = OUTLINED_FUNCTION_115();
  v139 = type metadata accessor for CloudUploadedAudio(v138);
  v140 = OUTLINED_FUNCTION_14(v139);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  sub_1D5610648();
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v144 = sub_1D560D9A8();
  __swift_project_value_buffer(v144, qword_1EC7F08A0);
  v404 = v139;
  v145 = *(v139 + 20);
  v419 = v21;
  v146 = (v21 + v145);
  v426 = type metadata accessor for CloudUploadedAudio.Attributes(0);
  v396 = v146;
  OUTLINED_FUNCTION_138_6(v426[13]);
  sub_1D56105B8();
  v147 = v125[5];
  sub_1D56140F8();
  OUTLINED_FUNCTION_142_2();
  v149 = OUTLINED_FUNCTION_27_23(v148);
  v397 = v150;
  __swift_storeEnumTagSinglePayload(v149, v151, v152, v150);
  v153 = v125[6];
  type metadata accessor for AssetFlavors();
  v154 = OUTLINED_FUNCTION_27_23(&v413);
  v398 = v155;
  __swift_storeEnumTagSinglePayload(v154, v156, v157, v155);
  v158 = v125[7];
  sub_1D560F928();
  OUTLINED_FUNCTION_198_2();
  v160 = OUTLINED_FUNCTION_27_23(v159);
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
  v164 = v125[8];
  sub_1D56106B8();
  v165 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  v169 = v125[11];
  v170 = sub_1D5610978();
  v171 = OUTLINED_FUNCTION_27_23(&v417);
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v170);
  v174 = v125[13];
  v175 = v20;
  v176 = sub_1D560C328();
  v177 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v176);
  v180 = v125[14];
  sub_1D56128E8();
  v181 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
  v185 = v125[15];
  sub_1D5610CB8();
  v186 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v189);
  v190 = v125[16];
  sub_1D5613198();
  v191 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
  v195 = v125[17];
  sub_1D56134E8();
  v196 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
  v200 = v125[18];
  sub_1D5614A78();
  v201 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v204);
  v401 = v125[19];
  OUTLINED_FUNCTION_33();
  v425 = v170;
  __swift_storeEnumTagSinglePayload(v205, v206, v207, v170);
  v208 = v125[20];
  sub_1D56109F8();
  v209 = OUTLINED_FUNCTION_27_23(&v420);
  __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
  v213 = v125[21];
  sub_1D560C0A8();
  v214 = OUTLINED_FUNCTION_27_23(&v418);
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
  v218 = v125[22];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v219, v220, v221, v176);
  v402 = v125[24];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v176);
  v225 = v125[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v226 = OUTLINED_FUNCTION_27_23(&v427);
  __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
  v230 = v125[27];
  type metadata accessor for CuratorRelationshipProvider();
  v231 = OUTLINED_FUNCTION_27_23(&a9);
  v405 = v232;
  __swift_storeEnumTagSinglePayload(v231, v233, v234, v232);
  v235 = v125[29];
  v420 = v135;
  v236 = *(v135 + 16);
  v412 = v175;
  v413 = v132;
  v236(&v131[v235], v175, v132);
  v237 = &v131[v125[30]];
  sub_1D5610658();
  v238 = sub_1D5610618();
  v395 = v239;
  v394 = sub_1D56105C8();
  v240 = sub_1D56105F8();
  v241 = sub_1D56105E8();
  v410 = v143;
  v418 = v27;
  v242 = sub_1D56105A8();
  v243 = &v131[v125[9]];
  *v243 = 0.0;
  v391 = v243;
  *(v243 + 8) = 1;
  if (qword_1EC7E9010 != -1)
  {
    swift_once();
  }

  v244 = qword_1EC87C278;
  v245 = v407;
  if (qword_1EC87C278 >> 62)
  {
    sub_1D560CDE8();

    v388 = sub_1D5615E18();

    v244 = v388;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v131[v125[28]] = v244;
  v246 = &v131[v125[31]];
  *v246 = v238;
  v246[1] = v395;
  *&v131[v125[32]] = v394;
  *&v131[v125[33]] = v240;
  *&v131[v125[34]] = v241;
  *&v131[v125[35]] = v242;
  v247 = v396[1];
  *v131 = *v396;
  *(v131 + 1) = v247;
  sub_1D4F39AB0(v396 + v426[5], v399, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v248 = OUTLINED_FUNCTION_201_1();
  OUTLINED_FUNCTION_62_17(v248);
  if (v242 == 1)
  {
    sub_1D4E50004(v399, &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_131_4();
    v238 = v400;
  }

  else
  {
    OUTLINED_FUNCTION_120(&v416);
    v247 = v399;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v251 = *(v250 + 8);
    v252 = OUTLINED_FUNCTION_13_8();
    v253(v252);
    OUTLINED_FUNCTION_131_4();
  }

  __swift_storeEnumTagSinglePayload(v238, v249, 1, v397);
  OUTLINED_FUNCTION_105_7(&v411);
  sub_1D4E68940(v238, v254, v255, v256);
  sub_1D4F39AB0(v396 + v426[6], v247, &qword_1EC7EF380, &unk_1D5677480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  v257 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v257);
  if (v335)
  {
    sub_1D4E50004(v247, &qword_1EC7EF380, &unk_1D5677480);
  }

  else
  {
    sub_1D536AC28();
    OUTLINED_FUNCTION_15_1();
    v259 = *(v258 + 8);
    v260 = OUTLINED_FUNCTION_159();
    v261(v260);
  }

  v262 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v262, v263, v264, v398);
  OUTLINED_FUNCTION_105_7(&v413);
  sub_1D4E68940(v242, v265, v266, v267);
  sub_1D50A2470(&qword_1EC7EF3D8, type metadata accessor for CloudUploadedAudio.Attributes);
  OUTLINED_FUNCTION_150(&v424);
  v268 = v426;
  sub_1D5612A68();
  OUTLINED_FUNCTION_105_7(&v414);
  sub_1D4E68940(v242, v269, v270, v271);
  v272 = (v396 + *(v268 + 28));
  if ((v272[1] & 1) == 0)
  {
    *v391 = *v272 / 1000.0;
    *(v391 + 8) = 0;
  }

  v273 = v426;
  *&v131[v125[10]] = *(v396 + v426[8]);
  sub_1D4F39AB0(v396 + v273[9], v399, &qword_1EC7EC960, &unk_1D56334C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v274 = OUTLINED_FUNCTION_201_1();
  OUTLINED_FUNCTION_62_17(v274);
  if (v242 == 1)
  {
    sub_1D4E50004(v399, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_15_1();
    v276 = *(v275 + 8);
    v277 = OUTLINED_FUNCTION_13_8();
    v278(v277);
  }

  v279 = OUTLINED_FUNCTION_197_0();
  __swift_storeEnumTagSinglePayload(v279, v280, v281, v425);
  v282 = v125[12];
  v283 = &v131[v125[23]];
  OUTLINED_FUNCTION_105_7(&v417);
  sub_1D4E68940(v241, v284, v285, v286);
  v287 = v426;
  *&v131[v282] = *(v396 + v426[10]);
  v288 = (v396 + v287[11]);
  v289 = v288[1];
  *v283 = *v288;
  *(v283 + 1) = v289;
  sub_1D4F39AB0(v396 + v287[12], v245, &qword_1EC7EC960, &unk_1D56334C0);
  LODWORD(v283) = __swift_getEnumTagSinglePayload(v245, 1, v268);

  if (v283 == 1)
  {
    sub_1D4E50004(v245, &qword_1EC7EC960, &unk_1D56334C0);
    v289 = v403;
  }

  else
  {
    OUTLINED_FUNCTION_150(v428);
    sub_1D5610738();
    OUTLINED_FUNCTION_15_1();
    v291 = *(v290 + 8);
    v292 = OUTLINED_FUNCTION_214();
    v293(v292);
  }

  v294 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v294, v295, v296, v425);
  v425 = v125;
  v407 = &v131[v125[25]];
  OUTLINED_FUNCTION_105_7(&v419);
  sub_1D4E68940(v289, v297, v298, v299);
  OUTLINED_FUNCTION_105_7(&v420);
  sub_1D5000C8C(v300, v301, v302, v303);
  v304 = v426;
  v305 = v396 + v426[14];
  OUTLINED_FUNCTION_105_7(&v418);
  sub_1D5000C8C(v306, v307, v308, v309);
  OUTLINED_FUNCTION_185_2(&a11);
  v310 = (v396 + v304[15]);
  v311 = *v310;
  v312 = v310[1];
  v313 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_118_5(&a16);
  v315 = *(v314 + 104);
  v316 = OUTLINED_FUNCTION_179_2();
  v317 = v409[3];
  v318(v316);
  OUTLINED_FUNCTION_120(&a12);
  sub_1D5610798();
  (*(v245 + 8))(v241, v317);
  OUTLINED_FUNCTION_68_9(&a13);
  OUTLINED_FUNCTION_190_2();
  v319();
  OUTLINED_FUNCTION_105_7(&v421);
  sub_1D4E68940(v238, v320, v321, v322);
  v323 = (v396 + v304[16]);
  v324 = *v323;
  v325 = v323[1];
  OUTLINED_FUNCTION_136_5();
  *v326 = v327;
  v326[1] = v325;
  v328 = *(v404 + 24);
  v329 = v419;
  v330 = v411;
  sub_1D4F39AB0(v419 + v328, v411, &qword_1EC7ECCF8, &unk_1D565D0E0);
  v331 = type metadata accessor for CloudUploadedAudio.Relationships(0);
  OUTLINED_FUNCTION_1(v330);
  if (v335)
  {

    sub_1D4E50004(v330, &qword_1EC7ECCF8, &unk_1D565D0E0);
    v332 = v425;
    v333 = v420;
  }

  else
  {
    v241 = v392;
    sub_1D4F39AB0(v330, v392, &qword_1EC7EB5A8, &unk_1D5622F00);

    OUTLINED_FUNCTION_127_5();
    v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v392);
    if (v335)
    {
      sub_1D4E50004(v392, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v336 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v389, v337, v338, v336);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v339, v340);
      sub_1D5612368();
      sub_1D4E50004(v389, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v341 + 8))(v392, v334);
    }

    v333 = v420;
    v332 = v425;
  }

  v342 = v421;
  v343 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_212_1(v343, v344, v345);
  OUTLINED_FUNCTION_105_7(&v427);
  sub_1D4E68940(v342, v346, v347, v348);
  v349 = v414;
  sub_1D4F39AB0(v329 + v328, v414, &qword_1EC7ECCF8, &unk_1D565D0E0);
  OUTLINED_FUNCTION_1(v349);
  if (v335)
  {
    v350 = &qword_1EC7ECCF8;
    v351 = &unk_1D565D0E0;
    v352 = v349;
LABEL_34:
    sub_1D4E50004(v352, v350, v351);
    v373 = v415;
    v368 = v416;
    v377 = v413;
    v378 = v410;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v361, v362, v363, v405);
    goto LABEL_35;
  }

  v353 = v349 + *(v331 + 20);
  OUTLINED_FUNCTION_165_4(v409);
  sub_1D4F39AB0(v354, v355, v356, v357);
  OUTLINED_FUNCTION_127_5();
  v358 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v358, v359, v393);
  if (v360)
  {
    v350 = &qword_1EC7EA798;
    v351 = &unk_1D5622EF0;
    v352 = v331;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_81_10(&v406);
  v365 = *(v364 + 16);
  v366 = OUTLINED_FUNCTION_214();
  v367(v366);
  v368 = v416;
  v369 = *(v416 + 16);
  v370 = OUTLINED_FUNCTION_179_2();
  v371(v370, v424, v422);
  v372 = v423;

  v373 = v415;
  v333 = v420;
  sub_1D50756F4(v390, v241, v372, v415);
  (*(v329 + 8))();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v374, v375, v376, v405);
  v377 = v413;
  v378 = v410;
LABEL_35:
  OUTLINED_FUNCTION_105_7(&a9);
  sub_1D4E68940(v373, v379, v380, v381);
  v428[2] = v332;
  v382 = sub_1D50A2470(&qword_1EC7EF3E0, type metadata accessor for UploadedAudioPropertyProvider);
  v383 = OUTLINED_FUNCTION_181_2(v382);
  sub_1D50A2244(v131, v383);
  UploadedAudio.init(propertyProvider:)(&v427, v417);

  (*(v368 + 8))(v424, v422);
  OUTLINED_FUNCTION_24_0(v378);
  v385 = *(v384 + 8);
  v386 = OUTLINED_FUNCTION_121();
  v387(v386);
  (*(v333 + 8))(v412, v377);
  OUTLINED_FUNCTION_109_7();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D509E878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a1;
  v188 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v187 = &v153 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v186 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v180 = &v153 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v179 = &v153 - v14;
  v15 = sub_1D5612B78();
  v184 = *(v15 - 8);
  v185 = v15;
  v16 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for CloudUploadedAudio(0);
  v18 = *(*(v181 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v181);
  v194 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v182 = &v153 - v21;
  v156 = sub_1D5613578();
  v155 = *(v156 - 8);
  v22 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v159 = &v153 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v193 = &v153 - v29;
  v177 = type metadata accessor for CuratorRelationshipProvider();
  v30 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v192 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v157 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v198 = &v153 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v158 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v197 = &v153 - v41;
  v176 = sub_1D5610788();
  v175 = *(v176 - 8);
  v42 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v172 = &v153 - v46;
  v173 = sub_1D56107C8();
  v171 = *(v173 - 8);
  v47 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v169 = &v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v53 = &v153 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v153 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v191 = &v153 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v196 = &v153 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v153 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v190 = &v153 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v71 = &v153 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v195 = &v153 - v74;
  v189 = type metadata accessor for CloudUploadedAudio.Attributes(0);
  v75 = *(*(v189 - 8) + 64);
  MEMORY[0x1EEE9AC00](v189);
  v199 = (&v153 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EC7E8E60 != -1)
  {
    swift_once();
  }

  sub_1D50A2470(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  sub_1D50A2470(&qword_1EC7EC498, type metadata accessor for UploadedAudio);
  v77 = v2;
  result = sub_1D560EC28();
  v170 = v201;
  if ((v201 & 1) == 0)
  {
    v79 = v200 * 1000.0;
    if (COERCE__INT64(fabs(v200 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v79 > -9.22337204e18)
    {
      if (v79 < 9.22337204e18)
      {
        v168 = v79;
        goto LABEL_9;
      }

LABEL_58:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_58;
  }

  v168 = 0;
LABEL_9:
  v167 = UploadedAudio.artistName.getter();
  v166 = v80;
  if (qword_1EC7E8E40 != -1)
  {
    swift_once();
  }

  v81 = sub_1D56140F8();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v71, 1, v81) == 1)
  {
    sub_1D4E50004(v71, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v82 = 1;
    v83 = v195;
  }

  else
  {
    v83 = v195;
    sub_1D5613F28();
    (*(*(v81 - 8) + 8))(v71, v81);
    v82 = 0;
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v83, v82, 1, v84);
  v85 = v190;
  if (qword_1EC7E8E48 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for AssetFlavors();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v64, 1, v86) == 1)
  {
    sub_1D4E50004(v64, &qword_1EC7ECC88, &unk_1D56310F0);
    v87 = 1;
  }

  else
  {
    sub_1D536AE60();
    sub_1D50A229C();
    v87 = 0;
  }

  v88 = v196;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  __swift_storeEnumTagSinglePayload(v85, v87, 1, v89);
  v90 = v53;
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v165 = v200;
  if (qword_1EC7E8E70 != -1)
  {
    swift_once();
  }

  v91 = sub_1D5610978();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v55, 1, v91) == 1)
  {
    sub_1D4E50004(v55, &qword_1EC7EAC98, &unk_1D561DA80);
    v92 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v91 - 8) + 8))(v55, v91);
    v92 = 0;
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v88, v92, 1, v93);
  sub_1D4F84A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v164 = v200;
  v94 = v169;
  if (qword_1EC7E8EC8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v163 = v200;
  v162 = v201;
  v95 = v191;
  v96 = v189;
  if (qword_1EC7E8EA8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v90, 1, v91) == 1)
  {
    sub_1D4E50004(v90, &qword_1EC7EAC98, &unk_1D561DA80);
    v97 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v91 - 8) + 8))(v90, v91);
    v97 = 0;
  }

  v98 = v199;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v95, v97, 1, v99);
  if (qword_1EC7E8EB0 != -1)
  {
    swift_once();
  }

  v100 = *(v96 + 52);
  sub_1D56109F8();
  sub_1D560EC28();
  if (qword_1EC7E8EB8 != -1)
  {
    swift_once();
  }

  v101 = *(v96 + 56);
  sub_1D560C0A8();
  sub_1D560EC28();
  sub_1D56107A8();
  v102 = v94;
  if (qword_1EC7E8ED0 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v103 = v172;
  sub_1D560EC28();
  v104 = v175;
  v105 = v174;
  v106 = v176;
  (*(v175 + 104))(v174, *MEMORY[0x1E6975DC8], v176);
  v161 = sub_1D56107B8();
  v160 = v107;
  (*(v104 + 8))(v105, v106);
  sub_1D4E50004(v103, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v171 + 8))(v102, v173);
  if (qword_1EC7E8ED8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v108 = v200;
  v109 = v201;
  v110 = v166;
  *v98 = v167;
  v98[1] = v110;
  v111 = v189;
  sub_1D4F39A1C(v195, v98 + *(v189 + 20), &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39A1C(v190, v98 + v111[6], &qword_1EC7EF380, &unk_1D5677480);
  v112 = v98 + v111[7];
  *v112 = v168;
  v112[8] = v170;
  *(v98 + v111[8]) = v165;
  sub_1D4F39A1C(v196, v98 + v111[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v98 + v111[10]) = v164;
  v113 = (v98 + v111[11]);
  v114 = v162;
  *v113 = v163;
  *(v113 + 1) = v114;
  sub_1D4F39A1C(v191, v98 + v111[12], &qword_1EC7EC960, &unk_1D56334C0);
  v115 = (v98 + v111[15]);
  v116 = v160;
  *v115 = v161;
  v115[1] = v116;
  v117 = (v98 + v111[16]);
  *v117 = v108;
  *(v117 + 1) = v109;
  v118 = type metadata accessor for CloudUploadedAudio.Relationships(0);
  v119 = v197;
  __swift_storeEnumTagSinglePayload(v197, 1, 1, v118);
  if (qword_1EC7E8EE0 != -1)
  {
    swift_once();
  }

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  sub_1D560EC28();
  v121 = v77;
  v122 = v177;
  if (qword_1EC7E8EE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v123 = v192;
  sub_1D560EC28();
  if (off_1EC7E8EF0 != -1)
  {
    swift_once();
  }

  v124 = v122[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D560EC28();
  if (off_1EC7E8EF8 != -1)
  {
    swift_once();
  }

  v125 = v122[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  sub_1D560EC28();
  v126 = v122[7];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(&v123[v126], 1, 1, v127);
  v128 = v193;
  sub_1D50768AC(v178, v193);
  v129 = v198;
  if (__swift_getEnumTagSinglePayload(v198, 1, v120) != 1 || (v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), __swift_getEnumTagSinglePayload(v128, 1, v130) != 1))
  {
    v131 = v157;
    sub_1D4F39AB0(v129, v157, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v131, 1, v120) == 1)
    {
      sub_1D4E50004(v119, &qword_1EC7ECCF8, &unk_1D565D0E0);
      sub_1D4E50004(v131, &off_1EC7EB5B0, &unk_1D5632170);
      v132 = 1;
      v133 = v159;
    }

    else
    {
      v134 = v155;
      v135 = v154;
      v136 = v156;
      (*(v155 + 104))(v154, *MEMORY[0x1E6976A78], v156);
      sub_1D560CD48();
      v196 = v118;
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);
      v133 = v159;
      sub_1D560DA98();
      v137 = v135;
      v119 = v197;
      (*(v134 + 8))(v137, v136);
      sub_1D4E50004(v119, &qword_1EC7ECCF8, &unk_1D565D0E0);
      v118 = v196;
      (*(*(v120 - 8) + 8))(v131, v120);
      v132 = 0;
    }

    v138 = v158;
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v133, v132, 1, v139);
    sub_1D4F39AB0(v128, v138 + *(v118 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4F39A1C(v133, v138, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_storeEnumTagSinglePayload(v138, 0, 1, v118);
    sub_1D4F39A1C(v138, v119, &qword_1EC7ECCF8, &unk_1D565D0E0);
  }

  v140 = *v121;
  v141 = v121[1];
  v143 = v181;
  v142 = v182;
  sub_1D50A2244(v199, &v182[*(v181 + 20)]);
  sub_1D4F39AB0(v119, v142 + v143[6], &qword_1EC7ECCF8, &unk_1D565D0E0);
  *v142 = v140;
  v142[1] = v141;
  *(v142 + v143[7]) = 1;
  *(v142 + v143[8]) = 1;
  LODWORD(v140) = *(type metadata accessor for UploadedAudio() + 20);

  v144 = v179;
  sub_1D5611A28();
  v145 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v144, 0, 1, v145);
  v146 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v180, 1, 1, v146);
  v147 = v183;
  sub_1D5612B38();
  sub_1D50A2244(v142, v194);
  sub_1D5611A98();
  v148 = sub_1D5611A88();
  v195 = v149;
  v196 = v148;
  v151 = v184;
  v150 = v185;
  v152 = v187;
  (*(v184 + 16))(v187, v147, v185);
  __swift_storeEnumTagSinglePayload(v152, 0, 1, v150);
  v191 = sub_1D5611A38();
  v190 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EF390, type metadata accessor for CloudUploadedAudio);
  sub_1D5610628();
  (*(v151 + 8))(v147, v150);
  sub_1D50A229C();
  sub_1D50A229C();
  sub_1D4E50004(v197, &qword_1EC7ECCF8, &unk_1D565D0E0);
  sub_1D50A229C();
  sub_1D4E50004(v198, &off_1EC7EB5B0, &unk_1D5632170);
  return sub_1D4E50004(v193, &qword_1EC7EA798, &unk_1D5622EF0);
}

uint64_t sub_1D50A0270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D50A0BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v85 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v85 - v14;
  v15 = sub_1D5612B78();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for CloudEditorialItem(0);
  v18 = *(*(v103 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v103);
  v102 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v85 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2E8, &qword_1D5631018);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v85 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F0, &unk_1D5631020);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v101 = &v85 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v100 = &v85 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v89 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v85 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v85 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v99 = &v85 - v42;
  v43 = type metadata accessor for CloudEditorialItem.Attributes(0);
  v44 = *(*(v43 - 1) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v90 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD53FE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D50A2470(&qword_1EDD57650, type metadata accessor for EditorialItem);
  sub_1D50A2470(&qword_1EC7EB3D0, type metadata accessor for EditorialItem);
  sub_1D560EC28();
  v88 = v105;
  if (qword_1EDD54008 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  sub_1D560EC28();
  if (v105)
  {
    v46 = v105;
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v87 = sub_1D50C4F58(v46);

  if (qword_1EDD54000 != -1)
  {
    swift_once();
  }

  v47 = sub_1D5610978();
  v48 = v2;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v37, 1, v47) == 1)
  {
    sub_1D4E50004(v37, &qword_1EC7EAC98, &unk_1D561DA80);
    v49 = 1;
    v50 = v99;
  }

  else
  {
    v50 = v99;
    sub_1D5610918();
    (*(*(v47 - 8) + 8))(v37, v47);
    v49 = 0;
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v50, v49, 1, v51);
  sub_1D4F84B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v86 = v105;
  if (qword_1EDD53FF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C8, &unk_1D5631030);
  sub_1D560EC28();
  if (qword_1EDD53FD8 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for EditorialElementLink();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v25, 1, v52) == 1)
  {
    sub_1D4E50004(v25, &qword_1EC7EF2E8, &qword_1D5631018);
    v53 = 1;
    v54 = v101;
  }

  else
  {
    v54 = v101;
    sub_1D544096C();
    sub_1D50A229C();
    v53 = 0;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  __swift_storeEnumTagSinglePayload(v54, v53, 1, v55);
  if (qword_1EDD54030 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v105)
  {
    v56 = v105;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v57 = sub_1D50C4F58(v56);

  if (qword_1EDD54018 != -1)
  {
    swift_once();
  }

  v58 = v89;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v47);
  v60 = v85;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v58, &qword_1EC7EAC98, &unk_1D561DA80);
    v61 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v47 - 8) + 8))(v58, v47);
    v61 = 0;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v60, v61, 1, v62);
  if (qword_1EDD53FE0 != -1)
  {
    swift_once();
  }

  v63 = v43[12];
  sub_1D560C0A8();
  v64 = v90;
  sub_1D560EC28();
  v65 = v87;
  *v64 = v88;
  v64[1] = v65;
  sub_1D4F39A1C(v99, v64 + v43[6], &qword_1EC7EC960, &unk_1D56334C0);
  *(v64 + v43[7]) = v86;
  sub_1D4F39A1C(v100, v64 + v43[8], &qword_1EC7EF2F8, &unk_1D5637550);
  sub_1D4F39A1C(v101, v64 + v43[9], &qword_1EC7EF2F0, &unk_1D5631020);
  *(v64 + v43[10]) = v57;
  sub_1D4F39A1C(v60, v64 + v43[11], &qword_1EC7EC960, &unk_1D56334C0);
  v66 = type metadata accessor for EditorialItem();
  sub_1D50A2470(&unk_1EDD57658, type metadata accessor for EditorialItem);
  v67 = sub_1D560CBD8();
  if (v67 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v67;
  }

  v70 = *v48;
  v69 = v48[1];
  v71 = v103;
  v72 = v91;
  sub_1D50A2244(v64, &v91[*(v103 + 20)]);
  *v72 = v70;
  v72[1] = v69;
  *(v72 + v71[6]) = 1;
  *(v72 + v71[7]) = 1;
  *(v72 + v71[8]) = v68;
  v73 = *(v66 + 20);

  v74 = v92;
  sub_1D5611A28();
  v75 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
  v76 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v76);
  v77 = v104;
  sub_1D5612B38();
  sub_1D50A2244(v72, v102);
  sub_1D5611A98();
  v78 = sub_1D5611A88();
  v100 = v79;
  v101 = v78;
  v80 = v94;
  v81 = v97;
  v82 = v77;
  v83 = v95;
  (*(v94 + 16))(v97, v82, v95);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v83);
  v99 = sub_1D5611A38();
  v93 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EDD56748, type metadata accessor for CloudEditorialItem);
  sub_1D5610628();
  (*(v80 + 8))(v104, v83);
  sub_1D50A229C();
  return sub_1D50A229C();
}

uint64_t (*sub_1D50A199C(void *a1, uint64_t a2))()
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D50A1F30(v5);
  v5[9] = sub_1D50A1B28(v5 + 4, a2);
  return sub_1D50A24E0;
}

uint64_t (*sub_1D50A1A2C(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1D50A1F58(v7);
  v7[9] = sub_1D50A1D14(v7 + 4, a2, a3);
  return sub_1D50A1AC4;
}

void sub_1D50A1AC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D50A1B28(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = *v2;
  v8 = sub_1D4F0E41C(a2);
  *(v6 + 32) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A8, &qword_1D561E270);
  if (sub_1D5615D78())
  {
    v12 = *v3;
    v13 = sub_1D4F0E41C(a2);
    if ((v11 & 1) == (v14 & 1))
    {
      v10 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[3] = v10;
  if (v11)
  {
    v15 = *(*(*v3 + 56) + 8 * v10);
  }

  else
  {
    v15 = 0;
  }

  *v6 = v15;
  return sub_1D50A1C50;
}

void sub_1D50A1C50(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1D5014858(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D5615D98();
  }

  v8 = *v1;

  free(v1);
}

void (*sub_1D50A1D14(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1D4E4EFA0();
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D0, &qword_1D5630FC8);
  if (sub_1D5615D78())
  {
    v14 = *v4;
    v15 = sub_1D4E4EFA0();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_1D50A1E54;
}

void sub_1D50A1E54(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1D5015584(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1D50A20FC(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2C0, &qword_1D5630FB0);
    sub_1D5615D98();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_1D50A1F30(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D50A24D8;
}

uint64_t (*sub_1D50A1F58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D50A1F80;
}

unint64_t sub_1D50A1FE4()
{
  result = qword_1EC7EF2A0;
  if (!qword_1EC7EF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF2A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal0a7CatalogC14SearchResponseV7ContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D50A2058(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D50A2098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D50A2170(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D50A2184(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D50A2198(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D50A21EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D50A2244(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D50A229C()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D50A22F0()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_64_1();
  v3 = type metadata accessor for MusicSearchResultGroup();
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1D4E6ED20;

  return sub_1D508ADE0(v0, v6, v7, v1 + v5);
}

uint64_t sub_1D50A240C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSearchResultGroup();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50A2470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_25_30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_17(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_72_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_127_5()
{

  return sub_1D50A229C();
}

void OUTLINED_FUNCTION_131_4()
{
  v1 = *(v0 - 360);
  v2 = *(v0 - 368);
  v3 = *(v0 - 416);
  v4 = *(v0 - 424);
}

void OUTLINED_FUNCTION_132_4(uint64_t a1@<X8>)
{
  *(v4 - 592) = v3;
  *(v4 - 584) = v2;
  *(v4 - 576) = v1;
  *(v4 - 568) = a1;
}

double OUTLINED_FUNCTION_133_2()
{
  result = 0.0;
  *(v0 - 320) = 0u;
  *(v0 - 352) = 0u;
  *(v0 - 368) = 0u;
  return result;
}

void OUTLINED_FUNCTION_178_1(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 - 256) = a2;
  v3 = *(v2 - 504);
  v4 = *(v2 - 560);
}

uint64_t *OUTLINED_FUNCTION_181_2(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 128));
}

void *OUTLINED_FUNCTION_182_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_184_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1D5615E18();
}

uint64_t OUTLINED_FUNCTION_185_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1D56107A8();
}

uint64_t OUTLINED_FUNCTION_186_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return sub_1D560CDE8();
}

void OUTLINED_FUNCTION_188_2(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_210_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 368);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_211_0()
{

  return sub_1D56118A8();
}

uint64_t OUTLINED_FUNCTION_212_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 392);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t sub_1D50A2A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D56834E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D50A2AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50A2A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D50A2B00(uint64_t a1)
{
  v2 = sub_1D50A2CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50A2B3C(uint64_t a1)
{
  v2 = sub_1D50A2CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSiriRepresentationResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF400, &qword_1D5631230);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50A2CD4();
  sub_1D56163D8();
  type metadata accessor for MusicSiriRepresentation();
  OUTLINED_FUNCTION_0_69();
  sub_1D50A30FC(v11, v12);
  sub_1D56160C8();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1D50A2CD4()
{
  result = qword_1EC7EF408;
  if (!qword_1EC7EF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF408);
  }

  return result;
}

uint64_t MusicSiriRepresentationResponse.hashValue.getter()
{
  sub_1D56162D8();
  MusicSiriRepresentation.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSiriRepresentationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for MusicSiriRepresentation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF418, &qword_1D5631238);
  v8 = OUTLINED_FUNCTION_4(v7);
  v25 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for MusicSiriRepresentationResponse();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50A2CD4();
  sub_1D5616398();
  if (!v2)
  {
    v19 = v24;
    OUTLINED_FUNCTION_0_69();
    sub_1D50A30FC(v20, v21);
    v22 = v26;
    sub_1D5615FD8();
    (*(v25 + 8))(v13, v7);
    sub_1D50A304C(v22, v17, type metadata accessor for MusicSiriRepresentation);
    sub_1D50A304C(v17, v19, type metadata accessor for MusicSiriRepresentationResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicSiriRepresentationResponse()
{
  result = qword_1EC7EF430;
  if (!qword_1EC7EF430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50A304C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D50A30FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D50A316C()
{
  result = type metadata accessor for MusicSiriRepresentation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriRepresentationResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50A3288()
{
  result = qword_1EC7EF440;
  if (!qword_1EC7EF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF440);
  }

  return result;
}

unint64_t sub_1D50A32E0()
{
  result = qword_1EC7EF448;
  if (!qword_1EC7EF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF448);
  }

  return result;
}

unint64_t sub_1D50A3338()
{
  result = qword_1EC7EF450;
  if (!qword_1EC7EF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF450);
  }

  return result;
}

uint64_t Playlist.Entry.Reaction.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = a2 + *(type metadata accessor for Playlist.Entry.Reaction() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for Playlist.Entry.Reaction()
{
  result = qword_1EDD52B08;
  if (!qword_1EDD52B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Playlist.Entry.Reaction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Playlist.Entry.Reaction.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Entry.Reaction() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Playlist.Entry.Reaction.date.getter()
{
  if (qword_1EC7E8D50 != -1)
  {
    OUTLINED_FUNCTION_10_47();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_1_66();
  sub_1D50A53F4(v1, v0);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Entry.Reaction.value.getter()
{
  if (qword_1EC7E8D58 != -1)
  {
    swift_once();
  }

  sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v0, type metadata accessor for Playlist.Entry.Reaction);
  sub_1D560EC28();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t Playlist.Entry.Reaction.playlistEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  if (qword_1EC7E8D60 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_5_49();
  sub_1D50A53F4(v10, v1);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v11, v1);
  OUTLINED_FUNCTION_21_6();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1D4E7661C(v8, &qword_1EC7EC450, &unk_1D5621060);
    sub_1D5614828();
    v12 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  }

  else
  {
    sub_1D4EC97DC(a1);
    OUTLINED_FUNCTION_24_0(v9);
    return (*(v16 + 8))(v8, v9);
  }
}

uint64_t sub_1D50A38D4()
{
  if (qword_1EC7E8D60 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_1_66();
  sub_1D50A53F4(v1, v0);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Entry.Reaction.socialProfile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  if (qword_1EC7E8D68 != -1)
  {
    OUTLINED_FUNCTION_11_45();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_5_49();
  sub_1D50A53F4(v8, v0);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v9, v0);
  OUTLINED_FUNCTION_21_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v6, &qword_1EC7EA778, &qword_1D5622E60);
    type metadata accessor for SocialProfile();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC9410(EnumTagSinglePayload);
    OUTLINED_FUNCTION_24_0(v7);
    return (*(v15 + 8))(v6, v7);
  }
}

uint64_t sub_1D50A3B20()
{
  if (qword_1EC7E8D68 != -1)
  {
    OUTLINED_FUNCTION_11_45();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1_66();
  sub_1D50A53F4(v1, v0);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t static Playlist.Entry.Reaction.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Playlist.Entry.Reaction() + 20);

  return sub_1D5611A78();
}

uint64_t Playlist.Entry.Reaction.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Entry.Reaction() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_45();
  sub_1D50A53F4(v4, v5);
  return sub_1D5614CB8();
}

uint64_t Playlist.Entry.Reaction.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Entry.Reaction() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_45();
  sub_1D50A53F4(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50A3D8C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D50A53F4(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50A3E30@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.Reaction.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D50A3E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction);
  v12 = sub_1D50A53F4(&qword_1EC7EF4D8, type metadata accessor for Playlist.Entry.Reaction);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D50A3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction);
  v14 = sub_1D50A53F4(&qword_1EC7EF4D8, type metadata accessor for Playlist.Entry.Reaction);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D50A40D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction);
  v14 = sub_1D50A53F4(&qword_1EC7EF4D8, type metadata accessor for Playlist.Entry.Reaction);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D50A4214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF4E0, &qword_1D5631798);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_43();
  sub_1D50A53F4(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C080 = v0;
  return result;
}

uint64_t sub_1D50A42A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF4E0, &qword_1D5631798);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C088 = v0;
  return result;
}

uint64_t sub_1D50A4314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF4E0, &qword_1D5631798);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_13_1();
  *(v7 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v7 + v0, *MEMORY[0x1E69750B0], v2);
  sub_1D50A53F4(&qword_1EC7EF4E8, MEMORY[0x1E6977318]);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF458 = v1;
  return result;
}

uint64_t sub_1D50A4498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF4E0, &qword_1D5631798);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_13_1();
  *(v7 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v7 + v0, *MEMORY[0x1E69750B0], v2);
  sub_1D50A53F4(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF460 = v1;
  return result;
}

uint64_t Playlist.Entry.Reaction.init(from:)(uint64_t *a1)
{
  type metadata accessor for Playlist.Entry.Reaction();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_6_47();
  sub_1D50A53F4(v3, v4);
  OUTLINED_FUNCTION_7_48();
  sub_1D50A53F4(v5, v1);
  OUTLINED_FUNCTION_9_43(&qword_1EC7EF4C8);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.Reaction.encode(to:)()
{
  type metadata accessor for Playlist.Entry.Reaction();
  OUTLINED_FUNCTION_6_47();
  sub_1D50A53F4(v1, v2);
  OUTLINED_FUNCTION_7_48();
  sub_1D50A53F4(v3, v0);
  OUTLINED_FUNCTION_9_43(&qword_1EC7EF4C8);
  return sub_1D560CA28();
}

unint64_t Playlist.Entry.Reaction.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x65756C6176202C22, 0xEB0000000022203ALL);
  v4 = Playlist.Entry.Reaction.value.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

unint64_t Playlist.Entry.Reaction.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v75 - v5;
  v80 = type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_24_0(v80);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v77 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v79 = sub_1D5614828();
  v17 = OUTLINED_FUNCTION_4(v79);
  v76 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v75 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = sub_1D560C328();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v84 = 0xD000000000000018;
  v85 = 0x80000001D5683520;
  strcpy(v83, "\n  id: ");
  BYTE1(v83[1]) = 0;
  WORD1(v83[1]) = 0;
  HIDWORD(v83[1]) = -402653184;
  v38 = *v0;
  v39 = v0[1];
  v40 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v40);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v83[0], v83[1]);

  strcpy(v83, ",\n  value: ");
  BYTE5(v83[1]) = 0;
  HIWORD(v83[1]) = -5120;
  v41 = Playlist.Entry.Reaction.value.getter();
  MEMORY[0x1DA6EAC70](v41);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  v42 = v83[1];
  MEMORY[0x1DA6EAC70](v83[0], v83[1]);

  if (qword_1EC7E8D50 != -1)
  {
    OUTLINED_FUNCTION_10_47();
  }

  OUTLINED_FUNCTION_1_66();
  sub_1D50A53F4(v43, v42);
  OUTLINED_FUNCTION_0_70();
  sub_1D50A53F4(v44, v42);
  sub_1D560EC28();
  v45 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v45, v46, v29) == 1)
  {
    sub_1D4E7661C(v28, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    (*(v32 + 32))(v37, v28, v29);
    strcpy(v83, ",\n  date: ");
    BYTE3(v83[1]) = 0;
    HIDWORD(v83[1]) = -369098752;
    OUTLINED_FUNCTION_8_43();
    sub_1D50A53F4(v47, v48);
    v49 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v49);

    OUTLINED_FUNCTION_22_30();

    (*(v32 + 8))(v37, v29);
  }

  Playlist.Entry.Reaction.playlistEntry.getter(v16);
  v50 = v79;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v79);
  v52 = MEMORY[0x1E69E6158];
  if (EnumTagSinglePayload == 1)
  {
    v53 = MEMORY[0x1E69E6158];
    sub_1D4E7661C(v16, &unk_1EC7F2BE0, &qword_1D56250F0);
  }

  else
  {
    v55 = v75;
    v54 = v76;
    (*(v76 + 32))(v75, v16, v50);
    OUTLINED_FUNCTION_25_31();

    OUTLINED_FUNCTION_20_41(",\n  playlistEntry: [");
    v56 = sub_1D5614748();
    OUTLINED_FUNCTION_15_38(v56, v57);
    v81 = 0x202020200ALL;
    v82 = v58;
    sub_1D4F53278();
    OUTLINED_FUNCTION_16_35();
    v75 = v52;
    v76 = v59;
    OUTLINED_FUNCTION_3_31();
    v53 = v52;
    v60 = sub_1D5615968();
    v62 = v61;

    MEMORY[0x1DA6EAC70](v60, v62);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_22_30();

    (*(v54 + 8))(v55, v50);
  }

  v63 = v78;
  Playlist.Entry.Reaction.socialProfile.getter();
  v64 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v64, v65, v80) == 1)
  {
    sub_1D4E7661C(v63, &unk_1EC7ED370, &unk_1D5624FE0);
  }

  else
  {
    v66 = v77;
    sub_1D5060D74(v63, v77);
    OUTLINED_FUNCTION_25_31();

    OUTLINED_FUNCTION_20_41(",\n  socialProfile: [");
    v67 = SocialProfile.debugDescription.getter();
    OUTLINED_FUNCTION_15_38(v67, v68);
    v81 = 0x202020200ALL;
    v82 = v69;
    sub_1D4F53278();
    OUTLINED_FUNCTION_16_35();
    v79 = v53;
    v80 = v70;
    OUTLINED_FUNCTION_3_31();
    v71 = sub_1D5615968();
    v73 = v72;

    MEMORY[0x1DA6EAC70](v71, v73);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_22_30();

    sub_1D5060DD8(v66);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v84;
}

uint64_t sub_1D50A4F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7EF468 = v4;
  return result;
}

uint64_t sub_1D50A510C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EF478);
  __swift_project_value_buffer(v0, qword_1EC7EF478);
  type metadata accessor for Playlist.Entry.Reaction();
  sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction);
  return sub_1D560D978();
}

uint64_t sub_1D50A51E4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EF490);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EF490);
  if (qword_1EC7E8D80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7EF478);
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D50A53F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_25_31()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_1D5615B68();
}

uint64_t type metadata accessor for PlaylistCollaborationPropertyProvider()
{
  result = qword_1EC7EF4F0;
  if (!qword_1EC7EF4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50A54E8()
{
  sub_1D4E518A0(319, &qword_1EC7EF500);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v1 <= 0x3F)
    {
      sub_1D50A5760(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7EF508);
        if (v3 <= 0x3F)
        {
          sub_1D50A5760(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D4E6D600(319, qword_1EDD5F330, &qword_1EC7EC8E0, &qword_1D563D3C0);
            if (v5 <= 0x3F)
            {
              sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
              if (v6 <= 0x3F)
              {
                sub_1D50A5760(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_1D560D838();
                  if (v8 <= 0x3F)
                  {
                    sub_1D5610088();
                    if (v9 <= 0x3F)
                    {
                      sub_1D4E518A0(319, &qword_1EDD5F070);
                      if (v10 <= 0x3F)
                      {
                        sub_1D4E5CF94();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1D50A5760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D50A580C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v76 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56836A0);
    v82 = v2;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v75 = 30;
    goto LABEL_58;
  }

  v33 = v32;
  v77 = v17;
  v78 = v10;
  v79 = v0;
  v34 = qword_1EC7E8F80;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  *&v80 = qword_1EC87C258;
  v82 = v33;
  sub_1D50A8B94(&unk_1EC7EF548);
  if (sub_1D5614D18())
  {
    v35 = *v79;

    v36 = &type metadata for Playlist.Collaborator.Status;
    if (v35 == 4)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    if (v35 == 4)
    {
      v36 = 0;
    }

    *v4 = v37;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v36;
    goto LABEL_56;
  }

  v38 = qword_1EC7E8F88;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_6_48();
  }

  v39 = OUTLINED_FUNCTION_0_71(qword_1EC87C260);

  if ((v39 & 1) == 0)
  {
    v43 = qword_1EC7E8F90;

    if (v43 != -1)
    {
      OUTLINED_FUNCTION_32_24();
    }

    v44 = OUTLINED_FUNCTION_0_71(qword_1EC87C268);

    if (v44)
    {
      v45 = type metadata accessor for PlaylistCollaborationPropertyProvider();
      v46 = OUTLINED_FUNCTION_50_14(*(v45 + 24));
      sub_1D4F1C460(v46, v31, v47, v48);
      v49 = sub_1D560C328();
      OUTLINED_FUNCTION_10(v31);
      if (!v50)
      {
LABEL_54:
        *(&v81 + 1) = v49;
        __swift_allocate_boxed_opaque_existential_0(&v80);
        OUTLINED_FUNCTION_24_0(v49);
        (*(v73 + 32))();

        goto LABEL_55;
      }

      v51 = &qword_1EC7EA3B8;
      v52 = &unk_1D561E370;
      goto LABEL_24;
    }

    v54 = qword_1EC7E8F98;

    if (v54 != -1)
    {
      OUTLINED_FUNCTION_31_24();
    }

    OUTLINED_FUNCTION_0_71(qword_1EC87C270);
    OUTLINED_FUNCTION_58_11();
    if (v54)
    {
      v40 = v79[*(type metadata accessor for PlaylistCollaborationPropertyProvider() + 28)];

      v41 = v40 & 1;
      v42 = &type metadata for Playlist.Collaboration.InvitationMode;
      goto LABEL_15;
    }

    v55 = qword_1EC7E8FA0;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_5_50();
    }

    OUTLINED_FUNCTION_0_71(qword_1EC7F0F78);
    OUTLINED_FUNCTION_58_11();
    if (v55)
    {
      v56 = type metadata accessor for PlaylistCollaborationPropertyProvider();
      v57 = OUTLINED_FUNCTION_50_14(*(v56 + 32));
      sub_1D4F1C460(v57, v25, v58, v59);
      v49 = sub_1D560C0A8();
      OUTLINED_FUNCTION_10(v25);
      if (!v50)
      {
        goto LABEL_54;
      }

      v51 = &unk_1EC7E9CA8;
      v52 = &unk_1D561D1D0;
      v53 = v25;
    }

    else
    {
      v60 = qword_1EC7E8FA8;

      if (v60 != -1)
      {
        OUTLINED_FUNCTION_4_46();
      }

      OUTLINED_FUNCTION_0_71(qword_1EC7F0F80);
      OUTLINED_FUNCTION_58_11();
      if ((v60 & 1) == 0)
      {
        v65 = qword_1EC7E8FB8;

        if (v65 != -1)
        {
          OUTLINED_FUNCTION_3_57();
        }

        OUTLINED_FUNCTION_0_71(qword_1EC7F0F90);
        OUTLINED_FUNCTION_58_11();
        if (v65)
        {
          v66 = type metadata accessor for PlaylistCollaborationPropertyProvider();
          v67 = OUTLINED_FUNCTION_50_14(*(v66 + 40));
          v31 = v77;
          sub_1D4F1C460(v67, v77, v68, v69);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
          OUTLINED_FUNCTION_10(v31);
          if (!v50)
          {
            goto LABEL_54;
          }

          v51 = &qword_1EC7EC8D0;
          v52 = &unk_1D5623AD0;
        }

        else
        {
          v70 = qword_1EC7E8FB0;

          if (v70 != -1)
          {
            OUTLINED_FUNCTION_2_55();
          }

          v71 = OUTLINED_FUNCTION_0_71(qword_1EC7F0F88);

          if ((v71 & 1) == 0)
          {
            while (1)
            {
              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v82 = v2;
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_28();
              v75 = 53;
LABEL_58:
              v76 = v75;
              OUTLINED_FUNCTION_35_23();
              __break(1u);
            }
          }

          v72 = type metadata accessor for PlaylistCollaborationPropertyProvider();
          v31 = v78;
          sub_1D4F1C460(&v79[*(v72 + 44)], v78, &qword_1EC7EB620, &unk_1D561E5B0);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
          OUTLINED_FUNCTION_10(v31);
          if (!v50)
          {
            goto LABEL_54;
          }

          v51 = &qword_1EC7EB620;
          v52 = &unk_1D561E5B0;
        }

LABEL_24:
        v53 = v31;
        goto LABEL_25;
      }

      v61 = type metadata accessor for PlaylistCollaborationPropertyProvider();
      v62 = OUTLINED_FUNCTION_50_14(*(v61 + 36));
      sub_1D4F1C460(v62, v19, v63, v64);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_10(v19);
      if (!v50)
      {
        goto LABEL_54;
      }

      v51 = &qword_1EC7EC8D0;
      v52 = &unk_1D5623AD0;
      v53 = v19;
    }

LABEL_25:
    sub_1D4E50004(v53, v51, v52);
    v80 = 0u;
    v81 = 0u;
LABEL_55:
    v74 = v81;
    *v4 = v80;
    *(v4 + 1) = v74;
    goto LABEL_56;
  }

  v40 = v79[1];

  v41 = v40 & 1;
  v42 = MEMORY[0x1E69E6370];
LABEL_15:
  if (v40 == 2)
  {
    v42 = 0;
  }

  *v4 = v41;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = v42;
LABEL_56:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50A6010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56836A0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_24;
  }

  v3 = qword_1EC7E8F80;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  sub_1D50A8B94(&unk_1EC7EF548);
  sub_1D5614D18();
  OUTLINED_FUNCTION_44_2();
  if (v2)
  {
    goto LABEL_11;
  }

  v4 = qword_1EC7E8F88;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_6_48();
  }

  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_44_2();
  if (v4)
  {
    goto LABEL_11;
  }

  v5 = qword_1EC7E8FA0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_5_50();
  }

  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_44_2();
  if (v5)
  {
LABEL_11:
    swift_getKeyPath();
    OUTLINED_FUNCTION_24_27();
    sub_1D50A8D50(v6);
    OUTLINED_FUNCTION_52();
    sub_1D5612248();
  }

  else
  {
    v8 = qword_1EC7E8FA8;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_4_46();
    }

    OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_44_2();
    if ((v8 & 1) == 0)
    {
      v9 = qword_1EC7E8FB8;

      if (v9 != -1)
      {
        OUTLINED_FUNCTION_3_57();
      }

      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_44_2();
      if ((v9 & 1) == 0)
      {
        v10 = qword_1EC7E8FB0;

        if (v10 != -1)
        {
          OUTLINED_FUNCTION_2_55();
        }

        OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_44_2();
        if ((v10 & 1) == 0)
        {
          while (1)
          {
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D56836E0);
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
LABEL_24:
            OUTLINED_FUNCTION_35_23();
            __break(1u);
          }
        }
      }
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_24_27();
    sub_1D50A8D50(v11);
    OUTLINED_FUNCTION_52();
    sub_1D5612238();
  }

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}